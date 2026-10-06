
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms0/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

000005b2ff076e00 <.data>:
 5b2ff076e00:	41 bc a5 00 00 00                               	mov    r12d,0xa5
 5b2ff076e06:	e8 65 6f f5 ff                                  	call   0x5b2fefcdd70
 5b2ff076e0b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
 5b2ff076e12:	8b c0                                           	mov    eax,eax
 5b2ff076e14:	8b d2                                           	mov    edx,edx
 5b2ff076e16:	8b c9                                           	mov    ecx,ecx
 5b2ff076e18:	50                                              	push   rax
 5b2ff076e19:	51                                              	push   rcx
 5b2ff076e1a:	57                                              	push   rdi
 5b2ff076e1b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
 5b2ff076e22:	33 c0                                           	xor    eax,eax
 5b2ff076e24:	b9 21 00 00 00                                  	mov    ecx,0x21
 5b2ff076e29:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
 5b2ff076e2b:	5f                                              	pop    rdi
 5b2ff076e2c:	59                                              	pop    rcx
 5b2ff076e2d:	58                                              	pop    rax
 5b2ff076e2e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
 5b2ff076e32:	0f 86 06 06 00 00                               	jbe    0x5b2ff07743e
 5b2ff076e38:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
 5b2ff076e3b:	49 0b de                                        	or     rbx,r14
 5b2ff076e3e:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
 5b2ff076e41:	bf 70 00 00 00                                  	mov    edi,0x70
 5b2ff076e46:	2b df                                           	sub    ebx,edi
 5b2ff076e48:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
 5b2ff076e4b:	49 0b fe                                        	or     rdi,r14
 5b2ff076e4e:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
 5b2ff076e51:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff076e55:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
 5b2ff076e59:	c5 fa 7f 44 1f 30                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x30],xmm0
 5b2ff076e5f:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff076e67:	c5 fa 7f 44 1f 20                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x20],xmm0
 5b2ff076e6d:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff076e75:	c5 fa 7f 44 1f 10                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x10],xmm0
 5b2ff076e7b:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff076e83:	c5 fa 7f 04 1f                                  	vmovdqu XMMWORD PTR [rdi+rbx*1],xmm0
 5b2ff076e88:	c5 fa 7f 4c 1f 60                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x60],xmm1
 5b2ff076e8e:	c5 fa 7f 54 1f 50                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x50],xmm2
 5b2ff076e94:	c5 fa 7f 5c 1f 40                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x40],xmm3
 5b2ff076e9a:	44 8d 43 60                                     	lea    r8d,[rbx+0x60]
 5b2ff076e9e:	44 8d 4b 50                                     	lea    r9d,[rbx+0x50]
 5b2ff076ea2:	41 bc c0 ff ff ff                               	mov    r12d,0xffffffc0
 5b2ff076ea8:	41 f7 dc                                        	neg    r12d
 5b2ff076eab:	44 03 e3                                        	add    r12d,ebx
 5b2ff076eae:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
 5b2ff076eb2:	41 83 47 0b 02                                  	add    DWORD PTR [r15+0xb],0x2
 5b2ff076eb7:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
 5b2ff076eba:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
 5b2ff076ebd:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
 5b2ff076ec0:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
 5b2ff076ec5:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
 5b2ff076eca:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
 5b2ff076ecf:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
 5b2ff076ed2:	51                                              	push   rcx
 5b2ff076ed3:	41 8b c9                                        	mov    ecx,r9d
 5b2ff076ed6:	44 8b ca                                        	mov    r9d,edx
 5b2ff076ed9:	41 8b d0                                        	mov    edx,r8d
 5b2ff076edc:	41 8b dc                                        	mov    ebx,r12d
 5b2ff076edf:	e8 94 46 f5 ff                                  	call   0x5b2fefcb578
 5b2ff076ee4:	8b c0                                           	mov    eax,eax
 5b2ff076ee6:	85 c0                                           	test   eax,eax
 5b2ff076ee8:	0f 85 fc 04 00 00                               	jne    0x5b2ff0773ea
 5b2ff076eee:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
 5b2ff076ef1:	83 e0 01                                        	and    eax,0x1
 5b2ff076ef4:	85 c0                                           	test   eax,eax
 5b2ff076ef6:	0f 84 7d 00 00 00                               	je     0x5b2ff076f79
 5b2ff076efc:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076eff:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff076f03:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
 5b2ff076f07:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
 5b2ff076f0b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076f0e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
 5b2ff076f12:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076f15:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
 5b2ff076f19:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076f1c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
 5b2ff076f21:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076f24:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
 5b2ff076f29:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
 5b2ff076f2e:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
 5b2ff076f33:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
 5b2ff076f38:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
 5b2ff076f3b:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff076f3f:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
 5b2ff076f45:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
 5b2ff076f49:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
 5b2ff076f4d:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
 5b2ff076f50:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
 5b2ff076f53:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
 5b2ff076f56:	41 8b c8                                        	mov    ecx,r8d
 5b2ff076f59:	41 8b d9                                        	mov    ebx,r9d
 5b2ff076f5c:	44 8b c8                                        	mov    r9d,eax
 5b2ff076f5f:	8b c2                                           	mov    eax,edx
 5b2ff076f61:	8b d7                                           	mov    edx,edi
 5b2ff076f63:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
 5b2ff076f67:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
 5b2ff076f6b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
 5b2ff076f6f:	e8 bc 42 f5 ff                                  	call   0x5b2fefcb230
 5b2ff076f74:	e9 00 00 00 00                                  	jmp    0x5b2ff076f79
 5b2ff076f79:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
 5b2ff076f7c:	83 e0 02                                        	and    eax,0x2
 5b2ff076f7f:	85 c0                                           	test   eax,eax
 5b2ff076f81:	0f 84 92 00 00 00                               	je     0x5b2ff077019
 5b2ff076f87:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076f8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff076f8e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
 5b2ff076f92:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
 5b2ff076f96:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076f99:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
 5b2ff076f9d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076fa0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
 5b2ff076fa4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076fa7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
 5b2ff076fac:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff076faf:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
 5b2ff076fb4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
 5b2ff076fb9:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
 5b2ff076fbd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
 5b2ff076fc2:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
 5b2ff076fc6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
 5b2ff076fcb:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
 5b2ff076fcf:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
 5b2ff076fd2:	83 c0 10                                        	add    eax,0x10
 5b2ff076fd5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff076fd9:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
 5b2ff076fdf:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
 5b2ff076fe6:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
 5b2ff076fed:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
 5b2ff076ff0:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
 5b2ff076ff3:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
 5b2ff076ff6:	41 8b c8                                        	mov    ecx,r8d
 5b2ff076ff9:	41 8b d9                                        	mov    ebx,r9d
 5b2ff076ffc:	44 8b c8                                        	mov    r9d,eax
 5b2ff076fff:	8b c2                                           	mov    eax,edx
 5b2ff077001:	8b d7                                           	mov    edx,edi
 5b2ff077003:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
 5b2ff077007:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
 5b2ff07700b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
 5b2ff07700f:	e8 1c 42 f5 ff                                  	call   0x5b2fefcb230
 5b2ff077014:	e9 00 00 00 00                                  	jmp    0x5b2ff077019
 5b2ff077019:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
 5b2ff07701c:	83 e0 04                                        	and    eax,0x4
 5b2ff07701f:	85 c0                                           	test   eax,eax
 5b2ff077021:	0f 84 9b 00 00 00                               	je     0x5b2ff0770c2
 5b2ff077027:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff07702a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff07702e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
 5b2ff077032:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
 5b2ff077036:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff077039:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
 5b2ff07703d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff077040:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
 5b2ff077044:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff077047:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
 5b2ff07704c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff07704f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
 5b2ff077054:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
 5b2ff077059:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
 5b2ff07705d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
 5b2ff077062:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
 5b2ff077066:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
 5b2ff07706b:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
 5b2ff07706f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
 5b2ff077072:	83 c0 20                                        	add    eax,0x20
 5b2ff077075:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff077079:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
 5b2ff07707f:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
 5b2ff077086:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
 5b2ff07708d:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
 5b2ff077093:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
 5b2ff077099:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
 5b2ff07709f:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0770a2:	41 8b d9                                        	mov    ebx,r9d
 5b2ff0770a5:	44 8b c8                                        	mov    r9d,eax
 5b2ff0770a8:	8b c2                                           	mov    eax,edx
 5b2ff0770aa:	8b d7                                           	mov    edx,edi
 5b2ff0770ac:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
 5b2ff0770b0:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
 5b2ff0770b4:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
 5b2ff0770b8:	e8 73 41 f5 ff                                  	call   0x5b2fefcb230
 5b2ff0770bd:	e9 00 00 00 00                                  	jmp    0x5b2ff0770c2
 5b2ff0770c2:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
 5b2ff0770c5:	83 e0 08                                        	and    eax,0x8
 5b2ff0770c8:	85 c0                                           	test   eax,eax
 5b2ff0770ca:	0f 84 9e 00 00 00                               	je     0x5b2ff07716e
 5b2ff0770d0:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff0770d3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0770d7:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
 5b2ff0770db:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
 5b2ff0770df:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff0770e2:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
 5b2ff0770e6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff0770e9:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
 5b2ff0770ed:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff0770f0:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
 5b2ff0770f5:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
 5b2ff0770f8:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
 5b2ff0770fd:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
 5b2ff077102:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
 5b2ff077107:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
 5b2ff07710c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
 5b2ff077111:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
 5b2ff077116:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
 5b2ff07711b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
 5b2ff07711e:	83 c0 30                                        	add    eax,0x30
 5b2ff077121:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff077125:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
 5b2ff07712b:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
 5b2ff077132:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
 5b2ff077139:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
 5b2ff07713f:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
 5b2ff077145:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
 5b2ff07714b:	41 8b c8                                        	mov    ecx,r8d
 5b2ff07714e:	41 8b d9                                        	mov    ebx,r9d
 5b2ff077151:	44 8b c8                                        	mov    r9d,eax
 5b2ff077154:	8b c2                                           	mov    eax,edx
 5b2ff077156:	8b d7                                           	mov    edx,edi
 5b2ff077158:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
 5b2ff07715c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
 5b2ff077160:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
 5b2ff077164:	e8 c7 40 f5 ff                                  	call   0x5b2fefcb230
 5b2ff077169:	e9 00 00 00 00                                  	jmp    0x5b2ff07716e
 5b2ff07716e:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
 5b2ff077171:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff077174:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff077178:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
 5b2ff07717c:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
 5b2ff077182:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff077185:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
 5b2ff07718b:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
 5b2ff077195:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff07719a:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
 5b2ff0771a4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0771aa:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
 5b2ff0771af:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
 5b2ff0771b9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0771be:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
 5b2ff0771c8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0771ce:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
 5b2ff0771d3:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
 5b2ff0771d8:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0771db:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
 5b2ff0771e0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0771e3:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
 5b2ff0771e9:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x5b2ff07718d
 5b2ff0771f0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0771f5:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x5b2ff07719c
 5b2ff0771fc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff077202:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
 5b2ff077207:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x5b2ff0771b1
 5b2ff07720e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff077213:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x5b2ff0771c0
 5b2ff07721a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff077220:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
 5b2ff077225:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
 5b2ff07722a:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
 5b2ff077234:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff077239:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
 5b2ff077243:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff077249:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
 5b2ff07724e:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x5b2ff07723b
 5b2ff077255:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff07725a:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x5b2ff07722c
 5b2ff077261:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff077267:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
 5b2ff07726c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff077271:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
 5b2ff077277:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
 5b2ff07727a:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
 5b2ff077284:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff077289:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x5b2ff07723b
 5b2ff077290:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff077296:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
 5b2ff07729b:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x5b2ff07723b
 5b2ff0772a2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0772a7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x5b2ff07727c
 5b2ff0772ae:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0772b4:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
 5b2ff0772b9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0772be:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
 5b2ff0772c4:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
 5b2ff0772c7:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
 5b2ff0772d1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0772d6:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
 5b2ff0772e0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0772e6:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
 5b2ff0772eb:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
 5b2ff0772f5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0772fa:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
 5b2ff077304:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff07730a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
 5b2ff07730f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff077314:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x5b2ff0772c9
 5b2ff07731b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff077320:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x5b2ff0772d8
 5b2ff077327:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff07732d:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
 5b2ff077332:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x5b2ff0772ed
 5b2ff077339:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff07733e:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x5b2ff0772fc
 5b2ff077345:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff07734b:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
 5b2ff077350:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff077355:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x5b2ff07722c
 5b2ff07735c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff077361:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x5b2ff07723b
 5b2ff077368:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff07736e:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
 5b2ff077373:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x5b2ff07723b
 5b2ff07737a:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff07737f:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x5b2ff07722c
 5b2ff077386:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff07738c:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
 5b2ff077391:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff077396:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
 5b2ff07739c:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
 5b2ff07739f:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x5b2ff07727c
 5b2ff0773a6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0773ab:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x5b2ff07723b
 5b2ff0773b2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0773b8:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
 5b2ff0773bd:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x5b2ff07723b
 5b2ff0773c4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0773c9:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x5b2ff07727c
 5b2ff0773d0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
 5b2ff0773d6:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
 5b2ff0773db:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff0773e0:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
 5b2ff0773e5:	e9 27 00 00 00                                  	jmp    0x5b2ff077411
 5b2ff0773ea:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
 5b2ff0773ef:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
 5b2ff0773f4:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
 5b2ff0773f9:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
 5b2ff077401:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
 5b2ff077409:	c5 fa 6f b5 40 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xc0]
 5b2ff077411:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
 5b2ff077414:	83 c0 70                                        	add    eax,0x70
 5b2ff077417:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff07741b:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
 5b2ff07741e:	49 0b ce                                        	or     rcx,r14
 5b2ff077421:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
 5b2ff077424:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
 5b2ff077428:	41 81 aa 94 02 00 00 60 06 00 00                	sub    DWORD PTR [r10+0x294],0x660
 5b2ff077433:	0f 88 45 00 00 00                               	js     0x5b2ff07747e
 5b2ff077439:	48 8b e5                                        	mov    rsp,rbp
 5b2ff07743c:	5d                                              	pop    rbp
 5b2ff07743d:	c3                                              	ret
 5b2ff07743e:	50                                              	push   rax
 5b2ff07743f:	51                                              	push   rcx
 5b2ff077440:	52                                              	push   rdx
 5b2ff077441:	48 83 ec 30                                     	sub    rsp,0x30
 5b2ff077445:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
 5b2ff07744a:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
 5b2ff077450:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
 5b2ff077456:	33 c0                                           	xor    eax,eax
 5b2ff077458:	e8 d3 6a f5 ff                                  	call   0x5b2fefcdf30
 5b2ff07745d:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
 5b2ff077462:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
 5b2ff077468:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
 5b2ff07746e:	48 83 c4 30                                     	add    rsp,0x30
 5b2ff077472:	5a                                              	pop    rdx
 5b2ff077473:	59                                              	pop    rcx
 5b2ff077474:	58                                              	pop    rax
 5b2ff077475:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff077479:	e9 ba f9 ff ff                                  	jmp    0x5b2ff076e38
 5b2ff07747e:	48 83 ec 60                                     	sub    rsp,0x60
 5b2ff077482:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
 5b2ff077487:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
 5b2ff07748d:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
 5b2ff077493:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
 5b2ff077499:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
 5b2ff07749f:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
 5b2ff0774a5:	e8 b6 68 f5 ff                                  	call   0x5b2fefcdd60
 5b2ff0774aa:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
 5b2ff0774af:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
 5b2ff0774b5:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
 5b2ff0774bb:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
 5b2ff0774c1:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
 5b2ff0774c7:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
 5b2ff0774cd:	48 83 c4 60                                     	add    rsp,0x60
 5b2ff0774d1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0774d5:	e9 5f ff ff ff                                  	jmp    0x5b2ff077439
 5b2ff0774da:	66 90                                           	xchg   ax,ax
 5b2ff0774dc:	2b 00                                           	sub    eax,DWORD PTR [rax]
 5b2ff0774de:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0774e0:	08 00                                           	or     BYTE PTR [rax],al
	...
