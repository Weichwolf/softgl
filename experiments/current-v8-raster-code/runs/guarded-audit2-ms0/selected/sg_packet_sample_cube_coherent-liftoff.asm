
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms0/selected/sg_packet_sample_cube_coherent-liftoff.bin:     file format binary


Disassembly of section .data:

000005b2ff077500 <.data>:
 5b2ff077500:	41 bc af 00 00 00                               	mov    r12d,0xaf
 5b2ff077506:	e8 65 68 f5 ff                                  	call   0x5b2fefcdd70
 5b2ff07750b:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
 5b2ff077512:	8b c0                                           	mov    eax,eax
 5b2ff077514:	8b d2                                           	mov    edx,edx
 5b2ff077516:	8b c9                                           	mov    ecx,ecx
 5b2ff077518:	8b db                                           	mov    ebx,ebx
 5b2ff07751a:	45 8b c9                                        	mov    r9d,r9d
 5b2ff07751d:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
 5b2ff077520:	50                                              	push   rax
 5b2ff077521:	51                                              	push   rcx
 5b2ff077522:	57                                              	push   rdi
 5b2ff077523:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
 5b2ff07752a:	33 c0                                           	xor    eax,eax
 5b2ff07752c:	b9 41 00 00 00                                  	mov    ecx,0x41
 5b2ff077531:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
 5b2ff077533:	5f                                              	pop    rdi
 5b2ff077534:	59                                              	pop    rcx
 5b2ff077535:	58                                              	pop    rax
 5b2ff077536:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
 5b2ff07753a:	0f 86 05 1c 00 00                               	jbe    0x5b2ff079145
 5b2ff077540:	45 85 c9                                        	test   r9d,r9d
 5b2ff077543:	0f 85 07 00 00 00                               	jne    0x5b2ff077550
 5b2ff077549:	33 c0                                           	xor    eax,eax
 5b2ff07754b:	e9 d5 1b 00 00                                  	jmp    0x5b2ff079125
 5b2ff077550:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
 5b2ff077554:	45 8b 64 00 04                                  	mov    r12d,DWORD PTR [r8+rax*1+0x4]
 5b2ff077559:	45 85 e4                                        	test   r12d,r12d
 5b2ff07755c:	0f 85 07 00 00 00                               	jne    0x5b2ff077569
 5b2ff077562:	33 c0                                           	xor    eax,eax
 5b2ff077564:	e9 bc 1b 00 00                                  	jmp    0x5b2ff079125
 5b2ff077569:	45 8b f9                                        	mov    r15d,r9d
 5b2ff07756c:	41 83 e7 0f                                     	and    r15d,0xf
 5b2ff077570:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
 5b2ff077576:	49 ba 50 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090850
 5b2ff077580:	c4 c1 78 54 0a                                  	vandps xmm1,xmm0,XMMWORD PTR [r10]
 5b2ff077585:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
 5b2ff07758f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff077594:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff077598:	c5 f0 c2 da 02                                  	vcmpleps xmm3,xmm1,xmm2
 5b2ff07759d:	c4 c1 7a 6f 24 10                               	vmovdqu xmm4,XMMWORD PTR [r8+rdx*1]
 5b2ff0775a3:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x5b2ff077578
 5b2ff0775aa:	c4 c1 58 54 2a                                  	vandps xmm5,xmm4,XMMWORD PTR [r10]
 5b2ff0775af:	c5 d0 c2 f2 02                                  	vcmpleps xmm6,xmm5,xmm2
 5b2ff0775b4:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
 5b2ff0775b8:	c4 c1 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1]
 5b2ff0775be:	4c 8b 15 b3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb3]        # 0x5b2ff077578
 5b2ff0775c5:	c4 c1 48 54 3a                                  	vandps xmm7,xmm6,XMMWORD PTR [r10]
 5b2ff0775ca:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
 5b2ff0775cf:	c5 c0 c2 c2 02                                  	vcmpleps xmm0,xmm7,xmm2
 5b2ff0775d4:	c5 e1 db d8                                     	vpand  xmm3,xmm3,xmm0
 5b2ff0775d8:	c5 f8 50 f3                                     	vmovmskps esi,xmm3
 5b2ff0775dc:	41 23 f7                                        	and    esi,r15d
 5b2ff0775df:	44 3b ce                                        	cmp    r9d,esi
 5b2ff0775e2:	0f 84 07 00 00 00                               	je     0x5b2ff0775ef
 5b2ff0775e8:	33 c0                                           	xor    eax,eax
 5b2ff0775ea:	e9 36 1b 00 00                                  	jmp    0x5b2ff079125
 5b2ff0775ef:	c5 c0 c2 c5 02                                  	vcmpleps xmm0,xmm7,xmm5
 5b2ff0775f4:	c5 f0 c2 dd 02                                  	vcmpleps xmm3,xmm1,xmm5
 5b2ff0775f9:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
 5b2ff0775fd:	c5 f8 50 f0                                     	vmovmskps esi,xmm0
 5b2ff077601:	8b de                                           	mov    ebx,esi
 5b2ff077603:	41 23 d9                                        	and    ebx,r9d
 5b2ff077606:	44 3b cb                                        	cmp    r9d,ebx
 5b2ff077609:	0f 85 32 00 00 00                               	jne    0x5b2ff077641
 5b2ff07760f:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
 5b2ff077614:	49 ba 60 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090860
 5b2ff07761e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff077623:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x5b2ff077616
 5b2ff07762a:	c4 c1 48 57 12                                  	vxorps xmm2,xmm6,XMMWORD PTR [r10]
 5b2ff07762f:	c7 45 d0 00 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x0
 5b2ff077636:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
 5b2ff07763a:	33 f6                                           	xor    esi,esi
 5b2ff07763c:	e9 9d 00 00 00                                  	jmp    0x5b2ff0776de
 5b2ff077641:	c5 c0 c2 c1 02                                  	vcmpleps xmm0,xmm7,xmm1
 5b2ff077646:	c5 d0 c2 d9 02                                  	vcmpleps xmm3,xmm5,xmm1
 5b2ff07764b:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
 5b2ff07764f:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
 5b2ff077653:	8b ce                                           	mov    ecx,esi
 5b2ff077655:	83 f1 ff                                        	xor    ecx,0xffffffff
 5b2ff077658:	41 23 c9                                        	and    ecx,r9d
 5b2ff07765b:	41 23 c8                                        	and    ecx,r8d
 5b2ff07765e:	44 3b c9                                        	cmp    r9d,ecx
 5b2ff077661:	0f 85 29 00 00 00                               	jne    0x5b2ff077690
 5b2ff077667:	c7 45 d0 02 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x2
 5b2ff07766e:	41 8b c8                                        	mov    ecx,r8d
 5b2ff077671:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
 5b2ff077675:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
 5b2ff077679:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
 5b2ff07767d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
 5b2ff077681:	be 01 00 00 00                                  	mov    esi,0x1
 5b2ff077686:	c5 fa 6f 65 98                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x68]
 5b2ff07768b:	e9 4e 00 00 00                                  	jmp    0x5b2ff0776de
 5b2ff077690:	41 8b c8                                        	mov    ecx,r8d
 5b2ff077693:	0b ce                                           	or     ecx,esi
 5b2ff077695:	41 23 c9                                        	and    ecx,r9d
 5b2ff077698:	85 c9                                           	test   ecx,ecx
 5b2ff07769a:	0f 84 07 00 00 00                               	je     0x5b2ff0776a7
 5b2ff0776a0:	33 c9                                           	xor    ecx,ecx
 5b2ff0776a2:	e9 7c 1a 00 00                                  	jmp    0x5b2ff079123
 5b2ff0776a7:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
 5b2ff0776ac:	4c 8b 15 63 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff63]        # 0x5b2ff077616
 5b2ff0776b3:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0776b8:	c7 45 d0 04 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x4
 5b2ff0776bf:	c7 85 d8 fe ff ff 01 00 00 00                   	mov    DWORD PTR [rbp-0x128],0x1
 5b2ff0776c9:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0776cc:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
 5b2ff0776d0:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
 5b2ff0776d4:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
 5b2ff0776d8:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
 5b2ff0776dc:	33 f6                                           	xor    esi,esi
 5b2ff0776de:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
 5b2ff0776e2:	c5 c8 c2 cc 02                                  	vcmpleps xmm1,xmm6,xmm4
 5b2ff0776e7:	c5 f8 50 c9                                     	vmovmskps ecx,xmm1
 5b2ff0776eb:	41 23 cf                                        	and    ecx,r15d
 5b2ff0776ee:	85 c9                                           	test   ecx,ecx
 5b2ff0776f0:	0f 85 75 00 00 00                               	jne    0x5b2ff07776b
 5b2ff0776f6:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x5b2ff077616
 5b2ff0776fd:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
 5b2ff077702:	85 f6                                           	test   esi,esi
 5b2ff077704:	0f 84 05 00 00 00                               	je     0x5b2ff07770f
 5b2ff07770a:	e9 04 00 00 00                                  	jmp    0x5b2ff077713
 5b2ff07770f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
 5b2ff077713:	4c 8b 15 fc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffefc]        # 0x5b2ff077616
 5b2ff07771a:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
 5b2ff07771f:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
 5b2ff077725:	85 d2                                           	test   edx,edx
 5b2ff077727:	0f 84 09 00 00 00                               	je     0x5b2ff077736
 5b2ff07772d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff077731:	e9 04 00 00 00                                  	jmp    0x5b2ff07773a
 5b2ff077736:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
 5b2ff07773a:	44 3b cb                                        	cmp    r9d,ebx
 5b2ff07773d:	0f 94 c2                                        	sete   dl
 5b2ff077740:	0f b6 d2                                        	movzx  edx,dl
 5b2ff077743:	85 d2                                           	test   edx,edx
 5b2ff077745:	0f 84 09 00 00 00                               	je     0x5b2ff077754
 5b2ff07774b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff07774f:	e9 00 00 00 00                                  	jmp    0x5b2ff077754
 5b2ff077754:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff077757:	83 ca 01                                        	or     edx,0x1
 5b2ff07775a:	41 b8 03 00 00 00                               	mov    r8d,0x3
 5b2ff077760:	85 f6                                           	test   esi,esi
 5b2ff077762:	44 0f 44 c2                                     	cmove  r8d,edx
 5b2ff077766:	e9 25 00 00 00                                  	jmp    0x5b2ff077790
 5b2ff07776b:	41 3b c9                                        	cmp    ecx,r9d
 5b2ff07776e:	0f 85 15 00 00 00                               	jne    0x5b2ff077789
 5b2ff077774:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
 5b2ff077778:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
 5b2ff07777c:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
 5b2ff077780:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
 5b2ff077784:	e9 07 00 00 00                                  	jmp    0x5b2ff077790
 5b2ff077789:	33 c0                                           	xor    eax,eax
 5b2ff07778b:	e9 95 19 00 00                                  	jmp    0x5b2ff079125
 5b2ff077790:	41 8b d0                                        	mov    edx,r8d
 5b2ff077793:	c1 e2 06                                        	shl    edx,0x6
 5b2ff077796:	41 8d 14 14                                     	lea    edx,[r12+rdx*1]
 5b2ff07779a:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
 5b2ff07779e:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
 5b2ff0777a3:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
 5b2ff0777a6:	41 8b 84 14 24 01 00 00                         	mov    eax,DWORD PTR [r12+rdx*1+0x124]
 5b2ff0777ae:	85 c0                                           	test   eax,eax
 5b2ff0777b0:	0f 85 07 00 00 00                               	jne    0x5b2ff0777bd
 5b2ff0777b6:	33 c0                                           	xor    eax,eax
 5b2ff0777b8:	e9 68 19 00 00                                  	jmp    0x5b2ff079125
 5b2ff0777bd:	45 8b 84 14 a4 02 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x2a4]
 5b2ff0777c5:	41 83 f8 00                                     	cmp    r8d,0x0
 5b2ff0777c9:	0f 8f 07 00 00 00                               	jg     0x5b2ff0777d6
 5b2ff0777cf:	33 c0                                           	xor    eax,eax
 5b2ff0777d1:	e9 4f 19 00 00                                  	jmp    0x5b2ff079125
 5b2ff0777d6:	8d b2 24 04 00 00                               	lea    esi,[rdx+0x424]
 5b2ff0777dc:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
 5b2ff0777df:	41 8b 0c 34                                     	mov    ecx,DWORD PTR [r12+rsi*1]
 5b2ff0777e3:	33 d2                                           	xor    edx,edx
 5b2ff0777e5:	3b ca                                           	cmp    ecx,edx
 5b2ff0777e7:	0f 8f 27 00 00 00                               	jg     0x5b2ff077814
 5b2ff0777ed:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
 5b2ff0777f2:	8b f0                                           	mov    esi,eax
 5b2ff0777f4:	44 8b e1                                        	mov    r12d,ecx
 5b2ff0777f7:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
 5b2ff0777fb:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0777ff:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
 5b2ff077803:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
 5b2ff077807:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff07780a:	33 c9                                           	xor    ecx,ecx
 5b2ff07780c:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
 5b2ff07780f:	e9 0f 19 00 00                                  	jmp    0x5b2ff079123
 5b2ff077814:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff077819:	f7 da                                           	neg    edx
 5b2ff07781b:	41 03 d0                                        	add    edx,r8d
 5b2ff07781e:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
 5b2ff077828:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff07782d:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff077831:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
 5b2ff077836:	4c 8b 15 e3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe3]        # 0x5b2ff077820
 5b2ff07783d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
 5b2ff077842:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
 5b2ff077846:	c5 d0 c2 c0 01                                  	vcmpltps xmm0,xmm5,xmm0
 5b2ff07784b:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
 5b2ff07784f:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
 5b2ff077853:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff077858:	c5 f0 5e d0                                     	vdivps xmm2,xmm1,xmm0
 5b2ff07785c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
 5b2ff077866:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff07786b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff07786f:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
 5b2ff077873:	c5 d8 5e c8                                     	vdivps xmm1,xmm4,xmm0
 5b2ff077877:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
 5b2ff07787b:	c5 fa 7f 8d b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm1
 5b2ff077883:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
 5b2ff07788d:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff077892:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff077896:	c5 fa 6f bd b4 fe ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x14c]
 5b2ff07789e:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
 5b2ff0778a2:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
 5b2ff0778a5:	41 8b 74 1c 14                                  	mov    esi,DWORD PTR [r12+rbx*1+0x14]
 5b2ff0778aa:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
 5b2ff0778ad:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
 5b2ff0778b3:	41 8b 54 1c 10                                  	mov    edx,DWORD PTR [r12+rbx*1+0x10]
 5b2ff0778b8:	bb 2f 81 00 00                                  	mov    ebx,0x812f
 5b2ff0778bd:	3b d3                                           	cmp    edx,ebx
 5b2ff0778bf:	0f 95 c3                                        	setne  bl
 5b2ff0778c2:	0f b6 db                                        	movzx  ebx,bl
 5b2ff0778c5:	41 bf 00 29 00 00                               	mov    r15d,0x2900
 5b2ff0778cb:	41 3b d7                                        	cmp    edx,r15d
 5b2ff0778ce:	41 0f 95 c7                                     	setne  r15b
 5b2ff0778d2:	45 0f b6 ff                                     	movzx  r15d,r15b
 5b2ff0778d6:	41 23 df                                        	and    ebx,r15d
 5b2ff0778d9:	85 db                                           	test   ebx,ebx
 5b2ff0778db:	0f 84 0f 00 00 00                               	je     0x5b2ff0778f0
 5b2ff0778e1:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
 5b2ff0778e7:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
 5b2ff0778eb:	e9 08 00 00 00                                  	jmp    0x5b2ff0778f8
 5b2ff0778f0:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
 5b2ff0778f4:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
 5b2ff0778f8:	c5 e8 59 f9                                     	vmulps xmm7,xmm2,xmm1
 5b2ff0778fc:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
 5b2ff0778ff:	45 8b 7c 1c 0c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0xc]
 5b2ff077904:	45 8b d0                                        	mov    r10d,r8d
 5b2ff077907:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
 5b2ff07790c:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
 5b2ff077911:	c5 e8 59 d0                                     	vmulps xmm2,xmm2,xmm0
 5b2ff077915:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff07791a:	f7 db                                           	neg    ebx
 5b2ff07791c:	03 d9                                           	add    ebx,ecx
 5b2ff07791e:	44 8b e3                                        	mov    r12d,ebx
 5b2ff077921:	44 23 e1                                        	and    r12d,ecx
 5b2ff077924:	89 45 d0                                        	mov    DWORD PTR [rbp-0x30],eax
 5b2ff077927:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
 5b2ff07792d:	89 8d dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],ecx
 5b2ff077933:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
 5b2ff077939:	41 23 c8                                        	and    ecx,r8d
 5b2ff07793c:	89 95 e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],edx
 5b2ff077942:	33 d2                                           	xor    edx,edx
 5b2ff077944:	85 c9                                           	test   ecx,ecx
 5b2ff077946:	0f 44 d0                                        	cmove  edx,eax
 5b2ff077949:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
 5b2ff07794f:	44 8b d0                                        	mov    r10d,eax
 5b2ff077952:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff077957:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff07795c:	b8 2f 81 00 00                                  	mov    eax,0x812f
 5b2ff077961:	3b f0                                           	cmp    esi,eax
 5b2ff077963:	0f 95 c0                                        	setne  al
 5b2ff077966:	0f b6 c0                                        	movzx  eax,al
 5b2ff077969:	b9 00 29 00 00                                  	mov    ecx,0x2900
 5b2ff07796e:	3b f1                                           	cmp    esi,ecx
 5b2ff077970:	0f 95 c1                                        	setne  cl
 5b2ff077973:	0f b6 c9                                        	movzx  ecx,cl
 5b2ff077976:	23 c1                                           	and    eax,ecx
 5b2ff077978:	85 c0                                           	test   eax,eax
 5b2ff07797a:	0f 84 17 00 00 00                               	je     0x5b2ff077997
 5b2ff077980:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
 5b2ff077988:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
 5b2ff07798e:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
 5b2ff077992:	e9 10 00 00 00                                  	jmp    0x5b2ff0779a7
 5b2ff077997:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
 5b2ff07799f:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
 5b2ff0779a3:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
 5b2ff0779a7:	c5 fa 7f 8d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm1
 5b2ff0779af:	c5 fa 6f 8d b4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x14c]
 5b2ff0779b7:	c5 f0 59 c8                                     	vmulps xmm1,xmm1,xmm0
 5b2ff0779bb:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
 5b2ff0779c5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
 5b2ff0779ca:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
 5b2ff0779ce:	c5 f0 58 f0                                     	vaddps xmm6,xmm1,xmm0
 5b2ff0779d2:	b8 00 26 00 00                                  	mov    eax,0x2600
 5b2ff0779d7:	44 3b f8                                        	cmp    r15d,eax
 5b2ff0779da:	0f 94 c0                                        	sete   al
 5b2ff0779dd:	0f b6 c0                                        	movzx  eax,al
 5b2ff0779e0:	85 c0                                           	test   eax,eax
 5b2ff0779e2:	0f 84 09 00 00 00                               	je     0x5b2ff0779f1
 5b2ff0779e8:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
 5b2ff0779ec:	e9 00 00 00 00                                  	jmp    0x5b2ff0779f1
 5b2ff0779f1:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
 5b2ff0779f7:	4c 8b 15 7a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7a]        # 0x5b2ff077578
 5b2ff0779fe:	c4 c1 40 54 1a                                  	vandps xmm3,xmm7,XMMWORD PTR [r10]
 5b2ff077a03:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
 5b2ff077a08:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
 5b2ff077a12:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
 5b2ff077a17:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
 5b2ff077a1b:	c5 e0 c2 d8 01                                  	vcmpltps xmm3,xmm3,xmm0
 5b2ff077a20:	49 ba 40 09 09 67 4c 63 00 00                   	movabs r10,0x634c67090940
 5b2ff077a2a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff077a2f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
 5b2ff077a34:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff077a3a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
 5b2ff077a3e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
 5b2ff077a43:	c5 fa 7f 95 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm2
 5b2ff077a4b:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
 5b2ff077a53:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
 5b2ff077a58:	c5 fa 6f 55 98                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x68]
 5b2ff077a5d:	c5 fa 7f 9d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm3
 5b2ff077a65:	c5 fa 6f 9d a4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x15c]
 5b2ff077a6d:	c5 e0 58 da                                     	vaddps xmm3,xmm3,xmm2
 5b2ff077a71:	c5 fa 6f 95 b4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x14c]
 5b2ff077a79:	85 c0                                           	test   eax,eax
 5b2ff077a7b:	0f 84 05 00 00 00                               	je     0x5b2ff077a86
 5b2ff077a81:	e9 04 00 00 00                                  	jmp    0x5b2ff077a8a
 5b2ff077a86:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
 5b2ff077a8a:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
 5b2ff077a90:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x5b2ff077a22
 5b2ff077a97:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
 5b2ff077a9c:	c4 c1 60 54 e7                                  	vandps xmm4,xmm3,xmm15
 5b2ff077aa1:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
 5b2ff077aa7:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
 5b2ff077aab:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
 5b2ff077ab0:	c5 fa 7f a5 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm4
 5b2ff077ab8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
 5b2ff077ac2:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff077ac7:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff077acb:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
 5b2ff077ad0:	4c 8b 15 a1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaa1]        # 0x5b2ff077578
 5b2ff077ad7:	c4 c1 60 54 2a                                  	vandps xmm5,xmm3,XMMWORD PTR [r10]
 5b2ff077adc:	c5 d0 c2 e8 01                                  	vcmpltps xmm5,xmm5,xmm0
 5b2ff077ae1:	c5 fa 7f b5 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm6
 5b2ff077ae9:	c5 fa 6f b5 b4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x14c]
 5b2ff077af1:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
 5b2ff077af5:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
 5b2ff077af9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
 5b2ff077afe:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
 5b2ff077b04:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
 5b2ff077b08:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff077b0d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
 5b2ff077b11:	c4 e2 51 3d f6                                  	vpmaxsd xmm6,xmm5,xmm6
 5b2ff077b16:	c4 e2 49 39 f0                                  	vpminsd xmm6,xmm6,xmm0
 5b2ff077b1b:	8b 8d e0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x120]
 5b2ff077b21:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
 5b2ff077b27:	b8 2f 81 00 00                                  	mov    eax,0x812f
 5b2ff077b2c:	3b c8                                           	cmp    ecx,eax
 5b2ff077b2e:	0f 95 c1                                        	setne  cl
 5b2ff077b31:	0f b6 c9                                        	movzx  ecx,cl
 5b2ff077b34:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
 5b2ff077b3a:	89 8d b0 fe ff ff                               	mov    DWORD PTR [rbp-0x150],ecx
 5b2ff077b40:	b9 00 29 00 00                                  	mov    ecx,0x2900
 5b2ff077b45:	3b c1                                           	cmp    eax,ecx
 5b2ff077b47:	0f 95 c0                                        	setne  al
 5b2ff077b4a:	0f b6 c0                                        	movzx  eax,al
 5b2ff077b4d:	8b 8d b0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x150]
 5b2ff077b53:	23 c8                                           	and    ecx,eax
 5b2ff077b55:	85 c9                                           	test   ecx,ecx
 5b2ff077b57:	0f 85 05 00 00 00                               	jne    0x5b2ff077b62
 5b2ff077b5d:	e9 8f 00 00 00                                  	jmp    0x5b2ff077bf1
 5b2ff077b62:	c5 f9 6e f2                                     	vmovd  xmm6,edx
 5b2ff077b66:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff077b6b:	c5 d1 db f6                                     	vpand  xmm6,xmm5,xmm6
 5b2ff077b6f:	8b c2                                           	mov    eax,edx
 5b2ff077b71:	85 d2                                           	test   edx,edx
 5b2ff077b73:	0f 84 07 00 00 00                               	je     0x5b2ff077b80
 5b2ff077b79:	8b d0                                           	mov    edx,eax
 5b2ff077b7b:	e9 71 00 00 00                                  	jmp    0x5b2ff077bf1
 5b2ff077b80:	c4 c1 79 6e f0                                  	vmovd  xmm6,r8d
 5b2ff077b85:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff077b8a:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
 5b2ff077b92:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
 5b2ff077b96:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
 5b2ff077b9e:	c5 d1 66 c0                                     	vpcmpgtd xmm0,xmm5,xmm0
 5b2ff077ba2:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
 5b2ff077ba6:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
 5b2ff077baa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff077baf:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff077bb4:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
 5b2ff077bb9:	c5 fa 6f bd 28 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xd8]
 5b2ff077bc1:	c5 c1 66 fd                                     	vpcmpgtd xmm7,xmm7,xmm5
 5b2ff077bc5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
 5b2ff077bc9:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
 5b2ff077bcd:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff077bd2:	c5 d1 fe ff                                     	vpaddd xmm7,xmm5,xmm7
 5b2ff077bd6:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
 5b2ff077bdb:	8b d0                                           	mov    edx,eax
 5b2ff077bdd:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
 5b2ff077be1:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
 5b2ff077be9:	c5 fa 6f bd 48 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xb8]
 5b2ff077bf1:	33 c0                                           	xor    eax,eax
 5b2ff077bf3:	45 85 e4                                        	test   r12d,r12d
 5b2ff077bf6:	0f 44 c3                                        	cmove  eax,ebx
 5b2ff077bf9:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
 5b2ff077c01:	c5 fa 6f 85 78 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x88]
 5b2ff077c09:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
 5b2ff077c0d:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
 5b2ff077c11:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff077c16:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
 5b2ff077c1e:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
 5b2ff077c22:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
 5b2ff077c27:	c5 fa 7f 95 e8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x118],xmm2
 5b2ff077c2f:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
 5b2ff077c33:	c4 e2 79 3d d2                                  	vpmaxsd xmm2,xmm0,xmm2
 5b2ff077c38:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
 5b2ff077c3d:	b9 2f 81 00 00                                  	mov    ecx,0x812f
 5b2ff077c42:	3b f1                                           	cmp    esi,ecx
 5b2ff077c44:	0f 95 c1                                        	setne  cl
 5b2ff077c47:	0f b6 c9                                        	movzx  ecx,cl
 5b2ff077c4a:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
 5b2ff077c50:	b8 00 29 00 00                                  	mov    eax,0x2900
 5b2ff077c55:	3b f0                                           	cmp    esi,eax
 5b2ff077c57:	0f 95 c0                                        	setne  al
 5b2ff077c5a:	0f b6 c0                                        	movzx  eax,al
 5b2ff077c5d:	23 c8                                           	and    ecx,eax
 5b2ff077c5f:	85 c9                                           	test   ecx,ecx
 5b2ff077c61:	0f 85 05 00 00 00                               	jne    0x5b2ff077c6c
 5b2ff077c67:	e9 95 00 00 00                                  	jmp    0x5b2ff077d01
 5b2ff077c6c:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
 5b2ff077c72:	c5 f9 6e d0                                     	vmovd  xmm2,eax
 5b2ff077c76:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff077c7b:	c5 f9 db d2                                     	vpand  xmm2,xmm0,xmm2
 5b2ff077c7f:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
 5b2ff077c85:	85 c0                                           	test   eax,eax
 5b2ff077c87:	0f 84 05 00 00 00                               	je     0x5b2ff077c92
 5b2ff077c8d:	e9 6f 00 00 00                                  	jmp    0x5b2ff077d01
 5b2ff077c92:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
 5b2ff077c98:	c5 f9 6e d0                                     	vmovd  xmm2,eax
 5b2ff077c9c:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff077ca1:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
 5b2ff077ca5:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
 5b2ff077cad:	c5 f9 66 d9                                     	vpcmpgtd xmm3,xmm0,xmm1
 5b2ff077cb1:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
 5b2ff077cb5:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
 5b2ff077cb9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
 5b2ff077cbe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff077cc3:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
 5b2ff077cc8:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
 5b2ff077cd0:	c5 d9 66 e0                                     	vpcmpgtd xmm4,xmm4,xmm0
 5b2ff077cd4:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
 5b2ff077cd8:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
 5b2ff077cdc:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
 5b2ff077ce1:	c5 f9 fe e4                                     	vpaddd xmm4,xmm0,xmm4
 5b2ff077ce5:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
 5b2ff077ced:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
 5b2ff077cf1:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
 5b2ff077cf9:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
 5b2ff077d01:	c5 fa 7f 85 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm0
 5b2ff077d09:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
 5b2ff077d0e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff077d13:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
 5b2ff077d18:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
 5b2ff077d20:	c5 e9 fe ce                                     	vpaddd xmm1,xmm2,xmm6
 5b2ff077d24:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
 5b2ff077d2a:	c4 e3 79 16 c9 02                               	vpextrd ecx,xmm1,0x2
 5b2ff077d30:	c4 e3 79 16 cb 01                               	vpextrd ebx,xmm1,0x1
 5b2ff077d36:	c4 c1 79 7e c8                                  	vmovd  r8d,xmm1
 5b2ff077d3b:	41 81 ff 00 26 00 00                            	cmp    r15d,0x2600
 5b2ff077d42:	0f 84 ee 02 00 00                               	je     0x5b2ff078036
 5b2ff077d48:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
 5b2ff077d52:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff077d57:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff077d5b:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
 5b2ff077d63:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
 5b2ff077d67:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
 5b2ff077d6b:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
 5b2ff077d70:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
 5b2ff077d78:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
 5b2ff077d80:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
 5b2ff077d85:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
 5b2ff077d8c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
 5b2ff077d8f:	b8 2f 81 00 00                                  	mov    eax,0x812f
 5b2ff077d94:	44 3b e0                                        	cmp    r12d,eax
 5b2ff077d97:	41 0f 95 c4                                     	setne  r12b
 5b2ff077d9b:	45 0f b6 e4                                     	movzx  r12d,r12b
 5b2ff077d9f:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
 5b2ff077da5:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
 5b2ff077dab:	b9 00 29 00 00                                  	mov    ecx,0x2900
 5b2ff077db0:	3b c1                                           	cmp    eax,ecx
 5b2ff077db2:	0f 95 c0                                        	setne  al
 5b2ff077db5:	0f b6 c0                                        	movzx  eax,al
 5b2ff077db8:	44 23 e0                                        	and    r12d,eax
 5b2ff077dbb:	45 85 e4                                        	test   r12d,r12d
 5b2ff077dbe:	0f 85 05 00 00 00                               	jne    0x5b2ff077dc9
 5b2ff077dc4:	e9 70 00 00 00                                  	jmp    0x5b2ff077e39
 5b2ff077dc9:	c5 f9 6e ca                                     	vmovd  xmm1,edx
 5b2ff077dcd:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
 5b2ff077dd2:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
 5b2ff077dd6:	8b c2                                           	mov    eax,edx
 5b2ff077dd8:	85 d2                                           	test   edx,edx
 5b2ff077dda:	0f 84 07 00 00 00                               	je     0x5b2ff077de7
 5b2ff077de0:	8b d0                                           	mov    edx,eax
 5b2ff077de2:	e9 52 00 00 00                                  	jmp    0x5b2ff077e39
 5b2ff077de7:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
 5b2ff077deb:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
 5b2ff077df3:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
 5b2ff077df7:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
 5b2ff077dfb:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
 5b2ff077dff:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
 5b2ff077e04:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff077e09:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
 5b2ff077e0e:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
 5b2ff077e12:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
 5b2ff077e16:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
 5b2ff077e1a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
 5b2ff077e1f:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
 5b2ff077e23:	8b d0                                           	mov    edx,eax
 5b2ff077e25:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
 5b2ff077e2d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
 5b2ff077e31:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
 5b2ff077e39:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
 5b2ff077e41:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
 5b2ff077e45:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
 5b2ff077e49:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
 5b2ff077e4e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
 5b2ff077e56:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
 5b2ff077e5b:	b8 2f 81 00 00                                  	mov    eax,0x812f
 5b2ff077e60:	3b f0                                           	cmp    esi,eax
 5b2ff077e62:	0f 95 c0                                        	setne  al
 5b2ff077e65:	0f b6 c0                                        	movzx  eax,al
 5b2ff077e68:	b9 00 29 00 00                                  	mov    ecx,0x2900
 5b2ff077e6d:	3b f1                                           	cmp    esi,ecx
 5b2ff077e6f:	0f 95 c1                                        	setne  cl
 5b2ff077e72:	0f b6 c9                                        	movzx  ecx,cl
 5b2ff077e75:	23 c1                                           	and    eax,ecx
 5b2ff077e77:	85 c0                                           	test   eax,eax
 5b2ff077e79:	0f 85 05 00 00 00                               	jne    0x5b2ff077e84
 5b2ff077e7f:	e9 9f 00 00 00                                  	jmp    0x5b2ff077f23
 5b2ff077e84:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
 5b2ff077e8a:	c5 f9 6e d0                                     	vmovd  xmm2,eax
 5b2ff077e8e:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff077e93:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
 5b2ff077e97:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
 5b2ff077e9d:	85 c0                                           	test   eax,eax
 5b2ff077e9f:	0f 84 05 00 00 00                               	je     0x5b2ff077eaa
 5b2ff077ea5:	e9 79 00 00 00                                  	jmp    0x5b2ff077f23
 5b2ff077eaa:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
 5b2ff077eb0:	c5 f9 6e d0                                     	vmovd  xmm2,eax
 5b2ff077eb4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff077eb9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
 5b2ff077ebd:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
 5b2ff077ec5:	c5 fa 6f 85 38 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc8]
 5b2ff077ecd:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
 5b2ff077ed1:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
 5b2ff077ed5:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
 5b2ff077ed9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff077ede:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff077ee3:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
 5b2ff077ee8:	c5 fa 7f 4d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm1
 5b2ff077eed:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
 5b2ff077ef1:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
 5b2ff077ef5:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
 5b2ff077ef9:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff077efe:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
 5b2ff077f02:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
 5b2ff077f0a:	c5 fa 7f ad 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm5
 5b2ff077f12:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
 5b2ff077f16:	c5 fa 6f 85 28 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xd8]
 5b2ff077f1e:	c5 fa 6f 4d a8                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x58]
 5b2ff077f23:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
 5b2ff077f28:	c5 e9 fe ee                                     	vpaddd xmm5,xmm2,xmm6
 5b2ff077f2c:	41 83 f9 0f                                     	cmp    r9d,0xf
 5b2ff077f30:	0f 85 1f 00 00 00                               	jne    0x5b2ff077f55
 5b2ff077f36:	c5 c9 fe dc                                     	vpaddd xmm3,xmm6,xmm4
 5b2ff077f3a:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
 5b2ff077f3e:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
 5b2ff077f42:	83 f8 0f                                        	cmp    eax,0xf
 5b2ff077f45:	0f 85 05 00 00 00                               	jne    0x5b2ff077f50
 5b2ff077f4b:	e9 b6 01 00 00                                  	jmp    0x5b2ff078106
 5b2ff077f50:	e9 00 00 00 00                                  	jmp    0x5b2ff077f55
 5b2ff077f55:	41 8b c1                                        	mov    eax,r9d
 5b2ff077f58:	83 e0 08                                        	and    eax,0x8
 5b2ff077f5b:	41 8b c9                                        	mov    ecx,r9d
 5b2ff077f5e:	83 e1 04                                        	and    ecx,0x4
 5b2ff077f61:	41 8b f1                                        	mov    esi,r9d
 5b2ff077f64:	83 e6 02                                        	and    esi,0x2
 5b2ff077f67:	45 8b e1                                        	mov    r12d,r9d
 5b2ff077f6a:	41 83 e4 01                                     	and    r12d,0x1
 5b2ff077f6e:	41 83 f9 0f                                     	cmp    r9d,0xf
 5b2ff077f72:	0f 85 05 00 00 00                               	jne    0x5b2ff077f7d
 5b2ff077f78:	e9 46 04 00 00                                  	jmp    0x5b2ff0783c3
 5b2ff077f7d:	45 85 e4                                        	test   r12d,r12d
 5b2ff077f80:	0f 84 23 00 00 00                               	je     0x5b2ff077fa9
 5b2ff077f86:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff077f89:	45 8b f8                                        	mov    r15d,r8d
 5b2ff077f8c:	41 c1 e7 02                                     	shl    r15d,0x2
 5b2ff077f90:	41 03 d7                                        	add    edx,r15d
 5b2ff077f93:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
 5b2ff077f97:	4d 8b 7f 17                                     	mov    r15,QWORD PTR [r15+0x17]
 5b2ff077f9b:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
 5b2ff077f9e:	41 8b 04 17                                     	mov    eax,DWORD PTR [r15+rdx*1]
 5b2ff077fa2:	33 d2                                           	xor    edx,edx
 5b2ff077fa4:	e9 07 00 00 00                                  	jmp    0x5b2ff077fb0
 5b2ff077fa9:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
 5b2ff077fac:	33 c0                                           	xor    eax,eax
 5b2ff077fae:	33 d2                                           	xor    edx,edx
 5b2ff077fb0:	85 f6                                           	test   esi,esi
 5b2ff077fb2:	0f 84 26 00 00 00                               	je     0x5b2ff077fde
 5b2ff077fb8:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
 5b2ff077fbc:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
 5b2ff077fc2:	8b c3                                           	mov    eax,ebx
 5b2ff077fc4:	c1 e0 02                                        	shl    eax,0x2
 5b2ff077fc7:	44 03 f8                                        	add    r15d,eax
 5b2ff077fca:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff077fce:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff077fd2:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
 5b2ff077fd5:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
 5b2ff077fd9:	e9 0b 00 00 00                                  	jmp    0x5b2ff077fe9
 5b2ff077fde:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
 5b2ff077fe1:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
 5b2ff077fe7:	8b ca                                           	mov    ecx,edx
 5b2ff077fe9:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
 5b2ff077fec:	85 c0                                           	test   eax,eax
 5b2ff077fee:	0f 84 21 00 00 00                               	je     0x5b2ff078015
 5b2ff077ff4:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff077ff7:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
 5b2ff077ffd:	c1 e2 02                                        	shl    edx,0x2
 5b2ff078000:	03 c2                                           	add    eax,edx
 5b2ff078002:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff078006:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
 5b2ff07800a:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
 5b2ff07800e:	33 c0                                           	xor    eax,eax
 5b2ff078010:	e9 09 00 00 00                                  	jmp    0x5b2ff07801e
 5b2ff078015:	33 c0                                           	xor    eax,eax
 5b2ff078017:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
 5b2ff07801e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
 5b2ff078021:	85 d2                                           	test   edx,edx
 5b2ff078023:	0f 84 08 00 00 00                               	je     0x5b2ff078031
 5b2ff078029:	41 8b d7                                        	mov    edx,r15d
 5b2ff07802c:	e9 06 04 00 00                                  	jmp    0x5b2ff078437
 5b2ff078031:	e9 1d 04 00 00                                  	jmp    0x5b2ff078453
 5b2ff078036:	41 83 f9 0f                                     	cmp    r9d,0xf
 5b2ff07803a:	0f 85 05 00 00 00                               	jne    0x5b2ff078045
 5b2ff078040:	e9 e7 0d 00 00                                  	jmp    0x5b2ff078e2c
 5b2ff078045:	41 8b f1                                        	mov    esi,r9d
 5b2ff078048:	83 e6 01                                        	and    esi,0x1
 5b2ff07804b:	85 f6                                           	test   esi,esi
 5b2ff07804d:	0f 84 20 00 00 00                               	je     0x5b2ff078073
 5b2ff078053:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
 5b2ff078056:	45 8b e0                                        	mov    r12d,r8d
 5b2ff078059:	41 c1 e4 02                                     	shl    r12d,0x2
 5b2ff07805d:	41 03 f4                                        	add    esi,r12d
 5b2ff078060:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
 5b2ff078064:	4d 8b 67 17                                     	mov    r12,QWORD PTR [r15+0x17]
 5b2ff078068:	45 8b 3c 34                                     	mov    r15d,DWORD PTR [r12+rsi*1]
 5b2ff07806c:	33 f6                                           	xor    esi,esi
 5b2ff07806e:	e9 05 00 00 00                                  	jmp    0x5b2ff078078
 5b2ff078073:	33 f6                                           	xor    esi,esi
 5b2ff078075:	45 33 ff                                        	xor    r15d,r15d
 5b2ff078078:	45 8b e1                                        	mov    r12d,r9d
 5b2ff07807b:	41 83 e4 02                                     	and    r12d,0x2
 5b2ff07807f:	45 85 e4                                        	test   r12d,r12d
 5b2ff078082:	0f 84 26 00 00 00                               	je     0x5b2ff0780ae
 5b2ff078088:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
 5b2ff07808c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
 5b2ff07808f:	8b c3                                           	mov    eax,ebx
 5b2ff078091:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078094:	44 03 e0                                        	add    r12d,eax
 5b2ff078097:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff07809b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff07809f:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
 5b2ff0780a5:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
 5b2ff0780a9:	e9 0b 00 00 00                                  	jmp    0x5b2ff0780b9
 5b2ff0780ae:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
 5b2ff0780b1:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
 5b2ff0780b7:	8b ce                                           	mov    ecx,esi
 5b2ff0780b9:	41 8b c1                                        	mov    eax,r9d
 5b2ff0780bc:	83 e0 04                                        	and    eax,0x4
 5b2ff0780bf:	85 c0                                           	test   eax,eax
 5b2ff0780c1:	0f 84 22 00 00 00                               	je     0x5b2ff0780e9
 5b2ff0780c7:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0780ca:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
 5b2ff0780d0:	c1 e6 02                                        	shl    esi,0x2
 5b2ff0780d3:	03 c6                                           	add    eax,esi
 5b2ff0780d5:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
 5b2ff0780d9:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
 5b2ff0780de:	44 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+rax*1]
 5b2ff0780e2:	33 c0                                           	xor    eax,eax
 5b2ff0780e4:	e9 05 00 00 00                                  	jmp    0x5b2ff0780ee
 5b2ff0780e9:	33 c0                                           	xor    eax,eax
 5b2ff0780eb:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0780ee:	41 8b f1                                        	mov    esi,r9d
 5b2ff0780f1:	83 e6 08                                        	and    esi,0x8
 5b2ff0780f4:	85 f6                                           	test   esi,esi
 5b2ff0780f6:	0f 85 05 00 00 00                               	jne    0x5b2ff078101
 5b2ff0780fc:	e9 b1 0d 00 00                                  	jmp    0x5b2ff078eb2
 5b2ff078101:	e9 88 0d 00 00                                  	jmp    0x5b2ff078e8e
 5b2ff078106:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff078109:	41 8b c8                                        	mov    ecx,r8d
 5b2ff07810c:	c1 e1 02                                        	shl    ecx,0x2
 5b2ff07810f:	03 c1                                           	add    eax,ecx
 5b2ff078111:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
 5b2ff078115:	49 8b 4c 24 17                                  	mov    rcx,QWORD PTR [r12+0x17]
 5b2ff07811a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
 5b2ff07811f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff078122:	44 8b e3                                        	mov    r12d,ebx
 5b2ff078125:	41 c1 e4 02                                     	shl    r12d,0x2
 5b2ff078129:	41 03 c4                                        	add    eax,r12d
 5b2ff07812c:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
 5b2ff078134:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
 5b2ff078139:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
 5b2ff078143:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078148:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
 5b2ff078152:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078158:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
 5b2ff07815d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x5b2ff07814a
 5b2ff078164:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078169:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x5b2ff07813b
 5b2ff078170:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078176:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
 5b2ff07817b:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
 5b2ff078180:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff078183:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
 5b2ff07818a:	41 c1 e4 02                                     	shl    r12d,0x2
 5b2ff07818e:	41 03 c4                                        	add    eax,r12d
 5b2ff078191:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
 5b2ff078196:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff078199:	44 8b 65 d4                                     	mov    r12d,DWORD PTR [rbp-0x2c]
 5b2ff07819d:	41 c1 e4 02                                     	shl    r12d,0x2
 5b2ff0781a1:	41 03 c4                                        	add    eax,r12d
 5b2ff0781a4:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
 5b2ff0781a9:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x5b2ff07813b
 5b2ff0781b0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0781b5:	4c 8b 15 8e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8e]        # 0x5b2ff07814a
 5b2ff0781bc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0781c2:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
 5b2ff0781c7:	4c 8b 15 7c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff7c]        # 0x5b2ff07814a
 5b2ff0781ce:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0781d3:	4c 8b 15 61 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff61]        # 0x5b2ff07813b
 5b2ff0781da:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0781e0:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
 5b2ff0781e5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0781ea:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
 5b2ff0781f4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0781f9:	4c 8b 15 4a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff4a]        # 0x5b2ff07814a
 5b2ff078200:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078206:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
 5b2ff07820b:	4c 8b 15 38 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff38]        # 0x5b2ff07814a
 5b2ff078212:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078217:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x5b2ff0781ec
 5b2ff07821e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078224:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
 5b2ff078229:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff07822e:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
 5b2ff078238:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff07823d:	4c 8b 15 06 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff06]        # 0x5b2ff07814a
 5b2ff078244:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff07824a:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
 5b2ff07824f:	4c 8b 15 f4 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef4]        # 0x5b2ff07814a
 5b2ff078256:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff07825b:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x5b2ff078230
 5b2ff078262:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078268:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
 5b2ff07826d:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
 5b2ff078272:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff078275:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
 5b2ff07827a:	c4 c1 79 7e c4                                  	vmovd  r12d,xmm0
 5b2ff07827f:	41 03 c4                                        	add    eax,r12d
 5b2ff078282:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
 5b2ff078287:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff07828a:	c4 c3 79 16 c4 01                               	vpextrd r12d,xmm0,0x1
 5b2ff078290:	41 03 c4                                        	add    eax,r12d
 5b2ff078293:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
 5b2ff078298:	4c 8b 15 9c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9c]        # 0x5b2ff07813b
 5b2ff07829f:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0782a4:	4c 8b 15 9f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9f]        # 0x5b2ff07814a
 5b2ff0782ab:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0782b1:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
 5b2ff0782b6:	4c 8b 15 8d fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8d]        # 0x5b2ff07814a
 5b2ff0782bd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0782c2:	4c 8b 15 72 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe72]        # 0x5b2ff07813b
 5b2ff0782c9:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0782cf:	c4 c2 49 00 ee                                  	vpshufb xmm5,xmm6,xmm14
 5b2ff0782d4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
 5b2ff0782d9:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0782dc:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
 5b2ff0782e2:	41 03 c4                                        	add    eax,r12d
 5b2ff0782e5:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
 5b2ff0782ea:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0782ed:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
 5b2ff0782f3:	41 03 c4                                        	add    eax,r12d
 5b2ff0782f6:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
 5b2ff0782fb:	4c 8b 15 39 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe39]        # 0x5b2ff07813b
 5b2ff078302:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078307:	4c 8b 15 3c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3c]        # 0x5b2ff07814a
 5b2ff07830e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078314:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
 5b2ff078319:	4c 8b 15 2a fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe2a]        # 0x5b2ff07814a
 5b2ff078320:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078325:	4c 8b 15 0f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe0f]        # 0x5b2ff07813b
 5b2ff07832c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078332:	c4 c2 49 00 de                                  	vpshufb xmm3,xmm6,xmm14
 5b2ff078337:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
 5b2ff07833c:	4c 8b 15 a9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea9]        # 0x5b2ff0781ec
 5b2ff078343:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078348:	4c 8b 15 fb fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfb]        # 0x5b2ff07814a
 5b2ff07834f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078355:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
 5b2ff07835a:	4c 8b 15 e9 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffde9]        # 0x5b2ff07814a
 5b2ff078361:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078366:	4c 8b 15 7f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe7f]        # 0x5b2ff0781ec
 5b2ff07836d:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078373:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
 5b2ff078378:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff07837d:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x5b2ff078230
 5b2ff078384:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff078389:	4c 8b 15 ba fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdba]        # 0x5b2ff07814a
 5b2ff078390:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff078396:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
 5b2ff07839b:	4c 8b 15 a8 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffda8]        # 0x5b2ff07814a
 5b2ff0783a2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0783a7:	4c 8b 15 82 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe82]        # 0x5b2ff078230
 5b2ff0783ae:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0783b4:	c4 c2 61 00 f6                                  	vpshufb xmm6,xmm3,xmm14
 5b2ff0783b9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0783be:	e9 96 05 00 00                                  	jmp    0x5b2ff078959
 5b2ff0783c3:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
 5b2ff0783c7:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
 5b2ff0783ca:	8b c3                                           	mov    eax,ebx
 5b2ff0783cc:	c1 e0 02                                        	shl    eax,0x2
 5b2ff0783cf:	44 03 f8                                        	add    r15d,eax
 5b2ff0783d2:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff0783d6:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff0783da:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
 5b2ff0783dd:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
 5b2ff0783e1:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
 5b2ff0783e5:	41 8b c0                                        	mov    eax,r8d
 5b2ff0783e8:	c1 e0 02                                        	shl    eax,0x2
 5b2ff0783eb:	44 03 f8                                        	add    r15d,eax
 5b2ff0783ee:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff0783f2:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff0783f6:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
 5b2ff0783fc:	42 8b 14 38                                     	mov    edx,DWORD PTR [rax+r15*1]
 5b2ff078400:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
 5b2ff078404:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
 5b2ff07840a:	c1 e0 02                                        	shl    eax,0x2
 5b2ff07840d:	44 03 f8                                        	add    r15d,eax
 5b2ff078410:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078414:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff078418:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
 5b2ff07841e:	42 8b 1c 38                                     	mov    ebx,DWORD PTR [rax+r15*1]
 5b2ff078422:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
 5b2ff078428:	44 8b fb                                        	mov    r15d,ebx
 5b2ff07842b:	8b 85 cc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x134]
 5b2ff078431:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
 5b2ff078437:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff07843a:	8b 5d d4                                        	mov    ebx,DWORD PTR [rbp-0x2c]
 5b2ff07843d:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff078440:	03 d3                                           	add    edx,ebx
 5b2ff078442:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff078446:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff07844a:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
 5b2ff078450:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
 5b2ff078453:	c5 fa 6f 9d 18 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xe8]
 5b2ff07845b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
 5b2ff07845f:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
 5b2ff078465:	c5 f9 6e f2                                     	vmovd  xmm6,edx
 5b2ff078469:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff07846e:	41 83 f9 0f                                     	cmp    r9d,0xf
 5b2ff078472:	0f 84 c0 00 00 00                               	je     0x5b2ff078538
 5b2ff078478:	45 85 e4                                        	test   r12d,r12d
 5b2ff07847b:	0f 84 24 00 00 00                               	je     0x5b2ff0784a5
 5b2ff078481:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078484:	c5 f9 7e db                                     	vmovd  ebx,xmm3
 5b2ff078488:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff07848b:	03 d3                                           	add    edx,ebx
 5b2ff07848d:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff078491:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff078495:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
 5b2ff07849b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
 5b2ff07849e:	33 d2                                           	xor    edx,edx
 5b2ff0784a0:	e9 0a 00 00 00                                  	jmp    0x5b2ff0784af
 5b2ff0784a5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
 5b2ff0784ab:	33 c0                                           	xor    eax,eax
 5b2ff0784ad:	33 d2                                           	xor    edx,edx
 5b2ff0784af:	85 f6                                           	test   esi,esi
 5b2ff0784b1:	0f 84 2a 00 00 00                               	je     0x5b2ff0784e1
 5b2ff0784b7:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
 5b2ff0784ba:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
 5b2ff0784c0:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
 5b2ff0784c6:	c1 e0 02                                        	shl    eax,0x2
 5b2ff0784c9:	03 d8                                           	add    ebx,eax
 5b2ff0784cb:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff0784cf:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff0784d3:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
 5b2ff0784d9:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
 5b2ff0784dc:	e9 0e 00 00 00                                  	jmp    0x5b2ff0784ef
 5b2ff0784e1:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
 5b2ff0784e7:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
 5b2ff0784ed:	8b ca                                           	mov    ecx,edx
 5b2ff0784ef:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
 5b2ff0784f2:	85 c0                                           	test   eax,eax
 5b2ff0784f4:	0f 84 21 00 00 00                               	je     0x5b2ff07851b
 5b2ff0784fa:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0784fd:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
 5b2ff078503:	c1 e2 02                                        	shl    edx,0x2
 5b2ff078506:	03 c2                                           	add    eax,edx
 5b2ff078508:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff07850c:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
 5b2ff078510:	44 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+rax*1]
 5b2ff078514:	33 c0                                           	xor    eax,eax
 5b2ff078516:	e9 05 00 00 00                                  	jmp    0x5b2ff078520
 5b2ff07851b:	33 c0                                           	xor    eax,eax
 5b2ff07851d:	45 33 c0                                        	xor    r8d,r8d
 5b2ff078520:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
 5b2ff078523:	85 d2                                           	test   edx,edx
 5b2ff078525:	0f 84 08 00 00 00                               	je     0x5b2ff078533
 5b2ff07852b:	41 8b d0                                        	mov    edx,r8d
 5b2ff07852e:	e9 7a 00 00 00                                  	jmp    0x5b2ff0785ad
 5b2ff078533:	e9 94 00 00 00                                  	jmp    0x5b2ff0785cc
 5b2ff078538:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff07853b:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
 5b2ff078541:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff078544:	03 d3                                           	add    edx,ebx
 5b2ff078546:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff07854a:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff07854e:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
 5b2ff078554:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
 5b2ff078557:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff07855a:	c5 f9 7e db                                     	vmovd  ebx,xmm3
 5b2ff07855e:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff078561:	03 d3                                           	add    edx,ebx
 5b2ff078563:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff078567:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff07856b:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
 5b2ff078571:	8b 0c 13                                        	mov    ecx,DWORD PTR [rbx+rdx*1]
 5b2ff078574:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078577:	c4 e3 79 16 db 02                               	vpextrd ebx,xmm3,0x2
 5b2ff07857d:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff078580:	03 d3                                           	add    edx,ebx
 5b2ff078582:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff078586:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff07858a:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
 5b2ff078590:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
 5b2ff078593:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
 5b2ff078599:	8b c8                                           	mov    ecx,eax
 5b2ff07859b:	41 8b c0                                        	mov    eax,r8d
 5b2ff07859e:	44 8b c6                                        	mov    r8d,esi
 5b2ff0785a1:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
 5b2ff0785a7:	8b b5 dc fe ff ff                               	mov    esi,DWORD PTR [rbp-0x124]
 5b2ff0785ad:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff0785b0:	c4 e3 79 16 db 03                               	vpextrd ebx,xmm3,0x3
 5b2ff0785b6:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff0785b9:	03 d3                                           	add    edx,ebx
 5b2ff0785bb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff0785bf:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff0785c3:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
 5b2ff0785c9:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
 5b2ff0785cc:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
 5b2ff0785d2:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
 5b2ff0785da:	c4 e3 49 22 c2 01                               	vpinsrd xmm0,xmm6,edx,0x1
 5b2ff0785e0:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
 5b2ff0785e6:	c5 f9 6e da                                     	vmovd  xmm3,edx
 5b2ff0785ea:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
 5b2ff0785ef:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
 5b2ff0785f5:	41 83 f9 0f                                     	cmp    r9d,0xf
 5b2ff0785f9:	0f 84 b0 00 00 00                               	je     0x5b2ff0786af
 5b2ff0785ff:	45 85 e4                                        	test   r12d,r12d
 5b2ff078602:	0f 84 1e 00 00 00                               	je     0x5b2ff078626
 5b2ff078608:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
 5b2ff07860b:	c5 f9 7e ea                                     	vmovd  edx,xmm5
 5b2ff07860f:	c1 e2 02                                        	shl    edx,0x2
 5b2ff078612:	03 ca                                           	add    ecx,edx
 5b2ff078614:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff078618:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
 5b2ff07861c:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
 5b2ff07861f:	33 c9                                           	xor    ecx,ecx
 5b2ff078621:	e9 04 00 00 00                                  	jmp    0x5b2ff07862a
 5b2ff078626:	33 c9                                           	xor    ecx,ecx
 5b2ff078628:	33 db                                           	xor    ebx,ebx
 5b2ff07862a:	85 f6                                           	test   esi,esi
 5b2ff07862c:	0f 84 27 00 00 00                               	je     0x5b2ff078659
 5b2ff078632:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078635:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
 5b2ff07863b:	c4 e3 79 16 e8 01                               	vpextrd eax,xmm5,0x1
 5b2ff078641:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078644:	03 d0                                           	add    edx,eax
 5b2ff078646:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff07864a:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff07864e:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
 5b2ff078651:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
 5b2ff078654:	e9 06 00 00 00                                  	jmp    0x5b2ff07865f
 5b2ff078659:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
 5b2ff07865f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
 5b2ff078662:	85 c0                                           	test   eax,eax
 5b2ff078664:	0f 84 23 00 00 00                               	je     0x5b2ff07868d
 5b2ff07866a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff07866d:	c4 e3 79 16 ea 02                               	vpextrd edx,xmm5,0x2
 5b2ff078673:	c1 e2 02                                        	shl    edx,0x2
 5b2ff078676:	03 c2                                           	add    eax,edx
 5b2ff078678:	48 8b 55 f0                                     	mov    rdx,QWORD PTR [rbp-0x10]
 5b2ff07867c:	48 8b 52 17                                     	mov    rdx,QWORD PTR [rdx+0x17]
 5b2ff078680:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
 5b2ff078683:	8b 0c 02                                        	mov    ecx,DWORD PTR [rdx+rax*1]
 5b2ff078686:	33 c0                                           	xor    eax,eax
 5b2ff078688:	e9 0b 00 00 00                                  	jmp    0x5b2ff078698
 5b2ff07868d:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
 5b2ff078690:	33 c0                                           	xor    eax,eax
 5b2ff078692:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
 5b2ff078698:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
 5b2ff07869b:	85 d2                                           	test   edx,edx
 5b2ff07869d:	0f 84 07 00 00 00                               	je     0x5b2ff0786aa
 5b2ff0786a3:	8b d1                                           	mov    edx,ecx
 5b2ff0786a5:	e9 69 00 00 00                                  	jmp    0x5b2ff078713
 5b2ff0786aa:	e9 91 00 00 00                                  	jmp    0x5b2ff078740
 5b2ff0786af:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff0786b2:	c4 e3 79 16 eb 01                               	vpextrd ebx,xmm5,0x1
 5b2ff0786b8:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff0786bb:	03 d3                                           	add    edx,ebx
 5b2ff0786bd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff0786c1:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff0786c5:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
 5b2ff0786cb:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
 5b2ff0786ce:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
 5b2ff0786d1:	c5 f9 7e ea                                     	vmovd  edx,xmm5
 5b2ff0786d5:	c1 e2 02                                        	shl    edx,0x2
 5b2ff0786d8:	03 ca                                           	add    ecx,edx
 5b2ff0786da:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
 5b2ff0786dd:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
 5b2ff0786e0:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
 5b2ff0786e6:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff0786e9:	03 cb                                           	add    ecx,ebx
 5b2ff0786eb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff0786ef:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff0786f3:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
 5b2ff0786f9:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
 5b2ff0786fc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
 5b2ff0786ff:	8b ca                                           	mov    ecx,edx
 5b2ff078701:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
 5b2ff078707:	8b 95 c4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x13c]
 5b2ff07870d:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
 5b2ff078713:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078716:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
 5b2ff07871c:	c4 e3 79 16 e8 03                               	vpextrd eax,xmm5,0x3
 5b2ff078722:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078725:	03 d0                                           	add    edx,eax
 5b2ff078727:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff07872b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff07872f:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
 5b2ff078735:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
 5b2ff078738:	8b c1                                           	mov    eax,ecx
 5b2ff07873a:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
 5b2ff078740:	c4 c3 79 22 f7 02                               	vpinsrd xmm6,xmm0,r15d,0x2
 5b2ff078746:	c4 c3 61 22 c0 02                               	vpinsrd xmm0,xmm3,r8d,0x2
 5b2ff07874c:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
 5b2ff078750:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
 5b2ff078754:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
 5b2ff078759:	8b 55 d4                                        	mov    edx,DWORD PTR [rbp-0x2c]
 5b2ff07875c:	c4 e3 51 22 ea 01                               	vpinsrd xmm5,xmm5,edx,0x1
 5b2ff078762:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
 5b2ff078768:	41 83 f9 0f                                     	cmp    r9d,0xf
 5b2ff07876c:	0f 84 bd 00 00 00                               	je     0x5b2ff07882f
 5b2ff078772:	45 85 e4                                        	test   r12d,r12d
 5b2ff078775:	0f 84 24 00 00 00                               	je     0x5b2ff07879f
 5b2ff07877b:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff07877e:	c5 f9 7e db                                     	vmovd  ebx,xmm3
 5b2ff078782:	c1 e3 02                                        	shl    ebx,0x2
 5b2ff078785:	03 d3                                           	add    edx,ebx
 5b2ff078787:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
 5b2ff07878b:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
 5b2ff07878f:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
 5b2ff078795:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
 5b2ff078798:	33 d2                                           	xor    edx,edx
 5b2ff07879a:	e9 0a 00 00 00                                  	jmp    0x5b2ff0787a9
 5b2ff07879f:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
 5b2ff0787a5:	33 c0                                           	xor    eax,eax
 5b2ff0787a7:	33 d2                                           	xor    edx,edx
 5b2ff0787a9:	85 f6                                           	test   esi,esi
 5b2ff0787ab:	0f 84 2a 00 00 00                               	je     0x5b2ff0787db
 5b2ff0787b1:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
 5b2ff0787b4:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
 5b2ff0787ba:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
 5b2ff0787c0:	c1 e0 02                                        	shl    eax,0x2
 5b2ff0787c3:	03 d8                                           	add    ebx,eax
 5b2ff0787c5:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff0787c9:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff0787cd:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
 5b2ff0787d3:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
 5b2ff0787d6:	e9 0e 00 00 00                                  	jmp    0x5b2ff0787e9
 5b2ff0787db:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
 5b2ff0787e1:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
 5b2ff0787e7:	8b ca                                           	mov    ecx,edx
 5b2ff0787e9:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
 5b2ff0787ec:	85 c0                                           	test   eax,eax
 5b2ff0787ee:	0f 84 20 00 00 00                               	je     0x5b2ff078814
 5b2ff0787f4:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0787f7:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
 5b2ff0787fd:	c1 e2 02                                        	shl    edx,0x2
 5b2ff078800:	03 c2                                           	add    eax,edx
 5b2ff078802:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff078806:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
 5b2ff07880a:	8b 1c 02                                        	mov    ebx,DWORD PTR [rdx+rax*1]
 5b2ff07880d:	33 c0                                           	xor    eax,eax
 5b2ff07880f:	e9 04 00 00 00                                  	jmp    0x5b2ff078818
 5b2ff078814:	33 c0                                           	xor    eax,eax
 5b2ff078816:	33 db                                           	xor    ebx,ebx
 5b2ff078818:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
 5b2ff07881b:	85 d2                                           	test   edx,edx
 5b2ff07881d:	0f 84 07 00 00 00                               	je     0x5b2ff07882a
 5b2ff078823:	8b d3                                           	mov    edx,ebx
 5b2ff078825:	e9 77 00 00 00                                  	jmp    0x5b2ff0788a1
 5b2ff07882a:	e9 90 00 00 00                                  	jmp    0x5b2ff0788bf
 5b2ff07882f:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078832:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
 5b2ff078838:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
 5b2ff07883e:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078841:	03 d0                                           	add    edx,eax
 5b2ff078843:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078847:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff07884b:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
 5b2ff078851:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
 5b2ff078854:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078857:	c5 f9 7e d8                                     	vmovd  eax,xmm3
 5b2ff07885b:	c1 e0 02                                        	shl    eax,0x2
 5b2ff07885e:	03 d0                                           	add    edx,eax
 5b2ff078860:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078864:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff078868:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
 5b2ff07886e:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
 5b2ff078871:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff078874:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
 5b2ff07887a:	c1 e0 02                                        	shl    eax,0x2
 5b2ff07887d:	03 d0                                           	add    edx,eax
 5b2ff07887f:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078883:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff078887:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
 5b2ff07888d:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
 5b2ff078890:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
 5b2ff078896:	41 8b d4                                        	mov    edx,r12d
 5b2ff078899:	8b de                                           	mov    ebx,esi
 5b2ff07889b:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
 5b2ff0788a1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
 5b2ff0788a4:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
 5b2ff0788aa:	c1 e6 02                                        	shl    esi,0x2
 5b2ff0788ad:	03 d6                                           	add    edx,esi
 5b2ff0788af:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
 5b2ff0788b3:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
 5b2ff0788b8:	44 8b 24 16                                     	mov    r12d,DWORD PTR [rsi+rdx*1]
 5b2ff0788bc:	41 8b c4                                        	mov    eax,r12d
 5b2ff0788bf:	8b 95 cc fe ff ff                               	mov    edx,DWORD PTR [rbp-0x134]
 5b2ff0788c5:	c4 e3 49 22 ca 03                               	vpinsrd xmm1,xmm6,edx,0x3
 5b2ff0788cb:	8b 95 d0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x130]
 5b2ff0788d1:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
 5b2ff0788d7:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
 5b2ff0788dd:	c5 f9 6e f2                                     	vmovd  xmm6,edx
 5b2ff0788e1:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff0788e6:	c4 e3 49 22 f1 01                               	vpinsrd xmm6,xmm6,ecx,0x1
 5b2ff0788ec:	c4 e3 49 22 f3 02                               	vpinsrd xmm6,xmm6,ebx,0x2
 5b2ff0788f2:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
 5b2ff0788f8:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
 5b2ff0788fe:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
 5b2ff078904:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
 5b2ff078907:	89 9d e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],ebx
 5b2ff07890d:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
 5b2ff078913:	44 89 bd c8 fe ff ff                            	mov    DWORD PTR [rbp-0x138],r15d
 5b2ff07891a:	41 8b d0                                        	mov    edx,r8d
 5b2ff07891d:	c5 fa 7f b5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm6
 5b2ff078925:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff078929:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
 5b2ff078931:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
 5b2ff078935:	8b 9d cc fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x134]
 5b2ff07893b:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
 5b2ff07893e:	44 8b 85 d0 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x130]
 5b2ff078945:	44 8b 7d dc                                     	mov    r15d,DWORD PTR [rbp-0x24]
 5b2ff078949:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
 5b2ff078951:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
 5b2ff078959:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
 5b2ff078961:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
 5b2ff078966:	c5 fa 7f 4d 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm1
 5b2ff07896b:	c5 fa 6f 8d 08 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xf8]
 5b2ff078973:	c5 f0 5c cf                                     	vsubps xmm1,xmm1,xmm7
 5b2ff078977:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
 5b2ff07897b:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
 5b2ff078980:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
 5b2ff078988:	c5 fa 6f 95 e8 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x118]
 5b2ff078990:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
 5b2ff078995:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
 5b2ff07899d:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
 5b2ff0789a1:	c5 c0 5c fa                                     	vsubps xmm7,xmm7,xmm2
 5b2ff0789a5:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
 5b2ff0789ad:	c5 e1 72 d3 18                                  	vpsrld xmm3,xmm3,0x18
 5b2ff0789b2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0789b7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0789bd:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0789c2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0789c7:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0789cc:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0789d0:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0789d4:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0789d9:	c5 c0 59 db                                     	vmulps xmm3,xmm7,xmm3
 5b2ff0789dd:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
 5b2ff0789e2:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
 5b2ff0789e7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0789ec:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
 5b2ff0789f2:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
 5b2ff0789f7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0789fc:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
 5b2ff078a01:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff078a05:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
 5b2ff078a09:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
 5b2ff078a0e:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
 5b2ff078a12:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
 5b2ff078a16:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
 5b2ff078a1a:	c5 d1 72 d6 18                                  	vpsrld xmm5,xmm6,0x18
 5b2ff078a1f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078a24:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
 5b2ff078a2a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
 5b2ff078a2f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078a34:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
 5b2ff078a39:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff078a3d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
 5b2ff078a41:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
 5b2ff078a46:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
 5b2ff078a4a:	c5 fa 7f a5 f8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x108],xmm4
 5b2ff078a52:	c5 fa 6f a5 68 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x98]
 5b2ff078a5a:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
 5b2ff078a5f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078a64:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff078a6a:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff078a6f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078a74:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff078a79:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff078a7d:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff078a81:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff078a86:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
 5b2ff078a8a:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
 5b2ff078a8e:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
 5b2ff078a92:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
 5b2ff078a96:	c5 fa 6f a5 78 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x88]
 5b2ff078a9e:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
 5b2ff078aa8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff078aad:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff078ab1:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
 5b2ff078ab5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078aba:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff078ac0:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff078ac5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078aca:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff078acf:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff078ad3:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff078ad7:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff078adc:	c5 c0 59 e4                                     	vmulps xmm4,xmm7,xmm4
 5b2ff078ae0:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
 5b2ff078ae5:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
 5b2ff078aea:	c5 fa 7f b5 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm6
 5b2ff078af2:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
 5b2ff078af7:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
 5b2ff078afb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078b00:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
 5b2ff078b06:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
 5b2ff078b0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078b10:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
 5b2ff078b15:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff078b19:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
 5b2ff078b1d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
 5b2ff078b22:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
 5b2ff078b26:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
 5b2ff078b2a:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
 5b2ff078b2e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
 5b2ff078b36:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
 5b2ff078b3b:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
 5b2ff078b3f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078b44:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
 5b2ff078b4a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
 5b2ff078b4f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078b54:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
 5b2ff078b59:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff078b5d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
 5b2ff078b61:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
 5b2ff078b66:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
 5b2ff078b6a:	c5 fa 6f b5 68 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x98]
 5b2ff078b72:	c5 fa 7f 7d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm7
 5b2ff078b77:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
 5b2ff078b7c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
 5b2ff078b80:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078b85:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff078b8b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff078b90:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078b95:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff078b9a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff078b9e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff078ba2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff078ba7:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff078bab:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
 5b2ff078baf:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
 5b2ff078bb3:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
 5b2ff078bb7:	c5 fa 6f 6d a8                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x58]
 5b2ff078bbc:	c5 fa 6f b5 78 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x88]
 5b2ff078bc4:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
 5b2ff078bc9:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
 5b2ff078bce:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
 5b2ff078bd2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078bd7:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff078bdd:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff078be2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078be7:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff078bec:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff078bf0:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff078bf4:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff078bf9:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
 5b2ff078bfd:	c5 fa 6f 75 98                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x68]
 5b2ff078c02:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
 5b2ff078c07:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
 5b2ff078c0c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
 5b2ff078c10:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078c15:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff078c1b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff078c20:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078c25:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff078c2a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff078c2e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff078c32:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff078c37:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff078c3b:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
 5b2ff078c3f:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
 5b2ff078c43:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
 5b2ff078c48:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
 5b2ff078c50:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
 5b2ff078c55:	c5 fa 7f 85 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm0
 5b2ff078c5d:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
 5b2ff078c62:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
 5b2ff078c66:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078c6b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff078c71:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff078c76:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078c7b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff078c80:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff078c84:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff078c88:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff078c8d:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
 5b2ff078c91:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
 5b2ff078c99:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
 5b2ff078c9e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
 5b2ff078ca3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
 5b2ff078ca7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078cac:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff078cb2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff078cb7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078cbc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff078cc1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff078cc5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff078cc9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff078cce:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
 5b2ff078cd2:	c5 c8 58 f0                                     	vaddps xmm6,xmm6,xmm0
 5b2ff078cd6:	c5 f0 59 f6                                     	vmulps xmm6,xmm1,xmm6
 5b2ff078cda:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
 5b2ff078cde:	c5 fa 6f 85 18 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xe8]
 5b2ff078ce6:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
 5b2ff078ceb:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
 5b2ff078cf3:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
 5b2ff078cf8:	c5 fa 7f 8d 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm1
 5b2ff078d00:	c5 fa 6f 4d 88                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x78]
 5b2ff078d05:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
 5b2ff078d09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078d0e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff078d14:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff078d19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078d1e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff078d23:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff078d27:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff078d2b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff078d30:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
 5b2ff078d34:	c5 fa 6f 4d 98                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x68]
 5b2ff078d39:	c5 f1 72 d1 08                                  	vpsrld xmm1,xmm1,0x8
 5b2ff078d3e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
 5b2ff078d43:	c5 f1 db cf                                     	vpand  xmm1,xmm1,xmm7
 5b2ff078d47:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078d4c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff078d52:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff078d57:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078d5c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff078d61:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff078d65:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff078d69:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff078d6e:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
 5b2ff078d72:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
 5b2ff078d76:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
 5b2ff078d7a:	c5 fa 6f 8d 48 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xb8]
 5b2ff078d82:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
 5b2ff078d87:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
 5b2ff078d8f:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
 5b2ff078d94:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
 5b2ff078d99:	c5 fa 6f 55 88                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x78]
 5b2ff078d9e:	c5 c1 db fa                                     	vpand  xmm7,xmm7,xmm2
 5b2ff078da2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078da7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff078dad:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff078db2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078db7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff078dbc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff078dc0:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff078dc4:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff078dc9:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
 5b2ff078dcd:	c5 fa 6f 55 b8                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x48]
 5b2ff078dd2:	c5 fa 6f bd 68 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x98]
 5b2ff078dda:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
 5b2ff078ddf:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
 5b2ff078de7:	c5 fa 6f 5d 88                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x78]
 5b2ff078dec:	c5 c1 db fb                                     	vpand  xmm7,xmm7,xmm3
 5b2ff078df0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078df5:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff078dfb:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff078e00:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078e05:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff078e0a:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff078e0e:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff078e12:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff078e17:	c5 e8 59 d7                                     	vmulps xmm2,xmm2,xmm7
 5b2ff078e1b:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
 5b2ff078e1f:	c5 f0 59 ce                                     	vmulps xmm1,xmm1,xmm6
 5b2ff078e23:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
 5b2ff078e27:	e9 c8 01 00 00                                  	jmp    0x5b2ff078ff4
 5b2ff078e2c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
 5b2ff078e30:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
 5b2ff078e33:	8b c1                                           	mov    eax,ecx
 5b2ff078e35:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078e38:	44 03 e0                                        	add    r12d,eax
 5b2ff078e3b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078e3f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff078e43:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
 5b2ff078e49:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
 5b2ff078e4d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
 5b2ff078e51:	8b c3                                           	mov    eax,ebx
 5b2ff078e53:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078e56:	44 03 e0                                        	add    r12d,eax
 5b2ff078e59:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078e5d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff078e61:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
 5b2ff078e67:	42 8b 14 20                                     	mov    edx,DWORD PTR [rax+r12*1]
 5b2ff078e6b:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
 5b2ff078e6f:	45 8b f8                                        	mov    r15d,r8d
 5b2ff078e72:	41 c1 e7 02                                     	shl    r15d,0x2
 5b2ff078e76:	45 03 e7                                        	add    r12d,r15d
 5b2ff078e79:	46 8b 3c 20                                     	mov    r15d,DWORD PTR [rax+r12*1]
 5b2ff078e7d:	44 8b e1                                        	mov    r12d,ecx
 5b2ff078e80:	8b ca                                           	mov    ecx,edx
 5b2ff078e82:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
 5b2ff078e88:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
 5b2ff078e8e:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
 5b2ff078e91:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
 5b2ff078e97:	8b 45 d4                                        	mov    eax,DWORD PTR [rbp-0x2c]
 5b2ff078e9a:	c1 e0 02                                        	shl    eax,0x2
 5b2ff078e9d:	03 f0                                           	add    esi,eax
 5b2ff078e9f:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
 5b2ff078ea3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
 5b2ff078ea7:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
 5b2ff078eaa:	8b 0c 30                                        	mov    ecx,DWORD PTR [rax+rsi*1]
 5b2ff078ead:	8b c1                                           	mov    eax,ecx
 5b2ff078eaf:	8b 4d dc                                        	mov    ecx,DWORD PTR [rbp-0x24]
 5b2ff078eb2:	c4 c1 79 6e e7                                  	vmovd  xmm4,r15d
 5b2ff078eb7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
 5b2ff078ebc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
 5b2ff078ec2:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
 5b2ff078ec8:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
 5b2ff078ece:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
 5b2ff078ed6:	c5 f9 72 d4 18                                  	vpsrld xmm0,xmm4,0x18
 5b2ff078edb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078ee0:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff078ee6:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff078eeb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078ef0:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff078ef5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff078ef9:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff078efd:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff078f02:	4c 8b 15 97 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb97]        # 0x5b2ff078aa0
 5b2ff078f09:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff078f0e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff078f12:	c5 d9 db cb                                     	vpand  xmm1,xmm4,xmm3
 5b2ff078f16:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078f1b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff078f21:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff078f26:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078f2b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff078f30:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff078f34:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff078f38:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff078f3d:	c5 fa 7f 8d 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm1
 5b2ff078f45:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
 5b2ff078f4a:	c5 f1 db cb                                     	vpand  xmm1,xmm1,xmm3
 5b2ff078f4e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078f53:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff078f59:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff078f5e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078f63:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff078f68:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff078f6c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff078f70:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff078f75:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
 5b2ff078f7d:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
 5b2ff078f82:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
 5b2ff078f86:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff078f8b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff078f91:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff078f96:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff078f9b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff078fa0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff078fa4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff078fa8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff078fad:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
 5b2ff078fb2:	c5 fa 7f 6d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm5
 5b2ff078fb7:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
 5b2ff078fbc:	c5 fa 7f 65 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm4
 5b2ff078fc1:	c5 fa 7f 85 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm0
 5b2ff078fc9:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
 5b2ff078fd1:	44 89 a5 e0 fe ff ff                            	mov    DWORD PTR [rbp-0x120],r12d
 5b2ff078fd8:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
 5b2ff078fde:	41 8b f7                                        	mov    esi,r15d
 5b2ff078fe1:	44 8b f9                                        	mov    r15d,ecx
 5b2ff078fe4:	c5 f9 28 c2                                     	vmovapd xmm0,xmm2
 5b2ff078fe8:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
 5b2ff078fec:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
 5b2ff078ff4:	c5 fa 6f 8d 58 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xa8]
 5b2ff078ffc:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
 5b2ff079006:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff07900b:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff07900f:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
 5b2ff079013:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
 5b2ff079017:	41 8b c1                                        	mov    eax,r9d
 5b2ff07901a:	83 e0 01                                        	and    eax,0x1
 5b2ff07901d:	33 c9                                           	xor    ecx,ecx
 5b2ff07901f:	2b c8                                           	sub    ecx,eax
 5b2ff079021:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
 5b2ff079025:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff07902a:	41 8b c1                                        	mov    eax,r9d
 5b2ff07902d:	c1 e0 1e                                        	shl    eax,0x1e
 5b2ff079030:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff079033:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
 5b2ff079039:	41 8b c1                                        	mov    eax,r9d
 5b2ff07903c:	c1 e0 1d                                        	shl    eax,0x1d
 5b2ff07903f:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff079042:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
 5b2ff079048:	41 8b c1                                        	mov    eax,r9d
 5b2ff07904b:	c1 e0 1c                                        	shl    eax,0x1c
 5b2ff07904e:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff079051:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
 5b2ff079057:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
 5b2ff07905b:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
 5b2ff07905f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff079064:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
 5b2ff079068:	48 8b 41 17                                     	mov    rax,QWORD PTR [rcx+0x17]
 5b2ff07906c:	c5 fa 7f 7c 38 30                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x30],xmm7
 5b2ff079072:	c5 d0 59 ca                                     	vmulps xmm1,xmm5,xmm2
 5b2ff079076:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
 5b2ff07907a:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
 5b2ff07907e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff079083:	c5 fa 7f 7c 38 20                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x20],xmm7
 5b2ff079089:	c5 f8 59 ca                                     	vmulps xmm1,xmm0,xmm2
 5b2ff07908d:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
 5b2ff079091:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
 5b2ff079095:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff07909a:	c5 fa 7f 7c 38 10                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x10],xmm7
 5b2ff0790a0:	c5 d8 59 ca                                     	vmulps xmm1,xmm4,xmm2
 5b2ff0790a4:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
 5b2ff0790a8:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
 5b2ff0790ac:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0790b1:	c5 fa 7f 3c 38                                  	vmovdqu XMMWORD PTR [rax+rdi*1],xmm7
 5b2ff0790b6:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
 5b2ff0790bb:	c5 fa 7f a5 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm4
 5b2ff0790c3:	c5 fa 7f ad 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm5
 5b2ff0790cb:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
 5b2ff0790d1:	44 89 85 d0 fe ff ff                            	mov    DWORD PTR [rbp-0x130],r8d
 5b2ff0790d8:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
 5b2ff0790de:	41 8b c7                                        	mov    eax,r15d
 5b2ff0790e1:	8b d6                                           	mov    edx,esi
 5b2ff0790e3:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0790e7:	c5 f9 28 eb                                     	vmovapd xmm5,xmm3
 5b2ff0790eb:	b9 01 00 00 00                                  	mov    ecx,0x1
 5b2ff0790f0:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
 5b2ff0790f6:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
 5b2ff0790f9:	44 8b 45 d4                                     	mov    r8d,DWORD PTR [rbp-0x2c]
 5b2ff0790fd:	44 8b a5 dc fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x124]
 5b2ff079104:	44 8b bd e0 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x120]
 5b2ff07910b:	c5 fa 6f a5 48 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xb8]
 5b2ff079113:	c5 fa 6f b5 58 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xa8]
 5b2ff07911b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
 5b2ff079123:	8b c1                                           	mov    eax,ecx
 5b2ff079125:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
 5b2ff079129:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
 5b2ff07912d:	41 81 aa bc 02 00 00 61 1c 00 00                	sub    DWORD PTR [r10+0x2bc],0x1c61
 5b2ff079138:	0f 88 25 00 00 00                               	js     0x5b2ff079163
 5b2ff07913e:	48 8b e5                                        	mov    rsp,rbp
 5b2ff079141:	5d                                              	pop    rbp
 5b2ff079142:	c2 08 00                                        	ret    0x8
 5b2ff079145:	50                                              	push   rax
 5b2ff079146:	51                                              	push   rcx
 5b2ff079147:	52                                              	push   rdx
 5b2ff079148:	53                                              	push   rbx
 5b2ff079149:	57                                              	push   rdi
 5b2ff07914a:	41 51                                           	push   r9
 5b2ff07914c:	33 c0                                           	xor    eax,eax
 5b2ff07914e:	e8 dd 4d f5 ff                                  	call   0x5b2fefcdf30
 5b2ff079153:	41 59                                           	pop    r9
 5b2ff079155:	5f                                              	pop    rdi
 5b2ff079156:	5b                                              	pop    rbx
 5b2ff079157:	5a                                              	pop    rdx
 5b2ff079158:	59                                              	pop    rcx
 5b2ff079159:	58                                              	pop    rax
 5b2ff07915a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff07915e:	e9 dd e3 ff ff                                  	jmp    0x5b2ff077540
 5b2ff079163:	50                                              	push   rax
 5b2ff079164:	e8 f7 4b f5 ff                                  	call   0x5b2fefcdd60
 5b2ff079169:	58                                              	pop    rax
 5b2ff07916a:	eb d2                                           	jmp    0x5b2ff07913e
 5b2ff07916c:	36 00 00                                        	ss add BYTE PTR [rax],al
 5b2ff07916f:	00 08                                           	add    BYTE PTR [rax],cl
	...
