
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms0/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

00001d2b7c488180 <.data>:
    1d2b7c488180:	55                                              	push   rbp
    1d2b7c488181:	48 8b ec                                        	mov    rbp,rsp
    1d2b7c488184:	6a 30                                           	push   0x30
    1d2b7c488186:	56                                              	push   rsi
    1d2b7c488187:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    1d2b7c48818e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c488192:	8b f9                                           	mov    edi,ecx
    1d2b7c488194:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    1d2b7c488198:	0f 86 53 8a 00 00                               	jbe    0x1d2b7c490bf1
    1d2b7c48819e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    1d2b7c4881a2:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    1d2b7c4881a6:	4d 0b de                                        	or     r11,r14
    1d2b7c4881a9:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    1d2b7c4881ad:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    1d2b7c4881b5:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    1d2b7c4881b9:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    1d2b7c4881bd:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    1d2b7c4881c1:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    1d2b7c4881c8:	44 8b e0                                        	mov    r12d,eax
    1d2b7c4881cb:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    1d2b7c4881d0:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    1d2b7c4881d7:	85 f6                                           	test   esi,esi
    1d2b7c4881d9:	0f 85 4c 00 00 00                               	jne    0x1d2b7c48822b
    1d2b7c4881df:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4881e2:	0f 84 43 00 00 00                               	je     0x1d2b7c48822b
    1d2b7c4881e8:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    1d2b7c4881ed:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    1d2b7c4881f3:	0f 84 32 00 00 00                               	je     0x1d2b7c48822b
    1d2b7c4881f9:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    1d2b7c4881fc:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    1d2b7c4881ff:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    1d2b7c488203:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    1d2b7c488207:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48820b:	8b cf                                           	mov    ecx,edi
    1d2b7c48820d:	e8 3e 43 f3 ff                                  	call   0x1d2b7c3bc550
    1d2b7c488212:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c488216:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    1d2b7c48821d:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    1d2b7c488221:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    1d2b7c488224:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c488227:	5d                                              	pop    rbp
    1d2b7c488228:	c2 10 00                                        	ret    0x10
    1d2b7c48822b:	4d 8b d3                                        	mov    r10,r11
    1d2b7c48822e:	44 8b d9                                        	mov    r11d,ecx
    1d2b7c488231:	49 8b ca                                        	mov    rcx,r10
    1d2b7c488234:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    1d2b7c48823b:	44 8b fb                                        	mov    r15d,ebx
    1d2b7c48823e:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    1d2b7c488245:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    1d2b7c48824f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c488254:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c488258:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    1d2b7c48825c:	49 ba 40 79 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7940
    1d2b7c488266:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c48826c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    1d2b7c488271:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c488277:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c48827c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c488281:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    1d2b7c488285:	8b da                                           	mov    ebx,edx
    1d2b7c488287:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    1d2b7c48828e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    1d2b7c488292:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x1d2b7c48825e
    1d2b7c488299:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    1d2b7c48829f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    1d2b7c4882a4:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    1d2b7c4882aa:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    1d2b7c4882af:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    1d2b7c4882b4:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    1d2b7c4882b9:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    1d2b7c4882be:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    1d2b7c4882c4:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    1d2b7c4882c8:	8b d7                                           	mov    edx,edi
    1d2b7c4882ca:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    1d2b7c4882d1:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    1d2b7c4882d5:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x1d2b7c48825e
    1d2b7c4882dc:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    1d2b7c4882e2:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    1d2b7c4882e7:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    1d2b7c4882ed:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    1d2b7c4882f2:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    1d2b7c4882f7:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    1d2b7c4882fc:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    1d2b7c488301:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    1d2b7c488307:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    1d2b7c48830b:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    1d2b7c488310:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    1d2b7c488315:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    1d2b7c488319:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    1d2b7c48831f:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    1d2b7c488323:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    1d2b7c488328:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    1d2b7c48832c:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    1d2b7c488332:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    1d2b7c488338:	48 2b fe                                        	sub    rdi,rsi
    1d2b7c48833b:	48 85 ff                                        	test   rdi,rdi
    1d2b7c48833e:	0f 8e 7f 88 00 00                               	jle    0x1d2b7c490bc3
    1d2b7c488344:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    1d2b7c488349:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    1d2b7c48834e:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    1d2b7c488354:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    1d2b7c48835e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c488363:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c488367:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    1d2b7c48836b:	8d 70 04                                        	lea    esi,[rax+0x4]
    1d2b7c48836e:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    1d2b7c488373:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    1d2b7c488378:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    1d2b7c48837f:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    1d2b7c488384:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    1d2b7c488388:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    1d2b7c48838d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    1d2b7c488392:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    1d2b7c488397:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    1d2b7c48839c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    1d2b7c4883a0:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    1d2b7c4883a4:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    1d2b7c4883ae:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c4883b3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c4883b7:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    1d2b7c4883bb:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    1d2b7c4883bf:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    1d2b7c4883c4:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    1d2b7c4883ca:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    1d2b7c4883cf:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    1d2b7c4883d4:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    1d2b7c4883d8:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    1d2b7c4883dc:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    1d2b7c4883e4:	85 f6                                           	test   esi,esi
    1d2b7c4883e6:	0f 84 39 00 00 00                               	je     0x1d2b7c488425
    1d2b7c4883ec:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    1d2b7c4883f0:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    1d2b7c4883f4:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    1d2b7c4883fa:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    1d2b7c488401:	8d 78 54                                        	lea    edi,[rax+0x54]
    1d2b7c488404:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    1d2b7c48840b:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    1d2b7c48840f:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    1d2b7c488414:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    1d2b7c488419:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    1d2b7c488421:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    1d2b7c488425:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    1d2b7c488429:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    1d2b7c48842f:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    1d2b7c488434:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    1d2b7c48843a:	49 23 c1                                        	and    rax,r9
    1d2b7c48843d:	a8 01                                           	test   al,0x1
    1d2b7c48843f:	0f 85 20 00 00 00                               	jne    0x1d2b7c488465
    1d2b7c488445:	b8 01 00 00 00                                  	mov    eax,0x1
    1d2b7c48844a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    1d2b7c48844f:	85 f6                                           	test   esi,esi
    1d2b7c488451:	0f 45 c7                                        	cmovne eax,edi
    1d2b7c488454:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    1d2b7c48845b:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    1d2b7c48845e:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c488461:	5d                                              	pop    rbp
    1d2b7c488462:	c2 10 00                                        	ret    0x10
    1d2b7c488465:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    1d2b7c48846b:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    1d2b7c488471:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c488474:	3b f0                                           	cmp    esi,eax
    1d2b7c488476:	41 0f 9e c1                                     	setle  r9b
    1d2b7c48847a:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    1d2b7c48847e:	33 c9                                           	xor    ecx,ecx
    1d2b7c488480:	3b f0                                           	cmp    esi,eax
    1d2b7c488482:	0f 95 c1                                        	setne  cl
    1d2b7c488485:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    1d2b7c488489:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    1d2b7c48848e:	c5 79 7e d7                                     	vmovd  edi,xmm10
    1d2b7c488492:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    1d2b7c488499:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c48849c:	41 3b fb                                        	cmp    edi,r11d
    1d2b7c48849f:	41 0f 9e c7                                     	setle  r15b
    1d2b7c4884a3:	44 0b f9                                        	or     r15d,ecx
    1d2b7c4884a6:	45 23 f9                                        	and    r15d,r9d
    1d2b7c4884a9:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    1d2b7c4884af:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4884b2:	3b ce                                           	cmp    ecx,esi
    1d2b7c4884b4:	41 0f 9e c1                                     	setle  r9b
    1d2b7c4884b8:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    1d2b7c4884bf:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4884c2:	3b ce                                           	cmp    ecx,esi
    1d2b7c4884c4:	41 0f 95 c7                                     	setne  r15b
    1d2b7c4884c8:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    1d2b7c4884cf:	c5 79 7e c6                                     	vmovd  esi,xmm8
    1d2b7c4884d3:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    1d2b7c4884da:	33 db                                           	xor    ebx,ebx
    1d2b7c4884dc:	3b f7                                           	cmp    esi,edi
    1d2b7c4884de:	0f 9e c3                                        	setle  bl
    1d2b7c4884e1:	41 0b df                                        	or     ebx,r15d
    1d2b7c4884e4:	41 23 d9                                        	and    ebx,r9d
    1d2b7c4884e7:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4884ea:	3b c8                                           	cmp    ecx,eax
    1d2b7c4884ec:	41 0f 95 c7                                     	setne  r15b
    1d2b7c4884f0:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4884f3:	44 3b de                                        	cmp    r11d,esi
    1d2b7c4884f6:	41 0f 9e c1                                     	setle  r9b
    1d2b7c4884fa:	45 0b cf                                        	or     r9d,r15d
    1d2b7c4884fd:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c488500:	3b c1                                           	cmp    eax,ecx
    1d2b7c488502:	41 0f 9e c7                                     	setle  r15b
    1d2b7c488506:	45 23 f9                                        	and    r15d,r9d
    1d2b7c488509:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    1d2b7c488511:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    1d2b7c488515:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    1d2b7c488519:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    1d2b7c488521:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    1d2b7c488528:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    1d2b7c488531:	0f 85 0d 00 00 00                               	jne    0x1d2b7c488544
    1d2b7c488537:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    1d2b7c48853b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    1d2b7c48853f:	e9 49 01 00 00                                  	jmp    0x1d2b7c48868d
    1d2b7c488544:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    1d2b7c48854e:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c488553:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    1d2b7c488558:	0f 8a 1d 00 00 00                               	jp     0x1d2b7c48857b
    1d2b7c48855e:	0f 85 17 00 00 00                               	jne    0x1d2b7c48857b
    1d2b7c488564:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    1d2b7c48856e:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    1d2b7c488573:	7a 06                                           	jp     0x1d2b7c48857b
    1d2b7c488575:	0f 84 0d 01 00 00                               	je     0x1d2b7c488688
    1d2b7c48857b:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    1d2b7c488580:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    1d2b7c488585:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    1d2b7c48858a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    1d2b7c48858e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    1d2b7c488593:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    1d2b7c488598:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    1d2b7c48859d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    1d2b7c4885a1:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    1d2b7c4885a5:	7a 06                                           	jp     0x1d2b7c4885ad
    1d2b7c4885a7:	0f 84 db 00 00 00                               	je     0x1d2b7c488688
    1d2b7c4885ad:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    1d2b7c4885b4:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    1d2b7c4885bb:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    1d2b7c4885c2:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    1d2b7c4885c6:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    1d2b7c4885cb:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    1d2b7c4885d2:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    1d2b7c4885d9:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    1d2b7c4885dd:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    1d2b7c4885e1:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    1d2b7c4885e5:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    1d2b7c4885e9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    1d2b7c4885ed:	49 ba 60 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7860
    1d2b7c4885f7:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    1d2b7c4885fc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c488600:	0f 87 04 00 00 00                               	ja     0x1d2b7c48860a
    1d2b7c488606:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48860a:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    1d2b7c48860f:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    1d2b7c488613:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c488617:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    1d2b7c48861b:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    1d2b7c48861f:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x1d2b7c4885ef
    1d2b7c488626:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48862b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c48862f:	0f 87 04 00 00 00                               	ja     0x1d2b7c488639
    1d2b7c488635:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c488639:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    1d2b7c48863d:	0f 87 04 00 00 00                               	ja     0x1d2b7c488647
    1d2b7c488643:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c488647:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    1d2b7c48864c:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    1d2b7c488656:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    1d2b7c48865c:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    1d2b7c488661:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c488665:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c488669:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c48866d:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    1d2b7c488675:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48867d:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    1d2b7c488683:	e9 05 00 00 00                                  	jmp    0x1d2b7c48868d
    1d2b7c488688:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    1d2b7c48868d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    1d2b7c488692:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    1d2b7c488696:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    1d2b7c48869c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    1d2b7c4886a0:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    1d2b7c4886a7:	41 f7 d9                                        	neg    r9d
    1d2b7c4886aa:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    1d2b7c4886ae:	44 8b cb                                        	mov    r9d,ebx
    1d2b7c4886b1:	41 f7 d9                                        	neg    r9d
    1d2b7c4886b4:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    1d2b7c4886b8:	45 8b cf                                        	mov    r9d,r15d
    1d2b7c4886bb:	41 f7 d9                                        	neg    r9d
    1d2b7c4886be:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    1d2b7c4886c5:	0f 84 21 84 00 00                               	je     0x1d2b7c490aec
    1d2b7c4886cb:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    1d2b7c4886d2:	0f 85 70 83 00 00                               	jne    0x1d2b7c490a48
    1d2b7c4886d8:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    1d2b7c4886dc:	41 c1 e1 08                                     	shl    r9d,0x8
    1d2b7c4886e0:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    1d2b7c4886e7:	41 8b d9                                        	mov    ebx,r9d
    1d2b7c4886ea:	2b de                                           	sub    ebx,esi
    1d2b7c4886ec:	48 63 db                                        	movsxd rbx,ebx
    1d2b7c4886ef:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    1d2b7c4886f6:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    1d2b7c4886fa:	41 c1 e7 08                                     	shl    r15d,0x8
    1d2b7c4886fe:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    1d2b7c488705:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    1d2b7c48870c:	41 8b d7                                        	mov    edx,r15d
    1d2b7c48870f:	2b d1                                           	sub    edx,ecx
    1d2b7c488711:	48 63 d2                                        	movsxd rdx,edx
    1d2b7c488714:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    1d2b7c488718:	41 8b d1                                        	mov    edx,r9d
    1d2b7c48871b:	41 2b d3                                        	sub    edx,r11d
    1d2b7c48871e:	48 63 d2                                        	movsxd rdx,edx
    1d2b7c488721:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    1d2b7c488728:	41 8b d7                                        	mov    edx,r15d
    1d2b7c48872b:	2b d0                                           	sub    edx,eax
    1d2b7c48872d:	48 63 d2                                        	movsxd rdx,edx
    1d2b7c488730:	44 2b cf                                        	sub    r9d,edi
    1d2b7c488733:	4d 63 c9                                        	movsxd r9,r9d
    1d2b7c488736:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    1d2b7c48873d:	4d 63 ff                                        	movsxd r15,r15d
    1d2b7c488740:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    1d2b7c488744:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    1d2b7c488749:	4d 85 d2                                        	test   r10,r10
    1d2b7c48874c:	79 13                                           	jns    0x1d2b7c488761
    1d2b7c48874e:	49 d1 ea                                        	shr    r10,1
    1d2b7c488751:	73 04                                           	jae    0x1d2b7c488757
    1d2b7c488753:	49 83 ca 01                                     	or     r10,0x1
    1d2b7c488757:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    1d2b7c48875c:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    1d2b7c488761:	2b fe                                           	sub    edi,esi
    1d2b7c488763:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    1d2b7c48876a:	4c 63 ff                                        	movsxd r15,edi
    1d2b7c48876d:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    1d2b7c488774:	4d 8b cf                                        	mov    r9,r15
    1d2b7c488777:	49 c1 e1 08                                     	shl    r9,0x8
    1d2b7c48877b:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    1d2b7c488782:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c488785:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    1d2b7c48878c:	85 ff                                           	test   edi,edi
    1d2b7c48878e:	4d 0f 4c f9                                     	cmovl  r15,r9
    1d2b7c488792:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    1d2b7c488799:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    1d2b7c4887a0:	44 2b c9                                        	sub    r9d,ecx
    1d2b7c4887a3:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    1d2b7c4887aa:	4d 63 f9                                        	movsxd r15,r9d
    1d2b7c4887ad:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    1d2b7c4887b4:	49 c1 e7 08                                     	shl    r15,0x8
    1d2b7c4887b8:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    1d2b7c4887bf:	49 f7 df                                        	neg    r15
    1d2b7c4887c2:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    1d2b7c4887c9:	33 db                                           	xor    ebx,ebx
    1d2b7c4887cb:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4887ce:	49 0f 4f df                                     	cmovg  rbx,r15
    1d2b7c4887d2:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    1d2b7c4887d9:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    1d2b7c4887e0:	33 d2                                           	xor    edx,edx
    1d2b7c4887e2:	85 ff                                           	test   edi,edi
    1d2b7c4887e4:	48 0f 4c da                                     	cmovl  rbx,rdx
    1d2b7c4887e8:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4887eb:	4c 0f 4f fa                                     	cmovg  r15,rdx
    1d2b7c4887ef:	41 2b f3                                        	sub    esi,r11d
    1d2b7c4887f2:	48 63 fe                                        	movsxd rdi,esi
    1d2b7c4887f5:	4c 8b df                                        	mov    r11,rdi
    1d2b7c4887f8:	49 c1 e3 08                                     	shl    r11,0x8
    1d2b7c4887fc:	4c 8b ca                                        	mov    r9,rdx
    1d2b7c4887ff:	85 f6                                           	test   esi,esi
    1d2b7c488801:	4d 0f 4c cb                                     	cmovl  r9,r11
    1d2b7c488805:	2b c8                                           	sub    ecx,eax
    1d2b7c488807:	48 63 c1                                        	movsxd rax,ecx
    1d2b7c48880a:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    1d2b7c488811:	4c 8b d8                                        	mov    r11,rax
    1d2b7c488814:	49 c1 e3 08                                     	shl    r11,0x8
    1d2b7c488818:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    1d2b7c48881f:	49 f7 db                                        	neg    r11
    1d2b7c488822:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    1d2b7c488829:	4c 8b ca                                        	mov    r9,rdx
    1d2b7c48882c:	85 c9                                           	test   ecx,ecx
    1d2b7c48882e:	4d 0f 4f cb                                     	cmovg  r9,r11
    1d2b7c488832:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    1d2b7c488839:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    1d2b7c488840:	85 f6                                           	test   esi,esi
    1d2b7c488842:	4c 0f 4c ca                                     	cmovl  r9,rdx
    1d2b7c488846:	85 c9                                           	test   ecx,ecx
    1d2b7c488848:	4c 0f 4f da                                     	cmovg  r11,rdx
    1d2b7c48884c:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    1d2b7c488852:	48 8b f1                                        	mov    rsi,rcx
    1d2b7c488855:	48 c1 e6 08                                     	shl    rsi,0x8
    1d2b7c488859:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    1d2b7c488860:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    1d2b7c488865:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    1d2b7c488869:	4c 8b ca                                        	mov    r9,rdx
    1d2b7c48886c:	45 85 db                                        	test   r11d,r11d
    1d2b7c48886f:	4c 0f 4c ce                                     	cmovl  r9,rsi
    1d2b7c488873:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    1d2b7c48887a:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    1d2b7c488880:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    1d2b7c488887:	4c 8b ce                                        	mov    r9,rsi
    1d2b7c48888a:	49 c1 e1 08                                     	shl    r9,0x8
    1d2b7c48888e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    1d2b7c488895:	49 f7 d9                                        	neg    r9
    1d2b7c488898:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    1d2b7c48889f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    1d2b7c4888a5:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    1d2b7c4888ac:	48 8b da                                        	mov    rbx,rdx
    1d2b7c4888af:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4888b2:	49 0f 4f d9                                     	cmovg  rbx,r9
    1d2b7c4888b6:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    1d2b7c4888bd:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    1d2b7c4888c4:	45 85 db                                        	test   r11d,r11d
    1d2b7c4888c7:	48 0f 4c da                                     	cmovl  rbx,rdx
    1d2b7c4888cb:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4888ce:	4c 0f 4f ca                                     	cmovg  r9,rdx
    1d2b7c4888d2:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    1d2b7c4888da:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    1d2b7c4888df:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    1d2b7c4888e7:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    1d2b7c4888eb:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    1d2b7c4888f2:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    1d2b7c4888f9:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    1d2b7c488900:	45 85 db                                        	test   r11d,r11d
    1d2b7c488903:	0f 85 b6 00 00 00                               	jne    0x1d2b7c4889bf
    1d2b7c488909:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    1d2b7c488911:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    1d2b7c48891a:	0f 85 9f 00 00 00                               	jne    0x1d2b7c4889bf
    1d2b7c488920:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    1d2b7c488928:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    1d2b7c488931:	0f 85 88 00 00 00                               	jne    0x1d2b7c4889bf
    1d2b7c488937:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    1d2b7c48893f:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    1d2b7c488948:	0f 85 71 00 00 00                               	jne    0x1d2b7c4889bf
    1d2b7c48894e:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    1d2b7c488956:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    1d2b7c48895f:	0f 85 5a 00 00 00                               	jne    0x1d2b7c4889bf
    1d2b7c488965:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    1d2b7c488969:	41 8b d7                                        	mov    edx,r15d
    1d2b7c48896c:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    1d2b7c488973:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    1d2b7c48897b:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    1d2b7c488984:	0f 84 16 00 00 00                               	je     0x1d2b7c4889a0
    1d2b7c48898a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    1d2b7c488992:	41 83 eb 01                                     	sub    r11d,0x1
    1d2b7c488996:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c48899a:	0f 87 11 00 00 00                               	ja     0x1d2b7c4889b1
    1d2b7c4889a0:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c4889a5:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    1d2b7c4889ac:	e9 10 00 00 00                                  	jmp    0x1d2b7c4889c1
    1d2b7c4889b1:	33 d2                                           	xor    edx,edx
    1d2b7c4889b3:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    1d2b7c4889ba:	e9 02 00 00 00                                  	jmp    0x1d2b7c4889c1
    1d2b7c4889bf:	33 d2                                           	xor    edx,edx
    1d2b7c4889c1:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    1d2b7c4889c8:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    1d2b7c4889d0:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    1d2b7c4889d7:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    1d2b7c4889db:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    1d2b7c4889e3:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    1d2b7c4889ea:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    1d2b7c4889f1:	48 0f af d0                                     	imul   rdx,rax
    1d2b7c4889f5:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    1d2b7c4889fc:	48 0f af c7                                     	imul   rax,rdi
    1d2b7c488a00:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    1d2b7c488a07:	48 0f af fe                                     	imul   rdi,rsi
    1d2b7c488a0b:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    1d2b7c488a12:	48 0f af f1                                     	imul   rsi,rcx
    1d2b7c488a16:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c488a1b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c488a21:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c488a27:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    1d2b7c488a2c:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    1d2b7c488a31:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    1d2b7c488a38:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    1d2b7c488a3f:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    1d2b7c488a43:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    1d2b7c488a4a:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    1d2b7c488a51:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    1d2b7c488a58:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    1d2b7c488a5f:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    1d2b7c488a66:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    1d2b7c488a6d:	48 03 f9                                        	add    rdi,rcx
    1d2b7c488a70:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    1d2b7c488a77:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    1d2b7c488a7e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    1d2b7c488a85:	48 03 f9                                        	add    rdi,rcx
    1d2b7c488a88:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    1d2b7c488a8f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    1d2b7c488a96:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    1d2b7c488a9d:	48 03 f9                                        	add    rdi,rcx
    1d2b7c488aa0:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    1d2b7c488aa7:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    1d2b7c488aae:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    1d2b7c488ab2:	48 03 f9                                        	add    rdi,rcx
    1d2b7c488ab5:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    1d2b7c488ab9:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    1d2b7c488ac0:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    1d2b7c488ac7:	48 03 f9                                        	add    rdi,rcx
    1d2b7c488aca:	49 03 d9                                        	add    rbx,r9
    1d2b7c488acd:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    1d2b7c488ad1:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    1d2b7c488ad9:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    1d2b7c488ae1:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    1d2b7c488ae9:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    1d2b7c488af1:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    1d2b7c488af9:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    1d2b7c488b00:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    1d2b7c488b09:	0f 85 0a 00 00 00                               	jne    0x1d2b7c488b19
    1d2b7c488b0f:	33 c9                                           	xor    ecx,ecx
    1d2b7c488b11:	44 8b d9                                        	mov    r11d,ecx
    1d2b7c488b14:	e9 47 01 00 00                                  	jmp    0x1d2b7c488c60
    1d2b7c488b19:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    1d2b7c488b21:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    1d2b7c488b2a:	75 e3                                           	jne    0x1d2b7c488b0f
    1d2b7c488b2c:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    1d2b7c488b34:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    1d2b7c488b3d:	75 d0                                           	jne    0x1d2b7c488b0f
    1d2b7c488b3f:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    1d2b7c488b47:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    1d2b7c488b4f:	0f 85 5c 00 00 00                               	jne    0x1d2b7c488bb1
    1d2b7c488b55:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    1d2b7c488b5d:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    1d2b7c488b66:	0f 85 45 00 00 00                               	jne    0x1d2b7c488bb1
    1d2b7c488b6c:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    1d2b7c488b74:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    1d2b7c488b7d:	0f 85 2e 00 00 00                               	jne    0x1d2b7c488bb1
    1d2b7c488b83:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    1d2b7c488b8b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    1d2b7c488b94:	0f 85 17 00 00 00                               	jne    0x1d2b7c488bb1
    1d2b7c488b9a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    1d2b7c488ba2:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    1d2b7c488bab:	0f 85 0d 00 00 00                               	jne    0x1d2b7c488bbe
    1d2b7c488bb1:	b9 01 00 00 00                                  	mov    ecx,0x1
    1d2b7c488bb6:	45 33 db                                        	xor    r11d,r11d
    1d2b7c488bb9:	e9 a2 00 00 00                                  	jmp    0x1d2b7c488c60
    1d2b7c488bbe:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    1d2b7c488bc6:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    1d2b7c488bcf:	74 e0                                           	je     0x1d2b7c488bb1
    1d2b7c488bd1:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    1d2b7c488bd9:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    1d2b7c488be2:	74 cd                                           	je     0x1d2b7c488bb1
    1d2b7c488be4:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    1d2b7c488bec:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    1d2b7c488bf5:	74 ba                                           	je     0x1d2b7c488bb1
    1d2b7c488bf7:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    1d2b7c488bfc:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    1d2b7c488c02:	0f 85 0d 00 00 00                               	jne    0x1d2b7c488c15
    1d2b7c488c08:	b9 01 00 00 00                                  	mov    ecx,0x1
    1d2b7c488c0d:	44 8b d9                                        	mov    r11d,ecx
    1d2b7c488c10:	e9 4b 00 00 00                                  	jmp    0x1d2b7c488c60
    1d2b7c488c15:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    1d2b7c488c1a:	33 c9                                           	xor    ecx,ecx
    1d2b7c488c1c:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    1d2b7c488c23:	0f 95 c1                                        	setne  cl
    1d2b7c488c26:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c488c2a:	41 0f 95 c3                                     	setne  r11b
    1d2b7c488c2e:	45 0f b6 db                                     	movzx  r11d,r11b
    1d2b7c488c32:	44 85 d9                                        	test   ecx,r11d
    1d2b7c488c35:	0f 85 76 ff ff ff                               	jne    0x1d2b7c488bb1
    1d2b7c488c3b:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    1d2b7c488c40:	33 c9                                           	xor    ecx,ecx
    1d2b7c488c42:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c488c46:	0f 94 c1                                        	sete   cl
    1d2b7c488c49:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    1d2b7c488c50:	41 0f 94 c3                                     	sete   r11b
    1d2b7c488c54:	45 0f b6 db                                     	movzx  r11d,r11b
    1d2b7c488c58:	44 0b d9                                        	or     r11d,ecx
    1d2b7c488c5b:	b9 01 00 00 00                                  	mov    ecx,0x1
    1d2b7c488c60:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    1d2b7c488c67:	4d 2b c7                                        	sub    r8,r15
    1d2b7c488c6a:	48 2b c2                                        	sub    rax,rdx
    1d2b7c488c6d:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    1d2b7c488c71:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    1d2b7c488c75:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    1d2b7c488c7c:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    1d2b7c488c83:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    1d2b7c488c8a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    1d2b7c488c91:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    1d2b7c488c98:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    1d2b7c488c9f:	49 c1 e1 09                                     	shl    r9,0x9
    1d2b7c488ca3:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    1d2b7c488caa:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    1d2b7c488cb1:	48 c1 e1 09                                     	shl    rcx,0x9
    1d2b7c488cb5:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    1d2b7c488cbc:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    1d2b7c488cc0:	49 c1 e0 09                                     	shl    r8,0x9
    1d2b7c488cc4:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    1d2b7c488ccb:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    1d2b7c488cd2:	48 c1 e6 09                                     	shl    rsi,0x9
    1d2b7c488cd6:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    1d2b7c488cda:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    1d2b7c488ce1:	49 c1 e0 09                                     	shl    r8,0x9
    1d2b7c488ce5:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    1d2b7c488cec:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    1d2b7c488cf3:	48 c1 e0 09                                     	shl    rax,0x9
    1d2b7c488cf7:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    1d2b7c488cfe:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    1d2b7c488d05:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    1d2b7c488d0c:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    1d2b7c488d13:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    1d2b7c488d1a:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    1d2b7c488d21:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    1d2b7c488d28:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    1d2b7c488d2c:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    1d2b7c488d33:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    1d2b7c488d37:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    1d2b7c488d3b:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    1d2b7c488d42:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    1d2b7c488d46:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    1d2b7c488d4a:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    1d2b7c488d51:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    1d2b7c488d55:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    1d2b7c488d5c:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    1d2b7c488d63:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    1d2b7c488d6a:	48 f7 d7                                        	not    rdi
    1d2b7c488d6d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    1d2b7c488d74:	49 f7 d7                                        	not    r15
    1d2b7c488d77:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    1d2b7c488d7e:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    1d2b7c488d85:	48 f7 d7                                        	not    rdi
    1d2b7c488d88:	48 f7 db                                        	neg    rbx
    1d2b7c488d8b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    1d2b7c488d92:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    1d2b7c488d99:	48 f7 db                                        	neg    rbx
    1d2b7c488d9c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    1d2b7c488da3:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    1d2b7c488da7:	48 f7 df                                        	neg    rdi
    1d2b7c488daa:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    1d2b7c488db1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c488db4:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    1d2b7c488dbb:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    1d2b7c488dbf:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    1d2b7c488dc6:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    1d2b7c488dca:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    1d2b7c488dd1:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    1d2b7c488dd5:	c5 79 7e df                                     	vmovd  edi,xmm11
    1d2b7c488dd9:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    1d2b7c488de0:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    1d2b7c488de6:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    1d2b7c488deb:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    1d2b7c488df0:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    1d2b7c488df5:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    1d2b7c488dfa:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    1d2b7c488dff:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    1d2b7c488e06:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    1d2b7c488e0a:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    1d2b7c488e11:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    1d2b7c488e18:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    1d2b7c488e1f:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    1d2b7c488e26:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    1d2b7c488e2d:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    1d2b7c488e34:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    1d2b7c488e3b:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    1d2b7c488e3f:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    1d2b7c488e47:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    1d2b7c488e4f:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    1d2b7c488e57:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    1d2b7c488e5f:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    1d2b7c488e67:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c488e6b:	e9 2d 00 00 00                                  	jmp    0x1d2b7c488e9d
    1d2b7c488e70:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c488e79:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    1d2b7c488e80:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    1d2b7c488e87:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    1d2b7c488e8e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    1d2b7c488e95:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c488e99:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    1d2b7c488e9d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    1d2b7c488ea1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c488ea6:	0f 85 96 7d 00 00                               	jne    0x1d2b7c490c42
    1d2b7c488eac:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    1d2b7c488eb0:	b8 0f 00 00 00                                  	mov    eax,0xf
    1d2b7c488eb5:	be 03 00 00 00                                  	mov    esi,0x3
    1d2b7c488eba:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    1d2b7c488ebe:	0f 4c f0                                        	cmovl  esi,eax
    1d2b7c488ec1:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    1d2b7c488ec9:	41 83 e3 7c                                     	and    r11d,0x7c
    1d2b7c488ecd:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    1d2b7c488ed5:	41 83 e1 7c                                     	and    r9d,0x7c
    1d2b7c488ed9:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    1d2b7c488ee0:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    1d2b7c488ee7:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    1d2b7c488eee:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    1d2b7c488ef5:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    1d2b7c488efc:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    1d2b7c488f03:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    1d2b7c488f0a:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    1d2b7c488f11:	4c 8b c8                                        	mov    r9,rax
    1d2b7c488f14:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    1d2b7c488f1b:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    1d2b7c488f1f:	e9 31 00 00 00                                  	jmp    0x1d2b7c488f55
    1d2b7c488f24:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c488f2d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c488f36:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c488f3f:	90                                              	nop
    1d2b7c488f40:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    1d2b7c488f47:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    1d2b7c488f4e:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c488f52:	45 8b c3                                        	mov    r8d,r11d
    1d2b7c488f55:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    1d2b7c488f5c:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    1d2b7c488f63:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    1d2b7c488f6a:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    1d2b7c488f71:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c488f76:	0f 85 0f 7d 00 00                               	jne    0x1d2b7c490c8b
    1d2b7c488f7c:	48 8b f0                                        	mov    rsi,rax
    1d2b7c488f7f:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    1d2b7c488f86:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    1d2b7c488f8d:	0f 8c 4b 02 00 00                               	jl     0x1d2b7c4891de
    1d2b7c488f93:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    1d2b7c488f9a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    1d2b7c488fa1:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    1d2b7c488fa8:	0f 8c 30 02 00 00                               	jl     0x1d2b7c4891de
    1d2b7c488fae:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    1d2b7c488fb5:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    1d2b7c488fbc:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    1d2b7c488fc3:	0f 8c 15 02 00 00                               	jl     0x1d2b7c4891de
    1d2b7c488fc9:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    1d2b7c488fcd:	41 b8 05 00 00 00                               	mov    r8d,0x5
    1d2b7c488fd3:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    1d2b7c488fd9:	45 0f 4c c1                                     	cmovl  r8d,r9d
    1d2b7c488fdd:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    1d2b7c488fe3:	41 23 d8                                        	and    ebx,r8d
    1d2b7c488fe6:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    1d2b7c488fed:	0f 8e 29 00 00 00                               	jle    0x1d2b7c48901c
    1d2b7c488ff3:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    1d2b7c488ffa:	0f 8e 1c 00 00 00                               	jle    0x1d2b7c48901c
    1d2b7c489000:	4d 3b df                                        	cmp    r11,r15
    1d2b7c489003:	0f 8d 13 00 00 00                               	jge    0x1d2b7c48901c
    1d2b7c489009:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    1d2b7c489010:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    1d2b7c489017:	e9 d7 01 00 00                                  	jmp    0x1d2b7c4891f3
    1d2b7c48901c:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    1d2b7c489021:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    1d2b7c489025:	4d 8b c4                                        	mov    r8,r12
    1d2b7c489028:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    1d2b7c48902f:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    1d2b7c489035:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    1d2b7c489039:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    1d2b7c48903e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c489042:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    1d2b7c489047:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    1d2b7c48904b:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    1d2b7c489050:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c489055:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    1d2b7c48905a:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    1d2b7c489060:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    1d2b7c489065:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    1d2b7c48906a:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    1d2b7c48906f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    1d2b7c489073:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c489078:	4c 03 e7                                        	add    r12,rdi
    1d2b7c48907b:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    1d2b7c489080:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    1d2b7c489084:	4c 03 c7                                        	add    r8,rdi
    1d2b7c489087:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    1d2b7c48908d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    1d2b7c489092:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    1d2b7c489096:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    1d2b7c48909a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c48909f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    1d2b7c4890a4:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    1d2b7c4890a9:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    1d2b7c4890ad:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c4890b2:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    1d2b7c4890b7:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    1d2b7c4890bb:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    1d2b7c4890c0:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    1d2b7c4890c4:	4c 8b e6                                        	mov    r12,rsi
    1d2b7c4890c7:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    1d2b7c4890ce:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    1d2b7c4890d4:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    1d2b7c4890d9:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    1d2b7c4890dd:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    1d2b7c4890e1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4890e6:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    1d2b7c4890eb:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    1d2b7c4890f0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    1d2b7c4890f4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4890f9:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    1d2b7c489100:	48 03 f7                                        	add    rsi,rdi
    1d2b7c489103:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    1d2b7c489108:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    1d2b7c48910c:	4c 03 e7                                        	add    r12,rdi
    1d2b7c48910f:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    1d2b7c489115:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    1d2b7c48911a:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    1d2b7c48911e:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    1d2b7c489122:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c489127:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    1d2b7c48912c:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    1d2b7c489131:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    1d2b7c489135:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c48913a:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    1d2b7c48913f:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    1d2b7c489143:	45 0b e0                                        	or     r12d,r8d
    1d2b7c489146:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    1d2b7c48914b:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    1d2b7c48914f:	4d 8b c7                                        	mov    r8,r15
    1d2b7c489152:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    1d2b7c489159:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    1d2b7c48915f:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    1d2b7c489164:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    1d2b7c489168:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    1d2b7c48916c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c489171:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    1d2b7c489176:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    1d2b7c48917b:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    1d2b7c48917f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c489184:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    1d2b7c48918b:	4c 03 fe                                        	add    r15,rsi
    1d2b7c48918e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    1d2b7c489193:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    1d2b7c489197:	4c 03 c6                                        	add    r8,rsi
    1d2b7c48919a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    1d2b7c4891a0:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    1d2b7c4891a5:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    1d2b7c4891a9:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    1d2b7c4891ad:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4891b2:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    1d2b7c4891b7:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    1d2b7c4891bc:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    1d2b7c4891c0:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4891c5:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    1d2b7c4891ca:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    1d2b7c4891ce:	45 0b c4                                        	or     r8d,r12d
    1d2b7c4891d1:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    1d2b7c4891d5:	44 23 c3                                        	and    r8d,ebx
    1d2b7c4891d8:	0f 85 12 00 00 00                               	jne    0x1d2b7c4891f0
    1d2b7c4891de:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c4891e2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4891e6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4891eb:	e9 ba 77 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c4891f0:	49 8b d8                                        	mov    rbx,r8
    1d2b7c4891f3:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4891f6:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    1d2b7c4891f9:	41 0f 9c c0                                     	setl   r8b
    1d2b7c4891fd:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    1d2b7c489204:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    1d2b7c48920b:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    1d2b7c489212:	45 85 e0                                        	test   r8d,r12d
    1d2b7c489215:	0f 85 6d 5b 00 00                               	jne    0x1d2b7c48ed88
    1d2b7c48921b:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    1d2b7c489222:	0f 85 70 2a 00 00                               	jne    0x1d2b7c48bc98
    1d2b7c489228:	f6 c3 01                                        	test   bl,0x1
    1d2b7c48922b:	0f 85 28 00 00 00                               	jne    0x1d2b7c489259
    1d2b7c489231:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c489235:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c48923b:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    1d2b7c48923f:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    1d2b7c489246:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    1d2b7c48924d:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    1d2b7c489254:	e9 86 0a 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c489259:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48925d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    1d2b7c489261:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    1d2b7c489269:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    1d2b7c489272:	0f 84 66 00 00 00                               	je     0x1d2b7c4892de
    1d2b7c489278:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    1d2b7c48927e:	c1 ef 03                                        	shr    edi,0x3
    1d2b7c489281:	83 e7 03                                        	and    edi,0x3
    1d2b7c489284:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    1d2b7c48928a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    1d2b7c489291:	41 03 fb                                        	add    edi,r11d
    1d2b7c489294:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    1d2b7c489299:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    1d2b7c4892a0:	41 83 e3 07                                     	and    r11d,0x7
    1d2b7c4892a4:	41 8b cb                                        	mov    ecx,r11d
    1d2b7c4892a7:	d3 e7                                           	shl    edi,cl
    1d2b7c4892a9:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    1d2b7c4892ad:	40 f6 c7 80                                     	test   dil,0x80
    1d2b7c4892b1:	0f 85 20 00 00 00                               	jne    0x1d2b7c4892d7
    1d2b7c4892b7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c4892bd:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    1d2b7c4892c4:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    1d2b7c4892cb:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    1d2b7c4892d2:	e9 08 0a 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c4892d7:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    1d2b7c4892de:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    1d2b7c4892e7:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    1d2b7c4892eb:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    1d2b7c4892ef:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    1d2b7c4892f8:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    1d2b7c4892fc:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    1d2b7c489300:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    1d2b7c489304:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    1d2b7c489308:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    1d2b7c48930c:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    1d2b7c489311:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    1d2b7c489316:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    1d2b7c48931b:	73 9a                                           	jae    0x1d2b7c4892b7
    1d2b7c48931d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    1d2b7c489324:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    1d2b7c48932b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    1d2b7c489332:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    1d2b7c489339:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    1d2b7c489340:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    1d2b7c489347:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    1d2b7c48934b:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    1d2b7c48934f:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    1d2b7c489353:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    1d2b7c489358:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    1d2b7c48935e:	0f 85 0b 00 00 00                               	jne    0x1d2b7c48936f
    1d2b7c489364:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c48936a:	e9 c5 00 00 00                                  	jmp    0x1d2b7c489434
    1d2b7c48936f:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    1d2b7c489377:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    1d2b7c489380:	75 e2                                           	jne    0x1d2b7c489364
    1d2b7c489382:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    1d2b7c489387:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    1d2b7c48938b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    1d2b7c48938f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    1d2b7c489393:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c489399:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    1d2b7c48939d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    1d2b7c4893a3:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    1d2b7c4893a8:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    1d2b7c4893af:	41 83 fc 08                                     	cmp    r12d,0x8
    1d2b7c4893b3:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4893c4
    1d2b7c4893b9:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x1d2b7c4910a8
    1d2b7c4893c0:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    1d2b7c4893c4:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c4893c8:	0f 87 66 00 00 00                               	ja     0x1d2b7c489434
    1d2b7c4893ce:	e9 0c 09 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c4893d3:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    1d2b7c4893d7:	0f 83 57 00 00 00                               	jae    0x1d2b7c489434
    1d2b7c4893dd:	e9 fd 08 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c4893e2:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    1d2b7c4893e6:	0f 8a 48 00 00 00                               	jp     0x1d2b7c489434
    1d2b7c4893ec:	0f 84 ed 08 00 00                               	je     0x1d2b7c489cdf
    1d2b7c4893f2:	e9 3d 00 00 00                                  	jmp    0x1d2b7c489434
    1d2b7c4893f7:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    1d2b7c4893fb:	0f 87 33 00 00 00                               	ja     0x1d2b7c489434
    1d2b7c489401:	e9 d9 08 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c489406:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c48940a:	0f 83 24 00 00 00                               	jae    0x1d2b7c489434
    1d2b7c489410:	e9 ca 08 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c489415:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    1d2b7c489419:	0f 8a c0 08 00 00                               	jp     0x1d2b7c489cdf
    1d2b7c48941f:	0f 84 0f 00 00 00                               	je     0x1d2b7c489434
    1d2b7c489425:	e9 b5 08 00 00                                  	jmp    0x1d2b7c489cdf
    1d2b7c48942a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c48942e:	0f 86 ab 08 00 00                               	jbe    0x1d2b7c489cdf
    1d2b7c489434:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    1d2b7c489439:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    1d2b7c48943d:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    1d2b7c489442:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    1d2b7c489449:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    1d2b7c489451:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    1d2b7c489456:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    1d2b7c48945a:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    1d2b7c489461:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    1d2b7c489466:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    1d2b7c48946a:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    1d2b7c48946f:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    1d2b7c489477:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    1d2b7c48947e:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    1d2b7c489482:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    1d2b7c489486:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c48948a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c48948e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    1d2b7c489492:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    1d2b7c48949c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    1d2b7c4894a6:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    1d2b7c4894b0:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    1d2b7c4894ba:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    1d2b7c4894c0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c4894c7:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    1d2b7c4894cf:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    1d2b7c4894d3:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    1d2b7c4894db:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    1d2b7c4894e3:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    1d2b7c4894eb:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    1d2b7c4894f3:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    1d2b7c4894fb:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    1d2b7c489503:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c489507:	0f 86 5c 04 00 00                               	jbe    0x1d2b7c489969
    1d2b7c48950d:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    1d2b7c489515:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    1d2b7c48951e:	0f 85 0b 00 00 00                               	jne    0x1d2b7c48952f
    1d2b7c489524:	41 8b cc                                        	mov    ecx,r12d
    1d2b7c489527:	4d 8b c7                                        	mov    r8,r15
    1d2b7c48952a:	e9 f9 04 00 00                                  	jmp    0x1d2b7c489a28
    1d2b7c48952f:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    1d2b7c489537:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    1d2b7c48953c:	41 53                                           	push   r11
    1d2b7c48953e:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    1d2b7c489545:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    1d2b7c48954c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c489550:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c489553:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c489556:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c489559:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c48955c:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    1d2b7c489561:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    1d2b7c489569:	45 8b c8                                        	mov    r9d,r8d
    1d2b7c48956c:	e8 a7 2c f3 ff                                  	call   0x1d2b7c3bc218
    1d2b7c489571:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c489575:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48957c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c489584:	45 85 db                                        	test   r11d,r11d
    1d2b7c489587:	0f 85 62 01 00 00                               	jne    0x1d2b7c4896ef
    1d2b7c48958d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c489590:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c489595:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c48959b:	0f 84 43 00 00 00                               	je     0x1d2b7c4895e4
    1d2b7c4895a1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4895a7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4895ab:	41 53                                           	push   r11
    1d2b7c4895ad:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4895b1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c4895b7:	33 d2                                           	xor    edx,edx
    1d2b7c4895b9:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    1d2b7c4895c0:	e8 7b 2c f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4895c5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4895c8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4895cc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4895d3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4895dd:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c4895e4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c4895e9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c4895ef:	0f 84 46 00 00 00                               	je     0x1d2b7c48963b
    1d2b7c4895f5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4895fb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4895ff:	41 53                                           	push   r11
    1d2b7c489601:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c489605:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    1d2b7c48960b:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c489610:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    1d2b7c489617:	e8 24 2c f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48961c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48961f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c489623:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48962a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c489634:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48963b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c489640:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c489646:	0f 84 46 00 00 00                               	je     0x1d2b7c489692
    1d2b7c48964c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c489652:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c489656:	41 53                                           	push   r11
    1d2b7c489658:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48965c:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    1d2b7c489662:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c489667:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    1d2b7c48966e:	e8 cd 2b f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c489673:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c489676:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48967a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c489681:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48968b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c489692:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c489697:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c48969d:	0f 84 85 03 00 00                               	je     0x1d2b7c489a28
    1d2b7c4896a3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4896a9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4896ad:	41 53                                           	push   r11
    1d2b7c4896af:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4896b3:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    1d2b7c4896b9:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c4896be:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    1d2b7c4896c5:	e8 76 2b f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4896ca:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4896cd:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    1d2b7c4896d1:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    1d2b7c4896d7:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    1d2b7c4896e0:	4c 8b c7                                        	mov    r8,rdi
    1d2b7c4896e3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c4896ea:	e9 39 03 00 00                                  	jmp    0x1d2b7c489a28
    1d2b7c4896ef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4896f2:	4d 8b e0                                        	mov    r12,r8
    1d2b7c4896f5:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    1d2b7c4896ff:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c489705:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48970a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48970e:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    1d2b7c489715:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c489719:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48971d:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    1d2b7c489727:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48972b:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    1d2b7c489731:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c489735:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c48973a:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    1d2b7c489744:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c489748:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    1d2b7c48974f:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c489753:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c489757:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c48975b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48975f:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c489765:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48976a:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c48976e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c489772:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c489777:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c48977c:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c489780:	0f 87 09 00 00 00                               	ja     0x1d2b7c48978f
    1d2b7c489786:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48978a:	e9 04 00 00 00                                  	jmp    0x1d2b7c489793
    1d2b7c48978f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c489793:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c489798:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c48979c:	0f 87 09 00 00 00                               	ja     0x1d2b7c4897ab
    1d2b7c4897a2:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c4897a6:	e9 05 00 00 00                                  	jmp    0x1d2b7c4897b0
    1d2b7c4897ab:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4897b0:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c4897b5:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4897b9:	0f 84 a4 00 00 00                               	je     0x1d2b7c489863
    1d2b7c4897bf:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    1d2b7c4897c3:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    1d2b7c4897cd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4897d1:	0f 87 09 00 00 00                               	ja     0x1d2b7c4897e0
    1d2b7c4897d7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4897db:	e9 04 00 00 00                                  	jmp    0x1d2b7c4897e4
    1d2b7c4897e0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4897e4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4897e8:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4897f8
    1d2b7c4897ee:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4897f3:	e9 05 00 00 00                                  	jmp    0x1d2b7c4897fd
    1d2b7c4897f8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4897fd:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c489801:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c489806:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48980b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48980f:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    1d2b7c489819:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c48981e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c489823:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c489827:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c489831:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c489835:	0f 85 04 00 00 00                               	jne    0x1d2b7c48983f
    1d2b7c48983b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c48983f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c489844:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c489848:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48984c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    1d2b7c489856:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c48985b:	4d 8b df                                        	mov    r11,r15
    1d2b7c48985e:	e9 cc 00 00 00                                  	jmp    0x1d2b7c48992f
    1d2b7c489863:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    1d2b7c48986a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48986e:	0f 87 09 00 00 00                               	ja     0x1d2b7c48987d
    1d2b7c489874:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c489878:	e9 04 00 00 00                                  	jmp    0x1d2b7c489881
    1d2b7c48987d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c489881:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c489885:	0f 87 0a 00 00 00                               	ja     0x1d2b7c489895
    1d2b7c48988b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c489890:	e9 05 00 00 00                                  	jmp    0x1d2b7c48989a
    1d2b7c489895:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48989a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c4898a4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c4898aa:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c4898af:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4898b3:	0f 87 09 00 00 00                               	ja     0x1d2b7c4898c2
    1d2b7c4898b9:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c4898bd:	e9 04 00 00 00                                  	jmp    0x1d2b7c4898c6
    1d2b7c4898c2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c4898c6:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4898ca:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4898da
    1d2b7c4898d0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c4898d5:	e9 05 00 00 00                                  	jmp    0x1d2b7c4898df
    1d2b7c4898da:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4898df:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    1d2b7c4898e9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4898ee:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c4898f2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    1d2b7c4898fc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c489901:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c489906:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48990a:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x1d2b7c489811
    1d2b7c489911:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c489916:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48991b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48991f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c489923:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c489927:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48992b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c48992f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c489934:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c489938:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x1d2b7c489811
    1d2b7c48993f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c489944:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c489949:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c48994d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    1d2b7c489957:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    1d2b7c489961:	4d 8b c4                                        	mov    r8,r12
    1d2b7c489964:	e9 bf 00 00 00                                  	jmp    0x1d2b7c489a28
    1d2b7c489969:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    1d2b7c489970:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    1d2b7c489977:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    1d2b7c48997c:	48 8b d1                                        	mov    rdx,rcx
    1d2b7c48997f:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    1d2b7c489986:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    1d2b7c48998a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    1d2b7c489991:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    1d2b7c489998:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    1d2b7c48999c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4899a0:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    1d2b7c4899a8:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4899ac:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    1d2b7c4899b3:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    1d2b7c4899b8:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    1d2b7c4899c0:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    1d2b7c4899c7:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    1d2b7c4899cb:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    1d2b7c4899d2:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    1d2b7c4899d6:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c4899da:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4899de:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    1d2b7c4899e6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4899ea:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4899ed:	41 8b d0                                        	mov    edx,r8d
    1d2b7c4899f0:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    1d2b7c4899f8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c4899fc:	41 8b cc                                        	mov    ecx,r12d
    1d2b7c4899ff:	8b df                                           	mov    ebx,edi
    1d2b7c489a01:	e8 2a 2b f3 ff                                  	call   0x1d2b7c3bc530
    1d2b7c489a06:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c489a09:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c489a0d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    1d2b7c489a17:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c489a21:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c489a28:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c489a2c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c489a34:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c489a3d:	0f 85 2a 00 00 00                               	jne    0x1d2b7c489a6d
    1d2b7c489a43:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c489a4d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c489a57:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c489a61:	49 8b fb                                        	mov    rdi,r11
    1d2b7c489a64:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c489a68:	e9 dd 01 00 00                                  	jmp    0x1d2b7c489c4a
    1d2b7c489a6d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    1d2b7c489a75:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    1d2b7c489a7d:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    1d2b7c489a85:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    1d2b7c489a8d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    1d2b7c489a95:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    1d2b7c489a9d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c489aa1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c489aa5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    1d2b7c489aad:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c489ab1:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x1d2b7c4885ef
    1d2b7c489ab8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c489abd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c489ac1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c489ac5:	0f 87 04 00 00 00                               	ja     0x1d2b7c489acf
    1d2b7c489acb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c489acf:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c489ad7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c489ade:	0f 85 28 00 00 00                               	jne    0x1d2b7c489b0c
    1d2b7c489ae4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c489aee:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x1d2b7c4885ef
    1d2b7c489af5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c489afa:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c489afe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c489b02:	e8 b1 4a f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c489b07:	e9 94 00 00 00                                  	jmp    0x1d2b7c489ba0
    1d2b7c489b0c:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c489b10:	0f 84 67 00 00 00                               	je     0x1d2b7c489b7d
    1d2b7c489b16:	4d 8b d0                                        	mov    r10,r8
    1d2b7c489b19:	4d 8b c3                                        	mov    r8,r11
    1d2b7c489b1c:	4d 8b da                                        	mov    r11,r10
    1d2b7c489b1f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    1d2b7c489b29:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    1d2b7c489b33:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c489b38:	7a 06                                           	jp     0x1d2b7c489b40
    1d2b7c489b3a:	0f 84 2a 00 00 00                               	je     0x1d2b7c489b6a
    1d2b7c489b40:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c489b44:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c489b49:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c489b4d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c489b51:	0f 86 49 00 00 00                               	jbe    0x1d2b7c489ba0
    1d2b7c489b57:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c489b5b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c489b60:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c489b65:	e9 5b 00 00 00                                  	jmp    0x1d2b7c489bc5
    1d2b7c489b6a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c489b6e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c489b73:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c489b78:	e9 44 00 00 00                                  	jmp    0x1d2b7c489bc1
    1d2b7c489b7d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c489b87:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x1d2b7c4885ef
    1d2b7c489b8e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c489b93:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c489b97:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c489b9b:	e8 18 4a f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c489ba0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c489ba4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c489ba9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c489bae:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c489bb2:	0f 87 09 00 00 00                               	ja     0x1d2b7c489bc1
    1d2b7c489bb8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c489bbc:	e9 04 00 00 00                                  	jmp    0x1d2b7c489bc5
    1d2b7c489bc1:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c489bc5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c489bc8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c489bcc:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c489bd6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c489bda:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c489bde:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c489be8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c489bed:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    1d2b7c489bf7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c489c01:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c489c0b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c489c10:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    1d2b7c489c1a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c489c24:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c489c2e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c489c33:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    1d2b7c489c3d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c489c41:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c489c45:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c489c4a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    1d2b7c489c54:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c489c58:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c489c5b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c489c61:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c489c64:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    1d2b7c489c6c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c489c70:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c489c74:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c489c79:	e8 e2 25 f3 ff                                  	call   0x1d2b7c3bc260
    1d2b7c489c7e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c489c82:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c489c87:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c489c8d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    1d2b7c489c91:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c489c96:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c489c9c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c489ca2:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c489ca7:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    1d2b7c489cae:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    1d2b7c489cb5:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    1d2b7c489cbc:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    1d2b7c489cc2:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c489cca:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c489cd2:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    1d2b7c489cd9:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c489cdf:	f6 c3 02                                        	test   bl,0x2
    1d2b7c489ce2:	0f 85 26 00 00 00                               	jne    0x1d2b7c489d0e
    1d2b7c489ce8:	4d 8b e7                                        	mov    r12,r15
    1d2b7c489ceb:	4c 8b f9                                        	mov    r15,rcx
    1d2b7c489cee:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c489cf4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c489cfc:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c489d04:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    1d2b7c489d09:	e9 b5 0a 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489d0e:	4d 8b e7                                        	mov    r12,r15
    1d2b7c489d11:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    1d2b7c489d19:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    1d2b7c489d22:	0f 84 75 00 00 00                               	je     0x1d2b7c489d9d
    1d2b7c489d28:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    1d2b7c489d2f:	41 c1 ef 03                                     	shr    r15d,0x3
    1d2b7c489d33:	41 83 e7 03                                     	and    r15d,0x3
    1d2b7c489d37:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    1d2b7c489d3d:	41 0b d7                                        	or     edx,r15d
    1d2b7c489d40:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    1d2b7c489d47:	41 03 d7                                        	add    edx,r15d
    1d2b7c489d4a:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    1d2b7c489d4f:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    1d2b7c489d55:	83 e0 07                                        	and    eax,0x7
    1d2b7c489d58:	4c 8b d1                                        	mov    r10,rcx
    1d2b7c489d5b:	8b c8                                           	mov    ecx,eax
    1d2b7c489d5d:	49 8b c2                                        	mov    rax,r10
    1d2b7c489d60:	d3 e2                                           	shl    edx,cl
    1d2b7c489d62:	f6 c2 80                                        	test   dl,0x80
    1d2b7c489d65:	0f 85 29 00 00 00                               	jne    0x1d2b7c489d94
    1d2b7c489d6b:	4c 8b f8                                        	mov    r15,rax
    1d2b7c489d6e:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c489d74:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c489d7a:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c489d82:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c489d8a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    1d2b7c489d8f:	e9 2f 0a 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489d94:	48 8b c8                                        	mov    rcx,rax
    1d2b7c489d97:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c489d9d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    1d2b7c489da4:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    1d2b7c489dab:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    1d2b7c489db0:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c489db8:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    1d2b7c489dbc:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    1d2b7c489dc1:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    1d2b7c489dc5:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    1d2b7c489dcc:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    1d2b7c489dd3:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    1d2b7c489dd8:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    1d2b7c489ddd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c489de5:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    1d2b7c489dea:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    1d2b7c489dee:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    1d2b7c489df2:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    1d2b7c489df7:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    1d2b7c489dfb:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    1d2b7c489dff:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    1d2b7c489e04:	0f 83 b0 09 00 00                               	jae    0x1d2b7c48a7ba
    1d2b7c489e0a:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    1d2b7c489e11:	4c 8b f9                                        	mov    r15,rcx
    1d2b7c489e14:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    1d2b7c489e1b:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    1d2b7c489e22:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    1d2b7c489e27:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    1d2b7c489e2b:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    1d2b7c489e2f:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    1d2b7c489e34:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    1d2b7c489e3a:	0f 85 0b 00 00 00                               	jne    0x1d2b7c489e4b
    1d2b7c489e40:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c489e46:	e9 c5 00 00 00                                  	jmp    0x1d2b7c489f10
    1d2b7c489e4b:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    1d2b7c489e53:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    1d2b7c489e5c:	75 e2                                           	jne    0x1d2b7c489e40
    1d2b7c489e5e:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    1d2b7c489e63:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    1d2b7c489e67:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    1d2b7c489e6b:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    1d2b7c489e6e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c489e74:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    1d2b7c489e77:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    1d2b7c489e7d:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    1d2b7c489e82:	81 ea 00 02 00 00                               	sub    edx,0x200
    1d2b7c489e88:	83 fa 08                                        	cmp    edx,0x8
    1d2b7c489e8b:	0f 83 0b 00 00 00                               	jae    0x1d2b7c489e9c
    1d2b7c489e91:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x1d2b7c491068
    1d2b7c489e98:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    1d2b7c489e9c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c489ea0:	0f 87 6a 00 00 00                               	ja     0x1d2b7c489f10
    1d2b7c489ea6:	e9 18 09 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489eab:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c489eb0:	0f 83 5a 00 00 00                               	jae    0x1d2b7c489f10
    1d2b7c489eb6:	e9 08 09 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489ebb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c489ec0:	0f 8a 4a 00 00 00                               	jp     0x1d2b7c489f10
    1d2b7c489ec6:	0f 84 f7 08 00 00                               	je     0x1d2b7c48a7c3
    1d2b7c489ecc:	e9 3f 00 00 00                                  	jmp    0x1d2b7c489f10
    1d2b7c489ed1:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c489ed6:	0f 87 34 00 00 00                               	ja     0x1d2b7c489f10
    1d2b7c489edc:	e9 e2 08 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489ee1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c489ee5:	0f 83 25 00 00 00                               	jae    0x1d2b7c489f10
    1d2b7c489eeb:	e9 d3 08 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489ef0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c489ef5:	0f 8a c8 08 00 00                               	jp     0x1d2b7c48a7c3
    1d2b7c489efb:	0f 84 0f 00 00 00                               	je     0x1d2b7c489f10
    1d2b7c489f01:	e9 bd 08 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c489f06:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c489f0a:	0f 86 b3 08 00 00                               	jbe    0x1d2b7c48a7c3
    1d2b7c489f10:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    1d2b7c489f15:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    1d2b7c489f1a:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    1d2b7c489f1f:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    1d2b7c489f26:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    1d2b7c489f2b:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    1d2b7c489f2f:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    1d2b7c489f36:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    1d2b7c489f3e:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c489f43:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c489f47:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    1d2b7c489f4c:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    1d2b7c489f53:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c489f57:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c489f5b:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    1d2b7c489f5f:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    1d2b7c489f63:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    1d2b7c489f66:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    1d2b7c489f70:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    1d2b7c489f7a:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    1d2b7c489f84:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    1d2b7c489f8e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    1d2b7c489f94:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c489f9b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    1d2b7c489fa3:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    1d2b7c489fa7:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    1d2b7c489faf:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    1d2b7c489fb7:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    1d2b7c489fbf:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    1d2b7c489fc7:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    1d2b7c489fcf:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    1d2b7c489fd7:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    1d2b7c489fdf:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c489fe3:	0f 86 4b 04 00 00                               	jbe    0x1d2b7c48a434
    1d2b7c489fe9:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    1d2b7c489ff1:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    1d2b7c489ffa:	0f 85 0a 00 00 00                               	jne    0x1d2b7c48a00a
    1d2b7c48a000:	8b ca                                           	mov    ecx,edx
    1d2b7c48a002:	4d 8b c4                                        	mov    r8,r12
    1d2b7c48a005:	e9 de 04 00 00                                  	jmp    0x1d2b7c48a4e8
    1d2b7c48a00a:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    1d2b7c48a011:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    1d2b7c48a015:	41 53                                           	push   r11
    1d2b7c48a017:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    1d2b7c48a01e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a022:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48a025:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c48a028:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c48a02b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c48a02e:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    1d2b7c48a032:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c48a037:	45 8b c8                                        	mov    r9d,r8d
    1d2b7c48a03a:	e8 d9 21 f3 ff                                  	call   0x1d2b7c3bc218
    1d2b7c48a03f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48a043:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48a04a:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c48a052:	45 85 db                                        	test   r11d,r11d
    1d2b7c48a055:	0f 85 62 01 00 00                               	jne    0x1d2b7c48a1bd
    1d2b7c48a05b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a05e:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c48a063:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c48a069:	0f 84 43 00 00 00                               	je     0x1d2b7c48a0b2
    1d2b7c48a06f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48a075:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48a079:	41 53                                           	push   r11
    1d2b7c48a07b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a07f:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c48a085:	33 d2                                           	xor    edx,edx
    1d2b7c48a087:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    1d2b7c48a08e:	e8 ad 21 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48a093:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a096:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48a09a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48a0a1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48a0ab:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48a0b2:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c48a0b7:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c48a0bd:	0f 84 46 00 00 00                               	je     0x1d2b7c48a109
    1d2b7c48a0c3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48a0c9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48a0cd:	41 53                                           	push   r11
    1d2b7c48a0cf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a0d3:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    1d2b7c48a0d9:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c48a0de:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    1d2b7c48a0e5:	e8 56 21 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48a0ea:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a0ed:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48a0f1:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48a0f8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48a102:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48a109:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c48a10e:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c48a114:	0f 84 46 00 00 00                               	je     0x1d2b7c48a160
    1d2b7c48a11a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48a120:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48a124:	41 53                                           	push   r11
    1d2b7c48a126:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a12a:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    1d2b7c48a130:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c48a135:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    1d2b7c48a13c:	e8 ff 20 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48a141:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a144:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48a148:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48a14f:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48a159:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48a160:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c48a165:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c48a16b:	0f 84 77 03 00 00                               	je     0x1d2b7c48a4e8
    1d2b7c48a171:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48a177:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48a17b:	41 53                                           	push   r11
    1d2b7c48a17d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a181:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    1d2b7c48a187:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c48a18c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    1d2b7c48a193:	e8 a8 20 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48a198:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a19b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    1d2b7c48a19f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    1d2b7c48a1a5:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    1d2b7c48a1ae:	4c 8b c7                                        	mov    r8,rdi
    1d2b7c48a1b1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48a1b8:	e9 2b 03 00 00                                  	jmp    0x1d2b7c48a4e8
    1d2b7c48a1bd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a1c0:	4d 8b e0                                        	mov    r12,r8
    1d2b7c48a1c3:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    1d2b7c48a1cd:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c48a1d3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48a1d8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48a1dc:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    1d2b7c48a1e3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48a1e7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48a1eb:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    1d2b7c48a1f5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48a1f9:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    1d2b7c48a1ff:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c48a203:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c48a208:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    1d2b7c48a212:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c48a216:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    1d2b7c48a21d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c48a221:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c48a225:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c48a229:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48a22d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c48a233:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48a238:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c48a23c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c48a240:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c48a245:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c48a24a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c48a24e:	0f 87 09 00 00 00                               	ja     0x1d2b7c48a25d
    1d2b7c48a254:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48a258:	e9 04 00 00 00                                  	jmp    0x1d2b7c48a261
    1d2b7c48a25d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48a261:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48a266:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c48a26a:	0f 87 09 00 00 00                               	ja     0x1d2b7c48a279
    1d2b7c48a270:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c48a274:	e9 05 00 00 00                                  	jmp    0x1d2b7c48a27e
    1d2b7c48a279:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c48a27e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c48a283:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c48a287:	0f 84 a1 00 00 00                               	je     0x1d2b7c48a32e
    1d2b7c48a28d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    1d2b7c48a291:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    1d2b7c48a29b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48a29f:	0f 87 09 00 00 00                               	ja     0x1d2b7c48a2ae
    1d2b7c48a2a5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48a2a9:	e9 04 00 00 00                                  	jmp    0x1d2b7c48a2b2
    1d2b7c48a2ae:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c48a2b2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48a2b6:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48a2c6
    1d2b7c48a2bc:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c48a2c1:	e9 05 00 00 00                                  	jmp    0x1d2b7c48a2cb
    1d2b7c48a2c6:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48a2cb:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c48a2cf:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48a2d4:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48a2d9:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48a2dd:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x1d2b7c489811
    1d2b7c48a2e4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c48a2e9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c48a2ee:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48a2f2:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c48a2fc:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c48a300:	0f 85 04 00 00 00                               	jne    0x1d2b7c48a30a
    1d2b7c48a306:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c48a30a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c48a30f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48a313:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48a317:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    1d2b7c48a321:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c48a326:	4d 8b df                                        	mov    r11,r15
    1d2b7c48a329:	e9 cc 00 00 00                                  	jmp    0x1d2b7c48a3fa
    1d2b7c48a32e:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    1d2b7c48a335:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48a339:	0f 87 09 00 00 00                               	ja     0x1d2b7c48a348
    1d2b7c48a33f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48a343:	e9 04 00 00 00                                  	jmp    0x1d2b7c48a34c
    1d2b7c48a348:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c48a34c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48a350:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48a360
    1d2b7c48a356:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c48a35b:	e9 05 00 00 00                                  	jmp    0x1d2b7c48a365
    1d2b7c48a360:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48a365:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c48a36f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c48a375:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c48a37a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48a37e:	0f 87 09 00 00 00                               	ja     0x1d2b7c48a38d
    1d2b7c48a384:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c48a388:	e9 04 00 00 00                                  	jmp    0x1d2b7c48a391
    1d2b7c48a38d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c48a391:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48a395:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48a3a5
    1d2b7c48a39b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c48a3a0:	e9 05 00 00 00                                  	jmp    0x1d2b7c48a3aa
    1d2b7c48a3a5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48a3aa:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    1d2b7c48a3b4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48a3b9:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48a3bd:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    1d2b7c48a3c7:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c48a3cc:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c48a3d1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48a3d5:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x1d2b7c489811
    1d2b7c48a3dc:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c48a3e1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48a3e6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48a3ea:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c48a3ee:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48a3f2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48a3f6:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c48a3fa:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48a3ff:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48a403:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x1d2b7c489811
    1d2b7c48a40a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c48a40f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c48a414:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c48a418:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    1d2b7c48a422:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    1d2b7c48a42c:	4d 8b c4                                        	mov    r8,r12
    1d2b7c48a42f:	e9 b4 00 00 00                                  	jmp    0x1d2b7c48a4e8
    1d2b7c48a434:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    1d2b7c48a43b:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    1d2b7c48a442:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    1d2b7c48a446:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    1d2b7c48a44d:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c48a451:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    1d2b7c48a458:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    1d2b7c48a45f:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c48a463:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48a467:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c48a46c:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48a470:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    1d2b7c48a477:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    1d2b7c48a47b:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    1d2b7c48a482:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c48a486:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    1d2b7c48a48e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    1d2b7c48a495:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c48a499:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c48a49d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48a4a1:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    1d2b7c48a4a7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a4ab:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48a4ae:	8b ca                                           	mov    ecx,edx
    1d2b7c48a4b0:	41 8b d0                                        	mov    edx,r8d
    1d2b7c48a4b3:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    1d2b7c48a4bb:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c48a4bf:	8b df                                           	mov    ebx,edi
    1d2b7c48a4c1:	e8 6a 20 f3 ff                                  	call   0x1d2b7c3bc530
    1d2b7c48a4c6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a4c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48a4cd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    1d2b7c48a4d7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48a4e1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48a4e8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48a4ec:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c48a4f4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c48a4fd:	0f 85 2a 00 00 00                               	jne    0x1d2b7c48a52d
    1d2b7c48a503:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c48a50d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c48a517:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c48a521:	49 8b fb                                        	mov    rdi,r11
    1d2b7c48a524:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c48a528:	e9 dd 01 00 00                                  	jmp    0x1d2b7c48a70a
    1d2b7c48a52d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    1d2b7c48a535:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    1d2b7c48a53d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    1d2b7c48a545:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    1d2b7c48a54d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    1d2b7c48a555:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    1d2b7c48a55d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c48a561:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48a565:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    1d2b7c48a56d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48a571:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x1d2b7c4885ef
    1d2b7c48a578:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48a57d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c48a581:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c48a585:	0f 87 04 00 00 00                               	ja     0x1d2b7c48a58f
    1d2b7c48a58b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c48a58f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c48a597:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c48a59e:	0f 85 28 00 00 00                               	jne    0x1d2b7c48a5cc
    1d2b7c48a5a4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c48a5ae:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x1d2b7c4885ef
    1d2b7c48a5b5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c48a5ba:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c48a5be:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a5c2:	e8 f1 3f f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48a5c7:	e9 94 00 00 00                                  	jmp    0x1d2b7c48a660
    1d2b7c48a5cc:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c48a5d0:	0f 84 67 00 00 00                               	je     0x1d2b7c48a63d
    1d2b7c48a5d6:	4d 8b d0                                        	mov    r10,r8
    1d2b7c48a5d9:	4d 8b c3                                        	mov    r8,r11
    1d2b7c48a5dc:	4d 8b da                                        	mov    r11,r10
    1d2b7c48a5df:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    1d2b7c48a5e9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    1d2b7c48a5f3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c48a5f8:	7a 06                                           	jp     0x1d2b7c48a600
    1d2b7c48a5fa:	0f 84 2a 00 00 00                               	je     0x1d2b7c48a62a
    1d2b7c48a600:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c48a604:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c48a609:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c48a60d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c48a611:	0f 86 49 00 00 00                               	jbe    0x1d2b7c48a660
    1d2b7c48a617:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48a61b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48a620:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48a625:	e9 5b 00 00 00                                  	jmp    0x1d2b7c48a685
    1d2b7c48a62a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48a62e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48a633:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48a638:	e9 44 00 00 00                                  	jmp    0x1d2b7c48a681
    1d2b7c48a63d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c48a647:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x1d2b7c4885ef
    1d2b7c48a64e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48a653:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c48a657:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a65b:	e8 58 3f f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48a660:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48a664:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48a669:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48a66e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c48a672:	0f 87 09 00 00 00                               	ja     0x1d2b7c48a681
    1d2b7c48a678:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c48a67c:	e9 04 00 00 00                                  	jmp    0x1d2b7c48a685
    1d2b7c48a681:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48a685:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48a688:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48a68c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c48a696:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c48a69a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c48a69e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c48a6a8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c48a6ad:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    1d2b7c48a6b7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c48a6c1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c48a6cb:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c48a6d0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    1d2b7c48a6da:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c48a6e4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c48a6ee:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c48a6f3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    1d2b7c48a6fd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c48a701:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48a705:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c48a70a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    1d2b7c48a714:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48a718:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48a71b:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c48a721:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c48a724:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    1d2b7c48a72c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c48a730:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c48a734:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c48a739:	e8 22 1b f3 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48a73e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48a742:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48a747:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    1d2b7c48a74d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c48a753:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c48a757:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48a75c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48a762:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48a768:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48a76d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    1d2b7c48a774:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    1d2b7c48a77b:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    1d2b7c48a782:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    1d2b7c48a788:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48a790:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48a798:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48a7a0:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    1d2b7c48a7a8:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    1d2b7c48a7af:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48a7b5:	e9 09 00 00 00                                  	jmp    0x1d2b7c48a7c3
    1d2b7c48a7ba:	4c 8b f9                                        	mov    r15,rcx
    1d2b7c48a7bd:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c48a7c3:	f6 c3 04                                        	test   bl,0x4
    1d2b7c48a7c6:	0f 85 0e 00 00 00                               	jne    0x1d2b7c48a7da
    1d2b7c48a7cc:	8b d0                                           	mov    edx,eax
    1d2b7c48a7ce:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    1d2b7c48a7d5:	e9 70 0a 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a7da:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    1d2b7c48a7e2:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    1d2b7c48a7eb:	0f 84 4d 00 00 00                               	je     0x1d2b7c48a83e
    1d2b7c48a7f1:	8b d0                                           	mov    edx,eax
    1d2b7c48a7f3:	c1 ea 03                                        	shr    edx,0x3
    1d2b7c48a7f6:	83 e2 03                                        	and    edx,0x3
    1d2b7c48a7f9:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    1d2b7c48a7ff:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    1d2b7c48a805:	03 d3                                           	add    edx,ebx
    1d2b7c48a807:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    1d2b7c48a80c:	8b d8                                           	mov    ebx,eax
    1d2b7c48a80e:	83 e3 07                                        	and    ebx,0x7
    1d2b7c48a811:	44 8b d1                                        	mov    r10d,ecx
    1d2b7c48a814:	8b cb                                           	mov    ecx,ebx
    1d2b7c48a816:	49 8b df                                        	mov    rbx,r15
    1d2b7c48a819:	45 8b fa                                        	mov    r15d,r10d
    1d2b7c48a81c:	d3 e2                                           	shl    edx,cl
    1d2b7c48a81e:	f6 c2 80                                        	test   dl,0x80
    1d2b7c48a821:	0f 85 11 00 00 00                               	jne    0x1d2b7c48a838
    1d2b7c48a827:	8b d0                                           	mov    edx,eax
    1d2b7c48a829:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    1d2b7c48a830:	4c 8b fb                                        	mov    r15,rbx
    1d2b7c48a833:	e9 12 0a 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a838:	41 8b cf                                        	mov    ecx,r15d
    1d2b7c48a83b:	4c 8b fb                                        	mov    r15,rbx
    1d2b7c48a83e:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    1d2b7c48a845:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    1d2b7c48a84c:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    1d2b7c48a850:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    1d2b7c48a855:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    1d2b7c48a859:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    1d2b7c48a85d:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    1d2b7c48a864:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    1d2b7c48a86b:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    1d2b7c48a86f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    1d2b7c48a874:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    1d2b7c48a879:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    1d2b7c48a87e:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    1d2b7c48a882:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    1d2b7c48a886:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    1d2b7c48a88b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    1d2b7c48a88f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    1d2b7c48a893:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    1d2b7c48a898:	0f 83 aa 09 00 00                               	jae    0x1d2b7c48b248
    1d2b7c48a89e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    1d2b7c48a8a5:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    1d2b7c48a8ac:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    1d2b7c48a8b3:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    1d2b7c48a8b8:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    1d2b7c48a8bc:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    1d2b7c48a8c0:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    1d2b7c48a8c5:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    1d2b7c48a8cb:	0f 85 07 00 00 00                               	jne    0x1d2b7c48a8d8
    1d2b7c48a8d1:	8b d0                                           	mov    edx,eax
    1d2b7c48a8d3:	e9 c3 00 00 00                                  	jmp    0x1d2b7c48a99b
    1d2b7c48a8d8:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    1d2b7c48a8e0:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    1d2b7c48a8e9:	75 e6                                           	jne    0x1d2b7c48a8d1
    1d2b7c48a8eb:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    1d2b7c48a8f0:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    1d2b7c48a8f4:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    1d2b7c48a8fb:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    1d2b7c48a8fe:	8b d0                                           	mov    edx,eax
    1d2b7c48a900:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    1d2b7c48a903:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    1d2b7c48a909:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    1d2b7c48a90e:	2d 00 02 00 00                                  	sub    eax,0x200
    1d2b7c48a913:	83 f8 08                                        	cmp    eax,0x8
    1d2b7c48a916:	0f 83 0b 00 00 00                               	jae    0x1d2b7c48a927
    1d2b7c48a91c:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x1d2b7c491028
    1d2b7c48a923:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    1d2b7c48a927:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c48a92b:	0f 87 6a 00 00 00                               	ja     0x1d2b7c48a99b
    1d2b7c48a931:	e9 14 09 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a936:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48a93b:	0f 83 5a 00 00 00                               	jae    0x1d2b7c48a99b
    1d2b7c48a941:	e9 04 09 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a946:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48a94b:	0f 8a 4a 00 00 00                               	jp     0x1d2b7c48a99b
    1d2b7c48a951:	0f 84 f3 08 00 00                               	je     0x1d2b7c48b24a
    1d2b7c48a957:	e9 3f 00 00 00                                  	jmp    0x1d2b7c48a99b
    1d2b7c48a95c:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48a961:	0f 87 34 00 00 00                               	ja     0x1d2b7c48a99b
    1d2b7c48a967:	e9 de 08 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a96c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c48a970:	0f 83 25 00 00 00                               	jae    0x1d2b7c48a99b
    1d2b7c48a976:	e9 cf 08 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a97b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48a980:	0f 8a c4 08 00 00                               	jp     0x1d2b7c48b24a
    1d2b7c48a986:	0f 84 0f 00 00 00                               	je     0x1d2b7c48a99b
    1d2b7c48a98c:	e9 b9 08 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48a991:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c48a995:	0f 86 af 08 00 00                               	jbe    0x1d2b7c48b24a
    1d2b7c48a99b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    1d2b7c48a9a0:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    1d2b7c48a9a5:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    1d2b7c48a9aa:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    1d2b7c48a9b1:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    1d2b7c48a9b6:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    1d2b7c48a9ba:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    1d2b7c48a9c1:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    1d2b7c48a9c9:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c48a9ce:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c48a9d2:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    1d2b7c48a9d7:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    1d2b7c48a9de:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c48a9e2:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c48a9e6:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    1d2b7c48a9ea:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    1d2b7c48a9ee:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    1d2b7c48a9f1:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    1d2b7c48a9fb:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    1d2b7c48aa05:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    1d2b7c48aa0f:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    1d2b7c48aa19:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    1d2b7c48aa1f:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    1d2b7c48aa26:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    1d2b7c48aa2e:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    1d2b7c48aa32:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    1d2b7c48aa3a:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    1d2b7c48aa42:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    1d2b7c48aa4a:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    1d2b7c48aa52:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    1d2b7c48aa5a:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    1d2b7c48aa62:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    1d2b7c48aa6a:	41 83 f8 01                                     	cmp    r8d,0x1
    1d2b7c48aa6e:	0f 86 4d 04 00 00                               	jbe    0x1d2b7c48aec1
    1d2b7c48aa74:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    1d2b7c48aa7c:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    1d2b7c48aa85:	0f 85 0d 00 00 00                               	jne    0x1d2b7c48aa98
    1d2b7c48aa8b:	8b c8                                           	mov    ecx,eax
    1d2b7c48aa8d:	4d 8b c4                                        	mov    r8,r12
    1d2b7c48aa90:	48 8b fb                                        	mov    rdi,rbx
    1d2b7c48aa93:	e9 e0 04 00 00                                  	jmp    0x1d2b7c48af78
    1d2b7c48aa98:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    1d2b7c48aa9e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    1d2b7c48aaa2:	41 50                                           	push   r8
    1d2b7c48aaa4:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    1d2b7c48aaab:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    1d2b7c48aab2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48aab6:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48aab9:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c48aabc:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c48aabf:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c48aac2:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    1d2b7c48aac6:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c48aacb:	44 8b cf                                        	mov    r9d,edi
    1d2b7c48aace:	e8 45 17 f3 ff                                  	call   0x1d2b7c3bc218
    1d2b7c48aad3:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48aad7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48aade:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c48aae6:	45 85 db                                        	test   r11d,r11d
    1d2b7c48aae9:	0f 85 61 01 00 00                               	jne    0x1d2b7c48ac50
    1d2b7c48aaef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48aaf2:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c48aaf7:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c48aafd:	0f 84 43 00 00 00                               	je     0x1d2b7c48ab46
    1d2b7c48ab03:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48ab09:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48ab0d:	41 53                                           	push   r11
    1d2b7c48ab0f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ab13:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c48ab19:	33 d2                                           	xor    edx,edx
    1d2b7c48ab1b:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    1d2b7c48ab22:	e8 19 17 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48ab27:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48ab2a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48ab2e:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48ab35:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48ab3f:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48ab46:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c48ab4b:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c48ab51:	0f 84 46 00 00 00                               	je     0x1d2b7c48ab9d
    1d2b7c48ab57:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48ab5d:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48ab61:	41 53                                           	push   r11
    1d2b7c48ab63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ab67:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    1d2b7c48ab6d:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c48ab72:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    1d2b7c48ab79:	e8 c2 16 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48ab7e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48ab81:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48ab85:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48ab8c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48ab96:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48ab9d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c48aba2:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c48aba8:	0f 84 46 00 00 00                               	je     0x1d2b7c48abf4
    1d2b7c48abae:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48abb4:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48abb8:	41 53                                           	push   r11
    1d2b7c48abba:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48abbe:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    1d2b7c48abc4:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c48abc9:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    1d2b7c48abd0:	e8 6b 16 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48abd5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48abd8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48abdc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48abe3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48abed:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48abf4:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c48abf9:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c48abff:	0f 84 73 03 00 00                               	je     0x1d2b7c48af78
    1d2b7c48ac05:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48ac0b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48ac0f:	41 53                                           	push   r11
    1d2b7c48ac11:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ac15:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    1d2b7c48ac1b:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c48ac20:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    1d2b7c48ac27:	e8 14 16 f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48ac2c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48ac2f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48ac33:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48ac3a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48ac44:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48ac4b:	e9 28 03 00 00                                  	jmp    0x1d2b7c48af78
    1d2b7c48ac50:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48ac53:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    1d2b7c48ac5d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c48ac63:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48ac68:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48ac6c:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    1d2b7c48ac73:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48ac77:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48ac7b:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    1d2b7c48ac85:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48ac89:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    1d2b7c48ac8f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c48ac93:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c48ac98:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    1d2b7c48aca2:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c48aca6:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    1d2b7c48acad:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c48acb1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c48acb5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c48acb9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48acbd:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c48acc3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48acc8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c48accc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c48acd0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c48acd5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c48acda:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c48acde:	0f 87 09 00 00 00                               	ja     0x1d2b7c48aced
    1d2b7c48ace4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48ace8:	e9 04 00 00 00                                  	jmp    0x1d2b7c48acf1
    1d2b7c48aced:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48acf1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48acf6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c48acfa:	0f 87 09 00 00 00                               	ja     0x1d2b7c48ad09
    1d2b7c48ad00:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c48ad04:	e9 05 00 00 00                                  	jmp    0x1d2b7c48ad0e
    1d2b7c48ad09:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c48ad0e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c48ad13:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c48ad17:	0f 84 a1 00 00 00                               	je     0x1d2b7c48adbe
    1d2b7c48ad1d:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    1d2b7c48ad21:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    1d2b7c48ad2b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48ad2f:	0f 87 09 00 00 00                               	ja     0x1d2b7c48ad3e
    1d2b7c48ad35:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48ad39:	e9 04 00 00 00                                  	jmp    0x1d2b7c48ad42
    1d2b7c48ad3e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c48ad42:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48ad46:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48ad56
    1d2b7c48ad4c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c48ad51:	e9 05 00 00 00                                  	jmp    0x1d2b7c48ad5b
    1d2b7c48ad56:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48ad5b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c48ad5f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48ad64:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48ad69:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48ad6d:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x1d2b7c489811
    1d2b7c48ad74:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c48ad79:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c48ad7e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48ad82:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c48ad8c:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c48ad90:	0f 85 04 00 00 00                               	jne    0x1d2b7c48ad9a
    1d2b7c48ad96:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c48ad9a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c48ad9f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48ada3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48ada7:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    1d2b7c48adb1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c48adb6:	4d 8b dc                                        	mov    r11,r12
    1d2b7c48adb9:	e9 cc 00 00 00                                  	jmp    0x1d2b7c48ae8a
    1d2b7c48adbe:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    1d2b7c48adc5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48adc9:	0f 87 09 00 00 00                               	ja     0x1d2b7c48add8
    1d2b7c48adcf:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48add3:	e9 04 00 00 00                                  	jmp    0x1d2b7c48addc
    1d2b7c48add8:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c48addc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48ade0:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48adf0
    1d2b7c48ade6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c48adeb:	e9 05 00 00 00                                  	jmp    0x1d2b7c48adf5
    1d2b7c48adf0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48adf5:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c48adff:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c48ae05:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c48ae0a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48ae0e:	0f 87 09 00 00 00                               	ja     0x1d2b7c48ae1d
    1d2b7c48ae14:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c48ae18:	e9 04 00 00 00                                  	jmp    0x1d2b7c48ae21
    1d2b7c48ae1d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c48ae21:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48ae25:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48ae35
    1d2b7c48ae2b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c48ae30:	e9 05 00 00 00                                  	jmp    0x1d2b7c48ae3a
    1d2b7c48ae35:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48ae3a:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    1d2b7c48ae44:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48ae49:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48ae4d:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    1d2b7c48ae57:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c48ae5c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c48ae61:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48ae65:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x1d2b7c489811
    1d2b7c48ae6c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c48ae71:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48ae76:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48ae7a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c48ae7e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48ae82:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48ae86:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c48ae8a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48ae8f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48ae93:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x1d2b7c489811
    1d2b7c48ae9a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c48ae9f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c48aea4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c48aea8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48aeb2:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    1d2b7c48aebc:	e9 b7 00 00 00                                  	jmp    0x1d2b7c48af78
    1d2b7c48aec1:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    1d2b7c48aec8:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    1d2b7c48aecf:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    1d2b7c48aed3:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    1d2b7c48aeda:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c48aede:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    1d2b7c48aee5:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c48aee9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48aeed:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c48aef2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48aef6:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    1d2b7c48aefd:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    1d2b7c48af01:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    1d2b7c48af08:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c48af0c:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    1d2b7c48af14:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    1d2b7c48af1b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c48af1f:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c48af23:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48af27:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    1d2b7c48af2e:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    1d2b7c48af34:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48af38:	8b c8                                           	mov    ecx,eax
    1d2b7c48af3a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48af3d:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    1d2b7c48af43:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    1d2b7c48af4b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c48af4f:	8b df                                           	mov    ebx,edi
    1d2b7c48af51:	e8 da 15 f3 ff                                  	call   0x1d2b7c3bc530
    1d2b7c48af56:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48af59:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48af5d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    1d2b7c48af67:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48af71:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48af78:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48af7c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c48af84:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c48af8d:	0f 85 2a 00 00 00                               	jne    0x1d2b7c48afbd
    1d2b7c48af93:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c48af9d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c48afa7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c48afb1:	49 8b fb                                        	mov    rdi,r11
    1d2b7c48afb4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c48afb8:	e9 dd 01 00 00                                  	jmp    0x1d2b7c48b19a
    1d2b7c48afbd:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    1d2b7c48afc5:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    1d2b7c48afcd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    1d2b7c48afd5:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    1d2b7c48afdd:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    1d2b7c48afe5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    1d2b7c48afed:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c48aff1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48aff5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    1d2b7c48affd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48b001:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x1d2b7c4885ef
    1d2b7c48b008:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48b00d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c48b011:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c48b015:	0f 87 04 00 00 00                               	ja     0x1d2b7c48b01f
    1d2b7c48b01b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c48b01f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c48b027:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c48b02e:	0f 85 28 00 00 00                               	jne    0x1d2b7c48b05c
    1d2b7c48b034:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c48b03e:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x1d2b7c4885ef
    1d2b7c48b045:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c48b04a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c48b04e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b052:	e8 61 35 f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48b057:	e9 94 00 00 00                                  	jmp    0x1d2b7c48b0f0
    1d2b7c48b05c:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c48b060:	0f 84 67 00 00 00                               	je     0x1d2b7c48b0cd
    1d2b7c48b066:	4d 8b d0                                        	mov    r10,r8
    1d2b7c48b069:	4d 8b c3                                        	mov    r8,r11
    1d2b7c48b06c:	4d 8b da                                        	mov    r11,r10
    1d2b7c48b06f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    1d2b7c48b079:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    1d2b7c48b083:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c48b088:	7a 06                                           	jp     0x1d2b7c48b090
    1d2b7c48b08a:	0f 84 2a 00 00 00                               	je     0x1d2b7c48b0ba
    1d2b7c48b090:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c48b094:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c48b099:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c48b09d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c48b0a1:	0f 86 49 00 00 00                               	jbe    0x1d2b7c48b0f0
    1d2b7c48b0a7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48b0ab:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48b0b0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48b0b5:	e9 5b 00 00 00                                  	jmp    0x1d2b7c48b115
    1d2b7c48b0ba:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48b0be:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48b0c3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48b0c8:	e9 44 00 00 00                                  	jmp    0x1d2b7c48b111
    1d2b7c48b0cd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c48b0d7:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x1d2b7c4885ef
    1d2b7c48b0de:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48b0e3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c48b0e7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b0eb:	e8 c8 34 f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48b0f0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48b0f4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48b0f9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48b0fe:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c48b102:	0f 87 09 00 00 00                               	ja     0x1d2b7c48b111
    1d2b7c48b108:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c48b10c:	e9 04 00 00 00                                  	jmp    0x1d2b7c48b115
    1d2b7c48b111:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48b115:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b118:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48b11c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c48b126:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c48b12a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c48b12e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c48b138:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c48b13d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    1d2b7c48b147:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c48b151:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c48b15b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c48b160:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    1d2b7c48b16a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c48b174:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c48b17e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c48b183:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    1d2b7c48b18d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c48b191:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48b195:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c48b19a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    1d2b7c48b1a4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b1a8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48b1ab:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c48b1b1:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48b1b7:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    1d2b7c48b1bf:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c48b1c3:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c48b1c7:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c48b1cc:	e8 8f 10 f3 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48b1d1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48b1d5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48b1da:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c48b1e0:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    1d2b7c48b1e7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c48b1eb:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48b1f0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48b1f6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48b1fc:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48b201:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    1d2b7c48b208:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    1d2b7c48b20f:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    1d2b7c48b216:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48b21e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48b226:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48b22e:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    1d2b7c48b236:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    1d2b7c48b23d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48b243:	e9 02 00 00 00                                  	jmp    0x1d2b7c48b24a
    1d2b7c48b248:	8b d0                                           	mov    edx,eax
    1d2b7c48b24a:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    1d2b7c48b251:	0f 85 0a 00 00 00                               	jne    0x1d2b7c48b261
    1d2b7c48b257:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    1d2b7c48b25c:	e9 49 57 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48b261:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    1d2b7c48b269:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    1d2b7c48b272:	0f 84 3c 00 00 00                               	je     0x1d2b7c48b2b4
    1d2b7c48b278:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    1d2b7c48b27e:	c1 e8 03                                        	shr    eax,0x3
    1d2b7c48b281:	83 e0 03                                        	and    eax,0x3
    1d2b7c48b284:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    1d2b7c48b28a:	0b d8                                           	or     ebx,eax
    1d2b7c48b28c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    1d2b7c48b292:	03 d8                                           	add    ebx,eax
    1d2b7c48b294:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    1d2b7c48b299:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    1d2b7c48b29f:	83 e0 07                                        	and    eax,0x7
    1d2b7c48b2a2:	4c 8b d1                                        	mov    r10,rcx
    1d2b7c48b2a5:	8b c8                                           	mov    ecx,eax
    1d2b7c48b2a7:	49 8b c2                                        	mov    rax,r10
    1d2b7c48b2aa:	d3 e3                                           	shl    ebx,cl
    1d2b7c48b2ac:	f6 c3 80                                        	test   bl,0x80
    1d2b7c48b2af:	74 a6                                           	je     0x1d2b7c48b257
    1d2b7c48b2b1:	48 8b c8                                        	mov    rcx,rax
    1d2b7c48b2b4:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    1d2b7c48b2bb:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    1d2b7c48b2c2:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    1d2b7c48b2c6:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    1d2b7c48b2cb:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    1d2b7c48b2cf:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    1d2b7c48b2d3:	48 8b d1                                        	mov    rdx,rcx
    1d2b7c48b2d6:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    1d2b7c48b2dd:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    1d2b7c48b2e1:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    1d2b7c48b2e6:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    1d2b7c48b2eb:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    1d2b7c48b2f0:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    1d2b7c48b2f4:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    1d2b7c48b2f8:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    1d2b7c48b2fd:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    1d2b7c48b301:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    1d2b7c48b305:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    1d2b7c48b30a:	0f 83 47 ff ff ff                               	jae    0x1d2b7c48b257
    1d2b7c48b310:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    1d2b7c48b317:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    1d2b7c48b31e:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    1d2b7c48b325:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    1d2b7c48b32a:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    1d2b7c48b32e:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    1d2b7c48b332:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    1d2b7c48b337:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    1d2b7c48b33d:	0f 85 0b 00 00 00                               	jne    0x1d2b7c48b34e
    1d2b7c48b343:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    1d2b7c48b349:	e9 c7 00 00 00                                  	jmp    0x1d2b7c48b415
    1d2b7c48b34e:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    1d2b7c48b356:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    1d2b7c48b35f:	75 e2                                           	jne    0x1d2b7c48b343
    1d2b7c48b361:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    1d2b7c48b366:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    1d2b7c48b36a:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    1d2b7c48b371:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    1d2b7c48b374:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    1d2b7c48b37a:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    1d2b7c48b37d:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    1d2b7c48b383:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    1d2b7c48b388:	2d 00 02 00 00                                  	sub    eax,0x200
    1d2b7c48b38d:	83 f8 08                                        	cmp    eax,0x8
    1d2b7c48b390:	0f 83 0b 00 00 00                               	jae    0x1d2b7c48b3a1
    1d2b7c48b396:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x1d2b7c490fe8
    1d2b7c48b39d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    1d2b7c48b3a1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c48b3a5:	0f 87 6a 00 00 00                               	ja     0x1d2b7c48b415
    1d2b7c48b3ab:	e9 a7 fe ff ff                                  	jmp    0x1d2b7c48b257
    1d2b7c48b3b0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48b3b5:	0f 83 5a 00 00 00                               	jae    0x1d2b7c48b415
    1d2b7c48b3bb:	e9 97 fe ff ff                                  	jmp    0x1d2b7c48b257
    1d2b7c48b3c0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48b3c5:	0f 8a 4a 00 00 00                               	jp     0x1d2b7c48b415
    1d2b7c48b3cb:	0f 84 86 fe ff ff                               	je     0x1d2b7c48b257
    1d2b7c48b3d1:	e9 3f 00 00 00                                  	jmp    0x1d2b7c48b415
    1d2b7c48b3d6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48b3db:	0f 87 34 00 00 00                               	ja     0x1d2b7c48b415
    1d2b7c48b3e1:	e9 71 fe ff ff                                  	jmp    0x1d2b7c48b257
    1d2b7c48b3e6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c48b3ea:	0f 83 25 00 00 00                               	jae    0x1d2b7c48b415
    1d2b7c48b3f0:	e9 62 fe ff ff                                  	jmp    0x1d2b7c48b257
    1d2b7c48b3f5:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    1d2b7c48b3fa:	0f 8a 57 fe ff ff                               	jp     0x1d2b7c48b257
    1d2b7c48b400:	0f 84 0f 00 00 00                               	je     0x1d2b7c48b415
    1d2b7c48b406:	e9 4c fe ff ff                                  	jmp    0x1d2b7c48b257
    1d2b7c48b40b:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    1d2b7c48b40f:	0f 86 42 fe ff ff                               	jbe    0x1d2b7c48b257
    1d2b7c48b415:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    1d2b7c48b41a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    1d2b7c48b41f:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    1d2b7c48b424:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    1d2b7c48b42b:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    1d2b7c48b430:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    1d2b7c48b434:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    1d2b7c48b43b:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    1d2b7c48b443:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c48b448:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c48b44c:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    1d2b7c48b451:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    1d2b7c48b458:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c48b45c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c48b460:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    1d2b7c48b464:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    1d2b7c48b468:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    1d2b7c48b46b:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    1d2b7c48b475:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    1d2b7c48b47f:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    1d2b7c48b489:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    1d2b7c48b493:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    1d2b7c48b499:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b4a0:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    1d2b7c48b4a8:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    1d2b7c48b4ac:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    1d2b7c48b4b4:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    1d2b7c48b4bc:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    1d2b7c48b4c4:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    1d2b7c48b4cc:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    1d2b7c48b4d4:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    1d2b7c48b4dc:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    1d2b7c48b4e4:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c48b4e8:	0f 86 4b 04 00 00                               	jbe    0x1d2b7c48b939
    1d2b7c48b4ee:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    1d2b7c48b4f6:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    1d2b7c48b4ff:	0f 85 0a 00 00 00                               	jne    0x1d2b7c48b50f
    1d2b7c48b505:	8b c8                                           	mov    ecx,eax
    1d2b7c48b507:	4d 8b c4                                        	mov    r8,r12
    1d2b7c48b50a:	e9 e0 04 00 00                                  	jmp    0x1d2b7c48b9ef
    1d2b7c48b50f:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    1d2b7c48b516:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    1d2b7c48b51a:	41 53                                           	push   r11
    1d2b7c48b51c:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    1d2b7c48b523:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b527:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48b52a:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c48b52d:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c48b530:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c48b533:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    1d2b7c48b537:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c48b53c:	45 8b c8                                        	mov    r9d,r8d
    1d2b7c48b53f:	e8 d4 0c f3 ff                                  	call   0x1d2b7c3bc218
    1d2b7c48b544:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48b548:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b54f:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c48b557:	45 85 db                                        	test   r11d,r11d
    1d2b7c48b55a:	0f 85 62 01 00 00                               	jne    0x1d2b7c48b6c2
    1d2b7c48b560:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b563:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c48b568:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c48b56e:	0f 84 43 00 00 00                               	je     0x1d2b7c48b5b7
    1d2b7c48b574:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48b57a:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48b57e:	41 53                                           	push   r11
    1d2b7c48b580:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b584:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c48b58a:	33 d2                                           	xor    edx,edx
    1d2b7c48b58c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    1d2b7c48b593:	e8 a8 0c f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48b598:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b59b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48b59f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48b5a6:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48b5b0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b5b7:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c48b5bc:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c48b5c2:	0f 84 46 00 00 00                               	je     0x1d2b7c48b60e
    1d2b7c48b5c8:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48b5ce:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48b5d2:	41 53                                           	push   r11
    1d2b7c48b5d4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b5d8:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    1d2b7c48b5de:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c48b5e3:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    1d2b7c48b5ea:	e8 51 0c f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48b5ef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b5f2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48b5f6:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48b5fd:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48b607:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b60e:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c48b613:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c48b619:	0f 84 46 00 00 00                               	je     0x1d2b7c48b665
    1d2b7c48b61f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48b625:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48b629:	41 53                                           	push   r11
    1d2b7c48b62b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b62f:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    1d2b7c48b635:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c48b63a:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    1d2b7c48b641:	e8 fa 0b f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48b646:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b649:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48b64d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c48b654:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c48b65e:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b665:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c48b66a:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c48b670:	0f 84 79 03 00 00                               	je     0x1d2b7c48b9ef
    1d2b7c48b676:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c48b67c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c48b680:	41 53                                           	push   r11
    1d2b7c48b682:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b686:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    1d2b7c48b68c:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c48b691:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    1d2b7c48b698:	e8 a3 0b f3 ff                                  	call   0x1d2b7c3bc240
    1d2b7c48b69d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b6a0:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    1d2b7c48b6a4:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    1d2b7c48b6aa:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    1d2b7c48b6b3:	4c 8b c7                                        	mov    r8,rdi
    1d2b7c48b6b6:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b6bd:	e9 2d 03 00 00                                  	jmp    0x1d2b7c48b9ef
    1d2b7c48b6c2:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c48b6c5:	4d 8b e0                                        	mov    r12,r8
    1d2b7c48b6c8:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    1d2b7c48b6d2:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c48b6d8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48b6dd:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48b6e1:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    1d2b7c48b6e8:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48b6ec:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48b6f0:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    1d2b7c48b6fa:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c48b6fe:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    1d2b7c48b704:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c48b708:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c48b70d:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    1d2b7c48b717:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c48b71b:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    1d2b7c48b722:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c48b726:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c48b72a:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c48b72e:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48b732:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c48b738:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c48b73d:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c48b741:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c48b745:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c48b74a:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c48b74f:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c48b753:	0f 87 09 00 00 00                               	ja     0x1d2b7c48b762
    1d2b7c48b759:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48b75d:	e9 04 00 00 00                                  	jmp    0x1d2b7c48b766
    1d2b7c48b762:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48b766:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48b76b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c48b76f:	0f 87 09 00 00 00                               	ja     0x1d2b7c48b77e
    1d2b7c48b775:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c48b779:	e9 05 00 00 00                                  	jmp    0x1d2b7c48b783
    1d2b7c48b77e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c48b783:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c48b788:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c48b78c:	0f 84 a1 00 00 00                               	je     0x1d2b7c48b833
    1d2b7c48b792:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    1d2b7c48b796:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    1d2b7c48b7a0:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48b7a4:	0f 87 09 00 00 00                               	ja     0x1d2b7c48b7b3
    1d2b7c48b7aa:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48b7ae:	e9 04 00 00 00                                  	jmp    0x1d2b7c48b7b7
    1d2b7c48b7b3:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c48b7b7:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48b7bb:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48b7cb
    1d2b7c48b7c1:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c48b7c6:	e9 05 00 00 00                                  	jmp    0x1d2b7c48b7d0
    1d2b7c48b7cb:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48b7d0:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c48b7d4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48b7d9:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48b7de:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48b7e2:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x1d2b7c489811
    1d2b7c48b7e9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c48b7ee:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c48b7f3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48b7f7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c48b801:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c48b805:	0f 85 04 00 00 00                               	jne    0x1d2b7c48b80f
    1d2b7c48b80b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c48b80f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c48b814:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48b818:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c48b81c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    1d2b7c48b826:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c48b82b:	4d 8b df                                        	mov    r11,r15
    1d2b7c48b82e:	e9 cc 00 00 00                                  	jmp    0x1d2b7c48b8ff
    1d2b7c48b833:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    1d2b7c48b83a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48b83e:	0f 87 09 00 00 00                               	ja     0x1d2b7c48b84d
    1d2b7c48b844:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c48b848:	e9 04 00 00 00                                  	jmp    0x1d2b7c48b851
    1d2b7c48b84d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c48b851:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48b855:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48b865
    1d2b7c48b85b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c48b860:	e9 05 00 00 00                                  	jmp    0x1d2b7c48b86a
    1d2b7c48b865:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48b86a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c48b874:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c48b87a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c48b87f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c48b883:	0f 87 09 00 00 00                               	ja     0x1d2b7c48b892
    1d2b7c48b889:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c48b88d:	e9 04 00 00 00                                  	jmp    0x1d2b7c48b896
    1d2b7c48b892:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c48b896:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c48b89a:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48b8aa
    1d2b7c48b8a0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c48b8a5:	e9 05 00 00 00                                  	jmp    0x1d2b7c48b8af
    1d2b7c48b8aa:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c48b8af:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    1d2b7c48b8b9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48b8be:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48b8c2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    1d2b7c48b8cc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c48b8d1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c48b8d6:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48b8da:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x1d2b7c489811
    1d2b7c48b8e1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c48b8e6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48b8eb:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48b8ef:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c48b8f3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c48b8f7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c48b8fb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c48b8ff:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c48b904:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c48b908:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x1d2b7c489811
    1d2b7c48b90f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c48b914:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c48b919:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c48b91d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    1d2b7c48b927:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    1d2b7c48b931:	4d 8b c4                                        	mov    r8,r12
    1d2b7c48b934:	e9 b6 00 00 00                                  	jmp    0x1d2b7c48b9ef
    1d2b7c48b939:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    1d2b7c48b940:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    1d2b7c48b947:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    1d2b7c48b94b:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    1d2b7c48b952:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c48b956:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    1d2b7c48b95d:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    1d2b7c48b964:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c48b968:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48b96c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c48b971:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48b975:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    1d2b7c48b97c:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    1d2b7c48b980:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    1d2b7c48b987:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c48b98b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    1d2b7c48b993:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    1d2b7c48b99a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c48b99e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c48b9a2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48b9a6:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    1d2b7c48b9ac:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48b9b0:	8b c8                                           	mov    ecx,eax
    1d2b7c48b9b2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48b9b5:	41 8b d0                                        	mov    edx,r8d
    1d2b7c48b9b8:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    1d2b7c48b9c0:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c48b9c4:	8b df                                           	mov    ebx,edi
    1d2b7c48b9c6:	e8 65 0b f3 ff                                  	call   0x1d2b7c3bc530
    1d2b7c48b9cb:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c48b9ce:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48b9d2:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    1d2b7c48b9dc:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    1d2b7c48b9e6:	8b cb                                           	mov    ecx,ebx
    1d2b7c48b9e8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48b9ef:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48b9f3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c48b9fb:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c48ba04:	0f 85 2c 00 00 00                               	jne    0x1d2b7c48ba36
    1d2b7c48ba0a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c48ba14:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c48ba1e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c48ba28:	49 8b fb                                        	mov    rdi,r11
    1d2b7c48ba2b:	8b d9                                           	mov    ebx,ecx
    1d2b7c48ba2d:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c48ba31:	e9 dd 01 00 00                                  	jmp    0x1d2b7c48bc13
    1d2b7c48ba36:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    1d2b7c48ba3e:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    1d2b7c48ba46:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    1d2b7c48ba4e:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    1d2b7c48ba56:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    1d2b7c48ba5e:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    1d2b7c48ba66:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c48ba6a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c48ba6e:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    1d2b7c48ba76:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c48ba7a:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x1d2b7c4885ef
    1d2b7c48ba81:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48ba86:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c48ba8a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c48ba8e:	0f 87 04 00 00 00                               	ja     0x1d2b7c48ba98
    1d2b7c48ba94:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c48ba98:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c48baa0:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c48baa7:	0f 85 28 00 00 00                               	jne    0x1d2b7c48bad5
    1d2b7c48baad:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c48bab7:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x1d2b7c4885ef
    1d2b7c48babe:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c48bac3:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c48bac7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48bacb:	e8 e8 2a f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48bad0:	e9 94 00 00 00                                  	jmp    0x1d2b7c48bb69
    1d2b7c48bad5:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c48bad9:	0f 84 67 00 00 00                               	je     0x1d2b7c48bb46
    1d2b7c48badf:	4d 8b d0                                        	mov    r10,r8
    1d2b7c48bae2:	4d 8b c3                                        	mov    r8,r11
    1d2b7c48bae5:	4d 8b da                                        	mov    r11,r10
    1d2b7c48bae8:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    1d2b7c48baf2:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    1d2b7c48bafc:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c48bb01:	7a 06                                           	jp     0x1d2b7c48bb09
    1d2b7c48bb03:	0f 84 2a 00 00 00                               	je     0x1d2b7c48bb33
    1d2b7c48bb09:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c48bb0d:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c48bb12:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c48bb16:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c48bb1a:	0f 86 49 00 00 00                               	jbe    0x1d2b7c48bb69
    1d2b7c48bb20:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48bb24:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48bb29:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48bb2e:	e9 5b 00 00 00                                  	jmp    0x1d2b7c48bb8e
    1d2b7c48bb33:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48bb37:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48bb3c:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48bb41:	e9 44 00 00 00                                  	jmp    0x1d2b7c48bb8a
    1d2b7c48bb46:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c48bb50:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x1d2b7c4885ef
    1d2b7c48bb57:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c48bb5c:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c48bb60:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48bb64:	e8 4f 2a f3 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48bb69:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c48bb6d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c48bb72:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c48bb77:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c48bb7b:	0f 87 09 00 00 00                               	ja     0x1d2b7c48bb8a
    1d2b7c48bb81:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c48bb85:	e9 04 00 00 00                                  	jmp    0x1d2b7c48bb8e
    1d2b7c48bb8a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c48bb8e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c48bb91:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48bb95:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    1d2b7c48bb9f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c48bba3:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c48bba7:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c48bbb1:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c48bbb6:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    1d2b7c48bbc0:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    1d2b7c48bbca:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c48bbd4:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c48bbd9:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    1d2b7c48bbe3:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    1d2b7c48bbed:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c48bbf7:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c48bbfc:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    1d2b7c48bc06:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c48bc0a:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48bc0e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c48bc13:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    1d2b7c48bc1d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48bc21:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48bc24:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c48bc2a:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48bc30:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    1d2b7c48bc38:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c48bc3c:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c48bc40:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c48bc45:	e8 16 06 f3 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48bc4a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48bc4e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48bc53:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c48bc57:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48bc5c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48bc62:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48bc68:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48bc6d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48bc75:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48bc7d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48bc85:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48bc8d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48bc93:	e9 12 4d 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48bc98:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c48bc9c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    1d2b7c48bca3:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c48bca7:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    1d2b7c48bcac:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    1d2b7c48bcb0:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    1d2b7c48bcb8:	49 8b df                                        	mov    rbx,r15
    1d2b7c48bcbb:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    1d2b7c48bcc2:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    1d2b7c48bcc7:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    1d2b7c48bccb:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    1d2b7c48bcd3:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    1d2b7c48bcda:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    1d2b7c48bcdf:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    1d2b7c48bce6:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    1d2b7c48bcea:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    1d2b7c48bcef:	48 8b c6                                        	mov    rax,rsi
    1d2b7c48bcf2:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    1d2b7c48bcf9:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    1d2b7c48bcfe:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    1d2b7c48bd02:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    1d2b7c48bd07:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c48bd0b:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    1d2b7c48bd12:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    1d2b7c48bd19:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    1d2b7c48bd20:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    1d2b7c48bd27:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    1d2b7c48bd2e:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    1d2b7c48bd35:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    1d2b7c48bd3c:	33 ff                                           	xor    edi,edi
    1d2b7c48bd3e:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    1d2b7c48bd42:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c48bd46:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    1d2b7c48bd4a:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    1d2b7c48bd50:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c48bd55:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    1d2b7c48bd5c:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    1d2b7c48bd63:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    1d2b7c48bd6a:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c48bd6f:	e9 10 00 00 00                                  	jmp    0x1d2b7c48bd84
    1d2b7c48bd74:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48bd7d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    1d2b7c48bd80:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c48bd84:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c48bd89:	0f 85 63 4f 00 00                               	jne    0x1d2b7c490cf2
    1d2b7c48bd8f:	8b cf                                           	mov    ecx,edi
    1d2b7c48bd91:	41 bf 01 00 00 00                               	mov    r15d,0x1
    1d2b7c48bd97:	41 d3 e7                                        	shl    r15d,cl
    1d2b7c48bd9a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    1d2b7c48bda1:	0f 84 69 01 00 00                               	je     0x1d2b7c48bf10
    1d2b7c48bda7:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    1d2b7c48bdac:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    1d2b7c48bdb3:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    1d2b7c48bdb8:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    1d2b7c48bdbc:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    1d2b7c48bdc1:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    1d2b7c48bdc6:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    1d2b7c48bdcb:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    1d2b7c48bdd0:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    1d2b7c48bdd4:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    1d2b7c48bdd9:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    1d2b7c48bdde:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    1d2b7c48bde3:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    1d2b7c48bdea:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    1d2b7c48bdf1:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    1d2b7c48bdf7:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    1d2b7c48bdfc:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    1d2b7c48be01:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    1d2b7c48be06:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    1d2b7c48be0b:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    1d2b7c48be10:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    1d2b7c48be15:	0f 84 f5 00 00 00                               	je     0x1d2b7c48bf10
    1d2b7c48be1b:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    1d2b7c48be23:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    1d2b7c48be2b:	0f 85 df 00 00 00                               	jne    0x1d2b7c48bf10
    1d2b7c48be31:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    1d2b7c48be36:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    1d2b7c48be39:	44 8b c7                                        	mov    r8d,edi
    1d2b7c48be3c:	41 d1 e8                                        	shr    r8d,1
    1d2b7c48be3f:	45 03 c3                                        	add    r8d,r11d
    1d2b7c48be42:	44 0f af c1                                     	imul   r8d,ecx
    1d2b7c48be46:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    1d2b7c48be4a:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    1d2b7c48be4e:	44 8b ff                                        	mov    r15d,edi
    1d2b7c48be51:	41 83 e7 01                                     	and    r15d,0x1
    1d2b7c48be55:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    1d2b7c48be59:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    1d2b7c48be5f:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    1d2b7c48be64:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    1d2b7c48be6b:	41 83 f8 08                                     	cmp    r8d,0x8
    1d2b7c48be6f:	0f 83 0b 00 00 00                               	jae    0x1d2b7c48be80
    1d2b7c48be75:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x1d2b7c490fa8
    1d2b7c48be7c:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    1d2b7c48be80:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    1d2b7c48be85:	0f 87 85 00 00 00                               	ja     0x1d2b7c48bf10
    1d2b7c48be8b:	e9 67 00 00 00                                  	jmp    0x1d2b7c48bef7
    1d2b7c48be90:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    1d2b7c48be95:	0f 83 75 00 00 00                               	jae    0x1d2b7c48bf10
    1d2b7c48be9b:	e9 57 00 00 00                                  	jmp    0x1d2b7c48bef7
    1d2b7c48bea0:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    1d2b7c48bea5:	0f 8a 65 00 00 00                               	jp     0x1d2b7c48bf10
    1d2b7c48beab:	0f 84 46 00 00 00                               	je     0x1d2b7c48bef7
    1d2b7c48beb1:	e9 5a 00 00 00                                  	jmp    0x1d2b7c48bf10
    1d2b7c48beb6:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    1d2b7c48bebb:	0f 87 4f 00 00 00                               	ja     0x1d2b7c48bf10
    1d2b7c48bec1:	e9 31 00 00 00                                  	jmp    0x1d2b7c48bef7
    1d2b7c48bec6:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    1d2b7c48becb:	0f 83 3f 00 00 00                               	jae    0x1d2b7c48bf10
    1d2b7c48bed1:	e9 21 00 00 00                                  	jmp    0x1d2b7c48bef7
    1d2b7c48bed6:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    1d2b7c48bedb:	0f 8a 16 00 00 00                               	jp     0x1d2b7c48bef7
    1d2b7c48bee1:	0f 84 29 00 00 00                               	je     0x1d2b7c48bf10
    1d2b7c48bee7:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48bef7
    1d2b7c48beec:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    1d2b7c48bef1:	0f 87 19 00 00 00                               	ja     0x1d2b7c48bf10
    1d2b7c48bef7:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    1d2b7c48befe:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    1d2b7c48bf02:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    1d2b7c48bf09:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    1d2b7c48bf10:	83 c7 01                                        	add    edi,0x1
    1d2b7c48bf13:	83 ff 04                                        	cmp    edi,0x4
    1d2b7c48bf16:	0f 85 64 fe ff ff                               	jne    0x1d2b7c48bd80
    1d2b7c48bf1c:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    1d2b7c48bf22:	85 ff                                           	test   edi,edi
    1d2b7c48bf24:	0f 85 1d 00 00 00                               	jne    0x1d2b7c48bf47
    1d2b7c48bf2a:	4c 8b c6                                        	mov    r8,rsi
    1d2b7c48bf2d:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c48bf31:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48bf35:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    1d2b7c48bf39:	4c 8b e2                                        	mov    r12,rdx
    1d2b7c48bf3c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48bf42:	e9 63 4a 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48bf47:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    1d2b7c48bf50:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c48bf55:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    1d2b7c48bf5e:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    1d2b7c48bf64:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    1d2b7c48bf6d:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    1d2b7c48bf73:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    1d2b7c48bf7c:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    1d2b7c48bf82:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    1d2b7c48bf8a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    1d2b7c48bf8f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    1d2b7c48bf93:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    1d2b7c48bf99:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    1d2b7c48bf9e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    1d2b7c48bfa7:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    1d2b7c48bfac:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    1d2b7c48bfb5:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    1d2b7c48bfbb:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    1d2b7c48bfc4:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    1d2b7c48bfca:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    1d2b7c48bfd3:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    1d2b7c48bfd9:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    1d2b7c48bfdd:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    1d2b7c48bfe3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    1d2b7c48bfe7:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    1d2b7c48bfeb:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x1d2b7c489811
    1d2b7c48bff2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c48bff7:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c48bffb:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    1d2b7c48c000:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    1d2b7c48c004:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    1d2b7c48c00a:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    1d2b7c48c00e:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    1d2b7c48c013:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    1d2b7c48c017:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    1d2b7c48c01c:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    1d2b7c48c020:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    1d2b7c48c024:	44 23 c7                                        	and    r8d,edi
    1d2b7c48c027:	0f 85 16 00 00 00                               	jne    0x1d2b7c48c043
    1d2b7c48c02d:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    1d2b7c48c034:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    1d2b7c48c037:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48c03e:	e9 7c 2a 00 00                                  	jmp    0x1d2b7c48eabf
    1d2b7c48c043:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    1d2b7c48c047:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    1d2b7c48c04b:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    1d2b7c48c051:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c48c055:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    1d2b7c48c05b:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    1d2b7c48c05f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    1d2b7c48c063:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    1d2b7c48c069:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c48c06d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    1d2b7c48c071:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    1d2b7c48c075:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    1d2b7c48c079:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    1d2b7c48c07f:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c48c083:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    1d2b7c48c08b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    1d2b7c48c091:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    1d2b7c48c095:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    1d2b7c48c099:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    1d2b7c48c09f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c48c0a3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    1d2b7c48c0a7:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    1d2b7c48c0ab:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    1d2b7c48c0af:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    1d2b7c48c0b5:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c48c0b9:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    1d2b7c48c0c1:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    1d2b7c48c0c7:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    1d2b7c48c0cb:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    1d2b7c48c0cf:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    1d2b7c48c0d5:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c48c0d9:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    1d2b7c48c0dd:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    1d2b7c48c0e1:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    1d2b7c48c0e5:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    1d2b7c48c0eb:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c48c0ef:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    1d2b7c48c0f7:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    1d2b7c48c0fd:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    1d2b7c48c101:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    1d2b7c48c105:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    1d2b7c48c10b:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c48c10f:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    1d2b7c48c113:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    1d2b7c48c117:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48c11e:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    1d2b7c48c126:	41 83 ef 01                                     	sub    r15d,0x1
    1d2b7c48c12a:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    1d2b7c48c131:	41 83 ff 01                                     	cmp    r15d,0x1
    1d2b7c48c135:	0f 86 5a 17 00 00                               	jbe    0x1d2b7c48d895
    1d2b7c48c13b:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    1d2b7c48c143:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    1d2b7c48c14b:	0f 85 24 00 00 00                               	jne    0x1d2b7c48c175
    1d2b7c48c151:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    1d2b7c48c159:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c48c15d:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    1d2b7c48c165:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    1d2b7c48c16d:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    1d2b7c48c170:	e9 d7 28 00 00                                  	jmp    0x1d2b7c48ea4c
    1d2b7c48c175:	4d 8b f8                                        	mov    r15,r8
    1d2b7c48c178:	41 83 e7 08                                     	and    r15d,0x8
    1d2b7c48c17c:	49 8b c8                                        	mov    rcx,r8
    1d2b7c48c17f:	83 e1 04                                        	and    ecx,0x4
    1d2b7c48c182:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    1d2b7c48c189:	4d 8b f8                                        	mov    r15,r8
    1d2b7c48c18c:	41 83 e7 02                                     	and    r15d,0x2
    1d2b7c48c190:	41 83 e0 01                                     	and    r8d,0x1
    1d2b7c48c194:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    1d2b7c48c19c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    1d2b7c48c1a4:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    1d2b7c48c1ac:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    1d2b7c48c1b4:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    1d2b7c48c1bc:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    1d2b7c48c1c4:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    1d2b7c48c1cc:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    1d2b7c48c1d4:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    1d2b7c48c1db:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    1d2b7c48c1e2:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    1d2b7c48c1e9:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48c1ec:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48c1f0:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    1d2b7c48c1f8:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48c200:	e9 6a 00 00 00                                  	jmp    0x1d2b7c48c26f
    1d2b7c48c205:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48c20e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48c217:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48c220:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48c229:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48c232:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48c23b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    1d2b7c48c240:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    1d2b7c48c248:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    1d2b7c48c250:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48c257:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    1d2b7c48c25f:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48c267:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    1d2b7c48c26f:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48c272:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    1d2b7c48c278:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    1d2b7c48c27f:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    1d2b7c48c286:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    1d2b7c48c28d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c48c292:	0f 85 e4 4a 00 00                               	jne    0x1d2b7c490d7c
    1d2b7c48c298:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    1d2b7c48c2a0:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c48c2a3:	41 d3 e9                                        	shr    r9d,cl
    1d2b7c48c2a6:	41 f6 c1 01                                     	test   r9b,0x1
    1d2b7c48c2aa:	0f 85 2d 00 00 00                               	jne    0x1d2b7c48c2dd
    1d2b7c48c2b0:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    1d2b7c48c2b7:	45 8b c8                                        	mov    r9d,r8d
    1d2b7c48c2ba:	41 c1 e1 06                                     	shl    r9d,0x6
    1d2b7c48c2be:	41 03 c9                                        	add    ecx,r9d
    1d2b7c48c2c1:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    1d2b7c48c2c7:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    1d2b7c48c2cd:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    1d2b7c48c2d3:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    1d2b7c48c2d8:	e9 11 12 00 00                                  	jmp    0x1d2b7c48d4ee
    1d2b7c48c2dd:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    1d2b7c48c2e4:	45 8b c8                                        	mov    r9d,r8d
    1d2b7c48c2e7:	41 c1 e1 06                                     	shl    r9d,0x6
    1d2b7c48c2eb:	44 03 c9                                        	add    r9d,ecx
    1d2b7c48c2ee:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    1d2b7c48c2f2:	03 c8                                           	add    ecx,eax
    1d2b7c48c2f4:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    1d2b7c48c2f8:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    1d2b7c48c2fd:	0f 85 a2 11 00 00                               	jne    0x1d2b7c48d4a5
    1d2b7c48c303:	41 8b f8                                        	mov    edi,r8d
    1d2b7c48c306:	c1 e7 04                                        	shl    edi,0x4
    1d2b7c48c309:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    1d2b7c48c30d:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    1d2b7c48c311:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    1d2b7c48c317:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    1d2b7c48c31c:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    1d2b7c48c320:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    1d2b7c48c326:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    1d2b7c48c32b:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    1d2b7c48c330:	03 fb                                           	add    edi,ebx
    1d2b7c48c332:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    1d2b7c48c338:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    1d2b7c48c33d:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    1d2b7c48c342:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    1d2b7c48c347:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    1d2b7c48c34d:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    1d2b7c48c352:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    1d2b7c48c358:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    1d2b7c48c35d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    1d2b7c48c362:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    1d2b7c48c368:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    1d2b7c48c36d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    1d2b7c48c372:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    1d2b7c48c377:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    1d2b7c48c37b:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c48c37f:	0f 85 22 0e 00 00                               	jne    0x1d2b7c48d1a7
    1d2b7c48c385:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    1d2b7c48c38a:	45 85 ff                                        	test   r15d,r15d
    1d2b7c48c38d:	0f 84 14 0e 00 00                               	je     0x1d2b7c48d1a7
    1d2b7c48c393:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    1d2b7c48c397:	85 db                                           	test   ebx,ebx
    1d2b7c48c399:	0f 8e 08 0e 00 00                               	jle    0x1d2b7c48d1a7
    1d2b7c48c39f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    1d2b7c48c3a4:	45 85 db                                        	test   r11d,r11d
    1d2b7c48c3a7:	0f 8e f6 0d 00 00                               	jle    0x1d2b7c48d1a3
    1d2b7c48c3ad:	44 8b d3                                        	mov    r10d,ebx
    1d2b7c48c3b0:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    1d2b7c48c3b5:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    1d2b7c48c3ba:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    1d2b7c48c3be:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48c3c1:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    1d2b7c48c3c7:	41 0f 95 c0                                     	setne  r8b
    1d2b7c48c3cb:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    1d2b7c48c3d1:	40 0f 95 c7                                     	setne  dil
    1d2b7c48c3d5:	40 0f b6 ff                                     	movzx  edi,dil
    1d2b7c48c3d9:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    1d2b7c48c3e0:	41 23 f8                                        	and    edi,r8d
    1d2b7c48c3e3:	0f 85 0f 00 00 00                               	jne    0x1d2b7c48c3f8
    1d2b7c48c3e9:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    1d2b7c48c3ee:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    1d2b7c48c3f3:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48c403
    1d2b7c48c3f8:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    1d2b7c48c3fe:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    1d2b7c48c403:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    1d2b7c48c408:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c48c40b:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    1d2b7c48c410:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    1d2b7c48c415:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    1d2b7c48c41a:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48c41d:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    1d2b7c48c424:	41 0f 95 c4                                     	setne  r12b
    1d2b7c48c428:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    1d2b7c48c42f:	41 0f 95 c0                                     	setne  r8b
    1d2b7c48c433:	45 0f b6 c0                                     	movzx  r8d,r8b
    1d2b7c48c437:	45 23 c4                                        	and    r8d,r12d
    1d2b7c48c43a:	0f 85 0f 00 00 00                               	jne    0x1d2b7c48c44f
    1d2b7c48c440:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    1d2b7c48c445:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    1d2b7c48c44a:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48c45a
    1d2b7c48c44f:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    1d2b7c48c455:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    1d2b7c48c45a:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    1d2b7c48c45f:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    1d2b7c48c469:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c48c46e:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48c473:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    1d2b7c48c478:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    1d2b7c48c47d:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48c480:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    1d2b7c48c488:	41 0f 94 c4                                     	sete   r12b
    1d2b7c48c48c:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48c48f:	0f 85 66 00 00 00                               	jne    0x1d2b7c48c4fb
    1d2b7c48c495:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    1d2b7c48c49b:	49 ba 50 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7850
    1d2b7c48c4a5:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    1d2b7c48c4aa:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    1d2b7c48c4b4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c48c4b9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c48c4bd:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    1d2b7c48c4c2:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x1d2b7c48825e
    1d2b7c48c4c9:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c48c4cf:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    1d2b7c48c4d4:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c48c4da:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    1d2b7c48c4de:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    1d2b7c48c4e3:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    1d2b7c48c4e8:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    1d2b7c48c4ed:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    1d2b7c48c4f2:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    1d2b7c48c4f6:	e9 49 00 00 00                                  	jmp    0x1d2b7c48c544
    1d2b7c48c4fb:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    1d2b7c48c501:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x1d2b7c48c49d
    1d2b7c48c508:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    1d2b7c48c50d:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x1d2b7c48c4ac
    1d2b7c48c514:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c48c519:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c48c51d:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    1d2b7c48c522:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x1d2b7c48825e
    1d2b7c48c529:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    1d2b7c48c52f:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    1d2b7c48c534:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    1d2b7c48c53a:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    1d2b7c48c53f:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    1d2b7c48c544:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    1d2b7c48c54a:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x1d2b7c48825e
    1d2b7c48c551:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    1d2b7c48c556:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    1d2b7c48c55b:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    1d2b7c48c561:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    1d2b7c48c565:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    1d2b7c48c56a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    1d2b7c48c574:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c48c579:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c48c57d:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x1d2b7c48c49d
    1d2b7c48c584:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    1d2b7c48c589:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    1d2b7c48c58e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    1d2b7c48c592:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    1d2b7c48c597:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c48c59c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    1d2b7c48c59f:	c5 79 6e c8                                     	vmovd  xmm9,eax
    1d2b7c48c5a3:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c48c5a8:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    1d2b7c48c5ac:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    1d2b7c48c5b1:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    1d2b7c48c5b6:	85 ff                                           	test   edi,edi
    1d2b7c48c5b8:	0f 84 58 00 00 00                               	je     0x1d2b7c48c616
    1d2b7c48c5be:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    1d2b7c48c5c2:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    1d2b7c48c5c7:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    1d2b7c48c5cb:	85 c0                                           	test   eax,eax
    1d2b7c48c5cd:	0f 85 43 00 00 00                               	jne    0x1d2b7c48c616
    1d2b7c48c5d3:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    1d2b7c48c5d7:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    1d2b7c48c5dc:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    1d2b7c48c5e1:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    1d2b7c48c5e5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48c5ea:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    1d2b7c48c5ef:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    1d2b7c48c5f3:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    1d2b7c48c5f7:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    1d2b7c48c5fc:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    1d2b7c48c601:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    1d2b7c48c606:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    1d2b7c48c60e:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    1d2b7c48c616:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    1d2b7c48c61a:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    1d2b7c48c61f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c48c624:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    1d2b7c48c628:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    1d2b7c48c62d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48c632:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    1d2b7c48c636:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    1d2b7c48c63b:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    1d2b7c48c640:	45 85 c0                                        	test   r8d,r8d
    1d2b7c48c643:	0f 84 4a 00 00 00                               	je     0x1d2b7c48c693
    1d2b7c48c649:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    1d2b7c48c64d:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    1d2b7c48c652:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    1d2b7c48c656:	85 c9                                           	test   ecx,ecx
    1d2b7c48c658:	0f 85 35 00 00 00                               	jne    0x1d2b7c48c693
    1d2b7c48c65e:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    1d2b7c48c663:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    1d2b7c48c668:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    1d2b7c48c66d:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    1d2b7c48c672:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48c677:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    1d2b7c48c67c:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    1d2b7c48c680:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    1d2b7c48c684:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    1d2b7c48c689:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    1d2b7c48c68e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    1d2b7c48c693:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    1d2b7c48c697:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    1d2b7c48c69c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    1d2b7c48c6a1:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    1d2b7c48c6a5:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    1d2b7c48c6ab:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    1d2b7c48c6b1:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    1d2b7c48c6b8:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    1d2b7c48c6be:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    1d2b7c48c6c5:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    1d2b7c48c6ca:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48c6cd:	0f 85 df 08 00 00                               	jne    0x1d2b7c48cfb2
    1d2b7c48c6d3:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    1d2b7c48c6d7:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    1d2b7c48c6dc:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    1d2b7c48c6e1:	85 ff                                           	test   edi,edi
    1d2b7c48c6e3:	0f 84 41 00 00 00                               	je     0x1d2b7c48c72a
    1d2b7c48c6e9:	c5 79 6e d8                                     	vmovd  xmm11,eax
    1d2b7c48c6ed:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c48c6f2:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    1d2b7c48c6f7:	85 c0                                           	test   eax,eax
    1d2b7c48c6f9:	0f 85 2b 00 00 00                               	jne    0x1d2b7c48c72a
    1d2b7c48c6ff:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    1d2b7c48c704:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    1d2b7c48c708:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48c70d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    1d2b7c48c712:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    1d2b7c48c716:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    1d2b7c48c71b:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    1d2b7c48c720:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c48c725:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    1d2b7c48c72a:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    1d2b7c48c72e:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    1d2b7c48c733:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    1d2b7c48c738:	45 85 c0                                        	test   r8d,r8d
    1d2b7c48c73b:	0f 84 49 00 00 00                               	je     0x1d2b7c48c78a
    1d2b7c48c741:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    1d2b7c48c745:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c48c74a:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    1d2b7c48c74e:	85 c9                                           	test   ecx,ecx
    1d2b7c48c750:	0f 85 34 00 00 00                               	jne    0x1d2b7c48c78a
    1d2b7c48c756:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    1d2b7c48c75b:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c48c760:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    1d2b7c48c765:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    1d2b7c48c769:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48c76e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    1d2b7c48c773:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    1d2b7c48c777:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    1d2b7c48c77c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    1d2b7c48c781:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c48c786:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    1d2b7c48c78a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    1d2b7c48c78f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    1d2b7c48c793:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    1d2b7c48c79a:	0f 84 71 00 00 00                               	je     0x1d2b7c48c811
    1d2b7c48c7a0:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    1d2b7c48c7a7:	0f 85 07 00 00 00                               	jne    0x1d2b7c48c7b4
    1d2b7c48c7ad:	33 ff                                           	xor    edi,edi
    1d2b7c48c7af:	e9 07 00 00 00                                  	jmp    0x1d2b7c48c7bb
    1d2b7c48c7b4:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    1d2b7c48c7b8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48c7bb:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    1d2b7c48c7c2:	0f 85 08 00 00 00                               	jne    0x1d2b7c48c7d0
    1d2b7c48c7c8:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48c7cb:	e9 08 00 00 00                                  	jmp    0x1d2b7c48c7d8
    1d2b7c48c7d0:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    1d2b7c48c7d4:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c48c7d8:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    1d2b7c48c7df:	0f 85 08 00 00 00                               	jne    0x1d2b7c48c7ed
    1d2b7c48c7e5:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48c7e8:	e9 0f 00 00 00                                  	jmp    0x1d2b7c48c7fc
    1d2b7c48c7ed:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    1d2b7c48c7f4:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    1d2b7c48c7f8:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48c7fc:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    1d2b7c48c803:	0f 85 3c 00 00 00                               	jne    0x1d2b7c48c845
    1d2b7c48c809:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48c80c:	e9 43 00 00 00                                  	jmp    0x1d2b7c48c854
    1d2b7c48c811:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    1d2b7c48c815:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    1d2b7c48c81a:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    1d2b7c48c81f:	83 ff 0f                                        	cmp    edi,0xf
    1d2b7c48c822:	0f 84 f8 02 00 00                               	je     0x1d2b7c48cb20
    1d2b7c48c828:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    1d2b7c48c82e:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c832:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    1d2b7c48c836:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    1d2b7c48c83a:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    1d2b7c48c83e:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    1d2b7c48c842:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48c845:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    1d2b7c48c84c:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    1d2b7c48c850:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c48c854:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    1d2b7c48c859:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48c85d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48c862:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    1d2b7c48c869:	0f 84 8a 00 00 00                               	je     0x1d2b7c48c8f9
    1d2b7c48c86f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    1d2b7c48c876:	0f 85 07 00 00 00                               	jne    0x1d2b7c48c883
    1d2b7c48c87c:	33 ff                                           	xor    edi,edi
    1d2b7c48c87e:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48c88e
    1d2b7c48c883:	c5 79 7e cf                                     	vmovd  edi,xmm9
    1d2b7c48c887:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c88b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48c88e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    1d2b7c48c895:	0f 85 07 00 00 00                               	jne    0x1d2b7c48c8a2
    1d2b7c48c89b:	33 c0                                           	xor    eax,eax
    1d2b7c48c89d:	e9 0d 00 00 00                                  	jmp    0x1d2b7c48c8af
    1d2b7c48c8a2:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    1d2b7c48c8a8:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    1d2b7c48c8ac:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48c8af:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    1d2b7c48c8b6:	0f 85 07 00 00 00                               	jne    0x1d2b7c48c8c3
    1d2b7c48c8bc:	33 db                                           	xor    ebx,ebx
    1d2b7c48c8be:	e9 0d 00 00 00                                  	jmp    0x1d2b7c48c8d0
    1d2b7c48c8c3:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    1d2b7c48c8c9:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    1d2b7c48c8cd:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    1d2b7c48c8d0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    1d2b7c48c8d7:	0f 85 41 00 00 00                               	jne    0x1d2b7c48c91e
    1d2b7c48c8dd:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    1d2b7c48c8e3:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48c8e7:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48c8ec:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    1d2b7c48c8f2:	33 c9                                           	xor    ecx,ecx
    1d2b7c48c8f4:	e9 54 00 00 00                                  	jmp    0x1d2b7c48c94d
    1d2b7c48c8f9:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    1d2b7c48c8ff:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c903:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    1d2b7c48c906:	c5 79 7e cf                                     	vmovd  edi,xmm9
    1d2b7c48c90a:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c90e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48c911:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    1d2b7c48c917:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    1d2b7c48c91b:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    1d2b7c48c91e:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    1d2b7c48c924:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    1d2b7c48c928:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    1d2b7c48c92b:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    1d2b7c48c931:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48c935:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48c93a:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    1d2b7c48c940:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    1d2b7c48c947:	0f 84 78 00 00 00                               	je     0x1d2b7c48c9c5
    1d2b7c48c94d:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    1d2b7c48c954:	0f 85 07 00 00 00                               	jne    0x1d2b7c48c961
    1d2b7c48c95a:	33 ff                                           	xor    edi,edi
    1d2b7c48c95c:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48c96c
    1d2b7c48c961:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c48c965:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c969:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48c96c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    1d2b7c48c973:	0f 85 08 00 00 00                               	jne    0x1d2b7c48c981
    1d2b7c48c979:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48c97c:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48c98f
    1d2b7c48c981:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    1d2b7c48c987:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    1d2b7c48c98b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c48c98f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    1d2b7c48c996:	0f 85 07 00 00 00                               	jne    0x1d2b7c48c9a3
    1d2b7c48c99c:	33 c0                                           	xor    eax,eax
    1d2b7c48c99e:	e9 0d 00 00 00                                  	jmp    0x1d2b7c48c9b0
    1d2b7c48c9a3:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    1d2b7c48c9a9:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    1d2b7c48c9ad:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48c9b0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    1d2b7c48c9b7:	0f 85 2e 00 00 00                               	jne    0x1d2b7c48c9eb
    1d2b7c48c9bd:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c48c9c0:	e9 34 00 00 00                                  	jmp    0x1d2b7c48c9f9
    1d2b7c48c9c5:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    1d2b7c48c9cb:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c9cf:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    1d2b7c48c9d3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c48c9d7:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48c9db:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48c9de:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    1d2b7c48c9e4:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    1d2b7c48c9e8:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48c9eb:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    1d2b7c48c9f1:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    1d2b7c48c9f5:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    1d2b7c48c9f9:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    1d2b7c48c9ff:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    1d2b7c48ca05:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    1d2b7c48ca0a:	c5 79 6e df                                     	vmovd  xmm11,edi
    1d2b7c48ca0e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c48ca13:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    1d2b7c48ca19:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    1d2b7c48ca1f:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    1d2b7c48ca26:	0f 84 7a 00 00 00                               	je     0x1d2b7c48caa6
    1d2b7c48ca2c:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    1d2b7c48ca33:	0f 85 07 00 00 00                               	jne    0x1d2b7c48ca40
    1d2b7c48ca39:	33 ff                                           	xor    edi,edi
    1d2b7c48ca3b:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48ca4b
    1d2b7c48ca40:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    1d2b7c48ca44:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48ca48:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48ca4b:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    1d2b7c48ca52:	0f 85 08 00 00 00                               	jne    0x1d2b7c48ca60
    1d2b7c48ca58:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48ca5b:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48ca6e
    1d2b7c48ca60:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    1d2b7c48ca66:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    1d2b7c48ca6a:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c48ca6e:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    1d2b7c48ca75:	0f 85 08 00 00 00                               	jne    0x1d2b7c48ca83
    1d2b7c48ca7b:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48ca7e:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48ca91
    1d2b7c48ca83:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    1d2b7c48ca89:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    1d2b7c48ca8d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48ca91:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    1d2b7c48ca98:	0f 85 2f 00 00 00                               	jne    0x1d2b7c48cacd
    1d2b7c48ca9e:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c48caa1:	e9 35 00 00 00                                  	jmp    0x1d2b7c48cadb
    1d2b7c48caa6:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    1d2b7c48caac:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48cab0:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    1d2b7c48cab4:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    1d2b7c48cab8:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48cabc:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48cabf:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    1d2b7c48cac5:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    1d2b7c48cac9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48cacd:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    1d2b7c48cad3:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    1d2b7c48cad7:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    1d2b7c48cadb:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    1d2b7c48cae1:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    1d2b7c48cae7:	c5 79 6e cf                                     	vmovd  xmm9,edi
    1d2b7c48caeb:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c48caf0:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    1d2b7c48caf6:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    1d2b7c48cafc:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    1d2b7c48cb02:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    1d2b7c48cb08:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    1d2b7c48cb0c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c48cb11:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    1d2b7c48cb16:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    1d2b7c48cb1b:	e9 95 00 00 00                                  	jmp    0x1d2b7c48cbb5
    1d2b7c48cb20:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    1d2b7c48cb24:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb29:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    1d2b7c48cb2d:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb32:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    1d2b7c48cb37:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    1d2b7c48cb3d:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48cb41:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb46:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    1d2b7c48cb4d:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    1d2b7c48cb51:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb56:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    1d2b7c48cb5b:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    1d2b7c48cb61:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    1d2b7c48cb67:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    1d2b7c48cb6c:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c48cb70:	41 03 ff                                        	add    edi,r15d
    1d2b7c48cb73:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb78:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    1d2b7c48cb7e:	41 03 ff                                        	add    edi,r15d
    1d2b7c48cb81:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb86:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    1d2b7c48cb8b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    1d2b7c48cb91:	41 03 ff                                        	add    edi,r15d
    1d2b7c48cb94:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    1d2b7c48cb99:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    1d2b7c48cb9f:	41 03 ff                                        	add    edi,r15d
    1d2b7c48cba2:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    1d2b7c48cba7:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    1d2b7c48cbab:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    1d2b7c48cbb0:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    1d2b7c48cbb5:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    1d2b7c48cbba:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    1d2b7c48cbbf:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    1d2b7c48cbc3:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    1d2b7c48cbc8:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    1d2b7c48cbd2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c48cbd7:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c48cbdc:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    1d2b7c48cbe1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cbe6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c48cbec:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c48cbf1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cbf6:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c48cbfb:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c48cbff:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c48cc03:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c48cc08:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    1d2b7c48cc0c:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    1d2b7c48cc11:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cc16:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c48cc1c:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c48cc21:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cc26:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c48cc2b:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c48cc2f:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c48cc33:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c48cc38:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    1d2b7c48cc3c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    1d2b7c48cc40:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c48cc44:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    1d2b7c48cc49:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cc4e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c48cc54:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c48cc59:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cc5e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c48cc63:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c48cc67:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c48cc6b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c48cc70:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    1d2b7c48cc74:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    1d2b7c48cc79:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cc7e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c48cc84:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c48cc89:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cc8e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c48cc93:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c48cc97:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c48cc9b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c48cca0:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    1d2b7c48cca4:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    1d2b7c48cca8:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    1d2b7c48ccac:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    1d2b7c48ccb0:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    1d2b7c48ccba:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c48ccbf:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c48ccc3:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    1d2b7c48ccc7:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    1d2b7c48ccce:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    1d2b7c48ccd4:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    1d2b7c48ccd9:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    1d2b7c48ccde:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cce3:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c48cce9:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c48ccee:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48ccf3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c48ccf8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c48ccfc:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c48cd00:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c48cd05:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    1d2b7c48cd09:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    1d2b7c48cd0f:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    1d2b7c48cd14:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cd19:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c48cd1f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c48cd24:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cd29:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c48cd2e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c48cd32:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c48cd36:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c48cd3b:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    1d2b7c48cd3f:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    1d2b7c48cd43:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c48cd47:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    1d2b7c48cd4c:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    1d2b7c48cd51:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cd56:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c48cd5c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c48cd61:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cd66:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c48cd6b:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c48cd6f:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c48cd73:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c48cd78:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    1d2b7c48cd7c:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    1d2b7c48cd82:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    1d2b7c48cd87:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cd8c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c48cd92:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c48cd97:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cd9c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c48cda1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c48cda5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c48cda9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c48cdae:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    1d2b7c48cdb2:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    1d2b7c48cdb6:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    1d2b7c48cdba:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    1d2b7c48cdbe:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    1d2b7c48cdc2:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    1d2b7c48cdc9:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    1d2b7c48cdce:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    1d2b7c48cdd3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cdd8:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c48cdde:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c48cde3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cde8:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c48cded:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c48cdf1:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c48cdf5:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c48cdfa:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    1d2b7c48cdfe:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    1d2b7c48ce04:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    1d2b7c48ce09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48ce0e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c48ce14:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c48ce19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48ce1e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c48ce23:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c48ce27:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c48ce2b:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c48ce30:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    1d2b7c48ce34:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    1d2b7c48ce38:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c48ce3c:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    1d2b7c48ce41:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    1d2b7c48ce46:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48ce4b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c48ce51:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c48ce56:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48ce5b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c48ce60:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c48ce64:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c48ce68:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c48ce6d:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    1d2b7c48ce71:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    1d2b7c48ce77:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    1d2b7c48ce7c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48ce81:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    1d2b7c48ce87:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    1d2b7c48ce8c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48ce91:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    1d2b7c48ce97:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    1d2b7c48ce9c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    1d2b7c48cea1:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    1d2b7c48cea6:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    1d2b7c48ceab:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    1d2b7c48ceb0:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    1d2b7c48ceb5:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    1d2b7c48ceba:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    1d2b7c48cebe:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    1d2b7c48cec5:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    1d2b7c48ceca:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cecf:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c48ced5:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c48ceda:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cedf:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c48cee4:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c48cee8:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c48ceec:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c48cef1:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    1d2b7c48cef5:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    1d2b7c48cefb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cf00:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    1d2b7c48cf06:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    1d2b7c48cf0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cf10:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    1d2b7c48cf16:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    1d2b7c48cf1b:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    1d2b7c48cf20:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    1d2b7c48cf25:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    1d2b7c48cf2a:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c48cf2f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c48cf33:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    1d2b7c48cf38:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cf3d:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c48cf43:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c48cf48:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cf4d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c48cf52:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c48cf56:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c48cf5a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c48cf5f:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    1d2b7c48cf63:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    1d2b7c48cf69:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48cf6e:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    1d2b7c48cf74:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    1d2b7c48cf79:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48cf7e:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    1d2b7c48cf84:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    1d2b7c48cf89:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    1d2b7c48cf8e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    1d2b7c48cf93:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    1d2b7c48cf98:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    1d2b7c48cf9d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    1d2b7c48cfa1:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c48cfa5:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48cfad:	e9 cd 01 00 00                                  	jmp    0x1d2b7c48d17f
    1d2b7c48cfb2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    1d2b7c48cfb9:	0f 84 71 00 00 00                               	je     0x1d2b7c48d030
    1d2b7c48cfbf:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    1d2b7c48cfc6:	0f 85 07 00 00 00                               	jne    0x1d2b7c48cfd3
    1d2b7c48cfcc:	33 ff                                           	xor    edi,edi
    1d2b7c48cfce:	e9 07 00 00 00                                  	jmp    0x1d2b7c48cfda
    1d2b7c48cfd3:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    1d2b7c48cfd7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48cfda:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    1d2b7c48cfe1:	0f 85 08 00 00 00                               	jne    0x1d2b7c48cfef
    1d2b7c48cfe7:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48cfea:	e9 08 00 00 00                                  	jmp    0x1d2b7c48cff7
    1d2b7c48cfef:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    1d2b7c48cff3:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c48cff7:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    1d2b7c48cffe:	0f 85 08 00 00 00                               	jne    0x1d2b7c48d00c
    1d2b7c48d004:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48d007:	e9 0f 00 00 00                                  	jmp    0x1d2b7c48d01b
    1d2b7c48d00c:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    1d2b7c48d013:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    1d2b7c48d017:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48d01b:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    1d2b7c48d022:	0f 85 25 00 00 00                               	jne    0x1d2b7c48d04d
    1d2b7c48d028:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48d02b:	e9 2c 00 00 00                                  	jmp    0x1d2b7c48d05c
    1d2b7c48d030:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    1d2b7c48d036:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    1d2b7c48d03a:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    1d2b7c48d03e:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    1d2b7c48d042:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    1d2b7c48d046:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    1d2b7c48d04a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48d04d:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    1d2b7c48d054:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    1d2b7c48d058:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c48d05c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    1d2b7c48d060:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48d065:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    1d2b7c48d06b:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    1d2b7c48d071:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    1d2b7c48d077:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x1d2b7c48cbca
    1d2b7c48d07e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c48d083:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c48d087:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    1d2b7c48d08b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48d090:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c48d096:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c48d09b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48d0a0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c48d0a6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c48d0ab:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c48d0b0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c48d0b5:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x1d2b7c48ccb2
    1d2b7c48d0bc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c48d0c1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c48d0c6:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c48d0cb:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    1d2b7c48d0d2:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    1d2b7c48d0d8:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    1d2b7c48d0dd:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    1d2b7c48d0e1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48d0e6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c48d0ec:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c48d0f1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48d0f6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c48d0fc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c48d101:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c48d106:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c48d10b:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c48d110:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    1d2b7c48d117:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    1d2b7c48d11c:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    1d2b7c48d120:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48d125:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c48d12b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c48d130:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48d135:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c48d13a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c48d13e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c48d142:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c48d147:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    1d2b7c48d14c:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    1d2b7c48d153:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    1d2b7c48d158:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48d15d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c48d163:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c48d168:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48d16d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c48d172:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c48d176:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c48d17a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c48d17f:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x1d2b7c48ccb2
    1d2b7c48d186:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c48d18b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c48d18f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    1d2b7c48d193:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    1d2b7c48d19a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48d19e:	e9 4b 03 00 00                                  	jmp    0x1d2b7c48d4ee
    1d2b7c48d1a3:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48d1a7:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    1d2b7c48d1ab:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    1d2b7c48d1b1:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    1d2b7c48d1b5:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    1d2b7c48d1bb:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    1d2b7c48d1bf:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    1d2b7c48d1c4:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    1d2b7c48d1c9:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    1d2b7c48d1cf:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    1d2b7c48d1d4:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    1d2b7c48d1d9:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    1d2b7c48d1dd:	41 83 fc 03                                     	cmp    r12d,0x3
    1d2b7c48d1e1:	0f 84 7a 02 00 00                               	je     0x1d2b7c48d461
    1d2b7c48d1e7:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    1d2b7c48d1ef:	41 8b fb                                        	mov    edi,r11d
    1d2b7c48d1f2:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    1d2b7c48d1fb:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    1d2b7c48d204:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    1d2b7c48d20d:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    1d2b7c48d216:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    1d2b7c48d21f:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    1d2b7c48d228:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    1d2b7c48d231:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    1d2b7c48d238:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    1d2b7c48d23f:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c48d242:	e9 46 00 00 00                                  	jmp    0x1d2b7c48d28d
    1d2b7c48d247:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48d250:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48d259:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48d262:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48d26b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48d274:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48d27d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    1d2b7c48d280:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    1d2b7c48d286:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c48d289:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c48d28d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    1d2b7c48d294:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c48d299:	0f 85 54 3b 00 00                               	jne    0x1d2b7c490df3
    1d2b7c48d29f:	8b c1                                           	mov    eax,ecx
    1d2b7c48d2a1:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c48d2a4:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    1d2b7c48d2ab:	41 d3 eb                                        	shr    r11d,cl
    1d2b7c48d2ae:	41 f6 c3 01                                     	test   r11b,0x1
    1d2b7c48d2b2:	0f 84 ff 00 00 00                               	je     0x1d2b7c48d3b7
    1d2b7c48d2b8:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    1d2b7c48d2bc:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    1d2b7c48d2c1:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    1d2b7c48d2c6:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    1d2b7c48d2cb:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    1d2b7c48d2cf:	41 83 ff 02                                     	cmp    r15d,0x2
    1d2b7c48d2d3:	0f 84 89 00 00 00                               	je     0x1d2b7c48d362
    1d2b7c48d2d9:	45 85 ff                                        	test   r15d,r15d
    1d2b7c48d2dc:	0f 85 32 00 00 00                               	jne    0x1d2b7c48d314
    1d2b7c48d2e2:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    1d2b7c48d2ea:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    1d2b7c48d2f0:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    1d2b7c48d2f7:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c48d2fa:	c1 e3 04                                        	shl    ebx,0x4
    1d2b7c48d2fd:	41 03 df                                        	add    ebx,r15d
    1d2b7c48d300:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48d304:	41 8b c4                                        	mov    eax,r12d
    1d2b7c48d307:	41 8b d3                                        	mov    edx,r11d
    1d2b7c48d30a:	e8 11 ef f2 ff                                  	call   0x1d2b7c3bc220
    1d2b7c48d30f:	e9 a3 00 00 00                                  	jmp    0x1d2b7c48d3b7
    1d2b7c48d314:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c48d317:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    1d2b7c48d31c:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    1d2b7c48d324:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    1d2b7c48d32a:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    1d2b7c48d332:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    1d2b7c48d338:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    1d2b7c48d33e:	41 8b f0                                        	mov    esi,r8d
    1d2b7c48d341:	c1 e6 04                                        	shl    esi,0x4
    1d2b7c48d344:	03 d6                                           	add    edx,esi
    1d2b7c48d346:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48d34a:	41 8b c4                                        	mov    eax,r12d
    1d2b7c48d34d:	44 8b ca                                        	mov    r9d,edx
    1d2b7c48d350:	41 8b d3                                        	mov    edx,r11d
    1d2b7c48d353:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    1d2b7c48d358:	e8 db ee f2 ff                                  	call   0x1d2b7c3bc238
    1d2b7c48d35d:	e9 55 00 00 00                                  	jmp    0x1d2b7c48d3b7
    1d2b7c48d362:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c48d365:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    1d2b7c48d36a:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    1d2b7c48d36f:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    1d2b7c48d377:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    1d2b7c48d37d:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    1d2b7c48d385:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    1d2b7c48d38b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    1d2b7c48d393:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    1d2b7c48d399:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    1d2b7c48d39f:	41 8b f0                                        	mov    esi,r8d
    1d2b7c48d3a2:	c1 e6 04                                        	shl    esi,0x4
    1d2b7c48d3a5:	03 d6                                           	add    edx,esi
    1d2b7c48d3a7:	52                                              	push   rdx
    1d2b7c48d3a8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48d3ac:	41 8b c4                                        	mov    eax,r12d
    1d2b7c48d3af:	41 8b d3                                        	mov    edx,r11d
    1d2b7c48d3b2:	e8 71 ee f2 ff                                  	call   0x1d2b7c3bc228
    1d2b7c48d3b7:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    1d2b7c48d3be:	41 83 c0 01                                     	add    r8d,0x1
    1d2b7c48d3c2:	41 83 f8 04                                     	cmp    r8d,0x4
    1d2b7c48d3c6:	0f 85 b4 fe ff ff                               	jne    0x1d2b7c48d280
    1d2b7c48d3cc:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c48d3cf:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48d3d3:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    1d2b7c48d3dd:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    1d2b7c48d3e7:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    1d2b7c48d3eb:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    1d2b7c48d3f5:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    1d2b7c48d3ff:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    1d2b7c48d404:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    1d2b7c48d408:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    1d2b7c48d40e:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    1d2b7c48d415:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    1d2b7c48d419:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    1d2b7c48d420:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    1d2b7c48d424:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    1d2b7c48d429:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    1d2b7c48d42d:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    1d2b7c48d434:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    1d2b7c48d438:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    1d2b7c48d43e:	44 8b db                                        	mov    r11d,ebx
    1d2b7c48d441:	49 8b d0                                        	mov    rdx,r8
    1d2b7c48d444:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48d44c:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    1d2b7c48d454:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    1d2b7c48d45c:	e9 8d 00 00 00                                  	jmp    0x1d2b7c48d4ee
    1d2b7c48d461:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48d465:	8b c1                                           	mov    eax,ecx
    1d2b7c48d467:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    1d2b7c48d46c:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    1d2b7c48d471:	41 8b c9                                        	mov    ecx,r9d
    1d2b7c48d474:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    1d2b7c48d47b:	e8 a8 f0 f2 ff                                  	call   0x1d2b7c3bc528
    1d2b7c48d480:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48d484:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c48d488:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48d490:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    1d2b7c48d498:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    1d2b7c48d4a0:	e9 49 00 00 00                                  	jmp    0x1d2b7c48d4ee
    1d2b7c48d4a5:	48 8b fa                                        	mov    rdi,rdx
    1d2b7c48d4a8:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    1d2b7c48d4ac:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    1d2b7c48d4b2:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    1d2b7c48d4b8:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    1d2b7c48d4bc:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    1d2b7c48d4c2:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    1d2b7c48d4c9:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    1d2b7c48d4cd:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    1d2b7c48d4d3:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    1d2b7c48d4da:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    1d2b7c48d4de:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    1d2b7c48d4e4:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    1d2b7c48d4eb:	48 8b d7                                        	mov    rdx,rdi
    1d2b7c48d4ee:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    1d2b7c48d4f5:	41 83 c0 01                                     	add    r8d,0x1
    1d2b7c48d4f9:	41 83 f8 04                                     	cmp    r8d,0x4
    1d2b7c48d4fd:	0f 85 3d ed ff ff                               	jne    0x1d2b7c48c240
    1d2b7c48d503:	41 8b db                                        	mov    ebx,r11d
    1d2b7c48d506:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    1d2b7c48d50f:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x1d2b7c48c461
    1d2b7c48d516:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c48d51b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c48d51f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c48d523:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    1d2b7c48d52b:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    1d2b7c48d52f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    1d2b7c48d534:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    1d2b7c48d53d:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    1d2b7c48d541:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    1d2b7c48d549:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    1d2b7c48d54d:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c48d552:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    1d2b7c48d557:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    1d2b7c48d560:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    1d2b7c48d564:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    1d2b7c48d56c:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    1d2b7c48d570:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    1d2b7c48d574:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c48d578:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    1d2b7c48d582:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c48d587:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c48d58b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    1d2b7c48d58f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    1d2b7c48d597:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d59b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    1d2b7c48d59f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d5a3:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    1d2b7c48d5a7:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    1d2b7c48d5ac:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c48d5b1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48d5b8:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    1d2b7c48d5c0:	4d 8b d8                                        	mov    r11,r8
    1d2b7c48d5c3:	41 83 c3 ff                                     	add    r11d,0xffffffff
    1d2b7c48d5c7:	0f 85 f3 00 00 00                               	jne    0x1d2b7c48d6c0
    1d2b7c48d5cd:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    1d2b7c48d5d6:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    1d2b7c48d5df:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    1d2b7c48d5e6:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    1d2b7c48d5ea:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    1d2b7c48d5f0:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    1d2b7c48d5f5:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    1d2b7c48d5fa:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    1d2b7c48d5ff:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    1d2b7c48d604:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    1d2b7c48d609:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c48d60e:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    1d2b7c48d613:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    1d2b7c48d618:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c48d61d:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    1d2b7c48d626:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    1d2b7c48d62f:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    1d2b7c48d636:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    1d2b7c48d63c:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    1d2b7c48d641:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    1d2b7c48d646:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    1d2b7c48d64b:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    1d2b7c48d650:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    1d2b7c48d655:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    1d2b7c48d65a:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    1d2b7c48d65f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    1d2b7c48d664:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c48d669:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    1d2b7c48d672:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    1d2b7c48d67b:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    1d2b7c48d682:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    1d2b7c48d688:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    1d2b7c48d68d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d691:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d695:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    1d2b7c48d699:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d69d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d6a1:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c48d6a5:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d6a9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d6ad:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    1d2b7c48d6b2:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c48d6b6:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    1d2b7c48d6bb:	e9 89 01 00 00                                  	jmp    0x1d2b7c48d849
    1d2b7c48d6c0:	41 83 fb 02                                     	cmp    r11d,0x2
    1d2b7c48d6c4:	0f 84 86 00 00 00                               	je     0x1d2b7c48d750
    1d2b7c48d6ca:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    1d2b7c48d6d3:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    1d2b7c48d6d7:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d6db:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d6df:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    1d2b7c48d6e8:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    1d2b7c48d6ed:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    1d2b7c48d6f2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c48d6f7:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    1d2b7c48d6fe:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48d702:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    1d2b7c48d708:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    1d2b7c48d70d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    1d2b7c48d712:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c48d717:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    1d2b7c48d720:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    1d2b7c48d725:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    1d2b7c48d72a:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c48d72f:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    1d2b7c48d736:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    1d2b7c48d73c:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    1d2b7c48d741:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    1d2b7c48d746:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c48d74b:	e9 58 00 00 00                                  	jmp    0x1d2b7c48d7a8
    1d2b7c48d750:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    1d2b7c48d755:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d759:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d75d:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    1d2b7c48d764:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48d768:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    1d2b7c48d76e:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    1d2b7c48d773:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    1d2b7c48d778:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c48d77d:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    1d2b7c48d784:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    1d2b7c48d78a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    1d2b7c48d78f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    1d2b7c48d794:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c48d799:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    1d2b7c48d79e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    1d2b7c48d7a3:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    1d2b7c48d7a8:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    1d2b7c48d7af:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    1d2b7c48d7b5:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    1d2b7c48d7ba:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    1d2b7c48d7be:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c48d7c2:	41 83 f8 01                                     	cmp    r8d,0x1
    1d2b7c48d7c6:	0f 84 7a 00 00 00                               	je     0x1d2b7c48d846
    1d2b7c48d7cc:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    1d2b7c48d7d6:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    1d2b7c48d7db:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    1d2b7c48d7e1:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    1d2b7c48d7e7:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    1d2b7c48d7ec:	0f 87 09 00 00 00                               	ja     0x1d2b7c48d7fb
    1d2b7c48d7f2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c48d7f6:	e9 05 00 00 00                                  	jmp    0x1d2b7c48d800
    1d2b7c48d7fb:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    1d2b7c48d800:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    1d2b7c48d805:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    1d2b7c48d809:	0f 87 0a 00 00 00                               	ja     0x1d2b7c48d819
    1d2b7c48d80f:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    1d2b7c48d814:	e9 05 00 00 00                                  	jmp    0x1d2b7c48d81e
    1d2b7c48d819:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    1d2b7c48d81e:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    1d2b7c48d823:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48d827:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c48d82b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c48d830:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    1d2b7c48d835:	8b c3                                           	mov    eax,ebx
    1d2b7c48d837:	49 8b f3                                        	mov    rsi,r11
    1d2b7c48d83a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    1d2b7c48d841:	e9 06 12 00 00                                  	jmp    0x1d2b7c48ea4c
    1d2b7c48d846:	4d 8b e3                                        	mov    r12,r11
    1d2b7c48d849:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    1d2b7c48d851:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    1d2b7c48d856:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    1d2b7c48d85b:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    1d2b7c48d864:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    1d2b7c48d869:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    1d2b7c48d86e:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    1d2b7c48d872:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48d876:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c48d87a:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c48d87f:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    1d2b7c48d884:	8b c3                                           	mov    eax,ebx
    1d2b7c48d886:	49 8b f4                                        	mov    rsi,r12
    1d2b7c48d889:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    1d2b7c48d890:	e9 b7 11 00 00                                  	jmp    0x1d2b7c48ea4c
    1d2b7c48d895:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    1d2b7c48d89a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    1d2b7c48d8a2:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    1d2b7c48d8a7:	0f 85 b1 10 00 00                               	jne    0x1d2b7c48e95e
    1d2b7c48d8ad:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    1d2b7c48d8b1:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    1d2b7c48d8b7:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c48d8bb:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    1d2b7c48d8c1:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    1d2b7c48d8c5:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    1d2b7c48d8c9:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    1d2b7c48d8cf:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c48d8d3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    1d2b7c48d8d7:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    1d2b7c48d8db:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    1d2b7c48d8df:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    1d2b7c48d8e5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    1d2b7c48d8e9:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    1d2b7c48d8ef:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    1d2b7c48d8f4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    1d2b7c48d8f9:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    1d2b7c48d8ff:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    1d2b7c48d904:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    1d2b7c48d909:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    1d2b7c48d90d:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    1d2b7c48d911:	41 83 ff 01                                     	cmp    r15d,0x1
    1d2b7c48d915:	0f 85 28 0d 00 00                               	jne    0x1d2b7c48e643
    1d2b7c48d91b:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    1d2b7c48d91f:	85 c9                                           	test   ecx,ecx
    1d2b7c48d921:	0f 84 1c 0d 00 00                               	je     0x1d2b7c48e643
    1d2b7c48d927:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    1d2b7c48d92c:	45 85 db                                        	test   r11d,r11d
    1d2b7c48d92f:	0f 8e 0e 0d 00 00                               	jle    0x1d2b7c48e643
    1d2b7c48d935:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    1d2b7c48d939:	85 db                                           	test   ebx,ebx
    1d2b7c48d93b:	0f 8e fc 0c 00 00                               	jle    0x1d2b7c48e63d
    1d2b7c48d941:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c48d944:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48d949:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c48d94e:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    1d2b7c48d953:	33 f6                                           	xor    esi,esi
    1d2b7c48d955:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    1d2b7c48d95c:	40 0f 95 c6                                     	setne  sil
    1d2b7c48d960:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    1d2b7c48d967:	41 0f 95 c7                                     	setne  r15b
    1d2b7c48d96b:	45 0f b6 ff                                     	movzx  r15d,r15b
    1d2b7c48d96f:	44 23 fe                                        	and    r15d,esi
    1d2b7c48d972:	0f 85 0d 00 00 00                               	jne    0x1d2b7c48d985
    1d2b7c48d978:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    1d2b7c48d97c:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    1d2b7c48d980:	e9 0a 00 00 00                                  	jmp    0x1d2b7c48d98f
    1d2b7c48d985:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    1d2b7c48d98b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    1d2b7c48d98f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    1d2b7c48d993:	44 8b d3                                        	mov    r10d,ebx
    1d2b7c48d996:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c48d99b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    1d2b7c48d9a0:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    1d2b7c48d9a4:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c48d9a7:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    1d2b7c48d9ad:	41 0f 95 c1                                     	setne  r9b
    1d2b7c48d9b1:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    1d2b7c48d9b7:	40 0f 95 c6                                     	setne  sil
    1d2b7c48d9bb:	40 0f b6 f6                                     	movzx  esi,sil
    1d2b7c48d9bf:	41 23 f1                                        	and    esi,r9d
    1d2b7c48d9c2:	0f 85 0d 00 00 00                               	jne    0x1d2b7c48d9d5
    1d2b7c48d9c8:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    1d2b7c48d9cc:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    1d2b7c48d9d0:	e9 0a 00 00 00                                  	jmp    0x1d2b7c48d9df
    1d2b7c48d9d5:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    1d2b7c48d9db:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    1d2b7c48d9df:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    1d2b7c48d9e3:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x1d2b7c48c461
    1d2b7c48d9ea:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c48d9ef:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c48d9f3:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    1d2b7c48d9f7:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    1d2b7c48d9fc:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c48d9ff:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    1d2b7c48da07:	41 0f 94 c1                                     	sete   r9b
    1d2b7c48da0b:	45 85 c9                                        	test   r9d,r9d
    1d2b7c48da0e:	0f 85 5b 00 00 00                               	jne    0x1d2b7c48da6f
    1d2b7c48da14:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    1d2b7c48da1a:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x1d2b7c48c49d
    1d2b7c48da21:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    1d2b7c48da26:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x1d2b7c48c4ac
    1d2b7c48da2d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c48da32:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    1d2b7c48da37:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    1d2b7c48da3d:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x1d2b7c48825e
    1d2b7c48da44:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    1d2b7c48da49:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    1d2b7c48da4e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    1d2b7c48da54:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    1d2b7c48da58:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    1d2b7c48da5d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c48da61:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c48da65:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    1d2b7c48da6a:	e9 49 00 00 00                                  	jmp    0x1d2b7c48dab8
    1d2b7c48da6f:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    1d2b7c48da75:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x1d2b7c48c49d
    1d2b7c48da7c:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    1d2b7c48da81:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x1d2b7c48c4ac
    1d2b7c48da88:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c48da8d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    1d2b7c48da92:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    1d2b7c48da98:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x1d2b7c48825e
    1d2b7c48da9f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c48daa4:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    1d2b7c48daa9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c48daaf:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    1d2b7c48dab3:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    1d2b7c48dab8:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    1d2b7c48dabe:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x1d2b7c48825e
    1d2b7c48dac5:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c48dacb:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    1d2b7c48dad0:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c48dad6:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    1d2b7c48dada:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    1d2b7c48dadf:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x1d2b7c48c56c
    1d2b7c48dae6:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c48daeb:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c48daef:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x1d2b7c48c49d
    1d2b7c48daf6:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    1d2b7c48dafb:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    1d2b7c48db01:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    1d2b7c48db05:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    1d2b7c48db09:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    1d2b7c48db0e:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    1d2b7c48db12:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    1d2b7c48db16:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    1d2b7c48db1b:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    1d2b7c48db1f:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48db27:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    1d2b7c48db2c:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    1d2b7c48db31:	45 85 ff                                        	test   r15d,r15d
    1d2b7c48db34:	0f 84 53 00 00 00                               	je     0x1d2b7c48db8d
    1d2b7c48db3a:	c5 79 6e e0                                     	vmovd  xmm12,eax
    1d2b7c48db3e:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c48db43:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    1d2b7c48db48:	85 c0                                           	test   eax,eax
    1d2b7c48db4a:	0f 85 3d 00 00 00                               	jne    0x1d2b7c48db8d
    1d2b7c48db50:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    1d2b7c48db55:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c48db5a:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    1d2b7c48db5e:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    1d2b7c48db63:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48db68:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    1d2b7c48db6d:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    1d2b7c48db71:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    1d2b7c48db76:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    1d2b7c48db7b:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    1d2b7c48db80:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    1d2b7c48db85:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48db8d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    1d2b7c48db91:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    1d2b7c48db96:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c48db9b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    1d2b7c48db9f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    1d2b7c48dba4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c48dba9:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    1d2b7c48dbae:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    1d2b7c48dbb3:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    1d2b7c48dbb8:	85 f6                                           	test   esi,esi
    1d2b7c48dbba:	0f 84 4c 00 00 00                               	je     0x1d2b7c48dc0c
    1d2b7c48dbc0:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    1d2b7c48dbc5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48dbca:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    1d2b7c48dbcf:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48dbd2:	0f 85 34 00 00 00                               	jne    0x1d2b7c48dc0c
    1d2b7c48dbd8:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    1d2b7c48dbdc:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48dbe1:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    1d2b7c48dbe5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    1d2b7c48dbea:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48dbef:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    1d2b7c48dbf4:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    1d2b7c48dbf9:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    1d2b7c48dbfe:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    1d2b7c48dc02:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    1d2b7c48dc07:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    1d2b7c48dc0c:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    1d2b7c48dc11:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    1d2b7c48dc16:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    1d2b7c48dc1b:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    1d2b7c48dc20:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    1d2b7c48dc26:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    1d2b7c48dc2c:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    1d2b7c48dc33:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    1d2b7c48dc39:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    1d2b7c48dc40:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    1d2b7c48dc44:	45 85 c9                                        	test   r9d,r9d
    1d2b7c48dc47:	0f 85 19 08 00 00                               	jne    0x1d2b7c48e466
    1d2b7c48dc4d:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    1d2b7c48dc55:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    1d2b7c48dc59:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    1d2b7c48dc61:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    1d2b7c48dc66:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    1d2b7c48dc6b:	45 85 ff                                        	test   r15d,r15d
    1d2b7c48dc6e:	0f 84 3d 00 00 00                               	je     0x1d2b7c48dcb1
    1d2b7c48dc74:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    1d2b7c48dc78:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c48dc7d:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    1d2b7c48dc81:	85 c0                                           	test   eax,eax
    1d2b7c48dc83:	0f 85 28 00 00 00                               	jne    0x1d2b7c48dcb1
    1d2b7c48dc89:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    1d2b7c48dc8d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    1d2b7c48dc92:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48dc97:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    1d2b7c48dc9c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    1d2b7c48dca0:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    1d2b7c48dca4:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    1d2b7c48dca8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c48dcad:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    1d2b7c48dcb1:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    1d2b7c48dcb5:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    1d2b7c48dcba:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    1d2b7c48dcbf:	85 f6                                           	test   esi,esi
    1d2b7c48dcc1:	0f 84 49 00 00 00                               	je     0x1d2b7c48dd10
    1d2b7c48dcc7:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    1d2b7c48dccc:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    1d2b7c48dcd1:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    1d2b7c48dcd6:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48dcd9:	0f 85 31 00 00 00                               	jne    0x1d2b7c48dd10
    1d2b7c48dcdf:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    1d2b7c48dce3:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    1d2b7c48dce8:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    1d2b7c48dcec:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    1d2b7c48dcf0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c48dcf5:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    1d2b7c48dcfa:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    1d2b7c48dcff:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    1d2b7c48dd03:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    1d2b7c48dd07:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    1d2b7c48dd0c:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    1d2b7c48dd10:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    1d2b7c48dd15:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    1d2b7c48dd1a:	41 83 f8 0f                                     	cmp    r8d,0xf
    1d2b7c48dd1e:	0f 85 18 00 00 00                               	jne    0x1d2b7c48dd3c
    1d2b7c48dd24:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    1d2b7c48dd28:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    1d2b7c48dd2d:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    1d2b7c48dd32:	41 83 fc 0f                                     	cmp    r12d,0xf
    1d2b7c48dd36:	0f 84 24 03 00 00                               	je     0x1d2b7c48e060
    1d2b7c48dd3c:	4d 8b e0                                        	mov    r12,r8
    1d2b7c48dd3f:	41 83 e4 08                                     	and    r12d,0x8
    1d2b7c48dd43:	4d 8b f8                                        	mov    r15,r8
    1d2b7c48dd46:	41 83 e7 04                                     	and    r15d,0x4
    1d2b7c48dd4a:	49 8b c0                                        	mov    rax,r8
    1d2b7c48dd4d:	83 e0 02                                        	and    eax,0x2
    1d2b7c48dd50:	49 8b d8                                        	mov    rbx,r8
    1d2b7c48dd53:	83 e3 01                                        	and    ebx,0x1
    1d2b7c48dd56:	41 83 f8 0f                                     	cmp    r8d,0xf
    1d2b7c48dd5a:	0f 84 6c 00 00 00                               	je     0x1d2b7c48ddcc
    1d2b7c48dd60:	85 db                                           	test   ebx,ebx
    1d2b7c48dd62:	0f 85 07 00 00 00                               	jne    0x1d2b7c48dd6f
    1d2b7c48dd68:	33 ff                                           	xor    edi,edi
    1d2b7c48dd6a:	e9 06 00 00 00                                  	jmp    0x1d2b7c48dd75
    1d2b7c48dd6f:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48dd72:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48dd75:	85 c0                                           	test   eax,eax
    1d2b7c48dd77:	0f 85 08 00 00 00                               	jne    0x1d2b7c48dd85
    1d2b7c48dd7d:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48dd80:	e9 08 00 00 00                                  	jmp    0x1d2b7c48dd8d
    1d2b7c48dd85:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    1d2b7c48dd89:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48dd8d:	45 85 ff                                        	test   r15d,r15d
    1d2b7c48dd90:	0f 85 08 00 00 00                               	jne    0x1d2b7c48dd9e
    1d2b7c48dd96:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c48dd99:	e9 0f 00 00 00                                  	jmp    0x1d2b7c48ddad
    1d2b7c48dd9e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    1d2b7c48dda5:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    1d2b7c48dda9:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    1d2b7c48ddad:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48ddb0:	0f 85 33 00 00 00                               	jne    0x1d2b7c48dde9
    1d2b7c48ddb6:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    1d2b7c48ddbb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48ddbf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48ddc4:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48ddc7:	e9 43 00 00 00                                  	jmp    0x1d2b7c48de0f
    1d2b7c48ddcc:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    1d2b7c48ddd0:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48ddd4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48ddd7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48ddda:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    1d2b7c48dde1:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    1d2b7c48dde5:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    1d2b7c48dde9:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    1d2b7c48ddef:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    1d2b7c48ddf3:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c48ddf7:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    1d2b7c48ddfc:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48de00:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48de05:	41 83 f8 0f                                     	cmp    r8d,0xf
    1d2b7c48de09:	0f 84 66 00 00 00                               	je     0x1d2b7c48de75
    1d2b7c48de0f:	41 f6 c0 01                                     	test   r8b,0x1
    1d2b7c48de13:	0f 85 07 00 00 00                               	jne    0x1d2b7c48de20
    1d2b7c48de19:	33 ff                                           	xor    edi,edi
    1d2b7c48de1b:	e9 0a 00 00 00                                  	jmp    0x1d2b7c48de2a
    1d2b7c48de20:	c5 79 7e e7                                     	vmovd  edi,xmm12
    1d2b7c48de24:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48de27:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48de2a:	41 f6 c0 02                                     	test   r8b,0x2
    1d2b7c48de2e:	0f 85 07 00 00 00                               	jne    0x1d2b7c48de3b
    1d2b7c48de34:	33 c0                                           	xor    eax,eax
    1d2b7c48de36:	e9 0c 00 00 00                                  	jmp    0x1d2b7c48de47
    1d2b7c48de3b:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    1d2b7c48de41:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    1d2b7c48de44:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48de47:	41 f6 c0 04                                     	test   r8b,0x4
    1d2b7c48de4b:	0f 85 07 00 00 00                               	jne    0x1d2b7c48de58
    1d2b7c48de51:	33 db                                           	xor    ebx,ebx
    1d2b7c48de53:	e9 0c 00 00 00                                  	jmp    0x1d2b7c48de64
    1d2b7c48de58:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    1d2b7c48de5e:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    1d2b7c48de61:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    1d2b7c48de64:	41 f6 c0 08                                     	test   r8b,0x8
    1d2b7c48de68:	0f 85 29 00 00 00                               	jne    0x1d2b7c48de97
    1d2b7c48de6e:	33 f6                                           	xor    esi,esi
    1d2b7c48de70:	e9 2e 00 00 00                                  	jmp    0x1d2b7c48dea3
    1d2b7c48de75:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    1d2b7c48de7b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48de7e:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    1d2b7c48de81:	c5 79 7e e7                                     	vmovd  edi,xmm12
    1d2b7c48de85:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48de88:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48de8b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    1d2b7c48de91:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    1d2b7c48de94:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    1d2b7c48de97:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    1d2b7c48de9d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    1d2b7c48dea0:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    1d2b7c48dea3:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    1d2b7c48dea9:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48dead:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48deb2:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    1d2b7c48deb8:	41 83 f8 0f                                     	cmp    r8d,0xf
    1d2b7c48debc:	0f 84 6a 00 00 00                               	je     0x1d2b7c48df2c
    1d2b7c48dec2:	41 f6 c0 01                                     	test   r8b,0x1
    1d2b7c48dec6:	0f 85 07 00 00 00                               	jne    0x1d2b7c48ded3
    1d2b7c48decc:	33 ff                                           	xor    edi,edi
    1d2b7c48dece:	e9 0a 00 00 00                                  	jmp    0x1d2b7c48dedd
    1d2b7c48ded3:	c5 79 7e f7                                     	vmovd  edi,xmm14
    1d2b7c48ded7:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48deda:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48dedd:	41 f6 c0 02                                     	test   r8b,0x2
    1d2b7c48dee1:	0f 85 08 00 00 00                               	jne    0x1d2b7c48deef
    1d2b7c48dee7:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48deea:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48defd
    1d2b7c48deef:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    1d2b7c48def5:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    1d2b7c48def9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48defd:	41 f6 c0 04                                     	test   r8b,0x4
    1d2b7c48df01:	0f 85 07 00 00 00                               	jne    0x1d2b7c48df0e
    1d2b7c48df07:	33 c0                                           	xor    eax,eax
    1d2b7c48df09:	e9 0c 00 00 00                                  	jmp    0x1d2b7c48df1a
    1d2b7c48df0e:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    1d2b7c48df14:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    1d2b7c48df17:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48df1a:	41 f6 c0 08                                     	test   r8b,0x8
    1d2b7c48df1e:	0f 85 2b 00 00 00                               	jne    0x1d2b7c48df4f
    1d2b7c48df24:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c48df27:	e9 31 00 00 00                                  	jmp    0x1d2b7c48df5d
    1d2b7c48df2c:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    1d2b7c48df32:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48df35:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    1d2b7c48df39:	c5 79 7e f7                                     	vmovd  edi,xmm14
    1d2b7c48df3d:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48df40:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48df43:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    1d2b7c48df49:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    1d2b7c48df4c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48df4f:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    1d2b7c48df55:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    1d2b7c48df59:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    1d2b7c48df5d:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    1d2b7c48df63:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    1d2b7c48df69:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    1d2b7c48df6d:	c5 79 6e cf                                     	vmovd  xmm9,edi
    1d2b7c48df71:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c48df76:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    1d2b7c48df7c:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    1d2b7c48df82:	41 83 f8 0f                                     	cmp    r8d,0xf
    1d2b7c48df86:	0f 84 6c 00 00 00                               	je     0x1d2b7c48dff8
    1d2b7c48df8c:	41 f6 c0 01                                     	test   r8b,0x1
    1d2b7c48df90:	0f 85 07 00 00 00                               	jne    0x1d2b7c48df9d
    1d2b7c48df96:	33 ff                                           	xor    edi,edi
    1d2b7c48df98:	e9 0a 00 00 00                                  	jmp    0x1d2b7c48dfa7
    1d2b7c48df9d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c48dfa1:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48dfa4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48dfa7:	41 f6 c0 02                                     	test   r8b,0x2
    1d2b7c48dfab:	0f 85 08 00 00 00                               	jne    0x1d2b7c48dfb9
    1d2b7c48dfb1:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48dfb4:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48dfc7
    1d2b7c48dfb9:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    1d2b7c48dfbf:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    1d2b7c48dfc3:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48dfc7:	41 f6 c0 04                                     	test   r8b,0x4
    1d2b7c48dfcb:	0f 85 08 00 00 00                               	jne    0x1d2b7c48dfd9
    1d2b7c48dfd1:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c48dfd4:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48dfe7
    1d2b7c48dfd9:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    1d2b7c48dfdf:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    1d2b7c48dfe3:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    1d2b7c48dfe7:	41 f6 c0 08                                     	test   r8b,0x8
    1d2b7c48dfeb:	0f 85 2c 00 00 00                               	jne    0x1d2b7c48e01d
    1d2b7c48dff1:	33 c0                                           	xor    eax,eax
    1d2b7c48dff3:	e9 31 00 00 00                                  	jmp    0x1d2b7c48e029
    1d2b7c48dff8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    1d2b7c48dffe:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48e001:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    1d2b7c48e005:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c48e009:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48e00c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48e00f:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    1d2b7c48e015:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    1d2b7c48e019:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    1d2b7c48e01d:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    1d2b7c48e023:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    1d2b7c48e026:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    1d2b7c48e029:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    1d2b7c48e02f:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    1d2b7c48e035:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    1d2b7c48e03b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    1d2b7c48e03f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c48e044:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    1d2b7c48e04a:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    1d2b7c48e050:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    1d2b7c48e056:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    1d2b7c48e05b:	e9 95 00 00 00                                  	jmp    0x1d2b7c48e0f5
    1d2b7c48e060:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48e063:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    1d2b7c48e068:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    1d2b7c48e06c:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    1d2b7c48e071:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    1d2b7c48e076:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    1d2b7c48e07d:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    1d2b7c48e081:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    1d2b7c48e086:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    1d2b7c48e08d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    1d2b7c48e091:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    1d2b7c48e096:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    1d2b7c48e09b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    1d2b7c48e0a1:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    1d2b7c48e0a7:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    1d2b7c48e0ad:	c5 79 7e cf                                     	vmovd  edi,xmm9
    1d2b7c48e0b1:	03 f9                                           	add    edi,ecx
    1d2b7c48e0b3:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    1d2b7c48e0b8:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    1d2b7c48e0be:	03 f9                                           	add    edi,ecx
    1d2b7c48e0c0:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    1d2b7c48e0c5:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    1d2b7c48e0ca:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    1d2b7c48e0d0:	03 f9                                           	add    edi,ecx
    1d2b7c48e0d2:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    1d2b7c48e0d7:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    1d2b7c48e0dd:	03 f9                                           	add    edi,ecx
    1d2b7c48e0df:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    1d2b7c48e0e4:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    1d2b7c48e0e9:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    1d2b7c48e0ef:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    1d2b7c48e0f5:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    1d2b7c48e0fa:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    1d2b7c48e100:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    1d2b7c48e104:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    1d2b7c48e108:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    1d2b7c48e10e:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    1d2b7c48e112:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    1d2b7c48e11c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c48e121:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c48e125:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    1d2b7c48e12a:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    1d2b7c48e132:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    1d2b7c48e137:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    1d2b7c48e141:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c48e146:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c48e14a:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    1d2b7c48e14e:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x1d2b7c48825e
    1d2b7c48e155:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c48e15a:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    1d2b7c48e15f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c48e165:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    1d2b7c48e169:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    1d2b7c48e16e:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x1d2b7c48c49d
    1d2b7c48e175:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c48e17a:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    1d2b7c48e180:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    1d2b7c48e184:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    1d2b7c48e188:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c48e18d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    1d2b7c48e191:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    1d2b7c48e195:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    1d2b7c48e19b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    1d2b7c48e19f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    1d2b7c48e1a3:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    1d2b7c48e1ab:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    1d2b7c48e1af:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    1d2b7c48e1b4:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    1d2b7c48e1b8:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x1d2b7c48825e
    1d2b7c48e1bf:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c48e1c4:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    1d2b7c48e1c9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c48e1cf:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    1d2b7c48e1d3:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    1d2b7c48e1d8:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x1d2b7c48c49d
    1d2b7c48e1df:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    1d2b7c48e1e4:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    1d2b7c48e1ea:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    1d2b7c48e1ee:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    1d2b7c48e1f2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c48e1f7:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    1d2b7c48e1fb:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    1d2b7c48e200:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    1d2b7c48e206:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    1d2b7c48e20c:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    1d2b7c48e210:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    1d2b7c48e216:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    1d2b7c48e21a:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    1d2b7c48e21e:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    1d2b7c48e223:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    1d2b7c48e227:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    1d2b7c48e231:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c48e236:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c48e23a:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    1d2b7c48e23e:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    1d2b7c48e244:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e249:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    1d2b7c48e24f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    1d2b7c48e254:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e259:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    1d2b7c48e25f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    1d2b7c48e264:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    1d2b7c48e269:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    1d2b7c48e26e:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x1d2b7c48ccb2
    1d2b7c48e275:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c48e27a:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c48e27e:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    1d2b7c48e282:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    1d2b7c48e285:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    1d2b7c48e28e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    1d2b7c48e293:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x1d2b7c48cbca
    1d2b7c48e29a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c48e29f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c48e2a3:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    1d2b7c48e2a7:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    1d2b7c48e2ad:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    1d2b7c48e2b1:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    1d2b7c48e2b5:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    1d2b7c48e2bb:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    1d2b7c48e2bf:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    1d2b7c48e2c3:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    1d2b7c48e2c8:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    1d2b7c48e2ce:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    1d2b7c48e2d2:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    1d2b7c48e2d8:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    1d2b7c48e2dc:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    1d2b7c48e2e1:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    1d2b7c48e2e7:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    1d2b7c48e2eb:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    1d2b7c48e2ef:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    1d2b7c48e2f4:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    1d2b7c48e2f9:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    1d2b7c48e2fd:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    1d2b7c48e303:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e308:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c48e30e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c48e313:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e318:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c48e31e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c48e323:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c48e328:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c48e32d:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    1d2b7c48e331:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    1d2b7c48e33a:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    1d2b7c48e33f:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    1d2b7c48e343:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    1d2b7c48e349:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    1d2b7c48e34d:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    1d2b7c48e352:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    1d2b7c48e358:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    1d2b7c48e35d:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    1d2b7c48e361:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    1d2b7c48e366:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    1d2b7c48e36c:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    1d2b7c48e370:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    1d2b7c48e376:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    1d2b7c48e37a:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    1d2b7c48e37e:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    1d2b7c48e384:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    1d2b7c48e388:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    1d2b7c48e38c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    1d2b7c48e391:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    1d2b7c48e396:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    1d2b7c48e39a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    1d2b7c48e3a0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e3a5:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c48e3ab:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c48e3b0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e3b5:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c48e3bb:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c48e3c0:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c48e3c5:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c48e3ca:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    1d2b7c48e3ce:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    1d2b7c48e3d7:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    1d2b7c48e3db:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    1d2b7c48e3df:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    1d2b7c48e3e4:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    1d2b7c48e3ea:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    1d2b7c48e3ef:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    1d2b7c48e3f3:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    1d2b7c48e3f8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    1d2b7c48e3fc:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    1d2b7c48e400:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    1d2b7c48e405:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    1d2b7c48e40b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    1d2b7c48e410:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    1d2b7c48e414:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    1d2b7c48e419:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    1d2b7c48e41d:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    1d2b7c48e421:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    1d2b7c48e426:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e42b:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c48e431:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c48e436:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e43b:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c48e440:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c48e444:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c48e448:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c48e44d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    1d2b7c48e451:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    1d2b7c48e45a:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48e461:	e9 53 05 00 00                                  	jmp    0x1d2b7c48e9b9
    1d2b7c48e466:	41 83 f8 0f                                     	cmp    r8d,0xf
    1d2b7c48e46a:	0f 84 64 00 00 00                               	je     0x1d2b7c48e4d4
    1d2b7c48e470:	41 f6 c0 01                                     	test   r8b,0x1
    1d2b7c48e474:	0f 85 07 00 00 00                               	jne    0x1d2b7c48e481
    1d2b7c48e47a:	33 ff                                           	xor    edi,edi
    1d2b7c48e47c:	e9 06 00 00 00                                  	jmp    0x1d2b7c48e487
    1d2b7c48e481:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48e484:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48e487:	41 f6 c0 02                                     	test   r8b,0x2
    1d2b7c48e48b:	0f 85 08 00 00 00                               	jne    0x1d2b7c48e499
    1d2b7c48e491:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48e494:	e9 08 00 00 00                                  	jmp    0x1d2b7c48e4a1
    1d2b7c48e499:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    1d2b7c48e49d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48e4a1:	41 f6 c0 04                                     	test   r8b,0x4
    1d2b7c48e4a5:	0f 85 08 00 00 00                               	jne    0x1d2b7c48e4b3
    1d2b7c48e4ab:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48e4ae:	e9 0f 00 00 00                                  	jmp    0x1d2b7c48e4c2
    1d2b7c48e4b3:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    1d2b7c48e4ba:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    1d2b7c48e4be:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c48e4c2:	41 f6 c0 08                                     	test   r8b,0x8
    1d2b7c48e4c6:	0f 85 25 00 00 00                               	jne    0x1d2b7c48e4f1
    1d2b7c48e4cc:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c48e4cf:	e9 2c 00 00 00                                  	jmp    0x1d2b7c48e500
    1d2b7c48e4d4:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    1d2b7c48e4db:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    1d2b7c48e4df:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c48e4e3:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    1d2b7c48e4e7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c48e4eb:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    1d2b7c48e4ee:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c48e4f1:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    1d2b7c48e4f8:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    1d2b7c48e4fc:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    1d2b7c48e500:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    1d2b7c48e504:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48e509:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    1d2b7c48e50f:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    1d2b7c48e515:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    1d2b7c48e51b:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    1d2b7c48e520:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e525:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c48e52b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c48e530:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e535:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c48e53a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c48e53e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c48e542:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c48e547:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x1d2b7c48ccb2
    1d2b7c48e54e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c48e553:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c48e557:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    1d2b7c48e55b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c48e55e:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    1d2b7c48e567:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x1d2b7c48cbca
    1d2b7c48e56e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c48e573:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c48e577:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    1d2b7c48e57b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e580:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c48e586:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c48e58b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e590:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c48e596:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c48e59b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c48e5a0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c48e5a5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    1d2b7c48e5a9:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    1d2b7c48e5b2:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    1d2b7c48e5b7:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    1d2b7c48e5bb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e5c0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c48e5c6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c48e5cb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e5d0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c48e5d6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c48e5db:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c48e5e0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c48e5e5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    1d2b7c48e5e9:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    1d2b7c48e5f2:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    1d2b7c48e5f7:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    1d2b7c48e5fb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c48e600:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c48e606:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c48e60b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c48e610:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c48e615:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c48e619:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c48e61d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c48e622:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c48e626:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    1d2b7c48e62f:	8b c7                                           	mov    eax,edi
    1d2b7c48e631:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48e638:	e9 7c 03 00 00                                  	jmp    0x1d2b7c48e9b9
    1d2b7c48e63d:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    1d2b7c48e643:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    1d2b7c48e647:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    1d2b7c48e64d:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    1d2b7c48e652:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    1d2b7c48e658:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    1d2b7c48e65d:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    1d2b7c48e662:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    1d2b7c48e668:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    1d2b7c48e66d:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    1d2b7c48e672:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    1d2b7c48e677:	41 83 ff 03                                     	cmp    r15d,0x3
    1d2b7c48e67b:	0f 84 a5 02 00 00                               	je     0x1d2b7c48e926
    1d2b7c48e681:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48e685:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    1d2b7c48e68f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    1d2b7c48e699:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    1d2b7c48e6a3:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    1d2b7c48e6ad:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    1d2b7c48e6b7:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    1d2b7c48e6c1:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    1d2b7c48e6cb:	4c 8b ff                                        	mov    r15,rdi
    1d2b7c48e6ce:	33 ff                                           	xor    edi,edi
    1d2b7c48e6d0:	e9 41 00 00 00                                  	jmp    0x1d2b7c48e716
    1d2b7c48e6d5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48e6de:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48e6e7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48e6f0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48e6f9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    1d2b7c48e700:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    1d2b7c48e707:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48e70b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c48e70f:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    1d2b7c48e716:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    1d2b7c48e71d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c48e722:	0f 85 e9 26 00 00                               	jne    0x1d2b7c490e11
    1d2b7c48e728:	8b cf                                           	mov    ecx,edi
    1d2b7c48e72a:	41 d3 e8                                        	shr    r8d,cl
    1d2b7c48e72d:	41 f6 c0 01                                     	test   r8b,0x1
    1d2b7c48e731:	0f 84 4c 01 00 00                               	je     0x1d2b7c48e883
    1d2b7c48e737:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    1d2b7c48e73c:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    1d2b7c48e741:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    1d2b7c48e748:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    1d2b7c48e74d:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    1d2b7c48e752:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    1d2b7c48e759:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    1d2b7c48e75d:	41 83 f8 02                                     	cmp    r8d,0x2
    1d2b7c48e761:	0f 84 b2 00 00 00                               	je     0x1d2b7c48e819
    1d2b7c48e767:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    1d2b7c48e76e:	45 85 c0                                        	test   r8d,r8d
    1d2b7c48e771:	0f 85 44 00 00 00                               	jne    0x1d2b7c48e7bb
    1d2b7c48e777:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    1d2b7c48e77f:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    1d2b7c48e785:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    1d2b7c48e78c:	8b cf                                           	mov    ecx,edi
    1d2b7c48e78e:	c1 e1 04                                        	shl    ecx,0x4
    1d2b7c48e791:	44 03 c1                                        	add    r8d,ecx
    1d2b7c48e794:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48e798:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    1d2b7c48e79e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    1d2b7c48e7a4:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    1d2b7c48e7aa:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c48e7ae:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c48e7b1:	e8 6a da f2 ff                                  	call   0x1d2b7c3bc220
    1d2b7c48e7b6:	e9 c8 00 00 00                                  	jmp    0x1d2b7c48e883
    1d2b7c48e7bb:	4c 8b c2                                        	mov    r8,rdx
    1d2b7c48e7be:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    1d2b7c48e7c3:	44 8b d7                                        	mov    r10d,edi
    1d2b7c48e7c6:	41 8b fb                                        	mov    edi,r11d
    1d2b7c48e7c9:	45 8b da                                        	mov    r11d,r10d
    1d2b7c48e7cc:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    1d2b7c48e7d4:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    1d2b7c48e7da:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    1d2b7c48e7e2:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    1d2b7c48e7e8:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    1d2b7c48e7ee:	41 8b cb                                        	mov    ecx,r11d
    1d2b7c48e7f1:	c1 e1 04                                        	shl    ecx,0x4
    1d2b7c48e7f4:	03 d1                                           	add    edx,ecx
    1d2b7c48e7f6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48e7fa:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    1d2b7c48e800:	44 8b ca                                        	mov    r9d,edx
    1d2b7c48e803:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    1d2b7c48e809:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    1d2b7c48e80f:	e8 24 da f2 ff                                  	call   0x1d2b7c3bc238
    1d2b7c48e814:	e9 6a 00 00 00                                  	jmp    0x1d2b7c48e883
    1d2b7c48e819:	4c 8b c2                                        	mov    r8,rdx
    1d2b7c48e81c:	4d 8b e7                                        	mov    r12,r15
    1d2b7c48e81f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    1d2b7c48e824:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    1d2b7c48e829:	44 8b d7                                        	mov    r10d,edi
    1d2b7c48e82c:	41 8b fb                                        	mov    edi,r11d
    1d2b7c48e82f:	45 8b da                                        	mov    r11d,r10d
    1d2b7c48e832:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    1d2b7c48e83a:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    1d2b7c48e840:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    1d2b7c48e848:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    1d2b7c48e84e:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    1d2b7c48e856:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    1d2b7c48e85c:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    1d2b7c48e863:	41 8b c3                                        	mov    eax,r11d
    1d2b7c48e866:	c1 e0 04                                        	shl    eax,0x4
    1d2b7c48e869:	44 03 f8                                        	add    r15d,eax
    1d2b7c48e86c:	41 57                                           	push   r15
    1d2b7c48e86e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48e872:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    1d2b7c48e878:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    1d2b7c48e87e:	e8 a5 d9 f2 ff                                  	call   0x1d2b7c3bc228
    1d2b7c48e883:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    1d2b7c48e889:	83 c7 01                                        	add    edi,0x1
    1d2b7c48e88c:	83 ff 04                                        	cmp    edi,0x4
    1d2b7c48e88f:	0f 85 6b fe ff ff                               	jne    0x1d2b7c48e700
    1d2b7c48e895:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c48e898:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48e89c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    1d2b7c48e8a6:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    1d2b7c48e8b0:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    1d2b7c48e8b4:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    1d2b7c48e8be:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    1d2b7c48e8c8:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    1d2b7c48e8cd:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    1d2b7c48e8d1:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    1d2b7c48e8db:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    1d2b7c48e8df:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    1d2b7c48e8e9:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    1d2b7c48e8ed:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    1d2b7c48e8f2:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    1d2b7c48e8f6:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    1d2b7c48e900:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    1d2b7c48e904:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    1d2b7c48e90e:	8b c3                                           	mov    eax,ebx
    1d2b7c48e910:	49 8b d0                                        	mov    rdx,r8
    1d2b7c48e913:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48e91a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    1d2b7c48e921:	e9 93 00 00 00                                  	jmp    0x1d2b7c48e9b9
    1d2b7c48e926:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c48e92a:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    1d2b7c48e931:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48e935:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c48e938:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    1d2b7c48e93c:	49 8b d0                                        	mov    rdx,r8
    1d2b7c48e93f:	e8 e4 db f2 ff                                  	call   0x1d2b7c3bc528
    1d2b7c48e944:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    1d2b7c48e947:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c48e94b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c48e952:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    1d2b7c48e959:	e9 5b 00 00 00                                  	jmp    0x1d2b7c48e9b9
    1d2b7c48e95e:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c48e961:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    1d2b7c48e965:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    1d2b7c48e96b:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    1d2b7c48e96e:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    1d2b7c48e978:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    1d2b7c48e97c:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    1d2b7c48e982:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    1d2b7c48e98c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    1d2b7c48e990:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    1d2b7c48e996:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    1d2b7c48e9a0:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    1d2b7c48e9a4:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    1d2b7c48e9aa:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    1d2b7c48e9b4:	8b c2                                           	mov    eax,edx
    1d2b7c48e9b6:	49 8b d7                                        	mov    rdx,r15
    1d2b7c48e9b9:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    1d2b7c48e9c2:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    1d2b7c48e9ca:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    1d2b7c48e9d2:	0f 84 55 00 00 00                               	je     0x1d2b7c48ea2d
    1d2b7c48e9d8:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    1d2b7c48e9e1:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    1d2b7c48e9e9:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    1d2b7c48e9ed:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    1d2b7c48e9f6:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    1d2b7c48e9fe:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    1d2b7c48ea02:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    1d2b7c48ea0b:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    1d2b7c48ea13:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    1d2b7c48ea18:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    1d2b7c48ea20:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c48ea24:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    1d2b7c48ea28:	e9 1f 00 00 00                                  	jmp    0x1d2b7c48ea4c
    1d2b7c48ea2d:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    1d2b7c48ea36:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    1d2b7c48ea3f:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    1d2b7c48ea48:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    1d2b7c48ea4c:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    1d2b7c48ea50:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    1d2b7c48ea55:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    1d2b7c48ea5a:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    1d2b7c48ea60:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    1d2b7c48ea65:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    1d2b7c48ea6b:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    1d2b7c48ea6f:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    1d2b7c48ea74:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    1d2b7c48ea78:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    1d2b7c48ea7e:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    1d2b7c48ea82:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    1d2b7c48ea87:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    1d2b7c48ea8c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    1d2b7c48ea90:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    1d2b7c48ea95:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    1d2b7c48ea9a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48ea9f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    1d2b7c48eaa7:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48eaaf:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48eab7:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48eabf:	41 f6 c0 01                                     	test   r8b,0x1
    1d2b7c48eac3:	0f 84 63 00 00 00                               	je     0x1d2b7c48eb2c
    1d2b7c48eac9:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    1d2b7c48eacf:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    1d2b7c48ead6:	0f 85 35 00 00 00                               	jne    0x1d2b7c48eb11
    1d2b7c48eadc:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    1d2b7c48eae1:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    1d2b7c48eae7:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    1d2b7c48eaed:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    1d2b7c48eaf3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48eaf7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48eafa:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c48eb00:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c48eb03:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    1d2b7c48eb07:	e8 54 d7 f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48eb0c:	e9 1b 00 00 00                                  	jmp    0x1d2b7c48eb2c
    1d2b7c48eb11:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48eb15:	8b d8                                           	mov    ebx,eax
    1d2b7c48eb17:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48eb1a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c48eb20:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c48eb23:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    1d2b7c48eb27:	e8 4c d7 f2 ff                                  	call   0x1d2b7c3bc278
    1d2b7c48eb2c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    1d2b7c48eb33:	0f 84 6c 00 00 00                               	je     0x1d2b7c48eba5
    1d2b7c48eb39:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c48eb3c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48eb40:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    1d2b7c48eb47:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    1d2b7c48eb4e:	0f 85 36 00 00 00                               	jne    0x1d2b7c48eb8a
    1d2b7c48eb54:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    1d2b7c48eb5b:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    1d2b7c48eb62:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    1d2b7c48eb69:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    1d2b7c48eb70:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48eb74:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48eb77:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c48eb7d:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c48eb80:	e8 db d6 f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48eb85:	e9 1b 00 00 00                                  	jmp    0x1d2b7c48eba5
    1d2b7c48eb8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48eb8e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48eb91:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c48eb97:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c48eb9a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    1d2b7c48eba0:	e8 d3 d6 f2 ff                                  	call   0x1d2b7c3bc278
    1d2b7c48eba5:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    1d2b7c48ebac:	0f 84 72 00 00 00                               	je     0x1d2b7c48ec24
    1d2b7c48ebb2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c48ebb5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48ebb9:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    1d2b7c48ebc0:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    1d2b7c48ebc7:	0f 85 39 00 00 00                               	jne    0x1d2b7c48ec06
    1d2b7c48ebcd:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    1d2b7c48ebd4:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    1d2b7c48ebdb:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    1d2b7c48ebe2:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    1d2b7c48ebe9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ebed:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48ebf0:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c48ebf6:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48ebfc:	e8 5f d6 f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48ec01:	e9 1e 00 00 00                                  	jmp    0x1d2b7c48ec24
    1d2b7c48ec06:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ec0a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48ec0d:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c48ec13:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48ec19:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    1d2b7c48ec1f:	e8 54 d6 f2 ff                                  	call   0x1d2b7c3bc278
    1d2b7c48ec24:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    1d2b7c48ec2b:	0f 85 4e 00 00 00                               	jne    0x1d2b7c48ec7f
    1d2b7c48ec31:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48ec35:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48ec3a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c48ec3e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48ec43:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48ec49:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48ec4f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48ec54:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48ec5c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48ec64:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48ec6c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48ec74:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48ec7a:	e9 2b 1d 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48ec7f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c48ec82:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48ec86:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    1d2b7c48ec8d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    1d2b7c48ec94:	0f 85 82 00 00 00                               	jne    0x1d2b7c48ed1c
    1d2b7c48ec9a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    1d2b7c48eca1:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    1d2b7c48eca8:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    1d2b7c48ecaf:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    1d2b7c48ecb6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ecba:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48ecbd:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c48ecc3:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48ecc9:	e8 92 d5 f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c48ecce:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48ecd2:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48ecd7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c48ecdb:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48ece0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48ece6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48ecec:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48ecf1:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48ecf9:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48ed01:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48ed09:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48ed11:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48ed17:	e9 8e 1c 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48ed1c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48ed20:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c48ed23:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c48ed29:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48ed2f:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    1d2b7c48ed35:	e8 3e d5 f2 ff                                  	call   0x1d2b7c3bc278
    1d2b7c48ed3a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48ed3e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48ed43:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c48ed47:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48ed4c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48ed52:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48ed58:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48ed5d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48ed65:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48ed6d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48ed75:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48ed7d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48ed83:	e9 22 1c 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48ed88:	44 8b c3                                        	mov    r8d,ebx
    1d2b7c48ed8b:	41 83 e0 01                                     	and    r8d,0x1
    1d2b7c48ed8f:	41 f7 d8                                        	neg    r8d
    1d2b7c48ed92:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    1d2b7c48ed97:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c48ed9c:	44 8b c3                                        	mov    r8d,ebx
    1d2b7c48ed9f:	41 c1 e0 1e                                     	shl    r8d,0x1e
    1d2b7c48eda3:	41 c1 f8 1f                                     	sar    r8d,0x1f
    1d2b7c48eda7:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    1d2b7c48edad:	44 8b c3                                        	mov    r8d,ebx
    1d2b7c48edb0:	41 c1 e0 1d                                     	shl    r8d,0x1d
    1d2b7c48edb4:	41 c1 f8 1f                                     	sar    r8d,0x1f
    1d2b7c48edb8:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    1d2b7c48edbe:	44 8b c3                                        	mov    r8d,ebx
    1d2b7c48edc1:	41 c1 e0 1c                                     	shl    r8d,0x1c
    1d2b7c48edc5:	41 c1 f8 1f                                     	sar    r8d,0x1f
    1d2b7c48edc9:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    1d2b7c48edcf:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    1d2b7c48edd8:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c48eddd:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    1d2b7c48ede4:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    1d2b7c48edeb:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    1d2b7c48edf0:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    1d2b7c48edf6:	4c 8b ff                                        	mov    r15,rdi
    1d2b7c48edf9:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    1d2b7c48ee00:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    1d2b7c48ee04:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    1d2b7c48ee09:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    1d2b7c48ee0f:	4d 03 c7                                        	add    r8,r15
    1d2b7c48ee12:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    1d2b7c48ee17:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    1d2b7c48ee1d:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    1d2b7c48ee25:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    1d2b7c48ee29:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    1d2b7c48ee31:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    1d2b7c48ee35:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    1d2b7c48ee3e:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    1d2b7c48ee43:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    1d2b7c48ee4a:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    1d2b7c48ee51:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    1d2b7c48ee56:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    1d2b7c48ee5c:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    1d2b7c48ee63:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    1d2b7c48ee6a:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    1d2b7c48ee6e:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    1d2b7c48ee73:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    1d2b7c48ee79:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    1d2b7c48ee7d:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    1d2b7c48ee82:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    1d2b7c48ee88:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    1d2b7c48ee8c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    1d2b7c48ee94:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    1d2b7c48ee98:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    1d2b7c48ee9c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x1d2b7c489811
    1d2b7c48eea3:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    1d2b7c48eea8:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    1d2b7c48eead:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    1d2b7c48eeb1:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    1d2b7c48eeb5:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    1d2b7c48eebd:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    1d2b7c48eec2:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    1d2b7c48eec7:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    1d2b7c48eecc:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    1d2b7c48eed1:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    1d2b7c48eed5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48eed9:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    1d2b7c48eedd:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    1d2b7c48eee4:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    1d2b7c48eeea:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    1d2b7c48eeef:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    1d2b7c48eef6:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    1d2b7c48eefc:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    1d2b7c48ef01:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    1d2b7c48ef06:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    1d2b7c48ef0d:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    1d2b7c48ef13:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    1d2b7c48ef18:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    1d2b7c48ef1d:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    1d2b7c48ef25:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    1d2b7c48ef29:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c48ef2d:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    1d2b7c48ef31:	44 8b ce                                        	mov    r9d,esi
    1d2b7c48ef34:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    1d2b7c48ef3c:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    1d2b7c48ef42:	44 03 cb                                        	add    r9d,ebx
    1d2b7c48ef45:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    1d2b7c48ef49:	03 f3                                           	add    esi,ebx
    1d2b7c48ef4b:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    1d2b7c48ef50:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    1d2b7c48ef55:	85 c0                                           	test   eax,eax
    1d2b7c48ef57:	0f 85 07 00 00 00                               	jne    0x1d2b7c48ef64
    1d2b7c48ef5d:	33 d2                                           	xor    edx,edx
    1d2b7c48ef5f:	e9 13 01 00 00                                  	jmp    0x1d2b7c48f077
    1d2b7c48ef64:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    1d2b7c48ef6c:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    1d2b7c48ef75:	75 e6                                           	jne    0x1d2b7c48ef5d
    1d2b7c48ef77:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    1d2b7c48ef7c:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    1d2b7c48ef7f:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    1d2b7c48ef85:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c48ef8b:	3b cb                                           	cmp    ecx,ebx
    1d2b7c48ef8d:	0f 8c 0d 00 00 00                               	jl     0x1d2b7c48efa0
    1d2b7c48ef93:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48ef9b:	e9 0a 00 00 00                                  	jmp    0x1d2b7c48efaa
    1d2b7c48efa0:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    1d2b7c48efa4:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    1d2b7c48efaa:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    1d2b7c48efae:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    1d2b7c48efb3:	81 ea 00 02 00 00                               	sub    edx,0x200
    1d2b7c48efb9:	83 fa 07                                        	cmp    edx,0x7
    1d2b7c48efbc:	0f 83 0b 00 00 00                               	jae    0x1d2b7c48efcd
    1d2b7c48efc2:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x1d2b7c490f70
    1d2b7c48efc9:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    1d2b7c48efcd:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    1d2b7c48efd2:	e9 48 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48efd7:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    1d2b7c48efdc:	e9 3e 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48efe1:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    1d2b7c48efe7:	e9 33 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48efec:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    1d2b7c48eff1:	e9 29 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48eff6:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    1d2b7c48effc:	e9 1e 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48f001:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    1d2b7c48f007:	e9 13 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48f00c:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    1d2b7c48f012:	e9 08 00 00 00                                  	jmp    0x1d2b7c48f01f
    1d2b7c48f017:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    1d2b7c48f01f:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    1d2b7c48f023:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    1d2b7c48f027:	85 d2                                           	test   edx,edx
    1d2b7c48f029:	0f 85 3c 00 00 00                               	jne    0x1d2b7c48f06b
    1d2b7c48f02f:	4d 8b e0                                        	mov    r12,r8
    1d2b7c48f032:	4c 8b c7                                        	mov    r8,rdi
    1d2b7c48f035:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48f03a:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48f03f:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48f045:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48f04b:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48f050:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48f058:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48f060:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48f066:	e9 3f 19 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48f06b:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    1d2b7c48f072:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c48f077:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    1d2b7c48f081:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c48f086:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48f08b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x1d2b7c48f079
    1d2b7c48f092:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c48f097:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c48f09b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    1d2b7c48f0a0:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    1d2b7c48f0a5:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    1d2b7c48f0a9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c48f0ae:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    1d2b7c48f0b2:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    1d2b7c48f0b9:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    1d2b7c48f0bd:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    1d2b7c48f0c3:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    1d2b7c48f0c8:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    1d2b7c48f0ce:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    1d2b7c48f0d2:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    1d2b7c48f0d6:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    1d2b7c48f0dc:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    1d2b7c48f0e0:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    1d2b7c48f0e4:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    1d2b7c48f0e9:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    1d2b7c48f0ed:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    1d2b7c48f0f3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    1d2b7c48f0f7:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    1d2b7c48f0ff:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    1d2b7c48f105:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c48f109:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    1d2b7c48f10d:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    1d2b7c48f113:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    1d2b7c48f117:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    1d2b7c48f11b:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    1d2b7c48f11f:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    1d2b7c48f123:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    1d2b7c48f129:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    1d2b7c48f12d:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    1d2b7c48f135:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    1d2b7c48f13b:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    1d2b7c48f13f:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    1d2b7c48f143:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    1d2b7c48f149:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    1d2b7c48f14d:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    1d2b7c48f151:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    1d2b7c48f155:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    1d2b7c48f159:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    1d2b7c48f15f:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    1d2b7c48f163:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    1d2b7c48f16b:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    1d2b7c48f171:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    1d2b7c48f176:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    1d2b7c48f17b:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    1d2b7c48f181:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    1d2b7c48f185:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    1d2b7c48f189:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    1d2b7c48f18e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    1d2b7c48f195:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    1d2b7c48f19c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    1d2b7c48f1a4:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    1d2b7c48f1ab:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    1d2b7c48f1af:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    1d2b7c48f1b7:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    1d2b7c48f1be:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    1d2b7c48f1c5:	41 83 f9 01                                     	cmp    r9d,0x1
    1d2b7c48f1c9:	0f 87 fd 06 00 00                               	ja     0x1d2b7c48f8cc
    1d2b7c48f1cf:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    1d2b7c48f1d4:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    1d2b7c48f1d9:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    1d2b7c48f1e0:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    1d2b7c48f1e4:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    1d2b7c48f1ea:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    1d2b7c48f1f0:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    1d2b7c48f1f6:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    1d2b7c48f1fb:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    1d2b7c48f1ff:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    1d2b7c48f204:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    1d2b7c48f20b:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    1d2b7c48f20f:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    1d2b7c48f215:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    1d2b7c48f219:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    1d2b7c48f21f:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    1d2b7c48f223:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    1d2b7c48f227:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    1d2b7c48f22d:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    1d2b7c48f231:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    1d2b7c48f235:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    1d2b7c48f239:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    1d2b7c48f23f:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    1d2b7c48f243:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    1d2b7c48f247:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x1d2b7c48c461
    1d2b7c48f24e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c48f253:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c48f257:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    1d2b7c48f25b:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    1d2b7c48f261:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x1d2b7c48825e
    1d2b7c48f268:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    1d2b7c48f26d:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    1d2b7c48f272:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    1d2b7c48f278:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    1d2b7c48f27d:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    1d2b7c48f282:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    1d2b7c48f28a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x1d2b7c48c56c
    1d2b7c48f291:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c48f296:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c48f29b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    1d2b7c48f2a3:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x1d2b7c48c49d
    1d2b7c48f2aa:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    1d2b7c48f2af:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    1d2b7c48f2b7:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x1d2b7c48c4ac
    1d2b7c48f2be:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c48f2c3:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c48f2c7:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    1d2b7c48f2cc:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    1d2b7c48f2d1:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    1d2b7c48f2d5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c48f2da:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c48f2de:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    1d2b7c48f2e8:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    1d2b7c48f2ec:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c48f2f1:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    1d2b7c48f2f6:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    1d2b7c48f2fb:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    1d2b7c48f300:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    1d2b7c48f304:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    1d2b7c48f309:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    1d2b7c48f30e:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    1d2b7c48f314:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    1d2b7c48f319:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c48f31e:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    1d2b7c48f322:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    1d2b7c48f328:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x1d2b7c48825e
    1d2b7c48f32f:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    1d2b7c48f335:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    1d2b7c48f33a:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    1d2b7c48f340:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    1d2b7c48f345:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    1d2b7c48f34a:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x1d2b7c48c49d
    1d2b7c48f351:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    1d2b7c48f356:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    1d2b7c48f35b:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    1d2b7c48f360:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    1d2b7c48f365:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    1d2b7c48f36a:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    1d2b7c48f374:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    1d2b7c48f378:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    1d2b7c48f380:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    1d2b7c48f385:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x1d2b7c48e139
    1d2b7c48f38c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c48f391:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c48f396:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    1d2b7c48f39b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x1d2b7c48825e
    1d2b7c48f3a2:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    1d2b7c48f3a8:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    1d2b7c48f3ad:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    1d2b7c48f3b3:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    1d2b7c48f3b7:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    1d2b7c48f3bc:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x1d2b7c48c49d
    1d2b7c48f3c3:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    1d2b7c48f3c8:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    1d2b7c48f3cd:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    1d2b7c48f3d2:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    1d2b7c48f3d7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    1d2b7c48f3dc:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    1d2b7c48f3e2:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    1d2b7c48f3e7:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    1d2b7c48f3ec:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    1d2b7c48f3f1:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x1d2b7c48825e
    1d2b7c48f3f8:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c48f3fd:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    1d2b7c48f402:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c48f408:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    1d2b7c48f40d:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    1d2b7c48f412:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x1d2b7c48c49d
    1d2b7c48f419:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c48f41e:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    1d2b7c48f423:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    1d2b7c48f428:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    1d2b7c48f42c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c48f431:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    1d2b7c48f438:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    1d2b7c48f43f:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    1d2b7c48f447:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    1d2b7c48f451:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    1d2b7c48f459:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    1d2b7c48f463:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    1d2b7c48f46b:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    1d2b7c48f475:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    1d2b7c48f47a:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    1d2b7c48f47f:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    1d2b7c48f484:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    1d2b7c48f48b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    1d2b7c48f492:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    1d2b7c48f499:	33 c0                                           	xor    eax,eax
    1d2b7c48f49b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    1d2b7c48f4a1:	e9 2a 00 00 00                                  	jmp    0x1d2b7c48f4d0
    1d2b7c48f4a6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48f4af:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c48f4b8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    1d2b7c48f4c0:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    1d2b7c48f4c6:	45 8b cc                                        	mov    r9d,r12d
    1d2b7c48f4c9:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    1d2b7c48f4d0:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c48f4d5:	0f 85 5c 19 00 00                               	jne    0x1d2b7c490e37
    1d2b7c48f4db:	8b c8                                           	mov    ecx,eax
    1d2b7c48f4dd:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    1d2b7c48f4e4:	41 d3 ef                                        	shr    r15d,cl
    1d2b7c48f4e7:	41 f6 c7 01                                     	test   r15b,0x1
    1d2b7c48f4eb:	0f 85 0a 00 00 00                               	jne    0x1d2b7c48f4fb
    1d2b7c48f4f1:	45 8b e1                                        	mov    r12d,r9d
    1d2b7c48f4f4:	8b f8                                           	mov    edi,eax
    1d2b7c48f4f6:	e9 3d 03 00 00                                  	jmp    0x1d2b7c48f838
    1d2b7c48f4fb:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    1d2b7c48f503:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    1d2b7c48f507:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    1d2b7c48f50f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    1d2b7c48f513:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    1d2b7c48f517:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    1d2b7c48f51e:	45 85 db                                        	test   r11d,r11d
    1d2b7c48f521:	0f 85 51 00 00 00                               	jne    0x1d2b7c48f578
    1d2b7c48f527:	85 f6                                           	test   esi,esi
    1d2b7c48f529:	0f 84 c8 19 00 00                               	je     0x1d2b7c490ef7
    1d2b7c48f52f:	83 fe ff                                        	cmp    esi,0xffffffff
    1d2b7c48f532:	0f 84 94 19 00 00                               	je     0x1d2b7c490ecc
    1d2b7c48f538:	44 8b d0                                        	mov    r10d,eax
    1d2b7c48f53b:	8b c1                                           	mov    eax,ecx
    1d2b7c48f53d:	41 8b ca                                        	mov    ecx,r10d
    1d2b7c48f540:	99                                              	cdq
    1d2b7c48f541:	f7 fe                                           	idiv   esi
    1d2b7c48f543:	8b c2                                           	mov    eax,edx
    1d2b7c48f545:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c48f548:	23 c6                                           	and    eax,esi
    1d2b7c48f54a:	03 c2                                           	add    eax,edx
    1d2b7c48f54c:	83 fe ff                                        	cmp    esi,0xffffffff
    1d2b7c48f54f:	0f 84 80 19 00 00                               	je     0x1d2b7c490ed5
    1d2b7c48f555:	44 8b d0                                        	mov    r10d,eax
    1d2b7c48f558:	41 8b c1                                        	mov    eax,r9d
    1d2b7c48f55b:	45 8b ca                                        	mov    r9d,r10d
    1d2b7c48f55e:	99                                              	cdq
    1d2b7c48f55f:	f7 fe                                           	idiv   esi
    1d2b7c48f561:	8b c2                                           	mov    eax,edx
    1d2b7c48f563:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c48f566:	23 c6                                           	and    eax,esi
    1d2b7c48f568:	03 c2                                           	add    eax,edx
    1d2b7c48f56a:	45 8b d1                                        	mov    r10d,r9d
    1d2b7c48f56d:	44 8b c8                                        	mov    r9d,eax
    1d2b7c48f570:	41 8b c2                                        	mov    eax,r10d
    1d2b7c48f573:	e9 0e 00 00 00                                  	jmp    0x1d2b7c48f586
    1d2b7c48f578:	41 23 cb                                        	and    ecx,r11d
    1d2b7c48f57b:	45 23 cb                                        	and    r9d,r11d
    1d2b7c48f57e:	44 8b d1                                        	mov    r10d,ecx
    1d2b7c48f581:	8b c8                                           	mov    ecx,eax
    1d2b7c48f583:	41 8b c2                                        	mov    eax,r10d
    1d2b7c48f586:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    1d2b7c48f58a:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48f58d:	0f 85 47 00 00 00                               	jne    0x1d2b7c48f5da
    1d2b7c48f593:	85 ff                                           	test   edi,edi
    1d2b7c48f595:	0f 84 57 19 00 00                               	je     0x1d2b7c490ef2
    1d2b7c48f59b:	83 ff ff                                        	cmp    edi,0xffffffff
    1d2b7c48f59e:	0f 84 3b 19 00 00                               	je     0x1d2b7c490edf
    1d2b7c48f5a4:	8b c8                                           	mov    ecx,eax
    1d2b7c48f5a6:	8b c2                                           	mov    eax,edx
    1d2b7c48f5a8:	99                                              	cdq
    1d2b7c48f5a9:	f7 ff                                           	idiv   edi
    1d2b7c48f5ab:	8b c2                                           	mov    eax,edx
    1d2b7c48f5ad:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c48f5b0:	23 c7                                           	and    eax,edi
    1d2b7c48f5b2:	03 c2                                           	add    eax,edx
    1d2b7c48f5b4:	83 ff ff                                        	cmp    edi,0xffffffff
    1d2b7c48f5b7:	0f 84 2b 19 00 00                               	je     0x1d2b7c490ee8
    1d2b7c48f5bd:	44 8b d0                                        	mov    r10d,eax
    1d2b7c48f5c0:	41 8b c7                                        	mov    eax,r15d
    1d2b7c48f5c3:	45 8b fa                                        	mov    r15d,r10d
    1d2b7c48f5c6:	99                                              	cdq
    1d2b7c48f5c7:	f7 ff                                           	idiv   edi
    1d2b7c48f5c9:	8b c2                                           	mov    eax,edx
    1d2b7c48f5cb:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c48f5ce:	23 f8                                           	and    edi,eax
    1d2b7c48f5d0:	03 fa                                           	add    edi,edx
    1d2b7c48f5d2:	41 8b d7                                        	mov    edx,r15d
    1d2b7c48f5d5:	e9 0b 00 00 00                                  	jmp    0x1d2b7c48f5e5
    1d2b7c48f5da:	41 23 d4                                        	and    edx,r12d
    1d2b7c48f5dd:	45 23 e7                                        	and    r12d,r15d
    1d2b7c48f5e0:	41 8b fc                                        	mov    edi,r12d
    1d2b7c48f5e3:	8b c8                                           	mov    ecx,eax
    1d2b7c48f5e5:	8b c1                                           	mov    eax,ecx
    1d2b7c48f5e7:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    1d2b7c48f5ed:	44 8b ff                                        	mov    r15d,edi
    1d2b7c48f5f0:	41 d3 e7                                        	shl    r15d,cl
    1d2b7c48f5f3:	0f af fe                                        	imul   edi,esi
    1d2b7c48f5f6:	45 85 db                                        	test   r11d,r11d
    1d2b7c48f5f9:	41 0f 45 ff                                     	cmovne edi,r15d
    1d2b7c48f5fd:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    1d2b7c48f601:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    1d2b7c48f605:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    1d2b7c48f60b:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    1d2b7c48f610:	41 03 f9                                        	add    edi,r9d
    1d2b7c48f613:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c48f616:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    1d2b7c48f61c:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    1d2b7c48f621:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    1d2b7c48f625:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    1d2b7c48f62b:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    1d2b7c48f632:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    1d2b7c48f63a:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    1d2b7c48f63e:	41 bf 00 01 00 00                               	mov    r15d,0x100
    1d2b7c48f644:	44 8b e1                                        	mov    r12d,ecx
    1d2b7c48f647:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    1d2b7c48f64d:	45 0f 4d e7                                     	cmovge r12d,r15d
    1d2b7c48f651:	33 c9                                           	xor    ecx,ecx
    1d2b7c48f653:	45 85 e4                                        	test   r12d,r12d
    1d2b7c48f656:	41 0f 4f cc                                     	cmovg  ecx,r12d
    1d2b7c48f65a:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    1d2b7c48f661:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    1d2b7c48f668:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    1d2b7c48f66d:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c48f672:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    1d2b7c48f676:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    1d2b7c48f67a:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    1d2b7c48f67f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    1d2b7c48f683:	8b f9                                           	mov    edi,ecx
    1d2b7c48f685:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    1d2b7c48f68b:	41 0f 4d ff                                     	cmovge edi,r15d
    1d2b7c48f68f:	33 c9                                           	xor    ecx,ecx
    1d2b7c48f691:	85 ff                                           	test   edi,edi
    1d2b7c48f693:	0f 4f cf                                        	cmovg  ecx,edi
    1d2b7c48f696:	44 2b f9                                        	sub    r15d,ecx
    1d2b7c48f699:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    1d2b7c48f69e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c48f6a3:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    1d2b7c48f6a8:	44 8b f9                                        	mov    r15d,ecx
    1d2b7c48f6ab:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    1d2b7c48f6b1:	8b fa                                           	mov    edi,edx
    1d2b7c48f6b3:	d3 e7                                           	shl    edi,cl
    1d2b7c48f6b5:	0f af d6                                        	imul   edx,esi
    1d2b7c48f6b8:	45 85 db                                        	test   r11d,r11d
    1d2b7c48f6bb:	0f 45 d7                                        	cmovne edx,edi
    1d2b7c48f6be:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    1d2b7c48f6c1:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c48f6c4:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    1d2b7c48f6ca:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    1d2b7c48f6cf:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    1d2b7c48f6d3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c48f6d6:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    1d2b7c48f6dc:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    1d2b7c48f6e1:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    1d2b7c48f6e6:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    1d2b7c48f6ea:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    1d2b7c48f6ef:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c48f6f4:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    1d2b7c48f6f9:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    1d2b7c48f6fd:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x1d2b7c48e229
    1d2b7c48f704:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c48f709:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c48f70d:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    1d2b7c48f711:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    1d2b7c48f716:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    1d2b7c48f71b:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    1d2b7c48f71f:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    1d2b7c48f723:	44 8b ff                                        	mov    r15d,edi
    1d2b7c48f726:	41 c1 ef 18                                     	shr    r15d,0x18
    1d2b7c48f72a:	8b c7                                           	mov    eax,edi
    1d2b7c48f72c:	c1 e8 10                                        	shr    eax,0x10
    1d2b7c48f72f:	8b d7                                           	mov    edx,edi
    1d2b7c48f731:	c1 ea 08                                        	shr    edx,0x8
    1d2b7c48f734:	40 0f b6 ff                                     	movzx  edi,dil
    1d2b7c48f738:	44 8b d7                                        	mov    r10d,edi
    1d2b7c48f73b:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f740:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    1d2b7c48f746:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    1d2b7c48f74b:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f74f:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    1d2b7c48f755:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    1d2b7c48f75a:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    1d2b7c48f761:	0f 84 77 00 00 00                               	je     0x1d2b7c48f7de
    1d2b7c48f767:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    1d2b7c48f76d:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    1d2b7c48f773:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    1d2b7c48f77b:	0f b6 d2                                        	movzx  edx,dl
    1d2b7c48f77e:	44 8b d2                                        	mov    r10d,edx
    1d2b7c48f781:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f786:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f78a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    1d2b7c48f790:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    1d2b7c48f796:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    1d2b7c48f79e:	0f b6 c0                                        	movzx  eax,al
    1d2b7c48f7a1:	44 8b d0                                        	mov    r10d,eax
    1d2b7c48f7a4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f7a9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f7ad:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    1d2b7c48f7b3:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    1d2b7c48f7b9:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    1d2b7c48f7c1:	45 8b d7                                        	mov    r10d,r15d
    1d2b7c48f7c4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f7c9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f7cd:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    1d2b7c48f7d3:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    1d2b7c48f7d9:	e9 5a 00 00 00                                  	jmp    0x1d2b7c48f838
    1d2b7c48f7de:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    1d2b7c48f7e4:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    1d2b7c48f7ec:	45 8b d7                                        	mov    r10d,r15d
    1d2b7c48f7ef:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f7f4:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f7f8:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    1d2b7c48f7fe:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    1d2b7c48f806:	0f b6 c0                                        	movzx  eax,al
    1d2b7c48f809:	44 8b d0                                        	mov    r10d,eax
    1d2b7c48f80c:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f811:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f815:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    1d2b7c48f81b:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    1d2b7c48f823:	0f b6 c2                                        	movzx  eax,dl
    1d2b7c48f826:	44 8b d0                                        	mov    r10d,eax
    1d2b7c48f829:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c48f82e:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c48f832:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    1d2b7c48f838:	8d 47 01                                        	lea    eax,[rdi+0x1]
    1d2b7c48f83b:	83 f8 04                                        	cmp    eax,0x4
    1d2b7c48f83e:	0f 85 7c fc ff ff                               	jne    0x1d2b7c48f4c0
    1d2b7c48f844:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    1d2b7c48f84e:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    1d2b7c48f858:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    1d2b7c48f85f:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    1d2b7c48f869:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48f871:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48f879:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    1d2b7c48f881:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    1d2b7c48f888:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c48f88c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    1d2b7c48f894:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    1d2b7c48f89a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    1d2b7c48f8a0:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    1d2b7c48f8a7:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    1d2b7c48f8ae:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    1d2b7c48f8b5:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    1d2b7c48f8bc:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    1d2b7c48f8c4:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    1d2b7c48f8cc:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    1d2b7c48f8d4:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    1d2b7c48f8dc:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    1d2b7c48f8e5:	0f 84 04 04 00 00                               	je     0x1d2b7c48fcef
    1d2b7c48f8eb:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    1d2b7c48f8f2:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    1d2b7c48f8f8:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    1d2b7c48f8fc:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    1d2b7c48f902:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    1d2b7c48f906:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    1d2b7c48f90a:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    1d2b7c48f910:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    1d2b7c48f914:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    1d2b7c48f919:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    1d2b7c48f91e:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    1d2b7c48f922:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    1d2b7c48f927:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    1d2b7c48f92c:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    1d2b7c48f930:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c48f935:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x1d2b7c489811
    1d2b7c48f93c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c48f941:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    1d2b7c48f946:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    1d2b7c48f94e:	81 fe 00 08 00 00                               	cmp    esi,0x800
    1d2b7c48f954:	0f 84 8d 01 00 00                               	je     0x1d2b7c48fae7
    1d2b7c48f95a:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    1d2b7c48f960:	0f 84 23 01 00 00                               	je     0x1d2b7c48fa89
    1d2b7c48f966:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    1d2b7c48f970:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    1d2b7c48f974:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    1d2b7c48f978:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x1d2b7c4885ef
    1d2b7c48f97f:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    1d2b7c48f984:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    1d2b7c48f988:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    1d2b7c48f990:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    1d2b7c48f998:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    1d2b7c48f9a0:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    1d2b7c48f9a8:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    1d2b7c48f9b0:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    1d2b7c48f9b8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48f9bc:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    1d2b7c48f9c0:	e8 f3 eb f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48f9c5:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c48f9ca:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48f9d2:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    1d2b7c48f9d6:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    1d2b7c48f9de:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    1d2b7c48f9e2:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x1d2b7c4885ef
    1d2b7c48f9e9:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    1d2b7c48f9ee:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    1d2b7c48f9f3:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    1d2b7c48f9fb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48f9ff:	e8 b4 eb f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48fa04:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    1d2b7c48fa0c:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    1d2b7c48fa12:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48fa1a:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    1d2b7c48fa1f:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    1d2b7c48fa27:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    1d2b7c48fa2b:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x1d2b7c4885ef
    1d2b7c48fa32:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    1d2b7c48fa37:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    1d2b7c48fa3c:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    1d2b7c48fa44:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48fa48:	e8 6b eb f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48fa4d:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    1d2b7c48fa55:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    1d2b7c48fa5b:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48fa63:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    1d2b7c48fa68:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    1d2b7c48fa70:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    1d2b7c48fa74:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x1d2b7c4885ef
    1d2b7c48fa7b:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    1d2b7c48fa80:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c48fa84:	e9 3a 01 00 00                                  	jmp    0x1d2b7c48fbc3
    1d2b7c48fa89:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    1d2b7c48fa93:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    1d2b7c48fa9d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    1d2b7c48faa1:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    1d2b7c48faa5:	7a 06                                           	jp     0x1d2b7c48faad
    1d2b7c48faa7:	0f 84 2d 00 00 00                               	je     0x1d2b7c48fada
    1d2b7c48faad:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    1d2b7c48fab2:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    1d2b7c48fab6:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    1d2b7c48faba:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    1d2b7c48fabf:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    1d2b7c48fac4:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    1d2b7c48fac8:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    1d2b7c48facc:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    1d2b7c48fad1:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    1d2b7c48fad5:	e9 9f 01 00 00                                  	jmp    0x1d2b7c48fc79
    1d2b7c48fada:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    1d2b7c48fae2:	e9 92 01 00 00                                  	jmp    0x1d2b7c48fc79
    1d2b7c48fae7:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    1d2b7c48faeb:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    1d2b7c48faf5:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x1d2b7c4885ef
    1d2b7c48fafc:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    1d2b7c48fb01:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    1d2b7c48fb05:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    1d2b7c48fb0d:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    1d2b7c48fb15:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    1d2b7c48fb1d:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    1d2b7c48fb25:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    1d2b7c48fb2d:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    1d2b7c48fb35:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48fb39:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    1d2b7c48fb3d:	e8 76 ea f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48fb42:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c48fb47:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48fb4f:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    1d2b7c48fb53:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    1d2b7c48fb5b:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    1d2b7c48fb63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48fb67:	e8 4c ea f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48fb6c:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    1d2b7c48fb74:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    1d2b7c48fb7a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48fb82:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    1d2b7c48fb87:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    1d2b7c48fb8f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    1d2b7c48fb97:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48fb9b:	e8 18 ea f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48fba0:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    1d2b7c48fba8:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    1d2b7c48fbae:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48fbb6:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    1d2b7c48fbbb:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    1d2b7c48fbc3:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    1d2b7c48fbcb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c48fbcf:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c48fbd3:	e8 e0 e9 f2 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c48fbd8:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    1d2b7c48fbe0:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    1d2b7c48fbe6:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c48fbee:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c48fbf2:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    1d2b7c48fbfa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c48fbfe:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    1d2b7c48fc06:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    1d2b7c48fc0c:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    1d2b7c48fc12:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    1d2b7c48fc1a:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    1d2b7c48fc22:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    1d2b7c48fc2a:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    1d2b7c48fc32:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    1d2b7c48fc36:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    1d2b7c48fc3d:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    1d2b7c48fc44:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    1d2b7c48fc4b:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    1d2b7c48fc52:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    1d2b7c48fc5a:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    1d2b7c48fc62:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    1d2b7c48fc69:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    1d2b7c48fc71:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c48fc79:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    1d2b7c48fc81:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    1d2b7c48fc86:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    1d2b7c48fc8a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    1d2b7c48fc8e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c48fc93:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    1d2b7c48fc99:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    1d2b7c48fc9d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    1d2b7c48fca1:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    1d2b7c48fca8:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    1d2b7c48fcae:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    1d2b7c48fcb2:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    1d2b7c48fcb6:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c48fcbb:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    1d2b7c48fcbf:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    1d2b7c48fcc6:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    1d2b7c48fccc:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    1d2b7c48fcd0:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    1d2b7c48fcd5:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    1d2b7c48fcd9:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    1d2b7c48fce0:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    1d2b7c48fce6:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    1d2b7c48fcea:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    1d2b7c48fcef:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    1d2b7c48fcf7:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    1d2b7c48fd00:	0f 85 0d 00 00 00                               	jne    0x1d2b7c48fd13
    1d2b7c48fd06:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    1d2b7c48fd0e:	e9 83 00 00 00                                  	jmp    0x1d2b7c48fd96
    1d2b7c48fd13:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    1d2b7c48fd1a:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    1d2b7c48fd20:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c48fd25:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    1d2b7c48fd2d:	81 ee 00 02 00 00                               	sub    esi,0x200
    1d2b7c48fd33:	83 fe 07                                        	cmp    esi,0x7
    1d2b7c48fd36:	0f 83 0b 00 00 00                               	jae    0x1d2b7c48fd47
    1d2b7c48fd3c:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x1d2b7c490f38
    1d2b7c48fd43:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    1d2b7c48fd47:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    1d2b7c48fd4c:	e9 39 00 00 00                                  	jmp    0x1d2b7c48fd8a
    1d2b7c48fd51:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    1d2b7c48fd57:	e9 2e 00 00 00                                  	jmp    0x1d2b7c48fd8a
    1d2b7c48fd5c:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    1d2b7c48fd61:	e9 24 00 00 00                                  	jmp    0x1d2b7c48fd8a
    1d2b7c48fd66:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    1d2b7c48fd6c:	e9 19 00 00 00                                  	jmp    0x1d2b7c48fd8a
    1d2b7c48fd71:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    1d2b7c48fd76:	e9 0f 00 00 00                                  	jmp    0x1d2b7c48fd8a
    1d2b7c48fd7b:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    1d2b7c48fd80:	e9 05 00 00 00                                  	jmp    0x1d2b7c48fd8a
    1d2b7c48fd85:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    1d2b7c48fd8a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    1d2b7c48fd92:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    1d2b7c48fd96:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    1d2b7c48fd9a:	85 f6                                           	test   esi,esi
    1d2b7c48fd9c:	0f 84 8d f2 ff ff                               	je     0x1d2b7c48f02f
    1d2b7c48fda2:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    1d2b7c48fda7:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    1d2b7c48fdad:	0f 85 15 00 00 00                               	jne    0x1d2b7c48fdc8
    1d2b7c48fdb3:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    1d2b7c48fdb9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c48fdbf:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c48fdc3:	e9 1f 01 00 00                                  	jmp    0x1d2b7c48fee7
    1d2b7c48fdc8:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    1d2b7c48fdcd:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    1d2b7c48fdd4:	45 33 db                                        	xor    r11d,r11d
    1d2b7c48fdd7:	44 3b ce                                        	cmp    r9d,esi
    1d2b7c48fdda:	41 0f 9c c3                                     	setl   r11b
    1d2b7c48fdde:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    1d2b7c48fde3:	44 03 e6                                        	add    r12d,esi
    1d2b7c48fde6:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c48fde9:	45 3b e1                                        	cmp    r12d,r9d
    1d2b7c48fdec:	41 0f 9e c7                                     	setle  r15b
    1d2b7c48fdf0:	45 0b fb                                        	or     r15d,r11d
    1d2b7c48fdf3:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    1d2b7c48fdf8:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c48fdfc:	33 db                                           	xor    ebx,ebx
    1d2b7c48fdfe:	45 3b cb                                        	cmp    r9d,r11d
    1d2b7c48fe01:	0f 9c c3                                        	setl   bl
    1d2b7c48fe04:	41 8b cf                                        	mov    ecx,r15d
    1d2b7c48fe07:	0b cb                                           	or     ecx,ebx
    1d2b7c48fe09:	83 f1 ff                                        	xor    ecx,0xffffffff
    1d2b7c48fe0c:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    1d2b7c48fe11:	41 03 d3                                        	add    edx,r11d
    1d2b7c48fe14:	33 ff                                           	xor    edi,edi
    1d2b7c48fe16:	44 3b ca                                        	cmp    r9d,edx
    1d2b7c48fe19:	40 0f 9c c7                                     	setl   dil
    1d2b7c48fe1d:	23 cf                                           	and    ecx,edi
    1d2b7c48fe1f:	f7 d9                                           	neg    ecx
    1d2b7c48fe21:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    1d2b7c48fe25:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c48fe2a:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    1d2b7c48fe31:	41 0f 9e c4                                     	setle  r12b
    1d2b7c48fe35:	45 0f b6 e4                                     	movzx  r12d,r12b
    1d2b7c48fe39:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    1d2b7c48fe3f:	3b ce                                           	cmp    ecx,esi
    1d2b7c48fe41:	40 0f 9c c6                                     	setl   sil
    1d2b7c48fe45:	40 0f b6 f6                                     	movzx  esi,sil
    1d2b7c48fe49:	41 0b f4                                        	or     esi,r12d
    1d2b7c48fe4c:	0b de                                           	or     ebx,esi
    1d2b7c48fe4e:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c48fe51:	23 fb                                           	and    edi,ebx
    1d2b7c48fe53:	f7 df                                           	neg    edi
    1d2b7c48fe55:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    1d2b7c48fe5b:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    1d2b7c48fe61:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c48fe64:	3b fa                                           	cmp    edi,edx
    1d2b7c48fe66:	41 0f 9c c4                                     	setl   r12b
    1d2b7c48fe6a:	41 3b fb                                        	cmp    edi,r11d
    1d2b7c48fe6d:	41 0f 9c c3                                     	setl   r11b
    1d2b7c48fe71:	45 0f b6 db                                     	movzx  r11d,r11b
    1d2b7c48fe75:	45 0b fb                                        	or     r15d,r11d
    1d2b7c48fe78:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    1d2b7c48fe7c:	45 23 fc                                        	and    r15d,r12d
    1d2b7c48fe7f:	41 f7 df                                        	neg    r15d
    1d2b7c48fe82:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    1d2b7c48fe88:	41 0b f3                                        	or     esi,r11d
    1d2b7c48fe8b:	83 f6 ff                                        	xor    esi,0xffffffff
    1d2b7c48fe8e:	44 23 e6                                        	and    r12d,esi
    1d2b7c48fe91:	41 f7 dc                                        	neg    r12d
    1d2b7c48fe94:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    1d2b7c48fe9a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    1d2b7c48fe9e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    1d2b7c48fea2:	85 f6                                           	test   esi,esi
    1d2b7c48fea4:	0f 85 3d 00 00 00                               	jne    0x1d2b7c48fee7
    1d2b7c48feaa:	4d 8b e0                                        	mov    r12,r8
    1d2b7c48fead:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c48feb1:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c48feb6:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c48febb:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c48fec1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c48fec7:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c48fecc:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c48fed4:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c48fedc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c48fee2:	e9 c3 0a 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c48fee7:	85 c0                                           	test   eax,eax
    1d2b7c48fee9:	0f 85 16 00 00 00                               	jne    0x1d2b7c48ff05
    1d2b7c48feef:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    1d2b7c48fef6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48fefa:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    1d2b7c48ff00:	e9 fe 01 00 00                                  	jmp    0x1d2b7c490103
    1d2b7c48ff05:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    1d2b7c48ff0c:	0f 85 42 01 00 00                               	jne    0x1d2b7c490054
    1d2b7c48ff12:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c48ff17:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c48ff1b:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    1d2b7c48ff20:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    1d2b7c48ff27:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    1d2b7c48ff2b:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    1d2b7c48ff31:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    1d2b7c48ff37:	0f 8c 10 00 00 00                               	jl     0x1d2b7c48ff4d
    1d2b7c48ff3d:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    1d2b7c48ff42:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    1d2b7c48ff48:	e9 10 00 00 00                                  	jmp    0x1d2b7c48ff5d
    1d2b7c48ff4d:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    1d2b7c48ff53:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    1d2b7c48ff57:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    1d2b7c48ff5d:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    1d2b7c48ff61:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    1d2b7c48ff66:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    1d2b7c48ff6d:	41 83 fc 07                                     	cmp    r12d,0x7
    1d2b7c48ff71:	0f 83 0b 00 00 00                               	jae    0x1d2b7c48ff82
    1d2b7c48ff77:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x1d2b7c490f00
    1d2b7c48ff7e:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    1d2b7c48ff82:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    1d2b7c48ff87:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48ff8f:	e9 74 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c48ff94:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48ff9c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    1d2b7c48ffa1:	e9 62 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c48ffa6:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48ffae:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    1d2b7c48ffb3:	e9 50 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c48ffb8:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48ffc0:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    1d2b7c48ffc5:	e9 3e 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c48ffca:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48ffd2:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    1d2b7c48ffd7:	e9 2c 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c48ffdc:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48ffe4:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    1d2b7c48ffe9:	e9 1a 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c48ffee:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c48fff6:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    1d2b7c48fffb:	e9 08 00 00 00                                  	jmp    0x1d2b7c490008
    1d2b7c490000:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    1d2b7c490008:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    1d2b7c49000c:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    1d2b7c490010:	85 f6                                           	test   esi,esi
    1d2b7c490012:	0f 85 4d 00 00 00                               	jne    0x1d2b7c490065
    1d2b7c490018:	4d 8b e0                                        	mov    r12,r8
    1d2b7c49001b:	4d 8b c3                                        	mov    r8,r11
    1d2b7c49001e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c490023:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c490028:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c49002e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c490034:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c490039:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c490041:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c490049:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c49004f:	e9 56 09 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c490054:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    1d2b7c49005b:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c49005f:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    1d2b7c490065:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    1d2b7c49006a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    1d2b7c490070:	0f 84 8d 00 00 00                               	je     0x1d2b7c490103
    1d2b7c490076:	40 f6 c6 01                                     	test   sil,0x1
    1d2b7c49007a:	0f 85 0d 00 00 00                               	jne    0x1d2b7c49008d
    1d2b7c490080:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    1d2b7c490088:	e9 1b 00 00 00                                  	jmp    0x1d2b7c4900a8
    1d2b7c49008d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    1d2b7c490092:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    1d2b7c490096:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    1d2b7c49009e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    1d2b7c4900a2:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    1d2b7c4900a8:	40 f6 c6 02                                     	test   sil,0x2
    1d2b7c4900ac:	0f 84 14 00 00 00                               	je     0x1d2b7c4900c6
    1d2b7c4900b2:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    1d2b7c4900b7:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    1d2b7c4900bb:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    1d2b7c4900bf:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    1d2b7c4900c6:	40 f6 c6 04                                     	test   sil,0x4
    1d2b7c4900ca:	0f 84 14 00 00 00                               	je     0x1d2b7c4900e4
    1d2b7c4900d0:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    1d2b7c4900d5:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    1d2b7c4900d9:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    1d2b7c4900de:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    1d2b7c4900e4:	40 f6 c6 08                                     	test   sil,0x8
    1d2b7c4900e8:	0f 84 15 00 00 00                               	je     0x1d2b7c490103
    1d2b7c4900ee:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    1d2b7c4900f3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    1d2b7c4900f7:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    1d2b7c4900fc:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    1d2b7c490103:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    1d2b7c490108:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    1d2b7c49010e:	0f 85 0d 00 00 00                               	jne    0x1d2b7c490121
    1d2b7c490114:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    1d2b7c49011c:	e9 d6 02 00 00                                  	jmp    0x1d2b7c4903f7
    1d2b7c490121:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    1d2b7c490126:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    1d2b7c49012e:	33 d2                                           	xor    edx,edx
    1d2b7c490130:	83 fb 04                                        	cmp    ebx,0x4
    1d2b7c490133:	0f 93 c2                                        	setae  dl
    1d2b7c490136:	33 c9                                           	xor    ecx,ecx
    1d2b7c490138:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c49013c:	0f 97 c1                                        	seta   cl
    1d2b7c49013f:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    1d2b7c490146:	85 ca                                           	test   edx,ecx
    1d2b7c490148:	0f 85 b9 05 00 00                               	jne    0x1d2b7c490707
    1d2b7c49014e:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    1d2b7c490153:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    1d2b7c490159:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c49015c:	83 f9 04                                        	cmp    ecx,0x4
    1d2b7c49015f:	41 0f 93 c1                                     	setae  r9b
    1d2b7c490163:	33 f6                                           	xor    esi,esi
    1d2b7c490165:	83 fa 01                                        	cmp    edx,0x1
    1d2b7c490168:	40 0f 97 c6                                     	seta   sil
    1d2b7c49016c:	41 85 f1                                        	test   r9d,esi
    1d2b7c49016f:	0f 85 88 05 00 00                               	jne    0x1d2b7c4906fd
    1d2b7c490175:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    1d2b7c49017d:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    1d2b7c490182:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    1d2b7c490186:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    1d2b7c49018c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    1d2b7c490193:	44 3b ff                                        	cmp    r15d,edi
    1d2b7c490196:	0f 8e 0f 00 00 00                               	jle    0x1d2b7c4901ab
    1d2b7c49019c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    1d2b7c4901a0:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    1d2b7c4901a6:	e9 05 00 00 00                                  	jmp    0x1d2b7c4901b0
    1d2b7c4901ab:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4901b0:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    1d2b7c4901b5:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    1d2b7c4901bf:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c4901c4:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    1d2b7c4901ce:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    1d2b7c4901d4:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    1d2b7c4901d9:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    1d2b7c4901de:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x1d2b7c48ccb2
    1d2b7c4901e5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c4901ea:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c4901ee:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    1d2b7c4901f2:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    1d2b7c4901fc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c490201:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    1d2b7c49020b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    1d2b7c490211:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    1d2b7c490216:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c49021a:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    1d2b7c490224:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c490229:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    1d2b7c490233:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    1d2b7c490239:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    1d2b7c49023e:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c490242:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    1d2b7c49024c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c490251:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    1d2b7c49025b:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    1d2b7c490261:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    1d2b7c490266:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c49026a:	83 fb 02                                        	cmp    ebx,0x2
    1d2b7c49026d:	0f 8c 14 00 00 00                               	jl     0x1d2b7c490287
    1d2b7c490273:	0f 84 69 00 00 00                               	je     0x1d2b7c4902e2
    1d2b7c490279:	83 fb 03                                        	cmp    ebx,0x3
    1d2b7c49027c:	0f 84 45 00 00 00                               	je     0x1d2b7c4902c7
    1d2b7c490282:	e9 17 00 00 00                                  	jmp    0x1d2b7c49029e
    1d2b7c490287:	83 fb 00                                        	cmp    ebx,0x0
    1d2b7c49028a:	0f 84 77 00 00 00                               	je     0x1d2b7c490307
    1d2b7c490290:	83 fb 01                                        	cmp    ebx,0x1
    1d2b7c490293:	0f 84 53 00 00 00                               	je     0x1d2b7c4902ec
    1d2b7c490299:	e9 00 00 00 00                                  	jmp    0x1d2b7c49029e
    1d2b7c49029e:	45 85 e4                                        	test   r12d,r12d
    1d2b7c4902a1:	0f 85 0a 00 00 00                               	jne    0x1d2b7c4902b1
    1d2b7c4902a7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4902ac:	e9 5b 00 00 00                                  	jmp    0x1d2b7c49030c
    1d2b7c4902b1:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x1d2b7c489811
    1d2b7c4902b8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4902bd:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4902c2:	e9 45 00 00 00                                  	jmp    0x1d2b7c49030c
    1d2b7c4902c7:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x1d2b7c489811
    1d2b7c4902ce:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4902d3:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4902d8:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    1d2b7c4902dd:	e9 2a 00 00 00                                  	jmp    0x1d2b7c49030c
    1d2b7c4902e2:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    1d2b7c4902e7:	e9 20 00 00 00                                  	jmp    0x1d2b7c49030c
    1d2b7c4902ec:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x1d2b7c489811
    1d2b7c4902f3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4902f8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4902fd:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    1d2b7c490302:	e9 05 00 00 00                                  	jmp    0x1d2b7c49030c
    1d2b7c490307:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    1d2b7c49030c:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    1d2b7c490310:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    1d2b7c490314:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    1d2b7c490318:	83 f9 02                                        	cmp    ecx,0x2
    1d2b7c49031b:	0f 8c 14 00 00 00                               	jl     0x1d2b7c490335
    1d2b7c490321:	0f 84 5e 00 00 00                               	je     0x1d2b7c490385
    1d2b7c490327:	83 f9 03                                        	cmp    ecx,0x3
    1d2b7c49032a:	0f 84 3a 00 00 00                               	je     0x1d2b7c49036a
    1d2b7c490330:	e9 17 00 00 00                                  	jmp    0x1d2b7c49034c
    1d2b7c490335:	83 f9 00                                        	cmp    ecx,0x0
    1d2b7c490338:	0f 84 6c 00 00 00                               	je     0x1d2b7c4903aa
    1d2b7c49033e:	83 f9 01                                        	cmp    ecx,0x1
    1d2b7c490341:	0f 84 48 00 00 00                               	je     0x1d2b7c49038f
    1d2b7c490347:	e9 00 00 00 00                                  	jmp    0x1d2b7c49034c
    1d2b7c49034c:	85 d2                                           	test   edx,edx
    1d2b7c49034e:	0f 84 5b 00 00 00                               	je     0x1d2b7c4903af
    1d2b7c490354:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x1d2b7c489811
    1d2b7c49035b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c490360:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c490365:	e9 45 00 00 00                                  	jmp    0x1d2b7c4903af
    1d2b7c49036a:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x1d2b7c489811
    1d2b7c490371:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c490376:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c49037b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    1d2b7c490380:	e9 2a 00 00 00                                  	jmp    0x1d2b7c4903af
    1d2b7c490385:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    1d2b7c49038a:	e9 20 00 00 00                                  	jmp    0x1d2b7c4903af
    1d2b7c49038f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x1d2b7c489811
    1d2b7c490396:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c49039b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4903a0:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    1d2b7c4903a5:	e9 05 00 00 00                                  	jmp    0x1d2b7c4903af
    1d2b7c4903aa:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    1d2b7c4903af:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    1d2b7c4903b4:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    1d2b7c4903b9:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    1d2b7c4903be:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4903c3:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    1d2b7c4903c8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c4903cd:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    1d2b7c4903d2:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    1d2b7c4903d7:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    1d2b7c4903dc:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c4903e1:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    1d2b7c4903e6:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    1d2b7c4903ea:	44 8b e6                                        	mov    r12d,esi
    1d2b7c4903ed:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    1d2b7c4903f3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c4903f7:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    1d2b7c4903fb:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x1d2b7c489811
    1d2b7c490402:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c490407:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c49040c:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x1d2b7c489811
    1d2b7c490413:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c490418:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c49041d:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    1d2b7c490423:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    1d2b7c490428:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    1d2b7c49042d:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    1d2b7c490432:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c490437:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    1d2b7c49043d:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    1d2b7c490442:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    1d2b7c49044c:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c490451:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c490455:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    1d2b7c490459:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    1d2b7c49045f:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x1d2b7c48825e
    1d2b7c490466:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c49046c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    1d2b7c490471:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c490477:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c49047c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c490481:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    1d2b7c490486:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    1d2b7c49048b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    1d2b7c490491:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    1d2b7c490496:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    1d2b7c49049a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    1d2b7c49049e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4904a3:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    1d2b7c4904a9:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    1d2b7c4904ad:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    1d2b7c4904b1:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    1d2b7c4904b7:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x1d2b7c48825e
    1d2b7c4904be:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c4904c3:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    1d2b7c4904c8:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c4904ce:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4904d2:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4904d7:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    1d2b7c4904db:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    1d2b7c4904df:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    1d2b7c4904e5:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    1d2b7c4904e9:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    1d2b7c4904ee:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    1d2b7c4904f2:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    1d2b7c4904f7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4904fc:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    1d2b7c490502:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    1d2b7c490506:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    1d2b7c49050a:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    1d2b7c490510:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x1d2b7c48825e
    1d2b7c490517:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c49051c:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    1d2b7c490521:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c490527:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    1d2b7c49052b:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    1d2b7c490530:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    1d2b7c490534:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    1d2b7c490538:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    1d2b7c49053e:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    1d2b7c490544:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    1d2b7c490549:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    1d2b7c49054e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    1d2b7c490553:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    1d2b7c490559:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    1d2b7c49055e:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    1d2b7c490562:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    1d2b7c490568:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x1d2b7c48825e
    1d2b7c49056f:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c490575:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    1d2b7c49057a:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c490580:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c490585:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c49058a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    1d2b7c49058f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    1d2b7c490594:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    1d2b7c49059a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    1d2b7c49059f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    1d2b7c4905a3:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    1d2b7c4905ad:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    1d2b7c4905b1:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    1d2b7c4905b7:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    1d2b7c4905bc:	33 d2                                           	xor    edx,edx
    1d2b7c4905be:	41 f6 c7 01                                     	test   r15b,0x1
    1d2b7c4905c2:	0f 45 da                                        	cmovne ebx,edx
    1d2b7c4905c5:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    1d2b7c4905ca:	b9 ff 00 00 00                                  	mov    ecx,0xff
    1d2b7c4905cf:	41 f6 c7 01                                     	test   r15b,0x1
    1d2b7c4905d3:	0f 45 ca                                        	cmovne ecx,edx
    1d2b7c4905d6:	0b cb                                           	or     ecx,ebx
    1d2b7c4905d8:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    1d2b7c4905de:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    1d2b7c4905e3:	41 f6 c7 01                                     	test   r15b,0x1
    1d2b7c4905e7:	0f 45 da                                        	cmovne ebx,edx
    1d2b7c4905ea:	0b d9                                           	or     ebx,ecx
    1d2b7c4905ec:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    1d2b7c4905f2:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    1d2b7c4905f7:	41 f6 c7 01                                     	test   r15b,0x1
    1d2b7c4905fb:	0f 45 ca                                        	cmovne ecx,edx
    1d2b7c4905fe:	0b cb                                           	or     ecx,ebx
    1d2b7c490600:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    1d2b7c490604:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c490609:	44 8b fe                                        	mov    r15d,esi
    1d2b7c49060c:	41 83 e7 01                                     	and    r15d,0x1
    1d2b7c490610:	41 f7 df                                        	neg    r15d
    1d2b7c490613:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    1d2b7c490618:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c49061d:	44 8b fe                                        	mov    r15d,esi
    1d2b7c490620:	41 c1 e7 1e                                     	shl    r15d,0x1e
    1d2b7c490624:	41 c1 ff 1f                                     	sar    r15d,0x1f
    1d2b7c490628:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    1d2b7c49062e:	44 8b fe                                        	mov    r15d,esi
    1d2b7c490631:	41 c1 e7 1d                                     	shl    r15d,0x1d
    1d2b7c490635:	41 c1 ff 1f                                     	sar    r15d,0x1f
    1d2b7c490639:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    1d2b7c49063f:	44 8b fe                                        	mov    r15d,esi
    1d2b7c490642:	41 c1 e7 1c                                     	shl    r15d,0x1c
    1d2b7c490646:	41 c1 ff 1f                                     	sar    r15d,0x1f
    1d2b7c49064a:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    1d2b7c490650:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    1d2b7c490655:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    1d2b7c49065a:	45 03 e7                                        	add    r12d,r15d
    1d2b7c49065d:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    1d2b7c490663:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    1d2b7c490669:	3b df                                           	cmp    ebx,edi
    1d2b7c49066b:	0f 8e 0a 00 00 00                               	jle    0x1d2b7c49067b
    1d2b7c490671:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    1d2b7c490675:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    1d2b7c49067b:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    1d2b7c49067f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    1d2b7c490683:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    1d2b7c490687:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c49068c:	40 f6 c6 03                                     	test   sil,0x3
    1d2b7c490690:	0f 84 06 00 00 00                               	je     0x1d2b7c49069c
    1d2b7c490696:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    1d2b7c49069c:	3b df                                           	cmp    ebx,edi
    1d2b7c49069e:	0f 8e 74 f9 ff ff                               	jle    0x1d2b7c490018
    1d2b7c4906a4:	40 f6 c6 0c                                     	test   sil,0xc
    1d2b7c4906a8:	0f 84 6a f9 ff ff                               	je     0x1d2b7c490018
    1d2b7c4906ae:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    1d2b7c4906b3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    1d2b7c4906b7:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    1d2b7c4906bb:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    1d2b7c4906c1:	4d 8b e0                                        	mov    r12,r8
    1d2b7c4906c4:	4d 8b c3                                        	mov    r8,r11
    1d2b7c4906c7:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c4906cc:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c4906d1:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c4906d7:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c4906dd:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c4906e2:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c4906ea:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c4906f2:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c4906f8:	e9 ad 02 00 00                                  	jmp    0x1d2b7c4909aa
    1d2b7c4906fd:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    1d2b7c490703:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c490707:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    1d2b7c49070f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    1d2b7c490717:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    1d2b7c49071f:	40 f6 c6 01                                     	test   sil,0x1
    1d2b7c490723:	0f 84 9d 00 00 00                               	je     0x1d2b7c4907c6
    1d2b7c490729:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    1d2b7c490731:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    1d2b7c490735:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    1d2b7c49073a:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    1d2b7c49073e:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    1d2b7c490742:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    1d2b7c490747:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c49074b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c49074e:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c490754:	41 8b c9                                        	mov    ecx,r9d
    1d2b7c490757:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    1d2b7c49075c:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c490761:	e8 fa ba f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c490766:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c49076a:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c49076e:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    1d2b7c490774:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    1d2b7c49077c:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    1d2b7c490784:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    1d2b7c49078c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    1d2b7c490794:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    1d2b7c49079a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c49079e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    1d2b7c4907a6:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    1d2b7c4907ae:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    1d2b7c4907b6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c4907be:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c4907c6:	40 f6 c6 02                                     	test   sil,0x2
    1d2b7c4907ca:	0f 84 9d 00 00 00                               	je     0x1d2b7c49086d
    1d2b7c4907d0:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    1d2b7c4907d8:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    1d2b7c4907dc:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    1d2b7c4907e1:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    1d2b7c4907e5:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    1d2b7c4907e9:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    1d2b7c4907ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4907f2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c4907f5:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c4907fb:	41 8b c9                                        	mov    ecx,r9d
    1d2b7c4907fe:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    1d2b7c490803:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c490808:	e8 53 ba f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c49080d:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c490811:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c490815:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    1d2b7c49081b:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    1d2b7c490823:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    1d2b7c49082b:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    1d2b7c490833:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    1d2b7c49083b:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    1d2b7c490841:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c490845:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    1d2b7c49084d:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    1d2b7c490855:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    1d2b7c49085d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c490865:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c49086d:	40 f6 c6 04                                     	test   sil,0x4
    1d2b7c490871:	0f 84 a1 00 00 00                               	je     0x1d2b7c490918
    1d2b7c490877:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    1d2b7c49087f:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    1d2b7c490884:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    1d2b7c49088a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    1d2b7c49088f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    1d2b7c490894:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    1d2b7c49089a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c49089e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c4908a1:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    1d2b7c4908a7:	8b cf                                           	mov    ecx,edi
    1d2b7c4908a9:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    1d2b7c4908ae:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4908b3:	e8 a8 b9 f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4908b8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    1d2b7c4908bc:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c4908c0:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    1d2b7c4908c6:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    1d2b7c4908ce:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    1d2b7c4908d6:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    1d2b7c4908de:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    1d2b7c4908e6:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    1d2b7c4908ec:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4908f0:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    1d2b7c4908f8:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    1d2b7c490900:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    1d2b7c490908:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c490910:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c490918:	40 f6 c6 08                                     	test   sil,0x8
    1d2b7c49091c:	0f 84 f6 f6 ff ff                               	je     0x1d2b7c490018
    1d2b7c490922:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    1d2b7c49092a:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    1d2b7c49092f:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    1d2b7c490935:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    1d2b7c49093a:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    1d2b7c49093f:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    1d2b7c490945:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c490949:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c49094c:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c490952:	8b cf                                           	mov    ecx,edi
    1d2b7c490954:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c490958:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c49095c:	e8 ff b8 f2 ff                                  	call   0x1d2b7c3bc260
    1d2b7c490961:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    1d2b7c490965:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c49096a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c49096e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c490973:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c490979:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c49097f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c490984:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    1d2b7c49098c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c490994:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c49099c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c4909a4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c4909aa:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    1d2b7c4909b1:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    1d2b7c4909b8:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    1d2b7c4909bf:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    1d2b7c4909c6:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    1d2b7c4909cd:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    1d2b7c4909d4:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    1d2b7c4909db:	41 83 c3 02                                     	add    r11d,0x2
    1d2b7c4909df:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    1d2b7c4909e6:	0f 8c 54 85 ff ff                               	jl     0x1d2b7c488f40
    1d2b7c4909ec:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    1d2b7c4909f3:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    1d2b7c4909fa:	48 03 f7                                        	add    rsi,rdi
    1d2b7c4909fd:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    1d2b7c490a01:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    1d2b7c490a08:	4d 03 fb                                        	add    r15,r11
    1d2b7c490a0b:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    1d2b7c490a0f:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    1d2b7c490a16:	48 03 d8                                        	add    rbx,rax
    1d2b7c490a19:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c490a1d:	41 83 c1 02                                     	add    r9d,0x2
    1d2b7c490a21:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    1d2b7c490a25:	0f 8c 55 84 ff ff                               	jl     0x1d2b7c488e80
    1d2b7c490a2b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c490a2e:	81 c7 00 02 00 00                               	add    edi,0x200
    1d2b7c490a34:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    1d2b7c490a38:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    1d2b7c490a3c:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    1d2b7c490a41:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c490a44:	5d                                              	pop    rbp
    1d2b7c490a45:	c2 10 00                                        	ret    0x10
    1d2b7c490a48:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    1d2b7c490a4f:	0f 84 17 00 00 00                               	je     0x1d2b7c490a6c
    1d2b7c490a55:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    1d2b7c490a5b:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    1d2b7c490a60:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    1d2b7c490a66:	0f 85 40 00 00 00                               	jne    0x1d2b7c490aac
    1d2b7c490a6c:	c5 79 7e df                                     	vmovd  edi,xmm11
    1d2b7c490a70:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    1d2b7c490a76:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    1d2b7c490a79:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    1d2b7c490a7c:	41 51                                           	push   r9
    1d2b7c490a7e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    1d2b7c490a81:	41 53                                           	push   r11
    1d2b7c490a83:	57                                              	push   rdi
    1d2b7c490a84:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    1d2b7c490a87:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    1d2b7c490a8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c490a8e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c490a91:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c490a94:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c490a97:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c490a9a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    1d2b7c490a9e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c490aa2:	e8 79 ba f2 ff                                  	call   0x1d2b7c3bc520
    1d2b7c490aa7:	e9 df 00 00 00                                  	jmp    0x1d2b7c490b8b
    1d2b7c490aac:	c5 79 7e df                                     	vmovd  edi,xmm11
    1d2b7c490ab0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    1d2b7c490ab6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    1d2b7c490ab9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    1d2b7c490abc:	41 51                                           	push   r9
    1d2b7c490abe:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    1d2b7c490ac1:	41 53                                           	push   r11
    1d2b7c490ac3:	57                                              	push   rdi
    1d2b7c490ac4:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    1d2b7c490ac7:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    1d2b7c490aca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c490ace:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c490ad1:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c490ad4:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c490ad7:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c490ada:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    1d2b7c490ade:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c490ae2:	e8 51 ba f2 ff                                  	call   0x1d2b7c3bc538
    1d2b7c490ae7:	e9 9f 00 00 00                                  	jmp    0x1d2b7c490b8b
    1d2b7c490aec:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    1d2b7c490af3:	0f 84 17 00 00 00                               	je     0x1d2b7c490b10
    1d2b7c490af9:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    1d2b7c490aff:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    1d2b7c490b04:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    1d2b7c490b0a:	0f 85 40 00 00 00                               	jne    0x1d2b7c490b50
    1d2b7c490b10:	c5 79 7e df                                     	vmovd  edi,xmm11
    1d2b7c490b14:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    1d2b7c490b1a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    1d2b7c490b1d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    1d2b7c490b20:	41 51                                           	push   r9
    1d2b7c490b22:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    1d2b7c490b25:	41 53                                           	push   r11
    1d2b7c490b27:	57                                              	push   rdi
    1d2b7c490b28:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    1d2b7c490b2b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    1d2b7c490b2e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c490b32:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c490b35:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c490b38:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c490b3b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c490b3e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    1d2b7c490b42:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c490b46:	e8 f5 b9 f2 ff                                  	call   0x1d2b7c3bc540
    1d2b7c490b4b:	e9 3b 00 00 00                                  	jmp    0x1d2b7c490b8b
    1d2b7c490b50:	c5 79 7e df                                     	vmovd  edi,xmm11
    1d2b7c490b54:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    1d2b7c490b5a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    1d2b7c490b5d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    1d2b7c490b60:	41 51                                           	push   r9
    1d2b7c490b62:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    1d2b7c490b65:	41 53                                           	push   r11
    1d2b7c490b67:	57                                              	push   rdi
    1d2b7c490b68:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    1d2b7c490b6b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    1d2b7c490b6e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c490b72:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c490b75:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c490b78:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    1d2b7c490b7b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c490b7e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    1d2b7c490b82:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c490b86:	e8 bd b9 f2 ff                                  	call   0x1d2b7c3bc548
    1d2b7c490b8b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c490b8f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    1d2b7c490b93:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    1d2b7c490b98:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    1d2b7c490b9e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    1d2b7c490ba4:	41 0f 45 c3                                     	cmovne eax,r11d
    1d2b7c490ba8:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c490bac:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    1d2b7c490bb3:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c490bb7:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    1d2b7c490bbc:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c490bbf:	5d                                              	pop    rbp
    1d2b7c490bc0:	c2 10 00                                        	ret    0x10
    1d2b7c490bc3:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    1d2b7c490bc8:	bf 01 00 00 00                                  	mov    edi,0x1
    1d2b7c490bcd:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    1d2b7c490bd3:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    1d2b7c490bd9:	41 0f 45 ff                                     	cmovne edi,r15d
    1d2b7c490bdd:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    1d2b7c490be4:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    1d2b7c490be8:	8b c7                                           	mov    eax,edi
    1d2b7c490bea:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c490bed:	5d                                              	pop    rbp
    1d2b7c490bee:	c2 10 00                                        	ret    0x10
    1d2b7c490bf1:	41 b8 80 00 00 00                               	mov    r8d,0x80
    1d2b7c490bf7:	41 d1 f8                                        	sar    r8d,1
    1d2b7c490bfa:	4d 63 c0                                        	movsxd r8,r8d
    1d2b7c490bfd:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    1d2b7c490c01:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    1d2b7c490c05:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    1d2b7c490c09:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    1d2b7c490c0d:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    1d2b7c490c15:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    1d2b7c490c19:	49 8b c0                                        	mov    rax,r8
    1d2b7c490c1c:	e8 0f e3 f2 ff                                  	call   0x1d2b7c3bef30
    1d2b7c490c21:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c490c25:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    1d2b7c490c28:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    1d2b7c490c2b:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    1d2b7c490c2e:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    1d2b7c490c31:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    1d2b7c490c39:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    1d2b7c490c3d:	e9 5c 75 ff ff                                  	jmp    0x1d2b7c48819e
    1d2b7c490c42:	e8 f9 e2 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490c47:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c490c4c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    1d2b7c490c50:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c490c55:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c490c5b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c490c61:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c490c66:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    1d2b7c490c6e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c490c76:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c490c7e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c490c86:	e9 21 82 ff ff                                  	jmp    0x1d2b7c488eac
    1d2b7c490c8b:	e8 b0 e2 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490c90:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    1d2b7c490c95:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    1d2b7c490c9c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    1d2b7c490ca3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c490ca8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c490cae:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c490cb4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c490cb9:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    1d2b7c490cc0:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    1d2b7c490cc8:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c490cd0:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c490cd8:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c490ce0:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    1d2b7c490ce7:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    1d2b7c490ced:	e9 8a 82 ff ff                                  	jmp    0x1d2b7c488f7c
    1d2b7c490cf2:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    1d2b7c490cfa:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    1d2b7c490d01:	e8 3a e2 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490d06:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c490d0a:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    1d2b7c490d0e:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    1d2b7c490d13:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    1d2b7c490d17:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    1d2b7c490d1d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c490d21:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    1d2b7c490d25:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    1d2b7c490d2a:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    1d2b7c490d2f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c490d34:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    1d2b7c490d3b:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    1d2b7c490d42:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    1d2b7c490d49:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    1d2b7c490d51:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    1d2b7c490d57:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    1d2b7c490d5f:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    1d2b7c490d67:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    1d2b7c490d6f:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    1d2b7c490d77:	e9 13 b0 ff ff                                  	jmp    0x1d2b7c48bd8f
    1d2b7c490d7c:	e8 bf e1 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490d81:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c490d85:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c490d88:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c490d8c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    1d2b7c490d93:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    1d2b7c490d9b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    1d2b7c490da3:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    1d2b7c490dab:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    1d2b7c490db3:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    1d2b7c490dbb:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    1d2b7c490dc3:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    1d2b7c490dcb:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    1d2b7c490dd3:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    1d2b7c490dda:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    1d2b7c490de0:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    1d2b7c490de7:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    1d2b7c490dee:	e9 a5 b4 ff ff                                  	jmp    0x1d2b7c48c298
    1d2b7c490df3:	e8 48 e1 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490df8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c490dfb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c490dff:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    1d2b7c490e05:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    1d2b7c490e0c:	e9 8e c4 ff ff                                  	jmp    0x1d2b7c48d29f
    1d2b7c490e11:	e8 2a e1 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490e16:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c490e1a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    1d2b7c490e1e:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    1d2b7c490e25:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    1d2b7c490e2c:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    1d2b7c490e32:	e9 f1 d8 ff ff                                  	jmp    0x1d2b7c48e728
    1d2b7c490e37:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    1d2b7c490e3f:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    1d2b7c490e47:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    1d2b7c490e4f:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    1d2b7c490e57:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    1d2b7c490e5e:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    1d2b7c490e65:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    1d2b7c490e6c:	e8 cf e0 f2 ff                                  	call   0x1d2b7c3bef40
    1d2b7c490e71:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c490e75:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c490e79:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    1d2b7c490e81:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    1d2b7c490e89:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    1d2b7c490e91:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    1d2b7c490e99:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    1d2b7c490e9f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    1d2b7c490ea5:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    1d2b7c490eac:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    1d2b7c490eb2:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    1d2b7c490eb9:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    1d2b7c490ebf:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    1d2b7c490ec7:	e9 0f e6 ff ff                                  	jmp    0x1d2b7c48f4db
    1d2b7c490ecc:	8b c8                                           	mov    ecx,eax
    1d2b7c490ece:	33 d2                                           	xor    edx,edx
    1d2b7c490ed0:	e9 6e e6 ff ff                                  	jmp    0x1d2b7c48f543
    1d2b7c490ed5:	33 d2                                           	xor    edx,edx
    1d2b7c490ed7:	44 8b c8                                        	mov    r9d,eax
    1d2b7c490eda:	e9 82 e6 ff ff                                  	jmp    0x1d2b7c48f561
    1d2b7c490edf:	33 d2                                           	xor    edx,edx
    1d2b7c490ee1:	8b c8                                           	mov    ecx,eax
    1d2b7c490ee3:	e9 c3 e6 ff ff                                  	jmp    0x1d2b7c48f5ab
    1d2b7c490ee8:	33 d2                                           	xor    edx,edx
    1d2b7c490eea:	44 8b f8                                        	mov    r15d,eax
    1d2b7c490eed:	e9 d7 e6 ff ff                                  	jmp    0x1d2b7c48f5c9
    1d2b7c490ef2:	e8 59 dd f2 ff                                  	call   0x1d2b7c3bec50
    1d2b7c490ef7:	e8 54 dd f2 ff                                  	call   0x1d2b7c3bec50
    1d2b7c490efc:	90                                              	nop
    1d2b7c490efd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    1d2b7c490f00:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c490f02:	49 7c 2b                                        	rex.WB jl 0x1d2b7c490f30
    1d2b7c490f05:	1d 00 00 ee ff                                  	sbb    eax,0xffee0000
    1d2b7c490f0a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f38
    1d2b7c490f0d:	1d 00 00 dc ff                                  	sbb    eax,0xffdc0000
    1d2b7c490f12:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f40
    1d2b7c490f15:	1d 00 00 ca ff                                  	sbb    eax,0xffca0000
    1d2b7c490f1a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f48
    1d2b7c490f1d:	1d 00 00 b8 ff                                  	sbb    eax,0xffb80000
    1d2b7c490f22:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f50
    1d2b7c490f25:	1d 00 00 a6 ff                                  	sbb    eax,0xffa60000
    1d2b7c490f2a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f58
    1d2b7c490f2d:	1d 00 00 94 ff                                  	sbb    eax,0xff940000
    1d2b7c490f32:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f60
    1d2b7c490f35:	1d 00 00 8a fd                                  	sbb    eax,0xfd8a0000
    1d2b7c490f3a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f68
    1d2b7c490f3d:	1d 00 00 85 fd                                  	sbb    eax,0xfd850000
    1d2b7c490f42:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f70
    1d2b7c490f45:	1d 00 00 7b fd                                  	sbb    eax,0xfd7b0000
    1d2b7c490f4a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f78
    1d2b7c490f4d:	1d 00 00 71 fd                                  	sbb    eax,0xfd710000
    1d2b7c490f52:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f80
    1d2b7c490f55:	1d 00 00 66 fd                                  	sbb    eax,0xfd660000
    1d2b7c490f5a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f88
    1d2b7c490f5d:	1d 00 00 5c fd                                  	sbb    eax,0xfd5c0000
    1d2b7c490f62:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f90
    1d2b7c490f65:	1d 00 00 51 fd                                  	sbb    eax,0xfd510000
    1d2b7c490f6a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490f98
    1d2b7c490f6d:	1d 00 00 17 f0                                  	sbb    eax,0xf0170000
    1d2b7c490f72:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fa0
    1d2b7c490f75:	1d 00 00 0c f0                                  	sbb    eax,0xf00c0000
    1d2b7c490f7a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fa8
    1d2b7c490f7d:	1d 00 00 01 f0                                  	sbb    eax,0xf0010000
    1d2b7c490f82:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fb0
    1d2b7c490f85:	1d 00 00 f6 ef                                  	sbb    eax,0xeff60000
    1d2b7c490f8a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fb8
    1d2b7c490f8d:	1d 00 00 ec ef                                  	sbb    eax,0xefec0000
    1d2b7c490f92:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fc0
    1d2b7c490f95:	1d 00 00 e1 ef                                  	sbb    eax,0xefe10000
    1d2b7c490f9a:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fc8
    1d2b7c490f9d:	1d 00 00 d7 ef                                  	sbb    eax,0xefd70000
    1d2b7c490fa2:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fd0
    1d2b7c490fa5:	1d 00 00 f7 be                                  	sbb    eax,0xbef70000
    1d2b7c490faa:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fd8
    1d2b7c490fad:	1d 00 00 ec be                                  	sbb    eax,0xbeec0000
    1d2b7c490fb2:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fe0
    1d2b7c490fb5:	1d 00 00 d6 be                                  	sbb    eax,0xbed60000
    1d2b7c490fba:	48 7c 2b                                        	rex.W jl 0x1d2b7c490fe8
    1d2b7c490fbd:	1d 00 00 c6 be                                  	sbb    eax,0xbec60000
    1d2b7c490fc2:	48 7c 2b                                        	rex.W jl 0x1d2b7c490ff0
    1d2b7c490fc5:	1d 00 00 b6 be                                  	sbb    eax,0xbeb60000
    1d2b7c490fca:	48 7c 2b                                        	rex.W jl 0x1d2b7c490ff8
    1d2b7c490fcd:	1d 00 00 a0 be                                  	sbb    eax,0xbea00000
    1d2b7c490fd2:	48 7c 2b                                        	rex.W jl 0x1d2b7c491000
    1d2b7c490fd5:	1d 00 00 90 be                                  	sbb    eax,0xbe900000
    1d2b7c490fda:	48 7c 2b                                        	rex.W jl 0x1d2b7c491008
    1d2b7c490fdd:	1d 00 00 10 bf                                  	sbb    eax,0xbf100000
    1d2b7c490fe2:	48 7c 2b                                        	rex.W jl 0x1d2b7c491010
    1d2b7c490fe5:	1d 00 00 57 b2                                  	sbb    eax,0xb2570000
    1d2b7c490fea:	48 7c 2b                                        	rex.W jl 0x1d2b7c491018
    1d2b7c490fed:	1d 00 00 0b b4                                  	sbb    eax,0xb40b0000
    1d2b7c490ff2:	48 7c 2b                                        	rex.W jl 0x1d2b7c491020
    1d2b7c490ff5:	1d 00 00 f5 b3                                  	sbb    eax,0xb3f50000
    1d2b7c490ffa:	48 7c 2b                                        	rex.W jl 0x1d2b7c491028
    1d2b7c490ffd:	1d 00 00 e6 b3                                  	sbb    eax,0xb3e60000
    1d2b7c491002:	48 7c 2b                                        	rex.W jl 0x1d2b7c491030
    1d2b7c491005:	1d 00 00 d6 b3                                  	sbb    eax,0xb3d60000
    1d2b7c49100a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491038
    1d2b7c49100d:	1d 00 00 c0 b3                                  	sbb    eax,0xb3c00000
    1d2b7c491012:	48 7c 2b                                        	rex.W jl 0x1d2b7c491040
    1d2b7c491015:	1d 00 00 b0 b3                                  	sbb    eax,0xb3b00000
    1d2b7c49101a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491048
    1d2b7c49101d:	1d 00 00 15 b4                                  	sbb    eax,0xb4150000
    1d2b7c491022:	48 7c 2b                                        	rex.W jl 0x1d2b7c491050
    1d2b7c491025:	1d 00 00 4a b2                                  	sbb    eax,0xb24a0000
    1d2b7c49102a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491058
    1d2b7c49102d:	1d 00 00 91 a9                                  	sbb    eax,0xa9910000
    1d2b7c491032:	48 7c 2b                                        	rex.W jl 0x1d2b7c491060
    1d2b7c491035:	1d 00 00 7b a9                                  	sbb    eax,0xa97b0000
    1d2b7c49103a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491068
    1d2b7c49103d:	1d 00 00 6c a9                                  	sbb    eax,0xa96c0000
    1d2b7c491042:	48 7c 2b                                        	rex.W jl 0x1d2b7c491070
    1d2b7c491045:	1d 00 00 5c a9                                  	sbb    eax,0xa95c0000
    1d2b7c49104a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491078
    1d2b7c49104d:	1d 00 00 46 a9                                  	sbb    eax,0xa9460000
    1d2b7c491052:	48 7c 2b                                        	rex.W jl 0x1d2b7c491080
    1d2b7c491055:	1d 00 00 36 a9                                  	sbb    eax,0xa9360000
    1d2b7c49105a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491088
    1d2b7c49105d:	1d 00 00 9b a9                                  	sbb    eax,0xa99b0000
    1d2b7c491062:	48 7c 2b                                        	rex.W jl 0x1d2b7c491090
    1d2b7c491065:	1d 00 00 c3 a7                                  	sbb    eax,0xa7c30000
    1d2b7c49106a:	48 7c 2b                                        	rex.W jl 0x1d2b7c491098
    1d2b7c49106d:	1d 00 00 06 9f                                  	sbb    eax,0x9f060000
    1d2b7c491072:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910a0
    1d2b7c491075:	1d 00 00 f0 9e                                  	sbb    eax,0x9ef00000
    1d2b7c49107a:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910a8
    1d2b7c49107d:	1d 00 00 e1 9e                                  	sbb    eax,0x9ee10000
    1d2b7c491082:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910b0
    1d2b7c491085:	1d 00 00 d1 9e                                  	sbb    eax,0x9ed10000
    1d2b7c49108a:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910b8
    1d2b7c49108d:	1d 00 00 bb 9e                                  	sbb    eax,0x9ebb0000
    1d2b7c491092:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910c0
    1d2b7c491095:	1d 00 00 ab 9e                                  	sbb    eax,0x9eab0000
    1d2b7c49109a:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910c8
    1d2b7c49109d:	1d 00 00 10 9f                                  	sbb    eax,0x9f100000
    1d2b7c4910a2:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910d0
    1d2b7c4910a5:	1d 00 00 df 9c                                  	sbb    eax,0x9cdf0000
    1d2b7c4910aa:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910d8
    1d2b7c4910ad:	1d 00 00 2a 94                                  	sbb    eax,0x942a0000
    1d2b7c4910b2:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910e0
    1d2b7c4910b5:	1d 00 00 15 94                                  	sbb    eax,0x94150000
    1d2b7c4910ba:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910e8
    1d2b7c4910bd:	1d 00 00 06 94                                  	sbb    eax,0x94060000
    1d2b7c4910c2:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910f0
    1d2b7c4910c5:	1d 00 00 f7 93                                  	sbb    eax,0x93f70000
    1d2b7c4910ca:	48 7c 2b                                        	rex.W jl 0x1d2b7c4910f8
    1d2b7c4910cd:	1d 00 00 e2 93                                  	sbb    eax,0x93e20000
    1d2b7c4910d2:	48 7c 2b                                        	rex.W jl 0x1d2b7c491100
    1d2b7c4910d5:	1d 00 00 d3 93                                  	sbb    eax,0x93d30000
    1d2b7c4910da:	48 7c 2b                                        	rex.W jl 0x1d2b7c491108
    1d2b7c4910dd:	1d 00 00 34 94                                  	sbb    eax,0x94340000
    1d2b7c4910e2:	48 7c 2b                                        	rex.W jl 0x1d2b7c491110
    1d2b7c4910e5:	1d 00 00 81 00                                  	sbb    eax,0x810000
    1d2b7c4910ea:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c4910ec:	1c 00                                           	sbb    al,0x0
    1d2b7c4910ee:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c4910f0:	91                                              	xchg   ecx,eax
    1d2b7c4910f1:	01 d7                                           	add    edi,edx
    1d2b7c4910f3:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x1d2b534ba588
    1d2b7c4910f9:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x1d2b814ce825
    1d2b7c4910ff:	b0 05                                           	mov    al,0x5
    1d2b7c491101:	d7                                              	xlat   BYTE PTR ds:[rbx]
    1d2b7c491102:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x1d2b7c491108
	...
