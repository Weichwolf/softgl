
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_raster_triangle_msaa2-turbofan.bin:     file format binary


Disassembly of section .data:

000023a8d35580c0 <.data>:
    23a8d35580c0:	55                                              	push   rbp
    23a8d35580c1:	48 8b ec                                        	mov    rbp,rsp
    23a8d35580c4:	6a 30                                           	push   0x30
    23a8d35580c6:	56                                              	push   rsi
    23a8d35580c7:	48 81 ec 00 04 00 00                            	sub    rsp,0x400
    23a8d35580ce:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d35580d2:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    23a8d35580d6:	8b f9                                           	mov    edi,ecx
    23a8d35580d8:	4c 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r9
    23a8d35580df:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    23a8d35580e3:	0f 86 20 87 00 00                               	jbe    0x23a8d3560809
    23a8d35580e9:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    23a8d35580ed:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    23a8d35580f1:	4d 0b de                                        	or     r11,r14
    23a8d35580f4:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    23a8d35580f8:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    23a8d35580ff:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    23a8d3558103:	44 8b f8                                        	mov    r15d,eax
    23a8d3558106:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    23a8d355810b:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    23a8d355810f:	48 89 8d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rcx
    23a8d3558116:	83 f9 02                                        	cmp    ecx,0x2
    23a8d3558119:	0f 84 26 00 00 00                               	je     0x23a8d3558145
    23a8d355811f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d3558123:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    23a8d3558127:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d355812b:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    23a8d3558132:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    23a8d3558139:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    23a8d3558140:	e9 e7 03 00 00                                  	jmp    0x23a8d355852c
    23a8d3558145:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    23a8d355814a:	85 f6                                           	test   esi,esi
    23a8d355814c:	74 d1                                           	je     0x23a8d355811f
    23a8d355814e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    23a8d3558151:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    23a8d3558155:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    23a8d355815a:	74 c3                                           	je     0x23a8d355811f
    23a8d355815c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    23a8d3558161:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    23a8d3558167:	74 b6                                           	je     0x23a8d355811f
    23a8d3558169:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    23a8d3558171:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    23a8d355817a:	75 a3                                           	jne    0x23a8d355811f
    23a8d355817c:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    23a8d3558181:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    23a8d3558188:	33 c9                                           	xor    ecx,ecx
    23a8d355818a:	45 85 c9                                        	test   r9d,r9d
    23a8d355818d:	0f 94 c1                                        	sete   cl
    23a8d3558190:	41 83 f9 02                                     	cmp    r9d,0x2
    23a8d3558194:	41 0f 94 c1                                     	sete   r9b
    23a8d3558198:	45 0f b6 c9                                     	movzx  r9d,r9b
    23a8d355819c:	44 0b c9                                        	or     r9d,ecx
    23a8d355819f:	0f 84 7a ff ff ff                               	je     0x23a8d355811f
    23a8d35581a5:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    23a8d35581a9:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    23a8d35581af:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    23a8d35581b5:	0f 87 64 ff ff ff                               	ja     0x23a8d355811f
    23a8d35581bb:	8b cb                                           	mov    ecx,ebx
    23a8d35581bd:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    23a8d35581c4:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d35581c8:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    23a8d35581cd:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    23a8d35581d2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d35581d6:	0f 82 43 ff ff ff                               	jb     0x23a8d355811f
    23a8d35581dc:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d35581e0:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    23a8d35581e4:	0f 83 22 00 00 00                               	jae    0x23a8d355820c
    23a8d35581ea:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d35581ee:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    23a8d35581f2:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    23a8d35581f9:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    23a8d3558200:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    23a8d3558207:	e9 20 03 00 00                                  	jmp    0x23a8d355852c
    23a8d355820c:	8b cf                                           	mov    ecx,edi
    23a8d355820e:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    23a8d3558215:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    23a8d355821a:	72 ce                                           	jb     0x23a8d35581ea
    23a8d355821c:	8b ca                                           	mov    ecx,edx
    23a8d355821e:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    23a8d3558225:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    23a8d3558229:	72 bf                                           	jb     0x23a8d35581ea
    23a8d355822b:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    23a8d3558230:	72 b8                                           	jb     0x23a8d35581ea
    23a8d3558232:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d3558236:	72 b2                                           	jb     0x23a8d35581ea
    23a8d3558238:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    23a8d355823b:	c1 f9 02                                        	sar    ecx,0x2
    23a8d355823e:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    23a8d3558242:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    23a8d3558246:	41 c1 ff 02                                     	sar    r15d,0x2
    23a8d355824a:	44 3b f9                                        	cmp    r15d,ecx
    23a8d355824d:	0f 8c c6 02 00 00                               	jl     0x23a8d3558519
    23a8d3558253:	49 ba 50 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32850
    23a8d355825d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    23a8d3558262:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    23a8d3558266:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    23a8d355826c:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    23a8d3558271:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    23a8d3558276:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d355827a:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    23a8d355827e:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    23a8d3558285:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    23a8d355828c:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    23a8d3558293:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    23a8d3558298:	0f 87 05 00 00 00                               	ja     0x23a8d35582a3
    23a8d355829e:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    23a8d35582a3:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    23a8d35582a7:	0f 87 05 00 00 00                               	ja     0x23a8d35582b2
    23a8d35582ad:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    23a8d35582b2:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    23a8d35582b6:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    23a8d35582ba:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d35582be:	0f 87 04 00 00 00                               	ja     0x23a8d35582c8
    23a8d35582c4:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d35582c8:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    23a8d35582cc:	0f 87 09 00 00 00                               	ja     0x23a8d35582db
    23a8d35582d2:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    23a8d35582d6:	e9 04 00 00 00                                  	jmp    0x23a8d35582df
    23a8d35582db:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    23a8d35582df:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    23a8d35582e3:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    23a8d35582e7:	c1 fa 02                                        	sar    edx,0x2
    23a8d35582ea:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d35582ee:	41 c1 f9 02                                     	sar    r9d,0x2
    23a8d35582f2:	41 8b d9                                        	mov    ebx,r9d
    23a8d35582f5:	44 3b ca                                        	cmp    r9d,edx
    23a8d35582f8:	0f 4c da                                        	cmovl  ebx,edx
    23a8d35582fb:	8d 7e c4                                        	lea    edi,[rsi-0x3c]
    23a8d35582fe:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    23a8d3558302:	83 ee 40                                        	sub    esi,0x40
    23a8d3558305:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    23a8d3558309:	45 33 db                                        	xor    r11d,r11d
    23a8d355830c:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3558311:	41 0f 94 c3                                     	sete   r11b
    23a8d3558315:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d3558319:	48 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdi
    23a8d3558320:	48 89 b5 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rsi
    23a8d3558327:	4c 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],r11
    23a8d355832b:	e9 1e 00 00 00                                  	jmp    0x23a8d355834e
    23a8d3558330:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3558339:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    23a8d3558340:	8b cf                                           	mov    ecx,edi
    23a8d3558342:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    23a8d3558348:	8b bd 38 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc8]
    23a8d355834e:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3558353:	0f 85 1e 85 00 00                               	jne    0x23a8d3560877
    23a8d3558359:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    23a8d355835d:	0f 8f 62 01 00 00                               	jg     0x23a8d35584c5
    23a8d3558363:	44 8b e7                                        	mov    r12d,edi
    23a8d3558366:	44 0f af e1                                     	imul   r12d,ecx
    23a8d355836a:	41 c1 e4 04                                     	shl    r12d,0x4
    23a8d355836e:	44 03 e6                                        	add    r12d,esi
    23a8d3558371:	41 8b f9                                        	mov    edi,r9d
    23a8d3558374:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355837d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    23a8d3558380:	8b d7                                           	mov    edx,edi
    23a8d3558382:	c1 e2 04                                        	shl    edx,0x4
    23a8d3558385:	41 03 d4                                        	add    edx,r12d
    23a8d3558388:	49 8b 34 10                                     	mov    rsi,QWORD PTR [r8+rdx*1]
    23a8d355838c:	be ff ff ff ff                                  	mov    esi,0xffffffff
    23a8d3558391:	49 39 34 10                                     	cmp    QWORD PTR [r8+rdx*1],rsi
    23a8d3558395:	0f 85 3b 01 00 00                               	jne    0x23a8d35584d6
    23a8d355839b:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    23a8d35583a2:	83 7d b8 00                                     	cmp    DWORD PTR [rbp-0x48],0x0
    23a8d35583a6:	0f 85 0f 00 00 00                               	jne    0x23a8d35583bb
    23a8d35583ac:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d35583b0:	0f 83 20 01 00 00                               	jae    0x23a8d35584d6
    23a8d35583b6:	e9 0a 00 00 00                                  	jmp    0x23a8d35583c5
    23a8d35583bb:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d35583bf:	0f 87 11 01 00 00                               	ja     0x23a8d35584d6
    23a8d35583c5:	8d 57 01                                        	lea    edx,[rdi+0x1]
    23a8d35583c8:	3b fb                                           	cmp    edi,ebx
    23a8d35583ca:	0f 84 f5 00 00 00                               	je     0x23a8d35584c5
    23a8d35583d0:	8b fa                                           	mov    edi,edx
    23a8d35583d2:	c1 e7 04                                        	shl    edi,0x4
    23a8d35583d5:	41 03 fc                                        	add    edi,r12d
    23a8d35583d8:	4d 8b 1c 38                                     	mov    r11,QWORD PTR [r8+rdi*1]
    23a8d35583dc:	49 39 34 38                                     	cmp    QWORD PTR [r8+rdi*1],rsi
    23a8d35583e0:	0f 85 f0 00 00 00                               	jne    0x23a8d35584d6
    23a8d35583e6:	c4 c1 7a 10 74 38 08                            	vmovss xmm6,DWORD PTR [r8+rdi*1+0x8]
    23a8d35583ed:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d35583f2:	0f 84 0f 00 00 00                               	je     0x23a8d3558407
    23a8d35583f8:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d35583fc:	0f 83 d4 00 00 00                               	jae    0x23a8d35584d6
    23a8d3558402:	e9 0a 00 00 00                                  	jmp    0x23a8d3558411
    23a8d3558407:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355840b:	0f 87 c5 00 00 00                               	ja     0x23a8d35584d6
    23a8d3558411:	8d 7a 01                                        	lea    edi,[rdx+0x1]
    23a8d3558414:	3b d3                                           	cmp    edx,ebx
    23a8d3558416:	0f 84 a9 00 00 00                               	je     0x23a8d35584c5
    23a8d355841c:	44 8b df                                        	mov    r11d,edi
    23a8d355841f:	41 c1 e3 04                                     	shl    r11d,0x4
    23a8d3558423:	45 03 dc                                        	add    r11d,r12d
    23a8d3558426:	4b 8b 14 18                                     	mov    rdx,QWORD PTR [r8+r11*1]
    23a8d355842a:	4b 39 34 18                                     	cmp    QWORD PTR [r8+r11*1],rsi
    23a8d355842e:	0f 85 a2 00 00 00                               	jne    0x23a8d35584d6
    23a8d3558434:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    23a8d355843b:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3558440:	0f 84 0f 00 00 00                               	je     0x23a8d3558455
    23a8d3558446:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355844a:	0f 83 86 00 00 00                               	jae    0x23a8d35584d6
    23a8d3558450:	e9 0a 00 00 00                                  	jmp    0x23a8d355845f
    23a8d3558455:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3558459:	0f 87 77 00 00 00                               	ja     0x23a8d35584d6
    23a8d355845f:	44 8d 5f 01                                     	lea    r11d,[rdi+0x1]
    23a8d3558463:	3b fb                                           	cmp    edi,ebx
    23a8d3558465:	0f 84 5a 00 00 00                               	je     0x23a8d35584c5
    23a8d355846b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3558470:	0f 85 90 84 00 00                               	jne    0x23a8d3560906
    23a8d3558476:	41 8b fb                                        	mov    edi,r11d
    23a8d3558479:	c1 e7 04                                        	shl    edi,0x4
    23a8d355847c:	41 03 fc                                        	add    edi,r12d
    23a8d355847f:	49 8b 14 38                                     	mov    rdx,QWORD PTR [r8+rdi*1]
    23a8d3558483:	49 39 34 38                                     	cmp    QWORD PTR [r8+rdi*1],rsi
    23a8d3558487:	0f 85 49 00 00 00                               	jne    0x23a8d35584d6
    23a8d355848d:	c4 c1 7a 10 74 38 08                            	vmovss xmm6,DWORD PTR [r8+rdi*1+0x8]
    23a8d3558494:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3558499:	0f 84 0f 00 00 00                               	je     0x23a8d35584ae
    23a8d355849f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d35584a3:	0f 83 2d 00 00 00                               	jae    0x23a8d35584d6
    23a8d35584a9:	e9 0a 00 00 00                                  	jmp    0x23a8d35584b8
    23a8d35584ae:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d35584b2:	0f 87 1e 00 00 00                               	ja     0x23a8d35584d6
    23a8d35584b8:	41 8d 7b 01                                     	lea    edi,[r11+0x1]
    23a8d35584bc:	41 3b db                                        	cmp    ebx,r11d
    23a8d35584bf:	0f 85 bb fe ff ff                               	jne    0x23a8d3558380
    23a8d35584c5:	8d 79 01                                        	lea    edi,[rcx+0x1]
    23a8d35584c8:	44 3b f9                                        	cmp    r15d,ecx
    23a8d35584cb:	0f 85 6f fe ff ff                               	jne    0x23a8d3558340
    23a8d35584d1:	e9 23 00 00 00                                  	jmp    0x23a8d35584f9
    23a8d35584d6:	8b 9d f0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x310]
    23a8d35584dc:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    23a8d35584e0:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    23a8d35584e4:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    23a8d35584e8:	8b 95 58 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3a8]
    23a8d35584ee:	8b bd 98 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x368]
    23a8d35584f4:	e9 33 00 00 00                                  	jmp    0x23a8d355852c
    23a8d35584f9:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    23a8d35584fd:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    23a8d3558505:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    23a8d3558509:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    23a8d355850d:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    23a8d3558512:	48 8b e5                                        	mov    rsp,rbp
    23a8d3558515:	5d                                              	pop    rbp
    23a8d3558516:	c2 40 00                                        	ret    0x40
    23a8d3558519:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    23a8d3558521:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    23a8d3558525:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    23a8d355852a:	eb e6                                           	jmp    0x23a8d3558512
    23a8d355852c:	8b c7                                           	mov    eax,edi
    23a8d355852e:	c4 c1 7a 10 6c 00 14                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x14]
    23a8d3558535:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    23a8d355853b:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d3558540:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3558544:	4c 8b 15 0a fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffd0a]        # 0x23a8d3558255
    23a8d355854b:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3558550:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d3558554:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    23a8d355855b:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    23a8d3558561:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    23a8d3558566:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d355856b:	0f 87 0d 00 00 00                               	ja     0x23a8d355857e
    23a8d3558571:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d3558576:	48 8b f1                                        	mov    rsi,rcx
    23a8d3558579:	e9 21 00 00 00                                  	jmp    0x23a8d355859f
    23a8d355857e:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3558584:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    23a8d3558588:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    23a8d355858c:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d3558591:	0f 8a 22 87 00 00                               	jp     0x23a8d3560cb9
    23a8d3558597:	0f 85 1c 87 00 00                               	jne    0x23a8d3560cb9
    23a8d355859d:	8b f1                                           	mov    esi,ecx
    23a8d355859f:	44 8b cb                                        	mov    r9d,ebx
    23a8d35585a2:	c4 81 7a 10 6c 08 14                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x14]
    23a8d35585a9:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d35585ad:	4c 8b 15 a1 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffca1]        # 0x23a8d3558255
    23a8d35585b4:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d35585b9:	48 89 b5 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rsi
    23a8d35585c0:	4c 89 8d f0 fe ff ff                            	mov    QWORD PTR [rbp-0x110],r9
    23a8d35585c7:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d35585cc:	0f 87 0a 00 00 00                               	ja     0x23a8d35585dc
    23a8d35585d2:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d35585d7:	e9 1f 00 00 00                                  	jmp    0x23a8d35585fb
    23a8d35585dc:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d35585e2:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    23a8d35585e6:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    23a8d35585ea:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d35585ef:	0f 8a bf 86 00 00                               	jp     0x23a8d3560cb4
    23a8d35585f5:	0f 85 b9 86 00 00                               	jne    0x23a8d3560cb4
    23a8d35585fb:	44 8b d9                                        	mov    r11d,ecx
    23a8d35585fe:	44 2b de                                        	sub    r11d,esi
    23a8d3558601:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    23a8d3558608:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d355860c:	4c 8b 15 42 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc42]        # 0x23a8d3558255
    23a8d3558613:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3558618:	48 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rcx
    23a8d355861f:	4c 89 9d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],r11
    23a8d3558626:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d355862b:	0f 87 10 00 00 00                               	ja     0x23a8d3558641
    23a8d3558631:	48 c7 85 50 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xb0],0xffffffff80000000
    23a8d355863c:	e9 26 00 00 00                                  	jmp    0x23a8d3558667
    23a8d3558641:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3558647:	c5 fa 2c c5                                     	vcvttss2si eax,xmm5
    23a8d355864b:	c5 02 2a c0                                     	vcvtsi2ss xmm8,xmm15,eax
    23a8d355864f:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d3558654:	0f 8a 55 86 00 00                               	jp     0x23a8d3560caf
    23a8d355865a:	0f 85 4f 86 00 00                               	jne    0x23a8d3560caf
    23a8d3558660:	48 89 85 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rax
    23a8d3558667:	49 63 c3                                        	movsxd rax,r11d
    23a8d355866a:	c4 81 7a 10 6c 08 10                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x10]
    23a8d3558671:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3558675:	4c 8b 15 d9 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbd9]        # 0x23a8d3558255
    23a8d355867c:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3558681:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    23a8d3558685:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d355868a:	0f 87 10 00 00 00                               	ja     0x23a8d35586a0
    23a8d3558690:	48 c7 85 60 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xa0],0xffffffff80000000
    23a8d355869b:	e9 27 00 00 00                                  	jmp    0x23a8d35586c7
    23a8d35586a0:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d35586a6:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    23a8d35586aa:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    23a8d35586af:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d35586b4:	0f 8a f0 85 00 00                               	jp     0x23a8d3560caa
    23a8d35586ba:	0f 85 ea 85 00 00                               	jne    0x23a8d3560caa
    23a8d35586c0:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    23a8d35586c7:	44 8b da                                        	mov    r11d,edx
    23a8d35586ca:	c4 81 7a 10 6c 18 10                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x10]
    23a8d35586d1:	c4 01 7a 10 44 18 14                            	vmovss xmm8,DWORD PTR [r8+r11*1+0x14]
    23a8d35586d8:	4c 89 9d f8 fe ff ff                            	mov    QWORD PTR [rbp-0x108],r11
    23a8d35586df:	47 8b 9c 38 8c 00 00 00                         	mov    r11d,DWORD PTR [r8+r15*1+0x8c]
    23a8d35586e7:	41 b9 c0 00 00 00                               	mov    r9d,0xc0
    23a8d35586ed:	ba 80 00 00 00                                  	mov    edx,0x80
    23a8d35586f2:	45 85 db                                        	test   r11d,r11d
    23a8d35586f5:	49 0f 45 d1                                     	cmovne rdx,r9
    23a8d35586f9:	44 8b 8d 60 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xa0]
    23a8d3558700:	44 2b 8d 50 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xb0]
    23a8d3558707:	4d 63 c9                                        	movsxd r9,r9d
    23a8d355870a:	49 8b f9                                        	mov    rdi,r9
    23a8d355870d:	48 2b f8                                        	sub    rdi,rax
    23a8d3558710:	48 8b da                                        	mov    rbx,rdx
    23a8d3558713:	48 0f af df                                     	imul   rbx,rdi
    23a8d3558717:	4b 89 9c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rbx
    23a8d355871f:	41 bf 07 00 00 00                               	mov    r15d,0x7
    23a8d3558725:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    23a8d3558729:	bf 06 00 00 00                                  	mov    edi,0x6
    23a8d355872e:	45 85 db                                        	test   r11d,r11d
    23a8d3558731:	4c 0f 45 ff                                     	cmovne r15,rdi
    23a8d3558735:	41 8b ff                                        	mov    edi,r15d
    23a8d3558738:	83 e7 3f                                        	and    edi,0x3f
    23a8d355873b:	4d 8b f9                                        	mov    r15,r9
    23a8d355873e:	8b cf                                           	mov    ecx,edi
    23a8d3558740:	49 d3 e7                                        	shl    r15,cl
    23a8d3558743:	4c 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r11
    23a8d355874a:	4c 8b d8                                        	mov    r11,rax
    23a8d355874d:	8b cf                                           	mov    ecx,edi
    23a8d355874f:	49 d3 e3                                        	shl    r11,cl
    23a8d3558752:	4d 2b fb                                        	sub    r15,r11
    23a8d3558755:	4f 89 bc 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],r15
    23a8d355875d:	c5 3a 59 c6                                     	vmulss xmm8,xmm8,xmm6
    23a8d3558761:	4c 8b 15 ed fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaed]        # 0x23a8d3558255
    23a8d3558768:	c4 41 38 54 12                                  	vandps xmm10,xmm8,XMMWORD PTR [r10]
    23a8d355876d:	4c 89 8d d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],r9
    23a8d3558774:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d3558779:	0f 87 0b 00 00 00                               	ja     0x23a8d355878a
    23a8d355877f:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    23a8d3558785:	e9 21 00 00 00                                  	jmp    0x23a8d35587ab
    23a8d355878a:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    23a8d3558790:	c4 41 7a 2c d8                                  	vcvttss2si r11d,xmm8
    23a8d3558795:	c4 41 02 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11d
    23a8d355879a:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    23a8d355879f:	0f 8a 00 85 00 00                               	jp     0x23a8d3560ca5
    23a8d35587a5:	0f 85 fa 84 00 00                               	jne    0x23a8d3560ca5
    23a8d35587ab:	41 8b cb                                        	mov    ecx,r11d
    23a8d35587ae:	2b 8d 30 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0xd0]
    23a8d35587b4:	48 63 c1                                        	movsxd rax,ecx
    23a8d35587b7:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d35587bb:	4c 8b 15 93 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffa93]        # 0x23a8d3558255
    23a8d35587c2:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    23a8d35587c7:	4c 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r11
    23a8d35587ce:	48 89 8d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rcx
    23a8d35587d5:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    23a8d35587dc:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    23a8d35587e0:	0f 87 10 00 00 00                               	ja     0x23a8d35587f6
    23a8d35587e6:	48 c7 85 78 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x88],0xffffffff80000000
    23a8d35587f1:	e9 26 00 00 00                                  	jmp    0x23a8d355881c
    23a8d35587f6:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d35587fc:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    23a8d3558800:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    23a8d3558805:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d3558809:	0f 8a 91 84 00 00                               	jp     0x23a8d3560ca0
    23a8d355880f:	0f 85 8b 84 00 00                               	jne    0x23a8d3560ca0
    23a8d3558815:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    23a8d355881c:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    23a8d3558823:	44 2b 8d 60 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xa0]
    23a8d355882a:	4d 63 c9                                        	movsxd r9,r9d
    23a8d355882d:	49 8b f1                                        	mov    rsi,r9
    23a8d3558830:	48 2b f0                                        	sub    rsi,rax
    23a8d3558833:	48 8b c2                                        	mov    rax,rdx
    23a8d3558836:	48 0f af c6                                     	imul   rax,rsi
    23a8d355883a:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    23a8d3558842:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    23a8d3558846:	49 8b f1                                        	mov    rsi,r9
    23a8d3558849:	8b cf                                           	mov    ecx,edi
    23a8d355884b:	48 d3 e6                                        	shl    rsi,cl
    23a8d355884e:	4c 89 8d d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r9
    23a8d3558855:	4c 8b 8d 38 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xc8]
    23a8d355885c:	8b cf                                           	mov    ecx,edi
    23a8d355885e:	49 d3 e1                                        	shl    r9,cl
    23a8d3558861:	49 2b f1                                        	sub    rsi,r9
    23a8d3558864:	4b 89 b4 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rsi
    23a8d355886c:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    23a8d3558872:	2b 8d 78 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0x88]
    23a8d3558878:	4c 63 c9                                        	movsxd r9,ecx
    23a8d355887b:	8b 8d 90 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x270]
    23a8d3558881:	41 2b cb                                        	sub    ecx,r11d
    23a8d3558884:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    23a8d355888b:	4c 63 c9                                        	movsxd r9,ecx
    23a8d355888e:	4c 8b 9d 18 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe8]
    23a8d3558895:	4d 2b d9                                        	sub    r11,r9
    23a8d3558898:	4c 0f af da                                     	imul   r11,rdx
    23a8d355889c:	4f 89 9c 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],r11
    23a8d35588a4:	48 8b 95 18 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe8]
    23a8d35588ab:	48 89 8d 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rcx
    23a8d35588b2:	8b cf                                           	mov    ecx,edi
    23a8d35588b4:	48 d3 e2                                        	shl    rdx,cl
    23a8d35588b7:	8b cf                                           	mov    ecx,edi
    23a8d35588b9:	49 8b f9                                        	mov    rdi,r9
    23a8d35588bc:	48 d3 e7                                        	shl    rdi,cl
    23a8d35588bf:	48 2b d7                                        	sub    rdx,rdi
    23a8d35588c2:	4b 89 94 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],rdx
    23a8d35588ca:	48 8b fa                                        	mov    rdi,rdx
    23a8d35588cd:	49 3b d3                                        	cmp    rdx,r11
    23a8d35588d0:	49 0f 4c fb                                     	cmovl  rdi,r11
    23a8d35588d4:	48 8b ca                                        	mov    rcx,rdx
    23a8d35588d7:	4c 3b da                                        	cmp    r11,rdx
    23a8d35588da:	49 0f 4c cb                                     	cmovl  rcx,r11
    23a8d35588de:	4c 8b e6                                        	mov    r12,rsi
    23a8d35588e1:	48 3b f0                                        	cmp    rsi,rax
    23a8d35588e4:	4c 0f 4c e0                                     	cmovl  r12,rax
    23a8d35588e8:	4c 8b c6                                        	mov    r8,rsi
    23a8d35588eb:	48 3b c6                                        	cmp    rax,rsi
    23a8d35588ee:	4c 0f 4c c0                                     	cmovl  r8,rax
    23a8d35588f2:	4c 89 9d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r11
    23a8d35588f9:	4d 8b df                                        	mov    r11,r15
    23a8d35588fc:	4c 3b fb                                        	cmp    r15,rbx
    23a8d35588ff:	4c 0f 4c db                                     	cmovl  r11,rbx
    23a8d3558903:	48 89 95 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdx
    23a8d355890a:	49 8b d7                                        	mov    rdx,r15
    23a8d355890d:	49 3b df                                        	cmp    rbx,r15
    23a8d3558910:	48 0f 4c d3                                     	cmovl  rdx,rbx
    23a8d3558914:	48 89 bd 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rdi
    23a8d355891b:	48 63 7d 18                                     	movsxd rdi,DWORD PTR [rbp+0x18]
    23a8d355891f:	48 c1 e7 08                                     	shl    rdi,0x8
    23a8d3558923:	48 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],rcx
    23a8d355892a:	48 63 8d 20 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xe0]
    23a8d3558931:	48 89 85 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rax
    23a8d3558938:	48 8b c7                                        	mov    rax,rdi
    23a8d355893b:	48 2b c1                                        	sub    rax,rcx
    23a8d355893e:	48 0f af 85 18 ff ff ff                         	imul   rax,QWORD PTR [rbp-0xe8]
    23a8d3558946:	48 63 8d 78 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0x88]
    23a8d355894d:	48 89 b5 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rsi
    23a8d3558954:	48 63 75 10                                     	movsxd rsi,DWORD PTR [rbp+0x10]
    23a8d3558958:	48 c1 e6 08                                     	shl    rsi,0x8
    23a8d355895c:	48 2b ce                                        	sub    rcx,rsi
    23a8d355895f:	49 0f af c9                                     	imul   rcx,r9
    23a8d3558963:	48 03 c1                                        	add    rax,rcx
    23a8d3558966:	48 63 8d 30 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xd0]
    23a8d355896d:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    23a8d3558974:	48 8b c7                                        	mov    rax,rdi
    23a8d3558977:	48 2b c1                                        	sub    rax,rcx
    23a8d355897a:	48 0f af 85 d8 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x128]
    23a8d3558982:	48 63 8d 60 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xa0]
    23a8d3558989:	48 2b ce                                        	sub    rcx,rsi
    23a8d355898c:	48 0f af 8d 38 ff ff ff                         	imul   rcx,QWORD PTR [rbp-0xc8]
    23a8d3558994:	48 03 c1                                        	add    rax,rcx
    23a8d3558997:	48 63 8d 90 fd ff ff                            	movsxd rcx,DWORD PTR [rbp-0x270]
    23a8d355899e:	48 2b f9                                        	sub    rdi,rcx
    23a8d35589a1:	48 0f af bd d0 fe ff ff                         	imul   rdi,QWORD PTR [rbp-0x130]
    23a8d35589a9:	48 63 8d 50 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xb0]
    23a8d35589b0:	48 2b ce                                        	sub    rcx,rsi
    23a8d35589b3:	48 0f af 4d d0                                  	imul   rcx,QWORD PTR [rbp-0x30]
    23a8d35589b8:	48 03 f9                                        	add    rdi,rcx
    23a8d35589bb:	49 f7 d9                                        	neg    r9
    23a8d35589be:	48 8b b5 38 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xc8]
    23a8d35589c5:	48 f7 de                                        	neg    rsi
    23a8d35589c8:	48 8b 4d d0                                     	mov    rcx,QWORD PTR [rbp-0x30]
    23a8d35589cc:	48 f7 d9                                        	neg    rcx
    23a8d35589cf:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    23a8d35589d6:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    23a8d35589d9:	2b 4d 18                                        	sub    ecx,DWORD PTR [rbp+0x18]
    23a8d35589dc:	4c 89 8d 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],r9
    23a8d35589e3:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    23a8d35589e7:	44 2b 4d 10                                     	sub    r9d,DWORD PTR [rbp+0x10]
    23a8d35589eb:	4c 89 a5 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],r12
    23a8d35589f2:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    23a8d35589f9:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    23a8d3558a00:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    23a8d3558a07:	48 89 b5 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rsi
    23a8d3558a0e:	48 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rcx
    23a8d3558a15:	4c 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],r9
    23a8d3558a19:	41 81 f9 00 00 01 00                            	cmp    r9d,0x10000
    23a8d3558a20:	0f 8f 9d 02 00 00                               	jg     0x23a8d3558cc3
    23a8d3558a26:	81 f9 00 00 01 00                               	cmp    ecx,0x10000
    23a8d3558a2c:	0f 8f 91 02 00 00                               	jg     0x23a8d3558cc3
    23a8d3558a32:	49 c7 c4 00 00 00 80                            	mov    r12,0xffffffff80000000
    23a8d3558a39:	48 8b f7                                        	mov    rsi,rdi
    23a8d3558a3c:	49 03 f4                                        	add    rsi,r12
    23a8d3558a3f:	49 b8 00 00 00 00 ff ff ff ff                   	movabs r8,0xffffffff00000000
    23a8d3558a49:	49 3b f0                                        	cmp    rsi,r8
    23a8d3558a4c:	0f 82 58 02 00 00                               	jb     0x23a8d3558caa
    23a8d3558a52:	48 8d 34 3a                                     	lea    rsi,[rdx+rdi*1]
    23a8d3558a56:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    23a8d3558a5a:	48 63 d2                                        	movsxd rdx,edx
    23a8d3558a5d:	4c 8b 8d a8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x258]
    23a8d3558a64:	4c 0f af ca                                     	imul   r9,rdx
    23a8d3558a68:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3558a6c:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    23a8d3558a73:	49 8b d1                                        	mov    rdx,r9
    23a8d3558a76:	48 c1 fa 3f                                     	sar    rdx,0x3f
    23a8d3558a7a:	49 23 d1                                        	and    rdx,r9
    23a8d3558a7d:	48 03 d6                                        	add    rdx,rsi
    23a8d3558a80:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    23a8d3558a83:	48 63 f6                                        	movsxd rsi,esi
    23a8d3558a86:	48 8b 8d d0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x130]
    23a8d3558a8d:	48 0f af ce                                     	imul   rcx,rsi
    23a8d3558a91:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d3558a95:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    23a8d3558a9c:	48 8b f1                                        	mov    rsi,rcx
    23a8d3558a9f:	48 c1 fe 3f                                     	sar    rsi,0x3f
    23a8d3558aa3:	48 23 f1                                        	and    rsi,rcx
    23a8d3558aa6:	48 03 d6                                        	add    rdx,rsi
    23a8d3558aa9:	48 81 fa 01 00 00 80                            	cmp    rdx,0xffffffff80000001
    23a8d3558ab0:	0f 8c f4 01 00 00                               	jl     0x23a8d3558caa
    23a8d3558ab6:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    23a8d3558aba:	33 ff                                           	xor    edi,edi
    23a8d3558abc:	4d 85 c9                                        	test   r9,r9
    23a8d3558abf:	49 0f 4f f9                                     	cmovg  rdi,r9
    23a8d3558ac3:	48 03 fa                                        	add    rdi,rdx
    23a8d3558ac6:	33 d2                                           	xor    edx,edx
    23a8d3558ac8:	48 85 c9                                        	test   rcx,rcx
    23a8d3558acb:	48 0f 4f d1                                     	cmovg  rdx,rcx
    23a8d3558acf:	48 03 fa                                        	add    rdi,rdx
    23a8d3558ad2:	33 f6                                           	xor    esi,esi
    23a8d3558ad4:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    23a8d3558adb:	0f 8f c9 01 00 00                               	jg     0x23a8d3558caa
    23a8d3558ae1:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d3558ae5:	8b 7d 38                                        	mov    edi,DWORD PTR [rbp+0x38]
    23a8d3558ae8:	44 03 ff                                        	add    r15d,edi
    23a8d3558aeb:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    23a8d3558af1:	44 8d 3c 1f                                     	lea    r15d,[rdi+rbx*1]
    23a8d3558af5:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    23a8d3558afb:	4c 8b f8                                        	mov    r15,rax
    23a8d3558afe:	4d 03 fc                                        	add    r15,r12
    23a8d3558b01:	4d 3b f8                                        	cmp    r15,r8
    23a8d3558b04:	0f 82 8b 01 00 00                               	jb     0x23a8d3558c95
    23a8d3558b0a:	4c 8b bd a8 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x358]
    23a8d3558b11:	49 8d 1c 07                                     	lea    rbx,[r15+rax*1]
    23a8d3558b15:	48 8b 95 78 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0x88]
    23a8d3558b1c:	48 0f af 95 88 fd ff ff                         	imul   rdx,QWORD PTR [rbp-0x278]
    23a8d3558b24:	48 c1 e2 08                                     	shl    rdx,0x8
    23a8d3558b28:	48 8b ca                                        	mov    rcx,rdx
    23a8d3558b2b:	48 c1 f9 3f                                     	sar    rcx,0x3f
    23a8d3558b2f:	48 23 ca                                        	and    rcx,rdx
    23a8d3558b32:	48 03 d9                                        	add    rbx,rcx
    23a8d3558b35:	4c 8b 8d d8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x128]
    23a8d3558b3c:	4c 0f af 8d 50 ff ff ff                         	imul   r9,QWORD PTR [rbp-0xb0]
    23a8d3558b44:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3558b48:	49 8b c9                                        	mov    rcx,r9
    23a8d3558b4b:	48 c1 f9 3f                                     	sar    rcx,0x3f
    23a8d3558b4f:	49 23 c9                                        	and    rcx,r9
    23a8d3558b52:	48 03 d9                                        	add    rbx,rcx
    23a8d3558b55:	48 81 fb 01 00 00 80                            	cmp    rbx,0xffffffff80000001
    23a8d3558b5c:	0f 8c 33 01 00 00                               	jl     0x23a8d3558c95
    23a8d3558b62:	48 8b 9d 48 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b8]
    23a8d3558b69:	48 8d 0c 03                                     	lea    rcx,[rbx+rax*1]
    23a8d3558b6d:	4c 8b fe                                        	mov    r15,rsi
    23a8d3558b70:	48 85 d2                                        	test   rdx,rdx
    23a8d3558b73:	4c 0f 4f fa                                     	cmovg  r15,rdx
    23a8d3558b77:	4c 03 f9                                        	add    r15,rcx
    23a8d3558b7a:	48 8b d6                                        	mov    rdx,rsi
    23a8d3558b7d:	4d 85 c9                                        	test   r9,r9
    23a8d3558b80:	49 0f 4f d1                                     	cmovg  rdx,r9
    23a8d3558b84:	4c 03 fa                                        	add    r15,rdx
    23a8d3558b87:	49 81 ff fe ff ff 7f                            	cmp    r15,0x7ffffffe
    23a8d3558b8e:	0f 8f 01 01 00 00                               	jg     0x23a8d3558c95
    23a8d3558b94:	44 8b 7d 40                                     	mov    r15d,DWORD PTR [rbp+0x40]
    23a8d3558b98:	48 8b 95 e0 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x120]
    23a8d3558b9f:	41 03 d7                                        	add    edx,r15d
    23a8d3558ba2:	c4 e3 79 22 f2 00                               	vpinsrd xmm6,xmm0,edx,0x0
    23a8d3558ba8:	48 8b 95 70 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0x90]
    23a8d3558baf:	41 03 d7                                        	add    edx,r15d
    23a8d3558bb2:	c4 e3 49 22 f2 01                               	vpinsrd xmm6,xmm6,edx,0x1
    23a8d3558bb8:	4c 03 a5 48 ff ff ff                            	add    r12,QWORD PTR [rbp-0xb8]
    23a8d3558bbf:	4d 3b e0                                        	cmp    r12,r8
    23a8d3558bc2:	0f 82 c3 00 00 00                               	jb     0x23a8d3558c8b
    23a8d3558bc8:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    23a8d3558bcf:	4c 8b a5 48 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb8]
    23a8d3558bd6:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    23a8d3558bda:	48 8b 8d 78 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x88]
    23a8d3558be1:	48 0f af 8d 58 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x2a8]
    23a8d3558be9:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d3558bed:	4c 8b c9                                        	mov    r9,rcx
    23a8d3558bf0:	49 c1 f9 3f                                     	sar    r9,0x3f
    23a8d3558bf4:	4c 23 c9                                        	and    r9,rcx
    23a8d3558bf7:	49 03 d1                                        	add    rdx,r9
    23a8d3558bfa:	4c 8b 8d 50 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xb0]
    23a8d3558c01:	4c 0f af 8d 18 ff ff ff                         	imul   r9,QWORD PTR [rbp-0xe8]
    23a8d3558c09:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3558c0d:	4d 8b c1                                        	mov    r8,r9
    23a8d3558c10:	49 c1 f8 3f                                     	sar    r8,0x3f
    23a8d3558c14:	4d 23 c1                                        	and    r8,r9
    23a8d3558c17:	4c 03 c2                                        	add    r8,rdx
    23a8d3558c1a:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    23a8d3558c21:	0f 8c 64 00 00 00                               	jl     0x23a8d3558c8b
    23a8d3558c27:	4c 8b 85 78 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x388]
    23a8d3558c2e:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    23a8d3558c32:	4c 8b c6                                        	mov    r8,rsi
    23a8d3558c35:	48 85 c9                                        	test   rcx,rcx
    23a8d3558c38:	4c 0f 4f c1                                     	cmovg  r8,rcx
    23a8d3558c3c:	4c 03 c2                                        	add    r8,rdx
    23a8d3558c3f:	4d 85 c9                                        	test   r9,r9
    23a8d3558c42:	49 0f 4f f1                                     	cmovg  rsi,r9
    23a8d3558c46:	4c 03 c6                                        	add    r8,rsi
    23a8d3558c49:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    23a8d3558c50:	0f 8f 2b 00 00 00                               	jg     0x23a8d3558c81
    23a8d3558c56:	44 8b 45 48                                     	mov    r8d,DWORD PTR [rbp+0x48]
    23a8d3558c5a:	48 8b 95 28 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xd8]
    23a8d3558c61:	41 03 d0                                        	add    edx,r8d
    23a8d3558c64:	c4 e3 79 22 c2 00                               	vpinsrd xmm0,xmm0,edx,0x0
    23a8d3558c6a:	48 8b 95 e8 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x118]
    23a8d3558c71:	41 03 d0                                        	add    edx,r8d
    23a8d3558c74:	c4 e3 79 22 c2 01                               	vpinsrd xmm0,xmm0,edx,0x1
    23a8d3558c7a:	33 d2                                           	xor    edx,edx
    23a8d3558c7c:	e9 1d 00 00 00                                  	jmp    0x23a8d3558c9e
    23a8d3558c81:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3558c86:	e9 48 00 00 00                                  	jmp    0x23a8d3558cd3
    23a8d3558c8b:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3558c90:	e9 3e 00 00 00                                  	jmp    0x23a8d3558cd3
    23a8d3558c95:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3558c9a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d3558c9e:	48 8b 9d 48 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b8]
    23a8d3558ca5:	e9 29 00 00 00                                  	jmp    0x23a8d3558cd3
    23a8d3558caa:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d3558cae:	48 8b 9d 48 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b8]
    23a8d3558cb5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d3558cb9:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3558cbe:	e9 10 00 00 00                                  	jmp    0x23a8d3558cd3
    23a8d3558cc3:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d3558cc7:	49 8b dc                                        	mov    rbx,r12
    23a8d3558cca:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d3558cce:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3558cd3:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d3558cd7:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3558cdb:	46 8b a4 07 c8 3c 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0x3cc8]
    23a8d3558ce3:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    23a8d3558cea:	42 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3cc8],0x0
    23a8d3558cf3:	0f 85 72 00 00 00                               	jne    0x23a8d3558d6b
    23a8d3558cf9:	46 8b a4 07 ec 00 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0xec]
    23a8d3558d01:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    23a8d3558d0a:	0f 85 5b 00 00 00                               	jne    0x23a8d3558d6b
    23a8d3558d10:	44 8b a5 08 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xf8]
    23a8d3558d17:	46 8b bc 27 30 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x130]
    23a8d3558d1f:	42 83 bc 27 30 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x130],0x0
    23a8d3558d28:	0f 85 0b 00 00 00                               	jne    0x23a8d3558d39
    23a8d3558d2e:	41 bc 01 00 00 00                               	mov    r12d,0x1
    23a8d3558d34:	e9 35 00 00 00                                  	jmp    0x23a8d3558d6e
    23a8d3558d39:	46 8b bc 27 38 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x138]
    23a8d3558d41:	42 83 bc 27 38 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x138],0x0
    23a8d3558d4a:	75 e2                                           	jne    0x23a8d3558d2e
    23a8d3558d4c:	46 8b a4 27 34 01 00 00                         	mov    r12d,DWORD PTR [rdi+r12*1+0x134]
    23a8d3558d54:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d3558d58:	74 d4                                           	je     0x23a8d3558d2e
    23a8d3558d5a:	41 83 fc 02                                     	cmp    r12d,0x2
    23a8d3558d5e:	41 0f 94 c4                                     	sete   r12b
    23a8d3558d62:	45 0f b6 e4                                     	movzx  r12d,r12b
    23a8d3558d66:	e9 03 00 00 00                                  	jmp    0x23a8d3558d6e
    23a8d3558d6b:	45 33 e4                                        	xor    r12d,r12d
    23a8d3558d6e:	4c 89 a5 28 fd ff ff                            	mov    QWORD PTR [rbp-0x2d8],r12
    23a8d3558d75:	83 bd 68 ff ff ff 02                            	cmp    DWORD PTR [rbp-0x98],0x2
    23a8d3558d7c:	0f 84 0b 00 00 00                               	je     0x23a8d3558d8d
    23a8d3558d82:	41 bf 01 00 00 00                               	mov    r15d,0x1
    23a8d3558d88:	e9 5b 01 00 00                                  	jmp    0x23a8d3558ee8
    23a8d3558d8d:	46 8b bc 07 80 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x80]
    23a8d3558d95:	42 83 bc 07 80 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x80],0x0
    23a8d3558d9e:	75 e2                                           	jne    0x23a8d3558d82
    23a8d3558da0:	46 8b bc 07 a4 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0xa4]
    23a8d3558da8:	42 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xa4],0x0
    23a8d3558db1:	75 cf                                           	jne    0x23a8d3558d82
    23a8d3558db3:	46 8b bc 07 30 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x530]
    23a8d3558dbb:	42 83 bc 07 30 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x530],0x0
    23a8d3558dc4:	75 bc                                           	jne    0x23a8d3558d82
    23a8d3558dc6:	46 8b bc 07 70 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3770]
    23a8d3558dce:	42 83 bc 07 70 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3770],0x0
    23a8d3558dd7:	75 a9                                           	jne    0x23a8d3558d82
    23a8d3558dd9:	46 8b bc 07 74 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3774]
    23a8d3558de1:	42 83 bc 07 74 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3774],0x0
    23a8d3558dea:	75 96                                           	jne    0x23a8d3558d82
    23a8d3558dec:	46 8b bc 07 20 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x520]
    23a8d3558df4:	42 83 bc 07 20 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x520],0x0
    23a8d3558dfd:	74 83                                           	je     0x23a8d3558d82
    23a8d3558dff:	46 8b bc 07 24 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x524]
    23a8d3558e07:	42 83 bc 07 24 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x524],0x0
    23a8d3558e10:	0f 84 6c ff ff ff                               	je     0x23a8d3558d82
    23a8d3558e16:	46 8b bc 07 28 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x528]
    23a8d3558e1e:	42 83 bc 07 28 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x528],0x0
    23a8d3558e27:	0f 84 55 ff ff ff                               	je     0x23a8d3558d82
    23a8d3558e2d:	46 8b bc 07 2c 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x52c]
    23a8d3558e35:	42 83 bc 07 2c 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x52c],0x0
    23a8d3558e3e:	0f 84 3e ff ff ff                               	je     0x23a8d3558d82
    23a8d3558e44:	46 8b 7c 07 74                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x74]
    23a8d3558e49:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    23a8d3558e4f:	0f 84 38 00 00 00                               	je     0x23a8d3558e8d
    23a8d3558e55:	46 8b 7c 07 78                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x78]
    23a8d3558e5a:	41 81 ff 02 03 00 00                            	cmp    r15d,0x302
    23a8d3558e61:	0f 84 0a 00 00 00                               	je     0x23a8d3558e71
    23a8d3558e67:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d3558e6b:	0f 85 11 ff ff ff                               	jne    0x23a8d3558d82
    23a8d3558e71:	46 8b 7c 07 7c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x7c]
    23a8d3558e76:	41 81 ff 03 03 00 00                            	cmp    r15d,0x303
    23a8d3558e7d:	0f 84 0a 00 00 00                               	je     0x23a8d3558e8d
    23a8d3558e83:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d3558e87:	0f 85 f5 fe ff ff                               	jne    0x23a8d3558d82
    23a8d3558e8d:	83 bd 58 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xa8],0x0
    23a8d3558e94:	0f 85 08 00 00 00                               	jne    0x23a8d3558ea2
    23a8d3558e9a:	45 33 ff                                        	xor    r15d,r15d
    23a8d3558e9d:	e9 46 00 00 00                                  	jmp    0x23a8d3558ee8
    23a8d3558ea2:	46 8b bc 07 90 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x90]
    23a8d3558eaa:	42 83 bc 07 90 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x90],0x0
    23a8d3558eb3:	0f 85 c9 fe ff ff                               	jne    0x23a8d3558d82
    23a8d3558eb9:	46 8b bc 07 94 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x94]
    23a8d3558ec1:	42 83 bc 07 94 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x94],0x0
    23a8d3558eca:	0f 85 b2 fe ff ff                               	jne    0x23a8d3558d82
    23a8d3558ed0:	46 8b bc 07 98 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x98]
    23a8d3558ed8:	45 33 ff                                        	xor    r15d,r15d
    23a8d3558edb:	42 83 bc 07 98 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x98],0x0
    23a8d3558ee4:	41 0f 95 c7                                     	setne  r15b
    23a8d3558ee8:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    23a8d3558eeb:	c7 44 37 18 00 00 00 00                         	mov    DWORD PTR [rdi+rsi*1+0x18],0x0
    23a8d3558ef3:	33 c9                                           	xor    ecx,ecx
    23a8d3558ef5:	83 7d d0 07                                     	cmp    DWORD PTR [rbp-0x30],0x7
    23a8d3558ef9:	0f 9f c1                                        	setg   cl
    23a8d3558efc:	4c 63 8d 38 ff ff ff                            	movsxd r9,DWORD PTR [rbp-0xc8]
    23a8d3558f03:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    23a8d3558f0a:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    23a8d3558f0e:	4d 0f af f9                                     	imul   r15,r9
    23a8d3558f12:	49 83 ff 3f                                     	cmp    r15,0x3f
    23a8d3558f16:	41 0f 9f c7                                     	setg   r15b
    23a8d3558f1a:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d3558f1e:	44 23 f9                                        	and    r15d,ecx
    23a8d3558f21:	0f 85 1d 00 00 00                               	jne    0x23a8d3558f44
    23a8d3558f27:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d3558f2b:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    23a8d3558f2f:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d3558f33:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d3558f37:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    23a8d3558f3b:	c5 79 28 f7                                     	vmovapd xmm14,xmm7
    23a8d3558f3f:	e9 02 02 00 00                                  	jmp    0x23a8d3559146
    23a8d3558f44:	44 8b 8d 90 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x270]
    23a8d3558f4b:	44 3b 8d 30 ff ff ff                            	cmp    r9d,DWORD PTR [rbp-0xd0]
    23a8d3558f52:	0f 84 8a 00 00 00                               	je     0x23a8d3558fe2
    23a8d3558f58:	48 8b 8d a8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x258]
    23a8d3558f5f:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d3558f63:	c4 61 82 2a c1                                  	vcvtsi2ss xmm8,xmm15,rcx
    23a8d3558f68:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3558f6d:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3558f73:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3558f79:	c4 41 2a 5e c0                                  	vdivss xmm8,xmm10,xmm8
    23a8d3558f7e:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    23a8d3558f83:	48 8b 8d d0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x130]
    23a8d3558f8a:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d3558f8e:	c4 61 82 2a d1                                  	vcvtsi2ss xmm10,xmm15,rcx
    23a8d3558f93:	c4 41 3a 59 d2                                  	vmulss xmm10,xmm8,xmm10
    23a8d3558f98:	48 63 4d 38                                     	movsxd rcx,DWORD PTR [rbp+0x38]
    23a8d3558f9c:	4c 8b a5 60 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xa0]
    23a8d3558fa3:	4f 8d 04 23                                     	lea    r8,[r11+r12*1]
    23a8d3558fa7:	4c 03 c1                                        	add    r8,rcx
    23a8d3558faa:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    23a8d3558faf:	49 ba 60 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32860
    23a8d3558fb9:	c4 41 20 57 1a                                  	vxorps xmm11,xmm11,XMMWORD PTR [r10]
    23a8d3558fbe:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    23a8d3558fc3:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    23a8d3558fc8:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    23a8d3558fcd:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    23a8d3558fd2:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d3558fd6:	44 8b a5 28 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2d8]
    23a8d3558fdd:	e9 08 00 00 00                                  	jmp    0x23a8d3558fea
    23a8d3558fe2:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d3558fe6:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d3558fea:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d3558ff0:	3b 8d 20 ff ff ff                               	cmp    ecx,DWORD PTR [rbp-0xe0]
    23a8d3558ff6:	0f 84 80 00 00 00                               	je     0x23a8d355907c
    23a8d3558ffc:	4c 8b a5 88 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x278]
    23a8d3559003:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d3559007:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    23a8d355900c:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    23a8d3559011:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    23a8d3559017:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    23a8d355901d:	c4 41 1a 5e db                                  	vdivss xmm11,xmm12,xmm11
    23a8d3559022:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    23a8d3559027:	4c 8b a5 d8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x128]
    23a8d355902e:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d3559032:	c4 41 82 2a e4                                  	vcvtsi2ss xmm12,xmm15,r12
    23a8d3559037:	c4 41 22 59 e4                                  	vmulss xmm12,xmm11,xmm12
    23a8d355903c:	4c 63 65 40                                     	movsxd r12,DWORD PTR [rbp+0x40]
    23a8d3559040:	48 8d 3c 03                                     	lea    rdi,[rbx+rax*1]
    23a8d3559044:	49 03 fc                                        	add    rdi,r12
    23a8d3559047:	c4 61 82 2a ef                                  	vcvtsi2ss xmm13,xmm15,rdi
    23a8d355904c:	4c 8b 15 5e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff5e]        # 0x23a8d3558fb1
    23a8d3559053:	c4 41 10 57 2a                                  	vxorps xmm13,xmm13,XMMWORD PTR [r10]
    23a8d3559058:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    23a8d355905d:	c4 41 79 28 fb                                  	vmovapd xmm15,xmm11
    23a8d3559062:	c4 41 79 28 dc                                  	vmovapd xmm11,xmm12
    23a8d3559067:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    23a8d355906c:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3559070:	44 8b a5 28 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2d8]
    23a8d3559077:	e9 08 00 00 00                                  	jmp    0x23a8d3559084
    23a8d355907c:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    23a8d3559080:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d3559084:	44 3b 8d 20 ff ff ff                            	cmp    r9d,DWORD PTR [rbp-0xe0]
    23a8d355908b:	0f 84 9e 00 00 00                               	je     0x23a8d355912f
    23a8d3559091:	4c 8b a5 58 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2a8]
    23a8d3559098:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d355909c:	c4 41 82 2a ec                                  	vcvtsi2ss xmm13,xmm15,r12
    23a8d35590a1:	c4 41 09 76 f6                                  	vpcmpeqd xmm14,xmm14,xmm14
    23a8d35590a6:	c4 c1 09 72 f6 19                               	vpslld xmm14,xmm14,0x19
    23a8d35590ac:	c4 c1 09 72 d6 02                               	vpsrld xmm14,xmm14,0x2
    23a8d35590b2:	c4 41 0a 5e ed                                  	vdivss xmm13,xmm14,xmm13
    23a8d35590b7:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    23a8d35590bc:	4c 8b a5 18 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xe8]
    23a8d35590c3:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d35590c7:	c4 41 82 2a f4                                  	vcvtsi2ss xmm14,xmm15,r12
    23a8d35590cc:	c4 41 12 59 f6                                  	vmulss xmm14,xmm13,xmm14
    23a8d35590d1:	48 63 55 48                                     	movsxd rdx,DWORD PTR [rbp+0x48]
    23a8d35590d5:	4c 8b a5 48 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb8]
    23a8d35590dc:	48 8b 8d 78 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x388]
    23a8d35590e3:	4e 8d 0c 21                                     	lea    r9,[rcx+r12*1]
    23a8d35590e7:	49 03 d1                                        	add    rdx,r9
    23a8d35590ea:	c4 e1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,rdx
    23a8d35590ef:	4c 8b 15 bb fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffebb]        # 0x23a8d3558fb1
    23a8d35590f6:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    23a8d35590fb:	c5 12 59 ea                                     	vmulss xmm13,xmm13,xmm2
    23a8d35590ff:	c4 41 79 28 fc                                  	vmovapd xmm15,xmm12
    23a8d3559104:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    23a8d3559109:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    23a8d355910e:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    23a8d3559113:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    23a8d3559118:	c4 41 79 28 f7                                  	vmovapd xmm14,xmm15
    23a8d355911d:	8b 95 e0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x120]
    23a8d3559123:	44 8b a5 28 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2d8]
    23a8d355912a:	e9 17 00 00 00                                  	jmp    0x23a8d3559146
    23a8d355912f:	c4 41 79 28 f4                                  	vmovapd xmm14,xmm12
    23a8d3559134:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d3559138:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    23a8d355913d:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    23a8d3559142:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    23a8d3559146:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    23a8d3559149:	3b 4d 18                                        	cmp    ecx,DWORD PTR [rbp+0x18]
    23a8d355914c:	0f 8e 97 76 00 00                               	jle    0x23a8d35607e9
    23a8d3559152:	4c 8b 8d 58 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2a8]
    23a8d3559159:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d355915d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d3559161:	41 8d 54 24 ff                                  	lea    edx,[r12-0x1]
    23a8d3559166:	48 63 d2                                        	movsxd rdx,edx
    23a8d3559169:	4c 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r9
    23a8d3559170:	4c 0f af ca                                     	imul   r9,rdx
    23a8d3559174:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    23a8d355917b:	4d 8b f9                                        	mov    r15,r9
    23a8d355917e:	49 f7 d7                                        	not    r15
    23a8d3559181:	48 8b bd 88 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x278]
    23a8d3559188:	48 c1 e7 08                                     	shl    rdi,0x8
    23a8d355918c:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    23a8d3559193:	48 0f af fa                                     	imul   rdi,rdx
    23a8d3559197:	48 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdi
    23a8d355919e:	48 f7 d7                                        	not    rdi
    23a8d35591a1:	48 8b 8d a8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x258]
    23a8d35591a8:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d35591ac:	48 0f af d1                                     	imul   rdx,rcx
    23a8d35591b0:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    23a8d35591b7:	48 f7 d2                                        	not    rdx
    23a8d35591ba:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    23a8d35591c1:	4c 8b 8d 18 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe8]
    23a8d35591c8:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d35591cc:	4c 89 8d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r9
    23a8d35591d3:	4c 8b 8d d8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x128]
    23a8d35591da:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d35591de:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    23a8d35591e5:	4c 8b 8d d0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x130]
    23a8d35591ec:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d35591f0:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    23a8d35591f7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35591fa:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    23a8d3559201:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    23a8d3559207:	48 89 bd e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],rdi
    23a8d355920e:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    23a8d3559214:	48 89 bd d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],rdi
    23a8d355921b:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    23a8d3559221:	48 89 bd d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],rdi
    23a8d3559228:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    23a8d355922e:	48 89 bd c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rdi
    23a8d3559235:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    23a8d355923b:	8b 85 f0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x310]
    23a8d3559241:	48 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdi
    23a8d3559248:	8d 78 50                                        	lea    edi,[rax+0x50]
    23a8d355924b:	8b 85 98 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x368]
    23a8d3559251:	48 89 bd 90 fe ff ff                            	mov    QWORD PTR [rbp-0x170],rdi
    23a8d3559258:	8d 78 50                                        	lea    edi,[rax+0x50]
    23a8d355925b:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    23a8d3559261:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    23a8d3559268:	8d 78 50                                        	lea    edi,[rax+0x50]
    23a8d355926b:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    23a8d355926e:	83 f0 ff                                        	xor    eax,0xffffffff
    23a8d3559271:	48 89 bd 98 fe ff ff                            	mov    QWORD PTR [rbp-0x168],rdi
    23a8d3559278:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    23a8d355927b:	44 8d 47 02                                     	lea    r8d,[rdi+0x2]
    23a8d355927f:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    23a8d3559283:	48 c1 e7 07                                     	shl    rdi,0x7
    23a8d3559287:	48 89 bd a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rdi
    23a8d355928e:	48 8b 7d c0                                     	mov    rdi,QWORD PTR [rbp-0x40]
    23a8d3559292:	48 c1 e7 07                                     	shl    rdi,0x7
    23a8d3559296:	48 89 bd f8 fb ff ff                            	mov    QWORD PTR [rbp-0x408],rdi
    23a8d355929d:	41 8d 7c 24 fe                                  	lea    edi,[r12-0x2]
    23a8d35592a2:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    23a8d35592a6:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    23a8d35592aa:	48 89 bd 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdi
    23a8d35592b1:	48 63 7d 40                                     	movsxd rdi,DWORD PTR [rbp+0x40]
    23a8d35592b5:	48 89 bd a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rdi
    23a8d35592bc:	48 63 7d 38                                     	movsxd rdi,DWORD PTR [rbp+0x38]
    23a8d35592c0:	c4 e1 82 2a 5d 30                               	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp+0x30]
    23a8d35592c6:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d35592ca:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d35592cf:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d35592d4:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    23a8d35592d8:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    23a8d35592dc:	c5 7b 11 85 48 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b8],xmm8
    23a8d35592e4:	c4 62 79 18 c3                                  	vbroadcastss xmm8,xmm3
    23a8d35592e9:	48 89 bd 50 fd ff ff                            	mov    QWORD PTR [rbp-0x2b0],rdi
    23a8d35592f0:	8d be 90 00 00 00                               	lea    edi,[rsi+0x90]
    23a8d35592f6:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    23a8d35592fd:	8d 7e 18                                        	lea    edi,[rsi+0x18]
    23a8d3559300:	83 cf 04                                        	or     edi,0x4
    23a8d3559303:	c5 7b 11 95 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm10
    23a8d355930b:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    23a8d3559310:	44 8d a6 60 01 00 00                            	lea    r12d,[rsi+0x160]
    23a8d3559317:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    23a8d355931e:	8d be 50 01 00 00                               	lea    edi,[rsi+0x150]
    23a8d3559324:	c5 7b 11 9d 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm11
    23a8d355932c:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    23a8d3559334:	4c 89 9d c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r11
    23a8d355933b:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    23a8d3559343:	c5 f8 11 ad 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm5
    23a8d355934b:	c5 f8 11 b5 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm6
    23a8d3559353:	4c 89 bd 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r15
    23a8d355935a:	48 89 8d f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rcx
    23a8d3559361:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    23a8d3559368:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    23a8d355936f:	48 89 85 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],rax
    23a8d3559376:	4c 89 85 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r8
    23a8d355937d:	c5 fb 11 95 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm2
    23a8d3559385:	c5 fb 11 9d 88 fe ff ff                         	vmovsd QWORD PTR [rbp-0x178],xmm3
    23a8d355938d:	c5 78 11 85 20 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3e0],xmm8
    23a8d3559395:	c5 7b 11 95 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm10
    23a8d355939d:	4c 89 a5 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r12
    23a8d35593a4:	48 89 bd 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdi
    23a8d35593ab:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    23a8d35593b2:	4d 8b cb                                        	mov    r9,r11
    23a8d35593b5:	4c 8b 9d 48 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xb8]
    23a8d35593bc:	41 8b d8                                        	mov    ebx,r8d
    23a8d35593bf:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    23a8d35593c6:	48 c7 85 30 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x0
    23a8d35593d1:	44 8b 55 18                                     	mov    r10d,DWORD PTR [rbp+0x18]
    23a8d35593d5:	4c 89 55 d0                                     	mov    QWORD PTR [rbp-0x30],r10
    23a8d35593d9:	4c 8b fa                                        	mov    r15,rdx
    23a8d35593dc:	e9 40 00 00 00                                  	jmp    0x23a8d3559421
    23a8d35593e1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d35593ea:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d35593f3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d35593fc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    23a8d3559400:	4c 8b d8                                        	mov    r11,rax
    23a8d3559403:	48 8b c6                                        	mov    rax,rsi
    23a8d3559406:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    23a8d355940a:	4c 8b c7                                        	mov    r8,rdi
    23a8d355940d:	4c 8b bd 50 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b0]
    23a8d3559414:	8b 9d 58 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a8]
    23a8d355941a:	4c 8b 8d c0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x140]
    23a8d3559421:	48 8b 8d 50 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b0]
    23a8d3559428:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    23a8d355942f:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    23a8d3559435:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355943a:	0f 85 6a 75 00 00                               	jne    0x23a8d35609aa
    23a8d3559440:	83 bd 10 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f0],0x0
    23a8d3559447:	0f 85 28 00 00 00                               	jne    0x23a8d3559475
    23a8d355944d:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    23a8d3559454:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    23a8d355945b:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    23a8d3559462:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    23a8d3559466:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    23a8d3559469:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d3559470:	e9 e5 05 00 00                                  	jmp    0x23a8d3559a5a
    23a8d3559475:	4b 8d 14 01                                     	lea    rdx,[r9+r8*1]
    23a8d3559479:	48 03 d1                                        	add    rdx,rcx
    23a8d355947c:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    23a8d3559483:	0f 8c 1f 01 00 00                               	jl     0x23a8d35595a8
    23a8d3559489:	44 3b e6                                        	cmp    r12d,esi
    23a8d355948c:	0f 84 fe 00 00 00                               	je     0x23a8d3559590
    23a8d3559492:	48 85 d2                                        	test   rdx,rdx
    23a8d3559495:	0f 8c e9 00 00 00                               	jl     0x23a8d3559584
    23a8d355949b:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    23a8d35594a2:	4c 3b fa                                        	cmp    r15,rdx
    23a8d35594a5:	0f 8c 7a 00 00 00                               	jl     0x23a8d3559525
    23a8d35594ab:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    23a8d35594b0:	0f 87 7b 00 00 00                               	ja     0x23a8d3559531
    23a8d35594b6:	c5 78 2e ad 18 ff ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0xe8]
    23a8d35594be:	0f 83 61 00 00 00                               	jae    0x23a8d3559525
    23a8d35594c4:	4c 8b 15 8a ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffed8a]        # 0x23a8d3558255
    23a8d35594cb:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    23a8d35594d0:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35594d5:	0f 87 0a 00 00 00                               	ja     0x23a8d35594e5
    23a8d35594db:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d35594e0:	e9 2b 00 00 00                                  	jmp    0x23a8d3559510
    23a8d35594e5:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    23a8d35594eb:	c4 41 7a 2c ca                                  	vcvttss2si r9d,xmm10
    23a8d35594f0:	c4 41 02 2a d9                                  	vcvtsi2ss xmm11,xmm15,r9d
    23a8d35594f5:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35594fa:	0f 8a 9b 77 00 00                               	jp     0x23a8d3560c9b
    23a8d3559500:	0f 85 95 77 00 00                               	jne    0x23a8d3560c9b
    23a8d3559506:	41 8b c9                                        	mov    ecx,r9d
    23a8d3559509:	4c 8b 8d c0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x140]
    23a8d3559510:	03 cb                                           	add    ecx,ebx
    23a8d3559512:	48 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rcx
    23a8d3559519:	48 8b 8d 50 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b0]
    23a8d3559520:	e9 17 00 00 00                                  	jmp    0x23a8d355953c
    23a8d3559525:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    23a8d3559529:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    23a8d355952c:	e9 38 01 00 00                                  	jmp    0x23a8d3559669
    23a8d3559531:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    23a8d3559535:	4c 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r10
    23a8d355953c:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    23a8d3559540:	44 3b bd 58 ff ff ff                            	cmp    r15d,DWORD PTR [rbp-0xa8]
    23a8d3559547:	0f 8e 2f 00 00 00                               	jle    0x23a8d355957c
    23a8d355954d:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    23a8d3559553:	2b 4d 10                                        	sub    ecx,DWORD PTR [rbp+0x10]
    23a8d3559556:	48 63 c9                                        	movsxd rcx,ecx
    23a8d3559559:	48 0f af 8d f8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x208]
    23a8d3559561:	48 03 d1                                        	add    rdx,rcx
    23a8d3559564:	41 8b cf                                        	mov    ecx,r15d
    23a8d3559567:	48 85 d2                                        	test   rdx,rdx
    23a8d355956a:	0f 4c 8d 58 ff ff ff                            	cmovl  ecx,DWORD PTR [rbp-0xa8]
    23a8d3559571:	44 8b f9                                        	mov    r15d,ecx
    23a8d3559574:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    23a8d3559577:	e9 ed 00 00 00                                  	jmp    0x23a8d3559669
    23a8d355957c:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    23a8d355957f:	e9 e5 00 00 00                                  	jmp    0x23a8d3559669
    23a8d3559584:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d355958b:	e9 a8 5a 00 00                                  	jmp    0x23a8d355f038
    23a8d3559590:	48 85 d2                                        	test   rdx,rdx
    23a8d3559593:	7c ef                                           	jl     0x23a8d3559584
    23a8d3559595:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    23a8d355959c:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    23a8d35595a0:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    23a8d35595a3:	e9 c1 00 00 00                                  	jmp    0x23a8d3559669
    23a8d35595a8:	4c 8b bd 38 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc8]
    23a8d35595af:	49 8d 0c 17                                     	lea    rcx,[r15+rdx*1]
    23a8d35595b3:	48 85 c9                                        	test   rcx,rcx
    23a8d35595b6:	7c cc                                           	jl     0x23a8d3559584
    23a8d35595b8:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    23a8d35595bf:	48 85 d2                                        	test   rdx,rdx
    23a8d35595c2:	0f 8d 5d ff ff ff                               	jge    0x23a8d3559525
    23a8d35595c8:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    23a8d35595cd:	0f 83 52 ff ff ff                               	jae    0x23a8d3559525
    23a8d35595d3:	4c 8b 15 7b ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec7b]        # 0x23a8d3558255
    23a8d35595da:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    23a8d35595df:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35595e4:	0f 87 0a 00 00 00                               	ja     0x23a8d35595f4
    23a8d35595ea:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d35595ef:	e9 20 00 00 00                                  	jmp    0x23a8d3559614
    23a8d35595f4:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    23a8d35595fa:	c4 c1 7a 2c ca                                  	vcvttss2si ecx,xmm10
    23a8d35595ff:	c5 02 2a d9                                     	vcvtsi2ss xmm11,xmm15,ecx
    23a8d3559603:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d3559608:	0f 8a 88 76 00 00                               	jp     0x23a8d3560c96
    23a8d355960e:	0f 85 82 76 00 00                               	jne    0x23a8d3560c96
    23a8d3559614:	44 8b 7d 10                                     	mov    r15d,DWORD PTR [rbp+0x10]
    23a8d3559618:	41 03 cf                                        	add    ecx,r15d
    23a8d355961b:	c5 78 2e ad 68 fe ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0x198]
    23a8d3559623:	0f 43 4d 20                                     	cmovae ecx,DWORD PTR [rbp+0x20]
    23a8d3559627:	41 3b cf                                        	cmp    ecx,r15d
    23a8d355962a:	0f 8e 32 00 00 00                               	jle    0x23a8d3559662
    23a8d3559630:	44 8b 8d 98 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x268]
    23a8d3559637:	45 8d 04 09                                     	lea    r8d,[r9+rcx*1]
    23a8d355963b:	4d 63 c0                                        	movsxd r8,r8d
    23a8d355963e:	4c 0f af 85 f8 fd ff ff                         	imul   r8,QWORD PTR [rbp-0x208]
    23a8d3559646:	4c 03 c2                                        	add    r8,rdx
    23a8d3559649:	41 8b d7                                        	mov    edx,r15d
    23a8d355964c:	4d 85 c0                                        	test   r8,r8
    23a8d355964f:	0f 4c d1                                        	cmovl  edx,ecx
    23a8d3559652:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    23a8d3559656:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    23a8d355965d:	e9 07 00 00 00                                  	jmp    0x23a8d3559669
    23a8d3559662:	41 8b d7                                        	mov    edx,r15d
    23a8d3559665:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    23a8d3559669:	48 8b 8d 48 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b8]
    23a8d3559670:	4c 8d 0c 01                                     	lea    r9,[rcx+rax*1]
    23a8d3559674:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d355967b:	4c 03 c9                                        	add    r9,rcx
    23a8d355967e:	83 bd b0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x250],0x0
    23a8d3559685:	0f 8d e8 00 00 00                               	jge    0x23a8d3559773
    23a8d355968b:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    23a8d3559692:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    23a8d3559699:	4a 8d 04 09                                     	lea    rax,[rcx+r9*1]
    23a8d355969d:	48 85 c0                                        	test   rax,rax
    23a8d35596a0:	0f 8c ba 00 00 00                               	jl     0x23a8d3559760
    23a8d35596a6:	4d 85 c9                                        	test   r9,r9
    23a8d35596a9:	0f 8d 9e 00 00 00                               	jge    0x23a8d355974d
    23a8d35596af:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    23a8d35596b4:	0f 83 93 00 00 00                               	jae    0x23a8d355974d
    23a8d35596ba:	4c 8b 15 94 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb94]        # 0x23a8d3558255
    23a8d35596c1:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    23a8d35596c6:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35596cb:	0f 87 0a 00 00 00                               	ja     0x23a8d35596db
    23a8d35596d1:	b8 00 00 00 80                                  	mov    eax,0x80000000
    23a8d35596d6:	e9 20 00 00 00                                  	jmp    0x23a8d35596fb
    23a8d35596db:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    23a8d35596e1:	c4 c1 7a 2c c2                                  	vcvttss2si eax,xmm10
    23a8d35596e6:	c5 02 2a d8                                     	vcvtsi2ss xmm11,xmm15,eax
    23a8d35596ea:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35596ef:	0f 8a 9c 75 00 00                               	jp     0x23a8d3560c91
    23a8d35596f5:	0f 85 96 75 00 00                               	jne    0x23a8d3560c91
    23a8d35596fb:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    23a8d35596fe:	03 c1                                           	add    eax,ecx
    23a8d3559700:	c5 78 2e b5 68 fe ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0x198]
    23a8d3559708:	0f 43 45 20                                     	cmovae eax,DWORD PTR [rbp+0x20]
    23a8d355970c:	3b c2                                           	cmp    eax,edx
    23a8d355970e:	0f 8e 39 00 00 00                               	jle    0x23a8d355974d
    23a8d3559714:	44 8b 85 98 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x268]
    23a8d355971b:	41 8d 3c 00                                     	lea    edi,[r8+rax*1]
    23a8d355971f:	48 63 ff                                        	movsxd rdi,edi
    23a8d3559722:	48 0f af bd e8 fd ff ff                         	imul   rdi,QWORD PTR [rbp-0x218]
    23a8d355972a:	49 03 f9                                        	add    rdi,r9
    23a8d355972d:	48 85 ff                                        	test   rdi,rdi
    23a8d3559730:	0f 4c d0                                        	cmovl  edx,eax
    23a8d3559733:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d355973a:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    23a8d3559741:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    23a8d3559748:	e9 10 01 00 00                                  	jmp    0x23a8d355985d
    23a8d355974d:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d3559754:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    23a8d355975b:	e9 fd 00 00 00                                  	jmp    0x23a8d355985d
    23a8d3559760:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d3559767:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    23a8d355976e:	e9 c5 58 00 00                                  	jmp    0x23a8d355f038
    23a8d3559773:	3b b5 20 ff ff ff                               	cmp    esi,DWORD PTR [rbp-0xe0]
    23a8d3559779:	0f 84 ce 00 00 00                               	je     0x23a8d355984d
    23a8d355977f:	4d 85 c9                                        	test   r9,r9
    23a8d3559782:	0f 8c b0 58 00 00                               	jl     0x23a8d355f038
    23a8d3559788:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    23a8d355978f:	48 8b bd 08 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f8]
    23a8d3559796:	49 3b f9                                        	cmp    rdi,r9
    23a8d3559799:	0f 8c be 00 00 00                               	jl     0x23a8d355985d
    23a8d355979f:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    23a8d35597a4:	0f 87 64 00 00 00                               	ja     0x23a8d355980e
    23a8d35597aa:	c5 78 2e b5 18 ff ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0xe8]
    23a8d35597b2:	0f 83 a5 00 00 00                               	jae    0x23a8d355985d
    23a8d35597b8:	4c 8b 15 96 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea96]        # 0x23a8d3558255
    23a8d35597bf:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    23a8d35597c4:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35597c9:	0f 87 0a 00 00 00                               	ja     0x23a8d35597d9
    23a8d35597cf:	bf 00 00 00 80                                  	mov    edi,0x80000000
    23a8d35597d4:	e9 20 00 00 00                                  	jmp    0x23a8d35597f9
    23a8d35597d9:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    23a8d35597df:	c4 c1 7a 2c fa                                  	vcvttss2si edi,xmm10
    23a8d35597e4:	c5 02 2a df                                     	vcvtsi2ss xmm11,xmm15,edi
    23a8d35597e8:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35597ed:	0f 8a 99 74 00 00                               	jp     0x23a8d3560c8c
    23a8d35597f3:	0f 85 93 74 00 00                               	jne    0x23a8d3560c8c
    23a8d35597f9:	03 fb                                           	add    edi,ebx
    23a8d35597fb:	48 89 bd 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdi
    23a8d3559802:	48 8b bd 08 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f8]
    23a8d3559809:	e9 0b 00 00 00                                  	jmp    0x23a8d3559819
    23a8d355980e:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    23a8d3559812:	4c 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],r10
    23a8d3559819:	44 3b bd 00 fe ff ff                            	cmp    r15d,DWORD PTR [rbp-0x200]
    23a8d3559820:	0f 8e 37 00 00 00                               	jle    0x23a8d355985d
    23a8d3559826:	8b bd 00 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x200]
    23a8d355982c:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    23a8d355982f:	48 63 ff                                        	movsxd rdi,edi
    23a8d3559832:	48 0f af bd e8 fd ff ff                         	imul   rdi,QWORD PTR [rbp-0x218]
    23a8d355983a:	49 03 f9                                        	add    rdi,r9
    23a8d355983d:	48 85 ff                                        	test   rdi,rdi
    23a8d3559840:	44 0f 4c bd 00 fe ff ff                         	cmovl  r15d,DWORD PTR [rbp-0x200]
    23a8d3559848:	e9 10 00 00 00                                  	jmp    0x23a8d355985d
    23a8d355984d:	4d 85 c9                                        	test   r9,r9
    23a8d3559850:	0f 8c e2 57 00 00                               	jl     0x23a8d355f038
    23a8d3559856:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    23a8d355985d:	48 8b bd 78 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x388]
    23a8d3559864:	4e 8d 0c 1f                                     	lea    r9,[rdi+r11*1]
    23a8d3559868:	48 8b b5 30 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3d0]
    23a8d355986f:	4c 03 ce                                        	add    r9,rsi
    23a8d3559872:	83 bd 10 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xf0],0x0
    23a8d3559879:	0f 8d d6 00 00 00                               	jge    0x23a8d3559955
    23a8d355987f:	48 8b bd 28 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xd8]
    23a8d3559886:	4a 8d 34 0f                                     	lea    rsi,[rdi+r9*1]
    23a8d355988a:	48 85 f6                                        	test   rsi,rsi
    23a8d355988d:	0f 8c b7 00 00 00                               	jl     0x23a8d355994a
    23a8d3559893:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    23a8d355989a:	4d 85 c9                                        	test   r9,r9
    23a8d355989d:	0f 8d b7 01 00 00                               	jge    0x23a8d3559a5a
    23a8d35598a3:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    23a8d35598a8:	0f 83 68 00 00 00                               	jae    0x23a8d3559916
    23a8d35598ae:	c5 78 2e a5 68 fe ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0x198]
    23a8d35598b6:	0f 83 52 00 00 00                               	jae    0x23a8d355990e
    23a8d35598bc:	4c 8b 15 92 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe992]        # 0x23a8d3558255
    23a8d35598c3:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    23a8d35598c8:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35598cd:	0f 87 0a 00 00 00                               	ja     0x23a8d35598dd
    23a8d35598d3:	be 00 00 00 80                                  	mov    esi,0x80000000
    23a8d35598d8:	e9 20 00 00 00                                  	jmp    0x23a8d35598fd
    23a8d35598dd:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    23a8d35598e3:	c4 c1 7a 2c f2                                  	vcvttss2si esi,xmm10
    23a8d35598e8:	c5 02 2a de                                     	vcvtsi2ss xmm11,xmm15,esi
    23a8d35598ec:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35598f1:	0f 8a 90 73 00 00                               	jp     0x23a8d3560c87
    23a8d35598f7:	0f 85 8a 73 00 00                               	jne    0x23a8d3560c87
    23a8d35598fd:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    23a8d3559900:	03 f7                                           	add    esi,edi
    23a8d3559902:	48 8b bd 28 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xd8]
    23a8d3559909:	e9 0b 00 00 00                                  	jmp    0x23a8d3559919
    23a8d355990e:	8b 75 20                                        	mov    esi,DWORD PTR [rbp+0x20]
    23a8d3559911:	e9 03 00 00 00                                  	jmp    0x23a8d3559919
    23a8d3559916:	8b 75 10                                        	mov    esi,DWORD PTR [rbp+0x10]
    23a8d3559919:	3b f2                                           	cmp    esi,edx
    23a8d355991b:	0f 8e 39 01 00 00                               	jle    0x23a8d3559a5a
    23a8d3559921:	8b bd 98 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x268]
    23a8d3559927:	8d 0c 37                                        	lea    ecx,[rdi+rsi*1]
    23a8d355992a:	48 63 c9                                        	movsxd rcx,ecx
    23a8d355992d:	48 0f af 8d d8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x228]
    23a8d3559935:	49 03 c9                                        	add    rcx,r9
    23a8d3559938:	48 85 c9                                        	test   rcx,rcx
    23a8d355993b:	0f 4c d6                                        	cmovl  edx,esi
    23a8d355993e:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d3559945:	e9 10 01 00 00                                  	jmp    0x23a8d3559a5a
    23a8d355994a:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    23a8d3559950:	e9 e3 56 00 00                                  	jmp    0x23a8d355f038
    23a8d3559955:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    23a8d355995b:	41 3b fc                                        	cmp    edi,r12d
    23a8d355995e:	0f 84 e6 00 00 00                               	je     0x23a8d3559a4a
    23a8d3559964:	4d 85 c9                                        	test   r9,r9
    23a8d3559967:	7c e1                                           	jl     0x23a8d355994a
    23a8d3559969:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    23a8d3559970:	48 8b bd 60 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1a0]
    23a8d3559977:	49 3b f9                                        	cmp    rdi,r9
    23a8d355997a:	0f 8c da 00 00 00                               	jl     0x23a8d3559a5a
    23a8d3559980:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    23a8d3559985:	0f 87 77 00 00 00                               	ja     0x23a8d3559a02
    23a8d355998b:	c5 78 2e a5 18 ff ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0xe8]
    23a8d3559993:	0f 83 59 00 00 00                               	jae    0x23a8d35599f2
    23a8d3559999:	4c 8b 15 b5 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8b5]        # 0x23a8d3558255
    23a8d35599a0:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    23a8d35599a5:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35599aa:	0f 87 0b 00 00 00                               	ja     0x23a8d35599bb
    23a8d35599b0:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    23a8d35599b6:	e9 21 00 00 00                                  	jmp    0x23a8d35599dc
    23a8d35599bb:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    23a8d35599c1:	c4 41 7a 2c e2                                  	vcvttss2si r12d,xmm10
    23a8d35599c6:	c4 41 02 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12d
    23a8d35599cb:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35599d0:	0f 8a ac 72 00 00                               	jp     0x23a8d3560c82
    23a8d35599d6:	0f 85 a6 72 00 00                               	jne    0x23a8d3560c82
    23a8d35599dc:	44 03 e3                                        	add    r12d,ebx
    23a8d35599df:	4c 89 a5 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r12
    23a8d35599e6:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    23a8d35599ed:	e9 1b 00 00 00                                  	jmp    0x23a8d3559a0d
    23a8d35599f2:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    23a8d35599f6:	4c 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r10
    23a8d35599fd:	e9 0b 00 00 00                                  	jmp    0x23a8d3559a0d
    23a8d3559a02:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    23a8d3559a06:	4c 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r10
    23a8d3559a0d:	44 3b bd 58 ff ff ff                            	cmp    r15d,DWORD PTR [rbp-0xa8]
    23a8d3559a14:	0f 8e 40 00 00 00                               	jle    0x23a8d3559a5a
    23a8d3559a1a:	44 8b a5 58 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xa8]
    23a8d3559a21:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    23a8d3559a25:	4d 63 e4                                        	movsxd r12,r12d
    23a8d3559a28:	4c 0f af a5 d8 fd ff ff                         	imul   r12,QWORD PTR [rbp-0x228]
    23a8d3559a30:	4d 03 e1                                        	add    r12,r9
    23a8d3559a33:	4d 85 e4                                        	test   r12,r12
    23a8d3559a36:	44 0f 4c bd 58 ff ff ff                         	cmovl  r15d,DWORD PTR [rbp-0xa8]
    23a8d3559a3e:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    23a8d3559a45:	e9 10 00 00 00                                  	jmp    0x23a8d3559a5a
    23a8d3559a4a:	4d 85 c9                                        	test   r9,r9
    23a8d3559a4d:	0f 8c f7 fe ff ff                               	jl     0x23a8d355994a
    23a8d3559a53:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    23a8d3559a5a:	41 3b d7                                        	cmp    edx,r15d
    23a8d3559a5d:	0f 8c 1e 00 00 00                               	jl     0x23a8d3559a81
    23a8d3559a63:	4c 8b 9d d8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x228]
    23a8d3559a6a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3559a6e:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    23a8d3559a75:	4c 8b 85 e8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x218]
    23a8d3559a7c:	e9 72 55 00 00                                  	jmp    0x23a8d355eff3
    23a8d3559a81:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    23a8d3559a84:	83 cf 03                                        	or     edi,0x3
    23a8d3559a87:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    23a8d3559a8a:	81 e6 fc ff ff 1f                               	and    esi,0x1ffffffc
    23a8d3559a90:	44 8b ce                                        	mov    r9d,esi
    23a8d3559a93:	41 83 c9 02                                     	or     r9d,0x2
    23a8d3559a97:	48 89 b5 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rsi
    23a8d3559a9e:	83 ce 01                                        	or     esi,0x1
    23a8d3559aa1:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    23a8d3559aa8:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    23a8d3559aab:	44 8d 24 bd 00 00 00 00                         	lea    r12d,[rdi*4+0x0]
    23a8d3559ab3:	4c 89 bd 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r15
    23a8d3559aba:	45 8b fc                                        	mov    r15d,r12d
    23a8d3559abd:	41 83 e7 0c                                     	and    r15d,0xc
    23a8d3559ac1:	41 83 e4 7c                                     	and    r12d,0x7c
    23a8d3559ac5:	4c 89 a5 f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r12
    23a8d3559acc:	44 8b e2                                        	mov    r12d,edx
    23a8d3559acf:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    23a8d3559ad3:	4d 63 e4                                        	movsxd r12,r12d
    23a8d3559ad6:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d3559ada:	4c 89 8d 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r9
    23a8d3559ae1:	4c 8b 8d a8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x258]
    23a8d3559ae8:	4d 0f af cc                                     	imul   r9,r12
    23a8d3559aec:	4d 03 c8                                        	add    r9,r8
    23a8d3559aef:	4c 8b 85 88 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x278]
    23a8d3559af6:	4d 0f af c4                                     	imul   r8,r12
    23a8d3559afa:	4c 03 c0                                        	add    r8,rax
    23a8d3559afd:	48 8b 85 58 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a8]
    23a8d3559b04:	49 0f af c4                                     	imul   rax,r12
    23a8d3559b08:	4d 8d 24 03                                     	lea    r12,[r11+rax*1]
    23a8d3559b0c:	8b c7                                           	mov    eax,edi
    23a8d3559b0e:	c1 f8 02                                        	sar    eax,0x2
    23a8d3559b11:	c1 e0 04                                        	shl    eax,0x4
    23a8d3559b14:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    23a8d3559b19:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    23a8d3559b1e:	c5 7b 11 b5 68 ff ff ff                         	vmovsd QWORD PTR [rbp-0x98],xmm14
    23a8d3559b26:	48 89 b5 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rsi
    23a8d3559b2d:	4c 89 bd a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],r15
    23a8d3559b34:	48 89 85 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rax
    23a8d3559b3b:	e9 06 00 00 00                                  	jmp    0x23a8d3559b46
    23a8d3559b40:	4d 8b e7                                        	mov    r12,r15
    23a8d3559b43:	4c 8b c0                                        	mov    r8,rax
    23a8d3559b46:	48 8b bd 78 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x388]
    23a8d3559b4d:	48 8b 85 30 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x3d0]
    23a8d3559b54:	4c 8b 9d 48 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x2b8]
    23a8d3559b5b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    23a8d3559b62:	48 8b 9d 50 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b0]
    23a8d3559b69:	4c 89 a5 d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r12
    23a8d3559b70:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3559b75:	0f 85 ec 6e 00 00                               	jne    0x23a8d3560a67
    23a8d3559b7b:	83 bd e0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x120],0x0
    23a8d3559b82:	0f 85 6b 00 00 00                               	jne    0x23a8d3559bf3
    23a8d3559b88:	45 8b f8                                        	mov    r15d,r8d
    23a8d3559b8b:	c4 41 79 6e d7                                  	vmovd  xmm10,r15d
    23a8d3559b90:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d3559b95:	c5 29 fe d6                                     	vpaddd xmm10,xmm10,xmm6
    23a8d3559b99:	45 8b f9                                        	mov    r15d,r9d
    23a8d3559b9c:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    23a8d3559ba1:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d3559ba6:	c5 21 fe dd                                     	vpaddd xmm11,xmm11,xmm5
    23a8d3559baa:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    23a8d3559baf:	45 8b fc                                        	mov    r15d,r12d
    23a8d3559bb2:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    23a8d3559bb7:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d3559bbc:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    23a8d3559bc0:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    23a8d3559bc5:	c4 41 78 50 fa                                  	vmovmskps r15d,xmm10
    23a8d3559bca:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    23a8d3559bce:	41 83 e7 03                                     	and    r15d,0x3
    23a8d3559bd2:	45 85 ff                                        	test   r15d,r15d
    23a8d3559bd5:	0f 85 0c 00 00 00                               	jne    0x23a8d3559be7
    23a8d3559bdb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3559bde:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3559be2:	e9 b6 53 00 00                                  	jmp    0x23a8d355ef9d
    23a8d3559be7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3559beb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3559bee:	e9 42 01 00 00                                  	jmp    0x23a8d3559d35
    23a8d3559bf3:	4e 8d 3c 0b                                     	lea    r15,[rbx+r9*1]
    23a8d3559bf7:	4a 8d 1c 3e                                     	lea    rbx,[rsi+r15*1]
    23a8d3559bfb:	48 85 db                                        	test   rbx,rbx
    23a8d3559bfe:	0f 8c 92 53 00 00                               	jl     0x23a8d355ef96
    23a8d3559c04:	4a 8d 1c 01                                     	lea    rbx,[rcx+r8*1]
    23a8d3559c08:	49 8d 34 1b                                     	lea    rsi,[r11+rbx*1]
    23a8d3559c0c:	48 85 f6                                        	test   rsi,rsi
    23a8d3559c0f:	0f 8c 81 53 00 00                               	jl     0x23a8d355ef96
    23a8d3559c15:	4a 8d 34 20                                     	lea    rsi,[rax+r12*1]
    23a8d3559c19:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    23a8d3559c1d:	4d 85 e4                                        	test   r12,r12
    23a8d3559c20:	0f 8c 70 53 00 00                               	jl     0x23a8d355ef96
    23a8d3559c26:	4c 8b a5 60 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x3a0]
    23a8d3559c2d:	4b 8d 3c 3c                                     	lea    rdi,[r12+r15*1]
    23a8d3559c31:	48 85 ff                                        	test   rdi,rdi
    23a8d3559c34:	0f 8c 48 00 00 00                               	jl     0x23a8d3559c82
    23a8d3559c3a:	48 8b bd a8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x358]
    23a8d3559c41:	4c 8d 24 1f                                     	lea    r12,[rdi+rbx*1]
    23a8d3559c45:	4d 85 e4                                        	test   r12,r12
    23a8d3559c48:	0f 8c 34 00 00 00                               	jl     0x23a8d3559c82
    23a8d3559c4e:	4c 8b a5 c8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x238]
    23a8d3559c55:	49 8d 3c 34                                     	lea    rdi,[r12+rsi*1]
    23a8d3559c59:	48 85 ff                                        	test   rdi,rdi
    23a8d3559c5c:	0f 8c 20 00 00 00                               	jl     0x23a8d3559c82
    23a8d3559c62:	4c 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r9
    23a8d3559c69:	4c 89 85 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r8
    23a8d3559c70:	41 bf 03 00 00 00                               	mov    r15d,0x3
    23a8d3559c76:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3559c79:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3559c7d:	e9 e2 00 00 00                                  	jmp    0x23a8d3559d64
    23a8d3559c82:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3559c85:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3559c89:	49 8b 84 3c d0 00 00 00                         	mov    rax,QWORD PTR [r12+rdi*1+0xd0]
    23a8d3559c91:	49 03 c7                                        	add    rax,r15
    23a8d3559c94:	48 85 c0                                        	test   rax,rax
    23a8d3559c97:	0f 8c 2d 00 00 00                               	jl     0x23a8d3559cca
    23a8d3559c9d:	49 8b 84 3c d8 00 00 00                         	mov    rax,QWORD PTR [r12+rdi*1+0xd8]
    23a8d3559ca5:	48 03 c3                                        	add    rax,rbx
    23a8d3559ca8:	48 85 c0                                        	test   rax,rax
    23a8d3559cab:	0f 8c 19 00 00 00                               	jl     0x23a8d3559cca
    23a8d3559cb1:	49 8b 84 3c e0 00 00 00                         	mov    rax,QWORD PTR [r12+rdi*1+0xe0]
    23a8d3559cb9:	48 03 c6                                        	add    rax,rsi
    23a8d3559cbc:	48 85 c0                                        	test   rax,rax
    23a8d3559cbf:	0f 9d c0                                        	setge  al
    23a8d3559cc2:	0f b6 c0                                        	movzx  eax,al
    23a8d3559cc5:	e9 02 00 00 00                                  	jmp    0x23a8d3559ccc
    23a8d3559cca:	33 c0                                           	xor    eax,eax
    23a8d3559ccc:	4d 8b 9c 3c e8 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xe8]
    23a8d3559cd4:	4d 03 df                                        	add    r11,r15
    23a8d3559cd7:	4d 85 db                                        	test   r11,r11
    23a8d3559cda:	0f 8c 4c 00 00 00                               	jl     0x23a8d3559d2c
    23a8d3559ce0:	4d 8b 9c 3c f0 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xf0]
    23a8d3559ce8:	4c 03 db                                        	add    r11,rbx
    23a8d3559ceb:	4d 85 db                                        	test   r11,r11
    23a8d3559cee:	0f 8c 2f 00 00 00                               	jl     0x23a8d3559d23
    23a8d3559cf4:	4d 8b 9c 3c f8 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xf8]
    23a8d3559cfc:	4c 03 de                                        	add    r11,rsi
    23a8d3559cff:	4d 85 db                                        	test   r11,r11
    23a8d3559d02:	0f 8c 0b 00 00 00                               	jl     0x23a8d3559d13
    23a8d3559d08:	83 c8 02                                        	or     eax,0x2
    23a8d3559d0b:	44 8b f8                                        	mov    r15d,eax
    23a8d3559d0e:	e9 22 00 00 00                                  	jmp    0x23a8d3559d35
    23a8d3559d13:	85 c0                                           	test   eax,eax
    23a8d3559d15:	0f 84 82 52 00 00                               	je     0x23a8d355ef9d
    23a8d3559d1b:	44 8b f8                                        	mov    r15d,eax
    23a8d3559d1e:	e9 12 00 00 00                                  	jmp    0x23a8d3559d35
    23a8d3559d23:	85 c0                                           	test   eax,eax
    23a8d3559d25:	75 f4                                           	jne    0x23a8d3559d1b
    23a8d3559d27:	e9 71 52 00 00                                  	jmp    0x23a8d355ef9d
    23a8d3559d2c:	85 c0                                           	test   eax,eax
    23a8d3559d2e:	75 eb                                           	jne    0x23a8d3559d1b
    23a8d3559d30:	e9 68 52 00 00                                  	jmp    0x23a8d355ef9d
    23a8d3559d35:	4c 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r9
    23a8d3559d3c:	4c 89 85 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r8
    23a8d3559d43:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d3559d47:	0f 85 17 00 00 00                               	jne    0x23a8d3559d64
    23a8d3559d4d:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    23a8d3559d54:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    23a8d3559d58:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    23a8d3559d5f:	e9 7b 01 00 00                                  	jmp    0x23a8d3559edf
    23a8d3559d64:	4d 8b 9c 3c d0 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xd0]
    23a8d3559d6c:	4d 03 d9                                        	add    r11,r9
    23a8d3559d6f:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    23a8d3559d74:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    23a8d3559d79:	c4 41 5a 5c da                                  	vsubss xmm11,xmm4,xmm10
    23a8d3559d7e:	4d 8b 9c 3c d8 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xd8]
    23a8d3559d86:	4d 03 d8                                        	add    r11,r8
    23a8d3559d89:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    23a8d3559d8e:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    23a8d3559d92:	c5 22 5c d8                                     	vsubss xmm11,xmm11,xmm0
    23a8d3559d96:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    23a8d3559d9d:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    23a8d3559da4:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    23a8d3559dab:	c4 41 2a 59 54 04 18                            	vmulss xmm10,xmm10,DWORD PTR [r12+rax*1+0x18]
    23a8d3559db2:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    23a8d3559db9:	c4 c1 7a 10 6c 1c 18                            	vmovss xmm5,DWORD PTR [r12+rbx*1+0x18]
    23a8d3559dc0:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    23a8d3559dc4:	c5 aa 58 c0                                     	vaddss xmm0,xmm10,xmm0
    23a8d3559dc8:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    23a8d3559dcc:	c5 fa 58 85 40 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x2c0]
    23a8d3559dd4:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    23a8d3559dd8:	0f 87 09 00 00 00                               	ja     0x23a8d3559de7
    23a8d3559dde:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d3559de2:	e9 04 00 00 00                                  	jmp    0x23a8d3559deb
    23a8d3559de7:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    23a8d3559deb:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d3559def:	0f 87 09 00 00 00                               	ja     0x23a8d3559dfe
    23a8d3559df5:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    23a8d3559df9:	e9 04 00 00 00                                  	jmp    0x23a8d3559e02
    23a8d3559dfe:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d3559e02:	c4 c1 7a 11 04 3c                               	vmovss DWORD PTR [r12+rdi*1],xmm0
    23a8d3559e08:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    23a8d3559e0c:	41 8b 4c 34 68                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x68]
    23a8d3559e11:	41 83 7c 34 68 00                               	cmp    DWORD PTR [r12+rsi*1+0x68],0x0
    23a8d3559e17:	0f 84 c2 00 00 00                               	je     0x23a8d3559edf
    23a8d3559e1d:	41 8b 8c 34 a4 00 00 00                         	mov    ecx,DWORD PTR [r12+rsi*1+0xa4]
    23a8d3559e25:	41 83 bc 34 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rsi*1+0xa4],0x0
    23a8d3559e2e:	0f 85 ab 00 00 00                               	jne    0x23a8d3559edf
    23a8d3559e34:	41 8b 4c 34 1c                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x1c]
    23a8d3559e39:	41 8b 1c 34                                     	mov    ebx,DWORD PTR [r12+rsi*1]
    23a8d3559e3d:	0f af 5d d0                                     	imul   ebx,DWORD PTR [rbp-0x30]
    23a8d3559e41:	03 da                                           	add    ebx,edx
    23a8d3559e43:	8d 1c d9                                        	lea    ebx,[rcx+rbx*8]
    23a8d3559e46:	c4 c1 7a 10 2c 1c                               	vmovss xmm5,DWORD PTR [r12+rbx*1]
    23a8d3559e4c:	41 8b 5c 34 6c                                  	mov    ebx,DWORD PTR [r12+rsi*1+0x6c]
    23a8d3559e51:	81 eb 00 02 00 00                               	sub    ebx,0x200
    23a8d3559e57:	83 fb 08                                        	cmp    ebx,0x8
    23a8d3559e5a:	0f 83 0b 00 00 00                               	jae    0x23a8d3559e6b
    23a8d3559e60:	4c 8d 15 99 6e 00 00                            	lea    r10,[rip+0x6e99]        # 0x23a8d3560d00
    23a8d3559e67:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    23a8d3559e6b:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3559e6f:	0f 87 6a 00 00 00                               	ja     0x23a8d3559edf
    23a8d3559e75:	e9 61 00 00 00                                  	jmp    0x23a8d3559edb
    23a8d3559e7a:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3559e7e:	0f 83 5b 00 00 00                               	jae    0x23a8d3559edf
    23a8d3559e84:	e9 52 00 00 00                                  	jmp    0x23a8d3559edb
    23a8d3559e89:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3559e8d:	0f 8a 4c 00 00 00                               	jp     0x23a8d3559edf
    23a8d3559e93:	0f 84 42 00 00 00                               	je     0x23a8d3559edb
    23a8d3559e99:	e9 41 00 00 00                                  	jmp    0x23a8d3559edf
    23a8d3559e9e:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3559ea2:	0f 87 37 00 00 00                               	ja     0x23a8d3559edf
    23a8d3559ea8:	e9 2e 00 00 00                                  	jmp    0x23a8d3559edb
    23a8d3559ead:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3559eb1:	0f 83 28 00 00 00                               	jae    0x23a8d3559edf
    23a8d3559eb7:	e9 1f 00 00 00                                  	jmp    0x23a8d3559edb
    23a8d3559ebc:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3559ec0:	0f 8a 15 00 00 00                               	jp     0x23a8d3559edb
    23a8d3559ec6:	0f 84 13 00 00 00                               	je     0x23a8d3559edf
    23a8d3559ecc:	e9 0a 00 00 00                                  	jmp    0x23a8d3559edb
    23a8d3559ed1:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3559ed5:	0f 87 04 00 00 00                               	ja     0x23a8d3559edf
    23a8d3559edb:	41 83 e7 02                                     	and    r15d,0x2
    23a8d3559edf:	41 f6 c7 02                                     	test   r15b,0x2
    23a8d3559ee3:	0f 85 23 00 00 00                               	jne    0x23a8d3559f0c
    23a8d3559ee9:	45 85 ff                                        	test   r15d,r15d
    23a8d3559eec:	0f 85 0e 00 00 00                               	jne    0x23a8d3559f00
    23a8d3559ef2:	44 8b cf                                        	mov    r9d,edi
    23a8d3559ef5:	49 8b fc                                        	mov    rdi,r12
    23a8d3559ef8:	4c 8b c6                                        	mov    r8,rsi
    23a8d3559efb:	e9 e0 15 00 00                                  	jmp    0x23a8d355b4e0
    23a8d3559f00:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    23a8d3559f07:	e9 75 01 00 00                                  	jmp    0x23a8d355a081
    23a8d3559f0c:	49 8b 9c 3c e8 00 00 00                         	mov    rbx,QWORD PTR [r12+rdi*1+0xe8]
    23a8d3559f14:	49 03 d9                                        	add    rbx,r9
    23a8d3559f17:	c4 e1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,rbx
    23a8d3559f1c:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    23a8d3559f20:	c5 da 5c e8                                     	vsubss xmm5,xmm4,xmm0
    23a8d3559f24:	49 8b 9c 3c f0 00 00 00                         	mov    rbx,QWORD PTR [r12+rdi*1+0xf0]
    23a8d3559f2c:	49 03 d8                                        	add    rbx,r8
    23a8d3559f2f:	c4 61 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,rbx
    23a8d3559f34:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    23a8d3559f39:	c4 c1 52 5c ea                                  	vsubss xmm5,xmm5,xmm10
    23a8d3559f3e:	c4 81 52 59 6c 1c 18                            	vmulss xmm5,xmm5,DWORD PTR [r12+r11*1+0x18]
    23a8d3559f45:	c4 c1 7a 59 44 04 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+rax*1+0x18]
    23a8d3559f4c:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    23a8d3559f53:	c4 41 7a 10 5c 1c 18                            	vmovss xmm11,DWORD PTR [r12+rbx*1+0x18]
    23a8d3559f5a:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    23a8d3559f5f:	c4 c1 7a 58 c2                                  	vaddss xmm0,xmm0,xmm10
    23a8d3559f64:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    23a8d3559f68:	c5 fa 58 85 40 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x2c0]
    23a8d3559f70:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    23a8d3559f74:	0f 87 09 00 00 00                               	ja     0x23a8d3559f83
    23a8d3559f7a:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d3559f7e:	e9 04 00 00 00                                  	jmp    0x23a8d3559f87
    23a8d3559f83:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    23a8d3559f87:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d3559f8b:	0f 87 09 00 00 00                               	ja     0x23a8d3559f9a
    23a8d3559f91:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    23a8d3559f95:	e9 04 00 00 00                                  	jmp    0x23a8d3559f9e
    23a8d3559f9a:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d3559f9e:	c4 c1 7a 11 44 3c 04                            	vmovss DWORD PTR [r12+rdi*1+0x4],xmm0
    23a8d3559fa5:	41 8b 4c 34 68                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x68]
    23a8d3559faa:	41 83 7c 34 68 00                               	cmp    DWORD PTR [r12+rsi*1+0x68],0x0
    23a8d3559fb0:	0f 84 cb 00 00 00                               	je     0x23a8d355a081
    23a8d3559fb6:	41 8b 8c 34 a4 00 00 00                         	mov    ecx,DWORD PTR [r12+rsi*1+0xa4]
    23a8d3559fbe:	41 83 bc 34 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rsi*1+0xa4],0x0
    23a8d3559fc7:	0f 85 b4 00 00 00                               	jne    0x23a8d355a081
    23a8d3559fcd:	41 8b 4c 34 1c                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x1c]
    23a8d3559fd2:	41 8b 04 34                                     	mov    eax,DWORD PTR [r12+rsi*1]
    23a8d3559fd6:	0f af 45 d0                                     	imul   eax,DWORD PTR [rbp-0x30]
    23a8d3559fda:	03 c2                                           	add    eax,edx
    23a8d3559fdc:	8d 04 c1                                        	lea    eax,[rcx+rax*8]
    23a8d3559fdf:	c4 c1 7a 10 6c 04 04                            	vmovss xmm5,DWORD PTR [r12+rax*1+0x4]
    23a8d3559fe6:	41 8b 44 34 6c                                  	mov    eax,DWORD PTR [r12+rsi*1+0x6c]
    23a8d3559feb:	2d 00 02 00 00                                  	sub    eax,0x200
    23a8d3559ff0:	83 f8 08                                        	cmp    eax,0x8
    23a8d3559ff3:	0f 83 0b 00 00 00                               	jae    0x23a8d355a004
    23a8d3559ff9:	4c 8d 15 c0 6c 00 00                            	lea    r10,[rip+0x6cc0]        # 0x23a8d3560cc0
    23a8d355a000:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    23a8d355a004:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d355a008:	0f 87 73 00 00 00                               	ja     0x23a8d355a081
    23a8d355a00e:	e9 61 00 00 00                                  	jmp    0x23a8d355a074
    23a8d355a013:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355a017:	0f 83 64 00 00 00                               	jae    0x23a8d355a081
    23a8d355a01d:	e9 52 00 00 00                                  	jmp    0x23a8d355a074
    23a8d355a022:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d355a026:	0f 8a 55 00 00 00                               	jp     0x23a8d355a081
    23a8d355a02c:	0f 84 42 00 00 00                               	je     0x23a8d355a074
    23a8d355a032:	e9 4a 00 00 00                                  	jmp    0x23a8d355a081
    23a8d355a037:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355a03b:	0f 87 40 00 00 00                               	ja     0x23a8d355a081
    23a8d355a041:	e9 2e 00 00 00                                  	jmp    0x23a8d355a074
    23a8d355a046:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d355a04a:	0f 83 31 00 00 00                               	jae    0x23a8d355a081
    23a8d355a050:	e9 1f 00 00 00                                  	jmp    0x23a8d355a074
    23a8d355a055:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d355a059:	0f 8a 15 00 00 00                               	jp     0x23a8d355a074
    23a8d355a05f:	0f 84 1c 00 00 00                               	je     0x23a8d355a081
    23a8d355a065:	e9 0a 00 00 00                                  	jmp    0x23a8d355a074
    23a8d355a06a:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d355a06e:	0f 87 0d 00 00 00                               	ja     0x23a8d355a081
    23a8d355a074:	41 83 e7 01                                     	and    r15d,0x1
    23a8d355a078:	45 85 ff                                        	test   r15d,r15d
    23a8d355a07b:	0f 84 71 fe ff ff                               	je     0x23a8d3559ef2
    23a8d355a081:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    23a8d355a088:	41 83 ff 03                                     	cmp    r15d,0x3
    23a8d355a08c:	0f 84 1e 00 00 00                               	je     0x23a8d355a0b0
    23a8d355a092:	8d 87 d0 00 00 00                               	lea    eax,[rdi+0xd0]
    23a8d355a098:	f3 41 0f bc cf                                  	tzcnt  ecx,r15d
    23a8d355a09d:	6b c9 18                                        	imul   ecx,ecx,0x18
    23a8d355a0a0:	03 c1                                           	add    eax,ecx
    23a8d355a0a2:	49 8b 4c 04 08                                  	mov    rcx,QWORD PTR [r12+rax*1+0x8]
    23a8d355a0a7:	49 8b 04 04                                     	mov    rax,QWORD PTR [r12+rax*1]
    23a8d355a0ab:	e9 0e 00 00 00                                  	jmp    0x23a8d355a0be
    23a8d355a0b0:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    23a8d355a0b7:	48 8b 85 f8 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x408]
    23a8d355a0be:	49 03 c8                                        	add    rcx,r8
    23a8d355a0c1:	49 03 c1                                        	add    rax,r9
    23a8d355a0c4:	83 bd 28 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2d8],0x0
    23a8d355a0cb:	0f 85 6c 14 00 00                               	jne    0x23a8d355b53d
    23a8d355a0d1:	c4 81 7a 10 44 1c 1c                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x1c]
    23a8d355a0d8:	c4 c1 7a 10 6c 1c 1c                            	vmovss xmm5,DWORD PTR [r12+rbx*1+0x1c]
    23a8d355a0df:	4c 8b 85 f8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x108]
    23a8d355a0e6:	c4 01 7a 10 54 04 1c                            	vmovss xmm10,DWORD PTR [r12+r8*1+0x1c]
    23a8d355a0ed:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    23a8d355a0f4:	45 8b bc 34 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+rsi*1+0x3cc8]
    23a8d355a0fc:	41 83 bc 34 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rsi*1+0x3cc8],0x0
    23a8d355a105:	0f 84 5f 00 00 00                               	je     0x23a8d355a16a
    23a8d355a10b:	44 8b fa                                        	mov    r15d,edx
    23a8d355a10e:	41 c1 ef 03                                     	shr    r15d,0x3
    23a8d355a112:	41 83 e7 03                                     	and    r15d,0x3
    23a8d355a116:	8b 95 f8 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x308]
    23a8d355a11c:	41 0b d7                                        	or     edx,r15d
    23a8d355a11f:	44 8b bd 78 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x188]
    23a8d355a126:	41 03 d7                                        	add    edx,r15d
    23a8d355a129:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    23a8d355a12e:	44 8b bd 00 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x200]
    23a8d355a135:	41 83 e7 07                                     	and    r15d,0x7
    23a8d355a139:	4c 8b d1                                        	mov    r10,rcx
    23a8d355a13c:	41 8b cf                                        	mov    ecx,r15d
    23a8d355a13f:	4d 8b fa                                        	mov    r15,r10
    23a8d355a142:	d3 e2                                           	shl    edx,cl
    23a8d355a144:	f6 c2 80                                        	test   dl,0x80
    23a8d355a147:	0f 85 14 00 00 00                               	jne    0x23a8d355a161
    23a8d355a14d:	44 8b cf                                        	mov    r9d,edi
    23a8d355a150:	49 8b fc                                        	mov    rdi,r12
    23a8d355a153:	4c 8b c6                                        	mov    r8,rsi
    23a8d355a156:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355a15c:	e9 7f 13 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355a161:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355a167:	49 8b cf                                        	mov    rcx,r15
    23a8d355a16a:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    23a8d355a16f:	c4 41 62 59 db                                  	vmulss xmm11,xmm3,xmm11
    23a8d355a174:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    23a8d355a179:	c4 e1 82 2a f1                                  	vcvtsi2ss xmm6,xmm15,rcx
    23a8d355a17e:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    23a8d355a182:	c5 ca 59 ed                                     	vmulss xmm5,xmm6,xmm5
    23a8d355a186:	c5 2a 58 c5                                     	vaddss xmm8,xmm10,xmm5
    23a8d355a18a:	c4 41 5a 5c db                                  	vsubss xmm11,xmm4,xmm11
    23a8d355a18f:	c5 a2 5c f6                                     	vsubss xmm6,xmm11,xmm6
    23a8d355a193:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d355a197:	c5 ba 58 f0                                     	vaddss xmm6,xmm8,xmm0
    23a8d355a19b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355a19f:	0f 83 4d fd ff ff                               	jae    0x23a8d3559ef2
    23a8d355a1a5:	c5 da 5e f6                                     	vdivss xmm6,xmm4,xmm6
    23a8d355a1a9:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    23a8d355a1ad:	c4 62 79 18 c6                                  	vbroadcastss xmm8,xmm6
    23a8d355a1b2:	c4 01 7a 6f 5c 1c 20                            	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x20]
    23a8d355a1b9:	c5 fb 11 b5 c0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x240],xmm6
    23a8d355a1c1:	c4 e2 79 18 f0                                  	vbroadcastss xmm6,xmm0
    23a8d355a1c6:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    23a8d355a1ca:	c4 01 7a 6f 5c 04 20                            	vmovdqu xmm11,XMMWORD PTR [r12+r8*1+0x20]
    23a8d355a1d1:	c5 fb 11 85 20 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2e0],xmm0
    23a8d355a1d9:	c4 c2 79 18 c2                                  	vbroadcastss xmm0,xmm10
    23a8d355a1de:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    23a8d355a1e2:	c4 62 79 18 dd                                  	vbroadcastss xmm11,xmm5
    23a8d355a1e7:	c5 fb 11 ad 40 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3c0],xmm5
    23a8d355a1ef:	c4 c1 7a 6f 6c 1c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+rbx*1+0x20]
    23a8d355a1f6:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    23a8d355a1fa:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d355a1fe:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    23a8d355a202:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d355a206:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    23a8d355a210:	c4 81 7a 10 ac 1c 98 00 00 00                   	vmovss xmm5,DWORD PTR [r12+r11*1+0x98]
    23a8d355a21a:	c4 81 7a 10 b4 04 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+r8*1+0x98]
    23a8d355a224:	c4 41 7a 10 84 1c 98 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rbx*1+0x98]
    23a8d355a22e:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    23a8d355a238:	44 8b bd 08 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xf8]
    23a8d355a23f:	43 8b 84 3c 34 01 00 00                         	mov    eax,DWORD PTR [r12+r15*1+0x134]
    23a8d355a247:	8d 48 ff                                        	lea    ecx,[rax-0x1]
    23a8d355a24a:	c5 7b 11 95 10 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2f0],xmm10
    23a8d355a252:	c5 fb 11 ad 80 fd ff ff                         	vmovsd QWORD PTR [rbp-0x280],xmm5
    23a8d355a25a:	c5 fb 11 b5 90 fc ff ff                         	vmovsd QWORD PTR [rbp-0x370],xmm6
    23a8d355a262:	c5 7b 11 85 50 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3b0],xmm8
    23a8d355a26a:	83 f9 01                                        	cmp    ecx,0x1
    23a8d355a26d:	0f 86 b3 04 00 00                               	jbe    0x23a8d355a726
    23a8d355a273:	43 8b 84 3c 30 01 00 00                         	mov    eax,DWORD PTR [r12+r15*1+0x130]
    23a8d355a27b:	43 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0x130],0x0
    23a8d355a284:	0f 85 0b 00 00 00                               	jne    0x23a8d355a295
    23a8d355a28a:	44 8b cf                                        	mov    r9d,edi
    23a8d355a28d:	49 8b fc                                        	mov    rdi,r12
    23a8d355a290:	e9 3a 05 00 00                                  	jmp    0x23a8d355a7cf
    23a8d355a295:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    23a8d355a29b:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    23a8d355a2a1:	51                                              	push   rcx
    23a8d355a2a2:	4c 89 bd b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r15
    23a8d355a2a9:	48 89 85 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rax
    23a8d355a2b0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a2b4:	44 8b c8                                        	mov    r9d,eax
    23a8d355a2b7:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    23a8d355a2bd:	8b 95 58 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3a8]
    23a8d355a2c3:	8b 8d 98 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x368]
    23a8d355a2c9:	8b 9d f0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x310]
    23a8d355a2cf:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    23a8d355a2d4:	c5 fb 10 95 40 fc ff ff                         	vmovsd xmm2,QWORD PTR [rbp-0x3c0]
    23a8d355a2dc:	c5 fb 10 9d 20 fd ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x2e0]
    23a8d355a2e4:	c5 fb 10 a5 c0 fd ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x240]
    23a8d355a2ec:	e8 27 1f ef ff                                  	call   0x23a8d344c218
    23a8d355a2f1:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a2f5:	4c 8b 85 b8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x248]
    23a8d355a2fc:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    23a8d355a304:	45 85 c0                                        	test   r8d,r8d
    23a8d355a307:	0f 85 9a 01 00 00                               	jne    0x23a8d355a4a7
    23a8d355a30d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a311:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    23a8d355a319:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    23a8d355a322:	0f 84 4b 00 00 00                               	je     0x23a8d355a373
    23a8d355a328:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d355a32f:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d355a336:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d355a33d:	41 50                                           	push   r8
    23a8d355a33f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a343:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    23a8d355a349:	33 d2                                           	xor    edx,edx
    23a8d355a34b:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    23a8d355a352:	e8 e9 1e ef ff                                  	call   0x23a8d344c240
    23a8d355a357:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a35b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a35f:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d355a369:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d355a373:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    23a8d355a37b:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    23a8d355a384:	0f 84 4e 00 00 00                               	je     0x23a8d355a3d8
    23a8d355a38a:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d355a391:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d355a398:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d355a39f:	41 50                                           	push   r8
    23a8d355a3a1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a3a5:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    23a8d355a3ab:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d355a3b0:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    23a8d355a3b7:	e8 84 1e ef ff                                  	call   0x23a8d344c240
    23a8d355a3bc:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a3c0:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a3c4:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d355a3ce:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d355a3d8:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    23a8d355a3e0:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    23a8d355a3e9:	0f 84 4e 00 00 00                               	je     0x23a8d355a43d
    23a8d355a3ef:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d355a3f6:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d355a3fd:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d355a404:	41 50                                           	push   r8
    23a8d355a406:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a40a:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    23a8d355a410:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d355a415:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    23a8d355a41c:	e8 1f 1e ef ff                                  	call   0x23a8d344c240
    23a8d355a421:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a425:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a429:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d355a433:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d355a43d:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    23a8d355a445:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    23a8d355a44e:	0f 84 7b 03 00 00                               	je     0x23a8d355a7cf
    23a8d355a454:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d355a45b:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d355a462:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d355a469:	41 50                                           	push   r8
    23a8d355a46b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a46f:	8b 85 e8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x118]
    23a8d355a475:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d355a47a:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    23a8d355a481:	e8 ba 1d ef ff                                  	call   0x23a8d344c240
    23a8d355a486:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a48a:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a48e:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d355a498:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d355a4a2:	e9 28 03 00 00                                  	jmp    0x23a8d355a7cf
    23a8d355a4a7:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d355a4ab:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    23a8d355a4b5:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d355a4bb:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d355a4c0:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355a4c4:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    23a8d355a4ce:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d355a4d2:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d355a4d6:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    23a8d355a4e0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d355a4e4:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    23a8d355a4ee:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d355a4f2:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    23a8d355a4f6:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    23a8d355a500:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d355a504:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    23a8d355a50e:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    23a8d355a512:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    23a8d355a516:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    23a8d355a51a:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355a51e:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d355a524:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d355a529:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    23a8d355a52d:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d355a531:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d355a536:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d355a53b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355a53f:	0f 87 09 00 00 00                               	ja     0x23a8d355a54e
    23a8d355a545:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d355a549:	e9 04 00 00 00                                  	jmp    0x23a8d355a552
    23a8d355a54e:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d355a552:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d355a556:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d355a55a:	0f 87 09 00 00 00                               	ja     0x23a8d355a569
    23a8d355a560:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d355a564:	e9 04 00 00 00                                  	jmp    0x23a8d355a56d
    23a8d355a569:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d355a56d:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d355a572:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d355a576:	0f 84 a3 00 00 00                               	je     0x23a8d355a61f
    23a8d355a57c:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d355a580:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    23a8d355a58a:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355a58e:	0f 87 09 00 00 00                               	ja     0x23a8d355a59d
    23a8d355a594:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d355a598:	e9 04 00 00 00                                  	jmp    0x23a8d355a5a1
    23a8d355a59d:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d355a5a1:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355a5a5:	0f 87 0a 00 00 00                               	ja     0x23a8d355a5b5
    23a8d355a5ab:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d355a5b0:	e9 04 00 00 00                                  	jmp    0x23a8d355a5b9
    23a8d355a5b5:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355a5b9:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d355a5bd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355a5c2:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d355a5c7:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d355a5cb:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    23a8d355a5d5:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d355a5da:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d355a5df:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d355a5e3:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d355a5ed:	41 83 f8 03                                     	cmp    r8d,0x3
    23a8d355a5f1:	0f 85 04 00 00 00                               	jne    0x23a8d355a5fb
    23a8d355a5f7:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    23a8d355a5fb:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    23a8d355a600:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d355a604:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d355a608:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    23a8d355a612:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d355a617:	4d 8b c4                                        	mov    r8,r12
    23a8d355a61a:	e9 cd 00 00 00                                  	jmp    0x23a8d355a6ec
    23a8d355a61f:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    23a8d355a629:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355a62d:	0f 87 09 00 00 00                               	ja     0x23a8d355a63c
    23a8d355a633:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d355a637:	e9 04 00 00 00                                  	jmp    0x23a8d355a640
    23a8d355a63c:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d355a640:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355a644:	0f 87 0a 00 00 00                               	ja     0x23a8d355a654
    23a8d355a64a:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d355a64f:	e9 04 00 00 00                                  	jmp    0x23a8d355a658
    23a8d355a654:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355a658:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d355a662:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    23a8d355a668:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    23a8d355a66d:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355a671:	0f 87 09 00 00 00                               	ja     0x23a8d355a680
    23a8d355a677:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d355a67b:	e9 04 00 00 00                                  	jmp    0x23a8d355a684
    23a8d355a680:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    23a8d355a684:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355a688:	0f 87 0a 00 00 00                               	ja     0x23a8d355a698
    23a8d355a68e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d355a693:	e9 04 00 00 00                                  	jmp    0x23a8d355a69c
    23a8d355a698:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355a69c:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    23a8d355a6a6:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355a6ab:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d355a6af:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    23a8d355a6b9:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    23a8d355a6be:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d355a6c3:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d355a6c7:	4c 8b 15 ff fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeff]        # 0x23a8d355a5cd
    23a8d355a6ce:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355a6d3:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355a6d8:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d355a6dc:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d355a6e0:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d355a6e4:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d355a6e8:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    23a8d355a6ec:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d355a6f1:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d355a6f5:	4c 8b 15 d1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed1]        # 0x23a8d355a5cd
    23a8d355a6fc:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355a701:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d355a706:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    23a8d355a70a:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    23a8d355a714:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    23a8d355a71e:	45 8b cb                                        	mov    r9d,r11d
    23a8d355a721:	e9 a9 00 00 00                                  	jmp    0x23a8d355a7cf
    23a8d355a726:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    23a8d355a72d:	c5 fa 59 85 20 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e0]
    23a8d355a735:	c4 01 7a 10 4c 04 50                            	vmovss xmm9,DWORD PTR [r12+r8*1+0x50]
    23a8d355a73c:	c4 41 32 59 ca                                  	vmulss xmm9,xmm9,xmm10
    23a8d355a741:	4c 8b fb                                        	mov    r15,rbx
    23a8d355a744:	c5 7b 10 9d 40 fc ff ff                         	vmovsd xmm11,QWORD PTR [rbp-0x3c0]
    23a8d355a74c:	c4 81 22 59 4c 3c 50                            	vmulss xmm1,xmm11,DWORD PTR [r12+r15*1+0x50]
    23a8d355a753:	c5 32 58 c9                                     	vaddss xmm9,xmm9,xmm1
    23a8d355a757:	c4 c1 7a 58 c1                                  	vaddss xmm0,xmm0,xmm9
    23a8d355a75c:	c5 7b 10 8d c0 fd ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x240]
    23a8d355a764:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    23a8d355a768:	c4 81 7a 10 44 1c 54                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x54]
    23a8d355a76f:	c5 fa 59 85 20 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e0]
    23a8d355a777:	c4 81 7a 10 54 04 54                            	vmovss xmm2,DWORD PTR [r12+r8*1+0x54]
    23a8d355a77e:	c4 c1 6a 59 d2                                  	vmulss xmm2,xmm2,xmm10
    23a8d355a783:	c4 81 22 59 6c 3c 54                            	vmulss xmm5,xmm11,DWORD PTR [r12+r15*1+0x54]
    23a8d355a78a:	c5 ea 58 ed                                     	vaddss xmm5,xmm2,xmm5
    23a8d355a78e:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355a792:	c5 b2 59 d0                                     	vmulss xmm2,xmm9,xmm0
    23a8d355a796:	8d 8f 90 02 00 00                               	lea    ecx,[rdi+0x290]
    23a8d355a79c:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    23a8d355a7a2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a7a6:	8b d0                                           	mov    edx,eax
    23a8d355a7a8:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    23a8d355a7ae:	e8 7d 1d ef ff                                  	call   0x23a8d344c530
    23a8d355a7b3:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a7b7:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a7bb:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    23a8d355a7c5:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d355a7cf:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d355a7d3:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    23a8d355a7db:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    23a8d355a7e4:	0f 84 c5 01 00 00                               	je     0x23a8d355a9af
    23a8d355a7ea:	c5 fb 10 85 80 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x280]
    23a8d355a7f2:	c5 fa 59 85 20 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e0]
    23a8d355a7fa:	c5 fb 10 ad 90 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x370]
    23a8d355a802:	c5 d2 59 ad 10 fd ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x2f0]
    23a8d355a80a:	c5 fb 10 b5 40 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3c0]
    23a8d355a812:	c5 ca 59 b5 50 fc ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x3b0]
    23a8d355a81a:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d355a81e:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355a822:	c5 fb 10 ad c0 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x240]
    23a8d355a82a:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    23a8d355a82e:	4c 8b 15 7c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77c]        # 0x23a8d3558fb1
    23a8d355a835:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d355a83a:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d355a83e:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    23a8d355a842:	0f 87 04 00 00 00                               	ja     0x23a8d355a84c
    23a8d355a848:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d355a84c:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    23a8d355a854:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    23a8d355a85b:	0f 85 28 00 00 00                               	jne    0x23a8d355a889
    23a8d355a861:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    23a8d355a86b:	4c 8b 15 3f e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73f]        # 0x23a8d3558fb1
    23a8d355a872:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d355a877:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    23a8d355a87b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a87f:	e8 34 3d ef ff                                  	call   0x23a8d344e5b8
    23a8d355a884:	e9 89 00 00 00                                  	jmp    0x23a8d355a912
    23a8d355a889:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d355a88d:	0f 84 5c 00 00 00                               	je     0x23a8d355a8ef
    23a8d355a893:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    23a8d355a89d:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    23a8d355a8a7:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    23a8d355a8ab:	7a 06                                           	jp     0x23a8d355a8b3
    23a8d355a8ad:	0f 84 29 00 00 00                               	je     0x23a8d355a8dc
    23a8d355a8b3:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    23a8d355a8b7:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    23a8d355a8bb:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d355a8bf:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    23a8d355a8c3:	0f 86 49 00 00 00                               	jbe    0x23a8d355a912
    23a8d355a8c9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355a8cd:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d355a8d2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d355a8d7:	e9 5b 00 00 00                                  	jmp    0x23a8d355a937
    23a8d355a8dc:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355a8e0:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d355a8e5:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d355a8ea:	e9 44 00 00 00                                  	jmp    0x23a8d355a933
    23a8d355a8ef:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    23a8d355a8f9:	4c 8b 15 b1 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6b1]        # 0x23a8d3558fb1
    23a8d355a900:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d355a905:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    23a8d355a909:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355a90d:	e8 a6 3c ef ff                                  	call   0x23a8d344e5b8
    23a8d355a912:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355a916:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d355a91b:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d355a920:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d355a924:	0f 87 09 00 00 00                               	ja     0x23a8d355a933
    23a8d355a92a:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    23a8d355a92e:	e9 04 00 00 00                                  	jmp    0x23a8d355a937
    23a8d355a933:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d355a937:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355a93b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355a93f:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    23a8d355a949:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    23a8d355a94d:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d355a951:	c4 21 42 59 84 07 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x100]
    23a8d355a95b:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d355a960:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    23a8d355a96a:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    23a8d355a974:	c4 21 42 59 84 07 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x104]
    23a8d355a97e:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d355a983:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    23a8d355a98d:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    23a8d355a997:	c4 a1 42 59 b4 07 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [rdi+r8*1+0x108]
    23a8d355a9a1:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d355a9a5:	c4 a1 7a 11 ac 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm5
    23a8d355a9af:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    23a8d355a9b9:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    23a8d355a9c3:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d355a9ca:	0f 85 da 0a 00 00                               	jne    0x23a8d355b4aa
    23a8d355a9d0:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    23a8d355a9d5:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    23a8d355a9db:	0f 85 8e 0a 00 00                               	jne    0x23a8d355b46f
    23a8d355a9e1:	4c 8b 15 e5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe5]        # 0x23a8d355a5cd
    23a8d355a9e8:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d355a9ed:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d355a9f1:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d355a9f5:	c4 a1 7a 6f b4 0f 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1+0x280]
    23a8d355a9ff:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    23a8d355aa03:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    23a8d355aa08:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    23a8d355aa0c:	4c 8b 15 ba fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbba]        # 0x23a8d355a5cd
    23a8d355aa13:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355aa18:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d355aa1c:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    23a8d355aa21:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    23a8d355aa25:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d355aa29:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355aa2e:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    23a8d355aa38:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355aa3d:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d355aa41:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d355aa45:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    23a8d355aa4f:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355aa54:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d355aa58:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355aa5c:	49 ba 40 29 a3 be 86 62 00 00                   	movabs r10,0x6286bea32940
    23a8d355aa66:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d355aa6b:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    23a8d355aa70:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d355aa76:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    23a8d355aa7a:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    23a8d355aa7f:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    23a8d355aa89:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355aa8e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d355aa92:	4c 8b 15 bc d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd7bc]        # 0x23a8d3558255
    23a8d355aa99:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d355aa9e:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    23a8d355aaa8:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355aaad:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d355aab2:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    23a8d355aab8:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    23a8d355aabc:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    23a8d355aac0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355aac5:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    23a8d355aaca:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    23a8d355aace:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355aad3:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    23a8d355aad7:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    23a8d355aadc:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355aae2:	44 03 da                                        	add    r11d,edx
    23a8d355aae5:	47 8d 24 1b                                     	lea    r12d,[r11+r11*1]
    23a8d355aae9:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    23a8d355aaee:	47 8d 1c df                                     	lea    r11d,[r15+r11*8]
    23a8d355aaf2:	83 bd 30 fe ff ff 03                            	cmp    DWORD PTR [rbp-0x1d0],0x3
    23a8d355aaf9:	0f 84 8b 00 00 00                               	je     0x23a8d355ab8a
    23a8d355aaff:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    23a8d355ab06:	41 83 e7 01                                     	and    r15d,0x1
    23a8d355ab0a:	41 f7 df                                        	neg    r15d
    23a8d355ab0d:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    23a8d355ab13:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    23a8d355ab1a:	41 c1 e7 1e                                     	shl    r15d,0x1e
    23a8d355ab1e:	41 c1 ff 1f                                     	sar    r15d,0x1f
    23a8d355ab22:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    23a8d355ab28:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    23a8d355ab2d:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    23a8d355ab33:	0f 84 39 00 00 00                               	je     0x23a8d355ab72
    23a8d355ab39:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    23a8d355ab3e:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    23a8d355ab44:	0f 84 28 00 00 00                               	je     0x23a8d355ab72
    23a8d355ab4a:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d355ab4f:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    23a8d355ab53:	c4 a1 7b 10 34 0f                               	vmovsd xmm6,QWORD PTR [rdi+r9*1]
    23a8d355ab59:	c4 a1 7b 10 3c 27                               	vmovsd xmm7,QWORD PTR [rdi+r12*1]
    23a8d355ab5f:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    23a8d355ab63:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    23a8d355ab67:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d355ab6c:	c4 a1 78 13 34 27                               	vmovlps QWORD PTR [rdi+r12*1],xmm6
    23a8d355ab72:	c4 a1 7b 10 34 1f                               	vmovsd xmm6,QWORD PTR [rdi+r11*1]
    23a8d355ab78:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    23a8d355ab7c:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d355ab80:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ab85:	e9 33 00 00 00                                  	jmp    0x23a8d355abbd
    23a8d355ab8a:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    23a8d355ab8f:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    23a8d355ab95:	0f 84 22 00 00 00                               	je     0x23a8d355abbd
    23a8d355ab9b:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    23a8d355aba0:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    23a8d355aba6:	0f 84 11 00 00 00                               	je     0x23a8d355abbd
    23a8d355abac:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d355abb1:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    23a8d355abb5:	4e 8b 3c 0f                                     	mov    r15,QWORD PTR [rdi+r9*1]
    23a8d355abb9:	4e 89 3c 27                                     	mov    QWORD PTR [rdi+r12*1],r15
    23a8d355abbd:	c4 a1 78 13 04 1f                               	vmovlps QWORD PTR [rdi+r11*1],xmm0
    23a8d355abc3:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    23a8d355abc8:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    23a8d355abce:	0f 84 0c 09 00 00                               	je     0x23a8d355b4e0
    23a8d355abd4:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    23a8d355abd9:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    23a8d355abdf:	0f 84 fb 08 00 00                               	je     0x23a8d355b4e0
    23a8d355abe5:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    23a8d355abea:	42 83 7c 07 14 02                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x2
    23a8d355abf0:	0f 85 ea 08 00 00                               	jne    0x23a8d355b4e0
    23a8d355abf6:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    23a8d355abfb:	45 85 db                                        	test   r11d,r11d
    23a8d355abfe:	0f 84 dc 08 00 00                               	je     0x23a8d355b4e0
    23a8d355ac04:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    23a8d355ac08:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    23a8d355ac0c:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    23a8d355ac11:	0f 84 c9 08 00 00                               	je     0x23a8d355b4e0
    23a8d355ac17:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    23a8d355ac1b:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    23a8d355ac1f:	41 83 eb 3c                                     	sub    r11d,0x3c
    23a8d355ac23:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    23a8d355ac27:	44 8b fa                                        	mov    r15d,edx
    23a8d355ac2a:	41 c1 ef 02                                     	shr    r15d,0x2
    23a8d355ac2e:	45 0f af fb                                     	imul   r15d,r11d
    23a8d355ac32:	41 c1 e7 04                                     	shl    r15d,0x4
    23a8d355ac36:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    23a8d355ac3a:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    23a8d355ac41:	45 03 dc                                        	add    r11d,r12d
    23a8d355ac44:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    23a8d355ac49:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    23a8d355ac50:	33 c0                                           	xor    eax,eax
    23a8d355ac52:	45 85 ff                                        	test   r15d,r15d
    23a8d355ac55:	0f 94 c0                                        	sete   al
    23a8d355ac58:	41 83 ff 02                                     	cmp    r15d,0x2
    23a8d355ac5c:	41 0f 94 c7                                     	sete   r15b
    23a8d355ac60:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d355ac64:	44 0b f8                                        	or     r15d,eax
    23a8d355ac67:	0f 85 0d 00 00 00                               	jne    0x23a8d355ac7a
    23a8d355ac6d:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    23a8d355ac75:	e9 66 08 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355ac7a:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    23a8d355ac81:	8b c2                                           	mov    eax,edx
    23a8d355ac83:	83 e0 03                                        	and    eax,0x3
    23a8d355ac86:	8b 9d a0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x360]
    23a8d355ac8c:	0b d8                                           	or     ebx,eax
    23a8d355ac8e:	8d 04 1b                                        	lea    eax,[rbx+rbx*1]
    23a8d355ac91:	83 e0 3f                                        	and    eax,0x3f
    23a8d355ac94:	8b c8                                           	mov    ecx,eax
    23a8d355ac96:	49 d3 e7                                        	shl    r15,cl
    23a8d355ac99:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    23a8d355ac9d:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    23a8d355aca2:	48 3b c3                                        	cmp    rax,rbx
    23a8d355aca5:	0f 84 e2 03 00 00                               	je     0x23a8d355b08d
    23a8d355acab:	49 0b c7                                        	or     rax,r15
    23a8d355acae:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    23a8d355acb2:	48 3b d8                                        	cmp    rbx,rax
    23a8d355acb5:	0f 85 25 08 00 00                               	jne    0x23a8d355b4e0
    23a8d355acbb:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d355acc0:	8b c2                                           	mov    eax,edx
    23a8d355acc2:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    23a8d355acc7:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    23a8d355accb:	8b cb                                           	mov    ecx,ebx
    23a8d355accd:	0f af 8d 68 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x398]
    23a8d355acd4:	03 c8                                           	add    ecx,eax
    23a8d355acd6:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355acda:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d355ace0:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d355ace5:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    23a8d355acea:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d355acef:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d355acf3:	8b cb                                           	mov    ecx,ebx
    23a8d355acf5:	0f af 8d 38 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3c8]
    23a8d355acfc:	03 c8                                           	add    ecx,eax
    23a8d355acfe:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355ad02:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d355ad08:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d355ad0d:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d355ad12:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    23a8d355ad17:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d355ad1d:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d355ad22:	8b cb                                           	mov    ecx,ebx
    23a8d355ad24:	0f af 8d 10 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3f0]
    23a8d355ad2b:	03 c8                                           	add    ecx,eax
    23a8d355ad2d:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355ad31:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d355ad37:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d355ad3d:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d355ad42:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    23a8d355ad47:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d355ad4d:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d355ad52:	0f af 9d 70 fc ff ff                            	imul   ebx,DWORD PTR [rbp-0x390]
    23a8d355ad59:	03 c3                                           	add    eax,ebx
    23a8d355ad5b:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    23a8d355ad5f:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    23a8d355ad66:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d355ad6c:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d355ad71:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    23a8d355ad77:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d355ad7d:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d355ad82:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d355ad87:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d355ad8c:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    23a8d355ad90:	41 83 ff 0f                                     	cmp    r15d,0xf
    23a8d355ad94:	0f 84 0e 00 00 00                               	je     0x23a8d355ada8
    23a8d355ad9a:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    23a8d355ada3:	e9 38 07 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355ada8:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    23a8d355adb2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355adb7:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    23a8d355adc1:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d355adc7:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    23a8d355add1:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355add6:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    23a8d355ade0:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d355ade6:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    23a8d355adf0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d355adf5:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    23a8d355adff:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d355ae05:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    23a8d355ae0f:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d355ae14:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    23a8d355ae1e:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d355ae24:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    23a8d355ae2e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d355ae33:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    23a8d355ae3d:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d355ae43:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    23a8d355ae4d:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355ae52:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    23a8d355ae5c:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d355ae62:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    23a8d355ae6c:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d355ae71:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    23a8d355ae7b:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d355ae81:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d355ae86:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d355ae8a:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d355ae8f:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d355ae94:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    23a8d355ae9e:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d355aea4:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d355aea9:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    23a8d355aeb3:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d355aeb8:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d355aebc:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d355aec1:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d355aec7:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d355aecc:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d355aed0:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d355aed4:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d355aed8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355aedd:	4c 8b 15 c7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc7]        # 0x23a8d355aeab
    23a8d355aee4:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355aee9:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d355aeee:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d355aef3:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d355aef7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355aefc:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d355af02:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d355af06:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d355af0b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355af10:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d355af14:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d355af19:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355af1e:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d355af24:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d355af28:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d355af2d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355af32:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d355af36:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d355af3b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355af40:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d355af46:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d355af4a:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d355af4f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355af54:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d355af58:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d355af5d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355af62:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d355af68:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355af6c:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d355af71:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355af76:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d355af7a:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d355af7f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355af84:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d355af89:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d355af8d:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d355af92:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355af97:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d355af9b:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d355afa0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355afa5:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d355afaa:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d355afaf:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355afb3:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d355afb7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355afbc:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355afc0:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355afc4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355afc9:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d355afce:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d355afd3:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d355afd8:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355afdc:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d355afe0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355afe5:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    23a8d355afef:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355aff3:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355aff7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355affc:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    23a8d355b006:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d355b00a:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d355b00e:	45 33 ff                                        	xor    r15d,r15d
    23a8d355b011:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d355b015:	41 0f 97 c7                                     	seta   r15b
    23a8d355b019:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    23a8d355b020:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    23a8d355b028:	0b d8                                           	or     ebx,eax
    23a8d355b02a:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    23a8d355b02f:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d355b034:	bb 02 00 00 00                                  	mov    ebx,0x2
    23a8d355b039:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355b03d:	44 0f 47 fb                                     	cmova  r15d,ebx
    23a8d355b041:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    23a8d355b049:	0b c8                                           	or     ecx,eax
    23a8d355b04b:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    23a8d355b050:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d355b055:	be 03 00 00 00                                  	mov    esi,0x3
    23a8d355b05a:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355b05e:	44 0f 47 fe                                     	cmova  r15d,esi
    23a8d355b062:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d355b066:	41 0b c7                                        	or     eax,r15d
    23a8d355b069:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    23a8d355b06e:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    23a8d355b075:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    23a8d355b07c:	44 0b f8                                        	or     r15d,eax
    23a8d355b07f:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    23a8d355b083:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    23a8d355b088:	e9 53 04 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355b08d:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    23a8d355b092:	8b d8                                           	mov    ebx,eax
    23a8d355b094:	83 e3 3f                                        	and    ebx,0x3f
    23a8d355b097:	8b cb                                           	mov    ecx,ebx
    23a8d355b099:	49 d3 ef                                        	shr    r15,cl
    23a8d355b09c:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d355b0a0:	0f 84 3a 04 00 00                               	je     0x23a8d355b4e0
    23a8d355b0a6:	83 e0 01                                        	and    eax,0x1
    23a8d355b0a9:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    23a8d355b0b1:	45 0b f9                                        	or     r15d,r9d
    23a8d355b0b4:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    23a8d355b0ba:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    23a8d355b0c1:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d355b0c5:	0f 86 15 04 00 00                               	jbe    0x23a8d355b4e0
    23a8d355b0cb:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d355b0d0:	8b c2                                           	mov    eax,edx
    23a8d355b0d2:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    23a8d355b0d7:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    23a8d355b0db:	8b 8d 68 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x398]
    23a8d355b0e1:	0f af cb                                        	imul   ecx,ebx
    23a8d355b0e4:	03 c8                                           	add    ecx,eax
    23a8d355b0e6:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355b0ea:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d355b0f0:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d355b0f5:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    23a8d355b0fa:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d355b0ff:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d355b103:	8b 8d 38 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3c8]
    23a8d355b109:	0f af cb                                        	imul   ecx,ebx
    23a8d355b10c:	03 c8                                           	add    ecx,eax
    23a8d355b10e:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355b112:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d355b118:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d355b11d:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d355b122:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    23a8d355b127:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d355b12d:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d355b132:	8b 8d 10 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3f0]
    23a8d355b138:	0f af cb                                        	imul   ecx,ebx
    23a8d355b13b:	03 c8                                           	add    ecx,eax
    23a8d355b13d:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355b141:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d355b147:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d355b14d:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d355b152:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    23a8d355b157:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d355b15d:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d355b162:	8b 8d 70 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x390]
    23a8d355b168:	0f af cb                                        	imul   ecx,ebx
    23a8d355b16b:	03 c1                                           	add    eax,ecx
    23a8d355b16d:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    23a8d355b171:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    23a8d355b178:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d355b17e:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d355b183:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    23a8d355b189:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d355b18f:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d355b194:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d355b199:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d355b19e:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    23a8d355b1a2:	41 83 ff 0f                                     	cmp    r15d,0xf
    23a8d355b1a6:	0f 84 0e 00 00 00                               	je     0x23a8d355b1ba
    23a8d355b1ac:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    23a8d355b1b5:	e9 26 03 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355b1ba:	4c 8b 15 e9 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe9]        # 0x23a8d355adaa
    23a8d355b1c1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355b1c6:	4c 8b 15 ec fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbec]        # 0x23a8d355adb9
    23a8d355b1cd:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d355b1d3:	4c 8b 15 ef fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbef]        # 0x23a8d355adc9
    23a8d355b1da:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355b1df:	4c 8b 15 f2 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf2]        # 0x23a8d355add8
    23a8d355b1e6:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d355b1ec:	4c 8b 15 f5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf5]        # 0x23a8d355ade8
    23a8d355b1f3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d355b1f8:	4c 8b 15 f8 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf8]        # 0x23a8d355adf7
    23a8d355b1ff:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d355b205:	4c 8b 15 fb fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfb]        # 0x23a8d355ae07
    23a8d355b20c:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d355b211:	4c 8b 15 fe fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfe]        # 0x23a8d355ae16
    23a8d355b218:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d355b21e:	4c 8b 15 01 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc01]        # 0x23a8d355ae26
    23a8d355b225:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d355b22a:	4c 8b 15 04 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc04]        # 0x23a8d355ae35
    23a8d355b231:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d355b237:	4c 8b 15 07 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc07]        # 0x23a8d355ae45
    23a8d355b23e:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355b243:	4c 8b 15 0a fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0a]        # 0x23a8d355ae54
    23a8d355b24a:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d355b250:	4c 8b 15 0d fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0d]        # 0x23a8d355ae64
    23a8d355b257:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d355b25c:	4c 8b 15 10 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc10]        # 0x23a8d355ae73
    23a8d355b263:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d355b269:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d355b26e:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d355b272:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d355b277:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d355b27c:	4c 8b 15 13 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc13]        # 0x23a8d355ae96
    23a8d355b283:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d355b289:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d355b28e:	4c 8b 15 16 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc16]        # 0x23a8d355aeab
    23a8d355b295:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d355b29a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d355b29e:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d355b2a3:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d355b2a9:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d355b2ae:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d355b2b2:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d355b2b6:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d355b2ba:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b2bf:	4c 8b 15 e5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe5]        # 0x23a8d355aeab
    23a8d355b2c6:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355b2cb:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d355b2d0:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d355b2d5:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d355b2d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b2de:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d355b2e4:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d355b2e8:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d355b2ed:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b2f2:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d355b2f6:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d355b2fb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b300:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d355b306:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d355b30a:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d355b30f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b314:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d355b318:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d355b31d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b322:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d355b328:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d355b32c:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d355b331:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b336:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d355b33a:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d355b33f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b344:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d355b34a:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355b34e:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d355b353:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b358:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d355b35c:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d355b361:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b366:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d355b36b:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d355b36f:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d355b374:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b379:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d355b37d:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d355b382:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b387:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d355b38c:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d355b391:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355b395:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d355b399:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b39e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355b3a2:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355b3a6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b3ab:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d355b3b0:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d355b3b5:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d355b3ba:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355b3be:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d355b3c2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355b3c7:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    23a8d355b3d1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355b3d5:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355b3d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355b3de:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    23a8d355b3e8:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d355b3ec:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d355b3f0:	45 33 ff                                        	xor    r15d,r15d
    23a8d355b3f3:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d355b3f7:	41 0f 97 c7                                     	seta   r15b
    23a8d355b3fb:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    23a8d355b402:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    23a8d355b40a:	0b d8                                           	or     ebx,eax
    23a8d355b40c:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    23a8d355b411:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d355b416:	bb 02 00 00 00                                  	mov    ebx,0x2
    23a8d355b41b:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355b41f:	44 0f 47 fb                                     	cmova  r15d,ebx
    23a8d355b423:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    23a8d355b42b:	0b c8                                           	or     ecx,eax
    23a8d355b42d:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    23a8d355b432:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d355b437:	b9 03 00 00 00                                  	mov    ecx,0x3
    23a8d355b43c:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355b440:	44 0f 47 f9                                     	cmova  r15d,ecx
    23a8d355b444:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d355b448:	41 0b c7                                        	or     eax,r15d
    23a8d355b44b:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    23a8d355b450:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    23a8d355b457:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    23a8d355b45e:	44 0b f8                                        	or     r15d,eax
    23a8d355b461:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    23a8d355b465:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    23a8d355b46a:	e9 71 00 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355b46f:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    23a8d355b476:	41 53                                           	push   r11
    23a8d355b478:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355b47c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d355b47f:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355b485:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d355b488:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    23a8d355b48e:	e8 d5 0d ef ff                                  	call   0x23a8d344c268
    23a8d355b493:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355b497:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355b49b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d355b49f:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355b4a5:	e9 36 00 00 00                                  	jmp    0x23a8d355b4e0
    23a8d355b4aa:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    23a8d355b4b1:	41 53                                           	push   r11
    23a8d355b4b3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355b4b7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d355b4ba:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355b4c0:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d355b4c3:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    23a8d355b4c9:	e8 8a 0d ef ff                                  	call   0x23a8d344c258
    23a8d355b4ce:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d355b4d2:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355b4d6:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d355b4da:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355b4e0:	48 c7 85 30 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x1
    23a8d355b4eb:	4c 8b e7                                        	mov    r12,rdi
    23a8d355b4ee:	41 8b f9                                        	mov    edi,r9d
    23a8d355b4f1:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d355b4f5:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d355b4fa:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d355b4ff:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d355b503:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    23a8d355b50b:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    23a8d355b512:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    23a8d355b519:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d355b520:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    23a8d355b528:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    23a8d355b530:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    23a8d355b538:	e9 60 3a 00 00                                  	jmp    0x23a8d355ef9d
    23a8d355b53d:	45 8b 44 3c 18                                  	mov    r8d,DWORD PTR [r12+rdi*1+0x18]
    23a8d355b542:	41 8d 70 01                                     	lea    esi,[r8+0x1]
    23a8d355b546:	41 89 74 3c 18                                  	mov    DWORD PTR [r12+rdi*1+0x18],esi
    23a8d355b54b:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d355b551:	46 8d 0c 86                                     	lea    r9d,[rsi+r8*4]
    23a8d355b555:	43 89 14 0c                                     	mov    DWORD PTR [r12+r9*1],edx
    23a8d355b559:	46 8d 4c 87 2c                                  	lea    r9d,[rdi+r8*4+0x2c]
    23a8d355b55e:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d355b561:	43 89 14 0c                                     	mov    DWORD PTR [r12+r9*1],edx
    23a8d355b565:	46 8d 4c 87 3c                                  	lea    r9d,[rdi+r8*4+0x3c]
    23a8d355b56a:	47 89 3c 0c                                     	mov    DWORD PTR [r12+r9*1],r15d
    23a8d355b56e:	46 8d 7c c7 50                                  	lea    r15d,[rdi+r8*8+0x50]
    23a8d355b573:	4b 89 04 3c                                     	mov    QWORD PTR [r12+r15*1],rax
    23a8d355b577:	46 8d 7c c7 70                                  	lea    r15d,[rdi+r8*8+0x70]
    23a8d355b57c:	4b 89 0c 3c                                     	mov    QWORD PTR [r12+r15*1],rcx
    23a8d355b580:	41 c1 e0 04                                     	shl    r8d,0x4
    23a8d355b584:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d355b58b:	45 03 c7                                        	add    r8d,r15d
    23a8d355b58e:	49 8b 04 3c                                     	mov    rax,QWORD PTR [r12+rdi*1]
    23a8d355b592:	4b 89 04 04                                     	mov    QWORD PTR [r12+r8*1],rax
    23a8d355b596:	45 8b 44 3c 18                                  	mov    r8d,DWORD PTR [r12+rdi*1+0x18]
    23a8d355b59b:	41 83 7c 3c 18 04                               	cmp    DWORD PTR [r12+rdi*1+0x18],0x4
    23a8d355b5a1:	0f 84 3b 00 00 00                               	je     0x23a8d355b5e2
    23a8d355b5a7:	48 c7 85 30 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x1
    23a8d355b5b2:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355b5b8:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    23a8d355b5bf:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    23a8d355b5c6:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d355b5cd:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    23a8d355b5d5:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    23a8d355b5dd:	e9 bb 39 00 00                                  	jmp    0x23a8d355ef9d
    23a8d355b5e2:	c4 c1 7a 6f 44 3c 50                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x50]
    23a8d355b5e9:	c4 c3 f9 16 c0 00                               	vpextrq r8,xmm0,0x0
    23a8d355b5ef:	c4 c1 82 2a e8                                  	vcvtsi2ss xmm5,xmm15,r8
    23a8d355b5f4:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    23a8d355b5f9:	c4 c3 f9 16 c0 01                               	vpextrq r8,xmm0,0x1
    23a8d355b5ff:	c4 c1 82 2a c0                                  	vcvtsi2ss xmm0,xmm15,r8
    23a8d355b604:	c4 e3 51 21 e8 10                               	vinsertps xmm5,xmm5,xmm0,0x10
    23a8d355b60a:	c4 c1 7a 6f 44 3c 60                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x60]
    23a8d355b611:	c4 c3 f9 16 c0 00                               	vpextrq r8,xmm0,0x0
    23a8d355b617:	c4 41 82 2a c0                                  	vcvtsi2ss xmm8,xmm15,r8
    23a8d355b61c:	c4 c3 51 21 e8 20                               	vinsertps xmm5,xmm5,xmm8,0x20
    23a8d355b622:	c4 c3 f9 16 c0 01                               	vpextrq r8,xmm0,0x1
    23a8d355b628:	c4 c1 82 2a c0                                  	vcvtsi2ss xmm0,xmm15,r8
    23a8d355b62d:	c4 e3 51 21 e8 30                               	vinsertps xmm5,xmm5,xmm0,0x30
    23a8d355b633:	c5 f8 10 85 20 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3e0]
    23a8d355b63b:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    23a8d355b63f:	4d 8d 44 24 1c                                  	lea    r8,[r12+0x1c]
    23a8d355b644:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    23a8d355b64b:	c4 42 79 18 04 00                               	vbroadcastss xmm8,DWORD PTR [r8+rax*1]
    23a8d355b651:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    23a8d355b656:	c4 41 7a 6f 4c 3c 70                            	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x70]
    23a8d355b65d:	c4 63 f9 16 c9 00                               	vpextrq rcx,xmm9,0x0
    23a8d355b663:	c4 61 82 2a d1                                  	vcvtsi2ss xmm10,xmm15,rcx
    23a8d355b668:	c4 42 79 18 d2                                  	vbroadcastss xmm10,xmm10
    23a8d355b66d:	c4 63 f9 16 c9 01                               	vpextrq rcx,xmm9,0x1
    23a8d355b673:	c4 61 82 2a c9                                  	vcvtsi2ss xmm9,xmm15,rcx
    23a8d355b678:	c4 43 29 21 d1 10                               	vinsertps xmm10,xmm10,xmm9,0x10
    23a8d355b67e:	c4 41 7a 6f 8c 3c 80 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x80]
    23a8d355b688:	c4 63 f9 16 c9 00                               	vpextrq rcx,xmm9,0x0
    23a8d355b68e:	c4 61 82 2a d9                                  	vcvtsi2ss xmm11,xmm15,rcx
    23a8d355b693:	c4 43 29 21 d3 20                               	vinsertps xmm10,xmm10,xmm11,0x20
    23a8d355b699:	c4 63 f9 16 c9 01                               	vpextrq rcx,xmm9,0x1
    23a8d355b69f:	c4 61 82 2a c9                                  	vcvtsi2ss xmm9,xmm15,rcx
    23a8d355b6a4:	c4 43 29 21 d1 30                               	vinsertps xmm10,xmm10,xmm9,0x30
    23a8d355b6aa:	c4 41 78 59 ca                                  	vmulps xmm9,xmm0,xmm10
    23a8d355b6af:	c4 42 79 18 14 18                               	vbroadcastss xmm10,DWORD PTR [r8+rbx*1]
    23a8d355b6b5:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    23a8d355b6ba:	c4 41 38 58 da                                  	vaddps xmm11,xmm8,xmm10
    23a8d355b6bf:	4c 8b 15 07 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef07]        # 0x23a8d355a5cd
    23a8d355b6c6:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d355b6cb:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d355b6d0:	c5 98 5c ed                                     	vsubps xmm5,xmm12,xmm5
    23a8d355b6d4:	c4 c1 50 5c e9                                  	vsubps xmm5,xmm5,xmm9
    23a8d355b6d9:	c4 02 79 18 0c 18                               	vbroadcastss xmm9,DWORD PTR [r8+r11*1]
    23a8d355b6df:	c4 c1 50 59 e9                                  	vmulps xmm5,xmm5,xmm9
    23a8d355b6e4:	c5 20 58 cd                                     	vaddps xmm9,xmm11,xmm5
    23a8d355b6e8:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d355b6ed:	c4 41 30 c2 eb 02                               	vcmpleps xmm13,xmm9,xmm11
    23a8d355b6f3:	c4 41 78 50 c5                                  	vmovmskps r8d,xmm13
    23a8d355b6f8:	45 8b c8                                        	mov    r9d,r8d
    23a8d355b6fb:	41 83 f1 0f                                     	xor    r9d,0xf
    23a8d355b6ff:	c5 78 11 a5 70 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x290],xmm12
    23a8d355b707:	c5 78 11 9d 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm11
    23a8d355b70f:	4c 89 8d 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r9
    23a8d355b716:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d355b71a:	0f 84 10 2c 00 00                               	je     0x23a8d355e330
    23a8d355b720:	c4 41 18 5e c9                                  	vdivps xmm9,xmm12,xmm9
    23a8d355b725:	49 8d 4c 24 2c                                  	lea    rcx,[r12+0x2c]
    23a8d355b72a:	c4 62 79 18 2c 01                               	vbroadcastss xmm13,DWORD PTR [rcx+rax*1]
    23a8d355b730:	c4 41 38 59 ed                                  	vmulps xmm13,xmm8,xmm13
    23a8d355b735:	c4 62 79 18 34 19                               	vbroadcastss xmm14,DWORD PTR [rcx+rbx*1]
    23a8d355b73b:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    23a8d355b740:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    23a8d355b745:	c4 22 79 18 34 19                               	vbroadcastss xmm14,DWORD PTR [rcx+r11*1]
    23a8d355b74b:	c4 41 50 59 f6                                  	vmulps xmm14,xmm5,xmm14
    23a8d355b750:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    23a8d355b755:	c4 41 30 59 ed                                  	vmulps xmm13,xmm9,xmm13
    23a8d355b75a:	49 8d 4c 24 28                                  	lea    rcx,[r12+0x28]
    23a8d355b75f:	c4 62 79 18 34 01                               	vbroadcastss xmm14,DWORD PTR [rcx+rax*1]
    23a8d355b765:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    23a8d355b76a:	c4 e2 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [rcx+rbx*1]
    23a8d355b770:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    23a8d355b774:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    23a8d355b778:	c4 a2 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [rcx+r11*1]
    23a8d355b77e:	c5 d0 59 c9                                     	vmulps xmm1,xmm5,xmm1
    23a8d355b782:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    23a8d355b786:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    23a8d355b78b:	49 8d 4c 24 24                                  	lea    rcx,[r12+0x24]
    23a8d355b790:	c4 e2 79 18 0c 01                               	vbroadcastss xmm1,DWORD PTR [rcx+rax*1]
    23a8d355b796:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    23a8d355b79a:	c4 e2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [rcx+rbx*1]
    23a8d355b7a0:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    23a8d355b7a4:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d355b7a8:	c4 a2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [rcx+r11*1]
    23a8d355b7ae:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d355b7b2:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d355b7b6:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    23a8d355b7ba:	49 8d 4c 24 20                                  	lea    rcx,[r12+0x20]
    23a8d355b7bf:	c4 e2 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [rcx+rax*1]
    23a8d355b7c5:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d355b7c9:	c4 e2 79 18 04 19                               	vbroadcastss xmm0,DWORD PTR [rcx+rbx*1]
    23a8d355b7cf:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    23a8d355b7d3:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    23a8d355b7d7:	c4 a2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [rcx+r11*1]
    23a8d355b7dd:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d355b7e1:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    23a8d355b7e5:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d355b7e9:	8b 8d 08 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf8]
    23a8d355b7ef:	45 8b 9c 0c 34 01 00 00                         	mov    r11d,DWORD PTR [r12+rcx*1+0x134]
    23a8d355b7f7:	41 83 eb 01                                     	sub    r11d,0x1
    23a8d355b7fb:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d355b7ff:	0f 86 ff 16 00 00                               	jbe    0x23a8d355cf04
    23a8d355b805:	45 8b 9c 0c 38 01 00 00                         	mov    r11d,DWORD PTR [r12+rcx*1+0x138]
    23a8d355b80d:	41 83 bc 0c 38 01 00 00 00                      	cmp    DWORD PTR [r12+rcx*1+0x138],0x0
    23a8d355b816:	0f 85 12 00 00 00                               	jne    0x23a8d355b82e
    23a8d355b81c:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    23a8d355b821:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    23a8d355b826:	4d 8b c4                                        	mov    r8,r12
    23a8d355b829:	e9 57 2a 00 00                                  	jmp    0x23a8d355e285
    23a8d355b82e:	45 8b d9                                        	mov    r11d,r9d
    23a8d355b831:	41 83 e3 04                                     	and    r11d,0x4
    23a8d355b835:	45 8b f9                                        	mov    r15d,r9d
    23a8d355b838:	41 83 e7 02                                     	and    r15d,0x2
    23a8d355b83c:	41 8b c1                                        	mov    eax,r9d
    23a8d355b83f:	83 e0 01                                        	and    eax,0x1
    23a8d355b842:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    23a8d355b847:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    23a8d355b84c:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    23a8d355b851:	c5 f8 11 85 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm0
    23a8d355b859:	48 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rcx
    23a8d355b860:	c5 78 11 8d e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm9
    23a8d355b868:	c5 f8 11 ad d0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x330],xmm5
    23a8d355b870:	c5 78 11 95 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm10
    23a8d355b878:	c5 78 11 85 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm8
    23a8d355b880:	4c 89 85 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r8
    23a8d355b887:	4c 89 9d f0 fb ff ff                            	mov    QWORD PTR [rbp-0x410],r11
    23a8d355b88e:	4c 89 bd 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],r15
    23a8d355b895:	48 89 85 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rax
    23a8d355b89c:	45 33 ff                                        	xor    r15d,r15d
    23a8d355b89f:	e9 3e 00 00 00                                  	jmp    0x23a8d355b8e2
    23a8d355b8a4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355b8ad:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355b8b6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355b8bf:	90                                              	nop
    23a8d355b8c0:	c5 f8 10 ad d0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x330]
    23a8d355b8c8:	4d 8b e0                                        	mov    r12,r8
    23a8d355b8cb:	c5 78 10 8d e0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x320]
    23a8d355b8d3:	48 8b 8d 30 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1d0]
    23a8d355b8da:	c5 78 10 9d 60 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2a0]
    23a8d355b8e2:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    23a8d355b8e8:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    23a8d355b8ee:	8b 95 98 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x168]
    23a8d355b8f4:	8b b5 90 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x170]
    23a8d355b8fa:	4c 89 bd c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r15
    23a8d355b901:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355b906:	0f 85 f1 51 00 00                               	jne    0x23a8d3560afd
    23a8d355b90c:	45 8b 8c 0c 3c 01 00 00                         	mov    r9d,DWORD PTR [r12+rcx*1+0x13c]
    23a8d355b914:	41 8b cf                                        	mov    ecx,r15d
    23a8d355b917:	41 d3 e9                                        	shr    r9d,cl
    23a8d355b91a:	41 f6 c1 01                                     	test   r9b,0x1
    23a8d355b91e:	0f 85 33 00 00 00                               	jne    0x23a8d355b957
    23a8d355b924:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    23a8d355b92a:	45 8b cf                                        	mov    r9d,r15d
    23a8d355b92d:	41 c1 e1 06                                     	shl    r9d,0x6
    23a8d355b931:	41 03 c9                                        	add    ecx,r9d
    23a8d355b934:	c4 41 7a 7f 64 0c 30                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x30],xmm12
    23a8d355b93b:	c4 41 7a 7f 64 0c 20                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x20],xmm12
    23a8d355b942:	c4 41 7a 7f 64 0c 10                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x10],xmm12
    23a8d355b949:	c4 41 7a 7f 24 0c                               	vmovdqu XMMWORD PTR [r12+rcx*1],xmm12
    23a8d355b94f:	4d 8b c4                                        	mov    r8,r12
    23a8d355b952:	e9 67 12 00 00                                  	jmp    0x23a8d355cbbe
    23a8d355b957:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    23a8d355b95d:	45 8b cf                                        	mov    r9d,r15d
    23a8d355b960:	41 c1 e1 06                                     	shl    r9d,0x6
    23a8d355b964:	44 03 c9                                        	add    r9d,ecx
    23a8d355b967:	41 6b cf 4c                                     	imul   ecx,r15d,0x4c
    23a8d355b96b:	03 c8                                           	add    ecx,eax
    23a8d355b96d:	45 8b 7c 0c 38                                  	mov    r15d,DWORD PTR [r12+rcx*1+0x38]
    23a8d355b972:	41 83 7c 0c 38 00                               	cmp    DWORD PTR [r12+rcx*1+0x38],0x0
    23a8d355b978:	0f 85 f7 11 00 00                               	jne    0x23a8d355cb75
    23a8d355b97e:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    23a8d355b985:	41 c1 e7 04                                     	shl    r15d,0x4
    23a8d355b989:	41 8d 04 17                                     	lea    eax,[r15+rdx*1]
    23a8d355b98d:	49 8d 54 24 04                                  	lea    rdx,[r12+0x4]
    23a8d355b992:	c4 e2 79 18 14 02                               	vbroadcastss xmm2,DWORD PTR [rdx+rax*1]
    23a8d355b998:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d355b99c:	42 8d 3c 3b                                     	lea    edi,[rbx+r15*1]
    23a8d355b9a0:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    23a8d355b9a6:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    23a8d355b9aa:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    23a8d355b9ae:	44 03 fe                                        	add    r15d,esi
    23a8d355b9b1:	c4 a2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+r15*1]
    23a8d355b9b7:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d355b9bb:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    23a8d355b9bf:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    23a8d355b9c3:	c4 c2 79 18 04 04                               	vbroadcastss xmm0,DWORD PTR [r12+rax*1]
    23a8d355b9c9:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d355b9cd:	c4 c2 79 18 34 3c                               	vbroadcastss xmm6,DWORD PTR [r12+rdi*1]
    23a8d355b9d3:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    23a8d355b9d7:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355b9db:	c4 82 79 18 34 3c                               	vbroadcastss xmm6,DWORD PTR [r12+r15*1]
    23a8d355b9e1:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d355b9e5:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355b9e9:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d355b9ed:	41 8b 14 0c                                     	mov    edx,DWORD PTR [r12+rcx*1]
    23a8d355b9f1:	83 fa 01                                        	cmp    edx,0x1
    23a8d355b9f4:	0f 85 8b 0e 00 00                               	jne    0x23a8d355c885
    23a8d355b9fa:	41 8b 5c 0c 28                                  	mov    ebx,DWORD PTR [r12+rcx*1+0x28]
    23a8d355b9ff:	85 db                                           	test   ebx,ebx
    23a8d355ba01:	0f 84 7e 0e 00 00                               	je     0x23a8d355c885
    23a8d355ba07:	41 8b 74 0c 1c                                  	mov    esi,DWORD PTR [r12+rcx*1+0x1c]
    23a8d355ba0c:	85 f6                                           	test   esi,esi
    23a8d355ba0e:	0f 8e 71 0e 00 00                               	jle    0x23a8d355c885
    23a8d355ba14:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    23a8d355ba1b:	41 8b 54 0c 20                                  	mov    edx,DWORD PTR [r12+rcx*1+0x20]
    23a8d355ba20:	85 d2                                           	test   edx,edx
    23a8d355ba22:	0f 8e 57 0e 00 00                               	jle    0x23a8d355c87f
    23a8d355ba28:	44 8b d6                                        	mov    r10d,esi
    23a8d355ba2b:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    23a8d355ba30:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    23a8d355ba35:	41 8b 7c 0c 10                                  	mov    edi,DWORD PTR [r12+rcx*1+0x10]
    23a8d355ba3a:	45 33 ff                                        	xor    r15d,r15d
    23a8d355ba3d:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    23a8d355ba43:	41 0f 95 c7                                     	setne  r15b
    23a8d355ba47:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    23a8d355ba4d:	40 0f 95 c7                                     	setne  dil
    23a8d355ba51:	40 0f b6 ff                                     	movzx  edi,dil
    23a8d355ba55:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    23a8d355ba5c:	41 23 ff                                        	and    edi,r15d
    23a8d355ba5f:	0f 85 0d 00 00 00                               	jne    0x23a8d355ba72
    23a8d355ba65:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d355ba69:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d355ba6d:	e9 0a 00 00 00                                  	jmp    0x23a8d355ba7c
    23a8d355ba72:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    23a8d355ba78:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    23a8d355ba7c:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d355ba80:	44 8b d2                                        	mov    r10d,edx
    23a8d355ba83:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    23a8d355ba88:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    23a8d355ba8d:	45 8b 7c 0c 14                                  	mov    r15d,DWORD PTR [r12+rcx*1+0x14]
    23a8d355ba92:	33 c0                                           	xor    eax,eax
    23a8d355ba94:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    23a8d355ba9b:	0f 95 c0                                        	setne  al
    23a8d355ba9e:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    23a8d355baa5:	41 0f 95 c7                                     	setne  r15b
    23a8d355baa9:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d355baad:	44 23 f8                                        	and    r15d,eax
    23a8d355bab0:	0f 85 0d 00 00 00                               	jne    0x23a8d355bac3
    23a8d355bab6:	c5 a0 5f fa                                     	vmaxps xmm7,xmm11,xmm2
    23a8d355baba:	c5 98 5d ff                                     	vminps xmm7,xmm12,xmm7
    23a8d355babe:	e9 0a 00 00 00                                  	jmp    0x23a8d355bacd
    23a8d355bac3:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    23a8d355bac9:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    23a8d355bacd:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d355bad1:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    23a8d355badb:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355bae0:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d355bae4:	c5 c8 58 d7                                     	vaddps xmm2,xmm6,xmm7
    23a8d355bae8:	41 8b 44 0c 0c                                  	mov    eax,DWORD PTR [r12+rcx*1+0xc]
    23a8d355baed:	33 c0                                           	xor    eax,eax
    23a8d355baef:	41 81 7c 0c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+rcx*1+0xc],0x2600
    23a8d355baf8:	0f 94 c0                                        	sete   al
    23a8d355bafb:	85 c0                                           	test   eax,eax
    23a8d355bafd:	0f 85 6a 00 00 00                               	jne    0x23a8d355bb6d
    23a8d355bb03:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    23a8d355bb09:	4c 8b 15 45 c7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc745]        # 0x23a8d3558255
    23a8d355bb10:	c4 41 48 54 1a                                  	vandps xmm11,xmm6,XMMWORD PTR [r10]
    23a8d355bb15:	4c 8b 15 84 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef84]        # 0x23a8d355aaa0
    23a8d355bb1c:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355bb21:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d355bb26:	c4 41 20 c2 dd 01                               	vcmpltps xmm11,xmm11,xmm13
    23a8d355bb2c:	4c 8b 15 2b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef2b]        # 0x23a8d355aa5e
    23a8d355bb33:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    23a8d355bb38:	c4 41 48 54 f7                                  	vandps xmm14,xmm6,xmm15
    23a8d355bb3d:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    23a8d355bb43:	c4 41 7a 5b f6                                  	vcvttps2dq xmm14,xmm14
    23a8d355bb48:	c4 41 09 ef f7                                  	vpxor  xmm14,xmm14,xmm15
    23a8d355bb4d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    23a8d355bb51:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d355bb55:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    23a8d355bb59:	c4 c1 79 28 d6                                  	vmovapd xmm2,xmm14
    23a8d355bb5e:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    23a8d355bb63:	c4 41 79 28 eb                                  	vmovapd xmm13,xmm11
    23a8d355bb68:	e9 49 00 00 00                                  	jmp    0x23a8d355bbb6
    23a8d355bb6d:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    23a8d355bb73:	4c 8b 15 db c6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc6db]        # 0x23a8d3558255
    23a8d355bb7a:	c4 41 40 54 2a                                  	vandps xmm13,xmm7,XMMWORD PTR [r10]
    23a8d355bb7f:	4c 8b 15 1a ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef1a]        # 0x23a8d355aaa0
    23a8d355bb86:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d355bb8b:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    23a8d355bb90:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    23a8d355bb96:	4c 8b 15 c1 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeec1]        # 0x23a8d355aa5e
    23a8d355bb9d:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    23a8d355bba2:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    23a8d355bba7:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    23a8d355bbad:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d355bbb1:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d355bbb6:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    23a8d355bbbc:	4c 8b 15 9b ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee9b]        # 0x23a8d355aa5e
    23a8d355bbc3:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    23a8d355bbc9:	c4 c1 20 54 cf                                  	vandps xmm1,xmm11,xmm15
    23a8d355bbce:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    23a8d355bbd4:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    23a8d355bbd8:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    23a8d355bbdd:	4c 8b 15 9d ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee9d]        # 0x23a8d355aa81
    23a8d355bbe4:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355bbe9:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d355bbed:	4c 8b 15 61 c6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc661]        # 0x23a8d3558255
    23a8d355bbf4:	c4 c1 20 54 22                                  	vandps xmm4,xmm11,XMMWORD PTR [r10]
    23a8d355bbf9:	c4 41 58 c2 f6 01                               	vcmpltps xmm14,xmm4,xmm14
    23a8d355bbff:	c5 09 df fb                                     	vpandn xmm15,xmm14,xmm3
    23a8d355bc03:	c4 41 71 db f6                                  	vpand  xmm14,xmm1,xmm14
    23a8d355bc08:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    23a8d355bc0d:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    23a8d355bc11:	c4 c1 79 6e c9                                  	vmovd  xmm1,r9d
    23a8d355bc16:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d355bc1b:	45 8b 4c 0c 2c                                  	mov    r9d,DWORD PTR [r12+rcx*1+0x2c]
    23a8d355bc20:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d355bc24:	c4 e2 09 3d e4                                  	vpmaxsd xmm4,xmm14,xmm4
    23a8d355bc29:	c4 e2 59 39 e1                                  	vpminsd xmm4,xmm4,xmm1
    23a8d355bc2e:	85 ff                                           	test   edi,edi
    23a8d355bc30:	0f 84 5e 00 00 00                               	je     0x23a8d355bc94
    23a8d355bc36:	c4 c1 79 6e e1                                  	vmovd  xmm4,r9d
    23a8d355bc3b:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d355bc40:	c5 89 db e4                                     	vpand  xmm4,xmm14,xmm4
    23a8d355bc44:	45 85 c9                                        	test   r9d,r9d
    23a8d355bc47:	0f 85 47 00 00 00                               	jne    0x23a8d355bc94
    23a8d355bc4d:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    23a8d355bc51:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d355bc56:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d355bc5b:	c5 89 66 e9                                     	vpcmpgtd xmm5,xmm14,xmm1
    23a8d355bc5f:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    23a8d355bc63:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355bc68:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    23a8d355bc6d:	c4 41 31 66 ce                                  	vpcmpgtd xmm9,xmm9,xmm14
    23a8d355bc72:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355bc76:	c4 c1 59 db e9                                  	vpand  xmm5,xmm4,xmm9
    23a8d355bc7b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355bc80:	c5 89 fe e5                                     	vpaddd xmm4,xmm14,xmm5
    23a8d355bc84:	c5 f8 10 ad d0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x330]
    23a8d355bc8c:	c5 78 10 8d e0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x320]
    23a8d355bc94:	c5 11 df fb                                     	vpandn xmm15,xmm13,xmm3
    23a8d355bc98:	c4 41 69 db ed                                  	vpand  xmm13,xmm2,xmm13
    23a8d355bc9d:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    23a8d355bca2:	44 8d 5a ff                                     	lea    r11d,[rdx-0x1]
    23a8d355bca6:	c4 c1 79 6e d3                                  	vmovd  xmm2,r11d
    23a8d355bcab:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d355bcb0:	45 8b 5c 0c 30                                  	mov    r11d,DWORD PTR [r12+rcx*1+0x30]
    23a8d355bcb5:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    23a8d355bcb9:	c4 e2 11 3d db                                  	vpmaxsd xmm3,xmm13,xmm3
    23a8d355bcbe:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    23a8d355bcc3:	45 85 ff                                        	test   r15d,r15d
    23a8d355bcc6:	0f 84 4f 00 00 00                               	je     0x23a8d355bd1b
    23a8d355bccc:	c4 c1 79 6e db                                  	vmovd  xmm3,r11d
    23a8d355bcd1:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d355bcd6:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d355bcdb:	45 85 db                                        	test   r11d,r11d
    23a8d355bcde:	0f 85 37 00 00 00                               	jne    0x23a8d355bd1b
    23a8d355bce4:	c5 f9 6e da                                     	vmovd  xmm3,edx
    23a8d355bce8:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d355bced:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d355bcf2:	c5 91 66 ea                                     	vpcmpgtd xmm5,xmm13,xmm2
    23a8d355bcf6:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    23a8d355bcfa:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355bcff:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    23a8d355bd04:	c4 41 31 66 cd                                  	vpcmpgtd xmm9,xmm9,xmm13
    23a8d355bd09:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355bd0d:	c4 c1 61 db e9                                  	vpand  xmm5,xmm3,xmm9
    23a8d355bd12:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355bd17:	c5 91 fe dd                                     	vpaddd xmm3,xmm13,xmm5
    23a8d355bd1b:	c5 79 6e ce                                     	vmovd  xmm9,esi
    23a8d355bd1f:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d355bd24:	c4 c2 61 40 d9                                  	vpmulld xmm3,xmm3,xmm9
    23a8d355bd29:	c5 e1 fe ec                                     	vpaddd xmm5,xmm3,xmm4
    23a8d355bd2d:	c4 e3 79 16 e9 03                               	vpextrd ecx,xmm5,0x3
    23a8d355bd33:	c4 e3 79 16 ee 02                               	vpextrd esi,xmm5,0x2
    23a8d355bd39:	48 89 8d 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rcx
    23a8d355bd40:	c4 e3 79 16 e9 01                               	vpextrd ecx,xmm5,0x1
    23a8d355bd46:	48 89 8d 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rcx
    23a8d355bd4d:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    23a8d355bd51:	85 c0                                           	test   eax,eax
    23a8d355bd53:	0f 85 3c 09 00 00                               	jne    0x23a8d355c695
    23a8d355bd59:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    23a8d355bd63:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355bd68:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d355bd6c:	c5 09 fe f5                                     	vpaddd xmm14,xmm14,xmm5
    23a8d355bd70:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d355bd75:	c4 42 09 3d d2                                  	vpmaxsd xmm10,xmm14,xmm10
    23a8d355bd7a:	c4 62 29 39 d1                                  	vpminsd xmm10,xmm10,xmm1
    23a8d355bd7f:	85 ff                                           	test   edi,edi
    23a8d355bd81:	0f 84 48 00 00 00                               	je     0x23a8d355bdcf
    23a8d355bd87:	c4 41 79 6e d1                                  	vmovd  xmm10,r9d
    23a8d355bd8c:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d355bd91:	c4 41 09 db d2                                  	vpand  xmm10,xmm14,xmm10
    23a8d355bd96:	45 85 c9                                        	test   r9d,r9d
    23a8d355bd99:	0f 85 30 00 00 00                               	jne    0x23a8d355bdcf
    23a8d355bd9f:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d355bda4:	c5 89 66 c9                                     	vpcmpgtd xmm1,xmm14,xmm1
    23a8d355bda8:	c4 c1 71 db c9                                  	vpand  xmm1,xmm1,xmm9
    23a8d355bdad:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355bdb2:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    23a8d355bdb7:	c4 41 29 66 d6                                  	vpcmpgtd xmm10,xmm10,xmm14
    23a8d355bdbc:	c5 29 df f9                                     	vpandn xmm15,xmm10,xmm1
    23a8d355bdc0:	c4 41 31 db d2                                  	vpand  xmm10,xmm9,xmm10
    23a8d355bdc5:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    23a8d355bdca:	c4 41 09 fe d2                                  	vpaddd xmm10,xmm14,xmm10
    23a8d355bdcf:	c5 11 fe ed                                     	vpaddd xmm13,xmm13,xmm5
    23a8d355bdd3:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    23a8d355bdd8:	c4 42 11 3d f6                                  	vpmaxsd xmm14,xmm13,xmm14
    23a8d355bddd:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    23a8d355bde2:	45 85 ff                                        	test   r15d,r15d
    23a8d355bde5:	0f 84 4f 00 00 00                               	je     0x23a8d355be3a
    23a8d355bdeb:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    23a8d355bdf0:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355bdf5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    23a8d355bdfa:	45 85 db                                        	test   r11d,r11d
    23a8d355bdfd:	0f 85 37 00 00 00                               	jne    0x23a8d355be3a
    23a8d355be03:	c5 79 6e f2                                     	vmovd  xmm14,edx
    23a8d355be07:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355be0c:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d355be10:	c5 91 66 d2                                     	vpcmpgtd xmm2,xmm13,xmm2
    23a8d355be14:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    23a8d355be19:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355be1e:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    23a8d355be23:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    23a8d355be28:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    23a8d355be2c:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    23a8d355be30:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    23a8d355be35:	c4 41 11 fe f6                                  	vpaddd xmm14,xmm13,xmm14
    23a8d355be3a:	c4 42 09 40 c9                                  	vpmulld xmm9,xmm14,xmm9
    23a8d355be3f:	c5 31 fe ec                                     	vpaddd xmm13,xmm9,xmm4
    23a8d355be43:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    23a8d355be4a:	0f 85 d7 00 00 00                               	jne    0x23a8d355bf27
    23a8d355be50:	c5 d9 fe ed                                     	vpaddd xmm5,xmm4,xmm5
    23a8d355be54:	c5 a9 76 ed                                     	vpcmpeqd xmm5,xmm10,xmm5
    23a8d355be58:	c5 f8 50 fd                                     	vmovmskps edi,xmm5
    23a8d355be5c:	83 ff 0f                                        	cmp    edi,0xf
    23a8d355be5f:	0f 84 23 00 00 00                               	je     0x23a8d355be88
    23a8d355be65:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    23a8d355be68:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355be6c:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    23a8d355be73:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d355be77:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355be7b:	44 8d 3c 8b                                     	lea    r15d,[rbx+rcx*4]
    23a8d355be7f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355be83:	e9 05 01 00 00                                  	jmp    0x23a8d355bf8d
    23a8d355be88:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    23a8d355be8b:	c4 c1 7b 10 2c 3c                               	vmovsd xmm5,QWORD PTR [r12+rdi*1]
    23a8d355be91:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    23a8d355be98:	42 8d 3c 9b                                     	lea    edi,[rbx+r11*4]
    23a8d355be9c:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    23a8d355bea2:	c4 c1 51 6c e9                                  	vpunpcklqdq xmm5,xmm5,xmm9
    23a8d355bea7:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    23a8d355beaa:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    23a8d355beb0:	8b bd 10 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x2f0]
    23a8d355beb6:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d355beb9:	c4 41 7b 10 14 3c                               	vmovsd xmm10,QWORD PTR [r12+rdi*1]
    23a8d355bebf:	c4 41 31 6c ca                                  	vpunpcklqdq xmm9,xmm9,xmm10
    23a8d355bec4:	c4 41 50 c6 d1 dd                               	vshufps xmm10,xmm5,xmm9,0xdd
    23a8d355beca:	c4 c1 50 c6 e9 88                               	vshufps xmm5,xmm5,xmm9,0x88
    23a8d355bed0:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    23a8d355bed6:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d355beda:	03 fb                                           	add    edi,ebx
    23a8d355bedc:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    23a8d355bee2:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d355bee8:	03 fb                                           	add    edi,ebx
    23a8d355beea:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    23a8d355bef0:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    23a8d355bef5:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d355befb:	03 fb                                           	add    edi,ebx
    23a8d355befd:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    23a8d355bf03:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d355bf09:	03 fb                                           	add    edi,ebx
    23a8d355bf0b:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    23a8d355bf11:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    23a8d355bf16:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    23a8d355bf1c:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    23a8d355bf22:	e9 71 03 00 00                                  	jmp    0x23a8d355c298
    23a8d355bf27:	83 bd 40 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3c0],0x0
    23a8d355bf2e:	0f 85 08 00 00 00                               	jne    0x23a8d355bf3c
    23a8d355bf34:	45 33 ff                                        	xor    r15d,r15d
    23a8d355bf37:	e9 07 00 00 00                                  	jmp    0x23a8d355bf43
    23a8d355bf3c:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    23a8d355bf3f:	45 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+rdi*1]
    23a8d355bf43:	83 bd 18 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3e8],0x0
    23a8d355bf4a:	0f 85 08 00 00 00                               	jne    0x23a8d355bf58
    23a8d355bf50:	45 33 db                                        	xor    r11d,r11d
    23a8d355bf53:	e9 0d 00 00 00                                  	jmp    0x23a8d355bf65
    23a8d355bf58:	8b bd 90 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x370]
    23a8d355bf5e:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d355bf61:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    23a8d355bf65:	83 bd f0 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x410],0x0
    23a8d355bf6c:	0f 85 07 00 00 00                               	jne    0x23a8d355bf79
    23a8d355bf72:	33 ff                                           	xor    edi,edi
    23a8d355bf74:	e9 07 00 00 00                                  	jmp    0x23a8d355bf80
    23a8d355bf79:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    23a8d355bf7c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355bf80:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355bf87:	0f 82 53 00 00 00                               	jb     0x23a8d355bfe0
    23a8d355bf8d:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    23a8d355bf93:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    23a8d355bf96:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    23a8d355bf9a:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    23a8d355bf9e:	c4 41 79 6e f7                                  	vmovd  xmm14,r15d
    23a8d355bfa3:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355bfa8:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    23a8d355bfaf:	0f 85 3b 00 00 00                               	jne    0x23a8d355bff0
    23a8d355bfb5:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    23a8d355bfbb:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d355bfbf:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355bfc3:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    23a8d355bfc7:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    23a8d355bfca:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    23a8d355bfce:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    23a8d355bfd4:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    23a8d355bfd7:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    23a8d355bfdb:	e9 89 00 00 00                                  	jmp    0x23a8d355c069
    23a8d355bfe0:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    23a8d355bfe4:	c4 41 79 6e f7                                  	vmovd  xmm14,r15d
    23a8d355bfe9:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355bfee:	33 c0                                           	xor    eax,eax
    23a8d355bff0:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    23a8d355bff7:	0f 85 07 00 00 00                               	jne    0x23a8d355c004
    23a8d355bffd:	33 d2                                           	xor    edx,edx
    23a8d355bfff:	e9 0d 00 00 00                                  	jmp    0x23a8d355c011
    23a8d355c004:	c4 c1 79 7e ef                                  	vmovd  r15d,xmm5
    23a8d355c009:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d355c00d:	43 8b 14 3c                                     	mov    edx,DWORD PTR [r12+r15*1]
    23a8d355c011:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    23a8d355c018:	0f 85 08 00 00 00                               	jne    0x23a8d355c026
    23a8d355c01e:	45 33 ff                                        	xor    r15d,r15d
    23a8d355c021:	e9 0e 00 00 00                                  	jmp    0x23a8d355c034
    23a8d355c026:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    23a8d355c02c:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d355c030:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355c034:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    23a8d355c03b:	0f 85 07 00 00 00                               	jne    0x23a8d355c048
    23a8d355c041:	33 c9                                           	xor    ecx,ecx
    23a8d355c043:	e9 0d 00 00 00                                  	jmp    0x23a8d355c055
    23a8d355c048:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    23a8d355c04e:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    23a8d355c051:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    23a8d355c055:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355c05c:	0f 83 07 00 00 00                               	jae    0x23a8d355c069
    23a8d355c062:	33 f6                                           	xor    esi,esi
    23a8d355c064:	e9 0d 00 00 00                                  	jmp    0x23a8d355c076
    23a8d355c069:	c4 e3 79 16 ee 03                               	vpextrd esi,xmm5,0x3
    23a8d355c06f:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d355c072:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    23a8d355c076:	c4 c3 09 22 eb 01                               	vpinsrd xmm5,xmm14,r11d,0x1
    23a8d355c07c:	c5 79 6e f2                                     	vmovd  xmm14,edx
    23a8d355c080:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355c085:	c4 43 09 22 f7 01                               	vpinsrd xmm14,xmm14,r15d,0x1
    23a8d355c08b:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    23a8d355c092:	0f 85 2d 00 00 00                               	jne    0x23a8d355c0c5
    23a8d355c098:	c4 43 79 16 eb 01                               	vpextrd r11d,xmm13,0x1
    23a8d355c09e:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d355c0a2:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355c0a6:	c4 41 79 7e ef                                  	vmovd  r15d,xmm13
    23a8d355c0ab:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d355c0af:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355c0b3:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    23a8d355c0b9:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    23a8d355c0bc:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    23a8d355c0c0:	e9 a2 00 00 00                                  	jmp    0x23a8d355c167
    23a8d355c0c5:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    23a8d355c0cc:	0f 85 08 00 00 00                               	jne    0x23a8d355c0da
    23a8d355c0d2:	45 33 ff                                        	xor    r15d,r15d
    23a8d355c0d5:	e9 0d 00 00 00                                  	jmp    0x23a8d355c0e7
    23a8d355c0da:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    23a8d355c0df:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d355c0e3:	47 8b 3c 1c                                     	mov    r15d,DWORD PTR [r12+r11*1]
    23a8d355c0e7:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    23a8d355c0ee:	0f 85 08 00 00 00                               	jne    0x23a8d355c0fc
    23a8d355c0f4:	45 33 db                                        	xor    r11d,r11d
    23a8d355c0f7:	e9 0e 00 00 00                                  	jmp    0x23a8d355c10a
    23a8d355c0fc:	c4 43 79 16 eb 01                               	vpextrd r11d,xmm13,0x1
    23a8d355c102:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d355c106:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355c10a:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    23a8d355c111:	0f 85 07 00 00 00                               	jne    0x23a8d355c11e
    23a8d355c117:	33 d2                                           	xor    edx,edx
    23a8d355c119:	e9 0d 00 00 00                                  	jmp    0x23a8d355c12b
    23a8d355c11e:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    23a8d355c124:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    23a8d355c127:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    23a8d355c12b:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355c132:	0f 83 2f 00 00 00                               	jae    0x23a8d355c167
    23a8d355c138:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    23a8d355c13e:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    23a8d355c144:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    23a8d355c149:	c4 41 79 6e d7                                  	vmovd  xmm10,r15d
    23a8d355c14e:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d355c153:	c4 43 29 22 d3 01                               	vpinsrd xmm10,xmm10,r11d,0x1
    23a8d355c159:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    23a8d355c15f:	45 33 c9                                        	xor    r9d,r9d
    23a8d355c162:	e9 6f 00 00 00                                  	jmp    0x23a8d355c1d6
    23a8d355c167:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    23a8d355c16d:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    23a8d355c171:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    23a8d355c175:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    23a8d355c17b:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    23a8d355c181:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    23a8d355c186:	c4 41 79 6e d7                                  	vmovd  xmm10,r15d
    23a8d355c18b:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d355c190:	c4 43 29 22 d3 01                               	vpinsrd xmm10,xmm10,r11d,0x1
    23a8d355c196:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    23a8d355c19c:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    23a8d355c1a3:	0f 85 2d 00 00 00                               	jne    0x23a8d355c1d6
    23a8d355c1a9:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d355c1af:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d355c1b2:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355c1b6:	c4 41 79 7e cb                                  	vmovd  r11d,xmm9
    23a8d355c1bb:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d355c1bf:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355c1c3:	c4 43 79 16 cf 02                               	vpextrd r15d,xmm9,0x2
    23a8d355c1c9:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d355c1cd:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355c1d1:	e9 78 00 00 00                                  	jmp    0x23a8d355c24e
    23a8d355c1d6:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    23a8d355c1dd:	0f 85 08 00 00 00                               	jne    0x23a8d355c1eb
    23a8d355c1e3:	45 33 db                                        	xor    r11d,r11d
    23a8d355c1e6:	e9 0b 00 00 00                                  	jmp    0x23a8d355c1f6
    23a8d355c1eb:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d355c1ef:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d355c1f2:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    23a8d355c1f6:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    23a8d355c1fd:	0f 85 07 00 00 00                               	jne    0x23a8d355c20a
    23a8d355c203:	33 ff                                           	xor    edi,edi
    23a8d355c205:	e9 0d 00 00 00                                  	jmp    0x23a8d355c217
    23a8d355c20a:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d355c210:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d355c213:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355c217:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    23a8d355c21e:	0f 85 08 00 00 00                               	jne    0x23a8d355c22c
    23a8d355c224:	45 33 ff                                        	xor    r15d,r15d
    23a8d355c227:	e9 0e 00 00 00                                  	jmp    0x23a8d355c23a
    23a8d355c22c:	c4 43 79 16 cf 02                               	vpextrd r15d,xmm9,0x2
    23a8d355c232:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d355c236:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355c23a:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355c241:	0f 83 07 00 00 00                               	jae    0x23a8d355c24e
    23a8d355c247:	33 db                                           	xor    ebx,ebx
    23a8d355c249:	e9 0d 00 00 00                                  	jmp    0x23a8d355c25b
    23a8d355c24e:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    23a8d355c254:	8d 1c 93                                        	lea    ebx,[rbx+rdx*4]
    23a8d355c257:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    23a8d355c25b:	c4 e3 51 22 e8 03                               	vpinsrd xmm5,xmm5,eax,0x3
    23a8d355c261:	c4 63 11 22 ce 03                               	vpinsrd xmm9,xmm13,esi,0x3
    23a8d355c267:	c4 41 79 6e eb                                  	vmovd  xmm13,r11d
    23a8d355c26c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355c271:	c4 63 11 22 ef 01                               	vpinsrd xmm13,xmm13,edi,0x1
    23a8d355c277:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    23a8d355c27d:	c4 63 11 22 f3 03                               	vpinsrd xmm14,xmm13,ebx,0x3
    23a8d355c283:	c4 43 29 22 d1 03                               	vpinsrd xmm10,xmm10,r9d,0x3
    23a8d355c289:	c4 41 79 28 f9                                  	vmovapd xmm15,xmm9
    23a8d355c28e:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    23a8d355c293:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    23a8d355c298:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    23a8d355c29c:	c5 98 5c fe                                     	vsubps xmm7,xmm12,xmm6
    23a8d355c2a0:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    23a8d355c2a5:	c5 18 5c d8                                     	vsubps xmm11,xmm12,xmm0
    23a8d355c2a9:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    23a8d355c2b3:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355c2b8:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d355c2bd:	c4 c1 51 db cd                                  	vpand  xmm1,xmm5,xmm13
    23a8d355c2c2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c2c7:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d355c2cd:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d355c2d2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c2d7:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d355c2dc:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d355c2e0:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d355c2e4:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d355c2e9:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    23a8d355c2ed:	c4 c1 29 db d5                                  	vpand  xmm2,xmm10,xmm13
    23a8d355c2f2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c2f7:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d355c2fd:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d355c302:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c307:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d355c30c:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d355c310:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d355c314:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d355c319:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    23a8d355c31d:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d355c321:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    23a8d355c325:	c4 c1 31 db d5                                  	vpand  xmm2,xmm9,xmm13
    23a8d355c32a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c32f:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d355c335:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d355c33a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c33f:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d355c344:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d355c348:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d355c34c:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d355c351:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d355c355:	c4 c1 09 db dd                                  	vpand  xmm3,xmm14,xmm13
    23a8d355c35a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c35f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d355c365:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d355c36a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c36f:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d355c374:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d355c378:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d355c37c:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d355c381:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d355c385:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    23a8d355c389:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    23a8d355c38d:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d355c391:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    23a8d355c39b:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d355c3a0:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d355c3a4:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    23a8d355c3a8:	44 8b 9d b8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x248]
    23a8d355c3af:	c4 81 7a 7f 0c 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm1
    23a8d355c3b5:	c5 f1 72 d5 10                                  	vpsrld xmm1,xmm5,0x10
    23a8d355c3ba:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    23a8d355c3bf:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c3c4:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d355c3ca:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d355c3cf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c3d4:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d355c3d9:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d355c3dd:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d355c3e1:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d355c3e6:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    23a8d355c3ea:	c4 c1 61 72 d2 10                               	vpsrld xmm3,xmm10,0x10
    23a8d355c3f0:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d355c3f5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c3fa:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d355c400:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d355c405:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c40a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d355c40f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d355c413:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d355c417:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d355c41c:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d355c420:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d355c424:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    23a8d355c428:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    23a8d355c42e:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d355c433:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c438:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d355c43e:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d355c443:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c448:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d355c44d:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d355c451:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d355c455:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d355c45a:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d355c45e:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    23a8d355c464:	c4 c1 59 db e5                                  	vpand  xmm4,xmm4,xmm13
    23a8d355c469:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c46e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d355c474:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d355c479:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c47e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d355c483:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d355c487:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d355c48b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d355c490:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    23a8d355c494:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    23a8d355c498:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    23a8d355c49c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d355c4a0:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    23a8d355c4a4:	c4 81 7a 7f 4c 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm1
    23a8d355c4ab:	c5 f1 72 d5 08                                  	vpsrld xmm1,xmm5,0x8
    23a8d355c4b0:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    23a8d355c4b5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c4ba:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d355c4c0:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d355c4c5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c4ca:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d355c4cf:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d355c4d3:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d355c4d7:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d355c4dc:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    23a8d355c4e0:	c4 c1 61 72 d2 08                               	vpsrld xmm3,xmm10,0x8
    23a8d355c4e6:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d355c4eb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c4f0:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d355c4f6:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d355c4fb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c500:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d355c505:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d355c509:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d355c50d:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d355c512:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d355c516:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d355c51a:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    23a8d355c51e:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    23a8d355c524:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d355c529:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c52e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d355c534:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d355c539:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c53e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d355c543:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d355c547:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d355c54b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d355c550:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d355c554:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    23a8d355c55a:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    23a8d355c55f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c564:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    23a8d355c56a:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    23a8d355c56f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c574:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    23a8d355c57a:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    23a8d355c57f:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    23a8d355c584:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    23a8d355c589:	c4 41 78 59 ed                                  	vmulps xmm13,xmm0,xmm13
    23a8d355c58e:	c4 41 60 58 ed                                  	vaddps xmm13,xmm3,xmm13
    23a8d355c593:	c4 41 48 59 ed                                  	vmulps xmm13,xmm6,xmm13
    23a8d355c598:	c4 41 70 58 ed                                  	vaddps xmm13,xmm1,xmm13
    23a8d355c59d:	c5 10 59 ea                                     	vmulps xmm13,xmm13,xmm2
    23a8d355c5a1:	c4 01 7a 7f 6c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm13
    23a8d355c5a8:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    23a8d355c5ad:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c5b2:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d355c5b8:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d355c5bd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c5c2:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d355c5c7:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d355c5cb:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d355c5cf:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d355c5d4:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    23a8d355c5d8:	c4 c1 29 72 d2 18                               	vpsrld xmm10,xmm10,0x18
    23a8d355c5de:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c5e3:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    23a8d355c5e9:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    23a8d355c5ee:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c5f3:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    23a8d355c5f9:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    23a8d355c5fe:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    23a8d355c603:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    23a8d355c608:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    23a8d355c60d:	c4 c1 50 58 ea                                  	vaddps xmm5,xmm5,xmm10
    23a8d355c612:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    23a8d355c616:	c4 c1 41 72 d1 18                               	vpsrld xmm7,xmm9,0x18
    23a8d355c61c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c621:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d355c627:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d355c62c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c631:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d355c636:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d355c63a:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d355c63e:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d355c643:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    23a8d355c647:	c4 c1 31 72 d6 18                               	vpsrld xmm9,xmm14,0x18
    23a8d355c64d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c652:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    23a8d355c658:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    23a8d355c65d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c662:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    23a8d355c668:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    23a8d355c66d:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    23a8d355c672:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    23a8d355c677:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d355c67c:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    23a8d355c680:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d355c684:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    23a8d355c688:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    23a8d355c690:	e9 c4 01 00 00                                  	jmp    0x23a8d355c859
    23a8d355c695:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    23a8d355c69c:	0f 85 23 00 00 00                               	jne    0x23a8d355c6c5
    23a8d355c6a2:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    23a8d355c6a5:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355c6a9:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    23a8d355c6b0:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d355c6b4:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355c6b8:	44 8d 3c 8b                                     	lea    r15d,[rbx+rcx*4]
    23a8d355c6bc:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355c6c0:	e9 66 00 00 00                                  	jmp    0x23a8d355c72b
    23a8d355c6c5:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    23a8d355c6cc:	0f 85 08 00 00 00                               	jne    0x23a8d355c6da
    23a8d355c6d2:	45 33 ff                                        	xor    r15d,r15d
    23a8d355c6d5:	e9 07 00 00 00                                  	jmp    0x23a8d355c6e1
    23a8d355c6da:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    23a8d355c6dd:	45 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+rdi*1]
    23a8d355c6e1:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    23a8d355c6e8:	0f 85 08 00 00 00                               	jne    0x23a8d355c6f6
    23a8d355c6ee:	45 33 db                                        	xor    r11d,r11d
    23a8d355c6f1:	e9 0d 00 00 00                                  	jmp    0x23a8d355c703
    23a8d355c6f6:	8b bd 90 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x370]
    23a8d355c6fc:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d355c6ff:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    23a8d355c703:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    23a8d355c70a:	0f 85 07 00 00 00                               	jne    0x23a8d355c717
    23a8d355c710:	33 ff                                           	xor    edi,edi
    23a8d355c712:	e9 07 00 00 00                                  	jmp    0x23a8d355c71e
    23a8d355c717:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    23a8d355c71a:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355c71e:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355c725:	0f 82 12 00 00 00                               	jb     0x23a8d355c73d
    23a8d355c72b:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    23a8d355c731:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    23a8d355c734:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    23a8d355c738:	e9 02 00 00 00                                  	jmp    0x23a8d355c73f
    23a8d355c73d:	33 c0                                           	xor    eax,eax
    23a8d355c73f:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    23a8d355c744:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355c749:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    23a8d355c74f:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    23a8d355c755:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    23a8d355c75b:	4c 8b 15 49 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb49]        # 0x23a8d355c2ab
    23a8d355c762:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355c767:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d355c76b:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    23a8d355c76f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c774:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d355c77a:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d355c77f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c784:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d355c789:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d355c78d:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d355c791:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d355c796:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x23a8d355c393
    23a8d355c79d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355c7a2:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d355c7a6:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d355c7aa:	44 8b 9d b8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x248]
    23a8d355c7b1:	c4 81 7a 7f 34 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm6
    23a8d355c7b7:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    23a8d355c7bc:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    23a8d355c7c0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c7c5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d355c7cb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d355c7d0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c7d5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d355c7da:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d355c7de:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d355c7e2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d355c7e7:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d355c7eb:	c4 81 7a 7f 74 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm6
    23a8d355c7f2:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    23a8d355c7f7:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    23a8d355c7fb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c800:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d355c806:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d355c80b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c810:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d355c815:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d355c819:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d355c81d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d355c822:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    23a8d355c826:	c4 81 7a 7f 6c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm5
    23a8d355c82d:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    23a8d355c832:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355c837:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d355c83d:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d355c842:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355c847:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d355c84c:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d355c850:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d355c854:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d355c859:	4c 8b 15 33 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb33]        # 0x23a8d355c393
    23a8d355c860:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355c865:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d355c869:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    23a8d355c86d:	c4 81 7a 7f 44 1c 30                            	vmovdqu XMMWORD PTR [r12+r11*1+0x30],xmm0
    23a8d355c874:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355c877:	4d 8b c4                                        	mov    r8,r12
    23a8d355c87a:	e9 3f 03 00 00                                  	jmp    0x23a8d355cbbe
    23a8d355c87f:	8b 95 90 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x370]
    23a8d355c885:	4d 8d 5c 24 08                                  	lea    r11,[r12+0x8]
    23a8d355c88a:	c4 c2 79 18 34 03                               	vbroadcastss xmm6,DWORD PTR [r11+rax*1]
    23a8d355c890:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d355c894:	c4 c2 79 18 3c 3b                               	vbroadcastss xmm7,DWORD PTR [r11+rdi*1]
    23a8d355c89a:	c5 a8 59 ff                                     	vmulps xmm7,xmm10,xmm7
    23a8d355c89e:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    23a8d355c8a2:	c4 82 79 18 3c 3b                               	vbroadcastss xmm7,DWORD PTR [r11+r15*1]
    23a8d355c8a8:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    23a8d355c8ac:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    23a8d355c8b0:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d355c8b5:	c5 c0 59 de                                     	vmulps xmm3,xmm7,xmm6
    23a8d355c8b9:	83 fa 03                                        	cmp    edx,0x3
    23a8d355c8bc:	0f 84 77 02 00 00                               	je     0x23a8d355cb39
    23a8d355c8c2:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d355c8c6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355c8c9:	c4 c1 7a 7f b4 3c 60 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x260],xmm6
    23a8d355c8d3:	c4 c1 7a 7f b4 3c 50 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x250],xmm6
    23a8d355c8dd:	c4 c1 7a 7f b4 3c 40 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x240],xmm6
    23a8d355c8e7:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    23a8d355c8f1:	c4 c1 7a 7f 94 3c 80 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x280],xmm2
    23a8d355c8fb:	c4 c1 7a 7f 9c 3c 70 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x270],xmm3
    23a8d355c905:	c4 c1 7a 7f b4 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm6
    23a8d355c90f:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    23a8d355c916:	48 89 8d 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rcx
    23a8d355c91d:	45 33 db                                        	xor    r11d,r11d
    23a8d355c920:	e9 28 00 00 00                                  	jmp    0x23a8d355c94d
    23a8d355c925:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355c92e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355c937:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355c940:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    23a8d355c946:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355c949:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355c94d:	4c 89 9d 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],r11
    23a8d355c954:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355c959:	0f 85 05 42 00 00                               	jne    0x23a8d3560b64
    23a8d355c95f:	8b d1                                           	mov    edx,ecx
    23a8d355c961:	41 8b cb                                        	mov    ecx,r11d
    23a8d355c964:	8b 9d 80 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x280]
    23a8d355c96a:	d3 eb                                           	shr    ebx,cl
    23a8d355c96c:	f6 c3 01                                        	test   bl,0x1
    23a8d355c96f:	0f 84 20 01 00 00                               	je     0x23a8d355ca95
    23a8d355c975:	41 8b 4c 14 10                                  	mov    ecx,DWORD PTR [r12+rdx*1+0x10]
    23a8d355c97a:	41 8b 5c 14 0c                                  	mov    ebx,DWORD PTR [r12+rdx*1+0xc]
    23a8d355c97f:	41 8b 74 14 08                                  	mov    esi,DWORD PTR [r12+rdx*1+0x8]
    23a8d355c984:	41 8b 74 14 04                                  	mov    esi,DWORD PTR [r12+rdx*1+0x4]
    23a8d355c989:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    23a8d355c990:	41 8b 1c 14                                     	mov    ebx,DWORD PTR [r12+rdx*1]
    23a8d355c994:	83 fb 02                                        	cmp    ebx,0x2
    23a8d355c997:	0f 84 9b 00 00 00                               	je     0x23a8d355ca38
    23a8d355c99d:	48 89 8d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rcx
    23a8d355c9a4:	85 db                                           	test   ebx,ebx
    23a8d355c9a6:	0f 85 38 00 00 00                               	jne    0x23a8d355c9e4
    23a8d355c9ac:	42 8d 9c 9f 90 02 00 00                         	lea    ebx,[rdi+r11*4+0x290]
    23a8d355c9b4:	c4 c1 7a 10 0c 1c                               	vmovss xmm1,DWORD PTR [r12+rbx*1]
    23a8d355c9ba:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    23a8d355c9c0:	41 8b cb                                        	mov    ecx,r11d
    23a8d355c9c3:	c1 e1 04                                        	shl    ecx,0x4
    23a8d355c9c6:	03 d9                                           	add    ebx,ecx
    23a8d355c9c8:	8b c6                                           	mov    eax,esi
    23a8d355c9ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355c9ce:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    23a8d355c9d4:	8b 8d 48 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3b8]
    23a8d355c9da:	e8 41 f8 ee ff                                  	call   0x23a8d344c220
    23a8d355c9df:	e9 b1 00 00 00                                  	jmp    0x23a8d355ca95
    23a8d355c9e4:	4d 8b c4                                        	mov    r8,r12
    23a8d355c9e7:	44 8b e2                                        	mov    r12d,edx
    23a8d355c9ea:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    23a8d355c9ef:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    23a8d355c9f7:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    23a8d355c9fd:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    23a8d355ca05:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    23a8d355ca0b:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    23a8d355ca11:	41 8b cb                                        	mov    ecx,r11d
    23a8d355ca14:	c1 e1 04                                        	shl    ecx,0x4
    23a8d355ca17:	03 d1                                           	add    edx,ecx
    23a8d355ca19:	8b c6                                           	mov    eax,esi
    23a8d355ca1b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355ca1f:	44 8b ca                                        	mov    r9d,edx
    23a8d355ca22:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    23a8d355ca28:	8b 8d 48 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3b8]
    23a8d355ca2e:	e8 05 f8 ee ff                                  	call   0x23a8d344c238
    23a8d355ca33:	e9 5d 00 00 00                                  	jmp    0x23a8d355ca95
    23a8d355ca38:	4d 8b c4                                        	mov    r8,r12
    23a8d355ca3b:	8b c2                                           	mov    eax,edx
    23a8d355ca3d:	41 8b 5c 00 14                                  	mov    ebx,DWORD PTR [r8+rax*1+0x14]
    23a8d355ca42:	45 8b 4c 00 18                                  	mov    r9d,DWORD PTR [r8+rax*1+0x18]
    23a8d355ca47:	46 8d a4 9f 90 02 00 00                         	lea    r12d,[rdi+r11*4+0x290]
    23a8d355ca4f:	c4 81 7a 10 0c 20                               	vmovss xmm1,DWORD PTR [r8+r12*1]
    23a8d355ca55:	46 8d a4 9f 80 02 00 00                         	lea    r12d,[rdi+r11*4+0x280]
    23a8d355ca5d:	c4 81 7a 10 14 20                               	vmovss xmm2,DWORD PTR [r8+r12*1]
    23a8d355ca63:	46 8d a4 9f 70 02 00 00                         	lea    r12d,[rdi+r11*4+0x270]
    23a8d355ca6b:	c4 81 7a 10 1c 20                               	vmovss xmm3,DWORD PTR [r8+r12*1]
    23a8d355ca71:	44 8d a7 30 02 00 00                            	lea    r12d,[rdi+0x230]
    23a8d355ca78:	45 8b fb                                        	mov    r15d,r11d
    23a8d355ca7b:	41 c1 e7 04                                     	shl    r15d,0x4
    23a8d355ca7f:	45 03 e7                                        	add    r12d,r15d
    23a8d355ca82:	41 54                                           	push   r12
    23a8d355ca84:	8b c6                                           	mov    eax,esi
    23a8d355ca86:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355ca8a:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    23a8d355ca90:	e8 93 f7 ee ff                                  	call   0x23a8d344c228
    23a8d355ca95:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    23a8d355ca9c:	41 83 c3 01                                     	add    r11d,0x1
    23a8d355caa0:	41 83 fb 04                                     	cmp    r11d,0x4
    23a8d355caa4:	0f 85 96 fe ff ff                               	jne    0x23a8d355c940
    23a8d355caaa:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355caad:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355cab1:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    23a8d355cabb:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    23a8d355cac5:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    23a8d355cac9:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    23a8d355cad3:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    23a8d355cadd:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    23a8d355cae2:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    23a8d355cae6:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    23a8d355caec:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    23a8d355caf3:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    23a8d355caf7:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    23a8d355cafe:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    23a8d355cb02:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    23a8d355cb07:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    23a8d355cb0b:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    23a8d355cb12:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    23a8d355cb16:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    23a8d355cb1c:	c5 78 10 a5 70 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x290]
    23a8d355cb24:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    23a8d355cb2c:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    23a8d355cb34:	e9 85 00 00 00                                  	jmp    0x23a8d355cbbe
    23a8d355cb39:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355cb3d:	8b c1                                           	mov    eax,ecx
    23a8d355cb3f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d355cb43:	41 8b c9                                        	mov    ecx,r9d
    23a8d355cb46:	8b 95 80 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x280]
    23a8d355cb4c:	e8 d7 f9 ee ff                                  	call   0x23a8d344c528
    23a8d355cb51:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355cb54:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355cb58:	c5 78 10 a5 70 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x290]
    23a8d355cb60:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    23a8d355cb68:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    23a8d355cb70:	e9 49 00 00 00                                  	jmp    0x23a8d355cbbe
    23a8d355cb75:	4d 8b c4                                        	mov    r8,r12
    23a8d355cb78:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    23a8d355cb7c:	44 8b e1                                        	mov    r12d,ecx
    23a8d355cb7f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d355cb85:	c4 81 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm0
    23a8d355cb8b:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    23a8d355cb8f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d355cb95:	c4 81 7a 7f 44 08 10                            	vmovdqu XMMWORD PTR [r8+r9*1+0x10],xmm0
    23a8d355cb9c:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    23a8d355cba0:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d355cba6:	c4 81 7a 7f 44 08 20                            	vmovdqu XMMWORD PTR [r8+r9*1+0x20],xmm0
    23a8d355cbad:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    23a8d355cbb1:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d355cbb7:	c4 81 7a 7f 44 08 30                            	vmovdqu XMMWORD PTR [r8+r9*1+0x30],xmm0
    23a8d355cbbe:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    23a8d355cbc5:	41 83 c7 01                                     	add    r15d,0x1
    23a8d355cbc9:	41 83 ff 04                                     	cmp    r15d,0x4
    23a8d355cbcd:	0f 85 ed ec ff ff                               	jne    0x23a8d355b8c0
    23a8d355cbd3:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    23a8d355cbdd:	4c 8b 15 ef ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeeef]        # 0x23a8d355bad3
    23a8d355cbe4:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355cbe9:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d355cbed:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d355cbf1:	c5 f8 10 b5 30 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x2d0]
    23a8d355cbf9:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    23a8d355cbfd:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d355cc01:	c4 c1 7a 6f b4 38 40 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x140]
    23a8d355cc0b:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    23a8d355cc0f:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    23a8d355cc14:	c5 f0 58 fd                                     	vaddps xmm7,xmm1,xmm5
    23a8d355cc18:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d355cc1c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355cc20:	c4 c1 7a 6f b4 38 50 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x150]
    23a8d355cc2a:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    23a8d355cc2e:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    23a8d355cc33:	c5 88 58 ed                                     	vaddps xmm5,xmm14,xmm5
    23a8d355cc37:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    23a8d355cc3b:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d355cc3f:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    23a8d355cc49:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355cc4e:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d355cc52:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    23a8d355cc56:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355cc5e:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355cc62:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    23a8d355cc67:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355cc6b:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    23a8d355cc6f:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355cc73:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d355cc77:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    23a8d355cc7e:	47 8b 9c 18 38 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x138]
    23a8d355cc86:	4d 8b e3                                        	mov    r12,r11
    23a8d355cc89:	41 83 c4 ff                                     	add    r12d,0xffffffff
    23a8d355cc8d:	0f 85 eb 00 00 00                               	jne    0x23a8d355cd7e
    23a8d355cc93:	c4 c1 7a 6f b4 38 10 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x210]
    23a8d355cc9d:	c4 41 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1d0]
    23a8d355cca7:	4d 8d 98 38 36 00 00                            	lea    r11,[r8+0x3638]
    23a8d355ccae:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    23a8d355ccb2:	c4 02 79 18 0c 3b                               	vbroadcastss xmm9,DWORD PTR [r11+r15*1]
    23a8d355ccb8:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    23a8d355ccbd:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    23a8d355ccc2:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    23a8d355ccc7:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d355cccc:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d355ccd1:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    23a8d355ccd6:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    23a8d355ccdb:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355ccdf:	c5 40 5d f6                                     	vminps xmm14,xmm7,xmm6
    23a8d355cce3:	c4 c1 7a 6f b4 38 00 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x200]
    23a8d355cced:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    23a8d355ccf7:	4d 8d 98 34 36 00 00                            	lea    r11,[r8+0x3634]
    23a8d355ccfe:	c4 02 79 18 0c 3b                               	vbroadcastss xmm9,DWORD PTR [r11+r15*1]
    23a8d355cd04:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    23a8d355cd09:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    23a8d355cd0e:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    23a8d355cd13:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d355cd18:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d355cd1d:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    23a8d355cd22:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    23a8d355cd27:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355cd2b:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    23a8d355cd2f:	c4 c1 7a 6f b4 38 f0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x1f0]
    23a8d355cd39:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    23a8d355cd43:	4d 8d 98 30 36 00 00                            	lea    r11,[r8+0x3630]
    23a8d355cd4a:	c4 02 79 18 0c 3b                               	vbroadcastss xmm9,DWORD PTR [r11+r15*1]
    23a8d355cd50:	c4 c1 78 58 c1                                  	vaddps xmm0,xmm0,xmm9
    23a8d355cd55:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355cd59:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355cd5d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d355cd61:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355cd65:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355cd69:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    23a8d355cd6d:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355cd71:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355cd75:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d355cd79:	e9 58 01 00 00                                  	jmp    0x23a8d355ced6
    23a8d355cd7e:	41 83 fc 02                                     	cmp    r12d,0x2
    23a8d355cd82:	0f 84 85 00 00 00                               	je     0x23a8d355ce0d
    23a8d355cd88:	c4 c1 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1d0]
    23a8d355cd92:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d355cd96:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355cd9a:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355cd9e:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    23a8d355cda8:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    23a8d355cdad:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d355cdb2:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    23a8d355cdb7:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    23a8d355cdbe:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d355cdc2:	c4 02 79 18 0c 27                               	vbroadcastss xmm9,DWORD PTR [r15+r12*1]
    23a8d355cdc8:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d355cdcd:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d355cdd2:	c4 c1 40 5d c8                                  	vminps xmm1,xmm7,xmm8
    23a8d355cdd7:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    23a8d355cde1:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    23a8d355cde6:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355cdea:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d355cdee:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    23a8d355cdf5:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    23a8d355cdfb:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    23a8d355ce00:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355ce04:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d355ce08:	e9 42 00 00 00                                  	jmp    0x23a8d355ce4f
    23a8d355ce0d:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    23a8d355ce11:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355ce15:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355ce19:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    23a8d355ce20:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d355ce24:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    23a8d355ce2a:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    23a8d355ce2e:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355ce32:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    23a8d355ce36:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    23a8d355ce3d:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    23a8d355ce43:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    23a8d355ce47:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d355ce4b:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d355ce4f:	4d 8d b8 20 37 00 00                            	lea    r15,[r8+0x3720]
    23a8d355ce56:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    23a8d355ce5c:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d355ce61:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355ce65:	c5 40 5d f0                                     	vminps xmm14,xmm7,xmm0
    23a8d355ce69:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d355ce6d:	0f 84 60 00 00 00                               	je     0x23a8d355ced3
    23a8d355ce73:	c4 81 7a 10 84 20 24 37 00 00                   	vmovss xmm0,DWORD PTR [r8+r12*1+0x3724]
    23a8d355ce7d:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    23a8d355ce82:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    23a8d355ce88:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    23a8d355ce8e:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    23a8d355ce93:	0f 87 09 00 00 00                               	ja     0x23a8d355cea2
    23a8d355ce99:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d355ce9d:	e9 05 00 00 00                                  	jmp    0x23a8d355cea7
    23a8d355cea2:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    23a8d355cea7:	c4 41 20 57 db                                  	vxorps xmm11,xmm11,xmm11
    23a8d355ceac:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d355ceb0:	0f 87 0a 00 00 00                               	ja     0x23a8d355cec0
    23a8d355ceb6:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d355cebb:	e9 05 00 00 00                                  	jmp    0x23a8d355cec5
    23a8d355cec0:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    23a8d355cec5:	c4 62 79 18 e8                                  	vbroadcastss xmm13,xmm0
    23a8d355ceca:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d355cece:	e9 b2 13 00 00                                  	jmp    0x23a8d355e285
    23a8d355ced3:	4d 8b fc                                        	mov    r15,r12
    23a8d355ced6:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    23a8d355cedb:	c4 c1 50 5f c5                                  	vmaxps xmm0,xmm5,xmm13
    23a8d355cee0:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d355cee4:	c4 41 7a 6f 84 38 e0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1e0]
    23a8d355ceee:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d355cef3:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d355cef7:	c5 40 5d e8                                     	vminps xmm13,xmm7,xmm0
    23a8d355cefb:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d355ceff:	e9 81 13 00 00                                  	jmp    0x23a8d355e285
    23a8d355cf04:	4c 8b d9                                        	mov    r11,rcx
    23a8d355cf07:	43 8b 4c 1c 38                                  	mov    ecx,DWORD PTR [r12+r11*1+0x38]
    23a8d355cf0c:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    23a8d355cf11:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    23a8d355cf16:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    23a8d355cf1b:	c5 f8 11 85 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm0
    23a8d355cf23:	43 83 7c 1c 38 00                               	cmp    DWORD PTR [r12+r11*1+0x38],0x0
    23a8d355cf29:	0f 85 5a 12 00 00                               	jne    0x23a8d355e189
    23a8d355cf2f:	49 8d 4c 24 54                                  	lea    rcx,[r12+0x54]
    23a8d355cf34:	c4 e2 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [rcx+rax*1]
    23a8d355cf3a:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d355cf3e:	c4 e2 79 18 04 19                               	vbroadcastss xmm0,DWORD PTR [rcx+rbx*1]
    23a8d355cf44:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    23a8d355cf48:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    23a8d355cf4c:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    23a8d355cf53:	c4 a2 79 18 14 39                               	vbroadcastss xmm2,DWORD PTR [rcx+r15*1]
    23a8d355cf59:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d355cf5d:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    23a8d355cf61:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    23a8d355cf65:	49 8d 4c 24 50                                  	lea    rcx,[r12+0x50]
    23a8d355cf6a:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    23a8d355cf70:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d355cf74:	c4 e2 79 18 34 19                               	vbroadcastss xmm6,DWORD PTR [rcx+rbx*1]
    23a8d355cf7a:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    23a8d355cf7e:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355cf82:	c4 a2 79 18 34 39                               	vbroadcastss xmm6,DWORD PTR [rcx+r15*1]
    23a8d355cf88:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d355cf8c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355cf90:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d355cf94:	43 8b 0c 1c                                     	mov    ecx,DWORD PTR [r12+r11*1]
    23a8d355cf98:	4c 89 9d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r11
    23a8d355cf9f:	83 f9 01                                        	cmp    ecx,0x1
    23a8d355cfa2:	0f 85 01 0f 00 00                               	jne    0x23a8d355dea9
    23a8d355cfa8:	43 8b 54 1c 28                                  	mov    edx,DWORD PTR [r12+r11*1+0x28]
    23a8d355cfad:	85 d2                                           	test   edx,edx
    23a8d355cfaf:	0f 84 f4 0e 00 00                               	je     0x23a8d355dea9
    23a8d355cfb5:	43 8b 74 1c 1c                                  	mov    esi,DWORD PTR [r12+r11*1+0x1c]
    23a8d355cfba:	85 f6                                           	test   esi,esi
    23a8d355cfbc:	0f 8e e7 0e 00 00                               	jle    0x23a8d355dea9
    23a8d355cfc2:	48 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rcx
    23a8d355cfc9:	43 8b 4c 1c 20                                  	mov    ecx,DWORD PTR [r12+r11*1+0x20]
    23a8d355cfce:	85 c9                                           	test   ecx,ecx
    23a8d355cfd0:	0f 8e cd 0e 00 00                               	jle    0x23a8d355dea3
    23a8d355cfd6:	44 8b d6                                        	mov    r10d,esi
    23a8d355cfd9:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    23a8d355cfde:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    23a8d355cfe3:	47 8b 7c 1c 10                                  	mov    r15d,DWORD PTR [r12+r11*1+0x10]
    23a8d355cfe8:	33 db                                           	xor    ebx,ebx
    23a8d355cfea:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    23a8d355cff1:	0f 95 c3                                        	setne  bl
    23a8d355cff4:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    23a8d355cffb:	41 0f 95 c7                                     	setne  r15b
    23a8d355cfff:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d355d003:	44 23 fb                                        	and    r15d,ebx
    23a8d355d006:	0f 85 0d 00 00 00                               	jne    0x23a8d355d019
    23a8d355d00c:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d355d010:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d355d014:	e9 0a 00 00 00                                  	jmp    0x23a8d355d023
    23a8d355d019:	c4 e3 79 08 f0 09                               	vroundps xmm6,xmm0,0x9
    23a8d355d01f:	c5 f8 5c c6                                     	vsubps xmm0,xmm0,xmm6
    23a8d355d023:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d355d027:	44 8b d1                                        	mov    r10d,ecx
    23a8d355d02a:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    23a8d355d02f:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    23a8d355d034:	43 8b 5c 1c 14                                  	mov    ebx,DWORD PTR [r12+r11*1+0x14]
    23a8d355d039:	33 c0                                           	xor    eax,eax
    23a8d355d03b:	81 fb 2f 81 00 00                               	cmp    ebx,0x812f
    23a8d355d041:	0f 95 c0                                        	setne  al
    23a8d355d044:	81 fb 00 29 00 00                               	cmp    ebx,0x2900
    23a8d355d04a:	0f 95 c3                                        	setne  bl
    23a8d355d04d:	0f b6 db                                        	movzx  ebx,bl
    23a8d355d050:	23 d8                                           	and    ebx,eax
    23a8d355d052:	0f 85 0d 00 00 00                               	jne    0x23a8d355d065
    23a8d355d058:	c5 a0 5f f2                                     	vmaxps xmm6,xmm11,xmm2
    23a8d355d05c:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    23a8d355d060:	e9 0a 00 00 00                                  	jmp    0x23a8d355d06f
    23a8d355d065:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    23a8d355d06b:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    23a8d355d06f:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    23a8d355d073:	4c 8b 15 59 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea59]        # 0x23a8d355bad3
    23a8d355d07a:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355d07f:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d355d083:	c5 50 58 c6                                     	vaddps xmm8,xmm5,xmm6
    23a8d355d087:	43 8b 44 1c 0c                                  	mov    eax,DWORD PTR [r12+r11*1+0xc]
    23a8d355d08c:	33 c0                                           	xor    eax,eax
    23a8d355d08e:	43 81 7c 1c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+r11*1+0xc],0x2600
    23a8d355d097:	0f 94 c0                                        	sete   al
    23a8d355d09a:	85 c0                                           	test   eax,eax
    23a8d355d09c:	0f 85 5b 00 00 00                               	jne    0x23a8d355d0fd
    23a8d355d0a2:	c4 c3 79 08 e8 09                               	vroundps xmm5,xmm8,0x9
    23a8d355d0a8:	4c 8b 15 a6 b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb1a6]        # 0x23a8d3558255
    23a8d355d0af:	c4 41 50 54 0a                                  	vandps xmm9,xmm5,XMMWORD PTR [r10]
    23a8d355d0b4:	4c 8b 15 e5 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd9e5]        # 0x23a8d355aaa0
    23a8d355d0bb:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d355d0c0:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d355d0c5:	c4 41 30 c2 ca 01                               	vcmpltps xmm9,xmm9,xmm10
    23a8d355d0cb:	4c 8b 15 8c d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd98c]        # 0x23a8d355aa5e
    23a8d355d0d2:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    23a8d355d0d7:	c4 c1 50 54 d7                                  	vandps xmm2,xmm5,xmm15
    23a8d355d0dc:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    23a8d355d0e2:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d355d0e6:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d355d0eb:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355d0ef:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d355d0f3:	c4 c1 79 28 e8                                  	vmovapd xmm5,xmm8
    23a8d355d0f8:	e9 49 00 00 00                                  	jmp    0x23a8d355d146
    23a8d355d0fd:	c4 e3 79 08 f5 09                               	vroundps xmm6,xmm5,0x9
    23a8d355d103:	4c 8b 15 4b b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb14b]        # 0x23a8d3558255
    23a8d355d10a:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    23a8d355d10f:	4c 8b 15 8a d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd98a]        # 0x23a8d355aaa0
    23a8d355d116:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d355d11b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d355d120:	c4 41 38 c2 ca 01                               	vcmpltps xmm9,xmm8,xmm10
    23a8d355d126:	4c 8b 15 31 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd931]        # 0x23a8d355aa5e
    23a8d355d12d:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    23a8d355d132:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    23a8d355d137:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    23a8d355d13d:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d355d141:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d355d146:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    23a8d355d14c:	4c 8b 15 0b d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd90b]        # 0x23a8d355aa5e
    23a8d355d153:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d355d159:	c4 c1 38 54 ff                                  	vandps xmm7,xmm8,xmm15
    23a8d355d15e:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d355d164:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    23a8d355d168:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    23a8d355d16d:	4c 8b 15 0d d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd90d]        # 0x23a8d355aa81
    23a8d355d174:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355d179:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355d17e:	4c 8b 15 d0 b0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb0d0]        # 0x23a8d3558255
    23a8d355d185:	c4 41 38 54 22                                  	vandps xmm12,xmm8,XMMWORD PTR [r10]
    23a8d355d18a:	c4 41 18 c2 e2 01                               	vcmpltps xmm12,xmm12,xmm10
    23a8d355d190:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    23a8d355d195:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    23a8d355d19a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d355d19f:	8d 7e ff                                        	lea    edi,[rsi-0x1]
    23a8d355d1a2:	c5 79 6e e7                                     	vmovd  xmm12,edi
    23a8d355d1a6:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    23a8d355d1ab:	43 8b 7c 1c 2c                                  	mov    edi,DWORD PTR [r12+r11*1+0x2c]
    23a8d355d1b0:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    23a8d355d1b5:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    23a8d355d1ba:	c4 42 11 39 ec                                  	vpminsd xmm13,xmm13,xmm12
    23a8d355d1bf:	45 85 ff                                        	test   r15d,r15d
    23a8d355d1c2:	0f 84 54 00 00 00                               	je     0x23a8d355d21c
    23a8d355d1c8:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d355d1cc:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d1d1:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    23a8d355d1d6:	85 ff                                           	test   edi,edi
    23a8d355d1d8:	0f 85 3e 00 00 00                               	jne    0x23a8d355d21c
    23a8d355d1de:	c5 79 6e ee                                     	vmovd  xmm13,esi
    23a8d355d1e2:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d1e7:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    23a8d355d1ec:	c4 c1 41 66 cc                                  	vpcmpgtd xmm1,xmm7,xmm12
    23a8d355d1f1:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    23a8d355d1f6:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355d1fb:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    23a8d355d200:	c5 09 66 f7                                     	vpcmpgtd xmm14,xmm14,xmm7
    23a8d355d204:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    23a8d355d208:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    23a8d355d20d:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    23a8d355d212:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    23a8d355d217:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    23a8d355d21c:	c4 41 31 df fb                                  	vpandn xmm15,xmm9,xmm11
    23a8d355d221:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    23a8d355d226:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d355d22b:	44 8d 49 ff                                     	lea    r9d,[rcx-0x1]
    23a8d355d22f:	c4 c1 79 6e d1                                  	vmovd  xmm2,r9d
    23a8d355d234:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d355d239:	47 8b 4c 1c 30                                  	mov    r9d,DWORD PTR [r12+r11*1+0x30]
    23a8d355d23e:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    23a8d355d243:	c4 42 31 3d f6                                  	vpmaxsd xmm14,xmm9,xmm14
    23a8d355d248:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    23a8d355d24d:	85 db                                           	test   ebx,ebx
    23a8d355d24f:	0f 84 4f 00 00 00                               	je     0x23a8d355d2a4
    23a8d355d255:	c4 41 79 6e f1                                  	vmovd  xmm14,r9d
    23a8d355d25a:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355d25f:	c4 41 09 db f1                                  	vpand  xmm14,xmm14,xmm9
    23a8d355d264:	45 85 c9                                        	test   r9d,r9d
    23a8d355d267:	0f 85 37 00 00 00                               	jne    0x23a8d355d2a4
    23a8d355d26d:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    23a8d355d271:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d355d276:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d355d27a:	c5 b1 66 da                                     	vpcmpgtd xmm3,xmm9,xmm2
    23a8d355d27e:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    23a8d355d283:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355d288:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    23a8d355d28d:	c4 c1 71 66 c9                                  	vpcmpgtd xmm1,xmm1,xmm9
    23a8d355d292:	c5 71 df fb                                     	vpandn xmm15,xmm1,xmm3
    23a8d355d296:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    23a8d355d29a:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    23a8d355d29f:	c4 41 31 fe f6                                  	vpaddd xmm14,xmm9,xmm14
    23a8d355d2a4:	c5 f9 6e ce                                     	vmovd  xmm1,esi
    23a8d355d2a8:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d355d2ad:	c4 62 09 40 f1                                  	vpmulld xmm14,xmm14,xmm1
    23a8d355d2b2:	c4 c1 09 fe dd                                  	vpaddd xmm3,xmm14,xmm13
    23a8d355d2b7:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    23a8d355d2bd:	c4 c3 79 16 db 02                               	vpextrd r11d,xmm3,0x2
    23a8d355d2c3:	48 89 b5 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rsi
    23a8d355d2ca:	c4 e3 79 16 de 01                               	vpextrd esi,xmm3,0x1
    23a8d355d2d0:	4c 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r11
    23a8d355d2d7:	c4 c1 79 7e db                                  	vmovd  r11d,xmm3
    23a8d355d2dc:	85 c0                                           	test   eax,eax
    23a8d355d2de:	0f 85 d9 09 00 00                               	jne    0x23a8d355dcbd
    23a8d355d2e4:	4c 8b 15 70 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea70]        # 0x23a8d355bd5b
    23a8d355d2eb:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355d2f0:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d355d2f4:	c5 c1 fe fb                                     	vpaddd xmm7,xmm7,xmm3
    23a8d355d2f8:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d355d2fc:	c4 e2 41 3d e4                                  	vpmaxsd xmm4,xmm7,xmm4
    23a8d355d301:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    23a8d355d306:	45 85 ff                                        	test   r15d,r15d
    23a8d355d309:	0f 84 43 00 00 00                               	je     0x23a8d355d352
    23a8d355d30f:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    23a8d355d313:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d355d318:	c5 c1 db e4                                     	vpand  xmm4,xmm7,xmm4
    23a8d355d31c:	85 ff                                           	test   edi,edi
    23a8d355d31e:	0f 85 2e 00 00 00                               	jne    0x23a8d355d352
    23a8d355d324:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d355d328:	c4 41 41 66 e4                                  	vpcmpgtd xmm12,xmm7,xmm12
    23a8d355d32d:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    23a8d355d331:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355d336:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    23a8d355d33b:	c5 d9 66 e7                                     	vpcmpgtd xmm4,xmm4,xmm7
    23a8d355d33f:	c4 41 59 df fc                                  	vpandn xmm15,xmm4,xmm12
    23a8d355d344:	c5 71 db e4                                     	vpand  xmm12,xmm1,xmm4
    23a8d355d348:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    23a8d355d34d:	c4 c1 41 fe e4                                  	vpaddd xmm4,xmm7,xmm12
    23a8d355d352:	c5 b1 fe fb                                     	vpaddd xmm7,xmm9,xmm3
    23a8d355d356:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d355d35b:	c4 42 41 3d c9                                  	vpmaxsd xmm9,xmm7,xmm9
    23a8d355d360:	c4 62 31 39 ca                                  	vpminsd xmm9,xmm9,xmm2
    23a8d355d365:	85 db                                           	test   ebx,ebx
    23a8d355d367:	0f 84 4f 00 00 00                               	je     0x23a8d355d3bc
    23a8d355d36d:	c4 41 79 6e c9                                  	vmovd  xmm9,r9d
    23a8d355d372:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d355d377:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    23a8d355d37b:	45 85 c9                                        	test   r9d,r9d
    23a8d355d37e:	0f 85 38 00 00 00                               	jne    0x23a8d355d3bc
    23a8d355d384:	c5 79 6e c9                                     	vmovd  xmm9,ecx
    23a8d355d388:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d355d38d:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    23a8d355d392:	c5 c1 66 d2                                     	vpcmpgtd xmm2,xmm7,xmm2
    23a8d355d396:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    23a8d355d39b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d355d3a0:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    23a8d355d3a5:	c5 19 66 e7                                     	vpcmpgtd xmm12,xmm12,xmm7
    23a8d355d3a9:	c5 19 df fa                                     	vpandn xmm15,xmm12,xmm2
    23a8d355d3ad:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    23a8d355d3b2:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d355d3b7:	c4 41 41 fe c9                                  	vpaddd xmm9,xmm7,xmm9
    23a8d355d3bc:	c4 e2 31 40 f9                                  	vpmulld xmm7,xmm9,xmm1
    23a8d355d3c1:	c4 41 41 fe cd                                  	vpaddd xmm9,xmm7,xmm13
    23a8d355d3c6:	45 85 c0                                        	test   r8d,r8d
    23a8d355d3c9:	0f 85 fe 00 00 00                               	jne    0x23a8d355d4cd
    23a8d355d3cf:	c5 11 fe e3                                     	vpaddd xmm12,xmm13,xmm3
    23a8d355d3d3:	c4 41 59 76 e4                                  	vpcmpeqd xmm12,xmm4,xmm12
    23a8d355d3d8:	c4 c1 78 50 fc                                  	vmovmskps edi,xmm12
    23a8d355d3dd:	83 ff 0f                                        	cmp    edi,0xf
    23a8d355d3e0:	0f 84 47 00 00 00                               	je     0x23a8d355d42d
    23a8d355d3e6:	4c 89 85 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r8
    23a8d355d3ed:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d355d3f4:	41 83 e1 04                                     	and    r9d,0x4
    23a8d355d3f8:	8b bd 80 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x280]
    23a8d355d3fe:	83 e7 02                                        	and    edi,0x2
    23a8d355d401:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    23a8d355d408:	41 83 e7 01                                     	and    r15d,0x1
    23a8d355d40c:	8d 04 b2                                        	lea    eax,[rdx+rsi*4]
    23a8d355d40f:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    23a8d355d413:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d417:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355d41b:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    23a8d355d421:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d355d424:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    23a8d355d428:	e9 35 01 00 00                                  	jmp    0x23a8d355d562
    23a8d355d42d:	42 8d 3c 9a                                     	lea    edi,[rdx+r11*4]
    23a8d355d431:	c4 c1 7b 10 3c 3c                               	vmovsd xmm7,QWORD PTR [r12+rdi*1]
    23a8d355d437:	8d 3c b2                                        	lea    edi,[rdx+rsi*4]
    23a8d355d43a:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    23a8d355d440:	c4 c1 41 6c fc                                  	vpunpcklqdq xmm7,xmm7,xmm12
    23a8d355d445:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    23a8d355d44b:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355d44e:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    23a8d355d454:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    23a8d355d45b:	42 8d 3c ba                                     	lea    edi,[rdx+r15*4]
    23a8d355d45f:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    23a8d355d465:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    23a8d355d46a:	c4 41 40 c6 ec dd                               	vshufps xmm13,xmm7,xmm12,0xdd
    23a8d355d470:	c4 c1 40 c6 fc 88                               	vshufps xmm7,xmm7,xmm12,0x88
    23a8d355d476:	c4 c1 31 72 f1 02                               	vpslld xmm9,xmm9,0x2
    23a8d355d47c:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d355d480:	03 fa                                           	add    edi,edx
    23a8d355d482:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    23a8d355d488:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d355d48e:	03 fa                                           	add    edi,edx
    23a8d355d490:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    23a8d355d496:	c4 41 19 6c e6                                  	vpunpcklqdq xmm12,xmm12,xmm14
    23a8d355d49b:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d355d4a1:	03 fa                                           	add    edi,edx
    23a8d355d4a3:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    23a8d355d4a9:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d355d4af:	03 fa                                           	add    edi,edx
    23a8d355d4b1:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    23a8d355d4b7:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    23a8d355d4bc:	c4 41 18 c6 f1 dd                               	vshufps xmm14,xmm12,xmm9,0xdd
    23a8d355d4c2:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    23a8d355d4c8:	e9 60 04 00 00                                  	jmp    0x23a8d355d92d
    23a8d355d4cd:	4c 89 85 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r8
    23a8d355d4d4:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d355d4db:	41 83 e1 04                                     	and    r9d,0x4
    23a8d355d4df:	8b bd 80 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x280]
    23a8d355d4e5:	83 e7 02                                        	and    edi,0x2
    23a8d355d4e8:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    23a8d355d4ef:	41 83 e7 01                                     	and    r15d,0x1
    23a8d355d4f3:	45 85 ff                                        	test   r15d,r15d
    23a8d355d4f6:	0f 85 08 00 00 00                               	jne    0x23a8d355d504
    23a8d355d4fc:	45 33 db                                        	xor    r11d,r11d
    23a8d355d4ff:	e9 08 00 00 00                                  	jmp    0x23a8d355d50c
    23a8d355d504:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d508:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355d50c:	85 ff                                           	test   edi,edi
    23a8d355d50e:	0f 85 07 00 00 00                               	jne    0x23a8d355d51b
    23a8d355d514:	33 c0                                           	xor    eax,eax
    23a8d355d516:	e9 07 00 00 00                                  	jmp    0x23a8d355d522
    23a8d355d51b:	8d 04 b2                                        	lea    eax,[rdx+rsi*4]
    23a8d355d51e:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    23a8d355d522:	45 85 c9                                        	test   r9d,r9d
    23a8d355d525:	0f 85 07 00 00 00                               	jne    0x23a8d355d532
    23a8d355d52b:	33 db                                           	xor    ebx,ebx
    23a8d355d52d:	e9 0d 00 00 00                                  	jmp    0x23a8d355d53f
    23a8d355d532:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    23a8d355d538:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d355d53b:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    23a8d355d53f:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355d546:	0f 83 16 00 00 00                               	jae    0x23a8d355d562
    23a8d355d54c:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    23a8d355d551:	c4 41 79 6e eb                                  	vmovd  xmm13,r11d
    23a8d355d556:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d55b:	33 c9                                           	xor    ecx,ecx
    23a8d355d55d:	e9 5e 00 00 00                                  	jmp    0x23a8d355d5c0
    23a8d355d562:	8b 8d c0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x240]
    23a8d355d568:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    23a8d355d56b:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    23a8d355d56f:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    23a8d355d574:	c4 41 79 6e eb                                  	vmovd  xmm13,r11d
    23a8d355d579:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d57e:	45 85 c0                                        	test   r8d,r8d
    23a8d355d581:	0f 85 39 00 00 00                               	jne    0x23a8d355d5c0
    23a8d355d587:	c4 43 79 16 e3 01                               	vpextrd r11d,xmm12,0x1
    23a8d355d58d:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d591:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355d595:	c5 79 7e e6                                     	vmovd  esi,xmm12
    23a8d355d599:	8d 34 b2                                        	lea    esi,[rdx+rsi*4]
    23a8d355d59c:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    23a8d355d5a0:	c4 43 79 16 e0 02                               	vpextrd r8d,xmm12,0x2
    23a8d355d5a6:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d355d5aa:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    23a8d355d5ae:	4c 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r9
    23a8d355d5b5:	44 8b cf                                        	mov    r9d,edi
    23a8d355d5b8:	41 8b f8                                        	mov    edi,r8d
    23a8d355d5bb:	e9 b1 00 00 00                                  	jmp    0x23a8d355d671
    23a8d355d5c0:	45 85 ff                                        	test   r15d,r15d
    23a8d355d5c3:	0f 85 07 00 00 00                               	jne    0x23a8d355d5d0
    23a8d355d5c9:	33 f6                                           	xor    esi,esi
    23a8d355d5cb:	e9 0d 00 00 00                                  	jmp    0x23a8d355d5dd
    23a8d355d5d0:	c4 41 79 7e e3                                  	vmovd  r11d,xmm12
    23a8d355d5d5:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d5d9:	43 8b 34 1c                                     	mov    esi,DWORD PTR [r12+r11*1]
    23a8d355d5dd:	85 ff                                           	test   edi,edi
    23a8d355d5df:	0f 85 08 00 00 00                               	jne    0x23a8d355d5ed
    23a8d355d5e5:	45 33 db                                        	xor    r11d,r11d
    23a8d355d5e8:	e9 0e 00 00 00                                  	jmp    0x23a8d355d5fb
    23a8d355d5ed:	c4 43 79 16 e3 01                               	vpextrd r11d,xmm12,0x1
    23a8d355d5f3:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d5f7:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355d5fb:	45 85 c9                                        	test   r9d,r9d
    23a8d355d5fe:	0f 85 10 00 00 00                               	jne    0x23a8d355d614
    23a8d355d604:	48 c7 85 c0 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x240],0x0
    23a8d355d60f:	e9 1c 00 00 00                                  	jmp    0x23a8d355d630
    23a8d355d614:	c4 43 79 16 e0 02                               	vpextrd r8d,xmm12,0x2
    23a8d355d61a:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d355d61e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    23a8d355d622:	4c 89 85 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r8
    23a8d355d629:	44 8b 85 20 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x2e0]
    23a8d355d630:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355d637:	0f 83 21 00 00 00                               	jae    0x23a8d355d65e
    23a8d355d63d:	48 89 85 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rax
    23a8d355d644:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    23a8d355d64a:	48 89 b5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rsi
    23a8d355d651:	41 8b f3                                        	mov    esi,r11d
    23a8d355d654:	44 8b df                                        	mov    r11d,edi
    23a8d355d657:	33 ff                                           	xor    edi,edi
    23a8d355d659:	e9 48 00 00 00                                  	jmp    0x23a8d355d6a6
    23a8d355d65e:	44 8b d7                                        	mov    r10d,edi
    23a8d355d661:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    23a8d355d667:	4c 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r9
    23a8d355d66e:	45 8b ca                                        	mov    r9d,r10d
    23a8d355d671:	c4 43 79 16 e0 03                               	vpextrd r8d,xmm12,0x3
    23a8d355d677:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d355d67b:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    23a8d355d67f:	48 89 85 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rax
    23a8d355d686:	8b c7                                           	mov    eax,edi
    23a8d355d688:	41 8b f8                                        	mov    edi,r8d
    23a8d355d68b:	48 89 b5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rsi
    23a8d355d692:	41 8b f3                                        	mov    esi,r11d
    23a8d355d695:	44 8b 85 20 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x2e0]
    23a8d355d69c:	45 8b d9                                        	mov    r11d,r9d
    23a8d355d69f:	44 8b 8d c0 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x240]
    23a8d355d6a6:	c4 63 11 22 a5 90 fc ff ff 01                   	vpinsrd xmm12,xmm13,DWORD PTR [rbp-0x370],0x1
    23a8d355d6b0:	c5 79 6e ad 10 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x2f0]
    23a8d355d6b8:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d6bd:	c4 63 11 22 ee 01                               	vpinsrd xmm13,xmm13,esi,0x1
    23a8d355d6c3:	48 89 bd c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rdi
    23a8d355d6ca:	45 85 c0                                        	test   r8d,r8d
    23a8d355d6cd:	0f 85 47 00 00 00                               	jne    0x23a8d355d71a
    23a8d355d6d3:	c4 63 79 16 ce 01                               	vpextrd esi,xmm9,0x1
    23a8d355d6d9:	8d 34 b2                                        	lea    esi,[rdx+rsi*4]
    23a8d355d6dc:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    23a8d355d6e0:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d355d6e4:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355d6e7:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355d6eb:	48 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rcx
    23a8d355d6f2:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    23a8d355d6f8:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    23a8d355d6fb:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    23a8d355d6ff:	48 89 b5 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rsi
    23a8d355d706:	8b f1                                           	mov    esi,ecx
    23a8d355d708:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    23a8d355d70f:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    23a8d355d715:	e9 d4 00 00 00                                  	jmp    0x23a8d355d7ee
    23a8d355d71a:	45 85 ff                                        	test   r15d,r15d
    23a8d355d71d:	0f 85 07 00 00 00                               	jne    0x23a8d355d72a
    23a8d355d723:	33 f6                                           	xor    esi,esi
    23a8d355d725:	e9 0b 00 00 00                                  	jmp    0x23a8d355d735
    23a8d355d72a:	c5 79 7e ce                                     	vmovd  esi,xmm9
    23a8d355d72e:	8d 34 b2                                        	lea    esi,[rdx+rsi*4]
    23a8d355d731:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    23a8d355d735:	45 85 db                                        	test   r11d,r11d
    23a8d355d738:	0f 85 10 00 00 00                               	jne    0x23a8d355d74e
    23a8d355d73e:	48 c7 85 90 fc ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x370],0x0
    23a8d355d749:	e9 1a 00 00 00                                  	jmp    0x23a8d355d768
    23a8d355d74e:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d355d754:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355d757:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355d75b:	48 89 bd 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdi
    23a8d355d762:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    23a8d355d768:	45 85 c9                                        	test   r9d,r9d
    23a8d355d76b:	0f 85 10 00 00 00                               	jne    0x23a8d355d781
    23a8d355d771:	48 c7 85 10 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x2f0],0x0
    23a8d355d77c:	e9 1a 00 00 00                                  	jmp    0x23a8d355d79b
    23a8d355d781:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d355d787:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355d78a:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355d78e:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    23a8d355d795:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    23a8d355d79b:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355d7a2:	0f 83 35 00 00 00                               	jae    0x23a8d355d7dd
    23a8d355d7a8:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    23a8d355d7ae:	c4 63 11 22 e0 02                               	vpinsrd xmm12,xmm13,eax,0x2
    23a8d355d7b4:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    23a8d355d7b8:	c5 79 6e ee                                     	vmovd  xmm13,esi
    23a8d355d7bc:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d7c1:	c4 63 11 22 ad 90 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x370],0x1
    23a8d355d7cb:	c4 63 11 22 ad 10 fd ff ff 02                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x2f0],0x2
    23a8d355d7d5:	45 33 c0                                        	xor    r8d,r8d
    23a8d355d7d8:	e9 9d 00 00 00                                  	jmp    0x23a8d355d87a
    23a8d355d7dd:	4c 8b d6                                        	mov    r10,rsi
    23a8d355d7e0:	48 8b b5 10 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2f0]
    23a8d355d7e7:	4c 89 95 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r10
    23a8d355d7ee:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d355d7f4:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355d7f7:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355d7fb:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    23a8d355d801:	c4 63 11 22 e0 02                               	vpinsrd xmm12,xmm13,eax,0x2
    23a8d355d807:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    23a8d355d80b:	c5 79 6e ad 10 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x2f0]
    23a8d355d813:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d355d818:	c4 63 11 22 ad 90 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x370],0x1
    23a8d355d822:	c4 63 11 22 ee 02                               	vpinsrd xmm13,xmm13,esi,0x2
    23a8d355d828:	45 85 c0                                        	test   r8d,r8d
    23a8d355d82b:	0f 85 40 00 00 00                               	jne    0x23a8d355d871
    23a8d355d831:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    23a8d355d837:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d355d83b:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    23a8d355d83f:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    23a8d355d844:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d848:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355d84c:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    23a8d355d852:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d355d856:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355d85a:	41 8b c7                                        	mov    eax,r15d
    23a8d355d85d:	45 8b fb                                        	mov    r15d,r11d
    23a8d355d860:	45 8b d8                                        	mov    r11d,r8d
    23a8d355d863:	44 8b c7                                        	mov    r8d,edi
    23a8d355d866:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    23a8d355d86c:	e9 77 00 00 00                                  	jmp    0x23a8d355d8e8
    23a8d355d871:	44 8b c7                                        	mov    r8d,edi
    23a8d355d874:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    23a8d355d87a:	45 85 ff                                        	test   r15d,r15d
    23a8d355d87d:	0f 85 08 00 00 00                               	jne    0x23a8d355d88b
    23a8d355d883:	45 33 ff                                        	xor    r15d,r15d
    23a8d355d886:	e9 0d 00 00 00                                  	jmp    0x23a8d355d898
    23a8d355d88b:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    23a8d355d890:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d355d894:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355d898:	45 85 db                                        	test   r11d,r11d
    23a8d355d89b:	0f 85 08 00 00 00                               	jne    0x23a8d355d8a9
    23a8d355d8a1:	45 33 db                                        	xor    r11d,r11d
    23a8d355d8a4:	e9 0e 00 00 00                                  	jmp    0x23a8d355d8b7
    23a8d355d8a9:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    23a8d355d8af:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355d8b3:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355d8b7:	45 85 c9                                        	test   r9d,r9d
    23a8d355d8ba:	0f 85 07 00 00 00                               	jne    0x23a8d355d8c7
    23a8d355d8c0:	33 c0                                           	xor    eax,eax
    23a8d355d8c2:	e9 0d 00 00 00                                  	jmp    0x23a8d355d8d4
    23a8d355d8c7:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    23a8d355d8cd:	8d 04 82                                        	lea    eax,[rdx+rax*4]
    23a8d355d8d0:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    23a8d355d8d4:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355d8db:	0f 83 07 00 00 00                               	jae    0x23a8d355d8e8
    23a8d355d8e1:	33 db                                           	xor    ebx,ebx
    23a8d355d8e3:	e9 0d 00 00 00                                  	jmp    0x23a8d355d8f5
    23a8d355d8e8:	c4 e3 79 16 fb 03                               	vpextrd ebx,xmm7,0x3
    23a8d355d8ee:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d355d8f1:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    23a8d355d8f5:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    23a8d355d8fb:	c4 63 19 22 cf 03                               	vpinsrd xmm9,xmm12,edi,0x3
    23a8d355d901:	c4 41 79 6e e7                                  	vmovd  xmm12,r15d
    23a8d355d906:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    23a8d355d90b:	c4 43 19 22 e3 01                               	vpinsrd xmm12,xmm12,r11d,0x1
    23a8d355d911:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    23a8d355d917:	c4 63 19 22 f3 03                               	vpinsrd xmm14,xmm12,ebx,0x3
    23a8d355d91d:	c4 43 11 22 e0 03                               	vpinsrd xmm12,xmm13,r8d,0x3
    23a8d355d923:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    23a8d355d928:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    23a8d355d92d:	c5 99 72 d7 18                                  	vpsrld xmm12,xmm7,0x18
    23a8d355d932:	c4 c1 71 72 d5 18                               	vpsrld xmm1,xmm13,0x18
    23a8d355d938:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    23a8d355d93c:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d355d940:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    23a8d355d946:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    23a8d355d94a:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    23a8d355d954:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d355d959:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d355d95d:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    23a8d355d962:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    23a8d355d96c:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355d971:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d355d976:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d355d97b:	4c 8b 15 c5 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0c5]        # 0x23a8d355aa47
    23a8d355d982:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355d987:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d355d98b:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    23a8d355d98f:	4c 8b 15 c8 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0c8]        # 0x23a8d355aa5e
    23a8d355d996:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d355d99b:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    23a8d355d9a0:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d355d9a6:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    23a8d355d9aa:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    23a8d355d9af:	4c 8b 15 9f a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa89f]        # 0x23a8d3558255
    23a8d355d9b6:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d355d9bb:	c4 c1 78 c2 c2 01                               	vcmpltps xmm0,xmm0,xmm10
    23a8d355d9c1:	c4 41 79 df fb                                  	vpandn xmm15,xmm0,xmm11
    23a8d355d9c6:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    23a8d355d9ca:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355d9cf:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    23a8d355d9d3:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    23a8d355d9d7:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    23a8d355d9dd:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    23a8d355d9e1:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    23a8d355d9e5:	c5 d0 5c ee                                     	vsubps xmm5,xmm5,xmm6
    23a8d355d9e9:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    23a8d355d9ee:	c5 d0 58 eb                                     	vaddps xmm5,xmm5,xmm3
    23a8d355d9f2:	4c 8b 15 65 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd065]        # 0x23a8d355aa5e
    23a8d355d9f9:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    23a8d355d9fe:	c4 c1 50 54 f7                                  	vandps xmm6,xmm5,xmm15
    23a8d355da03:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    23a8d355da09:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    23a8d355da0d:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    23a8d355da12:	4c 8b 15 3c a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa83c]        # 0x23a8d3558255
    23a8d355da19:	c4 c1 50 54 2a                                  	vandps xmm5,xmm5,XMMWORD PTR [r10]
    23a8d355da1e:	c4 c1 50 c2 ea 01                               	vcmpltps xmm5,xmm5,xmm10
    23a8d355da24:	c4 41 51 df fb                                  	vpandn xmm15,xmm5,xmm11
    23a8d355da29:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    23a8d355da2d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355da32:	c5 e9 fa f5                                     	vpsubd xmm6,xmm2,xmm5
    23a8d355da36:	c4 62 19 40 c6                                  	vpmulld xmm8,xmm12,xmm6
    23a8d355da3b:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    23a8d355da41:	c4 c1 21 72 d6 18                               	vpsrld xmm11,xmm14,0x18
    23a8d355da47:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    23a8d355da4c:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    23a8d355da52:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    23a8d355da57:	c5 29 f5 d0                                     	vpmaddwd xmm10,xmm10,xmm0
    23a8d355da5b:	c4 62 29 40 d5                                  	vpmulld xmm10,xmm10,xmm5
    23a8d355da60:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d355da65:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    23a8d355da6f:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d355da74:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d355da79:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d355da7e:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d355da84:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355da89:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d355da8f:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d355da94:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355da99:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d355da9f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d355daa4:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d355daa9:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d355daae:	4c 8b 15 de e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8de]        # 0x23a8d355c393
    23a8d355dab5:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355daba:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355dabf:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    23a8d355dac4:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355dac7:	c4 41 7a 7f 84 3c 60 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x260],xmm8
    23a8d355dad1:	c5 b9 72 d7 10                                  	vpsrld xmm8,xmm7,0x10
    23a8d355dad6:	4c 8b 15 ce e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7ce]        # 0x23a8d355c2ab
    23a8d355dadd:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d355dae2:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d355dae7:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    23a8d355daec:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    23a8d355daf2:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d355daf7:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    23a8d355dafb:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    23a8d355db01:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    23a8d355db05:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    23a8d355db09:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    23a8d355db0e:	c4 c1 69 72 d1 10                               	vpsrld xmm2,xmm9,0x10
    23a8d355db14:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d355db19:	c4 c1 61 72 d6 10                               	vpsrld xmm3,xmm14,0x10
    23a8d355db1f:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    23a8d355db24:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    23a8d355db28:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    23a8d355db2e:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    23a8d355db32:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    23a8d355db36:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    23a8d355db3b:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    23a8d355db3f:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d355db44:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d355db4a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355db4f:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d355db55:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d355db5a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355db5f:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d355db65:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d355db6a:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d355db6f:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d355db74:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    23a8d355db79:	c4 41 7a 7f 84 3c 50 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x250],xmm8
    23a8d355db83:	c5 b9 72 d7 08                                  	vpsrld xmm8,xmm7,0x8
    23a8d355db88:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    23a8d355db8d:	c4 c1 69 72 d5 08                               	vpsrld xmm2,xmm13,0x8
    23a8d355db93:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d355db98:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    23a8d355db9c:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    23a8d355dba2:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    23a8d355dba6:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    23a8d355dbaa:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    23a8d355dbaf:	c4 c1 69 72 d1 08                               	vpsrld xmm2,xmm9,0x8
    23a8d355dbb5:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d355dbba:	c4 c1 61 72 d6 08                               	vpsrld xmm3,xmm14,0x8
    23a8d355dbc0:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    23a8d355dbc5:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    23a8d355dbc9:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    23a8d355dbcf:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    23a8d355dbd3:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    23a8d355dbd7:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    23a8d355dbdc:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    23a8d355dbe0:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d355dbe5:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d355dbeb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355dbf0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d355dbf6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d355dbfb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355dc00:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d355dc06:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d355dc0b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d355dc10:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d355dc15:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    23a8d355dc1a:	c4 41 7a 7f 84 3c 40 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x240],xmm8
    23a8d355dc24:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    23a8d355dc29:	c4 41 11 db c4                                  	vpand  xmm8,xmm13,xmm12
    23a8d355dc2e:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    23a8d355dc33:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    23a8d355dc39:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    23a8d355dc3e:	c5 c1 f5 f8                                     	vpmaddwd xmm7,xmm7,xmm0
    23a8d355dc42:	c4 e2 41 40 f6                                  	vpmulld xmm6,xmm7,xmm6
    23a8d355dc47:	c4 c1 31 db fc                                  	vpand  xmm7,xmm9,xmm12
    23a8d355dc4c:	c4 41 09 db c4                                  	vpand  xmm8,xmm14,xmm12
    23a8d355dc51:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    23a8d355dc56:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    23a8d355dc5c:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    23a8d355dc61:	c5 c1 f5 c0                                     	vpmaddwd xmm0,xmm7,xmm0
    23a8d355dc65:	c4 e2 79 40 c5                                  	vpmulld xmm0,xmm0,xmm5
    23a8d355dc6a:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    23a8d355dc6e:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    23a8d355dc73:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    23a8d355dc78:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355dc7d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d355dc83:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d355dc88:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355dc8d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d355dc92:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d355dc96:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d355dc9a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d355dc9f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    23a8d355dca4:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    23a8d355dcae:	4d 8b c4                                        	mov    r8,r12
    23a8d355dcb1:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    23a8d355dcb8:	e9 1f 05 00 00                                  	jmp    0x23a8d355e1dc
    23a8d355dcbd:	45 85 c0                                        	test   r8d,r8d
    23a8d355dcc0:	0f 85 22 00 00 00                               	jne    0x23a8d355dce8
    23a8d355dcc6:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    23a8d355dccc:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355dccf:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355dcd3:	44 8d 04 b2                                     	lea    r8d,[rdx+rsi*4]
    23a8d355dcd7:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    23a8d355dcdb:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d355dcdf:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d355dce3:	e9 67 00 00 00                                  	jmp    0x23a8d355dd4f
    23a8d355dce8:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    23a8d355dcef:	0f 85 08 00 00 00                               	jne    0x23a8d355dcfd
    23a8d355dcf5:	45 33 db                                        	xor    r11d,r11d
    23a8d355dcf8:	e9 08 00 00 00                                  	jmp    0x23a8d355dd05
    23a8d355dcfd:	42 8d 3c 9a                                     	lea    edi,[rdx+r11*4]
    23a8d355dd01:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    23a8d355dd05:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    23a8d355dd0c:	0f 85 08 00 00 00                               	jne    0x23a8d355dd1a
    23a8d355dd12:	45 33 c0                                        	xor    r8d,r8d
    23a8d355dd15:	e9 07 00 00 00                                  	jmp    0x23a8d355dd21
    23a8d355dd1a:	8d 3c b2                                        	lea    edi,[rdx+rsi*4]
    23a8d355dd1d:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    23a8d355dd21:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    23a8d355dd28:	0f 85 07 00 00 00                               	jne    0x23a8d355dd35
    23a8d355dd2e:	33 ff                                           	xor    edi,edi
    23a8d355dd30:	e9 0d 00 00 00                                  	jmp    0x23a8d355dd42
    23a8d355dd35:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    23a8d355dd3b:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d355dd3e:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d355dd42:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    23a8d355dd49:	0f 82 14 00 00 00                               	jb     0x23a8d355dd63
    23a8d355dd4f:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    23a8d355dd56:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d355dd5a:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355dd5e:	e9 03 00 00 00                                  	jmp    0x23a8d355dd66
    23a8d355dd63:	45 33 ff                                        	xor    r15d,r15d
    23a8d355dd66:	c4 c1 79 6e c3                                  	vmovd  xmm0,r11d
    23a8d355dd6b:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355dd70:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    23a8d355dd76:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    23a8d355dd7c:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    23a8d355dd82:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    23a8d355dd87:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355dd8c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d355dd92:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d355dd97:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355dd9c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d355dda1:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d355dda5:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d355dda9:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d355ddae:	4c 8b 15 de e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5de]        # 0x23a8d355c393
    23a8d355ddb5:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355ddba:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d355ddbe:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    23a8d355ddc2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355ddc5:	c4 c1 7a 7f ac 3c 60 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x260],xmm5
    23a8d355ddcf:	4c 8b 15 d5 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4d5]        # 0x23a8d355c2ab
    23a8d355ddd6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355dddb:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d355dddf:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    23a8d355dde3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355dde8:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d355ddee:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d355ddf3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355ddf8:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d355ddfd:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d355de01:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d355de05:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d355de0a:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    23a8d355de0e:	c4 c1 7a 7f bc 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm7
    23a8d355de18:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    23a8d355de1d:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    23a8d355de21:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355de26:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d355de2c:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d355de31:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355de36:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d355de3b:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d355de3f:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d355de43:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d355de48:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    23a8d355de4c:	c4 c1 7a 7f bc 3c 50 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x250],xmm7
    23a8d355de56:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    23a8d355de5b:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d355de5f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d355de64:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d355de6a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d355de6f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d355de74:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d355de79:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d355de7d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d355de81:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d355de86:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d355de8a:	c4 c1 7a 7f 84 3c 40 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x240],xmm0
    23a8d355de94:	4d 8b c4                                        	mov    r8,r12
    23a8d355de97:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    23a8d355de9e:	e9 39 03 00 00                                  	jmp    0x23a8d355e1dc
    23a8d355dea3:	8b 8d c0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x240]
    23a8d355dea9:	4d 8d 44 24 58                                  	lea    r8,[r12+0x58]
    23a8d355deae:	c4 c2 79 18 34 00                               	vbroadcastss xmm6,DWORD PTR [r8+rax*1]
    23a8d355deb4:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d355deb8:	c4 42 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [r8+rbx*1]
    23a8d355debe:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    23a8d355dec3:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    23a8d355dec8:	c4 02 79 18 04 38                               	vbroadcastss xmm8,DWORD PTR [r8+r15*1]
    23a8d355dece:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    23a8d355ded3:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    23a8d355ded7:	c5 b0 59 ed                                     	vmulps xmm5,xmm9,xmm5
    23a8d355dedb:	83 f9 03                                        	cmp    ecx,0x3
    23a8d355dede:	0f 84 72 02 00 00                               	je     0x23a8d355e156
    23a8d355dee4:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d355dee8:	44 8b 85 00 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x300]
    23a8d355deef:	c4 81 7a 7f 34 04                               	vmovdqu XMMWORD PTR [r12+r8*1],xmm6
    23a8d355def5:	8b 95 08 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2f8]
    23a8d355defb:	c4 c1 7a 7f 34 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm6
    23a8d355df01:	c4 c1 7a 7f b4 3c 40 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x140],xmm6
    23a8d355df0b:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    23a8d355df15:	c4 c1 7a 7f 94 3c 80 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x280],xmm2
    23a8d355df1f:	c4 c1 7a 7f ac 3c 70 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x270],xmm5
    23a8d355df29:	c4 c1 7a 7f b4 3c 30 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x130],xmm6
    23a8d355df33:	4d 8b fb                                        	mov    r15,r11
    23a8d355df36:	45 33 db                                        	xor    r11d,r11d
    23a8d355df39:	e9 17 00 00 00                                  	jmp    0x23a8d355df55
    23a8d355df3e:	66 90                                           	xchg   ax,ax
    23a8d355df40:	4c 8b bd 30 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1d0]
    23a8d355df47:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355df4a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355df4e:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d355df55:	4c 89 9d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r11
    23a8d355df5c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355df61:	0f 85 1b 2c 00 00                               	jne    0x23a8d3560b82
    23a8d355df67:	41 8b cb                                        	mov    ecx,r11d
    23a8d355df6a:	41 d3 e9                                        	shr    r9d,cl
    23a8d355df6d:	41 f6 c1 01                                     	test   r9b,0x1
    23a8d355df71:	0f 84 45 01 00 00                               	je     0x23a8d355e0bc
    23a8d355df77:	43 8b 4c 3c 10                                  	mov    ecx,DWORD PTR [r12+r15*1+0x10]
    23a8d355df7c:	47 8b 4c 3c 0c                                  	mov    r9d,DWORD PTR [r12+r15*1+0xc]
    23a8d355df81:	48 89 8d 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rcx
    23a8d355df88:	43 8b 4c 3c 08                                  	mov    ecx,DWORD PTR [r12+r15*1+0x8]
    23a8d355df8d:	43 8b 4c 3c 04                                  	mov    ecx,DWORD PTR [r12+r15*1+0x4]
    23a8d355df92:	48 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rcx
    23a8d355df99:	43 8b 0c 3c                                     	mov    ecx,DWORD PTR [r12+r15*1]
    23a8d355df9d:	83 f9 02                                        	cmp    ecx,0x2
    23a8d355dfa0:	0f 84 b2 00 00 00                               	je     0x23a8d355e058
    23a8d355dfa6:	85 c9                                           	test   ecx,ecx
    23a8d355dfa8:	0f 85 4b 00 00 00                               	jne    0x23a8d355dff9
    23a8d355dfae:	42 8d 8c 9f 90 02 00 00                         	lea    ecx,[rdi+r11*4+0x290]
    23a8d355dfb6:	c4 c1 7a 10 04 0c                               	vmovss xmm0,DWORD PTR [r12+rcx*1]
    23a8d355dfbc:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    23a8d355dfc2:	4c 89 8d 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r9
    23a8d355dfc9:	45 8b cb                                        	mov    r9d,r11d
    23a8d355dfcc:	41 c1 e1 04                                     	shl    r9d,0x4
    23a8d355dfd0:	41 03 c9                                        	add    ecx,r9d
    23a8d355dfd3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355dfd7:	8b 85 b8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x248]
    23a8d355dfdd:	8b 95 20 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e0]
    23a8d355dfe3:	8b d9                                           	mov    ebx,ecx
    23a8d355dfe5:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    23a8d355dfeb:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d355dfef:	e8 2c e2 ee ff                                  	call   0x23a8d344c220
    23a8d355dff4:	e9 c3 00 00 00                                  	jmp    0x23a8d355e0bc
    23a8d355dff9:	4d 8b c4                                        	mov    r8,r12
    23a8d355dffc:	4d 8b e7                                        	mov    r12,r15
    23a8d355dfff:	47 8b 7c 20 14                                  	mov    r15d,DWORD PTR [r8+r12*1+0x14]
    23a8d355e004:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    23a8d355e00c:	c4 c1 7a 10 04 10                               	vmovss xmm0,DWORD PTR [r8+rdx*1]
    23a8d355e012:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    23a8d355e01a:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    23a8d355e020:	8d 97 30 01 00 00                               	lea    edx,[rdi+0x130]
    23a8d355e026:	41 8b cb                                        	mov    ecx,r11d
    23a8d355e029:	c1 e1 04                                        	shl    ecx,0x4
    23a8d355e02c:	03 d1                                           	add    edx,ecx
    23a8d355e02e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355e032:	8b 85 b8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x248]
    23a8d355e038:	44 8b d2                                        	mov    r10d,edx
    23a8d355e03b:	41 8b d1                                        	mov    edx,r9d
    23a8d355e03e:	45 8b ca                                        	mov    r9d,r10d
    23a8d355e041:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    23a8d355e047:	41 8b df                                        	mov    ebx,r15d
    23a8d355e04a:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d355e04e:	e8 e5 e1 ee ff                                  	call   0x23a8d344c238
    23a8d355e053:	e9 64 00 00 00                                  	jmp    0x23a8d355e0bc
    23a8d355e058:	4d 8b c4                                        	mov    r8,r12
    23a8d355e05b:	4d 8b e7                                        	mov    r12,r15
    23a8d355e05e:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    23a8d355e063:	47 8b 7c 20 18                                  	mov    r15d,DWORD PTR [r8+r12*1+0x18]
    23a8d355e068:	42 8d 84 9f 90 02 00 00                         	lea    eax,[rdi+r11*4+0x290]
    23a8d355e070:	c4 c1 7a 10 0c 00                               	vmovss xmm1,DWORD PTR [r8+rax*1]
    23a8d355e076:	42 8d 84 9f 80 02 00 00                         	lea    eax,[rdi+r11*4+0x280]
    23a8d355e07e:	c4 c1 7a 10 14 00                               	vmovss xmm2,DWORD PTR [r8+rax*1]
    23a8d355e084:	42 8d 84 9f 70 02 00 00                         	lea    eax,[rdi+r11*4+0x270]
    23a8d355e08c:	c4 c1 7a 10 1c 00                               	vmovss xmm3,DWORD PTR [r8+rax*1]
    23a8d355e092:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    23a8d355e098:	41 8b d3                                        	mov    edx,r11d
    23a8d355e09b:	c1 e2 04                                        	shl    edx,0x4
    23a8d355e09e:	03 c2                                           	add    eax,edx
    23a8d355e0a0:	50                                              	push   rax
    23a8d355e0a1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355e0a5:	8b 85 b8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x248]
    23a8d355e0ab:	41 8b d1                                        	mov    edx,r9d
    23a8d355e0ae:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    23a8d355e0b4:	45 8b cf                                        	mov    r9d,r15d
    23a8d355e0b7:	e8 6c e1 ee ff                                  	call   0x23a8d344c228
    23a8d355e0bc:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    23a8d355e0c3:	41 83 c3 01                                     	add    r11d,0x1
    23a8d355e0c7:	41 83 fb 04                                     	cmp    r11d,0x4
    23a8d355e0cb:	0f 85 6f fe ff ff                               	jne    0x23a8d355df40
    23a8d355e0d1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355e0d4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355e0d8:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    23a8d355e0e2:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    23a8d355e0ec:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    23a8d355e0f0:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    23a8d355e0fa:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    23a8d355e104:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    23a8d355e109:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    23a8d355e10d:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    23a8d355e117:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    23a8d355e11b:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    23a8d355e125:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    23a8d355e129:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    23a8d355e12e:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    23a8d355e132:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    23a8d355e13c:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    23a8d355e140:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d355e14a:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    23a8d355e151:	e9 86 00 00 00                                  	jmp    0x23a8d355e1dc
    23a8d355e156:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    23a8d355e15c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355e160:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    23a8d355e166:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d355e16a:	41 8b d1                                        	mov    edx,r9d
    23a8d355e16d:	c5 f9 28 dd                                     	vmovapd xmm3,xmm5
    23a8d355e171:	e8 b2 e3 ee ff                                  	call   0x23a8d344c528
    23a8d355e176:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355e179:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355e17d:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    23a8d355e184:	e9 53 00 00 00                                  	jmp    0x23a8d355e1dc
    23a8d355e189:	4d 8b c4                                        	mov    r8,r12
    23a8d355e18c:	4d 8d 60 3c                                     	lea    r12,[r8+0x3c]
    23a8d355e190:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    23a8d355e196:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d355e1a0:	4d 8d 60 40                                     	lea    r12,[r8+0x40]
    23a8d355e1a4:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    23a8d355e1aa:	c4 c1 7a 7f ac 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm5
    23a8d355e1b4:	4d 8d 60 44                                     	lea    r12,[r8+0x44]
    23a8d355e1b8:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    23a8d355e1be:	c4 c1 7a 7f ac 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm5
    23a8d355e1c8:	4d 8d 60 48                                     	lea    r12,[r8+0x48]
    23a8d355e1cc:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    23a8d355e1d2:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    23a8d355e1dc:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    23a8d355e1e6:	47 8b a4 18 34 01 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0x134]
    23a8d355e1ee:	43 83 bc 18 34 01 00 00 02                      	cmp    DWORD PTR [r8+r11*1+0x134],0x2
    23a8d355e1f7:	0f 84 5a 00 00 00                               	je     0x23a8d355e257
    23a8d355e1fd:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    23a8d355e207:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    23a8d355e20c:	c5 10 59 ed                                     	vmulps xmm13,xmm13,xmm5
    23a8d355e210:	c4 c1 7a 6f ac 38 50 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x250]
    23a8d355e21a:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    23a8d355e21f:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    23a8d355e223:	c4 c1 7a 6f ac 38 40 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x240]
    23a8d355e22d:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    23a8d355e232:	c5 f0 59 cd                                     	vmulps xmm1,xmm1,xmm5
    23a8d355e236:	c5 f8 10 ad 30 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2d0]
    23a8d355e23e:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d355e242:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355e24a:	c5 f8 10 bd 70 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x290]
    23a8d355e252:	e9 2e 00 00 00                                  	jmp    0x23a8d355e285
    23a8d355e257:	c4 41 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x260]
    23a8d355e261:	c4 41 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm14,XMMWORD PTR [r8+rdi*1+0x250]
    23a8d355e26b:	c4 c1 7a 6f 8c 38 40 02 00 00                   	vmovdqu xmm1,XMMWORD PTR [r8+rdi*1+0x240]
    23a8d355e275:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355e27d:	c5 f8 10 bd 70 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x290]
    23a8d355e285:	c4 c1 09 6a f5                                  	vpunpckhdq xmm6,xmm14,xmm13
    23a8d355e28a:	c5 79 6a c1                                     	vpunpckhdq xmm8,xmm0,xmm1
    23a8d355e28e:	c5 39 6d ce                                     	vpunpckhqdq xmm9,xmm8,xmm6
    23a8d355e292:	c4 41 7a 7f 8c 38 60 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x160],xmm9
    23a8d355e29c:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    23a8d355e2a0:	c4 c1 7a 7f b4 38 50 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x150],xmm6
    23a8d355e2aa:	c4 c1 09 62 f5                                  	vpunpckldq xmm6,xmm14,xmm13
    23a8d355e2af:	c5 f9 62 c1                                     	vpunpckldq xmm0,xmm0,xmm1
    23a8d355e2b3:	c5 79 6d c6                                     	vpunpckhqdq xmm8,xmm0,xmm6
    23a8d355e2b7:	c4 41 7a 7f 84 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm8
    23a8d355e2c1:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    23a8d355e2c5:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    23a8d355e2cf:	4d 8b e0                                        	mov    r12,r8
    23a8d355e2d2:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d355e2d9:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d355e2dd:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d355e2e2:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d355e2e7:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d355e2eb:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d355e2ef:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    23a8d355e2f6:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    23a8d355e2fd:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    23a8d355e304:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    23a8d355e30c:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d355e312:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d355e315:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    23a8d355e319:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d355e320:	c5 f8 10 85 20 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3e0]
    23a8d355e328:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    23a8d355e330:	45 33 c0                                        	xor    r8d,r8d
    23a8d355e333:	41 bb 02 00 00 00                               	mov    r11d,0x2
    23a8d355e339:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    23a8d355e33d:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    23a8d355e342:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    23a8d355e347:	e9 45 00 00 00                                  	jmp    0x23a8d355e391
    23a8d355e34c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355e355:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355e35e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355e367:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355e370:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355e379:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    23a8d355e380:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d355e387:	48 8b cb                                        	mov    rcx,rbx
    23a8d355e38a:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d355e391:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    23a8d355e398:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355e39d:	0f 85 05 28 00 00                               	jne    0x23a8d3560ba8
    23a8d355e3a3:	48 8b d9                                        	mov    rbx,rcx
    23a8d355e3a6:	41 8b c8                                        	mov    ecx,r8d
    23a8d355e3a9:	41 d3 e9                                        	shr    r9d,cl
    23a8d355e3ac:	41 f6 c1 01                                     	test   r9b,0x1
    23a8d355e3b0:	0f 84 5f 0b 00 00                               	je     0x23a8d355ef15
    23a8d355e3b6:	41 8b c8                                        	mov    ecx,r8d
    23a8d355e3b9:	c1 e1 04                                        	shl    ecx,0x4
    23a8d355e3bc:	46 8d 0c 39                                     	lea    r9d,[rcx+r15*1]
    23a8d355e3c0:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    23a8d355e3c7:	44 03 f9                                        	add    r15d,ecx
    23a8d355e3ca:	42 8d 4c 87 3c                                  	lea    ecx,[rdi+r8*4+0x3c]
    23a8d355e3cf:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    23a8d355e3d3:	42 8d 54 87 2c                                  	lea    edx,[rdi+r8*4+0x2c]
    23a8d355e3d8:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    23a8d355e3dc:	42 8d 04 86                                     	lea    eax,[rsi+r8*4]
    23a8d355e3e0:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    23a8d355e3e4:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d355e3eb:	0f 85 e9 0a 00 00                               	jne    0x23a8d355eeda
    23a8d355e3f1:	45 8b 44 1c 74                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x74]
    23a8d355e3f6:	41 83 7c 1c 74 00                               	cmp    DWORD PTR [r12+rbx*1+0x74],0x0
    23a8d355e3fc:	0f 85 8f 0a 00 00                               	jne    0x23a8d355ee91
    23a8d355e402:	4c 8b 15 c4 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c4]        # 0x23a8d355a5cd
    23a8d355e409:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d355e40e:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d355e413:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d355e418:	c4 01 7a 6f 1c 3c                               	vmovdqu xmm11,XMMWORD PTR [r12+r15*1]
    23a8d355e41e:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    23a8d355e423:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    23a8d355e428:	c4 41 38 c2 e3 01                               	vcmpltps xmm12,xmm8,xmm11
    23a8d355e42e:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    23a8d355e433:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    23a8d355e438:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d355e43d:	4c 8b 15 ec c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ec]        # 0x23a8d355aa30
    23a8d355e444:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355e449:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355e44e:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    23a8d355e453:	4c 8b 15 ed c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ed]        # 0x23a8d355aa47
    23a8d355e45a:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355e45f:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355e464:	c4 41 30 58 cb                                  	vaddps xmm9,xmm9,xmm11
    23a8d355e469:	4c 8b 15 ee c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ee]        # 0x23a8d355aa5e
    23a8d355e470:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    23a8d355e476:	c4 41 30 54 df                                  	vandps xmm11,xmm9,xmm15
    23a8d355e47b:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    23a8d355e481:	c4 41 7a 5b db                                  	vcvttps2dq xmm11,xmm11
    23a8d355e486:	c4 41 21 ef df                                  	vpxor  xmm11,xmm11,xmm15
    23a8d355e48b:	4c 8b 15 ef c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ef]        # 0x23a8d355aa81
    23a8d355e492:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d355e497:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d355e49c:	4c 8b 15 b2 9d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9db2]        # 0x23a8d3558255
    23a8d355e4a3:	c4 41 30 54 0a                                  	vandps xmm9,xmm9,XMMWORD PTR [r10]
    23a8d355e4a8:	4c 8b 15 f1 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f1]        # 0x23a8d355aaa0
    23a8d355e4af:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d355e4b4:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d355e4b9:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    23a8d355e4bf:	c4 41 31 df fc                                  	vpandn xmm15,xmm9,xmm12
    23a8d355e4c4:	c4 41 21 db c9                                  	vpand  xmm9,xmm11,xmm9
    23a8d355e4c9:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d355e4ce:	c4 42 31 2b c9                                  	vpackusdw xmm9,xmm9,xmm9
    23a8d355e4d3:	c4 41 31 67 c9                                  	vpackuswb xmm9,xmm9,xmm9
    23a8d355e4d8:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d355e4dd:	45 8b 04 1c                                     	mov    r8d,DWORD PTR [r12+rbx*1]
    23a8d355e4e1:	44 0f af c2                                     	imul   r8d,edx
    23a8d355e4e5:	44 03 c0                                        	add    r8d,eax
    23a8d355e4e8:	47 8d 3c 00                                     	lea    r15d,[r8+r8*1]
    23a8d355e4ec:	48 89 85 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rax
    23a8d355e4f3:	41 8b 44 1c 18                                  	mov    eax,DWORD PTR [r12+rbx*1+0x18]
    23a8d355e4f8:	46 8d 04 c0                                     	lea    r8d,[rax+r8*8]
    23a8d355e4fc:	83 f9 03                                        	cmp    ecx,0x3
    23a8d355e4ff:	0f 84 81 00 00 00                               	je     0x23a8d355e586
    23a8d355e505:	8b c1                                           	mov    eax,ecx
    23a8d355e507:	83 e0 01                                        	and    eax,0x1
    23a8d355e50a:	f7 d8                                           	neg    eax
    23a8d355e50c:	c4 63 29 22 d0 00                               	vpinsrd xmm10,xmm10,eax,0x0
    23a8d355e512:	8b c1                                           	mov    eax,ecx
    23a8d355e514:	c1 e0 1e                                        	shl    eax,0x1e
    23a8d355e517:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d355e51a:	c4 63 29 22 d0 01                               	vpinsrd xmm10,xmm10,eax,0x1
    23a8d355e520:	41 8b 44 1c 68                                  	mov    eax,DWORD PTR [r12+rbx*1+0x68]
    23a8d355e525:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    23a8d355e52b:	0f 84 3b 00 00 00                               	je     0x23a8d355e56c
    23a8d355e531:	41 8b 44 1c 70                                  	mov    eax,DWORD PTR [r12+rbx*1+0x70]
    23a8d355e536:	41 83 7c 1c 70 00                               	cmp    DWORD PTR [r12+rbx*1+0x70],0x0
    23a8d355e53c:	0f 84 2a 00 00 00                               	je     0x23a8d355e56c
    23a8d355e542:	41 8b 44 1c 1c                                  	mov    eax,DWORD PTR [r12+rbx*1+0x1c]
    23a8d355e547:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    23a8d355e54b:	c4 01 7b 10 1c 0c                               	vmovsd xmm11,QWORD PTR [r12+r9*1]
    23a8d355e551:	c4 01 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+r15*1]
    23a8d355e557:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    23a8d355e55c:	c4 41 21 db da                                  	vpand  xmm11,xmm11,xmm10
    23a8d355e561:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    23a8d355e566:	c4 01 78 13 1c 3c                               	vmovlps QWORD PTR [r12+r15*1],xmm11
    23a8d355e56c:	c4 01 7b 10 1c 04                               	vmovsd xmm11,QWORD PTR [r12+r8*1]
    23a8d355e572:	c4 41 29 df fb                                  	vpandn xmm15,xmm10,xmm11
    23a8d355e577:	c4 41 31 db ca                                  	vpand  xmm9,xmm9,xmm10
    23a8d355e57c:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d355e581:	e9 33 00 00 00                                  	jmp    0x23a8d355e5b9
    23a8d355e586:	41 8b 44 1c 68                                  	mov    eax,DWORD PTR [r12+rbx*1+0x68]
    23a8d355e58b:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    23a8d355e591:	0f 84 22 00 00 00                               	je     0x23a8d355e5b9
    23a8d355e597:	41 8b 44 1c 70                                  	mov    eax,DWORD PTR [r12+rbx*1+0x70]
    23a8d355e59c:	41 83 7c 1c 70 00                               	cmp    DWORD PTR [r12+rbx*1+0x70],0x0
    23a8d355e5a2:	0f 84 11 00 00 00                               	je     0x23a8d355e5b9
    23a8d355e5a8:	41 8b 44 1c 1c                                  	mov    eax,DWORD PTR [r12+rbx*1+0x1c]
    23a8d355e5ad:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    23a8d355e5b1:	4b 8b 04 0c                                     	mov    rax,QWORD PTR [r12+r9*1]
    23a8d355e5b5:	4b 89 04 3c                                     	mov    QWORD PTR [r12+r15*1],rax
    23a8d355e5b9:	c4 01 78 13 0c 04                               	vmovlps QWORD PTR [r12+r8*1],xmm9
    23a8d355e5bf:	45 8b 44 1c 68                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x68]
    23a8d355e5c4:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    23a8d355e5ca:	0f 84 45 09 00 00                               	je     0x23a8d355ef15
    23a8d355e5d0:	45 8b 44 1c 70                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x70]
    23a8d355e5d5:	41 83 7c 1c 70 00                               	cmp    DWORD PTR [r12+rbx*1+0x70],0x0
    23a8d355e5db:	0f 84 34 09 00 00                               	je     0x23a8d355ef15
    23a8d355e5e1:	45 8b 44 1c 14                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x14]
    23a8d355e5e6:	41 83 7c 1c 14 02                               	cmp    DWORD PTR [r12+rbx*1+0x14],0x2
    23a8d355e5ec:	0f 85 23 09 00 00                               	jne    0x23a8d355ef15
    23a8d355e5f2:	45 8b 44 1c 18                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x18]
    23a8d355e5f7:	45 85 c0                                        	test   r8d,r8d
    23a8d355e5fa:	0f 84 15 09 00 00                               	je     0x23a8d355ef15
    23a8d355e600:	45 8d 78 c8                                     	lea    r15d,[r8-0x38]
    23a8d355e604:	43 8b 04 3c                                     	mov    eax,DWORD PTR [r12+r15*1]
    23a8d355e608:	43 83 3c 3c 00                                  	cmp    DWORD PTR [r12+r15*1],0x0
    23a8d355e60d:	0f 84 02 09 00 00                               	je     0x23a8d355ef15
    23a8d355e613:	45 8d 78 c0                                     	lea    r15d,[r8-0x40]
    23a8d355e617:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355e61b:	41 83 e8 3c                                     	sub    r8d,0x3c
    23a8d355e61f:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    23a8d355e623:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    23a8d355e629:	c1 e8 02                                        	shr    eax,0x2
    23a8d355e62c:	41 0f af c0                                     	imul   eax,r8d
    23a8d355e630:	c1 e0 04                                        	shl    eax,0x4
    23a8d355e633:	46 8d 04 38                                     	lea    r8d,[rax+r15*1]
    23a8d355e637:	44 8d 3c 95 00 00 00 00                         	lea    r15d,[rdx*4+0x0]
    23a8d355e63f:	41 8b c7                                        	mov    eax,r15d
    23a8d355e642:	83 e0 f0                                        	and    eax,0xfffffff0
    23a8d355e645:	44 03 c0                                        	add    r8d,eax
    23a8d355e648:	41 8b 44 1c 6c                                  	mov    eax,DWORD PTR [r12+rbx*1+0x6c]
    23a8d355e64d:	2d 01 02 00 00                                  	sub    eax,0x201
    23a8d355e652:	48 89 95 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdx
    23a8d355e659:	33 d2                                           	xor    edx,edx
    23a8d355e65b:	85 c0                                           	test   eax,eax
    23a8d355e65d:	0f 94 c2                                        	sete   dl
    23a8d355e660:	83 f8 02                                        	cmp    eax,0x2
    23a8d355e663:	0f 94 c0                                        	sete   al
    23a8d355e666:	0f b6 c0                                        	movzx  eax,al
    23a8d355e669:	0b c2                                           	or     eax,edx
    23a8d355e66b:	0f 85 0d 00 00 00                               	jne    0x23a8d355e67e
    23a8d355e671:	4b c7 04 04 00 00 00 00                         	mov    QWORD PTR [r12+r8*1],0x0
    23a8d355e679:	e9 97 08 00 00                                  	jmp    0x23a8d355ef15
    23a8d355e67e:	83 e1 03                                        	and    ecx,0x3
    23a8d355e681:	41 83 e7 0c                                     	and    r15d,0xc
    23a8d355e685:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    23a8d355e68b:	83 e0 03                                        	and    eax,0x3
    23a8d355e68e:	41 0b c7                                        	or     eax,r15d
    23a8d355e691:	44 8d 3c 00                                     	lea    r15d,[rax+rax*1]
    23a8d355e695:	41 83 e7 3f                                     	and    r15d,0x3f
    23a8d355e699:	4c 8b d1                                        	mov    r10,rcx
    23a8d355e69c:	41 8b cf                                        	mov    ecx,r15d
    23a8d355e69f:	4d 8b fa                                        	mov    r15,r10
    23a8d355e6a2:	49 d3 e7                                        	shl    r15,cl
    23a8d355e6a5:	4b 8b 04 04                                     	mov    rax,QWORD PTR [r12+r8*1]
    23a8d355e6a9:	ba ff ff ff ff                                  	mov    edx,0xffffffff
    23a8d355e6ae:	48 3b c2                                        	cmp    rax,rdx
    23a8d355e6b1:	0f 84 e0 03 00 00                               	je     0x23a8d355ea97
    23a8d355e6b7:	49 0b c7                                        	or     rax,r15
    23a8d355e6ba:	4b 89 04 04                                     	mov    QWORD PTR [r12+r8*1],rax
    23a8d355e6be:	48 3b d0                                        	cmp    rdx,rax
    23a8d355e6c1:	0f 85 4e 08 00 00                               	jne    0x23a8d355ef15
    23a8d355e6c7:	45 8b 7c 1c 1c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0x1c]
    23a8d355e6cc:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    23a8d355e6d2:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    23a8d355e6d7:	41 8b 14 1c                                     	mov    edx,DWORD PTR [r12+rbx*1]
    23a8d355e6db:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    23a8d355e6e1:	83 c9 03                                        	or     ecx,0x3
    23a8d355e6e4:	0f af ca                                        	imul   ecx,edx
    23a8d355e6e7:	03 c8                                           	add    ecx,eax
    23a8d355e6e9:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355e6ed:	c4 41 7a 6f 4c 0c 10                            	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0x10]
    23a8d355e6f4:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d355e6fa:	c4 41 7a 6f 1c 0c                               	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1]
    23a8d355e700:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d355e706:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    23a8d355e70b:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    23a8d355e711:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    23a8d355e717:	44 8b c9                                        	mov    r9d,ecx
    23a8d355e71a:	41 83 c9 02                                     	or     r9d,0x2
    23a8d355e71e:	44 0f af ca                                     	imul   r9d,edx
    23a8d355e722:	44 03 c8                                        	add    r9d,eax
    23a8d355e725:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    23a8d355e729:	c4 01 7a 6f 64 0c 10                            	vmovdqu xmm12,XMMWORD PTR [r12+r9*1+0x10]
    23a8d355e730:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d355e736:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    23a8d355e73b:	c4 01 7a 6f 2c 0c                               	vmovdqu xmm13,XMMWORD PTR [r12+r9*1]
    23a8d355e741:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    23a8d355e747:	c4 41 29 db d6                                  	vpand  xmm10,xmm10,xmm14
    23a8d355e74c:	44 8b c9                                        	mov    r9d,ecx
    23a8d355e74f:	41 83 c9 01                                     	or     r9d,0x1
    23a8d355e753:	44 0f af ca                                     	imul   r9d,edx
    23a8d355e757:	44 03 c8                                        	add    r9d,eax
    23a8d355e75a:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    23a8d355e75e:	c4 01 7a 6f 74 0c 10                            	vmovdqu xmm14,XMMWORD PTR [r12+r9*1+0x10]
    23a8d355e765:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    23a8d355e76b:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    23a8d355e76f:	c4 81 7a 6f 0c 0c                               	vmovdqu xmm1,XMMWORD PTR [r12+r9*1]
    23a8d355e775:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    23a8d355e77a:	c5 29 db d2                                     	vpand  xmm10,xmm10,xmm2
    23a8d355e77e:	0f af ca                                        	imul   ecx,edx
    23a8d355e781:	03 c1                                           	add    eax,ecx
    23a8d355e783:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    23a8d355e787:	c4 81 7a 6f 54 3c 10                            	vmovdqu xmm2,XMMWORD PTR [r12+r15*1+0x10]
    23a8d355e78e:	c5 e8 c2 c2 00                                  	vcmpeqps xmm0,xmm2,xmm2
    23a8d355e793:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    23a8d355e797:	c4 01 7a 6f 14 3c                               	vmovdqu xmm10,XMMWORD PTR [r12+r15*1]
    23a8d355e79d:	c4 c1 28 c2 ea 00                               	vcmpeqps xmm5,xmm10,xmm10
    23a8d355e7a3:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d355e7a7:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    23a8d355e7ac:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    23a8d355e7b1:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    23a8d355e7b5:	41 83 ff 0f                                     	cmp    r15d,0xf
    23a8d355e7b9:	0f 84 16 00 00 00                               	je     0x23a8d355e7d5
    23a8d355e7bf:	4b c7 44 04 08 00 00 80 7f                      	mov    QWORD PTR [r12+r8*1+0x8],0x7f800000
    23a8d355e7c8:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355e7d0:	e9 40 07 00 00                                  	jmp    0x23a8d355ef15
    23a8d355e7d5:	4c 8b 15 ce c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ce]        # 0x23a8d355adaa
    23a8d355e7dc:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d355e7e1:	4c 8b 15 d1 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d1]        # 0x23a8d355adb9
    23a8d355e7e8:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    23a8d355e7ee:	4c 8b 15 d4 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d4]        # 0x23a8d355adc9
    23a8d355e7f5:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355e7fa:	4c 8b 15 d7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d7]        # 0x23a8d355add8
    23a8d355e801:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d355e807:	4c 8b 15 da c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5da]        # 0x23a8d355ade8
    23a8d355e80e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355e813:	4c 8b 15 dd c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5dd]        # 0x23a8d355adf7
    23a8d355e81a:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    23a8d355e820:	4c 8b 15 e0 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e0]        # 0x23a8d355ae07
    23a8d355e827:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355e82c:	4c 8b 15 e3 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e3]        # 0x23a8d355ae16
    23a8d355e833:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    23a8d355e839:	4c 8b 15 e6 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e6]        # 0x23a8d355ae26
    23a8d355e840:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355e845:	4c 8b 15 e9 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e9]        # 0x23a8d355ae35
    23a8d355e84c:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    23a8d355e852:	4c 8b 15 ec c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ec]        # 0x23a8d355ae45
    23a8d355e859:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355e85e:	4c 8b 15 ef c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ef]        # 0x23a8d355ae54
    23a8d355e865:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d355e86b:	4c 8b 15 f2 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f2]        # 0x23a8d355ae64
    23a8d355e872:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d355e877:	4c 8b 15 f5 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f5]        # 0x23a8d355ae73
    23a8d355e87e:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d355e884:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    23a8d355e889:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355e88d:	c5 f9 73 f0 3f                                  	vpsllq xmm0,xmm0,0x3f
    23a8d355e892:	c5 f9 73 d0 1f                                  	vpsrlq xmm0,xmm0,0x1f
    23a8d355e897:	4c 8b 15 f8 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f8]        # 0x23a8d355ae96
    23a8d355e89e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    23a8d355e8a4:	c5 78 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm9
    23a8d355e8a9:	4c 8b 15 fb c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5fb]        # 0x23a8d355aeab
    23a8d355e8b0:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d355e8b5:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d355e8ba:	c5 f8 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm5
    23a8d355e8bf:	c4 c1 30 c2 ea 01                               	vcmpltps xmm5,xmm9,xmm10
    23a8d355e8c5:	c4 41 28 c2 c9 01                               	vcmpltps xmm9,xmm10,xmm9
    23a8d355e8cb:	c4 c1 51 eb e9                                  	vpor   xmm5,xmm5,xmm9
    23a8d355e8d0:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    23a8d355e8d4:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d355e8d8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e8dd:	4c 8b 15 c7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c7]        # 0x23a8d355aeab
    23a8d355e8e4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d355e8e9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d355e8ee:	c4 41 51 df f9                                  	vpandn xmm15,xmm5,xmm9
    23a8d355e8f3:	c5 a9 db ed                                     	vpand  xmm5,xmm10,xmm5
    23a8d355e8f7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e8fc:	c5 50 c2 ca 01                                  	vcmpltps xmm9,xmm5,xmm2
    23a8d355e901:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d355e905:	c4 c1 59 db c1                                  	vpand  xmm0,xmm4,xmm9
    23a8d355e90a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e90f:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355e913:	c4 c1 69 db e9                                  	vpand  xmm5,xmm2,xmm9
    23a8d355e918:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e91d:	c5 50 c2 c9 01                                  	vcmpltps xmm9,xmm5,xmm1
    23a8d355e922:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d355e926:	c4 c1 61 db c1                                  	vpand  xmm0,xmm3,xmm9
    23a8d355e92b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e930:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355e934:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d355e939:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e93e:	c4 41 50 c2 ce 01                               	vcmpltps xmm9,xmm5,xmm14
    23a8d355e944:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d355e948:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d355e94d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e952:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d355e956:	c4 c1 09 db e9                                  	vpand  xmm5,xmm14,xmm9
    23a8d355e95b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e960:	c4 41 50 c2 c5 01                               	vcmpltps xmm8,xmm5,xmm13
    23a8d355e966:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d355e96a:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d355e96f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e974:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d355e978:	c4 c1 11 db e8                                  	vpand  xmm5,xmm13,xmm8
    23a8d355e97d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e982:	c4 c1 50 c2 fc 01                               	vcmpltps xmm7,xmm5,xmm12
    23a8d355e988:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355e98c:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355e990:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e995:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355e999:	c5 99 db ef                                     	vpand  xmm5,xmm12,xmm7
    23a8d355e99d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e9a2:	c4 c1 50 c2 f3 01                               	vcmpltps xmm6,xmm5,xmm11
    23a8d355e9a8:	c5 f8 10 7d 80                                  	vmovups xmm7,XMMWORD PTR [rbp-0x80]
    23a8d355e9ad:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d355e9b1:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    23a8d355e9b5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e9ba:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d355e9be:	c5 a1 db ee                                     	vpand  xmm5,xmm11,xmm6
    23a8d355e9c2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355e9c7:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d355e9cc:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    23a8d355e9d1:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d355e9d6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355e9da:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    23a8d355e9de:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e9e3:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    23a8d355e9ed:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355e9f1:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355e9f5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355e9fa:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    23a8d355ea04:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d355ea08:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d355ea0c:	45 33 ff                                        	xor    r15d,r15d
    23a8d355ea0f:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d355ea13:	41 0f 97 c7                                     	seta   r15b
    23a8d355ea17:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    23a8d355ea1d:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    23a8d355ea25:	0b d0                                           	or     edx,eax
    23a8d355ea27:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    23a8d355ea2d:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d355ea32:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355ea36:	45 0f 47 fb                                     	cmova  r15d,r11d
    23a8d355ea3a:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    23a8d355ea42:	0b d0                                           	or     edx,eax
    23a8d355ea44:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    23a8d355ea4a:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d355ea4f:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d355ea54:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355ea58:	44 0f 47 fa                                     	cmova  r15d,edx
    23a8d355ea5c:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d355ea60:	41 0b c7                                        	or     eax,r15d
    23a8d355ea63:	c4 c1 7a 10 04 04                               	vmovss xmm0,DWORD PTR [r12+rax*1]
    23a8d355ea69:	c4 81 7a 11 44 04 08                            	vmovss DWORD PTR [r12+r8*1+0x8],xmm0
    23a8d355ea70:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    23a8d355ea76:	44 0b f8                                        	or     r15d,eax
    23a8d355ea79:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355ea7d:	47 89 7c 04 0c                                  	mov    DWORD PTR [r12+r8*1+0xc],r15d
    23a8d355ea82:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    23a8d355ea8a:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355ea92:	e9 7e 04 00 00                                  	jmp    0x23a8d355ef15
    23a8d355ea97:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    23a8d355ea9c:	8b d0                                           	mov    edx,eax
    23a8d355ea9e:	83 e2 3f                                        	and    edx,0x3f
    23a8d355eaa1:	8b ca                                           	mov    ecx,edx
    23a8d355eaa3:	49 d3 ef                                        	shr    r15,cl
    23a8d355eaa6:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d355eaaa:	0f 84 65 04 00 00                               	je     0x23a8d355ef15
    23a8d355eab0:	83 e0 01                                        	and    eax,0x1
    23a8d355eab3:	45 8d 3c 81                                     	lea    r15d,[r9+rax*4]
    23a8d355eab7:	c4 81 7a 10 04 3c                               	vmovss xmm0,DWORD PTR [r12+r15*1]
    23a8d355eabd:	c4 81 7a 10 74 04 08                            	vmovss xmm6,DWORD PTR [r12+r8*1+0x8]
    23a8d355eac4:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    23a8d355eac8:	0f 86 47 04 00 00                               	jbe    0x23a8d355ef15
    23a8d355eace:	45 8b 7c 1c 1c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0x1c]
    23a8d355ead3:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    23a8d355ead9:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    23a8d355eade:	41 8b 14 1c                                     	mov    edx,DWORD PTR [r12+rbx*1]
    23a8d355eae2:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    23a8d355eae8:	83 c9 03                                        	or     ecx,0x3
    23a8d355eaeb:	0f af ca                                        	imul   ecx,edx
    23a8d355eaee:	03 c8                                           	add    ecx,eax
    23a8d355eaf0:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d355eaf4:	c4 c1 7a 6f 44 0c 10                            	vmovdqu xmm0,XMMWORD PTR [r12+rcx*1+0x10]
    23a8d355eafb:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    23a8d355eb00:	c4 c1 7a 6f 3c 0c                               	vmovdqu xmm7,XMMWORD PTR [r12+rcx*1]
    23a8d355eb06:	c5 40 c2 cf 00                                  	vcmpeqps xmm9,xmm7,xmm7
    23a8d355eb0b:	c4 c1 49 db f1                                  	vpand  xmm6,xmm6,xmm9
    23a8d355eb10:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    23a8d355eb16:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    23a8d355eb1c:	44 8b c9                                        	mov    r9d,ecx
    23a8d355eb1f:	41 83 c9 02                                     	or     r9d,0x2
    23a8d355eb23:	44 0f af ca                                     	imul   r9d,edx
    23a8d355eb27:	44 03 c8                                        	add    r9d,eax
    23a8d355eb2a:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    23a8d355eb2e:	c4 01 7a 6f 4c 0c 10                            	vmovdqu xmm9,XMMWORD PTR [r12+r9*1+0x10]
    23a8d355eb35:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d355eb3b:	c4 c1 49 db f2                                  	vpand  xmm6,xmm6,xmm10
    23a8d355eb40:	c4 01 7a 6f 14 0c                               	vmovdqu xmm10,XMMWORD PTR [r12+r9*1]
    23a8d355eb46:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d355eb4c:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    23a8d355eb51:	44 8b c9                                        	mov    r9d,ecx
    23a8d355eb54:	41 83 c9 01                                     	or     r9d,0x1
    23a8d355eb58:	44 0f af ca                                     	imul   r9d,edx
    23a8d355eb5c:	44 03 c8                                        	add    r9d,eax
    23a8d355eb5f:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    23a8d355eb63:	c4 01 7a 6f 5c 0c 10                            	vmovdqu xmm11,XMMWORD PTR [r12+r9*1+0x10]
    23a8d355eb6a:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d355eb70:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    23a8d355eb75:	c4 01 7a 6f 24 0c                               	vmovdqu xmm12,XMMWORD PTR [r12+r9*1]
    23a8d355eb7b:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d355eb81:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    23a8d355eb86:	0f af ca                                        	imul   ecx,edx
    23a8d355eb89:	03 c1                                           	add    eax,ecx
    23a8d355eb8b:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    23a8d355eb8f:	c4 01 7a 6f 6c 3c 10                            	vmovdqu xmm13,XMMWORD PTR [r12+r15*1+0x10]
    23a8d355eb96:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    23a8d355eb9c:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    23a8d355eba1:	c4 01 7a 6f 34 3c                               	vmovdqu xmm14,XMMWORD PTR [r12+r15*1]
    23a8d355eba7:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    23a8d355ebad:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    23a8d355ebb1:	c5 c9 72 f6 1f                                  	vpslld xmm6,xmm6,0x1f
    23a8d355ebb6:	c5 c9 72 e6 1f                                  	vpsrad xmm6,xmm6,0x1f
    23a8d355ebbb:	c5 78 50 fe                                     	vmovmskps r15d,xmm6
    23a8d355ebbf:	41 83 ff 0f                                     	cmp    r15d,0xf
    23a8d355ebc3:	0f 84 0e 00 00 00                               	je     0x23a8d355ebd7
    23a8d355ebc9:	4b c7 44 04 08 00 00 80 7f                      	mov    QWORD PTR [r12+r8*1+0x8],0x7f800000
    23a8d355ebd2:	e9 3e 03 00 00                                  	jmp    0x23a8d355ef15
    23a8d355ebd7:	4c 8b 15 cc c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1cc]        # 0x23a8d355adaa
    23a8d355ebde:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355ebe3:	4c 8b 15 cf c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1cf]        # 0x23a8d355adb9
    23a8d355ebea:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    23a8d355ebf0:	4c 8b 15 d2 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d2]        # 0x23a8d355adc9
    23a8d355ebf7:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d355ebfc:	4c 8b 15 d5 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d5]        # 0x23a8d355add8
    23a8d355ec03:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d355ec09:	4c 8b 15 d8 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d8]        # 0x23a8d355ade8
    23a8d355ec10:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d355ec15:	4c 8b 15 db c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1db]        # 0x23a8d355adf7
    23a8d355ec1c:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d355ec22:	4c 8b 15 de c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1de]        # 0x23a8d355ae07
    23a8d355ec29:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d355ec2e:	4c 8b 15 e1 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e1]        # 0x23a8d355ae16
    23a8d355ec35:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d355ec3b:	4c 8b 15 e4 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e4]        # 0x23a8d355ae26
    23a8d355ec42:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d355ec47:	4c 8b 15 e7 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e7]        # 0x23a8d355ae35
    23a8d355ec4e:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d355ec54:	4c 8b 15 ea c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ea]        # 0x23a8d355ae45
    23a8d355ec5b:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d355ec60:	4c 8b 15 ed c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ed]        # 0x23a8d355ae54
    23a8d355ec67:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d355ec6d:	4c 8b 15 f0 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f0]        # 0x23a8d355ae64
    23a8d355ec74:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355ec79:	4c 8b 15 f3 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f3]        # 0x23a8d355ae73
    23a8d355ec80:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    23a8d355ec86:	c5 f8 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm6
    23a8d355ec8b:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d355ec8f:	c5 c9 73 f6 3f                                  	vpsllq xmm6,xmm6,0x3f
    23a8d355ec94:	c5 c9 73 d6 1f                                  	vpsrlq xmm6,xmm6,0x1f
    23a8d355ec99:	4c 8b 15 f6 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f6]        # 0x23a8d355ae96
    23a8d355eca0:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    23a8d355eca6:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d355ecab:	4c 8b 15 f9 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f9]        # 0x23a8d355aeab
    23a8d355ecb2:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d355ecb7:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d355ecbb:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    23a8d355ecc0:	c4 c1 78 c2 ce 01                               	vcmpltps xmm1,xmm0,xmm14
    23a8d355ecc6:	c5 88 c2 c0 01                                  	vcmpltps xmm0,xmm14,xmm0
    23a8d355eccb:	c5 f1 eb c0                                     	vpor   xmm0,xmm1,xmm0
    23a8d355eccf:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    23a8d355ecd3:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    23a8d355ecd7:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d355ecdc:	4c 8b 15 c8 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c8]        # 0x23a8d355aeab
    23a8d355ece3:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d355ece8:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d355ecec:	c5 79 df f9                                     	vpandn xmm15,xmm0,xmm1
    23a8d355ecf0:	c5 89 db c0                                     	vpand  xmm0,xmm14,xmm0
    23a8d355ecf4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ecf9:	c4 41 78 c2 f5 01                               	vcmpltps xmm14,xmm0,xmm13
    23a8d355ecff:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    23a8d355ed03:	c4 c1 39 db f6                                  	vpand  xmm6,xmm8,xmm14
    23a8d355ed08:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d355ed0d:	c5 09 df f8                                     	vpandn xmm15,xmm14,xmm0
    23a8d355ed11:	c4 c1 11 db c6                                  	vpand  xmm0,xmm13,xmm14
    23a8d355ed16:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ed1b:	c4 41 78 c2 c4 01                               	vcmpltps xmm8,xmm0,xmm12
    23a8d355ed21:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    23a8d355ed25:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d355ed2a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355ed2f:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d355ed33:	c4 c1 19 db c0                                  	vpand  xmm0,xmm12,xmm8
    23a8d355ed38:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ed3d:	c4 c1 78 c2 f3 01                               	vcmpltps xmm6,xmm0,xmm11
    23a8d355ed43:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d355ed47:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    23a8d355ed4b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355ed50:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d355ed54:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    23a8d355ed58:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ed5d:	c4 c1 78 c2 f2 01                               	vcmpltps xmm6,xmm0,xmm10
    23a8d355ed63:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d355ed67:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    23a8d355ed6b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355ed70:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d355ed74:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    23a8d355ed78:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ed7d:	c4 c1 78 c2 f1 01                               	vcmpltps xmm6,xmm0,xmm9
    23a8d355ed83:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d355ed87:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    23a8d355ed8b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355ed90:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d355ed94:	c5 b1 db c6                                     	vpand  xmm0,xmm9,xmm6
    23a8d355ed98:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355ed9d:	c5 f8 c2 f7 01                                  	vcmpltps xmm6,xmm0,xmm7
    23a8d355eda2:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d355eda7:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d355edab:	c5 b9 db ee                                     	vpand  xmm5,xmm8,xmm6
    23a8d355edaf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355edb4:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d355edb8:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    23a8d355edbc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355edc1:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d355edc6:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d355edcb:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d355edd0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d355edd4:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d355edd8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d355eddd:	c4 c1 7a 7f ac 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm5
    23a8d355ede7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d355edeb:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d355edef:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355edf4:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    23a8d355edfe:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d355ee02:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d355ee06:	45 33 ff                                        	xor    r15d,r15d
    23a8d355ee09:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d355ee0d:	41 0f 97 c7                                     	seta   r15b
    23a8d355ee11:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    23a8d355ee17:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    23a8d355ee1f:	0b d0                                           	or     edx,eax
    23a8d355ee21:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    23a8d355ee27:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d355ee2c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355ee30:	45 0f 47 fb                                     	cmova  r15d,r11d
    23a8d355ee34:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    23a8d355ee3c:	0b d0                                           	or     edx,eax
    23a8d355ee3e:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    23a8d355ee44:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d355ee49:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d355ee4e:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355ee52:	44 0f 47 fa                                     	cmova  r15d,edx
    23a8d355ee56:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d355ee5a:	41 0b c7                                        	or     eax,r15d
    23a8d355ee5d:	c4 c1 7a 10 04 04                               	vmovss xmm0,DWORD PTR [r12+rax*1]
    23a8d355ee63:	c4 81 7a 11 44 04 08                            	vmovss DWORD PTR [r12+r8*1+0x8],xmm0
    23a8d355ee6a:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    23a8d355ee70:	44 0b f8                                        	or     r15d,eax
    23a8d355ee73:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    23a8d355ee77:	47 89 7c 04 0c                                  	mov    DWORD PTR [r12+r8*1+0xc],r15d
    23a8d355ee7c:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    23a8d355ee84:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355ee8c:	e9 84 00 00 00                                  	jmp    0x23a8d355ef15
    23a8d355ee91:	41 57                                           	push   r15
    23a8d355ee93:	4c 8b c3                                        	mov    r8,rbx
    23a8d355ee96:	41 bf 03 00 00 00                               	mov    r15d,0x3
    23a8d355ee9c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355eea0:	8b d9                                           	mov    ebx,ecx
    23a8d355eea2:	8b ca                                           	mov    ecx,edx
    23a8d355eea4:	8b d0                                           	mov    edx,eax
    23a8d355eea6:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d355eea9:	e8 ba d3 ee ff                                  	call   0x23a8d344c268
    23a8d355eeae:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355eeb1:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355eeb5:	41 bb 02 00 00 00                               	mov    r11d,0x2
    23a8d355eebb:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    23a8d355eebf:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d355eec5:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    23a8d355eecd:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355eed5:	e9 3b 00 00 00                                  	jmp    0x23a8d355ef15
    23a8d355eeda:	41 57                                           	push   r15
    23a8d355eedc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355eee0:	8b d9                                           	mov    ebx,ecx
    23a8d355eee2:	8b ca                                           	mov    ecx,edx
    23a8d355eee4:	8b d0                                           	mov    edx,eax
    23a8d355eee6:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d355eee9:	e8 6a d3 ee ff                                  	call   0x23a8d344c258
    23a8d355eeee:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355eef1:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355eef5:	41 bb 02 00 00 00                               	mov    r11d,0x2
    23a8d355eefb:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    23a8d355eeff:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d355ef05:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    23a8d355ef0d:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d355ef15:	44 8b 85 30 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1d0]
    23a8d355ef1c:	41 83 c0 01                                     	add    r8d,0x1
    23a8d355ef20:	41 83 f8 04                                     	cmp    r8d,0x4
    23a8d355ef24:	0f 85 56 f4 ff ff                               	jne    0x23a8d355e380
    23a8d355ef2a:	4d 8b c4                                        	mov    r8,r12
    23a8d355ef2d:	41 c7 44 38 18 00 00 00 00                      	mov    DWORD PTR [r8+rdi*1+0x18],0x0
    23a8d355ef36:	48 c7 85 30 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x1
    23a8d355ef41:	4d 8b e0                                        	mov    r12,r8
    23a8d355ef44:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d355ef48:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d355ef4d:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d355ef52:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d355ef56:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    23a8d355ef5e:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d355ef64:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    23a8d355ef6b:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    23a8d355ef72:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d355ef79:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    23a8d355ef81:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    23a8d355ef89:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    23a8d355ef91:	e9 07 00 00 00                                  	jmp    0x23a8d355ef9d
    23a8d355ef96:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355ef9a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355ef9d:	4c 8b 9d d8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x228]
    23a8d355efa4:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    23a8d355efab:	4d 03 fb                                        	add    r15,r11
    23a8d355efae:	49 8b c0                                        	mov    rax,r8
    23a8d355efb1:	4c 8b 85 e8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x218]
    23a8d355efb8:	49 03 c0                                        	add    rax,r8
    23a8d355efbb:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    23a8d355efc2:	4c 03 cb                                        	add    r9,rbx
    23a8d355efc5:	83 c2 01                                        	add    edx,0x1
    23a8d355efc8:	8b b5 58 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xa8]
    23a8d355efce:	3b f2                                           	cmp    esi,edx
    23a8d355efd0:	0f 85 6a ab ff ff                               	jne    0x23a8d3559b40
    23a8d355efd6:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    23a8d355efdc:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    23a8d355efe1:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    23a8d355efe6:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    23a8d355efeb:	c5 7b 10 b5 68 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x98]
    23a8d355eff3:	4c 8b bd 18 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1e8]
    23a8d355effa:	48 8b 85 48 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xb8]
    23a8d355f001:	49 03 c7                                        	add    rax,r15
    23a8d355f004:	48 8b 95 20 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1e0]
    23a8d355f00b:	48 8b b5 40 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xc0]
    23a8d355f012:	48 03 f2                                        	add    rsi,rdx
    23a8d355f015:	4c 8b 8d 28 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1d8]
    23a8d355f01c:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    23a8d355f023:	49 03 f9                                        	add    rdi,r9
    23a8d355f026:	83 bd 10 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f0],0x0
    23a8d355f02d:	0f 85 4e 00 00 00                               	jne    0x23a8d355f081
    23a8d355f033:	e9 7f 00 00 00                                  	jmp    0x23a8d355f0b7
    23a8d355f038:	48 8b bd 18 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1e8]
    23a8d355f03f:	4c 03 df                                        	add    r11,rdi
    23a8d355f042:	4c 8b bd 20 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1e0]
    23a8d355f049:	49 03 c7                                        	add    rax,r15
    23a8d355f04c:	48 8b 95 28 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1d8]
    23a8d355f053:	4c 03 c2                                        	add    r8,rdx
    23a8d355f056:	48 8b f0                                        	mov    rsi,rax
    23a8d355f059:	49 8b c3                                        	mov    rax,r11
    23a8d355f05c:	4c 8b ca                                        	mov    r9,rdx
    23a8d355f05f:	49 8b d7                                        	mov    rdx,r15
    23a8d355f062:	4c 8b ff                                        	mov    r15,rdi
    23a8d355f065:	49 8b f8                                        	mov    rdi,r8
    23a8d355f068:	4c 8b 9d d8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x228]
    23a8d355f06f:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355f073:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    23a8d355f07a:	4c 8b 85 e8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x218]
    23a8d355f081:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    23a8d355f086:	c5 3a 5c 85 38 fe ff ff                         	vsubss xmm8,xmm8,DWORD PTR [rbp-0x1c8]
    23a8d355f08e:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    23a8d355f093:	c5 22 5c 9d 40 fe ff ff                         	vsubss xmm11,xmm11,DWORD PTR [rbp-0x1c0]
    23a8d355f09b:	c4 41 79 28 d5                                  	vmovapd xmm10,xmm13
    23a8d355f0a0:	c5 2a 5c 95 48 fe ff ff                         	vsubss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    23a8d355f0a8:	c4 41 79 28 f3                                  	vmovapd xmm14,xmm11
    23a8d355f0ad:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    23a8d355f0b2:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    23a8d355f0b7:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    23a8d355f0bb:	41 83 c0 01                                     	add    r8d,0x1
    23a8d355f0bf:	44 8b 5d 28                                     	mov    r11d,DWORD PTR [rbp+0x28]
    23a8d355f0c3:	45 3b d8                                        	cmp    r11d,r8d
    23a8d355f0c6:	0f 85 34 a3 ff ff                               	jne    0x23a8d3559400
    23a8d355f0cc:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f0cf:	45 8b 44 3c 18                                  	mov    r8d,DWORD PTR [r12+rdi*1+0x18]
    23a8d355f0d4:	41 83 7c 3c 18 00                               	cmp    DWORD PTR [r12+rdi*1+0x18],0x0
    23a8d355f0da:	0f 8e fe 16 00 00                               	jle    0x23a8d35607de
    23a8d355f0e0:	45 33 c0                                        	xor    r8d,r8d
    23a8d355f0e3:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    23a8d355f0e7:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    23a8d355f0eb:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355f0ef:	c5 f9 28 c3                                     	vmovapd xmm0,xmm3
    23a8d355f0f3:	e9 2e 00 00 00                                  	jmp    0x23a8d355f126
    23a8d355f0f8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d355f100:	4d 8b d0                                        	mov    r10,r8
    23a8d355f103:	45 8b c4                                        	mov    r8d,r12d
    23a8d355f106:	4d 8b e2                                        	mov    r12,r10
    23a8d355f109:	49 8b d3                                        	mov    rdx,r11
    23a8d355f10c:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d355f110:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d355f115:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d355f11a:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d355f11e:	c5 fb 10 85 88 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x178]
    23a8d355f126:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    23a8d355f12d:	48 8b 9d f8 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x108]
    23a8d355f134:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    23a8d355f13b:	8b b5 78 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x188]
    23a8d355f141:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    23a8d355f148:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    23a8d355f14c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355f151:	0f 85 97 1a 00 00                               	jne    0x23a8d3560bee
    23a8d355f157:	46 8d 4c 87 2c                                  	lea    r9d,[rdi+r8*4+0x2c]
    23a8d355f15c:	43 8d 0c 83                                     	lea    ecx,[r11+r8*4]
    23a8d355f160:	46 8d 5c c7 70                                  	lea    r11d,[rdi+r8*8+0x70]
    23a8d355f165:	4f 8b 1c 1c                                     	mov    r11,QWORD PTR [r12+r11*1]
    23a8d355f169:	4c 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r11
    23a8d355f170:	46 8d 5c c7 50                                  	lea    r11d,[rdi+r8*8+0x50]
    23a8d355f175:	4f 8b 1c 1c                                     	mov    r11,QWORD PTR [r12+r11*1]
    23a8d355f179:	c4 81 7a 10 7c 3c 1c                            	vmovss xmm7,DWORD PTR [r12+r15*1+0x1c]
    23a8d355f180:	c4 41 7a 10 44 04 1c                            	vmovss xmm8,DWORD PTR [r12+rax*1+0x1c]
    23a8d355f187:	c4 41 7a 10 4c 1c 1c                            	vmovss xmm9,DWORD PTR [r12+rbx*1+0x1c]
    23a8d355f18e:	45 8b 84 14 c8 3c 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x3cc8]
    23a8d355f196:	41 83 bc 14 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rdx*1+0x3cc8],0x0
    23a8d355f19f:	0f 85 0e 00 00 00                               	jne    0x23a8d355f1b3
    23a8d355f1a5:	8b d1                                           	mov    edx,ecx
    23a8d355f1a7:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    23a8d355f1ae:	e9 56 00 00 00                                  	jmp    0x23a8d355f209
    23a8d355f1b3:	45 8b 04 0c                                     	mov    r8d,DWORD PTR [r12+rcx*1]
    23a8d355f1b7:	41 8b d0                                        	mov    edx,r8d
    23a8d355f1ba:	c1 ea 03                                        	shr    edx,0x3
    23a8d355f1bd:	83 e2 03                                        	and    edx,0x3
    23a8d355f1c0:	43 8b 3c 0c                                     	mov    edi,DWORD PTR [r12+r9*1]
    23a8d355f1c4:	c1 e7 02                                        	shl    edi,0x2
    23a8d355f1c7:	83 e7 7c                                        	and    edi,0x7c
    23a8d355f1ca:	0b fa                                           	or     edi,edx
    23a8d355f1cc:	03 fe                                           	add    edi,esi
    23a8d355f1ce:	41 0f b6 3c 3c                                  	movzx  edi,BYTE PTR [r12+rdi*1]
    23a8d355f1d3:	41 83 e0 07                                     	and    r8d,0x7
    23a8d355f1d7:	8b d1                                           	mov    edx,ecx
    23a8d355f1d9:	41 8b c8                                        	mov    ecx,r8d
    23a8d355f1dc:	d3 e7                                           	shl    edi,cl
    23a8d355f1de:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    23a8d355f1e5:	40 f6 c7 80                                     	test   dil,0x80
    23a8d355f1e9:	0f 85 1a 00 00 00                               	jne    0x23a8d355f209
    23a8d355f1ef:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f1f2:	4d 8b c4                                        	mov    r8,r12
    23a8d355f1f5:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d355f1f9:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d355f1fd:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d355f204:	e9 c1 15 00 00                                  	jmp    0x23a8d35607ca
    23a8d355f209:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    23a8d355f20e:	c4 41 7a 59 d2                                  	vmulss xmm10,xmm0,xmm10
    23a8d355f213:	c4 41 2a 59 c9                                  	vmulss xmm9,xmm10,xmm9
    23a8d355f218:	c4 61 82 2a 9d 68 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x98]
    23a8d355f221:	c4 41 7a 59 db                                  	vmulss xmm11,xmm0,xmm11
    23a8d355f226:	c4 41 22 59 c0                                  	vmulss xmm8,xmm11,xmm8
    23a8d355f22b:	c4 41 32 58 e0                                  	vaddss xmm12,xmm9,xmm8
    23a8d355f230:	c4 41 52 5c d2                                  	vsubss xmm10,xmm5,xmm10
    23a8d355f235:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    23a8d355f23a:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    23a8d355f23e:	c5 1a 58 d7                                     	vaddss xmm10,xmm12,xmm7
    23a8d355f242:	c4 c1 78 2e f2                                  	vucomiss xmm6,xmm10
    23a8d355f247:	73 a6                                           	jae    0x23a8d355f1ef
    23a8d355f249:	c4 41 52 5e d2                                  	vdivss xmm10,xmm5,xmm10
    23a8d355f24e:	c4 41 78 28 d2                                  	vmovaps xmm10,xmm10
    23a8d355f253:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    23a8d355f258:	c4 01 7a 6f 64 3c 20                            	vmovdqu xmm12,XMMWORD PTR [r12+r15*1+0x20]
    23a8d355f25f:	c4 62 79 18 ef                                  	vbroadcastss xmm13,xmm7
    23a8d355f264:	c4 41 18 59 e5                                  	vmulps xmm12,xmm12,xmm13
    23a8d355f269:	c4 41 7a 6f 6c 1c 20                            	vmovdqu xmm13,XMMWORD PTR [r12+rbx*1+0x20]
    23a8d355f270:	c4 42 79 18 f1                                  	vbroadcastss xmm14,xmm9
    23a8d355f275:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    23a8d355f27a:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    23a8d355f27f:	c4 c1 7a 6f 4c 04 20                            	vmovdqu xmm1,XMMWORD PTR [r12+rax*1+0x20]
    23a8d355f286:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    23a8d355f28a:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    23a8d355f28f:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    23a8d355f294:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    23a8d355f299:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f29c:	c4 41 7a 7f 9c 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm11
    23a8d355f2a6:	c4 01 7a 10 a4 3c 98 00 00 00                   	vmovss xmm12,DWORD PTR [r12+r15*1+0x98]
    23a8d355f2b0:	c4 41 7a 10 ac 1c 98 00 00 00                   	vmovss xmm13,DWORD PTR [r12+rbx*1+0x98]
    23a8d355f2ba:	c4 41 7a 10 b4 04 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+rax*1+0x98]
    23a8d355f2c4:	c4 41 7a 7f 9c 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm11
    23a8d355f2ce:	44 8b 9d 08 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xf8]
    23a8d355f2d5:	43 8b 8c 1c 34 01 00 00                         	mov    ecx,DWORD PTR [r12+r11*1+0x134]
    23a8d355f2dd:	44 8d 79 ff                                     	lea    r15d,[rcx-0x1]
    23a8d355f2e1:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d355f2e5:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    23a8d355f2e9:	c5 7b 11 85 60 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa0],xmm8
    23a8d355f2f1:	c5 7b 11 8d 48 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb8],xmm9
    23a8d355f2f9:	c5 fb 11 bd 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm7
    23a8d355f301:	c5 7b 11 95 68 ff ff ff                         	vmovsd QWORD PTR [rbp-0x98],xmm10
    23a8d355f309:	c5 7b 11 a5 40 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc0],xmm12
    23a8d355f311:	c5 7b 11 ad 50 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb0],xmm13
    23a8d355f319:	c5 7b 11 b5 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm14
    23a8d355f321:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d355f325:	0f 86 1d 07 00 00                               	jbe    0x23a8d355fa48
    23a8d355f32b:	47 8b bc 1c 30 01 00 00                         	mov    r15d,DWORD PTR [r12+r11*1+0x130]
    23a8d355f333:	43 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+r11*1+0x130],0x0
    23a8d355f33c:	0f 85 08 00 00 00                               	jne    0x23a8d355f34a
    23a8d355f342:	4d 8b c4                                        	mov    r8,r12
    23a8d355f345:	e9 9c 07 00 00                                  	jmp    0x23a8d355fae6
    23a8d355f34a:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    23a8d355f351:	4c 89 9d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r11
    23a8d355f358:	4c 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r15
    23a8d355f35f:	33 c9                                           	xor    ecx,ecx
    23a8d355f361:	e9 36 00 00 00                                  	jmp    0x23a8d355f39c
    23a8d355f366:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355f36f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d355f378:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d355f380:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    23a8d355f387:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f38a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d355f38e:	4c 8b 9d 28 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xd8]
    23a8d355f395:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    23a8d355f39c:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    23a8d355f3a3:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    23a8d355f3a9:	8b 85 98 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x168]
    23a8d355f3af:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    23a8d355f3b6:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d355f3bb:	0f 85 82 18 00 00                               	jne    0x23a8d3560c43
    23a8d355f3c1:	8b d1                                           	mov    edx,ecx
    23a8d355f3c3:	c1 e2 04                                        	shl    edx,0x4
    23a8d355f3c6:	42 8d 34 3a                                     	lea    esi,[rdx+r15*1]
    23a8d355f3ca:	4c 8b 15 fc b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb1fc]        # 0x23a8d355a5cd
    23a8d355f3d1:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355f3d6:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355f3db:	c4 41 7a 7f 1c 34                               	vmovdqu XMMWORD PTR [r12+rsi*1],xmm11
    23a8d355f3e1:	48 89 b5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rsi
    23a8d355f3e8:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    23a8d355f3ef:	41 c7 04 34 00 00 00 00                         	mov    DWORD PTR [r12+rsi*1],0x0
    23a8d355f3f7:	6b f9 4c                                        	imul   edi,ecx,0x4c
    23a8d355f3fa:	41 03 f9                                        	add    edi,r9d
    23a8d355f3fd:	45 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+rdi*1]
    23a8d355f401:	41 83 3c 3c 00                                  	cmp    DWORD PTR [r12+rdi*1],0x0
    23a8d355f406:	0f 8c cd 01 00 00                               	jl     0x23a8d355f5d9
    23a8d355f40c:	45 8b 7c 3c 04                                  	mov    r15d,DWORD PTR [r12+rdi*1+0x4]
    23a8d355f411:	45 85 ff                                        	test   r15d,r15d
    23a8d355f414:	0f 84 bf 01 00 00                               	je     0x23a8d355f5d9
    23a8d355f41a:	41 c7 04 34 01 00 00 00                         	mov    DWORD PTR [r12+rsi*1],0x1
    23a8d355f422:	43 8b b4 1c 3c 01 00 00                         	mov    esi,DWORD PTR [r12+r11*1+0x13c]
    23a8d355f42a:	d3 ee                                           	shr    esi,cl
    23a8d355f42c:	40 f6 c6 01                                     	test   sil,0x1
    23a8d355f430:	0f 84 a3 01 00 00                               	je     0x23a8d355f5d9
    23a8d355f436:	41 8b 4c 3c 38                                  	mov    ecx,DWORD PTR [r12+rdi*1+0x38]
    23a8d355f43b:	41 83 7c 3c 38 00                               	cmp    DWORD PTR [r12+rdi*1+0x38],0x0
    23a8d355f441:	0f 85 7f 01 00 00                               	jne    0x23a8d355f5c6
    23a8d355f447:	41 8d 0c 10                                     	lea    ecx,[r8+rdx*1]
    23a8d355f44b:	c4 41 7a 10 5c 0c 08                            	vmovss xmm11,DWORD PTR [r12+rcx*1+0x8]
    23a8d355f452:	c5 22 59 9d 38 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xc8]
    23a8d355f45a:	8d 34 10                                        	lea    esi,[rax+rdx*1]
    23a8d355f45d:	c4 c1 7a 10 4c 34 08                            	vmovss xmm1,DWORD PTR [r12+rsi*1+0x8]
    23a8d355f464:	c5 f2 59 8d 48 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xb8]
    23a8d355f46c:	03 d3                                           	add    edx,ebx
    23a8d355f46e:	c4 c1 7a 10 54 14 08                            	vmovss xmm2,DWORD PTR [r12+rdx*1+0x8]
    23a8d355f475:	c5 ea 59 95 60 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xa0]
    23a8d355f47d:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    23a8d355f481:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d355f485:	c5 a2 59 9d 68 ff ff ff                         	vmulss xmm3,xmm11,DWORD PTR [rbp-0x98]
    23a8d355f48d:	c4 41 7a 10 5c 0c 04                            	vmovss xmm11,DWORD PTR [r12+rcx*1+0x4]
    23a8d355f494:	c5 22 59 9d 38 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xc8]
    23a8d355f49c:	c4 c1 7a 10 4c 34 04                            	vmovss xmm1,DWORD PTR [r12+rsi*1+0x4]
    23a8d355f4a3:	c5 f2 59 8d 48 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xb8]
    23a8d355f4ab:	c4 c1 7a 10 54 14 04                            	vmovss xmm2,DWORD PTR [r12+rdx*1+0x4]
    23a8d355f4b2:	c5 ea 59 95 60 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xa0]
    23a8d355f4ba:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    23a8d355f4be:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d355f4c2:	c5 a2 59 95 68 ff ff ff                         	vmulss xmm2,xmm11,DWORD PTR [rbp-0x98]
    23a8d355f4ca:	c4 41 7a 10 1c 0c                               	vmovss xmm11,DWORD PTR [r12+rcx*1]
    23a8d355f4d0:	c5 22 59 9d 38 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xc8]
    23a8d355f4d8:	c4 c1 7a 10 0c 34                               	vmovss xmm1,DWORD PTR [r12+rsi*1]
    23a8d355f4de:	c5 f2 59 8d 48 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xb8]
    23a8d355f4e6:	c4 c1 7a 10 24 14                               	vmovss xmm4,DWORD PTR [r12+rdx*1]
    23a8d355f4ec:	c5 da 59 a5 60 ff ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0xa0]
    23a8d355f4f4:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    23a8d355f4f8:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d355f4fc:	c5 a2 59 8d 68 ff ff ff                         	vmulss xmm1,xmm11,DWORD PTR [rbp-0x98]
    23a8d355f504:	41 8b 4c 3c 10                                  	mov    ecx,DWORD PTR [r12+rdi*1+0x10]
    23a8d355f509:	41 8b 54 3c 0c                                  	mov    edx,DWORD PTR [r12+rdi*1+0xc]
    23a8d355f50e:	41 8b 74 3c 08                                  	mov    esi,DWORD PTR [r12+rdi*1+0x8]
    23a8d355f513:	41 8b 34 3c                                     	mov    esi,DWORD PTR [r12+rdi*1]
    23a8d355f517:	83 fe 02                                        	cmp    esi,0x2
    23a8d355f51a:	0f 8c 14 00 00 00                               	jl     0x23a8d355f534
    23a8d355f520:	0f 84 44 00 00 00                               	je     0x23a8d355f56a
    23a8d355f526:	83 fe 03                                        	cmp    esi,0x3
    23a8d355f529:	0f 84 1c 00 00 00                               	je     0x23a8d355f54b
    23a8d355f52f:	e9 5c 00 00 00                                  	jmp    0x23a8d355f590
    23a8d355f534:	83 fe 00                                        	cmp    esi,0x0
    23a8d355f537:	0f 84 72 00 00 00                               	je     0x23a8d355f5af
    23a8d355f53d:	83 fe 01                                        	cmp    esi,0x1
    23a8d355f540:	0f 84 4a 00 00 00                               	je     0x23a8d355f590
    23a8d355f546:	e9 45 00 00 00                                  	jmp    0x23a8d355f590
    23a8d355f54b:	41 8b 7c 3c 14                                  	mov    edi,DWORD PTR [r12+rdi*1+0x14]
    23a8d355f550:	44 8b 8d 18 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe8]
    23a8d355f557:	8b df                                           	mov    ebx,edi
    23a8d355f559:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f55d:	41 8b c7                                        	mov    eax,r15d
    23a8d355f560:	e8 cb cc ee ff                                  	call   0x23a8d344c230
    23a8d355f565:	e9 6f 00 00 00                                  	jmp    0x23a8d355f5d9
    23a8d355f56a:	41 8b 74 3c 14                                  	mov    esi,DWORD PTR [r12+rdi*1+0x14]
    23a8d355f56f:	41 8b 7c 3c 18                                  	mov    edi,DWORD PTR [r12+rdi*1+0x18]
    23a8d355f574:	ff b5 18 ff ff ff                               	push   QWORD PTR [rbp-0xe8]
    23a8d355f57a:	8b de                                           	mov    ebx,esi
    23a8d355f57c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f580:	41 8b c7                                        	mov    eax,r15d
    23a8d355f583:	44 8b cf                                        	mov    r9d,edi
    23a8d355f586:	e8 9d cc ee ff                                  	call   0x23a8d344c228
    23a8d355f58b:	e9 49 00 00 00                                  	jmp    0x23a8d355f5d9
    23a8d355f590:	41 8b 7c 3c 14                                  	mov    edi,DWORD PTR [r12+rdi*1+0x14]
    23a8d355f595:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f599:	41 8b c7                                        	mov    eax,r15d
    23a8d355f59c:	44 8b 8d 18 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe8]
    23a8d355f5a3:	8b df                                           	mov    ebx,edi
    23a8d355f5a5:	e8 8e cc ee ff                                  	call   0x23a8d344c238
    23a8d355f5aa:	e9 2a 00 00 00                                  	jmp    0x23a8d355f5d9
    23a8d355f5af:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f5b3:	41 8b c7                                        	mov    eax,r15d
    23a8d355f5b6:	8b 9d 18 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xe8]
    23a8d355f5bc:	e8 5f cc ee ff                                  	call   0x23a8d344c220
    23a8d355f5c1:	e9 13 00 00 00                                  	jmp    0x23a8d355f5d9
    23a8d355f5c6:	c4 c1 7a 6f 44 3c 3c                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x3c]
    23a8d355f5cd:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    23a8d355f5d3:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    23a8d355f5d9:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    23a8d355f5df:	83 c1 01                                        	add    ecx,0x1
    23a8d355f5e2:	83 f9 04                                        	cmp    ecx,0x4
    23a8d355f5e5:	0f 85 95 fd ff ff                               	jne    0x23a8d355f380
    23a8d355f5eb:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d355f5ef:	4c 8b 85 28 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd8]
    23a8d355f5f6:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    23a8d355f5fe:	45 85 c0                                        	test   r8d,r8d
    23a8d355f601:	0f 85 c2 01 00 00                               	jne    0x23a8d355f7c9
    23a8d355f607:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    23a8d355f60b:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    23a8d355f613:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    23a8d355f61c:	0f 84 53 00 00 00                               	je     0x23a8d355f675
    23a8d355f622:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d355f629:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d355f630:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d355f637:	41 53                                           	push   r11
    23a8d355f639:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f63d:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    23a8d355f643:	33 d2                                           	xor    edx,edx
    23a8d355f645:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    23a8d355f64c:	e8 ef cb ee ff                                  	call   0x23a8d344c240
    23a8d355f651:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f654:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355f658:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    23a8d355f662:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d355f66c:	4d 8b d0                                        	mov    r10,r8
    23a8d355f66f:	44 8b c7                                        	mov    r8d,edi
    23a8d355f672:	49 8b fa                                        	mov    rdi,r10
    23a8d355f675:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    23a8d355f67d:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    23a8d355f686:	0f 84 56 00 00 00                               	je     0x23a8d355f6e2
    23a8d355f68c:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d355f693:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d355f69a:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d355f6a1:	41 53                                           	push   r11
    23a8d355f6a3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f6a7:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    23a8d355f6ad:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d355f6b2:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    23a8d355f6b9:	e8 82 cb ee ff                                  	call   0x23a8d344c240
    23a8d355f6be:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f6c1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355f6c5:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    23a8d355f6cf:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d355f6d9:	4d 8b d0                                        	mov    r10,r8
    23a8d355f6dc:	44 8b c7                                        	mov    r8d,edi
    23a8d355f6df:	49 8b fa                                        	mov    rdi,r10
    23a8d355f6e2:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    23a8d355f6ea:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    23a8d355f6f3:	0f 84 56 00 00 00                               	je     0x23a8d355f74f
    23a8d355f6f9:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d355f700:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d355f707:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d355f70e:	41 53                                           	push   r11
    23a8d355f710:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f714:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    23a8d355f71a:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d355f71f:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    23a8d355f726:	e8 15 cb ee ff                                  	call   0x23a8d344c240
    23a8d355f72b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f72e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355f732:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    23a8d355f73c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d355f746:	4d 8b d0                                        	mov    r10,r8
    23a8d355f749:	44 8b c7                                        	mov    r8d,edi
    23a8d355f74c:	49 8b fa                                        	mov    rdi,r10
    23a8d355f74f:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    23a8d355f757:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    23a8d355f760:	0f 85 0e 00 00 00                               	jne    0x23a8d355f774
    23a8d355f766:	4c 8b d7                                        	mov    r10,rdi
    23a8d355f769:	41 8b f8                                        	mov    edi,r8d
    23a8d355f76c:	4d 8b c2                                        	mov    r8,r10
    23a8d355f76f:	e9 72 03 00 00                                  	jmp    0x23a8d355fae6
    23a8d355f774:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d355f77b:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d355f782:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d355f789:	41 53                                           	push   r11
    23a8d355f78b:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d355f790:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355f794:	8b 85 e8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x118]
    23a8d355f79a:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    23a8d355f7a1:	e8 9a ca ee ff                                  	call   0x23a8d344c240
    23a8d355f7a6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355f7a9:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    23a8d355f7ad:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    23a8d355f7b7:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    23a8d355f7c1:	4d 8b c3                                        	mov    r8,r11
    23a8d355f7c4:	e9 1d 03 00 00                                  	jmp    0x23a8d355fae6
    23a8d355f7c9:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d355f7cd:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    23a8d355f7d7:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d355f7dd:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d355f7e2:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355f7e6:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    23a8d355f7f0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d355f7f4:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d355f7f8:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    23a8d355f802:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d355f806:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    23a8d355f810:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d355f814:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    23a8d355f818:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    23a8d355f822:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d355f826:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    23a8d355f830:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    23a8d355f834:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    23a8d355f838:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    23a8d355f83c:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355f840:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d355f846:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d355f84b:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    23a8d355f84f:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d355f853:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d355f858:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d355f85d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d355f861:	0f 87 09 00 00 00                               	ja     0x23a8d355f870
    23a8d355f867:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d355f86b:	e9 04 00 00 00                                  	jmp    0x23a8d355f874
    23a8d355f870:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d355f874:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d355f878:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d355f87c:	0f 87 09 00 00 00                               	ja     0x23a8d355f88b
    23a8d355f882:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d355f886:	e9 04 00 00 00                                  	jmp    0x23a8d355f88f
    23a8d355f88b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d355f88f:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d355f894:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d355f898:	0f 84 a0 00 00 00                               	je     0x23a8d355f93e
    23a8d355f89e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d355f8a2:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    23a8d355f8ac:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355f8b0:	0f 87 09 00 00 00                               	ja     0x23a8d355f8bf
    23a8d355f8b6:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d355f8ba:	e9 04 00 00 00                                  	jmp    0x23a8d355f8c3
    23a8d355f8bf:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d355f8c3:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355f8c7:	0f 87 0a 00 00 00                               	ja     0x23a8d355f8d7
    23a8d355f8cd:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d355f8d2:	e9 04 00 00 00                                  	jmp    0x23a8d355f8db
    23a8d355f8d7:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355f8db:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d355f8df:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355f8e4:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d355f8e9:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d355f8ed:	4c 8b 15 d9 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd9]        # 0x23a8d355a5cd
    23a8d355f8f4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d355f8f9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d355f8fe:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d355f902:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d355f90c:	41 83 f8 03                                     	cmp    r8d,0x3
    23a8d355f910:	0f 85 04 00 00 00                               	jne    0x23a8d355f91a
    23a8d355f916:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    23a8d355f91a:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    23a8d355f91f:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d355f923:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d355f927:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    23a8d355f931:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d355f936:	4d 8b c4                                        	mov    r8,r12
    23a8d355f939:	e9 cd 00 00 00                                  	jmp    0x23a8d355fa0b
    23a8d355f93e:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    23a8d355f948:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355f94c:	0f 87 09 00 00 00                               	ja     0x23a8d355f95b
    23a8d355f952:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d355f956:	e9 04 00 00 00                                  	jmp    0x23a8d355f95f
    23a8d355f95b:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d355f95f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355f963:	0f 87 0a 00 00 00                               	ja     0x23a8d355f973
    23a8d355f969:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d355f96e:	e9 04 00 00 00                                  	jmp    0x23a8d355f977
    23a8d355f973:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355f977:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d355f981:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    23a8d355f987:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    23a8d355f98c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d355f990:	0f 87 09 00 00 00                               	ja     0x23a8d355f99f
    23a8d355f996:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d355f99a:	e9 04 00 00 00                                  	jmp    0x23a8d355f9a3
    23a8d355f99f:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    23a8d355f9a3:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d355f9a7:	0f 87 0a 00 00 00                               	ja     0x23a8d355f9b7
    23a8d355f9ad:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d355f9b2:	e9 04 00 00 00                                  	jmp    0x23a8d355f9bb
    23a8d355f9b7:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d355f9bb:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    23a8d355f9c5:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355f9ca:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d355f9ce:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    23a8d355f9d8:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    23a8d355f9dd:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d355f9e2:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d355f9e6:	4c 8b 15 e0 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffabe0]        # 0x23a8d355a5cd
    23a8d355f9ed:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d355f9f2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d355f9f7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d355f9fb:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d355f9ff:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d355fa03:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d355fa07:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    23a8d355fa0b:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d355fa10:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d355fa14:	4c 8b 15 b2 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffabb2]        # 0x23a8d355a5cd
    23a8d355fa1b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355fa20:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d355fa25:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    23a8d355fa29:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    23a8d355fa33:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    23a8d355fa3d:	4c 8b c7                                        	mov    r8,rdi
    23a8d355fa40:	41 8b fb                                        	mov    edi,r11d
    23a8d355fa43:	e9 9e 00 00 00                                  	jmp    0x23a8d355fae6
    23a8d355fa48:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    23a8d355fa4f:	c4 01 7a 10 5c 1c 50                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x50]
    23a8d355fa56:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    23a8d355fa5a:	4c 8b fb                                        	mov    r15,rbx
    23a8d355fa5d:	c4 81 7a 10 4c 3c 50                            	vmovss xmm1,DWORD PTR [r12+r15*1+0x50]
    23a8d355fa64:	c4 c1 72 59 c9                                  	vmulss xmm1,xmm1,xmm9
    23a8d355fa69:	c4 c1 3a 59 54 04 50                            	vmulss xmm2,xmm8,DWORD PTR [r12+rax*1+0x50]
    23a8d355fa70:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    23a8d355fa74:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d355fa78:	c4 c1 2a 59 cb                                  	vmulss xmm1,xmm10,xmm11
    23a8d355fa7d:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    23a8d355fa84:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    23a8d355fa88:	c4 81 7a 10 54 3c 54                            	vmovss xmm2,DWORD PTR [r12+r15*1+0x54]
    23a8d355fa8f:	c4 c1 6a 59 d1                                  	vmulss xmm2,xmm2,xmm9
    23a8d355fa94:	c4 c1 3a 59 5c 04 54                            	vmulss xmm3,xmm8,DWORD PTR [r12+rax*1+0x54]
    23a8d355fa9b:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    23a8d355fa9f:	c5 22 58 da                                     	vaddss xmm11,xmm11,xmm2
    23a8d355faa3:	c4 c1 2a 59 d3                                  	vmulss xmm2,xmm10,xmm11
    23a8d355faa8:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    23a8d355faae:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    23a8d355fab5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355fab9:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    23a8d355fabf:	8b d1                                           	mov    edx,ecx
    23a8d355fac1:	8b cb                                           	mov    ecx,ebx
    23a8d355fac3:	41 8b d8                                        	mov    ebx,r8d
    23a8d355fac6:	e8 65 ca ee ff                                  	call   0x23a8d344c530
    23a8d355facb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355face:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355fad2:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    23a8d355fadc:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d355fae6:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d355faea:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    23a8d355faf2:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    23a8d355fafb:	0f 84 c4 01 00 00                               	je     0x23a8d355fcc5
    23a8d355fb01:	c5 fb 10 85 40 ff ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0xc0]
    23a8d355fb09:	c5 fa 59 85 38 ff ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0xc8]
    23a8d355fb11:	c5 fb 10 ad 50 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xb0]
    23a8d355fb19:	c5 d2 59 ad 48 ff ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0xb8]
    23a8d355fb21:	c5 fb 10 b5 60 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xa0]
    23a8d355fb29:	c5 ca 59 b5 58 ff ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0xa8]
    23a8d355fb31:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d355fb35:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d355fb39:	c5 fb 10 ad 68 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x98]
    23a8d355fb41:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    23a8d355fb45:	4c 8b 15 65 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9465]        # 0x23a8d3558fb1
    23a8d355fb4c:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d355fb51:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d355fb55:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    23a8d355fb59:	0f 87 04 00 00 00                               	ja     0x23a8d355fb63
    23a8d355fb5f:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d355fb63:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    23a8d355fb6b:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    23a8d355fb72:	0f 85 28 00 00 00                               	jne    0x23a8d355fba0
    23a8d355fb78:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    23a8d355fb82:	4c 8b 15 28 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9428]        # 0x23a8d3558fb1
    23a8d355fb89:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d355fb8e:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    23a8d355fb92:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355fb96:	e8 1d ea ee ff                                  	call   0x23a8d344e5b8
    23a8d355fb9b:	e9 89 00 00 00                                  	jmp    0x23a8d355fc29
    23a8d355fba0:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d355fba4:	0f 84 5c 00 00 00                               	je     0x23a8d355fc06
    23a8d355fbaa:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    23a8d355fbb4:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    23a8d355fbbe:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    23a8d355fbc2:	7a 06                                           	jp     0x23a8d355fbca
    23a8d355fbc4:	0f 84 29 00 00 00                               	je     0x23a8d355fbf3
    23a8d355fbca:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    23a8d355fbce:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    23a8d355fbd2:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d355fbd6:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    23a8d355fbda:	0f 86 49 00 00 00                               	jbe    0x23a8d355fc29
    23a8d355fbe0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355fbe4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d355fbe9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d355fbee:	e9 5b 00 00 00                                  	jmp    0x23a8d355fc4e
    23a8d355fbf3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355fbf7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d355fbfc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d355fc01:	e9 44 00 00 00                                  	jmp    0x23a8d355fc4a
    23a8d355fc06:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    23a8d355fc10:	4c 8b 15 9a 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff939a]        # 0x23a8d3558fb1
    23a8d355fc17:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d355fc1c:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    23a8d355fc20:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d355fc24:	e8 8f e9 ee ff                                  	call   0x23a8d344e5b8
    23a8d355fc29:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d355fc2d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d355fc32:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d355fc37:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d355fc3b:	0f 87 09 00 00 00                               	ja     0x23a8d355fc4a
    23a8d355fc41:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    23a8d355fc45:	e9 04 00 00 00                                  	jmp    0x23a8d355fc4e
    23a8d355fc4a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d355fc4e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d355fc51:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d355fc55:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    23a8d355fc5f:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    23a8d355fc63:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d355fc67:	c4 01 42 59 84 18 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x100]
    23a8d355fc71:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d355fc76:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d355fc80:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    23a8d355fc8a:	c4 01 42 59 84 18 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x104]
    23a8d355fc94:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d355fc99:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    23a8d355fca3:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    23a8d355fcad:	c4 81 42 59 b4 18 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+r11*1+0x108]
    23a8d355fcb7:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d355fcbb:	c4 c1 7a 11 ac 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm5
    23a8d355fcc5:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    23a8d355fccf:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    23a8d355fcd9:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d355fcdd:	41 c1 e4 04                                     	shl    r12d,0x4
    23a8d355fce1:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d355fce8:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    23a8d355fcec:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d355fcf0:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    23a8d355fcf5:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    23a8d355fcf9:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    23a8d355fcfc:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    23a8d355fd00:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d355fd03:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    23a8d355fd07:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d355fd0e:	0f 85 8b 0a 00 00                               	jne    0x23a8d356079f
    23a8d355fd14:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    23a8d355fd19:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    23a8d355fd1f:	0f 85 4a 0a 00 00                               	jne    0x23a8d356076f
    23a8d355fd25:	4c 8b 15 a1 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8a1]        # 0x23a8d355a5cd
    23a8d355fd2c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d355fd31:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d355fd35:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d355fd39:	c4 c1 7a 6f b4 38 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x280]
    23a8d355fd43:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    23a8d355fd47:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    23a8d355fd4c:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    23a8d355fd50:	4c 8b 15 76 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa876]        # 0x23a8d355a5cd
    23a8d355fd57:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355fd5c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d355fd60:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    23a8d355fd65:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    23a8d355fd69:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d355fd6d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355fd72:	4c 8b 15 b7 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacb7]        # 0x23a8d355aa30
    23a8d355fd79:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355fd7e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d355fd82:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d355fd86:	4c 8b 15 ba ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacba]        # 0x23a8d355aa47
    23a8d355fd8d:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d355fd92:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d355fd96:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d355fd9a:	4c 8b 15 bd ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacbd]        # 0x23a8d355aa5e
    23a8d355fda1:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d355fda6:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    23a8d355fdab:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d355fdb1:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    23a8d355fdb5:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    23a8d355fdba:	4c 8b 15 c0 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc0]        # 0x23a8d355aa81
    23a8d355fdc1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d355fdc6:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d355fdca:	4c 8b 15 84 84 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8484]        # 0x23a8d3558255
    23a8d355fdd1:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d355fdd6:	4c 8b 15 c3 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc3]        # 0x23a8d355aaa0
    23a8d355fddd:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d355fde2:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d355fde7:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    23a8d355fded:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    23a8d355fdf1:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    23a8d355fdf5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355fdfa:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    23a8d355fdff:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    23a8d355fe03:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d355fe08:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    23a8d355fe0c:	0f af c8                                        	imul   ecx,eax
    23a8d355fe0f:	03 ca                                           	add    ecx,edx
    23a8d355fe11:	8d 34 09                                        	lea    esi,[rcx+rcx*1]
    23a8d355fe14:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d355fe18:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    23a8d355fe1d:	8d 14 ca                                        	lea    edx,[rdx+rcx*8]
    23a8d355fe20:	83 fb 03                                        	cmp    ebx,0x3
    23a8d355fe23:	0f 84 7c 00 00 00                               	je     0x23a8d355fea5
    23a8d355fe29:	8b cb                                           	mov    ecx,ebx
    23a8d355fe2b:	83 e1 01                                        	and    ecx,0x1
    23a8d355fe2e:	f7 d9                                           	neg    ecx
    23a8d355fe30:	c4 e3 51 22 e9 00                               	vpinsrd xmm5,xmm5,ecx,0x0
    23a8d355fe36:	8b cb                                           	mov    ecx,ebx
    23a8d355fe38:	c1 e1 1e                                        	shl    ecx,0x1e
    23a8d355fe3b:	c1 f9 1f                                        	sar    ecx,0x1f
    23a8d355fe3e:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    23a8d355fe44:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    23a8d355fe49:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    23a8d355fe4f:	0f 84 38 00 00 00                               	je     0x23a8d355fe8d
    23a8d355fe55:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    23a8d355fe5a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d355fe60:	0f 84 27 00 00 00                               	je     0x23a8d355fe8d
    23a8d355fe66:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    23a8d355fe6b:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    23a8d355fe6e:	c4 81 7b 10 34 08                               	vmovsd xmm6,QWORD PTR [r8+r9*1]
    23a8d355fe74:	c4 c1 7b 10 3c 08                               	vmovsd xmm7,QWORD PTR [r8+rcx*1]
    23a8d355fe7a:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    23a8d355fe7e:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    23a8d355fe82:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d355fe87:	c4 c1 78 13 34 08                               	vmovlps QWORD PTR [r8+rcx*1],xmm6
    23a8d355fe8d:	c4 c1 7b 10 34 10                               	vmovsd xmm6,QWORD PTR [r8+rdx*1]
    23a8d355fe93:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    23a8d355fe97:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d355fe9b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d355fea0:	e9 32 00 00 00                                  	jmp    0x23a8d355fed7
    23a8d355fea5:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    23a8d355feaa:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    23a8d355feb0:	0f 84 21 00 00 00                               	je     0x23a8d355fed7
    23a8d355feb6:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    23a8d355febb:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d355fec1:	0f 84 10 00 00 00                               	je     0x23a8d355fed7
    23a8d355fec7:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    23a8d355fecc:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    23a8d355fecf:	4b 8b 34 08                                     	mov    rsi,QWORD PTR [r8+r9*1]
    23a8d355fed3:	49 89 34 08                                     	mov    QWORD PTR [r8+rcx*1],rsi
    23a8d355fed7:	c4 c1 78 13 04 10                               	vmovlps QWORD PTR [r8+rdx*1],xmm0
    23a8d355fedd:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    23a8d355fee2:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    23a8d355fee8:	0f 84 dc 08 00 00                               	je     0x23a8d35607ca
    23a8d355feee:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    23a8d355fef3:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d355fef9:	0f 84 cb 08 00 00                               	je     0x23a8d35607ca
    23a8d355feff:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    23a8d355ff04:	43 83 7c 18 14 02                               	cmp    DWORD PTR [r8+r11*1+0x14],0x2
    23a8d355ff0a:	0f 85 ba 08 00 00                               	jne    0x23a8d35607ca
    23a8d355ff10:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    23a8d355ff15:	85 d2                                           	test   edx,edx
    23a8d355ff17:	0f 84 ad 08 00 00                               	je     0x23a8d35607ca
    23a8d355ff1d:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    23a8d355ff20:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    23a8d355ff24:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    23a8d355ff29:	0f 84 9b 08 00 00                               	je     0x23a8d35607ca
    23a8d355ff2f:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    23a8d355ff32:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    23a8d355ff36:	83 ea 3c                                        	sub    edx,0x3c
    23a8d355ff39:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    23a8d355ff3d:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    23a8d355ff40:	c1 ee 02                                        	shr    esi,0x2
    23a8d355ff43:	0f af f2                                        	imul   esi,edx
    23a8d355ff46:	c1 e6 04                                        	shl    esi,0x4
    23a8d355ff49:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    23a8d355ff4c:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    23a8d355ff53:	8b f1                                           	mov    esi,ecx
    23a8d355ff55:	83 e6 f0                                        	and    esi,0xfffffff0
    23a8d355ff58:	03 d6                                           	add    edx,esi
    23a8d355ff5a:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    23a8d355ff5f:	81 ee 01 02 00 00                               	sub    esi,0x201
    23a8d355ff65:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    23a8d355ff69:	33 c0                                           	xor    eax,eax
    23a8d355ff6b:	85 f6                                           	test   esi,esi
    23a8d355ff6d:	0f 94 c0                                        	sete   al
    23a8d355ff70:	83 fe 02                                        	cmp    esi,0x2
    23a8d355ff73:	40 0f 94 c6                                     	sete   sil
    23a8d355ff77:	40 0f b6 f6                                     	movzx  esi,sil
    23a8d355ff7b:	0b f0                                           	or     esi,eax
    23a8d355ff7d:	0f 85 0d 00 00 00                               	jne    0x23a8d355ff90
    23a8d355ff83:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    23a8d355ff8b:	e9 3a 08 00 00                                  	jmp    0x23a8d35607ca
    23a8d355ff90:	83 e3 03                                        	and    ebx,0x3
    23a8d355ff93:	83 e1 0c                                        	and    ecx,0xc
    23a8d355ff96:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    23a8d355ff99:	83 e0 03                                        	and    eax,0x3
    23a8d355ff9c:	0b c1                                           	or     eax,ecx
    23a8d355ff9e:	d1 e0                                           	shl    eax,1
    23a8d355ffa0:	83 e0 3f                                        	and    eax,0x3f
    23a8d355ffa3:	8b c8                                           	mov    ecx,eax
    23a8d355ffa5:	48 d3 e3                                        	shl    rbx,cl
    23a8d355ffa8:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    23a8d355ffac:	b9 ff ff ff ff                                  	mov    ecx,0xffffffff
    23a8d355ffb1:	48 3b c1                                        	cmp    rax,rcx
    23a8d355ffb4:	0f 84 ba 03 00 00                               	je     0x23a8d3560374
    23a8d355ffba:	48 0b c3                                        	or     rax,rbx
    23a8d355ffbd:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    23a8d355ffc1:	48 3b c8                                        	cmp    rcx,rax
    23a8d355ffc4:	0f 85 00 08 00 00                               	jne    0x23a8d35607ca
    23a8d355ffca:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    23a8d355ffcf:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    23a8d355ffd2:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    23a8d355ffd8:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    23a8d355ffdc:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    23a8d355ffdf:	83 ce 03                                        	or     esi,0x3
    23a8d355ffe2:	0f af f1                                        	imul   esi,ecx
    23a8d355ffe5:	03 f3                                           	add    esi,ebx
    23a8d355ffe7:	8d 34 f0                                        	lea    esi,[rax+rsi*8]
    23a8d355ffea:	c4 c1 7a 6f 44 30 10                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x10]
    23a8d355fff1:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d355fff6:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    23a8d355fffc:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d3560001:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d3560005:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    23a8d3560008:	81 e6 fc ff ff 1f                               	and    esi,0x1ffffffc
    23a8d356000e:	44 8b ce                                        	mov    r9d,esi
    23a8d3560011:	41 83 c9 02                                     	or     r9d,0x2
    23a8d3560015:	44 0f af c9                                     	imul   r9d,ecx
    23a8d3560019:	44 03 cb                                        	add    r9d,ebx
    23a8d356001c:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    23a8d3560020:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    23a8d3560027:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d356002c:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d3560031:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    23a8d3560037:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d356003d:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d3560042:	44 8b ce                                        	mov    r9d,esi
    23a8d3560045:	41 83 c9 01                                     	or     r9d,0x1
    23a8d3560049:	44 0f af c9                                     	imul   r9d,ecx
    23a8d356004d:	44 03 cb                                        	add    r9d,ebx
    23a8d3560050:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    23a8d3560054:	c4 01 7a 6f 4c 08 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x10]
    23a8d356005b:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d3560061:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d3560066:	c4 01 7a 6f 14 08                               	vmovdqu xmm10,XMMWORD PTR [r8+r9*1]
    23a8d356006c:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d3560072:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d3560077:	0f af ce                                        	imul   ecx,esi
    23a8d356007a:	03 d9                                           	add    ebx,ecx
    23a8d356007c:	8d 04 d8                                        	lea    eax,[rax+rbx*8]
    23a8d356007f:	c4 41 7a 6f 5c 00 10                            	vmovdqu xmm11,XMMWORD PTR [r8+rax*1+0x10]
    23a8d3560086:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356008c:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d3560091:	c4 41 7a 6f 24 00                               	vmovdqu xmm12,XMMWORD PTR [r8+rax*1]
    23a8d3560097:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356009d:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d35600a2:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d35600a7:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d35600ac:	c5 f8 50 c5                                     	vmovmskps eax,xmm5
    23a8d35600b0:	83 f8 0f                                        	cmp    eax,0xf
    23a8d35600b3:	0f 84 0e 00 00 00                               	je     0x23a8d35600c7
    23a8d35600b9:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    23a8d35600c2:	e9 03 07 00 00                                  	jmp    0x23a8d35607ca
    23a8d35600c7:	4c 8b 15 dc ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacdc]        # 0x23a8d355adaa
    23a8d35600ce:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d35600d3:	4c 8b 15 df ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacdf]        # 0x23a8d355adb9
    23a8d35600da:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d35600e0:	4c 8b 15 e2 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface2]        # 0x23a8d355adc9
    23a8d35600e7:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d35600ec:	4c 8b 15 e5 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface5]        # 0x23a8d355add8
    23a8d35600f3:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d35600f9:	4c 8b 15 e8 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface8]        # 0x23a8d355ade8
    23a8d3560100:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d3560105:	4c 8b 15 eb ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaceb]        # 0x23a8d355adf7
    23a8d356010c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d3560112:	4c 8b 15 ee ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacee]        # 0x23a8d355ae07
    23a8d3560119:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d356011e:	4c 8b 15 f1 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacf1]        # 0x23a8d355ae16
    23a8d3560125:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d356012b:	4c 8b 15 f4 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacf4]        # 0x23a8d355ae26
    23a8d3560132:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d3560137:	4c 8b 15 f7 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacf7]        # 0x23a8d355ae35
    23a8d356013e:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d3560144:	4c 8b 15 fa ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacfa]        # 0x23a8d355ae45
    23a8d356014b:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3560150:	4c 8b 15 fd ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacfd]        # 0x23a8d355ae54
    23a8d3560157:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d356015d:	4c 8b 15 00 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad00]        # 0x23a8d355ae64
    23a8d3560164:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d3560169:	4c 8b 15 03 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad03]        # 0x23a8d355ae73
    23a8d3560170:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d3560176:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d356017b:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d356017f:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d3560184:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d3560189:	4c 8b 15 06 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad06]        # 0x23a8d355ae96
    23a8d3560190:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d3560196:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d356019b:	4c 8b 15 09 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad09]        # 0x23a8d355aeab
    23a8d35601a2:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d35601a7:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d35601ab:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d35601b0:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d35601b6:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d35601bb:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d35601bf:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d35601c3:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d35601c7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35601cc:	4c 8b 15 d8 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd8]        # 0x23a8d355aeab
    23a8d35601d3:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d35601d8:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d35601dd:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d35601e2:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d35601e6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35601eb:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d35601f1:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d35601f5:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d35601fa:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35601ff:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d3560203:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d3560208:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356020d:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d3560213:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d3560217:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d356021c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560221:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d3560225:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d356022a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356022f:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d3560235:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d3560239:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d356023e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560243:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d3560247:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d356024c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560251:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d3560257:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356025b:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d3560260:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560265:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d3560269:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d356026e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560273:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d3560278:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d356027c:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d3560281:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560286:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d356028a:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d356028f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560294:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d3560299:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d356029e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d35602a2:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d35602a6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35602ab:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d35602af:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d35602b3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35602b8:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d35602bd:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d35602c2:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d35602c7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d35602cb:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d35602cf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35602d4:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d35602de:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d35602e2:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d35602e6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35602eb:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    23a8d35602f5:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d35602f9:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d35602fd:	33 c0                                           	xor    eax,eax
    23a8d35602ff:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d3560303:	0f 97 c0                                        	seta   al
    23a8d3560306:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    23a8d356030c:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    23a8d3560313:	0b cb                                           	or     ecx,ebx
    23a8d3560315:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    23a8d356031b:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d3560320:	be 02 00 00 00                                  	mov    esi,0x2
    23a8d3560325:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3560329:	0f 47 c6                                        	cmova  eax,esi
    23a8d356032c:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    23a8d3560333:	0b cb                                           	or     ecx,ebx
    23a8d3560335:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    23a8d356033b:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d3560340:	b9 03 00 00 00                                  	mov    ecx,0x3
    23a8d3560345:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3560349:	0f 47 c1                                        	cmova  eax,ecx
    23a8d356034c:	c1 e0 02                                        	shl    eax,0x2
    23a8d356034f:	0b d8                                           	or     ebx,eax
    23a8d3560351:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    23a8d3560357:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    23a8d356035e:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    23a8d3560364:	0b c3                                           	or     eax,ebx
    23a8d3560366:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    23a8d356036a:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    23a8d356036f:	e9 56 04 00 00                                  	jmp    0x23a8d35607ca
    23a8d3560374:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    23a8d3560379:	8b c8                                           	mov    ecx,eax
    23a8d356037b:	83 e1 3f                                        	and    ecx,0x3f
    23a8d356037e:	48 d3 eb                                        	shr    rbx,cl
    23a8d3560381:	be 03 00 00 00                                  	mov    esi,0x3
    23a8d3560386:	f6 c3 01                                        	test   bl,0x1
    23a8d3560389:	0f 84 3b 04 00 00                               	je     0x23a8d35607ca
    23a8d356038f:	83 e0 01                                        	and    eax,0x1
    23a8d3560392:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    23a8d3560396:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    23a8d356039c:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    23a8d35603a3:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d35603a7:	0f 86 1d 04 00 00                               	jbe    0x23a8d35607ca
    23a8d35603ad:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    23a8d35603b2:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    23a8d35603b5:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    23a8d35603bb:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    23a8d35603bf:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    23a8d35603c3:	41 83 c9 03                                     	or     r9d,0x3
    23a8d35603c7:	44 0f af c9                                     	imul   r9d,ecx
    23a8d35603cb:	44 03 cb                                        	add    r9d,ebx
    23a8d35603ce:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    23a8d35603d2:	c4 81 7a 6f 44 08 10                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x10]
    23a8d35603d9:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d35603de:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    23a8d35603e4:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d35603e9:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d35603ed:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    23a8d35603f1:	41 81 e1 fc ff ff 1f                            	and    r9d,0x1ffffffc
    23a8d35603f8:	45 8b d9                                        	mov    r11d,r9d
    23a8d35603fb:	41 83 cb 02                                     	or     r11d,0x2
    23a8d35603ff:	44 0f af d9                                     	imul   r11d,ecx
    23a8d3560403:	44 03 db                                        	add    r11d,ebx
    23a8d3560406:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    23a8d356040a:	c4 81 7a 6f 7c 18 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x10]
    23a8d3560411:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d3560416:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d356041b:	c4 01 7a 6f 04 18                               	vmovdqu xmm8,XMMWORD PTR [r8+r11*1]
    23a8d3560421:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d3560427:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d356042c:	45 8b d9                                        	mov    r11d,r9d
    23a8d356042f:	41 83 cb 01                                     	or     r11d,0x1
    23a8d3560433:	44 0f af d9                                     	imul   r11d,ecx
    23a8d3560437:	44 03 db                                        	add    r11d,ebx
    23a8d356043a:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    23a8d356043e:	c4 01 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x10]
    23a8d3560445:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d356044b:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d3560450:	c4 01 7a 6f 14 18                               	vmovdqu xmm10,XMMWORD PTR [r8+r11*1]
    23a8d3560456:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d356045c:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d3560461:	41 0f af c9                                     	imul   ecx,r9d
    23a8d3560465:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    23a8d3560469:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    23a8d356046d:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    23a8d3560474:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356047a:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d356047f:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    23a8d3560485:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356048b:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d3560490:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d3560495:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d356049a:	c5 78 50 dd                                     	vmovmskps r11d,xmm5
    23a8d356049e:	41 83 fb 0f                                     	cmp    r11d,0xf
    23a8d35604a2:	0f 84 12 00 00 00                               	je     0x23a8d35604ba
    23a8d35604a8:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    23a8d35604b1:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d35604b5:	e9 10 03 00 00                                  	jmp    0x23a8d35607ca
    23a8d35604ba:	4c 8b 15 e9 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e9]        # 0x23a8d355adaa
    23a8d35604c1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d35604c6:	4c 8b 15 ec a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ec]        # 0x23a8d355adb9
    23a8d35604cd:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d35604d3:	4c 8b 15 ef a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ef]        # 0x23a8d355adc9
    23a8d35604da:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d35604df:	4c 8b 15 f2 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f2]        # 0x23a8d355add8
    23a8d35604e6:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d35604ec:	4c 8b 15 f5 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f5]        # 0x23a8d355ade8
    23a8d35604f3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d35604f8:	4c 8b 15 f8 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f8]        # 0x23a8d355adf7
    23a8d35604ff:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d3560505:	4c 8b 15 fb a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8fb]        # 0x23a8d355ae07
    23a8d356050c:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3560511:	4c 8b 15 fe a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8fe]        # 0x23a8d355ae16
    23a8d3560518:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d356051e:	4c 8b 15 01 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa901]        # 0x23a8d355ae26
    23a8d3560525:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d356052a:	4c 8b 15 04 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa904]        # 0x23a8d355ae35
    23a8d3560531:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d3560537:	4c 8b 15 07 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa907]        # 0x23a8d355ae45
    23a8d356053e:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3560543:	4c 8b 15 0a a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa90a]        # 0x23a8d355ae54
    23a8d356054a:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d3560550:	4c 8b 15 0d a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa90d]        # 0x23a8d355ae64
    23a8d3560557:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d356055c:	4c 8b 15 10 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa910]        # 0x23a8d355ae73
    23a8d3560563:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d3560569:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d356056e:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d3560572:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d3560577:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d356057c:	4c 8b 15 13 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa913]        # 0x23a8d355ae96
    23a8d3560583:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d3560589:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d356058e:	4c 8b 15 16 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa916]        # 0x23a8d355aeab
    23a8d3560595:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d356059a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d356059e:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d35605a3:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d35605a9:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d35605ae:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d35605b2:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d35605b6:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d35605ba:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35605bf:	4c 8b 15 e5 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e5]        # 0x23a8d355aeab
    23a8d35605c6:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d35605cb:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d35605d0:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d35605d5:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d35605d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35605de:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d35605e4:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d35605e8:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d35605ed:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35605f2:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d35605f6:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d35605fb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560600:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d3560606:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d356060a:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d356060f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560614:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d3560618:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d356061d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560622:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d3560628:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d356062c:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d3560631:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560636:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d356063a:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d356063f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560644:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d356064a:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356064e:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d3560653:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560658:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d356065c:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d3560661:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560666:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d356066b:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d356066f:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d3560674:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3560679:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d356067d:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d3560682:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3560687:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d356068c:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d3560691:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d3560695:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d3560699:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356069e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d35606a2:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d35606a6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35606ab:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d35606b0:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d35606b5:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d35606ba:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d35606be:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d35606c2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35606c7:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d35606d1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d35606d5:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d35606d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35606de:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    23a8d35606e8:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d35606ec:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d35606f0:	45 33 db                                        	xor    r11d,r11d
    23a8d35606f3:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d35606f7:	41 0f 97 c3                                     	seta   r11b
    23a8d35606fb:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    23a8d3560701:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    23a8d3560709:	0b d8                                           	or     ebx,eax
    23a8d356070b:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    23a8d3560711:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d3560716:	b9 02 00 00 00                                  	mov    ecx,0x2
    23a8d356071b:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356071f:	44 0f 47 d9                                     	cmova  r11d,ecx
    23a8d3560723:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    23a8d356072b:	0b d8                                           	or     ebx,eax
    23a8d356072d:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    23a8d3560733:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d3560738:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d356073c:	44 0f 47 de                                     	cmova  r11d,esi
    23a8d3560740:	41 c1 e3 02                                     	shl    r11d,0x2
    23a8d3560744:	41 0b c3                                        	or     eax,r11d
    23a8d3560747:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    23a8d356074d:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    23a8d3560754:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    23a8d356075a:	44 0b d8                                        	or     r11d,eax
    23a8d356075d:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    23a8d3560761:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    23a8d3560766:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356076a:	e9 5b 00 00 00                                  	jmp    0x23a8d35607ca
    23a8d356076f:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    23a8d3560775:	51                                              	push   rcx
    23a8d3560776:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356077a:	8b c8                                           	mov    ecx,eax
    23a8d356077c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d356077f:	e8 e4 ba ee ff                                  	call   0x23a8d344c268
    23a8d3560784:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560787:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356078b:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d356078f:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d3560793:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d356079a:	e9 2b 00 00 00                                  	jmp    0x23a8d35607ca
    23a8d356079f:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    23a8d35607a5:	51                                              	push   rcx
    23a8d35607a6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35607aa:	8b c8                                           	mov    ecx,eax
    23a8d35607ac:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35607af:	e8 a4 ba ee ff                                  	call   0x23a8d344c258
    23a8d35607b4:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35607b7:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d35607bb:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d35607bf:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d35607c3:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d35607ca:	41 83 c4 01                                     	add    r12d,0x1
    23a8d35607ce:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    23a8d35607d3:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    23a8d35607d8:	0f 8f 22 e9 ff ff                               	jg     0x23a8d355f100
    23a8d35607de:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    23a8d35607e4:	e9 04 00 00 00                                  	jmp    0x23a8d35607ed
    23a8d35607e9:	33 d2                                           	xor    edx,edx
    23a8d35607eb:	8b fe                                           	mov    edi,esi
    23a8d35607ed:	33 c0                                           	xor    eax,eax
    23a8d35607ef:	85 d2                                           	test   edx,edx
    23a8d35607f1:	0f 94 c0                                        	sete   al
    23a8d35607f4:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    23a8d35607fa:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    23a8d35607fe:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    23a8d3560802:	48 8b e5                                        	mov    rsp,rbp
    23a8d3560805:	5d                                              	pop    rbp
    23a8d3560806:	c2 40 00                                        	ret    0x40
    23a8d3560809:	41 b8 10 00 00 00                               	mov    r8d,0x10
    23a8d356080f:	41 d1 f8                                        	sar    r8d,1
    23a8d3560812:	4d 63 c0                                        	movsxd r8,r8d
    23a8d3560815:	c5 f8 11 85 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm0
    23a8d356081d:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    23a8d3560824:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    23a8d356082b:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    23a8d3560832:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    23a8d356083a:	49 8b c0                                        	mov    rax,r8
    23a8d356083d:	e8 ee e6 ee ff                                  	call   0x23a8d344ef30
    23a8d3560842:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3560846:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3560849:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    23a8d3560850:	8b 95 58 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3a8]
    23a8d3560856:	8b bd 98 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x368]
    23a8d356085c:	8b 9d f0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x310]
    23a8d3560862:	c5 fb 10 8d 40 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x2c0]
    23a8d356086a:	c5 f8 10 85 80 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x380]
    23a8d3560872:	e9 72 78 ff ff                                  	jmp    0x23a8d35580e9
    23a8d3560877:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d356087b:	c5 f8 11 85 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm0
    23a8d3560883:	4c 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],r15
    23a8d3560887:	48 89 8d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rcx
    23a8d356088e:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    23a8d3560895:	c5 fb 11 ad 60 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa0],xmm5
    23a8d356089d:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    23a8d35608a4:	4c 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r9
    23a8d35608ab:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    23a8d35608b3:	e8 88 e6 ee ff                                  	call   0x23a8d344ef40
    23a8d35608b8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d35608bc:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d35608c0:	c5 fb 10 8d 40 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x2c0]
    23a8d35608c8:	c5 f8 10 85 80 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x380]
    23a8d35608d0:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    23a8d35608d4:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    23a8d35608da:	8b 9d 58 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xa8]
    23a8d35608e0:	c5 fb 10 ad 60 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa0]
    23a8d35608e8:	8b 85 48 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb8]
    23a8d35608ee:	44 8b 8d 70 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x90]
    23a8d35608f5:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    23a8d35608fb:	8b bd 38 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc8]
    23a8d3560901:	e9 53 7a ff ff                                  	jmp    0x23a8d3558359
    23a8d3560906:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d356090a:	c5 f8 11 85 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm0
    23a8d3560912:	4c 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],r15
    23a8d3560916:	48 89 8d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rcx
    23a8d356091d:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    23a8d3560924:	4c 89 9d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r11
    23a8d356092b:	c5 fb 11 ad 60 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa0],xmm5
    23a8d3560933:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    23a8d356093a:	4c 89 a5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r12
    23a8d3560941:	4c 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r9
    23a8d3560948:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    23a8d3560950:	e8 eb e5 ee ff                                  	call   0x23a8d344ef40
    23a8d3560955:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3560959:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356095d:	c5 fb 10 8d 40 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x2c0]
    23a8d3560965:	c5 f8 10 85 80 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x380]
    23a8d356096d:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    23a8d3560971:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    23a8d3560977:	8b 9d 58 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xa8]
    23a8d356097d:	44 8b 9d 78 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x88]
    23a8d3560984:	c5 fb 10 ad 60 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa0]
    23a8d356098c:	8b 85 48 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb8]
    23a8d3560992:	be ff ff ff ff                                  	mov    esi,0xffffffff
    23a8d3560997:	44 8b a5 50 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xb0]
    23a8d356099e:	44 8b 8d 70 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x90]
    23a8d35609a5:	e9 cc 7a ff ff                                  	jmp    0x23a8d3558476
    23a8d35609aa:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    23a8d35609af:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    23a8d35609b4:	c5 7b 11 b5 68 ff ff ff                         	vmovsd QWORD PTR [rbp-0x98],xmm14
    23a8d35609bc:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    23a8d35609c3:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    23a8d35609ca:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    23a8d35609d1:	e8 6a e5 ee ff                                  	call   0x23a8d344ef40
    23a8d35609d6:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d35609da:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d35609df:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d35609e4:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d35609e8:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    23a8d35609f0:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    23a8d35609f5:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    23a8d35609fa:	c5 7b 10 b5 68 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x98]
    23a8d3560a02:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    23a8d3560a09:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    23a8d3560a10:	4c 8b 9d 48 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xb8]
    23a8d3560a17:	4c 8b 8d c0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x140]
    23a8d3560a1e:	48 8b 8d 50 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b0]
    23a8d3560a25:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    23a8d3560a2d:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    23a8d3560a35:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    23a8d3560a3d:	8b 9d 58 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a8]
    23a8d3560a43:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    23a8d3560a49:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    23a8d3560a4e:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    23a8d3560a55:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    23a8d3560a5b:	4c 8b bd 50 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b0]
    23a8d3560a62:	e9 d9 89 ff ff                                  	jmp    0x23a8d3559440
    23a8d3560a67:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    23a8d3560a6e:	4c 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r9
    23a8d3560a75:	4c 89 85 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r8
    23a8d3560a7c:	e8 bf e4 ee ff                                  	call   0x23a8d344ef40
    23a8d3560a81:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d3560a85:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d3560a8a:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d3560a8f:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d3560a93:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    23a8d3560a9b:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    23a8d3560aa1:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    23a8d3560aa8:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    23a8d3560aaf:	4c 8b a5 d0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x230]
    23a8d3560ab6:	48 8b bd 78 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x388]
    23a8d3560abd:	48 8b 85 30 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x3d0]
    23a8d3560ac4:	4c 8b 9d 48 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x2b8]
    23a8d3560acb:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    23a8d3560ad2:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    23a8d3560ad9:	48 8b 9d 50 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b0]
    23a8d3560ae0:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    23a8d3560ae8:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    23a8d3560af0:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    23a8d3560af8:	e9 7e 90 ff ff                                  	jmp    0x23a8d3559b7b
    23a8d3560afd:	e8 3e e4 ee ff                                  	call   0x23a8d344ef40
    23a8d3560b02:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560b05:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3560b09:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    23a8d3560b0f:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    23a8d3560b15:	8b 95 98 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x168]
    23a8d3560b1b:	8b b5 90 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x170]
    23a8d3560b21:	c5 78 10 a5 70 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x290]
    23a8d3560b29:	c5 78 10 9d 60 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2a0]
    23a8d3560b31:	48 8b 8d 30 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1d0]
    23a8d3560b38:	c5 78 10 8d e0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x320]
    23a8d3560b40:	c5 f8 10 ad d0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x330]
    23a8d3560b48:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    23a8d3560b50:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    23a8d3560b58:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    23a8d3560b5f:	e9 a8 ad ff ff                                  	jmp    0x23a8d355b90c
    23a8d3560b64:	e8 d7 e3 ee ff                                  	call   0x23a8d344ef40
    23a8d3560b69:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560b6c:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3560b70:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    23a8d3560b76:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    23a8d3560b7d:	e9 dd bd ff ff                                  	jmp    0x23a8d355c95f
    23a8d3560b82:	e8 b9 e3 ee ff                                  	call   0x23a8d344ef40
    23a8d3560b87:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560b8a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3560b8e:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d3560b95:	4c 8b bd 30 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1d0]
    23a8d3560b9c:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    23a8d3560ba3:	e9 bf d3 ff ff                                  	jmp    0x23a8d355df67
    23a8d3560ba8:	e8 93 e3 ee ff                                  	call   0x23a8d344ef40
    23a8d3560bad:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560bb0:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3560bb4:	41 bb 02 00 00 00                               	mov    r11d,0x2
    23a8d3560bba:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    23a8d3560bbe:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d3560bc5:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d3560bcb:	44 8b 85 30 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1d0]
    23a8d3560bd2:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    23a8d3560bda:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    23a8d3560be2:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    23a8d3560be9:	e9 b5 d7 ff ff                                  	jmp    0x23a8d355e3a3
    23a8d3560bee:	e8 4d e3 ee ff                                  	call   0x23a8d344ef40
    23a8d3560bf3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560bf6:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3560bfa:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    23a8d3560bfe:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    23a8d3560c02:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d3560c06:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d3560c0b:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d3560c10:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d3560c14:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    23a8d3560c1b:	48 8b 9d f8 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x108]
    23a8d3560c22:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    23a8d3560c29:	c5 fb 10 85 88 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x178]
    23a8d3560c31:	8b b5 78 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x188]
    23a8d3560c37:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    23a8d3560c3e:	e9 14 e5 ff ff                                  	jmp    0x23a8d355f157
    23a8d3560c43:	e8 f8 e2 ee ff                                  	call   0x23a8d344ef40
    23a8d3560c48:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3560c4b:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3560c4f:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    23a8d3560c56:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    23a8d3560c5d:	4c 8b 9d 28 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xd8]
    23a8d3560c64:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    23a8d3560c6a:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    23a8d3560c70:	8b 85 98 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x168]
    23a8d3560c76:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    23a8d3560c7d:	e9 3f e7 ff ff                                  	jmp    0x23a8d355f3c1
    23a8d3560c82:	e8 d9 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560c87:	e8 d4 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560c8c:	e8 cf df ee ff                                  	call   0x23a8d344ec60
    23a8d3560c91:	e8 ca df ee ff                                  	call   0x23a8d344ec60
    23a8d3560c96:	e8 c5 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560c9b:	e8 c0 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560ca0:	e8 bb df ee ff                                  	call   0x23a8d344ec60
    23a8d3560ca5:	e8 b6 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560caa:	e8 b1 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560caf:	e8 ac df ee ff                                  	call   0x23a8d344ec60
    23a8d3560cb4:	e8 a7 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560cb9:	e8 a2 df ee ff                                  	call   0x23a8d344ec60
    23a8d3560cbe:	90                                              	nop
    23a8d3560cbf:	90                                              	nop
    23a8d3560cc0:	74 a0                                           	je     0x23a8d3560c62
    23a8d3560cc2:	55                                              	push   rbp
    23a8d3560cc3:	d3 a8 23 00 00 6a                               	shr    DWORD PTR [rax+0x6a000023],cl
    23a8d3560cc9:	a0 55 d3 a8 23 00 00 55 a0                      	movabs al,ds:0xa055000023a8d355
    23a8d3560cd2:	55                                              	push   rbp
    23a8d3560cd3:	d3 a8 23 00 00 46                               	shr    DWORD PTR [rax+0x46000023],cl
    23a8d3560cd9:	a0 55 d3 a8 23 00 00 37 a0                      	movabs al,ds:0xa037000023a8d355
    23a8d3560ce2:	55                                              	push   rbp
    23a8d3560ce3:	d3 a8 23 00 00 22                               	shr    DWORD PTR [rax+0x22000023],cl
    23a8d3560ce9:	a0 55 d3 a8 23 00 00 13 a0                      	movabs al,ds:0xa013000023a8d355
    23a8d3560cf2:	55                                              	push   rbp
    23a8d3560cf3:	d3 a8 23 00 00 81                               	shr    DWORD PTR [rax-0x7effffdd],cl
    23a8d3560cf9:	a0 55 d3 a8 23 00 00 db 9e                      	movabs al,ds:0x9edb000023a8d355
    23a8d3560d02:	55                                              	push   rbp
    23a8d3560d03:	d3 a8 23 00 00 d1                               	shr    DWORD PTR [rax-0x2effffdd],cl
    23a8d3560d09:	9e                                              	sahf
    23a8d3560d0a:	55                                              	push   rbp
    23a8d3560d0b:	d3 a8 23 00 00 bc                               	shr    DWORD PTR [rax-0x43ffffdd],cl
    23a8d3560d11:	9e                                              	sahf
    23a8d3560d12:	55                                              	push   rbp
    23a8d3560d13:	d3 a8 23 00 00 ad                               	shr    DWORD PTR [rax-0x52ffffdd],cl
    23a8d3560d19:	9e                                              	sahf
    23a8d3560d1a:	55                                              	push   rbp
    23a8d3560d1b:	d3 a8 23 00 00 9e                               	shr    DWORD PTR [rax-0x61ffffdd],cl
    23a8d3560d21:	9e                                              	sahf
    23a8d3560d22:	55                                              	push   rbp
    23a8d3560d23:	d3 a8 23 00 00 89                               	shr    DWORD PTR [rax-0x76ffffdd],cl
    23a8d3560d29:	9e                                              	sahf
    23a8d3560d2a:	55                                              	push   rbp
    23a8d3560d2b:	d3 a8 23 00 00 7a                               	shr    DWORD PTR [rax+0x7a000023],cl
    23a8d3560d31:	9e                                              	sahf
    23a8d3560d32:	55                                              	push   rbp
    23a8d3560d33:	d3 a8 23 00 00 df                               	shr    DWORD PTR [rax-0x20ffffdd],cl
    23a8d3560d39:	9e                                              	sahf
    23a8d3560d3a:	55                                              	push   rbp
    23a8d3560d3b:	d3 a8 23 00 00 84                               	shr    DWORD PTR [rax-0x7bffffdd],cl
    23a8d3560d41:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3560d43:	00 1c 00                                        	add    BYTE PTR [rax+rax*1],bl
    23a8d3560d46:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3560d48:	b0 44                                           	mov    al,0x44
    23a8d3560d4a:	e3 03                                           	jrcxz  0x23a8d3560d4f
    23a8d3560d4c:	05 d1 ca 01 e3                                  	add    eax,0xe301cad1
    23a8d3560d51:	03 05 76 e3 03 05                               	add    eax,DWORD PTR [rip+0x503e376]        # 0x23a8d859f0cd
    23a8d3560d57:	cf                                              	iret
    23a8d3560d58:	07                                              	(bad)
    23a8d3560d59:	e3 03                                           	jrcxz  0x23a8d3560d5e
    23a8d3560d5b:	05 00 00 00 00                                  	add    eax,0x0
	...
