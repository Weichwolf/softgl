
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

0000214fa494fe40 <.data>:
    214fa494fe40:	55                                              	push   rbp
    214fa494fe41:	48 8b ec                                        	mov    rbp,rsp
    214fa494fe44:	6a 30                                           	push   0x30
    214fa494fe46:	56                                              	push   rsi
    214fa494fe47:	48 83 ec 70                                     	sub    rsp,0x70
    214fa494fe4b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa494fe4f:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    214fa494fe53:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    214fa494fe58:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    214fa494fe5d:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    214fa494fe62:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    214fa494fe66:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    214fa494fe6a:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    214fa494fe6e:	0f 86 52 02 00 00                               	jbe    0x214fa49500c6
    214fa494fe74:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    214fa494fe78:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
    214fa494fe7c:	4d 0b c6                                        	or     r8,r14
    214fa494fe7f:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
    214fa494fe83:	45 8d 4b 90                                     	lea    r9d,[r11-0x70]
    214fa494fe87:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
    214fa494fe8b:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    214fa494fe8f:	c4 a1 7a 7f 64 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm4
    214fa494fe96:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    214fa494fe9d:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    214fa494fea4:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    214fa494feaa:	c4 a1 7a 7f 4c 0f 60                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x60],xmm1
    214fa494feb1:	c4 a1 7a 7f 54 0f 50                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x50],xmm2
    214fa494feb8:	c4 a1 7a 7f 5c 0f 40                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x40],xmm3
    214fa494febf:	45 8d 59 60                                     	lea    r11d,[r9+0x60]
    214fa494fec3:	45 8d 61 50                                     	lea    r12d,[r9+0x50]
    214fa494fec7:	41 8d 59 40                                     	lea    ebx,[r9+0x40]
    214fa494fecb:	51                                              	push   rcx
    214fa494fecc:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    214fa494fed0:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
    214fa494fed4:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    214fa494fed8:	44 8b ca                                        	mov    r9d,edx
    214fa494fedb:	41 8b d3                                        	mov    edx,r11d
    214fa494fede:	41 8b cc                                        	mov    ecx,r12d
    214fa494fee1:	e8 92 86 ed ff                                  	call   0x214fa4828578
    214fa494fee6:	85 c0                                           	test   eax,eax
    214fa494fee8:	0f 85 c8 01 00 00                               	jne    0x214fa49500b6
    214fa494feee:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    214fa494fef2:	0f 84 48 00 00 00                               	je     0x214fa494ff40
    214fa494fef8:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    214fa494fefb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494feff:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    214fa494ff04:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    214fa494ff09:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa494ff0e:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    214fa494ff13:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    214fa494ff18:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    214fa494ff1d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    214fa494ff21:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    214fa494ff26:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    214fa494ff2a:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    214fa494ff2f:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    214fa494ff33:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494ff37:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa494ff3b:	e8 f0 82 ed ff                                  	call   0x214fa4828230
    214fa494ff40:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    214fa494ff44:	0f 84 4b 00 00 00                               	je     0x214fa494ff95
    214fa494ff4a:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    214fa494ff4d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494ff51:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    214fa494ff56:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    214fa494ff5b:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa494ff60:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    214fa494ff65:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    214fa494ff6a:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    214fa494ff6f:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    214fa494ff73:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    214fa494ff78:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    214fa494ff7c:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    214fa494ff81:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    214fa494ff85:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494ff88:	44 8d 4f 10                                     	lea    r9d,[rdi+0x10]
    214fa494ff8c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494ff90:	e8 9b 82 ed ff                                  	call   0x214fa4828230
    214fa494ff95:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    214fa494ff99:	0f 84 4e 00 00 00                               	je     0x214fa494ffed
    214fa494ff9f:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    214fa494ffa2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494ffa6:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    214fa494ffab:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    214fa494ffb0:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa494ffb5:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    214fa494ffba:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    214fa494ffbf:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    214fa494ffc4:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    214fa494ffc9:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    214fa494ffce:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    214fa494ffd3:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    214fa494ffd8:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    214fa494ffdd:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494ffe0:	44 8d 4f 20                                     	lea    r9d,[rdi+0x20]
    214fa494ffe4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494ffe8:	e8 43 82 ed ff                                  	call   0x214fa4828230
    214fa494ffed:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    214fa494fff1:	0f 84 4e 00 00 00                               	je     0x214fa4950045
    214fa494fff7:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    214fa494fffa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494fffe:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    214fa4950003:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    214fa4950008:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa495000d:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    214fa4950012:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    214fa4950017:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    214fa495001c:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    214fa4950021:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    214fa4950026:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    214fa495002b:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    214fa4950030:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    214fa4950035:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4950038:	44 8d 4f 30                                     	lea    r9d,[rdi+0x30]
    214fa495003c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4950040:	e8 eb 81 ed ff                                  	call   0x214fa4828230
    214fa4950045:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4950048:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa495004c:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
    214fa4950053:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
    214fa495005a:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    214fa495005e:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
    214fa4950064:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
    214fa495006b:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    214fa495006f:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    214fa4950073:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    214fa4950077:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
    214fa495007e:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    214fa4950082:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
    214fa4950089:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    214fa495008d:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    214fa4950091:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    214fa4950095:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
    214fa495009c:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    214fa49500a0:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    214fa49500a6:	83 c7 70                                        	add    edi,0x70
    214fa49500a9:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    214fa49500ad:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    214fa49500b1:	48 8b e5                                        	mov    rsp,rbp
    214fa49500b4:	5d                                              	pop    rbp
    214fa49500b5:	c3                                              	ret
    214fa49500b6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49500b9:	83 c7 70                                        	add    edi,0x70
    214fa49500bc:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    214fa49500c0:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    214fa49500c4:	eb eb                                           	jmp    0x214fa49500b1
    214fa49500c6:	bf 10 00 00 00                                  	mov    edi,0x10
    214fa49500cb:	d1 ff                                           	sar    edi,1
    214fa49500cd:	48 63 ff                                        	movsxd rdi,edi
    214fa49500d0:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa49500d5:	48 8b c7                                        	mov    rax,rdi
    214fa49500d8:	e8 53 ae ed ff                                  	call   0x214fa482af30
    214fa49500dd:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa49500e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49500e4:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    214fa49500e9:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    214fa49500ee:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    214fa49500f3:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    214fa49500f6:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    214fa49500f9:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
    214fa49500fe:	e9 71 fd ff ff                                  	jmp    0x214fa494fe74
    214fa4950103:	90                                              	nop
    214fa4950104:	12 00                                           	adc    al,BYTE PTR [rax]
    214fa4950106:	00 00                                           	add    BYTE PTR [rax],al
    214fa4950108:	10 00                                           	adc    BYTE PTR [rax],al
    214fa495010a:	00 00                                           	add    BYTE PTR [rax],al
    214fa495010c:	a5                                              	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
    214fa495010d:	01 1b                                           	add    DWORD PTR [rbx],ebx
    214fa495010f:	05 f7 03 1b 05                                  	add    eax,0x51b03f7
	...
