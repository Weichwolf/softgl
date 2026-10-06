
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_packet_sample_cube_coherent-liftoff.bin:     file format binary


Disassembly of section .data:

0000214fa48ef700 <.data>:
    214fa48ef700:	41 bc af 00 00 00                               	mov    r12d,0xaf
    214fa48ef706:	e8 65 b6 f3 ff                                  	call   0x214fa482ad70
    214fa48ef70b:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
    214fa48ef712:	8b c0                                           	mov    eax,eax
    214fa48ef714:	8b d2                                           	mov    edx,edx
    214fa48ef716:	8b c9                                           	mov    ecx,ecx
    214fa48ef718:	8b db                                           	mov    ebx,ebx
    214fa48ef71a:	45 8b c9                                        	mov    r9d,r9d
    214fa48ef71d:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    214fa48ef720:	50                                              	push   rax
    214fa48ef721:	51                                              	push   rcx
    214fa48ef722:	57                                              	push   rdi
    214fa48ef723:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    214fa48ef72a:	33 c0                                           	xor    eax,eax
    214fa48ef72c:	b9 41 00 00 00                                  	mov    ecx,0x41
    214fa48ef731:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    214fa48ef733:	5f                                              	pop    rdi
    214fa48ef734:	59                                              	pop    rcx
    214fa48ef735:	58                                              	pop    rax
    214fa48ef736:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    214fa48ef73a:	0f 86 05 1c 00 00                               	jbe    0x214fa48f1345
    214fa48ef740:	45 85 c9                                        	test   r9d,r9d
    214fa48ef743:	0f 85 07 00 00 00                               	jne    0x214fa48ef750
    214fa48ef749:	33 c0                                           	xor    eax,eax
    214fa48ef74b:	e9 d5 1b 00 00                                  	jmp    0x214fa48f1325
    214fa48ef750:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    214fa48ef754:	45 8b 64 00 04                                  	mov    r12d,DWORD PTR [r8+rax*1+0x4]
    214fa48ef759:	45 85 e4                                        	test   r12d,r12d
    214fa48ef75c:	0f 85 07 00 00 00                               	jne    0x214fa48ef769
    214fa48ef762:	33 c0                                           	xor    eax,eax
    214fa48ef764:	e9 bc 1b 00 00                                  	jmp    0x214fa48f1325
    214fa48ef769:	45 8b f9                                        	mov    r15d,r9d
    214fa48ef76c:	41 83 e7 0f                                     	and    r15d,0xf
    214fa48ef770:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    214fa48ef776:	49 ba 50 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2850
    214fa48ef780:	c4 c1 78 54 0a                                  	vandps xmm1,xmm0,XMMWORD PTR [r10]
    214fa48ef785:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    214fa48ef78f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa48ef794:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa48ef798:	c5 f0 c2 da 02                                  	vcmpleps xmm3,xmm1,xmm2
    214fa48ef79d:	c4 c1 7a 6f 24 10                               	vmovdqu xmm4,XMMWORD PTR [r8+rdx*1]
    214fa48ef7a3:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x214fa48ef778
    214fa48ef7aa:	c4 c1 58 54 2a                                  	vandps xmm5,xmm4,XMMWORD PTR [r10]
    214fa48ef7af:	c5 d0 c2 f2 02                                  	vcmpleps xmm6,xmm5,xmm2
    214fa48ef7b4:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    214fa48ef7b8:	c4 c1 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1]
    214fa48ef7be:	4c 8b 15 b3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb3]        # 0x214fa48ef778
    214fa48ef7c5:	c4 c1 48 54 3a                                  	vandps xmm7,xmm6,XMMWORD PTR [r10]
    214fa48ef7ca:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    214fa48ef7cf:	c5 c0 c2 c2 02                                  	vcmpleps xmm0,xmm7,xmm2
    214fa48ef7d4:	c5 e1 db d8                                     	vpand  xmm3,xmm3,xmm0
    214fa48ef7d8:	c5 f8 50 f3                                     	vmovmskps esi,xmm3
    214fa48ef7dc:	41 23 f7                                        	and    esi,r15d
    214fa48ef7df:	44 3b ce                                        	cmp    r9d,esi
    214fa48ef7e2:	0f 84 07 00 00 00                               	je     0x214fa48ef7ef
    214fa48ef7e8:	33 c0                                           	xor    eax,eax
    214fa48ef7ea:	e9 36 1b 00 00                                  	jmp    0x214fa48f1325
    214fa48ef7ef:	c5 c0 c2 c5 02                                  	vcmpleps xmm0,xmm7,xmm5
    214fa48ef7f4:	c5 f0 c2 dd 02                                  	vcmpleps xmm3,xmm1,xmm5
    214fa48ef7f9:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    214fa48ef7fd:	c5 f8 50 f0                                     	vmovmskps esi,xmm0
    214fa48ef801:	8b de                                           	mov    ebx,esi
    214fa48ef803:	41 23 d9                                        	and    ebx,r9d
    214fa48ef806:	44 3b cb                                        	cmp    r9d,ebx
    214fa48ef809:	0f 85 32 00 00 00                               	jne    0x214fa48ef841
    214fa48ef80f:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    214fa48ef814:	49 ba 60 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2860
    214fa48ef81e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa48ef823:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x214fa48ef816
    214fa48ef82a:	c4 c1 48 57 12                                  	vxorps xmm2,xmm6,XMMWORD PTR [r10]
    214fa48ef82f:	c7 45 d0 00 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x0
    214fa48ef836:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa48ef83a:	33 f6                                           	xor    esi,esi
    214fa48ef83c:	e9 9d 00 00 00                                  	jmp    0x214fa48ef8de
    214fa48ef841:	c5 c0 c2 c1 02                                  	vcmpleps xmm0,xmm7,xmm1
    214fa48ef846:	c5 d0 c2 d9 02                                  	vcmpleps xmm3,xmm5,xmm1
    214fa48ef84b:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    214fa48ef84f:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    214fa48ef853:	8b ce                                           	mov    ecx,esi
    214fa48ef855:	83 f1 ff                                        	xor    ecx,0xffffffff
    214fa48ef858:	41 23 c9                                        	and    ecx,r9d
    214fa48ef85b:	41 23 c8                                        	and    ecx,r8d
    214fa48ef85e:	44 3b c9                                        	cmp    r9d,ecx
    214fa48ef861:	0f 85 29 00 00 00                               	jne    0x214fa48ef890
    214fa48ef867:	c7 45 d0 02 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x2
    214fa48ef86e:	41 8b c8                                        	mov    ecx,r8d
    214fa48ef871:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa48ef875:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    214fa48ef879:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa48ef87d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    214fa48ef881:	be 01 00 00 00                                  	mov    esi,0x1
    214fa48ef886:	c5 fa 6f 65 98                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x68]
    214fa48ef88b:	e9 4e 00 00 00                                  	jmp    0x214fa48ef8de
    214fa48ef890:	41 8b c8                                        	mov    ecx,r8d
    214fa48ef893:	0b ce                                           	or     ecx,esi
    214fa48ef895:	41 23 c9                                        	and    ecx,r9d
    214fa48ef898:	85 c9                                           	test   ecx,ecx
    214fa48ef89a:	0f 84 07 00 00 00                               	je     0x214fa48ef8a7
    214fa48ef8a0:	33 c9                                           	xor    ecx,ecx
    214fa48ef8a2:	e9 7c 1a 00 00                                  	jmp    0x214fa48f1323
    214fa48ef8a7:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    214fa48ef8ac:	4c 8b 15 63 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff63]        # 0x214fa48ef816
    214fa48ef8b3:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa48ef8b8:	c7 45 d0 04 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x4
    214fa48ef8bf:	c7 85 d8 fe ff ff 01 00 00 00                   	mov    DWORD PTR [rbp-0x128],0x1
    214fa48ef8c9:	41 8b c8                                        	mov    ecx,r8d
    214fa48ef8cc:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    214fa48ef8d0:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa48ef8d4:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    214fa48ef8d8:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    214fa48ef8dc:	33 f6                                           	xor    esi,esi
    214fa48ef8de:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    214fa48ef8e2:	c5 c8 c2 cc 02                                  	vcmpleps xmm1,xmm6,xmm4
    214fa48ef8e7:	c5 f8 50 c9                                     	vmovmskps ecx,xmm1
    214fa48ef8eb:	41 23 cf                                        	and    ecx,r15d
    214fa48ef8ee:	85 c9                                           	test   ecx,ecx
    214fa48ef8f0:	0f 85 75 00 00 00                               	jne    0x214fa48ef96b
    214fa48ef8f6:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x214fa48ef816
    214fa48ef8fd:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    214fa48ef902:	85 f6                                           	test   esi,esi
    214fa48ef904:	0f 84 05 00 00 00                               	je     0x214fa48ef90f
    214fa48ef90a:	e9 04 00 00 00                                  	jmp    0x214fa48ef913
    214fa48ef90f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    214fa48ef913:	4c 8b 15 fc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffefc]        # 0x214fa48ef816
    214fa48ef91a:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    214fa48ef91f:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    214fa48ef925:	85 d2                                           	test   edx,edx
    214fa48ef927:	0f 84 09 00 00 00                               	je     0x214fa48ef936
    214fa48ef92d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    214fa48ef931:	e9 04 00 00 00                                  	jmp    0x214fa48ef93a
    214fa48ef936:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    214fa48ef93a:	44 3b cb                                        	cmp    r9d,ebx
    214fa48ef93d:	0f 94 c2                                        	sete   dl
    214fa48ef940:	0f b6 d2                                        	movzx  edx,dl
    214fa48ef943:	85 d2                                           	test   edx,edx
    214fa48ef945:	0f 84 09 00 00 00                               	je     0x214fa48ef954
    214fa48ef94b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    214fa48ef94f:	e9 00 00 00 00                                  	jmp    0x214fa48ef954
    214fa48ef954:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48ef957:	83 ca 01                                        	or     edx,0x1
    214fa48ef95a:	41 b8 03 00 00 00                               	mov    r8d,0x3
    214fa48ef960:	85 f6                                           	test   esi,esi
    214fa48ef962:	44 0f 44 c2                                     	cmove  r8d,edx
    214fa48ef966:	e9 25 00 00 00                                  	jmp    0x214fa48ef990
    214fa48ef96b:	41 3b c9                                        	cmp    ecx,r9d
    214fa48ef96e:	0f 85 15 00 00 00                               	jne    0x214fa48ef989
    214fa48ef974:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    214fa48ef978:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    214fa48ef97c:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    214fa48ef980:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    214fa48ef984:	e9 07 00 00 00                                  	jmp    0x214fa48ef990
    214fa48ef989:	33 c0                                           	xor    eax,eax
    214fa48ef98b:	e9 95 19 00 00                                  	jmp    0x214fa48f1325
    214fa48ef990:	41 8b d0                                        	mov    edx,r8d
    214fa48ef993:	c1 e2 06                                        	shl    edx,0x6
    214fa48ef996:	41 8d 14 14                                     	lea    edx,[r12+rdx*1]
    214fa48ef99a:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    214fa48ef99e:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    214fa48ef9a3:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    214fa48ef9a6:	41 8b 84 14 24 01 00 00                         	mov    eax,DWORD PTR [r12+rdx*1+0x124]
    214fa48ef9ae:	85 c0                                           	test   eax,eax
    214fa48ef9b0:	0f 85 07 00 00 00                               	jne    0x214fa48ef9bd
    214fa48ef9b6:	33 c0                                           	xor    eax,eax
    214fa48ef9b8:	e9 68 19 00 00                                  	jmp    0x214fa48f1325
    214fa48ef9bd:	45 8b 84 14 a4 02 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x2a4]
    214fa48ef9c5:	41 83 f8 00                                     	cmp    r8d,0x0
    214fa48ef9c9:	0f 8f 07 00 00 00                               	jg     0x214fa48ef9d6
    214fa48ef9cf:	33 c0                                           	xor    eax,eax
    214fa48ef9d1:	e9 4f 19 00 00                                  	jmp    0x214fa48f1325
    214fa48ef9d6:	8d b2 24 04 00 00                               	lea    esi,[rdx+0x424]
    214fa48ef9dc:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    214fa48ef9df:	41 8b 0c 34                                     	mov    ecx,DWORD PTR [r12+rsi*1]
    214fa48ef9e3:	33 d2                                           	xor    edx,edx
    214fa48ef9e5:	3b ca                                           	cmp    ecx,edx
    214fa48ef9e7:	0f 8f 27 00 00 00                               	jg     0x214fa48efa14
    214fa48ef9ed:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    214fa48ef9f2:	8b f0                                           	mov    esi,eax
    214fa48ef9f4:	44 8b e1                                        	mov    r12d,ecx
    214fa48ef9f7:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    214fa48ef9fb:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa48ef9ff:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    214fa48efa03:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    214fa48efa07:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48efa0a:	33 c9                                           	xor    ecx,ecx
    214fa48efa0c:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    214fa48efa0f:	e9 0f 19 00 00                                  	jmp    0x214fa48f1323
    214fa48efa14:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa48efa19:	f7 da                                           	neg    edx
    214fa48efa1b:	41 03 d0                                        	add    edx,r8d
    214fa48efa1e:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    214fa48efa28:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa48efa2d:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa48efa31:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    214fa48efa36:	4c 8b 15 e3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe3]        # 0x214fa48efa20
    214fa48efa3d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa48efa42:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    214fa48efa46:	c5 d0 c2 c0 01                                  	vcmpltps xmm0,xmm5,xmm0
    214fa48efa4b:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    214fa48efa4f:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    214fa48efa53:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48efa58:	c5 f0 5e d0                                     	vdivps xmm2,xmm1,xmm0
    214fa48efa5c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    214fa48efa66:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa48efa6b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa48efa6f:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    214fa48efa73:	c5 d8 5e c8                                     	vdivps xmm1,xmm4,xmm0
    214fa48efa77:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    214fa48efa7b:	c5 fa 7f 8d b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm1
    214fa48efa83:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    214fa48efa8d:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa48efa92:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    214fa48efa96:	c5 fa 6f bd b4 fe ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x14c]
    214fa48efa9e:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    214fa48efaa2:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    214fa48efaa5:	41 8b 74 1c 14                                  	mov    esi,DWORD PTR [r12+rbx*1+0x14]
    214fa48efaaa:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    214fa48efaad:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    214fa48efab3:	41 8b 54 1c 10                                  	mov    edx,DWORD PTR [r12+rbx*1+0x10]
    214fa48efab8:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    214fa48efabd:	3b d3                                           	cmp    edx,ebx
    214fa48efabf:	0f 95 c3                                        	setne  bl
    214fa48efac2:	0f b6 db                                        	movzx  ebx,bl
    214fa48efac5:	41 bf 00 29 00 00                               	mov    r15d,0x2900
    214fa48efacb:	41 3b d7                                        	cmp    edx,r15d
    214fa48eface:	41 0f 95 c7                                     	setne  r15b
    214fa48efad2:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa48efad6:	41 23 df                                        	and    ebx,r15d
    214fa48efad9:	85 db                                           	test   ebx,ebx
    214fa48efadb:	0f 84 0f 00 00 00                               	je     0x214fa48efaf0
    214fa48efae1:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    214fa48efae7:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    214fa48efaeb:	e9 08 00 00 00                                  	jmp    0x214fa48efaf8
    214fa48efaf0:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    214fa48efaf4:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    214fa48efaf8:	c5 e8 59 f9                                     	vmulps xmm7,xmm2,xmm1
    214fa48efafc:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    214fa48efaff:	45 8b 7c 1c 0c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0xc]
    214fa48efb04:	45 8b d0                                        	mov    r10d,r8d
    214fa48efb07:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    214fa48efb0c:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    214fa48efb11:	c5 e8 59 d0                                     	vmulps xmm2,xmm2,xmm0
    214fa48efb15:	bb 01 00 00 00                                  	mov    ebx,0x1
    214fa48efb1a:	f7 db                                           	neg    ebx
    214fa48efb1c:	03 d9                                           	add    ebx,ecx
    214fa48efb1e:	44 8b e3                                        	mov    r12d,ebx
    214fa48efb21:	44 23 e1                                        	and    r12d,ecx
    214fa48efb24:	89 45 d0                                        	mov    DWORD PTR [rbp-0x30],eax
    214fa48efb27:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    214fa48efb2d:	89 8d dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],ecx
    214fa48efb33:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    214fa48efb39:	41 23 c8                                        	and    ecx,r8d
    214fa48efb3c:	89 95 e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],edx
    214fa48efb42:	33 d2                                           	xor    edx,edx
    214fa48efb44:	85 c9                                           	test   ecx,ecx
    214fa48efb46:	0f 44 d0                                        	cmove  edx,eax
    214fa48efb49:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    214fa48efb4f:	44 8b d0                                        	mov    r10d,eax
    214fa48efb52:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa48efb57:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa48efb5c:	b8 2f 81 00 00                                  	mov    eax,0x812f
    214fa48efb61:	3b f0                                           	cmp    esi,eax
    214fa48efb63:	0f 95 c0                                        	setne  al
    214fa48efb66:	0f b6 c0                                        	movzx  eax,al
    214fa48efb69:	b9 00 29 00 00                                  	mov    ecx,0x2900
    214fa48efb6e:	3b f1                                           	cmp    esi,ecx
    214fa48efb70:	0f 95 c1                                        	setne  cl
    214fa48efb73:	0f b6 c9                                        	movzx  ecx,cl
    214fa48efb76:	23 c1                                           	and    eax,ecx
    214fa48efb78:	85 c0                                           	test   eax,eax
    214fa48efb7a:	0f 84 17 00 00 00                               	je     0x214fa48efb97
    214fa48efb80:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    214fa48efb88:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    214fa48efb8e:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    214fa48efb92:	e9 10 00 00 00                                  	jmp    0x214fa48efba7
    214fa48efb97:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    214fa48efb9f:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    214fa48efba3:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    214fa48efba7:	c5 fa 7f 8d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm1
    214fa48efbaf:	c5 fa 6f 8d b4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x14c]
    214fa48efbb7:	c5 f0 59 c8                                     	vmulps xmm1,xmm1,xmm0
    214fa48efbbb:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    214fa48efbc5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa48efbca:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    214fa48efbce:	c5 f0 58 f0                                     	vaddps xmm6,xmm1,xmm0
    214fa48efbd2:	b8 00 26 00 00                                  	mov    eax,0x2600
    214fa48efbd7:	44 3b f8                                        	cmp    r15d,eax
    214fa48efbda:	0f 94 c0                                        	sete   al
    214fa48efbdd:	0f b6 c0                                        	movzx  eax,al
    214fa48efbe0:	85 c0                                           	test   eax,eax
    214fa48efbe2:	0f 84 09 00 00 00                               	je     0x214fa48efbf1
    214fa48efbe8:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    214fa48efbec:	e9 00 00 00 00                                  	jmp    0x214fa48efbf1
    214fa48efbf1:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    214fa48efbf7:	4c 8b 15 7a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7a]        # 0x214fa48ef778
    214fa48efbfe:	c4 c1 40 54 1a                                  	vandps xmm3,xmm7,XMMWORD PTR [r10]
    214fa48efc03:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    214fa48efc08:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    214fa48efc12:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa48efc17:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    214fa48efc1b:	c5 e0 c2 d8 01                                  	vcmpltps xmm3,xmm3,xmm0
    214fa48efc20:	49 ba 40 29 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2940
    214fa48efc2a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    214fa48efc2f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    214fa48efc34:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    214fa48efc3a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    214fa48efc3e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    214fa48efc43:	c5 fa 7f 95 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm2
    214fa48efc4b:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    214fa48efc53:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    214fa48efc58:	c5 fa 6f 55 98                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x68]
    214fa48efc5d:	c5 fa 7f 9d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm3
    214fa48efc65:	c5 fa 6f 9d a4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x15c]
    214fa48efc6d:	c5 e0 58 da                                     	vaddps xmm3,xmm3,xmm2
    214fa48efc71:	c5 fa 6f 95 b4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x14c]
    214fa48efc79:	85 c0                                           	test   eax,eax
    214fa48efc7b:	0f 84 05 00 00 00                               	je     0x214fa48efc86
    214fa48efc81:	e9 04 00 00 00                                  	jmp    0x214fa48efc8a
    214fa48efc86:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    214fa48efc8a:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    214fa48efc90:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x214fa48efc22
    214fa48efc97:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    214fa48efc9c:	c4 c1 60 54 e7                                  	vandps xmm4,xmm3,xmm15
    214fa48efca1:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    214fa48efca7:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa48efcab:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa48efcb0:	c5 fa 7f a5 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm4
    214fa48efcb8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    214fa48efcc2:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa48efcc7:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    214fa48efccb:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    214fa48efcd0:	4c 8b 15 a1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaa1]        # 0x214fa48ef778
    214fa48efcd7:	c4 c1 60 54 2a                                  	vandps xmm5,xmm3,XMMWORD PTR [r10]
    214fa48efcdc:	c5 d0 c2 e8 01                                  	vcmpltps xmm5,xmm5,xmm0
    214fa48efce1:	c5 fa 7f b5 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm6
    214fa48efce9:	c5 fa 6f b5 b4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x14c]
    214fa48efcf1:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    214fa48efcf5:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    214fa48efcf9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa48efcfe:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    214fa48efd04:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    214fa48efd08:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa48efd0d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    214fa48efd11:	c4 e2 51 3d f6                                  	vpmaxsd xmm6,xmm5,xmm6
    214fa48efd16:	c4 e2 49 39 f0                                  	vpminsd xmm6,xmm6,xmm0
    214fa48efd1b:	8b 8d e0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x120]
    214fa48efd21:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    214fa48efd27:	b8 2f 81 00 00                                  	mov    eax,0x812f
    214fa48efd2c:	3b c8                                           	cmp    ecx,eax
    214fa48efd2e:	0f 95 c1                                        	setne  cl
    214fa48efd31:	0f b6 c9                                        	movzx  ecx,cl
    214fa48efd34:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    214fa48efd3a:	89 8d b0 fe ff ff                               	mov    DWORD PTR [rbp-0x150],ecx
    214fa48efd40:	b9 00 29 00 00                                  	mov    ecx,0x2900
    214fa48efd45:	3b c1                                           	cmp    eax,ecx
    214fa48efd47:	0f 95 c0                                        	setne  al
    214fa48efd4a:	0f b6 c0                                        	movzx  eax,al
    214fa48efd4d:	8b 8d b0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x150]
    214fa48efd53:	23 c8                                           	and    ecx,eax
    214fa48efd55:	85 c9                                           	test   ecx,ecx
    214fa48efd57:	0f 85 05 00 00 00                               	jne    0x214fa48efd62
    214fa48efd5d:	e9 8f 00 00 00                                  	jmp    0x214fa48efdf1
    214fa48efd62:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    214fa48efd66:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa48efd6b:	c5 d1 db f6                                     	vpand  xmm6,xmm5,xmm6
    214fa48efd6f:	8b c2                                           	mov    eax,edx
    214fa48efd71:	85 d2                                           	test   edx,edx
    214fa48efd73:	0f 84 07 00 00 00                               	je     0x214fa48efd80
    214fa48efd79:	8b d0                                           	mov    edx,eax
    214fa48efd7b:	e9 71 00 00 00                                  	jmp    0x214fa48efdf1
    214fa48efd80:	c4 c1 79 6e f0                                  	vmovd  xmm6,r8d
    214fa48efd85:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa48efd8a:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    214fa48efd92:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    214fa48efd96:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    214fa48efd9e:	c5 d1 66 c0                                     	vpcmpgtd xmm0,xmm5,xmm0
    214fa48efda2:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    214fa48efda6:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    214fa48efdaa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48efdaf:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa48efdb4:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    214fa48efdb9:	c5 fa 6f bd 28 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xd8]
    214fa48efdc1:	c5 c1 66 fd                                     	vpcmpgtd xmm7,xmm7,xmm5
    214fa48efdc5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa48efdc9:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    214fa48efdcd:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa48efdd2:	c5 d1 fe ff                                     	vpaddd xmm7,xmm5,xmm7
    214fa48efdd6:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    214fa48efddb:	8b d0                                           	mov    edx,eax
    214fa48efddd:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa48efde1:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    214fa48efde9:	c5 fa 6f bd 48 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xb8]
    214fa48efdf1:	33 c0                                           	xor    eax,eax
    214fa48efdf3:	45 85 e4                                        	test   r12d,r12d
    214fa48efdf6:	0f 44 c3                                        	cmove  eax,ebx
    214fa48efdf9:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    214fa48efe01:	c5 fa 6f 85 78 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x88]
    214fa48efe09:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    214fa48efe0d:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    214fa48efe11:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48efe16:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    214fa48efe1e:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    214fa48efe22:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa48efe27:	c5 fa 7f 95 e8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x118],xmm2
    214fa48efe2f:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    214fa48efe33:	c4 e2 79 3d d2                                  	vpmaxsd xmm2,xmm0,xmm2
    214fa48efe38:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    214fa48efe3d:	b9 2f 81 00 00                                  	mov    ecx,0x812f
    214fa48efe42:	3b f1                                           	cmp    esi,ecx
    214fa48efe44:	0f 95 c1                                        	setne  cl
    214fa48efe47:	0f b6 c9                                        	movzx  ecx,cl
    214fa48efe4a:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    214fa48efe50:	b8 00 29 00 00                                  	mov    eax,0x2900
    214fa48efe55:	3b f0                                           	cmp    esi,eax
    214fa48efe57:	0f 95 c0                                        	setne  al
    214fa48efe5a:	0f b6 c0                                        	movzx  eax,al
    214fa48efe5d:	23 c8                                           	and    ecx,eax
    214fa48efe5f:	85 c9                                           	test   ecx,ecx
    214fa48efe61:	0f 85 05 00 00 00                               	jne    0x214fa48efe6c
    214fa48efe67:	e9 95 00 00 00                                  	jmp    0x214fa48eff01
    214fa48efe6c:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    214fa48efe72:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    214fa48efe76:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa48efe7b:	c5 f9 db d2                                     	vpand  xmm2,xmm0,xmm2
    214fa48efe7f:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    214fa48efe85:	85 c0                                           	test   eax,eax
    214fa48efe87:	0f 84 05 00 00 00                               	je     0x214fa48efe92
    214fa48efe8d:	e9 6f 00 00 00                                  	jmp    0x214fa48eff01
    214fa48efe92:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    214fa48efe98:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    214fa48efe9c:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa48efea1:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    214fa48efea5:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    214fa48efead:	c5 f9 66 d9                                     	vpcmpgtd xmm3,xmm0,xmm1
    214fa48efeb1:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    214fa48efeb5:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    214fa48efeb9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    214fa48efebe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa48efec3:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    214fa48efec8:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    214fa48efed0:	c5 d9 66 e0                                     	vpcmpgtd xmm4,xmm4,xmm0
    214fa48efed4:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    214fa48efed8:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    214fa48efedc:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    214fa48efee1:	c5 f9 fe e4                                     	vpaddd xmm4,xmm0,xmm4
    214fa48efee5:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    214fa48efeed:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    214fa48efef1:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    214fa48efef9:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    214fa48eff01:	c5 fa 7f 85 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm0
    214fa48eff09:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    214fa48eff0e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa48eff13:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    214fa48eff18:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    214fa48eff20:	c5 e9 fe ce                                     	vpaddd xmm1,xmm2,xmm6
    214fa48eff24:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    214fa48eff2a:	c4 e3 79 16 c9 02                               	vpextrd ecx,xmm1,0x2
    214fa48eff30:	c4 e3 79 16 cb 01                               	vpextrd ebx,xmm1,0x1
    214fa48eff36:	c4 c1 79 7e c8                                  	vmovd  r8d,xmm1
    214fa48eff3b:	41 81 ff 00 26 00 00                            	cmp    r15d,0x2600
    214fa48eff42:	0f 84 ee 02 00 00                               	je     0x214fa48f0236
    214fa48eff48:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    214fa48eff52:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa48eff57:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    214fa48eff5b:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    214fa48eff63:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    214fa48eff67:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa48eff6b:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    214fa48eff70:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    214fa48eff78:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    214fa48eff80:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    214fa48eff85:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    214fa48eff8c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    214fa48eff8f:	b8 2f 81 00 00                                  	mov    eax,0x812f
    214fa48eff94:	44 3b e0                                        	cmp    r12d,eax
    214fa48eff97:	41 0f 95 c4                                     	setne  r12b
    214fa48eff9b:	45 0f b6 e4                                     	movzx  r12d,r12b
    214fa48eff9f:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    214fa48effa5:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    214fa48effab:	b9 00 29 00 00                                  	mov    ecx,0x2900
    214fa48effb0:	3b c1                                           	cmp    eax,ecx
    214fa48effb2:	0f 95 c0                                        	setne  al
    214fa48effb5:	0f b6 c0                                        	movzx  eax,al
    214fa48effb8:	44 23 e0                                        	and    r12d,eax
    214fa48effbb:	45 85 e4                                        	test   r12d,r12d
    214fa48effbe:	0f 85 05 00 00 00                               	jne    0x214fa48effc9
    214fa48effc4:	e9 70 00 00 00                                  	jmp    0x214fa48f0039
    214fa48effc9:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    214fa48effcd:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa48effd2:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    214fa48effd6:	8b c2                                           	mov    eax,edx
    214fa48effd8:	85 d2                                           	test   edx,edx
    214fa48effda:	0f 84 07 00 00 00                               	je     0x214fa48effe7
    214fa48effe0:	8b d0                                           	mov    edx,eax
    214fa48effe2:	e9 52 00 00 00                                  	jmp    0x214fa48f0039
    214fa48effe7:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa48effeb:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    214fa48efff3:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    214fa48efff7:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    214fa48efffb:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    214fa48effff:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    214fa48f0004:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa48f0009:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    214fa48f000e:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    214fa48f0012:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    214fa48f0016:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    214fa48f001a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa48f001f:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    214fa48f0023:	8b d0                                           	mov    edx,eax
    214fa48f0025:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    214fa48f002d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    214fa48f0031:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    214fa48f0039:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    214fa48f0041:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    214fa48f0045:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    214fa48f0049:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    214fa48f004e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    214fa48f0056:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    214fa48f005b:	b8 2f 81 00 00                                  	mov    eax,0x812f
    214fa48f0060:	3b f0                                           	cmp    esi,eax
    214fa48f0062:	0f 95 c0                                        	setne  al
    214fa48f0065:	0f b6 c0                                        	movzx  eax,al
    214fa48f0068:	b9 00 29 00 00                                  	mov    ecx,0x2900
    214fa48f006d:	3b f1                                           	cmp    esi,ecx
    214fa48f006f:	0f 95 c1                                        	setne  cl
    214fa48f0072:	0f b6 c9                                        	movzx  ecx,cl
    214fa48f0075:	23 c1                                           	and    eax,ecx
    214fa48f0077:	85 c0                                           	test   eax,eax
    214fa48f0079:	0f 85 05 00 00 00                               	jne    0x214fa48f0084
    214fa48f007f:	e9 9f 00 00 00                                  	jmp    0x214fa48f0123
    214fa48f0084:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    214fa48f008a:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    214fa48f008e:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa48f0093:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    214fa48f0097:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    214fa48f009d:	85 c0                                           	test   eax,eax
    214fa48f009f:	0f 84 05 00 00 00                               	je     0x214fa48f00aa
    214fa48f00a5:	e9 79 00 00 00                                  	jmp    0x214fa48f0123
    214fa48f00aa:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    214fa48f00b0:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    214fa48f00b4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa48f00b9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    214fa48f00bd:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    214fa48f00c5:	c5 fa 6f 85 38 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc8]
    214fa48f00cd:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    214fa48f00d1:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    214fa48f00d5:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    214fa48f00d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48f00de:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa48f00e3:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    214fa48f00e8:	c5 fa 7f 4d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm1
    214fa48f00ed:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    214fa48f00f1:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    214fa48f00f5:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    214fa48f00f9:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa48f00fe:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    214fa48f0102:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    214fa48f010a:	c5 fa 7f ad 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm5
    214fa48f0112:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    214fa48f0116:	c5 fa 6f 85 28 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xd8]
    214fa48f011e:	c5 fa 6f 4d a8                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x58]
    214fa48f0123:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    214fa48f0128:	c5 e9 fe ee                                     	vpaddd xmm5,xmm2,xmm6
    214fa48f012c:	41 83 f9 0f                                     	cmp    r9d,0xf
    214fa48f0130:	0f 85 1f 00 00 00                               	jne    0x214fa48f0155
    214fa48f0136:	c5 c9 fe dc                                     	vpaddd xmm3,xmm6,xmm4
    214fa48f013a:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    214fa48f013e:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    214fa48f0142:	83 f8 0f                                        	cmp    eax,0xf
    214fa48f0145:	0f 85 05 00 00 00                               	jne    0x214fa48f0150
    214fa48f014b:	e9 b6 01 00 00                                  	jmp    0x214fa48f0306
    214fa48f0150:	e9 00 00 00 00                                  	jmp    0x214fa48f0155
    214fa48f0155:	41 8b c1                                        	mov    eax,r9d
    214fa48f0158:	83 e0 08                                        	and    eax,0x8
    214fa48f015b:	41 8b c9                                        	mov    ecx,r9d
    214fa48f015e:	83 e1 04                                        	and    ecx,0x4
    214fa48f0161:	41 8b f1                                        	mov    esi,r9d
    214fa48f0164:	83 e6 02                                        	and    esi,0x2
    214fa48f0167:	45 8b e1                                        	mov    r12d,r9d
    214fa48f016a:	41 83 e4 01                                     	and    r12d,0x1
    214fa48f016e:	41 83 f9 0f                                     	cmp    r9d,0xf
    214fa48f0172:	0f 85 05 00 00 00                               	jne    0x214fa48f017d
    214fa48f0178:	e9 46 04 00 00                                  	jmp    0x214fa48f05c3
    214fa48f017d:	45 85 e4                                        	test   r12d,r12d
    214fa48f0180:	0f 84 23 00 00 00                               	je     0x214fa48f01a9
    214fa48f0186:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0189:	45 8b f8                                        	mov    r15d,r8d
    214fa48f018c:	41 c1 e7 02                                     	shl    r15d,0x2
    214fa48f0190:	41 03 d7                                        	add    edx,r15d
    214fa48f0193:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    214fa48f0197:	4d 8b 7f 17                                     	mov    r15,QWORD PTR [r15+0x17]
    214fa48f019b:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    214fa48f019e:	41 8b 04 17                                     	mov    eax,DWORD PTR [r15+rdx*1]
    214fa48f01a2:	33 d2                                           	xor    edx,edx
    214fa48f01a4:	e9 07 00 00 00                                  	jmp    0x214fa48f01b0
    214fa48f01a9:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    214fa48f01ac:	33 c0                                           	xor    eax,eax
    214fa48f01ae:	33 d2                                           	xor    edx,edx
    214fa48f01b0:	85 f6                                           	test   esi,esi
    214fa48f01b2:	0f 84 26 00 00 00                               	je     0x214fa48f01de
    214fa48f01b8:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    214fa48f01bc:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    214fa48f01c2:	8b c3                                           	mov    eax,ebx
    214fa48f01c4:	c1 e0 02                                        	shl    eax,0x2
    214fa48f01c7:	44 03 f8                                        	add    r15d,eax
    214fa48f01ca:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f01ce:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f01d2:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    214fa48f01d5:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    214fa48f01d9:	e9 0b 00 00 00                                  	jmp    0x214fa48f01e9
    214fa48f01de:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    214fa48f01e1:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    214fa48f01e7:	8b ca                                           	mov    ecx,edx
    214fa48f01e9:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    214fa48f01ec:	85 c0                                           	test   eax,eax
    214fa48f01ee:	0f 84 21 00 00 00                               	je     0x214fa48f0215
    214fa48f01f4:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f01f7:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    214fa48f01fd:	c1 e2 02                                        	shl    edx,0x2
    214fa48f0200:	03 c2                                           	add    eax,edx
    214fa48f0202:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f0206:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    214fa48f020a:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    214fa48f020e:	33 c0                                           	xor    eax,eax
    214fa48f0210:	e9 09 00 00 00                                  	jmp    0x214fa48f021e
    214fa48f0215:	33 c0                                           	xor    eax,eax
    214fa48f0217:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    214fa48f021e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    214fa48f0221:	85 d2                                           	test   edx,edx
    214fa48f0223:	0f 84 08 00 00 00                               	je     0x214fa48f0231
    214fa48f0229:	41 8b d7                                        	mov    edx,r15d
    214fa48f022c:	e9 06 04 00 00                                  	jmp    0x214fa48f0637
    214fa48f0231:	e9 1d 04 00 00                                  	jmp    0x214fa48f0653
    214fa48f0236:	41 83 f9 0f                                     	cmp    r9d,0xf
    214fa48f023a:	0f 85 05 00 00 00                               	jne    0x214fa48f0245
    214fa48f0240:	e9 e7 0d 00 00                                  	jmp    0x214fa48f102c
    214fa48f0245:	41 8b f1                                        	mov    esi,r9d
    214fa48f0248:	83 e6 01                                        	and    esi,0x1
    214fa48f024b:	85 f6                                           	test   esi,esi
    214fa48f024d:	0f 84 20 00 00 00                               	je     0x214fa48f0273
    214fa48f0253:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    214fa48f0256:	45 8b e0                                        	mov    r12d,r8d
    214fa48f0259:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa48f025d:	41 03 f4                                        	add    esi,r12d
    214fa48f0260:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    214fa48f0264:	4d 8b 67 17                                     	mov    r12,QWORD PTR [r15+0x17]
    214fa48f0268:	45 8b 3c 34                                     	mov    r15d,DWORD PTR [r12+rsi*1]
    214fa48f026c:	33 f6                                           	xor    esi,esi
    214fa48f026e:	e9 05 00 00 00                                  	jmp    0x214fa48f0278
    214fa48f0273:	33 f6                                           	xor    esi,esi
    214fa48f0275:	45 33 ff                                        	xor    r15d,r15d
    214fa48f0278:	45 8b e1                                        	mov    r12d,r9d
    214fa48f027b:	41 83 e4 02                                     	and    r12d,0x2
    214fa48f027f:	45 85 e4                                        	test   r12d,r12d
    214fa48f0282:	0f 84 26 00 00 00                               	je     0x214fa48f02ae
    214fa48f0288:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa48f028c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    214fa48f028f:	8b c3                                           	mov    eax,ebx
    214fa48f0291:	c1 e0 02                                        	shl    eax,0x2
    214fa48f0294:	44 03 e0                                        	add    r12d,eax
    214fa48f0297:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f029b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f029f:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    214fa48f02a5:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    214fa48f02a9:	e9 0b 00 00 00                                  	jmp    0x214fa48f02b9
    214fa48f02ae:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    214fa48f02b1:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    214fa48f02b7:	8b ce                                           	mov    ecx,esi
    214fa48f02b9:	41 8b c1                                        	mov    eax,r9d
    214fa48f02bc:	83 e0 04                                        	and    eax,0x4
    214fa48f02bf:	85 c0                                           	test   eax,eax
    214fa48f02c1:	0f 84 22 00 00 00                               	je     0x214fa48f02e9
    214fa48f02c7:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f02ca:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    214fa48f02d0:	c1 e6 02                                        	shl    esi,0x2
    214fa48f02d3:	03 c6                                           	add    eax,esi
    214fa48f02d5:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    214fa48f02d9:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    214fa48f02de:	44 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+rax*1]
    214fa48f02e2:	33 c0                                           	xor    eax,eax
    214fa48f02e4:	e9 05 00 00 00                                  	jmp    0x214fa48f02ee
    214fa48f02e9:	33 c0                                           	xor    eax,eax
    214fa48f02eb:	45 33 e4                                        	xor    r12d,r12d
    214fa48f02ee:	41 8b f1                                        	mov    esi,r9d
    214fa48f02f1:	83 e6 08                                        	and    esi,0x8
    214fa48f02f4:	85 f6                                           	test   esi,esi
    214fa48f02f6:	0f 85 05 00 00 00                               	jne    0x214fa48f0301
    214fa48f02fc:	e9 b1 0d 00 00                                  	jmp    0x214fa48f10b2
    214fa48f0301:	e9 88 0d 00 00                                  	jmp    0x214fa48f108e
    214fa48f0306:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f0309:	41 8b c8                                        	mov    ecx,r8d
    214fa48f030c:	c1 e1 02                                        	shl    ecx,0x2
    214fa48f030f:	03 c1                                           	add    eax,ecx
    214fa48f0311:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    214fa48f0315:	49 8b 4c 24 17                                  	mov    rcx,QWORD PTR [r12+0x17]
    214fa48f031a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    214fa48f031f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f0322:	44 8b e3                                        	mov    r12d,ebx
    214fa48f0325:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa48f0329:	41 03 c4                                        	add    eax,r12d
    214fa48f032c:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    214fa48f0334:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    214fa48f0339:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    214fa48f0343:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0348:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    214fa48f0352:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0358:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    214fa48f035d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x214fa48f034a
    214fa48f0364:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0369:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x214fa48f033b
    214fa48f0370:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0376:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    214fa48f037b:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    214fa48f0380:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f0383:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    214fa48f038a:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa48f038e:	41 03 c4                                        	add    eax,r12d
    214fa48f0391:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    214fa48f0396:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f0399:	44 8b 65 d4                                     	mov    r12d,DWORD PTR [rbp-0x2c]
    214fa48f039d:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa48f03a1:	41 03 c4                                        	add    eax,r12d
    214fa48f03a4:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    214fa48f03a9:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x214fa48f033b
    214fa48f03b0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f03b5:	4c 8b 15 8e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8e]        # 0x214fa48f034a
    214fa48f03bc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f03c2:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    214fa48f03c7:	4c 8b 15 7c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff7c]        # 0x214fa48f034a
    214fa48f03ce:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f03d3:	4c 8b 15 61 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff61]        # 0x214fa48f033b
    214fa48f03da:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f03e0:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    214fa48f03e5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48f03ea:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    214fa48f03f4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f03f9:	4c 8b 15 4a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff4a]        # 0x214fa48f034a
    214fa48f0400:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0406:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    214fa48f040b:	4c 8b 15 38 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff38]        # 0x214fa48f034a
    214fa48f0412:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0417:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x214fa48f03ec
    214fa48f041e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0424:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    214fa48f0429:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa48f042e:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    214fa48f0438:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f043d:	4c 8b 15 06 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff06]        # 0x214fa48f034a
    214fa48f0444:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f044a:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    214fa48f044f:	4c 8b 15 f4 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef4]        # 0x214fa48f034a
    214fa48f0456:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f045b:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x214fa48f0430
    214fa48f0462:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0468:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    214fa48f046d:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    214fa48f0472:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f0475:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    214fa48f047a:	c4 c1 79 7e c4                                  	vmovd  r12d,xmm0
    214fa48f047f:	41 03 c4                                        	add    eax,r12d
    214fa48f0482:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    214fa48f0487:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f048a:	c4 c3 79 16 c4 01                               	vpextrd r12d,xmm0,0x1
    214fa48f0490:	41 03 c4                                        	add    eax,r12d
    214fa48f0493:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    214fa48f0498:	4c 8b 15 9c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9c]        # 0x214fa48f033b
    214fa48f049f:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f04a4:	4c 8b 15 9f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9f]        # 0x214fa48f034a
    214fa48f04ab:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f04b1:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    214fa48f04b6:	4c 8b 15 8d fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8d]        # 0x214fa48f034a
    214fa48f04bd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f04c2:	4c 8b 15 72 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe72]        # 0x214fa48f033b
    214fa48f04c9:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f04cf:	c4 c2 49 00 ee                                  	vpshufb xmm5,xmm6,xmm14
    214fa48f04d4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa48f04d9:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f04dc:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    214fa48f04e2:	41 03 c4                                        	add    eax,r12d
    214fa48f04e5:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    214fa48f04ea:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f04ed:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    214fa48f04f3:	41 03 c4                                        	add    eax,r12d
    214fa48f04f6:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    214fa48f04fb:	4c 8b 15 39 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe39]        # 0x214fa48f033b
    214fa48f0502:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0507:	4c 8b 15 3c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3c]        # 0x214fa48f034a
    214fa48f050e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0514:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    214fa48f0519:	4c 8b 15 2a fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe2a]        # 0x214fa48f034a
    214fa48f0520:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0525:	4c 8b 15 0f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe0f]        # 0x214fa48f033b
    214fa48f052c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0532:	c4 c2 49 00 de                                  	vpshufb xmm3,xmm6,xmm14
    214fa48f0537:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    214fa48f053c:	4c 8b 15 a9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea9]        # 0x214fa48f03ec
    214fa48f0543:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0548:	4c 8b 15 fb fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfb]        # 0x214fa48f034a
    214fa48f054f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0555:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    214fa48f055a:	4c 8b 15 e9 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffde9]        # 0x214fa48f034a
    214fa48f0561:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0566:	4c 8b 15 7f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe7f]        # 0x214fa48f03ec
    214fa48f056d:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0573:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    214fa48f0578:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48f057d:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x214fa48f0430
    214fa48f0584:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f0589:	4c 8b 15 ba fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdba]        # 0x214fa48f034a
    214fa48f0590:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f0596:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    214fa48f059b:	4c 8b 15 a8 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffda8]        # 0x214fa48f034a
    214fa48f05a2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48f05a7:	4c 8b 15 82 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe82]        # 0x214fa48f0430
    214fa48f05ae:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48f05b4:	c4 c2 61 00 f6                                  	vpshufb xmm6,xmm3,xmm14
    214fa48f05b9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa48f05be:	e9 96 05 00 00                                  	jmp    0x214fa48f0b59
    214fa48f05c3:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    214fa48f05c7:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    214fa48f05ca:	8b c3                                           	mov    eax,ebx
    214fa48f05cc:	c1 e0 02                                        	shl    eax,0x2
    214fa48f05cf:	44 03 f8                                        	add    r15d,eax
    214fa48f05d2:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f05d6:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f05da:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    214fa48f05dd:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    214fa48f05e1:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    214fa48f05e5:	41 8b c0                                        	mov    eax,r8d
    214fa48f05e8:	c1 e0 02                                        	shl    eax,0x2
    214fa48f05eb:	44 03 f8                                        	add    r15d,eax
    214fa48f05ee:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f05f2:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f05f6:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    214fa48f05fc:	42 8b 14 38                                     	mov    edx,DWORD PTR [rax+r15*1]
    214fa48f0600:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    214fa48f0604:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    214fa48f060a:	c1 e0 02                                        	shl    eax,0x2
    214fa48f060d:	44 03 f8                                        	add    r15d,eax
    214fa48f0610:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f0614:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f0618:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    214fa48f061e:	42 8b 1c 38                                     	mov    ebx,DWORD PTR [rax+r15*1]
    214fa48f0622:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    214fa48f0628:	44 8b fb                                        	mov    r15d,ebx
    214fa48f062b:	8b 85 cc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x134]
    214fa48f0631:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    214fa48f0637:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f063a:	8b 5d d4                                        	mov    ebx,DWORD PTR [rbp-0x2c]
    214fa48f063d:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f0640:	03 d3                                           	add    edx,ebx
    214fa48f0642:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f0646:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f064a:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    214fa48f0650:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    214fa48f0653:	c5 fa 6f 9d 18 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xe8]
    214fa48f065b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    214fa48f065f:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    214fa48f0665:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    214fa48f0669:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa48f066e:	41 83 f9 0f                                     	cmp    r9d,0xf
    214fa48f0672:	0f 84 c0 00 00 00                               	je     0x214fa48f0738
    214fa48f0678:	45 85 e4                                        	test   r12d,r12d
    214fa48f067b:	0f 84 24 00 00 00                               	je     0x214fa48f06a5
    214fa48f0681:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0684:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    214fa48f0688:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f068b:	03 d3                                           	add    edx,ebx
    214fa48f068d:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f0691:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f0695:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    214fa48f069b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    214fa48f069e:	33 d2                                           	xor    edx,edx
    214fa48f06a0:	e9 0a 00 00 00                                  	jmp    0x214fa48f06af
    214fa48f06a5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    214fa48f06ab:	33 c0                                           	xor    eax,eax
    214fa48f06ad:	33 d2                                           	xor    edx,edx
    214fa48f06af:	85 f6                                           	test   esi,esi
    214fa48f06b1:	0f 84 2a 00 00 00                               	je     0x214fa48f06e1
    214fa48f06b7:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    214fa48f06ba:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    214fa48f06c0:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    214fa48f06c6:	c1 e0 02                                        	shl    eax,0x2
    214fa48f06c9:	03 d8                                           	add    ebx,eax
    214fa48f06cb:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f06cf:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f06d3:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    214fa48f06d9:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    214fa48f06dc:	e9 0e 00 00 00                                  	jmp    0x214fa48f06ef
    214fa48f06e1:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    214fa48f06e7:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    214fa48f06ed:	8b ca                                           	mov    ecx,edx
    214fa48f06ef:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    214fa48f06f2:	85 c0                                           	test   eax,eax
    214fa48f06f4:	0f 84 21 00 00 00                               	je     0x214fa48f071b
    214fa48f06fa:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f06fd:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    214fa48f0703:	c1 e2 02                                        	shl    edx,0x2
    214fa48f0706:	03 c2                                           	add    eax,edx
    214fa48f0708:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f070c:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    214fa48f0710:	44 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+rax*1]
    214fa48f0714:	33 c0                                           	xor    eax,eax
    214fa48f0716:	e9 05 00 00 00                                  	jmp    0x214fa48f0720
    214fa48f071b:	33 c0                                           	xor    eax,eax
    214fa48f071d:	45 33 c0                                        	xor    r8d,r8d
    214fa48f0720:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    214fa48f0723:	85 d2                                           	test   edx,edx
    214fa48f0725:	0f 84 08 00 00 00                               	je     0x214fa48f0733
    214fa48f072b:	41 8b d0                                        	mov    edx,r8d
    214fa48f072e:	e9 7a 00 00 00                                  	jmp    0x214fa48f07ad
    214fa48f0733:	e9 94 00 00 00                                  	jmp    0x214fa48f07cc
    214fa48f0738:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f073b:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    214fa48f0741:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f0744:	03 d3                                           	add    edx,ebx
    214fa48f0746:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f074a:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f074e:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    214fa48f0754:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    214fa48f0757:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f075a:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    214fa48f075e:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f0761:	03 d3                                           	add    edx,ebx
    214fa48f0763:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f0767:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f076b:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    214fa48f0771:	8b 0c 13                                        	mov    ecx,DWORD PTR [rbx+rdx*1]
    214fa48f0774:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0777:	c4 e3 79 16 db 02                               	vpextrd ebx,xmm3,0x2
    214fa48f077d:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f0780:	03 d3                                           	add    edx,ebx
    214fa48f0782:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f0786:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f078a:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    214fa48f0790:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    214fa48f0793:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    214fa48f0799:	8b c8                                           	mov    ecx,eax
    214fa48f079b:	41 8b c0                                        	mov    eax,r8d
    214fa48f079e:	44 8b c6                                        	mov    r8d,esi
    214fa48f07a1:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    214fa48f07a7:	8b b5 dc fe ff ff                               	mov    esi,DWORD PTR [rbp-0x124]
    214fa48f07ad:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f07b0:	c4 e3 79 16 db 03                               	vpextrd ebx,xmm3,0x3
    214fa48f07b6:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f07b9:	03 d3                                           	add    edx,ebx
    214fa48f07bb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f07bf:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f07c3:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    214fa48f07c9:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    214fa48f07cc:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    214fa48f07d2:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    214fa48f07da:	c4 e3 49 22 c2 01                               	vpinsrd xmm0,xmm6,edx,0x1
    214fa48f07e0:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    214fa48f07e6:	c5 f9 6e da                                     	vmovd  xmm3,edx
    214fa48f07ea:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa48f07ef:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    214fa48f07f5:	41 83 f9 0f                                     	cmp    r9d,0xf
    214fa48f07f9:	0f 84 b0 00 00 00                               	je     0x214fa48f08af
    214fa48f07ff:	45 85 e4                                        	test   r12d,r12d
    214fa48f0802:	0f 84 1e 00 00 00                               	je     0x214fa48f0826
    214fa48f0808:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa48f080b:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    214fa48f080f:	c1 e2 02                                        	shl    edx,0x2
    214fa48f0812:	03 ca                                           	add    ecx,edx
    214fa48f0814:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f0818:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    214fa48f081c:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    214fa48f081f:	33 c9                                           	xor    ecx,ecx
    214fa48f0821:	e9 04 00 00 00                                  	jmp    0x214fa48f082a
    214fa48f0826:	33 c9                                           	xor    ecx,ecx
    214fa48f0828:	33 db                                           	xor    ebx,ebx
    214fa48f082a:	85 f6                                           	test   esi,esi
    214fa48f082c:	0f 84 27 00 00 00                               	je     0x214fa48f0859
    214fa48f0832:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0835:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    214fa48f083b:	c4 e3 79 16 e8 01                               	vpextrd eax,xmm5,0x1
    214fa48f0841:	c1 e0 02                                        	shl    eax,0x2
    214fa48f0844:	03 d0                                           	add    edx,eax
    214fa48f0846:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f084a:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f084e:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    214fa48f0851:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    214fa48f0854:	e9 06 00 00 00                                  	jmp    0x214fa48f085f
    214fa48f0859:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    214fa48f085f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    214fa48f0862:	85 c0                                           	test   eax,eax
    214fa48f0864:	0f 84 23 00 00 00                               	je     0x214fa48f088d
    214fa48f086a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f086d:	c4 e3 79 16 ea 02                               	vpextrd edx,xmm5,0x2
    214fa48f0873:	c1 e2 02                                        	shl    edx,0x2
    214fa48f0876:	03 c2                                           	add    eax,edx
    214fa48f0878:	48 8b 55 f0                                     	mov    rdx,QWORD PTR [rbp-0x10]
    214fa48f087c:	48 8b 52 17                                     	mov    rdx,QWORD PTR [rdx+0x17]
    214fa48f0880:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    214fa48f0883:	8b 0c 02                                        	mov    ecx,DWORD PTR [rdx+rax*1]
    214fa48f0886:	33 c0                                           	xor    eax,eax
    214fa48f0888:	e9 0b 00 00 00                                  	jmp    0x214fa48f0898
    214fa48f088d:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    214fa48f0890:	33 c0                                           	xor    eax,eax
    214fa48f0892:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    214fa48f0898:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    214fa48f089b:	85 d2                                           	test   edx,edx
    214fa48f089d:	0f 84 07 00 00 00                               	je     0x214fa48f08aa
    214fa48f08a3:	8b d1                                           	mov    edx,ecx
    214fa48f08a5:	e9 69 00 00 00                                  	jmp    0x214fa48f0913
    214fa48f08aa:	e9 91 00 00 00                                  	jmp    0x214fa48f0940
    214fa48f08af:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f08b2:	c4 e3 79 16 eb 01                               	vpextrd ebx,xmm5,0x1
    214fa48f08b8:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f08bb:	03 d3                                           	add    edx,ebx
    214fa48f08bd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f08c1:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f08c5:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    214fa48f08cb:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    214fa48f08ce:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa48f08d1:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    214fa48f08d5:	c1 e2 02                                        	shl    edx,0x2
    214fa48f08d8:	03 ca                                           	add    ecx,edx
    214fa48f08da:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    214fa48f08dd:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa48f08e0:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    214fa48f08e6:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f08e9:	03 cb                                           	add    ecx,ebx
    214fa48f08eb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f08ef:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f08f3:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    214fa48f08f9:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    214fa48f08fc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    214fa48f08ff:	8b ca                                           	mov    ecx,edx
    214fa48f0901:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    214fa48f0907:	8b 95 c4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x13c]
    214fa48f090d:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    214fa48f0913:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0916:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    214fa48f091c:	c4 e3 79 16 e8 03                               	vpextrd eax,xmm5,0x3
    214fa48f0922:	c1 e0 02                                        	shl    eax,0x2
    214fa48f0925:	03 d0                                           	add    edx,eax
    214fa48f0927:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f092b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f092f:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    214fa48f0935:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    214fa48f0938:	8b c1                                           	mov    eax,ecx
    214fa48f093a:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    214fa48f0940:	c4 c3 79 22 f7 02                               	vpinsrd xmm6,xmm0,r15d,0x2
    214fa48f0946:	c4 c3 61 22 c0 02                               	vpinsrd xmm0,xmm3,r8d,0x2
    214fa48f094c:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    214fa48f0950:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    214fa48f0954:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    214fa48f0959:	8b 55 d4                                        	mov    edx,DWORD PTR [rbp-0x2c]
    214fa48f095c:	c4 e3 51 22 ea 01                               	vpinsrd xmm5,xmm5,edx,0x1
    214fa48f0962:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    214fa48f0968:	41 83 f9 0f                                     	cmp    r9d,0xf
    214fa48f096c:	0f 84 bd 00 00 00                               	je     0x214fa48f0a2f
    214fa48f0972:	45 85 e4                                        	test   r12d,r12d
    214fa48f0975:	0f 84 24 00 00 00                               	je     0x214fa48f099f
    214fa48f097b:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f097e:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    214fa48f0982:	c1 e3 02                                        	shl    ebx,0x2
    214fa48f0985:	03 d3                                           	add    edx,ebx
    214fa48f0987:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    214fa48f098b:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    214fa48f098f:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    214fa48f0995:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    214fa48f0998:	33 d2                                           	xor    edx,edx
    214fa48f099a:	e9 0a 00 00 00                                  	jmp    0x214fa48f09a9
    214fa48f099f:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    214fa48f09a5:	33 c0                                           	xor    eax,eax
    214fa48f09a7:	33 d2                                           	xor    edx,edx
    214fa48f09a9:	85 f6                                           	test   esi,esi
    214fa48f09ab:	0f 84 2a 00 00 00                               	je     0x214fa48f09db
    214fa48f09b1:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    214fa48f09b4:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    214fa48f09ba:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    214fa48f09c0:	c1 e0 02                                        	shl    eax,0x2
    214fa48f09c3:	03 d8                                           	add    ebx,eax
    214fa48f09c5:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f09c9:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f09cd:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    214fa48f09d3:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    214fa48f09d6:	e9 0e 00 00 00                                  	jmp    0x214fa48f09e9
    214fa48f09db:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    214fa48f09e1:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    214fa48f09e7:	8b ca                                           	mov    ecx,edx
    214fa48f09e9:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    214fa48f09ec:	85 c0                                           	test   eax,eax
    214fa48f09ee:	0f 84 20 00 00 00                               	je     0x214fa48f0a14
    214fa48f09f4:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    214fa48f09f7:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    214fa48f09fd:	c1 e2 02                                        	shl    edx,0x2
    214fa48f0a00:	03 c2                                           	add    eax,edx
    214fa48f0a02:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48f0a06:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    214fa48f0a0a:	8b 1c 02                                        	mov    ebx,DWORD PTR [rdx+rax*1]
    214fa48f0a0d:	33 c0                                           	xor    eax,eax
    214fa48f0a0f:	e9 04 00 00 00                                  	jmp    0x214fa48f0a18
    214fa48f0a14:	33 c0                                           	xor    eax,eax
    214fa48f0a16:	33 db                                           	xor    ebx,ebx
    214fa48f0a18:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    214fa48f0a1b:	85 d2                                           	test   edx,edx
    214fa48f0a1d:	0f 84 07 00 00 00                               	je     0x214fa48f0a2a
    214fa48f0a23:	8b d3                                           	mov    edx,ebx
    214fa48f0a25:	e9 77 00 00 00                                  	jmp    0x214fa48f0aa1
    214fa48f0a2a:	e9 90 00 00 00                                  	jmp    0x214fa48f0abf
    214fa48f0a2f:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0a32:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    214fa48f0a38:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    214fa48f0a3e:	c1 e0 02                                        	shl    eax,0x2
    214fa48f0a41:	03 d0                                           	add    edx,eax
    214fa48f0a43:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f0a47:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f0a4b:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    214fa48f0a51:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    214fa48f0a54:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0a57:	c5 f9 7e d8                                     	vmovd  eax,xmm3
    214fa48f0a5b:	c1 e0 02                                        	shl    eax,0x2
    214fa48f0a5e:	03 d0                                           	add    edx,eax
    214fa48f0a60:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f0a64:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f0a68:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    214fa48f0a6e:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    214fa48f0a71:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0a74:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    214fa48f0a7a:	c1 e0 02                                        	shl    eax,0x2
    214fa48f0a7d:	03 d0                                           	add    edx,eax
    214fa48f0a7f:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f0a83:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f0a87:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    214fa48f0a8d:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    214fa48f0a90:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    214fa48f0a96:	41 8b d4                                        	mov    edx,r12d
    214fa48f0a99:	8b de                                           	mov    ebx,esi
    214fa48f0a9b:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    214fa48f0aa1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    214fa48f0aa4:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    214fa48f0aaa:	c1 e6 02                                        	shl    esi,0x2
    214fa48f0aad:	03 d6                                           	add    edx,esi
    214fa48f0aaf:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    214fa48f0ab3:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    214fa48f0ab8:	44 8b 24 16                                     	mov    r12d,DWORD PTR [rsi+rdx*1]
    214fa48f0abc:	41 8b c4                                        	mov    eax,r12d
    214fa48f0abf:	8b 95 cc fe ff ff                               	mov    edx,DWORD PTR [rbp-0x134]
    214fa48f0ac5:	c4 e3 49 22 ca 03                               	vpinsrd xmm1,xmm6,edx,0x3
    214fa48f0acb:	8b 95 d0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x130]
    214fa48f0ad1:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    214fa48f0ad7:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    214fa48f0add:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    214fa48f0ae1:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa48f0ae6:	c4 e3 49 22 f1 01                               	vpinsrd xmm6,xmm6,ecx,0x1
    214fa48f0aec:	c4 e3 49 22 f3 02                               	vpinsrd xmm6,xmm6,ebx,0x2
    214fa48f0af2:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    214fa48f0af8:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    214fa48f0afe:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    214fa48f0b04:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    214fa48f0b07:	89 9d e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],ebx
    214fa48f0b0d:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    214fa48f0b13:	44 89 bd c8 fe ff ff                            	mov    DWORD PTR [rbp-0x138],r15d
    214fa48f0b1a:	41 8b d0                                        	mov    edx,r8d
    214fa48f0b1d:	c5 fa 7f b5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm6
    214fa48f0b25:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa48f0b29:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    214fa48f0b31:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    214fa48f0b35:	8b 9d cc fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x134]
    214fa48f0b3b:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    214fa48f0b3e:	44 8b 85 d0 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x130]
    214fa48f0b45:	44 8b 7d dc                                     	mov    r15d,DWORD PTR [rbp-0x24]
    214fa48f0b49:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    214fa48f0b51:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    214fa48f0b59:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    214fa48f0b61:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    214fa48f0b66:	c5 fa 7f 4d 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm1
    214fa48f0b6b:	c5 fa 6f 8d 08 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xf8]
    214fa48f0b73:	c5 f0 5c cf                                     	vsubps xmm1,xmm1,xmm7
    214fa48f0b77:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    214fa48f0b7b:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    214fa48f0b80:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    214fa48f0b88:	c5 fa 6f 95 e8 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x118]
    214fa48f0b90:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    214fa48f0b95:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    214fa48f0b9d:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    214fa48f0ba1:	c5 c0 5c fa                                     	vsubps xmm7,xmm7,xmm2
    214fa48f0ba5:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    214fa48f0bad:	c5 e1 72 d3 18                                  	vpsrld xmm3,xmm3,0x18
    214fa48f0bb2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0bb7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa48f0bbd:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa48f0bc2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0bc7:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa48f0bcc:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa48f0bd0:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa48f0bd4:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa48f0bd9:	c5 c0 59 db                                     	vmulps xmm3,xmm7,xmm3
    214fa48f0bdd:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    214fa48f0be2:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    214fa48f0be7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0bec:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa48f0bf2:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa48f0bf7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0bfc:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa48f0c01:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa48f0c05:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa48f0c09:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa48f0c0e:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    214fa48f0c12:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    214fa48f0c16:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    214fa48f0c1a:	c5 d1 72 d6 18                                  	vpsrld xmm5,xmm6,0x18
    214fa48f0c1f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0c24:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa48f0c2a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa48f0c2f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0c34:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa48f0c39:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa48f0c3d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa48f0c41:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa48f0c46:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    214fa48f0c4a:	c5 fa 7f a5 f8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x108],xmm4
    214fa48f0c52:	c5 fa 6f a5 68 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x98]
    214fa48f0c5a:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    214fa48f0c5f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0c64:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa48f0c6a:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa48f0c6f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0c74:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa48f0c79:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa48f0c7d:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa48f0c81:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa48f0c86:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    214fa48f0c8a:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    214fa48f0c8e:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    214fa48f0c92:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    214fa48f0c96:	c5 fa 6f a5 78 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x88]
    214fa48f0c9e:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    214fa48f0ca8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa48f0cad:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa48f0cb1:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    214fa48f0cb5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0cba:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa48f0cc0:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa48f0cc5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0cca:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa48f0ccf:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa48f0cd3:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa48f0cd7:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa48f0cdc:	c5 c0 59 e4                                     	vmulps xmm4,xmm7,xmm4
    214fa48f0ce0:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    214fa48f0ce5:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    214fa48f0cea:	c5 fa 7f b5 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm6
    214fa48f0cf2:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    214fa48f0cf7:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    214fa48f0cfb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0d00:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa48f0d06:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa48f0d0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0d10:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa48f0d15:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa48f0d19:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa48f0d1d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa48f0d22:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    214fa48f0d26:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    214fa48f0d2a:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    214fa48f0d2e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    214fa48f0d36:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    214fa48f0d3b:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    214fa48f0d3f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0d44:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa48f0d4a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa48f0d4f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0d54:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa48f0d59:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa48f0d5d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa48f0d61:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa48f0d66:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    214fa48f0d6a:	c5 fa 6f b5 68 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x98]
    214fa48f0d72:	c5 fa 7f 7d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm7
    214fa48f0d77:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    214fa48f0d7c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa48f0d80:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0d85:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa48f0d8b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa48f0d90:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0d95:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa48f0d9a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa48f0d9e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa48f0da2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa48f0da7:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    214fa48f0dab:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    214fa48f0daf:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    214fa48f0db3:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    214fa48f0db7:	c5 fa 6f 6d a8                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x58]
    214fa48f0dbc:	c5 fa 6f b5 78 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x88]
    214fa48f0dc4:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    214fa48f0dc9:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    214fa48f0dce:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa48f0dd2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0dd7:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa48f0ddd:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa48f0de2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0de7:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa48f0dec:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa48f0df0:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa48f0df4:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa48f0df9:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    214fa48f0dfd:	c5 fa 6f 75 98                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x68]
    214fa48f0e02:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    214fa48f0e07:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    214fa48f0e0c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa48f0e10:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0e15:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa48f0e1b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa48f0e20:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0e25:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa48f0e2a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa48f0e2e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa48f0e32:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa48f0e37:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    214fa48f0e3b:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    214fa48f0e3f:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    214fa48f0e43:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    214fa48f0e48:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    214fa48f0e50:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    214fa48f0e55:	c5 fa 7f 85 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm0
    214fa48f0e5d:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    214fa48f0e62:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    214fa48f0e66:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0e6b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa48f0e71:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa48f0e76:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0e7b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa48f0e80:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa48f0e84:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa48f0e88:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa48f0e8d:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa48f0e91:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    214fa48f0e99:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    214fa48f0e9e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    214fa48f0ea3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa48f0ea7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0eac:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa48f0eb2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa48f0eb7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0ebc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa48f0ec1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa48f0ec5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa48f0ec9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa48f0ece:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    214fa48f0ed2:	c5 c8 58 f0                                     	vaddps xmm6,xmm6,xmm0
    214fa48f0ed6:	c5 f0 59 f6                                     	vmulps xmm6,xmm1,xmm6
    214fa48f0eda:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    214fa48f0ede:	c5 fa 6f 85 18 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xe8]
    214fa48f0ee6:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    214fa48f0eeb:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    214fa48f0ef3:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    214fa48f0ef8:	c5 fa 7f 8d 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm1
    214fa48f0f00:	c5 fa 6f 4d 88                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x78]
    214fa48f0f05:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    214fa48f0f09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0f0e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa48f0f14:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa48f0f19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0f1e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa48f0f23:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa48f0f27:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa48f0f2b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa48f0f30:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa48f0f34:	c5 fa 6f 4d 98                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x68]
    214fa48f0f39:	c5 f1 72 d1 08                                  	vpsrld xmm1,xmm1,0x8
    214fa48f0f3e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    214fa48f0f43:	c5 f1 db cf                                     	vpand  xmm1,xmm1,xmm7
    214fa48f0f47:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0f4c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa48f0f52:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa48f0f57:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0f5c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa48f0f61:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa48f0f65:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa48f0f69:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa48f0f6e:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    214fa48f0f72:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    214fa48f0f76:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa48f0f7a:	c5 fa 6f 8d 48 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xb8]
    214fa48f0f82:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    214fa48f0f87:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    214fa48f0f8f:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    214fa48f0f94:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    214fa48f0f99:	c5 fa 6f 55 88                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x78]
    214fa48f0f9e:	c5 c1 db fa                                     	vpand  xmm7,xmm7,xmm2
    214fa48f0fa2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0fa7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa48f0fad:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa48f0fb2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f0fb7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa48f0fbc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa48f0fc0:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa48f0fc4:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa48f0fc9:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa48f0fcd:	c5 fa 6f 55 b8                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x48]
    214fa48f0fd2:	c5 fa 6f bd 68 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x98]
    214fa48f0fda:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    214fa48f0fdf:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    214fa48f0fe7:	c5 fa 6f 5d 88                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x78]
    214fa48f0fec:	c5 c1 db fb                                     	vpand  xmm7,xmm7,xmm3
    214fa48f0ff0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f0ff5:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa48f0ffb:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa48f1000:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f1005:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa48f100a:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa48f100e:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa48f1012:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa48f1017:	c5 e8 59 d7                                     	vmulps xmm2,xmm2,xmm7
    214fa48f101b:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    214fa48f101f:	c5 f0 59 ce                                     	vmulps xmm1,xmm1,xmm6
    214fa48f1023:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    214fa48f1027:	e9 c8 01 00 00                                  	jmp    0x214fa48f11f4
    214fa48f102c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa48f1030:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    214fa48f1033:	8b c1                                           	mov    eax,ecx
    214fa48f1035:	c1 e0 02                                        	shl    eax,0x2
    214fa48f1038:	44 03 e0                                        	add    r12d,eax
    214fa48f103b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f103f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f1043:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    214fa48f1049:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    214fa48f104d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa48f1051:	8b c3                                           	mov    eax,ebx
    214fa48f1053:	c1 e0 02                                        	shl    eax,0x2
    214fa48f1056:	44 03 e0                                        	add    r12d,eax
    214fa48f1059:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f105d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f1061:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    214fa48f1067:	42 8b 14 20                                     	mov    edx,DWORD PTR [rax+r12*1]
    214fa48f106b:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa48f106f:	45 8b f8                                        	mov    r15d,r8d
    214fa48f1072:	41 c1 e7 02                                     	shl    r15d,0x2
    214fa48f1076:	45 03 e7                                        	add    r12d,r15d
    214fa48f1079:	46 8b 3c 20                                     	mov    r15d,DWORD PTR [rax+r12*1]
    214fa48f107d:	44 8b e1                                        	mov    r12d,ecx
    214fa48f1080:	8b ca                                           	mov    ecx,edx
    214fa48f1082:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    214fa48f1088:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    214fa48f108e:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    214fa48f1091:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    214fa48f1097:	8b 45 d4                                        	mov    eax,DWORD PTR [rbp-0x2c]
    214fa48f109a:	c1 e0 02                                        	shl    eax,0x2
    214fa48f109d:	03 f0                                           	add    esi,eax
    214fa48f109f:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    214fa48f10a3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    214fa48f10a7:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    214fa48f10aa:	8b 0c 30                                        	mov    ecx,DWORD PTR [rax+rsi*1]
    214fa48f10ad:	8b c1                                           	mov    eax,ecx
    214fa48f10af:	8b 4d dc                                        	mov    ecx,DWORD PTR [rbp-0x24]
    214fa48f10b2:	c4 c1 79 6e e7                                  	vmovd  xmm4,r15d
    214fa48f10b7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa48f10bc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    214fa48f10c2:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    214fa48f10c8:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    214fa48f10ce:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    214fa48f10d6:	c5 f9 72 d4 18                                  	vpsrld xmm0,xmm4,0x18
    214fa48f10db:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f10e0:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa48f10e6:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa48f10eb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f10f0:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa48f10f5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa48f10f9:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa48f10fd:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa48f1102:	4c 8b 15 97 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb97]        # 0x214fa48f0ca0
    214fa48f1109:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa48f110e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa48f1112:	c5 d9 db cb                                     	vpand  xmm1,xmm4,xmm3
    214fa48f1116:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f111b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa48f1121:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa48f1126:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f112b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa48f1130:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa48f1134:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa48f1138:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa48f113d:	c5 fa 7f 8d 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm1
    214fa48f1145:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    214fa48f114a:	c5 f1 db cb                                     	vpand  xmm1,xmm1,xmm3
    214fa48f114e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f1153:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa48f1159:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa48f115e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f1163:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa48f1168:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa48f116c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa48f1170:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa48f1175:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    214fa48f117d:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    214fa48f1182:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    214fa48f1186:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa48f118b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa48f1191:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa48f1196:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa48f119b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa48f11a0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa48f11a4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa48f11a8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa48f11ad:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    214fa48f11b2:	c5 fa 7f 6d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm5
    214fa48f11b7:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    214fa48f11bc:	c5 fa 7f 65 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm4
    214fa48f11c1:	c5 fa 7f 85 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm0
    214fa48f11c9:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    214fa48f11d1:	44 89 a5 e0 fe ff ff                            	mov    DWORD PTR [rbp-0x120],r12d
    214fa48f11d8:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    214fa48f11de:	41 8b f7                                        	mov    esi,r15d
    214fa48f11e1:	44 8b f9                                        	mov    r15d,ecx
    214fa48f11e4:	c5 f9 28 c2                                     	vmovapd xmm0,xmm2
    214fa48f11e8:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    214fa48f11ec:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    214fa48f11f4:	c5 fa 6f 8d 58 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xa8]
    214fa48f11fc:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    214fa48f1206:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa48f120b:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa48f120f:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    214fa48f1213:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa48f1217:	41 8b c1                                        	mov    eax,r9d
    214fa48f121a:	83 e0 01                                        	and    eax,0x1
    214fa48f121d:	33 c9                                           	xor    ecx,ecx
    214fa48f121f:	2b c8                                           	sub    ecx,eax
    214fa48f1221:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    214fa48f1225:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa48f122a:	41 8b c1                                        	mov    eax,r9d
    214fa48f122d:	c1 e0 1e                                        	shl    eax,0x1e
    214fa48f1230:	c1 f8 1f                                        	sar    eax,0x1f
    214fa48f1233:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    214fa48f1239:	41 8b c1                                        	mov    eax,r9d
    214fa48f123c:	c1 e0 1d                                        	shl    eax,0x1d
    214fa48f123f:	c1 f8 1f                                        	sar    eax,0x1f
    214fa48f1242:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    214fa48f1248:	41 8b c1                                        	mov    eax,r9d
    214fa48f124b:	c1 e0 1c                                        	shl    eax,0x1c
    214fa48f124e:	c1 f8 1f                                        	sar    eax,0x1f
    214fa48f1251:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    214fa48f1257:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    214fa48f125b:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    214fa48f125f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa48f1264:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    214fa48f1268:	48 8b 41 17                                     	mov    rax,QWORD PTR [rcx+0x17]
    214fa48f126c:	c5 fa 7f 7c 38 30                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x30],xmm7
    214fa48f1272:	c5 d0 59 ca                                     	vmulps xmm1,xmm5,xmm2
    214fa48f1276:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    214fa48f127a:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    214fa48f127e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa48f1283:	c5 fa 7f 7c 38 20                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x20],xmm7
    214fa48f1289:	c5 f8 59 ca                                     	vmulps xmm1,xmm0,xmm2
    214fa48f128d:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    214fa48f1291:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    214fa48f1295:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa48f129a:	c5 fa 7f 7c 38 10                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x10],xmm7
    214fa48f12a0:	c5 d8 59 ca                                     	vmulps xmm1,xmm4,xmm2
    214fa48f12a4:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    214fa48f12a8:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    214fa48f12ac:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa48f12b1:	c5 fa 7f 3c 38                                  	vmovdqu XMMWORD PTR [rax+rdi*1],xmm7
    214fa48f12b6:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    214fa48f12bb:	c5 fa 7f a5 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm4
    214fa48f12c3:	c5 fa 7f ad 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm5
    214fa48f12cb:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    214fa48f12d1:	44 89 85 d0 fe ff ff                            	mov    DWORD PTR [rbp-0x130],r8d
    214fa48f12d8:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    214fa48f12de:	41 8b c7                                        	mov    eax,r15d
    214fa48f12e1:	8b d6                                           	mov    edx,esi
    214fa48f12e3:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa48f12e7:	c5 f9 28 eb                                     	vmovapd xmm5,xmm3
    214fa48f12eb:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa48f12f0:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    214fa48f12f6:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    214fa48f12f9:	44 8b 45 d4                                     	mov    r8d,DWORD PTR [rbp-0x2c]
    214fa48f12fd:	44 8b a5 dc fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x124]
    214fa48f1304:	44 8b bd e0 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x120]
    214fa48f130b:	c5 fa 6f a5 48 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xb8]
    214fa48f1313:	c5 fa 6f b5 58 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xa8]
    214fa48f131b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    214fa48f1323:	8b c1                                           	mov    eax,ecx
    214fa48f1325:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    214fa48f1329:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    214fa48f132d:	41 81 aa bc 02 00 00 61 1c 00 00                	sub    DWORD PTR [r10+0x2bc],0x1c61
    214fa48f1338:	0f 88 25 00 00 00                               	js     0x214fa48f1363
    214fa48f133e:	48 8b e5                                        	mov    rsp,rbp
    214fa48f1341:	5d                                              	pop    rbp
    214fa48f1342:	c2 08 00                                        	ret    0x8
    214fa48f1345:	50                                              	push   rax
    214fa48f1346:	51                                              	push   rcx
    214fa48f1347:	52                                              	push   rdx
    214fa48f1348:	53                                              	push   rbx
    214fa48f1349:	57                                              	push   rdi
    214fa48f134a:	41 51                                           	push   r9
    214fa48f134c:	33 c0                                           	xor    eax,eax
    214fa48f134e:	e8 dd 9b f3 ff                                  	call   0x214fa482af30
    214fa48f1353:	41 59                                           	pop    r9
    214fa48f1355:	5f                                              	pop    rdi
    214fa48f1356:	5b                                              	pop    rbx
    214fa48f1357:	5a                                              	pop    rdx
    214fa48f1358:	59                                              	pop    rcx
    214fa48f1359:	58                                              	pop    rax
    214fa48f135a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48f135e:	e9 dd e3 ff ff                                  	jmp    0x214fa48ef740
    214fa48f1363:	50                                              	push   rax
    214fa48f1364:	e8 f7 99 f3 ff                                  	call   0x214fa482ad60
    214fa48f1369:	58                                              	pop    rax
    214fa48f136a:	eb d2                                           	jmp    0x214fa48f133e
    214fa48f136c:	36 00 00                                        	ss add BYTE PTR [rax],al
    214fa48f136f:	00 08                                           	add    BYTE PTR [rax],cl
	...
