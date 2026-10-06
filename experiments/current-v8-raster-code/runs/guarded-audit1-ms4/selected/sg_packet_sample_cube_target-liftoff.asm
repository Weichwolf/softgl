
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

000010402e82f380 <.data>:
    10402e82f380:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    10402e82f386:	e8 e5 99 f6 ff                                  	call   0x10402e798d70
    10402e82f38b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
    10402e82f392:	8b c0                                           	mov    eax,eax
    10402e82f394:	8b d2                                           	mov    edx,edx
    10402e82f396:	8b c9                                           	mov    ecx,ecx
    10402e82f398:	50                                              	push   rax
    10402e82f399:	51                                              	push   rcx
    10402e82f39a:	57                                              	push   rdi
    10402e82f39b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
    10402e82f3a2:	33 c0                                           	xor    eax,eax
    10402e82f3a4:	b9 21 00 00 00                                  	mov    ecx,0x21
    10402e82f3a9:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    10402e82f3ab:	5f                                              	pop    rdi
    10402e82f3ac:	59                                              	pop    rcx
    10402e82f3ad:	58                                              	pop    rax
    10402e82f3ae:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    10402e82f3b2:	0f 86 06 06 00 00                               	jbe    0x10402e82f9be
    10402e82f3b8:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
    10402e82f3bb:	49 0b de                                        	or     rbx,r14
    10402e82f3be:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
    10402e82f3c1:	bf 70 00 00 00                                  	mov    edi,0x70
    10402e82f3c6:	2b df                                           	sub    ebx,edi
    10402e82f3c8:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    10402e82f3cb:	49 0b fe                                        	or     rdi,r14
    10402e82f3ce:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
    10402e82f3d1:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e82f3d5:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    10402e82f3d9:	c5 fa 7f 44 1f 30                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x30],xmm0
    10402e82f3df:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    10402e82f3e7:	c5 fa 7f 44 1f 20                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x20],xmm0
    10402e82f3ed:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    10402e82f3f5:	c5 fa 7f 44 1f 10                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x10],xmm0
    10402e82f3fb:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    10402e82f403:	c5 fa 7f 04 1f                                  	vmovdqu XMMWORD PTR [rdi+rbx*1],xmm0
    10402e82f408:	c5 fa 7f 4c 1f 60                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x60],xmm1
    10402e82f40e:	c5 fa 7f 54 1f 50                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x50],xmm2
    10402e82f414:	c5 fa 7f 5c 1f 40                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x40],xmm3
    10402e82f41a:	44 8d 43 60                                     	lea    r8d,[rbx+0x60]
    10402e82f41e:	44 8d 4b 50                                     	lea    r9d,[rbx+0x50]
    10402e82f422:	41 bc c0 ff ff ff                               	mov    r12d,0xffffffc0
    10402e82f428:	41 f7 dc                                        	neg    r12d
    10402e82f42b:	44 03 e3                                        	add    r12d,ebx
    10402e82f42e:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    10402e82f432:	41 83 47 0b 02                                  	add    DWORD PTR [r15+0xb],0x2
    10402e82f437:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
    10402e82f43a:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    10402e82f43d:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    10402e82f440:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    10402e82f445:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    10402e82f44a:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    10402e82f44f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    10402e82f452:	51                                              	push   rcx
    10402e82f453:	41 8b c9                                        	mov    ecx,r9d
    10402e82f456:	44 8b ca                                        	mov    r9d,edx
    10402e82f459:	41 8b d0                                        	mov    edx,r8d
    10402e82f45c:	41 8b dc                                        	mov    ebx,r12d
    10402e82f45f:	e8 14 71 f6 ff                                  	call   0x10402e796578
    10402e82f464:	8b c0                                           	mov    eax,eax
    10402e82f466:	85 c0                                           	test   eax,eax
    10402e82f468:	0f 85 fc 04 00 00                               	jne    0x10402e82f96a
    10402e82f46e:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    10402e82f471:	83 e0 01                                        	and    eax,0x1
    10402e82f474:	85 c0                                           	test   eax,eax
    10402e82f476:	0f 84 7d 00 00 00                               	je     0x10402e82f4f9
    10402e82f47c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f47f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f483:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    10402e82f487:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    10402e82f48b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f48e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    10402e82f492:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f495:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    10402e82f499:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f49c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    10402e82f4a1:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f4a4:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    10402e82f4a9:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    10402e82f4ae:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    10402e82f4b3:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    10402e82f4b8:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    10402e82f4bb:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e82f4bf:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
    10402e82f4c5:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
    10402e82f4c9:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
    10402e82f4cd:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
    10402e82f4d0:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
    10402e82f4d3:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    10402e82f4d6:	41 8b c8                                        	mov    ecx,r8d
    10402e82f4d9:	41 8b d9                                        	mov    ebx,r9d
    10402e82f4dc:	44 8b c8                                        	mov    r9d,eax
    10402e82f4df:	8b c2                                           	mov    eax,edx
    10402e82f4e1:	8b d7                                           	mov    edx,edi
    10402e82f4e3:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    10402e82f4e7:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    10402e82f4eb:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    10402e82f4ef:	e8 3c 6d f6 ff                                  	call   0x10402e796230
    10402e82f4f4:	e9 00 00 00 00                                  	jmp    0x10402e82f4f9
    10402e82f4f9:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    10402e82f4fc:	83 e0 02                                        	and    eax,0x2
    10402e82f4ff:	85 c0                                           	test   eax,eax
    10402e82f501:	0f 84 92 00 00 00                               	je     0x10402e82f599
    10402e82f507:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f50a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f50e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    10402e82f512:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    10402e82f516:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f519:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    10402e82f51d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f520:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    10402e82f524:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f527:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    10402e82f52c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f52f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    10402e82f534:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    10402e82f539:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    10402e82f53d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    10402e82f542:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    10402e82f546:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    10402e82f54b:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    10402e82f54f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    10402e82f552:	83 c0 10                                        	add    eax,0x10
    10402e82f555:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e82f559:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
    10402e82f55f:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    10402e82f566:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
    10402e82f56d:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    10402e82f570:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
    10402e82f573:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
    10402e82f576:	41 8b c8                                        	mov    ecx,r8d
    10402e82f579:	41 8b d9                                        	mov    ebx,r9d
    10402e82f57c:	44 8b c8                                        	mov    r9d,eax
    10402e82f57f:	8b c2                                           	mov    eax,edx
    10402e82f581:	8b d7                                           	mov    edx,edi
    10402e82f583:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    10402e82f587:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    10402e82f58b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    10402e82f58f:	e8 9c 6c f6 ff                                  	call   0x10402e796230
    10402e82f594:	e9 00 00 00 00                                  	jmp    0x10402e82f599
    10402e82f599:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    10402e82f59c:	83 e0 04                                        	and    eax,0x4
    10402e82f59f:	85 c0                                           	test   eax,eax
    10402e82f5a1:	0f 84 9b 00 00 00                               	je     0x10402e82f642
    10402e82f5a7:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f5aa:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f5ae:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    10402e82f5b2:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    10402e82f5b6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f5b9:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    10402e82f5bd:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f5c0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    10402e82f5c4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f5c7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    10402e82f5cc:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f5cf:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    10402e82f5d4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    10402e82f5d9:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    10402e82f5dd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    10402e82f5e2:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    10402e82f5e6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    10402e82f5eb:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    10402e82f5ef:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    10402e82f5f2:	83 c0 20                                        	add    eax,0x20
    10402e82f5f5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e82f5f9:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
    10402e82f5ff:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
    10402e82f606:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
    10402e82f60d:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
    10402e82f613:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
    10402e82f619:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
    10402e82f61f:	41 8b c8                                        	mov    ecx,r8d
    10402e82f622:	41 8b d9                                        	mov    ebx,r9d
    10402e82f625:	44 8b c8                                        	mov    r9d,eax
    10402e82f628:	8b c2                                           	mov    eax,edx
    10402e82f62a:	8b d7                                           	mov    edx,edi
    10402e82f62c:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    10402e82f630:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    10402e82f634:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    10402e82f638:	e8 f3 6b f6 ff                                  	call   0x10402e796230
    10402e82f63d:	e9 00 00 00 00                                  	jmp    0x10402e82f642
    10402e82f642:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    10402e82f645:	83 e0 08                                        	and    eax,0x8
    10402e82f648:	85 c0                                           	test   eax,eax
    10402e82f64a:	0f 84 9e 00 00 00                               	je     0x10402e82f6ee
    10402e82f650:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f653:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f657:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    10402e82f65b:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    10402e82f65f:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f662:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    10402e82f666:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f669:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    10402e82f66d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f670:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    10402e82f675:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e82f678:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    10402e82f67d:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    10402e82f682:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e82f687:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    10402e82f68c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    10402e82f691:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    10402e82f696:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    10402e82f69b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    10402e82f69e:	83 c0 30                                        	add    eax,0x30
    10402e82f6a1:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e82f6a5:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
    10402e82f6ab:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
    10402e82f6b2:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
    10402e82f6b9:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
    10402e82f6bf:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
    10402e82f6c5:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
    10402e82f6cb:	41 8b c8                                        	mov    ecx,r8d
    10402e82f6ce:	41 8b d9                                        	mov    ebx,r9d
    10402e82f6d1:	44 8b c8                                        	mov    r9d,eax
    10402e82f6d4:	8b c2                                           	mov    eax,edx
    10402e82f6d6:	8b d7                                           	mov    edx,edi
    10402e82f6d8:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    10402e82f6dc:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    10402e82f6e0:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    10402e82f6e4:	e8 47 6b f6 ff                                  	call   0x10402e796230
    10402e82f6e9:	e9 00 00 00 00                                  	jmp    0x10402e82f6ee
    10402e82f6ee:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    10402e82f6f1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e82f6f4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f6f8:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    10402e82f6fc:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    10402e82f702:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e82f705:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    10402e82f70b:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    10402e82f715:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f71a:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    10402e82f724:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f72a:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    10402e82f72f:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    10402e82f739:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f73e:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    10402e82f748:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f74e:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    10402e82f753:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    10402e82f758:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e82f75b:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    10402e82f760:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e82f763:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    10402e82f769:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x10402e82f70d
    10402e82f770:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f775:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x10402e82f71c
    10402e82f77c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f782:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    10402e82f787:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x10402e82f731
    10402e82f78e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f793:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x10402e82f740
    10402e82f79a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f7a0:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    10402e82f7a5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e82f7aa:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    10402e82f7b4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f7b9:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    10402e82f7c3:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f7c9:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    10402e82f7ce:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x10402e82f7bb
    10402e82f7d5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f7da:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x10402e82f7ac
    10402e82f7e1:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f7e7:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    10402e82f7ec:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e82f7f1:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    10402e82f7f7:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    10402e82f7fa:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    10402e82f804:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f809:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x10402e82f7bb
    10402e82f810:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f816:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    10402e82f81b:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x10402e82f7bb
    10402e82f822:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f827:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x10402e82f7fc
    10402e82f82e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f834:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    10402e82f839:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e82f83e:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    10402e82f844:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    10402e82f847:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    10402e82f851:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f856:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    10402e82f860:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f866:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    10402e82f86b:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    10402e82f875:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f87a:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    10402e82f884:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f88a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    10402e82f88f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e82f894:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x10402e82f849
    10402e82f89b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f8a0:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x10402e82f858
    10402e82f8a7:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f8ad:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    10402e82f8b2:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x10402e82f86d
    10402e82f8b9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f8be:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x10402e82f87c
    10402e82f8c5:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f8cb:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    10402e82f8d0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e82f8d5:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x10402e82f7ac
    10402e82f8dc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f8e1:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x10402e82f7bb
    10402e82f8e8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f8ee:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    10402e82f8f3:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x10402e82f7bb
    10402e82f8fa:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f8ff:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x10402e82f7ac
    10402e82f906:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f90c:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    10402e82f911:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e82f916:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    10402e82f91c:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    10402e82f91f:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x10402e82f7fc
    10402e82f926:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f92b:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x10402e82f7bb
    10402e82f932:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f938:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    10402e82f93d:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x10402e82f7bb
    10402e82f944:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e82f949:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x10402e82f7fc
    10402e82f950:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e82f956:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    10402e82f95b:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e82f960:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    10402e82f965:	e9 27 00 00 00                                  	jmp    0x10402e82f991
    10402e82f96a:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    10402e82f96f:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
    10402e82f974:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    10402e82f979:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
    10402e82f981:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
    10402e82f989:	c5 fa 6f b5 40 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xc0]
    10402e82f991:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    10402e82f994:	83 c0 70                                        	add    eax,0x70
    10402e82f997:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f99b:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    10402e82f99e:	49 0b ce                                        	or     rcx,r14
    10402e82f9a1:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    10402e82f9a4:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
    10402e82f9a8:	41 81 aa 94 02 00 00 60 06 00 00                	sub    DWORD PTR [r10+0x294],0x660
    10402e82f9b3:	0f 88 45 00 00 00                               	js     0x10402e82f9fe
    10402e82f9b9:	48 8b e5                                        	mov    rsp,rbp
    10402e82f9bc:	5d                                              	pop    rbp
    10402e82f9bd:	c3                                              	ret
    10402e82f9be:	50                                              	push   rax
    10402e82f9bf:	51                                              	push   rcx
    10402e82f9c0:	52                                              	push   rdx
    10402e82f9c1:	48 83 ec 30                                     	sub    rsp,0x30
    10402e82f9c5:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    10402e82f9ca:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    10402e82f9d0:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    10402e82f9d6:	33 c0                                           	xor    eax,eax
    10402e82f9d8:	e8 53 95 f6 ff                                  	call   0x10402e798f30
    10402e82f9dd:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    10402e82f9e2:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    10402e82f9e8:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    10402e82f9ee:	48 83 c4 30                                     	add    rsp,0x30
    10402e82f9f2:	5a                                              	pop    rdx
    10402e82f9f3:	59                                              	pop    rcx
    10402e82f9f4:	58                                              	pop    rax
    10402e82f9f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82f9f9:	e9 ba f9 ff ff                                  	jmp    0x10402e82f3b8
    10402e82f9fe:	48 83 ec 60                                     	sub    rsp,0x60
    10402e82fa02:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    10402e82fa07:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    10402e82fa0d:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    10402e82fa13:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    10402e82fa19:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    10402e82fa1f:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    10402e82fa25:	e8 36 93 f6 ff                                  	call   0x10402e798d60
    10402e82fa2a:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    10402e82fa2f:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    10402e82fa35:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    10402e82fa3b:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    10402e82fa41:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    10402e82fa47:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    10402e82fa4d:	48 83 c4 60                                     	add    rsp,0x60
    10402e82fa51:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e82fa55:	e9 5f ff ff ff                                  	jmp    0x10402e82f9b9
    10402e82fa5a:	66 90                                           	xchg   ax,ax
    10402e82fa5c:	2b 00                                           	sub    eax,DWORD PTR [rax]
    10402e82fa5e:	00 00                                           	add    BYTE PTR [rax],al
    10402e82fa60:	08 00                                           	or     BYTE PTR [rax],al
	...
