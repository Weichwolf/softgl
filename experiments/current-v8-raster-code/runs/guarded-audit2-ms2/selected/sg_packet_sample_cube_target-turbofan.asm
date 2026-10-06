
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

00002989c628b700 <.data>:
    2989c628b700:	55                                              	push   rbp
    2989c628b701:	48 8b ec                                        	mov    rbp,rsp
    2989c628b704:	6a 30                                           	push   0x30
    2989c628b706:	56                                              	push   rsi
    2989c628b707:	48 83 ec 70                                     	sub    rsp,0x70
    2989c628b70b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c628b70f:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    2989c628b713:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    2989c628b718:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    2989c628b71d:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    2989c628b722:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    2989c628b726:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    2989c628b72a:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    2989c628b72e:	0f 86 52 02 00 00                               	jbe    0x2989c628b986
    2989c628b734:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    2989c628b738:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
    2989c628b73c:	4d 0b c6                                        	or     r8,r14
    2989c628b73f:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
    2989c628b743:	45 8d 4b 90                                     	lea    r9d,[r11-0x70]
    2989c628b747:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
    2989c628b74b:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c628b74f:	c4 a1 7a 7f 64 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm4
    2989c628b756:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    2989c628b75d:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    2989c628b764:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    2989c628b76a:	c4 a1 7a 7f 4c 0f 60                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x60],xmm1
    2989c628b771:	c4 a1 7a 7f 54 0f 50                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x50],xmm2
    2989c628b778:	c4 a1 7a 7f 5c 0f 40                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x40],xmm3
    2989c628b77f:	45 8d 59 60                                     	lea    r11d,[r9+0x60]
    2989c628b783:	45 8d 61 50                                     	lea    r12d,[r9+0x50]
    2989c628b787:	41 8d 59 40                                     	lea    ebx,[r9+0x40]
    2989c628b78b:	51                                              	push   rcx
    2989c628b78c:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    2989c628b790:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
    2989c628b794:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    2989c628b798:	44 8b ca                                        	mov    r9d,edx
    2989c628b79b:	41 8b d3                                        	mov    edx,r11d
    2989c628b79e:	41 8b cc                                        	mov    ecx,r12d
    2989c628b7a1:	e8 d2 fd ee ff                                  	call   0x2989c617b578
    2989c628b7a6:	85 c0                                           	test   eax,eax
    2989c628b7a8:	0f 85 c8 01 00 00                               	jne    0x2989c628b976
    2989c628b7ae:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    2989c628b7b2:	0f 84 48 00 00 00                               	je     0x2989c628b800
    2989c628b7b8:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    2989c628b7bb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628b7bf:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    2989c628b7c4:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    2989c628b7c9:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    2989c628b7ce:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    2989c628b7d3:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    2989c628b7d8:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    2989c628b7dd:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    2989c628b7e1:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    2989c628b7e6:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    2989c628b7ea:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    2989c628b7ef:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    2989c628b7f3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628b7f7:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c628b7fb:	e8 30 fa ee ff                                  	call   0x2989c617b230
    2989c628b800:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    2989c628b804:	0f 84 4b 00 00 00                               	je     0x2989c628b855
    2989c628b80a:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    2989c628b80d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628b811:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    2989c628b816:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    2989c628b81b:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    2989c628b820:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    2989c628b825:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    2989c628b82a:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    2989c628b82f:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    2989c628b833:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    2989c628b838:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    2989c628b83c:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    2989c628b841:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    2989c628b845:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628b848:	44 8d 4f 10                                     	lea    r9d,[rdi+0x10]
    2989c628b84c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628b850:	e8 db f9 ee ff                                  	call   0x2989c617b230
    2989c628b855:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    2989c628b859:	0f 84 4e 00 00 00                               	je     0x2989c628b8ad
    2989c628b85f:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    2989c628b862:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628b866:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    2989c628b86b:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    2989c628b870:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    2989c628b875:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    2989c628b87a:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    2989c628b87f:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    2989c628b884:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    2989c628b889:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    2989c628b88e:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    2989c628b893:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    2989c628b898:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    2989c628b89d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628b8a0:	44 8d 4f 20                                     	lea    r9d,[rdi+0x20]
    2989c628b8a4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628b8a8:	e8 83 f9 ee ff                                  	call   0x2989c617b230
    2989c628b8ad:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    2989c628b8b1:	0f 84 4e 00 00 00                               	je     0x2989c628b905
    2989c628b8b7:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    2989c628b8ba:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628b8be:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    2989c628b8c3:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    2989c628b8c8:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    2989c628b8cd:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    2989c628b8d2:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    2989c628b8d7:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    2989c628b8dc:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    2989c628b8e1:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    2989c628b8e6:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    2989c628b8eb:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    2989c628b8f0:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    2989c628b8f5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628b8f8:	44 8d 4f 30                                     	lea    r9d,[rdi+0x30]
    2989c628b8fc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628b900:	e8 2b f9 ee ff                                  	call   0x2989c617b230
    2989c628b905:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628b908:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628b90c:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
    2989c628b913:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
    2989c628b91a:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    2989c628b91e:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
    2989c628b924:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
    2989c628b92b:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    2989c628b92f:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    2989c628b933:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    2989c628b937:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
    2989c628b93e:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    2989c628b942:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
    2989c628b949:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    2989c628b94d:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    2989c628b951:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    2989c628b955:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
    2989c628b95c:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    2989c628b960:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    2989c628b966:	83 c7 70                                        	add    edi,0x70
    2989c628b969:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    2989c628b96d:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    2989c628b971:	48 8b e5                                        	mov    rsp,rbp
    2989c628b974:	5d                                              	pop    rbp
    2989c628b975:	c3                                              	ret
    2989c628b976:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628b979:	83 c7 70                                        	add    edi,0x70
    2989c628b97c:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    2989c628b980:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    2989c628b984:	eb eb                                           	jmp    0x2989c628b971
    2989c628b986:	bf 10 00 00 00                                  	mov    edi,0x10
    2989c628b98b:	d1 ff                                           	sar    edi,1
    2989c628b98d:	48 63 ff                                        	movsxd rdi,edi
    2989c628b990:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    2989c628b995:	48 8b c7                                        	mov    rax,rdi
    2989c628b998:	e8 93 25 ef ff                                  	call   0x2989c617df30
    2989c628b99d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c628b9a0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628b9a4:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    2989c628b9a9:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    2989c628b9ae:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    2989c628b9b3:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    2989c628b9b6:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    2989c628b9b9:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
    2989c628b9be:	e9 71 fd ff ff                                  	jmp    0x2989c628b734
    2989c628b9c3:	90                                              	nop
    2989c628b9c4:	12 00                                           	adc    al,BYTE PTR [rax]
    2989c628b9c6:	00 00                                           	add    BYTE PTR [rax],al
    2989c628b9c8:	10 00                                           	adc    BYTE PTR [rax],al
    2989c628b9ca:	00 00                                           	add    BYTE PTR [rax],al
    2989c628b9cc:	a5                                              	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
    2989c628b9cd:	01 1b                                           	add    DWORD PTR [rbx],ebx
    2989c628b9cf:	05 f7 03 1b 05                                  	add    eax,0x51b03f7
	...
