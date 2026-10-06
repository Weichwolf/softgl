
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

000010402e8be8c0 <.data>:
    10402e8be8c0:	55                                              	push   rbp
    10402e8be8c1:	48 8b ec                                        	mov    rbp,rsp
    10402e8be8c4:	6a 30                                           	push   0x30
    10402e8be8c6:	56                                              	push   rsi
    10402e8be8c7:	48 83 ec 70                                     	sub    rsp,0x70
    10402e8be8cb:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e8be8cf:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    10402e8be8d3:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    10402e8be8d8:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    10402e8be8dd:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    10402e8be8e2:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    10402e8be8e6:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    10402e8be8ea:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    10402e8be8ee:	0f 86 52 02 00 00                               	jbe    0x10402e8beb46
    10402e8be8f4:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    10402e8be8f8:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
    10402e8be8fc:	4d 0b c6                                        	or     r8,r14
    10402e8be8ff:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
    10402e8be903:	45 8d 4b 90                                     	lea    r9d,[r11-0x70]
    10402e8be907:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
    10402e8be90b:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    10402e8be90f:	c4 a1 7a 7f 64 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm4
    10402e8be916:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    10402e8be91d:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    10402e8be924:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    10402e8be92a:	c4 a1 7a 7f 4c 0f 60                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x60],xmm1
    10402e8be931:	c4 a1 7a 7f 54 0f 50                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x50],xmm2
    10402e8be938:	c4 a1 7a 7f 5c 0f 40                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x40],xmm3
    10402e8be93f:	45 8d 59 60                                     	lea    r11d,[r9+0x60]
    10402e8be943:	45 8d 61 50                                     	lea    r12d,[r9+0x50]
    10402e8be947:	41 8d 59 40                                     	lea    ebx,[r9+0x40]
    10402e8be94b:	51                                              	push   rcx
    10402e8be94c:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    10402e8be950:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
    10402e8be954:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    10402e8be958:	44 8b ca                                        	mov    r9d,edx
    10402e8be95b:	41 8b d3                                        	mov    edx,r11d
    10402e8be95e:	41 8b cc                                        	mov    ecx,r12d
    10402e8be961:	e8 12 7c ed ff                                  	call   0x10402e796578
    10402e8be966:	85 c0                                           	test   eax,eax
    10402e8be968:	0f 85 c8 01 00 00                               	jne    0x10402e8beb36
    10402e8be96e:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    10402e8be972:	0f 84 48 00 00 00                               	je     0x10402e8be9c0
    10402e8be978:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    10402e8be97b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8be97f:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    10402e8be984:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    10402e8be989:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8be98e:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    10402e8be993:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    10402e8be998:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    10402e8be99d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    10402e8be9a1:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    10402e8be9a6:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    10402e8be9aa:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    10402e8be9af:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    10402e8be9b3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be9b7:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8be9bb:	e8 70 78 ed ff                                  	call   0x10402e796230
    10402e8be9c0:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    10402e8be9c4:	0f 84 4b 00 00 00                               	je     0x10402e8bea15
    10402e8be9ca:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    10402e8be9cd:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8be9d1:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    10402e8be9d6:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    10402e8be9db:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8be9e0:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    10402e8be9e5:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    10402e8be9ea:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    10402e8be9ef:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    10402e8be9f3:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    10402e8be9f8:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    10402e8be9fc:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    10402e8bea01:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    10402e8bea05:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8bea08:	44 8d 4f 10                                     	lea    r9d,[rdi+0x10]
    10402e8bea0c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bea10:	e8 1b 78 ed ff                                  	call   0x10402e796230
    10402e8bea15:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    10402e8bea19:	0f 84 4e 00 00 00                               	je     0x10402e8bea6d
    10402e8bea1f:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    10402e8bea22:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bea26:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    10402e8bea2b:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    10402e8bea30:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8bea35:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    10402e8bea3a:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    10402e8bea3f:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    10402e8bea44:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    10402e8bea49:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    10402e8bea4e:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    10402e8bea53:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    10402e8bea58:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    10402e8bea5d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8bea60:	44 8d 4f 20                                     	lea    r9d,[rdi+0x20]
    10402e8bea64:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bea68:	e8 c3 77 ed ff                                  	call   0x10402e796230
    10402e8bea6d:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    10402e8bea71:	0f 84 4e 00 00 00                               	je     0x10402e8beac5
    10402e8bea77:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    10402e8bea7a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bea7e:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    10402e8bea83:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    10402e8bea88:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8bea8d:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    10402e8bea92:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    10402e8bea97:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    10402e8bea9c:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    10402e8beaa1:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    10402e8beaa6:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    10402e8beaab:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    10402e8beab0:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    10402e8beab5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8beab8:	44 8d 4f 30                                     	lea    r9d,[rdi+0x30]
    10402e8beabc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8beac0:	e8 6b 77 ed ff                                  	call   0x10402e796230
    10402e8beac5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8beac8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8beacc:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
    10402e8bead3:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
    10402e8beada:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    10402e8beade:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
    10402e8beae4:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
    10402e8beaeb:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    10402e8beaef:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    10402e8beaf3:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    10402e8beaf7:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
    10402e8beafe:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    10402e8beb02:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
    10402e8beb09:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    10402e8beb0d:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    10402e8beb11:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    10402e8beb15:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
    10402e8beb1c:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    10402e8beb20:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    10402e8beb26:	83 c7 70                                        	add    edi,0x70
    10402e8beb29:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    10402e8beb2d:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    10402e8beb31:	48 8b e5                                        	mov    rsp,rbp
    10402e8beb34:	5d                                              	pop    rbp
    10402e8beb35:	c3                                              	ret
    10402e8beb36:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8beb39:	83 c7 70                                        	add    edi,0x70
    10402e8beb3c:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    10402e8beb40:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    10402e8beb44:	eb eb                                           	jmp    0x10402e8beb31
    10402e8beb46:	bf 10 00 00 00                                  	mov    edi,0x10
    10402e8beb4b:	d1 ff                                           	sar    edi,1
    10402e8beb4d:	48 63 ff                                        	movsxd rdi,edi
    10402e8beb50:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8beb55:	48 8b c7                                        	mov    rax,rdi
    10402e8beb58:	e8 d3 a3 ed ff                                  	call   0x10402e798f30
    10402e8beb5d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e8beb60:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8beb64:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    10402e8beb69:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    10402e8beb6e:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    10402e8beb73:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    10402e8beb76:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    10402e8beb79:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
    10402e8beb7e:	e9 71 fd ff ff                                  	jmp    0x10402e8be8f4
    10402e8beb83:	90                                              	nop
    10402e8beb84:	12 00                                           	adc    al,BYTE PTR [rax]
    10402e8beb86:	00 00                                           	add    BYTE PTR [rax],al
    10402e8beb88:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8beb8a:	00 00                                           	add    BYTE PTR [rax],al
    10402e8beb8c:	a5                                              	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
    10402e8beb8d:	01 1b                                           	add    DWORD PTR [rbx],ebx
    10402e8beb8f:	05 f7 03 1b 05                                  	add    eax,0x51b03f7
	...
