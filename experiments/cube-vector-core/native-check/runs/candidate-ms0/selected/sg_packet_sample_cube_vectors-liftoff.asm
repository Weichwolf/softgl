
/home/cosmo/Git/softgl/build/diagnostics/cube-vector-core/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_vectors-liftoff.bin:     file format binary


Disassembly of section .data:

00003691cc654000 <.data>:
    3691cc654000:	41 bc af 00 00 00                               	mov    r12d,0xaf
    3691cc654006:	e8 65 fd f6 ff                                  	call   0x3691cc5c3d70
    3691cc65400b:	48 81 ec 68 01 00 00                            	sub    rsp,0x168
    3691cc654012:	8b c0                                           	mov    eax,eax
    3691cc654014:	8b d2                                           	mov    edx,edx
    3691cc654016:	8b c9                                           	mov    ecx,ecx
    3691cc654018:	50                                              	push   rax
    3691cc654019:	51                                              	push   rcx
    3691cc65401a:	57                                              	push   rdi
    3691cc65401b:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    3691cc654022:	33 c0                                           	xor    eax,eax
    3691cc654024:	b9 38 00 00 00                                  	mov    ecx,0x38
    3691cc654029:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    3691cc65402b:	5f                                              	pop    rdi
    3691cc65402c:	59                                              	pop    rcx
    3691cc65402d:	58                                              	pop    rax
    3691cc65402e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    3691cc654032:	0f 86 53 1a 00 00                               	jbe    0x3691cc655a8b
    3691cc654038:	85 d2                                           	test   edx,edx
    3691cc65403a:	0f 85 07 00 00 00                               	jne    0x3691cc654047
    3691cc654040:	33 c0                                           	xor    eax,eax
    3691cc654042:	e9 26 1a 00 00                                  	jmp    0x3691cc655a6d
    3691cc654047:	48 8b 5e 17                                     	mov    rbx,QWORD PTR [rsi+0x17]
    3691cc65404b:	8b 7c 03 04                                     	mov    edi,DWORD PTR [rbx+rax*1+0x4]
    3691cc65404f:	85 ff                                           	test   edi,edi
    3691cc654051:	0f 85 07 00 00 00                               	jne    0x3691cc65405e
    3691cc654057:	33 c0                                           	xor    eax,eax
    3691cc654059:	e9 0f 1a 00 00                                  	jmp    0x3691cc655a6d
    3691cc65405e:	44 8b c2                                        	mov    r8d,edx
    3691cc654061:	41 83 e0 0f                                     	and    r8d,0xf
    3691cc654065:	49 ba 50 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c850
    3691cc65406f:	c4 c1 68 54 02                                  	vandps xmm0,xmm2,XMMWORD PTR [r10]
    3691cc654074:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    3691cc65407e:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    3691cc654083:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    3691cc654087:	c5 f8 c2 ec 02                                  	vcmpleps xmm5,xmm0,xmm4
    3691cc65408c:	4c 8b 15 d4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffd4]        # 0x3691cc654067
    3691cc654093:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    3691cc654098:	c5 c8 c2 fc 02                                  	vcmpleps xmm7,xmm6,xmm4
    3691cc65409d:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    3691cc6540a1:	4c 8b 15 bf ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffbf]        # 0x3691cc654067
    3691cc6540a8:	c4 c1 60 54 3a                                  	vandps xmm7,xmm3,XMMWORD PTR [r10]
    3691cc6540ad:	c5 fa 7f 85 34 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xcc],xmm0
    3691cc6540b5:	c5 c0 c2 c4 02                                  	vcmpleps xmm0,xmm7,xmm4
    3691cc6540ba:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    3691cc6540be:	c5 78 50 cd                                     	vmovmskps r9d,xmm5
    3691cc6540c2:	45 23 c8                                        	and    r9d,r8d
    3691cc6540c5:	41 3b d1                                        	cmp    edx,r9d
    3691cc6540c8:	0f 84 07 00 00 00                               	je     0x3691cc6540d5
    3691cc6540ce:	33 c0                                           	xor    eax,eax
    3691cc6540d0:	e9 98 19 00 00                                  	jmp    0x3691cc655a6d
    3691cc6540d5:	c5 c0 c2 c6 02                                  	vcmpleps xmm0,xmm7,xmm6
    3691cc6540da:	c5 fa 6f ad 34 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xcc]
    3691cc6540e2:	c5 d0 c2 ee 02                                  	vcmpleps xmm5,xmm5,xmm6
    3691cc6540e7:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    3691cc6540eb:	c5 78 50 c8                                     	vmovmskps r9d,xmm0
    3691cc6540ef:	45 8b e1                                        	mov    r12d,r9d
    3691cc6540f2:	44 23 e2                                        	and    r12d,edx
    3691cc6540f5:	41 3b d4                                        	cmp    edx,r12d
    3691cc6540f8:	0f 85 27 00 00 00                               	jne    0x3691cc654125
    3691cc6540fe:	49 ba 60 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c860
    3691cc654108:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    3691cc65410d:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x3691cc654100
    3691cc654114:	c4 c1 60 57 12                                  	vxorps xmm2,xmm3,XMMWORD PTR [r10]
    3691cc654119:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    3691cc65411d:	45 33 c9                                        	xor    r9d,r9d
    3691cc654120:	e9 a2 00 00 00                                  	jmp    0x3691cc6541c7
    3691cc654125:	c5 fa 6f 85 34 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xcc]
    3691cc65412d:	c5 c0 c2 c0 02                                  	vcmpleps xmm0,xmm7,xmm0
    3691cc654132:	c5 fa 6f ad 34 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xcc]
    3691cc65413a:	c5 c8 c2 ed 02                                  	vcmpleps xmm5,xmm6,xmm5
    3691cc65413f:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    3691cc654143:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    3691cc654147:	41 8b f1                                        	mov    esi,r9d
    3691cc65414a:	83 f6 ff                                        	xor    esi,0xffffffff
    3691cc65414d:	23 f2                                           	and    esi,edx
    3691cc65414f:	41 23 f7                                        	and    esi,r15d
    3691cc654152:	3b d6                                           	cmp    edx,esi
    3691cc654154:	0f 85 31 00 00 00                               	jne    0x3691cc65418b
    3691cc65415a:	c5 fa 6f 85 34 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xcc]
    3691cc654162:	c7 45 9c 00 00 00 00                            	mov    DWORD PTR [rbp-0x64],0x0
    3691cc654169:	c7 45 8c 01 00 00 00                            	mov    DWORD PTR [rbp-0x74],0x1
    3691cc654170:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    3691cc654174:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    3691cc654178:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc65417c:	c5 f9 28 c3                                     	vmovapd xmm0,xmm3
    3691cc654180:	41 b9 02 00 00 00                               	mov    r9d,0x2
    3691cc654186:	e9 3c 00 00 00                                  	jmp    0x3691cc6541c7
    3691cc65418b:	41 8b f7                                        	mov    esi,r15d
    3691cc65418e:	41 0b f1                                        	or     esi,r9d
    3691cc654191:	23 f2                                           	and    esi,edx
    3691cc654193:	85 f6                                           	test   esi,esi
    3691cc654195:	0f 84 07 00 00 00                               	je     0x3691cc6541a2
    3691cc65419b:	33 f6                                           	xor    esi,esi
    3691cc65419d:	e9 c9 18 00 00                                  	jmp    0x3691cc655a6b
    3691cc6541a2:	4c 8b 15 57 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff57]        # 0x3691cc654100
    3691cc6541a9:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    3691cc6541ae:	c7 45 9c 01 00 00 00                            	mov    DWORD PTR [rbp-0x64],0x1
    3691cc6541b5:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    3691cc6541b9:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    3691cc6541bd:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    3691cc6541c1:	41 b9 04 00 00 00                               	mov    r9d,0x4
    3691cc6541c7:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    3691cc6541cb:	c5 e0 c2 cc 02                                  	vcmpleps xmm1,xmm3,xmm4
    3691cc6541d0:	c5 f8 50 f1                                     	vmovmskps esi,xmm1
    3691cc6541d4:	41 23 f0                                        	and    esi,r8d
    3691cc6541d7:	85 f6                                           	test   esi,esi
    3691cc6541d9:	0f 85 81 00 00 00                               	jne    0x3691cc654260
    3691cc6541df:	4c 8b 15 1a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff1a]        # 0x3691cc654100
    3691cc6541e6:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    3691cc6541eb:	44 8b 45 8c                                     	mov    r8d,DWORD PTR [rbp-0x74]
    3691cc6541ef:	45 85 c0                                        	test   r8d,r8d
    3691cc6541f2:	0f 84 05 00 00 00                               	je     0x3691cc6541fd
    3691cc6541f8:	e9 04 00 00 00                                  	jmp    0x3691cc654201
    3691cc6541fd:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    3691cc654201:	4c 8b 15 f8 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef8]        # 0x3691cc654100
    3691cc654208:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    3691cc65420d:	44 8b 45 9c                                     	mov    r8d,DWORD PTR [rbp-0x64]
    3691cc654211:	45 85 c0                                        	test   r8d,r8d
    3691cc654214:	0f 84 09 00 00 00                               	je     0x3691cc654223
    3691cc65421a:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc65421e:	e9 04 00 00 00                                  	jmp    0x3691cc654227
    3691cc654223:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    3691cc654227:	41 3b d4                                        	cmp    edx,r12d
    3691cc65422a:	41 0f 94 c0                                     	sete   r8b
    3691cc65422e:	45 0f b6 c0                                     	movzx  r8d,r8b
    3691cc654232:	45 85 c0                                        	test   r8d,r8d
    3691cc654235:	0f 84 09 00 00 00                               	je     0x3691cc654244
    3691cc65423b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc65423f:	e9 00 00 00 00                                  	jmp    0x3691cc654244
    3691cc654244:	45 8b c1                                        	mov    r8d,r9d
    3691cc654247:	41 83 c8 01                                     	or     r8d,0x1
    3691cc65424b:	44 8b 7d 8c                                     	mov    r15d,DWORD PTR [rbp-0x74]
    3691cc65424f:	bb 03 00 00 00                                  	mov    ebx,0x3
    3691cc654254:	45 85 ff                                        	test   r15d,r15d
    3691cc654257:	41 0f 44 d8                                     	cmove  ebx,r8d
    3691cc65425b:	e9 23 00 00 00                                  	jmp    0x3691cc654283
    3691cc654260:	3b d6                                           	cmp    edx,esi
    3691cc654262:	0f 85 14 00 00 00                               	jne    0x3691cc65427c
    3691cc654268:	41 8b d9                                        	mov    ebx,r9d
    3691cc65426b:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    3691cc65426f:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    3691cc654273:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    3691cc654277:	e9 07 00 00 00                                  	jmp    0x3691cc654283
    3691cc65427c:	33 c0                                           	xor    eax,eax
    3691cc65427e:	e9 ea 17 00 00                                  	jmp    0x3691cc655a6d
    3691cc654283:	44 8b c3                                        	mov    r8d,ebx
    3691cc654286:	41 c1 e0 06                                     	shl    r8d,0x6
    3691cc65428a:	46 8d 04 07                                     	lea    r8d,[rdi+r8*1]
    3691cc65428e:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    3691cc654292:	49 8b 59 17                                     	mov    rbx,QWORD PTR [r9+0x17]
    3691cc654296:	46 8b bc 03 24 01 00 00                         	mov    r15d,DWORD PTR [rbx+r8*1+0x124]
    3691cc65429e:	45 85 ff                                        	test   r15d,r15d
    3691cc6542a1:	0f 85 07 00 00 00                               	jne    0x3691cc6542ae
    3691cc6542a7:	33 c0                                           	xor    eax,eax
    3691cc6542a9:	e9 bf 17 00 00                                  	jmp    0x3691cc655a6d
    3691cc6542ae:	42 8b bc 03 a4 02 00 00                         	mov    edi,DWORD PTR [rbx+r8*1+0x2a4]
    3691cc6542b6:	83 ff 00                                        	cmp    edi,0x0
    3691cc6542b9:	0f 8f 07 00 00 00                               	jg     0x3691cc6542c6
    3691cc6542bf:	33 c0                                           	xor    eax,eax
    3691cc6542c1:	e9 a7 17 00 00                                  	jmp    0x3691cc655a6d
    3691cc6542c6:	41 8d b0 24 04 00 00                            	lea    esi,[r8+0x424]
    3691cc6542cd:	44 8b 0c 33                                     	mov    r9d,DWORD PTR [rbx+rsi*1]
    3691cc6542d1:	33 f6                                           	xor    esi,esi
    3691cc6542d3:	44 3b ce                                        	cmp    r9d,esi
    3691cc6542d6:	0f 8f 33 00 00 00                               	jg     0x3691cc65430f
    3691cc6542dc:	45 8b e1                                        	mov    r12d,r9d
    3691cc6542df:	45 8b c8                                        	mov    r9d,r8d
    3691cc6542e2:	44 8b c7                                        	mov    r8d,edi
    3691cc6542e5:	41 8b ff                                        	mov    edi,r15d
    3691cc6542e8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc6542ec:	c5 fa 7f 9d b0 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x150],xmm3
    3691cc6542f4:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    3691cc6542f8:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    3691cc6542fc:	33 f6                                           	xor    esi,esi
    3691cc6542fe:	44 8b 7d 9c                                     	mov    r15d,DWORD PTR [rbp-0x64]
    3691cc654302:	c5 fa 6f 8d b0 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x150]
    3691cc65430a:	e9 5c 17 00 00                                  	jmp    0x3691cc655a6b
    3691cc65430f:	be 01 00 00 00                                  	mov    esi,0x1
    3691cc654314:	f7 de                                           	neg    esi
    3691cc654316:	03 f7                                           	add    esi,edi
    3691cc654318:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    3691cc654322:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc654327:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc65432b:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x3691cc65431a
    3691cc654332:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc654337:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc65433b:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    3691cc654340:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    3691cc654344:	c5 e9 db ed                                     	vpand  xmm5,xmm2,xmm5
    3691cc654348:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    3691cc65434d:	c5 f0 5e d5                                     	vdivps xmm2,xmm1,xmm5
    3691cc654351:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    3691cc65435b:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc654360:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc654364:	c5 e8 58 d6                                     	vaddps xmm2,xmm2,xmm6
    3691cc654368:	c5 d8 5e c5                                     	vdivps xmm0,xmm4,xmm5
    3691cc65436c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc654370:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    3691cc65437a:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc65437f:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc654383:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    3691cc654387:	44 8b 64 03 14                                  	mov    r12d,DWORD PTR [rbx+rax*1+0x14]
    3691cc65438c:	44 8b 44 03 10                                  	mov    r8d,DWORD PTR [rbx+rax*1+0x10]
    3691cc654391:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    3691cc654396:	44 3b c3                                        	cmp    r8d,ebx
    3691cc654399:	0f 95 c3                                        	setne  bl
    3691cc65439c:	0f b6 db                                        	movzx  ebx,bl
    3691cc65439f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    3691cc6543a2:	b8 00 29 00 00                                  	mov    eax,0x2900
    3691cc6543a7:	44 3b c0                                        	cmp    r8d,eax
    3691cc6543aa:	0f 95 c0                                        	setne  al
    3691cc6543ad:	0f b6 c0                                        	movzx  eax,al
    3691cc6543b0:	23 d8                                           	and    ebx,eax
    3691cc6543b2:	85 db                                           	test   ebx,ebx
    3691cc6543b4:	0f 84 0f 00 00 00                               	je     0x3691cc6543c9
    3691cc6543ba:	c4 e3 79 08 e0 09                               	vroundps xmm4,xmm0,0x9
    3691cc6543c0:	c5 f8 5c e4                                     	vsubps xmm4,xmm0,xmm4
    3691cc6543c4:	e9 08 00 00 00                                  	jmp    0x3691cc6543d1
    3691cc6543c9:	c5 e0 5f e0                                     	vmaxps xmm4,xmm3,xmm0
    3691cc6543cd:	c5 c8 5d e4                                     	vminps xmm4,xmm6,xmm4
    3691cc6543d1:	c5 e8 59 c1                                     	vmulps xmm0,xmm2,xmm1
    3691cc6543d5:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc6543d8:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    3691cc6543dc:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    3691cc6543e0:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    3691cc6543e3:	8b 4c 03 0c                                     	mov    ecx,DWORD PTR [rbx+rax*1+0xc]
    3691cc6543e7:	44 8b d7                                        	mov    r10d,edi
    3691cc6543ea:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    3691cc6543ef:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    3691cc6543f4:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    3691cc6543f8:	b8 01 00 00 00                                  	mov    eax,0x1
    3691cc6543fd:	f7 d8                                           	neg    eax
    3691cc6543ff:	41 03 c1                                        	add    eax,r9d
    3691cc654402:	8b d8                                           	mov    ebx,eax
    3691cc654404:	41 23 d9                                        	and    ebx,r9d
    3691cc654407:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    3691cc65440a:	8b c6                                           	mov    eax,esi
    3691cc65440c:	23 c7                                           	and    eax,edi
    3691cc65440e:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    3691cc654411:	33 d2                                           	xor    edx,edx
    3691cc654413:	85 c0                                           	test   eax,eax
    3691cc654415:	0f 44 d6                                        	cmove  edx,esi
    3691cc654418:	45 8b d1                                        	mov    r10d,r9d
    3691cc65441b:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    3691cc654420:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    3691cc654425:	b8 2f 81 00 00                                  	mov    eax,0x812f
    3691cc65442a:	44 3b e0                                        	cmp    r12d,eax
    3691cc65442d:	0f 95 c0                                        	setne  al
    3691cc654430:	0f b6 c0                                        	movzx  eax,al
    3691cc654433:	89 5d 80                                        	mov    DWORD PTR [rbp-0x80],ebx
    3691cc654436:	bb 00 29 00 00                                  	mov    ebx,0x2900
    3691cc65443b:	44 3b e3                                        	cmp    r12d,ebx
    3691cc65443e:	0f 95 c3                                        	setne  bl
    3691cc654441:	0f b6 db                                        	movzx  ebx,bl
    3691cc654444:	23 c3                                           	and    eax,ebx
    3691cc654446:	85 c0                                           	test   eax,eax
    3691cc654448:	0f 84 0f 00 00 00                               	je     0x3691cc65445d
    3691cc65444e:	c4 e3 79 08 e8 09                               	vroundps xmm5,xmm0,0x9
    3691cc654454:	c5 f8 5c ed                                     	vsubps xmm5,xmm0,xmm5
    3691cc654458:	e9 08 00 00 00                                  	jmp    0x3691cc654465
    3691cc65445d:	c5 e0 5f e8                                     	vmaxps xmm5,xmm3,xmm0
    3691cc654461:	c5 c8 5d ed                                     	vminps xmm5,xmm6,xmm5
    3691cc654465:	c5 d8 59 e5                                     	vmulps xmm4,xmm4,xmm5
    3691cc654469:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    3691cc654473:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc654478:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc65447c:	c5 d8 58 c3                                     	vaddps xmm0,xmm4,xmm3
    3691cc654480:	b8 00 26 00 00                                  	mov    eax,0x2600
    3691cc654485:	3b c8                                           	cmp    ecx,eax
    3691cc654487:	0f 94 c0                                        	sete   al
    3691cc65448a:	0f b6 c0                                        	movzx  eax,al
    3691cc65448d:	85 c0                                           	test   eax,eax
    3691cc65448f:	0f 84 09 00 00 00                               	je     0x3691cc65449e
    3691cc654495:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    3691cc654499:	e9 00 00 00 00                                  	jmp    0x3691cc65449e
    3691cc65449e:	c4 e3 79 08 e8 09                               	vroundps xmm5,xmm0,0x9
    3691cc6544a4:	c5 fa 7f 85 e4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x11c],xmm0
    3691cc6544ac:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x3691cc654067
    3691cc6544b3:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    3691cc6544b8:	c5 fa 7f 8d 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm1
    3691cc6544c0:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    3691cc6544ca:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6544cf:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6544d3:	c5 f8 c2 c1 01                                  	vcmpltps xmm0,xmm0,xmm1
    3691cc6544d8:	49 ba 40 c9 35 7d 08 61 00 00                   	movabs r10,0x61087d35c940
    3691cc6544e2:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    3691cc6544e7:	c4 c1 50 54 e7                                  	vandps xmm4,xmm5,xmm15
    3691cc6544ec:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    3691cc6544f2:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    3691cc6544f6:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    3691cc6544fb:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    3691cc654503:	c5 fa 7f 55 ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm2
    3691cc654508:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    3691cc65450c:	c5 fa 7f 9d 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm3
    3691cc654514:	c5 fa 6f 9d b4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x14c]
    3691cc65451c:	85 c0                                           	test   eax,eax
    3691cc65451e:	0f 84 05 00 00 00                               	je     0x3691cc654529
    3691cc654524:	e9 04 00 00 00                                  	jmp    0x3691cc65452d
    3691cc654529:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    3691cc65452d:	c4 e3 79 08 d3 09                               	vroundps xmm2,xmm3,0x9
    3691cc654533:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x3691cc6544da
    3691cc65453a:	c5 68 c2 fa 00                                  	vcmpeqps xmm15,xmm2,xmm2
    3691cc65453f:	c4 c1 68 54 ff                                  	vandps xmm7,xmm2,xmm15
    3691cc654544:	c4 41 68 c2 3a 0d                               	vcmpgeps xmm15,xmm2,XMMWORD PTR [r10]
    3691cc65454a:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc65454e:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc654553:	c5 fa 7f a5 24 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xdc],xmm4
    3691cc65455b:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    3691cc654565:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    3691cc65456a:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    3691cc65456e:	c5 fa 7f ad 34 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xcc],xmm5
    3691cc654576:	4c 8b 15 ea fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaea]        # 0x3691cc654067
    3691cc65457d:	c4 c1 68 54 2a                                  	vandps xmm5,xmm2,XMMWORD PTR [r10]
    3691cc654582:	c5 d0 c2 e9 01                                  	vcmpltps xmm5,xmm5,xmm1
    3691cc654587:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    3691cc65458b:	c5 c1 db ed                                     	vpand  xmm5,xmm7,xmm5
    3691cc65458f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    3691cc654594:	c5 f9 6e ce                                     	vmovd  xmm1,esi
    3691cc654598:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    3691cc65459d:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    3691cc6545a1:	c4 e2 51 3d ff                                  	vpmaxsd xmm7,xmm5,xmm7
    3691cc6545a6:	c4 e2 41 39 f9                                  	vpminsd xmm7,xmm7,xmm1
    3691cc6545ab:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    3691cc6545b0:	44 3b c3                                        	cmp    r8d,ebx
    3691cc6545b3:	0f 95 c3                                        	setne  bl
    3691cc6545b6:	0f b6 db                                        	movzx  ebx,bl
    3691cc6545b9:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    3691cc6545bf:	b8 00 29 00 00                                  	mov    eax,0x2900
    3691cc6545c4:	44 3b c0                                        	cmp    r8d,eax
    3691cc6545c7:	0f 95 c0                                        	setne  al
    3691cc6545ca:	0f b6 c0                                        	movzx  eax,al
    3691cc6545cd:	23 d8                                           	and    ebx,eax
    3691cc6545cf:	85 db                                           	test   ebx,ebx
    3691cc6545d1:	0f 85 05 00 00 00                               	jne    0x3691cc6545dc
    3691cc6545d7:	e9 ab 00 00 00                                  	jmp    0x3691cc654687
    3691cc6545dc:	c5 f9 6e fa                                     	vmovd  xmm7,edx
    3691cc6545e0:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6545e5:	c5 d1 db ff                                     	vpand  xmm7,xmm5,xmm7
    3691cc6545e9:	8b c2                                           	mov    eax,edx
    3691cc6545eb:	85 d2                                           	test   edx,edx
    3691cc6545ed:	0f 84 07 00 00 00                               	je     0x3691cc6545fa
    3691cc6545f3:	8b d0                                           	mov    edx,eax
    3691cc6545f5:	e9 8d 00 00 00                                  	jmp    0x3691cc654687
    3691cc6545fa:	c5 f9 6e ff                                     	vmovd  xmm7,edi
    3691cc6545fe:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc654603:	c5 fa 7f 75 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm6
    3691cc654608:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    3691cc65460c:	c5 fa 7f bd 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm7
    3691cc654614:	c5 fa 7f bd a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm7
    3691cc65461c:	c5 fa 7f bd 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm7
    3691cc654624:	c5 d1 66 f9                                     	vpcmpgtd xmm7,xmm5,xmm1
    3691cc654628:	c5 fa 7f 85 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm0
    3691cc654630:	c5 fa 6f 85 94 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x16c]
    3691cc654638:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    3691cc65463c:	c5 f9 db ff                                     	vpand  xmm7,xmm0,xmm7
    3691cc654640:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc654645:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc65464a:	c4 c2 41 0a ff                                  	vpsignd xmm7,xmm7,xmm15
    3691cc65464f:	c5 fa 6f 85 14 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xec]
    3691cc654657:	c5 f9 66 c5                                     	vpcmpgtd xmm0,xmm0,xmm5
    3691cc65465b:	c5 fa 6f b5 a4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x15c]
    3691cc654663:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    3691cc654667:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    3691cc65466b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc654670:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    3691cc654674:	8b d0                                           	mov    edx,eax
    3691cc654676:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc65467a:	c5 fa 6f 85 54 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xac]
    3691cc654682:	c5 fa 6f 75 bc                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x44]
    3691cc654687:	8b 45 88                                        	mov    eax,DWORD PTR [rbp-0x78]
    3691cc65468a:	8b 5d 80                                        	mov    ebx,DWORD PTR [rbp-0x80]
    3691cc65468d:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    3691cc654690:	33 c9                                           	xor    ecx,ecx
    3691cc654692:	85 db                                           	test   ebx,ebx
    3691cc654694:	0f 44 c8                                        	cmove  ecx,eax
    3691cc654697:	c5 fa 7f 85 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm0
    3691cc65469f:	c5 fa 6f 85 24 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xdc]
    3691cc6546a7:	c5 fa 7f 8d 44 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xbc],xmm1
    3691cc6546af:	c5 fa 6f 8d 54 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xac]
    3691cc6546b7:	c5 71 df fc                                     	vpandn xmm15,xmm1,xmm4
    3691cc6546bb:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    3691cc6546bf:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc6546c4:	8b 45 88                                        	mov    eax,DWORD PTR [rbp-0x78]
    3691cc6546c7:	c5 f9 6e c0                                     	vmovd  xmm0,eax
    3691cc6546cb:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6546d0:	c5 fa 7f 95 04 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xfc],xmm2
    3691cc6546d8:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    3691cc6546dc:	c4 e2 71 3d d2                                  	vpmaxsd xmm2,xmm1,xmm2
    3691cc6546e1:	c4 e2 69 39 d0                                  	vpminsd xmm2,xmm2,xmm0
    3691cc6546e6:	b8 2f 81 00 00                                  	mov    eax,0x812f
    3691cc6546eb:	44 3b e0                                        	cmp    r12d,eax
    3691cc6546ee:	0f 95 c0                                        	setne  al
    3691cc6546f1:	0f b6 c0                                        	movzx  eax,al
    3691cc6546f4:	bb 00 29 00 00                                  	mov    ebx,0x2900
    3691cc6546f9:	44 3b e3                                        	cmp    r12d,ebx
    3691cc6546fc:	0f 95 c3                                        	setne  bl
    3691cc6546ff:	0f b6 db                                        	movzx  ebx,bl
    3691cc654702:	23 c3                                           	and    eax,ebx
    3691cc654704:	85 c0                                           	test   eax,eax
    3691cc654706:	0f 85 05 00 00 00                               	jne    0x3691cc654711
    3691cc65470c:	e9 8a 00 00 00                                  	jmp    0x3691cc65479b
    3691cc654711:	c5 f9 6e d1                                     	vmovd  xmm2,ecx
    3691cc654715:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc65471a:	c5 f1 db d2                                     	vpand  xmm2,xmm1,xmm2
    3691cc65471e:	8b c1                                           	mov    eax,ecx
    3691cc654720:	85 c9                                           	test   ecx,ecx
    3691cc654722:	0f 84 07 00 00 00                               	je     0x3691cc65472f
    3691cc654728:	8b c8                                           	mov    ecx,eax
    3691cc65472a:	e9 6c 00 00 00                                  	jmp    0x3691cc65479b
    3691cc65472f:	c4 c1 79 6e d1                                  	vmovd  xmm2,r9d
    3691cc654734:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc654739:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    3691cc65473d:	c5 fa 7f 9d c4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x13c],xmm3
    3691cc654745:	c5 f1 66 d8                                     	vpcmpgtd xmm3,xmm1,xmm0
    3691cc654749:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    3691cc65474d:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    3691cc654751:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    3691cc654756:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc65475b:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    3691cc654760:	c5 fa 6f a5 14 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xec]
    3691cc654768:	c5 d9 66 e1                                     	vpcmpgtd xmm4,xmm4,xmm1
    3691cc65476c:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    3691cc654770:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    3691cc654774:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    3691cc654779:	c5 f1 fe e4                                     	vpaddd xmm4,xmm1,xmm4
    3691cc65477d:	8b c8                                           	mov    ecx,eax
    3691cc65477f:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    3691cc654787:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    3691cc65478b:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    3691cc654793:	c5 fa 6f 9d c4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x13c]
    3691cc65479b:	c5 fa 7f 85 24 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xdc],xmm0
    3691cc6547a3:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    3691cc6547a7:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6547ac:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    3691cc6547b1:	c5 fa 7f 8d 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm1
    3691cc6547b9:	c5 e9 fe cf                                     	vpaddd xmm1,xmm2,xmm7
    3691cc6547bd:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    3691cc6547c3:	c4 e3 79 16 cb 02                               	vpextrd ebx,xmm1,0x2
    3691cc6547c9:	c4 e3 79 16 ce 01                               	vpextrd esi,xmm1,0x1
    3691cc6547cf:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    3691cc6547d3:	89 45 98                                        	mov    DWORD PTR [rbp-0x68],eax
    3691cc6547d6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc6547d9:	3d 00 26 00 00                                  	cmp    eax,0x2600
    3691cc6547de:	0f 84 c9 02 00 00                               	je     0x3691cc654aad
    3691cc6547e4:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    3691cc6547ee:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    3691cc6547f3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    3691cc6547f7:	c5 fa 7f 95 f4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x10c],xmm2
    3691cc6547ff:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    3691cc654803:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    3691cc654807:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    3691cc65480c:	c5 fa 7f 9d c4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x13c],xmm3
    3691cc654814:	c5 fa 6f 9d 44 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xbc]
    3691cc65481c:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    3691cc654821:	b8 2f 81 00 00                                  	mov    eax,0x812f
    3691cc654826:	44 3b c0                                        	cmp    r8d,eax
    3691cc654829:	0f 95 c0                                        	setne  al
    3691cc65482c:	0f b6 c0                                        	movzx  eax,al
    3691cc65482f:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc654832:	b9 00 29 00 00                                  	mov    ecx,0x2900
    3691cc654837:	44 3b c1                                        	cmp    r8d,ecx
    3691cc65483a:	0f 95 c1                                        	setne  cl
    3691cc65483d:	0f b6 c9                                        	movzx  ecx,cl
    3691cc654840:	23 c1                                           	and    eax,ecx
    3691cc654842:	85 c0                                           	test   eax,eax
    3691cc654844:	0f 85 05 00 00 00                               	jne    0x3691cc65484f
    3691cc65484a:	e9 70 00 00 00                                  	jmp    0x3691cc6548bf
    3691cc65484f:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    3691cc654853:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    3691cc654858:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    3691cc65485c:	8b c2                                           	mov    eax,edx
    3691cc65485e:	85 d2                                           	test   edx,edx
    3691cc654860:	0f 84 07 00 00 00                               	je     0x3691cc65486d
    3691cc654866:	8b d0                                           	mov    edx,eax
    3691cc654868:	e9 52 00 00 00                                  	jmp    0x3691cc6548bf
    3691cc65486d:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    3691cc654871:	c5 fa 6f 9d 44 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xbc]
    3691cc654879:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    3691cc65487d:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    3691cc654881:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    3691cc654885:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    3691cc65488a:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc65488f:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    3691cc654894:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    3691cc654898:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    3691cc65489c:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    3691cc6548a0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    3691cc6548a5:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    3691cc6548a9:	8b d0                                           	mov    edx,eax
    3691cc6548ab:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    3691cc6548b3:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    3691cc6548b7:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    3691cc6548bf:	c5 fa 6f 9d 54 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xac]
    3691cc6548c7:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    3691cc6548cb:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    3691cc6548cf:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    3691cc6548d4:	c5 fa 6f ad 24 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xdc]
    3691cc6548dc:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    3691cc6548e1:	b8 2f 81 00 00                                  	mov    eax,0x812f
    3691cc6548e6:	44 3b e0                                        	cmp    r12d,eax
    3691cc6548e9:	0f 95 c0                                        	setne  al
    3691cc6548ec:	0f b6 c0                                        	movzx  eax,al
    3691cc6548ef:	b9 00 29 00 00                                  	mov    ecx,0x2900
    3691cc6548f4:	44 3b e1                                        	cmp    r12d,ecx
    3691cc6548f7:	0f 95 c1                                        	setne  cl
    3691cc6548fa:	0f b6 c9                                        	movzx  ecx,cl
    3691cc6548fd:	23 c1                                           	and    eax,ecx
    3691cc6548ff:	85 c0                                           	test   eax,eax
    3691cc654901:	0f 85 05 00 00 00                               	jne    0x3691cc65490c
    3691cc654907:	e9 94 00 00 00                                  	jmp    0x3691cc6549a0
    3691cc65490c:	8b 45 9c                                        	mov    eax,DWORD PTR [rbp-0x64]
    3691cc65490f:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    3691cc654913:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc654918:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    3691cc65491c:	8b 45 9c                                        	mov    eax,DWORD PTR [rbp-0x64]
    3691cc65491f:	85 c0                                           	test   eax,eax
    3691cc654921:	0f 84 05 00 00 00                               	je     0x3691cc65492c
    3691cc654927:	e9 74 00 00 00                                  	jmp    0x3691cc6549a0
    3691cc65492c:	c4 c1 79 6e d1                                  	vmovd  xmm2,r9d
    3691cc654931:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc654936:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    3691cc65493a:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    3691cc654942:	c5 fa 6f 85 24 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xdc]
    3691cc65494a:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    3691cc65494e:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    3691cc654952:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    3691cc654956:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc65495b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc654960:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    3691cc654965:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    3691cc65496a:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    3691cc65496e:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    3691cc654972:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    3691cc654976:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc65497b:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    3691cc65497f:	c5 fa 7f 95 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm2
    3691cc654987:	c5 fa 7f ad 44 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xbc],xmm5
    3691cc65498f:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    3691cc654993:	c5 fa 6f 85 14 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xec]
    3691cc65499b:	c5 fa 6f 4d cc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x34]
    3691cc6549a0:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    3691cc6549a5:	c5 e9 fe ef                                     	vpaddd xmm5,xmm2,xmm7
    3691cc6549a9:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc6549ac:	83 f8 0f                                        	cmp    eax,0xf
    3691cc6549af:	0f 85 1f 00 00 00                               	jne    0x3691cc6549d4
    3691cc6549b5:	c5 c1 fe dc                                     	vpaddd xmm3,xmm7,xmm4
    3691cc6549b9:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    3691cc6549bd:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    3691cc6549c1:	83 f8 0f                                        	cmp    eax,0xf
    3691cc6549c4:	0f 85 05 00 00 00                               	jne    0x3691cc6549cf
    3691cc6549ca:	e9 a6 01 00 00                                  	jmp    0x3691cc654b75
    3691cc6549cf:	e9 00 00 00 00                                  	jmp    0x3691cc6549d4
    3691cc6549d4:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc6549d7:	83 e0 08                                        	and    eax,0x8
    3691cc6549da:	8b 4d a8                                        	mov    ecx,DWORD PTR [rbp-0x58]
    3691cc6549dd:	83 e1 04                                        	and    ecx,0x4
    3691cc6549e0:	44 8b 65 a8                                     	mov    r12d,DWORD PTR [rbp-0x58]
    3691cc6549e4:	41 83 e4 02                                     	and    r12d,0x2
    3691cc6549e8:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    3691cc6549ec:	41 83 e0 01                                     	and    r8d,0x1
    3691cc6549f0:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    3691cc6549f4:	41 83 f9 0f                                     	cmp    r9d,0xf
    3691cc6549f8:	0f 85 05 00 00 00                               	jne    0x3691cc654a03
    3691cc6549fe:	e9 13 04 00 00                                  	jmp    0x3691cc654e16
    3691cc654a03:	45 85 c0                                        	test   r8d,r8d
    3691cc654a06:	0f 84 1f 00 00 00                               	je     0x3691cc654a2b
    3691cc654a0c:	8b d7                                           	mov    edx,edi
    3691cc654a0e:	c1 e2 02                                        	shl    edx,0x2
    3691cc654a11:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654a15:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    3691cc654a19:	4d 8b 49 17                                     	mov    r9,QWORD PTR [r9+0x17]
    3691cc654a1d:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    3691cc654a20:	41 8b 04 11                                     	mov    eax,DWORD PTR [r9+rdx*1]
    3691cc654a24:	33 d2                                           	xor    edx,edx
    3691cc654a26:	e9 07 00 00 00                                  	jmp    0x3691cc654a32
    3691cc654a2b:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    3691cc654a2e:	33 c0                                           	xor    eax,eax
    3691cc654a30:	33 d2                                           	xor    edx,edx
    3691cc654a32:	45 85 e4                                        	test   r12d,r12d
    3691cc654a35:	0f 84 22 00 00 00                               	je     0x3691cc654a5d
    3691cc654a3b:	44 8b ce                                        	mov    r9d,esi
    3691cc654a3e:	41 c1 e1 02                                     	shl    r9d,0x2
    3691cc654a42:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    3691cc654a46:	89 45 84                                        	mov    DWORD PTR [rbp-0x7c],eax
    3691cc654a49:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc654a4d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc654a51:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    3691cc654a54:	42 8b 0c 08                                     	mov    ecx,DWORD PTR [rax+r9*1]
    3691cc654a58:	e9 08 00 00 00                                  	jmp    0x3691cc654a65
    3691cc654a5d:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    3691cc654a60:	89 45 84                                        	mov    DWORD PTR [rbp-0x7c],eax
    3691cc654a63:	8b ca                                           	mov    ecx,edx
    3691cc654a65:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    3691cc654a68:	85 c0                                           	test   eax,eax
    3691cc654a6a:	0f 84 1c 00 00 00                               	je     0x3691cc654a8c
    3691cc654a70:	8b c3                                           	mov    eax,ebx
    3691cc654a72:	c1 e0 02                                        	shl    eax,0x2
    3691cc654a75:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654a79:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc654a7d:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    3691cc654a81:	44 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+rax*1]
    3691cc654a85:	33 c0                                           	xor    eax,eax
    3691cc654a87:	e9 09 00 00 00                                  	jmp    0x3691cc654a95
    3691cc654a8c:	33 c0                                           	xor    eax,eax
    3691cc654a8e:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    3691cc654a95:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    3691cc654a98:	85 d2                                           	test   edx,edx
    3691cc654a9a:	0f 84 08 00 00 00                               	je     0x3691cc654aa8
    3691cc654aa0:	41 8b d1                                        	mov    edx,r9d
    3691cc654aa3:	e9 c0 03 00 00                                  	jmp    0x3691cc654e68
    3691cc654aa8:	e9 d6 03 00 00                                  	jmp    0x3691cc654e83
    3691cc654aad:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc654ab0:	83 f8 0f                                        	cmp    eax,0xf
    3691cc654ab3:	0f 85 05 00 00 00                               	jne    0x3691cc654abe
    3691cc654ab9:	e9 dd 0c 00 00                                  	jmp    0x3691cc65579b
    3691cc654abe:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc654ac1:	83 e0 01                                        	and    eax,0x1
    3691cc654ac4:	85 c0                                           	test   eax,eax
    3691cc654ac6:	0f 84 20 00 00 00                               	je     0x3691cc654aec
    3691cc654acc:	8b c7                                           	mov    eax,edi
    3691cc654ace:	c1 e0 02                                        	shl    eax,0x2
    3691cc654ad1:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654ad5:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    3691cc654ad9:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    3691cc654ade:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc654ae1:	41 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+rax*1]
    3691cc654ae5:	33 c0                                           	xor    eax,eax
    3691cc654ae7:	e9 07 00 00 00                                  	jmp    0x3691cc654af3
    3691cc654aec:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc654aef:	33 c0                                           	xor    eax,eax
    3691cc654af1:	33 c9                                           	xor    ecx,ecx
    3691cc654af3:	44 8b 65 a8                                     	mov    r12d,DWORD PTR [rbp-0x58]
    3691cc654af7:	41 83 e4 02                                     	and    r12d,0x2
    3691cc654afb:	45 85 e4                                        	test   r12d,r12d
    3691cc654afe:	0f 84 22 00 00 00                               	je     0x3691cc654b26
    3691cc654b04:	44 8b e6                                        	mov    r12d,esi
    3691cc654b07:	41 c1 e4 02                                     	shl    r12d,0x2
    3691cc654b0b:	47 8d 24 27                                     	lea    r12d,[r15+r12*1]
    3691cc654b0f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    3691cc654b12:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc654b16:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc654b1a:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    3691cc654b1d:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    3691cc654b21:	e9 05 00 00 00                                  	jmp    0x3691cc654b2b
    3691cc654b26:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    3691cc654b29:	8b c8                                           	mov    ecx,eax
    3691cc654b2b:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc654b2e:	83 e0 04                                        	and    eax,0x4
    3691cc654b31:	85 c0                                           	test   eax,eax
    3691cc654b33:	0f 84 1c 00 00 00                               	je     0x3691cc654b55
    3691cc654b39:	8b c3                                           	mov    eax,ebx
    3691cc654b3b:	c1 e0 02                                        	shl    eax,0x2
    3691cc654b3e:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654b42:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    3691cc654b46:	4d 8b 41 17                                     	mov    r8,QWORD PTR [r9+0x17]
    3691cc654b4a:	45 8b 24 00                                     	mov    r12d,DWORD PTR [r8+rax*1]
    3691cc654b4e:	33 c0                                           	xor    eax,eax
    3691cc654b50:	e9 05 00 00 00                                  	jmp    0x3691cc654b5a
    3691cc654b55:	33 c0                                           	xor    eax,eax
    3691cc654b57:	45 33 e4                                        	xor    r12d,r12d
    3691cc654b5a:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    3691cc654b5e:	41 83 e0 08                                     	and    r8d,0x8
    3691cc654b62:	45 85 c0                                        	test   r8d,r8d
    3691cc654b65:	0f 85 05 00 00 00                               	jne    0x3691cc654b70
    3691cc654b6b:	e9 8e 0c 00 00                                  	jmp    0x3691cc6557fe
    3691cc654b70:	e9 6e 0c 00 00                                  	jmp    0x3691cc6557e3
    3691cc654b75:	8b c7                                           	mov    eax,edi
    3691cc654b77:	c1 e0 02                                        	shl    eax,0x2
    3691cc654b7a:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654b7e:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    3691cc654b82:	48 8b 49 17                                     	mov    rcx,QWORD PTR [rcx+0x17]
    3691cc654b86:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    3691cc654b8b:	8b c6                                           	mov    eax,esi
    3691cc654b8d:	c1 e0 02                                        	shl    eax,0x2
    3691cc654b90:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654b94:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    3691cc654b9c:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    3691cc654ba1:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    3691cc654bab:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654bb0:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    3691cc654bba:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654bc0:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    3691cc654bc5:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x3691cc654bb2
    3691cc654bcc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654bd1:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x3691cc654ba3
    3691cc654bd8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654bde:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    3691cc654be3:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    3691cc654be8:	8b c3                                           	mov    eax,ebx
    3691cc654bea:	c1 e0 02                                        	shl    eax,0x2
    3691cc654bed:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654bf1:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    3691cc654bf6:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    3691cc654bf9:	c1 e0 02                                        	shl    eax,0x2
    3691cc654bfc:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654c00:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    3691cc654c05:	4c 8b 15 97 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff97]        # 0x3691cc654ba3
    3691cc654c0c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654c11:	4c 8b 15 9a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9a]        # 0x3691cc654bb2
    3691cc654c18:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654c1e:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    3691cc654c23:	4c 8b 15 88 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff88]        # 0x3691cc654bb2
    3691cc654c2a:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654c2f:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x3691cc654ba3
    3691cc654c36:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654c3c:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    3691cc654c41:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc654c46:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    3691cc654c50:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654c55:	4c 8b 15 56 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff56]        # 0x3691cc654bb2
    3691cc654c5c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654c62:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    3691cc654c67:	4c 8b 15 44 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff44]        # 0x3691cc654bb2
    3691cc654c6e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654c73:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x3691cc654c48
    3691cc654c7a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654c80:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    3691cc654c85:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc654c8a:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    3691cc654c94:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654c99:	4c 8b 15 12 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff12]        # 0x3691cc654bb2
    3691cc654ca0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654ca6:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    3691cc654cab:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x3691cc654bb2
    3691cc654cb2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654cb7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x3691cc654c8c
    3691cc654cbe:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654cc4:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    3691cc654cc9:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    3691cc654cce:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    3691cc654cd3:	c5 f9 7e c0                                     	vmovd  eax,xmm0
    3691cc654cd7:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654cdb:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    3691cc654ce0:	c4 e3 79 16 c0 01                               	vpextrd eax,xmm0,0x1
    3691cc654ce6:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654cea:	c5 fb 10 3c 01                                  	vmovsd xmm7,QWORD PTR [rcx+rax*1]
    3691cc654cef:	4c 8b 15 ad fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffead]        # 0x3691cc654ba3
    3691cc654cf6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654cfb:	4c 8b 15 b0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeb0]        # 0x3691cc654bb2
    3691cc654d02:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654d08:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    3691cc654d0d:	4c 8b 15 9e fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9e]        # 0x3691cc654bb2
    3691cc654d14:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654d19:	4c 8b 15 83 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe83]        # 0x3691cc654ba3
    3691cc654d20:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654d26:	c4 c2 41 00 ee                                  	vpshufb xmm5,xmm7,xmm14
    3691cc654d2b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    3691cc654d30:	c4 e3 79 16 c0 02                               	vpextrd eax,xmm0,0x2
    3691cc654d36:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654d3a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    3691cc654d3f:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    3691cc654d45:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654d49:	c5 fb 10 3c 01                                  	vmovsd xmm7,QWORD PTR [rcx+rax*1]
    3691cc654d4e:	4c 8b 15 4e fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe4e]        # 0x3691cc654ba3
    3691cc654d55:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654d5a:	4c 8b 15 51 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe51]        # 0x3691cc654bb2
    3691cc654d61:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654d67:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    3691cc654d6c:	4c 8b 15 3f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3f]        # 0x3691cc654bb2
    3691cc654d73:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654d78:	4c 8b 15 24 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe24]        # 0x3691cc654ba3
    3691cc654d7f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654d85:	c4 c2 41 00 de                                  	vpshufb xmm3,xmm7,xmm14
    3691cc654d8a:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    3691cc654d8f:	4c 8b 15 b2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeb2]        # 0x3691cc654c48
    3691cc654d96:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654d9b:	4c 8b 15 10 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe10]        # 0x3691cc654bb2
    3691cc654da2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654da8:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    3691cc654dad:	4c 8b 15 fe fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfe]        # 0x3691cc654bb2
    3691cc654db4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654db9:	4c 8b 15 88 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe88]        # 0x3691cc654c48
    3691cc654dc0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654dc6:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    3691cc654dcb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc654dd0:	4c 8b 15 b5 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeb5]        # 0x3691cc654c8c
    3691cc654dd7:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654ddc:	4c 8b 15 cf fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdcf]        # 0x3691cc654bb2
    3691cc654de3:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654de9:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    3691cc654dee:	4c 8b 15 bd fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdbd]        # 0x3691cc654bb2
    3691cc654df5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc654dfa:	4c 8b 15 8b fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8b]        # 0x3691cc654c8c
    3691cc654e01:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc654e07:	c4 c2 61 00 fe                                  	vpshufb xmm7,xmm3,xmm14
    3691cc654e0c:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc654e11:	e9 a9 04 00 00                                  	jmp    0x3691cc6552bf
    3691cc654e16:	44 8b ce                                        	mov    r9d,esi
    3691cc654e19:	41 c1 e1 02                                     	shl    r9d,0x2
    3691cc654e1d:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    3691cc654e21:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    3691cc654e24:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc654e28:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc654e2c:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    3691cc654e2f:	42 8b 0c 08                                     	mov    ecx,DWORD PTR [rax+r9*1]
    3691cc654e33:	44 8b cf                                        	mov    r9d,edi
    3691cc654e36:	41 c1 e1 02                                     	shl    r9d,0x2
    3691cc654e3a:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    3691cc654e3e:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    3691cc654e41:	42 8b 14 08                                     	mov    edx,DWORD PTR [rax+r9*1]
    3691cc654e45:	44 8b cb                                        	mov    r9d,ebx
    3691cc654e48:	41 c1 e1 02                                     	shl    r9d,0x2
    3691cc654e4c:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    3691cc654e50:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
    3691cc654e53:	42 8b 1c 08                                     	mov    ebx,DWORD PTR [rax+r9*1]
    3691cc654e57:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    3691cc654e5a:	8b c6                                           	mov    eax,esi
    3691cc654e5c:	44 8b cb                                        	mov    r9d,ebx
    3691cc654e5f:	8b 95 78 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x88]
    3691cc654e65:	8b 5d 88                                        	mov    ebx,DWORD PTR [rbp-0x78]
    3691cc654e68:	8b 55 98                                        	mov    edx,DWORD PTR [rbp-0x68]
    3691cc654e6b:	c1 e2 02                                        	shl    edx,0x2
    3691cc654e6e:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654e72:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc654e76:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    3691cc654e7a:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    3691cc654e80:	8b 04 16                                        	mov    eax,DWORD PTR [rsi+rdx*1]
    3691cc654e83:	c5 fa 6f 9d f4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x10c]
    3691cc654e8b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    3691cc654e8f:	8b 55 84                                        	mov    edx,DWORD PTR [rbp-0x7c]
    3691cc654e92:	c5 f9 6e fa                                     	vmovd  xmm7,edx
    3691cc654e96:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc654e9b:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    3691cc654e9e:	83 fa 0f                                        	cmp    edx,0xf
    3691cc654ea1:	0f 84 a9 00 00 00                               	je     0x3691cc654f50
    3691cc654ea7:	45 85 c0                                        	test   r8d,r8d
    3691cc654eaa:	0f 84 1d 00 00 00                               	je     0x3691cc654ecd
    3691cc654eb0:	c5 f9 7e da                                     	vmovd  edx,xmm3
    3691cc654eb4:	c1 e2 02                                        	shl    edx,0x2
    3691cc654eb7:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654ebb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc654ebf:	48 8b 5e 17                                     	mov    rbx,QWORD PTR [rsi+0x17]
    3691cc654ec3:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    3691cc654ec6:	33 d2                                           	xor    edx,edx
    3691cc654ec8:	e9 04 00 00 00                                  	jmp    0x3691cc654ed1
    3691cc654ecd:	33 d2                                           	xor    edx,edx
    3691cc654ecf:	33 f6                                           	xor    esi,esi
    3691cc654ed1:	45 85 e4                                        	test   r12d,r12d
    3691cc654ed4:	0f 84 26 00 00 00                               	je     0x3691cc654f00
    3691cc654eda:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    3691cc654ee0:	c1 e3 02                                        	shl    ebx,0x2
    3691cc654ee3:	41 8d 1c 1f                                     	lea    ebx,[r15+rbx*1]
    3691cc654ee7:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    3691cc654eed:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc654ef1:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc654ef5:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc654ef8:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    3691cc654efb:	e9 0b 00 00 00                                  	jmp    0x3691cc654f0b
    3691cc654f00:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc654f03:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    3691cc654f09:	8b ca                                           	mov    ecx,edx
    3691cc654f0b:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    3691cc654f0e:	85 c0                                           	test   eax,eax
    3691cc654f10:	0f 84 1f 00 00 00                               	je     0x3691cc654f35
    3691cc654f16:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    3691cc654f1c:	c1 e0 02                                        	shl    eax,0x2
    3691cc654f1f:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc654f23:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    3691cc654f27:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    3691cc654f2b:	8b 3c 02                                        	mov    edi,DWORD PTR [rdx+rax*1]
    3691cc654f2e:	33 c0                                           	xor    eax,eax
    3691cc654f30:	e9 04 00 00 00                                  	jmp    0x3691cc654f39
    3691cc654f35:	33 c0                                           	xor    eax,eax
    3691cc654f37:	33 ff                                           	xor    edi,edi
    3691cc654f39:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    3691cc654f3c:	85 d2                                           	test   edx,edx
    3691cc654f3e:	0f 84 07 00 00 00                               	je     0x3691cc654f4b
    3691cc654f44:	8b d7                                           	mov    edx,edi
    3691cc654f46:	e9 4f 00 00 00                                  	jmp    0x3691cc654f9a
    3691cc654f4b:	e9 65 00 00 00                                  	jmp    0x3691cc654fb5
    3691cc654f50:	c4 e3 79 16 da 01                               	vpextrd edx,xmm3,0x1
    3691cc654f56:	c1 e2 02                                        	shl    edx,0x2
    3691cc654f59:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654f5d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc654f61:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    3691cc654f65:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    3691cc654f6b:	8b 04 16                                        	mov    eax,DWORD PTR [rsi+rdx*1]
    3691cc654f6e:	c5 f9 7e da                                     	vmovd  edx,xmm3
    3691cc654f72:	c1 e2 02                                        	shl    edx,0x2
    3691cc654f75:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654f79:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc654f7c:	8b 0c 16                                        	mov    ecx,DWORD PTR [rsi+rdx*1]
    3691cc654f7f:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    3691cc654f85:	c1 e2 02                                        	shl    edx,0x2
    3691cc654f88:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654f8c:	8b 1c 16                                        	mov    ebx,DWORD PTR [rsi+rdx*1]
    3691cc654f8f:	8b f1                                           	mov    esi,ecx
    3691cc654f91:	8b c8                                           	mov    ecx,eax
    3691cc654f93:	8b c7                                           	mov    eax,edi
    3691cc654f95:	8b fb                                           	mov    edi,ebx
    3691cc654f97:	8b 55 84                                        	mov    edx,DWORD PTR [rbp-0x7c]
    3691cc654f9a:	c4 e3 79 16 da 03                               	vpextrd edx,xmm3,0x3
    3691cc654fa0:	c1 e2 02                                        	shl    edx,0x2
    3691cc654fa3:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc654fa7:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    3691cc654fab:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    3691cc654faf:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    3691cc654fb2:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    3691cc654fb5:	8b 55 9c                                        	mov    edx,DWORD PTR [rbp-0x64]
    3691cc654fb8:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    3691cc654fc0:	c4 e3 41 22 c2 01                               	vpinsrd xmm0,xmm7,edx,0x1
    3691cc654fc6:	c5 f9 6e de                                     	vmovd  xmm3,esi
    3691cc654fca:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    3691cc654fcf:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    3691cc654fd5:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    3691cc654fd8:	83 fa 0f                                        	cmp    edx,0xf
    3691cc654fdb:	0f 84 a2 00 00 00                               	je     0x3691cc655083
    3691cc654fe1:	45 85 c0                                        	test   r8d,r8d
    3691cc654fe4:	0f 84 1d 00 00 00                               	je     0x3691cc655007
    3691cc654fea:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    3691cc654fee:	c1 e1 02                                        	shl    ecx,0x2
    3691cc654ff1:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    3691cc654ff5:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    3691cc654ff9:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    3691cc654ffd:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    3691cc655000:	33 c9                                           	xor    ecx,ecx
    3691cc655002:	e9 04 00 00 00                                  	jmp    0x3691cc65500b
    3691cc655007:	33 c9                                           	xor    ecx,ecx
    3691cc655009:	33 db                                           	xor    ebx,ebx
    3691cc65500b:	45 85 e4                                        	test   r12d,r12d
    3691cc65500e:	0f 84 23 00 00 00                               	je     0x3691cc655037
    3691cc655014:	c4 e3 79 16 ea 01                               	vpextrd edx,xmm5,0x1
    3691cc65501a:	c1 e2 02                                        	shl    edx,0x2
    3691cc65501d:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc655021:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    3691cc655024:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc655028:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc65502c:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    3691cc65502f:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    3691cc655032:	e9 03 00 00 00                                  	jmp    0x3691cc65503a
    3691cc655037:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    3691cc65503a:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    3691cc65503d:	85 c0                                           	test   eax,eax
    3691cc65503f:	0f 84 1f 00 00 00                               	je     0x3691cc655064
    3691cc655045:	c4 e3 79 16 e8 02                               	vpextrd eax,xmm5,0x2
    3691cc65504b:	c1 e0 02                                        	shl    eax,0x2
    3691cc65504e:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc655052:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc655056:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    3691cc65505a:	8b 34 02                                        	mov    esi,DWORD PTR [rdx+rax*1]
    3691cc65505d:	33 c0                                           	xor    eax,eax
    3691cc65505f:	e9 08 00 00 00                                  	jmp    0x3691cc65506c
    3691cc655064:	33 c0                                           	xor    eax,eax
    3691cc655066:	8b b5 74 ff ff ff                               	mov    esi,DWORD PTR [rbp-0x8c]
    3691cc65506c:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    3691cc65506f:	85 d2                                           	test   edx,edx
    3691cc655071:	0f 84 07 00 00 00                               	je     0x3691cc65507e
    3691cc655077:	8b d6                                           	mov    edx,esi
    3691cc655079:	e9 50 00 00 00                                  	jmp    0x3691cc6550ce
    3691cc65507e:	e9 6e 00 00 00                                  	jmp    0x3691cc6550f1
    3691cc655083:	c4 e3 79 16 ea 01                               	vpextrd edx,xmm5,0x1
    3691cc655089:	c1 e2 02                                        	shl    edx,0x2
    3691cc65508c:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc655090:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    3691cc655094:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    3691cc655098:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    3691cc65509b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    3691cc65509e:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    3691cc6550a2:	c1 e1 02                                        	shl    ecx,0x2
    3691cc6550a5:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    3691cc6550a9:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    3691cc6550ac:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    3691cc6550b2:	c1 e1 02                                        	shl    ecx,0x2
    3691cc6550b5:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    3691cc6550b9:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    3691cc6550bc:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    3691cc6550bf:	8b c8                                           	mov    ecx,eax
    3691cc6550c1:	8b c6                                           	mov    eax,esi
    3691cc6550c3:	8b f2                                           	mov    esi,edx
    3691cc6550c5:	8b 95 74 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x8c]
    3691cc6550cb:	8b 5d 9c                                        	mov    ebx,DWORD PTR [rbp-0x64]
    3691cc6550ce:	c4 e3 79 16 ea 03                               	vpextrd edx,xmm5,0x3
    3691cc6550d4:	c1 e2 02                                        	shl    edx,0x2
    3691cc6550d7:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc6550db:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    3691cc6550de:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc6550e2:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc6550e6:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    3691cc6550e9:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    3691cc6550ec:	8b c1                                           	mov    eax,ecx
    3691cc6550ee:	8b 4d 98                                        	mov    ecx,DWORD PTR [rbp-0x68]
    3691cc6550f1:	c4 c3 79 22 f9 02                               	vpinsrd xmm7,xmm0,r9d,0x2
    3691cc6550f7:	c4 e3 61 22 c7 02                               	vpinsrd xmm0,xmm3,edi,0x2
    3691cc6550fd:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    3691cc655101:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    3691cc655105:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    3691cc65510a:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    3691cc655110:	c4 e3 51 22 ee 02                               	vpinsrd xmm5,xmm5,esi,0x2
    3691cc655116:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    3691cc655119:	83 fa 0f                                        	cmp    edx,0xf
    3691cc65511c:	0f 84 a1 00 00 00                               	je     0x3691cc6551c3
    3691cc655122:	45 85 c0                                        	test   r8d,r8d
    3691cc655125:	0f 84 1d 00 00 00                               	je     0x3691cc655148
    3691cc65512b:	c5 f9 7e d9                                     	vmovd  ecx,xmm3
    3691cc65512f:	c1 e1 02                                        	shl    ecx,0x2
    3691cc655132:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    3691cc655136:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    3691cc65513a:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    3691cc65513e:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    3691cc655141:	33 c9                                           	xor    ecx,ecx
    3691cc655143:	e9 04 00 00 00                                  	jmp    0x3691cc65514c
    3691cc655148:	33 c9                                           	xor    ecx,ecx
    3691cc65514a:	33 db                                           	xor    ebx,ebx
    3691cc65514c:	45 85 e4                                        	test   r12d,r12d
    3691cc65514f:	0f 84 23 00 00 00                               	je     0x3691cc655178
    3691cc655155:	c4 e3 79 16 da 01                               	vpextrd edx,xmm3,0x1
    3691cc65515b:	c1 e2 02                                        	shl    edx,0x2
    3691cc65515e:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc655162:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    3691cc655165:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc655169:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc65516d:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    3691cc655170:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    3691cc655173:	e9 03 00 00 00                                  	jmp    0x3691cc65517b
    3691cc655178:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    3691cc65517b:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    3691cc65517e:	85 c0                                           	test   eax,eax
    3691cc655180:	0f 84 20 00 00 00                               	je     0x3691cc6551a6
    3691cc655186:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    3691cc65518c:	c1 e0 02                                        	shl    eax,0x2
    3691cc65518f:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc655193:	4c 8b 45 f0                                     	mov    r8,QWORD PTR [rbp-0x10]
    3691cc655197:	49 8b 50 17                                     	mov    rdx,QWORD PTR [r8+0x17]
    3691cc65519b:	44 8b 24 02                                     	mov    r12d,DWORD PTR [rdx+rax*1]
    3691cc65519f:	33 c0                                           	xor    eax,eax
    3691cc6551a1:	e9 05 00 00 00                                  	jmp    0x3691cc6551ab
    3691cc6551a6:	33 c0                                           	xor    eax,eax
    3691cc6551a8:	45 33 e4                                        	xor    r12d,r12d
    3691cc6551ab:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    3691cc6551ae:	85 d2                                           	test   edx,edx
    3691cc6551b0:	0f 84 08 00 00 00                               	je     0x3691cc6551be
    3691cc6551b6:	41 8b d4                                        	mov    edx,r12d
    3691cc6551b9:	e9 59 00 00 00                                  	jmp    0x3691cc655217
    3691cc6551be:	e9 70 00 00 00                                  	jmp    0x3691cc655233
    3691cc6551c3:	c4 e3 79 16 da 01                               	vpextrd edx,xmm3,0x1
    3691cc6551c9:	c1 e2 02                                        	shl    edx,0x2
    3691cc6551cc:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc6551d0:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    3691cc6551d3:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    3691cc6551d7:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    3691cc6551db:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    3691cc6551de:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    3691cc6551e1:	c5 f9 7e da                                     	vmovd  edx,xmm3
    3691cc6551e5:	c1 e2 02                                        	shl    edx,0x2
    3691cc6551e8:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc6551ec:	89 5d 9c                                        	mov    DWORD PTR [rbp-0x64],ebx
    3691cc6551ef:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    3691cc6551f2:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    3691cc6551f8:	c1 e2 02                                        	shl    edx,0x2
    3691cc6551fb:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc6551ff:	89 b5 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],esi
    3691cc655205:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    3691cc655208:	41 8b c4                                        	mov    eax,r12d
    3691cc65520b:	44 8b e6                                        	mov    r12d,esi
    3691cc65520e:	41 8b d0                                        	mov    edx,r8d
    3691cc655211:	8b b5 74 ff ff ff                               	mov    esi,DWORD PTR [rbp-0x8c]
    3691cc655217:	c4 e3 79 16 da 03                               	vpextrd edx,xmm3,0x3
    3691cc65521d:	c1 e2 02                                        	shl    edx,0x2
    3691cc655220:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    3691cc655224:	4c 8b 45 f0                                     	mov    r8,QWORD PTR [rbp-0x10]
    3691cc655228:	4d 8b 40 17                                     	mov    r8,QWORD PTR [r8+0x17]
    3691cc65522c:	89 45 8c                                        	mov    DWORD PTR [rbp-0x74],eax
    3691cc65522f:	41 8b 04 10                                     	mov    eax,DWORD PTR [r8+rdx*1]
    3691cc655233:	8b 95 7c ff ff ff                               	mov    edx,DWORD PTR [rbp-0x84]
    3691cc655239:	c4 e3 41 22 ca 03                               	vpinsrd xmm1,xmm7,edx,0x3
    3691cc65523f:	8b 55 80                                        	mov    edx,DWORD PTR [rbp-0x80]
    3691cc655242:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    3691cc655248:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    3691cc65524c:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc655251:	c4 e3 41 22 f9 01                               	vpinsrd xmm7,xmm7,ecx,0x1
    3691cc655257:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    3691cc65525d:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    3691cc655263:	8b 55 88                                        	mov    edx,DWORD PTR [rbp-0x78]
    3691cc655266:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    3691cc65526c:	89 5d 9c                                        	mov    DWORD PTR [rbp-0x64],ebx
    3691cc65526f:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    3691cc655272:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    3691cc655279:	89 b5 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],esi
    3691cc65527f:	8b d7                                           	mov    edx,edi
    3691cc655281:	44 8b c0                                        	mov    r8d,eax
    3691cc655284:	45 8b cc                                        	mov    r9d,r12d
    3691cc655287:	c5 fa 7f bd a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm7
    3691cc65528f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc655293:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    3691cc65529b:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    3691cc65529f:	8b 5d 88                                        	mov    ebx,DWORD PTR [rbp-0x78]
    3691cc6552a2:	8b b5 7c ff ff ff                               	mov    esi,DWORD PTR [rbp-0x84]
    3691cc6552a8:	8b 7d 80                                        	mov    edi,DWORD PTR [rbp-0x80]
    3691cc6552ab:	44 8b 65 94                                     	mov    r12d,DWORD PTR [rbp-0x6c]
    3691cc6552af:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    3691cc6552b7:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    3691cc6552bf:	c5 fa 7f 85 44 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xbc],xmm0
    3691cc6552c7:	c5 fa 6f 85 e4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x11c]
    3691cc6552cf:	c5 fa 7f 8d 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm1
    3691cc6552d7:	c5 fa 6f 8d 34 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xcc]
    3691cc6552df:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    3691cc6552e3:	c5 c8 5c c8                                     	vsubps xmm1,xmm6,xmm0
    3691cc6552e7:	c5 fa 7f 95 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm2
    3691cc6552ef:	c5 fa 6f 95 c4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x13c]
    3691cc6552f7:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    3691cc6552fc:	c5 fa 6f 9d 04 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xfc]
    3691cc655304:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    3691cc655308:	c5 c8 5c da                                     	vsubps xmm3,xmm6,xmm2
    3691cc65530c:	c5 fa 6f ad 54 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xac]
    3691cc655314:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    3691cc655319:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc65531e:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    3691cc655324:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    3691cc655329:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65532e:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    3691cc655333:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    3691cc655337:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    3691cc65533b:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    3691cc655340:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    3691cc655344:	c5 fa 7f a5 d4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x12c],xmm4
    3691cc65534c:	c5 fa 6f a5 64 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x9c]
    3691cc655354:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    3691cc655359:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc65535e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc655364:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc655369:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65536e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc655373:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc655377:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc65537b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc655380:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    3691cc655384:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    3691cc655388:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    3691cc65538c:	c5 d9 72 d7 18                                  	vpsrld xmm4,xmm7,0x18
    3691cc655391:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655396:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc65539c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc6553a1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6553a6:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc6553ab:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc6553af:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc6553b3:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc6553b8:	c5 e0 59 e4                                     	vmulps xmm4,xmm3,xmm4
    3691cc6553bc:	c5 fa 7f ad b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm5
    3691cc6553c4:	c5 fa 6f ad 44 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xbc]
    3691cc6553cc:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    3691cc6553d1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6553d6:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    3691cc6553dc:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    3691cc6553e1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6553e6:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    3691cc6553eb:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    3691cc6553ef:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    3691cc6553f3:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    3691cc6553f8:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    3691cc6553fc:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    3691cc655400:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    3691cc655404:	c5 fa 6f ad b4 fe ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0x14c]
    3691cc65540c:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    3691cc655410:	c5 fa 6f a5 54 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xac]
    3691cc655418:	c5 fa 7f 75 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm6
    3691cc65541d:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    3691cc655427:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc65542c:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc655430:	c5 d9 db e6                                     	vpand  xmm4,xmm4,xmm6
    3691cc655434:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655439:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc65543f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc655444:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc655449:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc65544e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc655452:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc655456:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc65545b:	c5 e0 59 e4                                     	vmulps xmm4,xmm3,xmm4
    3691cc65545f:	c5 fa 7f bd 24 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xdc],xmm7
    3691cc655467:	c5 fa 6f bd 64 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x9c]
    3691cc65546f:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    3691cc655473:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655478:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc65547e:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc655483:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc655488:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc65548d:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc655491:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc655495:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc65549a:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    3691cc65549e:	c5 d8 58 e7                                     	vaddps xmm4,xmm4,xmm7
    3691cc6554a2:	c5 f0 59 e4                                     	vmulps xmm4,xmm1,xmm4
    3691cc6554a6:	c5 fa 6f bd 24 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xdc]
    3691cc6554ae:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    3691cc6554b2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6554b7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc6554bd:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc6554c2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6554c7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc6554cc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc6554d0:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc6554d4:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc6554d9:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    3691cc6554dd:	c5 fa 7f 85 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm0
    3691cc6554e5:	c5 fa 7f 85 34 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xcc],xmm0
    3691cc6554ed:	c5 fa 6f 85 44 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xbc]
    3691cc6554f5:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    3691cc6554f9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6554fe:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc655504:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc655509:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65550e:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc655513:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc655517:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc65551b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc655520:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    3691cc655524:	c5 c0 58 f8                                     	vaddps xmm7,xmm7,xmm0
    3691cc655528:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    3691cc655530:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc655534:	c5 d8 58 e0                                     	vaddps xmm4,xmm4,xmm0
    3691cc655538:	c5 fa 6f 85 54 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xac]
    3691cc655540:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    3691cc655545:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    3691cc655549:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc65554e:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc655554:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc655559:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65555e:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc655563:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc655567:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc65556b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc655570:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    3691cc655574:	c5 fa 6f bd 64 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x9c]
    3691cc65557c:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    3691cc655581:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    3691cc655585:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc65558a:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc655590:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc655595:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65559a:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc65559f:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc6555a3:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc6555a7:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc6555ac:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    3691cc6555b0:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc6555b4:	c5 f0 59 c0                                     	vmulps xmm0,xmm1,xmm0
    3691cc6555b8:	c5 fa 6f bd 34 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xcc]
    3691cc6555c0:	c5 fa 7f 8d f4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x10c],xmm1
    3691cc6555c8:	c5 fa 6f 8d 24 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xdc]
    3691cc6555d0:	c5 f1 72 d1 10                                  	vpsrld xmm1,xmm1,0x10
    3691cc6555d5:	c5 f1 db ce                                     	vpand  xmm1,xmm1,xmm6
    3691cc6555d9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6555de:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc6555e4:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc6555e9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6555ee:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc6555f3:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc6555f7:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc6555fb:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc655600:	c5 e0 59 c9                                     	vmulps xmm1,xmm3,xmm1
    3691cc655604:	c5 fa 7f 95 84 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x17c],xmm2
    3691cc65560c:	c5 fa 7f 55 ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm2
    3691cc655611:	c5 fa 6f 95 44 ff ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0xbc]
    3691cc655619:	c5 e9 72 d2 10                                  	vpsrld xmm2,xmm2,0x10
    3691cc65561e:	c5 e9 db d6                                     	vpand  xmm2,xmm2,xmm6
    3691cc655622:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655627:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc65562d:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc655632:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc655637:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc65563c:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc655640:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc655644:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc655649:	c5 fa 7f 5d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm3
    3691cc65564e:	c5 fa 6f 9d 84 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x17c]
    3691cc655656:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    3691cc65565a:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    3691cc65565e:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    3691cc655662:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc655666:	c5 fa 6f 8d f4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x10c]
    3691cc65566e:	c5 fa 6f 55 cc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x34]
    3691cc655673:	c5 fa 6f 9d 54 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xac]
    3691cc65567b:	c5 e1 72 d3 08                                  	vpsrld xmm3,xmm3,0x8
    3691cc655680:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    3691cc655684:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655689:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc65568f:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc655694:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc655699:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc65569e:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc6556a2:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc6556a6:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc6556ab:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    3691cc6556af:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    3691cc6556b4:	c5 fa 6f bd 64 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x9c]
    3691cc6556bc:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    3691cc6556c1:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    3691cc6556c5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6556ca:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc6556d0:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc6556d5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6556da:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc6556df:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc6556e3:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc6556e7:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc6556ec:	c5 e0 59 df                                     	vmulps xmm3,xmm3,xmm7
    3691cc6556f0:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    3691cc6556f4:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    3691cc6556f8:	c5 fa 6f 95 34 ff ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0xcc]
    3691cc655700:	c5 fa 6f 5d cc                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x34]
    3691cc655705:	c5 fa 6f bd 24 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xdc]
    3691cc65570d:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    3691cc655712:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    3691cc655716:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc65571b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc655721:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc655726:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65572b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc655730:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc655734:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc655738:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc65573d:	c5 e0 59 df                                     	vmulps xmm3,xmm3,xmm7
    3691cc655741:	c5 fa 6f 7d ac                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x54]
    3691cc655746:	c5 fa 7f a5 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm4
    3691cc65574e:	c5 fa 6f a5 44 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xbc]
    3691cc655756:	c5 d9 72 d4 08                                  	vpsrld xmm4,xmm4,0x8
    3691cc65575b:	c5 d9 db e6                                     	vpand  xmm4,xmm4,xmm6
    3691cc65575f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655764:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc65576a:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc65576f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc655774:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc655779:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc65577d:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc655781:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc655786:	c5 c0 59 fc                                     	vmulps xmm7,xmm7,xmm4
    3691cc65578a:	c5 e0 58 df                                     	vaddps xmm3,xmm3,xmm7
    3691cc65578e:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    3691cc655792:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    3691cc655796:	e9 99 01 00 00                                  	jmp    0x3691cc655934
    3691cc65579b:	8b c3                                           	mov    eax,ebx
    3691cc65579d:	c1 e0 02                                        	shl    eax,0x2
    3691cc6557a0:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc6557a4:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    3691cc6557a7:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    3691cc6557ab:	48 8b 49 17                                     	mov    rcx,QWORD PTR [rcx+0x17]
    3691cc6557af:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    3691cc6557b2:	8b 14 01                                        	mov    edx,DWORD PTR [rcx+rax*1]
    3691cc6557b5:	8b c6                                           	mov    eax,esi
    3691cc6557b7:	c1 e0 02                                        	shl    eax,0x2
    3691cc6557ba:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc6557be:	44 8b 0c 01                                     	mov    r9d,DWORD PTR [rcx+rax*1]
    3691cc6557c2:	8b c7                                           	mov    eax,edi
    3691cc6557c4:	c1 e0 02                                        	shl    eax,0x2
    3691cc6557c7:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    3691cc6557cb:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
    3691cc6557ce:	8b 1c 01                                        	mov    ebx,DWORD PTR [rcx+rax*1]
    3691cc6557d1:	89 5d 94                                        	mov    DWORD PTR [rbp-0x6c],ebx
    3691cc6557d4:	41 8b c0                                        	mov    eax,r8d
    3691cc6557d7:	41 8b c9                                        	mov    ecx,r9d
    3691cc6557da:	44 8b e2                                        	mov    r12d,edx
    3691cc6557dd:	8b 55 84                                        	mov    edx,DWORD PTR [rbp-0x7c]
    3691cc6557e0:	8b 5d 88                                        	mov    ebx,DWORD PTR [rbp-0x78]
    3691cc6557e3:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    3691cc6557e7:	41 c1 e0 02                                     	shl    r8d,0x2
    3691cc6557eb:	47 8d 04 07                                     	lea    r8d,[r15+r8*1]
    3691cc6557ef:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    3691cc6557f3:	4d 8b 49 17                                     	mov    r9,QWORD PTR [r9+0x17]
    3691cc6557f7:	89 45 8c                                        	mov    DWORD PTR [rbp-0x74],eax
    3691cc6557fa:	43 8b 04 01                                     	mov    eax,DWORD PTR [r9+r8*1]
    3691cc6557fe:	44 8b 45 94                                     	mov    r8d,DWORD PTR [rbp-0x6c]
    3691cc655802:	c4 c1 79 6e e0                                  	vmovd  xmm4,r8d
    3691cc655807:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    3691cc65580c:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    3691cc655812:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    3691cc655818:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    3691cc65581e:	c5 c9 72 d4 18                                  	vpsrld xmm6,xmm4,0x18
    3691cc655823:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc655828:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    3691cc65582e:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    3691cc655833:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc655838:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    3691cc65583d:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    3691cc655841:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    3691cc655845:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    3691cc65584a:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    3691cc655852:	4c 8b 15 c6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbc6]        # 0x3691cc65541f
    3691cc655859:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    3691cc65585e:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    3691cc655862:	c5 d9 db c8                                     	vpand  xmm1,xmm4,xmm0
    3691cc655866:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc65586b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc655871:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc655876:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc65587b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc655880:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc655884:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc655888:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc65588d:	c5 fa 7f 8d 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm1
    3691cc655895:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    3691cc65589a:	c5 f1 db c8                                     	vpand  xmm1,xmm1,xmm0
    3691cc65589e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6558a3:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc6558a9:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc6558ae:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6558b3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc6558b8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc6558bc:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc6558c0:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc6558c5:	c5 fa 7f 95 f4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x10c],xmm2
    3691cc6558cd:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    3691cc6558d2:	c5 e9 db d0                                     	vpand  xmm2,xmm2,xmm0
    3691cc6558d6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6558db:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc6558e1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc6558e6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6558eb:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc6558f0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc6558f4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc6558f8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc6558fd:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    3691cc655900:	c5 fa 7f 6d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm5
    3691cc655905:	c5 fa 7f 45 ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm0
    3691cc65590a:	c5 fa 7f bd 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm7
    3691cc655912:	c5 fa 7f 9d c4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x13c],xmm3
    3691cc65591a:	44 8b c0                                        	mov    r8d,eax
    3691cc65591d:	45 8b cc                                        	mov    r9d,r12d
    3691cc655920:	c5 f9 28 c1                                     	vmovapd xmm0,xmm1
    3691cc655924:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    3691cc655928:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    3691cc65592c:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    3691cc655930:	44 8b 65 94                                     	mov    r12d,DWORD PTR [rbp-0x6c]
    3691cc655934:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc655937:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    3691cc655941:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc655946:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc65594a:	c5 d0 59 da                                     	vmulps xmm3,xmm5,xmm2
    3691cc65594e:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    3691cc655952:	8b 4d a8                                        	mov    ecx,DWORD PTR [rbp-0x58]
    3691cc655955:	83 e1 01                                        	and    ecx,0x1
    3691cc655958:	89 85 c0 fe ff ff                               	mov    DWORD PTR [rbp-0x140],eax
    3691cc65595e:	33 c0                                           	xor    eax,eax
    3691cc655960:	2b c1                                           	sub    eax,ecx
    3691cc655962:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    3691cc655966:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    3691cc65596b:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc65596e:	c1 e0 1e                                        	shl    eax,0x1e
    3691cc655971:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc655974:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    3691cc65597a:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc65597d:	c1 e0 1d                                        	shl    eax,0x1d
    3691cc655980:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc655983:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    3691cc655989:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc65598c:	c1 e0 1c                                        	shl    eax,0x1c
    3691cc65598f:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc655992:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    3691cc655998:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    3691cc65599c:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    3691cc6559a0:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6559a5:	8b 85 c0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x140]
    3691cc6559ab:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    3691cc6559af:	48 8b 49 17                                     	mov    rcx,QWORD PTR [rcx+0x17]
    3691cc6559b3:	c5 fa 7f 7c 01 30                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x30],xmm7
    3691cc6559b9:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc6559bc:	c5 f8 59 da                                     	vmulps xmm3,xmm0,xmm2
    3691cc6559c0:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    3691cc6559c4:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    3691cc6559c8:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6559cd:	c5 fa 7f 7c 01 20                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x20],xmm7
    3691cc6559d3:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc6559d6:	c5 f0 59 da                                     	vmulps xmm3,xmm1,xmm2
    3691cc6559da:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    3691cc6559de:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    3691cc6559e2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6559e7:	c5 fa 7f 7c 01 10                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x10],xmm7
    3691cc6559ed:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc6559f0:	c5 fa 6f 9d 14 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xec]
    3691cc6559f8:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    3691cc6559fc:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    3691cc655a00:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    3691cc655a04:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc655a09:	c5 fa 7f 3c 01                                  	vmovdqu XMMWORD PTR [rcx+rax*1],xmm7
    3691cc655a0e:	44 89 45 8c                                     	mov    DWORD PTR [rbp-0x74],r8d
    3691cc655a12:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
    3691cc655a15:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    3691cc655a18:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    3691cc655a1b:	89 b5 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],esi
    3691cc655a21:	c5 fa 7f 85 e4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x11c],xmm0
    3691cc655a29:	41 8b ff                                        	mov    edi,r15d
    3691cc655a2c:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    3691cc655a30:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    3691cc655a34:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc655a38:	c5 f9 28 fd                                     	vmovapd xmm7,xmm5
    3691cc655a3c:	44 89 a5 bc fe ff ff                            	mov    DWORD PTR [rbp-0x144],r12d
    3691cc655a43:	45 8b e1                                        	mov    r12d,r9d
    3691cc655a46:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc655a49:	8b 4d a4                                        	mov    ecx,DWORD PTR [rbp-0x5c]
    3691cc655a4c:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    3691cc655a4f:	be 01 00 00 00                                  	mov    esi,0x1
    3691cc655a54:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    3691cc655a58:	44 8b 8d bc fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x144]
    3691cc655a5f:	44 8b 7d 9c                                     	mov    r15d,DWORD PTR [rbp-0x64]
    3691cc655a63:	c5 fa 6f b5 54 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xac]
    3691cc655a6b:	8b c6                                           	mov    eax,esi
    3691cc655a6d:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    3691cc655a71:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    3691cc655a75:	41 81 aa bc 02 00 00 a9 1a 00 00                	sub    DWORD PTR [r10+0x2bc],0x1aa9
    3691cc655a80:	0f 88 45 00 00 00                               	js     0x3691cc655acb
    3691cc655a86:	48 8b e5                                        	mov    rsp,rbp
    3691cc655a89:	5d                                              	pop    rbp
    3691cc655a8a:	c3                                              	ret
    3691cc655a8b:	50                                              	push   rax
    3691cc655a8c:	51                                              	push   rcx
    3691cc655a8d:	52                                              	push   rdx
    3691cc655a8e:	48 83 ec 30                                     	sub    rsp,0x30
    3691cc655a92:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    3691cc655a97:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    3691cc655a9d:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    3691cc655aa3:	33 c0                                           	xor    eax,eax
    3691cc655aa5:	e8 86 e4 f6 ff                                  	call   0x3691cc5c3f30
    3691cc655aaa:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    3691cc655aaf:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    3691cc655ab5:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    3691cc655abb:	48 83 c4 30                                     	add    rsp,0x30
    3691cc655abf:	5a                                              	pop    rdx
    3691cc655ac0:	59                                              	pop    rcx
    3691cc655ac1:	58                                              	pop    rax
    3691cc655ac2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc655ac6:	e9 6d e5 ff ff                                  	jmp    0x3691cc654038
    3691cc655acb:	50                                              	push   rax
    3691cc655acc:	e8 8f e2 f6 ff                                  	call   0x3691cc5c3d60
    3691cc655ad1:	58                                              	pop    rax
    3691cc655ad2:	eb b2                                           	jmp    0x3691cc655a86
    3691cc655ad4:	3b 00                                           	cmp    eax,DWORD PTR [rax]
    3691cc655ad6:	00 00                                           	add    BYTE PTR [rax],al
    3691cc655ad8:	08 00                                           	or     BYTE PTR [rax],al
	...
