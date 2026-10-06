
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

000023a8d3571880 <.data>:
    23a8d3571880:	55                                              	push   rbp
    23a8d3571881:	48 8b ec                                        	mov    rbp,rsp
    23a8d3571884:	6a 30                                           	push   0x30
    23a8d3571886:	56                                              	push   rsi
    23a8d3571887:	48 83 ec 70                                     	sub    rsp,0x70
    23a8d357188b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d357188f:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    23a8d3571893:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    23a8d3571898:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    23a8d357189d:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    23a8d35718a2:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    23a8d35718a6:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    23a8d35718aa:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    23a8d35718ae:	0f 86 52 02 00 00                               	jbe    0x23a8d3571b06
    23a8d35718b4:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    23a8d35718b8:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
    23a8d35718bc:	4d 0b c6                                        	or     r8,r14
    23a8d35718bf:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
    23a8d35718c3:	45 8d 4b 90                                     	lea    r9d,[r11-0x70]
    23a8d35718c7:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
    23a8d35718cb:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d35718cf:	c4 a1 7a 7f 64 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm4
    23a8d35718d6:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    23a8d35718dd:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    23a8d35718e4:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    23a8d35718ea:	c4 a1 7a 7f 4c 0f 60                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x60],xmm1
    23a8d35718f1:	c4 a1 7a 7f 54 0f 50                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x50],xmm2
    23a8d35718f8:	c4 a1 7a 7f 5c 0f 40                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x40],xmm3
    23a8d35718ff:	45 8d 59 60                                     	lea    r11d,[r9+0x60]
    23a8d3571903:	45 8d 61 50                                     	lea    r12d,[r9+0x50]
    23a8d3571907:	41 8d 59 40                                     	lea    ebx,[r9+0x40]
    23a8d357190b:	51                                              	push   rcx
    23a8d357190c:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    23a8d3571910:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
    23a8d3571914:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    23a8d3571918:	44 8b ca                                        	mov    r9d,edx
    23a8d357191b:	41 8b d3                                        	mov    edx,r11d
    23a8d357191e:	41 8b cc                                        	mov    ecx,r12d
    23a8d3571921:	e8 52 ac ed ff                                  	call   0x23a8d344c578
    23a8d3571926:	85 c0                                           	test   eax,eax
    23a8d3571928:	0f 85 c8 01 00 00                               	jne    0x23a8d3571af6
    23a8d357192e:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    23a8d3571932:	0f 84 48 00 00 00                               	je     0x23a8d3571980
    23a8d3571938:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    23a8d357193b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d357193f:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    23a8d3571944:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    23a8d3571949:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    23a8d357194e:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    23a8d3571953:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    23a8d3571958:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    23a8d357195d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    23a8d3571961:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    23a8d3571966:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    23a8d357196a:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    23a8d357196f:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    23a8d3571973:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3571977:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d357197b:	e8 b0 a8 ed ff                                  	call   0x23a8d344c230
    23a8d3571980:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    23a8d3571984:	0f 84 4b 00 00 00                               	je     0x23a8d35719d5
    23a8d357198a:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    23a8d357198d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3571991:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    23a8d3571996:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    23a8d357199b:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    23a8d35719a0:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    23a8d35719a5:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    23a8d35719aa:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    23a8d35719af:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    23a8d35719b3:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    23a8d35719b8:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    23a8d35719bc:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    23a8d35719c1:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    23a8d35719c5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35719c8:	44 8d 4f 10                                     	lea    r9d,[rdi+0x10]
    23a8d35719cc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35719d0:	e8 5b a8 ed ff                                  	call   0x23a8d344c230
    23a8d35719d5:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    23a8d35719d9:	0f 84 4e 00 00 00                               	je     0x23a8d3571a2d
    23a8d35719df:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    23a8d35719e2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d35719e6:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    23a8d35719eb:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    23a8d35719f0:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    23a8d35719f5:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    23a8d35719fa:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    23a8d35719ff:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    23a8d3571a04:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    23a8d3571a09:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    23a8d3571a0e:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    23a8d3571a13:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    23a8d3571a18:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    23a8d3571a1d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3571a20:	44 8d 4f 20                                     	lea    r9d,[rdi+0x20]
    23a8d3571a24:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3571a28:	e8 03 a8 ed ff                                  	call   0x23a8d344c230
    23a8d3571a2d:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    23a8d3571a31:	0f 84 4e 00 00 00                               	je     0x23a8d3571a85
    23a8d3571a37:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    23a8d3571a3a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3571a3e:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    23a8d3571a43:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    23a8d3571a48:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    23a8d3571a4d:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    23a8d3571a52:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    23a8d3571a57:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    23a8d3571a5c:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    23a8d3571a61:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    23a8d3571a66:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    23a8d3571a6b:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    23a8d3571a70:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    23a8d3571a75:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3571a78:	44 8d 4f 30                                     	lea    r9d,[rdi+0x30]
    23a8d3571a7c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3571a80:	e8 ab a7 ed ff                                  	call   0x23a8d344c230
    23a8d3571a85:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3571a88:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3571a8c:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
    23a8d3571a93:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
    23a8d3571a9a:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    23a8d3571a9e:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
    23a8d3571aa4:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
    23a8d3571aab:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    23a8d3571aaf:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    23a8d3571ab3:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    23a8d3571ab7:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
    23a8d3571abe:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    23a8d3571ac2:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
    23a8d3571ac9:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    23a8d3571acd:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    23a8d3571ad1:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    23a8d3571ad5:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
    23a8d3571adc:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    23a8d3571ae0:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    23a8d3571ae6:	83 c7 70                                        	add    edi,0x70
    23a8d3571ae9:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    23a8d3571aed:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    23a8d3571af1:	48 8b e5                                        	mov    rsp,rbp
    23a8d3571af4:	5d                                              	pop    rbp
    23a8d3571af5:	c3                                              	ret
    23a8d3571af6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3571af9:	83 c7 70                                        	add    edi,0x70
    23a8d3571afc:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    23a8d3571b00:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    23a8d3571b04:	eb eb                                           	jmp    0x23a8d3571af1
    23a8d3571b06:	bf 10 00 00 00                                  	mov    edi,0x10
    23a8d3571b0b:	d1 ff                                           	sar    edi,1
    23a8d3571b0d:	48 63 ff                                        	movsxd rdi,edi
    23a8d3571b10:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    23a8d3571b15:	48 8b c7                                        	mov    rax,rdi
    23a8d3571b18:	e8 13 d4 ed ff                                  	call   0x23a8d344ef30
    23a8d3571b1d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d3571b20:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3571b24:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    23a8d3571b29:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    23a8d3571b2e:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    23a8d3571b33:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    23a8d3571b36:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    23a8d3571b39:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
    23a8d3571b3e:	e9 71 fd ff ff                                  	jmp    0x23a8d35718b4
    23a8d3571b43:	90                                              	nop
    23a8d3571b44:	12 00                                           	adc    al,BYTE PTR [rax]
    23a8d3571b46:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3571b48:	10 00                                           	adc    BYTE PTR [rax],al
    23a8d3571b4a:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3571b4c:	a5                                              	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
    23a8d3571b4d:	01 1b                                           	add    DWORD PTR [rbx],ebx
    23a8d3571b4f:	05 f7 03 1b 05                                  	add    eax,0x51b03f7
	...
