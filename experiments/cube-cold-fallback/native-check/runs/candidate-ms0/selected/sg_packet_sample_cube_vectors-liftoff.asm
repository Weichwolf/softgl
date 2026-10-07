
/home/cosmo/Git/softgl/build/diagnostics/cube-cold-fallback/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_vectors-liftoff.bin:     file format binary


Disassembly of section .data:

000022bdd7cb41c0 <.data>:
    22bdd7cb41c0:	41 bc af 00 00 00                               	mov    r12d,0xaf
    22bdd7cb41c6:	e8 a5 4b f5 ff                                  	call   0x22bdd7c08d70
    22bdd7cb41cb:	48 81 ec 68 01 00 00                            	sub    rsp,0x168
    22bdd7cb41d2:	8b c0                                           	mov    eax,eax
    22bdd7cb41d4:	8b d2                                           	mov    edx,edx
    22bdd7cb41d6:	8b c9                                           	mov    ecx,ecx
    22bdd7cb41d8:	50                                              	push   rax
    22bdd7cb41d9:	51                                              	push   rcx
    22bdd7cb41da:	57                                              	push   rdi
    22bdd7cb41db:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    22bdd7cb41e2:	33 c0                                           	xor    eax,eax
    22bdd7cb41e4:	b9 38 00 00 00                                  	mov    ecx,0x38
    22bdd7cb41e9:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    22bdd7cb41eb:	5f                                              	pop    rdi
    22bdd7cb41ec:	59                                              	pop    rcx
    22bdd7cb41ed:	58                                              	pop    rax
    22bdd7cb41ee:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    22bdd7cb41f2:	0f 86 53 1a 00 00                               	jbe    0x22bdd7cb5c4b
    22bdd7cb41f8:	85 d2                                           	test   edx,edx
    22bdd7cb41fa:	0f 85 07 00 00 00                               	jne    0x22bdd7cb4207
    22bdd7cb4200:	33 c0                                           	xor    eax,eax
    22bdd7cb4202:	e9 26 1a 00 00                                  	jmp    0x22bdd7cb5c2d
    22bdd7cb4207:	48 8b 5e 17                                     	mov    rbx,QWORD PTR [rsi+0x17]
    22bdd7cb420b:	8b 7c 03 04                                     	mov    edi,DWORD PTR [rbx+rax*1+0x4]
    22bdd7cb420f:	85 ff                                           	test   edi,edi
    22bdd7cb4211:	0f 85 07 00 00 00                               	jne    0x22bdd7cb421e
    22bdd7cb4217:	33 c0                                           	xor    eax,eax
    22bdd7cb4219:	e9 0f 1a 00 00                                  	jmp    0x22bdd7cb5c2d
    22bdd7cb421e:	44 8b c2                                        	mov    r8d,edx
    22bdd7cb4221:	41 83 e0 0f                                     	and    r8d,0xf
    22bdd7cb4225:	49 ba 50 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d850
    22bdd7cb422f:	c4 c1 68 54 02                                  	vandps xmm0,xmm2,XMMWORD PTR [r10]
    22bdd7cb4234:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    22bdd7cb423e:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    22bdd7cb4243:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    22bdd7cb4247:	c5 f8 c2 ec 02                                  	vcmpleps xmm5,xmm0,xmm4
    22bdd7cb424c:	4c 8b 15 d4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffd4]        # 0x22bdd7cb4227
    22bdd7cb4253:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    22bdd7cb4258:	c5 c8 c2 fc 02                                  	vcmpleps xmm7,xmm6,xmm4
    22bdd7cb425d:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    22bdd7cb4261:	4c 8b 15 bf ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffbf]        # 0x22bdd7cb4227
    22bdd7cb4268:	c4 c1 60 54 3a                                  	vandps xmm7,xmm3,XMMWORD PTR [r10]
    22bdd7cb426d:	c5 fa 7f 85 34 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xcc],xmm0
    22bdd7cb4275:	c5 c0 c2 c4 02                                  	vcmpleps xmm0,xmm7,xmm4
    22bdd7cb427a:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    22bdd7cb427e:	c5 78 50 cd                                     	vmovmskps r9d,xmm5
    22bdd7cb4282:	45 23 c8                                        	and    r9d,r8d
    22bdd7cb4285:	41 3b d1                                        	cmp    edx,r9d
    22bdd7cb4288:	0f 84 07 00 00 00                               	je     0x22bdd7cb4295
    22bdd7cb428e:	33 c0                                           	xor    eax,eax
    22bdd7cb4290:	e9 98 19 00 00                                  	jmp    0x22bdd7cb5c2d
    22bdd7cb4295:	c5 c0 c2 c6 02                                  	vcmpleps xmm0,xmm7,xmm6
    22bdd7cb429a:	c5 fa 6f ad 34 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xcc]
    22bdd7cb42a2:	c5 d0 c2 ee 02                                  	vcmpleps xmm5,xmm5,xmm6
    22bdd7cb42a7:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    22bdd7cb42ab:	c5 78 50 c8                                     	vmovmskps r9d,xmm0
    22bdd7cb42af:	45 8b e1                                        	mov    r12d,r9d
    22bdd7cb42b2:	44 23 e2                                        	and    r12d,edx
    22bdd7cb42b5:	41 3b d4                                        	cmp    edx,r12d
    22bdd7cb42b8:	0f 85 27 00 00 00                               	jne    0x22bdd7cb42e5
    22bdd7cb42be:	49 ba 60 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d860
    22bdd7cb42c8:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    22bdd7cb42cd:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x22bdd7cb42c0
    22bdd7cb42d4:	c4 c1 60 57 12                                  	vxorps xmm2,xmm3,XMMWORD PTR [r10]
    22bdd7cb42d9:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    22bdd7cb42dd:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cb42e0:	e9 a2 00 00 00                                  	jmp    0x22bdd7cb4387
    22bdd7cb42e5:	c5 fa 6f 85 34 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xcc]
    22bdd7cb42ed:	c5 c0 c2 c0 02                                  	vcmpleps xmm0,xmm7,xmm0
    22bdd7cb42f2:	c5 fa 6f ad 34 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xcc]
    22bdd7cb42fa:	c5 c8 c2 ed 02                                  	vcmpleps xmm5,xmm6,xmm5
    22bdd7cb42ff:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    22bdd7cb4303:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    22bdd7cb4307:	41 8b f1                                        	mov    esi,r9d
    22bdd7cb430a:	83 f6 ff                                        	xor    esi,0xffffffff
    22bdd7cb430d:	23 f2                                           	and    esi,edx
    22bdd7cb430f:	41 23 f7                                        	and    esi,r15d
    22bdd7cb4312:	3b d6                                           	cmp    edx,esi
    22bdd7cb4314:	0f 85 31 00 00 00                               	jne    0x22bdd7cb434b
    22bdd7cb431a:	c5 fa 6f 85 34 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xcc]
    22bdd7cb4322:	c7 45 9c 00 00 00 00                            	mov    DWORD PTR [rbp-0x64],0x0
    22bdd7cb4329:	c7 45 8c 01 00 00 00                            	mov    DWORD PTR [rbp-0x74],0x1
    22bdd7cb4330:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    22bdd7cb4334:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    22bdd7cb4338:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7cb433c:	c5 f9 28 c3                                     	vmovapd xmm0,xmm3
    22bdd7cb4340:	41 b9 02 00 00 00                               	mov    r9d,0x2
    22bdd7cb4346:	e9 3c 00 00 00                                  	jmp    0x22bdd7cb4387
    22bdd7cb434b:	41 8b f7                                        	mov    esi,r15d
    22bdd7cb434e:	41 0b f1                                        	or     esi,r9d
    22bdd7cb4351:	23 f2                                           	and    esi,edx
    22bdd7cb4353:	85 f6                                           	test   esi,esi
    22bdd7cb4355:	0f 84 07 00 00 00                               	je     0x22bdd7cb4362
    22bdd7cb435b:	33 f6                                           	xor    esi,esi
    22bdd7cb435d:	e9 c9 18 00 00                                  	jmp    0x22bdd7cb5c2b
    22bdd7cb4362:	4c 8b 15 57 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff57]        # 0x22bdd7cb42c0
    22bdd7cb4369:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    22bdd7cb436e:	c7 45 9c 01 00 00 00                            	mov    DWORD PTR [rbp-0x64],0x1
    22bdd7cb4375:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    22bdd7cb4379:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    22bdd7cb437d:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    22bdd7cb4381:	41 b9 04 00 00 00                               	mov    r9d,0x4
    22bdd7cb4387:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    22bdd7cb438b:	c5 e0 c2 cc 02                                  	vcmpleps xmm1,xmm3,xmm4
    22bdd7cb4390:	c5 f8 50 f1                                     	vmovmskps esi,xmm1
    22bdd7cb4394:	41 23 f0                                        	and    esi,r8d
    22bdd7cb4397:	85 f6                                           	test   esi,esi
    22bdd7cb4399:	0f 85 81 00 00 00                               	jne    0x22bdd7cb4420
    22bdd7cb439f:	4c 8b 15 1a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff1a]        # 0x22bdd7cb42c0
    22bdd7cb43a6:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    22bdd7cb43ab:	44 8b 45 8c                                     	mov    r8d,DWORD PTR [rbp-0x74]
    22bdd7cb43af:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb43b2:	0f 84 05 00 00 00                               	je     0x22bdd7cb43bd
    22bdd7cb43b8:	e9 04 00 00 00                                  	jmp    0x22bdd7cb43c1
    22bdd7cb43bd:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    22bdd7cb43c1:	4c 8b 15 f8 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef8]        # 0x22bdd7cb42c0
    22bdd7cb43c8:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    22bdd7cb43cd:	44 8b 45 9c                                     	mov    r8d,DWORD PTR [rbp-0x64]
    22bdd7cb43d1:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb43d4:	0f 84 09 00 00 00                               	je     0x22bdd7cb43e3
    22bdd7cb43da:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cb43de:	e9 04 00 00 00                                  	jmp    0x22bdd7cb43e7
    22bdd7cb43e3:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    22bdd7cb43e7:	41 3b d4                                        	cmp    edx,r12d
    22bdd7cb43ea:	41 0f 94 c0                                     	sete   r8b
    22bdd7cb43ee:	45 0f b6 c0                                     	movzx  r8d,r8b
    22bdd7cb43f2:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb43f5:	0f 84 09 00 00 00                               	je     0x22bdd7cb4404
    22bdd7cb43fb:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cb43ff:	e9 00 00 00 00                                  	jmp    0x22bdd7cb4404
    22bdd7cb4404:	45 8b c1                                        	mov    r8d,r9d
    22bdd7cb4407:	41 83 c8 01                                     	or     r8d,0x1
    22bdd7cb440b:	44 8b 7d 8c                                     	mov    r15d,DWORD PTR [rbp-0x74]
    22bdd7cb440f:	bb 03 00 00 00                                  	mov    ebx,0x3
    22bdd7cb4414:	45 85 ff                                        	test   r15d,r15d
    22bdd7cb4417:	41 0f 44 d8                                     	cmove  ebx,r8d
    22bdd7cb441b:	e9 23 00 00 00                                  	jmp    0x22bdd7cb4443
    22bdd7cb4420:	3b d6                                           	cmp    edx,esi
    22bdd7cb4422:	0f 85 14 00 00 00                               	jne    0x22bdd7cb443c
    22bdd7cb4428:	41 8b d9                                        	mov    ebx,r9d
    22bdd7cb442b:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    22bdd7cb442f:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    22bdd7cb4433:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    22bdd7cb4437:	e9 07 00 00 00                                  	jmp    0x22bdd7cb4443
    22bdd7cb443c:	33 c0                                           	xor    eax,eax
    22bdd7cb443e:	e9 ea 17 00 00                                  	jmp    0x22bdd7cb5c2d
    22bdd7cb4443:	44 8b c3                                        	mov    r8d,ebx
    22bdd7cb4446:	41 c1 e0 06                                     	shl    r8d,0x6
    22bdd7cb444a:	46 8d 04 07                                     	lea    r8d,[rdi+r8*1]
    22bdd7cb444e:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    22bdd7cb4452:	49 8b 59 17                                     	mov    rbx,QWORD PTR [r9+0x17]
    22bdd7cb4456:	46 8b bc 03 24 01 00 00                         	mov    r15d,DWORD PTR [rbx+r8*1+0x124]
    22bdd7cb445e:	45 85 ff                                        	test   r15d,r15d
    22bdd7cb4461:	0f 85 07 00 00 00                               	jne    0x22bdd7cb446e
    22bdd7cb4467:	33 c0                                           	xor    eax,eax
    22bdd7cb4469:	e9 bf 17 00 00                                  	jmp    0x22bdd7cb5c2d
    22bdd7cb446e:	42 8b bc 03 a4 02 00 00                         	mov    edi,DWORD PTR [rbx+r8*1+0x2a4]
    22bdd7cb4476:	83 ff 00                                        	cmp    edi,0x0
    22bdd7cb4479:	0f 8f 07 00 00 00                               	jg     0x22bdd7cb4486
    22bdd7cb447f:	33 c0                                           	xor    eax,eax
    22bdd7cb4481:	e9 a7 17 00 00                                  	jmp    0x22bdd7cb5c2d
    22bdd7cb4486:	41 8d b0 24 04 00 00                            	lea    esi,[r8+0x424]
    22bdd7cb448d:	44 8b 0c 33                                     	mov    r9d,DWORD PTR [rbx+rsi*1]
    22bdd7cb4491:	33 f6                                           	xor    esi,esi
    22bdd7cb4493:	44 3b ce                                        	cmp    r9d,esi
    22bdd7cb4496:	0f 8f 33 00 00 00                               	jg     0x22bdd7cb44cf
    22bdd7cb449c:	45 8b e1                                        	mov    r12d,r9d
    22bdd7cb449f:	45 8b c8                                        	mov    r9d,r8d
    22bdd7cb44a2:	44 8b c7                                        	mov    r8d,edi
    22bdd7cb44a5:	41 8b ff                                        	mov    edi,r15d
    22bdd7cb44a8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7cb44ac:	c5 fa 7f 9d b0 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x150],xmm3
    22bdd7cb44b4:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    22bdd7cb44b8:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    22bdd7cb44bc:	33 f6                                           	xor    esi,esi
    22bdd7cb44be:	44 8b 7d 9c                                     	mov    r15d,DWORD PTR [rbp-0x64]
    22bdd7cb44c2:	c5 fa 6f 8d b0 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x150]
    22bdd7cb44ca:	e9 5c 17 00 00                                  	jmp    0x22bdd7cb5c2b
    22bdd7cb44cf:	be 01 00 00 00                                  	mov    esi,0x1
    22bdd7cb44d4:	f7 de                                           	neg    esi
    22bdd7cb44d6:	03 f7                                           	add    esi,edi
    22bdd7cb44d8:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    22bdd7cb44e2:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cb44e7:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7cb44eb:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x22bdd7cb44da
    22bdd7cb44f2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cb44f7:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cb44fb:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    22bdd7cb4500:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    22bdd7cb4504:	c5 e9 db ed                                     	vpand  xmm5,xmm2,xmm5
    22bdd7cb4508:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    22bdd7cb450d:	c5 f0 5e d5                                     	vdivps xmm2,xmm1,xmm5
    22bdd7cb4511:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    22bdd7cb451b:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7cb4520:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7cb4524:	c5 e8 58 d6                                     	vaddps xmm2,xmm2,xmm6
    22bdd7cb4528:	c5 d8 5e c5                                     	vdivps xmm0,xmm4,xmm5
    22bdd7cb452c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7cb4530:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    22bdd7cb453a:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cb453f:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cb4543:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    22bdd7cb4547:	44 8b 64 03 14                                  	mov    r12d,DWORD PTR [rbx+rax*1+0x14]
    22bdd7cb454c:	44 8b 44 03 10                                  	mov    r8d,DWORD PTR [rbx+rax*1+0x10]
    22bdd7cb4551:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    22bdd7cb4556:	44 3b c3                                        	cmp    r8d,ebx
    22bdd7cb4559:	0f 95 c3                                        	setne  bl
    22bdd7cb455c:	0f b6 db                                        	movzx  ebx,bl
    22bdd7cb455f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    22bdd7cb4562:	b8 00 29 00 00                                  	mov    eax,0x2900
    22bdd7cb4567:	44 3b c0                                        	cmp    r8d,eax
    22bdd7cb456a:	0f 95 c0                                        	setne  al
    22bdd7cb456d:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb4570:	23 d8                                           	and    ebx,eax
    22bdd7cb4572:	85 db                                           	test   ebx,ebx
    22bdd7cb4574:	0f 84 0f 00 00 00                               	je     0x22bdd7cb4589
    22bdd7cb457a:	c4 e3 79 08 e0 09                               	vroundps xmm4,xmm0,0x9
    22bdd7cb4580:	c5 f8 5c e4                                     	vsubps xmm4,xmm0,xmm4
    22bdd7cb4584:	e9 08 00 00 00                                  	jmp    0x22bdd7cb4591
    22bdd7cb4589:	c5 e0 5f e0                                     	vmaxps xmm4,xmm3,xmm0
    22bdd7cb458d:	c5 c8 5d e4                                     	vminps xmm4,xmm6,xmm4
    22bdd7cb4591:	c5 e8 59 c1                                     	vmulps xmm0,xmm2,xmm1
    22bdd7cb4595:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb4598:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    22bdd7cb459c:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    22bdd7cb45a0:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    22bdd7cb45a3:	8b 4c 03 0c                                     	mov    ecx,DWORD PTR [rbx+rax*1+0xc]
    22bdd7cb45a7:	44 8b d7                                        	mov    r10d,edi
    22bdd7cb45aa:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    22bdd7cb45af:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    22bdd7cb45b4:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    22bdd7cb45b8:	b8 01 00 00 00                                  	mov    eax,0x1
    22bdd7cb45bd:	f7 d8                                           	neg    eax
    22bdd7cb45bf:	41 03 c1                                        	add    eax,r9d
    22bdd7cb45c2:	8b d8                                           	mov    ebx,eax
    22bdd7cb45c4:	41 23 d9                                        	and    ebx,r9d
    22bdd7cb45c7:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    22bdd7cb45ca:	8b c6                                           	mov    eax,esi
    22bdd7cb45cc:	23 c7                                           	and    eax,edi
    22bdd7cb45ce:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    22bdd7cb45d1:	33 d2                                           	xor    edx,edx
    22bdd7cb45d3:	85 c0                                           	test   eax,eax
    22bdd7cb45d5:	0f 44 d6                                        	cmove  edx,esi
    22bdd7cb45d8:	45 8b d1                                        	mov    r10d,r9d
    22bdd7cb45db:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    22bdd7cb45e0:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    22bdd7cb45e5:	b8 2f 81 00 00                                  	mov    eax,0x812f
    22bdd7cb45ea:	44 3b e0                                        	cmp    r12d,eax
    22bdd7cb45ed:	0f 95 c0                                        	setne  al
    22bdd7cb45f0:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb45f3:	89 5d 80                                        	mov    DWORD PTR [rbp-0x80],ebx
    22bdd7cb45f6:	bb 00 29 00 00                                  	mov    ebx,0x2900
    22bdd7cb45fb:	44 3b e3                                        	cmp    r12d,ebx
    22bdd7cb45fe:	0f 95 c3                                        	setne  bl
    22bdd7cb4601:	0f b6 db                                        	movzx  ebx,bl
    22bdd7cb4604:	23 c3                                           	and    eax,ebx
    22bdd7cb4606:	85 c0                                           	test   eax,eax
    22bdd7cb4608:	0f 84 0f 00 00 00                               	je     0x22bdd7cb461d
    22bdd7cb460e:	c4 e3 79 08 e8 09                               	vroundps xmm5,xmm0,0x9
    22bdd7cb4614:	c5 f8 5c ed                                     	vsubps xmm5,xmm0,xmm5
    22bdd7cb4618:	e9 08 00 00 00                                  	jmp    0x22bdd7cb4625
    22bdd7cb461d:	c5 e0 5f e8                                     	vmaxps xmm5,xmm3,xmm0
    22bdd7cb4621:	c5 c8 5d ed                                     	vminps xmm5,xmm6,xmm5
    22bdd7cb4625:	c5 d8 59 e5                                     	vmulps xmm4,xmm4,xmm5
    22bdd7cb4629:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    22bdd7cb4633:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cb4638:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7cb463c:	c5 d8 58 c3                                     	vaddps xmm0,xmm4,xmm3
    22bdd7cb4640:	b8 00 26 00 00                                  	mov    eax,0x2600
    22bdd7cb4645:	3b c8                                           	cmp    ecx,eax
    22bdd7cb4647:	0f 94 c0                                        	sete   al
    22bdd7cb464a:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb464d:	85 c0                                           	test   eax,eax
    22bdd7cb464f:	0f 84 09 00 00 00                               	je     0x22bdd7cb465e
    22bdd7cb4655:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    22bdd7cb4659:	e9 00 00 00 00                                  	jmp    0x22bdd7cb465e
    22bdd7cb465e:	c4 e3 79 08 e8 09                               	vroundps xmm5,xmm0,0x9
    22bdd7cb4664:	c5 fa 7f 85 e4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x11c],xmm0
    22bdd7cb466c:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x22bdd7cb4227
    22bdd7cb4673:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    22bdd7cb4678:	c5 fa 7f 8d 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm1
    22bdd7cb4680:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    22bdd7cb468a:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cb468f:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cb4693:	c5 f8 c2 c1 01                                  	vcmpltps xmm0,xmm0,xmm1
    22bdd7cb4698:	49 ba 40 d9 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d940
    22bdd7cb46a2:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    22bdd7cb46a7:	c4 c1 50 54 e7                                  	vandps xmm4,xmm5,xmm15
    22bdd7cb46ac:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    22bdd7cb46b2:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    22bdd7cb46b6:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    22bdd7cb46bb:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    22bdd7cb46c3:	c5 fa 7f 55 ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm2
    22bdd7cb46c8:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    22bdd7cb46cc:	c5 fa 7f 9d 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm3
    22bdd7cb46d4:	c5 fa 6f 9d b4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x14c]
    22bdd7cb46dc:	85 c0                                           	test   eax,eax
    22bdd7cb46de:	0f 84 05 00 00 00                               	je     0x22bdd7cb46e9
    22bdd7cb46e4:	e9 04 00 00 00                                  	jmp    0x22bdd7cb46ed
    22bdd7cb46e9:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    22bdd7cb46ed:	c4 e3 79 08 d3 09                               	vroundps xmm2,xmm3,0x9
    22bdd7cb46f3:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x22bdd7cb469a
    22bdd7cb46fa:	c5 68 c2 fa 00                                  	vcmpeqps xmm15,xmm2,xmm2
    22bdd7cb46ff:	c4 c1 68 54 ff                                  	vandps xmm7,xmm2,xmm15
    22bdd7cb4704:	c4 41 68 c2 3a 0d                               	vcmpgeps xmm15,xmm2,XMMWORD PTR [r10]
    22bdd7cb470a:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7cb470e:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7cb4713:	c5 fa 7f a5 24 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xdc],xmm4
    22bdd7cb471b:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    22bdd7cb4725:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    22bdd7cb472a:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    22bdd7cb472e:	c5 fa 7f ad 34 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xcc],xmm5
    22bdd7cb4736:	4c 8b 15 ea fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaea]        # 0x22bdd7cb4227
    22bdd7cb473d:	c4 c1 68 54 2a                                  	vandps xmm5,xmm2,XMMWORD PTR [r10]
    22bdd7cb4742:	c5 d0 c2 e9 01                                  	vcmpltps xmm5,xmm5,xmm1
    22bdd7cb4747:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    22bdd7cb474b:	c5 c1 db ed                                     	vpand  xmm5,xmm7,xmm5
    22bdd7cb474f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    22bdd7cb4754:	c5 f9 6e ce                                     	vmovd  xmm1,esi
    22bdd7cb4758:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    22bdd7cb475d:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    22bdd7cb4761:	c4 e2 51 3d ff                                  	vpmaxsd xmm7,xmm5,xmm7
    22bdd7cb4766:	c4 e2 41 39 f9                                  	vpminsd xmm7,xmm7,xmm1
    22bdd7cb476b:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    22bdd7cb4770:	44 3b c3                                        	cmp    r8d,ebx
    22bdd7cb4773:	0f 95 c3                                        	setne  bl
    22bdd7cb4776:	0f b6 db                                        	movzx  ebx,bl
    22bdd7cb4779:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    22bdd7cb477f:	b8 00 29 00 00                                  	mov    eax,0x2900
    22bdd7cb4784:	44 3b c0                                        	cmp    r8d,eax
    22bdd7cb4787:	0f 95 c0                                        	setne  al
    22bdd7cb478a:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb478d:	23 d8                                           	and    ebx,eax
    22bdd7cb478f:	85 db                                           	test   ebx,ebx
    22bdd7cb4791:	0f 85 05 00 00 00                               	jne    0x22bdd7cb479c
    22bdd7cb4797:	e9 ab 00 00 00                                  	jmp    0x22bdd7cb4847
    22bdd7cb479c:	c5 f9 6e fa                                     	vmovd  xmm7,edx
    22bdd7cb47a0:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cb47a5:	c5 d1 db ff                                     	vpand  xmm7,xmm5,xmm7
    22bdd7cb47a9:	8b c2                                           	mov    eax,edx
    22bdd7cb47ab:	85 d2                                           	test   edx,edx
    22bdd7cb47ad:	0f 84 07 00 00 00                               	je     0x22bdd7cb47ba
    22bdd7cb47b3:	8b d0                                           	mov    edx,eax
    22bdd7cb47b5:	e9 8d 00 00 00                                  	jmp    0x22bdd7cb4847
    22bdd7cb47ba:	c5 f9 6e ff                                     	vmovd  xmm7,edi
    22bdd7cb47be:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cb47c3:	c5 fa 7f 75 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm6
    22bdd7cb47c8:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    22bdd7cb47cc:	c5 fa 7f bd 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm7
    22bdd7cb47d4:	c5 fa 7f bd a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm7
    22bdd7cb47dc:	c5 fa 7f bd 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm7
    22bdd7cb47e4:	c5 d1 66 f9                                     	vpcmpgtd xmm7,xmm5,xmm1
    22bdd7cb47e8:	c5 fa 7f 85 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm0
    22bdd7cb47f0:	c5 fa 6f 85 94 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x16c]
    22bdd7cb47f8:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    22bdd7cb47fc:	c5 f9 db ff                                     	vpand  xmm7,xmm0,xmm7
    22bdd7cb4800:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cb4805:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cb480a:	c4 c2 41 0a ff                                  	vpsignd xmm7,xmm7,xmm15
    22bdd7cb480f:	c5 fa 6f 85 14 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xec]
    22bdd7cb4817:	c5 f9 66 c5                                     	vpcmpgtd xmm0,xmm0,xmm5
    22bdd7cb481b:	c5 fa 6f b5 a4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x15c]
    22bdd7cb4823:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    22bdd7cb4827:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    22bdd7cb482b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cb4830:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    22bdd7cb4834:	8b d0                                           	mov    edx,eax
    22bdd7cb4836:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7cb483a:	c5 fa 6f 85 54 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xac]
    22bdd7cb4842:	c5 fa 6f 75 bc                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x44]
    22bdd7cb4847:	8b 45 88                                        	mov    eax,DWORD PTR [rbp-0x78]
    22bdd7cb484a:	8b 5d 80                                        	mov    ebx,DWORD PTR [rbp-0x80]
    22bdd7cb484d:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    22bdd7cb4850:	33 c9                                           	xor    ecx,ecx
    22bdd7cb4852:	85 db                                           	test   ebx,ebx
    22bdd7cb4854:	0f 44 c8                                        	cmove  ecx,eax
    22bdd7cb4857:	c5 fa 7f 85 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm0
    22bdd7cb485f:	c5 fa 6f 85 24 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xdc]
    22bdd7cb4867:	c5 fa 7f 8d 44 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xbc],xmm1
    22bdd7cb486f:	c5 fa 6f 8d 54 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xac]
    22bdd7cb4877:	c5 71 df fc                                     	vpandn xmm15,xmm1,xmm4
    22bdd7cb487b:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    22bdd7cb487f:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7cb4884:	8b 45 88                                        	mov    eax,DWORD PTR [rbp-0x78]
    22bdd7cb4887:	c5 f9 6e c0                                     	vmovd  xmm0,eax
    22bdd7cb488b:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7cb4890:	c5 fa 7f 95 04 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xfc],xmm2
    22bdd7cb4898:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    22bdd7cb489c:	c4 e2 71 3d d2                                  	vpmaxsd xmm2,xmm1,xmm2
    22bdd7cb48a1:	c4 e2 69 39 d0                                  	vpminsd xmm2,xmm2,xmm0
    22bdd7cb48a6:	b8 2f 81 00 00                                  	mov    eax,0x812f
    22bdd7cb48ab:	44 3b e0                                        	cmp    r12d,eax
    22bdd7cb48ae:	0f 95 c0                                        	setne  al
    22bdd7cb48b1:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb48b4:	bb 00 29 00 00                                  	mov    ebx,0x2900
    22bdd7cb48b9:	44 3b e3                                        	cmp    r12d,ebx
    22bdd7cb48bc:	0f 95 c3                                        	setne  bl
    22bdd7cb48bf:	0f b6 db                                        	movzx  ebx,bl
    22bdd7cb48c2:	23 c3                                           	and    eax,ebx
    22bdd7cb48c4:	85 c0                                           	test   eax,eax
    22bdd7cb48c6:	0f 85 05 00 00 00                               	jne    0x22bdd7cb48d1
    22bdd7cb48cc:	e9 8a 00 00 00                                  	jmp    0x22bdd7cb495b
    22bdd7cb48d1:	c5 f9 6e d1                                     	vmovd  xmm2,ecx
    22bdd7cb48d5:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7cb48da:	c5 f1 db d2                                     	vpand  xmm2,xmm1,xmm2
    22bdd7cb48de:	8b c1                                           	mov    eax,ecx
    22bdd7cb48e0:	85 c9                                           	test   ecx,ecx
    22bdd7cb48e2:	0f 84 07 00 00 00                               	je     0x22bdd7cb48ef
    22bdd7cb48e8:	8b c8                                           	mov    ecx,eax
    22bdd7cb48ea:	e9 6c 00 00 00                                  	jmp    0x22bdd7cb495b
    22bdd7cb48ef:	c4 c1 79 6e d1                                  	vmovd  xmm2,r9d
    22bdd7cb48f4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7cb48f9:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    22bdd7cb48fd:	c5 fa 7f 9d c4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x13c],xmm3
    22bdd7cb4905:	c5 f1 66 d8                                     	vpcmpgtd xmm3,xmm1,xmm0
    22bdd7cb4909:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    22bdd7cb490d:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    22bdd7cb4911:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    22bdd7cb4916:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cb491b:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    22bdd7cb4920:	c5 fa 6f a5 14 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xec]
    22bdd7cb4928:	c5 d9 66 e1                                     	vpcmpgtd xmm4,xmm4,xmm1
    22bdd7cb492c:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    22bdd7cb4930:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    22bdd7cb4934:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    22bdd7cb4939:	c5 f1 fe e4                                     	vpaddd xmm4,xmm1,xmm4
    22bdd7cb493d:	8b c8                                           	mov    ecx,eax
    22bdd7cb493f:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    22bdd7cb4947:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    22bdd7cb494b:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    22bdd7cb4953:	c5 fa 6f 9d c4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x13c]
    22bdd7cb495b:	c5 fa 7f 85 24 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xdc],xmm0
    22bdd7cb4963:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    22bdd7cb4967:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7cb496c:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    22bdd7cb4971:	c5 fa 7f 8d 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm1
    22bdd7cb4979:	c5 e9 fe cf                                     	vpaddd xmm1,xmm2,xmm7
    22bdd7cb497d:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    22bdd7cb4983:	c4 e3 79 16 cb 02                               	vpextrd ebx,xmm1,0x2
    22bdd7cb4989:	c4 e3 79 16 ce 01                               	vpextrd esi,xmm1,0x1
    22bdd7cb498f:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    22bdd7cb4993:	89 45 98                                        	mov    DWORD PTR [rbp-0x68],eax
    22bdd7cb4996:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb4999:	3d 00 26 00 00                                  	cmp    eax,0x2600
    22bdd7cb499e:	0f 84 c9 02 00 00                               	je     0x22bdd7cb4c6d
    22bdd7cb49a4:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    22bdd7cb49ae:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    22bdd7cb49b3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    22bdd7cb49b7:	c5 fa 7f 95 f4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x10c],xmm2
    22bdd7cb49bf:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    22bdd7cb49c3:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    22bdd7cb49c7:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    22bdd7cb49cc:	c5 fa 7f 9d c4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x13c],xmm3
    22bdd7cb49d4:	c5 fa 6f 9d 44 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xbc]
    22bdd7cb49dc:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    22bdd7cb49e1:	b8 2f 81 00 00                                  	mov    eax,0x812f
    22bdd7cb49e6:	44 3b c0                                        	cmp    r8d,eax
    22bdd7cb49e9:	0f 95 c0                                        	setne  al
    22bdd7cb49ec:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb49ef:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb49f2:	b9 00 29 00 00                                  	mov    ecx,0x2900
    22bdd7cb49f7:	44 3b c1                                        	cmp    r8d,ecx
    22bdd7cb49fa:	0f 95 c1                                        	setne  cl
    22bdd7cb49fd:	0f b6 c9                                        	movzx  ecx,cl
    22bdd7cb4a00:	23 c1                                           	and    eax,ecx
    22bdd7cb4a02:	85 c0                                           	test   eax,eax
    22bdd7cb4a04:	0f 85 05 00 00 00                               	jne    0x22bdd7cb4a0f
    22bdd7cb4a0a:	e9 70 00 00 00                                  	jmp    0x22bdd7cb4a7f
    22bdd7cb4a0f:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    22bdd7cb4a13:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    22bdd7cb4a18:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    22bdd7cb4a1c:	8b c2                                           	mov    eax,edx
    22bdd7cb4a1e:	85 d2                                           	test   edx,edx
    22bdd7cb4a20:	0f 84 07 00 00 00                               	je     0x22bdd7cb4a2d
    22bdd7cb4a26:	8b d0                                           	mov    edx,eax
    22bdd7cb4a28:	e9 52 00 00 00                                  	jmp    0x22bdd7cb4a7f
    22bdd7cb4a2d:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    22bdd7cb4a31:	c5 fa 6f 9d 44 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xbc]
    22bdd7cb4a39:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    22bdd7cb4a3d:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    22bdd7cb4a41:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    22bdd7cb4a45:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    22bdd7cb4a4a:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cb4a4f:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    22bdd7cb4a54:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    22bdd7cb4a58:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    22bdd7cb4a5c:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    22bdd7cb4a60:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    22bdd7cb4a65:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    22bdd7cb4a69:	8b d0                                           	mov    edx,eax
    22bdd7cb4a6b:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    22bdd7cb4a73:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    22bdd7cb4a77:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    22bdd7cb4a7f:	c5 fa 6f 9d 54 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xac]
    22bdd7cb4a87:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    22bdd7cb4a8b:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    22bdd7cb4a8f:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    22bdd7cb4a94:	c5 fa 6f ad 24 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xdc]
    22bdd7cb4a9c:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    22bdd7cb4aa1:	b8 2f 81 00 00                                  	mov    eax,0x812f
    22bdd7cb4aa6:	44 3b e0                                        	cmp    r12d,eax
    22bdd7cb4aa9:	0f 95 c0                                        	setne  al
    22bdd7cb4aac:	0f b6 c0                                        	movzx  eax,al
    22bdd7cb4aaf:	b9 00 29 00 00                                  	mov    ecx,0x2900
    22bdd7cb4ab4:	44 3b e1                                        	cmp    r12d,ecx
    22bdd7cb4ab7:	0f 95 c1                                        	setne  cl
    22bdd7cb4aba:	0f b6 c9                                        	movzx  ecx,cl
    22bdd7cb4abd:	23 c1                                           	and    eax,ecx
    22bdd7cb4abf:	85 c0                                           	test   eax,eax
    22bdd7cb4ac1:	0f 85 05 00 00 00                               	jne    0x22bdd7cb4acc
    22bdd7cb4ac7:	e9 94 00 00 00                                  	jmp    0x22bdd7cb4b60
    22bdd7cb4acc:	8b 45 9c                                        	mov    eax,DWORD PTR [rbp-0x64]
    22bdd7cb4acf:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    22bdd7cb4ad3:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7cb4ad8:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    22bdd7cb4adc:	8b 45 9c                                        	mov    eax,DWORD PTR [rbp-0x64]
    22bdd7cb4adf:	85 c0                                           	test   eax,eax
    22bdd7cb4ae1:	0f 84 05 00 00 00                               	je     0x22bdd7cb4aec
    22bdd7cb4ae7:	e9 74 00 00 00                                  	jmp    0x22bdd7cb4b60
    22bdd7cb4aec:	c4 c1 79 6e d1                                  	vmovd  xmm2,r9d
    22bdd7cb4af1:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7cb4af6:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    22bdd7cb4afa:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    22bdd7cb4b02:	c5 fa 6f 85 24 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xdc]
    22bdd7cb4b0a:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    22bdd7cb4b0e:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    22bdd7cb4b12:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    22bdd7cb4b16:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cb4b1b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cb4b20:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    22bdd7cb4b25:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    22bdd7cb4b2a:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    22bdd7cb4b2e:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    22bdd7cb4b32:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    22bdd7cb4b36:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7cb4b3b:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    22bdd7cb4b3f:	c5 fa 7f 95 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm2
    22bdd7cb4b47:	c5 fa 7f ad 44 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xbc],xmm5
    22bdd7cb4b4f:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    22bdd7cb4b53:	c5 fa 6f 85 14 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xec]
    22bdd7cb4b5b:	c5 fa 6f 4d cc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x34]
    22bdd7cb4b60:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    22bdd7cb4b65:	c5 e9 fe ef                                     	vpaddd xmm5,xmm2,xmm7
    22bdd7cb4b69:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb4b6c:	83 f8 0f                                        	cmp    eax,0xf
    22bdd7cb4b6f:	0f 85 1f 00 00 00                               	jne    0x22bdd7cb4b94
    22bdd7cb4b75:	c5 c1 fe dc                                     	vpaddd xmm3,xmm7,xmm4
    22bdd7cb4b79:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    22bdd7cb4b7d:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    22bdd7cb4b81:	83 f8 0f                                        	cmp    eax,0xf
    22bdd7cb4b84:	0f 85 05 00 00 00                               	jne    0x22bdd7cb4b8f
    22bdd7cb4b8a:	e9 a6 01 00 00                                  	jmp    0x22bdd7cb4d35
    22bdd7cb4b8f:	e9 00 00 00 00                                  	jmp    0x22bdd7cb4b94
    22bdd7cb4b94:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb4b97:	83 e0 08                                        	and    eax,0x8
    22bdd7cb4b9a:	8b 4d a8                                        	mov    ecx,DWORD PTR [rbp-0x58]
    22bdd7cb4b9d:	83 e1 04                                        	and    ecx,0x4
    22bdd7cb4ba0:	44 8b 65 a8                                     	mov    r12d,DWORD PTR [rbp-0x58]
    22bdd7cb4ba4:	41 83 e4 02                                     	and    r12d,0x2
    22bdd7cb4ba8:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    22bdd7cb4bac:	41 83 e0 01                                     	and    r8d,0x1
    22bdd7cb4bb0:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    22bdd7cb4bb4:	41 83 f9 0f                                     	cmp    r9d,0xf
    22bdd7cb4bb8:	0f 85 05 00 00 00                               	jne    0x22bdd7cb4bc3
    22bdd7cb4bbe:	e9 13 04 00 00                                  	jmp    0x22bdd7cb4fd6
    22bdd7cb4bc3:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb4bc6:	0f 84 1f 00 00 00                               	je     0x22bdd7cb4beb
    22bdd7cb4bcc:	8b d7                                           	mov    edx,edi
    22bdd7cb4bce:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb4bd1:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb4bd5:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    22bdd7cb4bd9:	4d 8b 49 17                                     	mov    r9,QWORD PTR [r9+0x17]
    22bdd7cb4bdd:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    22bdd7cb4be0:	41 8b 04 11                                     	mov    eax,DWORD PTR [r9+rdx*1]
    22bdd7cb4be4:	33 d2                                           	xor    edx,edx
    22bdd7cb4be6:	e9 07 00 00 00                                  	jmp    0x22bdd7cb4bf2
    22bdd7cb4beb:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    22bdd7cb4bee:	33 c0                                           	xor    eax,eax
    22bdd7cb4bf0:	33 d2                                           	xor    edx,edx
    22bdd7cb4bf2:	45 85 e4                                        	test   r12d,r12d
    22bdd7cb4bf5:	0f 84 22 00 00 00                               	je     0x22bdd7cb4c1d
    22bdd7cb4bfb:	44 8b ce                                        	mov    r9d,esi
    22bdd7cb4bfe:	41 c1 e1 02                                     	shl    r9d,0x2
    22bdd7cb4c02:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    22bdd7cb4c06:	89 45 84                                        	mov    DWORD PTR [rbp-0x7c],eax
    22bdd7cb4c09:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb4c0d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb4c11:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    22bdd7cb4c14:	42 8b 0c 08                                     	mov    ecx,DWORD PTR [rax+r9*1]
    22bdd7cb4c18:	e9 08 00 00 00                                  	jmp    0x22bdd7cb4c25
    22bdd7cb4c1d:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    22bdd7cb4c20:	89 45 84                                        	mov    DWORD PTR [rbp-0x7c],eax
    22bdd7cb4c23:	8b ca                                           	mov    ecx,edx
    22bdd7cb4c25:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    22bdd7cb4c28:	85 c0                                           	test   eax,eax
    22bdd7cb4c2a:	0f 84 1c 00 00 00                               	je     0x22bdd7cb4c4c
    22bdd7cb4c30:	8b c3                                           	mov    eax,ebx
    22bdd7cb4c32:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4c35:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4c39:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb4c3d:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    22bdd7cb4c41:	44 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+rax*1]
    22bdd7cb4c45:	33 c0                                           	xor    eax,eax
    22bdd7cb4c47:	e9 09 00 00 00                                  	jmp    0x22bdd7cb4c55
    22bdd7cb4c4c:	33 c0                                           	xor    eax,eax
    22bdd7cb4c4e:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    22bdd7cb4c55:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb4c58:	85 d2                                           	test   edx,edx
    22bdd7cb4c5a:	0f 84 08 00 00 00                               	je     0x22bdd7cb4c68
    22bdd7cb4c60:	41 8b d1                                        	mov    edx,r9d
    22bdd7cb4c63:	e9 c0 03 00 00                                  	jmp    0x22bdd7cb5028
    22bdd7cb4c68:	e9 d6 03 00 00                                  	jmp    0x22bdd7cb5043
    22bdd7cb4c6d:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb4c70:	83 f8 0f                                        	cmp    eax,0xf
    22bdd7cb4c73:	0f 85 05 00 00 00                               	jne    0x22bdd7cb4c7e
    22bdd7cb4c79:	e9 dd 0c 00 00                                  	jmp    0x22bdd7cb595b
    22bdd7cb4c7e:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb4c81:	83 e0 01                                        	and    eax,0x1
    22bdd7cb4c84:	85 c0                                           	test   eax,eax
    22bdd7cb4c86:	0f 84 20 00 00 00                               	je     0x22bdd7cb4cac
    22bdd7cb4c8c:	8b c7                                           	mov    eax,edi
    22bdd7cb4c8e:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4c91:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4c95:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    22bdd7cb4c99:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    22bdd7cb4c9e:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb4ca1:	41 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+rax*1]
    22bdd7cb4ca5:	33 c0                                           	xor    eax,eax
    22bdd7cb4ca7:	e9 07 00 00 00                                  	jmp    0x22bdd7cb4cb3
    22bdd7cb4cac:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb4caf:	33 c0                                           	xor    eax,eax
    22bdd7cb4cb1:	33 c9                                           	xor    ecx,ecx
    22bdd7cb4cb3:	44 8b 65 a8                                     	mov    r12d,DWORD PTR [rbp-0x58]
    22bdd7cb4cb7:	41 83 e4 02                                     	and    r12d,0x2
    22bdd7cb4cbb:	45 85 e4                                        	test   r12d,r12d
    22bdd7cb4cbe:	0f 84 22 00 00 00                               	je     0x22bdd7cb4ce6
    22bdd7cb4cc4:	44 8b e6                                        	mov    r12d,esi
    22bdd7cb4cc7:	41 c1 e4 02                                     	shl    r12d,0x2
    22bdd7cb4ccb:	47 8d 24 27                                     	lea    r12d,[r15+r12*1]
    22bdd7cb4ccf:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    22bdd7cb4cd2:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb4cd6:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb4cda:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    22bdd7cb4cdd:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    22bdd7cb4ce1:	e9 05 00 00 00                                  	jmp    0x22bdd7cb4ceb
    22bdd7cb4ce6:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    22bdd7cb4ce9:	8b c8                                           	mov    ecx,eax
    22bdd7cb4ceb:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb4cee:	83 e0 04                                        	and    eax,0x4
    22bdd7cb4cf1:	85 c0                                           	test   eax,eax
    22bdd7cb4cf3:	0f 84 1c 00 00 00                               	je     0x22bdd7cb4d15
    22bdd7cb4cf9:	8b c3                                           	mov    eax,ebx
    22bdd7cb4cfb:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4cfe:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4d02:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    22bdd7cb4d06:	4d 8b 41 17                                     	mov    r8,QWORD PTR [r9+0x17]
    22bdd7cb4d0a:	45 8b 24 00                                     	mov    r12d,DWORD PTR [r8+rax*1]
    22bdd7cb4d0e:	33 c0                                           	xor    eax,eax
    22bdd7cb4d10:	e9 05 00 00 00                                  	jmp    0x22bdd7cb4d1a
    22bdd7cb4d15:	33 c0                                           	xor    eax,eax
    22bdd7cb4d17:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cb4d1a:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    22bdd7cb4d1e:	41 83 e0 08                                     	and    r8d,0x8
    22bdd7cb4d22:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb4d25:	0f 85 05 00 00 00                               	jne    0x22bdd7cb4d30
    22bdd7cb4d2b:	e9 8e 0c 00 00                                  	jmp    0x22bdd7cb59be
    22bdd7cb4d30:	e9 6e 0c 00 00                                  	jmp    0x22bdd7cb59a3
    22bdd7cb4d35:	8b c7                                           	mov    eax,edi
    22bdd7cb4d37:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4d3a:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4d3e:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    22bdd7cb4d42:	48 8b 49 17                                     	mov    rcx,QWORD PTR [rcx+0x17]
    22bdd7cb4d46:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    22bdd7cb4d4b:	8b c6                                           	mov    eax,esi
    22bdd7cb4d4d:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4d50:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4d54:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    22bdd7cb4d5c:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    22bdd7cb4d61:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    22bdd7cb4d6b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4d70:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    22bdd7cb4d7a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4d80:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    22bdd7cb4d85:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x22bdd7cb4d72
    22bdd7cb4d8c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4d91:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x22bdd7cb4d63
    22bdd7cb4d98:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4d9e:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    22bdd7cb4da3:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    22bdd7cb4da8:	8b c3                                           	mov    eax,ebx
    22bdd7cb4daa:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4dad:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4db1:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    22bdd7cb4db6:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    22bdd7cb4db9:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb4dbc:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4dc0:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    22bdd7cb4dc5:	4c 8b 15 97 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff97]        # 0x22bdd7cb4d63
    22bdd7cb4dcc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4dd1:	4c 8b 15 9a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9a]        # 0x22bdd7cb4d72
    22bdd7cb4dd8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4dde:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    22bdd7cb4de3:	4c 8b 15 88 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff88]        # 0x22bdd7cb4d72
    22bdd7cb4dea:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4def:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x22bdd7cb4d63
    22bdd7cb4df6:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4dfc:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    22bdd7cb4e01:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cb4e06:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    22bdd7cb4e10:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4e15:	4c 8b 15 56 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff56]        # 0x22bdd7cb4d72
    22bdd7cb4e1c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4e22:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    22bdd7cb4e27:	4c 8b 15 44 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff44]        # 0x22bdd7cb4d72
    22bdd7cb4e2e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4e33:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x22bdd7cb4e08
    22bdd7cb4e3a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4e40:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    22bdd7cb4e45:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7cb4e4a:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    22bdd7cb4e54:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4e59:	4c 8b 15 12 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff12]        # 0x22bdd7cb4d72
    22bdd7cb4e60:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4e66:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    22bdd7cb4e6b:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x22bdd7cb4d72
    22bdd7cb4e72:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4e77:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x22bdd7cb4e4c
    22bdd7cb4e7e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4e84:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    22bdd7cb4e89:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    22bdd7cb4e8e:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    22bdd7cb4e93:	c5 f9 7e c0                                     	vmovd  eax,xmm0
    22bdd7cb4e97:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4e9b:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    22bdd7cb4ea0:	c4 e3 79 16 c0 01                               	vpextrd eax,xmm0,0x1
    22bdd7cb4ea6:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4eaa:	c5 fb 10 3c 01                                  	vmovsd xmm7,QWORD PTR [rcx+rax*1]
    22bdd7cb4eaf:	4c 8b 15 ad fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffead]        # 0x22bdd7cb4d63
    22bdd7cb4eb6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4ebb:	4c 8b 15 b0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeb0]        # 0x22bdd7cb4d72
    22bdd7cb4ec2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4ec8:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    22bdd7cb4ecd:	4c 8b 15 9e fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9e]        # 0x22bdd7cb4d72
    22bdd7cb4ed4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4ed9:	4c 8b 15 83 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe83]        # 0x22bdd7cb4d63
    22bdd7cb4ee0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4ee6:	c4 c2 41 00 ee                                  	vpshufb xmm5,xmm7,xmm14
    22bdd7cb4eeb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    22bdd7cb4ef0:	c4 e3 79 16 c0 02                               	vpextrd eax,xmm0,0x2
    22bdd7cb4ef6:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4efa:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    22bdd7cb4eff:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    22bdd7cb4f05:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb4f09:	c5 fb 10 3c 01                                  	vmovsd xmm7,QWORD PTR [rcx+rax*1]
    22bdd7cb4f0e:	4c 8b 15 4e fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe4e]        # 0x22bdd7cb4d63
    22bdd7cb4f15:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4f1a:	4c 8b 15 51 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe51]        # 0x22bdd7cb4d72
    22bdd7cb4f21:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4f27:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    22bdd7cb4f2c:	4c 8b 15 3f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3f]        # 0x22bdd7cb4d72
    22bdd7cb4f33:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4f38:	4c 8b 15 24 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe24]        # 0x22bdd7cb4d63
    22bdd7cb4f3f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4f45:	c4 c2 41 00 de                                  	vpshufb xmm3,xmm7,xmm14
    22bdd7cb4f4a:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    22bdd7cb4f4f:	4c 8b 15 b2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeb2]        # 0x22bdd7cb4e08
    22bdd7cb4f56:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4f5b:	4c 8b 15 10 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe10]        # 0x22bdd7cb4d72
    22bdd7cb4f62:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4f68:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    22bdd7cb4f6d:	4c 8b 15 fe fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfe]        # 0x22bdd7cb4d72
    22bdd7cb4f74:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4f79:	4c 8b 15 88 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe88]        # 0x22bdd7cb4e08
    22bdd7cb4f80:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4f86:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    22bdd7cb4f8b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cb4f90:	4c 8b 15 b5 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeb5]        # 0x22bdd7cb4e4c
    22bdd7cb4f97:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4f9c:	4c 8b 15 cf fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdcf]        # 0x22bdd7cb4d72
    22bdd7cb4fa3:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4fa9:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    22bdd7cb4fae:	4c 8b 15 bd fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdbd]        # 0x22bdd7cb4d72
    22bdd7cb4fb5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4fba:	4c 8b 15 8b fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8b]        # 0x22bdd7cb4e4c
    22bdd7cb4fc1:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4fc7:	c4 c2 61 00 fe                                  	vpshufb xmm7,xmm3,xmm14
    22bdd7cb4fcc:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cb4fd1:	e9 a9 04 00 00                                  	jmp    0x22bdd7cb547f
    22bdd7cb4fd6:	44 8b ce                                        	mov    r9d,esi
    22bdd7cb4fd9:	41 c1 e1 02                                     	shl    r9d,0x2
    22bdd7cb4fdd:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    22bdd7cb4fe1:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    22bdd7cb4fe4:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb4fe8:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb4fec:	89 4d 94                                        	mov    DWORD PTR [rbp-0x6c],ecx
    22bdd7cb4fef:	42 8b 0c 08                                     	mov    ecx,DWORD PTR [rax+r9*1]
    22bdd7cb4ff3:	44 8b cf                                        	mov    r9d,edi
    22bdd7cb4ff6:	41 c1 e1 02                                     	shl    r9d,0x2
    22bdd7cb4ffa:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    22bdd7cb4ffe:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    22bdd7cb5001:	42 8b 14 08                                     	mov    edx,DWORD PTR [rax+r9*1]
    22bdd7cb5005:	44 8b cb                                        	mov    r9d,ebx
    22bdd7cb5008:	41 c1 e1 02                                     	shl    r9d,0x2
    22bdd7cb500c:	47 8d 0c 0f                                     	lea    r9d,[r15+r9*1]
    22bdd7cb5010:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
    22bdd7cb5013:	42 8b 1c 08                                     	mov    ebx,DWORD PTR [rax+r9*1]
    22bdd7cb5017:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    22bdd7cb501a:	8b c6                                           	mov    eax,esi
    22bdd7cb501c:	44 8b cb                                        	mov    r9d,ebx
    22bdd7cb501f:	8b 95 78 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x88]
    22bdd7cb5025:	8b 5d 88                                        	mov    ebx,DWORD PTR [rbp-0x78]
    22bdd7cb5028:	8b 55 98                                        	mov    edx,DWORD PTR [rbp-0x68]
    22bdd7cb502b:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb502e:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb5032:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb5036:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    22bdd7cb503a:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    22bdd7cb5040:	8b 04 16                                        	mov    eax,DWORD PTR [rsi+rdx*1]
    22bdd7cb5043:	c5 fa 6f 9d f4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x10c]
    22bdd7cb504b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    22bdd7cb504f:	8b 55 84                                        	mov    edx,DWORD PTR [rbp-0x7c]
    22bdd7cb5052:	c5 f9 6e fa                                     	vmovd  xmm7,edx
    22bdd7cb5056:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cb505b:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    22bdd7cb505e:	83 fa 0f                                        	cmp    edx,0xf
    22bdd7cb5061:	0f 84 a9 00 00 00                               	je     0x22bdd7cb5110
    22bdd7cb5067:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb506a:	0f 84 1d 00 00 00                               	je     0x22bdd7cb508d
    22bdd7cb5070:	c5 f9 7e da                                     	vmovd  edx,xmm3
    22bdd7cb5074:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb5077:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb507b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb507f:	48 8b 5e 17                                     	mov    rbx,QWORD PTR [rsi+0x17]
    22bdd7cb5083:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    22bdd7cb5086:	33 d2                                           	xor    edx,edx
    22bdd7cb5088:	e9 04 00 00 00                                  	jmp    0x22bdd7cb5091
    22bdd7cb508d:	33 d2                                           	xor    edx,edx
    22bdd7cb508f:	33 f6                                           	xor    esi,esi
    22bdd7cb5091:	45 85 e4                                        	test   r12d,r12d
    22bdd7cb5094:	0f 84 26 00 00 00                               	je     0x22bdd7cb50c0
    22bdd7cb509a:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    22bdd7cb50a0:	c1 e3 02                                        	shl    ebx,0x2
    22bdd7cb50a3:	41 8d 1c 1f                                     	lea    ebx,[r15+rbx*1]
    22bdd7cb50a7:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    22bdd7cb50ad:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb50b1:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb50b5:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb50b8:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    22bdd7cb50bb:	e9 0b 00 00 00                                  	jmp    0x22bdd7cb50cb
    22bdd7cb50c0:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb50c3:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    22bdd7cb50c9:	8b ca                                           	mov    ecx,edx
    22bdd7cb50cb:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    22bdd7cb50ce:	85 c0                                           	test   eax,eax
    22bdd7cb50d0:	0f 84 1f 00 00 00                               	je     0x22bdd7cb50f5
    22bdd7cb50d6:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    22bdd7cb50dc:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb50df:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb50e3:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    22bdd7cb50e7:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    22bdd7cb50eb:	8b 3c 02                                        	mov    edi,DWORD PTR [rdx+rax*1]
    22bdd7cb50ee:	33 c0                                           	xor    eax,eax
    22bdd7cb50f0:	e9 04 00 00 00                                  	jmp    0x22bdd7cb50f9
    22bdd7cb50f5:	33 c0                                           	xor    eax,eax
    22bdd7cb50f7:	33 ff                                           	xor    edi,edi
    22bdd7cb50f9:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb50fc:	85 d2                                           	test   edx,edx
    22bdd7cb50fe:	0f 84 07 00 00 00                               	je     0x22bdd7cb510b
    22bdd7cb5104:	8b d7                                           	mov    edx,edi
    22bdd7cb5106:	e9 4f 00 00 00                                  	jmp    0x22bdd7cb515a
    22bdd7cb510b:	e9 65 00 00 00                                  	jmp    0x22bdd7cb5175
    22bdd7cb5110:	c4 e3 79 16 da 01                               	vpextrd edx,xmm3,0x1
    22bdd7cb5116:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb5119:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb511d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb5121:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    22bdd7cb5125:	89 85 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],eax
    22bdd7cb512b:	8b 04 16                                        	mov    eax,DWORD PTR [rsi+rdx*1]
    22bdd7cb512e:	c5 f9 7e da                                     	vmovd  edx,xmm3
    22bdd7cb5132:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb5135:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb5139:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb513c:	8b 0c 16                                        	mov    ecx,DWORD PTR [rsi+rdx*1]
    22bdd7cb513f:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    22bdd7cb5145:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb5148:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb514c:	8b 1c 16                                        	mov    ebx,DWORD PTR [rsi+rdx*1]
    22bdd7cb514f:	8b f1                                           	mov    esi,ecx
    22bdd7cb5151:	8b c8                                           	mov    ecx,eax
    22bdd7cb5153:	8b c7                                           	mov    eax,edi
    22bdd7cb5155:	8b fb                                           	mov    edi,ebx
    22bdd7cb5157:	8b 55 84                                        	mov    edx,DWORD PTR [rbp-0x7c]
    22bdd7cb515a:	c4 e3 79 16 da 03                               	vpextrd edx,xmm3,0x3
    22bdd7cb5160:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb5163:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb5167:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    22bdd7cb516b:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    22bdd7cb516f:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    22bdd7cb5172:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    22bdd7cb5175:	8b 55 9c                                        	mov    edx,DWORD PTR [rbp-0x64]
    22bdd7cb5178:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    22bdd7cb5180:	c4 e3 41 22 c2 01                               	vpinsrd xmm0,xmm7,edx,0x1
    22bdd7cb5186:	c5 f9 6e de                                     	vmovd  xmm3,esi
    22bdd7cb518a:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    22bdd7cb518f:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    22bdd7cb5195:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    22bdd7cb5198:	83 fa 0f                                        	cmp    edx,0xf
    22bdd7cb519b:	0f 84 a2 00 00 00                               	je     0x22bdd7cb5243
    22bdd7cb51a1:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb51a4:	0f 84 1d 00 00 00                               	je     0x22bdd7cb51c7
    22bdd7cb51aa:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    22bdd7cb51ae:	c1 e1 02                                        	shl    ecx,0x2
    22bdd7cb51b1:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    22bdd7cb51b5:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    22bdd7cb51b9:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    22bdd7cb51bd:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    22bdd7cb51c0:	33 c9                                           	xor    ecx,ecx
    22bdd7cb51c2:	e9 04 00 00 00                                  	jmp    0x22bdd7cb51cb
    22bdd7cb51c7:	33 c9                                           	xor    ecx,ecx
    22bdd7cb51c9:	33 db                                           	xor    ebx,ebx
    22bdd7cb51cb:	45 85 e4                                        	test   r12d,r12d
    22bdd7cb51ce:	0f 84 23 00 00 00                               	je     0x22bdd7cb51f7
    22bdd7cb51d4:	c4 e3 79 16 ea 01                               	vpextrd edx,xmm5,0x1
    22bdd7cb51da:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb51dd:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb51e1:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    22bdd7cb51e4:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb51e8:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb51ec:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    22bdd7cb51ef:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    22bdd7cb51f2:	e9 03 00 00 00                                  	jmp    0x22bdd7cb51fa
    22bdd7cb51f7:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    22bdd7cb51fa:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    22bdd7cb51fd:	85 c0                                           	test   eax,eax
    22bdd7cb51ff:	0f 84 1f 00 00 00                               	je     0x22bdd7cb5224
    22bdd7cb5205:	c4 e3 79 16 e8 02                               	vpextrd eax,xmm5,0x2
    22bdd7cb520b:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb520e:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb5212:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb5216:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    22bdd7cb521a:	8b 34 02                                        	mov    esi,DWORD PTR [rdx+rax*1]
    22bdd7cb521d:	33 c0                                           	xor    eax,eax
    22bdd7cb521f:	e9 08 00 00 00                                  	jmp    0x22bdd7cb522c
    22bdd7cb5224:	33 c0                                           	xor    eax,eax
    22bdd7cb5226:	8b b5 74 ff ff ff                               	mov    esi,DWORD PTR [rbp-0x8c]
    22bdd7cb522c:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb522f:	85 d2                                           	test   edx,edx
    22bdd7cb5231:	0f 84 07 00 00 00                               	je     0x22bdd7cb523e
    22bdd7cb5237:	8b d6                                           	mov    edx,esi
    22bdd7cb5239:	e9 50 00 00 00                                  	jmp    0x22bdd7cb528e
    22bdd7cb523e:	e9 6e 00 00 00                                  	jmp    0x22bdd7cb52b1
    22bdd7cb5243:	c4 e3 79 16 ea 01                               	vpextrd edx,xmm5,0x1
    22bdd7cb5249:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb524c:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb5250:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    22bdd7cb5254:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    22bdd7cb5258:	89 45 80                                        	mov    DWORD PTR [rbp-0x80],eax
    22bdd7cb525b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    22bdd7cb525e:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    22bdd7cb5262:	c1 e1 02                                        	shl    ecx,0x2
    22bdd7cb5265:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    22bdd7cb5269:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    22bdd7cb526c:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    22bdd7cb5272:	c1 e1 02                                        	shl    ecx,0x2
    22bdd7cb5275:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    22bdd7cb5279:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    22bdd7cb527c:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    22bdd7cb527f:	8b c8                                           	mov    ecx,eax
    22bdd7cb5281:	8b c6                                           	mov    eax,esi
    22bdd7cb5283:	8b f2                                           	mov    esi,edx
    22bdd7cb5285:	8b 95 74 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x8c]
    22bdd7cb528b:	8b 5d 9c                                        	mov    ebx,DWORD PTR [rbp-0x64]
    22bdd7cb528e:	c4 e3 79 16 ea 03                               	vpextrd edx,xmm5,0x3
    22bdd7cb5294:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb5297:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb529b:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    22bdd7cb529e:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb52a2:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb52a6:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    22bdd7cb52a9:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    22bdd7cb52ac:	8b c1                                           	mov    eax,ecx
    22bdd7cb52ae:	8b 4d 98                                        	mov    ecx,DWORD PTR [rbp-0x68]
    22bdd7cb52b1:	c4 c3 79 22 f9 02                               	vpinsrd xmm7,xmm0,r9d,0x2
    22bdd7cb52b7:	c4 e3 61 22 c7 02                               	vpinsrd xmm0,xmm3,edi,0x2
    22bdd7cb52bd:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    22bdd7cb52c1:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    22bdd7cb52c5:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    22bdd7cb52ca:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    22bdd7cb52d0:	c4 e3 51 22 ee 02                               	vpinsrd xmm5,xmm5,esi,0x2
    22bdd7cb52d6:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    22bdd7cb52d9:	83 fa 0f                                        	cmp    edx,0xf
    22bdd7cb52dc:	0f 84 a1 00 00 00                               	je     0x22bdd7cb5383
    22bdd7cb52e2:	45 85 c0                                        	test   r8d,r8d
    22bdd7cb52e5:	0f 84 1d 00 00 00                               	je     0x22bdd7cb5308
    22bdd7cb52eb:	c5 f9 7e d9                                     	vmovd  ecx,xmm3
    22bdd7cb52ef:	c1 e1 02                                        	shl    ecx,0x2
    22bdd7cb52f2:	41 8d 0c 0f                                     	lea    ecx,[r15+rcx*1]
    22bdd7cb52f6:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    22bdd7cb52fa:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    22bdd7cb52fe:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    22bdd7cb5301:	33 c9                                           	xor    ecx,ecx
    22bdd7cb5303:	e9 04 00 00 00                                  	jmp    0x22bdd7cb530c
    22bdd7cb5308:	33 c9                                           	xor    ecx,ecx
    22bdd7cb530a:	33 db                                           	xor    ebx,ebx
    22bdd7cb530c:	45 85 e4                                        	test   r12d,r12d
    22bdd7cb530f:	0f 84 23 00 00 00                               	je     0x22bdd7cb5338
    22bdd7cb5315:	c4 e3 79 16 da 01                               	vpextrd edx,xmm3,0x1
    22bdd7cb531b:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb531e:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb5322:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    22bdd7cb5325:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb5329:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb532d:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    22bdd7cb5330:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    22bdd7cb5333:	e9 03 00 00 00                                  	jmp    0x22bdd7cb533b
    22bdd7cb5338:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    22bdd7cb533b:	8b 45 94                                        	mov    eax,DWORD PTR [rbp-0x6c]
    22bdd7cb533e:	85 c0                                           	test   eax,eax
    22bdd7cb5340:	0f 84 20 00 00 00                               	je     0x22bdd7cb5366
    22bdd7cb5346:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    22bdd7cb534c:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb534f:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb5353:	4c 8b 45 f0                                     	mov    r8,QWORD PTR [rbp-0x10]
    22bdd7cb5357:	49 8b 50 17                                     	mov    rdx,QWORD PTR [r8+0x17]
    22bdd7cb535b:	44 8b 24 02                                     	mov    r12d,DWORD PTR [rdx+rax*1]
    22bdd7cb535f:	33 c0                                           	xor    eax,eax
    22bdd7cb5361:	e9 05 00 00 00                                  	jmp    0x22bdd7cb536b
    22bdd7cb5366:	33 c0                                           	xor    eax,eax
    22bdd7cb5368:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cb536b:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb536e:	85 d2                                           	test   edx,edx
    22bdd7cb5370:	0f 84 08 00 00 00                               	je     0x22bdd7cb537e
    22bdd7cb5376:	41 8b d4                                        	mov    edx,r12d
    22bdd7cb5379:	e9 59 00 00 00                                  	jmp    0x22bdd7cb53d7
    22bdd7cb537e:	e9 70 00 00 00                                  	jmp    0x22bdd7cb53f3
    22bdd7cb5383:	c4 e3 79 16 da 01                               	vpextrd edx,xmm3,0x1
    22bdd7cb5389:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb538c:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb5390:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
    22bdd7cb5393:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    22bdd7cb5397:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    22bdd7cb539b:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    22bdd7cb539e:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    22bdd7cb53a1:	c5 f9 7e da                                     	vmovd  edx,xmm3
    22bdd7cb53a5:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb53a8:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb53ac:	89 5d 9c                                        	mov    DWORD PTR [rbp-0x64],ebx
    22bdd7cb53af:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    22bdd7cb53b2:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    22bdd7cb53b8:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb53bb:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb53bf:	89 b5 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],esi
    22bdd7cb53c5:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    22bdd7cb53c8:	41 8b c4                                        	mov    eax,r12d
    22bdd7cb53cb:	44 8b e6                                        	mov    r12d,esi
    22bdd7cb53ce:	41 8b d0                                        	mov    edx,r8d
    22bdd7cb53d1:	8b b5 74 ff ff ff                               	mov    esi,DWORD PTR [rbp-0x8c]
    22bdd7cb53d7:	c4 e3 79 16 da 03                               	vpextrd edx,xmm3,0x3
    22bdd7cb53dd:	c1 e2 02                                        	shl    edx,0x2
    22bdd7cb53e0:	41 8d 14 17                                     	lea    edx,[r15+rdx*1]
    22bdd7cb53e4:	4c 8b 45 f0                                     	mov    r8,QWORD PTR [rbp-0x10]
    22bdd7cb53e8:	4d 8b 40 17                                     	mov    r8,QWORD PTR [r8+0x17]
    22bdd7cb53ec:	89 45 8c                                        	mov    DWORD PTR [rbp-0x74],eax
    22bdd7cb53ef:	41 8b 04 10                                     	mov    eax,DWORD PTR [r8+rdx*1]
    22bdd7cb53f3:	8b 95 7c ff ff ff                               	mov    edx,DWORD PTR [rbp-0x84]
    22bdd7cb53f9:	c4 e3 41 22 ca 03                               	vpinsrd xmm1,xmm7,edx,0x3
    22bdd7cb53ff:	8b 55 80                                        	mov    edx,DWORD PTR [rbp-0x80]
    22bdd7cb5402:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    22bdd7cb5408:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    22bdd7cb540c:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cb5411:	c4 e3 41 22 f9 01                               	vpinsrd xmm7,xmm7,ecx,0x1
    22bdd7cb5417:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    22bdd7cb541d:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    22bdd7cb5423:	8b 55 88                                        	mov    edx,DWORD PTR [rbp-0x78]
    22bdd7cb5426:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    22bdd7cb542c:	89 5d 9c                                        	mov    DWORD PTR [rbp-0x64],ebx
    22bdd7cb542f:	89 4d 98                                        	mov    DWORD PTR [rbp-0x68],ecx
    22bdd7cb5432:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    22bdd7cb5439:	89 b5 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],esi
    22bdd7cb543f:	8b d7                                           	mov    edx,edi
    22bdd7cb5441:	44 8b c0                                        	mov    r8d,eax
    22bdd7cb5444:	45 8b cc                                        	mov    r9d,r12d
    22bdd7cb5447:	c5 fa 7f bd a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm7
    22bdd7cb544f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7cb5453:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    22bdd7cb545b:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    22bdd7cb545f:	8b 5d 88                                        	mov    ebx,DWORD PTR [rbp-0x78]
    22bdd7cb5462:	8b b5 7c ff ff ff                               	mov    esi,DWORD PTR [rbp-0x84]
    22bdd7cb5468:	8b 7d 80                                        	mov    edi,DWORD PTR [rbp-0x80]
    22bdd7cb546b:	44 8b 65 94                                     	mov    r12d,DWORD PTR [rbp-0x6c]
    22bdd7cb546f:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    22bdd7cb5477:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    22bdd7cb547f:	c5 fa 7f 85 44 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xbc],xmm0
    22bdd7cb5487:	c5 fa 6f 85 e4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x11c]
    22bdd7cb548f:	c5 fa 7f 8d 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm1
    22bdd7cb5497:	c5 fa 6f 8d 34 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xcc]
    22bdd7cb549f:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    22bdd7cb54a3:	c5 c8 5c c8                                     	vsubps xmm1,xmm6,xmm0
    22bdd7cb54a7:	c5 fa 7f 95 54 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xac],xmm2
    22bdd7cb54af:	c5 fa 6f 95 c4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x13c]
    22bdd7cb54b7:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    22bdd7cb54bc:	c5 fa 6f 9d 04 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xfc]
    22bdd7cb54c4:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    22bdd7cb54c8:	c5 c8 5c da                                     	vsubps xmm3,xmm6,xmm2
    22bdd7cb54cc:	c5 fa 6f ad 54 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xac]
    22bdd7cb54d4:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    22bdd7cb54d9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb54de:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    22bdd7cb54e4:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    22bdd7cb54e9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb54ee:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    22bdd7cb54f3:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    22bdd7cb54f7:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    22bdd7cb54fb:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    22bdd7cb5500:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    22bdd7cb5504:	c5 fa 7f a5 d4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x12c],xmm4
    22bdd7cb550c:	c5 fa 6f a5 64 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x9c]
    22bdd7cb5514:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    22bdd7cb5519:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb551e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7cb5524:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7cb5529:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb552e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7cb5533:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7cb5537:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7cb553b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7cb5540:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    22bdd7cb5544:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    22bdd7cb5548:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    22bdd7cb554c:	c5 d9 72 d7 18                                  	vpsrld xmm4,xmm7,0x18
    22bdd7cb5551:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5556:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7cb555c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7cb5561:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5566:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7cb556b:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7cb556f:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7cb5573:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7cb5578:	c5 e0 59 e4                                     	vmulps xmm4,xmm3,xmm4
    22bdd7cb557c:	c5 fa 7f ad b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm5
    22bdd7cb5584:	c5 fa 6f ad 44 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xbc]
    22bdd7cb558c:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    22bdd7cb5591:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5596:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    22bdd7cb559c:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    22bdd7cb55a1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb55a6:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    22bdd7cb55ab:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    22bdd7cb55af:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    22bdd7cb55b3:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    22bdd7cb55b8:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    22bdd7cb55bc:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    22bdd7cb55c0:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    22bdd7cb55c4:	c5 fa 6f ad b4 fe ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0x14c]
    22bdd7cb55cc:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    22bdd7cb55d0:	c5 fa 6f a5 54 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xac]
    22bdd7cb55d8:	c5 fa 7f 75 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm6
    22bdd7cb55dd:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    22bdd7cb55e7:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7cb55ec:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7cb55f0:	c5 d9 db e6                                     	vpand  xmm4,xmm4,xmm6
    22bdd7cb55f4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb55f9:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7cb55ff:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7cb5604:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5609:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7cb560e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7cb5612:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7cb5616:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7cb561b:	c5 e0 59 e4                                     	vmulps xmm4,xmm3,xmm4
    22bdd7cb561f:	c5 fa 7f bd 24 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xdc],xmm7
    22bdd7cb5627:	c5 fa 6f bd 64 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x9c]
    22bdd7cb562f:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    22bdd7cb5633:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5638:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cb563e:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cb5643:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5648:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cb564d:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cb5651:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cb5655:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cb565a:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    22bdd7cb565e:	c5 d8 58 e7                                     	vaddps xmm4,xmm4,xmm7
    22bdd7cb5662:	c5 f0 59 e4                                     	vmulps xmm4,xmm1,xmm4
    22bdd7cb5666:	c5 fa 6f bd 24 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xdc]
    22bdd7cb566e:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    22bdd7cb5672:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5677:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cb567d:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cb5682:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5687:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cb568c:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cb5690:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cb5694:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cb5699:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    22bdd7cb569d:	c5 fa 7f 85 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm0
    22bdd7cb56a5:	c5 fa 7f 85 34 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xcc],xmm0
    22bdd7cb56ad:	c5 fa 6f 85 44 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xbc]
    22bdd7cb56b5:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    22bdd7cb56b9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb56be:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7cb56c4:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7cb56c9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb56ce:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7cb56d3:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cb56d7:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7cb56db:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7cb56e0:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    22bdd7cb56e4:	c5 c0 58 f8                                     	vaddps xmm7,xmm7,xmm0
    22bdd7cb56e8:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    22bdd7cb56f0:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7cb56f4:	c5 d8 58 e0                                     	vaddps xmm4,xmm4,xmm0
    22bdd7cb56f8:	c5 fa 6f 85 54 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xac]
    22bdd7cb5700:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    22bdd7cb5705:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    22bdd7cb5709:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb570e:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7cb5714:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7cb5719:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb571e:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7cb5723:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cb5727:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7cb572b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7cb5730:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    22bdd7cb5734:	c5 fa 6f bd 64 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x9c]
    22bdd7cb573c:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    22bdd7cb5741:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    22bdd7cb5745:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb574a:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cb5750:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cb5755:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb575a:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cb575f:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cb5763:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cb5767:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cb576c:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    22bdd7cb5770:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cb5774:	c5 f0 59 c0                                     	vmulps xmm0,xmm1,xmm0
    22bdd7cb5778:	c5 fa 6f bd 34 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xcc]
    22bdd7cb5780:	c5 fa 7f 8d f4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x10c],xmm1
    22bdd7cb5788:	c5 fa 6f 8d 24 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xdc]
    22bdd7cb5790:	c5 f1 72 d1 10                                  	vpsrld xmm1,xmm1,0x10
    22bdd7cb5795:	c5 f1 db ce                                     	vpand  xmm1,xmm1,xmm6
    22bdd7cb5799:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb579e:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7cb57a4:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7cb57a9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb57ae:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7cb57b3:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7cb57b7:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7cb57bb:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7cb57c0:	c5 e0 59 c9                                     	vmulps xmm1,xmm3,xmm1
    22bdd7cb57c4:	c5 fa 7f 95 84 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x17c],xmm2
    22bdd7cb57cc:	c5 fa 7f 55 ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm2
    22bdd7cb57d1:	c5 fa 6f 95 44 ff ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0xbc]
    22bdd7cb57d9:	c5 e9 72 d2 10                                  	vpsrld xmm2,xmm2,0x10
    22bdd7cb57de:	c5 e9 db d6                                     	vpand  xmm2,xmm2,xmm6
    22bdd7cb57e2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb57e7:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7cb57ed:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7cb57f2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb57f7:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7cb57fc:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7cb5800:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7cb5804:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7cb5809:	c5 fa 7f 5d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm3
    22bdd7cb580e:	c5 fa 6f 9d 84 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x17c]
    22bdd7cb5816:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    22bdd7cb581a:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    22bdd7cb581e:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    22bdd7cb5822:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cb5826:	c5 fa 6f 8d f4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x10c]
    22bdd7cb582e:	c5 fa 6f 55 cc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x34]
    22bdd7cb5833:	c5 fa 6f 9d 54 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xac]
    22bdd7cb583b:	c5 e1 72 d3 08                                  	vpsrld xmm3,xmm3,0x8
    22bdd7cb5840:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    22bdd7cb5844:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5849:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7cb584f:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7cb5854:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5859:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7cb585e:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7cb5862:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7cb5866:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7cb586b:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    22bdd7cb586f:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    22bdd7cb5874:	c5 fa 6f bd 64 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x9c]
    22bdd7cb587c:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    22bdd7cb5881:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    22bdd7cb5885:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb588a:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cb5890:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cb5895:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb589a:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cb589f:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cb58a3:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cb58a7:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cb58ac:	c5 e0 59 df                                     	vmulps xmm3,xmm3,xmm7
    22bdd7cb58b0:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    22bdd7cb58b4:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    22bdd7cb58b8:	c5 fa 6f 95 34 ff ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0xcc]
    22bdd7cb58c0:	c5 fa 6f 5d cc                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x34]
    22bdd7cb58c5:	c5 fa 6f bd 24 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xdc]
    22bdd7cb58cd:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    22bdd7cb58d2:	c5 c1 db fe                                     	vpand  xmm7,xmm7,xmm6
    22bdd7cb58d6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb58db:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cb58e1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cb58e6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb58eb:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cb58f0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cb58f4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cb58f8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cb58fd:	c5 e0 59 df                                     	vmulps xmm3,xmm3,xmm7
    22bdd7cb5901:	c5 fa 6f 7d ac                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x54]
    22bdd7cb5906:	c5 fa 7f a5 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm4
    22bdd7cb590e:	c5 fa 6f a5 44 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xbc]
    22bdd7cb5916:	c5 d9 72 d4 08                                  	vpsrld xmm4,xmm4,0x8
    22bdd7cb591b:	c5 d9 db e6                                     	vpand  xmm4,xmm4,xmm6
    22bdd7cb591f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5924:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7cb592a:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7cb592f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5934:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7cb5939:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7cb593d:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7cb5941:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7cb5946:	c5 c0 59 fc                                     	vmulps xmm7,xmm7,xmm4
    22bdd7cb594a:	c5 e0 58 df                                     	vaddps xmm3,xmm3,xmm7
    22bdd7cb594e:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    22bdd7cb5952:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    22bdd7cb5956:	e9 99 01 00 00                                  	jmp    0x22bdd7cb5af4
    22bdd7cb595b:	8b c3                                           	mov    eax,ebx
    22bdd7cb595d:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb5960:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb5964:	89 4d 9c                                        	mov    DWORD PTR [rbp-0x64],ecx
    22bdd7cb5967:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    22bdd7cb596b:	48 8b 49 17                                     	mov    rcx,QWORD PTR [rcx+0x17]
    22bdd7cb596f:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    22bdd7cb5972:	8b 14 01                                        	mov    edx,DWORD PTR [rcx+rax*1]
    22bdd7cb5975:	8b c6                                           	mov    eax,esi
    22bdd7cb5977:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb597a:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb597e:	44 8b 0c 01                                     	mov    r9d,DWORD PTR [rcx+rax*1]
    22bdd7cb5982:	8b c7                                           	mov    eax,edi
    22bdd7cb5984:	c1 e0 02                                        	shl    eax,0x2
    22bdd7cb5987:	41 8d 04 07                                     	lea    eax,[r15+rax*1]
    22bdd7cb598b:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
    22bdd7cb598e:	8b 1c 01                                        	mov    ebx,DWORD PTR [rcx+rax*1]
    22bdd7cb5991:	89 5d 94                                        	mov    DWORD PTR [rbp-0x6c],ebx
    22bdd7cb5994:	41 8b c0                                        	mov    eax,r8d
    22bdd7cb5997:	41 8b c9                                        	mov    ecx,r9d
    22bdd7cb599a:	44 8b e2                                        	mov    r12d,edx
    22bdd7cb599d:	8b 55 84                                        	mov    edx,DWORD PTR [rbp-0x7c]
    22bdd7cb59a0:	8b 5d 88                                        	mov    ebx,DWORD PTR [rbp-0x78]
    22bdd7cb59a3:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    22bdd7cb59a7:	41 c1 e0 02                                     	shl    r8d,0x2
    22bdd7cb59ab:	47 8d 04 07                                     	lea    r8d,[r15+r8*1]
    22bdd7cb59af:	4c 8b 4d f0                                     	mov    r9,QWORD PTR [rbp-0x10]
    22bdd7cb59b3:	4d 8b 49 17                                     	mov    r9,QWORD PTR [r9+0x17]
    22bdd7cb59b7:	89 45 8c                                        	mov    DWORD PTR [rbp-0x74],eax
    22bdd7cb59ba:	43 8b 04 01                                     	mov    eax,DWORD PTR [r9+r8*1]
    22bdd7cb59be:	44 8b 45 94                                     	mov    r8d,DWORD PTR [rbp-0x6c]
    22bdd7cb59c2:	c4 c1 79 6e e0                                  	vmovd  xmm4,r8d
    22bdd7cb59c7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    22bdd7cb59cc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    22bdd7cb59d2:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    22bdd7cb59d8:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    22bdd7cb59de:	c5 c9 72 d4 18                                  	vpsrld xmm6,xmm4,0x18
    22bdd7cb59e3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb59e8:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    22bdd7cb59ee:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    22bdd7cb59f3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb59f8:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    22bdd7cb59fd:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    22bdd7cb5a01:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    22bdd7cb5a05:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    22bdd7cb5a0a:	c5 fa 7f 85 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm0
    22bdd7cb5a12:	4c 8b 15 c6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbc6]        # 0x22bdd7cb55df
    22bdd7cb5a19:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    22bdd7cb5a1e:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    22bdd7cb5a22:	c5 d9 db c8                                     	vpand  xmm1,xmm4,xmm0
    22bdd7cb5a26:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5a2b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7cb5a31:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7cb5a36:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5a3b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7cb5a40:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7cb5a44:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7cb5a48:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7cb5a4d:	c5 fa 7f 8d 14 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xec],xmm1
    22bdd7cb5a55:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    22bdd7cb5a5a:	c5 f1 db c8                                     	vpand  xmm1,xmm1,xmm0
    22bdd7cb5a5e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5a63:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7cb5a69:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7cb5a6e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5a73:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7cb5a78:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7cb5a7c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7cb5a80:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7cb5a85:	c5 fa 7f 95 f4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x10c],xmm2
    22bdd7cb5a8d:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    22bdd7cb5a92:	c5 e9 db d0                                     	vpand  xmm2,xmm2,xmm0
    22bdd7cb5a96:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cb5a9b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7cb5aa1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7cb5aa6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cb5aab:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7cb5ab0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7cb5ab4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7cb5ab8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7cb5abd:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    22bdd7cb5ac0:	c5 fa 7f 6d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm5
    22bdd7cb5ac5:	c5 fa 7f 45 ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm0
    22bdd7cb5aca:	c5 fa 7f bd 64 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x9c],xmm7
    22bdd7cb5ad2:	c5 fa 7f 9d c4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x13c],xmm3
    22bdd7cb5ada:	44 8b c0                                        	mov    r8d,eax
    22bdd7cb5add:	45 8b cc                                        	mov    r9d,r12d
    22bdd7cb5ae0:	c5 f9 28 c1                                     	vmovapd xmm0,xmm1
    22bdd7cb5ae4:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    22bdd7cb5ae8:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    22bdd7cb5aec:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    22bdd7cb5af0:	44 8b 65 94                                     	mov    r12d,DWORD PTR [rbp-0x6c]
    22bdd7cb5af4:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb5af7:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    22bdd7cb5b01:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cb5b06:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7cb5b0a:	c5 d0 59 da                                     	vmulps xmm3,xmm5,xmm2
    22bdd7cb5b0e:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    22bdd7cb5b12:	8b 4d a8                                        	mov    ecx,DWORD PTR [rbp-0x58]
    22bdd7cb5b15:	83 e1 01                                        	and    ecx,0x1
    22bdd7cb5b18:	89 85 c0 fe ff ff                               	mov    DWORD PTR [rbp-0x140],eax
    22bdd7cb5b1e:	33 c0                                           	xor    eax,eax
    22bdd7cb5b20:	2b c1                                           	sub    eax,ecx
    22bdd7cb5b22:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    22bdd7cb5b26:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    22bdd7cb5b2b:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb5b2e:	c1 e0 1e                                        	shl    eax,0x1e
    22bdd7cb5b31:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cb5b34:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    22bdd7cb5b3a:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb5b3d:	c1 e0 1d                                        	shl    eax,0x1d
    22bdd7cb5b40:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cb5b43:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    22bdd7cb5b49:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb5b4c:	c1 e0 1c                                        	shl    eax,0x1c
    22bdd7cb5b4f:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cb5b52:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    22bdd7cb5b58:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    22bdd7cb5b5c:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    22bdd7cb5b60:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cb5b65:	8b 85 c0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x140]
    22bdd7cb5b6b:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    22bdd7cb5b6f:	48 8b 49 17                                     	mov    rcx,QWORD PTR [rcx+0x17]
    22bdd7cb5b73:	c5 fa 7f 7c 01 30                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x30],xmm7
    22bdd7cb5b79:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb5b7c:	c5 f8 59 da                                     	vmulps xmm3,xmm0,xmm2
    22bdd7cb5b80:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    22bdd7cb5b84:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    22bdd7cb5b88:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cb5b8d:	c5 fa 7f 7c 01 20                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x20],xmm7
    22bdd7cb5b93:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb5b96:	c5 f0 59 da                                     	vmulps xmm3,xmm1,xmm2
    22bdd7cb5b9a:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    22bdd7cb5b9e:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    22bdd7cb5ba2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cb5ba7:	c5 fa 7f 7c 01 10                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x10],xmm7
    22bdd7cb5bad:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb5bb0:	c5 fa 6f 9d 14 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xec]
    22bdd7cb5bb8:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    22bdd7cb5bbc:	c5 49 df fc                                     	vpandn xmm15,xmm6,xmm4
    22bdd7cb5bc0:	c5 e1 db fe                                     	vpand  xmm7,xmm3,xmm6
    22bdd7cb5bc4:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cb5bc9:	c5 fa 7f 3c 01                                  	vmovdqu XMMWORD PTR [rcx+rax*1],xmm7
    22bdd7cb5bce:	44 89 45 8c                                     	mov    DWORD PTR [rbp-0x74],r8d
    22bdd7cb5bd2:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
    22bdd7cb5bd5:	89 55 84                                        	mov    DWORD PTR [rbp-0x7c],edx
    22bdd7cb5bd8:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    22bdd7cb5bdb:	89 b5 7c ff ff ff                               	mov    DWORD PTR [rbp-0x84],esi
    22bdd7cb5be1:	c5 fa 7f 85 e4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x11c],xmm0
    22bdd7cb5be9:	41 8b ff                                        	mov    edi,r15d
    22bdd7cb5bec:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    22bdd7cb5bf0:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    22bdd7cb5bf4:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cb5bf8:	c5 f9 28 fd                                     	vmovapd xmm7,xmm5
    22bdd7cb5bfc:	44 89 a5 bc fe ff ff                            	mov    DWORD PTR [rbp-0x144],r12d
    22bdd7cb5c03:	45 8b e1                                        	mov    r12d,r9d
    22bdd7cb5c06:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb5c09:	8b 4d a4                                        	mov    ecx,DWORD PTR [rbp-0x5c]
    22bdd7cb5c0c:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    22bdd7cb5c0f:	be 01 00 00 00                                  	mov    esi,0x1
    22bdd7cb5c14:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    22bdd7cb5c18:	44 8b 8d bc fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x144]
    22bdd7cb5c1f:	44 8b 7d 9c                                     	mov    r15d,DWORD PTR [rbp-0x64]
    22bdd7cb5c23:	c5 fa 6f b5 54 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xac]
    22bdd7cb5c2b:	8b c6                                           	mov    eax,esi
    22bdd7cb5c2d:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    22bdd7cb5c31:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    22bdd7cb5c35:	41 81 aa bc 02 00 00 a9 1a 00 00                	sub    DWORD PTR [r10+0x2bc],0x1aa9
    22bdd7cb5c40:	0f 88 45 00 00 00                               	js     0x22bdd7cb5c8b
    22bdd7cb5c46:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cb5c49:	5d                                              	pop    rbp
    22bdd7cb5c4a:	c3                                              	ret
    22bdd7cb5c4b:	50                                              	push   rax
    22bdd7cb5c4c:	51                                              	push   rcx
    22bdd7cb5c4d:	52                                              	push   rdx
    22bdd7cb5c4e:	48 83 ec 30                                     	sub    rsp,0x30
    22bdd7cb5c52:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    22bdd7cb5c57:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    22bdd7cb5c5d:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    22bdd7cb5c63:	33 c0                                           	xor    eax,eax
    22bdd7cb5c65:	e8 c6 32 f5 ff                                  	call   0x22bdd7c08f30
    22bdd7cb5c6a:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    22bdd7cb5c6f:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    22bdd7cb5c75:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    22bdd7cb5c7b:	48 83 c4 30                                     	add    rsp,0x30
    22bdd7cb5c7f:	5a                                              	pop    rdx
    22bdd7cb5c80:	59                                              	pop    rcx
    22bdd7cb5c81:	58                                              	pop    rax
    22bdd7cb5c82:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb5c86:	e9 6d e5 ff ff                                  	jmp    0x22bdd7cb41f8
    22bdd7cb5c8b:	50                                              	push   rax
    22bdd7cb5c8c:	e8 cf 30 f5 ff                                  	call   0x22bdd7c08d60
    22bdd7cb5c91:	58                                              	pop    rax
    22bdd7cb5c92:	eb b2                                           	jmp    0x22bdd7cb5c46
    22bdd7cb5c94:	3b 00                                           	cmp    eax,DWORD PTR [rax]
    22bdd7cb5c96:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cb5c98:	08 00                                           	or     BYTE PTR [rax],al
	...
