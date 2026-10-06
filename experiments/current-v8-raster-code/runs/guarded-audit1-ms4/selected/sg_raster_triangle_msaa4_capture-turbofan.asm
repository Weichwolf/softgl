
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_raster_triangle_msaa4_capture-turbofan.bin:     file format binary


Disassembly of section .data:

000010402e8d6180 <.data>:
    10402e8d6180:	55                                              	push   rbp
    10402e8d6181:	48 8b ec                                        	mov    rbp,rsp
    10402e8d6184:	6a 30                                           	push   0x30
    10402e8d6186:	56                                              	push   rsi
    10402e8d6187:	48 81 ec 18 05 00 00                            	sub    rsp,0x518
    10402e8d618e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e8d6192:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    10402e8d6196:	8b f9                                           	mov    edi,ecx
    10402e8d6198:	4c 89 8d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r9
    10402e8d619f:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    10402e8d61a3:	0f 86 04 a2 00 00                               	jbe    0x10402e8e03ad
    10402e8d61a9:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    10402e8d61ad:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    10402e8d61b1:	4d 0b de                                        	or     r11,r14
    10402e8d61b4:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    10402e8d61b8:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    10402e8d61bf:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    10402e8d61c3:	44 8b f8                                        	mov    r15d,eax
    10402e8d61c6:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    10402e8d61cb:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    10402e8d61cf:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    10402e8d61d6:	83 f9 04                                        	cmp    ecx,0x4
    10402e8d61d9:	0f 84 26 00 00 00                               	je     0x10402e8d6205
    10402e8d61df:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8d61e3:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    10402e8d61e7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8d61eb:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    10402e8d61f2:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    10402e8d61f9:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    10402e8d6200:	e9 79 04 00 00                                  	jmp    0x10402e8d667e
    10402e8d6205:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    10402e8d620a:	85 f6                                           	test   esi,esi
    10402e8d620c:	74 d1                                           	je     0x10402e8d61df
    10402e8d620e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    10402e8d6211:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    10402e8d6215:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    10402e8d621a:	74 c3                                           	je     0x10402e8d61df
    10402e8d621c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    10402e8d6221:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    10402e8d6227:	74 b6                                           	je     0x10402e8d61df
    10402e8d6229:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    10402e8d6231:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    10402e8d623a:	75 a3                                           	jne    0x10402e8d61df
    10402e8d623c:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    10402e8d6241:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    10402e8d6248:	33 c9                                           	xor    ecx,ecx
    10402e8d624a:	45 85 c9                                        	test   r9d,r9d
    10402e8d624d:	0f 94 c1                                        	sete   cl
    10402e8d6250:	41 83 f9 02                                     	cmp    r9d,0x2
    10402e8d6254:	41 0f 94 c1                                     	sete   r9b
    10402e8d6258:	45 0f b6 c9                                     	movzx  r9d,r9b
    10402e8d625c:	44 0b c9                                        	or     r9d,ecx
    10402e8d625f:	0f 84 7a ff ff ff                               	je     0x10402e8d61df
    10402e8d6265:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    10402e8d6269:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    10402e8d626f:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    10402e8d6275:	0f 87 64 ff ff ff                               	ja     0x10402e8d61df
    10402e8d627b:	8b cb                                           	mov    ecx,ebx
    10402e8d627d:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    10402e8d6284:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8d6288:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8d628d:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8d6292:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d6296:	0f 82 43 ff ff ff                               	jb     0x10402e8d61df
    10402e8d629c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8d62a0:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    10402e8d62a4:	0f 83 22 00 00 00                               	jae    0x10402e8d62cc
    10402e8d62aa:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8d62ae:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    10402e8d62b2:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    10402e8d62b9:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    10402e8d62c0:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    10402e8d62c7:	e9 b2 03 00 00                                  	jmp    0x10402e8d667e
    10402e8d62cc:	8b cf                                           	mov    ecx,edi
    10402e8d62ce:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    10402e8d62d5:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    10402e8d62da:	72 ce                                           	jb     0x10402e8d62aa
    10402e8d62dc:	8b ca                                           	mov    ecx,edx
    10402e8d62de:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    10402e8d62e5:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    10402e8d62e9:	72 bf                                           	jb     0x10402e8d62aa
    10402e8d62eb:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    10402e8d62f0:	72 b8                                           	jb     0x10402e8d62aa
    10402e8d62f2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8d62f6:	72 b2                                           	jb     0x10402e8d62aa
    10402e8d62f8:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    10402e8d62fb:	c1 f9 02                                        	sar    ecx,0x2
    10402e8d62fe:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    10402e8d6302:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    10402e8d6306:	41 c1 ff 02                                     	sar    r15d,0x2
    10402e8d630a:	44 3b f9                                        	cmp    r15d,ecx
    10402e8d630d:	0f 8c 58 03 00 00                               	jl     0x10402e8d666b
    10402e8d6313:	49 ba 50 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b850
    10402e8d631d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    10402e8d6322:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    10402e8d6326:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    10402e8d632c:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    10402e8d6331:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    10402e8d6336:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8d633a:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    10402e8d633e:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    10402e8d6345:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    10402e8d634c:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    10402e8d6353:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    10402e8d6358:	0f 87 05 00 00 00                               	ja     0x10402e8d6363
    10402e8d635e:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    10402e8d6363:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    10402e8d6367:	0f 87 05 00 00 00                               	ja     0x10402e8d6372
    10402e8d636d:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    10402e8d6372:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    10402e8d6376:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    10402e8d637a:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8d637e:	0f 87 04 00 00 00                               	ja     0x10402e8d6388
    10402e8d6384:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    10402e8d6388:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8d638c:	0f 87 09 00 00 00                               	ja     0x10402e8d639b
    10402e8d6392:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    10402e8d6396:	e9 04 00 00 00                                  	jmp    0x10402e8d639f
    10402e8d639b:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    10402e8d639f:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    10402e8d63a3:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    10402e8d63a7:	c1 fa 02                                        	sar    edx,0x2
    10402e8d63aa:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8d63ae:	41 c1 f9 02                                     	sar    r9d,0x2
    10402e8d63b2:	41 8b f9                                        	mov    edi,r9d
    10402e8d63b5:	44 3b ca                                        	cmp    r9d,edx
    10402e8d63b8:	0f 4c fa                                        	cmovl  edi,edx
    10402e8d63bb:	8d 5e c4                                        	lea    ebx,[rsi-0x3c]
    10402e8d63be:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8d63c2:	83 ee 40                                        	sub    esi,0x40
    10402e8d63c5:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    10402e8d63c9:	45 33 db                                        	xor    r11d,r11d
    10402e8d63cc:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8d63d1:	41 0f 94 c3                                     	sete   r11b
    10402e8d63d5:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8d63d9:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    10402e8d63e0:	48 89 9d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rbx
    10402e8d63e7:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    10402e8d63eb:	4c 89 9d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r11
    10402e8d63f2:	48 c7 85 70 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x190],0x1
    10402e8d63fd:	45 33 e4                                        	xor    r12d,r12d
    10402e8d6400:	e9 44 00 00 00                                  	jmp    0x10402e8d6449
    10402e8d6405:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d640e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d6417:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d6420:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d6429:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d6432:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d643b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    10402e8d6440:	8b ca                                           	mov    ecx,edx
    10402e8d6442:	4c 89 9d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r11
    10402e8d6449:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8d644e:	0f 85 c1 9f 00 00                               	jne    0x10402e8e0415
    10402e8d6454:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    10402e8d6458:	0f 8e 0c 00 00 00                               	jle    0x10402e8d646a
    10402e8d645e:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    10402e8d6465:	e9 a1 01 00 00                                  	jmp    0x10402e8d660b
    10402e8d646a:	0f af d9                                        	imul   ebx,ecx
    10402e8d646d:	c1 e3 04                                        	shl    ebx,0x4
    10402e8d6470:	03 de                                           	add    ebx,esi
    10402e8d6472:	41 8b d1                                        	mov    edx,r9d
    10402e8d6475:	e9 10 00 00 00                                  	jmp    0x10402e8d648a
    10402e8d647a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d6480:	48 89 b5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rsi
    10402e8d6487:	41 8b d3                                        	mov    edx,r11d
    10402e8d648a:	8b f2                                           	mov    esi,edx
    10402e8d648c:	c1 e6 04                                        	shl    esi,0x4
    10402e8d648f:	03 f3                                           	add    esi,ebx
    10402e8d6491:	4d 8b 0c 30                                     	mov    r9,QWORD PTR [r8+rsi*1]
    10402e8d6495:	49 83 3c 30 ff                                  	cmp    QWORD PTR [r8+rsi*1],0xffffffffffffffff
    10402e8d649a:	0f 85 7c 01 00 00                               	jne    0x10402e8d661c
    10402e8d64a0:	c4 c1 7a 10 74 30 08                            	vmovss xmm6,DWORD PTR [r8+rsi*1+0x8]
    10402e8d64a7:	83 bd 18 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e8],0x0
    10402e8d64ae:	0f 85 0f 00 00 00                               	jne    0x10402e8d64c3
    10402e8d64b4:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d64b8:	0f 83 5e 01 00 00                               	jae    0x10402e8d661c
    10402e8d64be:	e9 0a 00 00 00                                  	jmp    0x10402e8d64cd
    10402e8d64c3:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d64c7:	0f 87 4f 01 00 00                               	ja     0x10402e8d661c
    10402e8d64cd:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    10402e8d64d3:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d64d7:	41 0f 43 f4                                     	cmovae esi,r12d
    10402e8d64db:	44 8d 4a 01                                     	lea    r9d,[rdx+0x1]
    10402e8d64df:	3b d7                                           	cmp    edx,edi
    10402e8d64e1:	0f 84 11 01 00 00                               	je     0x10402e8d65f8
    10402e8d64e7:	41 8b d1                                        	mov    edx,r9d
    10402e8d64ea:	c1 e2 04                                        	shl    edx,0x4
    10402e8d64ed:	03 d3                                           	add    edx,ebx
    10402e8d64ef:	4d 8b 1c 10                                     	mov    r11,QWORD PTR [r8+rdx*1]
    10402e8d64f3:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    10402e8d64f8:	0f 85 1e 01 00 00                               	jne    0x10402e8d661c
    10402e8d64fe:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    10402e8d6505:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8d650a:	0f 84 0f 00 00 00                               	je     0x10402e8d651f
    10402e8d6510:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d6514:	0f 83 02 01 00 00                               	jae    0x10402e8d661c
    10402e8d651a:	e9 0a 00 00 00                                  	jmp    0x10402e8d6529
    10402e8d651f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d6523:	0f 87 f3 00 00 00                               	ja     0x10402e8d661c
    10402e8d6529:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d652d:	41 0f 43 f4                                     	cmovae esi,r12d
    10402e8d6531:	45 8d 59 01                                     	lea    r11d,[r9+0x1]
    10402e8d6535:	44 3b cf                                        	cmp    r9d,edi
    10402e8d6538:	0f 84 ba 00 00 00                               	je     0x10402e8d65f8
    10402e8d653e:	41 8b d3                                        	mov    edx,r11d
    10402e8d6541:	c1 e2 04                                        	shl    edx,0x4
    10402e8d6544:	03 d3                                           	add    edx,ebx
    10402e8d6546:	4d 8b 0c 10                                     	mov    r9,QWORD PTR [r8+rdx*1]
    10402e8d654a:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    10402e8d654f:	0f 85 c7 00 00 00                               	jne    0x10402e8d661c
    10402e8d6555:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    10402e8d655c:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8d6561:	0f 84 0f 00 00 00                               	je     0x10402e8d6576
    10402e8d6567:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d656b:	0f 83 ab 00 00 00                               	jae    0x10402e8d661c
    10402e8d6571:	e9 0a 00 00 00                                  	jmp    0x10402e8d6580
    10402e8d6576:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d657a:	0f 87 9c 00 00 00                               	ja     0x10402e8d661c
    10402e8d6580:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d6584:	41 0f 43 f4                                     	cmovae esi,r12d
    10402e8d6588:	41 8d 53 01                                     	lea    edx,[r11+0x1]
    10402e8d658c:	44 3b df                                        	cmp    r11d,edi
    10402e8d658f:	0f 84 63 00 00 00                               	je     0x10402e8d65f8
    10402e8d6595:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8d659a:	0f 85 fd 9e 00 00                               	jne    0x10402e8e049d
    10402e8d65a0:	44 8b da                                        	mov    r11d,edx
    10402e8d65a3:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8d65a7:	44 03 db                                        	add    r11d,ebx
    10402e8d65aa:	4f 8b 0c 18                                     	mov    r9,QWORD PTR [r8+r11*1]
    10402e8d65ae:	4b 83 3c 18 ff                                  	cmp    QWORD PTR [r8+r11*1],0xffffffffffffffff
    10402e8d65b3:	0f 85 63 00 00 00                               	jne    0x10402e8d661c
    10402e8d65b9:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    10402e8d65c0:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8d65c5:	0f 84 0f 00 00 00                               	je     0x10402e8d65da
    10402e8d65cb:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d65cf:	0f 83 47 00 00 00                               	jae    0x10402e8d661c
    10402e8d65d5:	e9 0a 00 00 00                                  	jmp    0x10402e8d65e4
    10402e8d65da:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d65de:	0f 87 38 00 00 00                               	ja     0x10402e8d661c
    10402e8d65e4:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d65e8:	41 0f 43 f4                                     	cmovae esi,r12d
    10402e8d65ec:	44 8d 5a 01                                     	lea    r11d,[rdx+0x1]
    10402e8d65f0:	3b fa                                           	cmp    edi,edx
    10402e8d65f2:	0f 85 88 fe ff ff                               	jne    0x10402e8d6480
    10402e8d65f8:	44 8b de                                        	mov    r11d,esi
    10402e8d65fb:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8d6602:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8d6605:	8b 9d e0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x220]
    10402e8d660b:	8d 51 01                                        	lea    edx,[rcx+0x1]
    10402e8d660e:	44 3b f9                                        	cmp    r15d,ecx
    10402e8d6611:	0f 85 29 fe ff ff                               	jne    0x10402e8d6440
    10402e8d6617:	e9 23 00 00 00                                  	jmp    0x10402e8d663f
    10402e8d661c:	8b 9d d0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x230]
    10402e8d6622:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    10402e8d6626:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    10402e8d662a:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    10402e8d662e:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    10402e8d6634:	8b bd 68 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x198]
    10402e8d663a:	e9 3f 00 00 00                                  	jmp    0x10402e8d667e
    10402e8d663f:	b8 02 00 00 00                                  	mov    eax,0x2
    10402e8d6644:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    10402e8d6649:	45 85 db                                        	test   r11d,r11d
    10402e8d664c:	0f 45 f8                                        	cmovne edi,eax
    10402e8d664f:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8d6653:	45 8d 83 a0 02 00 00                            	lea    r8d,[r11+0x2a0]
    10402e8d665a:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    10402e8d665e:	45 89 47 07                                     	mov    DWORD PTR [r15+0x7],r8d
    10402e8d6662:	8b c7                                           	mov    eax,edi
    10402e8d6664:	48 8b e5                                        	mov    rsp,rbp
    10402e8d6667:	5d                                              	pop    rbp
    10402e8d6668:	c2 40 00                                        	ret    0x40
    10402e8d666b:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    10402e8d6673:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    10402e8d6677:	b8 02 00 00 00                                  	mov    eax,0x2
    10402e8d667c:	eb e6                                           	jmp    0x10402e8d6664
    10402e8d667e:	8b c3                                           	mov    eax,ebx
    10402e8d6680:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    10402e8d6687:	c4 c1 7a 10 74 00 14                            	vmovss xmm6,DWORD PTR [r8+rax*1+0x14]
    10402e8d668e:	8b f7                                           	mov    esi,edi
    10402e8d6690:	c4 41 7a 10 44 30 10                            	vmovss xmm8,DWORD PTR [r8+rsi*1+0x10]
    10402e8d6697:	44 8b ca                                        	mov    r9d,edx
    10402e8d669a:	c4 01 7a 10 4c 08 10                            	vmovss xmm9,DWORD PTR [r8+r9*1+0x10]
    10402e8d66a1:	c4 41 7a 10 54 30 14                            	vmovss xmm10,DWORD PTR [r8+rsi*1+0x14]
    10402e8d66a8:	43 8b 8c 38 8c 00 00 00                         	mov    ecx,DWORD PTR [r8+r15*1+0x8c]
    10402e8d66b0:	c4 01 7a 10 5c 08 14                            	vmovss xmm11,DWORD PTR [r8+r9*1+0x14]
    10402e8d66b7:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    10402e8d66bd:	c4 41 79 6e e2                                  	vmovd  xmm12,r10d
    10402e8d66c2:	c4 41 22 59 dc                                  	vmulss xmm11,xmm11,xmm12
    10402e8d66c7:	4c 8b 15 47 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc47]        # 0x10402e8d6315
    10402e8d66ce:	c4 41 20 54 2a                                  	vandps xmm13,xmm11,XMMWORD PTR [r10]
    10402e8d66d3:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8d66d7:	48 89 85 50 fd ff ff                            	mov    QWORD PTR [rbp-0x2b0],rax
    10402e8d66de:	48 89 b5 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],rsi
    10402e8d66e5:	4c 89 8d 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],r9
    10402e8d66ec:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    10402e8d66f3:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    10402e8d66f9:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    10402e8d66fe:	c4 41 78 2e f5                                  	vucomiss xmm14,xmm13
    10402e8d6703:	0f 87 0b 00 00 00                               	ja     0x10402e8d6714
    10402e8d6709:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    10402e8d670f:	e9 21 00 00 00                                  	jmp    0x10402e8d6735
    10402e8d6714:	c4 43 21 0a db 0b                               	vroundss xmm11,xmm11,xmm11,0xb
    10402e8d671a:	c4 41 7a 2c db                                  	vcvttss2si r11d,xmm11
    10402e8d671f:	c4 41 02 2a eb                                  	vcvtsi2ss xmm13,xmm15,r11d
    10402e8d6724:	c4 41 78 2e dd                                  	vucomiss xmm11,xmm13
    10402e8d6729:	0f 8a 29 a1 00 00                               	jp     0x10402e8e0858
    10402e8d672f:	0f 85 23 a1 00 00                               	jne    0x10402e8e0858
    10402e8d6735:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    10402e8d673c:	48 c7 c0 a0 ff ff ff                            	mov    rax,0xffffffffffffffa0
    10402e8d6743:	85 c9                                           	test   ecx,ecx
    10402e8d6745:	48 0f 45 f0                                     	cmovne rsi,rax
    10402e8d6749:	c4 41 2a 59 d4                                  	vmulss xmm10,xmm10,xmm12
    10402e8d674e:	4c 8b 15 c0 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbc0]        # 0x10402e8d6315
    10402e8d6755:	c4 41 28 54 1a                                  	vandps xmm11,xmm10,XMMWORD PTR [r10]
    10402e8d675a:	4c 89 9d f8 fa ff ff                            	mov    QWORD PTR [rbp-0x508],r11
    10402e8d6761:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    10402e8d6765:	c4 41 78 2e f3                                  	vucomiss xmm14,xmm11
    10402e8d676a:	0f 87 0a 00 00 00                               	ja     0x10402e8d677a
    10402e8d6770:	b8 00 00 00 80                                  	mov    eax,0x80000000
    10402e8d6775:	e9 20 00 00 00                                  	jmp    0x10402e8d679a
    10402e8d677a:	c4 43 29 0a d2 0b                               	vroundss xmm10,xmm10,xmm10,0xb
    10402e8d6780:	c4 c1 7a 2c c2                                  	vcvttss2si eax,xmm10
    10402e8d6785:	c5 02 2a d8                                     	vcvtsi2ss xmm11,xmm15,eax
    10402e8d6789:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    10402e8d678e:	0f 8a bf a0 00 00                               	jp     0x10402e8e0853
    10402e8d6794:	0f 85 b9 a0 00 00                               	jne    0x10402e8e0853
    10402e8d679a:	44 8b c8                                        	mov    r9d,eax
    10402e8d679d:	45 2b cb                                        	sub    r9d,r11d
    10402e8d67a0:	49 63 d1                                        	movsxd rdx,r9d
    10402e8d67a3:	c4 41 32 59 cc                                  	vmulss xmm9,xmm9,xmm12
    10402e8d67a8:	4c 8b 15 66 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb66]        # 0x10402e8d6315
    10402e8d67af:	c4 41 30 54 12                                  	vandps xmm10,xmm9,XMMWORD PTR [r10]
    10402e8d67b4:	48 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],rax
    10402e8d67bb:	4c 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r9
    10402e8d67c2:	48 89 95 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdx
    10402e8d67c9:	c4 41 78 2e f2                                  	vucomiss xmm14,xmm10
    10402e8d67ce:	0f 87 10 00 00 00                               	ja     0x10402e8d67e4
    10402e8d67d4:	48 c7 85 38 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x1c8],0xffffffff80000000
    10402e8d67df:	e9 28 00 00 00                                  	jmp    0x10402e8d680c
    10402e8d67e4:	c4 43 31 0a c9 0b                               	vroundss xmm9,xmm9,xmm9,0xb
    10402e8d67ea:	c4 41 7a 2c c9                                  	vcvttss2si r9d,xmm9
    10402e8d67ef:	c4 41 02 2a d1                                  	vcvtsi2ss xmm10,xmm15,r9d
    10402e8d67f4:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    10402e8d67f9:	0f 8a 4f a0 00 00                               	jp     0x10402e8e084e
    10402e8d67ff:	0f 85 49 a0 00 00                               	jne    0x10402e8e084e
    10402e8d6805:	4c 89 8d 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r9
    10402e8d680c:	41 b9 05 00 00 00                               	mov    r9d,0x5
    10402e8d6812:	bf 07 00 00 00                                  	mov    edi,0x7
    10402e8d6817:	85 c9                                           	test   ecx,ecx
    10402e8d6819:	49 0f 45 f9                                     	cmovne rdi,r9
    10402e8d681d:	4c 8b ca                                        	mov    r9,rdx
    10402e8d6820:	4c 0f af ce                                     	imul   r9,rsi
    10402e8d6824:	c4 41 3a 59 c4                                  	vmulss xmm8,xmm8,xmm12
    10402e8d6829:	4c 8b 15 e5 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffae5]        # 0x10402e8d6315
    10402e8d6830:	c4 41 38 54 0a                                  	vandps xmm9,xmm8,XMMWORD PTR [r10]
    10402e8d6835:	c4 41 78 2e f1                                  	vucomiss xmm14,xmm9
    10402e8d683a:	0f 87 10 00 00 00                               	ja     0x10402e8d6850
    10402e8d6840:	48 c7 85 c8 fd ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x238],0xffffffff80000000
    10402e8d684b:	e9 27 00 00 00                                  	jmp    0x10402e8d6877
    10402e8d6850:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    10402e8d6856:	c4 c1 7a 2c d8                                  	vcvttss2si ebx,xmm8
    10402e8d685b:	c5 02 2a cb                                     	vcvtsi2ss xmm9,xmm15,ebx
    10402e8d685f:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    10402e8d6864:	0f 8a df 9f 00 00                               	jp     0x10402e8e0849
    10402e8d686a:	0f 85 d9 9f 00 00                               	jne    0x10402e8e0849
    10402e8d6870:	48 89 9d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],rbx
    10402e8d6877:	8b 9d c8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x238]
    10402e8d687d:	2b 9d 38 fe ff ff                               	sub    ebx,DWORD PTR [rbp-0x1c8]
    10402e8d6883:	48 63 db                                        	movsxd rbx,ebx
    10402e8d6886:	8b ff                                           	mov    edi,edi
    10402e8d6888:	83 e7 3f                                        	and    edi,0x3f
    10402e8d688b:	4c 8b fb                                        	mov    r15,rbx
    10402e8d688e:	8b cf                                           	mov    ecx,edi
    10402e8d6890:	49 d3 e7                                        	shl    r15,cl
    10402e8d6893:	4d 03 f9                                        	add    r15,r9
    10402e8d6896:	4f 89 bc 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],r15
    10402e8d689e:	41 bb 80 00 00 00                               	mov    r11d,0x80
    10402e8d68a4:	41 b9 60 00 00 00                               	mov    r9d,0x60
    10402e8d68aa:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d68b1:	4d 0f 45 d9                                     	cmovne r11,r9
    10402e8d68b5:	4d 8b cb                                        	mov    r9,r11
    10402e8d68b8:	4c 0f af cb                                     	imul   r9,rbx
    10402e8d68bc:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    10402e8d68c3:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    10402e8d68ca:	48 c7 c7 20 ff ff ff                            	mov    rdi,0xffffffffffffff20
    10402e8d68d1:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d68d8:	48 0f 45 f7                                     	cmovne rsi,rdi
    10402e8d68dc:	48 8b fe                                        	mov    rdi,rsi
    10402e8d68df:	48 0f af fa                                     	imul   rdi,rdx
    10402e8d68e3:	49 03 f9                                        	add    rdi,r9
    10402e8d68e6:	4b 89 bc 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],rdi
    10402e8d68ee:	b8 80 00 00 00                                  	mov    eax,0x80
    10402e8d68f3:	41 b9 a0 00 00 00                               	mov    r9d,0xa0
    10402e8d68f9:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d6900:	49 0f 45 c1                                     	cmovne rax,r9
    10402e8d6904:	4c 8b c8                                        	mov    r9,rax
    10402e8d6907:	4c 0f af cb                                     	imul   r9,rbx
    10402e8d690b:	48 89 b5 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rsi
    10402e8d6912:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    10402e8d6919:	48 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rax
    10402e8d6920:	48 c7 c0 e0 ff ff ff                            	mov    rax,0xffffffffffffffe0
    10402e8d6927:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d692e:	48 0f 45 f0                                     	cmovne rsi,rax
    10402e8d6932:	48 8b c6                                        	mov    rax,rsi
    10402e8d6935:	48 0f af c2                                     	imul   rax,rdx
    10402e8d6939:	49 03 c1                                        	add    rax,r9
    10402e8d693c:	4b 89 84 20 10 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x110],rax
    10402e8d6944:	4d 8b cf                                        	mov    r9,r15
    10402e8d6947:	4c 3b ff                                        	cmp    r15,rdi
    10402e8d694a:	4c 0f 4c cf                                     	cmovl  r9,rdi
    10402e8d694e:	48 89 b5 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rsi
    10402e8d6955:	be e0 00 00 00                                  	mov    esi,0xe0
    10402e8d695a:	b9 80 00 00 00                                  	mov    ecx,0x80
    10402e8d695f:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d6966:	48 0f 45 ce                                     	cmovne rcx,rsi
    10402e8d696a:	48 8b f1                                        	mov    rsi,rcx
    10402e8d696d:	48 0f af f3                                     	imul   rsi,rbx
    10402e8d6971:	48 89 5d c0                                     	mov    QWORD PTR [rbp-0x40],rbx
    10402e8d6975:	4c 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r11
    10402e8d697c:	49 c7 c3 80 ff ff ff                            	mov    r11,0xffffffffffffff80
    10402e8d6983:	48 c7 c3 60 ff ff ff                            	mov    rbx,0xffffffffffffff60
    10402e8d698a:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d6991:	4c 0f 45 db                                     	cmovne r11,rbx
    10402e8d6995:	49 8b db                                        	mov    rbx,r11
    10402e8d6998:	48 0f af da                                     	imul   rbx,rdx
    10402e8d699c:	48 03 de                                        	add    rbx,rsi
    10402e8d699f:	4b 89 9c 20 28 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x128],rbx
    10402e8d69a7:	49 8b f7                                        	mov    rsi,r15
    10402e8d69aa:	49 3b ff                                        	cmp    rdi,r15
    10402e8d69ad:	48 0f 4c f7                                     	cmovl  rsi,rdi
    10402e8d69b1:	48 8b fe                                        	mov    rdi,rsi
    10402e8d69b4:	48 3b c6                                        	cmp    rax,rsi
    10402e8d69b7:	48 0f 4c f8                                     	cmovl  rdi,rax
    10402e8d69bb:	4d 8b f9                                        	mov    r15,r9
    10402e8d69be:	4c 3b c8                                        	cmp    r9,rax
    10402e8d69c1:	4c 0f 4c f8                                     	cmovl  r15,rax
    10402e8d69c5:	33 c0                                           	xor    eax,eax
    10402e8d69c7:	4c 3b fb                                        	cmp    r15,rbx
    10402e8d69ca:	0f 9c c0                                        	setl   al
    10402e8d69cd:	33 f6                                           	xor    esi,esi
    10402e8d69cf:	48 3b df                                        	cmp    rbx,rdi
    10402e8d69d2:	40 0f 9c c6                                     	setl   sil
    10402e8d69d6:	c4 c1 4a 59 f4                                  	vmulss xmm6,xmm6,xmm12
    10402e8d69db:	4c 8b 15 33 f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff933]        # 0x10402e8d6315
    10402e8d69e2:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    10402e8d69e7:	48 89 8d 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rcx
    10402e8d69ee:	48 89 9d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rbx
    10402e8d69f5:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    10402e8d69fc:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    10402e8d6a03:	48 89 85 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rax
    10402e8d6a0a:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    10402e8d6a11:	c4 41 78 2e f0                                  	vucomiss xmm14,xmm8
    10402e8d6a16:	0f 87 0b 00 00 00                               	ja     0x10402e8d6a27
    10402e8d6a1c:	41 b9 00 00 00 80                               	mov    r9d,0x80000000
    10402e8d6a22:	e9 20 00 00 00                                  	jmp    0x10402e8d6a47
    10402e8d6a27:	c4 e3 49 0a f6 0b                               	vroundss xmm6,xmm6,xmm6,0xb
    10402e8d6a2d:	c5 7a 2c ce                                     	vcvttss2si r9d,xmm6
    10402e8d6a31:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    10402e8d6a36:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    10402e8d6a3b:	0f 8a 03 9e 00 00                               	jp     0x10402e8e0844
    10402e8d6a41:	0f 85 fd 9d 00 00                               	jne    0x10402e8e0844
    10402e8d6a47:	8b bd f8 fa ff ff                               	mov    edi,DWORD PTR [rbp-0x508]
    10402e8d6a4d:	41 2b f9                                        	sub    edi,r9d
    10402e8d6a50:	48 63 f7                                        	movsxd rsi,edi
    10402e8d6a53:	48 89 bd 80 fb ff ff                            	mov    QWORD PTR [rbp-0x480],rdi
    10402e8d6a5a:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8d6a5e:	48 0f af fe                                     	imul   rdi,rsi
    10402e8d6a62:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    10402e8d6a67:	4c 8b 15 a7 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a7]        # 0x10402e8d6315
    10402e8d6a6e:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    10402e8d6a73:	4c 89 8d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r9
    10402e8d6a7a:	48 89 b5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rsi
    10402e8d6a81:	c5 78 2e f6                                     	vucomiss xmm14,xmm6
    10402e8d6a85:	0f 87 10 00 00 00                               	ja     0x10402e8d6a9b
    10402e8d6a8b:	48 c7 85 70 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x190],0xffffffff80000000
    10402e8d6a96:	e9 26 00 00 00                                  	jmp    0x10402e8d6ac1
    10402e8d6a9b:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    10402e8d6aa1:	c5 7a 2c fd                                     	vcvttss2si r15d,xmm5
    10402e8d6aa5:	c4 c1 02 2a f7                                  	vcvtsi2ss xmm6,xmm15,r15d
    10402e8d6aaa:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8d6aae:	0f 8a 8b 9d 00 00                               	jp     0x10402e8e083f
    10402e8d6ab4:	0f 85 85 9d 00 00                               	jne    0x10402e8e083f
    10402e8d6aba:	4c 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r15
    10402e8d6ac1:	44 8b bd 38 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c8]
    10402e8d6ac8:	44 2b bd 70 fe ff ff                            	sub    r15d,DWORD PTR [rbp-0x190]
    10402e8d6acf:	4d 63 ff                                        	movsxd r15,r15d
    10402e8d6ad2:	49 8b c7                                        	mov    rax,r15
    10402e8d6ad5:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    10402e8d6adb:	48 d3 e0                                        	shl    rax,cl
    10402e8d6ade:	48 03 f8                                        	add    rdi,rax
    10402e8d6ae1:	4b 89 bc 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rdi
    10402e8d6ae9:	49 8b c7                                        	mov    rax,r15
    10402e8d6aec:	48 0f af 85 78 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x188]
    10402e8d6af4:	48 8b ce                                        	mov    rcx,rsi
    10402e8d6af7:	48 0f af 8d d8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x228]
    10402e8d6aff:	48 03 c1                                        	add    rax,rcx
    10402e8d6b02:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    10402e8d6b0a:	49 8b cf                                        	mov    rcx,r15
    10402e8d6b0d:	48 0f af 8d a0 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x260]
    10402e8d6b15:	48 8b de                                        	mov    rbx,rsi
    10402e8d6b18:	48 0f af 9d 48 fd ff ff                         	imul   rbx,QWORD PTR [rbp-0x2b8]
    10402e8d6b20:	48 03 d9                                        	add    rbx,rcx
    10402e8d6b23:	4b 89 9c 20 08 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x108],rbx
    10402e8d6b2b:	49 8b cf                                        	mov    rcx,r15
    10402e8d6b2e:	48 0f af 8d 70 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x290]
    10402e8d6b36:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    10402e8d6b3d:	4c 8b fe                                        	mov    r15,rsi
    10402e8d6b40:	4d 0f af fb                                     	imul   r15,r11
    10402e8d6b44:	4c 03 f9                                        	add    r15,rcx
    10402e8d6b47:	4f 89 bc 20 20 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x120],r15
    10402e8d6b4f:	48 8b cf                                        	mov    rcx,rdi
    10402e8d6b52:	48 3b f8                                        	cmp    rdi,rax
    10402e8d6b55:	48 0f 4c c8                                     	cmovl  rcx,rax
    10402e8d6b59:	4c 8b c9                                        	mov    r9,rcx
    10402e8d6b5c:	48 3b cb                                        	cmp    rcx,rbx
    10402e8d6b5f:	4c 0f 4c cb                                     	cmovl  r9,rbx
    10402e8d6b63:	33 c9                                           	xor    ecx,ecx
    10402e8d6b65:	4d 3b cf                                        	cmp    r9,r15
    10402e8d6b68:	0f 9c c1                                        	setl   cl
    10402e8d6b6b:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    10402e8d6b72:	4c 8b cf                                        	mov    r9,rdi
    10402e8d6b75:	48 3b c7                                        	cmp    rax,rdi
    10402e8d6b78:	4c 0f 4c c8                                     	cmovl  r9,rax
    10402e8d6b7c:	49 8b f9                                        	mov    rdi,r9
    10402e8d6b7f:	49 3b d9                                        	cmp    rbx,r9
    10402e8d6b82:	48 0f 4c fb                                     	cmovl  rdi,rbx
    10402e8d6b86:	33 c0                                           	xor    eax,eax
    10402e8d6b88:	4c 3b ff                                        	cmp    r15,rdi
    10402e8d6b8b:	0f 9c c0                                        	setl   al
    10402e8d6b8e:	44 8b 8d 18 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1e8]
    10402e8d6b95:	44 2b 8d c8 fc ff ff                            	sub    r9d,DWORD PTR [rbp-0x338]
    10402e8d6b9c:	49 63 d9                                        	movsxd rbx,r9d
    10402e8d6b9f:	4c 89 8d b8 fb ff ff                            	mov    QWORD PTR [rbp-0x448],r9
    10402e8d6ba6:	4c 8b 4d b8                                     	mov    r9,QWORD PTR [rbp-0x48]
    10402e8d6baa:	4c 0f af cb                                     	imul   r9,rbx
    10402e8d6bae:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    10402e8d6bb5:	8b bd 70 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x190]
    10402e8d6bbb:	2b bd c8 fd ff ff                               	sub    edi,DWORD PTR [rbp-0x238]
    10402e8d6bc1:	48 63 ff                                        	movsxd rdi,edi
    10402e8d6bc4:	48 89 85 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rax
    10402e8d6bcb:	48 8b c7                                        	mov    rax,rdi
    10402e8d6bce:	48 89 8d 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],rcx
    10402e8d6bd5:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    10402e8d6bdb:	48 d3 e0                                        	shl    rax,cl
    10402e8d6bde:	49 03 c1                                        	add    rax,r9
    10402e8d6be1:	4b 89 84 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],rax
    10402e8d6be9:	48 8b 8d 78 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x188]
    10402e8d6bf0:	48 0f af cf                                     	imul   rcx,rdi
    10402e8d6bf4:	4c 8b 8d d8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x228]
    10402e8d6bfb:	4c 0f af cb                                     	imul   r9,rbx
    10402e8d6bff:	49 03 c9                                        	add    rcx,r9
    10402e8d6c02:	4b 89 8c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rcx
    10402e8d6c0a:	4c 8b 8d a0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x260]
    10402e8d6c11:	4c 0f af cf                                     	imul   r9,rdi
    10402e8d6c15:	4c 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r15
    10402e8d6c1c:	4c 8b bd 48 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2b8]
    10402e8d6c23:	4c 0f af fb                                     	imul   r15,rbx
    10402e8d6c27:	4d 03 f9                                        	add    r15,r9
    10402e8d6c2a:	4f 89 bc 20 00 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x100],r15
    10402e8d6c32:	4c 8b 8d 70 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x290]
    10402e8d6c39:	4c 0f af cf                                     	imul   r9,rdi
    10402e8d6c3d:	4c 0f af db                                     	imul   r11,rbx
    10402e8d6c41:	4d 03 d9                                        	add    r11,r9
    10402e8d6c44:	4f 89 9c 20 18 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x118],r11
    10402e8d6c4c:	4c 8b c8                                        	mov    r9,rax
    10402e8d6c4f:	48 3b c1                                        	cmp    rax,rcx
    10402e8d6c52:	4c 0f 4c c9                                     	cmovl  r9,rcx
    10402e8d6c56:	4d 8b c1                                        	mov    r8,r9
    10402e8d6c59:	4d 3b cf                                        	cmp    r9,r15
    10402e8d6c5c:	4d 0f 4c c7                                     	cmovl  r8,r15
    10402e8d6c60:	45 33 c9                                        	xor    r9d,r9d
    10402e8d6c63:	4d 3b c3                                        	cmp    r8,r11
    10402e8d6c66:	41 0f 9c c1                                     	setl   r9b
    10402e8d6c6a:	4c 8b e0                                        	mov    r12,rax
    10402e8d6c6d:	48 3b c8                                        	cmp    rcx,rax
    10402e8d6c70:	4c 0f 4c e1                                     	cmovl  r12,rcx
    10402e8d6c74:	49 8b c4                                        	mov    rax,r12
    10402e8d6c77:	4d 3b fc                                        	cmp    r15,r12
    10402e8d6c7a:	49 0f 4c c7                                     	cmovl  rax,r15
    10402e8d6c7e:	45 33 e4                                        	xor    r12d,r12d
    10402e8d6c81:	4c 3b d8                                        	cmp    r11,rax
    10402e8d6c84:	41 0f 9c c4                                     	setl   r12b
    10402e8d6c88:	4c 63 bd 38 fe ff ff                            	movsxd r15,DWORD PTR [rbp-0x1c8]
    10402e8d6c8f:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    10402e8d6c92:	4c 89 a5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r12
    10402e8d6c99:	4c 63 e1                                        	movsxd r12,ecx
    10402e8d6c9c:	49 c1 e4 08                                     	shl    r12,0x8
    10402e8d6ca0:	4d 2b fc                                        	sub    r15,r12
    10402e8d6ca3:	4c 0f af fa                                     	imul   r15,rdx
    10402e8d6ca7:	48 63 4d 18                                     	movsxd rcx,DWORD PTR [rbp+0x18]
    10402e8d6cab:	48 c1 e1 08                                     	shl    rcx,0x8
    10402e8d6caf:	48 63 95 f8 fa ff ff                            	movsxd rdx,DWORD PTR [rbp-0x508]
    10402e8d6cb6:	48 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rax
    10402e8d6cbd:	48 8b c1                                        	mov    rax,rcx
    10402e8d6cc0:	48 2b c2                                        	sub    rax,rdx
    10402e8d6cc3:	48 0f af 45 c0                                  	imul   rax,QWORD PTR [rbp-0x40]
    10402e8d6cc8:	48 63 95 70 fe ff ff                            	movsxd rdx,DWORD PTR [rbp-0x190]
    10402e8d6ccf:	49 2b d4                                        	sub    rdx,r12
    10402e8d6cd2:	48 0f af d6                                     	imul   rdx,rsi
    10402e8d6cd6:	48 63 b5 18 fe ff ff                            	movsxd rsi,DWORD PTR [rbp-0x1e8]
    10402e8d6cdd:	4c 89 85 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r8
    10402e8d6ce4:	4c 8b c1                                        	mov    r8,rcx
    10402e8d6ce7:	4c 2b c6                                        	sub    r8,rsi
    10402e8d6cea:	4c 0f af 85 30 fe ff ff                         	imul   r8,QWORD PTR [rbp-0x1d0]
    10402e8d6cf2:	48 63 b5 c8 fd ff ff                            	movsxd rsi,DWORD PTR [rbp-0x238]
    10402e8d6cf9:	49 2b f4                                        	sub    rsi,r12
    10402e8d6cfc:	48 0f af f3                                     	imul   rsi,rbx
    10402e8d6d00:	4c 63 a5 c8 fc ff ff                            	movsxd r12,DWORD PTR [rbp-0x338]
    10402e8d6d07:	49 2b cc                                        	sub    rcx,r12
    10402e8d6d0a:	48 0f af cf                                     	imul   rcx,rdi
    10402e8d6d0e:	4c 8b e7                                        	mov    r12,rdi
    10402e8d6d11:	49 c1 fc 3f                                     	sar    r12,0x3f
    10402e8d6d15:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    10402e8d6d19:	49 33 fc                                        	xor    rdi,r12
    10402e8d6d1c:	49 2b fc                                        	sub    rdi,r12
    10402e8d6d1f:	4c 8b e3                                        	mov    r12,rbx
    10402e8d6d22:	49 c1 fc 3f                                     	sar    r12,0x3f
    10402e8d6d26:	48 89 9d 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rbx
    10402e8d6d2d:	49 33 dc                                        	xor    rbx,r12
    10402e8d6d30:	49 2b dc                                        	sub    rbx,r12
    10402e8d6d33:	48 03 fb                                        	add    rdi,rbx
    10402e8d6d36:	48 81 ff ff ff 7f 00                            	cmp    rdi,0x7fffff
    10402e8d6d3d:	0f 86 09 00 00 00                               	jbe    0x10402e8d6d4c
    10402e8d6d43:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    10402e8d6d47:	e9 1a 00 00 00                                  	jmp    0x10402e8d6d66
    10402e8d6d4c:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8d6d50:	41 bc ff ff ff 7f                               	mov    r12d,0x7fffffff
    10402e8d6d56:	4c 2b e7                                        	sub    r12,rdi
    10402e8d6d59:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    10402e8d6d5d:	49 3b fc                                        	cmp    rdi,r12
    10402e8d6d60:	0f 8e 0b 00 00 00                               	jle    0x10402e8d6d71
    10402e8d6d66:	41 bc 01 00 00 00                               	mov    r12d,0x1
    10402e8d6d6c:	e9 03 00 00 00                                  	jmp    0x10402e8d6d74
    10402e8d6d71:	45 33 e4                                        	xor    r12d,r12d
    10402e8d6d74:	4c 03 c2                                        	add    r8,rdx
    10402e8d6d77:	4c 03 f8                                        	add    r15,rax
    10402e8d6d7a:	48 8b 85 88 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x278]
    10402e8d6d81:	83 bd 30 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2d0],0x0
    10402e8d6d88:	48 0f 45 85 e0 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x220]
    10402e8d6d90:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    10402e8d6d97:	83 bd 60 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1a0],0x0
    10402e8d6d9e:	48 0f 45 9d e0 fd ff ff                         	cmovne rbx,QWORD PTR [rbp-0x220]
    10402e8d6da6:	48 8b 95 b8 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x248]
    10402e8d6dad:	83 bd 78 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x288],0x0
    10402e8d6db4:	48 0f 45 95 38 fd ff ff                         	cmovne rdx,QWORD PTR [rbp-0x2c8]
    10402e8d6dbc:	48 89 85 e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rax
    10402e8d6dc3:	48 8b 85 f0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x210]
    10402e8d6dca:	83 bd 10 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f0],0x0
    10402e8d6dd1:	48 0f 45 85 38 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x2c8]
    10402e8d6dd9:	48 89 9d 50 fb ff ff                            	mov    QWORD PTR [rbp-0x4b0],rbx
    10402e8d6de0:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    10402e8d6de7:	45 85 c9                                        	test   r9d,r9d
    10402e8d6dea:	49 0f 45 db                                     	cmovne rbx,r11
    10402e8d6dee:	4c 8b 8d d8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x228]
    10402e8d6df5:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    10402e8d6dfc:	4d 0f 45 cb                                     	cmovne r9,r11
    10402e8d6e00:	4c 8d 1c 31                                     	lea    r11,[rcx+rsi*1]
    10402e8d6e04:	48 8b b5 40 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2c0]
    10402e8d6e0b:	48 f7 de                                        	neg    rsi
    10402e8d6e0e:	48 8b 8d b0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x250]
    10402e8d6e15:	48 f7 d9                                        	neg    rcx
    10402e8d6e18:	48 89 b5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rsi
    10402e8d6e1f:	48 8b b5 80 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x280]
    10402e8d6e26:	48 f7 de                                        	neg    rsi
    10402e8d6e29:	c4 e1 82 2a ef                                  	vcvtsi2ss xmm5,xmm15,rdi
    10402e8d6e2e:	48 89 b5 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rsi
    10402e8d6e35:	48 8b b5 30 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1d0]
    10402e8d6e3c:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8d6e40:	4c 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],r15
    10402e8d6e47:	4c 8b bd 30 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1d0]
    10402e8d6e4e:	4c 33 fe                                        	xor    r15,rsi
    10402e8d6e51:	4c 2b fe                                        	sub    r15,rsi
    10402e8d6e54:	48 8b b5 b0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x250]
    10402e8d6e5b:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8d6e5f:	48 89 95 30 fb ff ff                            	mov    QWORD PTR [rbp-0x4d0],rdx
    10402e8d6e66:	48 8b 95 b0 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x250]
    10402e8d6e6d:	48 33 d6                                        	xor    rdx,rsi
    10402e8d6e70:	48 2b d6                                        	sub    rdx,rsi
    10402e8d6e73:	4c 03 fa                                        	add    r15,rdx
    10402e8d6e76:	48 89 85 88 fb ff ff                            	mov    QWORD PTR [rbp-0x478],rax
    10402e8d6e7d:	48 89 9d d8 fa ff ff                            	mov    QWORD PTR [rbp-0x528],rbx
    10402e8d6e84:	4c 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r9
    10402e8d6e8b:	4c 89 9d d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],r11
    10402e8d6e92:	48 89 8d 58 fb ff ff                            	mov    QWORD PTR [rbp-0x4a8],rcx
    10402e8d6e99:	49 81 ff ff ff 7f 00                            	cmp    r15,0x7fffff
    10402e8d6ea0:	0f 87 15 00 00 00                               	ja     0x10402e8d6ebb
    10402e8d6ea6:	49 c1 e7 08                                     	shl    r15,0x8
    10402e8d6eaa:	ba ff ff ff 7f                                  	mov    edx,0x7fffffff
    10402e8d6eaf:	49 2b d7                                        	sub    rdx,r15
    10402e8d6eb2:	48 3b fa                                        	cmp    rdi,rdx
    10402e8d6eb5:	0f 8e 1b 00 00 00                               	jle    0x10402e8d6ed6
    10402e8d6ebb:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8d6ebf:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8d6ec4:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8d6ec9:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    10402e8d6ecd:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    10402e8d6ed1:	e9 61 04 00 00                                  	jmp    0x10402e8d7337
    10402e8d6ed6:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8d6eda:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8d6edf:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8d6ee4:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    10402e8d6ee8:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    10402e8d6eec:	45 85 e4                                        	test   r12d,r12d
    10402e8d6eef:	0f 85 42 04 00 00                               	jne    0x10402e8d7337
    10402e8d6ef5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8d6ef8:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8d6efc:	45 8b bc 3c d8 00 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0xd8]
    10402e8d6f04:	c4 c1 79 6e f7                                  	vmovd  xmm6,r15d
    10402e8d6f09:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8d6f0e:	41 8b 94 3c f0 00 00 00                         	mov    edx,DWORD PTR [r12+rdi*1+0xf0]
    10402e8d6f16:	c4 e3 49 22 f2 01                               	vpinsrd xmm6,xmm6,edx,0x1
    10402e8d6f1c:	41 8b b4 3c 08 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x108]
    10402e8d6f24:	c4 e3 49 22 f6 02                               	vpinsrd xmm6,xmm6,esi,0x2
    10402e8d6f2a:	48 89 b5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rsi
    10402e8d6f31:	41 8b b4 3c 20 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x120]
    10402e8d6f39:	c4 e3 49 22 f6 03                               	vpinsrd xmm6,xmm6,esi,0x3
    10402e8d6f3f:	48 89 b5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rsi
    10402e8d6f46:	41 8b b4 3c d0 00 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0xd0]
    10402e8d6f4e:	c5 79 6e c6                                     	vmovd  xmm8,esi
    10402e8d6f52:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8d6f57:	48 89 95 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rdx
    10402e8d6f5e:	41 8b 94 3c e8 00 00 00                         	mov    edx,DWORD PTR [r12+rdi*1+0xe8]
    10402e8d6f66:	c4 63 39 22 c2 01                               	vpinsrd xmm8,xmm8,edx,0x1
    10402e8d6f6c:	4c 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r15
    10402e8d6f73:	45 8b bc 3c 00 01 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0x100]
    10402e8d6f7b:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    10402e8d6f81:	41 8b 8c 3c 18 01 00 00                         	mov    ecx,DWORD PTR [r12+rdi*1+0x118]
    10402e8d6f89:	c4 63 39 22 c1 03                               	vpinsrd xmm8,xmm8,ecx,0x3
    10402e8d6f8f:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    10402e8d6f92:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    10402e8d6f95:	81 ff 01 00 01 00                               	cmp    edi,0x10001
    10402e8d6f9b:	0f 8d 87 03 00 00                               	jge    0x10402e8d7328
    10402e8d6fa1:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    10402e8d6fa8:	8b 7d 40                                        	mov    edi,DWORD PTR [rbp+0x40]
    10402e8d6fab:	c5 79 6e cf                                     	vmovd  xmm9,edi
    10402e8d6faf:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8d6fb4:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    10402e8d6fb8:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    10402e8d6fbd:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8d6fc2:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    10402e8d6fc5:	2b 7d 18                                        	sub    edi,DWORD PTR [rbp+0x18]
    10402e8d6fc8:	4c 89 85 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r8
    10402e8d6fcf:	81 ff 00 00 01 00                               	cmp    edi,0x10000
    10402e8d6fd5:	0f 8f 22 03 00 00                               	jg     0x10402e8d72fd
    10402e8d6fdb:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    10402e8d6fe2:	4d 8b c3                                        	mov    r8,r11
    10402e8d6fe5:	4c 03 c7                                        	add    r8,rdi
    10402e8d6fe8:	48 b8 00 00 00 00 ff ff ff ff                   	movabs rax,0xffffffff00000000
    10402e8d6ff2:	4c 3b c0                                        	cmp    r8,rax
    10402e8d6ff5:	0f 82 02 03 00 00                               	jb     0x10402e8d72fd
    10402e8d6ffb:	4f 8d 04 19                                     	lea    r8,[r9+r11*1]
    10402e8d6fff:	44 8b 4d 10                                     	mov    r9d,DWORD PTR [rbp+0x10]
    10402e8d7003:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    10402e8d7007:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    10402e8d700a:	44 03 c8                                        	add    r9d,eax
    10402e8d700d:	4d 63 c9                                        	movsxd r9,r9d
    10402e8d7010:	48 8b 85 40 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2c0]
    10402e8d7017:	49 0f af c1                                     	imul   rax,r9
    10402e8d701b:	48 c1 e0 08                                     	shl    rax,0x8
    10402e8d701f:	4c 89 8d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r9
    10402e8d7026:	4c 8b c8                                        	mov    r9,rax
    10402e8d7029:	49 c1 f9 3f                                     	sar    r9,0x3f
    10402e8d702d:	4c 23 c8                                        	and    r9,rax
    10402e8d7030:	4d 03 c1                                        	add    r8,r9
    10402e8d7033:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8d7037:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    10402e8d703b:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    10402e8d703e:	44 03 cf                                        	add    r9d,edi
    10402e8d7041:	4d 63 c9                                        	movsxd r9,r9d
    10402e8d7044:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8d7048:	49 0f af f9                                     	imul   rdi,r9
    10402e8d704c:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8d7050:	4c 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r9
    10402e8d7057:	4c 8b cf                                        	mov    r9,rdi
    10402e8d705a:	49 c1 f9 3f                                     	sar    r9,0x3f
    10402e8d705e:	4c 23 cf                                        	and    r9,rdi
    10402e8d7061:	4d 03 c1                                        	add    r8,r9
    10402e8d7064:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    10402e8d706b:	0f 8c 8c 02 00 00                               	jl     0x10402e8d72fd
    10402e8d7071:	4e 8d 04 1b                                     	lea    r8,[rbx+r11*1]
    10402e8d7075:	45 33 db                                        	xor    r11d,r11d
    10402e8d7078:	48 85 c0                                        	test   rax,rax
    10402e8d707b:	4c 0f 4f d8                                     	cmovg  r11,rax
    10402e8d707f:	4d 03 c3                                        	add    r8,r11
    10402e8d7082:	45 33 db                                        	xor    r11d,r11d
    10402e8d7085:	48 85 ff                                        	test   rdi,rdi
    10402e8d7088:	4c 0f 4f df                                     	cmovg  r11,rdi
    10402e8d708c:	4b 8d 3c 03                                     	lea    rdi,[r11+r8*1]
    10402e8d7090:	45 33 c9                                        	xor    r9d,r9d
    10402e8d7093:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    10402e8d709a:	0f 8f 56 02 00 00                               	jg     0x10402e8d72f6
    10402e8d70a0:	42 8d 3c 26                                     	lea    edi,[rsi+r12*1]
    10402e8d70a4:	c5 79 6e df                                     	vmovd  xmm11,edi
    10402e8d70a8:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8d70ad:	42 8d 3c 22                                     	lea    edi,[rdx+r12*1]
    10402e8d70b1:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    10402e8d70b7:	43 8d 3c 27                                     	lea    edi,[r15+r12*1]
    10402e8d70bb:	c4 63 21 22 df 02                               	vpinsrd xmm11,xmm11,edi,0x2
    10402e8d70c1:	42 8d 3c 21                                     	lea    edi,[rcx+r12*1]
    10402e8d70c5:	c4 63 21 22 df 03                               	vpinsrd xmm11,xmm11,edi,0x3
    10402e8d70cb:	4c 8b 85 38 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1c8]
    10402e8d70d2:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    10402e8d70d9:	4c 03 c7                                        	add    r8,rdi
    10402e8d70dc:	4c 8b 1d 07 ff ff ff                            	mov    r11,QWORD PTR [rip+0xffffffffffffff07]        # 0x10402e8d6fea
    10402e8d70e3:	4d 3b c3                                        	cmp    r8,r11
    10402e8d70e6:	0f 82 e3 01 00 00                               	jb     0x10402e8d72cf
    10402e8d70ec:	4c 8b 85 88 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x478]
    10402e8d70f3:	4c 8b bd 38 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c8]
    10402e8d70fa:	4b 8d 04 38                                     	lea    rax,[r8+r15*1]
    10402e8d70fe:	48 8b 95 60 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1a0]
    10402e8d7105:	48 0f af 95 58 fb ff ff                         	imul   rdx,QWORD PTR [rbp-0x4a8]
    10402e8d710d:	48 c1 e2 08                                     	shl    rdx,0x8
    10402e8d7111:	48 8b ca                                        	mov    rcx,rdx
    10402e8d7114:	48 c1 f9 3f                                     	sar    rcx,0x3f
    10402e8d7118:	48 23 ca                                        	and    rcx,rdx
    10402e8d711b:	48 03 c1                                        	add    rax,rcx
    10402e8d711e:	48 8b 8d 30 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1d0]
    10402e8d7125:	48 0f af 8d c8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x238]
    10402e8d712d:	48 c1 e1 08                                     	shl    rcx,0x8
    10402e8d7131:	48 8b f1                                        	mov    rsi,rcx
    10402e8d7134:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8d7138:	48 23 f1                                        	and    rsi,rcx
    10402e8d713b:	48 03 c6                                        	add    rax,rsi
    10402e8d713e:	48 3d 01 00 00 80                               	cmp    rax,0xffffffff80000001
    10402e8d7144:	0f 8c 8c 01 00 00                               	jl     0x10402e8d72d6
    10402e8d714a:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    10402e8d7151:	4a 8d 34 38                                     	lea    rsi,[rax+r15*1]
    10402e8d7155:	4d 8b c1                                        	mov    r8,r9
    10402e8d7158:	48 85 d2                                        	test   rdx,rdx
    10402e8d715b:	4c 0f 4f c2                                     	cmovg  r8,rdx
    10402e8d715f:	4c 03 c6                                        	add    r8,rsi
    10402e8d7162:	49 8b d1                                        	mov    rdx,r9
    10402e8d7165:	48 85 c9                                        	test   rcx,rcx
    10402e8d7168:	48 0f 4f d1                                     	cmovg  rdx,rcx
    10402e8d716c:	4c 03 c2                                        	add    r8,rdx
    10402e8d716f:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    10402e8d7176:	0f 8f 5a 01 00 00                               	jg     0x10402e8d72d6
    10402e8d717c:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8d7180:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    10402e8d7186:	41 03 d0                                        	add    edx,r8d
    10402e8d7189:	c5 79 6e e2                                     	vmovd  xmm12,edx
    10402e8d718d:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8d7192:	8b 95 10 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1f0]
    10402e8d7198:	41 03 d0                                        	add    edx,r8d
    10402e8d719b:	c4 63 19 22 e2 01                               	vpinsrd xmm12,xmm12,edx,0x1
    10402e8d71a1:	8b 95 78 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x188]
    10402e8d71a7:	41 03 d0                                        	add    edx,r8d
    10402e8d71aa:	c4 63 19 22 e2 02                               	vpinsrd xmm12,xmm12,edx,0x2
    10402e8d71b0:	8b 95 70 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x190]
    10402e8d71b6:	41 03 d0                                        	add    edx,r8d
    10402e8d71b9:	c4 63 19 22 e2 03                               	vpinsrd xmm12,xmm12,edx,0x3
    10402e8d71bf:	48 03 bd 70 fd ff ff                            	add    rdi,QWORD PTR [rbp-0x290]
    10402e8d71c6:	49 3b fb                                        	cmp    rdi,r11
    10402e8d71c9:	0f 82 ef 00 00 00                               	jb     0x10402e8d72be
    10402e8d71cf:	48 8b bd 50 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x4b0]
    10402e8d71d6:	4c 8b 9d 70 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x290]
    10402e8d71dd:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    10402e8d71e1:	48 8b 8d 60 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1a0]
    10402e8d71e8:	48 0f af 8d f8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x208]
    10402e8d71f0:	48 c1 e1 08                                     	shl    rcx,0x8
    10402e8d71f4:	48 8b f1                                        	mov    rsi,rcx
    10402e8d71f7:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8d71fb:	48 23 f1                                        	and    rsi,rcx
    10402e8d71fe:	48 03 d6                                        	add    rdx,rsi
    10402e8d7201:	48 8b b5 c8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x238]
    10402e8d7208:	48 0f af 75 c0                                  	imul   rsi,QWORD PTR [rbp-0x40]
    10402e8d720d:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8d7211:	48 8b fe                                        	mov    rdi,rsi
    10402e8d7214:	48 c1 ff 3f                                     	sar    rdi,0x3f
    10402e8d7218:	48 23 fe                                        	and    rdi,rsi
    10402e8d721b:	48 03 fa                                        	add    rdi,rdx
    10402e8d721e:	48 81 ff 01 00 00 80                            	cmp    rdi,0xffffffff80000001
    10402e8d7225:	0f 8c 93 00 00 00                               	jl     0x10402e8d72be
    10402e8d722b:	48 8b bd e8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x218]
    10402e8d7232:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    10402e8d7236:	49 8b f9                                        	mov    rdi,r9
    10402e8d7239:	48 85 c9                                        	test   rcx,rcx
    10402e8d723c:	48 0f 4f f9                                     	cmovg  rdi,rcx
    10402e8d7240:	48 03 fa                                        	add    rdi,rdx
    10402e8d7243:	48 85 f6                                        	test   rsi,rsi
    10402e8d7246:	4c 0f 4f ce                                     	cmovg  r9,rsi
    10402e8d724a:	49 03 f9                                        	add    rdi,r9
    10402e8d724d:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    10402e8d7254:	0f 8f 53 00 00 00                               	jg     0x10402e8d72ad
    10402e8d725a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8d725d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d7261:	8b 8c 3a e0 00 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0xe0]
    10402e8d7268:	8b 75 48                                        	mov    esi,DWORD PTR [rbp+0x48]
    10402e8d726b:	03 ce                                           	add    ecx,esi
    10402e8d726d:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    10402e8d7271:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8d7276:	8b 8c 3a f8 00 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0xf8]
    10402e8d727d:	03 ce                                           	add    ecx,esi
    10402e8d727f:	c4 e3 79 22 c1 01                               	vpinsrd xmm0,xmm0,ecx,0x1
    10402e8d7285:	8b 8c 3a 10 01 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0x110]
    10402e8d728c:	03 ce                                           	add    ecx,esi
    10402e8d728e:	c4 e3 79 22 c1 02                               	vpinsrd xmm0,xmm0,ecx,0x2
    10402e8d7294:	8b 8c 3a 28 01 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0x128]
    10402e8d729b:	03 ce                                           	add    ecx,esi
    10402e8d729d:	c4 e3 79 22 c1 03                               	vpinsrd xmm0,xmm0,ecx,0x3
    10402e8d72a3:	33 ff                                           	xor    edi,edi
    10402e8d72a5:	44 8b df                                        	mov    r11d,edi
    10402e8d72a8:	e9 e0 00 00 00                                  	jmp    0x10402e8d738d
    10402e8d72ad:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d72b1:	33 ff                                           	xor    edi,edi
    10402e8d72b3:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8d72b9:	e9 cf 00 00 00                                  	jmp    0x10402e8d738d
    10402e8d72be:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d72c2:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8d72c8:	33 ff                                           	xor    edi,edi
    10402e8d72ca:	e9 be 00 00 00                                  	jmp    0x10402e8d738d
    10402e8d72cf:	4c 8b bd 38 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c8]
    10402e8d72d6:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8d72da:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    10402e8d72e1:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d72e5:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8d72eb:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    10402e8d72ef:	33 ff                                           	xor    edi,edi
    10402e8d72f1:	e9 97 00 00 00                                  	jmp    0x10402e8d738d
    10402e8d72f6:	4c 8b 9d d8 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x428]
    10402e8d72fd:	4c 8b bd 38 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c8]
    10402e8d7304:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8d7308:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    10402e8d730f:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d7313:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    10402e8d7317:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8d731b:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8d7321:	33 ff                                           	xor    edi,edi
    10402e8d7323:	e9 65 00 00 00                                  	jmp    0x10402e8d738d
    10402e8d7328:	45 33 e4                                        	xor    r12d,r12d
    10402e8d732b:	48 8b 8d 58 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x4a8]
    10402e8d7332:	e9 14 00 00 00                                  	jmp    0x10402e8d734b
    10402e8d7337:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    10402e8d733a:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    10402e8d733d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    10402e8d7343:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8d7347:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8d734b:	c5 79 6e 4d 40                                  	vmovd  xmm9,DWORD PTR [rbp+0x40]
    10402e8d7350:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8d7355:	c5 79 6e 55 38                                  	vmovd  xmm10,DWORD PTR [rbp+0x38]
    10402e8d735a:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8d735f:	4d 8b f8                                        	mov    r15,r8
    10402e8d7362:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    10402e8d7366:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8d736a:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    10402e8d7371:	41 8b fc                                        	mov    edi,r12d
    10402e8d7374:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8d737a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d737e:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    10402e8d7385:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    10402e8d7389:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8d738d:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    10402e8d7391:	8b 8c 32 c8 3c 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x3cc8]
    10402e8d7398:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    10402e8d73a0:	c5 78 11 85 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm8
    10402e8d73a8:	48 89 bd 18 fb ff ff                            	mov    QWORD PTR [rbp-0x4e8],rdi
    10402e8d73af:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    10402e8d73b7:	c5 78 11 95 20 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4e0],xmm10
    10402e8d73bf:	4c 89 9d 98 fb ff ff                            	mov    QWORD PTR [rbp-0x468],r11
    10402e8d73c6:	83 bc 32 c8 3c 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x3cc8],0x0
    10402e8d73ce:	0f 85 7c 00 00 00                               	jne    0x10402e8d7450
    10402e8d73d4:	8b 8c 32 ec 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0xec]
    10402e8d73db:	83 bc 32 ec 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xec],0x0
    10402e8d73e3:	0f 85 67 00 00 00                               	jne    0x10402e8d7450
    10402e8d73e9:	8b 8d 68 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x298]
    10402e8d73ef:	44 8b 8c 0a 30 01 00 00                         	mov    r9d,DWORD PTR [rdx+rcx*1+0x130]
    10402e8d73f7:	83 bc 0a 30 01 00 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0x130],0x0
    10402e8d73ff:	0f 85 0b 00 00 00                               	jne    0x10402e8d7410
    10402e8d7405:	41 b9 01 00 00 00                               	mov    r9d,0x1
    10402e8d740b:	e9 43 00 00 00                                  	jmp    0x10402e8d7453
    10402e8d7410:	44 8b 8c 0a 38 01 00 00                         	mov    r9d,DWORD PTR [rdx+rcx*1+0x138]
    10402e8d7418:	83 bc 0a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0x138],0x0
    10402e8d7420:	0f 85 1f 00 00 00                               	jne    0x10402e8d7445
    10402e8d7426:	8b 8c 0a 34 01 00 00                            	mov    ecx,DWORD PTR [rdx+rcx*1+0x134]
    10402e8d742d:	83 f9 01                                        	cmp    ecx,0x1
    10402e8d7430:	0f 84 0f 00 00 00                               	je     0x10402e8d7445
    10402e8d7436:	45 33 c9                                        	xor    r9d,r9d
    10402e8d7439:	83 f9 02                                        	cmp    ecx,0x2
    10402e8d743c:	41 0f 94 c1                                     	sete   r9b
    10402e8d7440:	e9 0e 00 00 00                                  	jmp    0x10402e8d7453
    10402e8d7445:	41 b9 01 00 00 00                               	mov    r9d,0x1
    10402e8d744b:	e9 03 00 00 00                                  	jmp    0x10402e8d7453
    10402e8d7450:	45 33 c9                                        	xor    r9d,r9d
    10402e8d7453:	4c 89 8d 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r9
    10402e8d745a:	83 bd 40 fe ff ff 04                            	cmp    DWORD PTR [rbp-0x1c0],0x4
    10402e8d7461:	0f 84 0a 00 00 00                               	je     0x10402e8d7471
    10402e8d7467:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8d746c:	e9 50 01 00 00                                  	jmp    0x10402e8d75c1
    10402e8d7471:	8b 8c 32 80 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x80]
    10402e8d7478:	83 bc 32 80 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x80],0x0
    10402e8d7480:	0f 85 69 00 00 00                               	jne    0x10402e8d74ef
    10402e8d7486:	8b 8c 32 a4 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0xa4]
    10402e8d748d:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    10402e8d7495:	0f 85 54 00 00 00                               	jne    0x10402e8d74ef
    10402e8d749b:	8b 8c 32 30 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x530]
    10402e8d74a2:	83 bc 32 30 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x530],0x0
    10402e8d74aa:	0f 85 3f 00 00 00                               	jne    0x10402e8d74ef
    10402e8d74b0:	8b 8c 32 70 37 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x3770]
    10402e8d74b7:	83 bc 32 70 37 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x3770],0x0
    10402e8d74bf:	0f 85 2a 00 00 00                               	jne    0x10402e8d74ef
    10402e8d74c5:	8b 8c 32 74 37 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x3774]
    10402e8d74cc:	83 bc 32 74 37 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x3774],0x0
    10402e8d74d4:	0f 85 15 00 00 00                               	jne    0x10402e8d74ef
    10402e8d74da:	8b 8c 32 20 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x520]
    10402e8d74e1:	83 bc 32 20 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x520],0x0
    10402e8d74e9:	0f 85 0a 00 00 00                               	jne    0x10402e8d74f9
    10402e8d74ef:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8d74f4:	e9 c8 00 00 00                                  	jmp    0x10402e8d75c1
    10402e8d74f9:	8b 8c 32 24 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x524]
    10402e8d7500:	83 bc 32 24 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x524],0x0
    10402e8d7508:	74 e5                                           	je     0x10402e8d74ef
    10402e8d750a:	8b 8c 32 28 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x528]
    10402e8d7511:	83 bc 32 28 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x528],0x0
    10402e8d7519:	74 d4                                           	je     0x10402e8d74ef
    10402e8d751b:	8b 8c 32 2c 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x52c]
    10402e8d7522:	83 bc 32 2c 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x52c],0x0
    10402e8d752a:	74 c3                                           	je     0x10402e8d74ef
    10402e8d752c:	8b 4c 32 74                                     	mov    ecx,DWORD PTR [rdx+rsi*1+0x74]
    10402e8d7530:	83 7c 32 74 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x74],0x0
    10402e8d7535:	0f 84 34 00 00 00                               	je     0x10402e8d756f
    10402e8d753b:	8b 4c 32 78                                     	mov    ecx,DWORD PTR [rdx+rsi*1+0x78]
    10402e8d753f:	45 33 c9                                        	xor    r9d,r9d
    10402e8d7542:	81 f9 02 03 00 00                               	cmp    ecx,0x302
    10402e8d7548:	41 0f 95 c1                                     	setne  r9b
    10402e8d754c:	83 f9 01                                        	cmp    ecx,0x1
    10402e8d754f:	0f 95 c1                                        	setne  cl
    10402e8d7552:	0f b6 c9                                        	movzx  ecx,cl
    10402e8d7555:	41 85 c9                                        	test   r9d,ecx
    10402e8d7558:	75 95                                           	jne    0x10402e8d74ef
    10402e8d755a:	8b 4c 32 7c                                     	mov    ecx,DWORD PTR [rdx+rsi*1+0x7c]
    10402e8d755e:	81 f9 03 03 00 00                               	cmp    ecx,0x303
    10402e8d7564:	0f 84 05 00 00 00                               	je     0x10402e8d756f
    10402e8d756a:	83 f9 01                                        	cmp    ecx,0x1
    10402e8d756d:	75 80                                           	jne    0x10402e8d74ef
    10402e8d756f:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8d7576:	0f 85 07 00 00 00                               	jne    0x10402e8d7583
    10402e8d757c:	33 c9                                           	xor    ecx,ecx
    10402e8d757e:	e9 3e 00 00 00                                  	jmp    0x10402e8d75c1
    10402e8d7583:	8b 8c 32 90 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x90]
    10402e8d758a:	83 bc 32 90 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x90],0x0
    10402e8d7592:	0f 85 57 ff ff ff                               	jne    0x10402e8d74ef
    10402e8d7598:	8b 8c 32 94 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x94]
    10402e8d759f:	83 bc 32 94 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x94],0x0
    10402e8d75a7:	0f 85 42 ff ff ff                               	jne    0x10402e8d74ef
    10402e8d75ad:	8b 8c 32 98 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x98]
    10402e8d75b4:	33 c9                                           	xor    ecx,ecx
    10402e8d75b6:	83 bc 32 98 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x98],0x0
    10402e8d75be:	0f 95 c1                                        	setne  cl
    10402e8d75c1:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d75c5:	42 c7 44 0a 18 00 00 00 00                      	mov    DWORD PTR [rdx+r9*1+0x18],0x0
    10402e8d75ce:	48 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],rcx
    10402e8d75d5:	8b 8d d8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x228]
    10402e8d75db:	83 f9 08                                        	cmp    ecx,0x8
    10402e8d75de:	0f 8c 39 02 00 00                               	jl     0x10402e8d781d
    10402e8d75e4:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    10402e8d75e7:	2b 75 18                                        	sub    esi,DWORD PTR [rbp+0x18]
    10402e8d75ea:	48 63 f6                                        	movsxd rsi,esi
    10402e8d75ed:	48 8b f9                                        	mov    rdi,rcx
    10402e8d75f0:	48 0f af fe                                     	imul   rdi,rsi
    10402e8d75f4:	48 83 ff 40                                     	cmp    rdi,0x40
    10402e8d75f8:	0f 8c 1f 02 00 00                               	jl     0x10402e8d781d
    10402e8d75fe:	8b bd c8 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x338]
    10402e8d7604:	3b bd 18 fe ff ff                               	cmp    edi,DWORD PTR [rbp-0x1e8]
    10402e8d760a:	0f 84 80 00 00 00                               	je     0x10402e8d7690
    10402e8d7610:	48 8b b5 40 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2c0]
    10402e8d7617:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8d761b:	c4 61 82 2a ee                                  	vcvtsi2ss xmm13,xmm15,rsi
    10402e8d7620:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    10402e8d7624:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    10402e8d7629:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    10402e8d762e:	c4 41 6a 5e ed                                  	vdivss xmm13,xmm2,xmm13
    10402e8d7633:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    10402e8d7638:	48 8b 75 b8                                     	mov    rsi,QWORD PTR [rbp-0x48]
    10402e8d763c:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8d7640:	c4 e1 82 2a d6                                  	vcvtsi2ss xmm2,xmm15,rsi
    10402e8d7645:	c5 92 59 d2                                     	vmulss xmm2,xmm13,xmm2
    10402e8d7649:	49 63 f4                                        	movsxd rsi,r12d
    10402e8d764c:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    10402e8d7653:	4c 8d 1c 13                                     	lea    r11,[rbx+rdx*1]
    10402e8d7657:	4c 03 de                                        	add    r11,rsi
    10402e8d765a:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    10402e8d765f:	49 ba 60 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b860
    10402e8d7669:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    10402e8d766e:	c5 12 59 eb                                     	vmulss xmm13,xmm13,xmm3
    10402e8d7672:	c4 41 79 28 fd                                  	vmovapd xmm15,xmm13
    10402e8d7677:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    10402e8d767b:	c4 c1 79 28 d7                                  	vmovapd xmm2,xmm15
    10402e8d7680:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8d7684:	44 8b 9d 98 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x468]
    10402e8d768b:	e9 08 00 00 00                                  	jmp    0x10402e8d7698
    10402e8d7690:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    10402e8d7694:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8d7698:	8b b5 f8 fa ff ff                               	mov    esi,DWORD PTR [rbp-0x508]
    10402e8d769e:	3b b5 18 fe ff ff                               	cmp    esi,DWORD PTR [rbp-0x1e8]
    10402e8d76a4:	0f 84 7c 00 00 00                               	je     0x10402e8d7726
    10402e8d76aa:	4c 8b 9d 58 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x4a8]
    10402e8d76b1:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8d76b5:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    10402e8d76ba:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    10402e8d76be:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    10402e8d76c3:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    10402e8d76c8:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    10402e8d76cc:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    10402e8d76d0:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    10402e8d76d7:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8d76db:	c4 c1 82 2a e3                                  	vcvtsi2ss xmm4,xmm15,r11
    10402e8d76e0:	c5 e2 59 e4                                     	vmulss xmm4,xmm3,xmm4
    10402e8d76e4:	4d 63 d8                                        	movsxd r11,r8d
    10402e8d76e7:	4a 8d 1c 38                                     	lea    rbx,[rax+r15*1]
    10402e8d76eb:	4c 03 db                                        	add    r11,rbx
    10402e8d76ee:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    10402e8d76f3:	4c 8b 15 67 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff67]        # 0x10402e8d7661
    10402e8d76fa:	c4 c1 48 57 32                                  	vxorps xmm6,xmm6,XMMWORD PTR [r10]
    10402e8d76ff:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    10402e8d7703:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e8d7707:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    10402e8d770b:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    10402e8d7713:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    10402e8d771a:	44 8b 9d 98 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x468]
    10402e8d7721:	e9 08 00 00 00                                  	jmp    0x10402e8d772e
    10402e8d7726:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    10402e8d772a:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    10402e8d772e:	3b f7                                           	cmp    esi,edi
    10402e8d7730:	0f 84 c1 00 00 00                               	je     0x10402e8d77f7
    10402e8d7736:	4c 8b 9d f8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x208]
    10402e8d773d:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8d7741:	c4 41 82 2a c3                                  	vcvtsi2ss xmm8,xmm15,r11
    10402e8d7746:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8d774b:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    10402e8d7751:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    10402e8d7757:	c4 41 32 5e c0                                  	vdivss xmm8,xmm9,xmm8
    10402e8d775c:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    10402e8d7761:	4c 8b 5d c0                                     	mov    r11,QWORD PTR [rbp-0x40]
    10402e8d7765:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8d7769:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    10402e8d776e:	c4 41 3a 59 c9                                  	vmulss xmm9,xmm8,xmm9
    10402e8d7773:	48 63 45 48                                     	movsxd rax,DWORD PTR [rbp+0x48]
    10402e8d7777:	4c 8b 9d 70 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x290]
    10402e8d777e:	48 8b bd e8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x218]
    10402e8d7785:	49 8d 1c 3b                                     	lea    rbx,[r11+rdi*1]
    10402e8d7789:	48 03 c3                                        	add    rax,rbx
    10402e8d778c:	c4 61 82 2a d0                                  	vcvtsi2ss xmm10,xmm15,rax
    10402e8d7791:	4c 8b 15 c9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec9]        # 0x10402e8d7661
    10402e8d7798:	c4 41 28 57 12                                  	vxorps xmm10,xmm10,XMMWORD PTR [r10]
    10402e8d779d:	c4 41 3a 59 c2                                  	vmulss xmm8,xmm8,xmm10
    10402e8d77a2:	c5 fb 11 95 f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm2
    10402e8d77aa:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    10402e8d77ae:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    10402e8d77b3:	44 8b 9d 98 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x468]
    10402e8d77ba:	c5 fb 11 a5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm4
    10402e8d77c2:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    10402e8d77c7:	bf 01 00 00 00                                  	mov    edi,0x1
    10402e8d77cc:	c5 78 10 85 00 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x400]
    10402e8d77d4:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    10402e8d77db:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    10402e8d77e2:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    10402e8d77ea:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8d77f2:	e9 48 00 00 00                                  	jmp    0x10402e8d783f
    10402e8d77f7:	c5 fb 11 95 f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm2
    10402e8d77ff:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    10402e8d7803:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    10402e8d7807:	bf 01 00 00 00                                  	mov    edi,0x1
    10402e8d780c:	c5 fb 11 a5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm4
    10402e8d7814:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    10402e8d7818:	e9 22 00 00 00                                  	jmp    0x10402e8d783f
    10402e8d781d:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    10402e8d7821:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8d7825:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    10402e8d7829:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    10402e8d782d:	c5 fb 11 bd 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm7
    10402e8d7835:	c5 fb 11 bd f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm7
    10402e8d783d:	33 ff                                           	xor    edi,edi
    10402e8d783f:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    10402e8d7842:	3b 75 18                                        	cmp    esi,DWORD PTR [rbp+0x18]
    10402e8d7845:	0f 8e 47 8b 00 00                               	jle    0x10402e8e0392
    10402e8d784b:	c5 7b 11 ad b0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x350],xmm13
    10402e8d7853:	c4 41 f9 6e ef                                  	vmovq  xmm13,r15
    10402e8d7858:	c4 41 7b 12 ed                                  	vmovddup xmm13,xmm13
    10402e8d785d:	c4 63 91 22 ad 70 fd ff ff 01                   	vpinsrq xmm13,xmm13,QWORD PTR [rbp-0x290],0x1
    10402e8d7867:	4c 8b bd f8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x208]
    10402e8d786e:	49 c1 e7 08                                     	shl    r15,0x8
    10402e8d7872:	44 8d 59 ff                                     	lea    r11d,[rcx-0x1]
    10402e8d7876:	4d 63 db                                        	movsxd r11,r11d
    10402e8d7879:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    10402e8d7880:	4d 0f af fb                                     	imul   r15,r11
    10402e8d7884:	48 89 bd 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rdi
    10402e8d788b:	49 8b ff                                        	mov    rdi,r15
    10402e8d788e:	48 f7 d7                                        	not    rdi
    10402e8d7891:	48 89 bd d0 fb ff ff                            	mov    QWORD PTR [rbp-0x430],rdi
    10402e8d7898:	48 8b bd 58 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x4a8]
    10402e8d789f:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8d78a3:	48 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rdi
    10402e8d78aa:	49 0f af fb                                     	imul   rdi,r11
    10402e8d78ae:	48 89 bd f8 fb ff ff                            	mov    QWORD PTR [rbp-0x408],rdi
    10402e8d78b5:	48 f7 d7                                        	not    rdi
    10402e8d78b8:	48 8b b5 40 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2c0]
    10402e8d78bf:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8d78c3:	4c 0f af de                                     	imul   r11,rsi
    10402e8d78c7:	4c 89 9d 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r11
    10402e8d78ce:	49 f7 d3                                        	not    r11
    10402e8d78d1:	c5 fb 11 95 88 fc ff ff                         	vmovsd QWORD PTR [rbp-0x378],xmm2
    10402e8d78d9:	c5 fb 12 95 30 fe ff ff                         	vmovddup xmm2,QWORD PTR [rbp-0x1d0]
    10402e8d78e1:	c4 e3 e9 22 55 c0 01                            	vpinsrq xmm2,xmm2,QWORD PTR [rbp-0x40],0x1
    10402e8d78e8:	c5 e9 73 f2 08                                  	vpsllq xmm2,xmm2,0x8
    10402e8d78ed:	48 89 bd b0 fb ff ff                            	mov    QWORD PTR [rbp-0x450],rdi
    10402e8d78f4:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8d78f8:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8d78fc:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8d78ff:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    10402e8d7903:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    10402e8d7909:	48 89 bd 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rdi
    10402e8d7910:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    10402e8d7916:	48 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],rdi
    10402e8d791d:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    10402e8d7923:	48 89 bd 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rdi
    10402e8d792a:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    10402e8d7930:	48 89 bd 28 fd ff ff                            	mov    QWORD PTR [rbp-0x2d8],rdi
    10402e8d7937:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    10402e8d793d:	8b 85 d0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x230]
    10402e8d7943:	48 89 bd d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rdi
    10402e8d794a:	8d 78 50                                        	lea    edi,[rax+0x50]
    10402e8d794d:	8b 85 68 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x198]
    10402e8d7953:	48 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rdi
    10402e8d795a:	8d 78 50                                        	lea    edi,[rax+0x50]
    10402e8d795d:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    10402e8d7963:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    10402e8d796a:	8d 78 50                                        	lea    edi,[rax+0x50]
    10402e8d796d:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    10402e8d7970:	83 f0 ff                                        	xor    eax,0xffffffff
    10402e8d7973:	48 89 bd f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],rdi
    10402e8d797a:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    10402e8d797d:	4c 89 9d 08 fb ff ff                            	mov    QWORD PTR [rbp-0x4f8],r11
    10402e8d7984:	44 8d 5f 02                                     	lea    r11d,[rdi+0x2]
    10402e8d7988:	48 8b bd 30 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1d0]
    10402e8d798f:	48 2b bd b0 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x250]
    10402e8d7996:	48 c1 e7 07                                     	shl    rdi,0x7
    10402e8d799a:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    10402e8d79a1:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8d79a5:	48 2b bd 80 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x280]
    10402e8d79ac:	48 c1 e7 07                                     	shl    rdi,0x7
    10402e8d79b0:	48 89 bd e0 fb ff ff                            	mov    QWORD PTR [rbp-0x420],rdi
    10402e8d79b7:	8d 79 fe                                        	lea    edi,[rcx-0x2]
    10402e8d79ba:	c5 f8 11 55 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm2
    10402e8d79bf:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    10402e8d79c3:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    10402e8d79c7:	4d 63 c0                                        	movsxd r8,r8d
    10402e8d79ca:	4d 63 e4                                        	movsxd r12,r12d
    10402e8d79cd:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    10402e8d79d4:	41 8d b9 90 00 00 00                            	lea    edi,[r9+0x90]
    10402e8d79db:	4c 89 85 e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r8
    10402e8d79e2:	45 8d 41 18                                     	lea    r8d,[r9+0x18]
    10402e8d79e6:	41 83 c8 04                                     	or     r8d,0x4
    10402e8d79ea:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    10402e8d79ef:	c5 fb 11 9d 78 fc ff ff                         	vmovsd QWORD PTR [rbp-0x388],xmm3
    10402e8d79f7:	c4 e2 79 18 dd                                  	vbroadcastss xmm3,xmm5
    10402e8d79fc:	c5 fb 11 ad e8 fc ff ff                         	vmovsd QWORD PTR [rbp-0x318],xmm5
    10402e8d7a04:	c5 82 2a e9                                     	vcvtsi2ss xmm5,xmm15,ecx
    10402e8d7a08:	41 8d 89 60 01 00 00                            	lea    ecx,[r9+0x160]
    10402e8d7a0f:	4c 89 85 d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r8
    10402e8d7a16:	45 8d 81 50 01 00 00                            	lea    r8d,[r9+0x150]
    10402e8d7a1d:	c5 78 11 a5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm12
    10402e8d7a25:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    10402e8d7a2d:	c5 78 11 9d e0 fa ff ff                         	vmovups XMMWORD PTR [rbp-0x520],xmm11
    10402e8d7a35:	4c 89 bd a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r15
    10402e8d7a3c:	48 89 b5 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rsi
    10402e8d7a43:	48 89 85 a8 fb ff ff                            	mov    QWORD PTR [rbp-0x458],rax
    10402e8d7a4a:	4c 89 9d a0 fb ff ff                            	mov    QWORD PTR [rbp-0x460],r11
    10402e8d7a51:	c5 fb 11 95 10 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f0],xmm2
    10402e8d7a59:	4c 89 a5 90 fb ff ff                            	mov    QWORD PTR [rbp-0x470],r12
    10402e8d7a60:	48 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rdi
    10402e8d7a67:	c5 f8 11 8d 70 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x490],xmm1
    10402e8d7a6f:	c5 f8 11 9d 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm3
    10402e8d7a77:	c5 fb 11 ad 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm5
    10402e8d7a7f:	48 89 8d 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],rcx
    10402e8d7a86:	4c 89 85 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r8
    10402e8d7a8d:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8d7a91:	c5 fb 10 b5 78 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x188]
    10402e8d7a99:	c5 fb 10 ad f0 fb ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x410]
    10402e8d7aa1:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    10402e8d7aa8:	48 c7 85 70 fc ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x390],0x0
    10402e8d7ab3:	48 c7 85 b8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x248],0x0
    10402e8d7abe:	8b 7d 18                                        	mov    edi,DWORD PTR [rbp+0x18]
    10402e8d7ac1:	c4 c1 79 28 d8                                  	vmovapd xmm3,xmm8
    10402e8d7ac6:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    10402e8d7acb:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    10402e8d7ace:	45 8b fb                                        	mov    r15d,r11d
    10402e8d7ad1:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    10402e8d7ad7:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    10402e8d7add:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8d7ae4:	e9 29 00 00 00                                  	jmp    0x10402e8d7b12
    10402e8d7ae9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d7af2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d7afb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    10402e8d7b00:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    10402e8d7b04:	4c 8b a5 90 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x470]
    10402e8d7b0b:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    10402e8d7b12:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8d7b17:	0f 85 1f 8a 00 00                               	jne    0x10402e8e053c
    10402e8d7b1d:	83 bd 80 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x380],0x0
    10402e8d7b24:	0f 85 13 00 00 00                               	jne    0x10402e8d7b3d
    10402e8d7b2a:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    10402e8d7b31:	44 8b c0                                        	mov    r8d,eax
    10402e8d7b34:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8d7b38:	e9 6c 05 00 00                                  	jmp    0x10402e8d80a9
    10402e8d7b3d:	4c 8d 04 13                                     	lea    r8,[rbx+rdx*1]
    10402e8d7b41:	4d 03 c4                                        	add    r8,r12
    10402e8d7b44:	83 bd b8 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x448],0x0
    10402e8d7b4b:	0f 8c c4 00 00 00                               	jl     0x10402e8d7c15
    10402e8d7b51:	3b f1                                           	cmp    esi,ecx
    10402e8d7b53:	0f 84 b1 00 00 00                               	je     0x10402e8d7c0a
    10402e8d7b59:	4d 85 c0                                        	test   r8,r8
    10402e8d7b5c:	0f 8c d4 69 00 00                               	jl     0x10402e8de536
    10402e8d7b62:	4d 3b c8                                        	cmp    r9,r8
    10402e8d7b65:	0f 8c 61 00 00 00                               	jl     0x10402e8d7bcc
    10402e8d7b6b:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8d7b6f:	0f 87 63 00 00 00                               	ja     0x10402e8d7bd8
    10402e8d7b75:	c5 f8 2e ad 10 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x1f0]
    10402e8d7b7d:	0f 83 49 00 00 00                               	jae    0x10402e8d7bcc
    10402e8d7b83:	4c 8b 15 8b e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe78b]        # 0x10402e8d6315
    10402e8d7b8a:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    10402e8d7b8f:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8d7b93:	0f 87 0b 00 00 00                               	ja     0x10402e8d7ba4
    10402e8d7b99:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    10402e8d7b9f:	e9 20 00 00 00                                  	jmp    0x10402e8d7bc4
    10402e8d7ba4:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    10402e8d7baa:	c5 7a 2c d8                                     	vcvttss2si r11d,xmm0
    10402e8d7bae:	c4 41 02 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11d
    10402e8d7bb3:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8d7bb8:	0f 8a 7c 8c 00 00                               	jp     0x10402e8e083a
    10402e8d7bbe:	0f 85 76 8c 00 00                               	jne    0x10402e8e083a
    10402e8d7bc4:	45 03 df                                        	add    r11d,r15d
    10402e8d7bc7:	e9 10 00 00 00                                  	jmp    0x10402e8d7bdc
    10402e8d7bcc:	44 8b c0                                        	mov    r8d,eax
    10402e8d7bcf:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8d7bd3:	e9 f0 00 00 00                                  	jmp    0x10402e8d7cc8
    10402e8d7bd8:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8d7bdc:	41 3b c3                                        	cmp    eax,r11d
    10402e8d7bdf:	7e eb                                           	jle    0x10402e8d7bcc
    10402e8d7be1:	41 8b db                                        	mov    ebx,r11d
    10402e8d7be4:	2b 5d 10                                        	sub    ebx,DWORD PTR [rbp+0x10]
    10402e8d7be7:	48 63 db                                        	movsxd rbx,ebx
    10402e8d7bea:	48 0f af 9d 48 fc ff ff                         	imul   rbx,QWORD PTR [rbp-0x3b8]
    10402e8d7bf2:	4c 03 c3                                        	add    r8,rbx
    10402e8d7bf5:	8b d8                                           	mov    ebx,eax
    10402e8d7bf7:	4d 85 c0                                        	test   r8,r8
    10402e8d7bfa:	41 0f 4c db                                     	cmovl  ebx,r11d
    10402e8d7bfe:	44 8b c3                                        	mov    r8d,ebx
    10402e8d7c01:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8d7c05:	e9 be 00 00 00                                  	jmp    0x10402e8d7cc8
    10402e8d7c0a:	4d 85 c0                                        	test   r8,r8
    10402e8d7c0d:	0f 8c 23 69 00 00                               	jl     0x10402e8de536
    10402e8d7c13:	eb b7                                           	jmp    0x10402e8d7bcc
    10402e8d7c15:	4c 8b 9d 20 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x2e0]
    10402e8d7c1c:	4f 8d 24 03                                     	lea    r12,[r11+r8*1]
    10402e8d7c20:	4d 85 e4                                        	test   r12,r12
    10402e8d7c23:	0f 8c 0d 69 00 00                               	jl     0x10402e8de536
    10402e8d7c29:	4d 85 c0                                        	test   r8,r8
    10402e8d7c2c:	7d 9e                                           	jge    0x10402e8d7bcc
    10402e8d7c2e:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8d7c32:	73 98                                           	jae    0x10402e8d7bcc
    10402e8d7c34:	4c 8b 15 da e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6da]        # 0x10402e8d6315
    10402e8d7c3b:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    10402e8d7c40:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8d7c44:	0f 87 0b 00 00 00                               	ja     0x10402e8d7c55
    10402e8d7c4a:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    10402e8d7c50:	e9 20 00 00 00                                  	jmp    0x10402e8d7c75
    10402e8d7c55:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    10402e8d7c5b:	c5 7a 2c e0                                     	vcvttss2si r12d,xmm0
    10402e8d7c5f:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    10402e8d7c64:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8d7c69:	0f 8a c6 8b 00 00                               	jp     0x10402e8e0835
    10402e8d7c6f:	0f 85 c0 8b 00 00                               	jne    0x10402e8e0835
    10402e8d7c75:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8d7c79:	45 03 e3                                        	add    r12d,r11d
    10402e8d7c7c:	c5 f8 2e ad 30 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x1d0]
    10402e8d7c84:	44 0f 43 e0                                     	cmovae r12d,eax
    10402e8d7c88:	45 3b e3                                        	cmp    r12d,r11d
    10402e8d7c8b:	0f 8e 34 00 00 00                               	jle    0x10402e8d7cc5
    10402e8d7c91:	8b 9d a8 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x458]
    10402e8d7c97:	46 8d 0c 23                                     	lea    r9d,[rbx+r12*1]
    10402e8d7c9b:	4d 63 c9                                        	movsxd r9,r9d
    10402e8d7c9e:	4c 0f af 8d 48 fc ff ff                         	imul   r9,QWORD PTR [rbp-0x3b8]
    10402e8d7ca6:	4d 03 c1                                        	add    r8,r9
    10402e8d7ca9:	45 8b cb                                        	mov    r9d,r11d
    10402e8d7cac:	4d 85 c0                                        	test   r8,r8
    10402e8d7caf:	45 0f 4c cc                                     	cmovl  r9d,r12d
    10402e8d7cb3:	44 8b c0                                        	mov    r8d,eax
    10402e8d7cb6:	45 8b d9                                        	mov    r11d,r9d
    10402e8d7cb9:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8d7cc0:	e9 03 00 00 00                                  	jmp    0x10402e8d7cc8
    10402e8d7cc5:	44 8b c0                                        	mov    r8d,eax
    10402e8d7cc8:	c4 43 f9 16 ec 00                               	vpextrq r12,xmm13,0x0
    10402e8d7cce:	48 8b 9d 30 fb ff ff                            	mov    rbx,QWORD PTR [rbp-0x4d0]
    10402e8d7cd5:	4c 03 e3                                        	add    r12,rbx
    10402e8d7cd8:	48 8b 9d e0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x320]
    10402e8d7cdf:	4c 03 e3                                        	add    r12,rbx
    10402e8d7ce2:	83 bd 80 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x480],0x0
    10402e8d7ce9:	0f 8d e2 00 00 00                               	jge    0x10402e8d7dd1
    10402e8d7cef:	48 8b 9d f8 fb ff ff                            	mov    rbx,QWORD PTR [rbp-0x408]
    10402e8d7cf6:	4e 8d 0c 23                                     	lea    r9,[rbx+r12*1]
    10402e8d7cfa:	4d 85 c9                                        	test   r9,r9
    10402e8d7cfd:	0f 8c c2 00 00 00                               	jl     0x10402e8d7dc5
    10402e8d7d03:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    10402e8d7d0a:	4d 85 e4                                        	test   r12,r12
    10402e8d7d0d:	0f 8d 9f 00 00 00                               	jge    0x10402e8d7db2
    10402e8d7d13:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8d7d17:	0f 83 95 00 00 00                               	jae    0x10402e8d7db2
    10402e8d7d1d:	4c 8b 15 f1 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5f1]        # 0x10402e8d6315
    10402e8d7d24:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    10402e8d7d29:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8d7d2d:	0f 87 0b 00 00 00                               	ja     0x10402e8d7d3e
    10402e8d7d33:	41 b9 00 00 00 80                               	mov    r9d,0x80000000
    10402e8d7d39:	e9 20 00 00 00                                  	jmp    0x10402e8d7d5e
    10402e8d7d3e:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    10402e8d7d44:	c5 7a 2c c8                                     	vcvttss2si r9d,xmm0
    10402e8d7d48:	c4 41 02 2a d1                                  	vcvtsi2ss xmm10,xmm15,r9d
    10402e8d7d4d:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8d7d52:	0f 8a d8 8a 00 00                               	jp     0x10402e8e0830
    10402e8d7d58:	0f 85 d2 8a 00 00                               	jne    0x10402e8e0830
    10402e8d7d5e:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    10402e8d7d61:	44 03 cb                                        	add    r9d,ebx
    10402e8d7d64:	c5 f8 2e b5 30 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x1d0]
    10402e8d7d6c:	44 0f 43 c8                                     	cmovae r9d,eax
    10402e8d7d70:	45 3b cb                                        	cmp    r9d,r11d
    10402e8d7d73:	0f 8e 39 00 00 00                               	jle    0x10402e8d7db2
    10402e8d7d79:	8b 85 a8 fb ff ff                               	mov    eax,DWORD PTR [rbp-0x458]
    10402e8d7d7f:	42 8d 14 08                                     	lea    edx,[rax+r9*1]
    10402e8d7d83:	48 63 d2                                        	movsxd rdx,edx
    10402e8d7d86:	48 0f af 95 38 fc ff ff                         	imul   rdx,QWORD PTR [rbp-0x3c8]
    10402e8d7d8e:	4c 03 e2                                        	add    r12,rdx
    10402e8d7d91:	4d 85 e4                                        	test   r12,r12
    10402e8d7d94:	45 0f 4c d9                                     	cmovl  r11d,r9d
    10402e8d7d98:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8d7d9f:	48 8b 9d e0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x320]
    10402e8d7da6:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    10402e8d7dad:	e9 07 01 00 00                                  	jmp    0x10402e8d7eb9
    10402e8d7db2:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8d7db9:	48 8b 9d e0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x320]
    10402e8d7dc0:	e9 f4 00 00 00                                  	jmp    0x10402e8d7eb9
    10402e8d7dc5:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8d7dcc:	e9 65 67 00 00                                  	jmp    0x10402e8de536
    10402e8d7dd1:	3b 8d f8 fa ff ff                               	cmp    ecx,DWORD PTR [rbp-0x508]
    10402e8d7dd7:	0f 84 cc 00 00 00                               	je     0x10402e8d7ea9
    10402e8d7ddd:	4d 85 e4                                        	test   r12,r12
    10402e8d7de0:	0f 8c 50 67 00 00                               	jl     0x10402e8de536
    10402e8d7de6:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    10402e8d7ded:	48 8b 85 b0 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x450]
    10402e8d7df4:	49 3b c4                                        	cmp    rax,r12
    10402e8d7df7:	0f 8c bc 00 00 00                               	jl     0x10402e8d7eb9
    10402e8d7dfd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8d7e01:	0f 87 63 00 00 00                               	ja     0x10402e8d7e6a
    10402e8d7e07:	c5 f8 2e b5 10 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x1f0]
    10402e8d7e0f:	0f 83 a4 00 00 00                               	jae    0x10402e8d7eb9
    10402e8d7e15:	4c 8b 15 f9 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4f9]        # 0x10402e8d6315
    10402e8d7e1c:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    10402e8d7e21:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8d7e25:	0f 87 0a 00 00 00                               	ja     0x10402e8d7e35
    10402e8d7e2b:	b8 00 00 00 80                                  	mov    eax,0x80000000
    10402e8d7e30:	e9 1f 00 00 00                                  	jmp    0x10402e8d7e54
    10402e8d7e35:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    10402e8d7e3b:	c5 fa 2c c0                                     	vcvttss2si eax,xmm0
    10402e8d7e3f:	c5 02 2a d0                                     	vcvtsi2ss xmm10,xmm15,eax
    10402e8d7e43:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8d7e48:	0f 8a dd 89 00 00                               	jp     0x10402e8e082b
    10402e8d7e4e:	0f 85 d7 89 00 00                               	jne    0x10402e8e082b
    10402e8d7e54:	41 03 c7                                        	add    eax,r15d
    10402e8d7e57:	48 89 85 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rax
    10402e8d7e5e:	48 8b 85 b0 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x450]
    10402e8d7e65:	e9 0b 00 00 00                                  	jmp    0x10402e8d7e75
    10402e8d7e6a:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    10402e8d7e6e:	4c 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r10
    10402e8d7e75:	44 3b 85 70 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x190]
    10402e8d7e7c:	0f 8e 37 00 00 00                               	jle    0x10402e8d7eb9
    10402e8d7e82:	8b 85 70 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x190]
    10402e8d7e88:	2b 45 10                                        	sub    eax,DWORD PTR [rbp+0x10]
    10402e8d7e8b:	48 63 c0                                        	movsxd rax,eax
    10402e8d7e8e:	48 0f af 85 38 fc ff ff                         	imul   rax,QWORD PTR [rbp-0x3c8]
    10402e8d7e96:	4c 03 e0                                        	add    r12,rax
    10402e8d7e99:	4d 85 e4                                        	test   r12,r12
    10402e8d7e9c:	44 0f 4c 85 70 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x190]
    10402e8d7ea4:	e9 10 00 00 00                                  	jmp    0x10402e8d7eb9
    10402e8d7ea9:	4d 85 e4                                        	test   r12,r12
    10402e8d7eac:	0f 8c 84 66 00 00                               	jl     0x10402e8de536
    10402e8d7eb2:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    10402e8d7eb9:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    10402e8d7ebf:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    10402e8d7ec6:	49 03 c4                                        	add    rax,r12
    10402e8d7ec9:	4c 8b a5 f0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x210]
    10402e8d7ed0:	49 03 c4                                        	add    rax,r12
    10402e8d7ed3:	83 bd c0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x240],0x0
    10402e8d7eda:	0f 8d ce 00 00 00                               	jge    0x10402e8d7fae
    10402e8d7ee0:	4c 8b a5 a0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x260]
    10402e8d7ee7:	49 8d 1c 04                                     	lea    rbx,[r12+rax*1]
    10402e8d7eeb:	48 85 db                                        	test   rbx,rbx
    10402e8d7eee:	0f 8c b2 00 00 00                               	jl     0x10402e8d7fa6
    10402e8d7ef4:	48 85 c0                                        	test   rax,rax
    10402e8d7ef7:	0f 8d ac 01 00 00                               	jge    0x10402e8d80a9
    10402e8d7efd:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    10402e8d7f01:	0f 83 68 00 00 00                               	jae    0x10402e8d7f6f
    10402e8d7f07:	c5 f8 2e a5 30 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x1d0]
    10402e8d7f0f:	0f 83 52 00 00 00                               	jae    0x10402e8d7f67
    10402e8d7f15:	4c 8b 15 f9 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe3f9]        # 0x10402e8d6315
    10402e8d7f1c:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    10402e8d7f21:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8d7f25:	0f 87 0a 00 00 00                               	ja     0x10402e8d7f35
    10402e8d7f2b:	bb 00 00 00 80                                  	mov    ebx,0x80000000
    10402e8d7f30:	e9 1f 00 00 00                                  	jmp    0x10402e8d7f54
    10402e8d7f35:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    10402e8d7f3b:	c5 fa 2c d8                                     	vcvttss2si ebx,xmm0
    10402e8d7f3f:	c5 02 2a d3                                     	vcvtsi2ss xmm10,xmm15,ebx
    10402e8d7f43:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8d7f48:	0f 8a d8 88 00 00                               	jp     0x10402e8e0826
    10402e8d7f4e:	0f 85 d2 88 00 00                               	jne    0x10402e8e0826
    10402e8d7f54:	44 8b 65 10                                     	mov    r12d,DWORD PTR [rbp+0x10]
    10402e8d7f58:	41 03 dc                                        	add    ebx,r12d
    10402e8d7f5b:	4c 8b a5 a0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x260]
    10402e8d7f62:	e9 0b 00 00 00                                  	jmp    0x10402e8d7f72
    10402e8d7f67:	8b 5d 20                                        	mov    ebx,DWORD PTR [rbp+0x20]
    10402e8d7f6a:	e9 03 00 00 00                                  	jmp    0x10402e8d7f72
    10402e8d7f6f:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    10402e8d7f72:	41 3b db                                        	cmp    ebx,r11d
    10402e8d7f75:	0f 8e 2e 01 00 00                               	jle    0x10402e8d80a9
    10402e8d7f7b:	44 8b a5 a8 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x458]
    10402e8d7f82:	41 8d 0c 1c                                     	lea    ecx,[r12+rbx*1]
    10402e8d7f86:	48 63 c9                                        	movsxd rcx,ecx
    10402e8d7f89:	48 0f af 8d 28 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x3d8]
    10402e8d7f91:	48 03 c1                                        	add    rax,rcx
    10402e8d7f94:	48 85 c0                                        	test   rax,rax
    10402e8d7f97:	44 0f 4c db                                     	cmovl  r11d,ebx
    10402e8d7f9b:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    10402e8d7fa1:	e9 03 01 00 00                                  	jmp    0x10402e8d80a9
    10402e8d7fa6:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    10402e8d7fa9:	e9 88 65 00 00                                  	jmp    0x10402e8de536
    10402e8d7fae:	3b b5 f8 fa ff ff                               	cmp    esi,DWORD PTR [rbp-0x508]
    10402e8d7fb4:	0f 84 e6 00 00 00                               	je     0x10402e8d80a0
    10402e8d7fba:	48 85 c0                                        	test   rax,rax
    10402e8d7fbd:	7c e7                                           	jl     0x10402e8d7fa6
    10402e8d7fbf:	48 8b b5 d0 fb ff ff                            	mov    rsi,QWORD PTR [rbp-0x430]
    10402e8d7fc6:	48 3b f0                                        	cmp    rsi,rax
    10402e8d7fc9:	0f 8c c6 00 00 00                               	jl     0x10402e8d8095
    10402e8d7fcf:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    10402e8d7fd3:	0f 87 75 00 00 00                               	ja     0x10402e8d804e
    10402e8d7fd9:	c5 f8 2e a5 10 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x1f0]
    10402e8d7fe1:	0f 83 57 00 00 00                               	jae    0x10402e8d803e
    10402e8d7fe7:	4c 8b 15 27 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe327]        # 0x10402e8d6315
    10402e8d7fee:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    10402e8d7ff3:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8d7ff7:	0f 87 0b 00 00 00                               	ja     0x10402e8d8008
    10402e8d7ffd:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    10402e8d8003:	e9 20 00 00 00                                  	jmp    0x10402e8d8028
    10402e8d8008:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    10402e8d800e:	c5 7a 2c e0                                     	vcvttss2si r12d,xmm0
    10402e8d8012:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    10402e8d8017:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8d801c:	0f 8a ff 87 00 00                               	jp     0x10402e8e0821
    10402e8d8022:	0f 85 f9 87 00 00                               	jne    0x10402e8e0821
    10402e8d8028:	45 03 e7                                        	add    r12d,r15d
    10402e8d802b:	4c 89 a5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r12
    10402e8d8032:	4c 8b a5 f0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x210]
    10402e8d8039:	e9 1b 00 00 00                                  	jmp    0x10402e8d8059
    10402e8d803e:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    10402e8d8042:	4c 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r10
    10402e8d8049:	e9 0b 00 00 00                                  	jmp    0x10402e8d8059
    10402e8d804e:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    10402e8d8052:	4c 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r10
    10402e8d8059:	44 3b 85 70 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x190]
    10402e8d8060:	0f 8e 2f 00 00 00                               	jle    0x10402e8d8095
    10402e8d8066:	44 8b a5 70 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x190]
    10402e8d806d:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    10402e8d8071:	4d 63 e4                                        	movsxd r12,r12d
    10402e8d8074:	4c 0f af a5 28 fc ff ff                         	imul   r12,QWORD PTR [rbp-0x3d8]
    10402e8d807c:	4c 03 e0                                        	add    r12,rax
    10402e8d807f:	4d 85 e4                                        	test   r12,r12
    10402e8d8082:	44 0f 4c 85 70 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x190]
    10402e8d808a:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    10402e8d8090:	e9 14 00 00 00                                  	jmp    0x10402e8d80a9
    10402e8d8095:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    10402e8d809b:	e9 09 00 00 00                                  	jmp    0x10402e8d80a9
    10402e8d80a0:	48 85 c0                                        	test   rax,rax
    10402e8d80a3:	0f 8c fd fe ff ff                               	jl     0x10402e8d7fa6
    10402e8d80a9:	45 3b c3                                        	cmp    r8d,r11d
    10402e8d80ac:	0f 8e f4 fe ff ff                               	jle    0x10402e8d7fa6
    10402e8d80b2:	44 8b e7                                        	mov    r12d,edi
    10402e8d80b5:	41 83 cc 03                                     	or     r12d,0x3
    10402e8d80b9:	8b c7                                           	mov    eax,edi
    10402e8d80bb:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8d80c0:	8b d8                                           	mov    ebx,eax
    10402e8d80c2:	83 cb 02                                        	or     ebx,0x2
    10402e8d80c5:	48 89 85 e8 fb ff ff                            	mov    QWORD PTR [rbp-0x418],rax
    10402e8d80cc:	83 c8 01                                        	or     eax,0x1
    10402e8d80cf:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    10402e8d80d6:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
    10402e8d80de:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    10402e8d80e5:	45 8b e0                                        	mov    r12d,r8d
    10402e8d80e8:	41 83 e4 0c                                     	and    r12d,0xc
    10402e8d80ec:	41 83 e0 7c                                     	and    r8d,0x7c
    10402e8d80f0:	4c 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r8
    10402e8d80f7:	45 8b c3                                        	mov    r8d,r11d
    10402e8d80fa:	44 2b 45 10                                     	sub    r8d,DWORD PTR [rbp+0x10]
    10402e8d80fe:	4d 63 c0                                        	movsxd r8,r8d
    10402e8d8101:	49 c1 e0 08                                     	shl    r8,0x8
    10402e8d8105:	48 89 9d 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rbx
    10402e8d810c:	48 8b 9d 40 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2c0]
    10402e8d8113:	49 0f af d8                                     	imul   rbx,r8
    10402e8d8117:	48 03 da                                        	add    rbx,rdx
    10402e8d811a:	48 8b 95 58 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x4a8]
    10402e8d8121:	49 0f af d0                                     	imul   rdx,r8
    10402e8d8125:	c4 63 f9 16 ee 00                               	vpextrq rsi,xmm13,0x0
    10402e8d812b:	48 03 d6                                        	add    rdx,rsi
    10402e8d812e:	48 8b b5 f8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x208]
    10402e8d8135:	49 0f af f0                                     	imul   rsi,r8
    10402e8d8139:	c4 43 f9 16 e8 01                               	vpextrq r8,xmm13,0x1
    10402e8d813f:	4c 03 c6                                        	add    r8,rsi
    10402e8d8142:	8b f7                                           	mov    esi,edi
    10402e8d8144:	c1 fe 02                                        	sar    esi,0x2
    10402e8d8147:	c1 e6 04                                        	shl    esi,0x4
    10402e8d814a:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    10402e8d814e:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    10402e8d8153:	c5 fb 11 ad f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm5
    10402e8d815b:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    10402e8d8160:	c5 fb 11 b5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm6
    10402e8d8168:	48 89 85 38 fb ff ff                            	mov    QWORD PTR [rbp-0x4c8],rax
    10402e8d816f:	4c 89 a5 f0 fa ff ff                            	mov    QWORD PTR [rbp-0x510],r12
    10402e8d8176:	48 89 b5 00 fb ff ff                            	mov    QWORD PTR [rbp-0x500],rsi
    10402e8d817d:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    10402e8d8185:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    10402e8d818d:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    10402e8d8195:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8d819d:	e9 2c 00 00 00                                  	jmp    0x10402e8d81ce
    10402e8d81a2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d81ab:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d81b4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8d81bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    10402e8d81c0:	4d 8b c7                                        	mov    r8,r15
    10402e8d81c3:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8d81cb:	48 8b d9                                        	mov    rbx,rcx
    10402e8d81ce:	48 8b bd f0 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x210]
    10402e8d81d5:	48 8b b5 30 fb ff ff                            	mov    rsi,QWORD PTR [rbp-0x4d0]
    10402e8d81dc:	48 8b 8d e0 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x320]
    10402e8d81e3:	4c 8b 8d d8 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x528]
    10402e8d81ea:	48 8b 85 90 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x470]
    10402e8d81f1:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    10402e8d81f9:	4c 89 85 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r8
    10402e8d8200:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8d8205:	0f 85 e6 83 00 00                               	jne    0x10402e8e05f1
    10402e8d820b:	83 bd 98 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x468],0x0
    10402e8d8212:	0f 85 7b 00 00 00                               	jne    0x10402e8d8293
    10402e8d8218:	44 8b fb                                        	mov    r15d,ebx
    10402e8d821b:	c4 41 79 6e cf                                  	vmovd  xmm9,r15d
    10402e8d8220:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8d8225:	c4 41 31 fe cb                                  	vpaddd xmm9,xmm9,xmm11
    10402e8d822a:	45 8b f8                                        	mov    r15d,r8d
    10402e8d822d:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    10402e8d8232:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8d8237:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    10402e8d823b:	c4 41 31 eb db                                  	vpor   xmm11,xmm9,xmm11
    10402e8d8240:	44 8b fa                                        	mov    r15d,edx
    10402e8d8243:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    10402e8d8248:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8d824d:	c4 c1 79 fe c4                                  	vpaddd xmm0,xmm0,xmm12
    10402e8d8252:	c5 21 eb d8                                     	vpor   xmm11,xmm11,xmm0
    10402e8d8256:	c4 41 78 50 fb                                  	vmovmskps r15d,xmm11
    10402e8d825b:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8d825f:	0f 84 22 00 00 00                               	je     0x10402e8d8287
    10402e8d8265:	41 83 f7 0f                                     	xor    r15d,0xf
    10402e8d8269:	c4 41 31 fa ca                                  	vpsubd xmm9,xmm9,xmm10
    10402e8d826e:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8d8273:	c5 f9 fa c2                                     	vpsubd xmm0,xmm0,xmm2
    10402e8d8277:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8d827b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8d827f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8d8282:	e9 95 02 00 00                                  	jmp    0x10402e8d851c
    10402e8d8287:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8d828b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8d828e:	e9 11 62 00 00                                  	jmp    0x10402e8de4a4
    10402e8d8293:	4c 8d 3c 18                                     	lea    r15,[rax+rbx*1]
    10402e8d8297:	4b 8d 04 39                                     	lea    rax,[r9+r15*1]
    10402e8d829b:	48 85 c0                                        	test   rax,rax
    10402e8d829e:	7c e7                                           	jl     0x10402e8d8287
    10402e8d82a0:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    10402e8d82a4:	4c 8d 0c 06                                     	lea    r9,[rsi+rax*1]
    10402e8d82a8:	4d 85 c9                                        	test   r9,r9
    10402e8d82ab:	7c da                                           	jl     0x10402e8d8287
    10402e8d82ad:	4e 8d 0c 07                                     	lea    r9,[rdi+r8*1]
    10402e8d82b1:	48 8b bd e8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x218]
    10402e8d82b8:	4e 8d 04 0f                                     	lea    r8,[rdi+r9*1]
    10402e8d82bc:	4d 85 c0                                        	test   r8,r8
    10402e8d82bf:	7c c6                                           	jl     0x10402e8d8287
    10402e8d82c1:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    10402e8d82c8:	4b 8d 3c 38                                     	lea    rdi,[r8+r15*1]
    10402e8d82cc:	48 85 ff                                        	test   rdi,rdi
    10402e8d82cf:	0f 8c 3a 00 00 00                               	jl     0x10402e8d830f
    10402e8d82d5:	48 8b bd 88 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x478]
    10402e8d82dc:	4c 8d 04 07                                     	lea    r8,[rdi+rax*1]
    10402e8d82e0:	4d 85 c0                                        	test   r8,r8
    10402e8d82e3:	0f 8c 26 00 00 00                               	jl     0x10402e8d830f
    10402e8d82e9:	4c 8b 85 50 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x4b0]
    10402e8d82f0:	4b 8d 3c 08                                     	lea    rdi,[r8+r9*1]
    10402e8d82f4:	48 85 ff                                        	test   rdi,rdi
    10402e8d82f7:	0f 8c 12 00 00 00                               	jl     0x10402e8d830f
    10402e8d82fd:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    10402e8d8303:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8d8306:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8d830a:	e9 22 01 00 00                                  	jmp    0x10402e8d8431
    10402e8d830f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8d8312:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8d8316:	49 8b b4 38 d0 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xd0]
    10402e8d831e:	49 03 f7                                        	add    rsi,r15
    10402e8d8321:	48 85 f6                                        	test   rsi,rsi
    10402e8d8324:	0f 8c 2f 00 00 00                               	jl     0x10402e8d8359
    10402e8d832a:	49 8b b4 38 d8 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xd8]
    10402e8d8332:	48 03 f0                                        	add    rsi,rax
    10402e8d8335:	48 85 f6                                        	test   rsi,rsi
    10402e8d8338:	0f 8c 1b 00 00 00                               	jl     0x10402e8d8359
    10402e8d833e:	49 8b b4 38 e0 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xe0]
    10402e8d8346:	49 03 f1                                        	add    rsi,r9
    10402e8d8349:	48 85 f6                                        	test   rsi,rsi
    10402e8d834c:	40 0f 9d c6                                     	setge  sil
    10402e8d8350:	40 0f b6 f6                                     	movzx  esi,sil
    10402e8d8354:	e9 02 00 00 00                                  	jmp    0x10402e8d835b
    10402e8d8359:	33 f6                                           	xor    esi,esi
    10402e8d835b:	49 8b 8c 38 e8 00 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0xe8]
    10402e8d8363:	49 03 cf                                        	add    rcx,r15
    10402e8d8366:	48 85 c9                                        	test   rcx,rcx
    10402e8d8369:	0f 8c 2c 00 00 00                               	jl     0x10402e8d839b
    10402e8d836f:	49 8b 8c 38 f0 00 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0xf0]
    10402e8d8377:	48 03 c8                                        	add    rcx,rax
    10402e8d837a:	48 85 c9                                        	test   rcx,rcx
    10402e8d837d:	0f 8c 18 00 00 00                               	jl     0x10402e8d839b
    10402e8d8383:	8b ce                                           	mov    ecx,esi
    10402e8d8385:	83 c9 02                                        	or     ecx,0x2
    10402e8d8388:	4d 8b a4 38 f8 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xf8]
    10402e8d8390:	4d 03 e1                                        	add    r12,r9
    10402e8d8393:	4d 85 e4                                        	test   r12,r12
    10402e8d8396:	0f 4c ce                                        	cmovl  ecx,esi
    10402e8d8399:	8b f1                                           	mov    esi,ecx
    10402e8d839b:	4d 8b a4 38 00 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x100]
    10402e8d83a3:	4d 03 e7                                        	add    r12,r15
    10402e8d83a6:	4d 85 e4                                        	test   r12,r12
    10402e8d83a9:	0f 8c 30 00 00 00                               	jl     0x10402e8d83df
    10402e8d83af:	4d 8b a4 38 08 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x108]
    10402e8d83b7:	4c 03 e0                                        	add    r12,rax
    10402e8d83ba:	4d 85 e4                                        	test   r12,r12
    10402e8d83bd:	0f 8c 1c 00 00 00                               	jl     0x10402e8d83df
    10402e8d83c3:	44 8b e6                                        	mov    r12d,esi
    10402e8d83c6:	41 83 cc 04                                     	or     r12d,0x4
    10402e8d83ca:	49 8b 8c 38 10 01 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0x110]
    10402e8d83d2:	49 03 c9                                        	add    rcx,r9
    10402e8d83d5:	48 85 c9                                        	test   rcx,rcx
    10402e8d83d8:	44 0f 4c e6                                     	cmovl  r12d,esi
    10402e8d83dc:	41 8b f4                                        	mov    esi,r12d
    10402e8d83df:	4d 8b a4 38 18 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x118]
    10402e8d83e7:	4d 03 e7                                        	add    r12,r15
    10402e8d83ea:	4d 85 e4                                        	test   r12,r12
    10402e8d83ed:	0f 8c 33 00 00 00                               	jl     0x10402e8d8426
    10402e8d83f3:	4d 8b a4 38 20 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x120]
    10402e8d83fb:	4c 03 e0                                        	add    r12,rax
    10402e8d83fe:	4d 85 e4                                        	test   r12,r12
    10402e8d8401:	0f 8c 1f 00 00 00                               	jl     0x10402e8d8426
    10402e8d8407:	4d 8b a4 38 28 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x128]
    10402e8d840f:	4d 03 e1                                        	add    r12,r9
    10402e8d8412:	4d 85 e4                                        	test   r12,r12
    10402e8d8415:	0f 8c 0b 00 00 00                               	jl     0x10402e8d8426
    10402e8d841b:	83 ce 08                                        	or     esi,0x8
    10402e8d841e:	44 8b fe                                        	mov    r15d,esi
    10402e8d8421:	e9 0b 00 00 00                                  	jmp    0x10402e8d8431
    10402e8d8426:	85 f6                                           	test   esi,esi
    10402e8d8428:	0f 84 76 60 00 00                               	je     0x10402e8de4a4
    10402e8d842e:	44 8b fe                                        	mov    r15d,esi
    10402e8d8431:	83 bd 18 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4e8],0x0
    10402e8d8438:	0f 85 30 00 00 00                               	jne    0x10402e8d846e
    10402e8d843e:	44 8b e3                                        	mov    r12d,ebx
    10402e8d8441:	c4 41 79 6e cc                                  	vmovd  xmm9,r12d
    10402e8d8446:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8d844b:	c5 31 fe cb                                     	vpaddd xmm9,xmm9,xmm3
    10402e8d844f:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8d8454:	44 8b e2                                        	mov    r12d,edx
    10402e8d8457:	c4 c1 79 6e c4                                  	vmovd  xmm0,r12d
    10402e8d845c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8d8461:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    10402e8d8465:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8d8469:	e9 ae 00 00 00                                  	jmp    0x10402e8d851c
    10402e8d846e:	4d 8b a4 38 d0 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xd0]
    10402e8d8476:	4c 03 e3                                        	add    r12,rbx
    10402e8d8479:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    10402e8d847e:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8d8483:	4d 8b a4 38 e8 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xe8]
    10402e8d848b:	4c 03 e3                                        	add    r12,rbx
    10402e8d848e:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    10402e8d8493:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    10402e8d8499:	4d 8b a4 38 00 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x100]
    10402e8d84a1:	4c 03 e3                                        	add    r12,rbx
    10402e8d84a4:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    10402e8d84a9:	c4 63 31 21 c8 20                               	vinsertps xmm9,xmm9,xmm0,0x20
    10402e8d84af:	4d 8b a4 38 18 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x118]
    10402e8d84b7:	4c 03 e3                                        	add    r12,rbx
    10402e8d84ba:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    10402e8d84bf:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    10402e8d84c5:	4d 8b a4 38 d8 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xd8]
    10402e8d84cd:	4c 03 e2                                        	add    r12,rdx
    10402e8d84d0:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    10402e8d84d5:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8d84da:	4d 8b a4 38 f0 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xf0]
    10402e8d84e2:	4c 03 e2                                        	add    r12,rdx
    10402e8d84e5:	c4 41 82 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12
    10402e8d84ea:	c4 c3 79 21 c2 10                               	vinsertps xmm0,xmm0,xmm10,0x10
    10402e8d84f0:	4d 8b a4 38 08 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x108]
    10402e8d84f8:	4c 03 e2                                        	add    r12,rdx
    10402e8d84fb:	c4 41 82 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12
    10402e8d8500:	c4 c3 79 21 c2 20                               	vinsertps xmm0,xmm0,xmm10,0x20
    10402e8d8506:	4d 8b a4 38 20 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x120]
    10402e8d850e:	4c 03 e2                                        	add    r12,rdx
    10402e8d8511:	c4 41 82 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12
    10402e8d8516:	c4 c3 79 21 c2 30                               	vinsertps xmm0,xmm0,xmm10,0x30
    10402e8d851c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    10402e8d8526:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8d852b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8d8530:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8d8535:	c4 41 50 59 c9                                  	vmulps xmm9,xmm5,xmm9
    10402e8d853a:	4d 8d 60 18                                     	lea    r12,[r8+0x18]
    10402e8d853e:	48 8b 85 58 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a8]
    10402e8d8545:	c4 42 79 18 24 04                               	vbroadcastss xmm12,DWORD PTR [r12+rax*1]
    10402e8d854b:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    10402e8d8550:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    10402e8d8554:	48 8b b5 60 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2a0]
    10402e8d855b:	c4 c2 79 18 2c 34                               	vbroadcastss xmm5,DWORD PTR [r12+rsi*1]
    10402e8d8561:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    10402e8d8565:	c5 98 58 ed                                     	vaddps xmm5,xmm12,xmm5
    10402e8d8569:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x10402e8d851e
    10402e8d8570:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8d8575:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8d857a:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    10402e8d857f:	c5 b0 5c c0                                     	vsubps xmm0,xmm9,xmm0
    10402e8d8583:	4c 8b 8d 50 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2b0]
    10402e8d858a:	c4 02 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+r9*1]
    10402e8d8590:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8d8595:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    10402e8d8599:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    10402e8d859d:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    10402e8d85a1:	c5 78 c2 cd 01                                  	vcmpltps xmm9,xmm0,xmm5
    10402e8d85a6:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    10402e8d85aa:	c5 18 c2 c8 01                                  	vcmpltps xmm9,xmm12,xmm0
    10402e8d85af:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    10402e8d85b3:	c4 c1 29 db c1                                  	vpand  xmm0,xmm10,xmm9
    10402e8d85b8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d85bd:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    10402e8d85c3:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8d85c7:	43 8b 4c 20 68                                  	mov    ecx,DWORD PTR [r8+r12*1+0x68]
    10402e8d85cc:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    10402e8d85d2:	0f 84 1f 01 00 00                               	je     0x10402e8d86f7
    10402e8d85d8:	43 8b 8c 20 a4 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xa4]
    10402e8d85e0:	43 83 bc 20 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xa4],0x0
    10402e8d85e9:	0f 85 08 01 00 00                               	jne    0x10402e8d86f7
    10402e8d85ef:	43 8b 4c 20 1c                                  	mov    ecx,DWORD PTR [r8+r12*1+0x1c]
    10402e8d85f4:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    10402e8d85f8:	0f af 45 d0                                     	imul   eax,DWORD PTR [rbp-0x30]
    10402e8d85fc:	41 03 c3                                        	add    eax,r11d
    10402e8d85ff:	c1 e0 04                                        	shl    eax,0x4
    10402e8d8602:	03 c1                                           	add    eax,ecx
    10402e8d8604:	c4 41 7a 6f 0c 00                               	vmovdqu xmm9,XMMWORD PTR [r8+rax*1]
    10402e8d860a:	43 8b 44 20 6c                                  	mov    eax,DWORD PTR [r8+r12*1+0x6c]
    10402e8d860f:	2d 00 02 00 00                                  	sub    eax,0x200
    10402e8d8614:	83 f8 07                                        	cmp    eax,0x7
    10402e8d8617:	0f 83 0b 00 00 00                               	jae    0x10402e8d8628
    10402e8d861d:	4c 8d 15 3c 82 00 00                            	lea    r10,[rip+0x823c]        # 0x10402e8e0860
    10402e8d8624:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    10402e8d8628:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    10402e8d862d:	e9 39 00 00 00                                  	jmp    0x10402e8d866b
    10402e8d8632:	c5 30 c2 d8 02                                  	vcmpleps xmm11,xmm9,xmm0
    10402e8d8637:	e9 2f 00 00 00                                  	jmp    0x10402e8d866b
    10402e8d863c:	c5 30 c2 d8 04                                  	vcmpneqps xmm11,xmm9,xmm0
    10402e8d8641:	e9 25 00 00 00                                  	jmp    0x10402e8d866b
    10402e8d8646:	c5 30 c2 d8 01                                  	vcmpltps xmm11,xmm9,xmm0
    10402e8d864b:	e9 1b 00 00 00                                  	jmp    0x10402e8d866b
    10402e8d8650:	c4 41 78 c2 d9 02                               	vcmpleps xmm11,xmm0,xmm9
    10402e8d8656:	e9 10 00 00 00                                  	jmp    0x10402e8d866b
    10402e8d865b:	c5 30 c2 d8 00                                  	vcmpeqps xmm11,xmm9,xmm0
    10402e8d8660:	e9 06 00 00 00                                  	jmp    0x10402e8d866b
    10402e8d8665:	c4 41 78 c2 d9 01                               	vcmpltps xmm11,xmm0,xmm9
    10402e8d866b:	c4 c1 78 50 c3                                  	vmovmskps eax,xmm11
    10402e8d8670:	41 8b cf                                        	mov    ecx,r15d
    10402e8d8673:	23 c8                                           	and    ecx,eax
    10402e8d8675:	83 bd 70 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x390],0x0
    10402e8d867c:	0f 85 22 00 00 00                               	jne    0x10402e8d86a4
    10402e8d8682:	85 c9                                           	test   ecx,ecx
    10402e8d8684:	0f 85 58 00 00 00                               	jne    0x10402e8d86e2
    10402e8d868a:	c4 c1 78 c2 c1 02                               	vcmpleps xmm0,xmm0,xmm9
    10402e8d8690:	c5 f8 50 c0                                     	vmovmskps eax,xmm0
    10402e8d8694:	41 85 c7                                        	test   r15d,eax
    10402e8d8697:	41 0f 95 c7                                     	setne  r15b
    10402e8d869b:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e8d869f:	e9 0f 00 00 00                                  	jmp    0x10402e8d86b3
    10402e8d86a4:	41 85 c7                                        	test   r15d,eax
    10402e8d86a7:	0f 85 35 00 00 00                               	jne    0x10402e8d86e2
    10402e8d86ad:	41 bf 01 00 00 00                               	mov    r15d,0x1
    10402e8d86b3:	4c 89 bd 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r15
    10402e8d86ba:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    10402e8d86c5:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    10402e8d86cd:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8d86d5:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    10402e8d86dd:	e9 c2 5d 00 00                                  	jmp    0x10402e8de4a4
    10402e8d86e2:	48 8b 85 58 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a8]
    10402e8d86e9:	44 8b f9                                        	mov    r15d,ecx
    10402e8d86ec:	48 c7 85 70 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x390],0x1
    10402e8d86f7:	4c 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r11
    10402e8d86fe:	48 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rbx
    10402e8d8705:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    10402e8d870c:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8d8710:	0f 84 29 00 00 00                               	je     0x10402e8d873f
    10402e8d8716:	8d 8f d0 00 00 00                               	lea    ecx,[rdi+0xd0]
    10402e8d871c:	f3 45 0f bc df                                  	tzcnt  r11d,r15d
    10402e8d8721:	45 6b db 18                                     	imul   r11d,r11d,0x18
    10402e8d8725:	44 03 d9                                        	add    r11d,ecx
    10402e8d8728:	4b 8b 4c 18 08                                  	mov    rcx,QWORD PTR [r8+r11*1+0x8]
    10402e8d872d:	4f 8b 1c 18                                     	mov    r11,QWORD PTR [r8+r11*1]
    10402e8d8731:	4d 8b d3                                        	mov    r10,r11
    10402e8d8734:	4c 8b d9                                        	mov    r11,rcx
    10402e8d8737:	49 8b ca                                        	mov    rcx,r10
    10402e8d873a:	e9 0e 00 00 00                                  	jmp    0x10402e8d874d
    10402e8d873f:	4c 8b 9d 70 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x290]
    10402e8d8746:	48 8b 8d e0 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x420]
    10402e8d874d:	4c 03 da                                        	add    r11,rdx
    10402e8d8750:	48 03 cb                                        	add    rcx,rbx
    10402e8d8753:	83 bd 88 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x278],0x0
    10402e8d875a:	0f 85 9f 1b 00 00                               	jne    0x10402e8da2ff
    10402e8d8760:	c4 81 7a 10 44 08 1c                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x1c]
    10402e8d8767:	c4 41 7a 10 4c 30 1c                            	vmovss xmm9,DWORD PTR [r8+rsi*1+0x1c]
    10402e8d876e:	c4 41 7a 10 5c 00 1c                            	vmovss xmm11,DWORD PTR [r8+rax*1+0x1c]
    10402e8d8775:	4c 89 bd 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r15
    10402e8d877c:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    10402e8d8784:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    10402e8d878d:	0f 84 65 00 00 00                               	je     0x10402e8d87f8
    10402e8d8793:	44 8b bd 50 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3b0]
    10402e8d879a:	41 c1 ef 03                                     	shr    r15d,0x3
    10402e8d879e:	41 83 e7 03                                     	and    r15d,0x3
    10402e8d87a2:	44 8b a5 d8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x228]
    10402e8d87a9:	45 0b e7                                        	or     r12d,r15d
    10402e8d87ac:	44 8b bd d8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x328]
    10402e8d87b3:	45 03 e7                                        	add    r12d,r15d
    10402e8d87b6:	47 0f b6 24 20                                  	movzx  r12d,BYTE PTR [r8+r12*1]
    10402e8d87bb:	44 8b bd 50 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3b0]
    10402e8d87c2:	41 83 e7 07                                     	and    r15d,0x7
    10402e8d87c6:	4c 8b d1                                        	mov    r10,rcx
    10402e8d87c9:	41 8b cf                                        	mov    ecx,r15d
    10402e8d87cc:	4d 8b fa                                        	mov    r15,r10
    10402e8d87cf:	41 d3 e4                                        	shl    r12d,cl
    10402e8d87d2:	41 f6 c4 80                                     	test   r12b,0x80
    10402e8d87d6:	0f 85 15 00 00 00                               	jne    0x10402e8d87f1
    10402e8d87dc:	44 8b cf                                        	mov    r9d,edi
    10402e8d87df:	49 8b f8                                        	mov    rdi,r8
    10402e8d87e2:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8d87e6:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8d87ec:	e9 a3 1a 00 00                                  	jmp    0x10402e8da294
    10402e8d87f1:	49 8b cf                                        	mov    rcx,r15
    10402e8d87f4:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8d87f8:	c5 f8 11 ad a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm5
    10402e8d8800:	c4 e1 82 2a e9                                  	vcvtsi2ss xmm5,xmm15,rcx
    10402e8d8805:	c5 ba 59 ed                                     	vmulss xmm5,xmm8,xmm5
    10402e8d8809:	c4 41 52 59 db                                  	vmulss xmm11,xmm5,xmm11
    10402e8d880e:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    10402e8d8813:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    10402e8d8817:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    10402e8d881c:	c4 41 22 58 c1                                  	vaddss xmm8,xmm11,xmm9
    10402e8d8821:	c5 78 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm10
    10402e8d8829:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8d882e:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8d8834:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8d883a:	c5 aa 5c ed                                     	vsubss xmm5,xmm10,xmm5
    10402e8d883e:	c5 d2 5c ee                                     	vsubss xmm5,xmm5,xmm6
    10402e8d8842:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    10402e8d8846:	c5 ba 58 e8                                     	vaddss xmm5,xmm8,xmm0
    10402e8d884a:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8d884e:	0f 83 31 1a 00 00                               	jae    0x10402e8da285
    10402e8d8854:	c5 aa 5e ed                                     	vdivss xmm5,xmm10,xmm5
    10402e8d8858:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    10402e8d885c:	c4 e2 79 18 f5                                  	vbroadcastss xmm6,xmm5
    10402e8d8861:	c4 01 7a 6f 44 08 20                            	vmovdqu xmm8,XMMWORD PTR [r8+r9*1+0x20]
    10402e8d8868:	c5 fb 11 ad b8 fc ff ff                         	vmovsd QWORD PTR [rbp-0x348],xmm5
    10402e8d8870:	c4 e2 79 18 e8                                  	vbroadcastss xmm5,xmm0
    10402e8d8875:	c5 b8 59 ed                                     	vmulps xmm5,xmm8,xmm5
    10402e8d8879:	c4 41 7a 6f 44 00 20                            	vmovdqu xmm8,XMMWORD PTR [r8+rax*1+0x20]
    10402e8d8880:	c5 fb 11 85 18 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2e8],xmm0
    10402e8d8888:	c4 c2 79 18 c3                                  	vbroadcastss xmm0,xmm11
    10402e8d888d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8d8891:	c4 42 79 18 c1                                  	vbroadcastss xmm8,xmm9
    10402e8d8896:	c4 c1 7a 6f 7c 30 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8d889d:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    10402e8d88a1:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    10402e8d88a5:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    10402e8d88a9:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    10402e8d88ad:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8d88b7:	c4 81 7a 10 ac 08 98 00 00 00                   	vmovss xmm5,DWORD PTR [r8+r9*1+0x98]
    10402e8d88c1:	c4 c1 7a 10 b4 00 98 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rax*1+0x98]
    10402e8d88cb:	c4 c1 7a 10 bc 30 98 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rsi*1+0x98]
    10402e8d88d5:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    10402e8d88df:	44 8b 9d 68 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x298]
    10402e8d88e6:	47 8b bc 18 34 01 00 00                         	mov    r15d,DWORD PTR [r8+r11*1+0x134]
    10402e8d88ee:	41 8d 4f ff                                     	lea    ecx,[r15-0x1]
    10402e8d88f2:	c5 78 11 a5 c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm12
    10402e8d88fa:	c5 7b 11 8d c0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x340],xmm9
    10402e8d8902:	c5 7b 11 9d 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm11
    10402e8d890a:	c5 fb 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm5
    10402e8d8912:	c5 fb 11 b5 b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm6
    10402e8d891a:	c5 fb 11 bd a8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x258],xmm7
    10402e8d8922:	83 f9 01                                        	cmp    ecx,0x1
    10402e8d8925:	0f 86 96 04 00 00                               	jbe    0x10402e8d8dc1
    10402e8d892b:	47 8b bc 18 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r11*1+0x130]
    10402e8d8933:	43 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x130],0x0
    10402e8d893c:	0f 85 0b 00 00 00                               	jne    0x10402e8d894d
    10402e8d8942:	44 8b cf                                        	mov    r9d,edi
    10402e8d8945:	49 8b f8                                        	mov    rdi,r8
    10402e8d8948:	e9 34 05 00 00                                  	jmp    0x10402e8d8e81
    10402e8d894d:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    10402e8d8954:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    10402e8d895a:	51                                              	push   rcx
    10402e8d895b:	4c 89 9d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r11
    10402e8d8962:	4c 89 bd 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r15
    10402e8d8969:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d896d:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    10402e8d8973:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    10402e8d8979:	8b 8d 68 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x198]
    10402e8d897f:	8b 9d d0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x230]
    10402e8d8985:	c4 c1 79 28 cb                                  	vmovapd xmm1,xmm11
    10402e8d898a:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    10402e8d898f:	c5 fb 10 9d 18 fd ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x2e8]
    10402e8d8997:	c5 fb 10 a5 b8 fc ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x348]
    10402e8d899f:	45 8b cf                                        	mov    r9d,r15d
    10402e8d89a2:	e8 71 d8 eb ff                                  	call   0x10402e796218
    10402e8d89a7:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d89ab:	4c 8b 85 70 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x190]
    10402e8d89b2:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    10402e8d89ba:	45 85 c0                                        	test   r8d,r8d
    10402e8d89bd:	0f 85 9a 01 00 00                               	jne    0x10402e8d8b5d
    10402e8d89c3:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d89c7:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    10402e8d89cf:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    10402e8d89d8:	0f 84 4b 00 00 00                               	je     0x10402e8d8a29
    10402e8d89de:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8d89e5:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8d89ec:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8d89f3:	41 50                                           	push   r8
    10402e8d89f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d89f9:	8b 85 28 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d8]
    10402e8d89ff:	33 d2                                           	xor    edx,edx
    10402e8d8a01:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    10402e8d8a08:	e8 33 d8 eb ff                                  	call   0x10402e796240
    10402e8d8a0d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d8a11:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d8a15:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8d8a1f:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8d8a29:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    10402e8d8a31:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    10402e8d8a3a:	0f 84 4e 00 00 00                               	je     0x10402e8d8a8e
    10402e8d8a40:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8d8a47:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8d8a4e:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8d8a55:	41 50                                           	push   r8
    10402e8d8a57:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d8a5b:	8b 85 30 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d0]
    10402e8d8a61:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8d8a66:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    10402e8d8a6d:	e8 ce d7 eb ff                                  	call   0x10402e796240
    10402e8d8a72:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d8a76:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d8a7a:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8d8a84:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8d8a8e:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    10402e8d8a96:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    10402e8d8a9f:	0f 84 4e 00 00 00                               	je     0x10402e8d8af3
    10402e8d8aa5:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8d8aac:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8d8ab3:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8d8aba:	41 50                                           	push   r8
    10402e8d8abc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d8ac0:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    10402e8d8ac6:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8d8acb:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    10402e8d8ad2:	e8 69 d7 eb ff                                  	call   0x10402e796240
    10402e8d8ad7:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d8adb:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d8adf:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8d8ae9:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8d8af3:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    10402e8d8afb:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    10402e8d8b04:	0f 84 77 03 00 00                               	je     0x10402e8d8e81
    10402e8d8b0a:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8d8b11:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8d8b18:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8d8b1f:	41 50                                           	push   r8
    10402e8d8b21:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d8b25:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    10402e8d8b2b:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8d8b30:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    10402e8d8b37:	e8 04 d7 eb ff                                  	call   0x10402e796240
    10402e8d8b3c:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d8b40:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d8b44:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8d8b4e:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8d8b58:	e9 24 03 00 00                                  	jmp    0x10402e8d8e81
    10402e8d8b5d:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8d8b61:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    10402e8d8b6b:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8d8b71:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8d8b76:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8d8b7a:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    10402e8d8b84:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8d8b88:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8d8b8c:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    10402e8d8b96:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8d8b9a:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    10402e8d8ba4:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8d8ba8:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    10402e8d8bac:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    10402e8d8bb6:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8d8bba:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    10402e8d8bc4:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    10402e8d8bc8:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    10402e8d8bcc:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    10402e8d8bd0:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8d8bd4:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8d8bda:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8d8bdf:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    10402e8d8be3:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    10402e8d8be7:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    10402e8d8bec:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    10402e8d8bf1:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8d8bf5:	0f 87 09 00 00 00                               	ja     0x10402e8d8c04
    10402e8d8bfb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8d8bff:	e9 04 00 00 00                                  	jmp    0x10402e8d8c08
    10402e8d8c04:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    10402e8d8c08:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8d8c0c:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8d8c10:	0f 87 09 00 00 00                               	ja     0x10402e8d8c1f
    10402e8d8c16:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8d8c1a:	e9 04 00 00 00                                  	jmp    0x10402e8d8c23
    10402e8d8c1f:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8d8c23:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8d8c28:	41 83 f8 01                                     	cmp    r8d,0x1
    10402e8d8c2c:	0f 84 a4 00 00 00                               	je     0x10402e8d8cd6
    10402e8d8c32:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8d8c36:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    10402e8d8c40:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d8c44:	0f 87 09 00 00 00                               	ja     0x10402e8d8c53
    10402e8d8c4a:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8d8c4e:	e9 04 00 00 00                                  	jmp    0x10402e8d8c57
    10402e8d8c53:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8d8c57:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8d8c5b:	0f 87 0a 00 00 00                               	ja     0x10402e8d8c6b
    10402e8d8c61:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8d8c66:	e9 04 00 00 00                                  	jmp    0x10402e8d8c6f
    10402e8d8c6b:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8d8c6f:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8d8c73:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8d8c78:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    10402e8d8c80:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8d8c84:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8d8c8c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8d8c90:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8d8c9a:	41 83 f8 03                                     	cmp    r8d,0x3
    10402e8d8c9e:	0f 85 04 00 00 00                               	jne    0x10402e8d8ca8
    10402e8d8ca4:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    10402e8d8ca8:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8d8cad:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8d8cb1:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8d8cb5:	c4 21 7a 6f 94 27 18 37 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r12*1+0x3718]
    10402e8d8cbf:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8d8cc4:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    10402e8d8cc9:	c4 41 79 28 d1                                  	vmovapd xmm10,xmm9
    10402e8d8cce:	4d 8b c4                                        	mov    r8,r12
    10402e8d8cd1:	e9 c7 00 00 00                                  	jmp    0x10402e8d8d9d
    10402e8d8cd6:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    10402e8d8ce0:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d8ce4:	0f 87 09 00 00 00                               	ja     0x10402e8d8cf3
    10402e8d8cea:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8d8cee:	e9 04 00 00 00                                  	jmp    0x10402e8d8cf7
    10402e8d8cf3:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8d8cf7:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8d8cfb:	0f 87 0a 00 00 00                               	ja     0x10402e8d8d0b
    10402e8d8d01:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8d8d06:	e9 04 00 00 00                                  	jmp    0x10402e8d8d0f
    10402e8d8d0b:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8d8d0f:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8d8d19:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    10402e8d8d1f:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    10402e8d8d24:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d8d28:	0f 87 09 00 00 00                               	ja     0x10402e8d8d37
    10402e8d8d2e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8d8d32:	e9 04 00 00 00                                  	jmp    0x10402e8d8d3b
    10402e8d8d37:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    10402e8d8d3b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8d8d3f:	0f 87 0a 00 00 00                               	ja     0x10402e8d8d4f
    10402e8d8d45:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8d8d4a:	e9 04 00 00 00                                  	jmp    0x10402e8d8d53
    10402e8d8d4f:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8d8d53:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    10402e8d8d5d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8d8d62:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8d8d66:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    10402e8d8d70:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    10402e8d8d75:	c5 78 10 9d a0 fc ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x360]
    10402e8d8d7d:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8d8d81:	c5 78 10 95 c0 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x440]
    10402e8d8d89:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8d8d8d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8d8d91:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8d8d95:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8d8d99:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    10402e8d8d9d:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8d8da1:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8d8da5:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    10402e8d8daf:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    10402e8d8db9:	45 8b cb                                        	mov    r9d,r11d
    10402e8d8dbc:	e9 c0 00 00 00                                  	jmp    0x10402e8d8e81
    10402e8d8dc1:	4d 8b d9                                        	mov    r11,r9
    10402e8d8dc4:	c4 81 7a 10 44 18 50                            	vmovss xmm0,DWORD PTR [r8+r11*1+0x50]
    10402e8d8dcb:	c5 fa 59 85 18 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e8]
    10402e8d8dd3:	c4 41 7a 10 44 00 50                            	vmovss xmm8,DWORD PTR [r8+rax*1+0x50]
    10402e8d8dda:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    10402e8d8ddf:	48 8b ce                                        	mov    rcx,rsi
    10402e8d8de2:	c4 41 32 59 74 08 50                            	vmulss xmm14,xmm9,DWORD PTR [r8+rcx*1+0x50]
    10402e8d8de9:	c4 41 3a 58 c6                                  	vaddss xmm8,xmm8,xmm14
    10402e8d8dee:	c4 c1 7a 58 c0                                  	vaddss xmm0,xmm0,xmm8
    10402e8d8df3:	c5 7b 10 85 b8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x348]
    10402e8d8dfb:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    10402e8d8dff:	c4 01 7a 10 74 18 54                            	vmovss xmm14,DWORD PTR [r8+r11*1+0x54]
    10402e8d8e06:	c5 0a 59 b5 18 fd ff ff                         	vmulss xmm14,xmm14,DWORD PTR [rbp-0x2e8]
    10402e8d8e0e:	c5 fb 11 85 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm0
    10402e8d8e16:	c4 c1 7a 10 44 00 54                            	vmovss xmm0,DWORD PTR [r8+rax*1+0x54]
    10402e8d8e1d:	c4 c1 7a 59 c3                                  	vmulss xmm0,xmm0,xmm11
    10402e8d8e22:	c4 c1 32 59 6c 08 54                            	vmulss xmm5,xmm9,DWORD PTR [r8+rcx*1+0x54]
    10402e8d8e29:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8d8e2d:	c5 8a 58 c0                                     	vaddss xmm0,xmm14,xmm0
    10402e8d8e31:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    10402e8d8e35:	8d b7 90 02 00 00                               	lea    esi,[rdi+0x290]
    10402e8d8e3b:	44 8d 8f 30 01 00 00                            	lea    r9d,[rdi+0x130]
    10402e8d8e42:	8b ce                                           	mov    ecx,esi
    10402e8d8e44:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d8e48:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    10402e8d8e4e:	41 8b d7                                        	mov    edx,r15d
    10402e8d8e51:	c5 fb 10 8d 70 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x190]
    10402e8d8e59:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8d8e5d:	41 8b d9                                        	mov    ebx,r9d
    10402e8d8e60:	e8 cb d6 eb ff                                  	call   0x10402e796530
    10402e8d8e65:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d8e69:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d8e6d:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    10402e8d8e77:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8d8e81:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8d8e85:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    10402e8d8e8d:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    10402e8d8e96:	0f 84 c3 01 00 00                               	je     0x10402e8d905f
    10402e8d8e9c:	c5 fb 10 85 60 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1a0]
    10402e8d8ea4:	c5 fa 59 85 18 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e8]
    10402e8d8eac:	c5 fb 10 ad b8 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x248]
    10402e8d8eb4:	c5 d2 59 ad 40 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1c0]
    10402e8d8ebc:	c5 fb 10 b5 c0 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x340]
    10402e8d8ec4:	c5 ca 59 b5 a8 fd ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x258]
    10402e8d8ecc:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    10402e8d8ed0:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8d8ed4:	c5 fb 10 ad b8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x348]
    10402e8d8edc:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    10402e8d8ee0:	4c 8b 15 7a e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77a]        # 0x10402e8d7661
    10402e8d8ee7:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8d8eec:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    10402e8d8ef0:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    10402e8d8ef4:	0f 87 04 00 00 00                               	ja     0x10402e8d8efe
    10402e8d8efa:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    10402e8d8efe:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    10402e8d8f06:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    10402e8d8f0d:	0f 85 28 00 00 00                               	jne    0x10402e8d8f3b
    10402e8d8f13:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    10402e8d8f1d:	4c 8b 15 3d e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73d]        # 0x10402e8d7661
    10402e8d8f24:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8d8f29:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    10402e8d8f2d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d8f31:	e8 82 f6 eb ff                                  	call   0x10402e7985b8
    10402e8d8f36:	e9 89 00 00 00                                  	jmp    0x10402e8d8fc4
    10402e8d8f3b:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8d8f3f:	0f 84 5c 00 00 00                               	je     0x10402e8d8fa1
    10402e8d8f45:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    10402e8d8f4f:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    10402e8d8f59:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    10402e8d8f5d:	7a 06                                           	jp     0x10402e8d8f65
    10402e8d8f5f:	0f 84 29 00 00 00                               	je     0x10402e8d8f8e
    10402e8d8f65:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    10402e8d8f69:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    10402e8d8f6d:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8d8f71:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    10402e8d8f75:	0f 86 49 00 00 00                               	jbe    0x10402e8d8fc4
    10402e8d8f7b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8d8f7f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8d8f84:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8d8f89:	e9 5b 00 00 00                                  	jmp    0x10402e8d8fe9
    10402e8d8f8e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8d8f92:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8d8f97:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8d8f9c:	e9 44 00 00 00                                  	jmp    0x10402e8d8fe5
    10402e8d8fa1:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    10402e8d8fab:	4c 8b 15 af e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6af]        # 0x10402e8d7661
    10402e8d8fb2:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8d8fb7:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    10402e8d8fbb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8d8fbf:	e8 f4 f5 eb ff                                  	call   0x10402e7985b8
    10402e8d8fc4:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8d8fc8:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8d8fcd:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8d8fd2:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8d8fd6:	0f 87 09 00 00 00                               	ja     0x10402e8d8fe5
    10402e8d8fdc:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    10402e8d8fe0:	e9 04 00 00 00                                  	jmp    0x10402e8d8fe9
    10402e8d8fe5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8d8fe9:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8d8fed:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8d8ff1:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    10402e8d8ffb:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8d8fff:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8d9003:	c4 a1 7a 59 bc 07 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x100]
    10402e8d900d:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8d9011:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    10402e8d901b:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    10402e8d9025:	c4 a1 7a 59 bc 07 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x104]
    10402e8d902f:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8d9033:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    10402e8d903d:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    10402e8d9047:	c4 a1 7a 59 84 07 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [rdi+r8*1+0x108]
    10402e8d9051:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8d9055:	c4 a1 7a 11 84 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm0
    10402e8d905f:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    10402e8d9069:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    10402e8d9073:	83 bd c8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x238],0x0
    10402e8d907a:	0f 85 ca 11 00 00                               	jne    0x10402e8da24a
    10402e8d9080:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    10402e8d9085:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    10402e8d908b:	0f 85 7e 11 00 00                               	jne    0x10402e8da20f
    10402e8d9091:	c4 a1 7a 6f 84 0f 80 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x280]
    10402e8d909b:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8d90a3:	c5 f8 c2 ed 01                                  	vcmpltps xmm5,xmm0,xmm5
    10402e8d90a8:	c5 d0 55 c0                                     	vandnps xmm0,xmm5,xmm0
    10402e8d90ac:	c5 f8 10 b5 c0 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x440]
    10402e8d90b4:	c5 c8 c2 e8 01                                  	vcmpltps xmm5,xmm6,xmm0
    10402e8d90b9:	c5 f8 10 bd 60 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3a0]
    10402e8d90c1:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    10402e8d90c5:	c5 c1 db c5                                     	vpand  xmm0,xmm7,xmm5
    10402e8d90c9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d90ce:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    10402e8d90d8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8d90dd:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8d90e1:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8d90e5:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    10402e8d90ef:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8d90f4:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8d90f8:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8d90fc:	49 ba 40 b9 70 c9 23 63 00 00                   	movabs r10,0x6323c970b940
    10402e8d9106:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8d910b:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    10402e8d9110:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8d9116:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    10402e8d911a:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    10402e8d911f:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    10402e8d9129:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8d912e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8d9132:	4c 8b 15 dc d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1dc]        # 0x10402e8d6315
    10402e8d9139:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8d913e:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    10402e8d9148:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d914d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8d9151:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    10402e8d9156:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    10402e8d915a:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8d915e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9163:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    10402e8d9168:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    10402e8d916c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8d9171:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    10402e8d9175:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    10402e8d917a:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8d9180:	44 03 da                                        	add    r11d,edx
    10402e8d9183:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    10402e8d918b:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    10402e8d9190:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8d9194:	45 03 df                                        	add    r11d,r15d
    10402e8d9197:	83 bd 80 fd ff ff 0f                            	cmp    DWORD PTR [rbp-0x280],0xf
    10402e8d919e:	0f 84 b9 00 00 00                               	je     0x10402e8d925d
    10402e8d91a4:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    10402e8d91ab:	41 83 e7 01                                     	and    r15d,0x1
    10402e8d91af:	41 f7 df                                        	neg    r15d
    10402e8d91b2:	c4 c1 79 6e ef                                  	vmovd  xmm5,r15d
    10402e8d91b7:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    10402e8d91bc:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    10402e8d91c3:	41 c1 e7 1e                                     	shl    r15d,0x1e
    10402e8d91c7:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8d91cb:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    10402e8d91d1:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    10402e8d91d8:	41 c1 e7 1d                                     	shl    r15d,0x1d
    10402e8d91dc:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8d91e0:	c4 c3 51 22 ef 02                               	vpinsrd xmm5,xmm5,r15d,0x2
    10402e8d91e6:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    10402e8d91ed:	41 c1 e7 1c                                     	shl    r15d,0x1c
    10402e8d91f1:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8d91f5:	c4 c3 51 22 ef 03                               	vpinsrd xmm5,xmm5,r15d,0x3
    10402e8d91fb:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    10402e8d9200:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    10402e8d9206:	0f 84 39 00 00 00                               	je     0x10402e8d9245
    10402e8d920c:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    10402e8d9211:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    10402e8d9217:	0f 84 28 00 00 00                               	je     0x10402e8d9245
    10402e8d921d:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8d9222:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    10402e8d9226:	c4 a1 7a 6f 34 0f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1]
    10402e8d922c:	c4 a1 7a 6f 3c 27                               	vmovdqu xmm7,XMMWORD PTR [rdi+r12*1]
    10402e8d9232:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    10402e8d9236:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    10402e8d923a:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8d923f:	c4 a1 7a 7f 34 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm6
    10402e8d9245:	c4 a1 7a 6f 34 1f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r11*1]
    10402e8d924b:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    10402e8d924f:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8d9253:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9258:	e9 37 00 00 00                                  	jmp    0x10402e8d9294
    10402e8d925d:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    10402e8d9262:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    10402e8d9268:	0f 84 26 00 00 00                               	je     0x10402e8d9294
    10402e8d926e:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    10402e8d9273:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    10402e8d9279:	0f 84 15 00 00 00                               	je     0x10402e8d9294
    10402e8d927f:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8d9284:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    10402e8d9288:	c4 a1 7a 6f 2c 0f                               	vmovdqu xmm5,XMMWORD PTR [rdi+r9*1]
    10402e8d928e:	c4 a1 7a 7f 2c 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm5
    10402e8d9294:	c4 a1 7a 7f 04 1f                               	vmovdqu XMMWORD PTR [rdi+r11*1],xmm0
    10402e8d929a:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    10402e8d929f:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    10402e8d92a5:	0f 84 e9 0f 00 00                               	je     0x10402e8da294
    10402e8d92ab:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    10402e8d92b0:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    10402e8d92b6:	0f 84 d8 0f 00 00                               	je     0x10402e8da294
    10402e8d92bc:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    10402e8d92c1:	42 83 7c 07 14 04                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x4
    10402e8d92c7:	0f 85 c7 0f 00 00                               	jne    0x10402e8da294
    10402e8d92cd:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    10402e8d92d2:	45 85 db                                        	test   r11d,r11d
    10402e8d92d5:	0f 84 b9 0f 00 00                               	je     0x10402e8da294
    10402e8d92db:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    10402e8d92df:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    10402e8d92e3:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    10402e8d92e8:	0f 84 a6 0f 00 00                               	je     0x10402e8da294
    10402e8d92ee:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    10402e8d92f2:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    10402e8d92f6:	41 83 eb 3c                                     	sub    r11d,0x3c
    10402e8d92fa:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    10402e8d92fe:	44 8b fa                                        	mov    r15d,edx
    10402e8d9301:	41 c1 ef 02                                     	shr    r15d,0x2
    10402e8d9305:	45 0f af fb                                     	imul   r15d,r11d
    10402e8d9309:	41 c1 e7 04                                     	shl    r15d,0x4
    10402e8d930d:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    10402e8d9311:	44 8b a5 00 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x500]
    10402e8d9318:	45 03 dc                                        	add    r11d,r12d
    10402e8d931b:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    10402e8d9320:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    10402e8d9327:	33 c0                                           	xor    eax,eax
    10402e8d9329:	45 85 ff                                        	test   r15d,r15d
    10402e8d932c:	0f 94 c0                                        	sete   al
    10402e8d932f:	41 83 ff 02                                     	cmp    r15d,0x2
    10402e8d9333:	41 0f 94 c7                                     	sete   r15b
    10402e8d9337:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e8d933b:	44 0b f8                                        	or     r15d,eax
    10402e8d933e:	0f 85 0d 00 00 00                               	jne    0x10402e8d9351
    10402e8d9344:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    10402e8d934c:	e9 43 0f 00 00                                  	jmp    0x10402e8da294
    10402e8d9351:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    10402e8d9358:	8b c2                                           	mov    eax,edx
    10402e8d935a:	83 e0 03                                        	and    eax,0x3
    10402e8d935d:	8b 9d f0 fa ff ff                               	mov    ebx,DWORD PTR [rbp-0x510]
    10402e8d9363:	0b d8                                           	or     ebx,eax
    10402e8d9365:	8d 04 9d 00 00 00 00                            	lea    eax,[rbx*4+0x0]
    10402e8d936c:	83 e0 3f                                        	and    eax,0x3f
    10402e8d936f:	8b c8                                           	mov    ecx,eax
    10402e8d9371:	49 d3 e7                                        	shl    r15,cl
    10402e8d9374:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    10402e8d9378:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8d937c:	0f 84 5f 07 00 00                               	je     0x10402e8d9ae1
    10402e8d9382:	49 0b c7                                        	or     rax,r15
    10402e8d9385:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    10402e8d9389:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8d938d:	0f 85 01 0f 00 00                               	jne    0x10402e8da294
    10402e8d9393:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8d9398:	8b c2                                           	mov    eax,edx
    10402e8d939a:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8d939f:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    10402e8d93a3:	8b cb                                           	mov    ecx,ebx
    10402e8d93a5:	0f af 8d 78 fd ff ff                            	imul   ecx,DWORD PTR [rbp-0x288]
    10402e8d93ac:	03 c8                                           	add    ecx,eax
    10402e8d93ae:	c1 e1 04                                        	shl    ecx,0x4
    10402e8d93b1:	41 03 cf                                        	add    ecx,r15d
    10402e8d93b4:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8d93ba:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8d93bf:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8d93c5:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8d93ca:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8d93ce:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8d93d4:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8d93d9:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8d93de:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    10402e8d93e3:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8d93e9:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8d93ee:	8b cb                                           	mov    ecx,ebx
    10402e8d93f0:	0f af 8d 10 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3f0]
    10402e8d93f7:	03 c8                                           	add    ecx,eax
    10402e8d93f9:	c1 e1 04                                        	shl    ecx,0x4
    10402e8d93fc:	41 03 cf                                        	add    ecx,r15d
    10402e8d93ff:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8d9405:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8d940b:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8d9410:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8d9416:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8d941c:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8d9421:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8d9427:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8d942d:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8d9432:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    10402e8d9437:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8d943d:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8d9442:	8b cb                                           	mov    ecx,ebx
    10402e8d9444:	0f af 8d 38 fb ff ff                            	imul   ecx,DWORD PTR [rbp-0x4c8]
    10402e8d944b:	03 c8                                           	add    ecx,eax
    10402e8d944d:	c1 e1 04                                        	shl    ecx,0x4
    10402e8d9450:	41 03 cf                                        	add    ecx,r15d
    10402e8d9453:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8d9459:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8d945f:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8d9464:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8d946a:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8d9470:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8d9474:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8d947a:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8d947f:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8d9483:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    10402e8d9488:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8d948d:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8d9491:	0f af 9d e8 fb ff ff                            	imul   ebx,DWORD PTR [rbp-0x418]
    10402e8d9498:	03 c3                                           	add    eax,ebx
    10402e8d949a:	c1 e0 04                                        	shl    eax,0x4
    10402e8d949d:	44 03 f8                                        	add    r15d,eax
    10402e8d94a0:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    10402e8d94a7:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8d94ac:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8d94b0:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    10402e8d94b7:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8d94bc:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8d94c1:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8d94c5:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    10402e8d94cc:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    10402e8d94d4:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8d94d9:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8d94dd:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    10402e8d94e3:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    10402e8d94eb:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8d94f0:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8d94f4:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8d94f9:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8d94fe:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    10402e8d9502:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8d9506:	0f 84 0e 00 00 00                               	je     0x10402e8d951a
    10402e8d950c:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    10402e8d9515:	e9 7a 0d 00 00                                  	jmp    0x10402e8da294
    10402e8d951a:	49 ba 3c 00 00 00 3d 00 00 00                   	movabs r10,0x3d0000003c
    10402e8d9524:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9529:	49 ba 3e 00 00 00 3f 00 00 00                   	movabs r10,0x3f0000003e
    10402e8d9533:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9539:	49 ba 38 00 00 00 39 00 00 00                   	movabs r10,0x3900000038
    10402e8d9543:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9548:	49 ba 3a 00 00 00 3b 00 00 00                   	movabs r10,0x3b0000003a
    10402e8d9552:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d9558:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8d9560:	49 ba 34 00 00 00 35 00 00 00                   	movabs r10,0x3500000034
    10402e8d956a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d956f:	49 ba 36 00 00 00 37 00 00 00                   	movabs r10,0x3700000036
    10402e8d9579:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d957f:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    10402e8d9587:	49 ba 30 00 00 00 31 00 00 00                   	movabs r10,0x3100000030
    10402e8d9591:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9596:	49 ba 32 00 00 00 33 00 00 00                   	movabs r10,0x3300000032
    10402e8d95a0:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d95a6:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8d95ae:	49 ba 2c 00 00 00 2d 00 00 00                   	movabs r10,0x2d0000002c
    10402e8d95b8:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d95bd:	49 ba 2e 00 00 00 2f 00 00 00                   	movabs r10,0x2f0000002e
    10402e8d95c7:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d95cd:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    10402e8d95d5:	49 ba 28 00 00 00 29 00 00 00                   	movabs r10,0x2900000028
    10402e8d95df:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d95e4:	49 ba 2a 00 00 00 2b 00 00 00                   	movabs r10,0x2b0000002a
    10402e8d95ee:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d95f4:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    10402e8d95fc:	49 ba 24 00 00 00 25 00 00 00                   	movabs r10,0x2500000024
    10402e8d9606:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8d960b:	49 ba 26 00 00 00 27 00 00 00                   	movabs r10,0x2700000026
    10402e8d9615:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8d961b:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8d9623:	49 ba 20 00 00 00 21 00 00 00                   	movabs r10,0x2100000020
    10402e8d962d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9632:	49 ba 22 00 00 00 23 00 00 00                   	movabs r10,0x2300000022
    10402e8d963c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9642:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    10402e8d964a:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    10402e8d9654:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8d9659:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    10402e8d9663:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8d9669:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    10402e8d9671:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    10402e8d967b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9680:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    10402e8d968a:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d9690:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    10402e8d9698:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    10402e8d96a2:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8d96a7:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    10402e8d96b1:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8d96b7:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    10402e8d96bf:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    10402e8d96c9:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8d96ce:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    10402e8d96d8:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8d96de:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    10402e8d96e6:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    10402e8d96f0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8d96f5:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    10402e8d96ff:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8d9705:	c5 f8 11 85 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm0
    10402e8d970d:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    10402e8d9717:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d971c:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    10402e8d9726:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d972c:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    10402e8d9734:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    10402e8d973e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8d9743:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    10402e8d974d:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8d9753:	c5 78 11 8d 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm9
    10402e8d975b:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8d9760:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8d9766:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8d976c:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    10402e8d9776:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8d977c:	c5 78 11 ad 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm13
    10402e8d9784:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    10402e8d978e:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8d9793:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8d9798:	c5 f8 11 bd 90 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x370],xmm7
    10402e8d97a0:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8d97a5:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8d97ab:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8d97b0:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8d97b5:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8d97b9:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8d97be:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x10402e8d9786
    10402e8d97c5:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8d97ca:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8d97cf:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8d97d4:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8d97d8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8d97dd:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8d97e2:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8d97e7:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8d97eb:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8d97f0:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8d97f4:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8d97f8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d97fd:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8d9802:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8d9807:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8d980b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9810:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9814:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8d9818:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d981d:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8d9822:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9826:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8d982a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d982f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9833:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8d9837:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d983c:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8d9841:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9845:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8d9849:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d984e:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9852:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8d9856:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d985b:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8d9860:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9864:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8d9868:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d986d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9871:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8d9875:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d987a:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8d9880:	c5 f8 10 bd 90 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x370]
    10402e8d9888:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d988c:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8d9890:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9895:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9899:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8d989d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d98a2:	c5 f8 10 b5 50 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1b0]
    10402e8d98aa:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d98af:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    10402e8d98b7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d98bb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d98bf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d98c4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d98c8:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d98cc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d98d1:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8d98d9:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d98de:	c5 78 10 85 20 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1e0]
    10402e8d98e6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d98ea:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d98ee:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d98f3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d98f7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d98fb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9900:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8d9908:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d990d:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8d9915:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d9919:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d991d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9922:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d9926:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d992a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d992f:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8d9937:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d993c:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8d9944:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d9948:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d994c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9951:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d9955:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d9959:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d995e:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8d9966:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d996b:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8d9973:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d9977:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d997b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9980:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d9984:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d9988:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d998d:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8d9995:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d999a:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8d99a2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d99a6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d99aa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d99af:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d99b3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d99b7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d99bc:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8d99c4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d99c9:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8d99d1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d99d5:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d99d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d99de:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d99e2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d99e6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d99eb:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8d99f3:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d99f8:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8d9a00:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d9a04:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d9a08:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9a0d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d9a11:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d9a15:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9a1a:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8d9a1f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d9a24:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8d9a2c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d9a30:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d9a34:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9a39:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8d9a43:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d9a47:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8d9a4b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9a50:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    10402e8d9a5a:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8d9a5e:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8d9a62:	45 33 ff                                        	xor    r15d,r15d
    10402e8d9a65:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8d9a69:	41 0f 97 c7                                     	seta   r15b
    10402e8d9a6d:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    10402e8d9a74:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    10402e8d9a7c:	0b d8                                           	or     ebx,eax
    10402e8d9a7e:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    10402e8d9a83:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8d9a88:	bb 02 00 00 00                                  	mov    ebx,0x2
    10402e8d9a8d:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8d9a91:	44 0f 47 fb                                     	cmova  r15d,ebx
    10402e8d9a95:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    10402e8d9a9d:	0b c8                                           	or     ecx,eax
    10402e8d9a9f:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    10402e8d9aa4:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8d9aa9:	be 03 00 00 00                                  	mov    esi,0x3
    10402e8d9aae:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8d9ab2:	44 0f 47 fe                                     	cmova  r15d,esi
    10402e8d9ab6:	41 c1 e7 02                                     	shl    r15d,0x2
    10402e8d9aba:	41 0b c7                                        	or     eax,r15d
    10402e8d9abd:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    10402e8d9ac2:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    10402e8d9ac9:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    10402e8d9ad0:	44 0b f8                                        	or     r15d,eax
    10402e8d9ad3:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    10402e8d9ad7:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    10402e8d9adc:	e9 b3 07 00 00                                  	jmp    0x10402e8da294
    10402e8d9ae1:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    10402e8d9ae6:	8b d8                                           	mov    ebx,eax
    10402e8d9ae8:	83 e3 3f                                        	and    ebx,0x3f
    10402e8d9aeb:	8b cb                                           	mov    ecx,ebx
    10402e8d9aed:	49 d3 ef                                        	shr    r15,cl
    10402e8d9af0:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8d9af4:	0f 84 9a 07 00 00                               	je     0x10402e8da294
    10402e8d9afa:	83 e0 03                                        	and    eax,0x3
    10402e8d9afd:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    10402e8d9b05:	45 0b f9                                        	or     r15d,r9d
    10402e8d9b08:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    10402e8d9b0e:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    10402e8d9b15:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    10402e8d9b19:	0f 86 75 07 00 00                               	jbe    0x10402e8da294
    10402e8d9b1f:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8d9b24:	8b c2                                           	mov    eax,edx
    10402e8d9b26:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8d9b2b:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    10402e8d9b2f:	8b 8d 78 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x288]
    10402e8d9b35:	0f af cb                                        	imul   ecx,ebx
    10402e8d9b38:	03 c8                                           	add    ecx,eax
    10402e8d9b3a:	c1 e1 04                                        	shl    ecx,0x4
    10402e8d9b3d:	41 03 cf                                        	add    ecx,r15d
    10402e8d9b40:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8d9b46:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8d9b4b:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8d9b51:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8d9b56:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8d9b5a:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8d9b60:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8d9b65:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8d9b6a:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    10402e8d9b6f:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8d9b75:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8d9b7a:	8b 8d 10 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3f0]
    10402e8d9b80:	0f af cb                                        	imul   ecx,ebx
    10402e8d9b83:	03 c8                                           	add    ecx,eax
    10402e8d9b85:	c1 e1 04                                        	shl    ecx,0x4
    10402e8d9b88:	41 03 cf                                        	add    ecx,r15d
    10402e8d9b8b:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8d9b91:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8d9b97:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8d9b9c:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8d9ba2:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8d9ba8:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8d9bad:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8d9bb3:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8d9bb9:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8d9bbe:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    10402e8d9bc3:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8d9bc9:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8d9bce:	8b 8d 38 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4c8]
    10402e8d9bd4:	0f af cb                                        	imul   ecx,ebx
    10402e8d9bd7:	03 c8                                           	add    ecx,eax
    10402e8d9bd9:	c1 e1 04                                        	shl    ecx,0x4
    10402e8d9bdc:	41 03 cf                                        	add    ecx,r15d
    10402e8d9bdf:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8d9be5:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8d9beb:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8d9bf0:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8d9bf6:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8d9bfc:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8d9c00:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8d9c06:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8d9c0b:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8d9c0f:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    10402e8d9c14:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8d9c19:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8d9c1d:	8b 8d e8 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x418]
    10402e8d9c23:	0f af cb                                        	imul   ecx,ebx
    10402e8d9c26:	03 c1                                           	add    eax,ecx
    10402e8d9c28:	c1 e0 04                                        	shl    eax,0x4
    10402e8d9c2b:	44 03 f8                                        	add    r15d,eax
    10402e8d9c2e:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    10402e8d9c35:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8d9c3a:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8d9c3e:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    10402e8d9c45:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8d9c4a:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8d9c4f:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8d9c53:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    10402e8d9c5a:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    10402e8d9c62:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8d9c67:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8d9c6b:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    10402e8d9c71:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    10402e8d9c79:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8d9c7e:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8d9c82:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8d9c87:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8d9c8c:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    10402e8d9c90:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8d9c94:	0f 84 0e 00 00 00                               	je     0x10402e8d9ca8
    10402e8d9c9a:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    10402e8d9ca3:	e9 ec 05 00 00                                  	jmp    0x10402e8da294
    10402e8d9ca8:	4c 8b 15 6d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff86d]        # 0x10402e8d951c
    10402e8d9caf:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9cb4:	4c 8b 15 70 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff870]        # 0x10402e8d952b
    10402e8d9cbb:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9cc1:	4c 8b 15 73 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff873]        # 0x10402e8d953b
    10402e8d9cc8:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9ccd:	4c 8b 15 76 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff876]        # 0x10402e8d954a
    10402e8d9cd4:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d9cda:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8d9ce2:	4c 8b 15 79 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff879]        # 0x10402e8d9562
    10402e8d9ce9:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9cee:	4c 8b 15 7c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87c]        # 0x10402e8d9571
    10402e8d9cf5:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9cfb:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    10402e8d9d03:	4c 8b 15 7f f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87f]        # 0x10402e8d9589
    10402e8d9d0a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9d0f:	4c 8b 15 82 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff882]        # 0x10402e8d9598
    10402e8d9d16:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d9d1c:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8d9d24:	4c 8b 15 85 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff885]        # 0x10402e8d95b0
    10402e8d9d2b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9d30:	4c 8b 15 88 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff888]        # 0x10402e8d95bf
    10402e8d9d37:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9d3d:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    10402e8d9d45:	4c 8b 15 8b f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88b]        # 0x10402e8d95d7
    10402e8d9d4c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9d51:	4c 8b 15 8e f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88e]        # 0x10402e8d95e6
    10402e8d9d58:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d9d5e:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    10402e8d9d66:	4c 8b 15 91 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff891]        # 0x10402e8d95fe
    10402e8d9d6d:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8d9d72:	4c 8b 15 94 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff894]        # 0x10402e8d960d
    10402e8d9d79:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8d9d7f:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8d9d87:	4c 8b 15 97 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff897]        # 0x10402e8d9625
    10402e8d9d8e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9d93:	4c 8b 15 9a f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89a]        # 0x10402e8d9634
    10402e8d9d9a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9da0:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    10402e8d9da8:	4c 8b 15 9d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89d]        # 0x10402e8d964c
    10402e8d9daf:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8d9db4:	4c 8b 15 a0 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a0]        # 0x10402e8d965b
    10402e8d9dbb:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8d9dc1:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    10402e8d9dc9:	4c 8b 15 a3 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a3]        # 0x10402e8d9673
    10402e8d9dd0:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8d9dd5:	4c 8b 15 a6 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a6]        # 0x10402e8d9682
    10402e8d9ddc:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8d9de2:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    10402e8d9dea:	4c 8b 15 a9 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a9]        # 0x10402e8d969a
    10402e8d9df1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8d9df6:	4c 8b 15 ac f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ac]        # 0x10402e8d96a9
    10402e8d9dfd:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8d9e03:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    10402e8d9e0b:	4c 8b 15 af f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8af]        # 0x10402e8d96c1
    10402e8d9e12:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8d9e17:	4c 8b 15 b2 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b2]        # 0x10402e8d96d0
    10402e8d9e1e:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8d9e24:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    10402e8d9e2c:	4c 8b 15 b5 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b5]        # 0x10402e8d96e8
    10402e8d9e33:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8d9e38:	4c 8b 15 b8 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b8]        # 0x10402e8d96f7
    10402e8d9e3f:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8d9e45:	c5 f8 11 85 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm0
    10402e8d9e4d:	4c 8b 15 bb f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8bb]        # 0x10402e8d970f
    10402e8d9e54:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8d9e59:	4c 8b 15 be f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8be]        # 0x10402e8d971e
    10402e8d9e60:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8d9e66:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    10402e8d9e6e:	4c 8b 15 c1 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c1]        # 0x10402e8d9736
    10402e8d9e75:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8d9e7a:	4c 8b 15 c4 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c4]        # 0x10402e8d9745
    10402e8d9e81:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8d9e87:	c5 78 11 8d 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm9
    10402e8d9e8f:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8d9e94:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8d9e9a:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8d9ea0:	4c 8b 15 c7 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c7]        # 0x10402e8d976e
    10402e8d9ea7:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8d9ead:	c5 78 11 ad 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm13
    10402e8d9eb5:	4c 8b 15 ca f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ca]        # 0x10402e8d9786
    10402e8d9ebc:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8d9ec1:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8d9ec6:	c5 f8 11 bd a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm7
    10402e8d9ece:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8d9ed3:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8d9ed9:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8d9ede:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8d9ee3:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8d9ee7:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8d9eec:	4c 8b 15 93 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff893]        # 0x10402e8d9786
    10402e8d9ef3:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8d9ef8:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8d9efd:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8d9f02:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8d9f06:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8d9f0b:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8d9f10:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8d9f15:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8d9f19:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8d9f1e:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8d9f22:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8d9f26:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9f2b:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8d9f30:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8d9f35:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8d9f39:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9f3e:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9f42:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8d9f46:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9f4b:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8d9f50:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9f54:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8d9f58:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9f5d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9f61:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8d9f65:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9f6a:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8d9f6f:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9f73:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8d9f77:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9f7c:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9f80:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8d9f84:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9f89:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8d9f8e:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9f92:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8d9f96:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9f9b:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9f9f:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8d9fa3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9fa8:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8d9fae:	c5 f8 10 bd a0 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x360]
    10402e8d9fb6:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8d9fba:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8d9fbe:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9fc3:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8d9fc7:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8d9fcb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9fd0:	c5 f8 10 b5 20 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1e0]
    10402e8d9fd8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8d9fdd:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    10402e8d9fe5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8d9fe9:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8d9fed:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8d9ff2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8d9ff6:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8d9ffa:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8d9fff:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8da007:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da00c:	c5 78 10 85 50 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1b0]
    10402e8da014:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da018:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da01c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da021:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da025:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da029:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da02e:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8da036:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da03b:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8da043:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da047:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da04b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da050:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da054:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da058:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da05d:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8da065:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da06a:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8da072:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da076:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da07a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da07f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da083:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da087:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da08c:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8da094:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da099:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8da0a1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da0a5:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da0a9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da0ae:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da0b2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da0b6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da0bb:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8da0c3:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da0c8:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8da0d0:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da0d4:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da0d8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da0dd:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da0e1:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da0e5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da0ea:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8da0f2:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da0f7:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8da0ff:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da103:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da107:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da10c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da110:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da114:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da119:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8da121:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da126:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8da12e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da132:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da136:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da13b:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da13f:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8da143:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8da148:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8da14d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8da152:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8da15a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8da15e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8da162:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da167:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8da171:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8da175:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8da179:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8da17e:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    10402e8da188:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8da18c:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8da190:	45 33 ff                                        	xor    r15d,r15d
    10402e8da193:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8da197:	41 0f 97 c7                                     	seta   r15b
    10402e8da19b:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    10402e8da1a2:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    10402e8da1aa:	0b d8                                           	or     ebx,eax
    10402e8da1ac:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    10402e8da1b1:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8da1b6:	bb 02 00 00 00                                  	mov    ebx,0x2
    10402e8da1bb:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8da1bf:	44 0f 47 fb                                     	cmova  r15d,ebx
    10402e8da1c3:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    10402e8da1cb:	0b c8                                           	or     ecx,eax
    10402e8da1cd:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    10402e8da1d2:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8da1d7:	b9 03 00 00 00                                  	mov    ecx,0x3
    10402e8da1dc:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8da1e0:	44 0f 47 f9                                     	cmova  r15d,ecx
    10402e8da1e4:	41 c1 e7 02                                     	shl    r15d,0x2
    10402e8da1e8:	41 0b c7                                        	or     eax,r15d
    10402e8da1eb:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    10402e8da1f0:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    10402e8da1f7:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    10402e8da1fe:	44 0b f8                                        	or     r15d,eax
    10402e8da201:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    10402e8da205:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    10402e8da20a:	e9 85 00 00 00                                  	jmp    0x10402e8da294
    10402e8da20f:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    10402e8da216:	41 53                                           	push   r11
    10402e8da218:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8da21c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8da21f:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8da225:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e8da228:	8b 9d 80 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x280]
    10402e8da22e:	e8 3d c0 eb ff                                  	call   0x10402e796270
    10402e8da233:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8da237:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8da23b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8da23f:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8da245:	e9 4a 00 00 00                                  	jmp    0x10402e8da294
    10402e8da24a:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    10402e8da251:	41 53                                           	push   r11
    10402e8da253:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8da257:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8da25a:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8da260:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e8da263:	8b 9d 80 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x280]
    10402e8da269:	e8 ea bf eb ff                                  	call   0x10402e796258
    10402e8da26e:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8da272:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8da276:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8da27a:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8da280:	e9 0f 00 00 00                                  	jmp    0x10402e8da294
    10402e8da285:	44 8b cf                                        	mov    r9d,edi
    10402e8da288:	49 8b f8                                        	mov    rdi,r8
    10402e8da28b:	4d 8b c4                                        	mov    r8,r12
    10402e8da28e:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    10402e8da294:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    10402e8da29c:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    10402e8da2a7:	4c 8b c7                                        	mov    r8,rdi
    10402e8da2aa:	41 8b f9                                        	mov    edi,r9d
    10402e8da2ad:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8da2b1:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    10402e8da2b9:	44 8b da                                        	mov    r11d,edx
    10402e8da2bc:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    10402e8da2c3:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    10402e8da2ca:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    10402e8da2d2:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    10402e8da2da:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8da2e2:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    10402e8da2ea:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8da2f2:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8da2fa:	e9 a5 41 00 00                                  	jmp    0x10402e8de4a4
    10402e8da2ff:	45 8b 64 38 18                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x18]
    10402e8da304:	41 8d 5c 24 01                                  	lea    ebx,[r12+0x1]
    10402e8da309:	41 89 5c 38 18                                  	mov    DWORD PTR [r8+rdi*1+0x18],ebx
    10402e8da30e:	8b 9d d0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x330]
    10402e8da314:	42 8d 14 a3                                     	lea    edx,[rbx+r12*4]
    10402e8da318:	8b 9d 50 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3b0]
    10402e8da31e:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    10402e8da322:	42 8d 54 a7 2c                                  	lea    edx,[rdi+r12*4+0x2c]
    10402e8da327:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    10402e8da32a:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    10402e8da32e:	42 8d 54 a7 3c                                  	lea    edx,[rdi+r12*4+0x3c]
    10402e8da333:	45 89 3c 10                                     	mov    DWORD PTR [r8+rdx*1],r15d
    10402e8da337:	46 8d 7c e7 50                                  	lea    r15d,[rdi+r12*8+0x50]
    10402e8da33c:	4b 89 0c 38                                     	mov    QWORD PTR [r8+r15*1],rcx
    10402e8da340:	46 8d 7c e7 70                                  	lea    r15d,[rdi+r12*8+0x70]
    10402e8da345:	4f 89 1c 38                                     	mov    QWORD PTR [r8+r15*1],r11
    10402e8da349:	41 c1 e4 04                                     	shl    r12d,0x4
    10402e8da34d:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    10402e8da354:	45 03 e3                                        	add    r12d,r11d
    10402e8da357:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    10402e8da35d:	c4 81 7a 7f 04 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm0
    10402e8da363:	45 8b 64 38 18                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x18]
    10402e8da368:	41 83 7c 38 18 04                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x4
    10402e8da36e:	0f 84 3d 00 00 00                               	je     0x10402e8da3b1
    10402e8da374:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    10402e8da37c:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    10402e8da387:	44 8b 9d 50 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3b0]
    10402e8da38e:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    10402e8da395:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    10402e8da39c:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    10402e8da3a4:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8da3ac:	e9 f3 40 00 00                                  	jmp    0x10402e8de4a4
    10402e8da3b1:	c4 c1 7a 6f 44 38 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x50]
    10402e8da3b8:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    10402e8da3be:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    10402e8da3c3:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8da3c8:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    10402e8da3ce:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    10402e8da3d3:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    10402e8da3d9:	c4 c1 7a 6f 44 38 60                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x60]
    10402e8da3e0:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    10402e8da3e6:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    10402e8da3eb:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    10402e8da3f1:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    10402e8da3f7:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    10402e8da3fc:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    10402e8da402:	c5 f8 10 85 00 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x300]
    10402e8da40a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    10402e8da40f:	4d 8d 60 1c                                     	lea    r12,[r8+0x1c]
    10402e8da413:	4c 8b f8                                        	mov    r15,rax
    10402e8da416:	c4 02 79 18 1c 3c                               	vbroadcastss xmm11,DWORD PTR [r12+r15*1]
    10402e8da41c:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    10402e8da421:	c4 41 7a 6f 6c 38 70                            	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x70]
    10402e8da428:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    10402e8da42e:	c4 61 82 2a f0                                  	vcvtsi2ss xmm14,xmm15,rax
    10402e8da433:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    10402e8da438:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    10402e8da43e:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    10402e8da443:	c4 43 09 21 f5 10                               	vinsertps xmm14,xmm14,xmm13,0x10
    10402e8da449:	c4 41 7a 6f ac 38 80 00 00 00                   	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x80]
    10402e8da453:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    10402e8da459:	c4 e1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,rax
    10402e8da45e:	c4 63 09 21 f4 20                               	vinsertps xmm14,xmm14,xmm4,0x20
    10402e8da464:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    10402e8da46a:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    10402e8da46f:	c4 43 09 21 f5 30                               	vinsertps xmm14,xmm14,xmm13,0x30
    10402e8da475:	c4 41 78 59 ee                                  	vmulps xmm13,xmm0,xmm14
    10402e8da47a:	48 8b c6                                        	mov    rax,rsi
    10402e8da47d:	c4 42 79 18 34 04                               	vbroadcastss xmm14,DWORD PTR [r12+rax*1]
    10402e8da483:	c4 41 10 59 f6                                  	vmulps xmm14,xmm13,xmm14
    10402e8da488:	c4 c1 20 58 e6                                  	vaddps xmm4,xmm11,xmm14
    10402e8da48d:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    10402e8da492:	c4 41 30 5c cd                                  	vsubps xmm9,xmm9,xmm13
    10402e8da497:	49 8b d1                                        	mov    rdx,r9
    10402e8da49a:	c4 42 79 18 2c 14                               	vbroadcastss xmm13,DWORD PTR [r12+rdx*1]
    10402e8da4a0:	c4 41 30 59 cd                                  	vmulps xmm9,xmm9,xmm13
    10402e8da4a5:	c4 41 58 58 e9                                  	vaddps xmm13,xmm4,xmm9
    10402e8da4aa:	c5 90 c2 e5 02                                  	vcmpleps xmm4,xmm13,xmm5
    10402e8da4af:	c5 78 50 e4                                     	vmovmskps r12d,xmm4
    10402e8da4b3:	41 8b f4                                        	mov    esi,r12d
    10402e8da4b6:	83 f6 0f                                        	xor    esi,0xf
    10402e8da4b9:	c5 78 11 a5 c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm12
    10402e8da4c1:	c5 78 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm10
    10402e8da4c9:	c5 f8 11 ad a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm5
    10402e8da4d1:	48 89 b5 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],rsi
    10402e8da4d8:	41 83 fc 0f                                     	cmp    r12d,0xf
    10402e8da4dc:	0f 84 4c 2c 00 00                               	je     0x10402e8dd12e
    10402e8da4e2:	c4 41 18 5e ed                                  	vdivps xmm13,xmm12,xmm13
    10402e8da4e7:	49 8d 48 2c                                     	lea    rcx,[r8+0x2c]
    10402e8da4eb:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8da4f1:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8da4f5:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8da4fb:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8da4ff:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8da503:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8da509:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8da50d:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8da511:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8da515:	49 8d 48 28                                     	lea    rcx,[r8+0x28]
    10402e8da519:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8da51f:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8da523:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8da528:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8da52e:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8da532:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8da536:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8da53c:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8da540:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8da544:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8da548:	49 8d 48 24                                     	lea    rcx,[r8+0x24]
    10402e8da54c:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8da552:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8da556:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    10402e8da55e:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8da564:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8da568:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8da56c:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8da572:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8da576:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8da57a:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8da57e:	49 8d 48 20                                     	lea    rcx,[r8+0x20]
    10402e8da582:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8da588:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8da58c:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8da594:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8da59a:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8da59e:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8da5a2:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8da5a8:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8da5ac:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8da5b0:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8da5b4:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    10402e8da5bb:	43 8b 8c 08 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x134]
    10402e8da5c3:	83 e9 01                                        	sub    ecx,0x1
    10402e8da5c6:	83 f9 01                                        	cmp    ecx,0x1
    10402e8da5c9:	0f 86 15 17 00 00                               	jbe    0x10402e8dbce4
    10402e8da5cf:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    10402e8da5d7:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    10402e8da5e0:	0f 85 1f 00 00 00                               	jne    0x10402e8da605
    10402e8da5e6:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    10402e8da5eb:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    10402e8da5f3:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8da5fb:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8da600:	e9 77 2a 00 00                                  	jmp    0x10402e8dd07c
    10402e8da605:	8b ce                                           	mov    ecx,esi
    10402e8da607:	83 e1 04                                        	and    ecx,0x4
    10402e8da60a:	44 8b de                                        	mov    r11d,esi
    10402e8da60d:	41 83 e3 02                                     	and    r11d,0x2
    10402e8da611:	44 8b fe                                        	mov    r15d,esi
    10402e8da614:	41 83 e7 01                                     	and    r15d,0x1
    10402e8da618:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8da620:	4c 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r9
    10402e8da627:	c5 78 11 ad 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm13
    10402e8da62f:	c5 78 11 8d 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm9
    10402e8da637:	c5 78 11 b5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm14
    10402e8da63f:	c5 78 11 9d 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm11
    10402e8da647:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    10402e8da64e:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    10402e8da655:	4c 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r11
    10402e8da65c:	4c 89 bd b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r15
    10402e8da663:	45 33 db                                        	xor    r11d,r11d
    10402e8da666:	e9 34 00 00 00                                  	jmp    0x10402e8da69f
    10402e8da66b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8da674:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8da67d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    10402e8da680:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    10402e8da688:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    10402e8da690:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    10402e8da697:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8da69f:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    10402e8da6a6:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    10402e8da6ac:	8b 9d f8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x308]
    10402e8da6b2:	8b 95 f0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x310]
    10402e8da6b8:	4c 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r11
    10402e8da6bf:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8da6c4:	0f 85 d9 5f 00 00                               	jne    0x10402e8e06a3
    10402e8da6ca:	43 8b b4 08 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r9*1+0x13c]
    10402e8da6d2:	41 8b cb                                        	mov    ecx,r11d
    10402e8da6d5:	d3 ee                                           	shr    esi,cl
    10402e8da6d7:	40 f6 c6 01                                     	test   sil,0x1
    10402e8da6db:	0f 85 2e 00 00 00                               	jne    0x10402e8da70f
    10402e8da6e1:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8da6e7:	41 8b f3                                        	mov    esi,r11d
    10402e8da6ea:	c1 e6 06                                        	shl    esi,0x6
    10402e8da6ed:	03 ce                                           	add    ecx,esi
    10402e8da6ef:	c4 41 7a 7f 64 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm12
    10402e8da6f6:	c4 41 7a 7f 64 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm12
    10402e8da6fd:	c4 41 7a 7f 64 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm12
    10402e8da704:	c4 41 7a 7f 24 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm12
    10402e8da70a:	e9 6e 12 00 00                                  	jmp    0x10402e8db97d
    10402e8da70f:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8da715:	41 8b f3                                        	mov    esi,r11d
    10402e8da718:	c1 e6 06                                        	shl    esi,0x6
    10402e8da71b:	03 f1                                           	add    esi,ecx
    10402e8da71d:	41 6b cb 4c                                     	imul   ecx,r11d,0x4c
    10402e8da721:	41 03 cf                                        	add    ecx,r15d
    10402e8da724:	45 8b 5c 08 38                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x38]
    10402e8da729:	41 83 7c 08 38 00                               	cmp    DWORD PTR [r8+rcx*1+0x38],0x0
    10402e8da72f:	0f 85 02 12 00 00                               	jne    0x10402e8db937
    10402e8da735:	44 8b 9d 60 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1a0]
    10402e8da73c:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8da740:	45 8d 3c 1b                                     	lea    r15d,[r11+rbx*1]
    10402e8da744:	49 8d 58 04                                     	lea    rbx,[r8+0x4]
    10402e8da748:	c4 a2 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [rbx+r15*1]
    10402e8da74e:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8da752:	46 8d 0c 18                                     	lea    r9d,[rax+r11*1]
    10402e8da756:	c4 a2 79 18 04 0b                               	vbroadcastss xmm0,DWORD PTR [rbx+r9*1]
    10402e8da75c:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8da760:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8da764:	44 03 da                                        	add    r11d,edx
    10402e8da767:	c4 a2 79 18 24 1b                               	vbroadcastss xmm4,DWORD PTR [rbx+r11*1]
    10402e8da76d:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8da771:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8da775:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8da779:	c4 82 79 18 24 38                               	vbroadcastss xmm4,DWORD PTR [r8+r15*1]
    10402e8da77f:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8da783:	c4 82 79 18 34 08                               	vbroadcastss xmm6,DWORD PTR [r8+r9*1]
    10402e8da789:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    10402e8da78d:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    10402e8da791:	c4 82 79 18 24 18                               	vbroadcastss xmm4,DWORD PTR [r8+r11*1]
    10402e8da797:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8da79b:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    10402e8da79f:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    10402e8da7a3:	41 8b 1c 08                                     	mov    ebx,DWORD PTR [r8+rcx*1]
    10402e8da7a7:	83 fb 01                                        	cmp    ebx,0x1
    10402e8da7aa:	0f 85 8c 0e 00 00                               	jne    0x10402e8db63c
    10402e8da7b0:	41 8b 44 08 28                                  	mov    eax,DWORD PTR [r8+rcx*1+0x28]
    10402e8da7b5:	85 c0                                           	test   eax,eax
    10402e8da7b7:	0f 84 7f 0e 00 00                               	je     0x10402e8db63c
    10402e8da7bd:	41 8b 54 08 1c                                  	mov    edx,DWORD PTR [r8+rcx*1+0x1c]
    10402e8da7c2:	85 d2                                           	test   edx,edx
    10402e8da7c4:	0f 8e 72 0e 00 00                               	jle    0x10402e8db63c
    10402e8da7ca:	41 8b 7c 08 20                                  	mov    edi,DWORD PTR [r8+rcx*1+0x20]
    10402e8da7cf:	85 ff                                           	test   edi,edi
    10402e8da7d1:	0f 8e 62 0e 00 00                               	jle    0x10402e8db639
    10402e8da7d7:	44 8b d2                                        	mov    r10d,edx
    10402e8da7da:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    10402e8da7df:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    10402e8da7e4:	45 8b 5c 08 10                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x10]
    10402e8da7e9:	45 33 ff                                        	xor    r15d,r15d
    10402e8da7ec:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    10402e8da7f3:	41 0f 95 c7                                     	setne  r15b
    10402e8da7f7:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    10402e8da7fe:	41 0f 95 c3                                     	setne  r11b
    10402e8da802:	45 0f b6 db                                     	movzx  r11d,r11b
    10402e8da806:	48 89 b5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rsi
    10402e8da80d:	45 23 df                                        	and    r11d,r15d
    10402e8da810:	0f 85 0d 00 00 00                               	jne    0x10402e8da823
    10402e8da816:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8da81a:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    10402e8da81e:	e9 0a 00 00 00                                  	jmp    0x10402e8da82d
    10402e8da823:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    10402e8da829:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    10402e8da82d:	c5 d8 59 f6                                     	vmulps xmm6,xmm4,xmm6
    10402e8da831:	44 8b d7                                        	mov    r10d,edi
    10402e8da834:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    10402e8da839:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    10402e8da83e:	45 8b 7c 08 14                                  	mov    r15d,DWORD PTR [r8+rcx*1+0x14]
    10402e8da843:	33 db                                           	xor    ebx,ebx
    10402e8da845:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    10402e8da84c:	0f 95 c3                                        	setne  bl
    10402e8da84f:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    10402e8da856:	41 0f 95 c7                                     	setne  r15b
    10402e8da85a:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e8da85e:	44 23 fb                                        	and    r15d,ebx
    10402e8da861:	0f 85 0d 00 00 00                               	jne    0x10402e8da874
    10402e8da867:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8da86b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8da86f:	e9 0a 00 00 00                                  	jmp    0x10402e8da87e
    10402e8da874:	c4 e3 79 08 e0 09                               	vroundps xmm4,xmm0,0x9
    10402e8da87a:	c5 f8 5c c4                                     	vsubps xmm0,xmm0,xmm4
    10402e8da87e:	c5 c0 59 c0                                     	vmulps xmm0,xmm7,xmm0
    10402e8da882:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    10402e8da88c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8da891:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8da895:	c5 f8 58 e7                                     	vaddps xmm4,xmm0,xmm7
    10402e8da899:	41 8b 5c 08 0c                                  	mov    ebx,DWORD PTR [r8+rcx*1+0xc]
    10402e8da89e:	33 db                                           	xor    ebx,ebx
    10402e8da8a0:	41 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+rcx*1+0xc],0x2600
    10402e8da8a9:	0f 94 c3                                        	sete   bl
    10402e8da8ac:	85 db                                           	test   ebx,ebx
    10402e8da8ae:	0f 85 69 00 00 00                               	jne    0x10402e8da91d
    10402e8da8b4:	c4 e3 79 08 c4 09                               	vroundps xmm0,xmm4,0x9
    10402e8da8ba:	4c 8b 15 54 ba ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffba54]        # 0x10402e8d6315
    10402e8da8c1:	c4 c1 78 54 2a                                  	vandps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8da8c6:	4c 8b 15 73 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe873]        # 0x10402e8d9140
    10402e8da8cd:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8da8d2:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8da8d7:	c4 c1 50 c2 e8 01                               	vcmpltps xmm5,xmm5,xmm8
    10402e8da8dd:	4c 8b 15 1a e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe81a]        # 0x10402e8d90fe
    10402e8da8e4:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8da8e9:	c4 41 78 54 d7                                  	vandps xmm10,xmm0,xmm15
    10402e8da8ee:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8da8f4:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    10402e8da8f9:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    10402e8da8fe:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    10402e8da902:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8da906:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    10402e8da90a:	c4 c1 79 28 e2                                  	vmovapd xmm4,xmm10
    10402e8da90f:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    10402e8da914:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8da918:	e9 49 00 00 00                                  	jmp    0x10402e8da966
    10402e8da91d:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    10402e8da923:	4c 8b 15 eb b9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb9eb]        # 0x10402e8d6315
    10402e8da92a:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    10402e8da92f:	4c 8b 15 0a e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe80a]        # 0x10402e8d9140
    10402e8da936:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8da93b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8da940:	c4 41 38 c2 c2 01                               	vcmpltps xmm8,xmm8,xmm10
    10402e8da946:	4c 8b 15 b1 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7b1]        # 0x10402e8d90fe
    10402e8da94d:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    10402e8da952:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    10402e8da957:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    10402e8da95d:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8da961:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8da966:	c4 e3 79 08 ee 09                               	vroundps xmm5,xmm6,0x9
    10402e8da96c:	4c 8b 15 8b e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe78b]        # 0x10402e8d90fe
    10402e8da973:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    10402e8da978:	c4 c1 50 54 cf                                  	vandps xmm1,xmm5,xmm15
    10402e8da97d:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    10402e8da983:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    10402e8da987:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    10402e8da98c:	4c 8b 15 8e e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe78e]        # 0x10402e8d9121
    10402e8da993:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8da998:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8da99c:	4c 8b 15 72 b9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb972]        # 0x10402e8d6315
    10402e8da9a3:	c4 c1 50 54 1a                                  	vandps xmm3,xmm5,XMMWORD PTR [r10]
    10402e8da9a8:	c4 41 60 c2 d2 01                               	vcmpltps xmm10,xmm3,xmm10
    10402e8da9ae:	c5 29 df fa                                     	vpandn xmm15,xmm10,xmm2
    10402e8da9b2:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    10402e8da9b7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8da9bc:	44 8d 4a ff                                     	lea    r9d,[rdx-0x1]
    10402e8da9c0:	c4 c1 79 6e c9                                  	vmovd  xmm1,r9d
    10402e8da9c5:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e8da9ca:	45 8b 4c 08 2c                                  	mov    r9d,DWORD PTR [r8+rcx*1+0x2c]
    10402e8da9cf:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8da9d3:	c4 e2 29 3d db                                  	vpmaxsd xmm3,xmm10,xmm3
    10402e8da9d8:	c4 e2 61 39 d9                                  	vpminsd xmm3,xmm3,xmm1
    10402e8da9dd:	45 85 db                                        	test   r11d,r11d
    10402e8da9e0:	0f 84 60 00 00 00                               	je     0x10402e8daa46
    10402e8da9e6:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    10402e8da9eb:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8da9f0:	c5 a9 db db                                     	vpand  xmm3,xmm10,xmm3
    10402e8da9f4:	45 85 c9                                        	test   r9d,r9d
    10402e8da9f7:	0f 85 49 00 00 00                               	jne    0x10402e8daa46
    10402e8da9fd:	c5 f9 6e da                                     	vmovd  xmm3,edx
    10402e8daa01:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8daa06:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8daa0b:	c5 29 66 c9                                     	vpcmpgtd xmm9,xmm10,xmm1
    10402e8daa0f:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    10402e8daa13:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8daa18:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8daa1d:	c4 41 11 66 ea                                  	vpcmpgtd xmm13,xmm13,xmm10
    10402e8daa22:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    10402e8daa27:	c4 41 61 db cd                                  	vpand  xmm9,xmm3,xmm13
    10402e8daa2c:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8daa31:	c4 c1 29 fe d9                                  	vpaddd xmm3,xmm10,xmm9
    10402e8daa36:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    10402e8daa3e:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    10402e8daa46:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    10402e8daa4a:	c4 41 59 db c0                                  	vpand  xmm8,xmm4,xmm8
    10402e8daa4f:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8daa54:	8d 77 ff                                        	lea    esi,[rdi-0x1]
    10402e8daa57:	c5 f9 6e d6                                     	vmovd  xmm2,esi
    10402e8daa5b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8daa60:	41 8b 4c 08 30                                  	mov    ecx,DWORD PTR [r8+rcx*1+0x30]
    10402e8daa65:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    10402e8daa69:	c4 e2 39 3d e4                                  	vpmaxsd xmm4,xmm8,xmm4
    10402e8daa6e:	c4 e2 59 39 e2                                  	vpminsd xmm4,xmm4,xmm2
    10402e8daa73:	45 85 ff                                        	test   r15d,r15d
    10402e8daa76:	0f 84 4f 00 00 00                               	je     0x10402e8daacb
    10402e8daa7c:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    10402e8daa80:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8daa85:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    10402e8daa8a:	85 c9                                           	test   ecx,ecx
    10402e8daa8c:	0f 85 39 00 00 00                               	jne    0x10402e8daacb
    10402e8daa92:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    10402e8daa96:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8daa9b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8daaa0:	c5 39 66 ca                                     	vpcmpgtd xmm9,xmm8,xmm2
    10402e8daaa4:	c5 31 db cc                                     	vpand  xmm9,xmm9,xmm4
    10402e8daaa8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8daaad:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8daab2:	c4 41 11 66 e8                                  	vpcmpgtd xmm13,xmm13,xmm8
    10402e8daab7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    10402e8daabc:	c4 41 59 db cd                                  	vpand  xmm9,xmm4,xmm13
    10402e8daac1:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8daac6:	c4 c1 39 fe e1                                  	vpaddd xmm4,xmm8,xmm9
    10402e8daacb:	c5 79 6e ea                                     	vmovd  xmm13,edx
    10402e8daacf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8daad4:	c4 c2 59 40 e5                                  	vpmulld xmm4,xmm4,xmm13
    10402e8daad9:	c5 59 fe cb                                     	vpaddd xmm9,xmm4,xmm3
    10402e8daadd:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    10402e8daae3:	c4 63 79 16 ce 02                               	vpextrd esi,xmm9,0x2
    10402e8daae9:	48 89 95 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rdx
    10402e8daaf0:	c4 63 79 16 ca 01                               	vpextrd edx,xmm9,0x1
    10402e8daaf6:	48 89 95 c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],rdx
    10402e8daafd:	c5 79 7e ca                                     	vmovd  edx,xmm9
    10402e8dab01:	85 db                                           	test   ebx,ebx
    10402e8dab03:	0f 85 4a 09 00 00                               	jne    0x10402e8db453
    10402e8dab09:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    10402e8dab13:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8dab18:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8dab1d:	c4 41 29 fe d1                                  	vpaddd xmm10,xmm10,xmm9
    10402e8dab22:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    10402e8dab27:	c4 42 29 3d f6                                  	vpmaxsd xmm14,xmm10,xmm14
    10402e8dab2c:	c4 62 09 39 f1                                  	vpminsd xmm14,xmm14,xmm1
    10402e8dab31:	45 85 db                                        	test   r11d,r11d
    10402e8dab34:	0f 84 48 00 00 00                               	je     0x10402e8dab82
    10402e8dab3a:	c4 41 79 6e f1                                  	vmovd  xmm14,r9d
    10402e8dab3f:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    10402e8dab44:	c4 41 29 db f6                                  	vpand  xmm14,xmm10,xmm14
    10402e8dab49:	45 85 c9                                        	test   r9d,r9d
    10402e8dab4c:	0f 85 30 00 00 00                               	jne    0x10402e8dab82
    10402e8dab52:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    10402e8dab57:	c5 a9 66 c9                                     	vpcmpgtd xmm1,xmm10,xmm1
    10402e8dab5b:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    10402e8dab60:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8dab65:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    10402e8dab6a:	c4 41 09 66 f2                                  	vpcmpgtd xmm14,xmm14,xmm10
    10402e8dab6f:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    10402e8dab73:	c4 41 11 db f6                                  	vpand  xmm14,xmm13,xmm14
    10402e8dab78:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    10402e8dab7d:	c4 41 29 fe f6                                  	vpaddd xmm14,xmm10,xmm14
    10402e8dab82:	c4 41 39 fe c1                                  	vpaddd xmm8,xmm8,xmm9
    10402e8dab87:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8dab8c:	c4 42 39 3d d2                                  	vpmaxsd xmm10,xmm8,xmm10
    10402e8dab91:	c4 62 29 39 d2                                  	vpminsd xmm10,xmm10,xmm2
    10402e8dab96:	45 85 ff                                        	test   r15d,r15d
    10402e8dab99:	0f 84 4d 00 00 00                               	je     0x10402e8dabec
    10402e8dab9f:	c5 79 6e d1                                     	vmovd  xmm10,ecx
    10402e8daba3:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8daba8:	c4 41 29 db d0                                  	vpand  xmm10,xmm10,xmm8
    10402e8dabad:	85 c9                                           	test   ecx,ecx
    10402e8dabaf:	0f 85 37 00 00 00                               	jne    0x10402e8dabec
    10402e8dabb5:	c5 79 6e d7                                     	vmovd  xmm10,edi
    10402e8dabb9:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8dabbe:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8dabc2:	c5 b9 66 d2                                     	vpcmpgtd xmm2,xmm8,xmm2
    10402e8dabc6:	c4 c1 69 db d2                                  	vpand  xmm2,xmm2,xmm10
    10402e8dabcb:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8dabd0:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    10402e8dabd5:	c4 c1 71 66 c8                                  	vpcmpgtd xmm1,xmm1,xmm8
    10402e8dabda:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    10402e8dabde:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    10402e8dabe2:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8dabe7:	c4 41 39 fe d2                                  	vpaddd xmm10,xmm8,xmm10
    10402e8dabec:	c4 42 29 40 c5                                  	vpmulld xmm8,xmm10,xmm13
    10402e8dabf1:	c5 39 fe d3                                     	vpaddd xmm10,xmm8,xmm3
    10402e8dabf5:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    10402e8dabfc:	0f 85 da 00 00 00                               	jne    0x10402e8dacdc
    10402e8dac02:	c4 41 61 fe c9                                  	vpaddd xmm9,xmm3,xmm9
    10402e8dac07:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    10402e8dac0c:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    10402e8dac11:	83 ff 0f                                        	cmp    edi,0xf
    10402e8dac14:	0f 84 23 00 00 00                               	je     0x10402e8dac3d
    10402e8dac1a:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8dac1d:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dac21:	44 8b 9d c0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x340]
    10402e8dac28:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    10402e8dac2c:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8dac30:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    10402e8dac34:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dac38:	e9 05 01 00 00                                  	jmp    0x10402e8dad42
    10402e8dac3d:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    10402e8dac40:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    10402e8dac46:	44 8b 9d c0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x340]
    10402e8dac4d:	42 8d 3c 98                                     	lea    edi,[rax+r11*4]
    10402e8dac51:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    10402e8dac57:	c4 41 39 6c c1                                  	vpunpcklqdq xmm8,xmm8,xmm9
    10402e8dac5c:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8dac5f:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    10402e8dac65:	8b bd 18 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x2e8]
    10402e8dac6b:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8dac6e:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    10402e8dac74:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    10402e8dac79:	c4 41 38 c6 e9 dd                               	vshufps xmm13,xmm8,xmm9,0xdd
    10402e8dac7f:	c4 41 38 c6 c1 88                               	vshufps xmm8,xmm8,xmm9,0x88
    10402e8dac85:	c4 c1 31 72 f2 02                               	vpslld xmm9,xmm10,0x2
    10402e8dac8b:	c5 79 7e cf                                     	vmovd  edi,xmm9
    10402e8dac8f:	03 f8                                           	add    edi,eax
    10402e8dac91:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8dac97:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    10402e8dac9d:	03 f8                                           	add    edi,eax
    10402e8dac9f:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    10402e8daca5:	c4 41 29 6c d6                                  	vpunpcklqdq xmm10,xmm10,xmm14
    10402e8dacaa:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    10402e8dacb0:	03 f8                                           	add    edi,eax
    10402e8dacb2:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    10402e8dacb8:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    10402e8dacbe:	03 f8                                           	add    edi,eax
    10402e8dacc0:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    10402e8dacc6:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    10402e8daccb:	c4 41 28 c6 f1 dd                               	vshufps xmm14,xmm10,xmm9,0xdd
    10402e8dacd1:	c4 41 28 c6 c9 88                               	vshufps xmm9,xmm10,xmm9,0x88
    10402e8dacd7:	e9 6c 03 00 00                                  	jmp    0x10402e8db048
    10402e8dacdc:	83 bd b8 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x348],0x0
    10402e8dace3:	0f 85 08 00 00 00                               	jne    0x10402e8dacf1
    10402e8dace9:	45 33 ff                                        	xor    r15d,r15d
    10402e8dacec:	e9 07 00 00 00                                  	jmp    0x10402e8dacf8
    10402e8dacf1:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    10402e8dacf4:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8dacf8:	83 bd b8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x248],0x0
    10402e8dacff:	0f 85 08 00 00 00                               	jne    0x10402e8dad0d
    10402e8dad05:	45 33 db                                        	xor    r11d,r11d
    10402e8dad08:	e9 0d 00 00 00                                  	jmp    0x10402e8dad1a
    10402e8dad0d:	8b bd c0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x340]
    10402e8dad13:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8dad16:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    10402e8dad1a:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    10402e8dad21:	0f 85 07 00 00 00                               	jne    0x10402e8dad2e
    10402e8dad27:	33 ff                                           	xor    edi,edi
    10402e8dad29:	e9 07 00 00 00                                  	jmp    0x10402e8dad35
    10402e8dad2e:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8dad31:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dad35:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dad3c:	0f 82 53 00 00 00                               	jb     0x10402e8dad95
    10402e8dad42:	8b 9d 18 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2e8]
    10402e8dad48:	8d 1c 98                                        	lea    ebx,[rax+rbx*4]
    10402e8dad4b:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8dad4f:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    10402e8dad53:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8dad58:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8dad5d:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    10402e8dad64:	0f 85 3b 00 00 00                               	jne    0x10402e8dada5
    10402e8dad6a:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    10402e8dad70:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8dad74:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dad78:	c5 79 7e ca                                     	vmovd  edx,xmm9
    10402e8dad7c:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    10402e8dad7f:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8dad83:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    10402e8dad89:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    10402e8dad8c:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8dad90:	e9 89 00 00 00                                  	jmp    0x10402e8dae1e
    10402e8dad95:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    10402e8dad99:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8dad9e:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8dada3:	33 db                                           	xor    ebx,ebx
    10402e8dada5:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    10402e8dadac:	0f 85 07 00 00 00                               	jne    0x10402e8dadb9
    10402e8dadb2:	33 d2                                           	xor    edx,edx
    10402e8dadb4:	e9 0d 00 00 00                                  	jmp    0x10402e8dadc6
    10402e8dadb9:	c4 41 79 7e cf                                  	vmovd  r15d,xmm9
    10402e8dadbe:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8dadc2:	43 8b 14 38                                     	mov    edx,DWORD PTR [r8+r15*1]
    10402e8dadc6:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    10402e8dadcd:	0f 85 08 00 00 00                               	jne    0x10402e8daddb
    10402e8dadd3:	45 33 ff                                        	xor    r15d,r15d
    10402e8dadd6:	e9 0e 00 00 00                                  	jmp    0x10402e8dade9
    10402e8daddb:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    10402e8dade1:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8dade5:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dade9:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    10402e8dadf0:	0f 85 07 00 00 00                               	jne    0x10402e8dadfd
    10402e8dadf6:	33 c9                                           	xor    ecx,ecx
    10402e8dadf8:	e9 0d 00 00 00                                  	jmp    0x10402e8dae0a
    10402e8dadfd:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    10402e8dae03:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    10402e8dae06:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8dae0a:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dae11:	0f 83 07 00 00 00                               	jae    0x10402e8dae1e
    10402e8dae17:	33 f6                                           	xor    esi,esi
    10402e8dae19:	e9 0d 00 00 00                                  	jmp    0x10402e8dae2b
    10402e8dae1e:	c4 63 79 16 ce 03                               	vpextrd esi,xmm9,0x3
    10402e8dae24:	8d 34 b0                                        	lea    esi,[rax+rsi*4]
    10402e8dae27:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    10402e8dae2b:	c4 43 11 22 cb 01                               	vpinsrd xmm9,xmm13,r11d,0x1
    10402e8dae31:	c5 79 6e ea                                     	vmovd  xmm13,edx
    10402e8dae35:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8dae3a:	c4 43 11 22 ef 01                               	vpinsrd xmm13,xmm13,r15d,0x1
    10402e8dae40:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    10402e8dae47:	0f 85 2d 00 00 00                               	jne    0x10402e8dae7a
    10402e8dae4d:	c4 43 79 16 d3 01                               	vpextrd r11d,xmm10,0x1
    10402e8dae53:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    10402e8dae57:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8dae5b:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    10402e8dae60:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8dae64:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dae68:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    10402e8dae6e:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    10402e8dae71:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8dae75:	e9 a2 00 00 00                                  	jmp    0x10402e8daf1c
    10402e8dae7a:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    10402e8dae81:	0f 85 08 00 00 00                               	jne    0x10402e8dae8f
    10402e8dae87:	45 33 ff                                        	xor    r15d,r15d
    10402e8dae8a:	e9 0d 00 00 00                                  	jmp    0x10402e8dae9c
    10402e8dae8f:	c4 41 79 7e d3                                  	vmovd  r11d,xmm10
    10402e8dae94:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    10402e8dae98:	47 8b 3c 18                                     	mov    r15d,DWORD PTR [r8+r11*1]
    10402e8dae9c:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    10402e8daea3:	0f 85 08 00 00 00                               	jne    0x10402e8daeb1
    10402e8daea9:	45 33 db                                        	xor    r11d,r11d
    10402e8daeac:	e9 0e 00 00 00                                  	jmp    0x10402e8daebf
    10402e8daeb1:	c4 43 79 16 d3 01                               	vpextrd r11d,xmm10,0x1
    10402e8daeb7:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    10402e8daebb:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8daebf:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    10402e8daec6:	0f 85 07 00 00 00                               	jne    0x10402e8daed3
    10402e8daecc:	33 d2                                           	xor    edx,edx
    10402e8daece:	e9 0d 00 00 00                                  	jmp    0x10402e8daee0
    10402e8daed3:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    10402e8daed9:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    10402e8daedc:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8daee0:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8daee7:	0f 83 2f 00 00 00                               	jae    0x10402e8daf1c
    10402e8daeed:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    10402e8daef3:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    10402e8daef9:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    10402e8daefe:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8daf03:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8daf08:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    10402e8daf0e:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    10402e8daf14:	45 33 c9                                        	xor    r9d,r9d
    10402e8daf17:	e9 6f 00 00 00                                  	jmp    0x10402e8daf8b
    10402e8daf1c:	c4 43 79 16 d1 03                               	vpextrd r9d,xmm10,0x3
    10402e8daf22:	46 8d 0c 88                                     	lea    r9d,[rax+r9*4]
    10402e8daf26:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8daf2a:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    10402e8daf30:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    10402e8daf36:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    10402e8daf3b:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8daf40:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8daf45:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    10402e8daf4b:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    10402e8daf51:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    10402e8daf58:	0f 85 2d 00 00 00                               	jne    0x10402e8daf8b
    10402e8daf5e:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8daf64:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8daf67:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8daf6b:	c4 41 79 7e c3                                  	vmovd  r11d,xmm8
    10402e8daf70:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    10402e8daf74:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8daf78:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    10402e8daf7e:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8daf82:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8daf86:	e9 78 00 00 00                                  	jmp    0x10402e8db003
    10402e8daf8b:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    10402e8daf92:	0f 85 08 00 00 00                               	jne    0x10402e8dafa0
    10402e8daf98:	45 33 db                                        	xor    r11d,r11d
    10402e8daf9b:	e9 0b 00 00 00                                  	jmp    0x10402e8dafab
    10402e8dafa0:	c5 79 7e c7                                     	vmovd  edi,xmm8
    10402e8dafa4:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8dafa7:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    10402e8dafab:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    10402e8dafb2:	0f 85 07 00 00 00                               	jne    0x10402e8dafbf
    10402e8dafb8:	33 ff                                           	xor    edi,edi
    10402e8dafba:	e9 0d 00 00 00                                  	jmp    0x10402e8dafcc
    10402e8dafbf:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8dafc5:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8dafc8:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dafcc:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    10402e8dafd3:	0f 85 08 00 00 00                               	jne    0x10402e8dafe1
    10402e8dafd9:	45 33 ff                                        	xor    r15d,r15d
    10402e8dafdc:	e9 0e 00 00 00                                  	jmp    0x10402e8dafef
    10402e8dafe1:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    10402e8dafe7:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8dafeb:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dafef:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8daff6:	0f 83 07 00 00 00                               	jae    0x10402e8db003
    10402e8daffc:	33 c0                                           	xor    eax,eax
    10402e8daffe:	e9 0d 00 00 00                                  	jmp    0x10402e8db010
    10402e8db003:	c4 63 79 16 c2 03                               	vpextrd edx,xmm8,0x3
    10402e8db009:	8d 04 90                                        	lea    eax,[rax+rdx*4]
    10402e8db00c:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8db010:	c4 63 31 22 c3 03                               	vpinsrd xmm8,xmm9,ebx,0x3
    10402e8db016:	c4 63 29 22 ce 03                               	vpinsrd xmm9,xmm10,esi,0x3
    10402e8db01c:	c4 41 79 6e d3                                  	vmovd  xmm10,r11d
    10402e8db021:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8db026:	c4 63 29 22 d7 01                               	vpinsrd xmm10,xmm10,edi,0x1
    10402e8db02c:	c4 43 29 22 d7 02                               	vpinsrd xmm10,xmm10,r15d,0x2
    10402e8db032:	c4 63 29 22 f0 03                               	vpinsrd xmm14,xmm10,eax,0x3
    10402e8db038:	c4 43 11 22 d1 03                               	vpinsrd xmm10,xmm13,r9d,0x3
    10402e8db03e:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    10402e8db043:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    10402e8db048:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    10402e8db04c:	c5 98 5c f8                                     	vsubps xmm7,xmm12,xmm0
    10402e8db050:	c5 c8 5c ed                                     	vsubps xmm5,xmm6,xmm5
    10402e8db054:	c5 98 5c f5                                     	vsubps xmm6,xmm12,xmm5
    10402e8db058:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    10402e8db062:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8db067:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8db06c:	c4 c1 39 db ca                                  	vpand  xmm1,xmm8,xmm10
    10402e8db071:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db076:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8db07c:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8db081:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db086:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8db08b:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8db08f:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8db093:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8db098:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8db09c:	c4 c1 11 db d2                                  	vpand  xmm2,xmm13,xmm10
    10402e8db0a1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db0a6:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8db0ac:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8db0b1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db0b6:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8db0bb:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8db0bf:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8db0c3:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8db0c8:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    10402e8db0cc:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    10402e8db0d0:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    10402e8db0d4:	c4 c1 31 db d2                                  	vpand  xmm2,xmm9,xmm10
    10402e8db0d9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db0de:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8db0e4:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8db0e9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db0ee:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8db0f3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8db0f7:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8db0fb:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8db100:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    10402e8db104:	c4 c1 09 db da                                  	vpand  xmm3,xmm14,xmm10
    10402e8db109:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db10e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8db114:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8db119:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db11e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8db123:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8db127:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8db12b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8db130:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8db134:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    10402e8db138:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    10402e8db13c:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    10402e8db140:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    10402e8db14a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8db14f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8db153:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    10402e8db157:	44 8b 9d 40 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1c0]
    10402e8db15e:	c4 81 7a 7f 0c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm1
    10402e8db164:	c4 c1 71 72 d0 10                               	vpsrld xmm1,xmm8,0x10
    10402e8db16a:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    10402e8db16f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db174:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8db17a:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8db17f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db184:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8db189:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8db18d:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8db191:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8db196:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8db19a:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    10402e8db1a0:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8db1a5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db1aa:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8db1b0:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8db1b5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db1ba:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8db1bf:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8db1c3:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8db1c7:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8db1cc:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8db1d0:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8db1d4:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    10402e8db1d8:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    10402e8db1de:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8db1e3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db1e8:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8db1ee:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8db1f3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db1f8:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8db1fd:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8db201:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8db205:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8db20a:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    10402e8db20e:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    10402e8db214:	c4 c1 59 db e2                                  	vpand  xmm4,xmm4,xmm10
    10402e8db219:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db21e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8db224:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8db229:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db22e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8db233:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8db237:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8db23b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8db240:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    10402e8db244:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    10402e8db248:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    10402e8db24c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8db250:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    10402e8db254:	c4 81 7a 7f 4c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm1
    10402e8db25b:	c4 c1 71 72 d0 08                               	vpsrld xmm1,xmm8,0x8
    10402e8db261:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    10402e8db266:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db26b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8db271:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8db276:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db27b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8db280:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8db284:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8db288:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8db28d:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8db291:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    10402e8db297:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8db29c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db2a1:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8db2a7:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8db2ac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db2b1:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8db2b6:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8db2ba:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8db2be:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8db2c3:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8db2c7:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8db2cb:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    10402e8db2cf:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    10402e8db2d5:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8db2da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db2df:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8db2e5:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8db2ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db2ef:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8db2f4:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8db2f8:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8db2fc:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8db301:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    10402e8db305:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    10402e8db30b:	c4 41 59 db d2                                  	vpand  xmm10,xmm4,xmm10
    10402e8db310:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db315:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    10402e8db31b:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    10402e8db320:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db325:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    10402e8db32b:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    10402e8db330:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    10402e8db335:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    10402e8db33a:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    10402e8db33f:	c4 41 60 58 d2                                  	vaddps xmm10,xmm3,xmm10
    10402e8db344:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    10402e8db349:	c4 41 70 58 d2                                  	vaddps xmm10,xmm1,xmm10
    10402e8db34e:	c5 28 59 d2                                     	vmulps xmm10,xmm10,xmm2
    10402e8db352:	c4 01 7a 7f 54 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm10
    10402e8db359:	c4 c1 39 72 d0 18                               	vpsrld xmm8,xmm8,0x18
    10402e8db35f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db364:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8db36a:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8db36f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db374:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8db37a:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8db37f:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8db384:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8db389:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    10402e8db38e:	c4 c1 29 72 d5 18                               	vpsrld xmm10,xmm13,0x18
    10402e8db394:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db399:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    10402e8db39f:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    10402e8db3a4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db3a9:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    10402e8db3af:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    10402e8db3b4:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    10402e8db3b9:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    10402e8db3be:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    10402e8db3c3:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    10402e8db3c8:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8db3cd:	c4 c1 39 72 d1 18                               	vpsrld xmm8,xmm9,0x18
    10402e8db3d3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db3d8:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8db3de:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8db3e3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db3e8:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8db3ee:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8db3f3:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8db3f8:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8db3fd:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    10402e8db402:	c4 c1 39 72 d6 18                               	vpsrld xmm8,xmm14,0x18
    10402e8db408:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db40d:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8db413:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8db418:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db41d:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8db423:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8db428:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8db42d:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8db432:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    10402e8db437:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    10402e8db43b:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8db43f:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    10402e8db443:	41 8b fb                                        	mov    edi,r11d
    10402e8db446:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8db44e:	e9 c3 01 00 00                                  	jmp    0x10402e8db616
    10402e8db453:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    10402e8db45a:	0f 85 23 00 00 00                               	jne    0x10402e8db483
    10402e8db460:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8db463:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8db467:	44 8b 9d c0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x340]
    10402e8db46e:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    10402e8db472:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8db476:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    10402e8db47a:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8db47e:	e9 66 00 00 00                                  	jmp    0x10402e8db4e9
    10402e8db483:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    10402e8db48a:	0f 85 08 00 00 00                               	jne    0x10402e8db498
    10402e8db490:	45 33 ff                                        	xor    r15d,r15d
    10402e8db493:	e9 07 00 00 00                                  	jmp    0x10402e8db49f
    10402e8db498:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    10402e8db49b:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8db49f:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    10402e8db4a6:	0f 85 08 00 00 00                               	jne    0x10402e8db4b4
    10402e8db4ac:	45 33 db                                        	xor    r11d,r11d
    10402e8db4af:	e9 0d 00 00 00                                  	jmp    0x10402e8db4c1
    10402e8db4b4:	8b bd c0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x340]
    10402e8db4ba:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8db4bd:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    10402e8db4c1:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    10402e8db4c8:	0f 85 07 00 00 00                               	jne    0x10402e8db4d5
    10402e8db4ce:	33 ff                                           	xor    edi,edi
    10402e8db4d0:	e9 07 00 00 00                                  	jmp    0x10402e8db4dc
    10402e8db4d5:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8db4d8:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8db4dc:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8db4e3:	0f 82 12 00 00 00                               	jb     0x10402e8db4fb
    10402e8db4e9:	8b 9d 18 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2e8]
    10402e8db4ef:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    10402e8db4f2:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8db4f6:	e9 02 00 00 00                                  	jmp    0x10402e8db4fd
    10402e8db4fb:	33 c0                                           	xor    eax,eax
    10402e8db4fd:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    10402e8db502:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8db507:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    10402e8db50d:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    10402e8db513:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    10402e8db519:	4c 8b 15 3a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb3a]        # 0x10402e8db05a
    10402e8db520:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8db525:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8db529:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    10402e8db52d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db532:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8db538:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8db53d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db542:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8db547:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8db54b:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8db54f:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8db554:	4c 8b 15 e7 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe7]        # 0x10402e8db142
    10402e8db55b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8db560:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8db564:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8db568:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    10402e8db56e:	c4 c1 7a 7f 34 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm6
    10402e8db574:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    10402e8db579:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    10402e8db57d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db582:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8db588:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8db58d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db592:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8db597:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8db59b:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8db59f:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8db5a4:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8db5a8:	c4 c1 7a 7f 74 38 20                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x20],xmm6
    10402e8db5af:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    10402e8db5b4:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    10402e8db5b8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db5bd:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e8db5c3:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e8db5c8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db5cd:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e8db5d2:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e8db5d6:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e8db5da:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e8db5df:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    10402e8db5e3:	c4 c1 7a 7f 6c 38 10                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x10],xmm5
    10402e8db5ea:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    10402e8db5ef:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8db5f4:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8db5fa:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8db5ff:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8db604:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8db609:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8db60d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8db611:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8db616:	4c 8b 15 25 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb25]        # 0x10402e8db142
    10402e8db61d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8db622:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8db626:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8db62a:	c4 c1 7a 7f 44 38 30                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x30],xmm0
    10402e8db631:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8db634:	e9 44 03 00 00                                  	jmp    0x10402e8db97d
    10402e8db639:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8db63c:	49 8d 40 08                                     	lea    rax,[r8+0x8]
    10402e8db640:	c4 a2 79 18 3c 38                               	vbroadcastss xmm7,DWORD PTR [rax+r15*1]
    10402e8db646:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    10402e8db64a:	c4 22 79 18 04 08                               	vbroadcastss xmm8,DWORD PTR [rax+r9*1]
    10402e8db650:	c4 41 79 28 d6                                  	vmovapd xmm10,xmm14
    10402e8db655:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    10402e8db65a:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8db65f:	c4 22 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [rax+r11*1]
    10402e8db665:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    10402e8db66a:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8db66f:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    10402e8db674:	c5 b8 59 df                                     	vmulps xmm3,xmm8,xmm7
    10402e8db678:	83 fb 03                                        	cmp    ebx,0x3
    10402e8db67b:	0f 84 77 02 00 00                               	je     0x10402e8db8f8
    10402e8db681:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    10402e8db685:	c4 c1 7a 7f bc 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm7
    10402e8db68f:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    10402e8db699:	c4 c1 7a 7f bc 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm7
    10402e8db6a3:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    10402e8db6ad:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    10402e8db6b7:	c4 c1 7a 7f 9c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm3
    10402e8db6c1:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    10402e8db6cb:	48 89 b5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rsi
    10402e8db6d2:	48 89 8d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],rcx
    10402e8db6d9:	45 33 db                                        	xor    r11d,r11d
    10402e8db6dc:	e9 2c 00 00 00                                  	jmp    0x10402e8db70d
    10402e8db6e1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8db6ea:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8db6f3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8db6fc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    10402e8db700:	8b 8d c0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x340]
    10402e8db706:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8db709:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8db70d:	4c 89 9d 48 fb ff ff                            	mov    QWORD PTR [rbp-0x4b8],r11
    10402e8db714:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8db719:	0f 85 ec 4f 00 00                               	jne    0x10402e8e070b
    10402e8db71f:	8b d1                                           	mov    edx,ecx
    10402e8db721:	41 8b cb                                        	mov    ecx,r11d
    10402e8db724:	8b 9d 38 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1c8]
    10402e8db72a:	d3 eb                                           	shr    ebx,cl
    10402e8db72c:	f6 c3 01                                        	test   bl,0x1
    10402e8db72f:	0f 84 1f 01 00 00                               	je     0x10402e8db854
    10402e8db735:	41 8b 4c 10 10                                  	mov    ecx,DWORD PTR [r8+rdx*1+0x10]
    10402e8db73a:	41 8b 5c 10 0c                                  	mov    ebx,DWORD PTR [r8+rdx*1+0xc]
    10402e8db73f:	45 8b 4c 10 08                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x8]
    10402e8db744:	45 8b 4c 10 04                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x4]
    10402e8db749:	48 89 9d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rbx
    10402e8db750:	41 8b 1c 10                                     	mov    ebx,DWORD PTR [r8+rdx*1]
    10402e8db754:	83 fb 02                                        	cmp    ebx,0x2
    10402e8db757:	0f 84 9a 00 00 00                               	je     0x10402e8db7f7
    10402e8db75d:	48 89 8d 10 fb ff ff                            	mov    QWORD PTR [rbp-0x4f0],rcx
    10402e8db764:	85 db                                           	test   ebx,ebx
    10402e8db766:	0f 85 39 00 00 00                               	jne    0x10402e8db7a5
    10402e8db76c:	42 8d 9c 9f 90 02 00 00                         	lea    ebx,[rdi+r11*4+0x290]
    10402e8db774:	c4 c1 7a 10 0c 18                               	vmovss xmm1,DWORD PTR [r8+rbx*1]
    10402e8db77a:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    10402e8db780:	41 8b cb                                        	mov    ecx,r11d
    10402e8db783:	c1 e1 04                                        	shl    ecx,0x4
    10402e8db786:	03 d9                                           	add    ebx,ecx
    10402e8db788:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8db78c:	41 8b c1                                        	mov    eax,r9d
    10402e8db78f:	8b 95 18 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e8]
    10402e8db795:	8b 8d 10 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4f0]
    10402e8db79b:	e8 80 aa eb ff                                  	call   0x10402e796220
    10402e8db7a0:	e9 af 00 00 00                                  	jmp    0x10402e8db854
    10402e8db7a5:	44 8b e2                                        	mov    r12d,edx
    10402e8db7a8:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    10402e8db7ad:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    10402e8db7b5:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    10402e8db7bb:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    10402e8db7c3:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    10402e8db7c9:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    10402e8db7cf:	41 8b cb                                        	mov    ecx,r11d
    10402e8db7d2:	c1 e1 04                                        	shl    ecx,0x4
    10402e8db7d5:	03 d1                                           	add    edx,ecx
    10402e8db7d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8db7db:	41 8b c1                                        	mov    eax,r9d
    10402e8db7de:	44 8b ca                                        	mov    r9d,edx
    10402e8db7e1:	8b 95 18 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e8]
    10402e8db7e7:	8b 8d 10 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4f0]
    10402e8db7ed:	e8 46 aa eb ff                                  	call   0x10402e796238
    10402e8db7f2:	e9 5d 00 00 00                                  	jmp    0x10402e8db854
    10402e8db7f7:	8b c2                                           	mov    eax,edx
    10402e8db7f9:	41 8b 5c 00 14                                  	mov    ebx,DWORD PTR [r8+rax*1+0x14]
    10402e8db7fe:	45 8b 64 00 18                                  	mov    r12d,DWORD PTR [r8+rax*1+0x18]
    10402e8db803:	46 8d bc 9f 90 02 00 00                         	lea    r15d,[rdi+r11*4+0x290]
    10402e8db80b:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    10402e8db811:	46 8d bc 9f 80 02 00 00                         	lea    r15d,[rdi+r11*4+0x280]
    10402e8db819:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    10402e8db81f:	46 8d bc 9f 70 02 00 00                         	lea    r15d,[rdi+r11*4+0x270]
    10402e8db827:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    10402e8db82d:	44 8d bf 30 02 00 00                            	lea    r15d,[rdi+0x230]
    10402e8db834:	41 8b d3                                        	mov    edx,r11d
    10402e8db837:	c1 e2 04                                        	shl    edx,0x4
    10402e8db83a:	44 03 fa                                        	add    r15d,edx
    10402e8db83d:	41 57                                           	push   r15
    10402e8db83f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8db843:	41 8b c1                                        	mov    eax,r9d
    10402e8db846:	8b 95 18 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e8]
    10402e8db84c:	45 8b cc                                        	mov    r9d,r12d
    10402e8db84f:	e8 d4 a9 eb ff                                  	call   0x10402e796228
    10402e8db854:	44 8b 9d 48 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4b8]
    10402e8db85b:	41 83 c3 01                                     	add    r11d,0x1
    10402e8db85f:	41 83 fb 04                                     	cmp    r11d,0x4
    10402e8db863:	0f 85 97 fe ff ff                               	jne    0x10402e8db700
    10402e8db869:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8db86c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8db870:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    10402e8db87a:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    10402e8db884:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    10402e8db888:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    10402e8db892:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    10402e8db89c:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    10402e8db8a1:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    10402e8db8a5:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8db8ab:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    10402e8db8b2:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    10402e8db8b6:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    10402e8db8bd:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    10402e8db8c1:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    10402e8db8c6:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    10402e8db8ca:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    10402e8db8d1:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    10402e8db8d5:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    10402e8db8db:	c5 78 10 a5 c0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x440]
    10402e8db8e3:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8db8eb:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    10402e8db8f3:	e9 85 00 00 00                                  	jmp    0x10402e8db97d
    10402e8db8f8:	8b c1                                           	mov    eax,ecx
    10402e8db8fa:	8b ce                                           	mov    ecx,esi
    10402e8db8fc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8db900:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8db904:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8db908:	8b 95 38 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c8]
    10402e8db90e:	e8 15 ac eb ff                                  	call   0x10402e796528
    10402e8db913:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8db916:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8db91a:	c5 78 10 a5 c0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x440]
    10402e8db922:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8db92a:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    10402e8db932:	e9 46 00 00 00                                  	jmp    0x10402e8db97d
    10402e8db937:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    10402e8db93b:	44 8b e1                                        	mov    r12d,ecx
    10402e8db93e:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8db944:	c4 c1 7a 7f 04 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm0
    10402e8db94a:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    10402e8db94e:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8db954:	c4 c1 7a 7f 44 30 10                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x10],xmm0
    10402e8db95b:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    10402e8db95f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8db965:	c4 c1 7a 7f 44 30 20                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x20],xmm0
    10402e8db96c:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    10402e8db970:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8db976:	c4 c1 7a 7f 44 30 30                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x30],xmm0
    10402e8db97d:	44 8b 9d 60 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1a0]
    10402e8db984:	41 83 c3 01                                     	add    r11d,0x1
    10402e8db988:	41 83 fb 04                                     	cmp    r11d,0x4
    10402e8db98c:	0f 85 ee ec ff ff                               	jne    0x10402e8da680
    10402e8db992:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    10402e8db99c:	4c 8b 15 e1 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeee1]        # 0x10402e8da884
    10402e8db9a3:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8db9a8:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8db9ac:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8db9b0:	c5 f8 10 b5 50 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xb0]
    10402e8db9b8:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    10402e8db9bc:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8db9c0:	c4 c1 7a 6f b4 38 40 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x140]
    10402e8db9ca:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    10402e8db9ce:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    10402e8db9d6:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    10402e8db9da:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8db9de:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8db9e2:	c4 c1 7a 6f b4 38 50 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x150]
    10402e8db9ec:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    10402e8db9f0:	c5 78 10 85 60 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xa0]
    10402e8db9f8:	c5 b8 58 ed                                     	vaddps xmm5,xmm8,xmm5
    10402e8db9fc:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    10402e8dba00:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8dba04:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    10402e8dba0e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8dba13:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8dba17:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8dba1b:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8dba23:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dba27:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8dba2c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dba30:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    10402e8dba34:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8dba38:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8dba3c:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    10402e8dba43:	47 8b 9c 18 38 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x138]
    10402e8dba4b:	4d 8b e3                                        	mov    r12,r11
    10402e8dba4e:	41 83 c4 ff                                     	add    r12d,0xffffffff
    10402e8dba52:	0f 85 f1 00 00 00                               	jne    0x10402e8dbb49
    10402e8dba58:	c4 c1 7a 6f b4 38 10 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x210]
    10402e8dba62:	c4 c1 7a 6f bc 38 d0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1d0]
    10402e8dba6c:	4d 8d 98 38 36 00 00                            	lea    r11,[r8+0x3638]
    10402e8dba73:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    10402e8dba77:	c4 02 79 18 04 3b                               	vbroadcastss xmm8,DWORD PTR [r11+r15*1]
    10402e8dba7d:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    10402e8dba82:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    10402e8dba87:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8dba8c:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8dba91:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8dba95:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8dba99:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    10402e8dba9d:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8dbaa1:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8dbaa5:	c4 c1 7a 6f bc 38 00 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x200]
    10402e8dbaaf:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    10402e8dbab9:	4d 8d 98 34 36 00 00                            	lea    r11,[r8+0x3634]
    10402e8dbac0:	c4 02 79 18 14 3b                               	vbroadcastss xmm10,DWORD PTR [r11+r15*1]
    10402e8dbac6:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    10402e8dbacb:	c4 41 50 5f d2                                  	vmaxps xmm10,xmm5,xmm10
    10402e8dbad0:	c4 41 30 5d d2                                  	vminps xmm10,xmm9,xmm10
    10402e8dbad5:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    10402e8dbada:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    10402e8dbadf:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8dbae4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8dbae9:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8dbaed:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8dbaf1:	c4 41 7a 6f 84 38 f0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1f0]
    10402e8dbafb:	c4 41 7a 6f 94 38 b0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1b0]
    10402e8dbb05:	4d 8d 98 30 36 00 00                            	lea    r11,[r8+0x3630]
    10402e8dbb0c:	c4 02 79 18 1c 3b                               	vbroadcastss xmm11,DWORD PTR [r11+r15*1]
    10402e8dbb12:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8dbb17:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbb1b:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dbb1f:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    10402e8dbb23:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbb27:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dbb2b:	c5 b8 58 c0                                     	vaddps xmm0,xmm8,xmm0
    10402e8dbb2f:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbb33:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dbb37:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    10402e8dbb3b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8dbb3f:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    10402e8dbb44:	e9 61 01 00 00                                  	jmp    0x10402e8dbcaa
    10402e8dbb49:	41 83 fc 02                                     	cmp    r12d,0x2
    10402e8dbb4d:	0f 84 80 00 00 00                               	je     0x10402e8dbbd3
    10402e8dbb53:	c4 c1 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1d0]
    10402e8dbb5d:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    10402e8dbb61:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbb65:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dbb69:	c4 c1 7a 6f bc 38 c0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1c0]
    10402e8dbb73:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8dbb77:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8dbb7b:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8dbb7f:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    10402e8dbb86:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8dbb8a:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    10402e8dbb90:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8dbb95:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8dbb99:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8dbb9d:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    10402e8dbba7:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    10402e8dbbac:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8dbbb0:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8dbbb4:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    10402e8dbbbb:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    10402e8dbbc1:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    10402e8dbbc6:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8dbbca:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8dbbce:	e9 4f 00 00 00                                  	jmp    0x10402e8dbc22
    10402e8dbbd3:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    10402e8dbbd7:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbbdb:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dbbdf:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    10402e8dbbe6:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8dbbea:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    10402e8dbbf0:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    10402e8dbbf4:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8dbbf8:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8dbbfc:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    10402e8dbc03:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    10402e8dbc09:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    10402e8dbc0d:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8dbc11:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8dbc15:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    10402e8dbc19:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8dbc1d:	c4 c1 79 28 ff                                  	vmovapd xmm7,xmm15
    10402e8dbc22:	4d 8d b8 20 37 00 00                            	lea    r15,[r8+0x3720]
    10402e8dbc29:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    10402e8dbc2f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    10402e8dbc34:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbc38:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dbc3c:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8dbc40:	0f 84 61 00 00 00                               	je     0x10402e8dbca7
    10402e8dbc46:	c4 01 7a 10 84 20 24 37 00 00                   	vmovss xmm8,DWORD PTR [r8+r12*1+0x3724]
    10402e8dbc50:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8dbc55:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8dbc5b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8dbc61:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    10402e8dbc66:	0f 87 05 00 00 00                               	ja     0x10402e8dbc71
    10402e8dbc6c:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    10402e8dbc71:	c4 41 18 57 e4                                  	vxorps xmm12,xmm12,xmm12
    10402e8dbc76:	c4 41 78 2e e0                                  	vucomiss xmm12,xmm8
    10402e8dbc7b:	0f 87 0a 00 00 00                               	ja     0x10402e8dbc8b
    10402e8dbc81:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    10402e8dbc86:	e9 05 00 00 00                                  	jmp    0x10402e8dbc90
    10402e8dbc8b:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    10402e8dbc90:	c4 42 79 18 c0                                  	vbroadcastss xmm8,xmm8
    10402e8dbc95:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    10402e8dbc99:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8dbc9d:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    10402e8dbca2:	e9 d5 13 00 00                                  	jmp    0x10402e8dd07c
    10402e8dbca7:	4d 8b fc                                        	mov    r15,r12
    10402e8dbcaa:	c5 78 10 55 80                                  	vmovups xmm10,XMMWORD PTR [rbp-0x80]
    10402e8dbcaf:	c4 41 50 5f c2                                  	vmaxps xmm8,xmm5,xmm10
    10402e8dbcb4:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8dbcb9:	c4 41 7a 6f 94 38 e0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1e0]
    10402e8dbcc3:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    10402e8dbcc8:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    10402e8dbccd:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8dbcd2:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    10402e8dbcd6:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8dbcda:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    10402e8dbcdf:	e9 98 13 00 00                                  	jmp    0x10402e8dd07c
    10402e8dbce4:	43 8b 4c 08 38                                  	mov    ecx,DWORD PTR [r8+r9*1+0x38]
    10402e8dbce9:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8dbcf1:	43 83 7c 08 38 00                               	cmp    DWORD PTR [r8+r9*1+0x38],0x0
    10402e8dbcf7:	0f 85 72 12 00 00                               	jne    0x10402e8dcf6f
    10402e8dbcfd:	49 8d 48 54                                     	lea    rcx,[r8+0x54]
    10402e8dbd01:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8dbd07:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8dbd0b:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8dbd11:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8dbd15:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8dbd19:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8dbd1f:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8dbd23:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8dbd27:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8dbd2b:	49 8d 48 50                                     	lea    rcx,[r8+0x50]
    10402e8dbd2f:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8dbd35:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8dbd39:	c4 e2 79 18 34 01                               	vbroadcastss xmm6,DWORD PTR [rcx+rax*1]
    10402e8dbd3f:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    10402e8dbd43:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    10402e8dbd47:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8dbd4d:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8dbd51:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    10402e8dbd55:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    10402e8dbd59:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    10402e8dbd5d:	4c 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r9
    10402e8dbd64:	83 f9 01                                        	cmp    ecx,0x1
    10402e8dbd67:	0f 85 0e 0f 00 00                               	jne    0x10402e8dcc7b
    10402e8dbd6d:	47 8b 5c 08 28                                  	mov    r11d,DWORD PTR [r8+r9*1+0x28]
    10402e8dbd72:	45 85 db                                        	test   r11d,r11d
    10402e8dbd75:	0f 84 00 0f 00 00                               	je     0x10402e8dcc7b
    10402e8dbd7b:	43 8b 5c 08 1c                                  	mov    ebx,DWORD PTR [r8+r9*1+0x1c]
    10402e8dbd80:	85 db                                           	test   ebx,ebx
    10402e8dbd82:	0f 8e f3 0e 00 00                               	jle    0x10402e8dcc7b
    10402e8dbd88:	48 89 8d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rcx
    10402e8dbd8f:	43 8b 4c 08 20                                  	mov    ecx,DWORD PTR [r8+r9*1+0x20]
    10402e8dbd94:	85 c9                                           	test   ecx,ecx
    10402e8dbd96:	0f 8e d9 0e 00 00                               	jle    0x10402e8dcc75
    10402e8dbd9c:	44 8b d3                                        	mov    r10d,ebx
    10402e8dbd9f:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    10402e8dbda4:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8dbda9:	43 8b 54 08 10                                  	mov    edx,DWORD PTR [r8+r9*1+0x10]
    10402e8dbdae:	33 c0                                           	xor    eax,eax
    10402e8dbdb0:	81 fa 2f 81 00 00                               	cmp    edx,0x812f
    10402e8dbdb6:	0f 95 c0                                        	setne  al
    10402e8dbdb9:	81 fa 00 29 00 00                               	cmp    edx,0x2900
    10402e8dbdbf:	0f 95 c2                                        	setne  dl
    10402e8dbdc2:	0f b6 d2                                        	movzx  edx,dl
    10402e8dbdc5:	23 d0                                           	and    edx,eax
    10402e8dbdc7:	0f 85 0d 00 00 00                               	jne    0x10402e8dbdda
    10402e8dbdcd:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8dbdd1:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    10402e8dbdd5:	e9 0b 00 00 00                                  	jmp    0x10402e8dbde5
    10402e8dbdda:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    10402e8dbde0:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    10402e8dbde5:	c5 b0 59 f6                                     	vmulps xmm6,xmm9,xmm6
    10402e8dbde9:	44 8b d1                                        	mov    r10d,ecx
    10402e8dbdec:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    10402e8dbdf1:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8dbdf6:	43 8b 44 08 14                                  	mov    eax,DWORD PTR [r8+r9*1+0x14]
    10402e8dbdfb:	45 33 ff                                        	xor    r15d,r15d
    10402e8dbdfe:	3d 2f 81 00 00                                  	cmp    eax,0x812f
    10402e8dbe03:	41 0f 95 c7                                     	setne  r15b
    10402e8dbe07:	3d 00 29 00 00                                  	cmp    eax,0x2900
    10402e8dbe0c:	0f 95 c0                                        	setne  al
    10402e8dbe0f:	0f b6 c0                                        	movzx  eax,al
    10402e8dbe12:	41 23 c7                                        	and    eax,r15d
    10402e8dbe15:	0f 85 0d 00 00 00                               	jne    0x10402e8dbe28
    10402e8dbe1b:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8dbe1f:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8dbe23:	e9 0b 00 00 00                                  	jmp    0x10402e8dbe33
    10402e8dbe28:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    10402e8dbe2e:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    10402e8dbe33:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8dbe37:	4c 8b 15 46 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea46]        # 0x10402e8da884
    10402e8dbe3e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8dbe43:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8dbe48:	c4 41 78 58 d9                                  	vaddps xmm11,xmm0,xmm9
    10402e8dbe4d:	47 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [r8+r9*1+0xc]
    10402e8dbe52:	45 33 ff                                        	xor    r15d,r15d
    10402e8dbe55:	43 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+r9*1+0xc],0x2600
    10402e8dbe5e:	41 0f 94 c7                                     	sete   r15b
    10402e8dbe62:	45 85 ff                                        	test   r15d,r15d
    10402e8dbe65:	0f 85 5c 00 00 00                               	jne    0x10402e8dbec7
    10402e8dbe6b:	c4 c3 79 08 c3 09                               	vroundps xmm0,xmm11,0x9
    10402e8dbe71:	4c 8b 15 9d a4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa49d]        # 0x10402e8d6315
    10402e8dbe78:	c4 41 78 54 2a                                  	vandps xmm13,xmm0,XMMWORD PTR [r10]
    10402e8dbe7d:	4c 8b 15 bc d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2bc]        # 0x10402e8d9140
    10402e8dbe84:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dbe89:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8dbe8e:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    10402e8dbe94:	4c 8b 15 63 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd263]        # 0x10402e8d90fe
    10402e8dbe9b:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8dbea0:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    10402e8dbea5:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8dbeab:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8dbeaf:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8dbeb4:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    10402e8dbeb9:	c5 79 28 c8                                     	vmovapd xmm9,xmm0
    10402e8dbebd:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    10402e8dbec2:	e9 4a 00 00 00                                  	jmp    0x10402e8dbf11
    10402e8dbec7:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    10402e8dbecd:	4c 8b 15 41 a4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa441]        # 0x10402e8d6315
    10402e8dbed4:	c4 41 30 54 1a                                  	vandps xmm11,xmm9,XMMWORD PTR [r10]
    10402e8dbed9:	4c 8b 15 60 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd260]        # 0x10402e8d9140
    10402e8dbee0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dbee5:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8dbeea:	c4 41 20 c2 ee 01                               	vcmpltps xmm13,xmm11,xmm14
    10402e8dbef0:	4c 8b 15 07 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd207]        # 0x10402e8d90fe
    10402e8dbef7:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    10402e8dbefd:	c4 c1 30 54 e7                                  	vandps xmm4,xmm9,xmm15
    10402e8dbf02:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    10402e8dbf08:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8dbf0c:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8dbf11:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    10402e8dbf17:	4c 8b 15 e0 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1e0]        # 0x10402e8d90fe
    10402e8dbf1e:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    10402e8dbf24:	c4 c1 20 54 ef                                  	vandps xmm5,xmm11,xmm15
    10402e8dbf29:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    10402e8dbf2f:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    10402e8dbf33:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    10402e8dbf38:	4c 8b 15 e2 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1e2]        # 0x10402e8d9121
    10402e8dbf3f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8dbf44:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8dbf48:	4c 8b 15 c6 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3c6]        # 0x10402e8d6315
    10402e8dbf4f:	c4 41 20 54 02                                  	vandps xmm8,xmm11,XMMWORD PTR [r10]
    10402e8dbf54:	c4 41 38 c2 c6 01                               	vcmpltps xmm8,xmm8,xmm14
    10402e8dbf5a:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    10402e8dbf5e:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8dbf63:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dbf68:	8d 7b ff                                        	lea    edi,[rbx-0x1]
    10402e8dbf6b:	c5 79 6e c7                                     	vmovd  xmm8,edi
    10402e8dbf6f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8dbf74:	43 8b 7c 08 2c                                  	mov    edi,DWORD PTR [r8+r9*1+0x2c]
    10402e8dbf79:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8dbf7e:	c4 42 51 3d d2                                  	vpmaxsd xmm10,xmm5,xmm10
    10402e8dbf83:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    10402e8dbf88:	85 d2                                           	test   edx,edx
    10402e8dbf8a:	0f 84 57 00 00 00                               	je     0x10402e8dbfe7
    10402e8dbf90:	c5 79 6e d7                                     	vmovd  xmm10,edi
    10402e8dbf94:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8dbf99:	c4 41 51 db d2                                  	vpand  xmm10,xmm5,xmm10
    10402e8dbf9e:	85 ff                                           	test   edi,edi
    10402e8dbfa0:	0f 85 41 00 00 00                               	jne    0x10402e8dbfe7
    10402e8dbfa6:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    10402e8dbfaa:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8dbfaf:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    10402e8dbfb4:	c4 c1 51 66 c8                                  	vpcmpgtd xmm1,xmm5,xmm8
    10402e8dbfb9:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    10402e8dbfbe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8dbfc3:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    10402e8dbfc8:	c5 19 66 e5                                     	vpcmpgtd xmm12,xmm12,xmm5
    10402e8dbfcc:	c5 19 df f9                                     	vpandn xmm15,xmm12,xmm1
    10402e8dbfd0:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    10402e8dbfd5:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8dbfda:	c4 41 51 fe d2                                  	vpaddd xmm10,xmm5,xmm10
    10402e8dbfdf:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8dbfe7:	c5 11 df ff                                     	vpandn xmm15,xmm13,xmm7
    10402e8dbfeb:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    10402e8dbff0:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    10402e8dbff5:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    10402e8dbff8:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    10402e8dbffc:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8dc001:	43 8b 74 08 30                                  	mov    esi,DWORD PTR [r8+r9*1+0x30]
    10402e8dc006:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    10402e8dc00b:	c4 42 11 3d e4                                  	vpmaxsd xmm12,xmm13,xmm12
    10402e8dc010:	c4 62 19 39 e4                                  	vpminsd xmm12,xmm12,xmm4
    10402e8dc015:	85 c0                                           	test   eax,eax
    10402e8dc017:	0f 84 4d 00 00 00                               	je     0x10402e8dc06a
    10402e8dc01d:	c5 79 6e e6                                     	vmovd  xmm12,esi
    10402e8dc021:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc026:	c4 41 19 db e5                                  	vpand  xmm12,xmm12,xmm13
    10402e8dc02b:	85 f6                                           	test   esi,esi
    10402e8dc02d:	0f 85 37 00 00 00                               	jne    0x10402e8dc06a
    10402e8dc033:	c5 79 6e e1                                     	vmovd  xmm12,ecx
    10402e8dc037:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc03c:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8dc040:	c5 91 66 d4                                     	vpcmpgtd xmm2,xmm13,xmm4
    10402e8dc044:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    10402e8dc049:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8dc04e:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    10402e8dc053:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    10402e8dc058:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    10402e8dc05c:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    10402e8dc060:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8dc065:	c4 41 11 fe e4                                  	vpaddd xmm12,xmm13,xmm12
    10402e8dc06a:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    10402e8dc06e:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e8dc073:	c4 62 19 40 e1                                  	vpmulld xmm12,xmm12,xmm1
    10402e8dc078:	c4 c1 19 fe d2                                  	vpaddd xmm2,xmm12,xmm10
    10402e8dc07d:	c4 e3 79 16 d3 03                               	vpextrd ebx,xmm2,0x3
    10402e8dc083:	c4 c3 79 16 d1 02                               	vpextrd r9d,xmm2,0x2
    10402e8dc089:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    10402e8dc090:	c4 e3 79 16 d3 01                               	vpextrd ebx,xmm2,0x1
    10402e8dc096:	4c 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r9
    10402e8dc09d:	c4 c1 79 7e d1                                  	vmovd  r9d,xmm2
    10402e8dc0a2:	45 85 ff                                        	test   r15d,r15d
    10402e8dc0a5:	0f 85 e5 09 00 00                               	jne    0x10402e8dca90
    10402e8dc0ab:	4c 8b 15 59 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea59]        # 0x10402e8dab0b
    10402e8dc0b2:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8dc0b7:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8dc0bb:	c5 d1 fe ea                                     	vpaddd xmm5,xmm5,xmm2
    10402e8dc0bf:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8dc0c3:	c4 e2 51 3d db                                  	vpmaxsd xmm3,xmm5,xmm3
    10402e8dc0c8:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    10402e8dc0cd:	85 d2                                           	test   edx,edx
    10402e8dc0cf:	0f 84 43 00 00 00                               	je     0x10402e8dc118
    10402e8dc0d5:	c5 f9 6e df                                     	vmovd  xmm3,edi
    10402e8dc0d9:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8dc0de:	c5 d1 db db                                     	vpand  xmm3,xmm5,xmm3
    10402e8dc0e2:	85 ff                                           	test   edi,edi
    10402e8dc0e4:	0f 85 2e 00 00 00                               	jne    0x10402e8dc118
    10402e8dc0ea:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8dc0ee:	c4 41 51 66 c0                                  	vpcmpgtd xmm8,xmm5,xmm8
    10402e8dc0f3:	c5 39 db c1                                     	vpand  xmm8,xmm8,xmm1
    10402e8dc0f7:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8dc0fc:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    10402e8dc101:	c5 e1 66 dd                                     	vpcmpgtd xmm3,xmm3,xmm5
    10402e8dc105:	c4 41 61 df f8                                  	vpandn xmm15,xmm3,xmm8
    10402e8dc10a:	c5 71 db c3                                     	vpand  xmm8,xmm1,xmm3
    10402e8dc10e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8dc113:	c4 c1 51 fe d8                                  	vpaddd xmm3,xmm5,xmm8
    10402e8dc118:	c5 91 fe ea                                     	vpaddd xmm5,xmm13,xmm2
    10402e8dc11c:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    10402e8dc121:	c4 42 51 3d c0                                  	vpmaxsd xmm8,xmm5,xmm8
    10402e8dc126:	c4 62 39 39 c4                                  	vpminsd xmm8,xmm8,xmm4
    10402e8dc12b:	85 c0                                           	test   eax,eax
    10402e8dc12d:	0f 84 4d 00 00 00                               	je     0x10402e8dc180
    10402e8dc133:	c5 79 6e c6                                     	vmovd  xmm8,esi
    10402e8dc137:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8dc13c:	c5 39 db c5                                     	vpand  xmm8,xmm8,xmm5
    10402e8dc140:	85 f6                                           	test   esi,esi
    10402e8dc142:	0f 85 38 00 00 00                               	jne    0x10402e8dc180
    10402e8dc148:	c5 79 6e c1                                     	vmovd  xmm8,ecx
    10402e8dc14c:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8dc151:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8dc156:	c5 d1 66 e4                                     	vpcmpgtd xmm4,xmm5,xmm4
    10402e8dc15a:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    10402e8dc15f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8dc164:	c4 c2 59 0a e7                                  	vpsignd xmm4,xmm4,xmm15
    10402e8dc169:	c5 11 66 ed                                     	vpcmpgtd xmm13,xmm13,xmm5
    10402e8dc16d:	c5 11 df fc                                     	vpandn xmm15,xmm13,xmm4
    10402e8dc171:	c4 41 39 db c5                                  	vpand  xmm8,xmm8,xmm13
    10402e8dc176:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8dc17b:	c4 41 51 fe c0                                  	vpaddd xmm8,xmm5,xmm8
    10402e8dc180:	c4 e2 39 40 e9                                  	vpmulld xmm5,xmm8,xmm1
    10402e8dc185:	c4 41 51 fe c2                                  	vpaddd xmm8,xmm5,xmm10
    10402e8dc18a:	45 85 e4                                        	test   r12d,r12d
    10402e8dc18d:	0f 85 0c 01 00 00                               	jne    0x10402e8dc29f
    10402e8dc193:	c5 29 fe d2                                     	vpaddd xmm10,xmm10,xmm2
    10402e8dc197:	c4 41 61 76 d2                                  	vpcmpeqd xmm10,xmm3,xmm10
    10402e8dc19c:	c4 c1 78 50 fa                                  	vmovmskps edi,xmm10
    10402e8dc1a1:	83 ff 0f                                        	cmp    edi,0xf
    10402e8dc1a4:	0f 84 4f 00 00 00                               	je     0x10402e8dc1f9
    10402e8dc1aa:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    10402e8dc1b1:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8dc1b7:	83 e6 04                                        	and    esi,0x4
    10402e8dc1ba:	8b bd 38 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c8]
    10402e8dc1c0:	83 e7 02                                        	and    edi,0x2
    10402e8dc1c3:	44 8b bd 38 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c8]
    10402e8dc1ca:	41 83 e7 01                                     	and    r15d,0x1
    10402e8dc1ce:	41 8d 04 9b                                     	lea    eax,[r11+rbx*4]
    10402e8dc1d2:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dc1d6:	43 8d 1c 8b                                     	lea    ebx,[r11+r9*4]
    10402e8dc1da:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8dc1de:	8b 95 40 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c0]
    10402e8dc1e4:	41 8d 14 93                                     	lea    edx,[r11+rdx*4]
    10402e8dc1e8:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8dc1ec:	44 8b d0                                        	mov    r10d,eax
    10402e8dc1ef:	8b c3                                           	mov    eax,ebx
    10402e8dc1f1:	41 8b da                                        	mov    ebx,r10d
    10402e8dc1f4:	e9 38 01 00 00                                  	jmp    0x10402e8dc331
    10402e8dc1f9:	43 8d 3c 8b                                     	lea    edi,[r11+r9*4]
    10402e8dc1fd:	c4 c1 7b 10 2c 38                               	vmovsd xmm5,QWORD PTR [r8+rdi*1]
    10402e8dc203:	41 8d 3c 9b                                     	lea    edi,[r11+rbx*4]
    10402e8dc207:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8dc20d:	c4 c1 51 6c ea                                  	vpunpcklqdq xmm5,xmm5,xmm10
    10402e8dc212:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    10402e8dc218:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dc21c:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8dc222:	44 8b bd 60 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1a0]
    10402e8dc229:	43 8d 3c bb                                     	lea    edi,[r11+r15*4]
    10402e8dc22d:	c4 41 7b 10 24 38                               	vmovsd xmm12,QWORD PTR [r8+rdi*1]
    10402e8dc233:	c4 41 29 6c d4                                  	vpunpcklqdq xmm10,xmm10,xmm12
    10402e8dc238:	c4 41 50 c6 e2 dd                               	vshufps xmm12,xmm5,xmm10,0xdd
    10402e8dc23e:	c4 c1 50 c6 ea 88                               	vshufps xmm5,xmm5,xmm10,0x88
    10402e8dc244:	c4 c1 39 72 f0 02                               	vpslld xmm8,xmm8,0x2
    10402e8dc24a:	c5 79 7e c7                                     	vmovd  edi,xmm8
    10402e8dc24e:	41 03 fb                                        	add    edi,r11d
    10402e8dc251:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8dc257:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8dc25d:	41 03 fb                                        	add    edi,r11d
    10402e8dc260:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    10402e8dc266:	c4 41 29 6c d5                                  	vpunpcklqdq xmm10,xmm10,xmm13
    10402e8dc26b:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    10402e8dc271:	41 03 fb                                        	add    edi,r11d
    10402e8dc274:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    10402e8dc27a:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    10402e8dc280:	41 03 fb                                        	add    edi,r11d
    10402e8dc283:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    10402e8dc289:	c4 41 11 6c c0                                  	vpunpcklqdq xmm8,xmm13,xmm8
    10402e8dc28e:	c4 41 28 c6 e8 dd                               	vshufps xmm13,xmm10,xmm8,0xdd
    10402e8dc294:	c4 41 28 c6 c0 88                               	vshufps xmm8,xmm10,xmm8,0x88
    10402e8dc29a:	e9 64 04 00 00                                  	jmp    0x10402e8dc703
    10402e8dc29f:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    10402e8dc2a6:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8dc2ac:	83 e6 04                                        	and    esi,0x4
    10402e8dc2af:	8b bd 38 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c8]
    10402e8dc2b5:	83 e7 02                                        	and    edi,0x2
    10402e8dc2b8:	44 8b bd 38 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c8]
    10402e8dc2bf:	41 83 e7 01                                     	and    r15d,0x1
    10402e8dc2c3:	45 85 ff                                        	test   r15d,r15d
    10402e8dc2c6:	0f 85 07 00 00 00                               	jne    0x10402e8dc2d3
    10402e8dc2cc:	33 c0                                           	xor    eax,eax
    10402e8dc2ce:	e9 08 00 00 00                                  	jmp    0x10402e8dc2db
    10402e8dc2d3:	43 8d 04 8b                                     	lea    eax,[r11+r9*4]
    10402e8dc2d7:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dc2db:	85 ff                                           	test   edi,edi
    10402e8dc2dd:	0f 85 07 00 00 00                               	jne    0x10402e8dc2ea
    10402e8dc2e3:	33 db                                           	xor    ebx,ebx
    10402e8dc2e5:	e9 08 00 00 00                                  	jmp    0x10402e8dc2f2
    10402e8dc2ea:	41 8d 1c 9b                                     	lea    ebx,[r11+rbx*4]
    10402e8dc2ee:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8dc2f2:	85 f6                                           	test   esi,esi
    10402e8dc2f4:	0f 85 07 00 00 00                               	jne    0x10402e8dc301
    10402e8dc2fa:	33 d2                                           	xor    edx,edx
    10402e8dc2fc:	e9 0e 00 00 00                                  	jmp    0x10402e8dc30f
    10402e8dc301:	8b 95 40 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c0]
    10402e8dc307:	41 8d 14 93                                     	lea    edx,[r11+rdx*4]
    10402e8dc30b:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8dc30f:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dc316:	0f 83 15 00 00 00                               	jae    0x10402e8dc331
    10402e8dc31c:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    10402e8dc321:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8dc325:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc32a:	33 c9                                           	xor    ecx,ecx
    10402e8dc32c:	e9 5f 00 00 00                                  	jmp    0x10402e8dc390
    10402e8dc331:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    10402e8dc337:	41 8d 0c 8b                                     	lea    ecx,[r11+rcx*4]
    10402e8dc33b:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8dc33f:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    10402e8dc344:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8dc348:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc34d:	45 85 e4                                        	test   r12d,r12d
    10402e8dc350:	0f 85 3a 00 00 00                               	jne    0x10402e8dc390
    10402e8dc356:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    10402e8dc35c:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    10402e8dc360:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dc364:	c4 41 79 7e d1                                  	vmovd  r9d,xmm10
    10402e8dc369:	47 8d 0c 8b                                     	lea    r9d,[r11+r9*4]
    10402e8dc36d:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8dc371:	c4 43 79 16 d4 02                               	vpextrd r12d,xmm10,0x2
    10402e8dc377:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    10402e8dc37b:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8dc37f:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    10402e8dc386:	8b f7                                           	mov    esi,edi
    10402e8dc388:	41 8b fc                                        	mov    edi,r12d
    10402e8dc38b:	e9 b2 00 00 00                                  	jmp    0x10402e8dc442
    10402e8dc390:	45 85 ff                                        	test   r15d,r15d
    10402e8dc393:	0f 85 08 00 00 00                               	jne    0x10402e8dc3a1
    10402e8dc399:	45 33 c9                                        	xor    r9d,r9d
    10402e8dc39c:	e9 0c 00 00 00                                  	jmp    0x10402e8dc3ad
    10402e8dc3a1:	c5 79 7e d0                                     	vmovd  eax,xmm10
    10402e8dc3a5:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    10402e8dc3a9:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    10402e8dc3ad:	85 ff                                           	test   edi,edi
    10402e8dc3af:	0f 85 07 00 00 00                               	jne    0x10402e8dc3bc
    10402e8dc3b5:	33 c0                                           	xor    eax,eax
    10402e8dc3b7:	e9 0e 00 00 00                                  	jmp    0x10402e8dc3ca
    10402e8dc3bc:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    10402e8dc3c2:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    10402e8dc3c6:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dc3ca:	85 f6                                           	test   esi,esi
    10402e8dc3cc:	0f 85 10 00 00 00                               	jne    0x10402e8dc3e2
    10402e8dc3d2:	48 c7 85 60 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1a0],0x0
    10402e8dc3dd:	e9 1c 00 00 00                                  	jmp    0x10402e8dc3fe
    10402e8dc3e2:	c4 43 79 16 d4 02                               	vpextrd r12d,xmm10,0x2
    10402e8dc3e8:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    10402e8dc3ec:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8dc3f0:	4c 89 a5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r12
    10402e8dc3f7:	44 8b a5 80 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x280]
    10402e8dc3fe:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dc405:	0f 83 24 00 00 00                               	jae    0x10402e8dc42f
    10402e8dc40b:	48 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rbx
    10402e8dc412:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    10402e8dc418:	4c 89 8d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r9
    10402e8dc41f:	44 8b c8                                        	mov    r9d,eax
    10402e8dc422:	41 8b c7                                        	mov    eax,r15d
    10402e8dc425:	44 8b ff                                        	mov    r15d,edi
    10402e8dc428:	33 ff                                           	xor    edi,edi
    10402e8dc42a:	e9 4a 00 00 00                                  	jmp    0x10402e8dc479
    10402e8dc42f:	44 8b d7                                        	mov    r10d,edi
    10402e8dc432:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8dc438:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    10402e8dc43f:	41 8b f2                                        	mov    esi,r10d
    10402e8dc442:	c4 43 79 16 d4 03                               	vpextrd r12d,xmm10,0x3
    10402e8dc448:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    10402e8dc44c:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8dc450:	48 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rbx
    10402e8dc457:	8b df                                           	mov    ebx,edi
    10402e8dc459:	41 8b fc                                        	mov    edi,r12d
    10402e8dc45c:	4c 89 8d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r9
    10402e8dc463:	44 8b c8                                        	mov    r9d,eax
    10402e8dc466:	44 8b a5 80 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x280]
    10402e8dc46d:	41 8b c7                                        	mov    eax,r15d
    10402e8dc470:	44 8b fe                                        	mov    r15d,esi
    10402e8dc473:	8b b5 60 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1a0]
    10402e8dc479:	c4 63 19 22 95 a8 fd ff ff 01                   	vpinsrd xmm10,xmm12,DWORD PTR [rbp-0x258],0x1
    10402e8dc483:	c5 79 6e a5 18 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x2e8]
    10402e8dc48b:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc490:	c4 43 19 22 e1 01                               	vpinsrd xmm12,xmm12,r9d,0x1
    10402e8dc496:	48 89 bd 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdi
    10402e8dc49d:	45 85 e4                                        	test   r12d,r12d
    10402e8dc4a0:	0f 85 4b 00 00 00                               	jne    0x10402e8dc4f1
    10402e8dc4a6:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    10402e8dc4ac:	47 8d 0c 8b                                     	lea    r9d,[r11+r9*4]
    10402e8dc4b0:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8dc4b4:	c5 79 7e c7                                     	vmovd  edi,xmm8
    10402e8dc4b8:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dc4bc:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dc4c0:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    10402e8dc4c7:	c4 63 79 16 c1 02                               	vpextrd ecx,xmm8,0x2
    10402e8dc4cd:	41 8d 0c 8b                                     	lea    ecx,[r11+rcx*4]
    10402e8dc4d1:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8dc4d5:	4c 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r9
    10402e8dc4dc:	44 8b c9                                        	mov    r9d,ecx
    10402e8dc4df:	48 89 bd b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdi
    10402e8dc4e6:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8dc4ec:	e9 d5 00 00 00                                  	jmp    0x10402e8dc5c6
    10402e8dc4f1:	85 c0                                           	test   eax,eax
    10402e8dc4f3:	0f 85 08 00 00 00                               	jne    0x10402e8dc501
    10402e8dc4f9:	45 33 c9                                        	xor    r9d,r9d
    10402e8dc4fc:	e9 0d 00 00 00                                  	jmp    0x10402e8dc50e
    10402e8dc501:	c4 41 79 7e c1                                  	vmovd  r9d,xmm8
    10402e8dc506:	47 8d 0c 8b                                     	lea    r9d,[r11+r9*4]
    10402e8dc50a:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8dc50e:	45 85 ff                                        	test   r15d,r15d
    10402e8dc511:	0f 85 10 00 00 00                               	jne    0x10402e8dc527
    10402e8dc517:	48 c7 85 a8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x258],0x0
    10402e8dc522:	e9 1b 00 00 00                                  	jmp    0x10402e8dc542
    10402e8dc527:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8dc52d:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dc531:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dc535:	48 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rdi
    10402e8dc53c:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8dc542:	85 f6                                           	test   esi,esi
    10402e8dc544:	0f 85 10 00 00 00                               	jne    0x10402e8dc55a
    10402e8dc54a:	48 c7 85 18 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x2e8],0x0
    10402e8dc555:	e9 1b 00 00 00                                  	jmp    0x10402e8dc575
    10402e8dc55a:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    10402e8dc560:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dc564:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dc568:	48 89 bd 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rdi
    10402e8dc56f:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8dc575:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dc57c:	0f 83 36 00 00 00                               	jae    0x10402e8dc5b8
    10402e8dc582:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    10402e8dc588:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    10402e8dc58e:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    10402e8dc592:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    10402e8dc597:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc59c:	c4 63 19 22 a5 a8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x258],0x1
    10402e8dc5a6:	c4 63 19 22 a5 18 fd ff ff 02                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x2e8],0x2
    10402e8dc5b0:	45 33 e4                                        	xor    r12d,r12d
    10402e8dc5b3:	e9 9a 00 00 00                                  	jmp    0x10402e8dc652
    10402e8dc5b8:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    10402e8dc5bf:	44 8b 8d 18 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x2e8]
    10402e8dc5c6:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    10402e8dc5cc:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dc5d0:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dc5d4:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    10402e8dc5da:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    10402e8dc5e0:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    10402e8dc5e4:	c5 79 6e a5 b8 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x248]
    10402e8dc5ec:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dc5f1:	c4 63 19 22 a5 a8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x258],0x1
    10402e8dc5fb:	c4 43 19 22 e1 02                               	vpinsrd xmm12,xmm12,r9d,0x2
    10402e8dc601:	45 85 e4                                        	test   r12d,r12d
    10402e8dc604:	0f 85 3f 00 00 00                               	jne    0x10402e8dc649
    10402e8dc60a:	c4 c3 79 16 ec 01                               	vpextrd r12d,xmm5,0x1
    10402e8dc610:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    10402e8dc614:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8dc618:	c4 c1 79 7e ef                                  	vmovd  r15d,xmm5
    10402e8dc61d:	47 8d 3c bb                                     	lea    r15d,[r11+r15*4]
    10402e8dc621:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dc625:	c4 e3 79 16 e8 02                               	vpextrd eax,xmm5,0x2
    10402e8dc62b:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    10402e8dc62f:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dc633:	8b d8                                           	mov    ebx,eax
    10402e8dc635:	41 8b c7                                        	mov    eax,r15d
    10402e8dc638:	45 8b fc                                        	mov    r15d,r12d
    10402e8dc63b:	44 8b e7                                        	mov    r12d,edi
    10402e8dc63e:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8dc644:	e9 75 00 00 00                                  	jmp    0x10402e8dc6be
    10402e8dc649:	44 8b e7                                        	mov    r12d,edi
    10402e8dc64c:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8dc652:	85 c0                                           	test   eax,eax
    10402e8dc654:	0f 85 07 00 00 00                               	jne    0x10402e8dc661
    10402e8dc65a:	33 c0                                           	xor    eax,eax
    10402e8dc65c:	e9 0c 00 00 00                                  	jmp    0x10402e8dc66d
    10402e8dc661:	c5 f9 7e e8                                     	vmovd  eax,xmm5
    10402e8dc665:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    10402e8dc669:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dc66d:	45 85 ff                                        	test   r15d,r15d
    10402e8dc670:	0f 85 08 00 00 00                               	jne    0x10402e8dc67e
    10402e8dc676:	45 33 ff                                        	xor    r15d,r15d
    10402e8dc679:	e9 0e 00 00 00                                  	jmp    0x10402e8dc68c
    10402e8dc67e:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    10402e8dc684:	47 8d 3c bb                                     	lea    r15d,[r11+r15*4]
    10402e8dc688:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dc68c:	85 f6                                           	test   esi,esi
    10402e8dc68e:	0f 85 07 00 00 00                               	jne    0x10402e8dc69b
    10402e8dc694:	33 db                                           	xor    ebx,ebx
    10402e8dc696:	e9 0e 00 00 00                                  	jmp    0x10402e8dc6a9
    10402e8dc69b:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    10402e8dc6a1:	41 8d 1c 9b                                     	lea    ebx,[r11+rbx*4]
    10402e8dc6a5:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8dc6a9:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dc6b0:	0f 83 08 00 00 00                               	jae    0x10402e8dc6be
    10402e8dc6b6:	45 33 db                                        	xor    r11d,r11d
    10402e8dc6b9:	e9 0e 00 00 00                                  	jmp    0x10402e8dc6cc
    10402e8dc6be:	c4 e3 79 16 ea 03                               	vpextrd edx,xmm5,0x3
    10402e8dc6c4:	45 8d 1c 93                                     	lea    r11d,[r11+rdx*4]
    10402e8dc6c8:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8dc6cc:	c4 e3 39 22 e9 03                               	vpinsrd xmm5,xmm8,ecx,0x3
    10402e8dc6d2:	c4 63 29 22 c7 03                               	vpinsrd xmm8,xmm10,edi,0x3
    10402e8dc6d8:	c5 79 6e d0                                     	vmovd  xmm10,eax
    10402e8dc6dc:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8dc6e1:	c4 43 29 22 d7 01                               	vpinsrd xmm10,xmm10,r15d,0x1
    10402e8dc6e7:	c4 63 29 22 d3 02                               	vpinsrd xmm10,xmm10,ebx,0x2
    10402e8dc6ed:	c4 43 29 22 eb 03                               	vpinsrd xmm13,xmm10,r11d,0x3
    10402e8dc6f3:	c4 43 19 22 d4 03                               	vpinsrd xmm10,xmm12,r12d,0x3
    10402e8dc6f9:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    10402e8dc6fe:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    10402e8dc703:	c5 a9 72 d5 18                                  	vpsrld xmm10,xmm5,0x18
    10402e8dc708:	c4 c1 71 72 d4 18                               	vpsrld xmm1,xmm12,0x18
    10402e8dc70e:	c5 29 6b d1                                     	vpackssdw xmm10,xmm10,xmm1
    10402e8dc712:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8dc716:	c4 c3 71 0f d2 08                               	vpalignr xmm2,xmm1,xmm10,0x8
    10402e8dc71c:	c5 29 61 d2                                     	vpunpcklwd xmm10,xmm10,xmm2
    10402e8dc720:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    10402e8dc72a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8dc72f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8dc733:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    10402e8dc738:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    10402e8dc742:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8dc747:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8dc74c:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    10402e8dc751:	4c 8b 15 8f c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc98f]        # 0x10402e8d90e7
    10402e8dc758:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8dc75d:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8dc761:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    10402e8dc765:	4c 8b 15 92 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc992]        # 0x10402e8d90fe
    10402e8dc76c:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    10402e8dc771:	c4 c1 48 54 e7                                  	vandps xmm4,xmm6,xmm15
    10402e8dc776:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    10402e8dc77c:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8dc780:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8dc785:	4c 8b 15 89 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9b89]        # 0x10402e8d6315
    10402e8dc78c:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    10402e8dc791:	c4 c1 48 c2 f6 01                               	vcmpltps xmm6,xmm6,xmm14
    10402e8dc797:	c5 49 df ff                                     	vpandn xmm15,xmm6,xmm7
    10402e8dc79b:	c5 d9 db f6                                     	vpand  xmm6,xmm4,xmm6
    10402e8dc79f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8dc7a4:	c5 e9 fa e6                                     	vpsubd xmm4,xmm2,xmm6
    10402e8dc7a8:	c5 d9 6b f6                                     	vpackssdw xmm6,xmm4,xmm6
    10402e8dc7ac:	c4 e3 71 0f e6 08                               	vpalignr xmm4,xmm1,xmm6,0x8
    10402e8dc7b2:	c5 c9 61 f4                                     	vpunpcklwd xmm6,xmm6,xmm4
    10402e8dc7b6:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    10402e8dc7ba:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    10402e8dc7bf:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8dc7c4:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    10402e8dc7c8:	4c 8b 15 2f c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc92f]        # 0x10402e8d90fe
    10402e8dc7cf:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8dc7d4:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    10402e8dc7d9:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8dc7df:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    10402e8dc7e4:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    10402e8dc7e9:	4c 8b 15 25 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9b25]        # 0x10402e8d6315
    10402e8dc7f0:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8dc7f5:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    10402e8dc7fb:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    10402e8dc7ff:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    10402e8dc803:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dc808:	c5 e9 fa f8                                     	vpsubd xmm7,xmm2,xmm0
    10402e8dc80c:	c4 62 29 40 cf                                  	vpmulld xmm9,xmm10,xmm7
    10402e8dc811:	c4 c1 29 72 d0 18                               	vpsrld xmm10,xmm8,0x18
    10402e8dc817:	c4 c1 21 72 d5 18                               	vpsrld xmm11,xmm13,0x18
    10402e8dc81d:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    10402e8dc822:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    10402e8dc828:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    10402e8dc82d:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    10402e8dc831:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    10402e8dc836:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8dc83b:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    10402e8dc845:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8dc84a:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8dc84f:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8dc854:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    10402e8dc85a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dc85f:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8dc865:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8dc86a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dc86f:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8dc875:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8dc87a:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8dc87f:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8dc884:	4c 8b 15 b7 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8b7]        # 0x10402e8db142
    10402e8dc88b:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8dc890:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8dc895:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8dc89a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8dc89d:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    10402e8dc8a7:	c5 b1 72 d5 10                                  	vpsrld xmm9,xmm5,0x10
    10402e8dc8ac:	4c 8b 15 a7 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a7]        # 0x10402e8db05a
    10402e8dc8b3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dc8b8:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8dc8bd:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    10402e8dc8c2:	c4 c1 69 72 d4 10                               	vpsrld xmm2,xmm12,0x10
    10402e8dc8c8:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8dc8cd:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    10402e8dc8d1:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    10402e8dc8d7:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    10402e8dc8db:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    10402e8dc8df:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    10402e8dc8e4:	c4 c1 69 72 d0 10                               	vpsrld xmm2,xmm8,0x10
    10402e8dc8ea:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8dc8ef:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    10402e8dc8f5:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    10402e8dc8fa:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    10402e8dc8fe:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    10402e8dc904:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    10402e8dc908:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    10402e8dc90c:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    10402e8dc911:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    10402e8dc915:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8dc91a:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    10402e8dc920:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dc925:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8dc92b:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8dc930:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dc935:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8dc93b:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8dc940:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8dc945:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8dc94a:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8dc94f:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    10402e8dc959:	c5 b1 72 d5 08                                  	vpsrld xmm9,xmm5,0x8
    10402e8dc95e:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    10402e8dc963:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    10402e8dc969:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8dc96e:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    10402e8dc972:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    10402e8dc978:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    10402e8dc97c:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    10402e8dc980:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    10402e8dc985:	c4 c1 69 72 d0 08                               	vpsrld xmm2,xmm8,0x8
    10402e8dc98b:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8dc990:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    10402e8dc996:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    10402e8dc99b:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    10402e8dc99f:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    10402e8dc9a5:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    10402e8dc9a9:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    10402e8dc9ad:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    10402e8dc9b2:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    10402e8dc9b6:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8dc9bb:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    10402e8dc9c1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dc9c6:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8dc9cc:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8dc9d1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dc9d6:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8dc9dc:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8dc9e1:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8dc9e6:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8dc9eb:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8dc9f0:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    10402e8dc9fa:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8dc9ff:	c4 41 19 db ce                                  	vpand  xmm9,xmm12,xmm14
    10402e8dca04:	c4 c1 51 6b e9                                  	vpackssdw xmm5,xmm5,xmm9
    10402e8dca09:	c4 63 71 0f cd 08                               	vpalignr xmm9,xmm1,xmm5,0x8
    10402e8dca0f:	c4 c1 51 61 e9                                  	vpunpcklwd xmm5,xmm5,xmm9
    10402e8dca14:	c5 d1 f5 ee                                     	vpmaddwd xmm5,xmm5,xmm6
    10402e8dca18:	c4 e2 51 40 ef                                  	vpmulld xmm5,xmm5,xmm7
    10402e8dca1d:	c4 c1 39 db fe                                  	vpand  xmm7,xmm8,xmm14
    10402e8dca22:	c4 41 11 db c6                                  	vpand  xmm8,xmm13,xmm14
    10402e8dca27:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    10402e8dca2c:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    10402e8dca32:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    10402e8dca37:	c5 c1 f5 f6                                     	vpmaddwd xmm6,xmm7,xmm6
    10402e8dca3b:	c4 e2 49 40 c0                                  	vpmulld xmm0,xmm6,xmm0
    10402e8dca40:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    10402e8dca44:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    10402e8dca49:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    10402e8dca4e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dca53:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8dca59:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8dca5e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dca63:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8dca68:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8dca6c:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8dca70:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8dca75:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8dca7a:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8dca84:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    10402e8dca8b:	e9 35 05 00 00                                  	jmp    0x10402e8dcfc5
    10402e8dca90:	45 85 e4                                        	test   r12d,r12d
    10402e8dca93:	0f 85 23 00 00 00                               	jne    0x10402e8dcabc
    10402e8dca99:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    10402e8dca9f:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dcaa3:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dcaa7:	45 8d 24 9b                                     	lea    r12d,[r11+rbx*4]
    10402e8dcaab:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8dcaaf:	47 8d 3c 8b                                     	lea    r15d,[r11+r9*4]
    10402e8dcab3:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8dcab7:	e9 69 00 00 00                                  	jmp    0x10402e8dcb25
    10402e8dcabc:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    10402e8dcac3:	0f 85 08 00 00 00                               	jne    0x10402e8dcad1
    10402e8dcac9:	45 33 ff                                        	xor    r15d,r15d
    10402e8dcacc:	e9 08 00 00 00                                  	jmp    0x10402e8dcad9
    10402e8dcad1:	43 8d 3c 8b                                     	lea    edi,[r11+r9*4]
    10402e8dcad5:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8dcad9:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    10402e8dcae0:	0f 85 08 00 00 00                               	jne    0x10402e8dcaee
    10402e8dcae6:	45 33 e4                                        	xor    r12d,r12d
    10402e8dcae9:	e9 08 00 00 00                                  	jmp    0x10402e8dcaf6
    10402e8dcaee:	41 8d 3c 9b                                     	lea    edi,[r11+rbx*4]
    10402e8dcaf2:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    10402e8dcaf6:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    10402e8dcafd:	0f 85 07 00 00 00                               	jne    0x10402e8dcb0a
    10402e8dcb03:	33 ff                                           	xor    edi,edi
    10402e8dcb05:	e9 0e 00 00 00                                  	jmp    0x10402e8dcb18
    10402e8dcb0a:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    10402e8dcb10:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    10402e8dcb14:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8dcb18:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    10402e8dcb1f:	0f 82 13 00 00 00                               	jb     0x10402e8dcb38
    10402e8dcb25:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8dcb2b:	45 8d 1c 83                                     	lea    r11d,[r11+rax*4]
    10402e8dcb2f:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8dcb33:	e9 03 00 00 00                                  	jmp    0x10402e8dcb3b
    10402e8dcb38:	45 33 db                                        	xor    r11d,r11d
    10402e8dcb3b:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    10402e8dcb40:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8dcb45:	c4 c3 79 22 c4 01                               	vpinsrd xmm0,xmm0,r12d,0x1
    10402e8dcb4b:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    10402e8dcb51:	c4 c3 79 22 c3 03                               	vpinsrd xmm0,xmm0,r11d,0x3
    10402e8dcb57:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    10402e8dcb5c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dcb61:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e8dcb67:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e8dcb6c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dcb71:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e8dcb76:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e8dcb7a:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e8dcb7e:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e8dcb83:	4c 8b 15 b8 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5b8]        # 0x10402e8db142
    10402e8dcb8a:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8dcb8f:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8dcb93:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    10402e8dcb97:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8dcb9a:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    10402e8dcba4:	4c 8b 15 af e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4af]        # 0x10402e8db05a
    10402e8dcbab:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8dcbb0:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8dcbb4:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    10402e8dcbb8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dcbbd:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8dcbc3:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8dcbc8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dcbcd:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8dcbd2:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8dcbd6:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8dcbda:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8dcbdf:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    10402e8dcbe3:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    10402e8dcbed:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    10402e8dcbf2:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    10402e8dcbf6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dcbfb:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8dcc01:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8dcc06:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dcc0b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8dcc10:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8dcc14:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8dcc18:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8dcc1d:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    10402e8dcc21:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    10402e8dcc2b:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    10402e8dcc30:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8dcc34:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8dcc39:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8dcc3f:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8dcc44:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8dcc49:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8dcc4e:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8dcc52:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8dcc56:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8dcc5b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8dcc5f:	c4 c1 7a 7f 84 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm0
    10402e8dcc69:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    10402e8dcc70:	e9 50 03 00 00                                  	jmp    0x10402e8dcfc5
    10402e8dcc75:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    10402e8dcc7b:	4d 8d 58 58                                     	lea    r11,[r8+0x58]
    10402e8dcc7f:	4d 8b e7                                        	mov    r12,r15
    10402e8dcc82:	c4 82 79 18 24 23                               	vbroadcastss xmm4,DWORD PTR [r11+r12*1]
    10402e8dcc88:	c5 20 59 dc                                     	vmulps xmm11,xmm11,xmm4
    10402e8dcc8c:	4c 8b f8                                        	mov    r15,rax
    10402e8dcc8f:	c4 82 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [r11+r15*1]
    10402e8dcc95:	c5 08 59 f4                                     	vmulps xmm14,xmm14,xmm4
    10402e8dcc99:	c4 41 20 58 de                                  	vaddps xmm11,xmm11,xmm14
    10402e8dcc9e:	48 8b c2                                        	mov    rax,rdx
    10402e8dcca1:	c4 42 79 18 34 03                               	vbroadcastss xmm14,DWORD PTR [r11+rax*1]
    10402e8dcca7:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    10402e8dccac:	c4 41 20 58 c9                                  	vaddps xmm9,xmm11,xmm9
    10402e8dccb1:	c4 41 10 59 c9                                  	vmulps xmm9,xmm13,xmm9
    10402e8dccb6:	83 f9 03                                        	cmp    ecx,0x3
    10402e8dccb9:	0f 84 79 02 00 00                               	je     0x10402e8dcf38
    10402e8dccbf:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8dccc4:	44 8b 9d 18 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3e8]
    10402e8dcccb:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    10402e8dccd1:	8b 9d 40 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x4c0]
    10402e8dccd7:	c4 41 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+rbx*1],xmm11
    10402e8dccdd:	c4 41 7a 7f 9c 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm11
    10402e8dcce7:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    10402e8dccf1:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    10402e8dccfb:	c4 41 7a 7f 8c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm9
    10402e8dcd05:	c4 41 7a 7f 9c 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm11
    10402e8dcd0f:	33 d2                                           	xor    edx,edx
    10402e8dcd11:	e9 3e 00 00 00                                  	jmp    0x10402e8dcd54
    10402e8dcd16:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dcd1f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dcd28:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dcd31:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dcd3a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dcd40:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    10402e8dcd47:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8dcd4a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8dcd4e:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8dcd54:	48 89 95 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdx
    10402e8dcd5b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8dcd60:	0f 85 c3 39 00 00                               	jne    0x10402e8e0729
    10402e8dcd66:	8b ca                                           	mov    ecx,edx
    10402e8dcd68:	d3 ee                                           	shr    esi,cl
    10402e8dcd6a:	40 f6 c6 01                                     	test   sil,0x1
    10402e8dcd6e:	0f 84 2d 01 00 00                               	je     0x10402e8dcea1
    10402e8dcd74:	43 8b 4c 08 10                                  	mov    ecx,DWORD PTR [r8+r9*1+0x10]
    10402e8dcd79:	43 8b 74 08 0c                                  	mov    esi,DWORD PTR [r8+r9*1+0xc]
    10402e8dcd7e:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    10402e8dcd85:	43 8b 4c 08 08                                  	mov    ecx,DWORD PTR [r8+r9*1+0x8]
    10402e8dcd8a:	43 8b 4c 08 04                                  	mov    ecx,DWORD PTR [r8+r9*1+0x4]
    10402e8dcd8f:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    10402e8dcd96:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    10402e8dcd9a:	83 f9 02                                        	cmp    ecx,0x2
    10402e8dcd9d:	0f 84 9d 00 00 00                               	je     0x10402e8dce40
    10402e8dcda3:	85 c9                                           	test   ecx,ecx
    10402e8dcda5:	0f 85 47 00 00 00                               	jne    0x10402e8dcdf2
    10402e8dcdab:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    10402e8dcdb2:	c4 c1 7a 10 04 08                               	vmovss xmm0,DWORD PTR [r8+rcx*1]
    10402e8dcdb8:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8dcdbe:	48 89 b5 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rsi
    10402e8dcdc5:	8b f2                                           	mov    esi,edx
    10402e8dcdc7:	c1 e6 04                                        	shl    esi,0x4
    10402e8dcdca:	03 ce                                           	add    ecx,esi
    10402e8dcdcc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dcdd0:	8b 85 40 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1c0]
    10402e8dcdd6:	8b 95 b8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x248]
    10402e8dcddc:	8b d9                                           	mov    ebx,ecx
    10402e8dcdde:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    10402e8dcde4:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    10402e8dcde8:	e8 33 94 eb ff                                  	call   0x10402e796220
    10402e8dcded:	e9 af 00 00 00                                  	jmp    0x10402e8dcea1
    10402e8dcdf2:	4d 8b d9                                        	mov    r11,r9
    10402e8dcdf5:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    10402e8dcdfa:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    10402e8dce01:	c4 c1 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+rcx*1]
    10402e8dce07:	8d 8c 97 80 02 00 00                            	lea    ecx,[rdi+rdx*4+0x280]
    10402e8dce0e:	c4 c1 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+rcx*1]
    10402e8dce14:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8dce1a:	44 8b ca                                        	mov    r9d,edx
    10402e8dce1d:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8dce21:	44 03 c9                                        	add    r9d,ecx
    10402e8dce24:	8b d6                                           	mov    edx,esi
    10402e8dce26:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dce2a:	8b 85 40 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1c0]
    10402e8dce30:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    10402e8dce36:	e8 fd 93 eb ff                                  	call   0x10402e796238
    10402e8dce3b:	e9 61 00 00 00                                  	jmp    0x10402e8dcea1
    10402e8dce40:	4d 8b d9                                        	mov    r11,r9
    10402e8dce43:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    10402e8dce48:	47 8b 4c 18 18                                  	mov    r9d,DWORD PTR [r8+r11*1+0x18]
    10402e8dce4d:	44 8d a4 97 90 02 00 00                         	lea    r12d,[rdi+rdx*4+0x290]
    10402e8dce55:	c4 81 7a 10 0c 20                               	vmovss xmm1,DWORD PTR [r8+r12*1]
    10402e8dce5b:	44 8d a4 97 80 02 00 00                         	lea    r12d,[rdi+rdx*4+0x280]
    10402e8dce63:	c4 81 7a 10 14 20                               	vmovss xmm2,DWORD PTR [r8+r12*1]
    10402e8dce69:	44 8d a4 97 70 02 00 00                         	lea    r12d,[rdi+rdx*4+0x270]
    10402e8dce71:	c4 81 7a 10 1c 20                               	vmovss xmm3,DWORD PTR [r8+r12*1]
    10402e8dce77:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    10402e8dce7e:	44 8b fa                                        	mov    r15d,edx
    10402e8dce81:	41 c1 e7 04                                     	shl    r15d,0x4
    10402e8dce85:	45 03 e7                                        	add    r12d,r15d
    10402e8dce88:	41 54                                           	push   r12
    10402e8dce8a:	8b d6                                           	mov    edx,esi
    10402e8dce8c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dce90:	8b 85 40 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1c0]
    10402e8dce96:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    10402e8dce9c:	e8 87 93 eb ff                                  	call   0x10402e796228
    10402e8dcea1:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    10402e8dcea7:	83 c2 01                                        	add    edx,0x1
    10402e8dceaa:	83 fa 04                                        	cmp    edx,0x4
    10402e8dcead:	0f 85 8d fe ff ff                               	jne    0x10402e8dcd40
    10402e8dceb3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8dceb6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8dceba:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    10402e8dcec4:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    10402e8dcece:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    10402e8dced2:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    10402e8dcedc:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    10402e8dcee6:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    10402e8dceeb:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    10402e8dceef:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    10402e8dcef9:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    10402e8dcefd:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    10402e8dcf07:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    10402e8dcf0b:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    10402e8dcf10:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    10402e8dcf14:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    10402e8dcf1e:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    10402e8dcf22:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8dcf2c:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    10402e8dcf33:	e9 8d 00 00 00                                  	jmp    0x10402e8dcfc5
    10402e8dcf38:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    10402e8dcf3e:	8b d6                                           	mov    edx,esi
    10402e8dcf40:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dcf44:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    10402e8dcf4a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8dcf4e:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8dcf52:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    10402e8dcf57:	e8 cc 95 eb ff                                  	call   0x10402e796528
    10402e8dcf5c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8dcf5f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8dcf63:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    10402e8dcf6a:	e9 56 00 00 00                                  	jmp    0x10402e8dcfc5
    10402e8dcf6f:	4d 8d 60 3c                                     	lea    r12,[r8+0x3c]
    10402e8dcf73:	49 8b c9                                        	mov    rcx,r9
    10402e8dcf76:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    10402e8dcf7c:	c4 41 7a 7f 8c 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm9
    10402e8dcf86:	4d 8d 60 40                                     	lea    r12,[r8+0x40]
    10402e8dcf8a:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    10402e8dcf90:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    10402e8dcf9a:	4d 8d 60 44                                     	lea    r12,[r8+0x44]
    10402e8dcf9e:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    10402e8dcfa4:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    10402e8dcfae:	4d 8d 60 48                                     	lea    r12,[r8+0x48]
    10402e8dcfb2:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    10402e8dcfb8:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    10402e8dcfc2:	4c 8b d9                                        	mov    r11,rcx
    10402e8dcfc5:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    10402e8dcfcf:	47 8b a4 18 34 01 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0x134]
    10402e8dcfd7:	43 83 bc 18 34 01 00 00 02                      	cmp    DWORD PTR [r8+r11*1+0x134],0x2
    10402e8dcfe0:	0f 84 64 00 00 00                               	je     0x10402e8dd04a
    10402e8dcfe6:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    10402e8dcff0:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8dcff5:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    10402e8dcff9:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    10402e8dd003:	c5 f8 10 bd 60 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xa0]
    10402e8dd00b:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    10402e8dd00f:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    10402e8dd019:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8dd021:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    10402e8dd025:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8dd02d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8dd031:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8dd035:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8dd03d:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8dd045:	e9 32 00 00 00                                  	jmp    0x10402e8dd07c
    10402e8dd04a:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    10402e8dd054:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    10402e8dd05e:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    10402e8dd068:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8dd06c:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8dd074:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8dd07c:	c4 41 49 6a d0                                  	vpunpckhdq xmm10,xmm6,xmm8
    10402e8dd081:	c5 79 6a df                                     	vpunpckhdq xmm11,xmm0,xmm7
    10402e8dd085:	c4 41 21 6d e2                                  	vpunpckhqdq xmm12,xmm11,xmm10
    10402e8dd08a:	c4 41 7a 7f a4 38 60 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x160],xmm12
    10402e8dd094:	c4 41 21 6c d2                                  	vpunpcklqdq xmm10,xmm11,xmm10
    10402e8dd099:	c4 41 7a 7f 94 38 50 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x150],xmm10
    10402e8dd0a3:	c4 c1 49 62 f0                                  	vpunpckldq xmm6,xmm6,xmm8
    10402e8dd0a8:	c5 f9 62 c7                                     	vpunpckldq xmm0,xmm0,xmm7
    10402e8dd0ac:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    10402e8dd0b0:	c4 c1 7a 7f bc 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm7
    10402e8dd0ba:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    10402e8dd0be:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    10402e8dd0c8:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    10402e8dd0cf:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8dd0d3:	48 8b 85 60 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a0]
    10402e8dd0da:	4c 8b bd 58 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a8]
    10402e8dd0e1:	48 8b 95 50 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2b0]
    10402e8dd0e8:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    10402e8dd0f0:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    10402e8dd0f3:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    10402e8dd0f8:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8dd100:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8dd106:	c5 f8 10 85 00 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x300]
    10402e8dd10e:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    10402e8dd116:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8dd11e:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    10402e8dd126:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8dd12e:	45 8b e3                                        	mov    r12d,r11d
    10402e8dd131:	45 33 db                                        	xor    r11d,r11d
    10402e8dd134:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8dd13a:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    10402e8dd13e:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    10402e8dd145:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8dd14a:	e9 41 00 00 00                                  	jmp    0x10402e8dd190
    10402e8dd14f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dd158:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dd161:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dd16a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dd173:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8dd17c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    10402e8dd180:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8dd186:	48 8b cb                                        	mov    rcx,rbx
    10402e8dd189:	44 8b a5 b0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x250]
    10402e8dd190:	4c 89 9d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r11
    10402e8dd197:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8dd19c:	0f 85 ab 35 00 00                               	jne    0x10402e8e074d
    10402e8dd1a2:	48 8b d9                                        	mov    rbx,rcx
    10402e8dd1a5:	41 8b cb                                        	mov    ecx,r11d
    10402e8dd1a8:	d3 ee                                           	shr    esi,cl
    10402e8dd1aa:	40 f6 c6 01                                     	test   sil,0x1
    10402e8dd1ae:	0f 84 6e 12 00 00                               	je     0x10402e8de422
    10402e8dd1b4:	41 8b cb                                        	mov    ecx,r11d
    10402e8dd1b7:	c1 e1 04                                        	shl    ecx,0x4
    10402e8dd1ba:	42 8d 34 21                                     	lea    esi,[rcx+r12*1]
    10402e8dd1be:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    10402e8dd1c5:	44 03 e1                                        	add    r12d,ecx
    10402e8dd1c8:	42 8d 4c 9f 3c                                  	lea    ecx,[rdi+r11*4+0x3c]
    10402e8dd1cd:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8dd1d1:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    10402e8dd1d6:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8dd1da:	43 8d 04 99                                     	lea    eax,[r9+r11*4]
    10402e8dd1de:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dd1e2:	83 bd c8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x238],0x0
    10402e8dd1e9:	0f 85 ec 11 00 00                               	jne    0x10402e8de3db
    10402e8dd1ef:	45 8b 5c 18 74                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x74]
    10402e8dd1f4:	41 83 7c 18 74 00                               	cmp    DWORD PTR [r8+rbx*1+0x74],0x0
    10402e8dd1fa:	0f 85 86 11 00 00                               	jne    0x10402e8de386
    10402e8dd200:	c4 01 7a 6f 1c 20                               	vmovdqu xmm11,XMMWORD PTR [r8+r12*1]
    10402e8dd206:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    10402e8dd20b:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    10402e8dd210:	c4 41 30 c2 e3 01                               	vcmpltps xmm12,xmm9,xmm11
    10402e8dd216:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    10402e8dd21b:	c4 41 29 db dc                                  	vpand  xmm11,xmm10,xmm12
    10402e8dd220:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8dd225:	4c 8b 15 a4 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea4]        # 0x10402e8d90d0
    10402e8dd22c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8dd231:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8dd236:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    10402e8dd23b:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x10402e8d90e7
    10402e8dd242:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8dd247:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8dd24c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    10402e8dd251:	4c 8b 15 a6 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea6]        # 0x10402e8d90fe
    10402e8dd258:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    10402e8dd25e:	c4 41 20 54 e7                                  	vandps xmm12,xmm11,xmm15
    10402e8dd263:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    10402e8dd269:	c4 41 7a 5b e4                                  	vcvttps2dq xmm12,xmm12
    10402e8dd26e:	c4 41 19 ef e7                                  	vpxor  xmm12,xmm12,xmm15
    10402e8dd273:	4c 8b 15 a7 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea7]        # 0x10402e8d9121
    10402e8dd27a:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8dd27f:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8dd284:	4c 8b 15 8a 90 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff908a]        # 0x10402e8d6315
    10402e8dd28b:	c4 41 20 54 1a                                  	vandps xmm11,xmm11,XMMWORD PTR [r10]
    10402e8dd290:	4c 8b 15 a9 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea9]        # 0x10402e8d9140
    10402e8dd297:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dd29c:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8dd2a1:	c4 41 20 c2 de 01                               	vcmpltps xmm11,xmm11,xmm14
    10402e8dd2a7:	c4 41 21 df fd                                  	vpandn xmm15,xmm11,xmm13
    10402e8dd2ac:	c4 41 19 db db                                  	vpand  xmm11,xmm12,xmm11
    10402e8dd2b1:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8dd2b6:	c4 42 21 2b db                                  	vpackusdw xmm11,xmm11,xmm11
    10402e8dd2bb:	c4 41 21 67 db                                  	vpackuswb xmm11,xmm11,xmm11
    10402e8dd2c0:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8dd2c5:	45 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+rbx*1]
    10402e8dd2c9:	44 0f af da                                     	imul   r11d,edx
    10402e8dd2cd:	44 03 d8                                        	add    r11d,eax
    10402e8dd2d0:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    10402e8dd2d8:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    10402e8dd2df:	41 8b 44 18 18                                  	mov    eax,DWORD PTR [r8+rbx*1+0x18]
    10402e8dd2e4:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8dd2e8:	44 03 d8                                        	add    r11d,eax
    10402e8dd2eb:	83 f9 0f                                        	cmp    ecx,0xf
    10402e8dd2ee:	0f 84 a0 00 00 00                               	je     0x10402e8dd394
    10402e8dd2f4:	8b c1                                           	mov    eax,ecx
    10402e8dd2f6:	83 e0 01                                        	and    eax,0x1
    10402e8dd2f9:	f7 d8                                           	neg    eax
    10402e8dd2fb:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8dd2ff:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8dd304:	8b c1                                           	mov    eax,ecx
    10402e8dd306:	c1 e0 1e                                        	shl    eax,0x1e
    10402e8dd309:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8dd30c:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    10402e8dd312:	8b c1                                           	mov    eax,ecx
    10402e8dd314:	c1 e0 1d                                        	shl    eax,0x1d
    10402e8dd317:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8dd31a:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    10402e8dd320:	8b c1                                           	mov    eax,ecx
    10402e8dd322:	c1 e0 1c                                        	shl    eax,0x1c
    10402e8dd325:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8dd328:	c4 63 19 22 e0 03                               	vpinsrd xmm12,xmm12,eax,0x3
    10402e8dd32e:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    10402e8dd333:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    10402e8dd339:	0f 84 3b 00 00 00                               	je     0x10402e8dd37a
    10402e8dd33f:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    10402e8dd344:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    10402e8dd34a:	0f 84 2a 00 00 00                               	je     0x10402e8dd37a
    10402e8dd350:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    10402e8dd355:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8dd359:	c4 41 7a 6f 2c 30                               	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1]
    10402e8dd35f:	c4 01 7a 6f 34 20                               	vmovdqu xmm14,XMMWORD PTR [r8+r12*1]
    10402e8dd365:	c4 41 19 df fe                                  	vpandn xmm15,xmm12,xmm14
    10402e8dd36a:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    10402e8dd36f:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    10402e8dd374:	c4 01 7a 7f 2c 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm13
    10402e8dd37a:	c4 01 7a 6f 2c 18                               	vmovdqu xmm13,XMMWORD PTR [r8+r11*1]
    10402e8dd380:	c4 41 19 df fd                                  	vpandn xmm15,xmm12,xmm13
    10402e8dd385:	c4 41 21 db dc                                  	vpand  xmm11,xmm11,xmm12
    10402e8dd38a:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8dd38f:	e9 37 00 00 00                                  	jmp    0x10402e8dd3cb
    10402e8dd394:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    10402e8dd399:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    10402e8dd39f:	0f 84 26 00 00 00                               	je     0x10402e8dd3cb
    10402e8dd3a5:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    10402e8dd3aa:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    10402e8dd3b0:	0f 84 15 00 00 00                               	je     0x10402e8dd3cb
    10402e8dd3b6:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    10402e8dd3bb:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8dd3bf:	c4 41 7a 6f 24 30                               	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1]
    10402e8dd3c5:	c4 01 7a 7f 24 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm12
    10402e8dd3cb:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    10402e8dd3d1:	45 8b 5c 18 68                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x68]
    10402e8dd3d6:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    10402e8dd3dc:	0f 84 40 10 00 00                               	je     0x10402e8de422
    10402e8dd3e2:	45 8b 5c 18 70                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x70]
    10402e8dd3e7:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    10402e8dd3ed:	0f 84 2f 10 00 00                               	je     0x10402e8de422
    10402e8dd3f3:	45 8b 5c 18 14                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x14]
    10402e8dd3f8:	41 83 7c 18 14 04                               	cmp    DWORD PTR [r8+rbx*1+0x14],0x4
    10402e8dd3fe:	0f 85 1e 10 00 00                               	jne    0x10402e8de422
    10402e8dd404:	45 8b 5c 18 18                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x18]
    10402e8dd409:	45 85 db                                        	test   r11d,r11d
    10402e8dd40c:	0f 84 10 10 00 00                               	je     0x10402e8de422
    10402e8dd412:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    10402e8dd416:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    10402e8dd41a:	43 83 3c 20 00                                  	cmp    DWORD PTR [r8+r12*1],0x0
    10402e8dd41f:	0f 84 fd 0f 00 00                               	je     0x10402e8de422
    10402e8dd425:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    10402e8dd429:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8dd42d:	41 83 eb 3c                                     	sub    r11d,0x3c
    10402e8dd431:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8dd435:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8dd43b:	c1 e8 02                                        	shr    eax,0x2
    10402e8dd43e:	41 0f af c3                                     	imul   eax,r11d
    10402e8dd442:	c1 e0 04                                        	shl    eax,0x4
    10402e8dd445:	46 8d 1c 20                                     	lea    r11d,[rax+r12*1]
    10402e8dd449:	44 8d 24 95 00 00 00 00                         	lea    r12d,[rdx*4+0x0]
    10402e8dd451:	41 8b c4                                        	mov    eax,r12d
    10402e8dd454:	83 e0 f0                                        	and    eax,0xfffffff0
    10402e8dd457:	44 03 d8                                        	add    r11d,eax
    10402e8dd45a:	41 8b 44 18 6c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x6c]
    10402e8dd45f:	2d 01 02 00 00                                  	sub    eax,0x201
    10402e8dd464:	48 89 95 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rdx
    10402e8dd46b:	33 d2                                           	xor    edx,edx
    10402e8dd46d:	85 c0                                           	test   eax,eax
    10402e8dd46f:	0f 94 c2                                        	sete   dl
    10402e8dd472:	83 f8 02                                        	cmp    eax,0x2
    10402e8dd475:	0f 94 c0                                        	sete   al
    10402e8dd478:	0f b6 c0                                        	movzx  eax,al
    10402e8dd47b:	0b c2                                           	or     eax,edx
    10402e8dd47d:	0f 85 0d 00 00 00                               	jne    0x10402e8dd490
    10402e8dd483:	4b c7 04 18 00 00 00 00                         	mov    QWORD PTR [r8+r11*1],0x0
    10402e8dd48b:	e9 92 0f 00 00                                  	jmp    0x10402e8de422
    10402e8dd490:	83 e1 0f                                        	and    ecx,0xf
    10402e8dd493:	41 83 e4 0c                                     	and    r12d,0xc
    10402e8dd497:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8dd49d:	83 e0 03                                        	and    eax,0x3
    10402e8dd4a0:	41 0b c4                                        	or     eax,r12d
    10402e8dd4a3:	44 8d 24 85 00 00 00 00                         	lea    r12d,[rax*4+0x0]
    10402e8dd4ab:	41 83 e4 3f                                     	and    r12d,0x3f
    10402e8dd4af:	4c 8b d1                                        	mov    r10,rcx
    10402e8dd4b2:	41 8b cc                                        	mov    ecx,r12d
    10402e8dd4b5:	4d 8b e2                                        	mov    r12,r10
    10402e8dd4b8:	49 d3 e4                                        	shl    r12,cl
    10402e8dd4bb:	4b 8b 04 18                                     	mov    rax,QWORD PTR [r8+r11*1]
    10402e8dd4bf:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8dd4c3:	0f 84 52 07 00 00                               	je     0x10402e8ddc1b
    10402e8dd4c9:	49 0b c4                                        	or     rax,r12
    10402e8dd4cc:	4b 89 04 18                                     	mov    QWORD PTR [r8+r11*1],rax
    10402e8dd4d0:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8dd4d4:	0f 85 48 0f 00 00                               	jne    0x10402e8de422
    10402e8dd4da:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    10402e8dd4df:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8dd4e5:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8dd4ea:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    10402e8dd4ee:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8dd4f4:	83 c9 03                                        	or     ecx,0x3
    10402e8dd4f7:	0f af ca                                        	imul   ecx,edx
    10402e8dd4fa:	03 c8                                           	add    ecx,eax
    10402e8dd4fc:	c1 e1 04                                        	shl    ecx,0x4
    10402e8dd4ff:	41 03 cc                                        	add    ecx,r12d
    10402e8dd502:	c4 41 7a 6f 5c 08 30                            	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0x30]
    10402e8dd509:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8dd50f:	c4 41 7a 6f 6c 08 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rcx*1+0x20]
    10402e8dd516:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8dd51c:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    10402e8dd521:	c4 41 7a 6f 74 08 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rcx*1+0x10]
    10402e8dd528:	c4 c1 08 c2 e6 00                               	vcmpeqps xmm4,xmm14,xmm14
    10402e8dd52e:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    10402e8dd532:	c4 c1 7a 6f 24 08                               	vmovdqu xmm4,XMMWORD PTR [r8+rcx*1]
    10402e8dd538:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8dd53d:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    10402e8dd541:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8dd547:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    10402e8dd54d:	8b f1                                           	mov    esi,ecx
    10402e8dd54f:	83 ce 02                                        	or     esi,0x2
    10402e8dd552:	0f af f2                                        	imul   esi,edx
    10402e8dd555:	03 f0                                           	add    esi,eax
    10402e8dd557:	c1 e6 04                                        	shl    esi,0x4
    10402e8dd55a:	41 03 f4                                        	add    esi,r12d
    10402e8dd55d:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8dd564:	c4 c1 18 c2 ec 00                               	vcmpeqps xmm5,xmm12,xmm12
    10402e8dd56a:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8dd56e:	c4 c1 7a 6f 6c 30 20                            	vmovdqu xmm5,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8dd575:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8dd57a:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8dd57e:	c4 c1 7a 6f 74 30 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8dd585:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8dd58a:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8dd58e:	c4 c1 7a 6f 3c 30                               	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1]
    10402e8dd594:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8dd599:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    10402e8dd59e:	8b f1                                           	mov    esi,ecx
    10402e8dd5a0:	83 ce 01                                        	or     esi,0x1
    10402e8dd5a3:	0f af f2                                        	imul   esi,edx
    10402e8dd5a6:	03 f0                                           	add    esi,eax
    10402e8dd5a8:	c1 e6 04                                        	shl    esi,0x4
    10402e8dd5ab:	41 03 f4                                        	add    esi,r12d
    10402e8dd5ae:	c4 41 7a 6f 44 30 30                            	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8dd5b5:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8dd5bb:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    10402e8dd5c0:	c4 41 7a 6f 4c 30 20                            	vmovdqu xmm9,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8dd5c7:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8dd5cd:	c4 c1 79 db c2                                  	vpand  xmm0,xmm0,xmm10
    10402e8dd5d2:	c4 41 7a 6f 54 30 10                            	vmovdqu xmm10,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8dd5d9:	c4 c1 28 c2 ca 00                               	vcmpeqps xmm1,xmm10,xmm10
    10402e8dd5df:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8dd5e3:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    10402e8dd5e9:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8dd5ee:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    10402e8dd5f2:	0f af d1                                        	imul   edx,ecx
    10402e8dd5f5:	03 c2                                           	add    eax,edx
    10402e8dd5f7:	c1 e0 04                                        	shl    eax,0x4
    10402e8dd5fa:	44 03 e0                                        	add    r12d,eax
    10402e8dd5fd:	c4 81 7a 6f 54 20 30                            	vmovdqu xmm2,XMMWORD PTR [r8+r12*1+0x30]
    10402e8dd604:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8dd609:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    10402e8dd60d:	c4 81 7a 6f 5c 20 20                            	vmovdqu xmm3,XMMWORD PTR [r8+r12*1+0x20]
    10402e8dd614:	c5 78 11 5d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm11
    10402e8dd619:	c5 60 c2 db 00                                  	vcmpeqps xmm11,xmm3,xmm3
    10402e8dd61e:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    10402e8dd623:	c4 01 7a 6f 5c 20 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x10]
    10402e8dd62a:	c5 78 11 ad 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm13
    10402e8dd632:	c4 41 20 c2 eb 00                               	vcmpeqps xmm13,xmm11,xmm11
    10402e8dd638:	c4 c1 79 db c5                                  	vpand  xmm0,xmm0,xmm13
    10402e8dd63d:	c4 01 7a 6f 2c 20                               	vmovdqu xmm13,XMMWORD PTR [r8+r12*1]
    10402e8dd643:	c5 78 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm14
    10402e8dd64b:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8dd651:	c4 c1 79 db c6                                  	vpand  xmm0,xmm0,xmm14
    10402e8dd656:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8dd65b:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8dd660:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    10402e8dd664:	41 83 fc 0f                                     	cmp    r12d,0xf
    10402e8dd668:	0f 84 26 00 00 00                               	je     0x10402e8dd694
    10402e8dd66e:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    10402e8dd677:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8dd67f:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8dd687:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8dd68f:	e9 8e 0d 00 00                                  	jmp    0x10402e8de422
    10402e8dd694:	4c 8b 15 81 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe81]        # 0x10402e8d951c
    10402e8dd69b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dd6a0:	4c 8b 15 84 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe84]        # 0x10402e8d952b
    10402e8dd6a7:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dd6ad:	4c 8b 15 87 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe87]        # 0x10402e8d953b
    10402e8dd6b4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dd6b9:	4c 8b 15 8a be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8a]        # 0x10402e8d954a
    10402e8dd6c0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8dd6c6:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8dd6ce:	4c 8b 15 8d be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8d]        # 0x10402e8d9562
    10402e8dd6d5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dd6da:	4c 8b 15 90 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe90]        # 0x10402e8d9571
    10402e8dd6e1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dd6e7:	c5 78 11 b5 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm14
    10402e8dd6ef:	4c 8b 15 93 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe93]        # 0x10402e8d9589
    10402e8dd6f6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dd6fb:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x10402e8d9598
    10402e8dd702:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8dd708:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8dd710:	4c 8b 15 99 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe99]        # 0x10402e8d95b0
    10402e8dd717:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dd71c:	4c 8b 15 9c be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9c]        # 0x10402e8d95bf
    10402e8dd723:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dd729:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    10402e8dd731:	4c 8b 15 9f be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9f]        # 0x10402e8d95d7
    10402e8dd738:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dd73d:	4c 8b 15 a2 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea2]        # 0x10402e8d95e6
    10402e8dd744:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8dd74a:	c5 f8 11 a5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm4
    10402e8dd752:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x10402e8d95fe
    10402e8dd759:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8dd75e:	4c 8b 15 a8 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea8]        # 0x10402e8d960d
    10402e8dd765:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    10402e8dd76b:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8dd773:	4c 8b 15 ab be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeab]        # 0x10402e8d9625
    10402e8dd77a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dd77f:	4c 8b 15 ae be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeae]        # 0x10402e8d9634
    10402e8dd786:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dd78c:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    10402e8dd794:	4c 8b 15 b1 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb1]        # 0x10402e8d964c
    10402e8dd79b:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8dd7a0:	4c 8b 15 b4 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb4]        # 0x10402e8d965b
    10402e8dd7a7:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8dd7ad:	c5 78 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm14
    10402e8dd7b5:	4c 8b 15 b7 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb7]        # 0x10402e8d9673
    10402e8dd7bc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dd7c1:	4c 8b 15 ba be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeba]        # 0x10402e8d9682
    10402e8dd7c8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8dd7ce:	c5 f8 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm5
    10402e8dd7d6:	4c 8b 15 bd be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbebd]        # 0x10402e8d969a
    10402e8dd7dd:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8dd7e2:	4c 8b 15 c0 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec0]        # 0x10402e8d96a9
    10402e8dd7e9:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    10402e8dd7ef:	c5 f8 11 a5 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm4
    10402e8dd7f7:	4c 8b 15 c3 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec3]        # 0x10402e8d96c1
    10402e8dd7fe:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8dd803:	4c 8b 15 c6 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec6]        # 0x10402e8d96d0
    10402e8dd80a:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    10402e8dd810:	c5 f8 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm6
    10402e8dd818:	4c 8b 15 c9 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec9]        # 0x10402e8d96e8
    10402e8dd81f:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8dd824:	4c 8b 15 cc be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecc]        # 0x10402e8d96f7
    10402e8dd82b:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    10402e8dd831:	c5 f8 11 85 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm0
    10402e8dd839:	4c 8b 15 cf be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecf]        # 0x10402e8d970f
    10402e8dd840:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dd845:	4c 8b 15 d2 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbed2]        # 0x10402e8d971e
    10402e8dd84c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dd852:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    10402e8dd85a:	4c 8b 15 d5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbed5]        # 0x10402e8d9736
    10402e8dd861:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8dd866:	4c 8b 15 d8 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbed8]        # 0x10402e8d9745
    10402e8dd86d:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8dd873:	c5 78 11 a5 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm12
    10402e8dd87b:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8dd880:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    10402e8dd886:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    10402e8dd88c:	4c 8b 15 db be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbedb]        # 0x10402e8d976e
    10402e8dd893:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8dd899:	c5 78 11 85 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm8
    10402e8dd8a1:	4c 8b 15 de be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbede]        # 0x10402e8d9786
    10402e8dd8a8:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8dd8ad:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8dd8b2:	c5 78 11 b5 90 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x370],xmm14
    10402e8dd8ba:	c4 41 38 c2 f5 01                               	vcmpltps xmm14,xmm8,xmm13
    10402e8dd8c0:	c4 41 10 c2 c0 01                               	vcmpltps xmm8,xmm13,xmm8
    10402e8dd8c6:	c4 41 09 eb c0                                  	vpor   xmm8,xmm14,xmm8
    10402e8dd8cb:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8dd8d0:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    10402e8dd8d5:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8dd8da:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x10402e8d9786
    10402e8dd8e1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8dd8e6:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8dd8eb:	c4 41 39 df fe                                  	vpandn xmm15,xmm8,xmm14
    10402e8dd8f0:	c4 41 11 db c0                                  	vpand  xmm8,xmm13,xmm8
    10402e8dd8f5:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8dd8fa:	c4 41 38 c2 eb 01                               	vcmpltps xmm13,xmm8,xmm11
    10402e8dd900:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    10402e8dd905:	c4 c1 41 db fd                                  	vpand  xmm7,xmm7,xmm13
    10402e8dd90a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8dd90f:	c4 41 11 df f8                                  	vpandn xmm15,xmm13,xmm8
    10402e8dd914:	c4 41 21 db c5                                  	vpand  xmm8,xmm11,xmm13
    10402e8dd919:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8dd91e:	c5 38 c2 db 01                                  	vcmpltps xmm11,xmm8,xmm3
    10402e8dd923:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    10402e8dd927:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    10402e8dd92c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dd931:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    10402e8dd936:	c4 c1 61 db fb                                  	vpand  xmm7,xmm3,xmm11
    10402e8dd93b:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8dd940:	c5 40 c2 c2 01                                  	vcmpltps xmm8,xmm7,xmm2
    10402e8dd945:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    10402e8dd949:	c4 c1 49 db c0                                  	vpand  xmm0,xmm6,xmm8
    10402e8dd94e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dd953:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    10402e8dd957:	c4 c1 69 db f0                                  	vpand  xmm6,xmm2,xmm8
    10402e8dd95c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8dd961:	c5 c8 c2 f9 01                                  	vcmpltps xmm7,xmm6,xmm1
    10402e8dd966:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dd96a:	c5 d9 db c7                                     	vpand  xmm0,xmm4,xmm7
    10402e8dd96e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dd973:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8dd977:	c5 f1 db f7                                     	vpand  xmm6,xmm1,xmm7
    10402e8dd97b:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8dd980:	c4 c1 48 c2 fa 01                               	vcmpltps xmm7,xmm6,xmm10
    10402e8dd986:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dd98a:	c5 d1 db c7                                     	vpand  xmm0,xmm5,xmm7
    10402e8dd98e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dd993:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8dd997:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    10402e8dd99b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dd9a0:	c4 c1 50 c2 f1 01                               	vcmpltps xmm6,xmm5,xmm9
    10402e8dd9a6:	c5 f8 10 bd 90 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x370]
    10402e8dd9ae:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8dd9b2:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8dd9b6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dd9bb:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8dd9bf:	c5 b1 db ee                                     	vpand  xmm5,xmm9,xmm6
    10402e8dd9c3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dd9c8:	c5 f8 10 b5 20 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1e0]
    10402e8dd9d0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dd9d5:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    10402e8dd9dd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dd9e1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dd9e5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dd9ea:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dd9ee:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dd9f2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dd9f7:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8dd9ff:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dda04:	c5 78 10 85 50 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1b0]
    10402e8dda0c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dda10:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dda14:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dda19:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dda1d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dda21:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dda26:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8dda2e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dda33:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8dda3b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dda3f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dda43:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dda48:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dda4c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dda50:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dda55:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8dda5d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dda62:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8dda6a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dda6e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dda72:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dda77:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dda7b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dda7f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dda84:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8dda8c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dda91:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8dda99:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dda9d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ddaa1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ddaa6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ddaaa:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ddaae:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ddab3:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8ddabb:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ddac0:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8ddac8:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ddacc:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ddad0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ddad5:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ddad9:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ddadd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ddae2:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8ddaea:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ddaef:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8ddaf7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ddafb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ddaff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ddb04:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ddb08:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ddb0c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ddb11:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8ddb19:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ddb1e:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8ddb26:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ddb2a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ddb2e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ddb33:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ddb37:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ddb3b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ddb40:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8ddb45:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ddb4a:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8ddb52:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ddb56:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ddb5a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ddb5f:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    10402e8ddb69:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ddb6d:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8ddb71:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ddb76:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8ddb80:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8ddb84:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8ddb88:	45 33 e4                                        	xor    r12d,r12d
    10402e8ddb8b:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8ddb8f:	41 0f 97 c4                                     	seta   r12b
    10402e8ddb93:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    10402e8ddb99:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8ddba1:	0b d0                                           	or     edx,eax
    10402e8ddba3:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8ddba9:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8ddbae:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8ddbb2:	45 0f 47 e7                                     	cmova  r12d,r15d
    10402e8ddbb6:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8ddbbe:	0b d0                                           	or     edx,eax
    10402e8ddbc0:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8ddbc6:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8ddbcb:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8ddbd0:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8ddbd4:	44 0f 47 e2                                     	cmova  r12d,edx
    10402e8ddbd8:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e8ddbdc:	41 0b c4                                        	or     eax,r12d
    10402e8ddbdf:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8ddbe5:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    10402e8ddbec:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    10402e8ddbf2:	44 0b e0                                        	or     r12d,eax
    10402e8ddbf5:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8ddbf9:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    10402e8ddbfe:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8ddc06:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8ddc0e:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8ddc16:	e9 07 08 00 00                                  	jmp    0x10402e8de422
    10402e8ddc1b:	43 8b 44 18 0c                                  	mov    eax,DWORD PTR [r8+r11*1+0xc]
    10402e8ddc20:	8b d0                                           	mov    edx,eax
    10402e8ddc22:	83 e2 3f                                        	and    edx,0x3f
    10402e8ddc25:	8b ca                                           	mov    ecx,edx
    10402e8ddc27:	49 d3 ec                                        	shr    r12,cl
    10402e8ddc2a:	41 f6 c4 01                                     	test   r12b,0x1
    10402e8ddc2e:	0f 84 ee 07 00 00                               	je     0x10402e8de422
    10402e8ddc34:	83 e0 03                                        	and    eax,0x3
    10402e8ddc37:	44 8d 24 86                                     	lea    r12d,[rsi+rax*4]
    10402e8ddc3b:	c4 81 7a 10 04 20                               	vmovss xmm0,DWORD PTR [r8+r12*1]
    10402e8ddc41:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    10402e8ddc48:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    10402e8ddc4c:	0f 86 d0 07 00 00                               	jbe    0x10402e8de422
    10402e8ddc52:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    10402e8ddc57:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8ddc5d:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8ddc62:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    10402e8ddc66:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8ddc6c:	83 c9 03                                        	or     ecx,0x3
    10402e8ddc6f:	0f af ca                                        	imul   ecx,edx
    10402e8ddc72:	03 c8                                           	add    ecx,eax
    10402e8ddc74:	c1 e1 04                                        	shl    ecx,0x4
    10402e8ddc77:	41 03 cc                                        	add    ecx,r12d
    10402e8ddc7a:	c4 c1 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x30]
    10402e8ddc81:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    10402e8ddc86:	c4 c1 7a 6f 7c 08 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1+0x20]
    10402e8ddc8d:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8ddc92:	c4 c1 49 db f0                                  	vpand  xmm6,xmm6,xmm8
    10402e8ddc97:	c4 41 7a 6f 44 08 10                            	vmovdqu xmm8,XMMWORD PTR [r8+rcx*1+0x10]
    10402e8ddc9e:	c4 41 38 c2 d8 00                               	vcmpeqps xmm11,xmm8,xmm8
    10402e8ddca4:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    10402e8ddca9:	c4 41 7a 6f 1c 08                               	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1]
    10402e8ddcaf:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8ddcb5:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    10402e8ddcba:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8ddcc0:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    10402e8ddcc6:	8b f1                                           	mov    esi,ecx
    10402e8ddcc8:	83 ce 02                                        	or     esi,0x2
    10402e8ddccb:	0f af f2                                        	imul   esi,edx
    10402e8ddcce:	03 f0                                           	add    esi,eax
    10402e8ddcd0:	c1 e6 04                                        	shl    esi,0x4
    10402e8ddcd3:	41 03 f4                                        	add    esi,r12d
    10402e8ddcd6:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8ddcdd:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8ddce3:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    10402e8ddce8:	c4 41 7a 6f 6c 30 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8ddcef:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8ddcf5:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    10402e8ddcfa:	c4 41 7a 6f 74 30 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8ddd01:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8ddd07:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    10402e8ddd0b:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    10402e8ddd11:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8ddd16:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    10402e8ddd1a:	8b f1                                           	mov    esi,ecx
    10402e8ddd1c:	83 ce 01                                        	or     esi,0x1
    10402e8ddd1f:	0f af f2                                        	imul   esi,edx
    10402e8ddd22:	03 f0                                           	add    esi,eax
    10402e8ddd24:	c1 e6 04                                        	shl    esi,0x4
    10402e8ddd27:	41 03 f4                                        	add    esi,r12d
    10402e8ddd2a:	c4 c1 7a 6f 54 30 30                            	vmovdqu xmm2,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8ddd31:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8ddd36:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    10402e8ddd3a:	c4 c1 7a 6f 5c 30 20                            	vmovdqu xmm3,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8ddd41:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8ddd46:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    10402e8ddd4a:	c4 c1 7a 6f 64 30 10                            	vmovdqu xmm4,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8ddd51:	c5 d8 c2 ec 00                                  	vcmpeqps xmm5,xmm4,xmm4
    10402e8ddd56:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    10402e8ddd5a:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    10402e8ddd60:	c5 48 c2 ce 00                                  	vcmpeqps xmm9,xmm6,xmm6
    10402e8ddd65:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8ddd6a:	0f af d1                                        	imul   edx,ecx
    10402e8ddd6d:	03 c2                                           	add    eax,edx
    10402e8ddd6f:	c1 e0 04                                        	shl    eax,0x4
    10402e8ddd72:	44 03 e0                                        	add    r12d,eax
    10402e8ddd75:	c4 01 7a 6f 4c 20 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x30]
    10402e8ddd7c:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8ddd82:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8ddd87:	c4 01 7a 6f 54 20 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r12*1+0x20]
    10402e8ddd8e:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8ddd93:	c4 c1 28 c2 c2 00                               	vcmpeqps xmm0,xmm10,xmm10
    10402e8ddd99:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8ddd9d:	c4 81 7a 6f 6c 20 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r12*1+0x10]
    10402e8ddda4:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    10402e8dddac:	c5 d0 c2 fd 00                                  	vcmpeqps xmm7,xmm5,xmm5
    10402e8dddb1:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8dddb5:	c4 81 7a 6f 3c 20                               	vmovdqu xmm7,XMMWORD PTR [r8+r12*1]
    10402e8dddbb:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    10402e8dddc3:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8dddc8:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    10402e8dddcd:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8dddd2:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8dddd7:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    10402e8ddddb:	41 83 fc 0f                                     	cmp    r12d,0xf
    10402e8ddddf:	0f 84 26 00 00 00                               	je     0x10402e8dde0b
    10402e8ddde5:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    10402e8dddee:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8dddf6:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8dddfe:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8dde06:	e9 17 06 00 00                                  	jmp    0x10402e8de422
    10402e8dde0b:	4c 8b 15 0a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70a]        # 0x10402e8d951c
    10402e8dde12:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dde17:	4c 8b 15 0d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70d]        # 0x10402e8d952b
    10402e8dde1e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dde24:	4c 8b 15 10 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb710]        # 0x10402e8d953b
    10402e8dde2b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8dde30:	4c 8b 15 13 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb713]        # 0x10402e8d954a
    10402e8dde37:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8dde3d:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8dde45:	4c 8b 15 16 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb716]        # 0x10402e8d9562
    10402e8dde4c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dde51:	4c 8b 15 19 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb719]        # 0x10402e8d9571
    10402e8dde58:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dde5e:	c5 78 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm8
    10402e8dde66:	4c 8b 15 1c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71c]        # 0x10402e8d9589
    10402e8dde6d:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8dde72:	4c 8b 15 1f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71f]        # 0x10402e8d9598
    10402e8dde79:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8dde7f:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8dde87:	4c 8b 15 22 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb722]        # 0x10402e8d95b0
    10402e8dde8e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dde93:	4c 8b 15 25 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb725]        # 0x10402e8d95bf
    10402e8dde9a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ddea0:	c5 78 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm8
    10402e8ddea8:	4c 8b 15 28 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb728]        # 0x10402e8d95d7
    10402e8ddeaf:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8ddeb4:	4c 8b 15 2b b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72b]        # 0x10402e8d95e6
    10402e8ddebb:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8ddec1:	c5 78 11 9d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm11
    10402e8ddec9:	4c 8b 15 2e b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72e]        # 0x10402e8d95fe
    10402e8dded0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8dded5:	4c 8b 15 31 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb731]        # 0x10402e8d960d
    10402e8ddedc:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8ddee2:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8ddeea:	4c 8b 15 34 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb734]        # 0x10402e8d9625
    10402e8ddef1:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ddef6:	4c 8b 15 37 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb737]        # 0x10402e8d9634
    10402e8ddefd:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ddf03:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    10402e8ddf0b:	4c 8b 15 3a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73a]        # 0x10402e8d964c
    10402e8ddf12:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8ddf17:	4c 8b 15 3d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73d]        # 0x10402e8d965b
    10402e8ddf1e:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8ddf24:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    10402e8ddf2c:	4c 8b 15 40 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb740]        # 0x10402e8d9673
    10402e8ddf33:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8ddf38:	4c 8b 15 43 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb743]        # 0x10402e8d9682
    10402e8ddf3f:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8ddf45:	c5 78 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm13
    10402e8ddf4d:	4c 8b 15 46 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb746]        # 0x10402e8d969a
    10402e8ddf54:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8ddf59:	4c 8b 15 49 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb749]        # 0x10402e8d96a9
    10402e8ddf60:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    10402e8ddf66:	c5 78 11 9d a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm11
    10402e8ddf6e:	4c 8b 15 4c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74c]        # 0x10402e8d96c1
    10402e8ddf75:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8ddf7a:	4c 8b 15 4f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74f]        # 0x10402e8d96d0
    10402e8ddf81:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8ddf87:	c5 78 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm14
    10402e8ddf8f:	4c 8b 15 52 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb752]        # 0x10402e8d96e8
    10402e8ddf96:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8ddf9b:	4c 8b 15 55 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb755]        # 0x10402e8d96f7
    10402e8ddfa2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8ddfa8:	c5 f8 11 85 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm0
    10402e8ddfb0:	4c 8b 15 58 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb758]        # 0x10402e8d970f
    10402e8ddfb7:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ddfbc:	4c 8b 15 5b b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb75b]        # 0x10402e8d971e
    10402e8ddfc3:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ddfc9:	c5 f8 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm1
    10402e8ddfd1:	4c 8b 15 5e b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb75e]        # 0x10402e8d9736
    10402e8ddfd8:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8ddfdd:	4c 8b 15 61 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb761]        # 0x10402e8d9745
    10402e8ddfe4:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    10402e8ddfea:	c5 78 11 a5 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm12
    10402e8ddff2:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8ddff7:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    10402e8ddffd:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    10402e8de003:	4c 8b 15 64 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb764]        # 0x10402e8d976e
    10402e8de00a:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8de010:	c5 f8 11 95 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm2
    10402e8de018:	4c 8b 15 67 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb767]        # 0x10402e8d9786
    10402e8de01f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8de024:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8de028:	c5 78 11 85 90 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x370],xmm8
    10402e8de030:	c5 68 c2 c7 01                                  	vcmpltps xmm8,xmm2,xmm7
    10402e8de035:	c5 c0 c2 d2 01                                  	vcmpltps xmm2,xmm7,xmm2
    10402e8de03a:	c5 39 eb c2                                     	vpor   xmm8,xmm8,xmm2
    10402e8de03e:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8de043:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    10402e8de048:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8de04d:	4c 8b 15 32 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb732]        # 0x10402e8d9786
    10402e8de054:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8de059:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8de05d:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    10402e8de061:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    10402e8de066:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8de06b:	c5 40 c2 c5 01                                  	vcmpltps xmm8,xmm7,xmm5
    10402e8de070:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8de075:	c4 41 71 db e0                                  	vpand  xmm12,xmm1,xmm8
    10402e8de07a:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8de07f:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    10402e8de083:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8de088:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de08d:	c4 c1 50 c2 fa 01                               	vcmpltps xmm7,xmm5,xmm10
    10402e8de093:	c4 41 41 df fc                                  	vpandn xmm15,xmm7,xmm12
    10402e8de098:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8de09c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de0a1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de0a5:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    10402e8de0a9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de0ae:	c4 c1 50 c2 f9 01                               	vcmpltps xmm7,xmm5,xmm9
    10402e8de0b4:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de0b8:	c5 89 db c7                                     	vpand  xmm0,xmm14,xmm7
    10402e8de0bc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de0c1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de0c5:	c5 b1 db ef                                     	vpand  xmm5,xmm9,xmm7
    10402e8de0c9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de0ce:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de0d3:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de0d7:	c5 a1 db c7                                     	vpand  xmm0,xmm11,xmm7
    10402e8de0db:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de0e0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de0e4:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de0e8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de0ed:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8de0f2:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8de0f6:	c5 91 db c6                                     	vpand  xmm0,xmm13,xmm6
    10402e8de0fa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de0ff:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8de103:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8de107:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de10c:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8de111:	c5 f8 10 bd 90 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x370]
    10402e8de119:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8de11d:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8de121:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de126:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8de12a:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8de12e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de133:	c5 f8 10 b5 20 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1e0]
    10402e8de13b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de140:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    10402e8de148:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de14c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de150:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de155:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de159:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de15d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de162:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8de16a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de16f:	c5 78 10 85 50 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1b0]
    10402e8de177:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de17b:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de17f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de184:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de188:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de18c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de191:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8de199:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de19e:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8de1a6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de1aa:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de1ae:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de1b3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de1b7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de1bb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de1c0:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8de1c8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de1cd:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8de1d5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de1d9:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de1dd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de1e2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de1e6:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de1ea:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de1ef:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8de1f7:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de1fc:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8de204:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de208:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de20c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de211:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de215:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de219:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de21e:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8de226:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de22b:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8de233:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de237:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de23b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de240:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de244:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de248:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de24d:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8de255:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de25a:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8de262:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de266:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de26a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de26f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de273:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de277:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de27c:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8de284:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de289:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8de291:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de295:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de299:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de29e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de2a2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8de2a6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8de2ab:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8de2b0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8de2b5:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8de2bd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8de2c1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8de2c5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de2ca:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    10402e8de2d4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8de2d8:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8de2dc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8de2e1:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8de2eb:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8de2ef:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8de2f3:	45 33 e4                                        	xor    r12d,r12d
    10402e8de2f6:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8de2fa:	41 0f 97 c4                                     	seta   r12b
    10402e8de2fe:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    10402e8de304:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8de30c:	0b d0                                           	or     edx,eax
    10402e8de30e:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8de314:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8de319:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8de31d:	45 0f 47 e7                                     	cmova  r12d,r15d
    10402e8de321:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8de329:	0b d0                                           	or     edx,eax
    10402e8de32b:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8de331:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8de336:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8de33b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8de33f:	44 0f 47 e2                                     	cmova  r12d,edx
    10402e8de343:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e8de347:	41 0b c4                                        	or     eax,r12d
    10402e8de34a:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8de350:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    10402e8de357:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    10402e8de35d:	44 0b e0                                        	or     r12d,eax
    10402e8de360:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8de364:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    10402e8de369:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8de371:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8de379:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8de381:	e9 9c 00 00 00                                  	jmp    0x10402e8de422
    10402e8de386:	41 54                                           	push   r12
    10402e8de388:	4c 8b db                                        	mov    r11,rbx
    10402e8de38b:	41 bc 03 00 00 00                               	mov    r12d,0x3
    10402e8de391:	44 8b ce                                        	mov    r9d,esi
    10402e8de394:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8de398:	8b d9                                           	mov    ebx,ecx
    10402e8de39a:	8b ca                                           	mov    ecx,edx
    10402e8de39c:	8b d0                                           	mov    edx,eax
    10402e8de39e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8de3a1:	e8 ca 7e eb ff                                  	call   0x10402e796270
    10402e8de3a6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8de3a9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8de3ad:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8de3b3:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    10402e8de3b7:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    10402e8de3be:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8de3c6:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8de3ce:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8de3d6:	e9 47 00 00 00                                  	jmp    0x10402e8de422
    10402e8de3db:	41 54                                           	push   r12
    10402e8de3dd:	44 8b ce                                        	mov    r9d,esi
    10402e8de3e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8de3e4:	8b d9                                           	mov    ebx,ecx
    10402e8de3e6:	8b ca                                           	mov    ecx,edx
    10402e8de3e8:	8b d0                                           	mov    edx,eax
    10402e8de3ea:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8de3ed:	e8 66 7e eb ff                                  	call   0x10402e796258
    10402e8de3f2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8de3f5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8de3f9:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8de3ff:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    10402e8de403:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    10402e8de40a:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8de412:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8de41a:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8de422:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    10402e8de429:	41 83 c3 01                                     	add    r11d,0x1
    10402e8de42d:	41 83 fb 04                                     	cmp    r11d,0x4
    10402e8de431:	0f 85 49 ed ff ff                               	jne    0x10402e8dd180
    10402e8de437:	41 c7 44 38 18 00 00 00 00                      	mov    DWORD PTR [r8+rdi*1+0x18],0x0
    10402e8de440:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    10402e8de448:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    10402e8de453:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8de457:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    10402e8de45f:	44 8b 9d 50 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3b0]
    10402e8de466:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    10402e8de46d:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    10402e8de474:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    10402e8de47c:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    10402e8de484:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8de48c:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    10402e8de494:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8de49c:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8de4a4:	4c 8b a5 28 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x3d8]
    10402e8de4ab:	4c 8b bd 20 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x3e0]
    10402e8de4b2:	4d 03 fc                                        	add    r15,r12
    10402e8de4b5:	48 8b 85 38 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x3c8]
    10402e8de4bc:	48 03 d0                                        	add    rdx,rax
    10402e8de4bf:	48 8b cb                                        	mov    rcx,rbx
    10402e8de4c2:	48 8b 9d 48 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b8]
    10402e8de4c9:	48 03 cb                                        	add    rcx,rbx
    10402e8de4cc:	45 8b cb                                        	mov    r9d,r11d
    10402e8de4cf:	45 8d 59 01                                     	lea    r11d,[r9+0x1]
    10402e8de4d3:	8b b5 58 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x3a8]
    10402e8de4d9:	41 3b f3                                        	cmp    esi,r11d
    10402e8de4dc:	0f 85 de 9c ff ff                               	jne    0x10402e8d81c0
    10402e8de4e2:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8de4e9:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    10402e8de4ef:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    10402e8de4f2:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    10402e8de4f9:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    10402e8de4fe:	c5 fb 10 ad f0 fb ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x410]
    10402e8de506:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    10402e8de50b:	c5 fb 10 b5 78 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x188]
    10402e8de513:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8de51b:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    10402e8de51e:	44 8b bd a0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x460]
    10402e8de525:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    10402e8de52b:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    10402e8de530:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    10402e8de536:	c5 79 28 c4                                     	vmovapd xmm8,xmm4
    10402e8de53a:	c5 ba 5c 85 78 fc ff ff                         	vsubss xmm0,xmm8,DWORD PTR [rbp-0x388]
    10402e8de542:	83 bd 80 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x380],0x0
    10402e8de549:	0f 85 0a 00 00 00                               	jne    0x10402e8de559
    10402e8de54f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8de554:	e9 10 00 00 00                                  	jmp    0x10402e8de569
    10402e8de559:	c5 ca 5c b5 88 fc ff ff                         	vsubss xmm6,xmm6,DWORD PTR [rbp-0x378]
    10402e8de561:	c5 d2 5c ad b0 fc ff ff                         	vsubss xmm5,xmm5,DWORD PTR [rbp-0x350]
    10402e8de569:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    10402e8de56e:	c4 41 11 d4 e8                                  	vpaddq xmm13,xmm13,xmm8
    10402e8de573:	4c 8b 45 c0                                     	mov    r8,QWORD PTR [rbp-0x40]
    10402e8de577:	4c 8b da                                        	mov    r11,rdx
    10402e8de57a:	4b 8d 14 18                                     	lea    rdx,[r8+r11*1]
    10402e8de57e:	83 c7 01                                        	add    edi,0x1
    10402e8de581:	44 8b 5d 28                                     	mov    r11d,DWORD PTR [rbp+0x28]
    10402e8de585:	44 3b df                                        	cmp    r11d,edi
    10402e8de588:	0f 85 72 95 ff ff                               	jne    0x10402e8d7b00
    10402e8de58e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8de591:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8de595:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    10402e8de59a:	41 83 7c 38 18 00                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x0
    10402e8de5a0:	0f 8e a9 1d 00 00                               	jle    0x10402e8e034f
    10402e8de5a6:	45 33 db                                        	xor    r11d,r11d
    10402e8de5a9:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    10402e8de5ad:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8de5b1:	e9 14 00 00 00                                  	jmp    0x10402e8de5ca
    10402e8de5b6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8de5bf:	90                                              	nop
    10402e8de5c0:	49 8b d3                                        	mov    rdx,r11
    10402e8de5c3:	45 8b dc                                        	mov    r11d,r12d
    10402e8de5c6:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    10402e8de5ca:	48 8b 85 60 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a0]
    10402e8de5d1:	48 8b 9d 58 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a8]
    10402e8de5d8:	4c 8b bd 50 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2b0]
    10402e8de5df:	c5 fb 10 ad e8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x318]
    10402e8de5e7:	8b b5 d8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x328]
    10402e8de5ed:	44 8b a5 d0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x330]
    10402e8de5f4:	4c 89 5d d0                                     	mov    QWORD PTR [rbp-0x30],r11
    10402e8de5f8:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8de5fd:	0f 85 98 21 00 00                               	jne    0x10402e8e079b
    10402e8de603:	46 8d 4c 9f 2c                                  	lea    r9d,[rdi+r11*4+0x2c]
    10402e8de608:	43 8d 0c 9c                                     	lea    ecx,[r12+r11*4]
    10402e8de60c:	46 8d 64 df 70                                  	lea    r12d,[rdi+r11*8+0x70]
    10402e8de611:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    10402e8de615:	4c 89 a5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r12
    10402e8de61c:	46 8d 64 df 50                                  	lea    r12d,[rdi+r11*8+0x50]
    10402e8de621:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    10402e8de625:	c4 81 7a 10 74 38 1c                            	vmovss xmm6,DWORD PTR [r8+r15*1+0x1c]
    10402e8de62c:	c4 c1 7a 10 7c 00 1c                            	vmovss xmm7,DWORD PTR [r8+rax*1+0x1c]
    10402e8de633:	c4 41 7a 10 44 18 1c                            	vmovss xmm8,DWORD PTR [r8+rbx*1+0x1c]
    10402e8de63a:	45 8b 9c 10 c8 3c 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x3cc8]
    10402e8de642:	41 83 bc 10 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x3cc8],0x0
    10402e8de64b:	0f 85 0e 00 00 00                               	jne    0x10402e8de65f
    10402e8de651:	8b d1                                           	mov    edx,ecx
    10402e8de653:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    10402e8de65a:	e9 53 00 00 00                                  	jmp    0x10402e8de6b2
    10402e8de65f:	45 8b 1c 08                                     	mov    r11d,DWORD PTR [r8+rcx*1]
    10402e8de663:	41 8b d3                                        	mov    edx,r11d
    10402e8de666:	c1 ea 03                                        	shr    edx,0x3
    10402e8de669:	83 e2 03                                        	and    edx,0x3
    10402e8de66c:	43 8b 3c 08                                     	mov    edi,DWORD PTR [r8+r9*1]
    10402e8de670:	c1 e7 02                                        	shl    edi,0x2
    10402e8de673:	83 e7 7c                                        	and    edi,0x7c
    10402e8de676:	0b fa                                           	or     edi,edx
    10402e8de678:	03 fe                                           	add    edi,esi
    10402e8de67a:	41 0f b6 3c 38                                  	movzx  edi,BYTE PTR [r8+rdi*1]
    10402e8de67f:	41 83 e3 07                                     	and    r11d,0x7
    10402e8de683:	8b d1                                           	mov    edx,ecx
    10402e8de685:	41 8b cb                                        	mov    ecx,r11d
    10402e8de688:	d3 e7                                           	shl    edi,cl
    10402e8de68a:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    10402e8de691:	40 f6 c7 80                                     	test   dil,0x80
    10402e8de695:	0f 85 17 00 00 00                               	jne    0x10402e8de6b2
    10402e8de69b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8de69e:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8de6a2:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8de6a6:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    10402e8de6ad:	e9 89 1c 00 00                                  	jmp    0x10402e8e033b
    10402e8de6b2:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    10402e8de6b7:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    10402e8de6bc:	c4 41 32 59 c0                                  	vmulss xmm8,xmm9,xmm8
    10402e8de6c1:	c4 61 82 2a 95 78 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x188]
    10402e8de6ca:	c4 41 52 59 d2                                  	vmulss xmm10,xmm5,xmm10
    10402e8de6cf:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    10402e8de6d3:	c5 3a 58 df                                     	vaddss xmm11,xmm8,xmm7
    10402e8de6d7:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8de6dc:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    10402e8de6e2:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    10402e8de6e8:	c4 41 1a 5c c9                                  	vsubss xmm9,xmm12,xmm9
    10402e8de6ed:	c4 41 32 5c ca                                  	vsubss xmm9,xmm9,xmm10
    10402e8de6f2:	c5 b2 59 f6                                     	vmulss xmm6,xmm9,xmm6
    10402e8de6f6:	c5 22 58 ce                                     	vaddss xmm9,xmm11,xmm6
    10402e8de6fa:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    10402e8de6ff:	73 9a                                           	jae    0x10402e8de69b
    10402e8de701:	c4 41 1a 5e c9                                  	vdivss xmm9,xmm12,xmm9
    10402e8de706:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    10402e8de70b:	c4 42 79 18 d1                                  	vbroadcastss xmm10,xmm9
    10402e8de710:	c4 01 7a 6f 5c 38 20                            	vmovdqu xmm11,XMMWORD PTR [r8+r15*1+0x20]
    10402e8de717:	c4 62 79 18 ee                                  	vbroadcastss xmm13,xmm6
    10402e8de71c:	c4 41 20 59 dd                                  	vmulps xmm11,xmm11,xmm13
    10402e8de721:	c4 41 7a 6f 6c 18 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rbx*1+0x20]
    10402e8de728:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    10402e8de72d:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    10402e8de732:	c4 62 79 18 f7                                  	vbroadcastss xmm14,xmm7
    10402e8de737:	c4 c1 7a 6f 4c 00 20                            	vmovdqu xmm1,XMMWORD PTR [r8+rax*1+0x20]
    10402e8de73e:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    10402e8de742:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    10402e8de747:	c4 41 20 58 dd                                  	vaddps xmm11,xmm11,xmm13
    10402e8de74c:	c4 41 28 59 d3                                  	vmulps xmm10,xmm10,xmm11
    10402e8de751:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8de754:	c4 41 7a 7f 94 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm10
    10402e8de75e:	c4 01 7a 10 9c 38 98 00 00 00                   	vmovss xmm11,DWORD PTR [r8+r15*1+0x98]
    10402e8de768:	c4 41 7a 10 ac 18 98 00 00 00                   	vmovss xmm13,DWORD PTR [r8+rbx*1+0x98]
    10402e8de772:	c4 41 7a 10 b4 00 98 00 00 00                   	vmovss xmm14,DWORD PTR [r8+rax*1+0x98]
    10402e8de77c:	c4 41 7a 7f 94 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm10
    10402e8de786:	44 8b a5 68 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x298]
    10402e8de78d:	43 8b 8c 20 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x134]
    10402e8de795:	44 8d 79 ff                                     	lea    r15d,[rcx-0x1]
    10402e8de799:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8de79d:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    10402e8de7a1:	c5 fb 11 bd 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm7
    10402e8de7a9:	c5 7b 11 85 48 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b8],xmm8
    10402e8de7b1:	c5 fb 11 b5 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm6
    10402e8de7b9:	c5 7b 11 8d 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm9
    10402e8de7c1:	c5 7b 11 9d 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm11
    10402e8de7c9:	c5 7b 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm13
    10402e8de7d1:	c5 7b 11 b5 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm14
    10402e8de7d9:	41 83 ff 01                                     	cmp    r15d,0x1
    10402e8de7dd:	0f 86 25 07 00 00                               	jbe    0x10402e8def08
    10402e8de7e3:	47 8b bc 20 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x130]
    10402e8de7eb:	43 83 bc 20 30 01 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x130],0x0
    10402e8de7f4:	0f 84 ac 07 00 00                               	je     0x10402e8defa6
    10402e8de7fa:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    10402e8de801:	4c 89 a5 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r12
    10402e8de808:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    10402e8de80f:	33 c9                                           	xor    ecx,ecx
    10402e8de811:	e9 46 00 00 00                                  	jmp    0x10402e8de85c
    10402e8de816:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8de81f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8de828:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8de831:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8de83a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    10402e8de840:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    10402e8de847:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8de84a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8de84e:	4c 8b a5 18 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1e8]
    10402e8de855:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    10402e8de85c:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    10402e8de863:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    10402e8de869:	8b 85 f8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x308]
    10402e8de86f:	48 89 8d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rcx
    10402e8de876:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8de87b:	0f 85 61 1f 00 00                               	jne    0x10402e8e07e2
    10402e8de881:	8b d1                                           	mov    edx,ecx
    10402e8de883:	c1 e2 04                                        	shl    edx,0x4
    10402e8de886:	42 8d 34 3a                                     	lea    esi,[rdx+r15*1]
    10402e8de88a:	4c 8b 15 8d 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c8d]        # 0x10402e8d851e
    10402e8de891:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8de896:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8de89b:	c4 41 7a 7f 14 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm10
    10402e8de8a1:	48 89 b5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rsi
    10402e8de8a8:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    10402e8de8af:	41 c7 04 30 00 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x0
    10402e8de8b7:	6b f9 4c                                        	imul   edi,ecx,0x4c
    10402e8de8ba:	41 03 f9                                        	add    edi,r9d
    10402e8de8bd:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8de8c1:	41 83 3c 38 00                                  	cmp    DWORD PTR [r8+rdi*1],0x0
    10402e8de8c6:	0f 8c cd 01 00 00                               	jl     0x10402e8dea99
    10402e8de8cc:	45 8b 7c 38 04                                  	mov    r15d,DWORD PTR [r8+rdi*1+0x4]
    10402e8de8d1:	45 85 ff                                        	test   r15d,r15d
    10402e8de8d4:	0f 84 bf 01 00 00                               	je     0x10402e8dea99
    10402e8de8da:	41 c7 04 30 01 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x1
    10402e8de8e2:	43 8b b4 20 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r12*1+0x13c]
    10402e8de8ea:	d3 ee                                           	shr    esi,cl
    10402e8de8ec:	40 f6 c6 01                                     	test   sil,0x1
    10402e8de8f0:	0f 84 a3 01 00 00                               	je     0x10402e8dea99
    10402e8de8f6:	41 8b 4c 38 38                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x38]
    10402e8de8fb:	41 83 7c 38 38 00                               	cmp    DWORD PTR [r8+rdi*1+0x38],0x0
    10402e8de901:	0f 85 7f 01 00 00                               	jne    0x10402e8dea86
    10402e8de907:	41 8d 0c 13                                     	lea    ecx,[r11+rdx*1]
    10402e8de90b:	c4 41 7a 10 54 08 08                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x8]
    10402e8de912:	c5 2a 59 95 38 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1c8]
    10402e8de91a:	8d 34 10                                        	lea    esi,[rax+rdx*1]
    10402e8de91d:	c4 c1 7a 10 4c 30 08                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x8]
    10402e8de924:	c5 f2 59 8d 48 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1b8]
    10402e8de92c:	03 d3                                           	add    edx,ebx
    10402e8de92e:	c4 c1 7a 10 54 10 08                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x8]
    10402e8de935:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    10402e8de93d:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    10402e8de941:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8de945:	c5 aa 59 9d 78 fe ff ff                         	vmulss xmm3,xmm10,DWORD PTR [rbp-0x188]
    10402e8de94d:	c4 41 7a 10 54 08 04                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x4]
    10402e8de954:	c5 2a 59 95 38 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1c8]
    10402e8de95c:	c4 c1 7a 10 4c 30 04                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x4]
    10402e8de963:	c5 f2 59 8d 48 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1b8]
    10402e8de96b:	c4 c1 7a 10 54 10 04                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x4]
    10402e8de972:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    10402e8de97a:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    10402e8de97e:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8de982:	c5 aa 59 95 78 fe ff ff                         	vmulss xmm2,xmm10,DWORD PTR [rbp-0x188]
    10402e8de98a:	c4 41 7a 10 14 08                               	vmovss xmm10,DWORD PTR [r8+rcx*1]
    10402e8de990:	c5 2a 59 95 38 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1c8]
    10402e8de998:	c4 c1 7a 10 0c 30                               	vmovss xmm1,DWORD PTR [r8+rsi*1]
    10402e8de99e:	c5 f2 59 8d 48 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1b8]
    10402e8de9a6:	c4 c1 7a 10 24 10                               	vmovss xmm4,DWORD PTR [r8+rdx*1]
    10402e8de9ac:	c5 da 59 a5 70 fe ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0x190]
    10402e8de9b4:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    10402e8de9b8:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8de9bc:	c5 aa 59 8d 78 fe ff ff                         	vmulss xmm1,xmm10,DWORD PTR [rbp-0x188]
    10402e8de9c4:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    10402e8de9c9:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8de9ce:	41 8b 74 38 08                                  	mov    esi,DWORD PTR [r8+rdi*1+0x8]
    10402e8de9d3:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    10402e8de9d7:	83 fe 02                                        	cmp    esi,0x2
    10402e8de9da:	0f 8c 14 00 00 00                               	jl     0x10402e8de9f4
    10402e8de9e0:	0f 84 44 00 00 00                               	je     0x10402e8dea2a
    10402e8de9e6:	83 fe 03                                        	cmp    esi,0x3
    10402e8de9e9:	0f 84 1c 00 00 00                               	je     0x10402e8dea0b
    10402e8de9ef:	e9 5c 00 00 00                                  	jmp    0x10402e8dea50
    10402e8de9f4:	83 fe 00                                        	cmp    esi,0x0
    10402e8de9f7:	0f 84 72 00 00 00                               	je     0x10402e8dea6f
    10402e8de9fd:	83 fe 01                                        	cmp    esi,0x1
    10402e8dea00:	0f 84 4a 00 00 00                               	je     0x10402e8dea50
    10402e8dea06:	e9 45 00 00 00                                  	jmp    0x10402e8dea50
    10402e8dea0b:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    10402e8dea10:	44 8b 8d f8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x208]
    10402e8dea17:	8b df                                           	mov    ebx,edi
    10402e8dea19:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dea1d:	41 8b c7                                        	mov    eax,r15d
    10402e8dea20:	e8 0b 78 eb ff                                  	call   0x10402e796230
    10402e8dea25:	e9 6f 00 00 00                                  	jmp    0x10402e8dea99
    10402e8dea2a:	41 8b 74 38 14                                  	mov    esi,DWORD PTR [r8+rdi*1+0x14]
    10402e8dea2f:	41 8b 7c 38 18                                  	mov    edi,DWORD PTR [r8+rdi*1+0x18]
    10402e8dea34:	ff b5 f8 fd ff ff                               	push   QWORD PTR [rbp-0x208]
    10402e8dea3a:	8b de                                           	mov    ebx,esi
    10402e8dea3c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dea40:	41 8b c7                                        	mov    eax,r15d
    10402e8dea43:	44 8b cf                                        	mov    r9d,edi
    10402e8dea46:	e8 dd 77 eb ff                                  	call   0x10402e796228
    10402e8dea4b:	e9 49 00 00 00                                  	jmp    0x10402e8dea99
    10402e8dea50:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    10402e8dea55:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dea59:	41 8b c7                                        	mov    eax,r15d
    10402e8dea5c:	44 8b 8d f8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x208]
    10402e8dea63:	8b df                                           	mov    ebx,edi
    10402e8dea65:	e8 ce 77 eb ff                                  	call   0x10402e796238
    10402e8dea6a:	e9 2a 00 00 00                                  	jmp    0x10402e8dea99
    10402e8dea6f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dea73:	41 8b c7                                        	mov    eax,r15d
    10402e8dea76:	8b 9d f8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x208]
    10402e8dea7c:	e8 9f 77 eb ff                                  	call   0x10402e796220
    10402e8dea81:	e9 13 00 00 00                                  	jmp    0x10402e8dea99
    10402e8dea86:	c4 c1 7a 6f 44 38 3c                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x3c]
    10402e8dea8d:	8b bd f8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x208]
    10402e8dea93:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    10402e8dea99:	8b 8d 10 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1f0]
    10402e8dea9f:	83 c1 01                                        	add    ecx,0x1
    10402e8deaa2:	83 f9 04                                        	cmp    ecx,0x4
    10402e8deaa5:	0f 85 95 fd ff ff                               	jne    0x10402e8de840
    10402e8deaab:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8deaaf:	4c 8b 85 18 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1e8]
    10402e8deab6:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    10402e8deabe:	45 85 c0                                        	test   r8d,r8d
    10402e8deac1:	0f 85 c2 01 00 00                               	jne    0x10402e8dec89
    10402e8deac7:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    10402e8deacb:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    10402e8dead3:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    10402e8deadc:	0f 84 53 00 00 00                               	je     0x10402e8deb35
    10402e8deae2:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8deae9:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8deaf0:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8deaf7:	41 53                                           	push   r11
    10402e8deaf9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8deafd:	8b 85 28 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d8]
    10402e8deb03:	33 d2                                           	xor    edx,edx
    10402e8deb05:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8deb0c:	e8 2f 77 eb ff                                  	call   0x10402e796240
    10402e8deb11:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8deb14:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8deb18:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    10402e8deb22:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8deb2c:	4d 8b d0                                        	mov    r10,r8
    10402e8deb2f:	44 8b c7                                        	mov    r8d,edi
    10402e8deb32:	49 8b fa                                        	mov    rdi,r10
    10402e8deb35:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    10402e8deb3d:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    10402e8deb46:	0f 84 56 00 00 00                               	je     0x10402e8deba2
    10402e8deb4c:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8deb53:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8deb5a:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8deb61:	41 53                                           	push   r11
    10402e8deb63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8deb67:	8b 85 30 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d0]
    10402e8deb6d:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8deb72:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8deb79:	e8 c2 76 eb ff                                  	call   0x10402e796240
    10402e8deb7e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8deb81:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8deb85:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    10402e8deb8f:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8deb99:	4d 8b d0                                        	mov    r10,r8
    10402e8deb9c:	44 8b c7                                        	mov    r8d,edi
    10402e8deb9f:	49 8b fa                                        	mov    rdi,r10
    10402e8deba2:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    10402e8debaa:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    10402e8debb3:	0f 84 56 00 00 00                               	je     0x10402e8dec0f
    10402e8debb9:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8debc0:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8debc7:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8debce:	41 53                                           	push   r11
    10402e8debd0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8debd4:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    10402e8debda:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8debdf:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8debe6:	e8 55 76 eb ff                                  	call   0x10402e796240
    10402e8debeb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8debee:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8debf2:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    10402e8debfc:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8dec06:	4d 8b d0                                        	mov    r10,r8
    10402e8dec09:	44 8b c7                                        	mov    r8d,edi
    10402e8dec0c:	49 8b fa                                        	mov    rdi,r10
    10402e8dec0f:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    10402e8dec17:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    10402e8dec20:	0f 85 0e 00 00 00                               	jne    0x10402e8dec34
    10402e8dec26:	4c 8b d7                                        	mov    r10,rdi
    10402e8dec29:	41 8b f8                                        	mov    edi,r8d
    10402e8dec2c:	4d 8b c2                                        	mov    r8,r10
    10402e8dec2f:	e9 72 03 00 00                                  	jmp    0x10402e8defa6
    10402e8dec34:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8dec3b:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8dec42:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8dec49:	41 53                                           	push   r11
    10402e8dec4b:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8dec50:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8dec54:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    10402e8dec5a:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8dec61:	e8 da 75 eb ff                                  	call   0x10402e796240
    10402e8dec66:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8dec69:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    10402e8dec6d:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    10402e8dec77:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    10402e8dec81:	4d 8b c3                                        	mov    r8,r11
    10402e8dec84:	e9 1d 03 00 00                                  	jmp    0x10402e8defa6
    10402e8dec89:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8dec8d:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    10402e8dec97:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8dec9d:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8deca2:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8deca6:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    10402e8decb0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8decb4:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8decb8:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    10402e8decc2:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8decc6:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    10402e8decd0:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8decd4:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    10402e8decd8:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    10402e8dece2:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8dece6:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    10402e8decf0:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    10402e8decf4:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    10402e8decf8:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    10402e8decfc:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8ded00:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8ded06:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8ded0b:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    10402e8ded0f:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    10402e8ded13:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    10402e8ded18:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    10402e8ded1d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8ded21:	0f 87 09 00 00 00                               	ja     0x10402e8ded30
    10402e8ded27:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8ded2b:	e9 04 00 00 00                                  	jmp    0x10402e8ded34
    10402e8ded30:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    10402e8ded34:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8ded38:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8ded3c:	0f 87 09 00 00 00                               	ja     0x10402e8ded4b
    10402e8ded42:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8ded46:	e9 04 00 00 00                                  	jmp    0x10402e8ded4f
    10402e8ded4b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8ded4f:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8ded54:	41 83 f8 01                                     	cmp    r8d,0x1
    10402e8ded58:	0f 84 a0 00 00 00                               	je     0x10402e8dedfe
    10402e8ded5e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8ded62:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    10402e8ded6c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8ded70:	0f 87 09 00 00 00                               	ja     0x10402e8ded7f
    10402e8ded76:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8ded7a:	e9 04 00 00 00                                  	jmp    0x10402e8ded83
    10402e8ded7f:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8ded83:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8ded87:	0f 87 0a 00 00 00                               	ja     0x10402e8ded97
    10402e8ded8d:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8ded92:	e9 04 00 00 00                                  	jmp    0x10402e8ded9b
    10402e8ded97:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8ded9b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8ded9f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8deda4:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    10402e8deda9:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8dedad:	4c 8b 15 6a 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff976a]        # 0x10402e8d851e
    10402e8dedb4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8dedb9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8dedbe:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dedc2:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8dedcc:	41 83 f8 03                                     	cmp    r8d,0x3
    10402e8dedd0:	0f 85 04 00 00 00                               	jne    0x10402e8dedda
    10402e8dedd6:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    10402e8dedda:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8deddf:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8dede3:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8dede7:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    10402e8dedf1:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    10402e8dedf6:	4d 8b c4                                        	mov    r8,r12
    10402e8dedf9:	e9 cd 00 00 00                                  	jmp    0x10402e8deecb
    10402e8dedfe:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    10402e8dee08:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8dee0c:	0f 87 09 00 00 00                               	ja     0x10402e8dee1b
    10402e8dee12:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8dee16:	e9 04 00 00 00                                  	jmp    0x10402e8dee1f
    10402e8dee1b:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8dee1f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8dee23:	0f 87 0a 00 00 00                               	ja     0x10402e8dee33
    10402e8dee29:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8dee2e:	e9 04 00 00 00                                  	jmp    0x10402e8dee37
    10402e8dee33:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8dee37:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8dee41:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    10402e8dee47:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    10402e8dee4c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8dee50:	0f 87 09 00 00 00                               	ja     0x10402e8dee5f
    10402e8dee56:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8dee5a:	e9 04 00 00 00                                  	jmp    0x10402e8dee63
    10402e8dee5f:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    10402e8dee63:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8dee67:	0f 87 0a 00 00 00                               	ja     0x10402e8dee77
    10402e8dee6d:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8dee72:	e9 04 00 00 00                                  	jmp    0x10402e8dee7b
    10402e8dee77:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8dee7b:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    10402e8dee85:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8dee8a:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8dee8e:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    10402e8dee98:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    10402e8dee9d:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8deea2:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    10402e8deea6:	4c 8b 15 71 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9671]        # 0x10402e8d851e
    10402e8deead:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8deeb2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8deeb7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8deebb:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8deebf:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    10402e8deec3:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8deec7:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    10402e8deecb:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    10402e8deed0:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8deed4:	4c 8b 15 43 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9643]        # 0x10402e8d851e
    10402e8deedb:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8deee0:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8deee5:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    10402e8deee9:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    10402e8deef3:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    10402e8deefd:	4c 8b c7                                        	mov    r8,rdi
    10402e8def00:	41 8b fb                                        	mov    edi,r11d
    10402e8def03:	e9 9e 00 00 00                                  	jmp    0x10402e8defa6
    10402e8def08:	4c 8b a5 50 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2b0]
    10402e8def0f:	c4 01 7a 10 54 20 50                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x50]
    10402e8def16:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    10402e8def1a:	4c 8b fb                                        	mov    r15,rbx
    10402e8def1d:	c4 81 7a 10 4c 38 50                            	vmovss xmm1,DWORD PTR [r8+r15*1+0x50]
    10402e8def24:	c4 c1 72 59 c8                                  	vmulss xmm1,xmm1,xmm8
    10402e8def29:	c4 c1 42 59 54 00 50                            	vmulss xmm2,xmm7,DWORD PTR [r8+rax*1+0x50]
    10402e8def30:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    10402e8def34:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8def38:	c4 c1 32 59 ca                                  	vmulss xmm1,xmm9,xmm10
    10402e8def3d:	c4 01 7a 10 54 20 54                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x54]
    10402e8def44:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    10402e8def48:	c4 81 7a 10 54 38 54                            	vmovss xmm2,DWORD PTR [r8+r15*1+0x54]
    10402e8def4f:	c4 c1 6a 59 d0                                  	vmulss xmm2,xmm2,xmm8
    10402e8def54:	c4 c1 42 59 5c 00 54                            	vmulss xmm3,xmm7,DWORD PTR [r8+rax*1+0x54]
    10402e8def5b:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    10402e8def5f:	c5 2a 58 d2                                     	vaddss xmm10,xmm10,xmm2
    10402e8def63:	c4 c1 32 59 d2                                  	vmulss xmm2,xmm9,xmm10
    10402e8def68:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    10402e8def6e:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    10402e8def75:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8def79:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    10402e8def7f:	8b d1                                           	mov    edx,ecx
    10402e8def81:	8b cb                                           	mov    ecx,ebx
    10402e8def83:	41 8b d8                                        	mov    ebx,r8d
    10402e8def86:	e8 a5 75 eb ff                                  	call   0x10402e796530
    10402e8def8b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8def8e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8def92:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    10402e8def9c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8defa6:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8defaa:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    10402e8defb2:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    10402e8defbb:	0f 84 c2 01 00 00                               	je     0x10402e8df183
    10402e8defc1:	c5 fb 10 85 40 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1c0]
    10402e8defc9:	c5 fa 59 85 38 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1c8]
    10402e8defd1:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    10402e8defd9:	c5 d2 59 ad 48 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1b8]
    10402e8defe1:	c5 fb 10 b5 70 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x190]
    10402e8defe9:	c5 ca 59 b5 68 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x198]
    10402e8deff1:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    10402e8deff5:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8deff9:	c5 fb 10 ad 78 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x188]
    10402e8df001:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    10402e8df005:	4c 8b 15 55 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8655]        # 0x10402e8d7661
    10402e8df00c:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8df011:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    10402e8df015:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    10402e8df019:	0f 87 04 00 00 00                               	ja     0x10402e8df023
    10402e8df01f:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    10402e8df023:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    10402e8df02b:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    10402e8df032:	0f 85 28 00 00 00                               	jne    0x10402e8df060
    10402e8df038:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    10402e8df042:	4c 8b 15 18 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8618]        # 0x10402e8d7661
    10402e8df049:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8df04e:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    10402e8df052:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8df056:	e8 5d 95 eb ff                                  	call   0x10402e7985b8
    10402e8df05b:	e9 89 00 00 00                                  	jmp    0x10402e8df0e9
    10402e8df060:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8df064:	0f 84 5c 00 00 00                               	je     0x10402e8df0c6
    10402e8df06a:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    10402e8df074:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    10402e8df07e:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    10402e8df082:	7a 06                                           	jp     0x10402e8df08a
    10402e8df084:	0f 84 29 00 00 00                               	je     0x10402e8df0b3
    10402e8df08a:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    10402e8df08e:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    10402e8df092:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8df096:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    10402e8df09a:	0f 86 49 00 00 00                               	jbe    0x10402e8df0e9
    10402e8df0a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8df0a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8df0a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8df0ae:	e9 5b 00 00 00                                  	jmp    0x10402e8df10e
    10402e8df0b3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8df0b7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8df0bc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8df0c1:	e9 44 00 00 00                                  	jmp    0x10402e8df10a
    10402e8df0c6:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    10402e8df0d0:	4c 8b 15 8a 85 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff858a]        # 0x10402e8d7661
    10402e8df0d7:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8df0dc:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    10402e8df0e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8df0e4:	e8 cf 94 eb ff                                  	call   0x10402e7985b8
    10402e8df0e9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8df0ed:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8df0f2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8df0f7:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8df0fb:	0f 87 09 00 00 00                               	ja     0x10402e8df10a
    10402e8df101:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    10402e8df105:	e9 04 00 00 00                                  	jmp    0x10402e8df10e
    10402e8df10a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8df10e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8df111:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8df115:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    10402e8df11f:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8df123:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8df127:	c4 81 7a 59 bc 18 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x100]
    10402e8df131:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8df135:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    10402e8df13f:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    10402e8df149:	c4 81 7a 59 bc 18 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x104]
    10402e8df153:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8df157:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    10402e8df161:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    10402e8df16b:	c4 81 7a 59 84 18 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [r8+r11*1+0x108]
    10402e8df175:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8df179:	c4 c1 7a 11 84 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm0
    10402e8df183:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    10402e8df18d:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    10402e8df197:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8df19b:	41 c1 e4 04                                     	shl    r12d,0x4
    10402e8df19f:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    10402e8df1a6:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    10402e8df1aa:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8df1ae:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    10402e8df1b3:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    10402e8df1b7:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    10402e8df1ba:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8df1be:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8df1c1:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8df1c5:	83 bd c8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x238],0x0
    10402e8df1cc:	0f 85 3e 11 00 00                               	jne    0x10402e8e0310
    10402e8df1d2:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    10402e8df1d7:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    10402e8df1dd:	0f 85 fd 10 00 00                               	jne    0x10402e8e02e0
    10402e8df1e3:	4c 8b 15 34 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9334]        # 0x10402e8d851e
    10402e8df1ea:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8df1ef:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    10402e8df1f3:	c4 c1 7a 6f ac 38 80 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x280]
    10402e8df1fd:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    10402e8df201:	c5 d0 c2 f6 01                                  	vcmpltps xmm6,xmm5,xmm6
    10402e8df206:	c5 c8 55 ed                                     	vandnps xmm5,xmm6,xmm5
    10402e8df20a:	4c 8b 15 0d 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff930d]        # 0x10402e8d851e
    10402e8df211:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8df216:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8df21a:	c5 c8 c2 f5 01                                  	vcmpltps xmm6,xmm6,xmm5
    10402e8df21f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8df223:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8df227:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df22c:	4c 8b 15 9d 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e9d]        # 0x10402e8d90d0
    10402e8df233:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8df238:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8df23c:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8df240:	4c 8b 15 a0 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea0]        # 0x10402e8d90e7
    10402e8df247:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8df24c:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8df250:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8df254:	4c 8b 15 a3 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea3]        # 0x10402e8d90fe
    10402e8df25b:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8df260:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    10402e8df265:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8df26b:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    10402e8df26f:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    10402e8df274:	4c 8b 15 a6 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea6]        # 0x10402e8d9121
    10402e8df27b:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8df280:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8df284:	4c 8b 15 8a 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff708a]        # 0x10402e8d6315
    10402e8df28b:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8df290:	4c 8b 15 a9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea9]        # 0x10402e8d9140
    10402e8df297:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8df29c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8df2a0:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    10402e8df2a5:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    10402e8df2a9:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8df2ad:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df2b2:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    10402e8df2b7:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    10402e8df2bb:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8df2c0:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    10402e8df2c4:	0f af c8                                        	imul   ecx,eax
    10402e8df2c7:	03 ca                                           	add    ecx,edx
    10402e8df2c9:	8d 34 8d 00 00 00 00                            	lea    esi,[rcx*4+0x0]
    10402e8df2d0:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8df2d4:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    10402e8df2d9:	c1 e1 04                                        	shl    ecx,0x4
    10402e8df2dc:	03 d1                                           	add    edx,ecx
    10402e8df2de:	83 fb 0f                                        	cmp    ebx,0xf
    10402e8df2e1:	0f 84 9b 00 00 00                               	je     0x10402e8df382
    10402e8df2e7:	8b cb                                           	mov    ecx,ebx
    10402e8df2e9:	83 e1 01                                        	and    ecx,0x1
    10402e8df2ec:	f7 d9                                           	neg    ecx
    10402e8df2ee:	c5 f9 6e e9                                     	vmovd  xmm5,ecx
    10402e8df2f2:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    10402e8df2f7:	8b cb                                           	mov    ecx,ebx
    10402e8df2f9:	c1 e1 1e                                        	shl    ecx,0x1e
    10402e8df2fc:	c1 f9 1f                                        	sar    ecx,0x1f
    10402e8df2ff:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    10402e8df305:	8b cb                                           	mov    ecx,ebx
    10402e8df307:	c1 e1 1d                                        	shl    ecx,0x1d
    10402e8df30a:	c1 f9 1f                                        	sar    ecx,0x1f
    10402e8df30d:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    10402e8df313:	8b cb                                           	mov    ecx,ebx
    10402e8df315:	c1 e1 1c                                        	shl    ecx,0x1c
    10402e8df318:	c1 f9 1f                                        	sar    ecx,0x1f
    10402e8df31b:	c4 e3 51 22 e9 03                               	vpinsrd xmm5,xmm5,ecx,0x3
    10402e8df321:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    10402e8df326:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8df32c:	0f 84 38 00 00 00                               	je     0x10402e8df36a
    10402e8df332:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    10402e8df337:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8df33d:	0f 84 27 00 00 00                               	je     0x10402e8df36a
    10402e8df343:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    10402e8df348:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    10402e8df34b:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    10402e8df351:	c4 c1 7a 6f 3c 08                               	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1]
    10402e8df357:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    10402e8df35b:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    10402e8df35f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8df364:	c4 c1 7a 7f 34 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm6
    10402e8df36a:	c4 c1 7a 6f 34 10                               	vmovdqu xmm6,XMMWORD PTR [r8+rdx*1]
    10402e8df370:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    10402e8df374:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8df378:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df37d:	e9 36 00 00 00                                  	jmp    0x10402e8df3b8
    10402e8df382:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    10402e8df387:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8df38d:	0f 84 25 00 00 00                               	je     0x10402e8df3b8
    10402e8df393:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    10402e8df398:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8df39e:	0f 84 14 00 00 00                               	je     0x10402e8df3b8
    10402e8df3a4:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    10402e8df3a9:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    10402e8df3ac:	c4 81 7a 6f 2c 08                               	vmovdqu xmm5,XMMWORD PTR [r8+r9*1]
    10402e8df3b2:	c4 c1 7a 7f 2c 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm5
    10402e8df3b8:	c4 c1 7a 7f 04 10                               	vmovdqu XMMWORD PTR [r8+rdx*1],xmm0
    10402e8df3be:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    10402e8df3c3:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8df3c9:	0f 84 6c 0f 00 00                               	je     0x10402e8e033b
    10402e8df3cf:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    10402e8df3d4:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8df3da:	0f 84 5b 0f 00 00                               	je     0x10402e8e033b
    10402e8df3e0:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    10402e8df3e5:	43 83 7c 18 14 04                               	cmp    DWORD PTR [r8+r11*1+0x14],0x4
    10402e8df3eb:	0f 85 4a 0f 00 00                               	jne    0x10402e8e033b
    10402e8df3f1:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    10402e8df3f6:	85 d2                                           	test   edx,edx
    10402e8df3f8:	0f 84 3d 0f 00 00                               	je     0x10402e8e033b
    10402e8df3fe:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    10402e8df401:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    10402e8df405:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    10402e8df40a:	0f 84 2b 0f 00 00                               	je     0x10402e8e033b
    10402e8df410:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    10402e8df413:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8df417:	83 ea 3c                                        	sub    edx,0x3c
    10402e8df41a:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8df41e:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    10402e8df421:	c1 ee 02                                        	shr    esi,0x2
    10402e8df424:	0f af f2                                        	imul   esi,edx
    10402e8df427:	c1 e6 04                                        	shl    esi,0x4
    10402e8df42a:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    10402e8df42d:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    10402e8df434:	8b f1                                           	mov    esi,ecx
    10402e8df436:	83 e6 f0                                        	and    esi,0xfffffff0
    10402e8df439:	03 d6                                           	add    edx,esi
    10402e8df43b:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    10402e8df440:	81 ee 01 02 00 00                               	sub    esi,0x201
    10402e8df446:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    10402e8df44a:	33 c0                                           	xor    eax,eax
    10402e8df44c:	85 f6                                           	test   esi,esi
    10402e8df44e:	0f 94 c0                                        	sete   al
    10402e8df451:	83 fe 02                                        	cmp    esi,0x2
    10402e8df454:	40 0f 94 c6                                     	sete   sil
    10402e8df458:	40 0f b6 f6                                     	movzx  esi,sil
    10402e8df45c:	0b f0                                           	or     esi,eax
    10402e8df45e:	0f 85 0d 00 00 00                               	jne    0x10402e8df471
    10402e8df464:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    10402e8df46c:	e9 ca 0e 00 00                                  	jmp    0x10402e8e033b
    10402e8df471:	83 e3 0f                                        	and    ebx,0xf
    10402e8df474:	83 e1 0c                                        	and    ecx,0xc
    10402e8df477:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    10402e8df47a:	83 e0 03                                        	and    eax,0x3
    10402e8df47d:	0b c1                                           	or     eax,ecx
    10402e8df47f:	c1 e0 02                                        	shl    eax,0x2
    10402e8df482:	83 e0 3f                                        	and    eax,0x3f
    10402e8df485:	8b c8                                           	mov    ecx,eax
    10402e8df487:	48 d3 e3                                        	shl    rbx,cl
    10402e8df48a:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    10402e8df48e:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8df492:	0f 84 03 07 00 00                               	je     0x10402e8dfb9b
    10402e8df498:	48 0b c3                                        	or     rax,rbx
    10402e8df49b:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    10402e8df49f:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8df4a3:	0f 85 92 0e 00 00                               	jne    0x10402e8e033b
    10402e8df4a9:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    10402e8df4ae:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    10402e8df4b1:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    10402e8df4b7:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    10402e8df4bb:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8df4be:	83 ce 03                                        	or     esi,0x3
    10402e8df4c1:	0f af f1                                        	imul   esi,ecx
    10402e8df4c4:	03 f3                                           	add    esi,ebx
    10402e8df4c6:	c1 e6 04                                        	shl    esi,0x4
    10402e8df4c9:	03 f0                                           	add    esi,eax
    10402e8df4cb:	c4 c1 7a 6f 44 30 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8df4d2:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8df4d7:	c4 c1 7a 6f 74 30 20                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8df4de:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8df4e3:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8df4e7:	c4 c1 7a 6f 7c 30 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8df4ee:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8df4f3:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8df4f8:	c4 41 7a 6f 04 30                               	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1]
    10402e8df4fe:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8df504:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8df509:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8df50c:	81 e6 fc ff ff 0f                               	and    esi,0xffffffc
    10402e8df512:	44 8b ce                                        	mov    r9d,esi
    10402e8df515:	41 83 c9 02                                     	or     r9d,0x2
    10402e8df519:	44 0f af c9                                     	imul   r9d,ecx
    10402e8df51d:	44 03 cb                                        	add    r9d,ebx
    10402e8df520:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8df524:	44 03 c8                                        	add    r9d,eax
    10402e8df527:	c4 01 7a 6f 4c 08 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x30]
    10402e8df52e:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8df534:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8df539:	c4 01 7a 6f 54 08 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r9*1+0x20]
    10402e8df540:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8df546:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8df54b:	c4 01 7a 6f 5c 08 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r9*1+0x10]
    10402e8df552:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8df558:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8df55d:	c4 01 7a 6f 24 08                               	vmovdqu xmm12,XMMWORD PTR [r8+r9*1]
    10402e8df563:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8df569:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8df56e:	44 8b ce                                        	mov    r9d,esi
    10402e8df571:	41 83 c9 01                                     	or     r9d,0x1
    10402e8df575:	44 0f af c9                                     	imul   r9d,ecx
    10402e8df579:	44 03 cb                                        	add    r9d,ebx
    10402e8df57c:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8df580:	44 03 c8                                        	add    r9d,eax
    10402e8df583:	c4 01 7a 6f 6c 08 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r9*1+0x30]
    10402e8df58a:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8df590:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8df595:	c4 01 7a 6f 74 08 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r9*1+0x20]
    10402e8df59c:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8df5a2:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8df5a6:	c4 81 7a 6f 4c 08 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r9*1+0x10]
    10402e8df5ad:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8df5b2:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8df5b6:	c4 81 7a 6f 14 08                               	vmovdqu xmm2,XMMWORD PTR [r8+r9*1]
    10402e8df5bc:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8df5c1:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8df5c5:	0f af ce                                        	imul   ecx,esi
    10402e8df5c8:	03 d9                                           	add    ebx,ecx
    10402e8df5ca:	c1 e3 04                                        	shl    ebx,0x4
    10402e8df5cd:	03 c3                                           	add    eax,ebx
    10402e8df5cf:	c4 c1 7a 6f 5c 00 30                            	vmovdqu xmm3,XMMWORD PTR [r8+rax*1+0x30]
    10402e8df5d6:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8df5db:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8df5df:	c4 c1 7a 6f 64 00 20                            	vmovdqu xmm4,XMMWORD PTR [r8+rax*1+0x20]
    10402e8df5e6:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    10402e8df5eb:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8df5f0:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8df5f4:	c4 c1 7a 6f 6c 00 10                            	vmovdqu xmm5,XMMWORD PTR [r8+rax*1+0x10]
    10402e8df5fb:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    10402e8df600:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8df605:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8df609:	c4 c1 7a 6f 34 00                               	vmovdqu xmm6,XMMWORD PTR [r8+rax*1]
    10402e8df60f:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    10402e8df617:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8df61c:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8df620:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8df625:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8df62a:	c5 f8 50 c0                                     	vmovmskps eax,xmm0
    10402e8df62e:	83 f8 0f                                        	cmp    eax,0xf
    10402e8df631:	0f 84 0e 00 00 00                               	je     0x10402e8df645
    10402e8df637:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    10402e8df640:	e9 f6 0c 00 00                                  	jmp    0x10402e8e033b
    10402e8df645:	4c 8b 15 d0 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed0]        # 0x10402e8d951c
    10402e8df64c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8df651:	4c 8b 15 d3 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed3]        # 0x10402e8d952b
    10402e8df658:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8df65e:	4c 8b 15 d6 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed6]        # 0x10402e8d953b
    10402e8df665:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8df66a:	4c 8b 15 d9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed9]        # 0x10402e8d954a
    10402e8df671:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8df677:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    10402e8df67c:	4c 8b 15 df 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9edf]        # 0x10402e8d9562
    10402e8df683:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8df688:	4c 8b 15 e2 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee2]        # 0x10402e8d9571
    10402e8df68f:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8df695:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    10402e8df69d:	4c 8b 15 e5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee5]        # 0x10402e8d9589
    10402e8df6a4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8df6a9:	4c 8b 15 e8 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee8]        # 0x10402e8d9598
    10402e8df6b0:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8df6b6:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8df6be:	4c 8b 15 eb 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eeb]        # 0x10402e8d95b0
    10402e8df6c5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8df6ca:	4c 8b 15 ee 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eee]        # 0x10402e8d95bf
    10402e8df6d1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8df6d7:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    10402e8df6df:	4c 8b 15 f1 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef1]        # 0x10402e8d95d7
    10402e8df6e6:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8df6eb:	4c 8b 15 f4 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef4]        # 0x10402e8d95e6
    10402e8df6f2:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8df6f8:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    10402e8df700:	4c 8b 15 f7 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef7]        # 0x10402e8d95fe
    10402e8df707:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8df70c:	4c 8b 15 fa 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efa]        # 0x10402e8d960d
    10402e8df713:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8df719:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    10402e8df721:	4c 8b 15 fd 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efd]        # 0x10402e8d9625
    10402e8df728:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8df72d:	4c 8b 15 00 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f00]        # 0x10402e8d9634
    10402e8df734:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8df73a:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    10402e8df742:	4c 8b 15 03 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f03]        # 0x10402e8d964c
    10402e8df749:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8df74e:	4c 8b 15 06 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f06]        # 0x10402e8d965b
    10402e8df755:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8df75b:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    10402e8df763:	4c 8b 15 09 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f09]        # 0x10402e8d9673
    10402e8df76a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8df76f:	4c 8b 15 0c 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0c]        # 0x10402e8d9682
    10402e8df776:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8df77c:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    10402e8df784:	4c 8b 15 0f 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0f]        # 0x10402e8d969a
    10402e8df78b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8df790:	4c 8b 15 12 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f12]        # 0x10402e8d96a9
    10402e8df797:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8df79d:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    10402e8df7a5:	4c 8b 15 15 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f15]        # 0x10402e8d96c1
    10402e8df7ac:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8df7b1:	4c 8b 15 18 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f18]        # 0x10402e8d96d0
    10402e8df7b8:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8df7be:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    10402e8df7c6:	4c 8b 15 1b 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1b]        # 0x10402e8d96e8
    10402e8df7cd:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8df7d2:	4c 8b 15 1e 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1e]        # 0x10402e8d96f7
    10402e8df7d9:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8df7df:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    10402e8df7e7:	4c 8b 15 21 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f21]        # 0x10402e8d970f
    10402e8df7ee:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8df7f3:	4c 8b 15 24 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f24]        # 0x10402e8d971e
    10402e8df7fa:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8df800:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    10402e8df808:	4c 8b 15 27 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f27]        # 0x10402e8d9736
    10402e8df80f:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8df814:	4c 8b 15 2a 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f2a]        # 0x10402e8d9745
    10402e8df81b:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8df821:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    10402e8df829:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8df82e:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8df834:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8df83a:	4c 8b 15 2d 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f2d]        # 0x10402e8d976e
    10402e8df841:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8df847:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    10402e8df84f:	4c 8b 15 30 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f30]        # 0x10402e8d9786
    10402e8df856:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8df85b:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8df860:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    10402e8df868:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8df86d:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8df873:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8df878:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8df87d:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8df881:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8df886:	4c 8b 15 f9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef9]        # 0x10402e8d9786
    10402e8df88d:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8df892:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8df897:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8df89c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8df8a0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8df8a5:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8df8aa:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8df8af:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8df8b3:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8df8b8:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8df8bc:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8df8c0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df8c5:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8df8ca:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8df8cf:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8df8d3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df8d8:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8df8dc:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8df8e0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df8e5:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8df8ea:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8df8ee:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8df8f2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df8f7:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8df8fb:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8df8ff:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df904:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8df909:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8df90d:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8df911:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df916:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8df91a:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8df91e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df923:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8df928:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8df92c:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8df930:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df935:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8df939:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8df93d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df942:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8df948:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    10402e8df950:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8df954:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8df958:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df95d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8df961:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8df965:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df96a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8df972:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8df977:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8df97f:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8df983:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8df987:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df98c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8df990:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8df994:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df999:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8df9a1:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8df9a6:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    10402e8df9ae:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8df9b2:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8df9b6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df9bb:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8df9bf:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8df9c3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df9c8:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8df9d0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8df9d5:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8df9dd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8df9e1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8df9e5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8df9ea:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8df9ee:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8df9f2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8df9f7:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8df9ff:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dfa04:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8dfa0c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dfa10:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dfa14:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfa19:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dfa1d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dfa21:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dfa26:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8dfa2e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dfa33:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8dfa3b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dfa3f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dfa43:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfa48:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dfa4c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dfa50:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dfa55:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8dfa5d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dfa62:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8dfa6a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dfa6e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dfa72:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfa77:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dfa7b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dfa7f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dfa84:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8dfa8c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dfa91:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8dfa99:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dfa9d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dfaa1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfaa6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dfaaa:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dfaae:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dfab3:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8dfab8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dfabd:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8dfac5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dfac9:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dfacd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfad2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dfad6:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8dfada:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8dfadf:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    10402e8dfae4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8dfae9:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    10402e8dfaee:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8dfaf2:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8dfaf6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfafb:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8dfb05:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8dfb09:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8dfb0d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8dfb12:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    10402e8dfb1c:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8dfb20:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8dfb24:	33 c0                                           	xor    eax,eax
    10402e8dfb26:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8dfb2a:	0f 97 c0                                        	seta   al
    10402e8dfb2d:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    10402e8dfb33:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    10402e8dfb3a:	0b cb                                           	or     ecx,ebx
    10402e8dfb3c:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    10402e8dfb42:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8dfb47:	be 02 00 00 00                                  	mov    esi,0x2
    10402e8dfb4c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8dfb50:	0f 47 c6                                        	cmova  eax,esi
    10402e8dfb53:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    10402e8dfb5a:	0b cb                                           	or     ecx,ebx
    10402e8dfb5c:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    10402e8dfb62:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8dfb67:	b9 03 00 00 00                                  	mov    ecx,0x3
    10402e8dfb6c:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8dfb70:	0f 47 c1                                        	cmova  eax,ecx
    10402e8dfb73:	c1 e0 02                                        	shl    eax,0x2
    10402e8dfb76:	0b d8                                           	or     ebx,eax
    10402e8dfb78:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    10402e8dfb7e:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    10402e8dfb85:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    10402e8dfb8b:	0b c3                                           	or     eax,ebx
    10402e8dfb8d:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8dfb91:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    10402e8dfb96:	e9 a0 07 00 00                                  	jmp    0x10402e8e033b
    10402e8dfb9b:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    10402e8dfba0:	8b c8                                           	mov    ecx,eax
    10402e8dfba2:	83 e1 3f                                        	and    ecx,0x3f
    10402e8dfba5:	48 d3 eb                                        	shr    rbx,cl
    10402e8dfba8:	be 03 00 00 00                                  	mov    esi,0x3
    10402e8dfbad:	f6 c3 01                                        	test   bl,0x1
    10402e8dfbb0:	0f 84 85 07 00 00                               	je     0x10402e8e033b
    10402e8dfbb6:	83 e0 03                                        	and    eax,0x3
    10402e8dfbb9:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    10402e8dfbbd:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8dfbc3:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    10402e8dfbca:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    10402e8dfbce:	0f 86 67 07 00 00                               	jbe    0x10402e8e033b
    10402e8dfbd4:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    10402e8dfbd9:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    10402e8dfbdc:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    10402e8dfbe2:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    10402e8dfbe6:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    10402e8dfbea:	41 83 c9 03                                     	or     r9d,0x3
    10402e8dfbee:	44 0f af c9                                     	imul   r9d,ecx
    10402e8dfbf2:	44 03 cb                                        	add    r9d,ebx
    10402e8dfbf5:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8dfbf9:	44 03 c8                                        	add    r9d,eax
    10402e8dfbfc:	c4 81 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x30]
    10402e8dfc03:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8dfc08:	c4 81 7a 6f 74 08 20                            	vmovdqu xmm6,XMMWORD PTR [r8+r9*1+0x20]
    10402e8dfc0f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8dfc14:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8dfc18:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    10402e8dfc1f:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8dfc24:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8dfc29:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    10402e8dfc2f:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8dfc35:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8dfc3a:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    10402e8dfc3e:	41 81 e1 fc ff ff 0f                            	and    r9d,0xffffffc
    10402e8dfc45:	45 8b d9                                        	mov    r11d,r9d
    10402e8dfc48:	41 83 cb 02                                     	or     r11d,0x2
    10402e8dfc4c:	44 0f af d9                                     	imul   r11d,ecx
    10402e8dfc50:	44 03 db                                        	add    r11d,ebx
    10402e8dfc53:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8dfc57:	44 03 d8                                        	add    r11d,eax
    10402e8dfc5a:	c4 01 7a 6f 4c 18 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x30]
    10402e8dfc61:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8dfc67:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8dfc6c:	c4 01 7a 6f 54 18 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r11*1+0x20]
    10402e8dfc73:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8dfc79:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8dfc7e:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    10402e8dfc85:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8dfc8b:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8dfc90:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    10402e8dfc96:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8dfc9c:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8dfca1:	45 8b d9                                        	mov    r11d,r9d
    10402e8dfca4:	41 83 cb 01                                     	or     r11d,0x1
    10402e8dfca8:	44 0f af d9                                     	imul   r11d,ecx
    10402e8dfcac:	44 03 db                                        	add    r11d,ebx
    10402e8dfcaf:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8dfcb3:	44 03 d8                                        	add    r11d,eax
    10402e8dfcb6:	c4 01 7a 6f 6c 18 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r11*1+0x30]
    10402e8dfcbd:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8dfcc3:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8dfcc8:	c4 01 7a 6f 74 18 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r11*1+0x20]
    10402e8dfccf:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8dfcd5:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8dfcd9:	c4 81 7a 6f 4c 18 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r11*1+0x10]
    10402e8dfce0:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8dfce5:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8dfce9:	c4 81 7a 6f 14 18                               	vmovdqu xmm2,XMMWORD PTR [r8+r11*1]
    10402e8dfcef:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8dfcf4:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8dfcf8:	41 0f af c9                                     	imul   ecx,r9d
    10402e8dfcfc:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    10402e8dfd00:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8dfd04:	44 03 d8                                        	add    r11d,eax
    10402e8dfd07:	c4 81 7a 6f 5c 18 30                            	vmovdqu xmm3,XMMWORD PTR [r8+r11*1+0x30]
    10402e8dfd0e:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8dfd13:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8dfd17:	c4 81 7a 6f 64 18 20                            	vmovdqu xmm4,XMMWORD PTR [r8+r11*1+0x20]
    10402e8dfd1e:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    10402e8dfd23:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8dfd28:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8dfd2c:	c4 81 7a 6f 6c 18 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r11*1+0x10]
    10402e8dfd33:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    10402e8dfd38:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8dfd3d:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8dfd41:	c4 81 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+r11*1]
    10402e8dfd47:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    10402e8dfd4f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8dfd54:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8dfd58:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8dfd5d:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8dfd62:	c5 78 50 d8                                     	vmovmskps r11d,xmm0
    10402e8dfd66:	41 83 fb 0f                                     	cmp    r11d,0xf
    10402e8dfd6a:	0f 84 12 00 00 00                               	je     0x10402e8dfd82
    10402e8dfd70:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    10402e8dfd79:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8dfd7d:	e9 b9 05 00 00                                  	jmp    0x10402e8e033b
    10402e8dfd82:	4c 8b 15 93 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9793]        # 0x10402e8d951c
    10402e8dfd89:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dfd8e:	4c 8b 15 96 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9796]        # 0x10402e8d952b
    10402e8dfd95:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dfd9b:	4c 8b 15 99 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9799]        # 0x10402e8d953b
    10402e8dfda2:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8dfda7:	4c 8b 15 9c 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff979c]        # 0x10402e8d954a
    10402e8dfdae:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8dfdb4:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    10402e8dfdb9:	4c 8b 15 a2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a2]        # 0x10402e8d9562
    10402e8dfdc0:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dfdc5:	4c 8b 15 a5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a5]        # 0x10402e8d9571
    10402e8dfdcc:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dfdd2:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    10402e8dfdda:	4c 8b 15 a8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a8]        # 0x10402e8d9589
    10402e8dfde1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8dfde6:	4c 8b 15 ab 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ab]        # 0x10402e8d9598
    10402e8dfded:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8dfdf3:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8dfdfb:	4c 8b 15 ae 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ae]        # 0x10402e8d95b0
    10402e8dfe02:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dfe07:	4c 8b 15 b1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b1]        # 0x10402e8d95bf
    10402e8dfe0e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dfe14:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    10402e8dfe1c:	4c 8b 15 b4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b4]        # 0x10402e8d95d7
    10402e8dfe23:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8dfe28:	4c 8b 15 b7 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b7]        # 0x10402e8d95e6
    10402e8dfe2f:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8dfe35:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    10402e8dfe3d:	4c 8b 15 ba 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ba]        # 0x10402e8d95fe
    10402e8dfe44:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8dfe49:	4c 8b 15 bd 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97bd]        # 0x10402e8d960d
    10402e8dfe50:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8dfe56:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    10402e8dfe5e:	4c 8b 15 c0 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c0]        # 0x10402e8d9625
    10402e8dfe65:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dfe6a:	4c 8b 15 c3 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c3]        # 0x10402e8d9634
    10402e8dfe71:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dfe77:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    10402e8dfe7f:	4c 8b 15 c6 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c6]        # 0x10402e8d964c
    10402e8dfe86:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8dfe8b:	4c 8b 15 c9 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c9]        # 0x10402e8d965b
    10402e8dfe92:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8dfe98:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    10402e8dfea0:	4c 8b 15 cc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cc]        # 0x10402e8d9673
    10402e8dfea7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8dfeac:	4c 8b 15 cf 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cf]        # 0x10402e8d9682
    10402e8dfeb3:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8dfeb9:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    10402e8dfec1:	4c 8b 15 d2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d2]        # 0x10402e8d969a
    10402e8dfec8:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8dfecd:	4c 8b 15 d5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d5]        # 0x10402e8d96a9
    10402e8dfed4:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8dfeda:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    10402e8dfee2:	4c 8b 15 d8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d8]        # 0x10402e8d96c1
    10402e8dfee9:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8dfeee:	4c 8b 15 db 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97db]        # 0x10402e8d96d0
    10402e8dfef5:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8dfefb:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    10402e8dff03:	4c 8b 15 de 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97de]        # 0x10402e8d96e8
    10402e8dff0a:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8dff0f:	4c 8b 15 e1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e1]        # 0x10402e8d96f7
    10402e8dff16:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8dff1c:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    10402e8dff24:	4c 8b 15 e4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e4]        # 0x10402e8d970f
    10402e8dff2b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8dff30:	4c 8b 15 e7 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e7]        # 0x10402e8d971e
    10402e8dff37:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8dff3d:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    10402e8dff45:	4c 8b 15 ea 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ea]        # 0x10402e8d9736
    10402e8dff4c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8dff51:	4c 8b 15 ed 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ed]        # 0x10402e8d9745
    10402e8dff58:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8dff5e:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    10402e8dff66:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8dff6b:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8dff71:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8dff77:	4c 8b 15 f0 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97f0]        # 0x10402e8d976e
    10402e8dff7e:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8dff84:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    10402e8dff8c:	4c 8b 15 f3 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97f3]        # 0x10402e8d9786
    10402e8dff93:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8dff98:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8dff9d:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    10402e8dffa5:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8dffaa:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8dffb0:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8dffb5:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8dffba:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8dffbe:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8dffc3:	4c 8b 15 bc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97bc]        # 0x10402e8d9786
    10402e8dffca:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8dffcf:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8dffd4:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8dffd9:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8dffdd:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8dffe2:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8dffe7:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8dffec:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8dfff0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8dfff5:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8dfff9:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8dfffd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0002:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8e0007:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8e000c:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e0010:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0015:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e0019:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8e001d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0022:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8e0027:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e002b:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8e002f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0034:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e0038:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8e003c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0041:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8e0046:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e004a:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8e004e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0053:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e0057:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8e005b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0060:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8e0065:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e0069:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8e006d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0072:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e0076:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8e007a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e007f:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8e0085:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    10402e8e008d:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e0091:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8e0095:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e009a:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e009e:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8e00a2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e00a7:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8e00af:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e00b4:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8e00bc:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e00c0:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e00c4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e00c9:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e00cd:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e00d1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e00d6:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8e00de:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e00e3:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    10402e8e00eb:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e00ef:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e00f3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e00f8:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e00fc:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e0100:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0105:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8e010d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e0112:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8e011a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e011e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e0122:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0127:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e012b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e012f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0134:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8e013c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e0141:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8e0149:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e014d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e0151:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0156:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e015a:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e015e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0163:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8e016b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e0170:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8e0178:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e017c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e0180:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0185:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e0189:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e018d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e0192:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8e019a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e019f:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8e01a7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e01ab:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e01af:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e01b4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e01b8:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e01bc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e01c1:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8e01c9:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e01ce:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8e01d6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e01da:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e01de:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e01e3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e01e7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e01eb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e01f0:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8e01f5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e01fa:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8e0202:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e0206:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e020a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e020f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e0213:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e0217:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e021c:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    10402e8e0221:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e0226:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    10402e8e022b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e022f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e0233:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e0238:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e0242:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e0246:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8e024a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e024f:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    10402e8e0259:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8e025d:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8e0261:	45 33 db                                        	xor    r11d,r11d
    10402e8e0264:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e0268:	41 0f 97 c3                                     	seta   r11b
    10402e8e026c:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    10402e8e0272:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    10402e8e027a:	0b d8                                           	or     ebx,eax
    10402e8e027c:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    10402e8e0282:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8e0287:	b9 02 00 00 00                                  	mov    ecx,0x2
    10402e8e028c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0290:	44 0f 47 d9                                     	cmova  r11d,ecx
    10402e8e0294:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    10402e8e029c:	0b d8                                           	or     ebx,eax
    10402e8e029e:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    10402e8e02a4:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8e02a9:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e02ad:	44 0f 47 de                                     	cmova  r11d,esi
    10402e8e02b1:	41 c1 e3 02                                     	shl    r11d,0x2
    10402e8e02b5:	41 0b c3                                        	or     eax,r11d
    10402e8e02b8:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8e02be:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    10402e8e02c5:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    10402e8e02cb:	44 0b d8                                        	or     r11d,eax
    10402e8e02ce:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e02d2:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    10402e8e02d7:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e02db:	e9 5b 00 00 00                                  	jmp    0x10402e8e033b
    10402e8e02e0:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    10402e8e02e6:	51                                              	push   rcx
    10402e8e02e7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e02eb:	8b c8                                           	mov    ecx,eax
    10402e8e02ed:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e02f0:	e8 7b 5f eb ff                                  	call   0x10402e796270
    10402e8e02f5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e02f8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e02fc:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8e0300:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e0304:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    10402e8e030b:	e9 2b 00 00 00                                  	jmp    0x10402e8e033b
    10402e8e0310:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    10402e8e0316:	51                                              	push   rcx
    10402e8e0317:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e031b:	8b c8                                           	mov    ecx,eax
    10402e8e031d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e0320:	e8 33 5f eb ff                                  	call   0x10402e796258
    10402e8e0325:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e0328:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e032c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8e0330:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e0334:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    10402e8e033b:	41 83 c4 01                                     	add    r12d,0x1
    10402e8e033f:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    10402e8e0344:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    10402e8e0349:	0f 8f 71 e2 ff ff                               	jg     0x10402e8de5c0
    10402e8e034f:	44 8b 9d b8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x248]
    10402e8e0356:	45 85 db                                        	test   r11d,r11d
    10402e8e0359:	0f 85 08 00 00 00                               	jne    0x10402e8e0367
    10402e8e035f:	44 8b cf                                        	mov    r9d,edi
    10402e8e0362:	e9 2b 00 00 00                                  	jmp    0x10402e8e0392
    10402e8e0367:	44 8b 85 70 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x390]
    10402e8e036e:	45 85 c0                                        	test   r8d,r8d
    10402e8e0371:	41 0f 94 c0                                     	sete   r8b
    10402e8e0375:	45 0f b6 c0                                     	movzx  r8d,r8b
    10402e8e0379:	43 8d 04 00                                     	lea    eax,[r8+r8*1]
    10402e8e037d:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    10402e8e0383:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    10402e8e0387:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    10402e8e038b:	48 8b e5                                        	mov    rsp,rbp
    10402e8e038e:	5d                                              	pop    rbp
    10402e8e038f:	c2 40 00                                        	ret    0x40
    10402e8e0392:	45 8d 81 a0 02 00 00                            	lea    r8d,[r9+0x2a0]
    10402e8e0399:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    10402e8e039d:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    10402e8e03a1:	b8 01 00 00 00                                  	mov    eax,0x1
    10402e8e03a6:	48 8b e5                                        	mov    rsp,rbp
    10402e8e03a9:	5d                                              	pop    rbp
    10402e8e03aa:	c2 40 00                                        	ret    0x40
    10402e8e03ad:	41 b8 10 00 00 00                               	mov    r8d,0x10
    10402e8e03b3:	41 d1 f8                                        	sar    r8d,1
    10402e8e03b6:	4d 63 c0                                        	movsxd r8,r8d
    10402e8e03b9:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    10402e8e03c0:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    10402e8e03c7:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    10402e8e03ce:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    10402e8e03d3:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    10402e8e03db:	49 8b c0                                        	mov    rax,r8
    10402e8e03de:	e8 4d 8b eb ff                                  	call   0x10402e798f30
    10402e8e03e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e03e7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e03ea:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    10402e8e03f1:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    10402e8e03f7:	8b bd 68 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x198]
    10402e8e03fd:	8b 9d d0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x230]
    10402e8e0403:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    10402e8e0408:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    10402e8e0410:	e9 94 5d ff ff                                  	jmp    0x10402e8d61a9
    10402e8e0415:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8e0419:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    10402e8e041e:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    10402e8e0426:	4c 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r15
    10402e8e042d:	48 89 8d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rcx
    10402e8e0434:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    10402e8e043b:	c5 fb 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm5
    10402e8e0443:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    10402e8e044a:	e8 f1 8a eb ff                                  	call   0x10402e798f40
    10402e8e044f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e0453:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e0457:	45 33 e4                                        	xor    r12d,r12d
    10402e8e045a:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    10402e8e045f:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    10402e8e0467:	44 8b bd f8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x208]
    10402e8e046e:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    10402e8e0474:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    10402e8e047a:	c5 fb 10 ad 38 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1c8]
    10402e8e0482:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e0488:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8e048f:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8e0492:	8b 9d e0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x220]
    10402e8e0498:	e9 b7 5f ff ff                                  	jmp    0x10402e8d6454
    10402e8e049d:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8e04a1:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    10402e8e04a6:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    10402e8e04ae:	4c 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r15
    10402e8e04b5:	48 89 8d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rcx
    10402e8e04bc:	48 89 b5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rsi
    10402e8e04c3:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    10402e8e04ca:	48 89 95 f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdx
    10402e8e04d1:	c5 fb 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm5
    10402e8e04d9:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    10402e8e04e0:	48 89 9d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rbx
    10402e8e04e7:	e8 54 8a eb ff                                  	call   0x10402e798f40
    10402e8e04ec:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e04f0:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e04f4:	45 33 e4                                        	xor    r12d,r12d
    10402e8e04f7:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    10402e8e04fc:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    10402e8e0504:	44 8b bd f8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x208]
    10402e8e050b:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    10402e8e0511:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    10402e8e0517:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    10402e8e051d:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    10402e8e0523:	c5 fb 10 ad 38 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1c8]
    10402e8e052b:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e0531:	8b 9d 10 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1f0]
    10402e8e0537:	e9 64 60 ff ff                                  	jmp    0x10402e8d65a0
    10402e8e053c:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    10402e8e0540:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    10402e8e0547:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    10402e8e054c:	c5 fb 11 ad f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm5
    10402e8e0554:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    10402e8e0559:	c5 fb 11 b5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm6
    10402e8e0561:	e8 da 89 eb ff                                  	call   0x10402e798f40
    10402e8e0566:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e056a:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    10402e8e056d:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    10402e8e0574:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    10402e8e0579:	c5 fb 10 ad f0 fb ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x410]
    10402e8e0581:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    10402e8e0586:	c5 fb 10 b5 78 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x188]
    10402e8e058e:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8e0596:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    10402e8e059e:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    10402e8e05a5:	4c 8b a5 90 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x470]
    10402e8e05ac:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8e05b4:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    10402e8e05bc:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8e05c4:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    10402e8e05c7:	44 8b bd a0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x460]
    10402e8e05ce:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    10402e8e05d4:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    10402e8e05d9:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    10402e8e05df:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    10402e8e05e5:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    10402e8e05ec:	e9 2c 75 ff ff                                  	jmp    0x10402e8d7b1d
    10402e8e05f1:	4c 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r11
    10402e8e05f8:	48 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rbx
    10402e8e05ff:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    10402e8e0606:	e8 35 89 eb ff                                  	call   0x10402e798f40
    10402e8e060b:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e060f:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    10402e8e0617:	44 8b 9d 50 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3b0]
    10402e8e061e:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    10402e8e0625:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    10402e8e062c:	4c 8b 85 20 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x3e0]
    10402e8e0633:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    10402e8e063b:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    10402e8e0643:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8e064b:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    10402e8e0653:	48 8b bd f0 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x210]
    10402e8e065a:	48 8b b5 30 fb ff ff                            	mov    rsi,QWORD PTR [rbp-0x4d0]
    10402e8e0661:	48 8b 8d e0 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x320]
    10402e8e0668:	4c 8b 8d d8 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x528]
    10402e8e066f:	48 8b 85 90 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x470]
    10402e8e0676:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8e067e:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    10402e8e0686:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    10402e8e068e:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    10402e8e0696:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8e069e:	e9 68 7b ff ff                                  	jmp    0x10402e8d820b
    10402e8e06a3:	e8 98 88 eb ff                                  	call   0x10402e798f40
    10402e8e06a8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e06ab:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e06af:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    10402e8e06b6:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    10402e8e06bc:	8b 9d f8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x308]
    10402e8e06c2:	8b 95 f0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x310]
    10402e8e06c8:	c5 78 10 a5 c0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x440]
    10402e8e06d0:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8e06d8:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    10402e8e06df:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    10402e8e06e7:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    10402e8e06ef:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8e06f7:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    10402e8e06ff:	44 8b 9d 60 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1a0]
    10402e8e0706:	e9 bf 9f ff ff                                  	jmp    0x10402e8da6ca
    10402e8e070b:	e8 30 88 eb ff                                  	call   0x10402e798f40
    10402e8e0710:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e0713:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e0717:	8b 8d c0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x340]
    10402e8e071d:	44 8b 9d 48 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4b8]
    10402e8e0724:	e9 f6 af ff ff                                  	jmp    0x10402e8db71f
    10402e8e0729:	e8 12 88 eb ff                                  	call   0x10402e798f40
    10402e8e072e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e0731:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e0735:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8e073b:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    10402e8e0742:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    10402e8e0748:	e9 19 c6 ff ff                                  	jmp    0x10402e8dcd66
    10402e8e074d:	e8 ee 87 eb ff                                  	call   0x10402e798f40
    10402e8e0752:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e0755:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e0759:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8e075f:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    10402e8e0763:	44 8b a5 b0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x250]
    10402e8e076a:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    10402e8e0771:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    10402e8e0778:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    10402e8e0780:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    10402e8e0788:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    10402e8e0790:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    10402e8e0796:	e9 07 ca ff ff                                  	jmp    0x10402e8dd1a2
    10402e8e079b:	e8 a0 87 eb ff                                  	call   0x10402e798f40
    10402e8e07a0:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e07a3:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e07a7:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    10402e8e07ab:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    10402e8e07af:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    10402e8e07b3:	48 8b 85 60 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a0]
    10402e8e07ba:	48 8b 9d 58 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a8]
    10402e8e07c1:	4c 8b bd 50 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2b0]
    10402e8e07c8:	c5 fb 10 ad e8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x318]
    10402e8e07d0:	8b b5 d8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x328]
    10402e8e07d6:	44 8b a5 d0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x330]
    10402e8e07dd:	e9 21 de ff ff                                  	jmp    0x10402e8de603
    10402e8e07e2:	e8 59 87 eb ff                                  	call   0x10402e798f40
    10402e8e07e7:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e07ea:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e07ee:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    10402e8e07f5:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    10402e8e07fc:	4c 8b a5 18 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1e8]
    10402e8e0803:	8b 8d 10 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1f0]
    10402e8e0809:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    10402e8e080f:	8b 85 f8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x308]
    10402e8e0815:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    10402e8e081c:	e9 60 e0 ff ff                                  	jmp    0x10402e8de881
    10402e8e0821:	e8 3a 84 eb ff                                  	call   0x10402e798c60
    10402e8e0826:	e8 35 84 eb ff                                  	call   0x10402e798c60
    10402e8e082b:	e8 30 84 eb ff                                  	call   0x10402e798c60
    10402e8e0830:	e8 2b 84 eb ff                                  	call   0x10402e798c60
    10402e8e0835:	e8 26 84 eb ff                                  	call   0x10402e798c60
    10402e8e083a:	e8 21 84 eb ff                                  	call   0x10402e798c60
    10402e8e083f:	e8 1c 84 eb ff                                  	call   0x10402e798c60
    10402e8e0844:	e8 17 84 eb ff                                  	call   0x10402e798c60
    10402e8e0849:	e8 12 84 eb ff                                  	call   0x10402e798c60
    10402e8e084e:	e8 0d 84 eb ff                                  	call   0x10402e798c60
    10402e8e0853:	e8 08 84 eb ff                                  	call   0x10402e798c60
    10402e8e0858:	e8 03 84 eb ff                                  	call   0x10402e798c60
    10402e8e085d:	90                                              	nop
    10402e8e085e:	66 90                                           	xchg   ax,ax
    10402e8e0860:	6b 86 8d 2e 40 10 00                            	imul   eax,DWORD PTR [rsi+0x10402e8d],0x0
    10402e8e0867:	00 65 86                                        	add    BYTE PTR [rbp-0x7a],ah
    10402e8e086a:	8d 2e                                           	lea    ebp,[rsi]
    10402e8e086c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8e086f:	00 5b 86                                        	add    BYTE PTR [rbx-0x7a],bl
    10402e8e0872:	8d 2e                                           	lea    ebp,[rsi]
    10402e8e0874:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8e0877:	00 50 86                                        	add    BYTE PTR [rax-0x7a],dl
    10402e8e087a:	8d 2e                                           	lea    ebp,[rsi]
    10402e8e087c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8e087f:	00 46 86                                        	add    BYTE PTR [rsi-0x7a],al
    10402e8e0882:	8d 2e                                           	lea    ebp,[rsi]
    10402e8e0884:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8e0887:	00 3c 86                                        	add    BYTE PTR [rsi+rax*4],bh
    10402e8e088a:	8d 2e                                           	lea    ebp,[rsi]
    10402e8e088c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8e088f:	00 32                                           	add    BYTE PTR [rdx],dh
    10402e8e0891:	86 8d 2e 40 10 00                               	xchg   BYTE PTR [rbp+0x10402e],cl
    10402e8e0897:	00 a7 00 00 00 1c                               	add    BYTE PTR [rdi+0x1c000000],ah
    10402e8e089d:	00 00                                           	add    BYTE PTR [rax],al
    10402e8e089f:	00 a6 50 ef 04 05                               	add    BYTE PTR [rsi+0x504ef50],ah
    10402e8e08a5:	bc f4 01 ef 04                                  	mov    esp,0x4ef01f4
    10402e8e08aa:	05 6c ef 04 05                                  	add    eax,0x504ef6c
    10402e8e08af:	d7                                              	xlat   BYTE PTR ds:[rbx]
    10402e8e08b0:	07                                              	(bad)
    10402e8e08b1:	ef                                              	out    dx,eax
    10402e8e08b2:	04 05                                           	add    al,0x5
	...
