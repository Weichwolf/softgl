
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms0/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

00001d2b7c491140 <.data>:
    1d2b7c491140:	55                                              	push   rbp
    1d2b7c491141:	48 8b ec                                        	mov    rbp,rsp
    1d2b7c491144:	6a 30                                           	push   0x30
    1d2b7c491146:	56                                              	push   rsi
    1d2b7c491147:	48 83 ec 70                                     	sub    rsp,0x70
    1d2b7c49114b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c49114f:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    1d2b7c491153:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    1d2b7c491158:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    1d2b7c49115d:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    1d2b7c491162:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    1d2b7c491166:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    1d2b7c49116a:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    1d2b7c49116e:	0f 86 52 02 00 00                               	jbe    0x1d2b7c4913c6
    1d2b7c491174:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    1d2b7c491178:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
    1d2b7c49117c:	4d 0b c6                                        	or     r8,r14
    1d2b7c49117f:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
    1d2b7c491183:	45 8d 4b 90                                     	lea    r9d,[r11-0x70]
    1d2b7c491187:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
    1d2b7c49118b:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    1d2b7c49118f:	c4 a1 7a 7f 64 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm4
    1d2b7c491196:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    1d2b7c49119d:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    1d2b7c4911a4:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    1d2b7c4911aa:	c4 a1 7a 7f 4c 0f 60                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x60],xmm1
    1d2b7c4911b1:	c4 a1 7a 7f 54 0f 50                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x50],xmm2
    1d2b7c4911b8:	c4 a1 7a 7f 5c 0f 40                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x40],xmm3
    1d2b7c4911bf:	45 8d 59 60                                     	lea    r11d,[r9+0x60]
    1d2b7c4911c3:	45 8d 61 50                                     	lea    r12d,[r9+0x50]
    1d2b7c4911c7:	41 8d 59 40                                     	lea    ebx,[r9+0x40]
    1d2b7c4911cb:	51                                              	push   rcx
    1d2b7c4911cc:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    1d2b7c4911d0:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
    1d2b7c4911d4:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    1d2b7c4911d8:	44 8b ca                                        	mov    r9d,edx
    1d2b7c4911db:	41 8b d3                                        	mov    edx,r11d
    1d2b7c4911de:	41 8b cc                                        	mov    ecx,r12d
    1d2b7c4911e1:	e8 92 b3 f2 ff                                  	call   0x1d2b7c3bc578
    1d2b7c4911e6:	85 c0                                           	test   eax,eax
    1d2b7c4911e8:	0f 85 c8 01 00 00                               	jne    0x1d2b7c4913b6
    1d2b7c4911ee:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    1d2b7c4911f2:	0f 84 48 00 00 00                               	je     0x1d2b7c491240
    1d2b7c4911f8:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    1d2b7c4911fb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4911ff:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    1d2b7c491204:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    1d2b7c491209:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    1d2b7c49120e:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    1d2b7c491213:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    1d2b7c491218:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    1d2b7c49121d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    1d2b7c491221:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    1d2b7c491226:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    1d2b7c49122a:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    1d2b7c49122f:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    1d2b7c491233:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c491237:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c49123b:	e8 f0 af f2 ff                                  	call   0x1d2b7c3bc230
    1d2b7c491240:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    1d2b7c491244:	0f 84 4b 00 00 00                               	je     0x1d2b7c491295
    1d2b7c49124a:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    1d2b7c49124d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c491251:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    1d2b7c491256:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    1d2b7c49125b:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    1d2b7c491260:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    1d2b7c491265:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    1d2b7c49126a:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    1d2b7c49126f:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    1d2b7c491273:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    1d2b7c491278:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    1d2b7c49127c:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    1d2b7c491281:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    1d2b7c491285:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c491288:	44 8d 4f 10                                     	lea    r9d,[rdi+0x10]
    1d2b7c49128c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c491290:	e8 9b af f2 ff                                  	call   0x1d2b7c3bc230
    1d2b7c491295:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    1d2b7c491299:	0f 84 4e 00 00 00                               	je     0x1d2b7c4912ed
    1d2b7c49129f:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    1d2b7c4912a2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4912a6:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    1d2b7c4912ab:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    1d2b7c4912b0:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    1d2b7c4912b5:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    1d2b7c4912ba:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    1d2b7c4912bf:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    1d2b7c4912c4:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    1d2b7c4912c9:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    1d2b7c4912ce:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    1d2b7c4912d3:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    1d2b7c4912d8:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    1d2b7c4912dd:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4912e0:	44 8d 4f 20                                     	lea    r9d,[rdi+0x20]
    1d2b7c4912e4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4912e8:	e8 43 af f2 ff                                  	call   0x1d2b7c3bc230
    1d2b7c4912ed:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    1d2b7c4912f1:	0f 84 4e 00 00 00                               	je     0x1d2b7c491345
    1d2b7c4912f7:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
    1d2b7c4912fa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4912fe:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
    1d2b7c491303:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
    1d2b7c491308:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    1d2b7c49130d:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    1d2b7c491312:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
    1d2b7c491317:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    1d2b7c49131c:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    1d2b7c491321:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    1d2b7c491326:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    1d2b7c49132b:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    1d2b7c491330:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    1d2b7c491335:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c491338:	44 8d 4f 30                                     	lea    r9d,[rdi+0x30]
    1d2b7c49133c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c491340:	e8 eb ae f2 ff                                  	call   0x1d2b7c3bc230
    1d2b7c491345:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c491348:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c49134c:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
    1d2b7c491353:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
    1d2b7c49135a:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    1d2b7c49135e:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
    1d2b7c491364:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
    1d2b7c49136b:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    1d2b7c49136f:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    1d2b7c491373:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    1d2b7c491377:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
    1d2b7c49137e:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    1d2b7c491382:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
    1d2b7c491389:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    1d2b7c49138d:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    1d2b7c491391:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    1d2b7c491395:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
    1d2b7c49139c:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    1d2b7c4913a0:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    1d2b7c4913a6:	83 c7 70                                        	add    edi,0x70
    1d2b7c4913a9:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    1d2b7c4913ad:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    1d2b7c4913b1:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c4913b4:	5d                                              	pop    rbp
    1d2b7c4913b5:	c3                                              	ret
    1d2b7c4913b6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4913b9:	83 c7 70                                        	add    edi,0x70
    1d2b7c4913bc:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    1d2b7c4913c0:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    1d2b7c4913c4:	eb eb                                           	jmp    0x1d2b7c4913b1
    1d2b7c4913c6:	bf 10 00 00 00                                  	mov    edi,0x10
    1d2b7c4913cb:	d1 ff                                           	sar    edi,1
    1d2b7c4913cd:	48 63 ff                                        	movsxd rdi,edi
    1d2b7c4913d0:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    1d2b7c4913d5:	48 8b c7                                        	mov    rax,rdi
    1d2b7c4913d8:	e8 53 db f2 ff                                  	call   0x1d2b7c3bef30
    1d2b7c4913dd:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    1d2b7c4913e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4913e4:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    1d2b7c4913e9:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    1d2b7c4913ee:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    1d2b7c4913f3:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    1d2b7c4913f6:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    1d2b7c4913f9:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
    1d2b7c4913fe:	e9 71 fd ff ff                                  	jmp    0x1d2b7c491174
    1d2b7c491403:	90                                              	nop
    1d2b7c491404:	12 00                                           	adc    al,BYTE PTR [rax]
    1d2b7c491406:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c491408:	10 00                                           	adc    BYTE PTR [rax],al
    1d2b7c49140a:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c49140c:	a5                                              	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
    1d2b7c49140d:	01 1b                                           	add    DWORD PTR [rbx],ebx
    1d2b7c49140f:	05 f7 03 1b 05                                  	add    eax,0x51b03f7
	...
