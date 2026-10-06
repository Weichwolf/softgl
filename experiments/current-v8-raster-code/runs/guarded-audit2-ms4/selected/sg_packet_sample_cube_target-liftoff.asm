
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

0000214fa48df040 <.data>:
    214fa48df040:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    214fa48df046:	e8 25 bd f4 ff                                  	call   0x214fa482ad70
    214fa48df04b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
    214fa48df052:	8b c0                                           	mov    eax,eax
    214fa48df054:	8b d2                                           	mov    edx,edx
    214fa48df056:	8b c9                                           	mov    ecx,ecx
    214fa48df058:	50                                              	push   rax
    214fa48df059:	51                                              	push   rcx
    214fa48df05a:	57                                              	push   rdi
    214fa48df05b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
    214fa48df062:	33 c0                                           	xor    eax,eax
    214fa48df064:	b9 21 00 00 00                                  	mov    ecx,0x21
    214fa48df069:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    214fa48df06b:	5f                                              	pop    rdi
    214fa48df06c:	59                                              	pop    rcx
    214fa48df06d:	58                                              	pop    rax
    214fa48df06e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    214fa48df072:	0f 86 06 06 00 00                               	jbe    0x214fa48df67e
    214fa48df078:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
    214fa48df07b:	49 0b de                                        	or     rbx,r14
    214fa48df07e:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
    214fa48df081:	bf 70 00 00 00                                  	mov    edi,0x70
    214fa48df086:	2b df                                           	sub    ebx,edi
    214fa48df088:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    214fa48df08b:	49 0b fe                                        	or     rdi,r14
    214fa48df08e:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
    214fa48df091:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa48df095:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    214fa48df099:	c5 fa 7f 44 1f 30                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x30],xmm0
    214fa48df09f:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    214fa48df0a7:	c5 fa 7f 44 1f 20                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x20],xmm0
    214fa48df0ad:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    214fa48df0b5:	c5 fa 7f 44 1f 10                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x10],xmm0
    214fa48df0bb:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    214fa48df0c3:	c5 fa 7f 04 1f                                  	vmovdqu XMMWORD PTR [rdi+rbx*1],xmm0
    214fa48df0c8:	c5 fa 7f 4c 1f 60                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x60],xmm1
    214fa48df0ce:	c5 fa 7f 54 1f 50                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x50],xmm2
    214fa48df0d4:	c5 fa 7f 5c 1f 40                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x40],xmm3
    214fa48df0da:	44 8d 43 60                                     	lea    r8d,[rbx+0x60]
    214fa48df0de:	44 8d 4b 50                                     	lea    r9d,[rbx+0x50]
    214fa48df0e2:	41 bc c0 ff ff ff                               	mov    r12d,0xffffffc0
    214fa48df0e8:	41 f7 dc                                        	neg    r12d
    214fa48df0eb:	44 03 e3                                        	add    r12d,ebx
    214fa48df0ee:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    214fa48df0f2:	41 83 47 0b 02                                  	add    DWORD PTR [r15+0xb],0x2
    214fa48df0f7:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
    214fa48df0fa:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    214fa48df0fd:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    214fa48df100:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    214fa48df105:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    214fa48df10a:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    214fa48df10f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    214fa48df112:	51                                              	push   rcx
    214fa48df113:	41 8b c9                                        	mov    ecx,r9d
    214fa48df116:	44 8b ca                                        	mov    r9d,edx
    214fa48df119:	41 8b d0                                        	mov    edx,r8d
    214fa48df11c:	41 8b dc                                        	mov    ebx,r12d
    214fa48df11f:	e8 54 94 f4 ff                                  	call   0x214fa4828578
    214fa48df124:	8b c0                                           	mov    eax,eax
    214fa48df126:	85 c0                                           	test   eax,eax
    214fa48df128:	0f 85 fc 04 00 00                               	jne    0x214fa48df62a
    214fa48df12e:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    214fa48df131:	83 e0 01                                        	and    eax,0x1
    214fa48df134:	85 c0                                           	test   eax,eax
    214fa48df136:	0f 84 7d 00 00 00                               	je     0x214fa48df1b9
    214fa48df13c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df13f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df143:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    214fa48df147:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    214fa48df14b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df14e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    214fa48df152:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df155:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    214fa48df159:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df15c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    214fa48df161:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df164:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    214fa48df169:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    214fa48df16e:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    214fa48df173:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    214fa48df178:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    214fa48df17b:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa48df17f:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
    214fa48df185:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
    214fa48df189:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
    214fa48df18d:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
    214fa48df190:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
    214fa48df193:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    214fa48df196:	41 8b c8                                        	mov    ecx,r8d
    214fa48df199:	41 8b d9                                        	mov    ebx,r9d
    214fa48df19c:	44 8b c8                                        	mov    r9d,eax
    214fa48df19f:	8b c2                                           	mov    eax,edx
    214fa48df1a1:	8b d7                                           	mov    edx,edi
    214fa48df1a3:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    214fa48df1a7:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    214fa48df1ab:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    214fa48df1af:	e8 7c 90 f4 ff                                  	call   0x214fa4828230
    214fa48df1b4:	e9 00 00 00 00                                  	jmp    0x214fa48df1b9
    214fa48df1b9:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    214fa48df1bc:	83 e0 02                                        	and    eax,0x2
    214fa48df1bf:	85 c0                                           	test   eax,eax
    214fa48df1c1:	0f 84 92 00 00 00                               	je     0x214fa48df259
    214fa48df1c7:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df1ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df1ce:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    214fa48df1d2:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    214fa48df1d6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df1d9:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    214fa48df1dd:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df1e0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    214fa48df1e4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df1e7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    214fa48df1ec:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df1ef:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    214fa48df1f4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    214fa48df1f9:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    214fa48df1fd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    214fa48df202:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    214fa48df206:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    214fa48df20b:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    214fa48df20f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    214fa48df212:	83 c0 10                                        	add    eax,0x10
    214fa48df215:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa48df219:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
    214fa48df21f:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    214fa48df226:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
    214fa48df22d:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    214fa48df230:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
    214fa48df233:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
    214fa48df236:	41 8b c8                                        	mov    ecx,r8d
    214fa48df239:	41 8b d9                                        	mov    ebx,r9d
    214fa48df23c:	44 8b c8                                        	mov    r9d,eax
    214fa48df23f:	8b c2                                           	mov    eax,edx
    214fa48df241:	8b d7                                           	mov    edx,edi
    214fa48df243:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    214fa48df247:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    214fa48df24b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    214fa48df24f:	e8 dc 8f f4 ff                                  	call   0x214fa4828230
    214fa48df254:	e9 00 00 00 00                                  	jmp    0x214fa48df259
    214fa48df259:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    214fa48df25c:	83 e0 04                                        	and    eax,0x4
    214fa48df25f:	85 c0                                           	test   eax,eax
    214fa48df261:	0f 84 9b 00 00 00                               	je     0x214fa48df302
    214fa48df267:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df26a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df26e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    214fa48df272:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    214fa48df276:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df279:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    214fa48df27d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df280:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    214fa48df284:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df287:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    214fa48df28c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df28f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    214fa48df294:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    214fa48df299:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    214fa48df29d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    214fa48df2a2:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    214fa48df2a6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    214fa48df2ab:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    214fa48df2af:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    214fa48df2b2:	83 c0 20                                        	add    eax,0x20
    214fa48df2b5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa48df2b9:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
    214fa48df2bf:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
    214fa48df2c6:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
    214fa48df2cd:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
    214fa48df2d3:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
    214fa48df2d9:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
    214fa48df2df:	41 8b c8                                        	mov    ecx,r8d
    214fa48df2e2:	41 8b d9                                        	mov    ebx,r9d
    214fa48df2e5:	44 8b c8                                        	mov    r9d,eax
    214fa48df2e8:	8b c2                                           	mov    eax,edx
    214fa48df2ea:	8b d7                                           	mov    edx,edi
    214fa48df2ec:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    214fa48df2f0:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    214fa48df2f4:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    214fa48df2f8:	e8 33 8f f4 ff                                  	call   0x214fa4828230
    214fa48df2fd:	e9 00 00 00 00                                  	jmp    0x214fa48df302
    214fa48df302:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    214fa48df305:	83 e0 08                                        	and    eax,0x8
    214fa48df308:	85 c0                                           	test   eax,eax
    214fa48df30a:	0f 84 9e 00 00 00                               	je     0x214fa48df3ae
    214fa48df310:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df313:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df317:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    214fa48df31b:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    214fa48df31f:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df322:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    214fa48df326:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df329:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    214fa48df32d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df330:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    214fa48df335:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    214fa48df338:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    214fa48df33d:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    214fa48df342:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa48df347:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    214fa48df34c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    214fa48df351:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    214fa48df356:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    214fa48df35b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    214fa48df35e:	83 c0 30                                        	add    eax,0x30
    214fa48df361:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa48df365:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
    214fa48df36b:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
    214fa48df372:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
    214fa48df379:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
    214fa48df37f:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
    214fa48df385:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
    214fa48df38b:	41 8b c8                                        	mov    ecx,r8d
    214fa48df38e:	41 8b d9                                        	mov    ebx,r9d
    214fa48df391:	44 8b c8                                        	mov    r9d,eax
    214fa48df394:	8b c2                                           	mov    eax,edx
    214fa48df396:	8b d7                                           	mov    edx,edi
    214fa48df398:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    214fa48df39c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    214fa48df3a0:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    214fa48df3a4:	e8 87 8e f4 ff                                  	call   0x214fa4828230
    214fa48df3a9:	e9 00 00 00 00                                  	jmp    0x214fa48df3ae
    214fa48df3ae:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    214fa48df3b1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa48df3b4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df3b8:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    214fa48df3bc:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    214fa48df3c2:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa48df3c5:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    214fa48df3cb:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    214fa48df3d5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df3da:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    214fa48df3e4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df3ea:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    214fa48df3ef:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    214fa48df3f9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df3fe:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    214fa48df408:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df40e:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    214fa48df413:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    214fa48df418:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa48df41b:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    214fa48df420:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa48df423:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    214fa48df429:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x214fa48df3cd
    214fa48df430:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df435:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x214fa48df3dc
    214fa48df43c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df442:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    214fa48df447:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x214fa48df3f1
    214fa48df44e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df453:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x214fa48df400
    214fa48df45a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df460:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    214fa48df465:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa48df46a:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    214fa48df474:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df479:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    214fa48df483:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df489:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    214fa48df48e:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x214fa48df47b
    214fa48df495:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df49a:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x214fa48df46c
    214fa48df4a1:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df4a7:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    214fa48df4ac:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa48df4b1:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    214fa48df4b7:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    214fa48df4ba:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    214fa48df4c4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df4c9:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x214fa48df47b
    214fa48df4d0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df4d6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    214fa48df4db:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x214fa48df47b
    214fa48df4e2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df4e7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x214fa48df4bc
    214fa48df4ee:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df4f4:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    214fa48df4f9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa48df4fe:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    214fa48df504:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    214fa48df507:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    214fa48df511:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df516:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    214fa48df520:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df526:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    214fa48df52b:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    214fa48df535:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df53a:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    214fa48df544:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df54a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    214fa48df54f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa48df554:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x214fa48df509
    214fa48df55b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df560:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x214fa48df518
    214fa48df567:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df56d:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    214fa48df572:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x214fa48df52d
    214fa48df579:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df57e:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x214fa48df53c
    214fa48df585:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df58b:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    214fa48df590:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa48df595:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x214fa48df46c
    214fa48df59c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df5a1:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x214fa48df47b
    214fa48df5a8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df5ae:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    214fa48df5b3:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x214fa48df47b
    214fa48df5ba:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df5bf:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x214fa48df46c
    214fa48df5c6:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df5cc:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    214fa48df5d1:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa48df5d6:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    214fa48df5dc:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    214fa48df5df:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x214fa48df4bc
    214fa48df5e6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df5eb:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x214fa48df47b
    214fa48df5f2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df5f8:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    214fa48df5fd:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x214fa48df47b
    214fa48df604:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa48df609:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x214fa48df4bc
    214fa48df610:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa48df616:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    214fa48df61b:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa48df620:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    214fa48df625:	e9 27 00 00 00                                  	jmp    0x214fa48df651
    214fa48df62a:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    214fa48df62f:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
    214fa48df634:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    214fa48df639:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
    214fa48df641:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
    214fa48df649:	c5 fa 6f b5 40 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xc0]
    214fa48df651:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    214fa48df654:	83 c0 70                                        	add    eax,0x70
    214fa48df657:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df65b:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    214fa48df65e:	49 0b ce                                        	or     rcx,r14
    214fa48df661:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    214fa48df664:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
    214fa48df668:	41 81 aa 94 02 00 00 60 06 00 00                	sub    DWORD PTR [r10+0x294],0x660
    214fa48df673:	0f 88 45 00 00 00                               	js     0x214fa48df6be
    214fa48df679:	48 8b e5                                        	mov    rsp,rbp
    214fa48df67c:	5d                                              	pop    rbp
    214fa48df67d:	c3                                              	ret
    214fa48df67e:	50                                              	push   rax
    214fa48df67f:	51                                              	push   rcx
    214fa48df680:	52                                              	push   rdx
    214fa48df681:	48 83 ec 30                                     	sub    rsp,0x30
    214fa48df685:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    214fa48df68a:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    214fa48df690:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    214fa48df696:	33 c0                                           	xor    eax,eax
    214fa48df698:	e8 93 b8 f4 ff                                  	call   0x214fa482af30
    214fa48df69d:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    214fa48df6a2:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    214fa48df6a8:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    214fa48df6ae:	48 83 c4 30                                     	add    rsp,0x30
    214fa48df6b2:	5a                                              	pop    rdx
    214fa48df6b3:	59                                              	pop    rcx
    214fa48df6b4:	58                                              	pop    rax
    214fa48df6b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df6b9:	e9 ba f9 ff ff                                  	jmp    0x214fa48df078
    214fa48df6be:	48 83 ec 60                                     	sub    rsp,0x60
    214fa48df6c2:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    214fa48df6c7:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    214fa48df6cd:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    214fa48df6d3:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    214fa48df6d9:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    214fa48df6df:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    214fa48df6e5:	e8 76 b6 f4 ff                                  	call   0x214fa482ad60
    214fa48df6ea:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    214fa48df6ef:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    214fa48df6f5:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    214fa48df6fb:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    214fa48df701:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    214fa48df707:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    214fa48df70d:	48 83 c4 60                                     	add    rsp,0x60
    214fa48df711:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa48df715:	e9 5f ff ff ff                                  	jmp    0x214fa48df679
    214fa48df71a:	66 90                                           	xchg   ax,ax
    214fa48df71c:	2b 00                                           	sub    eax,DWORD PTR [rax]
    214fa48df71e:	00 00                                           	add    BYTE PTR [rax],al
    214fa48df720:	08 00                                           	or     BYTE PTR [rax],al
	...
