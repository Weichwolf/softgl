
/home/cosmo/Git/softgl/build/diagnostics/cube-vector-core/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

00003691cc6a6200 <.data>:
    3691cc6a6200:	55                                              	push   rbp
    3691cc6a6201:	48 8b ec                                        	mov    rbp,rsp
    3691cc6a6204:	6a 30                                           	push   0x30
    3691cc6a6206:	56                                              	push   rsi
    3691cc6a6207:	48 83 ec 70                                     	sub    rsp,0x70
    3691cc6a620b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc6a620f:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    3691cc6a6213:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    3691cc6a6218:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    3691cc6a621d:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    3691cc6a6222:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    3691cc6a6226:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    3691cc6a622a:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    3691cc6a622f:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    3691cc6a6233:	0f 86 43 02 00 00                               	jbe    0x3691cc6a647c
    3691cc6a6239:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    3691cc6a623d:	44 8b 46 57                                     	mov    r8d,DWORD PTR [rsi+0x57]
    3691cc6a6241:	4d 0b c6                                        	or     r8,r14
    3691cc6a6244:	45 8b 58 07                                     	mov    r11d,DWORD PTR [r8+0x7]
    3691cc6a6248:	45 8d 4b c0                                     	lea    r9d,[r11-0x40]
    3691cc6a624c:	45 89 48 07                                     	mov    DWORD PTR [r8+0x7],r9d
    3691cc6a6250:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    3691cc6a6254:	4c 89 45 e8                                     	mov    QWORD PTR [rbp-0x18],r8
    3691cc6a6258:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    3691cc6a625c:	e8 17 b3 f1 ff                                  	call   0x3691cc5c1578
    3691cc6a6261:	85 c0                                           	test   eax,eax
    3691cc6a6263:	0f 85 03 02 00 00                               	jne    0x3691cc6a646c
    3691cc6a6269:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc6a626d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6a6271:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a6275:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    3691cc6a627c:	c5 f8 10 45 80                                  	vmovups xmm0,XMMWORD PTR [rbp-0x80]
    3691cc6a6281:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    3691cc6a6288:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    3691cc6a628f:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    3691cc6a6295:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    3691cc6a6299:	0f 84 49 00 00 00                               	je     0x3691cc6a62e8
    3691cc6a629f:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    3691cc6a62a3:	42 8b 44 07 04                                  	mov    eax,DWORD PTR [rdi+r8*1+0x4]
    3691cc6a62a8:	46 8b 5c 07 08                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x8]
    3691cc6a62ad:	42 8b 54 07 0c                                  	mov    edx,DWORD PTR [rdi+r8*1+0xc]
    3691cc6a62b2:	42 8b 4c 07 10                                  	mov    ecx,DWORD PTR [rdi+r8*1+0x10]
    3691cc6a62b7:	42 8b 5c 07 14                                  	mov    ebx,DWORD PTR [rdi+r8*1+0x14]
    3691cc6a62bc:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    3691cc6a62c1:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    3691cc6a62c5:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    3691cc6a62ca:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    3691cc6a62ce:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    3691cc6a62d3:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    3691cc6a62d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a62db:	e8 50 af f1 ff                                  	call   0x3691cc5c1230
    3691cc6a62e0:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6a62e4:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a62e8:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    3691cc6a62ec:	0f 84 50 00 00 00                               	je     0x3691cc6a6342
    3691cc6a62f2:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    3691cc6a62f6:	42 8b 44 07 04                                  	mov    eax,DWORD PTR [rdi+r8*1+0x4]
    3691cc6a62fb:	46 8b 5c 07 08                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x8]
    3691cc6a6300:	42 8b 54 07 0c                                  	mov    edx,DWORD PTR [rdi+r8*1+0xc]
    3691cc6a6305:	42 8b 4c 07 10                                  	mov    ecx,DWORD PTR [rdi+r8*1+0x10]
    3691cc6a630a:	42 8b 5c 07 14                                  	mov    ebx,DWORD PTR [rdi+r8*1+0x14]
    3691cc6a630f:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    3691cc6a6314:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    3691cc6a6318:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    3691cc6a631d:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    3691cc6a6321:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    3691cc6a6326:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    3691cc6a632a:	45 8b c1                                        	mov    r8d,r9d
    3691cc6a632d:	45 8d 48 10                                     	lea    r9d,[r8+0x10]
    3691cc6a6331:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a6335:	e8 f6 ae f1 ff                                  	call   0x3691cc5c1230
    3691cc6a633a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6a633e:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a6342:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    3691cc6a6346:	0f 84 53 00 00 00                               	je     0x3691cc6a639f
    3691cc6a634c:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    3691cc6a6350:	42 8b 44 07 04                                  	mov    eax,DWORD PTR [rdi+r8*1+0x4]
    3691cc6a6355:	46 8b 5c 07 08                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x8]
    3691cc6a635a:	42 8b 54 07 0c                                  	mov    edx,DWORD PTR [rdi+r8*1+0xc]
    3691cc6a635f:	42 8b 4c 07 10                                  	mov    ecx,DWORD PTR [rdi+r8*1+0x10]
    3691cc6a6364:	42 8b 5c 07 14                                  	mov    ebx,DWORD PTR [rdi+r8*1+0x14]
    3691cc6a6369:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    3691cc6a636e:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    3691cc6a6373:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    3691cc6a6378:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    3691cc6a637d:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    3691cc6a6382:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    3691cc6a6387:	45 8b c1                                        	mov    r8d,r9d
    3691cc6a638a:	45 8d 48 20                                     	lea    r9d,[r8+0x20]
    3691cc6a638e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a6392:	e8 99 ae f1 ff                                  	call   0x3691cc5c1230
    3691cc6a6397:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6a639b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a639f:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    3691cc6a63a3:	0f 84 53 00 00 00                               	je     0x3691cc6a63fc
    3691cc6a63a9:	44 8b 45 98                                     	mov    r8d,DWORD PTR [rbp-0x68]
    3691cc6a63ad:	42 8b 44 07 04                                  	mov    eax,DWORD PTR [rdi+r8*1+0x4]
    3691cc6a63b2:	46 8b 5c 07 08                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x8]
    3691cc6a63b7:	42 8b 54 07 0c                                  	mov    edx,DWORD PTR [rdi+r8*1+0xc]
    3691cc6a63bc:	42 8b 4c 07 10                                  	mov    ecx,DWORD PTR [rdi+r8*1+0x10]
    3691cc6a63c1:	42 8b 5c 07 14                                  	mov    ebx,DWORD PTR [rdi+r8*1+0x14]
    3691cc6a63c6:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    3691cc6a63cb:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    3691cc6a63d0:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    3691cc6a63d5:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    3691cc6a63da:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    3691cc6a63df:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    3691cc6a63e4:	45 8b c1                                        	mov    r8d,r9d
    3691cc6a63e7:	45 8d 48 30                                     	lea    r9d,[r8+0x30]
    3691cc6a63eb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a63ef:	e8 3c ae f1 ff                                  	call   0x3691cc5c1230
    3691cc6a63f4:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6a63f8:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a63fc:	4c 8b c7                                        	mov    r8,rdi
    3691cc6a63ff:	41 8b f9                                        	mov    edi,r9d
    3691cc6a6402:	c4 c1 7a 6f 44 38 20                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x20]
    3691cc6a6409:	c4 c1 7a 6f 64 38 30                            	vmovdqu xmm4,XMMWORD PTR [r8+rdi*1+0x30]
    3691cc6a6410:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    3691cc6a6414:	c4 c1 7a 6f 34 38                               	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1]
    3691cc6a641a:	c4 c1 7a 6f 7c 38 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x10]
    3691cc6a6421:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    3691cc6a6425:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    3691cc6a6429:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    3691cc6a642d:	c4 01 7a 7f 4c 18 30                            	vmovdqu XMMWORD PTR [r8+r11*1+0x30],xmm9
    3691cc6a6434:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    3691cc6a6438:	c4 81 7a 7f 6c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm5
    3691cc6a643f:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    3691cc6a6443:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    3691cc6a6447:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    3691cc6a644b:	c4 81 7a 7f 6c 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm5
    3691cc6a6452:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    3691cc6a6456:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    3691cc6a645c:	83 c7 40                                        	add    edi,0x40
    3691cc6a645f:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    3691cc6a6463:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    3691cc6a6467:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a646a:	5d                                              	pop    rbp
    3691cc6a646b:	c3                                              	ret
    3691cc6a646c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6a646f:	83 c7 40                                        	add    edi,0x40
    3691cc6a6472:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    3691cc6a6476:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    3691cc6a647a:	eb eb                                           	jmp    0x3691cc6a6467
    3691cc6a647c:	33 ff                                           	xor    edi,edi
    3691cc6a647e:	d1 ff                                           	sar    edi,1
    3691cc6a6480:	48 63 ff                                        	movsxd rdi,edi
    3691cc6a6483:	48 8b c7                                        	mov    rax,rdi
    3691cc6a6486:	e8 a5 da f1 ff                                  	call   0x3691cc5c3f30
    3691cc6a648b:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    3691cc6a648e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a6492:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    3691cc6a6497:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    3691cc6a649c:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    3691cc6a64a1:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    3691cc6a64a4:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    3691cc6a64a7:	e9 8d fd ff ff                                  	jmp    0x3691cc6a6239
    3691cc6a64ac:	90                                              	nop
    3691cc6a64ad:	0f 1f 00                                        	nop    DWORD PTR [rax]
    3691cc6a64b0:	12 00                                           	adc    al,BYTE PTR [rax]
    3691cc6a64b2:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6a64b4:	0f 00 00                                        	sldt   WORD PTR [rax]
    3691cc6a64b7:	00 60 1b                                        	add    BYTE PTR [rax+0x1b],ah
    3691cc6a64ba:	05 aa 04 1b 05                                  	add    eax,0x51b04aa
    3691cc6a64bf:	cc                                              	int3
