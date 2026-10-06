
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

000023a8d34d0740 <.data>:
    23a8d34d0740:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    23a8d34d0746:	e8 25 e6 f7 ff                                  	call   0x23a8d344ed70
    23a8d34d074b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
    23a8d34d0752:	8b c0                                           	mov    eax,eax
    23a8d34d0754:	8b d2                                           	mov    edx,edx
    23a8d34d0756:	8b c9                                           	mov    ecx,ecx
    23a8d34d0758:	50                                              	push   rax
    23a8d34d0759:	51                                              	push   rcx
    23a8d34d075a:	57                                              	push   rdi
    23a8d34d075b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
    23a8d34d0762:	33 c0                                           	xor    eax,eax
    23a8d34d0764:	b9 21 00 00 00                                  	mov    ecx,0x21
    23a8d34d0769:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    23a8d34d076b:	5f                                              	pop    rdi
    23a8d34d076c:	59                                              	pop    rcx
    23a8d34d076d:	58                                              	pop    rax
    23a8d34d076e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    23a8d34d0772:	0f 86 06 06 00 00                               	jbe    0x23a8d34d0d7e
    23a8d34d0778:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
    23a8d34d077b:	49 0b de                                        	or     rbx,r14
    23a8d34d077e:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
    23a8d34d0781:	bf 70 00 00 00                                  	mov    edi,0x70
    23a8d34d0786:	2b df                                           	sub    ebx,edi
    23a8d34d0788:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    23a8d34d078b:	49 0b fe                                        	or     rdi,r14
    23a8d34d078e:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
    23a8d34d0791:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d34d0795:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    23a8d34d0799:	c5 fa 7f 44 1f 30                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x30],xmm0
    23a8d34d079f:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    23a8d34d07a7:	c5 fa 7f 44 1f 20                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x20],xmm0
    23a8d34d07ad:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    23a8d34d07b5:	c5 fa 7f 44 1f 10                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x10],xmm0
    23a8d34d07bb:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    23a8d34d07c3:	c5 fa 7f 04 1f                                  	vmovdqu XMMWORD PTR [rdi+rbx*1],xmm0
    23a8d34d07c8:	c5 fa 7f 4c 1f 60                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x60],xmm1
    23a8d34d07ce:	c5 fa 7f 54 1f 50                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x50],xmm2
    23a8d34d07d4:	c5 fa 7f 5c 1f 40                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x40],xmm3
    23a8d34d07da:	44 8d 43 60                                     	lea    r8d,[rbx+0x60]
    23a8d34d07de:	44 8d 4b 50                                     	lea    r9d,[rbx+0x50]
    23a8d34d07e2:	41 bc c0 ff ff ff                               	mov    r12d,0xffffffc0
    23a8d34d07e8:	41 f7 dc                                        	neg    r12d
    23a8d34d07eb:	44 03 e3                                        	add    r12d,ebx
    23a8d34d07ee:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    23a8d34d07f2:	41 83 47 0b 02                                  	add    DWORD PTR [r15+0xb],0x2
    23a8d34d07f7:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
    23a8d34d07fa:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    23a8d34d07fd:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    23a8d34d0800:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    23a8d34d0805:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    23a8d34d080a:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    23a8d34d080f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    23a8d34d0812:	51                                              	push   rcx
    23a8d34d0813:	41 8b c9                                        	mov    ecx,r9d
    23a8d34d0816:	44 8b ca                                        	mov    r9d,edx
    23a8d34d0819:	41 8b d0                                        	mov    edx,r8d
    23a8d34d081c:	41 8b dc                                        	mov    ebx,r12d
    23a8d34d081f:	e8 54 bd f7 ff                                  	call   0x23a8d344c578
    23a8d34d0824:	8b c0                                           	mov    eax,eax
    23a8d34d0826:	85 c0                                           	test   eax,eax
    23a8d34d0828:	0f 85 fc 04 00 00                               	jne    0x23a8d34d0d2a
    23a8d34d082e:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    23a8d34d0831:	83 e0 01                                        	and    eax,0x1
    23a8d34d0834:	85 c0                                           	test   eax,eax
    23a8d34d0836:	0f 84 7d 00 00 00                               	je     0x23a8d34d08b9
    23a8d34d083c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d083f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d0843:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    23a8d34d0847:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    23a8d34d084b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d084e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    23a8d34d0852:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0855:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    23a8d34d0859:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d085c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    23a8d34d0861:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0864:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    23a8d34d0869:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    23a8d34d086e:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    23a8d34d0873:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    23a8d34d0878:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    23a8d34d087b:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d34d087f:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
    23a8d34d0885:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
    23a8d34d0889:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
    23a8d34d088d:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
    23a8d34d0890:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
    23a8d34d0893:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    23a8d34d0896:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d0899:	41 8b d9                                        	mov    ebx,r9d
    23a8d34d089c:	44 8b c8                                        	mov    r9d,eax
    23a8d34d089f:	8b c2                                           	mov    eax,edx
    23a8d34d08a1:	8b d7                                           	mov    edx,edi
    23a8d34d08a3:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    23a8d34d08a7:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    23a8d34d08ab:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    23a8d34d08af:	e8 7c b9 f7 ff                                  	call   0x23a8d344c230
    23a8d34d08b4:	e9 00 00 00 00                                  	jmp    0x23a8d34d08b9
    23a8d34d08b9:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    23a8d34d08bc:	83 e0 02                                        	and    eax,0x2
    23a8d34d08bf:	85 c0                                           	test   eax,eax
    23a8d34d08c1:	0f 84 92 00 00 00                               	je     0x23a8d34d0959
    23a8d34d08c7:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d08ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d08ce:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    23a8d34d08d2:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    23a8d34d08d6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d08d9:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    23a8d34d08dd:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d08e0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    23a8d34d08e4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d08e7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    23a8d34d08ec:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d08ef:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    23a8d34d08f4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    23a8d34d08f9:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    23a8d34d08fd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    23a8d34d0902:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    23a8d34d0906:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    23a8d34d090b:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    23a8d34d090f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    23a8d34d0912:	83 c0 10                                        	add    eax,0x10
    23a8d34d0915:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d34d0919:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
    23a8d34d091f:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    23a8d34d0926:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
    23a8d34d092d:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    23a8d34d0930:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
    23a8d34d0933:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
    23a8d34d0936:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d0939:	41 8b d9                                        	mov    ebx,r9d
    23a8d34d093c:	44 8b c8                                        	mov    r9d,eax
    23a8d34d093f:	8b c2                                           	mov    eax,edx
    23a8d34d0941:	8b d7                                           	mov    edx,edi
    23a8d34d0943:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    23a8d34d0947:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    23a8d34d094b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    23a8d34d094f:	e8 dc b8 f7 ff                                  	call   0x23a8d344c230
    23a8d34d0954:	e9 00 00 00 00                                  	jmp    0x23a8d34d0959
    23a8d34d0959:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    23a8d34d095c:	83 e0 04                                        	and    eax,0x4
    23a8d34d095f:	85 c0                                           	test   eax,eax
    23a8d34d0961:	0f 84 9b 00 00 00                               	je     0x23a8d34d0a02
    23a8d34d0967:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d096a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d096e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    23a8d34d0972:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    23a8d34d0976:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0979:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    23a8d34d097d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0980:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    23a8d34d0984:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0987:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    23a8d34d098c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d098f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    23a8d34d0994:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    23a8d34d0999:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    23a8d34d099d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    23a8d34d09a2:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    23a8d34d09a6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    23a8d34d09ab:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    23a8d34d09af:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    23a8d34d09b2:	83 c0 20                                        	add    eax,0x20
    23a8d34d09b5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d34d09b9:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
    23a8d34d09bf:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
    23a8d34d09c6:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
    23a8d34d09cd:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
    23a8d34d09d3:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
    23a8d34d09d9:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
    23a8d34d09df:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d09e2:	41 8b d9                                        	mov    ebx,r9d
    23a8d34d09e5:	44 8b c8                                        	mov    r9d,eax
    23a8d34d09e8:	8b c2                                           	mov    eax,edx
    23a8d34d09ea:	8b d7                                           	mov    edx,edi
    23a8d34d09ec:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    23a8d34d09f0:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    23a8d34d09f4:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    23a8d34d09f8:	e8 33 b8 f7 ff                                  	call   0x23a8d344c230
    23a8d34d09fd:	e9 00 00 00 00                                  	jmp    0x23a8d34d0a02
    23a8d34d0a02:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    23a8d34d0a05:	83 e0 08                                        	and    eax,0x8
    23a8d34d0a08:	85 c0                                           	test   eax,eax
    23a8d34d0a0a:	0f 84 9e 00 00 00                               	je     0x23a8d34d0aae
    23a8d34d0a10:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0a13:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d0a17:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    23a8d34d0a1b:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    23a8d34d0a1f:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0a22:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    23a8d34d0a26:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0a29:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    23a8d34d0a2d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0a30:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    23a8d34d0a35:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d0a38:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    23a8d34d0a3d:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    23a8d34d0a42:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d34d0a47:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    23a8d34d0a4c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    23a8d34d0a51:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    23a8d34d0a56:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    23a8d34d0a5b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    23a8d34d0a5e:	83 c0 30                                        	add    eax,0x30
    23a8d34d0a61:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d34d0a65:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
    23a8d34d0a6b:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
    23a8d34d0a72:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
    23a8d34d0a79:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
    23a8d34d0a7f:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
    23a8d34d0a85:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
    23a8d34d0a8b:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d0a8e:	41 8b d9                                        	mov    ebx,r9d
    23a8d34d0a91:	44 8b c8                                        	mov    r9d,eax
    23a8d34d0a94:	8b c2                                           	mov    eax,edx
    23a8d34d0a96:	8b d7                                           	mov    edx,edi
    23a8d34d0a98:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    23a8d34d0a9c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    23a8d34d0aa0:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    23a8d34d0aa4:	e8 87 b7 f7 ff                                  	call   0x23a8d344c230
    23a8d34d0aa9:	e9 00 00 00 00                                  	jmp    0x23a8d34d0aae
    23a8d34d0aae:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    23a8d34d0ab1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d34d0ab4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d0ab8:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    23a8d34d0abc:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    23a8d34d0ac2:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d34d0ac5:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    23a8d34d0acb:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    23a8d34d0ad5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0ada:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    23a8d34d0ae4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0aea:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    23a8d34d0aef:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    23a8d34d0af9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0afe:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    23a8d34d0b08:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0b0e:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    23a8d34d0b13:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    23a8d34d0b18:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d34d0b1b:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    23a8d34d0b20:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d34d0b23:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    23a8d34d0b29:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x23a8d34d0acd
    23a8d34d0b30:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0b35:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x23a8d34d0adc
    23a8d34d0b3c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0b42:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    23a8d34d0b47:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x23a8d34d0af1
    23a8d34d0b4e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0b53:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x23a8d34d0b00
    23a8d34d0b5a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0b60:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    23a8d34d0b65:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d34d0b6a:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    23a8d34d0b74:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0b79:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    23a8d34d0b83:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0b89:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    23a8d34d0b8e:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x23a8d34d0b7b
    23a8d34d0b95:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0b9a:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x23a8d34d0b6c
    23a8d34d0ba1:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0ba7:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    23a8d34d0bac:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d34d0bb1:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    23a8d34d0bb7:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    23a8d34d0bba:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    23a8d34d0bc4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0bc9:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x23a8d34d0b7b
    23a8d34d0bd0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0bd6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    23a8d34d0bdb:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x23a8d34d0b7b
    23a8d34d0be2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0be7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x23a8d34d0bbc
    23a8d34d0bee:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0bf4:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    23a8d34d0bf9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d34d0bfe:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    23a8d34d0c04:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    23a8d34d0c07:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    23a8d34d0c11:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0c16:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    23a8d34d0c20:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0c26:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    23a8d34d0c2b:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    23a8d34d0c35:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0c3a:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    23a8d34d0c44:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0c4a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    23a8d34d0c4f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d34d0c54:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x23a8d34d0c09
    23a8d34d0c5b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0c60:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x23a8d34d0c18
    23a8d34d0c67:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0c6d:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    23a8d34d0c72:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x23a8d34d0c2d
    23a8d34d0c79:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0c7e:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x23a8d34d0c3c
    23a8d34d0c85:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0c8b:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    23a8d34d0c90:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d0c95:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x23a8d34d0b6c
    23a8d34d0c9c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0ca1:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x23a8d34d0b7b
    23a8d34d0ca8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0cae:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    23a8d34d0cb3:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x23a8d34d0b7b
    23a8d34d0cba:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0cbf:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x23a8d34d0b6c
    23a8d34d0cc6:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0ccc:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    23a8d34d0cd1:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d34d0cd6:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    23a8d34d0cdc:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    23a8d34d0cdf:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x23a8d34d0bbc
    23a8d34d0ce6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0ceb:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x23a8d34d0b7b
    23a8d34d0cf2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0cf8:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    23a8d34d0cfd:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x23a8d34d0b7b
    23a8d34d0d04:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d0d09:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x23a8d34d0bbc
    23a8d34d0d10:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d0d16:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    23a8d34d0d1b:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d34d0d20:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    23a8d34d0d25:	e9 27 00 00 00                                  	jmp    0x23a8d34d0d51
    23a8d34d0d2a:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    23a8d34d0d2f:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
    23a8d34d0d34:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    23a8d34d0d39:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
    23a8d34d0d41:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
    23a8d34d0d49:	c5 fa 6f b5 40 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xc0]
    23a8d34d0d51:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    23a8d34d0d54:	83 c0 70                                        	add    eax,0x70
    23a8d34d0d57:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d0d5b:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    23a8d34d0d5e:	49 0b ce                                        	or     rcx,r14
    23a8d34d0d61:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    23a8d34d0d64:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
    23a8d34d0d68:	41 81 aa 94 02 00 00 60 06 00 00                	sub    DWORD PTR [r10+0x294],0x660
    23a8d34d0d73:	0f 88 45 00 00 00                               	js     0x23a8d34d0dbe
    23a8d34d0d79:	48 8b e5                                        	mov    rsp,rbp
    23a8d34d0d7c:	5d                                              	pop    rbp
    23a8d34d0d7d:	c3                                              	ret
    23a8d34d0d7e:	50                                              	push   rax
    23a8d34d0d7f:	51                                              	push   rcx
    23a8d34d0d80:	52                                              	push   rdx
    23a8d34d0d81:	48 83 ec 30                                     	sub    rsp,0x30
    23a8d34d0d85:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    23a8d34d0d8a:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    23a8d34d0d90:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    23a8d34d0d96:	33 c0                                           	xor    eax,eax
    23a8d34d0d98:	e8 93 e1 f7 ff                                  	call   0x23a8d344ef30
    23a8d34d0d9d:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    23a8d34d0da2:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    23a8d34d0da8:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    23a8d34d0dae:	48 83 c4 30                                     	add    rsp,0x30
    23a8d34d0db2:	5a                                              	pop    rdx
    23a8d34d0db3:	59                                              	pop    rcx
    23a8d34d0db4:	58                                              	pop    rax
    23a8d34d0db5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d0db9:	e9 ba f9 ff ff                                  	jmp    0x23a8d34d0778
    23a8d34d0dbe:	48 83 ec 60                                     	sub    rsp,0x60
    23a8d34d0dc2:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    23a8d34d0dc7:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    23a8d34d0dcd:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    23a8d34d0dd3:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    23a8d34d0dd9:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    23a8d34d0ddf:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    23a8d34d0de5:	e8 76 df f7 ff                                  	call   0x23a8d344ed60
    23a8d34d0dea:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    23a8d34d0def:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    23a8d34d0df5:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    23a8d34d0dfb:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    23a8d34d0e01:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    23a8d34d0e07:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    23a8d34d0e0d:	48 83 c4 60                                     	add    rsp,0x60
    23a8d34d0e11:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d0e15:	e9 5f ff ff ff                                  	jmp    0x23a8d34d0d79
    23a8d34d0e1a:	66 90                                           	xchg   ax,ax
    23a8d34d0e1c:	2b 00                                           	sub    eax,DWORD PTR [rax]
    23a8d34d0e1e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d34d0e20:	08 00                                           	or     BYTE PTR [rax],al
	...
