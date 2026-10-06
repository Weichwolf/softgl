
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms0/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

000005b2ff0a8180 <.data>:
 5b2ff0a8180:	55                                              	push   rbp
 5b2ff0a8181:	48 8b ec                                        	mov    rbp,rsp
 5b2ff0a8184:	6a 30                                           	push   0x30
 5b2ff0a8186:	56                                              	push   rsi
 5b2ff0a8187:	48 83 ec 70                                     	sub    rsp,0x70
 5b2ff0a818b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff0a818f:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
 5b2ff0a8193:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
 5b2ff0a8198:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
 5b2ff0a819d:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
 5b2ff0a81a2:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
 5b2ff0a81a6:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
 5b2ff0a81aa:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
 5b2ff0a81ae:	0f 86 52 02 00 00                               	jbe    0x5b2ff0a8406
 5b2ff0a81b4:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
 5b2ff0a81b8:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
 5b2ff0a81bc:	4d 0b c6                                        	or     r8,r14
 5b2ff0a81bf:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
 5b2ff0a81c3:	45 8d 4b 90                                     	lea    r9d,[r11-0x70]
 5b2ff0a81c7:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
 5b2ff0a81cb:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
 5b2ff0a81cf:	c4 a1 7a 7f 64 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm4
 5b2ff0a81d6:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
 5b2ff0a81dd:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
 5b2ff0a81e4:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
 5b2ff0a81ea:	c4 a1 7a 7f 4c 0f 60                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x60],xmm1
 5b2ff0a81f1:	c4 a1 7a 7f 54 0f 50                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x50],xmm2
 5b2ff0a81f8:	c4 a1 7a 7f 5c 0f 40                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x40],xmm3
 5b2ff0a81ff:	45 8d 59 60                                     	lea    r11d,[r9+0x60]
 5b2ff0a8203:	45 8d 61 50                                     	lea    r12d,[r9+0x50]
 5b2ff0a8207:	41 8d 59 40                                     	lea    ebx,[r9+0x40]
 5b2ff0a820b:	51                                              	push   rcx
 5b2ff0a820c:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
 5b2ff0a8210:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
 5b2ff0a8214:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
 5b2ff0a8218:	44 8b ca                                        	mov    r9d,edx
 5b2ff0a821b:	41 8b d3                                        	mov    edx,r11d
 5b2ff0a821e:	41 8b cc                                        	mov    ecx,r12d
 5b2ff0a8221:	e8 52 33 f2 ff                                  	call   0x5b2fefcb578
 5b2ff0a8226:	85 c0                                           	test   eax,eax
 5b2ff0a8228:	0f 85 c8 01 00 00                               	jne    0x5b2ff0a83f6
 5b2ff0a822e:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
 5b2ff0a8232:	0f 84 48 00 00 00                               	je     0x5b2ff0a8280
 5b2ff0a8238:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
 5b2ff0a823b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a823f:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
 5b2ff0a8244:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
 5b2ff0a8249:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
 5b2ff0a824e:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
 5b2ff0a8253:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
 5b2ff0a8258:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
 5b2ff0a825d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
 5b2ff0a8261:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
 5b2ff0a8266:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
 5b2ff0a826a:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
 5b2ff0a826f:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
 5b2ff0a8273:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a8277:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0a827b:	e8 b0 2f f2 ff                                  	call   0x5b2fefcb230
 5b2ff0a8280:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
 5b2ff0a8284:	0f 84 4b 00 00 00                               	je     0x5b2ff0a82d5
 5b2ff0a828a:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
 5b2ff0a828d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a8291:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
 5b2ff0a8296:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
 5b2ff0a829b:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
 5b2ff0a82a0:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
 5b2ff0a82a5:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
 5b2ff0a82aa:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
 5b2ff0a82af:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
 5b2ff0a82b3:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
 5b2ff0a82b8:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
 5b2ff0a82bc:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
 5b2ff0a82c1:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
 5b2ff0a82c5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a82c8:	44 8d 4f 10                                     	lea    r9d,[rdi+0x10]
 5b2ff0a82cc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a82d0:	e8 5b 2f f2 ff                                  	call   0x5b2fefcb230
 5b2ff0a82d5:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
 5b2ff0a82d9:	0f 84 4e 00 00 00                               	je     0x5b2ff0a832d
 5b2ff0a82df:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
 5b2ff0a82e2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a82e6:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
 5b2ff0a82eb:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
 5b2ff0a82f0:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
 5b2ff0a82f5:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
 5b2ff0a82fa:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
 5b2ff0a82ff:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
 5b2ff0a8304:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
 5b2ff0a8309:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
 5b2ff0a830e:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
 5b2ff0a8313:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
 5b2ff0a8318:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
 5b2ff0a831d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a8320:	44 8d 4f 20                                     	lea    r9d,[rdi+0x20]
 5b2ff0a8324:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a8328:	e8 03 2f f2 ff                                  	call   0x5b2fefcb230
 5b2ff0a832d:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
 5b2ff0a8331:	0f 84 4e 00 00 00                               	je     0x5b2ff0a8385
 5b2ff0a8337:	8b 7d 98                                        	mov    edi,DWORD PTR [rbp-0x68]
 5b2ff0a833a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a833e:	41 8b 44 38 04                                  	mov    eax,DWORD PTR [r8+rdi*1+0x4]
 5b2ff0a8343:	45 8b 5c 38 08                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x8]
 5b2ff0a8348:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
 5b2ff0a834d:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
 5b2ff0a8352:	41 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x14]
 5b2ff0a8357:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
 5b2ff0a835c:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
 5b2ff0a8361:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
 5b2ff0a8366:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
 5b2ff0a836b:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
 5b2ff0a8370:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
 5b2ff0a8375:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a8378:	44 8d 4f 30                                     	lea    r9d,[rdi+0x30]
 5b2ff0a837c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a8380:	e8 ab 2e f2 ff                                  	call   0x5b2fefcb230
 5b2ff0a8385:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a8388:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a838c:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
 5b2ff0a8393:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
 5b2ff0a839a:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
 5b2ff0a839e:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
 5b2ff0a83a4:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
 5b2ff0a83ab:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
 5b2ff0a83af:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
 5b2ff0a83b3:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
 5b2ff0a83b7:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
 5b2ff0a83be:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
 5b2ff0a83c2:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
 5b2ff0a83c9:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
 5b2ff0a83cd:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
 5b2ff0a83d1:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
 5b2ff0a83d5:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
 5b2ff0a83dc:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
 5b2ff0a83e0:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
 5b2ff0a83e6:	83 c7 70                                        	add    edi,0x70
 5b2ff0a83e9:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
 5b2ff0a83ed:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
 5b2ff0a83f1:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a83f4:	5d                                              	pop    rbp
 5b2ff0a83f5:	c3                                              	ret
 5b2ff0a83f6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a83f9:	83 c7 70                                        	add    edi,0x70
 5b2ff0a83fc:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
 5b2ff0a8400:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
 5b2ff0a8404:	eb eb                                           	jmp    0x5b2ff0a83f1
 5b2ff0a8406:	bf 10 00 00 00                                  	mov    edi,0x10
 5b2ff0a840b:	d1 ff                                           	sar    edi,1
 5b2ff0a840d:	48 63 ff                                        	movsxd rdi,edi
 5b2ff0a8410:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
 5b2ff0a8415:	48 8b c7                                        	mov    rax,rdi
 5b2ff0a8418:	e8 13 5b f2 ff                                  	call   0x5b2fefcdf30
 5b2ff0a841d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
 5b2ff0a8420:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a8424:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
 5b2ff0a8429:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
 5b2ff0a842e:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
 5b2ff0a8433:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
 5b2ff0a8436:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
 5b2ff0a8439:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
 5b2ff0a843e:	e9 71 fd ff ff                                  	jmp    0x5b2ff0a81b4
 5b2ff0a8443:	90                                              	nop
 5b2ff0a8444:	12 00                                           	adc    al,BYTE PTR [rax]
 5b2ff0a8446:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a8448:	10 00                                           	adc    BYTE PTR [rax],al
 5b2ff0a844a:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a844c:	a5                                              	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
 5b2ff0a844d:	01 1b                                           	add    DWORD PTR [rbx],ebx
 5b2ff0a844f:	05 f7 03 1b 05                                  	add    eax,0x51b03f7
	...
