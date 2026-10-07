
/home/cosmo/Git/softgl/build/diagnostics/cube-vector-core/native-check/runs/candidate-ms0/selected/sg_raster_triangle_depth_capture-turbofan.bin:     file format binary


Disassembly of section .data:

00003691cc68ce40 <.data>:
    3691cc68ce40:	55                                              	push   rbp
    3691cc68ce41:	48 8b ec                                        	mov    rbp,rsp
    3691cc68ce44:	6a 30                                           	push   0x30
    3691cc68ce46:	56                                              	push   rsi
    3691cc68ce47:	48 81 ec f0 03 00 00                            	sub    rsp,0x3f0
    3691cc68ce4e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc68ce52:	48 89 95 d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],rdx
    3691cc68ce59:	8b f9                                           	mov    edi,ecx
    3691cc68ce5b:	48 89 8d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rcx
    3691cc68ce62:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    3691cc68ce66:	0f 86 da 95 00 00                               	jbe    0x3691cc696446
    3691cc68ce6c:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    3691cc68ce70:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    3691cc68ce74:	4d 0b de                                        	or     r11,r14
    3691cc68ce77:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    3691cc68ce7b:	45 8d bc 24 00 fe ff ff                         	lea    r15d,[r12-0x200]
    3691cc68ce83:	45 89 7b 07                                     	mov    DWORD PTR [r11+0x7],r15d
    3691cc68ce87:	8b cb                                           	mov    ecx,ebx
    3691cc68ce89:	c4 c1 7a 6f 74 08 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rcx*1+0x10]
    3691cc68ce90:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    3691cc68ce9a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc68ce9f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc68cea3:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    3691cc68cea7:	49 ba 40 c9 35 7d 08 61 00 00                   	movabs r10,0x61087d35c940
    3691cc68ceb1:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc68ceb7:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    3691cc68cebc:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc68cec2:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc68cec7:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc68cecc:	4c 89 a5 c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r12
    3691cc68ced3:	44 8b e2                                        	mov    r12d,edx
    3691cc68ced6:	c4 01 7a 6f 4c 20 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x10]
    3691cc68cedd:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    3691cc68cee1:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x3691cc68cea9
    3691cc68cee8:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    3691cc68ceee:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    3691cc68cef3:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    3691cc68cef9:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    3691cc68cefe:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    3691cc68cf03:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    3691cc68cf08:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    3691cc68cf0d:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    3691cc68cf13:	8b f7                                           	mov    esi,edi
    3691cc68cf15:	c4 41 7a 6f 64 30 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x10]
    3691cc68cf1c:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    3691cc68cf20:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x3691cc68cea9
    3691cc68cf27:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    3691cc68cf2d:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    3691cc68cf32:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    3691cc68cf38:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    3691cc68cf3d:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    3691cc68cf42:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    3691cc68cf47:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    3691cc68cf4c:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    3691cc68cf52:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    3691cc68cf56:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    3691cc68cf5b:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    3691cc68cf60:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    3691cc68cf64:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    3691cc68cf6a:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    3691cc68cf6e:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    3691cc68cf73:	c4 e3 f9 16 d2 00                               	vpextrq rdx,xmm2,0x0
    3691cc68cf79:	c4 e3 f9 16 d7 01                               	vpextrq rdi,xmm2,0x1
    3691cc68cf7f:	48 2b d7                                        	sub    rdx,rdi
    3691cc68cf82:	48 85 d2                                        	test   rdx,rdx
    3691cc68cf85:	0f 8e 8a 94 00 00                               	jle    0x3691cc696415
    3691cc68cf8b:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    3691cc68cf90:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    3691cc68cf95:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    3691cc68cf9b:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    3691cc68cfa5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc68cfaa:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc68cfae:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    3691cc68cfb2:	8d 78 04                                        	lea    edi,[rax+0x4]
    3691cc68cfb5:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    3691cc68cfba:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    3691cc68cfbf:	c4 c3 59 22 24 38 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rdi*1],0x1
    3691cc68cfc6:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    3691cc68cfcb:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    3691cc68cfcf:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    3691cc68cfd4:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    3691cc68cfd9:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    3691cc68cfde:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    3691cc68cfe3:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    3691cc68cfe7:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    3691cc68cfeb:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    3691cc68cff5:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc68cffa:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc68cffe:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    3691cc68d002:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    3691cc68d006:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    3691cc68d00b:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    3691cc68d011:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    3691cc68d016:	8b f8                                           	mov    edi,eax
    3691cc68d018:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    3691cc68d01d:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    3691cc68d021:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
    3691cc68d029:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    3691cc68d030:	48 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdx
    3691cc68d037:	45 85 c9                                        	test   r9d,r9d
    3691cc68d03a:	0f 84 3a 00 00 00                               	je     0x3691cc68d07a
    3691cc68d040:	8d 58 50                                        	lea    ebx,[rax+0x50]
    3691cc68d043:	49 8d 50 48                                     	lea    rdx,[r8+0x48]
    3691cc68d047:	c5 fb 10 24 3a                                  	vmovsd xmm4,QWORD PTR [rdx+rdi*1]
    3691cc68d04c:	c4 c3 59 22 2c 18 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+rbx*1],0x0
    3691cc68d053:	8d 58 54                                        	lea    ebx,[rax+0x54]
    3691cc68d056:	c4 c3 59 22 04 18 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rbx*1],0x1
    3691cc68d05d:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    3691cc68d061:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    3691cc68d066:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    3691cc68d06b:	48 8b 95 70 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x190]
    3691cc68d072:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
    3691cc68d07a:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    3691cc68d07e:	c4 e3 f9 16 e3 00                               	vpextrq rbx,xmm4,0x0
    3691cc68d084:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    3691cc68d089:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    3691cc68d08f:	48 23 c3                                        	and    rax,rbx
    3691cc68d092:	a8 01                                           	test   al,0x1
    3691cc68d094:	0f 85 22 00 00 00                               	jne    0x3691cc68d0bc
    3691cc68d09a:	b8 01 00 00 00                                  	mov    eax,0x1
    3691cc68d09f:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    3691cc68d0a4:	45 85 c9                                        	test   r9d,r9d
    3691cc68d0a7:	0f 45 c7                                        	cmovne eax,edi
    3691cc68d0aa:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
    3691cc68d0b1:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    3691cc68d0b5:	48 8b e5                                        	mov    rsp,rbp
    3691cc68d0b8:	5d                                              	pop    rbp
    3691cc68d0b9:	c2 10 00                                        	ret    0x10
    3691cc68d0bc:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    3691cc68d0c2:	c4 63 79 16 eb 01                               	vpextrd ebx,xmm13,0x1
    3691cc68d0c8:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    3691cc68d0ce:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    3691cc68d0d2:	45 8b 9c 38 e0 00 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0xe0]
    3691cc68d0da:	4c 89 7d e0                                     	mov    QWORD PTR [rbp-0x20],r15
    3691cc68d0de:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    3691cc68d0e2:	48 89 7d c8                                     	mov    QWORD PTR [rbp-0x38],rdi
    3691cc68d0e6:	48 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],rcx
    3691cc68d0ed:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    3691cc68d0f4:	4c 89 a5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r12
    3691cc68d0fb:	c5 f8 11 bd 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm7
    3691cc68d103:	c5 f8 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm2
    3691cc68d10b:	48 89 85 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rax
    3691cc68d112:	48 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rbx
    3691cc68d119:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    3691cc68d11d:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
    3691cc68d121:	45 85 db                                        	test   r11d,r11d
    3691cc68d124:	0f 85 0d 00 00 00                               	jne    0x3691cc68d137
    3691cc68d12a:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    3691cc68d12e:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc68d132:	e9 43 01 00 00                                  	jmp    0x3691cc68d27a
    3691cc68d137:	c4 c1 7a 10 ac 38 d8 00 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0xd8]
    3691cc68d141:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc68d145:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
    3691cc68d149:	0f 8a 1c 00 00 00                               	jp     0x3691cc68d16b
    3691cc68d14f:	0f 85 16 00 00 00                               	jne    0x3691cc68d16b
    3691cc68d155:	c4 c1 7a 10 84 38 dc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rdi*1+0xdc]
    3691cc68d15f:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
    3691cc68d163:	7a 06                                           	jp     0x3691cc68d16b
    3691cc68d165:	0f 84 0b 01 00 00                               	je     0x3691cc68d276
    3691cc68d16b:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    3691cc68d170:	c4 c1 78 28 c4                                  	vmovaps xmm0,xmm12
    3691cc68d175:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    3691cc68d17a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    3691cc68d17e:	c4 c1 7a 59 f9                                  	vmulss xmm7,xmm0,xmm9
    3691cc68d183:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    3691cc68d188:	c4 c1 4a 59 d4                                  	vmulss xmm2,xmm6,xmm12
    3691cc68d18d:	c5 c2 5c fa                                     	vsubss xmm7,xmm7,xmm2
    3691cc68d191:	c5 f8 2e e7                                     	vucomiss xmm4,xmm7
    3691cc68d195:	7a 06                                           	jp     0x3691cc68d19d
    3691cc68d197:	0f 84 d9 00 00 00                               	je     0x3691cc68d276
    3691cc68d19d:	c4 c1 7a 10 54 30 18                            	vmovss xmm2,DWORD PTR [r8+rsi*1+0x18]
    3691cc68d1a4:	c5 78 11 9d 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm11
    3691cc68d1ac:	c4 01 7a 10 5c 20 18                            	vmovss xmm11,DWORD PTR [r8+r12*1+0x18]
    3691cc68d1b3:	c4 c1 6a 5c d3                                  	vsubss xmm2,xmm2,xmm11
    3691cc68d1b8:	c4 41 6a 59 c9                                  	vmulss xmm9,xmm2,xmm9
    3691cc68d1bd:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    3691cc68d1c5:	c4 41 7a 10 74 08 18                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x18]
    3691cc68d1cc:	c4 41 0a 5c db                                  	vsubss xmm11,xmm14,xmm11
    3691cc68d1d1:	c4 41 1a 59 e3                                  	vmulss xmm12,xmm12,xmm11
    3691cc68d1d6:	c4 41 32 5c cc                                  	vsubss xmm9,xmm9,xmm12
    3691cc68d1db:	c5 32 5e cf                                     	vdivss xmm9,xmm9,xmm7
    3691cc68d1df:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    3691cc68d1e4:	49 ba 60 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c860
    3691cc68d1ee:	c4 41 30 57 22                                  	vxorps xmm12,xmm9,XMMWORD PTR [r10]
    3691cc68d1f3:	c4 c1 78 2e e1                                  	vucomiss xmm4,xmm9
    3691cc68d1f8:	0f 87 05 00 00 00                               	ja     0x3691cc68d203
    3691cc68d1fe:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    3691cc68d203:	c5 a2 59 c0                                     	vmulss xmm0,xmm11,xmm0
    3691cc68d207:	c5 ca 59 f2                                     	vmulss xmm6,xmm6,xmm2
    3691cc68d20b:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc68d20f:	c5 fa 5e c7                                     	vdivss xmm0,xmm0,xmm7
    3691cc68d213:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    3691cc68d217:	4c 8b 15 c8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc8]        # 0x3691cc68d1e6
    3691cc68d21e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68d223:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
    3691cc68d227:	0f 87 04 00 00 00                               	ja     0x3691cc68d231
    3691cc68d22d:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc68d231:	c5 78 2e e6                                     	vucomiss xmm12,xmm6
    3691cc68d235:	0f 87 04 00 00 00                               	ja     0x3691cc68d23f
    3691cc68d23b:	c5 79 28 e6                                     	vmovapd xmm12,xmm6
    3691cc68d23f:	c4 c1 52 59 c4                                  	vmulss xmm0,xmm5,xmm12
    3691cc68d244:	c4 c1 7a 10 b4 38 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rdi*1+0xdc]
    3691cc68d24e:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    3691cc68d254:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    3691cc68d259:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc68d25d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68d261:	c5 78 10 b5 10 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xf0]
    3691cc68d269:	c5 78 10 9d 40 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xc0]
    3691cc68d271:	e9 04 00 00 00                                  	jmp    0x3691cc68d27a
    3691cc68d276:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    3691cc68d27a:	c4 c1 79 7e df                                  	vmovd  r15d,xmm3
    3691cc68d27f:	4c 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r15
    3691cc68d286:	c4 c3 79 16 df 01                               	vpextrd r15d,xmm3,0x1
    3691cc68d28c:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
    3691cc68d293:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    3691cc68d298:	c5 79 7e ea                                     	vmovd  edx,xmm13
    3691cc68d29c:	c5 79 7e c1                                     	vmovd  ecx,xmm8
    3691cc68d2a0:	41 2b c1                                        	sub    eax,r9d
    3691cc68d2a3:	4c 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],r15
    3691cc68d2a7:	45 8b f9                                        	mov    r15d,r9d
    3691cc68d2aa:	44 2b fb                                        	sub    r15d,ebx
    3691cc68d2ad:	41 8b 9c 38 a4 00 00 00                         	mov    ebx,DWORD PTR [r8+rdi*1+0xa4]
    3691cc68d2b5:	c5 fb 11 85 78 fc ff ff                         	vmovsd QWORD PTR [rbp-0x388],xmm0
    3691cc68d2bd:	48 89 55 80                                     	mov    QWORD PTR [rbp-0x80],rdx
    3691cc68d2c1:	48 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rax
    3691cc68d2c8:	4c 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r15
    3691cc68d2cf:	85 db                                           	test   ebx,ebx
    3691cc68d2d1:	0f 85 a6 00 00 00                               	jne    0x3691cc68d37d
    3691cc68d2d7:	45 8b 8c 38 30 05 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x530]
    3691cc68d2df:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
    3691cc68d2e8:	0f 85 8f 00 00 00                               	jne    0x3691cc68d37d
    3691cc68d2ee:	45 8b 8c 38 c8 3c 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3cc8]
    3691cc68d2f6:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
    3691cc68d2ff:	0f 85 78 00 00 00                               	jne    0x3691cc68d37d
    3691cc68d305:	45 8b 8c 38 70 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3770]
    3691cc68d30d:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
    3691cc68d316:	0f 85 61 00 00 00                               	jne    0x3691cc68d37d
    3691cc68d31c:	45 8b 8c 38 74 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3774]
    3691cc68d324:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
    3691cc68d32d:	0f 85 4a 00 00 00                               	jne    0x3691cc68d37d
    3691cc68d333:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    3691cc68d337:	45 8b d9                                        	mov    r11d,r9d
    3691cc68d33a:	43 8b b4 18 30 01 00 00                         	mov    esi,DWORD PTR [r8+r11*1+0x130]
    3691cc68d342:	43 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x130],0x0
    3691cc68d34b:	0f 84 16 00 00 00                               	je     0x3691cc68d367
    3691cc68d351:	47 8b 9c 18 34 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x134]
    3691cc68d359:	41 83 eb 01                                     	sub    r11d,0x1
    3691cc68d35d:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc68d361:	0f 87 0b 00 00 00                               	ja     0x3691cc68d372
    3691cc68d367:	41 b9 01 00 00 00                               	mov    r9d,0x1
    3691cc68d36d:	e9 0e 00 00 00                                  	jmp    0x3691cc68d380
    3691cc68d372:	45 33 db                                        	xor    r11d,r11d
    3691cc68d375:	4d 8b cb                                        	mov    r9,r11
    3691cc68d378:	e9 03 00 00 00                                  	jmp    0x3691cc68d380
    3691cc68d37d:	45 33 c9                                        	xor    r9d,r9d
    3691cc68d380:	4c 89 8d b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r9
    3691cc68d387:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    3691cc68d38e:	41 c1 e1 08                                     	shl    r9d,0x8
    3691cc68d392:	44 8b 9d e0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x320]
    3691cc68d399:	41 c1 e3 08                                     	shl    r11d,0x8
    3691cc68d39d:	48 63 f0                                        	movsxd rsi,eax
    3691cc68d3a0:	48 89 75 a8                                     	mov    QWORD PTR [rbp-0x58],rsi
    3691cc68d3a4:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
    3691cc68d3a7:	2b f1                                           	sub    esi,ecx
    3691cc68d3a9:	49 63 c7                                        	movsxd rax,r15d
    3691cc68d3ac:	48 89 45 c0                                     	mov    QWORD PTR [rbp-0x40],rax
    3691cc68d3b0:	8b c1                                           	mov    eax,ecx
    3691cc68d3b2:	2b c2                                           	sub    eax,edx
    3691cc68d3b4:	c4 c3 f9 16 cf 01                               	vpextrq r15,xmm1,0x1
    3691cc68d3ba:	4c 89 bd 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],r15
    3691cc68d3c1:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    3691cc68d3c5:	43 8b 94 38 38 01 00 00                         	mov    edx,DWORD PTR [r8+r15*1+0x138]
    3691cc68d3cd:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
    3691cc68d3d4:	48 89 85 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rax
    3691cc68d3db:	4c 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r15
    3691cc68d3e2:	43 83 bc 38 38 01 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0x138],0x0
    3691cc68d3eb:	0f 85 0e 00 00 00                               	jne    0x3691cc68d3ff
    3691cc68d3f1:	33 d2                                           	xor    edx,edx
    3691cc68d3f3:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    3691cc68d3fa:	e9 53 01 00 00                                  	jmp    0x3691cc68d552
    3691cc68d3ff:	41 8b 94 38 c8 3c 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3cc8]
    3691cc68d407:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
    3691cc68d410:	75 df                                           	jne    0x3691cc68d3f1
    3691cc68d412:	41 8b 94 38 ec 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0xec]
    3691cc68d41a:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    3691cc68d423:	75 cc                                           	jne    0x3691cc68d3f1
    3691cc68d425:	41 8b 54 38 14                                  	mov    edx,DWORD PTR [r8+rdi*1+0x14]
    3691cc68d42a:	41 83 7c 38 14 00                               	cmp    DWORD PTR [r8+rdi*1+0x14],0x0
    3691cc68d430:	0f 85 6c 00 00 00                               	jne    0x3691cc68d4a2
    3691cc68d436:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    3691cc68d43e:	0b d3                                           	or     edx,ebx
    3691cc68d440:	0f 85 5c 00 00 00                               	jne    0x3691cc68d4a2
    3691cc68d446:	41 8b 94 38 30 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x530]
    3691cc68d44e:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
    3691cc68d457:	0f 85 45 00 00 00                               	jne    0x3691cc68d4a2
    3691cc68d45d:	41 8b 94 38 70 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3770]
    3691cc68d465:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
    3691cc68d46e:	0f 85 2e 00 00 00                               	jne    0x3691cc68d4a2
    3691cc68d474:	41 8b 94 38 74 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3774]
    3691cc68d47c:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
    3691cc68d485:	0f 85 17 00 00 00                               	jne    0x3691cc68d4a2
    3691cc68d48b:	41 8b 94 38 20 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x520]
    3691cc68d493:	41 83 bc 38 20 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x520],0x0
    3691cc68d49c:	0f 85 12 00 00 00                               	jne    0x3691cc68d4b4
    3691cc68d4a2:	33 d2                                           	xor    edx,edx
    3691cc68d4a4:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
    3691cc68d4af:	e9 9e 00 00 00                                  	jmp    0x3691cc68d552
    3691cc68d4b4:	41 8b 94 38 24 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x524]
    3691cc68d4bc:	41 83 bc 38 24 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x524],0x0
    3691cc68d4c5:	74 db                                           	je     0x3691cc68d4a2
    3691cc68d4c7:	41 8b 94 38 28 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x528]
    3691cc68d4cf:	41 83 bc 38 28 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x528],0x0
    3691cc68d4d8:	74 c8                                           	je     0x3691cc68d4a2
    3691cc68d4da:	41 8b 94 38 2c 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x52c]
    3691cc68d4e2:	41 83 bc 38 2c 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x52c],0x0
    3691cc68d4eb:	74 b5                                           	je     0x3691cc68d4a2
    3691cc68d4ed:	41 8b 54 38 74                                  	mov    edx,DWORD PTR [r8+rdi*1+0x74]
    3691cc68d4f2:	41 83 7c 38 74 00                               	cmp    DWORD PTR [r8+rdi*1+0x74],0x0
    3691cc68d4f8:	0f 85 11 00 00 00                               	jne    0x3691cc68d50f
    3691cc68d4fe:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc68d503:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    3691cc68d50a:	e9 43 00 00 00                                  	jmp    0x3691cc68d552
    3691cc68d50f:	41 8b 54 38 78                                  	mov    edx,DWORD PTR [r8+rdi*1+0x78]
    3691cc68d514:	81 fa 02 03 00 00                               	cmp    edx,0x302
    3691cc68d51a:	0f 84 09 00 00 00                               	je     0x3691cc68d529
    3691cc68d520:	83 fa 01                                        	cmp    edx,0x1
    3691cc68d523:	0f 85 79 ff ff ff                               	jne    0x3691cc68d4a2
    3691cc68d529:	41 8b 54 38 7c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x7c]
    3691cc68d52e:	45 33 ff                                        	xor    r15d,r15d
    3691cc68d531:	83 fa 01                                        	cmp    edx,0x1
    3691cc68d534:	41 0f 94 c7                                     	sete   r15b
    3691cc68d538:	81 fa 03 03 00 00                               	cmp    edx,0x303
    3691cc68d53e:	0f 94 c2                                        	sete   dl
    3691cc68d541:	0f b6 d2                                        	movzx  edx,dl
    3691cc68d544:	41 0b d7                                        	or     edx,r15d
    3691cc68d547:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
    3691cc68d552:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    3691cc68d559:	41 81 cb 80 00 00 00                            	or     r11d,0x80
    3691cc68d560:	48 89 95 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdx
    3691cc68d567:	48 63 d6                                        	movsxd rdx,esi
    3691cc68d56a:	4c 63 f8                                        	movsxd r15,eax
    3691cc68d56d:	4c 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],r15
    3691cc68d571:	c4 c3 f9 16 cf 00                               	vpextrq r15,xmm1,0x0
    3691cc68d577:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
    3691cc68d57e:	4c 8b bd 88 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x178]
    3691cc68d585:	49 c1 e7 08                                     	shl    r15,0x8
    3691cc68d589:	4c 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r15
    3691cc68d590:	4c 8b 7d a8                                     	mov    r15,QWORD PTR [rbp-0x58]
    3691cc68d594:	49 c1 e7 08                                     	shl    r15,0x8
    3691cc68d598:	4c 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r15
    3691cc68d59f:	4c 8b 7d c0                                     	mov    r15,QWORD PTR [rbp-0x40]
    3691cc68d5a3:	49 c1 e7 08                                     	shl    r15,0x8
    3691cc68d5a7:	c4 c1 79 28 f6                                  	vmovapd xmm6,xmm14
    3691cc68d5ac:	4c 89 bd 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r15
    3691cc68d5b3:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
    3691cc68d5b8:	48 89 95 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdx
    3691cc68d5bf:	c4 e3 79 16 f2 01                               	vpextrd edx,xmm6,0x1
    3691cc68d5c5:	c4 81 7a 10 74 20 18                            	vmovss xmm6,DWORD PTR [r8+r12*1+0x18]
    3691cc68d5cc:	4c 8b a5 48 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1b8]
    3691cc68d5d3:	c4 81 7a 10 7c 20 18                            	vmovss xmm7,DWORD PTR [r8+r12*1+0x18]
    3691cc68d5da:	45 33 e4                                        	xor    r12d,r12d
    3691cc68d5dd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68d5e1:	41 0f 97 c4                                     	seta   r12b
    3691cc68d5e5:	4c 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r15
    3691cc68d5ec:	48 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdx
    3691cc68d5f3:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    3691cc68d5f7:	0b d3                                           	or     edx,ebx
    3691cc68d5f9:	0f 85 11 00 00 00                               	jne    0x3691cc68d610
    3691cc68d5ff:	41 8b 5c 38 68                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x68]
    3691cc68d604:	41 83 7c 38 68 00                               	cmp    DWORD PTR [r8+rdi*1+0x68],0x0
    3691cc68d60a:	0f 85 0a 00 00 00                               	jne    0x3691cc68d61a
    3691cc68d610:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc68d615:	e9 17 00 00 00                                  	jmp    0x3691cc68d631
    3691cc68d61a:	41 8b 5c 38 6c                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x6c]
    3691cc68d61f:	81 eb 01 02 00 00                               	sub    ebx,0x201
    3691cc68d625:	f7 c3 fd ff ff ff                               	test   ebx,0xfffffffd
    3691cc68d62b:	0f 95 c3                                        	setne  bl
    3691cc68d62e:	0f b6 db                                        	movzx  ebx,bl
    3691cc68d631:	41 8b d1                                        	mov    edx,r9d
    3691cc68d634:	2b d1                                           	sub    edx,ecx
    3691cc68d636:	41 8b fb                                        	mov    edi,r11d
    3691cc68d639:	2b 7d 88                                        	sub    edi,DWORD PTR [rbp-0x78]
    3691cc68d63c:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    3691cc68d643:	41 8b f9                                        	mov    edi,r9d
    3691cc68d646:	2b 7d 80                                        	sub    edi,DWORD PTR [rbp-0x80]
    3691cc68d649:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    3691cc68d64d:	41 8b fb                                        	mov    edi,r11d
    3691cc68d650:	2b bd 20 ff ff ff                               	sub    edi,DWORD PTR [rbp-0xe0]
    3691cc68d656:	44 2b 4d 90                                     	sub    r9d,DWORD PTR [rbp-0x70]
    3691cc68d65a:	44 2b 9d 50 fe ff ff                            	sub    r11d,DWORD PTR [rbp-0x1b0]
    3691cc68d661:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    3691cc68d665:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
    3691cc68d669:	45 85 e4                                        	test   r12d,r12d
    3691cc68d66c:	0f 85 09 00 00 00                               	jne    0x3691cc68d67b
    3691cc68d672:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc68d676:	e9 04 00 00 00                                  	jmp    0x3691cc68d67f
    3691cc68d67b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    3691cc68d67f:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc68d686:	c4 01 7a 10 4c 20 18                            	vmovss xmm9,DWORD PTR [r8+r12*1+0x18]
    3691cc68d68d:	44 8b 85 50 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1b0]
    3691cc68d694:	45 33 e4                                        	xor    r12d,r12d
    3691cc68d697:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
    3691cc68d69e:	41 0f 95 c4                                     	setne  r12b
    3691cc68d6a2:	4c 89 a5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r12
    3691cc68d6a9:	44 8b 65 90                                     	mov    r12d,DWORD PTR [rbp-0x70]
    3691cc68d6ad:	45 33 db                                        	xor    r11d,r11d
    3691cc68d6b0:	44 3b 65 80                                     	cmp    r12d,DWORD PTR [rbp-0x80]
    3691cc68d6b4:	41 0f 9e c3                                     	setle  r11b
    3691cc68d6b8:	4c 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r11
    3691cc68d6bf:	44 8b 5d 88                                     	mov    r11d,DWORD PTR [rbp-0x78]
    3691cc68d6c3:	45 33 c9                                        	xor    r9d,r9d
    3691cc68d6c6:	45 3b d8                                        	cmp    r11d,r8d
    3691cc68d6c9:	41 0f 95 c1                                     	setne  r9b
    3691cc68d6cd:	41 3b cc                                        	cmp    ecx,r12d
    3691cc68d6d0:	41 0f 9e c4                                     	setle  r12b
    3691cc68d6d4:	45 0f b6 e4                                     	movzx  r12d,r12b
    3691cc68d6d8:	4c 89 65 90                                     	mov    QWORD PTR [rbp-0x70],r12
    3691cc68d6dc:	45 33 e4                                        	xor    r12d,r12d
    3691cc68d6df:	44 3b 9d 20 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0xe0]
    3691cc68d6e6:	41 0f 95 c4                                     	setne  r12b
    3691cc68d6ea:	4c 89 a5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r12
    3691cc68d6f1:	44 8b 65 80                                     	mov    r12d,DWORD PTR [rbp-0x80]
    3691cc68d6f5:	44 3b e1                                        	cmp    r12d,ecx
    3691cc68d6f8:	41 0f 9e c4                                     	setle  r12b
    3691cc68d6fc:	45 0f b6 e4                                     	movzx  r12d,r12b
    3691cc68d700:	48 8b 8d a0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x160]
    3691cc68d707:	48 c1 e1 08                                     	shl    rcx,0x8
    3691cc68d70b:	48 89 8d e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],rcx
    3691cc68d712:	48 8b 8d 00 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x300]
    3691cc68d719:	48 f7 d9                                        	neg    rcx
    3691cc68d71c:	48 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rcx
    3691cc68d723:	48 8b 8d 78 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x188]
    3691cc68d72a:	48 c1 e1 08                                     	shl    rcx,0x8
    3691cc68d72e:	48 89 8d a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rcx
    3691cc68d735:	48 8b 4d b8                                     	mov    rcx,QWORD PTR [rbp-0x48]
    3691cc68d739:	48 c1 e1 08                                     	shl    rcx,0x8
    3691cc68d73d:	48 89 8d 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rcx
    3691cc68d744:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    3691cc68d74b:	48 f7 d9                                        	neg    rcx
    3691cc68d74e:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
    3691cc68d755:	48 8b 8d 18 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2e8]
    3691cc68d75c:	48 f7 d9                                        	neg    rcx
    3691cc68d75f:	48 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rcx
    3691cc68d766:	33 c9                                           	xor    ecx,ecx
    3691cc68d768:	85 f6                                           	test   esi,esi
    3691cc68d76a:	0f 9c c1                                        	setl   cl
    3691cc68d76d:	33 f6                                           	xor    esi,esi
    3691cc68d76f:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    3691cc68d776:	40 0f 9f c6                                     	setg   sil
    3691cc68d77a:	48 89 75 80                                     	mov    QWORD PTR [rbp-0x80],rsi
    3691cc68d77e:	33 f6                                           	xor    esi,esi
    3691cc68d780:	85 c0                                           	test   eax,eax
    3691cc68d782:	40 0f 9c c6                                     	setl   sil
    3691cc68d786:	33 c0                                           	xor    eax,eax
    3691cc68d788:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
    3691cc68d78f:	0f 9f c0                                        	setg   al
    3691cc68d792:	48 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rax
    3691cc68d799:	33 c0                                           	xor    eax,eax
    3691cc68d79b:	45 85 ff                                        	test   r15d,r15d
    3691cc68d79e:	0f 9c c0                                        	setl   al
    3691cc68d7a1:	45 33 ff                                        	xor    r15d,r15d
    3691cc68d7a4:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
    3691cc68d7ab:	41 0f 9f c7                                     	setg   r15b
    3691cc68d7af:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    3691cc68d7b6:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
    3691cc68d7bb:	41 81 e7 ff ff ff 7f                            	and    r15d,0x7fffffff
    3691cc68d7c2:	41 81 ff ff ff 7f 7f                            	cmp    r15d,0x7f7fffff
    3691cc68d7c9:	0f 87 25 00 00 00                               	ja     0x3691cc68d7f4
    3691cc68d7cf:	c5 f8 2e f4                                     	vucomiss xmm6,xmm4
    3691cc68d7d3:	0f 82 1b 00 00 00                               	jb     0x3691cc68d7f4
    3691cc68d7d9:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc68d7de:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc68d7e4:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc68d7ea:	c5 78 2e d6                                     	vucomiss xmm10,xmm6
    3691cc68d7ee:	0f 83 05 00 00 00                               	jae    0x3691cc68d7f9
    3691cc68d7f4:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc68d7f9:	4c 63 fa                                        	movsxd r15,edx
    3691cc68d7fc:	48 63 95 30 ff ff ff                            	movsxd rdx,DWORD PTR [rbp-0xd0]
    3691cc68d803:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
    3691cc68d80a:	48 63 55 98                                     	movsxd rdx,DWORD PTR [rbp-0x68]
    3691cc68d80e:	48 63 ff                                        	movsxd rdi,edi
    3691cc68d811:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    3691cc68d815:	48 63 7d a0                                     	movsxd rdi,DWORD PTR [rbp-0x60]
    3691cc68d819:	48 89 7d a0                                     	mov    QWORD PTR [rbp-0x60],rdi
    3691cc68d81d:	48 63 7d b0                                     	movsxd rdi,DWORD PTR [rbp-0x50]
    3691cc68d821:	48 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],rdi
    3691cc68d825:	33 ff                                           	xor    edi,edi
    3691cc68d827:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    3691cc68d82c:	40 0f 97 c7                                     	seta   dil
    3691cc68d830:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    3691cc68d837:	48 8b bd 00 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x100]
    3691cc68d83e:	0b bd f8 fd ff ff                               	or     edi,DWORD PTR [rbp-0x208]
    3691cc68d844:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    3691cc68d84b:	33 ff                                           	xor    edi,edi
    3691cc68d84d:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
    3691cc68d854:	40 0f 9e c7                                     	setle  dil
    3691cc68d858:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    3691cc68d85f:	48 8b 7d 90                                     	mov    rdi,QWORD PTR [rbp-0x70]
    3691cc68d863:	41 0b f9                                        	or     edi,r9d
    3691cc68d866:	45 3b d8                                        	cmp    r11d,r8d
    3691cc68d869:	41 0f 9e c0                                     	setle  r8b
    3691cc68d86d:	45 0f b6 c0                                     	movzx  r8d,r8b
    3691cc68d871:	44 0b a5 38 ff ff ff                            	or     r12d,DWORD PTR [rbp-0xc8]
    3691cc68d878:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    3691cc68d87f:	45 3b cb                                        	cmp    r9d,r11d
    3691cc68d882:	41 0f 9e c3                                     	setle  r11b
    3691cc68d886:	45 0f b6 db                                     	movzx  r11d,r11b
    3691cc68d88a:	4c 8b 95 70 fe ff ff                            	mov    r10,QWORD PTR [rbp-0x190]
    3691cc68d891:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc68d896:	4d 85 d2                                        	test   r10,r10
    3691cc68d899:	79 12                                           	jns    0x3691cc68d8ad
    3691cc68d89b:	49 d1 ea                                        	shr    r10,1
    3691cc68d89e:	73 04                                           	jae    0x3691cc68d8a4
    3691cc68d8a0:	49 83 ca 01                                     	or     r10,0x1
    3691cc68d8a4:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc68d8a9:	c5 ca 58 f6                                     	vaddss xmm6,xmm6,xmm6
    3691cc68d8ad:	4c 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r11
    3691cc68d8b4:	45 33 db                                        	xor    r11d,r11d
    3691cc68d8b7:	85 c9                                           	test   ecx,ecx
    3691cc68d8b9:	4c 0f 45 9d a0 fd ff ff                         	cmovne r11,QWORD PTR [rbp-0x260]
    3691cc68d8c1:	33 c9                                           	xor    ecx,ecx
    3691cc68d8c3:	83 7d 80 00                                     	cmp    DWORD PTR [rbp-0x80],0x0
    3691cc68d8c7:	48 0f 45 8d 78 ff ff ff                         	cmovne rcx,QWORD PTR [rbp-0x88]
    3691cc68d8cf:	45 33 c9                                        	xor    r9d,r9d
    3691cc68d8d2:	48 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rcx
    3691cc68d8d9:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    3691cc68d8e0:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    3691cc68d8e7:	49 0f 4c c9                                     	cmovl  rcx,r9
    3691cc68d8eb:	48 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rcx
    3691cc68d8f2:	48 8b 8d 78 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x88]
    3691cc68d8f9:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    3691cc68d900:	49 0f 4f c9                                     	cmovg  rcx,r9
    3691cc68d904:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    3691cc68d90b:	49 8b c9                                        	mov    rcx,r9
    3691cc68d90e:	85 f6                                           	test   esi,esi
    3691cc68d910:	48 0f 45 8d 30 fd ff ff                         	cmovne rcx,QWORD PTR [rbp-0x2d0]
    3691cc68d918:	49 8b f1                                        	mov    rsi,r9
    3691cc68d91b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc68d922:	48 0f 45 b5 08 ff ff ff                         	cmovne rsi,QWORD PTR [rbp-0xf8]
    3691cc68d92a:	48 89 8d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rcx
    3691cc68d931:	48 8b 8d 30 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2d0]
    3691cc68d938:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    3691cc68d93f:	49 0f 4c c9                                     	cmovl  rcx,r9
    3691cc68d943:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
    3691cc68d94a:	48 8b 8d 08 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xf8]
    3691cc68d951:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
    3691cc68d958:	49 0f 4f c9                                     	cmovg  rcx,r9
    3691cc68d95c:	48 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rcx
    3691cc68d963:	49 8b c9                                        	mov    rcx,r9
    3691cc68d966:	85 c0                                           	test   eax,eax
    3691cc68d968:	48 0f 45 8d e8 fc ff ff                         	cmovne rcx,QWORD PTR [rbp-0x318]
    3691cc68d970:	49 8b c1                                        	mov    rax,r9
    3691cc68d973:	83 bd 28 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd8],0x0
    3691cc68d97a:	48 0f 45 85 58 ff ff ff                         	cmovne rax,QWORD PTR [rbp-0xa8]
    3691cc68d982:	48 89 4d 80                                     	mov    QWORD PTR [rbp-0x80],rcx
    3691cc68d986:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    3691cc68d98d:	83 bd 60 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xa0],0x0
    3691cc68d994:	49 0f 4c c9                                     	cmovl  rcx,r9
    3691cc68d998:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    3691cc68d99c:	48 8b 8d 58 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xa8]
    3691cc68d9a3:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
    3691cc68d9aa:	49 0f 4f c9                                     	cmovg  rcx,r9
    3691cc68d9ae:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    3691cc68d9b3:	41 81 e1 ff ff ff 7f                            	and    r9d,0x7fffffff
    3691cc68d9ba:	41 81 f9 ff ff 7f 7f                            	cmp    r9d,0x7f7fffff
    3691cc68d9c1:	0f 87 25 00 00 00                               	ja     0x3691cc68d9ec
    3691cc68d9c7:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    3691cc68d9cb:	0f 82 1b 00 00 00                               	jb     0x3691cc68d9ec
    3691cc68d9d1:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc68d9d6:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc68d9dc:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc68d9e2:	c5 78 2e d7                                     	vucomiss xmm10,xmm7
    3691cc68d9e6:	0f 83 05 00 00 00                               	jae    0x3691cc68d9f1
    3691cc68d9ec:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc68d9f1:	4c 0f af 7d a8                                  	imul   r15,QWORD PTR [rbp-0x58]
    3691cc68d9f6:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    3691cc68d9fd:	4c 0f af 8d 78 fe ff ff                         	imul   r9,QWORD PTR [rbp-0x188]
    3691cc68da05:	48 0f af 55 c0                                  	imul   rdx,QWORD PTR [rbp-0x40]
    3691cc68da0a:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    3691cc68da0e:	48 8b 55 98                                     	mov    rdx,QWORD PTR [rbp-0x68]
    3691cc68da12:	48 0f af 55 b8                                  	imul   rdx,QWORD PTR [rbp-0x48]
    3691cc68da17:	48 89 55 98                                     	mov    QWORD PTR [rbp-0x68],rdx
    3691cc68da1b:	48 8b 55 a0                                     	mov    rdx,QWORD PTR [rbp-0x60]
    3691cc68da1f:	48 0f af 95 88 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x178]
    3691cc68da27:	48 89 55 a0                                     	mov    QWORD PTR [rbp-0x60],rdx
    3691cc68da2b:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    3691cc68da2f:	48 0f af 95 a0 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x160]
    3691cc68da37:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
    3691cc68da3b:	83 bd 30 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd0],0x0
    3691cc68da42:	0f 85 0a 00 00 00                               	jne    0x3691cc68da52
    3691cc68da48:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68da4d:	e9 05 00 00 00                                  	jmp    0x3691cc68da57
    3691cc68da52:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68da57:	48 8b 95 f8 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x208]
    3691cc68da5e:	23 95 00 ff ff ff                               	and    edx,DWORD PTR [rbp-0x100]
    3691cc68da64:	41 23 f8                                        	and    edi,r8d
    3691cc68da67:	44 23 a5 20 ff ff ff                            	and    r12d,DWORD PTR [rbp-0xe0]
    3691cc68da6e:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc68da73:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc68da79:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc68da7f:	c5 ba 5e f6                                     	vdivss xmm6,xmm8,xmm6
    3691cc68da83:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    3691cc68da87:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    3691cc68da8e:	4d 03 c3                                        	add    r8,r11
    3691cc68da91:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    3691cc68da98:	48 8b bd 70 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x190]
    3691cc68da9f:	4c 8b 9d 50 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b0]
    3691cc68daa6:	49 03 fb                                        	add    rdi,r11
    3691cc68daa9:	4c 8b 9d 80 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x180]
    3691cc68dab0:	4c 03 de                                        	add    r11,rsi
    3691cc68dab3:	4c 89 a5 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],r12
    3691cc68daba:	4c 8b a5 70 ff ff ff                            	mov    r12,QWORD PTR [rbp-0x90]
    3691cc68dac1:	48 8b b5 78 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0x88]
    3691cc68dac8:	4c 03 e6                                        	add    r12,rsi
    3691cc68dacb:	48 8b 75 80                                     	mov    rsi,QWORD PTR [rbp-0x80]
    3691cc68dacf:	48 03 c6                                        	add    rax,rsi
    3691cc68dad2:	48 8b 75 88                                     	mov    rsi,QWORD PTR [rbp-0x78]
    3691cc68dad6:	48 03 ce                                        	add    rcx,rsi
    3691cc68dad9:	48 89 95 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],rdx
    3691cc68dae0:	48 8b 95 58 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1a8]
    3691cc68dae7:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    3691cc68daeb:	c5 7a 10 54 16 1c                               	vmovss xmm10,DWORD PTR [rsi+rdx*1+0x1c]
    3691cc68daf1:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc68daf8:	c5 7a 10 64 16 1c                               	vmovss xmm12,DWORD PTR [rsi+rdx*1+0x1c]
    3691cc68dafe:	48 8b 95 40 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1c0]
    3691cc68db05:	c5 7a 10 6c 16 1c                               	vmovss xmm13,DWORD PTR [rsi+rdx*1+0x1c]
    3691cc68db0b:	c5 79 7e ce                                     	vmovd  esi,xmm9
    3691cc68db0f:	81 e6 ff ff ff 7f                               	and    esi,0x7fffffff
    3691cc68db15:	c5 fb 11 b5 58 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3a8],xmm6
    3691cc68db1d:	c5 7b 11 95 c0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x340],xmm10
    3691cc68db25:	c5 7b 11 a5 90 fc ff ff                         	vmovsd QWORD PTR [rbp-0x370],xmm12
    3691cc68db2d:	c5 7b 11 ad 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm13
    3691cc68db35:	81 fe ff ff 7f 7f                               	cmp    esi,0x7f7fffff
    3691cc68db3b:	0f 87 15 00 00 00                               	ja     0x3691cc68db56
    3691cc68db41:	c5 78 2e cc                                     	vucomiss xmm9,xmm4
    3691cc68db45:	0f 82 0b 00 00 00                               	jb     0x3691cc68db56
    3691cc68db4b:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    3691cc68db50:	0f 83 05 00 00 00                               	jae    0x3691cc68db5b
    3691cc68db56:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc68db5b:	4d 2b cf                                        	sub    r9,r15
    3691cc68db5e:	4c 8b 7d 98                                     	mov    r15,QWORD PTR [rbp-0x68]
    3691cc68db62:	4c 2b 7d 90                                     	sub    r15,QWORD PTR [rbp-0x70]
    3691cc68db66:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    3691cc68db6a:	48 2b 75 a0                                     	sub    rsi,QWORD PTR [rbp-0x60]
    3691cc68db6e:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    3691cc68db74:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    3691cc68db79:	c4 c1 42 58 f9                                  	vaddss xmm7,xmm7,xmm9
    3691cc68db7e:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    3691cc68db85:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
    3691cc68db8c:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    3691cc68db90:	41 8d 9f dc 36 00 00                            	lea    ebx,[r15+0x36dc]
    3691cc68db97:	48 89 9d a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rbx
    3691cc68db9e:	41 8d 9f 68 36 00 00                            	lea    ebx,[r15+0x3668]
    3691cc68dba5:	48 89 9d 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rbx
    3691cc68dbac:	41 8d 9f f4 35 00 00                            	lea    ebx,[r15+0x35f4]
    3691cc68dbb3:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    3691cc68dbba:	48 8b 9d a0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x160]
    3691cc68dbc1:	48 c1 e3 09                                     	shl    rbx,0x9
    3691cc68dbc5:	48 8b 95 78 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x188]
    3691cc68dbcc:	48 c1 e2 09                                     	shl    rdx,0x9
    3691cc68dbd0:	48 89 5d a0                                     	mov    QWORD PTR [rbp-0x60],rbx
    3691cc68dbd4:	48 8b 5d b8                                     	mov    rbx,QWORD PTR [rbp-0x48]
    3691cc68dbd8:	48 c1 e3 09                                     	shl    rbx,0x9
    3691cc68dbdc:	48 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],rbx
    3691cc68dbe0:	48 8b 9d 88 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x178]
    3691cc68dbe7:	48 c1 e3 09                                     	shl    rbx,0x9
    3691cc68dbeb:	48 89 b5 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rsi
    3691cc68dbf2:	48 8b 75 a8                                     	mov    rsi,QWORD PTR [rbp-0x58]
    3691cc68dbf6:	48 c1 e6 09                                     	shl    rsi,0x9
    3691cc68dbfa:	48 89 9d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rbx
    3691cc68dc01:	48 8b 5d c0                                     	mov    rbx,QWORD PTR [rbp-0x40]
    3691cc68dc05:	48 c1 e3 09                                     	shl    rbx,0x9
    3691cc68dc09:	48 89 5d 80                                     	mov    QWORD PTR [rbp-0x80],rbx
    3691cc68dc0d:	48 8b 9d a0 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x260]
    3691cc68dc14:	48 2b 9d 38 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2c8]
    3691cc68dc1b:	48 89 9d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rbx
    3691cc68dc22:	48 8b 9d 30 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2d0]
    3691cc68dc29:	48 2b 9d 18 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2e8]
    3691cc68dc30:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    3691cc68dc37:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    3691cc68dc3d:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
    3691cc68dc41:	8d 53 50                                        	lea    edx,[rbx+0x50]
    3691cc68dc44:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    3691cc68dc4a:	48 89 95 00 fc ff ff                            	mov    QWORD PTR [rbp-0x400],rdx
    3691cc68dc51:	8d 53 50                                        	lea    edx,[rbx+0x50]
    3691cc68dc54:	8b 9d d0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x330]
    3691cc68dc5a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    3691cc68dc61:	8d 53 50                                        	lea    edx,[rbx+0x50]
    3691cc68dc64:	41 8d 9f 80 35 00 00                            	lea    ebx,[r15+0x3580]
    3691cc68dc6b:	48 89 9d b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],rbx
    3691cc68dc72:	41 8d 9f cc 3c 00 00                            	lea    ebx,[r15+0x3ccc]
    3691cc68dc79:	48 f7 d0                                        	not    rax
    3691cc68dc7c:	49 f7 d0                                        	not    r8
    3691cc68dc7f:	49 f7 d3                                        	not    r11
    3691cc68dc82:	48 f7 d9                                        	neg    rcx
    3691cc68dc85:	48 f7 df                                        	neg    rdi
    3691cc68dc88:	49 f7 dc                                        	neg    r12
    3691cc68dc8b:	44 8b 7d e0                                     	mov    r15d,DWORD PTR [rbp-0x20]
    3691cc68dc8f:	48 89 85 d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rax
    3691cc68dc96:	41 8d 47 30                                     	lea    eax,[r15+0x30]
    3691cc68dc9a:	4c 89 85 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r8
    3691cc68dca1:	45 8d 47 20                                     	lea    r8d,[r15+0x20]
    3691cc68dca5:	4c 89 9d 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r11
    3691cc68dcac:	45 8d 5f 10                                     	lea    r11d,[r15+0x10]
    3691cc68dcb0:	c4 41 79 7e df                                  	vmovd  r15d,xmm11
    3691cc68dcb5:	48 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rcx
    3691cc68dcbc:	c4 63 79 16 d9 01                               	vpextrd ecx,xmm11,0x1
    3691cc68dcc2:	c4 62 79 18 c8                                  	vbroadcastss xmm9,xmm0
    3691cc68dcc7:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    3691cc68dccc:	c4 42 79 18 f4                                  	vbroadcastss xmm14,xmm12
    3691cc68dcd1:	c4 c2 79 18 cd                                  	vbroadcastss xmm1,xmm13
    3691cc68dcd6:	c4 e2 79 18 d6                                  	vbroadcastss xmm2,xmm6
    3691cc68dcdb:	c5 fb 11 bd e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm7
    3691cc68dce3:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    3691cc68dcea:	48 89 95 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rdx
    3691cc68dcf1:	48 89 9d 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],rbx
    3691cc68dcf8:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    3691cc68dcff:	4c 89 a5 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r12
    3691cc68dd06:	48 89 85 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rax
    3691cc68dd0d:	4c 89 85 f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r8
    3691cc68dd14:	4c 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r11
    3691cc68dd1b:	4c 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],r15
    3691cc68dd1f:	48 89 4d c0                                     	mov    QWORD PTR [rbp-0x40],rcx
    3691cc68dd23:	c5 78 11 8d 70 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x290],xmm9
    3691cc68dd2b:	c5 78 11 9d 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm11
    3691cc68dd33:	c5 78 11 b5 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm14
    3691cc68dd3b:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    3691cc68dd43:	c5 f8 11 95 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm2
    3691cc68dd4b:	33 c0                                           	xor    eax,eax
    3691cc68dd4d:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc68dd54:	e9 3e 00 00 00                                  	jmp    0x3691cc68dd97
    3691cc68dd59:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc68dd62:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc68dd6b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc68dd74:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc68dd7d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    3691cc68dd80:	4c 89 9d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r11
    3691cc68dd87:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
    3691cc68dd8e:	44 8b f8                                        	mov    r15d,eax
    3691cc68dd91:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    3691cc68dd97:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    3691cc68dd9b:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc68dda1:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
    3691cc68dda8:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
    3691cc68ddaf:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc68ddb4:	0f 85 e1 86 00 00                               	jne    0x3691cc69649b
    3691cc68ddba:	45 8d 47 01                                     	lea    r8d,[r15+0x1]
    3691cc68ddbe:	41 bb 0f 00 00 00                               	mov    r11d,0xf
    3691cc68ddc4:	41 b9 03 00 00 00                               	mov    r9d,0x3
    3691cc68ddca:	44 3b 45 c0                                     	cmp    r8d,DWORD PTR [rbp-0x40]
    3691cc68ddce:	45 0f 4c cb                                     	cmovl  r9d,r11d
    3691cc68ddd2:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    3691cc68ddda:	83 e2 7c                                        	and    edx,0x7c
    3691cc68dddd:	46 8d 3c 85 00 00 00 00                         	lea    r15d,[r8*4+0x0]
    3691cc68dde5:	41 83 e7 7c                                     	and    r15d,0x7c
    3691cc68dde9:	4c 89 85 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r8
    3691cc68ddf0:	4c 89 8d a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r9
    3691cc68ddf7:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
    3691cc68ddfe:	4c 89 bd 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],r15
    3691cc68de05:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    3691cc68de0c:	48 8b 85 08 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xf8]
    3691cc68de13:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
    3691cc68de17:	4d 8b fb                                        	mov    r15,r11
    3691cc68de1a:	4c 8b 9d 40 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x3c0]
    3691cc68de21:	44 8b 85 38 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3c8]
    3691cc68de28:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    3691cc68de2f:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    3691cc68de36:	48 8b d1                                        	mov    rdx,rcx
    3691cc68de39:	e9 0f 00 00 00                                  	jmp    0x3691cc68de4d
    3691cc68de3e:	66 90                                           	xchg   ax,ax
    3691cc68de40:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    3691cc68de46:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
    3691cc68de4d:	48 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rax
    3691cc68de54:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc68de59:	0f 85 ab 86 00 00                               	jne    0x3691cc69650a
    3691cc68de5f:	49 8b db                                        	mov    rbx,r11
    3691cc68de62:	48 2b 9d 18 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x3e8]
    3691cc68de69:	48 3b 9d 28 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3d8]
    3691cc68de70:	0f 8c b2 84 00 00                               	jl     0x3691cc696328
    3691cc68de76:	49 8b c9                                        	mov    rcx,r9
    3691cc68de79:	48 2b 8d 88 fc ff ff                            	sub    rcx,QWORD PTR [rbp-0x378]
    3691cc68de80:	48 3b 8d 98 fc ff ff                            	cmp    rcx,QWORD PTR [rbp-0x368]
    3691cc68de87:	0f 8c 9b 84 00 00                               	jl     0x3691cc696328
    3691cc68de8d:	48 2b 85 c8 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x338]
    3691cc68de94:	48 3b 85 50 fc ff ff                            	cmp    rax,QWORD PTR [rbp-0x3b0]
    3691cc68de9b:	0f 8c 87 84 00 00                               	jl     0x3691cc696328
    3691cc68dea1:	41 8d 78 01                                     	lea    edi,[r8+0x1]
    3691cc68dea5:	41 bc 05 00 00 00                               	mov    r12d,0x5
    3691cc68deab:	3b 7d 98                                        	cmp    edi,DWORD PTR [rbp-0x68]
    3691cc68deae:	45 0f 4c e7                                     	cmovl  r12d,r15d
    3691cc68deb2:	44 8b bd a8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x358]
    3691cc68deb9:	45 23 fc                                        	and    r15d,r12d
    3691cc68debc:	48 3b 9d 20 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3e0]
    3691cc68dec3:	0f 8e 29 00 00 00                               	jle    0x3691cc68def2
    3691cc68dec9:	48 3b 8d f8 fd ff ff                            	cmp    rcx,QWORD PTR [rbp-0x208]
    3691cc68ded0:	0f 8e 1c 00 00 00                               	jle    0x3691cc68def2
    3691cc68ded6:	48 3b d0                                        	cmp    rdx,rax
    3691cc68ded9:	0f 8d 13 00 00 00                               	jge    0x3691cc68def2
    3691cc68dedf:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    3691cc68dee6:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    3691cc68deed:	e9 cd 01 00 00                                  	jmp    0x3691cc68e0bf
    3691cc68def2:	c4 e1 f9 6e d9                                  	vmovq  xmm3,rcx
    3691cc68def7:	c5 fb 12 db                                     	vmovddup xmm3,xmm3
    3691cc68defb:	4c 8b e1                                        	mov    r12,rcx
    3691cc68defe:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
    3691cc68df05:	c4 c3 e1 22 dc 01                               	vpinsrq xmm3,xmm3,r12,0x1
    3691cc68df0b:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    3691cc68df0f:	c5 d1 73 f5 1f                                  	vpsllq xmm5,xmm5,0x1f
    3691cc68df14:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc68df18:	c4 e2 61 37 fd                                  	vpcmpgtq xmm7,xmm3,xmm5
    3691cc68df1d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    3691cc68df21:	c5 e1 db ff                                     	vpand  xmm7,xmm3,xmm7
    3691cc68df25:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc68df2a:	c5 e1 76 db                                     	vpcmpeqd xmm3,xmm3,xmm3
    3691cc68df2e:	c5 e1 73 d3 21                                  	vpsrlq xmm3,xmm3,0x21
    3691cc68df33:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc68df37:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    3691cc68df3c:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    3691cc68df40:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc68df45:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc68df4a:	48 03 ce                                        	add    rcx,rsi
    3691cc68df4d:	c4 61 f9 6e c9                                  	vmovq  xmm9,rcx
    3691cc68df52:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    3691cc68df57:	4c 03 e6                                        	add    r12,rsi
    3691cc68df5a:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
    3691cc68df60:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    3691cc68df65:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    3691cc68df69:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    3691cc68df6e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc68df73:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    3691cc68df78:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    3691cc68df7c:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    3691cc68df81:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc68df86:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    3691cc68df8c:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
    3691cc68df90:	c4 e1 f9 6e fb                                  	vmovq  xmm7,rbx
    3691cc68df95:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
    3691cc68df99:	48 8b cb                                        	mov    rcx,rbx
    3691cc68df9c:	48 2b 8d 18 fd ff ff                            	sub    rcx,QWORD PTR [rbp-0x2e8]
    3691cc68dfa3:	c4 e3 c1 22 f9 01                               	vpinsrq xmm7,xmm7,rcx,0x1
    3691cc68dfa9:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
    3691cc68dfae:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    3691cc68dfb2:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc68dfb7:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc68dfbc:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    3691cc68dfc1:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    3691cc68dfc5:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc68dfca:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc68dfcf:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    3691cc68dfd6:	48 03 da                                        	add    rbx,rdx
    3691cc68dfd9:	c4 61 f9 6e cb                                  	vmovq  xmm9,rbx
    3691cc68dfde:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    3691cc68dfe3:	48 8d 1c 0a                                     	lea    rbx,[rdx+rcx*1]
    3691cc68dfe7:	c4 63 b1 22 cb 01                               	vpinsrq xmm9,xmm9,rbx,0x1
    3691cc68dfed:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    3691cc68dff2:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    3691cc68dff6:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    3691cc68dffb:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc68e000:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    3691cc68e005:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    3691cc68e009:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    3691cc68e00e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc68e013:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    3691cc68e019:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    3691cc68e01d:	41 0b dc                                        	or     ebx,r12d
    3691cc68e020:	c4 e1 f9 6e f8                                  	vmovq  xmm7,rax
    3691cc68e025:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
    3691cc68e029:	4c 8b e0                                        	mov    r12,rax
    3691cc68e02c:	4c 2b a5 00 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x300]
    3691cc68e033:	c4 c3 c1 22 fc 01                               	vpinsrq xmm7,xmm7,r12,0x1
    3691cc68e039:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
    3691cc68e03e:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    3691cc68e042:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc68e047:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc68e04c:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    3691cc68e051:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    3691cc68e055:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc68e05a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc68e05f:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    3691cc68e066:	48 03 c1                                        	add    rax,rcx
    3691cc68e069:	c4 61 f9 6e c8                                  	vmovq  xmm9,rax
    3691cc68e06e:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    3691cc68e073:	4c 03 e1                                        	add    r12,rcx
    3691cc68e076:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
    3691cc68e07c:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    3691cc68e081:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    3691cc68e085:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    3691cc68e08a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc68e08f:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    3691cc68e094:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    3691cc68e098:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    3691cc68e09d:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc68e0a2:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    3691cc68e0a8:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
    3691cc68e0ac:	44 0b e3                                        	or     r12d,ebx
    3691cc68e0af:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    3691cc68e0b3:	45 23 e7                                        	and    r12d,r15d
    3691cc68e0b6:	0f 84 6c 82 00 00                               	je     0x3691cc696328
    3691cc68e0bc:	4d 8b fc                                        	mov    r15,r12
    3691cc68e0bf:	45 33 e4                                        	xor    r12d,r12d
    3691cc68e0c2:	3b 7d 10                                        	cmp    edi,DWORD PTR [rbp+0x10]
    3691cc68e0c5:	41 0f 9c c4                                     	setl   r12b
    3691cc68e0c9:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
    3691cc68e0cd:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    3691cc68e0d4:	48 89 bd 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rdi
    3691cc68e0db:	4c 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r15
    3691cc68e0e2:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    3691cc68e0e8:	41 85 c4                                        	test   r12d,eax
    3691cc68e0eb:	0f 85 a1 65 00 00                               	jne    0x3691cc694692
    3691cc68e0f1:	83 bd 30 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3d0],0x0
    3691cc68e0f8:	0f 85 80 2a 00 00                               	jne    0x3691cc690b7e
    3691cc68e0fe:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    3691cc68e102:	41 f6 c7 01                                     	test   r15b,0x1
    3691cc68e106:	0f 85 22 00 00 00                               	jne    0x3691cc68e12e
    3691cc68e10c:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc68e110:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    3691cc68e114:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    3691cc68e11b:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    3691cc68e122:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc68e129:	e9 67 0a 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e12e:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc68e132:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    3691cc68e136:	41 8b bc 1c c8 3c 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x3cc8]
    3691cc68e13e:	41 83 bc 1c c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x3cc8],0x0
    3691cc68e147:	0f 85 0c 00 00 00                               	jne    0x3691cc68e159
    3691cc68e14d:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    3691cc68e154:	e9 4e 00 00 00                                  	jmp    0x3691cc68e1a7
    3691cc68e159:	41 8b f8                                        	mov    edi,r8d
    3691cc68e15c:	c1 ef 03                                        	shr    edi,0x3
    3691cc68e15f:	83 e7 03                                        	and    edi,0x3
    3691cc68e162:	0b bd 68 fe ff ff                               	or     edi,DWORD PTR [rbp-0x198]
    3691cc68e168:	44 8b bd 88 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x178]
    3691cc68e16f:	41 03 ff                                        	add    edi,r15d
    3691cc68e172:	41 0f b6 3c 3c                                  	movzx  edi,BYTE PTR [r12+rdi*1]
    3691cc68e177:	45 8b f8                                        	mov    r15d,r8d
    3691cc68e17a:	41 83 e7 07                                     	and    r15d,0x7
    3691cc68e17e:	41 8b cf                                        	mov    ecx,r15d
    3691cc68e181:	d3 e7                                           	shl    edi,cl
    3691cc68e183:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    3691cc68e18a:	40 f6 c7 80                                     	test   dil,0x80
    3691cc68e18e:	0f 85 13 00 00 00                               	jne    0x3691cc68e1a7
    3691cc68e194:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    3691cc68e19b:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc68e1a2:	e9 ee 09 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e1a7:	c4 c1 82 2a fb                                  	vcvtsi2ss xmm7,xmm15,r11
    3691cc68e1ac:	c5 ca 59 ff                                     	vmulss xmm7,xmm6,xmm7
    3691cc68e1b0:	c5 12 59 cf                                     	vmulss xmm9,xmm13,xmm7
    3691cc68e1b4:	c4 41 82 2a d9                                  	vcvtsi2ss xmm11,xmm15,r9
    3691cc68e1b9:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    3691cc68e1be:	c4 c1 1a 59 db                                  	vmulss xmm3,xmm12,xmm11
    3691cc68e1c3:	c5 b2 58 eb                                     	vaddss xmm5,xmm9,xmm3
    3691cc68e1c7:	c5 ba 5c f7                                     	vsubss xmm6,xmm8,xmm7
    3691cc68e1cb:	c4 c1 4a 5c f3                                  	vsubss xmm6,xmm6,xmm11
    3691cc68e1d0:	c5 2a 59 e6                                     	vmulss xmm12,xmm10,xmm6
    3691cc68e1d4:	c4 c1 52 58 ec                                  	vaddss xmm5,xmm5,xmm12
    3691cc68e1d9:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
    3691cc68e1dd:	73 b5                                           	jae    0x3691cc68e194
    3691cc68e1df:	c4 81 4a 59 74 3c 18                            	vmulss xmm6,xmm6,DWORD PTR [r12+r15*1+0x18]
    3691cc68e1e6:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc68e1ed:	c4 c1 42 59 7c 3c 18                            	vmulss xmm7,xmm7,DWORD PTR [r12+rdi*1+0x18]
    3691cc68e1f4:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    3691cc68e1fb:	c4 41 22 59 5c 0c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rcx*1+0x18]
    3691cc68e202:	c4 c1 42 58 fb                                  	vaddss xmm7,xmm7,xmm11
    3691cc68e207:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc68e20b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    3691cc68e20f:	45 8b 5c 1c 68                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x68]
    3691cc68e214:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    3691cc68e21a:	0f 84 c6 00 00 00                               	je     0x3691cc68e2e6
    3691cc68e220:	45 8b 9c 1c a4 00 00 00                         	mov    r11d,DWORD PTR [r12+rbx*1+0xa4]
    3691cc68e228:	41 83 bc 1c a4 00 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0xa4],0x0
    3691cc68e231:	0f 85 af 00 00 00                               	jne    0x3691cc68e2e6
    3691cc68e237:	45 8b 5c 1c 0c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0xc]
    3691cc68e23c:	41 8b 04 1c                                     	mov    eax,DWORD PTR [r12+rbx*1]
    3691cc68e240:	0f af 85 e0 fc ff ff                            	imul   eax,DWORD PTR [rbp-0x320]
    3691cc68e247:	45 8d 1c 83                                     	lea    r11d,[r11+rax*4]
    3691cc68e24b:	47 8d 1c 83                                     	lea    r11d,[r11+r8*4]
    3691cc68e24f:	c4 81 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+r11*1]
    3691cc68e255:	45 8b 5c 1c 6c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x6c]
    3691cc68e25a:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
    3691cc68e261:	41 83 fb 08                                     	cmp    r11d,0x8
    3691cc68e265:	0f 83 0b 00 00 00                               	jae    0x3691cc68e276
    3691cc68e26b:	4c 8d 15 ce 86 00 00                            	lea    r10,[rip+0x86ce]        # 0x3691cc696940
    3691cc68e272:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
    3691cc68e276:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68e27a:	0f 87 66 00 00 00                               	ja     0x3691cc68e2e6
    3691cc68e280:	e9 10 09 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e285:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    3691cc68e289:	0f 83 57 00 00 00                               	jae    0x3691cc68e2e6
    3691cc68e28f:	e9 01 09 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e294:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    3691cc68e298:	0f 8a 48 00 00 00                               	jp     0x3691cc68e2e6
    3691cc68e29e:	0f 84 f1 08 00 00                               	je     0x3691cc68eb95
    3691cc68e2a4:	e9 3d 00 00 00                                  	jmp    0x3691cc68e2e6
    3691cc68e2a9:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    3691cc68e2ad:	0f 87 33 00 00 00                               	ja     0x3691cc68e2e6
    3691cc68e2b3:	e9 dd 08 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e2b8:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68e2bc:	0f 83 24 00 00 00                               	jae    0x3691cc68e2e6
    3691cc68e2c2:	e9 ce 08 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e2c7:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    3691cc68e2cb:	0f 8a c4 08 00 00                               	jp     0x3691cc68eb95
    3691cc68e2d1:	0f 84 0f 00 00 00                               	je     0x3691cc68e2e6
    3691cc68e2d7:	e9 b9 08 00 00                                  	jmp    0x3691cc68eb95
    3691cc68e2dc:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68e2e0:	0f 86 af 08 00 00                               	jbe    0x3691cc68eb95
    3691cc68e2e6:	c5 ba 5e fd                                     	vdivss xmm7,xmm8,xmm5
    3691cc68e2ea:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    3691cc68e2ee:	c4 62 79 18 df                                  	vbroadcastss xmm11,xmm7
    3691cc68e2f3:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    3691cc68e2fa:	c4 c2 79 18 c4                                  	vbroadcastss xmm0,xmm12
    3691cc68e2ff:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc68e303:	c4 c1 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+rdi*1+0x20]
    3691cc68e30a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    3691cc68e312:	c4 c2 79 18 f1                                  	vbroadcastss xmm6,xmm9
    3691cc68e317:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc68e31b:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    3691cc68e320:	c5 fb 11 bd 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm7
    3691cc68e328:	c4 c1 7a 6f 7c 0c 20                            	vmovdqu xmm7,XMMWORD PTR [r12+rcx*1+0x20]
    3691cc68e32f:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    3691cc68e333:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    3691cc68e337:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc68e33b:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    3691cc68e33f:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc68e343:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
    3691cc68e34d:	c4 81 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+r15*1+0x98]
    3691cc68e357:	c4 c1 7a 10 bc 3c 98 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rdi*1+0x98]
    3691cc68e361:	c4 41 7a 10 9c 0c 98 00 00 00                   	vmovss xmm11,DWORD PTR [r12+rcx*1+0x98]
    3691cc68e36b:	c4 81 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm0
    3691cc68e371:	48 8b 85 a8 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x258]
    3691cc68e378:	41 8b bc 04 34 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x134]
    3691cc68e380:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    3691cc68e384:	c5 fb 11 9d 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm3
    3691cc68e38c:	c5 7b 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm9
    3691cc68e394:	c5 7b 11 a5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm12
    3691cc68e39c:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
    3691cc68e3a4:	c5 fb 11 bd 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm7
    3691cc68e3ac:	c5 7b 11 9d 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm11
    3691cc68e3b4:	41 83 f8 01                                     	cmp    r8d,0x1
    3691cc68e3b8:	0f 86 64 04 00 00                               	jbe    0x3691cc68e822
    3691cc68e3be:	41 8b bc 04 30 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x130]
    3691cc68e3c6:	41 83 bc 04 30 01 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0x130],0x0
    3691cc68e3cf:	0f 85 0e 00 00 00                               	jne    0x3691cc68e3e3
    3691cc68e3d5:	41 8b cb                                        	mov    ecx,r11d
    3691cc68e3d8:	4d 8b c4                                        	mov    r8,r12
    3691cc68e3db:	48 8b f8                                        	mov    rdi,rax
    3691cc68e3de:	e9 02 05 00 00                                  	jmp    0x3691cc68e8e5
    3691cc68e3e3:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
    3691cc68e3ea:	45 8d 43 70                                     	lea    r8d,[r11+0x70]
    3691cc68e3ee:	41 50                                           	push   r8
    3691cc68e3f0:	48 89 bd a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rdi
    3691cc68e3f7:	4c 8b c2                                        	mov    r8,rdx
    3691cc68e3fa:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e3fe:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc68e401:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    3691cc68e407:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    3691cc68e40d:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    3691cc68e413:	c4 c1 79 28 c9                                  	vmovapd xmm1,xmm9
    3691cc68e418:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    3691cc68e41c:	c4 c1 79 28 dc                                  	vmovapd xmm3,xmm12
    3691cc68e421:	c5 fb 10 a5 30 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xd0]
    3691cc68e429:	44 8b cf                                        	mov    r9d,edi
    3691cc68e42c:	e8 e7 2d f3 ff                                  	call   0x3691cc5c1218
    3691cc68e431:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68e435:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68e43c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc68e444:	45 85 db                                        	test   r11d,r11d
    3691cc68e447:	0f 85 61 01 00 00                               	jne    0x3691cc68e5ae
    3691cc68e44d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e450:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc68e455:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc68e45b:	0f 84 43 00 00 00                               	je     0x3691cc68e4a4
    3691cc68e461:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68e467:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68e46b:	41 53                                           	push   r11
    3691cc68e46d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e471:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc68e477:	33 d2                                           	xor    edx,edx
    3691cc68e479:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68e480:	e8 bb 2d f3 ff                                  	call   0x3691cc5c1240
    3691cc68e485:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e488:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68e48c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68e493:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68e49d:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68e4a4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc68e4a9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc68e4af:	0f 84 46 00 00 00                               	je     0x3691cc68e4fb
    3691cc68e4b5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68e4bb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68e4bf:	41 53                                           	push   r11
    3691cc68e4c1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e4c5:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    3691cc68e4cb:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc68e4d0:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68e4d7:	e8 64 2d f3 ff                                  	call   0x3691cc5c1240
    3691cc68e4dc:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e4df:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68e4e3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68e4ea:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68e4f4:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68e4fb:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc68e500:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc68e506:	0f 84 46 00 00 00                               	je     0x3691cc68e552
    3691cc68e50c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68e512:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68e516:	41 53                                           	push   r11
    3691cc68e518:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e51c:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    3691cc68e522:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc68e527:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68e52e:	e8 0d 2d f3 ff                                  	call   0x3691cc5c1240
    3691cc68e533:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e536:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68e53a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68e541:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68e54b:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68e552:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc68e557:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc68e55d:	0f 84 82 03 00 00                               	je     0x3691cc68e8e5
    3691cc68e563:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68e569:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68e56d:	41 53                                           	push   r11
    3691cc68e56f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e573:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    3691cc68e579:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc68e57e:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68e585:	e8 b6 2c f3 ff                                  	call   0x3691cc5c1240
    3691cc68e58a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e58d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68e591:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68e598:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68e5a2:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68e5a9:	e9 37 03 00 00                                  	jmp    0x3691cc68e8e5
    3691cc68e5ae:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e5b1:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    3691cc68e5bb:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc68e5c1:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc68e5c6:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68e5ca:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    3691cc68e5d1:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc68e5d5:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc68e5d9:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    3691cc68e5e3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc68e5e7:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    3691cc68e5ed:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc68e5f1:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc68e5f6:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    3691cc68e600:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc68e604:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    3691cc68e60b:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc68e60f:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc68e613:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc68e617:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68e61b:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc68e621:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc68e626:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc68e62a:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc68e62e:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc68e633:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc68e638:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc68e63c:	0f 87 09 00 00 00                               	ja     0x3691cc68e64b
    3691cc68e642:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc68e646:	e9 04 00 00 00                                  	jmp    0x3691cc68e64f
    3691cc68e64b:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc68e64f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc68e654:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc68e658:	0f 87 09 00 00 00                               	ja     0x3691cc68e667
    3691cc68e65e:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc68e662:	e9 05 00 00 00                                  	jmp    0x3691cc68e66c
    3691cc68e667:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc68e66c:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc68e671:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc68e675:	0f 84 a4 00 00 00                               	je     0x3691cc68e71f
    3691cc68e67b:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc68e67f:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    3691cc68e689:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68e68d:	0f 87 09 00 00 00                               	ja     0x3691cc68e69c
    3691cc68e693:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc68e697:	e9 04 00 00 00                                  	jmp    0x3691cc68e6a0
    3691cc68e69c:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc68e6a0:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68e6a4:	0f 87 0a 00 00 00                               	ja     0x3691cc68e6b4
    3691cc68e6aa:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68e6af:	e9 05 00 00 00                                  	jmp    0x3691cc68e6b9
    3691cc68e6b4:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68e6b9:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc68e6bd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc68e6c2:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc68e6c7:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68e6cb:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    3691cc68e6d5:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc68e6da:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc68e6df:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc68e6e3:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc68e6ed:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc68e6f1:	0f 85 04 00 00 00                               	jne    0x3691cc68e6fb
    3691cc68e6f7:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc68e6fb:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc68e700:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68e704:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc68e708:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    3691cc68e712:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc68e717:	4d 8b dc                                        	mov    r11,r12
    3691cc68e71a:	e9 cc 00 00 00                                  	jmp    0x3691cc68e7eb
    3691cc68e71f:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    3691cc68e726:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68e72a:	0f 87 09 00 00 00                               	ja     0x3691cc68e739
    3691cc68e730:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc68e734:	e9 04 00 00 00                                  	jmp    0x3691cc68e73d
    3691cc68e739:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc68e73d:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68e741:	0f 87 0a 00 00 00                               	ja     0x3691cc68e751
    3691cc68e747:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68e74c:	e9 05 00 00 00                                  	jmp    0x3691cc68e756
    3691cc68e751:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68e756:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc68e760:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc68e766:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc68e76b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68e76f:	0f 87 09 00 00 00                               	ja     0x3691cc68e77e
    3691cc68e775:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc68e779:	e9 04 00 00 00                                  	jmp    0x3691cc68e782
    3691cc68e77e:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc68e782:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68e786:	0f 87 0a 00 00 00                               	ja     0x3691cc68e796
    3691cc68e78c:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc68e791:	e9 05 00 00 00                                  	jmp    0x3691cc68e79b
    3691cc68e796:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68e79b:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    3691cc68e7a5:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc68e7aa:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc68e7ae:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    3691cc68e7b8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc68e7bd:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc68e7c2:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc68e7c6:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x3691cc68e6cd
    3691cc68e7cd:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc68e7d2:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc68e7d7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc68e7db:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc68e7df:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc68e7e3:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc68e7e7:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc68e7eb:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc68e7f0:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68e7f4:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x3691cc68e6cd
    3691cc68e7fb:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc68e800:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc68e805:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc68e809:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68e813:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    3691cc68e81d:	e9 c3 00 00 00                                  	jmp    0x3691cc68e8e5
    3691cc68e822:	4d 8b c7                                        	mov    r8,r15
    3691cc68e825:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    3691cc68e82c:	c4 c1 7a 59 c4                                  	vmulss xmm0,xmm0,xmm12
    3691cc68e831:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    3691cc68e838:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    3691cc68e83f:	c4 c1 52 59 e9                                  	vmulss xmm5,xmm5,xmm9
    3691cc68e844:	c4 c1 62 59 74 0c 50                            	vmulss xmm6,xmm3,DWORD PTR [r12+rcx*1+0x50]
    3691cc68e84b:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc68e84f:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68e853:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    3691cc68e85b:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68e85f:	c4 81 7a 10 6c 04 54                            	vmovss xmm5,DWORD PTR [r12+r8*1+0x54]
    3691cc68e866:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    3691cc68e86b:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
    3691cc68e873:	c4 81 7a 10 44 3c 54                            	vmovss xmm0,DWORD PTR [r12+r15*1+0x54]
    3691cc68e87a:	c4 c1 7a 59 c1                                  	vmulss xmm0,xmm0,xmm9
    3691cc68e87f:	c4 c1 62 59 7c 0c 54                            	vmulss xmm7,xmm3,DWORD PTR [r12+rcx*1+0x54]
    3691cc68e886:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    3691cc68e88a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc68e88e:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68e892:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    3691cc68e899:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
    3691cc68e8a0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e8a4:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc68e8a7:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    3691cc68e8ad:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
    3691cc68e8b5:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc68e8b9:	41 8b cb                                        	mov    ecx,r11d
    3691cc68e8bc:	8b df                                           	mov    ebx,edi
    3691cc68e8be:	e8 6d 2c f3 ff                                  	call   0x3691cc5c1530
    3691cc68e8c3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68e8c6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68e8ca:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    3691cc68e8d4:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68e8de:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68e8e5:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc68e8e9:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc68e8f1:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc68e8fa:	0f 85 2a 00 00 00                               	jne    0x3691cc68e92a
    3691cc68e900:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc68e90a:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc68e914:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc68e91e:	49 8b fb                                        	mov    rdi,r11
    3691cc68e921:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc68e925:	e9 d4 01 00 00                                  	jmp    0x3691cc68eafe
    3691cc68e92a:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    3691cc68e932:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
    3691cc68e93a:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    3691cc68e942:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
    3691cc68e94a:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    3691cc68e952:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    3691cc68e95a:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc68e95e:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68e962:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    3691cc68e96a:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68e96e:	4c 8b 15 71 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe871]        # 0x3691cc68d1e6
    3691cc68e975:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68e97a:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc68e97e:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc68e982:	0f 87 04 00 00 00                               	ja     0x3691cc68e98c
    3691cc68e988:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc68e98c:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc68e994:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc68e99b:	0f 85 28 00 00 00                               	jne    0x3691cc68e9c9
    3691cc68e9a1:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc68e9ab:	4c 8b 15 34 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe834]        # 0x3691cc68d1e6
    3691cc68e9b2:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc68e9b7:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc68e9bb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68e9bf:	e8 fc 4b f3 ff                                  	call   0x3691cc5c35c0
    3691cc68e9c4:	e9 8b 00 00 00                                  	jmp    0x3691cc68ea54
    3691cc68e9c9:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc68e9cd:	0f 84 5e 00 00 00                               	je     0x3691cc68ea31
    3691cc68e9d3:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    3691cc68e9dd:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    3691cc68e9e7:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc68e9ec:	7a 06                                           	jp     0x3691cc68e9f4
    3691cc68e9ee:	0f 84 2a 00 00 00                               	je     0x3691cc68ea1e
    3691cc68e9f4:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc68e9f8:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc68e9fd:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc68ea01:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc68ea05:	0f 86 49 00 00 00                               	jbe    0x3691cc68ea54
    3691cc68ea0b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68ea0f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68ea14:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68ea19:	e9 5b 00 00 00                                  	jmp    0x3691cc68ea79
    3691cc68ea1e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68ea22:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68ea27:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68ea2c:	e9 44 00 00 00                                  	jmp    0x3691cc68ea75
    3691cc68ea31:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc68ea3b:	4c 8b 15 a4 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a4]        # 0x3691cc68d1e6
    3691cc68ea42:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68ea47:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc68ea4b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68ea4f:	e8 6c 4b f3 ff                                  	call   0x3691cc5c35c0
    3691cc68ea54:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68ea58:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68ea5d:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68ea62:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc68ea66:	0f 87 09 00 00 00                               	ja     0x3691cc68ea75
    3691cc68ea6c:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc68ea70:	e9 04 00 00 00                                  	jmp    0x3691cc68ea79
    3691cc68ea75:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc68ea79:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68ea7c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68ea80:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc68ea8a:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc68ea8e:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    3691cc68ea92:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc68ea9c:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc68eaa1:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    3691cc68eaab:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    3691cc68eab5:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc68eabf:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc68eac4:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    3691cc68eace:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    3691cc68ead8:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc68eae2:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc68eae7:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    3691cc68eaf1:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc68eaf5:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc68eaf9:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc68eafe:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    3691cc68eb08:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68eb0c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc68eb0f:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    3691cc68eb12:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
    3691cc68eb18:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    3691cc68eb20:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc68eb24:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc68eb28:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc68eb2d:	e8 2e 27 f3 ff                                  	call   0x3691cc5c1260
    3691cc68eb32:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc68eb36:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    3691cc68eb3a:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68eb3e:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    3691cc68eb45:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc68eb4a:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc68eb50:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc68eb56:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc68eb5a:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    3691cc68eb61:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    3691cc68eb68:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc68eb6f:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    3691cc68eb76:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    3691cc68eb7d:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc68eb85:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc68eb8d:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc68eb95:	f6 85 b0 fd ff ff 02                            	test   BYTE PTR [rbp-0x250],0x2
    3691cc68eb9c:	0f 85 29 00 00 00                               	jne    0x3691cc68ebcb
    3691cc68eba2:	4d 8b dc                                        	mov    r11,r12
    3691cc68eba5:	4c 8b e3                                        	mov    r12,rbx
    3691cc68eba8:	48 8b c1                                        	mov    rax,rcx
    3691cc68ebab:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc68ebb1:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    3691cc68ebb9:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc68ebc1:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    3691cc68ebc6:	e9 ab 0a 00 00                                  	jmp    0x3691cc68f676
    3691cc68ebcb:	4d 8b dc                                        	mov    r11,r12
    3691cc68ebce:	4c 8b e3                                        	mov    r12,rbx
    3691cc68ebd1:	43 8b 84 23 c8 3c 00 00                         	mov    eax,DWORD PTR [r11+r12*1+0x3cc8]
    3691cc68ebd9:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
    3691cc68ebe2:	0f 84 6e 00 00 00                               	je     0x3691cc68ec56
    3691cc68ebe8:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    3691cc68ebee:	c1 e8 03                                        	shr    eax,0x3
    3691cc68ebf1:	83 e0 03                                        	and    eax,0x3
    3691cc68ebf4:	8b 9d 68 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x198]
    3691cc68ebfa:	0b d8                                           	or     ebx,eax
    3691cc68ebfc:	8b 85 88 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x178]
    3691cc68ec02:	03 d8                                           	add    ebx,eax
    3691cc68ec04:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
    3691cc68ec09:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
    3691cc68ec10:	41 83 e0 07                                     	and    r8d,0x7
    3691cc68ec14:	4c 8b d1                                        	mov    r10,rcx
    3691cc68ec17:	41 8b c8                                        	mov    ecx,r8d
    3691cc68ec1a:	4d 8b c2                                        	mov    r8,r10
    3691cc68ec1d:	d3 e3                                           	shl    ebx,cl
    3691cc68ec1f:	f6 c3 80                                        	test   bl,0x80
    3691cc68ec22:	0f 85 27 00 00 00                               	jne    0x3691cc68ec4f
    3691cc68ec28:	49 8b c0                                        	mov    rax,r8
    3691cc68ec2b:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68ec2f:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc68ec35:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    3691cc68ec3d:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc68ec45:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    3691cc68ec4a:	e9 27 0a 00 00                                  	jmp    0x3691cc68f676
    3691cc68ec4f:	49 8b c8                                        	mov    rcx,r8
    3691cc68ec52:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68ec56:	48 8b 45 88                                     	mov    rax,QWORD PTR [rbp-0x78]
    3691cc68ec5a:	48 2b 85 18 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2e8]
    3691cc68ec61:	c4 e1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,rax
    3691cc68ec66:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    3691cc68ec6e:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    3691cc68ec72:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    3691cc68ec77:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    3691cc68ec7b:	49 8b c1                                        	mov    rax,r9
    3691cc68ec7e:	48 2b 85 38 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2c8]
    3691cc68ec85:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    3691cc68ec8a:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    3691cc68ec8f:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc68ec97:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    3691cc68ec9c:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    3691cc68eca0:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    3691cc68eca4:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    3691cc68eca9:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    3691cc68ecae:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    3691cc68ecb2:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    3691cc68ecb7:	0f 83 b0 09 00 00                               	jae    0x3691cc68f66d
    3691cc68ecbd:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
    3691cc68ecc4:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
    3691cc68eccb:	48 8b c1                                        	mov    rax,rcx
    3691cc68ecce:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
    3691cc68ecd5:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    3691cc68ecda:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    3691cc68ecde:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    3691cc68ece2:	43 8b 5c 23 68                                  	mov    ebx,DWORD PTR [r11+r12*1+0x68]
    3691cc68ece7:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
    3691cc68eced:	0f 85 0b 00 00 00                               	jne    0x3691cc68ecfe
    3691cc68ecf3:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc68ecf9:	e9 c8 00 00 00                                  	jmp    0x3691cc68edc6
    3691cc68ecfe:	43 8b 9c 23 a4 00 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0xa4]
    3691cc68ed06:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
    3691cc68ed0f:	75 e2                                           	jne    0x3691cc68ecf3
    3691cc68ed11:	43 8b 5c 23 0c                                  	mov    ebx,DWORD PTR [r11+r12*1+0xc]
    3691cc68ed16:	43 8b 0c 23                                     	mov    ecx,DWORD PTR [r11+r12*1]
    3691cc68ed1a:	0f af 8d e0 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x320]
    3691cc68ed21:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    3691cc68ed24:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc68ed2a:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    3691cc68ed2d:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
    3691cc68ed33:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
    3691cc68ed38:	81 eb 00 02 00 00                               	sub    ebx,0x200
    3691cc68ed3e:	83 fb 08                                        	cmp    ebx,0x8
    3691cc68ed41:	0f 83 0b 00 00 00                               	jae    0x3691cc68ed52
    3691cc68ed47:	4c 8d 15 b2 7b 00 00                            	lea    r10,[rip+0x7bb2]        # 0x3691cc696900
    3691cc68ed4e:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    3691cc68ed52:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc68ed56:	0f 87 6a 00 00 00                               	ja     0x3691cc68edc6
    3691cc68ed5c:	e9 15 09 00 00                                  	jmp    0x3691cc68f676
    3691cc68ed61:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68ed66:	0f 83 5a 00 00 00                               	jae    0x3691cc68edc6
    3691cc68ed6c:	e9 05 09 00 00                                  	jmp    0x3691cc68f676
    3691cc68ed71:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68ed76:	0f 8a 4a 00 00 00                               	jp     0x3691cc68edc6
    3691cc68ed7c:	0f 84 f4 08 00 00                               	je     0x3691cc68f676
    3691cc68ed82:	e9 3f 00 00 00                                  	jmp    0x3691cc68edc6
    3691cc68ed87:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68ed8c:	0f 87 34 00 00 00                               	ja     0x3691cc68edc6
    3691cc68ed92:	e9 df 08 00 00                                  	jmp    0x3691cc68f676
    3691cc68ed97:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc68ed9b:	0f 83 25 00 00 00                               	jae    0x3691cc68edc6
    3691cc68eda1:	e9 d0 08 00 00                                  	jmp    0x3691cc68f676
    3691cc68eda6:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68edab:	0f 8a c5 08 00 00                               	jp     0x3691cc68f676
    3691cc68edb1:	0f 84 0f 00 00 00                               	je     0x3691cc68edc6
    3691cc68edb7:	e9 ba 08 00 00                                  	jmp    0x3691cc68f676
    3691cc68edbc:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc68edc0:	0f 86 b0 08 00 00                               	jbe    0x3691cc68f676
    3691cc68edc6:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    3691cc68edcb:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    3691cc68edd0:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    3691cc68edd5:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
    3691cc68eddc:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    3691cc68ede1:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    3691cc68ede5:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
    3691cc68edec:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc68edf1:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc68edf5:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    3691cc68edfa:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    3691cc68ee02:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
    3691cc68ee09:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc68ee0d:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc68ee11:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    3691cc68ee15:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    3691cc68ee19:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc68ee1c:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
    3691cc68ee26:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
    3691cc68ee30:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
    3691cc68ee3a:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
    3691cc68ee44:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
    3691cc68ee4a:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68ee51:	45 8b 84 3b 34 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x134]
    3691cc68ee59:	45 8d 60 ff                                     	lea    r12d,[r8-0x1]
    3691cc68ee5d:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    3691cc68ee65:	c5 fb 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm1
    3691cc68ee6d:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    3691cc68ee75:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    3691cc68ee7d:	c5 fb 11 b5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm6
    3691cc68ee85:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    3691cc68ee8d:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    3691cc68ee95:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc68ee99:	0f 86 50 04 00 00                               	jbe    0x3691cc68f2ef
    3691cc68ee9f:	45 8b 84 3b 30 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x130]
    3691cc68eea7:	41 83 bc 3b 30 01 00 00 00                      	cmp    DWORD PTR [r11+rdi*1+0x130],0x0
    3691cc68eeb0:	0f 85 0a 00 00 00                               	jne    0x3691cc68eec0
    3691cc68eeb6:	8b cb                                           	mov    ecx,ebx
    3691cc68eeb8:	4d 8b c3                                        	mov    r8,r11
    3691cc68eebb:	e9 df 04 00 00                                  	jmp    0x3691cc68f39f
    3691cc68eec0:	44 8d 83 90 00 00 00                            	lea    r8d,[rbx+0x90]
    3691cc68eec7:	44 8d 63 70                                     	lea    r12d,[rbx+0x70]
    3691cc68eecb:	41 54                                           	push   r12
    3691cc68eecd:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    3691cc68eed4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68eed8:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc68eedb:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    3691cc68eee1:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    3691cc68eee7:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    3691cc68eeed:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc68eef2:	45 8b c8                                        	mov    r9d,r8d
    3691cc68eef5:	e8 1e 23 f3 ff                                  	call   0x3691cc5c1218
    3691cc68eefa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68eefe:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68ef05:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc68ef0d:	45 85 db                                        	test   r11d,r11d
    3691cc68ef10:	0f 85 62 01 00 00                               	jne    0x3691cc68f078
    3691cc68ef16:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68ef19:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc68ef1e:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc68ef24:	0f 84 43 00 00 00                               	je     0x3691cc68ef6d
    3691cc68ef2a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68ef30:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68ef34:	41 53                                           	push   r11
    3691cc68ef36:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68ef3a:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc68ef40:	33 d2                                           	xor    edx,edx
    3691cc68ef42:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68ef49:	e8 f2 22 f3 ff                                  	call   0x3691cc5c1240
    3691cc68ef4e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68ef51:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68ef55:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68ef5c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68ef66:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68ef6d:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc68ef72:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc68ef78:	0f 84 46 00 00 00                               	je     0x3691cc68efc4
    3691cc68ef7e:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68ef84:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68ef88:	41 53                                           	push   r11
    3691cc68ef8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68ef8e:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    3691cc68ef94:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc68ef99:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68efa0:	e8 9b 22 f3 ff                                  	call   0x3691cc5c1240
    3691cc68efa5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68efa8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68efac:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68efb3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68efbd:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68efc4:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc68efc9:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc68efcf:	0f 84 46 00 00 00                               	je     0x3691cc68f01b
    3691cc68efd5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68efdb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68efdf:	41 53                                           	push   r11
    3691cc68efe1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68efe5:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    3691cc68efeb:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc68eff0:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68eff7:	e8 44 22 f3 ff                                  	call   0x3691cc5c1240
    3691cc68effc:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68efff:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68f003:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68f00a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68f014:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68f01b:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc68f020:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc68f026:	0f 84 73 03 00 00                               	je     0x3691cc68f39f
    3691cc68f02c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68f032:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68f036:	41 53                                           	push   r11
    3691cc68f038:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f03c:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    3691cc68f042:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc68f047:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    3691cc68f04e:	e8 ed 21 f3 ff                                  	call   0x3691cc5c1240
    3691cc68f053:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68f056:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    3691cc68f05a:	c5 fa 6f 44 0e 50                               	vmovdqu xmm0,XMMWORD PTR [rsi+rcx*1+0x50]
    3691cc68f060:	c5 fa 7f 84 0e 90 01 00 00                      	vmovdqu XMMWORD PTR [rsi+rcx*1+0x190],xmm0
    3691cc68f069:	4c 8b c6                                        	mov    r8,rsi
    3691cc68f06c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68f073:	e9 27 03 00 00                                  	jmp    0x3691cc68f39f
    3691cc68f078:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68f07b:	4d 8b e0                                        	mov    r12,r8
    3691cc68f07e:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    3691cc68f088:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc68f08e:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc68f093:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68f097:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    3691cc68f09e:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc68f0a2:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc68f0a6:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    3691cc68f0b0:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc68f0b4:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    3691cc68f0ba:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc68f0be:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc68f0c3:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    3691cc68f0cd:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc68f0d1:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    3691cc68f0d8:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc68f0dc:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc68f0e0:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc68f0e4:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68f0e8:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc68f0ee:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc68f0f3:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc68f0f7:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc68f0fb:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc68f100:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc68f105:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc68f109:	0f 87 09 00 00 00                               	ja     0x3691cc68f118
    3691cc68f10f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc68f113:	e9 04 00 00 00                                  	jmp    0x3691cc68f11c
    3691cc68f118:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc68f11c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc68f121:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc68f125:	0f 87 09 00 00 00                               	ja     0x3691cc68f134
    3691cc68f12b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc68f12f:	e9 05 00 00 00                                  	jmp    0x3691cc68f139
    3691cc68f134:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc68f139:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc68f13e:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc68f142:	0f 84 a1 00 00 00                               	je     0x3691cc68f1e9
    3691cc68f148:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    3691cc68f14c:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    3691cc68f156:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68f15a:	0f 87 09 00 00 00                               	ja     0x3691cc68f169
    3691cc68f160:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc68f164:	e9 04 00 00 00                                  	jmp    0x3691cc68f16d
    3691cc68f169:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc68f16d:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68f171:	0f 87 0a 00 00 00                               	ja     0x3691cc68f181
    3691cc68f177:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68f17c:	e9 05 00 00 00                                  	jmp    0x3691cc68f186
    3691cc68f181:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68f186:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc68f18a:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc68f18f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc68f194:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68f198:	4c 8b 15 2e f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52e]        # 0x3691cc68e6cd
    3691cc68f19f:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc68f1a4:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc68f1a9:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc68f1ad:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc68f1b7:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc68f1bb:	0f 85 04 00 00 00                               	jne    0x3691cc68f1c5
    3691cc68f1c1:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc68f1c5:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc68f1ca:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68f1ce:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc68f1d2:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    3691cc68f1dc:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc68f1e1:	4d 8b df                                        	mov    r11,r15
    3691cc68f1e4:	e9 cc 00 00 00                                  	jmp    0x3691cc68f2b5
    3691cc68f1e9:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    3691cc68f1f0:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68f1f4:	0f 87 09 00 00 00                               	ja     0x3691cc68f203
    3691cc68f1fa:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc68f1fe:	e9 04 00 00 00                                  	jmp    0x3691cc68f207
    3691cc68f203:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc68f207:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68f20b:	0f 87 0a 00 00 00                               	ja     0x3691cc68f21b
    3691cc68f211:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68f216:	e9 05 00 00 00                                  	jmp    0x3691cc68f220
    3691cc68f21b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68f220:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc68f22a:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc68f230:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc68f235:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68f239:	0f 87 09 00 00 00                               	ja     0x3691cc68f248
    3691cc68f23f:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc68f243:	e9 04 00 00 00                                  	jmp    0x3691cc68f24c
    3691cc68f248:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc68f24c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68f250:	0f 87 0a 00 00 00                               	ja     0x3691cc68f260
    3691cc68f256:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc68f25b:	e9 05 00 00 00                                  	jmp    0x3691cc68f265
    3691cc68f260:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68f265:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    3691cc68f26f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc68f274:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc68f278:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    3691cc68f282:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc68f287:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc68f28c:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc68f290:	4c 8b 15 36 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff436]        # 0x3691cc68e6cd
    3691cc68f297:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc68f29c:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc68f2a1:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc68f2a5:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc68f2a9:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc68f2ad:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc68f2b1:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc68f2b5:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc68f2ba:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68f2be:	4c 8b 15 08 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff408]        # 0x3691cc68e6cd
    3691cc68f2c5:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc68f2ca:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc68f2cf:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc68f2d3:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    3691cc68f2dd:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    3691cc68f2e7:	4d 8b c4                                        	mov    r8,r12
    3691cc68f2ea:	e9 b0 00 00 00                                  	jmp    0x3691cc68f39f
    3691cc68f2ef:	4d 8b e7                                        	mov    r12,r15
    3691cc68f2f2:	c4 81 7a 10 44 23 50                            	vmovss xmm0,DWORD PTR [r11+r12*1+0x50]
    3691cc68f2f9:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    3691cc68f2fd:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    3691cc68f304:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
    3691cc68f30b:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc68f30f:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
    3691cc68f316:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc68f31a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68f31e:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc68f323:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68f327:	c4 01 7a 10 5c 23 54                            	vmovss xmm11,DWORD PTR [r11+r12*1+0x54]
    3691cc68f32e:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    3691cc68f332:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
    3691cc68f339:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc68f33d:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
    3691cc68f345:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
    3691cc68f34c:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc68f350:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc68f354:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68f358:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    3691cc68f35e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f362:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc68f365:	41 8b d0                                        	mov    edx,r8d
    3691cc68f368:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
    3691cc68f370:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc68f374:	8b cb                                           	mov    ecx,ebx
    3691cc68f376:	8b df                                           	mov    ebx,edi
    3691cc68f378:	e8 b3 21 f3 ff                                  	call   0x3691cc5c1530
    3691cc68f37d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68f380:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68f384:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    3691cc68f38e:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68f398:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68f39f:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc68f3a3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc68f3ab:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc68f3b4:	0f 85 2a 00 00 00                               	jne    0x3691cc68f3e4
    3691cc68f3ba:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc68f3c4:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc68f3ce:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc68f3d8:	49 8b fb                                        	mov    rdi,r11
    3691cc68f3db:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc68f3df:	e9 d4 01 00 00                                  	jmp    0x3691cc68f5b8
    3691cc68f3e4:	c5 fb 10 85 f0 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x210]
    3691cc68f3ec:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
    3691cc68f3f4:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    3691cc68f3fc:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
    3691cc68f404:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    3691cc68f40c:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    3691cc68f414:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc68f418:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68f41c:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    3691cc68f424:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68f428:	4c 8b 15 b7 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffddb7]        # 0x3691cc68d1e6
    3691cc68f42f:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68f434:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc68f438:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc68f43c:	0f 87 04 00 00 00                               	ja     0x3691cc68f446
    3691cc68f442:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc68f446:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc68f44e:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc68f455:	0f 85 28 00 00 00                               	jne    0x3691cc68f483
    3691cc68f45b:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc68f465:	4c 8b 15 7a dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd7a]        # 0x3691cc68d1e6
    3691cc68f46c:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc68f471:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc68f475:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f479:	e8 42 41 f3 ff                                  	call   0x3691cc5c35c0
    3691cc68f47e:	e9 8b 00 00 00                                  	jmp    0x3691cc68f50e
    3691cc68f483:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc68f487:	0f 84 5e 00 00 00                               	je     0x3691cc68f4eb
    3691cc68f48d:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    3691cc68f497:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    3691cc68f4a1:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc68f4a6:	7a 06                                           	jp     0x3691cc68f4ae
    3691cc68f4a8:	0f 84 2a 00 00 00                               	je     0x3691cc68f4d8
    3691cc68f4ae:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc68f4b2:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc68f4b7:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc68f4bb:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc68f4bf:	0f 86 49 00 00 00                               	jbe    0x3691cc68f50e
    3691cc68f4c5:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68f4c9:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68f4ce:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68f4d3:	e9 5b 00 00 00                                  	jmp    0x3691cc68f533
    3691cc68f4d8:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68f4dc:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68f4e1:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68f4e6:	e9 44 00 00 00                                  	jmp    0x3691cc68f52f
    3691cc68f4eb:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc68f4f5:	4c 8b 15 ea dc ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdcea]        # 0x3691cc68d1e6
    3691cc68f4fc:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68f501:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc68f505:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f509:	e8 b2 40 f3 ff                                  	call   0x3691cc5c35c0
    3691cc68f50e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68f512:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68f517:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68f51c:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc68f520:	0f 87 09 00 00 00                               	ja     0x3691cc68f52f
    3691cc68f526:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc68f52a:	e9 04 00 00 00                                  	jmp    0x3691cc68f533
    3691cc68f52f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc68f533:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68f536:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68f53a:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc68f544:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc68f548:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    3691cc68f54c:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc68f556:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc68f55b:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    3691cc68f565:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    3691cc68f56f:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc68f579:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc68f57e:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    3691cc68f588:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    3691cc68f592:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc68f59c:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc68f5a1:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    3691cc68f5ab:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc68f5af:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc68f5b3:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc68f5b8:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    3691cc68f5c2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f5c6:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc68f5c9:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    3691cc68f5cf:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
    3691cc68f5d5:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    3691cc68f5dd:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc68f5e1:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc68f5e5:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc68f5ea:	e8 71 1c f3 ff                                  	call   0x3691cc5c1260
    3691cc68f5ef:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    3691cc68f5f3:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc68f5f7:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68f5fb:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    3691cc68f602:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc68f608:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc68f60d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc68f613:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc68f619:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc68f61d:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    3691cc68f624:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    3691cc68f62b:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc68f632:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    3691cc68f639:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    3691cc68f640:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc68f648:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    3691cc68f650:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc68f658:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc68f660:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
    3691cc68f668:	e9 09 00 00 00                                  	jmp    0x3691cc68f676
    3691cc68f66d:	48 8b c1                                        	mov    rax,rcx
    3691cc68f670:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc68f676:	f6 85 b0 fd ff ff 04                            	test   BYTE PTR [rbp-0x250],0x4
    3691cc68f67d:	0f 85 08 00 00 00                               	jne    0x3691cc68f68b
    3691cc68f683:	48 8b ce                                        	mov    rcx,rsi
    3691cc68f686:	e9 48 0a 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f68b:	43 8b 9c 23 c8 3c 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0x3cc8]
    3691cc68f693:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
    3691cc68f69c:	0f 84 4d 00 00 00                               	je     0x3691cc68f6ef
    3691cc68f6a2:	41 8b d8                                        	mov    ebx,r8d
    3691cc68f6a5:	c1 eb 03                                        	shr    ebx,0x3
    3691cc68f6a8:	83 e3 03                                        	and    ebx,0x3
    3691cc68f6ab:	0b 9d 48 fc ff ff                               	or     ebx,DWORD PTR [rbp-0x3b8]
    3691cc68f6b1:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    3691cc68f6b8:	41 03 d8                                        	add    ebx,r8d
    3691cc68f6bb:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
    3691cc68f6c0:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68f6c4:	41 83 e0 07                                     	and    r8d,0x7
    3691cc68f6c8:	44 8b d1                                        	mov    r10d,ecx
    3691cc68f6cb:	41 8b c8                                        	mov    ecx,r8d
    3691cc68f6ce:	45 8b c2                                        	mov    r8d,r10d
    3691cc68f6d1:	d3 e3                                           	shl    ebx,cl
    3691cc68f6d3:	f6 c3 80                                        	test   bl,0x80
    3691cc68f6d6:	0f 85 0c 00 00 00                               	jne    0x3691cc68f6e8
    3691cc68f6dc:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68f6e0:	48 8b ce                                        	mov    rcx,rsi
    3691cc68f6e3:	e9 eb 09 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f6e8:	41 8b c8                                        	mov    ecx,r8d
    3691cc68f6eb:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc68f6ef:	48 8b 5d 88                                     	mov    rbx,QWORD PTR [rbp-0x78]
    3691cc68f6f3:	48 8d 0c 1a                                     	lea    rcx,[rdx+rbx*1]
    3691cc68f6f7:	c4 e1 82 2a f1                                  	vcvtsi2ss xmm6,xmm15,rcx
    3691cc68f6fc:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    3691cc68f700:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    3691cc68f704:	48 8b ce                                        	mov    rcx,rsi
    3691cc68f707:	4a 8d 34 09                                     	lea    rsi,[rcx+r9*1]
    3691cc68f70b:	c4 61 82 2a de                                  	vcvtsi2ss xmm11,xmm15,rsi
    3691cc68f710:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    3691cc68f715:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    3691cc68f71a:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    3691cc68f71e:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    3691cc68f722:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    3691cc68f727:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    3691cc68f72c:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    3691cc68f730:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    3691cc68f735:	0f 83 98 09 00 00                               	jae    0x3691cc6900d3
    3691cc68f73b:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
    3691cc68f742:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
    3691cc68f749:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
    3691cc68f750:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    3691cc68f755:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    3691cc68f759:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    3691cc68f75d:	43 8b 74 23 68                                  	mov    esi,DWORD PTR [r11+r12*1+0x68]
    3691cc68f762:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
    3691cc68f768:	0f 84 c7 00 00 00                               	je     0x3691cc68f835
    3691cc68f76e:	43 8b b4 23 a4 00 00 00                         	mov    esi,DWORD PTR [r11+r12*1+0xa4]
    3691cc68f776:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
    3691cc68f77f:	0f 85 b0 00 00 00                               	jne    0x3691cc68f835
    3691cc68f785:	43 8b 74 23 0c                                  	mov    esi,DWORD PTR [r11+r12*1+0xc]
    3691cc68f78a:	43 8b 1c 23                                     	mov    ebx,DWORD PTR [r11+r12*1]
    3691cc68f78e:	0f af 9d 50 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xb0]
    3691cc68f795:	8d 1c 9e                                        	lea    ebx,[rsi+rbx*4]
    3691cc68f798:	42 8d 1c 83                                     	lea    ebx,[rbx+r8*4]
    3691cc68f79c:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
    3691cc68f7a2:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
    3691cc68f7a7:	81 eb 00 02 00 00                               	sub    ebx,0x200
    3691cc68f7ad:	83 fb 08                                        	cmp    ebx,0x8
    3691cc68f7b0:	0f 83 0b 00 00 00                               	jae    0x3691cc68f7c1
    3691cc68f7b6:	4c 8d 15 03 71 00 00                            	lea    r10,[rip+0x7103]        # 0x3691cc6968c0
    3691cc68f7bd:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    3691cc68f7c1:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc68f7c5:	0f 87 6a 00 00 00                               	ja     0x3691cc68f835
    3691cc68f7cb:	e9 03 09 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f7d0:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68f7d5:	0f 83 5a 00 00 00                               	jae    0x3691cc68f835
    3691cc68f7db:	e9 f3 08 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f7e0:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68f7e5:	0f 8a 4a 00 00 00                               	jp     0x3691cc68f835
    3691cc68f7eb:	0f 84 e2 08 00 00                               	je     0x3691cc6900d3
    3691cc68f7f1:	e9 3f 00 00 00                                  	jmp    0x3691cc68f835
    3691cc68f7f6:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68f7fb:	0f 87 34 00 00 00                               	ja     0x3691cc68f835
    3691cc68f801:	e9 cd 08 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f806:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc68f80a:	0f 83 25 00 00 00                               	jae    0x3691cc68f835
    3691cc68f810:	e9 be 08 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f815:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc68f81a:	0f 8a b3 08 00 00                               	jp     0x3691cc6900d3
    3691cc68f820:	0f 84 0f 00 00 00                               	je     0x3691cc68f835
    3691cc68f826:	e9 a8 08 00 00                                  	jmp    0x3691cc6900d3
    3691cc68f82b:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc68f82f:	0f 86 9e 08 00 00                               	jbe    0x3691cc6900d3
    3691cc68f835:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    3691cc68f83a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    3691cc68f83f:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    3691cc68f844:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
    3691cc68f84b:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    3691cc68f850:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    3691cc68f854:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
    3691cc68f85b:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc68f860:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc68f864:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    3691cc68f869:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    3691cc68f871:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
    3691cc68f878:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc68f87c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc68f880:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    3691cc68f884:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    3691cc68f888:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc68f88b:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
    3691cc68f895:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
    3691cc68f89f:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
    3691cc68f8a9:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
    3691cc68f8b3:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
    3691cc68f8b9:	48 8b b5 a8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x258]
    3691cc68f8c0:	41 8b bc 33 34 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x134]
    3691cc68f8c8:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    3691cc68f8cc:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    3691cc68f8d4:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    3691cc68f8dc:	c5 fb 11 9d f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm3
    3691cc68f8e4:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    3691cc68f8ec:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
    3691cc68f8f4:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    3691cc68f8fc:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    3691cc68f904:	41 83 f8 01                                     	cmp    r8d,0x1
    3691cc68f908:	0f 86 4b 04 00 00                               	jbe    0x3691cc68fd59
    3691cc68f90e:	41 8b bc 33 30 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x130]
    3691cc68f916:	41 83 bc 33 30 01 00 00 00                      	cmp    DWORD PTR [r11+rsi*1+0x130],0x0
    3691cc68f91f:	0f 85 0d 00 00 00                               	jne    0x3691cc68f932
    3691cc68f925:	8b cb                                           	mov    ecx,ebx
    3691cc68f927:	4d 8b c3                                        	mov    r8,r11
    3691cc68f92a:	48 8b fe                                        	mov    rdi,rsi
    3691cc68f92d:	e9 e1 04 00 00                                  	jmp    0x3691cc68fe13
    3691cc68f932:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    3691cc68f938:	44 8d 43 70                                     	lea    r8d,[rbx+0x70]
    3691cc68f93c:	41 50                                           	push   r8
    3691cc68f93e:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    3691cc68f945:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f949:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc68f94c:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    3691cc68f952:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    3691cc68f958:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    3691cc68f95e:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc68f963:	44 8b cf                                        	mov    r9d,edi
    3691cc68f966:	e8 ad 18 f3 ff                                  	call   0x3691cc5c1218
    3691cc68f96b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68f96f:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68f976:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc68f97e:	45 85 db                                        	test   r11d,r11d
    3691cc68f981:	0f 85 61 01 00 00                               	jne    0x3691cc68fae8
    3691cc68f987:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68f98a:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc68f98f:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc68f995:	0f 84 43 00 00 00                               	je     0x3691cc68f9de
    3691cc68f99b:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68f9a1:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68f9a5:	41 53                                           	push   r11
    3691cc68f9a7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f9ab:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc68f9b1:	33 d2                                           	xor    edx,edx
    3691cc68f9b3:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    3691cc68f9ba:	e8 81 18 f3 ff                                  	call   0x3691cc5c1240
    3691cc68f9bf:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68f9c2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68f9c6:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68f9cd:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68f9d7:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68f9de:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc68f9e3:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc68f9e9:	0f 84 46 00 00 00                               	je     0x3691cc68fa35
    3691cc68f9ef:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68f9f5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68f9f9:	41 53                                           	push   r11
    3691cc68f9fb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68f9ff:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    3691cc68fa05:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc68fa0a:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    3691cc68fa11:	e8 2a 18 f3 ff                                  	call   0x3691cc5c1240
    3691cc68fa16:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68fa19:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68fa1d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68fa24:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68fa2e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68fa35:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc68fa3a:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc68fa40:	0f 84 46 00 00 00                               	je     0x3691cc68fa8c
    3691cc68fa46:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68fa4c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68fa50:	41 53                                           	push   r11
    3691cc68fa52:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68fa56:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    3691cc68fa5c:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc68fa61:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    3691cc68fa68:	e8 d3 17 f3 ff                                  	call   0x3691cc5c1240
    3691cc68fa6d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68fa70:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68fa74:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68fa7b:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68fa85:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68fa8c:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc68fa91:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc68fa97:	0f 84 76 03 00 00                               	je     0x3691cc68fe13
    3691cc68fa9d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc68faa3:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc68faa7:	41 53                                           	push   r11
    3691cc68faa9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68faad:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    3691cc68fab3:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc68fab8:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    3691cc68fabf:	e8 7c 17 f3 ff                                  	call   0x3691cc5c1240
    3691cc68fac4:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68fac7:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68facb:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc68fad2:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68fadc:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68fae3:	e9 2b 03 00 00                                  	jmp    0x3691cc68fe13
    3691cc68fae8:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68faeb:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    3691cc68faf5:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc68fafb:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc68fb00:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68fb04:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    3691cc68fb0b:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc68fb0f:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc68fb13:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    3691cc68fb1d:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc68fb21:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    3691cc68fb27:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc68fb2b:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc68fb30:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    3691cc68fb3a:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc68fb3e:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    3691cc68fb45:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc68fb49:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc68fb4d:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc68fb51:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68fb55:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc68fb5b:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc68fb60:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc68fb64:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc68fb68:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc68fb6d:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc68fb72:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc68fb76:	0f 87 09 00 00 00                               	ja     0x3691cc68fb85
    3691cc68fb7c:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc68fb80:	e9 04 00 00 00                                  	jmp    0x3691cc68fb89
    3691cc68fb85:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc68fb89:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc68fb8e:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc68fb92:	0f 87 09 00 00 00                               	ja     0x3691cc68fba1
    3691cc68fb98:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc68fb9c:	e9 05 00 00 00                                  	jmp    0x3691cc68fba6
    3691cc68fba1:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc68fba6:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc68fbab:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc68fbaf:	0f 84 a1 00 00 00                               	je     0x3691cc68fc56
    3691cc68fbb5:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc68fbb9:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    3691cc68fbc3:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68fbc7:	0f 87 09 00 00 00                               	ja     0x3691cc68fbd6
    3691cc68fbcd:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc68fbd1:	e9 04 00 00 00                                  	jmp    0x3691cc68fbda
    3691cc68fbd6:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc68fbda:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68fbde:	0f 87 0a 00 00 00                               	ja     0x3691cc68fbee
    3691cc68fbe4:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68fbe9:	e9 05 00 00 00                                  	jmp    0x3691cc68fbf3
    3691cc68fbee:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68fbf3:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc68fbf7:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc68fbfc:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc68fc01:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68fc05:	4c 8b 15 c1 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeac1]        # 0x3691cc68e6cd
    3691cc68fc0c:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc68fc11:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc68fc16:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc68fc1a:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc68fc24:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc68fc28:	0f 85 04 00 00 00                               	jne    0x3691cc68fc32
    3691cc68fc2e:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc68fc32:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc68fc37:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68fc3b:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc68fc3f:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    3691cc68fc49:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc68fc4e:	4d 8b dc                                        	mov    r11,r12
    3691cc68fc51:	e9 cc 00 00 00                                  	jmp    0x3691cc68fd22
    3691cc68fc56:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    3691cc68fc5d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68fc61:	0f 87 09 00 00 00                               	ja     0x3691cc68fc70
    3691cc68fc67:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc68fc6b:	e9 04 00 00 00                                  	jmp    0x3691cc68fc74
    3691cc68fc70:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc68fc74:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68fc78:	0f 87 0a 00 00 00                               	ja     0x3691cc68fc88
    3691cc68fc7e:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc68fc83:	e9 05 00 00 00                                  	jmp    0x3691cc68fc8d
    3691cc68fc88:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68fc8d:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc68fc97:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc68fc9d:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc68fca2:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc68fca6:	0f 87 09 00 00 00                               	ja     0x3691cc68fcb5
    3691cc68fcac:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc68fcb0:	e9 04 00 00 00                                  	jmp    0x3691cc68fcb9
    3691cc68fcb5:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc68fcb9:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc68fcbd:	0f 87 0a 00 00 00                               	ja     0x3691cc68fccd
    3691cc68fcc3:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc68fcc8:	e9 05 00 00 00                                  	jmp    0x3691cc68fcd2
    3691cc68fccd:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc68fcd2:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    3691cc68fcdc:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc68fce1:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc68fce5:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    3691cc68fcef:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc68fcf4:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc68fcf9:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc68fcfd:	4c 8b 15 c9 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9c9]        # 0x3691cc68e6cd
    3691cc68fd04:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc68fd09:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc68fd0e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc68fd12:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc68fd16:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc68fd1a:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc68fd1e:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc68fd22:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc68fd27:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc68fd2b:	4c 8b 15 9b e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe99b]        # 0x3691cc68e6cd
    3691cc68fd32:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc68fd37:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc68fd3c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc68fd40:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68fd4a:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    3691cc68fd54:	e9 ba 00 00 00                                  	jmp    0x3691cc68fe13
    3691cc68fd59:	4d 8b c7                                        	mov    r8,r15
    3691cc68fd5c:	c4 81 7a 10 44 03 50                            	vmovss xmm0,DWORD PTR [r11+r8*1+0x50]
    3691cc68fd63:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    3691cc68fd67:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    3691cc68fd6e:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
    3691cc68fd75:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc68fd79:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
    3691cc68fd80:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc68fd84:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68fd88:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc68fd8d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68fd91:	c4 01 7a 10 5c 03 54                            	vmovss xmm11,DWORD PTR [r11+r8*1+0x54]
    3691cc68fd98:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    3691cc68fd9c:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
    3691cc68fda3:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc68fda7:	c5 fb 11 85 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm0
    3691cc68fdaf:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
    3691cc68fdb6:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc68fdba:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc68fdbe:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68fdc2:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    3691cc68fdc9:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    3691cc68fdcf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68fdd3:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc68fdd6:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    3691cc68fddc:	c5 fb 10 8d a0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x160]
    3691cc68fde4:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc68fde8:	8b cb                                           	mov    ecx,ebx
    3691cc68fdea:	8b df                                           	mov    ebx,edi
    3691cc68fdec:	e8 3f 17 f3 ff                                  	call   0x3691cc5c1530
    3691cc68fdf1:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68fdf4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68fdf8:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    3691cc68fe02:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc68fe0c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc68fe13:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc68fe17:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc68fe1f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc68fe28:	0f 85 2a 00 00 00                               	jne    0x3691cc68fe58
    3691cc68fe2e:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc68fe38:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc68fe42:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc68fe4c:	49 8b fb                                        	mov    rdi,r11
    3691cc68fe4f:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc68fe53:	e9 d4 01 00 00                                  	jmp    0x3691cc69002c
    3691cc68fe58:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    3691cc68fe60:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
    3691cc68fe68:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    3691cc68fe70:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    3691cc68fe78:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    3691cc68fe80:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    3691cc68fe88:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc68fe8c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc68fe90:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    3691cc68fe98:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc68fe9c:	4c 8b 15 43 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd343]        # 0x3691cc68d1e6
    3691cc68fea3:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68fea8:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc68feac:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc68feb0:	0f 87 04 00 00 00                               	ja     0x3691cc68feba
    3691cc68feb6:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc68feba:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc68fec2:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc68fec9:	0f 85 28 00 00 00                               	jne    0x3691cc68fef7
    3691cc68fecf:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc68fed9:	4c 8b 15 06 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd306]        # 0x3691cc68d1e6
    3691cc68fee0:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc68fee5:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc68fee9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68feed:	e8 ce 36 f3 ff                                  	call   0x3691cc5c35c0
    3691cc68fef2:	e9 8b 00 00 00                                  	jmp    0x3691cc68ff82
    3691cc68fef7:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc68fefb:	0f 84 5e 00 00 00                               	je     0x3691cc68ff5f
    3691cc68ff01:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    3691cc68ff0b:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    3691cc68ff15:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc68ff1a:	7a 06                                           	jp     0x3691cc68ff22
    3691cc68ff1c:	0f 84 2a 00 00 00                               	je     0x3691cc68ff4c
    3691cc68ff22:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc68ff26:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc68ff2b:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc68ff2f:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc68ff33:	0f 86 49 00 00 00                               	jbe    0x3691cc68ff82
    3691cc68ff39:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68ff3d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68ff42:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68ff47:	e9 5b 00 00 00                                  	jmp    0x3691cc68ffa7
    3691cc68ff4c:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68ff50:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68ff55:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68ff5a:	e9 44 00 00 00                                  	jmp    0x3691cc68ffa3
    3691cc68ff5f:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc68ff69:	4c 8b 15 76 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd276]        # 0x3691cc68d1e6
    3691cc68ff70:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc68ff75:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc68ff79:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc68ff7d:	e8 3e 36 f3 ff                                  	call   0x3691cc5c35c0
    3691cc68ff82:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc68ff86:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc68ff8b:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc68ff90:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc68ff94:	0f 87 09 00 00 00                               	ja     0x3691cc68ffa3
    3691cc68ff9a:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc68ff9e:	e9 04 00 00 00                                  	jmp    0x3691cc68ffa7
    3691cc68ffa3:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc68ffa7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc68ffaa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc68ffae:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc68ffb8:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc68ffbc:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    3691cc68ffc0:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc68ffca:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc68ffcf:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    3691cc68ffd9:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    3691cc68ffe3:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc68ffed:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc68fff2:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    3691cc68fffc:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    3691cc690006:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc690010:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc690015:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    3691cc69001f:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc690023:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc690027:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc69002c:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    3691cc690036:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69003a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc69003d:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    3691cc690040:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    3691cc690046:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    3691cc69004e:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc690052:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc690056:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc69005b:	e8 00 12 f3 ff                                  	call   0x3691cc5c1260
    3691cc690060:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    3691cc690064:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc690068:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc69006c:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    3691cc690073:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc690078:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc69007e:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc690084:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc690088:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    3691cc69008f:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    3691cc690096:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc69009d:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    3691cc6900a4:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    3691cc6900ab:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc6900b3:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    3691cc6900bb:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc6900c3:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc6900cb:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
    3691cc6900d3:	f6 85 b0 fd ff ff 08                            	test   BYTE PTR [rbp-0x250],0x8
    3691cc6900da:	0f 85 1b 00 00 00                               	jne    0x3691cc6900fb
    3691cc6900e0:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc6900e5:	49 8b f3                                        	mov    rsi,r11
    3691cc6900e8:	4d 8b dc                                        	mov    r11,r12
    3691cc6900eb:	4d 8b e7                                        	mov    r12,r15
    3691cc6900ee:	4c 8b f8                                        	mov    r15,rax
    3691cc6900f1:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    3691cc6900f6:	e9 fd 61 00 00                                  	jmp    0x3691cc6962f8
    3691cc6900fb:	49 8b f3                                        	mov    rsi,r11
    3691cc6900fe:	4d 8b dc                                        	mov    r11,r12
    3691cc690101:	46 8b a4 1e c8 3c 00 00                         	mov    r12d,DWORD PTR [rsi+r11*1+0x3cc8]
    3691cc690109:	42 83 bc 1e c8 3c 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0x3cc8],0x0
    3691cc690112:	0f 84 5d 00 00 00                               	je     0x3691cc690175
    3691cc690118:	44 8b a5 58 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xa8]
    3691cc69011f:	41 c1 ec 03                                     	shr    r12d,0x3
    3691cc690123:	41 83 e4 03                                     	and    r12d,0x3
    3691cc690127:	8b 9d 48 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3b8]
    3691cc69012d:	41 0b dc                                        	or     ebx,r12d
    3691cc690130:	44 8b a5 88 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x178]
    3691cc690137:	41 03 dc                                        	add    ebx,r12d
    3691cc69013a:	0f b6 1c 1e                                     	movzx  ebx,BYTE PTR [rsi+rbx*1]
    3691cc69013e:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
    3691cc690145:	41 83 e0 07                                     	and    r8d,0x7
    3691cc690149:	4c 8b d1                                        	mov    r10,rcx
    3691cc69014c:	41 8b c8                                        	mov    ecx,r8d
    3691cc69014f:	4d 8b c2                                        	mov    r8,r10
    3691cc690152:	d3 e3                                           	shl    ebx,cl
    3691cc690154:	f6 c3 80                                        	test   bl,0x80
    3691cc690157:	0f 85 15 00 00 00                               	jne    0x3691cc690172
    3691cc69015d:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc690162:	4d 8b e7                                        	mov    r12,r15
    3691cc690165:	4c 8b f8                                        	mov    r15,rax
    3691cc690168:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    3691cc69016d:	e9 86 61 00 00                                  	jmp    0x3691cc6962f8
    3691cc690172:	49 8b c8                                        	mov    rcx,r8
    3691cc690175:	4c 8b 65 88                                     	mov    r12,QWORD PTR [rbp-0x78]
    3691cc690179:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    3691cc690180:	4e 8d 04 23                                     	lea    r8,[rbx+r12*1]
    3691cc690184:	c4 c1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,r8
    3691cc690189:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    3691cc69018d:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    3691cc690191:	4c 8b 85 50 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1b0]
    3691cc690198:	4f 8d 24 08                                     	lea    r12,[r8+r9*1]
    3691cc69019c:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    3691cc6901a1:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    3691cc6901a6:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    3691cc6901ab:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    3691cc6901af:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    3691cc6901b3:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    3691cc6901b8:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    3691cc6901bd:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    3691cc6901c1:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    3691cc6901c6:	73 95                                           	jae    0x3691cc69015d
    3691cc6901c8:	4d 8b e7                                        	mov    r12,r15
    3691cc6901cb:	c4 21 0a 59 74 26 18                            	vmulss xmm14,xmm14,DWORD PTR [rsi+r12*1+0x18]
    3691cc6901d2:	c5 ca 59 74 3e 18                               	vmulss xmm6,xmm6,DWORD PTR [rsi+rdi*1+0x18]
    3691cc6901d8:	4c 8b f8                                        	mov    r15,rax
    3691cc6901db:	c4 21 22 59 5c 3e 18                            	vmulss xmm11,xmm11,DWORD PTR [rsi+r15*1+0x18]
    3691cc6901e2:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    3691cc6901e7:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    3691cc6901eb:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    3691cc6901ef:	42 8b 44 1e 68                                  	mov    eax,DWORD PTR [rsi+r11*1+0x68]
    3691cc6901f4:	42 83 7c 1e 68 00                               	cmp    DWORD PTR [rsi+r11*1+0x68],0x0
    3691cc6901fa:	0f 85 0b 00 00 00                               	jne    0x3691cc69020b
    3691cc690200:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    3691cc690206:	e9 f4 00 00 00                                  	jmp    0x3691cc6902ff
    3691cc69020b:	42 8b 84 1e a4 00 00 00                         	mov    eax,DWORD PTR [rsi+r11*1+0xa4]
    3691cc690213:	42 83 bc 1e a4 00 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0xa4],0x0
    3691cc69021c:	75 e2                                           	jne    0x3691cc690200
    3691cc69021e:	42 8b 44 1e 0c                                  	mov    eax,DWORD PTR [rsi+r11*1+0xc]
    3691cc690223:	46 8b 04 1e                                     	mov    r8d,DWORD PTR [rsi+r11*1]
    3691cc690227:	44 0f af 85 50 ff ff ff                         	imul   r8d,DWORD PTR [rbp-0xb0]
    3691cc69022f:	46 8d 04 80                                     	lea    r8d,[rax+r8*4]
    3691cc690233:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    3691cc690239:	45 8d 04 80                                     	lea    r8d,[r8+rax*4]
    3691cc69023d:	c4 21 7a 10 1c 06                               	vmovss xmm11,DWORD PTR [rsi+r8*1]
    3691cc690243:	46 8b 44 1e 6c                                  	mov    r8d,DWORD PTR [rsi+r11*1+0x6c]
    3691cc690248:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    3691cc69024f:	41 83 f8 08                                     	cmp    r8d,0x8
    3691cc690253:	0f 83 0b 00 00 00                               	jae    0x3691cc690264
    3691cc690259:	4c 8d 15 20 66 00 00                            	lea    r10,[rip+0x6620]        # 0x3691cc696880
    3691cc690260:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    3691cc690264:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc690268:	0f 87 91 00 00 00                               	ja     0x3691cc6902ff
    3691cc69026e:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc690273:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    3691cc690278:	e9 7b 60 00 00                                  	jmp    0x3691cc6962f8
    3691cc69027d:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc690282:	0f 83 77 00 00 00                               	jae    0x3691cc6902ff
    3691cc690288:	eb e4                                           	jmp    0x3691cc69026e
    3691cc69028a:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc69028f:	0f 8a 6a 00 00 00                               	jp     0x3691cc6902ff
    3691cc690295:	74 d7                                           	je     0x3691cc69026e
    3691cc690297:	e9 63 00 00 00                                  	jmp    0x3691cc6902ff
    3691cc69029c:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc6902a1:	0f 87 58 00 00 00                               	ja     0x3691cc6902ff
    3691cc6902a7:	eb c5                                           	jmp    0x3691cc69026e
    3691cc6902a9:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc6902ad:	0f 83 4c 00 00 00                               	jae    0x3691cc6902ff
    3691cc6902b3:	eb b9                                           	jmp    0x3691cc69026e
    3691cc6902b5:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    3691cc6902ba:	7a b2                                           	jp     0x3691cc69026e
    3691cc6902bc:	0f 84 3d 00 00 00                               	je     0x3691cc6902ff
    3691cc6902c2:	eb aa                                           	jmp    0x3691cc69026e
    3691cc6902c4:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    3691cc6902c8:	0f 87 31 00 00 00                               	ja     0x3691cc6902ff
    3691cc6902ce:	eb 9e                                           	jmp    0x3691cc69026e
    3691cc6902d0:	48 c7 85 a8 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x158],0x1
    3691cc6902db:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
    3691cc6902e6:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc6902ea:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    3691cc6902ee:	48 8b f1                                        	mov    rsi,rcx
    3691cc6902f1:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    3691cc6902f5:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    3691cc6902fa:	e9 29 60 00 00                                  	jmp    0x3691cc696328
    3691cc6902ff:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    3691cc690304:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    3691cc690309:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    3691cc69030e:	c4 21 7a 6f 74 26 20                            	vmovdqu xmm14,XMMWORD PTR [rsi+r12*1+0x20]
    3691cc690315:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    3691cc69031a:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    3691cc69031e:	c5 fa 6f 6c 3e 20                               	vmovdqu xmm5,XMMWORD PTR [rsi+rdi*1+0x20]
    3691cc690324:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc690329:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc69032d:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    3691cc690332:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    3691cc69033a:	c4 a1 7a 6f 74 3e 20                            	vmovdqu xmm6,XMMWORD PTR [rsi+r15*1+0x20]
    3691cc690341:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc690345:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc690349:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    3691cc69034d:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    3691cc690351:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc690355:	c4 a1 7a 7f 84 06 90 01 00 00                   	vmovdqu XMMWORD PTR [rsi+r8*1+0x190],xmm0
    3691cc69035f:	c4 a1 7a 10 b4 26 98 00 00 00                   	vmovss xmm6,DWORD PTR [rsi+r12*1+0x98]
    3691cc690369:	c5 7a 10 ac 3e 98 00 00 00                      	vmovss xmm13,DWORD PTR [rsi+rdi*1+0x98]
    3691cc690372:	c4 21 7a 10 b4 3e 98 00 00 00                   	vmovss xmm14,DWORD PTR [rsi+r15*1+0x98]
    3691cc69037c:	c4 a1 7a 7f 04 06                               	vmovdqu XMMWORD PTR [rsi+r8*1],xmm0
    3691cc690382:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc690389:	44 8b 9c 3e 34 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x134]
    3691cc690391:	45 8d 63 ff                                     	lea    r12d,[r11-0x1]
    3691cc690395:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    3691cc69039d:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    3691cc6903a5:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    3691cc6903ad:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    3691cc6903b5:	c5 fb 11 b5 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm6
    3691cc6903bd:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    3691cc6903c5:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    3691cc6903cd:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6903d1:	0f 86 46 04 00 00                               	jbe    0x3691cc69081d
    3691cc6903d7:	44 8b 9c 3e 30 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x130]
    3691cc6903df:	83 bc 3e 30 01 00 00 00                         	cmp    DWORD PTR [rsi+rdi*1+0x130],0x0
    3691cc6903e7:	0f 85 0b 00 00 00                               	jne    0x3691cc6903f8
    3691cc6903ed:	41 8b c8                                        	mov    ecx,r8d
    3691cc6903f0:	4c 8b c6                                        	mov    r8,rsi
    3691cc6903f3:	e9 db 04 00 00                                  	jmp    0x3691cc6908d3
    3691cc6903f8:	45 8d 98 90 00 00 00                            	lea    r11d,[r8+0x90]
    3691cc6903ff:	45 8d 60 70                                     	lea    r12d,[r8+0x70]
    3691cc690403:	41 54                                           	push   r12
    3691cc690405:	4c 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r11
    3691cc69040c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc690410:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc690413:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    3691cc690419:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    3691cc69041f:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    3691cc690425:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc69042a:	45 8b cb                                        	mov    r9d,r11d
    3691cc69042d:	e8 e6 0d f3 ff                                  	call   0x3691cc5c1218
    3691cc690432:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc690436:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc69043d:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc690445:	45 85 db                                        	test   r11d,r11d
    3691cc690448:	0f 85 61 01 00 00                               	jne    0x3691cc6905af
    3691cc69044e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc690451:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc690456:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc69045c:	0f 84 43 00 00 00                               	je     0x3691cc6904a5
    3691cc690462:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc690468:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc69046c:	41 53                                           	push   r11
    3691cc69046e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc690472:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc690478:	33 d2                                           	xor    edx,edx
    3691cc69047a:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    3691cc690481:	e8 ba 0d f3 ff                                  	call   0x3691cc5c1240
    3691cc690486:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc690489:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc69048d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc690494:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc69049e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc6904a5:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc6904aa:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc6904b0:	0f 84 46 00 00 00                               	je     0x3691cc6904fc
    3691cc6904b6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6904bc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6904c0:	41 53                                           	push   r11
    3691cc6904c2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6904c6:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    3691cc6904cc:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6904d1:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    3691cc6904d8:	e8 63 0d f3 ff                                  	call   0x3691cc5c1240
    3691cc6904dd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6904e0:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6904e4:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6904eb:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6904f5:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc6904fc:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc690501:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc690507:	0f 84 46 00 00 00                               	je     0x3691cc690553
    3691cc69050d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc690513:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc690517:	41 53                                           	push   r11
    3691cc690519:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69051d:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    3691cc690523:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc690528:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    3691cc69052f:	e8 0c 0d f3 ff                                  	call   0x3691cc5c1240
    3691cc690534:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc690537:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc69053b:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc690542:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc69054c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc690553:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc690558:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc69055e:	0f 84 6f 03 00 00                               	je     0x3691cc6908d3
    3691cc690564:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc69056a:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc69056e:	41 53                                           	push   r11
    3691cc690570:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc690574:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    3691cc69057a:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc69057f:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    3691cc690586:	e8 b5 0c f3 ff                                  	call   0x3691cc5c1240
    3691cc69058b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc69058e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc690592:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc690599:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6905a3:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc6905aa:	e9 24 03 00 00                                  	jmp    0x3691cc6908d3
    3691cc6905af:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6905b2:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    3691cc6905bc:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc6905c2:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6905c7:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6905cb:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    3691cc6905d2:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6905d6:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6905da:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    3691cc6905e4:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6905e8:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    3691cc6905ee:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6905f2:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc6905f7:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    3691cc690601:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc690605:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    3691cc69060c:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc690610:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc690614:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc690618:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc69061c:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc690622:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc690627:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc69062b:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc69062f:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc690634:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc690639:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc69063d:	0f 87 09 00 00 00                               	ja     0x3691cc69064c
    3691cc690643:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc690647:	e9 04 00 00 00                                  	jmp    0x3691cc690650
    3691cc69064c:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc690650:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc690655:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc690659:	0f 87 09 00 00 00                               	ja     0x3691cc690668
    3691cc69065f:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc690663:	e9 05 00 00 00                                  	jmp    0x3691cc69066d
    3691cc690668:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc69066d:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc690672:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc690676:	0f 84 9e 00 00 00                               	je     0x3691cc69071a
    3691cc69067c:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc690680:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    3691cc69068a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc69068e:	0f 87 09 00 00 00                               	ja     0x3691cc69069d
    3691cc690694:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc690698:	e9 04 00 00 00                                  	jmp    0x3691cc6906a1
    3691cc69069d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6906a1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6906a5:	0f 87 0a 00 00 00                               	ja     0x3691cc6906b5
    3691cc6906ab:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6906b0:	e9 05 00 00 00                                  	jmp    0x3691cc6906ba
    3691cc6906b5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6906ba:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc6906be:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6906c3:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6906c8:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6906cc:	4c 8b 15 fa df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdffa]        # 0x3691cc68e6cd
    3691cc6906d3:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6906d8:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6906dd:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6906e1:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc6906eb:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc6906ef:	0f 85 04 00 00 00                               	jne    0x3691cc6906f9
    3691cc6906f5:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc6906f9:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc6906fe:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc690702:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc690706:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    3691cc690710:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc690715:	e9 cc 00 00 00                                  	jmp    0x3691cc6907e6
    3691cc69071a:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    3691cc690721:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc690725:	0f 87 09 00 00 00                               	ja     0x3691cc690734
    3691cc69072b:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc69072f:	e9 04 00 00 00                                  	jmp    0x3691cc690738
    3691cc690734:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc690738:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc69073c:	0f 87 0a 00 00 00                               	ja     0x3691cc69074c
    3691cc690742:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc690747:	e9 05 00 00 00                                  	jmp    0x3691cc690751
    3691cc69074c:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc690751:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc69075b:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc690761:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc690766:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc69076a:	0f 87 09 00 00 00                               	ja     0x3691cc690779
    3691cc690770:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc690774:	e9 04 00 00 00                                  	jmp    0x3691cc69077d
    3691cc690779:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc69077d:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc690781:	0f 87 0a 00 00 00                               	ja     0x3691cc690791
    3691cc690787:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc69078c:	e9 05 00 00 00                                  	jmp    0x3691cc690796
    3691cc690791:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc690796:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    3691cc6907a0:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6907a5:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc6907a9:	c4 01 7a 6f 9c 20 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x3630]
    3691cc6907b3:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6907b8:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6907bd:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6907c1:	4c 8b 15 05 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf05]        # 0x3691cc68e6cd
    3691cc6907c8:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6907cd:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6907d2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6907d6:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6907da:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6907de:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6907e2:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6907e6:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6907eb:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6907ef:	4c 8b 15 d7 de ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffded7]        # 0x3691cc68e6cd
    3691cc6907f6:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6907fb:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc690800:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc690804:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc69080e:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    3691cc690818:	e9 b6 00 00 00                                  	jmp    0x3691cc6908d3
    3691cc69081d:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc690824:	c4 a1 7a 10 44 26 50                            	vmovss xmm0,DWORD PTR [rsi+r12*1+0x50]
    3691cc69082b:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    3691cc69082f:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc690836:	c5 fa 10 6c 3e 50                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x50]
    3691cc69083c:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc690840:	c4 a1 6a 59 74 3e 50                            	vmulss xmm6,xmm2,DWORD PTR [rsi+r15*1+0x50]
    3691cc690847:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc69084b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc69084f:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc690854:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc690858:	c4 21 7a 10 5c 26 54                            	vmovss xmm11,DWORD PTR [rsi+r12*1+0x54]
    3691cc69085f:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    3691cc690863:	c5 fa 10 6c 3e 54                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x54]
    3691cc690869:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc69086d:	c5 fb 11 85 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm0
    3691cc690875:	c4 a1 6a 59 44 3e 54                            	vmulss xmm0,xmm2,DWORD PTR [rsi+r15*1+0x54]
    3691cc69087c:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc690880:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc690884:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc690888:	41 8d b8 90 00 00 00                            	lea    edi,[r8+0x90]
    3691cc69088f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc690893:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc690896:	41 8b d3                                        	mov    edx,r11d
    3691cc690899:	c5 fb 10 8d f0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x210]
    3691cc6908a1:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc6908a5:	41 8b c8                                        	mov    ecx,r8d
    3691cc6908a8:	8b df                                           	mov    ebx,edi
    3691cc6908aa:	e8 81 0c f3 ff                                  	call   0x3691cc5c1530
    3691cc6908af:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6908b2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6908b6:	c4 c1 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x90]
    3691cc6908c0:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
    3691cc6908ca:	8b cf                                           	mov    ecx,edi
    3691cc6908cc:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    3691cc6908d3:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc6908d7:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc6908df:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc6908e8:	0f 85 29 00 00 00                               	jne    0x3691cc690917
    3691cc6908ee:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc6908f8:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc690902:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc69090c:	8b f9                                           	mov    edi,ecx
    3691cc69090e:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc690912:	e9 d4 01 00 00                                  	jmp    0x3691cc690aeb
    3691cc690917:	c5 fb 10 85 a0 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x160]
    3691cc69091f:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
    3691cc690927:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    3691cc69092f:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    3691cc690937:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    3691cc69093f:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    3691cc690947:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc69094b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc69094f:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    3691cc690957:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc69095b:	4c 8b 15 84 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc884]        # 0x3691cc68d1e6
    3691cc690962:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc690967:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc69096b:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc69096f:	0f 87 04 00 00 00                               	ja     0x3691cc690979
    3691cc690975:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc690979:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc690981:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc690988:	0f 85 28 00 00 00                               	jne    0x3691cc6909b6
    3691cc69098e:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc690998:	4c 8b 15 47 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc847]        # 0x3691cc68d1e6
    3691cc69099f:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6909a4:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc6909a8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6909ac:	e8 0f 2c f3 ff                                  	call   0x3691cc5c35c0
    3691cc6909b1:	e9 8b 00 00 00                                  	jmp    0x3691cc690a41
    3691cc6909b6:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6909ba:	0f 84 5e 00 00 00                               	je     0x3691cc690a1e
    3691cc6909c0:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    3691cc6909ca:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    3691cc6909d4:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc6909d9:	7a 06                                           	jp     0x3691cc6909e1
    3691cc6909db:	0f 84 2a 00 00 00                               	je     0x3691cc690a0b
    3691cc6909e1:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc6909e5:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc6909ea:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc6909ee:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc6909f2:	0f 86 49 00 00 00                               	jbe    0x3691cc690a41
    3691cc6909f8:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6909fc:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc690a01:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc690a06:	e9 5b 00 00 00                                  	jmp    0x3691cc690a66
    3691cc690a0b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc690a0f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc690a14:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc690a19:	e9 44 00 00 00                                  	jmp    0x3691cc690a62
    3691cc690a1e:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc690a28:	4c 8b 15 b7 c7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc7b7]        # 0x3691cc68d1e6
    3691cc690a2f:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc690a34:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc690a38:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc690a3c:	e8 7f 2b f3 ff                                  	call   0x3691cc5c35c0
    3691cc690a41:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc690a45:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc690a4a:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc690a4f:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc690a53:	0f 87 09 00 00 00                               	ja     0x3691cc690a62
    3691cc690a59:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc690a5d:	e9 04 00 00 00                                  	jmp    0x3691cc690a66
    3691cc690a62:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc690a66:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc690a69:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc690a6d:	c4 c1 42 59 b4 38 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rdi*1+0x190]
    3691cc690a77:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc690a7b:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc690a7f:	c4 01 3a 59 8c 18 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+r11*1+0x100]
    3691cc690a89:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc690a8e:	c4 c1 7a 11 b4 38 90 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x190],xmm6
    3691cc690a98:	c4 41 42 59 8c 38 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rdi*1+0x194]
    3691cc690aa2:	c4 01 3a 59 94 18 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+r11*1+0x104]
    3691cc690aac:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc690ab1:	c4 41 7a 11 8c 38 94 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x194],xmm9
    3691cc690abb:	c4 c1 42 59 bc 38 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rdi*1+0x198]
    3691cc690ac5:	c4 01 3a 59 84 18 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+r11*1+0x108]
    3691cc690acf:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc690ad4:	c4 c1 7a 11 bc 38 98 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x198],xmm7
    3691cc690ade:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc690ae2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc690ae6:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc690aeb:	c4 c1 7a 10 ac 38 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0x19c]
    3691cc690af5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc690af9:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc690afc:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    3691cc690b02:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    3691cc690b08:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    3691cc690b10:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc690b14:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc690b18:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc690b1d:	e8 3e 07 f3 ff                                  	call   0x3691cc5c1260
    3691cc690b22:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc690b27:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    3691cc690b2b:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc690b2f:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc690b34:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc690b3a:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc690b40:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc690b44:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc690b4b:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    3691cc690b52:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc690b59:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc690b61:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc690b69:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc690b71:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc690b79:	e9 7a 57 00 00                                  	jmp    0x3691cc6962f8
    3691cc690b7e:	49 8b db                                        	mov    rbx,r11
    3691cc690b81:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc690b85:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc690b89:	4b 89 5c 1c 70                                  	mov    QWORD PTR [r12+r11*1+0x70],rbx
    3691cc690b8e:	4c 8d 3c 1a                                     	lea    r15,[rdx+rbx*1]
    3691cc690b92:	4f 89 bc 1c 80 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x80],r15
    3691cc690b9a:	48 8b fb                                        	mov    rdi,rbx
    3691cc690b9d:	48 2b bd 18 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x2e8]
    3691cc690ba4:	4b 89 7c 1c 78                                  	mov    QWORD PTR [r12+r11*1+0x78],rdi
    3691cc690ba9:	48 8d 04 3a                                     	lea    rax,[rdx+rdi*1]
    3691cc690bad:	4b 89 84 1c 88 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x88],rax
    3691cc690bb5:	4f 89 4c 1c 50                                  	mov    QWORD PTR [r12+r11*1+0x50],r9
    3691cc690bba:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
    3691cc690bbe:	4b 89 54 1c 60                                  	mov    QWORD PTR [r12+r11*1+0x60],rdx
    3691cc690bc3:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    3691cc690bca:	49 8b d1                                        	mov    rdx,r9
    3691cc690bcd:	48 2b 95 38 fd ff ff                            	sub    rdx,QWORD PTR [rbp-0x2c8]
    3691cc690bd4:	4b 89 54 1c 58                                  	mov    QWORD PTR [r12+r11*1+0x58],rdx
    3691cc690bd9:	4c 8d 0c 16                                     	lea    r9,[rsi+rdx*1]
    3691cc690bdd:	4f 89 4c 1c 68                                  	mov    QWORD PTR [r12+r11*1+0x68],r9
    3691cc690be2:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    3691cc690be6:	c4 81 7a 7f 7c 1c 40                            	vmovdqu XMMWORD PTR [r12+r11*1+0x40],xmm7
    3691cc690bed:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
    3691cc690bf4:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    3691cc690bfb:	48 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rax
    3691cc690c02:	48 89 95 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdx
    3691cc690c09:	4c 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r9
    3691cc690c10:	41 8b f8                                        	mov    edi,r8d
    3691cc690c13:	45 33 c0                                        	xor    r8d,r8d
    3691cc690c16:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc690c1a:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc690c21:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    3691cc690c25:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    3691cc690c2a:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc690c2e:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    3691cc690c33:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    3691cc690c3a:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc690c41:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    3691cc690c48:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc690c51:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc690c5a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc690c63:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc690c6c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc690c75:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc690c7e:	66 90                                           	xchg   ax,ax
    3691cc690c80:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc690c85:	0f 85 ff 58 00 00                               	jne    0x3691cc69658a
    3691cc690c8b:	41 8b c8                                        	mov    ecx,r8d
    3691cc690c8e:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc690c93:	d3 e3                                           	shl    ebx,cl
    3691cc690c95:	85 9d b0 fd ff ff                               	test   DWORD PTR [rbp-0x250],ebx
    3691cc690c9b:	0f 84 7a 03 00 00                               	je     0x3691cc69101b
    3691cc690ca1:	43 8d 4c 83 40                                  	lea    ecx,[r11+r8*4+0x40]
    3691cc690ca6:	48 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rbx
    3691cc690cad:	43 8d 5c c3 70                                  	lea    ebx,[r11+r8*8+0x70]
    3691cc690cb2:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
    3691cc690cb6:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    3691cc690cbb:	c4 41 7a 59 c9                                  	vmulss xmm9,xmm0,xmm9
    3691cc690cc0:	c4 41 4a 5c d9                                  	vsubss xmm11,xmm6,xmm9
    3691cc690cc5:	43 8d 5c c3 50                                  	lea    ebx,[r11+r8*8+0x50]
    3691cc690cca:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
    3691cc690cce:	c4 61 82 2a f3                                  	vcvtsi2ss xmm14,xmm15,rbx
    3691cc690cd3:	c4 41 7a 59 f6                                  	vmulss xmm14,xmm0,xmm14
    3691cc690cd8:	c4 41 22 5c de                                  	vsubss xmm11,xmm11,xmm14
    3691cc690cdd:	c4 41 22 59 5c 34 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rsi*1+0x18]
    3691cc690ce4:	c4 01 32 59 4c 0c 18                            	vmulss xmm9,xmm9,DWORD PTR [r12+r9*1+0x18]
    3691cc690ceb:	c4 41 0a 59 74 14 18                            	vmulss xmm14,xmm14,DWORD PTR [r12+rdx*1+0x18]
    3691cc690cf2:	c4 41 32 58 ce                                  	vaddss xmm9,xmm9,xmm14
    3691cc690cf7:	c4 41 22 58 c9                                  	vaddss xmm9,xmm11,xmm9
    3691cc690cfc:	c4 41 3a 58 c9                                  	vaddss xmm9,xmm8,xmm9
    3691cc690d01:	c4 41 7a 11 0c 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm9
    3691cc690d07:	41 8b 5c 04 68                                  	mov    ebx,DWORD PTR [r12+rax*1+0x68]
    3691cc690d0c:	41 83 7c 04 68 00                               	cmp    DWORD PTR [r12+rax*1+0x68],0x0
    3691cc690d12:	0f 84 03 03 00 00                               	je     0x3691cc69101b
    3691cc690d18:	41 8b 9c 04 a4 00 00 00                         	mov    ebx,DWORD PTR [r12+rax*1+0xa4]
    3691cc690d20:	41 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0xa4],0x0
    3691cc690d29:	0f 85 ec 02 00 00                               	jne    0x3691cc69101b
    3691cc690d2f:	41 8b 5c 04 0c                                  	mov    ebx,DWORD PTR [r12+rax*1+0xc]
    3691cc690d34:	41 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+rax*1]
    3691cc690d38:	45 8b d8                                        	mov    r11d,r8d
    3691cc690d3b:	41 d1 eb                                        	shr    r11d,1
    3691cc690d3e:	45 03 df                                        	add    r11d,r15d
    3691cc690d41:	44 0f af d9                                     	imul   r11d,ecx
    3691cc690d45:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    3691cc690d49:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    3691cc690d4d:	41 8b d8                                        	mov    ebx,r8d
    3691cc690d50:	83 e3 01                                        	and    ebx,0x1
    3691cc690d53:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
    3691cc690d57:	c4 01 7a 10 1c 1c                               	vmovss xmm11,DWORD PTR [r12+r11*1]
    3691cc690d5d:	45 8b 5c 04 6c                                  	mov    r11d,DWORD PTR [r12+rax*1+0x6c]
    3691cc690d62:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
    3691cc690d69:	41 83 fb 08                                     	cmp    r11d,0x8
    3691cc690d6d:	0f 83 0b 00 00 00                               	jae    0x3691cc690d7e
    3691cc690d73:	4c 8d 15 c6 5a 00 00                            	lea    r10,[rip+0x5ac6]        # 0x3691cc696840
    3691cc690d7a:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
    3691cc690d7e:	45 33 db                                        	xor    r11d,r11d
    3691cc690d81:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690d88:	41 0f 95 c3                                     	setne  r11b
    3691cc690d8c:	33 db                                           	xor    ebx,ebx
    3691cc690d8e:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690d93:	0f 97 c3                                        	seta   bl
    3691cc690d96:	41 0b db                                        	or     ebx,r11d
    3691cc690d99:	45 33 db                                        	xor    r11d,r11d
    3691cc690d9c:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690da4:	41 0f 93 c3                                     	setae  r11b
    3691cc690da8:	44 0b db                                        	or     r11d,ebx
    3691cc690dab:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690db0:	0f 87 15 02 00 00                               	ja     0x3691cc690fcb
    3691cc690db6:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690dbc:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690dbf:	45 8b d3                                        	mov    r10d,r11d
    3691cc690dc2:	44 8b db                                        	mov    r11d,ebx
    3691cc690dc5:	41 8b da                                        	mov    ebx,r10d
    3691cc690dc8:	e9 35 02 00 00                                  	jmp    0x3691cc691002
    3691cc690dcd:	41 bb 01 00 00 00                               	mov    r11d,0x1
    3691cc690dd3:	e9 f3 01 00 00                                  	jmp    0x3691cc690fcb
    3691cc690dd8:	45 33 db                                        	xor    r11d,r11d
    3691cc690ddb:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690de2:	41 0f 95 c3                                     	setne  r11b
    3691cc690de6:	33 db                                           	xor    ebx,ebx
    3691cc690de8:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    3691cc690ded:	0f 93 c3                                        	setae  bl
    3691cc690df0:	41 0b db                                        	or     ebx,r11d
    3691cc690df3:	45 33 db                                        	xor    r11d,r11d
    3691cc690df6:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690dfe:	41 0f 93 c3                                     	setae  r11b
    3691cc690e02:	44 0b db                                        	or     r11d,ebx
    3691cc690e05:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    3691cc690e0a:	0f 83 bb 01 00 00                               	jae    0x3691cc690fcb
    3691cc690e10:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690e16:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690e19:	45 8b d3                                        	mov    r10d,r11d
    3691cc690e1c:	44 8b db                                        	mov    r11d,ebx
    3691cc690e1f:	41 8b da                                        	mov    ebx,r10d
    3691cc690e22:	e9 db 01 00 00                                  	jmp    0x3691cc691002
    3691cc690e27:	45 33 db                                        	xor    r11d,r11d
    3691cc690e2a:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690e31:	41 0f 95 c3                                     	setne  r11b
    3691cc690e35:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690e3a:	7b 07                                           	jnp    0x3691cc690e43
    3691cc690e3c:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc690e41:	eb 06                                           	jmp    0x3691cc690e49
    3691cc690e43:	0f 95 c3                                        	setne  bl
    3691cc690e46:	0f b6 db                                        	movzx  ebx,bl
    3691cc690e49:	41 0b db                                        	or     ebx,r11d
    3691cc690e4c:	45 33 db                                        	xor    r11d,r11d
    3691cc690e4f:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690e57:	41 0f 93 c3                                     	setae  r11b
    3691cc690e5b:	44 0b db                                        	or     r11d,ebx
    3691cc690e5e:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690e63:	0f 8a 62 01 00 00                               	jp     0x3691cc690fcb
    3691cc690e69:	0f 85 5c 01 00 00                               	jne    0x3691cc690fcb
    3691cc690e6f:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690e75:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690e78:	45 8b d3                                        	mov    r10d,r11d
    3691cc690e7b:	44 8b db                                        	mov    r11d,ebx
    3691cc690e7e:	41 8b da                                        	mov    ebx,r10d
    3691cc690e81:	e9 7c 01 00 00                                  	jmp    0x3691cc691002
    3691cc690e86:	45 33 db                                        	xor    r11d,r11d
    3691cc690e89:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690e90:	41 0f 95 c3                                     	setne  r11b
    3691cc690e94:	33 db                                           	xor    ebx,ebx
    3691cc690e96:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    3691cc690e9b:	0f 97 c3                                        	seta   bl
    3691cc690e9e:	41 0b db                                        	or     ebx,r11d
    3691cc690ea1:	45 33 db                                        	xor    r11d,r11d
    3691cc690ea4:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690eac:	41 0f 93 c3                                     	setae  r11b
    3691cc690eb0:	44 0b db                                        	or     r11d,ebx
    3691cc690eb3:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    3691cc690eb8:	0f 87 0d 01 00 00                               	ja     0x3691cc690fcb
    3691cc690ebe:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690ec4:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690ec7:	45 8b d3                                        	mov    r10d,r11d
    3691cc690eca:	44 8b db                                        	mov    r11d,ebx
    3691cc690ecd:	41 8b da                                        	mov    ebx,r10d
    3691cc690ed0:	e9 2d 01 00 00                                  	jmp    0x3691cc691002
    3691cc690ed5:	45 33 db                                        	xor    r11d,r11d
    3691cc690ed8:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690edd:	41 0f 93 c3                                     	setae  r11b
    3691cc690ee1:	33 db                                           	xor    ebx,ebx
    3691cc690ee3:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690eeb:	0f 93 c3                                        	setae  bl
    3691cc690eee:	41 0b db                                        	or     ebx,r11d
    3691cc690ef1:	45 33 db                                        	xor    r11d,r11d
    3691cc690ef4:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690efb:	41 0f 95 c3                                     	setne  r11b
    3691cc690eff:	44 0b db                                        	or     r11d,ebx
    3691cc690f02:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690f07:	0f 83 be 00 00 00                               	jae    0x3691cc690fcb
    3691cc690f0d:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690f13:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690f16:	45 8b d3                                        	mov    r10d,r11d
    3691cc690f19:	44 8b db                                        	mov    r11d,ebx
    3691cc690f1c:	41 8b da                                        	mov    ebx,r10d
    3691cc690f1f:	e9 de 00 00 00                                  	jmp    0x3691cc691002
    3691cc690f24:	45 33 db                                        	xor    r11d,r11d
    3691cc690f27:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690f2e:	41 0f 95 c3                                     	setne  r11b
    3691cc690f32:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690f37:	7b 04                                           	jnp    0x3691cc690f3d
    3691cc690f39:	33 db                                           	xor    ebx,ebx
    3691cc690f3b:	eb 06                                           	jmp    0x3691cc690f43
    3691cc690f3d:	0f 94 c3                                        	sete   bl
    3691cc690f40:	0f b6 db                                        	movzx  ebx,bl
    3691cc690f43:	41 0b db                                        	or     ebx,r11d
    3691cc690f46:	45 33 db                                        	xor    r11d,r11d
    3691cc690f49:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690f51:	41 0f 93 c3                                     	setae  r11b
    3691cc690f55:	44 0b db                                        	or     r11d,ebx
    3691cc690f58:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690f5d:	7a 06                                           	jp     0x3691cc690f65
    3691cc690f5f:	0f 84 66 00 00 00                               	je     0x3691cc690fcb
    3691cc690f65:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690f6b:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690f6e:	45 8b d3                                        	mov    r10d,r11d
    3691cc690f71:	44 8b db                                        	mov    r11d,ebx
    3691cc690f74:	41 8b da                                        	mov    ebx,r10d
    3691cc690f77:	e9 86 00 00 00                                  	jmp    0x3691cc691002
    3691cc690f7c:	45 33 db                                        	xor    r11d,r11d
    3691cc690f7f:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690f86:	41 0f 95 c3                                     	setne  r11b
    3691cc690f8a:	33 db                                           	xor    ebx,ebx
    3691cc690f8c:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690f91:	0f 97 c3                                        	seta   bl
    3691cc690f94:	41 0b db                                        	or     ebx,r11d
    3691cc690f97:	45 33 db                                        	xor    r11d,r11d
    3691cc690f9a:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690fa2:	41 0f 93 c3                                     	setae  r11b
    3691cc690fa6:	44 0b db                                        	or     r11d,ebx
    3691cc690fa9:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    3691cc690fae:	0f 87 17 00 00 00                               	ja     0x3691cc690fcb
    3691cc690fb4:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    3691cc690fba:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc690fbd:	45 8b d3                                        	mov    r10d,r11d
    3691cc690fc0:	44 8b db                                        	mov    r11d,ebx
    3691cc690fc3:	41 8b da                                        	mov    ebx,r10d
    3691cc690fc6:	e9 37 00 00 00                                  	jmp    0x3691cc691002
    3691cc690fcb:	41 8b db                                        	mov    ebx,r11d
    3691cc690fce:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    3691cc690fd4:	e9 29 00 00 00                                  	jmp    0x3691cc691002
    3691cc690fd9:	45 33 db                                        	xor    r11d,r11d
    3691cc690fdc:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    3691cc690fe3:	41 0f 95 c3                                     	setne  r11b
    3691cc690fe7:	33 db                                           	xor    ebx,ebx
    3691cc690fe9:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    3691cc690ff1:	0f 93 c3                                        	setae  bl
    3691cc690ff4:	41 0b db                                        	or     ebx,r11d
    3691cc690ff7:	44 8b 9d d8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x228]
    3691cc690ffe:	41 83 f3 ff                                     	xor    r11d,0xffffffff
    3691cc691002:	44 23 9d b0 fd ff ff                            	and    r11d,DWORD PTR [rbp-0x250]
    3691cc691009:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    3691cc691010:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    3691cc691017:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc69101b:	41 83 c0 01                                     	add    r8d,0x1
    3691cc69101f:	41 83 f8 04                                     	cmp    r8d,0x4
    3691cc691023:	0f 85 57 fc ff ff                               	jne    0x3691cc690c80
    3691cc691029:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    3691cc69102d:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    3691cc691034:	45 85 c0                                        	test   r8d,r8d
    3691cc691037:	0f 85 26 00 00 00                               	jne    0x3691cc691063
    3691cc69103d:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc691043:	4c 8b d6                                        	mov    r10,rsi
    3691cc691046:	49 8b f4                                        	mov    rsi,r12
    3691cc691049:	4d 8b e2                                        	mov    r12,r10
    3691cc69104c:	4c 8b d8                                        	mov    r11,rax
    3691cc69104f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc691054:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    3691cc691058:	4c 8b fa                                        	mov    r15,rdx
    3691cc69105b:	49 8b f9                                        	mov    rdi,r9
    3691cc69105e:	e9 95 52 00 00                                  	jmp    0x3691cc6962f8
    3691cc691063:	c4 61 82 2a 4d 88                               	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0x78]
    3691cc691069:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc69106e:	c4 61 82 2a 9d a0 fe ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x160]
    3691cc691077:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
    3691cc69107d:	c4 61 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x100]
    3691cc691086:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    3691cc69108c:	c4 61 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0xe0]
    3691cc691095:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
    3691cc69109b:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    3691cc6910a3:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
    3691cc6910a8:	49 8d 5c 24 1c                                  	lea    rbx,[r12+0x1c]
    3691cc6910ad:	c4 22 79 18 34 0b                               	vbroadcastss xmm14,DWORD PTR [rbx+r9*1]
    3691cc6910b3:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    3691cc6910b8:	c4 e1 82 2a 8d 78 ff ff ff                      	vcvtsi2ss xmm1,xmm15,QWORD PTR [rbp-0x88]
    3691cc6910c1:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    3691cc6910c6:	c4 e1 82 2a 95 28 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd8]
    3691cc6910cf:	c4 e3 71 21 ca 10                               	vinsertps xmm1,xmm1,xmm2,0x10
    3691cc6910d5:	c4 e1 82 2a 95 30 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd0]
    3691cc6910de:	c4 e3 71 21 ca 20                               	vinsertps xmm1,xmm1,xmm2,0x20
    3691cc6910e4:	c4 e1 82 2a 95 38 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xc8]
    3691cc6910ed:	c4 e3 71 21 ca 30                               	vinsertps xmm1,xmm1,xmm2,0x30
    3691cc6910f3:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    3691cc6910f7:	c4 e2 79 18 14 13                               	vbroadcastss xmm2,DWORD PTR [rbx+rdx*1]
    3691cc6910fd:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    3691cc691101:	c5 88 58 da                                     	vaddps xmm3,xmm14,xmm2
    3691cc691105:	4c 8b 15 c1 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5c1]        # 0x3691cc68e6cd
    3691cc69110c:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc691111:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc691115:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    3691cc69111a:	c5 30 5c c9                                     	vsubps xmm9,xmm9,xmm1
    3691cc69111e:	c4 e2 79 18 0c 33                               	vbroadcastss xmm1,DWORD PTR [rbx+rsi*1]
    3691cc691124:	c5 30 59 c9                                     	vmulps xmm9,xmm9,xmm1
    3691cc691128:	c4 c1 60 58 c9                                  	vaddps xmm1,xmm3,xmm9
    3691cc69112d:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    3691cc691131:	c5 f0 c2 c3 02                                  	vcmpleps xmm0,xmm1,xmm3
    3691cc691136:	c5 f8 50 d8                                     	vmovmskps ebx,xmm0
    3691cc69113a:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc69113d:	41 23 d8                                        	and    ebx,r8d
    3691cc691140:	0f 85 0c 00 00 00                               	jne    0x3691cc691152
    3691cc691146:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
    3691cc69114d:	e9 df 2a 00 00                                  	jmp    0x3691cc693c31
    3691cc691152:	c5 d0 5e c1                                     	vdivps xmm0,xmm5,xmm1
    3691cc691156:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
    3691cc69115b:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    3691cc691161:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    3691cc691165:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    3691cc69116b:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    3691cc69116f:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    3691cc691173:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    3691cc691179:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc69117d:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    3691cc691181:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    3691cc691185:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
    3691cc69118a:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    3691cc691190:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    3691cc691194:	c5 f8 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm6
    3691cc69119c:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    3691cc6911a2:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    3691cc6911a6:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    3691cc6911aa:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    3691cc6911b0:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc6911b4:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    3691cc6911b8:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    3691cc6911bc:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
    3691cc6911c1:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    3691cc6911c7:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    3691cc6911cb:	c5 f8 11 b5 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm6
    3691cc6911d3:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    3691cc6911d9:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    3691cc6911dd:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    3691cc6911e1:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    3691cc6911e7:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc6911eb:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    3691cc6911ef:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    3691cc6911f3:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
    3691cc6911f8:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    3691cc6911fe:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    3691cc691202:	c5 f8 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm6
    3691cc69120a:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    3691cc691210:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    3691cc691214:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    3691cc691218:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    3691cc69121e:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc691222:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    3691cc691226:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    3691cc69122a:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc691231:	43 8b 8c 04 34 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x134]
    3691cc691239:	83 e9 01                                        	sub    ecx,0x1
    3691cc69123c:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
    3691cc691243:	83 f9 01                                        	cmp    ecx,0x1
    3691cc691246:	0f 86 59 17 00 00                               	jbe    0x3691cc6929a5
    3691cc69124c:	43 8b 8c 04 38 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x138]
    3691cc691254:	43 83 bc 04 38 01 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x138],0x0
    3691cc69125d:	0f 85 24 00 00 00                               	jne    0x3691cc691287
    3691cc691263:	c5 78 10 85 40 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xc0]
    3691cc69126b:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    3691cc69126f:	c5 f8 10 b5 10 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xf0]
    3691cc691277:	c5 f8 10 bd f0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x110]
    3691cc69127f:	41 8b fb                                        	mov    edi,r11d
    3691cc691282:	e9 0f 29 00 00                                  	jmp    0x3691cc693b96
    3691cc691287:	48 8b cb                                        	mov    rcx,rbx
    3691cc69128a:	83 e1 08                                        	and    ecx,0x8
    3691cc69128d:	83 e3 04                                        	and    ebx,0x4
    3691cc691290:	48 89 8d a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rcx
    3691cc691297:	48 8b 8d 38 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xc8]
    3691cc69129e:	83 e1 02                                        	and    ecx,0x2
    3691cc6912a1:	4c 8b 85 38 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xc8]
    3691cc6912a8:	41 83 e0 01                                     	and    r8d,0x1
    3691cc6912ac:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
    3691cc6912b4:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    3691cc6912bc:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
    3691cc6912c4:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    3691cc6912cc:	c5 f8 11 95 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm2
    3691cc6912d4:	c5 78 11 b5 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm14
    3691cc6912dc:	c5 f8 11 ad 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm5
    3691cc6912e4:	c5 f8 11 9d 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm3
    3691cc6912ec:	48 89 9d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rbx
    3691cc6912f3:	48 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rcx
    3691cc6912fa:	4c 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r8
    3691cc691301:	33 ff                                           	xor    edi,edi
    3691cc691303:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    3691cc69130b:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    3691cc691313:	e9 50 00 00 00                                  	jmp    0x3691cc691368
    3691cc691318:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc691321:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc69132a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc691333:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc69133c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    3691cc691340:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
    3691cc691348:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    3691cc691350:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    3691cc691358:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    3691cc691360:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    3691cc691368:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc69136f:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc691372:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
    3691cc691378:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
    3691cc69137e:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    3691cc691385:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    3691cc69138c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc691391:	0f 85 84 52 00 00                               	jne    0x3691cc69661b
    3691cc691397:	47 8b 8c 04 3c 01 00 00                         	mov    r9d,DWORD PTR [r12+r8*1+0x13c]
    3691cc69139f:	8b cf                                           	mov    ecx,edi
    3691cc6913a1:	41 d3 e9                                        	shr    r9d,cl
    3691cc6913a4:	41 f6 c1 01                                     	test   r9b,0x1
    3691cc6913a8:	0f 85 31 00 00 00                               	jne    0x3691cc6913df
    3691cc6913ae:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    3691cc6913b5:	44 8b cf                                        	mov    r9d,edi
    3691cc6913b8:	41 c1 e1 06                                     	shl    r9d,0x6
    3691cc6913bc:	41 03 c9                                        	add    ecx,r9d
    3691cc6913bf:	c4 c1 7a 7f 6c 0c 30                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x30],xmm5
    3691cc6913c6:	c4 c1 7a 7f 6c 0c 20                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x20],xmm5
    3691cc6913cd:	c4 c1 7a 7f 6c 0c 10                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x10],xmm5
    3691cc6913d4:	c4 c1 7a 7f 2c 0c                               	vmovdqu XMMWORD PTR [r12+rcx*1],xmm5
    3691cc6913da:	e9 14 12 00 00                                  	jmp    0x3691cc6925f3
    3691cc6913df:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    3691cc6913e6:	44 8b cf                                        	mov    r9d,edi
    3691cc6913e9:	41 c1 e1 06                                     	shl    r9d,0x6
    3691cc6913ed:	44 03 c9                                        	add    r9d,ecx
    3691cc6913f0:	6b cf 4c                                        	imul   ecx,edi,0x4c
    3691cc6913f3:	03 c8                                           	add    ecx,eax
    3691cc6913f5:	41 8b 7c 0c 38                                  	mov    edi,DWORD PTR [r12+rcx*1+0x38]
    3691cc6913fa:	41 83 7c 0c 38 00                               	cmp    DWORD PTR [r12+rcx*1+0x38],0x0
    3691cc691400:	0f 85 a1 11 00 00                               	jne    0x3691cc6925a7
    3691cc691406:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    3691cc69140c:	c1 e7 04                                        	shl    edi,0x4
    3691cc69140f:	46 8d 04 3f                                     	lea    r8d,[rdi+r15*1]
    3691cc691413:	4d 8d 7c 24 04                                  	lea    r15,[r12+0x4]
    3691cc691418:	c4 02 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+r8*1]
    3691cc69141e:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
    3691cc691423:	8d 04 3b                                        	lea    eax,[rbx+rdi*1]
    3691cc691426:	c4 42 79 18 14 07                               	vbroadcastss xmm10,DWORD PTR [r15+rax*1]
    3691cc69142c:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    3691cc691431:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    3691cc691436:	03 fa                                           	add    edi,edx
    3691cc691438:	c4 42 79 18 14 3f                               	vbroadcastss xmm10,DWORD PTR [r15+rdi*1]
    3691cc69143e:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    3691cc691443:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    3691cc691448:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    3691cc69144d:	c4 02 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+r8*1]
    3691cc691453:	c4 41 08 59 d2                                  	vmulps xmm10,xmm14,xmm10
    3691cc691458:	c4 42 79 18 1c 04                               	vbroadcastss xmm11,DWORD PTR [r12+rax*1]
    3691cc69145e:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    3691cc691463:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    3691cc691468:	c4 42 79 18 1c 3c                               	vbroadcastss xmm11,DWORD PTR [r12+rdi*1]
    3691cc69146e:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    3691cc691473:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    3691cc691478:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    3691cc69147d:	45 8b 3c 0c                                     	mov    r15d,DWORD PTR [r12+rcx*1]
    3691cc691481:	41 83 ff 01                                     	cmp    r15d,0x1
    3691cc691485:	0f 85 2d 0e 00 00                               	jne    0x3691cc6922b8
    3691cc69148b:	41 8b 5c 0c 28                                  	mov    ebx,DWORD PTR [r12+rcx*1+0x28]
    3691cc691490:	85 db                                           	test   ebx,ebx
    3691cc691492:	0f 84 20 0e 00 00                               	je     0x3691cc6922b8
    3691cc691498:	41 8b 54 0c 1c                                  	mov    edx,DWORD PTR [r12+rcx*1+0x1c]
    3691cc69149d:	85 d2                                           	test   edx,edx
    3691cc69149f:	0f 8e 13 0e 00 00                               	jle    0x3691cc6922b8
    3691cc6914a5:	45 8b 5c 0c 20                                  	mov    r11d,DWORD PTR [r12+rcx*1+0x20]
    3691cc6914aa:	45 85 db                                        	test   r11d,r11d
    3691cc6914ad:	0f 8e 01 0e 00 00                               	jle    0x3691cc6922b4
    3691cc6914b3:	44 8b d2                                        	mov    r10d,edx
    3691cc6914b6:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
    3691cc6914bb:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
    3691cc6914c0:	41 8b 7c 0c 10                                  	mov    edi,DWORD PTR [r12+rcx*1+0x10]
    3691cc6914c5:	45 33 c0                                        	xor    r8d,r8d
    3691cc6914c8:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    3691cc6914ce:	41 0f 95 c0                                     	setne  r8b
    3691cc6914d2:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    3691cc6914d8:	40 0f 95 c7                                     	setne  dil
    3691cc6914dc:	40 0f b6 ff                                     	movzx  edi,dil
    3691cc6914e0:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    3691cc6914e7:	41 23 f8                                        	and    edi,r8d
    3691cc6914ea:	0f 85 0f 00 00 00                               	jne    0x3691cc6914ff
    3691cc6914f0:	c4 41 60 5f d2                                  	vmaxps xmm10,xmm3,xmm10
    3691cc6914f5:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    3691cc6914fa:	e9 0b 00 00 00                                  	jmp    0x3691cc69150a
    3691cc6914ff:	c4 43 79 08 e2 09                               	vroundps xmm12,xmm10,0x9
    3691cc691505:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    3691cc69150a:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    3691cc69150f:	45 8b d3                                        	mov    r10d,r11d
    3691cc691512:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
    3691cc691517:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
    3691cc69151c:	45 8b 44 0c 14                                  	mov    r8d,DWORD PTR [r12+rcx*1+0x14]
    3691cc691521:	45 33 ff                                        	xor    r15d,r15d
    3691cc691524:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    3691cc69152b:	41 0f 95 c7                                     	setne  r15b
    3691cc69152f:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    3691cc691536:	41 0f 95 c0                                     	setne  r8b
    3691cc69153a:	45 0f b6 c0                                     	movzx  r8d,r8b
    3691cc69153e:	45 23 c7                                        	and    r8d,r15d
    3691cc691541:	0f 85 0f 00 00 00                               	jne    0x3691cc691556
    3691cc691547:	c4 41 60 5f c0                                  	vmaxps xmm8,xmm3,xmm8
    3691cc69154c:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    3691cc691551:	e9 0b 00 00 00                                  	jmp    0x3691cc691561
    3691cc691556:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    3691cc69155c:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    3691cc691561:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    3691cc691566:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    3691cc691570:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc691575:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    3691cc69157a:	c4 41 38 58 e3                                  	vaddps xmm12,xmm8,xmm11
    3691cc69157f:	45 8b 7c 0c 0c                                  	mov    r15d,DWORD PTR [r12+rcx*1+0xc]
    3691cc691584:	45 33 ff                                        	xor    r15d,r15d
    3691cc691587:	41 81 7c 0c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+rcx*1+0xc],0x2600
    3691cc691590:	41 0f 94 c7                                     	sete   r15b
    3691cc691594:	45 85 ff                                        	test   r15d,r15d
    3691cc691597:	0f 85 6b 00 00 00                               	jne    0x3691cc691608
    3691cc69159d:	c4 43 79 08 c4 09                               	vroundps xmm8,xmm12,0x9
    3691cc6915a3:	49 ba 50 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c850
    3691cc6915ad:	c4 41 38 54 2a                                  	vandps xmm13,xmm8,XMMWORD PTR [r10]
    3691cc6915b2:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    3691cc6915bc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6915c1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6915c5:	c5 10 c2 eb 01                                  	vcmpltps xmm13,xmm13,xmm3
    3691cc6915ca:	4c 8b 15 d8 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb8d8]        # 0x3691cc68cea9
    3691cc6915d1:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc6915d7:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    3691cc6915dc:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc6915e2:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    3691cc6915e6:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    3691cc6915eb:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    3691cc6915f0:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    3691cc6915f5:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    3691cc6915fa:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    3691cc6915ff:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    3691cc691603:	e9 4a 00 00 00                                  	jmp    0x3691cc691652
    3691cc691608:	c4 43 79 08 d8 09                               	vroundps xmm11,xmm8,0x9
    3691cc69160e:	4c 8b 15 90 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff90]        # 0x3691cc6915a5
    3691cc691615:	c4 41 20 54 22                                  	vandps xmm12,xmm11,XMMWORD PTR [r10]
    3691cc69161a:	4c 8b 15 93 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff93]        # 0x3691cc6915b4
    3691cc691621:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    3691cc691626:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    3691cc69162b:	c4 41 18 c2 e5 01                               	vcmpltps xmm12,xmm12,xmm13
    3691cc691631:	4c 8b 15 71 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb871]        # 0x3691cc68cea9
    3691cc691638:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    3691cc69163e:	c4 c1 20 54 e7                                  	vandps xmm4,xmm11,xmm15
    3691cc691643:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    3691cc691649:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    3691cc69164d:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    3691cc691652:	c4 c3 79 08 da 09                               	vroundps xmm3,xmm10,0x9
    3691cc691658:	4c 8b 15 4a b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb84a]        # 0x3691cc68cea9
    3691cc69165f:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    3691cc691664:	c4 c1 60 54 ff                                  	vandps xmm7,xmm3,xmm15
    3691cc691669:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    3691cc69166f:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc691673:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc691678:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    3691cc691682:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    3691cc691687:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    3691cc69168b:	4c 8b 15 13 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff13]        # 0x3691cc6915a5
    3691cc691692:	c4 41 60 54 0a                                  	vandps xmm9,xmm3,XMMWORD PTR [r10]
    3691cc691697:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    3691cc69169d:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    3691cc6916a1:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc6916a6:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6916ab:	8d 42 ff                                        	lea    eax,[rdx-0x1]
    3691cc6916ae:	c5 79 6e c8                                     	vmovd  xmm9,eax
    3691cc6916b2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc6916b7:	41 8b 44 0c 2c                                  	mov    eax,DWORD PTR [r12+rcx*1+0x2c]
    3691cc6916bc:	c4 62 41 3d e9                                  	vpmaxsd xmm13,xmm7,xmm1
    3691cc6916c1:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    3691cc6916c6:	85 ff                                           	test   edi,edi
    3691cc6916c8:	0f 84 5a 00 00 00                               	je     0x3691cc691728
    3691cc6916ce:	c5 79 6e e8                                     	vmovd  xmm13,eax
    3691cc6916d2:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6916d7:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    3691cc6916dc:	85 c0                                           	test   eax,eax
    3691cc6916de:	0f 85 44 00 00 00                               	jne    0x3691cc691728
    3691cc6916e4:	c5 79 6e ea                                     	vmovd  xmm13,edx
    3691cc6916e8:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6916ed:	c4 c1 41 66 d1                                  	vpcmpgtd xmm2,xmm7,xmm9
    3691cc6916f2:	c4 c1 69 db d5                                  	vpand  xmm2,xmm2,xmm13
    3691cc6916f7:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6916fc:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    3691cc691701:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
    3691cc691705:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
    3691cc691709:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    3691cc69170e:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    3691cc691713:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    3691cc691718:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    3691cc691720:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    3691cc691728:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    3691cc69172c:	c4 c1 59 db c4                                  	vpand  xmm0,xmm4,xmm12
    3691cc691731:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc691736:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    3691cc69173a:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    3691cc69173f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc691744:	41 8b 4c 0c 30                                  	mov    ecx,DWORD PTR [r12+rcx*1+0x30]
    3691cc691749:	c4 e2 79 3d e1                                  	vpmaxsd xmm4,xmm0,xmm1
    3691cc69174e:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    3691cc691753:	45 85 c0                                        	test   r8d,r8d
    3691cc691756:	0f 84 49 00 00 00                               	je     0x3691cc6917a5
    3691cc69175c:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    3691cc691760:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    3691cc691765:	c5 d9 db e0                                     	vpand  xmm4,xmm4,xmm0
    3691cc691769:	85 c9                                           	test   ecx,ecx
    3691cc69176b:	0f 85 34 00 00 00                               	jne    0x3691cc6917a5
    3691cc691771:	c4 c1 79 6e e3                                  	vmovd  xmm4,r11d
    3691cc691776:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    3691cc69177b:	c4 c1 79 66 d4                                  	vpcmpgtd xmm2,xmm0,xmm12
    3691cc691780:	c5 e9 db d4                                     	vpand  xmm2,xmm2,xmm4
    3691cc691784:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc691789:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    3691cc69178e:	c5 71 66 f0                                     	vpcmpgtd xmm14,xmm1,xmm0
    3691cc691792:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
    3691cc691796:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    3691cc69179b:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    3691cc6917a0:	c4 c1 79 fe e6                                  	vpaddd xmm4,xmm0,xmm14
    3691cc6917a5:	c5 f9 6e d2                                     	vmovd  xmm2,edx
    3691cc6917a9:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc6917ae:	c4 e2 59 40 e2                                  	vpmulld xmm4,xmm4,xmm2
    3691cc6917b3:	c4 41 59 fe f5                                  	vpaddd xmm14,xmm4,xmm13
    3691cc6917b8:	c4 63 79 16 f2 03                               	vpextrd edx,xmm14,0x3
    3691cc6917be:	c4 43 79 16 f1 02                               	vpextrd r9d,xmm14,0x2
    3691cc6917c4:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    3691cc6917cb:	c4 63 79 16 f2 01                               	vpextrd edx,xmm14,0x1
    3691cc6917d1:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    3691cc6917d8:	c4 41 79 7e f1                                  	vmovd  r9d,xmm14
    3691cc6917dd:	45 85 ff                                        	test   r15d,r15d
    3691cc6917e0:	0f 85 dd 08 00 00                               	jne    0x3691cc6920c3
    3691cc6917e6:	c5 c1 fe fe                                     	vpaddd xmm7,xmm7,xmm6
    3691cc6917ea:	c4 62 41 3d f1                                  	vpmaxsd xmm14,xmm7,xmm1
    3691cc6917ef:	c4 42 09 39 f1                                  	vpminsd xmm14,xmm14,xmm9
    3691cc6917f4:	85 ff                                           	test   edi,edi
    3691cc6917f6:	0f 84 41 00 00 00                               	je     0x3691cc69183d
    3691cc6917fc:	c5 79 6e f0                                     	vmovd  xmm14,eax
    3691cc691800:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    3691cc691805:	c4 41 41 db f6                                  	vpand  xmm14,xmm7,xmm14
    3691cc69180a:	85 c0                                           	test   eax,eax
    3691cc69180c:	0f 85 2b 00 00 00                               	jne    0x3691cc69183d
    3691cc691812:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    3691cc691817:	c5 31 db ca                                     	vpand  xmm9,xmm9,xmm2
    3691cc69181b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc691820:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    3691cc691825:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
    3691cc691829:	c4 41 09 df f9                                  	vpandn xmm15,xmm14,xmm9
    3691cc69182e:	c4 41 69 db ce                                  	vpand  xmm9,xmm2,xmm14
    3691cc691833:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc691838:	c4 41 41 fe f1                                  	vpaddd xmm14,xmm7,xmm9
    3691cc69183d:	c5 f9 fe c6                                     	vpaddd xmm0,xmm0,xmm6
    3691cc691841:	c4 e2 79 3d f9                                  	vpmaxsd xmm7,xmm0,xmm1
    3691cc691846:	c4 c2 41 39 fc                                  	vpminsd xmm7,xmm7,xmm12
    3691cc69184b:	45 85 c0                                        	test   r8d,r8d
    3691cc69184e:	0f 84 49 00 00 00                               	je     0x3691cc69189d
    3691cc691854:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    3691cc691858:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc69185d:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    3691cc691861:	85 c9                                           	test   ecx,ecx
    3691cc691863:	0f 85 34 00 00 00                               	jne    0x3691cc69189d
    3691cc691869:	c4 c1 79 6e fb                                  	vmovd  xmm7,r11d
    3691cc69186e:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc691873:	c4 41 79 66 cc                                  	vpcmpgtd xmm9,xmm0,xmm12
    3691cc691878:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    3691cc69187c:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc691881:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    3691cc691886:	c5 71 66 e0                                     	vpcmpgtd xmm12,xmm1,xmm0
    3691cc69188a:	c4 41 19 df f9                                  	vpandn xmm15,xmm12,xmm9
    3691cc69188f:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    3691cc691894:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc691899:	c5 f9 fe ff                                     	vpaddd xmm7,xmm0,xmm7
    3691cc69189d:	c4 e2 41 40 c2                                  	vpmulld xmm0,xmm7,xmm2
    3691cc6918a2:	c4 c1 79 fe fd                                  	vpaddd xmm7,xmm0,xmm13
    3691cc6918a7:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    3691cc6918ae:	0f 84 72 00 00 00                               	je     0x3691cc691926
    3691cc6918b4:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    3691cc6918bb:	0f 85 07 00 00 00                               	jne    0x3691cc6918c8
    3691cc6918c1:	33 ff                                           	xor    edi,edi
    3691cc6918c3:	e9 08 00 00 00                                  	jmp    0x3691cc6918d0
    3691cc6918c8:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    3691cc6918cc:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc6918d0:	83 bd f0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x210],0x0
    3691cc6918d7:	0f 85 08 00 00 00                               	jne    0x3691cc6918e5
    3691cc6918dd:	45 33 c0                                        	xor    r8d,r8d
    3691cc6918e0:	e9 08 00 00 00                                  	jmp    0x3691cc6918ed
    3691cc6918e5:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
    3691cc6918e9:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc6918ed:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    3691cc6918f4:	0f 85 08 00 00 00                               	jne    0x3691cc691902
    3691cc6918fa:	45 33 db                                        	xor    r11d,r11d
    3691cc6918fd:	e9 0f 00 00 00                                  	jmp    0x3691cc691911
    3691cc691902:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    3691cc691909:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    3691cc69190d:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc691911:	83 bd a0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x160],0x0
    3691cc691918:	0f 85 3b 00 00 00                               	jne    0x3691cc691959
    3691cc69191e:	45 33 ff                                        	xor    r15d,r15d
    3691cc691921:	e9 42 00 00 00                                  	jmp    0x3691cc691968
    3691cc691926:	c5 11 fe ce                                     	vpaddd xmm9,xmm13,xmm6
    3691cc69192a:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    3691cc69192f:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    3691cc691934:	83 ff 0f                                        	cmp    edi,0xf
    3691cc691937:	0f 84 f2 02 00 00                               	je     0x3691cc691c2f
    3691cc69193d:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    3691cc691943:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691946:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    3691cc69194a:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    3691cc69194d:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    3691cc691951:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    3691cc691955:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc691959:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
    3691cc691960:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    3691cc691964:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc691968:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    3691cc69196c:	c5 79 6e e7                                     	vmovd  xmm12,edi
    3691cc691970:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc691975:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    3691cc69197c:	0f 84 8a 00 00 00                               	je     0x3691cc691a0c
    3691cc691982:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    3691cc691989:	0f 85 07 00 00 00                               	jne    0x3691cc691996
    3691cc69198f:	33 ff                                           	xor    edi,edi
    3691cc691991:	e9 0b 00 00 00                                  	jmp    0x3691cc6919a1
    3691cc691996:	c5 79 7e cf                                     	vmovd  edi,xmm9
    3691cc69199a:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc69199d:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc6919a1:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    3691cc6919a8:	0f 85 07 00 00 00                               	jne    0x3691cc6919b5
    3691cc6919ae:	33 c0                                           	xor    eax,eax
    3691cc6919b0:	e9 0d 00 00 00                                  	jmp    0x3691cc6919c2
    3691cc6919b5:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    3691cc6919bb:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    3691cc6919be:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc6919c2:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    3691cc6919c9:	0f 85 07 00 00 00                               	jne    0x3691cc6919d6
    3691cc6919cf:	33 d2                                           	xor    edx,edx
    3691cc6919d1:	e9 0d 00 00 00                                  	jmp    0x3691cc6919e3
    3691cc6919d6:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
    3691cc6919dc:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    3691cc6919df:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    3691cc6919e3:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    3691cc6919ea:	0f 85 41 00 00 00                               	jne    0x3691cc691a31
    3691cc6919f0:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
    3691cc6919f6:	c5 79 6e e7                                     	vmovd  xmm12,edi
    3691cc6919fa:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc6919ff:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    3691cc691a05:	33 c9                                           	xor    ecx,ecx
    3691cc691a07:	e9 54 00 00 00                                  	jmp    0x3691cc691a60
    3691cc691a0c:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    3691cc691a12:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691a15:	41 8b 04 3c                                     	mov    eax,DWORD PTR [r12+rdi*1]
    3691cc691a19:	c5 79 7e cf                                     	vmovd  edi,xmm9
    3691cc691a1d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691a20:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc691a24:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
    3691cc691a2a:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    3691cc691a2d:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    3691cc691a31:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    3691cc691a37:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    3691cc691a3a:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    3691cc691a3e:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
    3691cc691a44:	c5 79 6e e7                                     	vmovd  xmm12,edi
    3691cc691a48:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc691a4d:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    3691cc691a53:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    3691cc691a5a:	0f 84 78 00 00 00                               	je     0x3691cc691ad8
    3691cc691a60:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    3691cc691a67:	0f 85 07 00 00 00                               	jne    0x3691cc691a74
    3691cc691a6d:	33 ff                                           	xor    edi,edi
    3691cc691a6f:	e9 0b 00 00 00                                  	jmp    0x3691cc691a7f
    3691cc691a74:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    3691cc691a78:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691a7b:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc691a7f:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    3691cc691a86:	0f 85 08 00 00 00                               	jne    0x3691cc691a94
    3691cc691a8c:	45 33 c0                                        	xor    r8d,r8d
    3691cc691a8f:	e9 0e 00 00 00                                  	jmp    0x3691cc691aa2
    3691cc691a94:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    3691cc691a9a:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    3691cc691a9e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc691aa2:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    3691cc691aa9:	0f 85 07 00 00 00                               	jne    0x3691cc691ab6
    3691cc691aaf:	33 c0                                           	xor    eax,eax
    3691cc691ab1:	e9 0d 00 00 00                                  	jmp    0x3691cc691ac3
    3691cc691ab6:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    3691cc691abc:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    3691cc691abf:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc691ac3:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    3691cc691aca:	0f 85 2d 00 00 00                               	jne    0x3691cc691afd
    3691cc691ad0:	45 33 c9                                        	xor    r9d,r9d
    3691cc691ad3:	e9 33 00 00 00                                  	jmp    0x3691cc691b0b
    3691cc691ad8:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
    3691cc691ade:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691ae1:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    3691cc691ae5:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    3691cc691ae9:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691aec:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc691af0:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    3691cc691af6:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    3691cc691af9:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc691afd:	c4 c3 79 16 f9 03                               	vpextrd r9d,xmm7,0x3
    3691cc691b03:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    3691cc691b07:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    3691cc691b0b:	c4 c3 31 22 fb 02                               	vpinsrd xmm7,xmm9,r11d,0x2
    3691cc691b11:	c4 63 19 22 ca 02                               	vpinsrd xmm9,xmm12,edx,0x2
    3691cc691b17:	c4 c1 79 fe c6                                  	vpaddd xmm0,xmm0,xmm14
    3691cc691b1c:	c5 79 6e e7                                     	vmovd  xmm12,edi
    3691cc691b20:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc691b25:	c4 43 19 22 e0 01                               	vpinsrd xmm12,xmm12,r8d,0x1
    3691cc691b2b:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    3691cc691b31:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    3691cc691b38:	0f 84 79 00 00 00                               	je     0x3691cc691bb7
    3691cc691b3e:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    3691cc691b45:	0f 85 07 00 00 00                               	jne    0x3691cc691b52
    3691cc691b4b:	33 ff                                           	xor    edi,edi
    3691cc691b4d:	e9 0b 00 00 00                                  	jmp    0x3691cc691b5d
    3691cc691b52:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    3691cc691b56:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691b59:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc691b5d:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    3691cc691b64:	0f 85 08 00 00 00                               	jne    0x3691cc691b72
    3691cc691b6a:	45 33 c0                                        	xor    r8d,r8d
    3691cc691b6d:	e9 0e 00 00 00                                  	jmp    0x3691cc691b80
    3691cc691b72:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    3691cc691b78:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    3691cc691b7c:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc691b80:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    3691cc691b87:	0f 85 08 00 00 00                               	jne    0x3691cc691b95
    3691cc691b8d:	45 33 db                                        	xor    r11d,r11d
    3691cc691b90:	e9 0e 00 00 00                                  	jmp    0x3691cc691ba3
    3691cc691b95:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    3691cc691b9b:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    3691cc691b9f:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc691ba3:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    3691cc691baa:	0f 85 2d 00 00 00                               	jne    0x3691cc691bdd
    3691cc691bb0:	33 c0                                           	xor    eax,eax
    3691cc691bb2:	e9 33 00 00 00                                  	jmp    0x3691cc691bea
    3691cc691bb7:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    3691cc691bbd:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691bc0:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    3691cc691bc4:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    3691cc691bc8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691bcb:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc691bcf:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    3691cc691bd5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    3691cc691bd9:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc691bdd:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    3691cc691be3:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    3691cc691be6:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc691bea:	c4 c3 41 22 c7 03                               	vpinsrd xmm0,xmm7,r15d,0x3
    3691cc691bf0:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    3691cc691bf6:	c5 79 6e cf                                     	vmovd  xmm9,edi
    3691cc691bfa:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc691bff:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    3691cc691c05:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    3691cc691c0b:	c4 63 31 22 c8 03                               	vpinsrd xmm9,xmm9,eax,0x3
    3691cc691c11:	c4 43 19 22 e1 03                               	vpinsrd xmm12,xmm12,r9d,0x3
    3691cc691c17:	c5 79 28 ff                                     	vmovapd xmm15,xmm7
    3691cc691c1b:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    3691cc691c20:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    3691cc691c25:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    3691cc691c2a:	e9 97 00 00 00                                  	jmp    0x3691cc691cc6
    3691cc691c2f:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    3691cc691c33:	c4 c1 7b 10 04 3c                               	vmovsd xmm0,QWORD PTR [r12+rdi*1]
    3691cc691c39:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    3691cc691c3c:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    3691cc691c42:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    3691cc691c47:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    3691cc691c4d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc691c50:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    3691cc691c56:	44 8b 85 20 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe0]
    3691cc691c5d:	42 8d 3c 83                                     	lea    edi,[rbx+r8*4]
    3691cc691c61:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    3691cc691c67:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    3691cc691c6c:	c4 41 78 c6 e1 dd                               	vshufps xmm12,xmm0,xmm9,0xdd
    3691cc691c72:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    3691cc691c78:	c5 c1 72 f7 02                                  	vpslld xmm7,xmm7,0x2
    3691cc691c7d:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    3691cc691c81:	03 fb                                           	add    edi,ebx
    3691cc691c83:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    3691cc691c89:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
    3691cc691c8f:	03 fb                                           	add    edi,ebx
    3691cc691c91:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    3691cc691c97:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    3691cc691c9c:	c4 e3 79 16 ff 02                               	vpextrd edi,xmm7,0x2
    3691cc691ca2:	03 fb                                           	add    edi,ebx
    3691cc691ca4:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    3691cc691caa:	c4 e3 79 16 ff 03                               	vpextrd edi,xmm7,0x3
    3691cc691cb0:	03 fb                                           	add    edi,ebx
    3691cc691cb2:	c4 c1 7b 10 3c 3c                               	vmovsd xmm7,QWORD PTR [r12+rdi*1]
    3691cc691cb8:	c5 91 6c ff                                     	vpunpcklqdq xmm7,xmm13,xmm7
    3691cc691cbc:	c5 30 c6 ef dd                                  	vshufps xmm13,xmm9,xmm7,0xdd
    3691cc691cc1:	c5 b0 c6 ff 88                                  	vshufps xmm7,xmm9,xmm7,0x88
    3691cc691cc6:	c4 41 38 5c c3                                  	vsubps xmm8,xmm8,xmm11
    3691cc691ccb:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    3691cc691cd0:	c5 28 5c d3                                     	vsubps xmm10,xmm10,xmm3
    3691cc691cd4:	c4 41 50 5c da                                  	vsubps xmm11,xmm5,xmm10
    3691cc691cd9:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    3691cc691ce3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc691ce8:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc691ced:	c4 c1 79 db d6                                  	vpand  xmm2,xmm0,xmm14
    3691cc691cf2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691cf7:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc691cfd:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc691d02:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691d07:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc691d0c:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc691d10:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc691d14:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc691d19:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc691d1d:	c4 c1 19 db de                                  	vpand  xmm3,xmm12,xmm14
    3691cc691d22:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691d27:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc691d2d:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc691d32:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691d37:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc691d3c:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc691d40:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc691d44:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc691d49:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    3691cc691d4d:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    3691cc691d51:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc691d55:	c4 c1 41 db de                                  	vpand  xmm3,xmm7,xmm14
    3691cc691d5a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691d5f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc691d65:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc691d6a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691d6f:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc691d74:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc691d78:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc691d7c:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc691d81:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    3691cc691d85:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    3691cc691d8a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691d8f:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc691d95:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc691d9a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691d9f:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc691da4:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc691da8:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc691dac:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc691db1:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    3691cc691db5:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    3691cc691db9:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    3691cc691dbd:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    3691cc691dc1:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    3691cc691dcb:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc691dd0:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc691dd4:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    3691cc691dd8:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    3691cc691ddf:	c4 81 7a 7f 14 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm2
    3691cc691de5:	c5 e9 72 d0 10                                  	vpsrld xmm2,xmm0,0x10
    3691cc691dea:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    3691cc691def:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691df4:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc691dfa:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc691dff:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691e04:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc691e09:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc691e0d:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc691e11:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc691e16:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc691e1a:	c4 c1 59 72 d4 10                               	vpsrld xmm4,xmm12,0x10
    3691cc691e20:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    3691cc691e25:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691e2a:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc691e30:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc691e35:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691e3a:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc691e3f:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc691e43:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc691e47:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc691e4c:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    3691cc691e50:	c5 e8 58 d4                                     	vaddps xmm2,xmm2,xmm4
    3691cc691e54:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc691e58:	c5 d9 72 d7 10                                  	vpsrld xmm4,xmm7,0x10
    3691cc691e5d:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    3691cc691e62:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691e67:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc691e6d:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc691e72:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691e77:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc691e7c:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc691e80:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc691e84:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc691e89:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    3691cc691e8d:	c4 c1 71 72 d5 10                               	vpsrld xmm1,xmm13,0x10
    3691cc691e93:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    3691cc691e98:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691e9d:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc691ea3:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc691ea8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691ead:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc691eb2:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc691eb6:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc691eba:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc691ebf:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    3691cc691ec3:	c5 d8 58 c9                                     	vaddps xmm1,xmm4,xmm1
    3691cc691ec7:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    3691cc691ecb:	c5 e8 58 c9                                     	vaddps xmm1,xmm2,xmm1
    3691cc691ecf:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    3691cc691ed3:	c4 81 7a 7f 4c 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm1
    3691cc691eda:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    3691cc691edf:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    3691cc691ee4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691ee9:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc691eef:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc691ef4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691ef9:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc691efe:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc691f02:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc691f06:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc691f0b:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    3691cc691f0f:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    3691cc691f15:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    3691cc691f1a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691f1f:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc691f25:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc691f2a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691f2f:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc691f34:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc691f38:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc691f3c:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc691f41:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    3691cc691f45:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    3691cc691f49:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc691f4d:	c5 e9 72 d7 08                                  	vpsrld xmm2,xmm7,0x8
    3691cc691f52:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    3691cc691f57:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691f5c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc691f62:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc691f67:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691f6c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc691f71:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc691f75:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc691f79:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc691f7e:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc691f82:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    3691cc691f88:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    3691cc691f8d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691f92:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    3691cc691f98:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    3691cc691f9d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691fa2:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    3691cc691fa8:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    3691cc691fad:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    3691cc691fb2:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    3691cc691fb7:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    3691cc691fbc:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    3691cc691fc1:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    3691cc691fc6:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    3691cc691fcb:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    3691cc691fcf:	c4 01 7a 7f 74 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm14
    3691cc691fd6:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    3691cc691fdb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc691fe0:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc691fe6:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc691feb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc691ff0:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc691ff5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc691ff9:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc691ffd:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc692002:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    3691cc692006:	c4 c1 19 72 d4 18                               	vpsrld xmm12,xmm12,0x18
    3691cc69200c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc692011:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    3691cc692017:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    3691cc69201c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc692021:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    3691cc692027:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    3691cc69202c:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    3691cc692031:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    3691cc692036:	c4 41 28 59 e4                                  	vmulps xmm12,xmm10,xmm12
    3691cc69203b:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    3691cc692040:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc692044:	c5 c1 72 d7 18                                  	vpsrld xmm7,xmm7,0x18
    3691cc692049:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc69204e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc692054:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc692059:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69205e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc692063:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc692067:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc69206b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc692070:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    3691cc692074:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    3691cc69207a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc69207f:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    3691cc692085:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    3691cc69208a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69208f:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    3691cc692095:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    3691cc69209a:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    3691cc69209f:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    3691cc6920a4:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    3691cc6920a9:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    3691cc6920ae:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    3691cc6920b2:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc6920b6:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    3691cc6920be:	e9 cd 01 00 00                                  	jmp    0x3691cc692290
    3691cc6920c3:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    3691cc6920ca:	0f 84 72 00 00 00                               	je     0x3691cc692142
    3691cc6920d0:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    3691cc6920d7:	0f 85 07 00 00 00                               	jne    0x3691cc6920e4
    3691cc6920dd:	33 ff                                           	xor    edi,edi
    3691cc6920df:	e9 08 00 00 00                                  	jmp    0x3691cc6920ec
    3691cc6920e4:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    3691cc6920e8:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc6920ec:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    3691cc6920f3:	0f 85 08 00 00 00                               	jne    0x3691cc692101
    3691cc6920f9:	45 33 c0                                        	xor    r8d,r8d
    3691cc6920fc:	e9 08 00 00 00                                  	jmp    0x3691cc692109
    3691cc692101:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
    3691cc692105:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc692109:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    3691cc692110:	0f 85 08 00 00 00                               	jne    0x3691cc69211e
    3691cc692116:	45 33 db                                        	xor    r11d,r11d
    3691cc692119:	e9 0f 00 00 00                                  	jmp    0x3691cc69212d
    3691cc69211e:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    3691cc692125:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    3691cc692129:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc69212d:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    3691cc692134:	0f 85 24 00 00 00                               	jne    0x3691cc69215e
    3691cc69213a:	45 33 ff                                        	xor    r15d,r15d
    3691cc69213d:	e9 2b 00 00 00                                  	jmp    0x3691cc69216d
    3691cc692142:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    3691cc692148:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc69214b:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    3691cc69214f:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    3691cc692152:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    3691cc692156:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    3691cc69215a:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc69215e:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
    3691cc692165:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    3691cc692169:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc69216d:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    3691cc692171:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc692176:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    3691cc69217c:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    3691cc692182:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    3691cc692188:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x3691cc691cdb
    3691cc69218f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc692194:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc692198:	c5 79 db c7                                     	vpand  xmm8,xmm0,xmm7
    3691cc69219c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6921a1:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6921a7:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6921ac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6921b1:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6921b7:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6921bc:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6921c1:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6921c6:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x3691cc691dc3
    3691cc6921cd:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6921d2:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6921d7:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc6921dc:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    3691cc6921e3:	c4 01 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm8
    3691cc6921e9:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    3691cc6921ee:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    3691cc6921f2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6921f7:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6921fd:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc692202:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc692207:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc69220d:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc692212:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc692217:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc69221c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc692221:	c4 01 7a 7f 44 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm8
    3691cc692228:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    3691cc69222d:	c5 b9 db ff                                     	vpand  xmm7,xmm8,xmm7
    3691cc692231:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc692236:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc69223c:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc692241:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc692246:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc69224b:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc69224f:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc692253:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc692258:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    3691cc69225d:	c4 81 7a 7f 7c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm7
    3691cc692264:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    3691cc692269:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc69226e:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc692274:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc692279:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69227e:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc692283:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc692287:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc69228b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc692290:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x3691cc691dc3
    3691cc692297:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc69229c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6922a0:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc6922a4:	c4 81 7a 7f 44 1c 30                            	vmovdqu XMMWORD PTR [r12+r11*1+0x30],xmm0
    3691cc6922ab:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6922af:	e9 3f 03 00 00                                  	jmp    0x3691cc6925f3
    3691cc6922b4:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6922b8:	49 8d 5c 24 08                                  	lea    rbx,[r12+0x8]
    3691cc6922bd:	c4 a2 79 18 3c 03                               	vbroadcastss xmm7,DWORD PTR [rbx+r8*1]
    3691cc6922c3:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    3691cc6922c8:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    3691cc6922cc:	c4 62 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [rbx+rax*1]
    3691cc6922d2:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    3691cc6922d6:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    3691cc6922db:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    3691cc6922e0:	c4 62 79 18 24 3b                               	vbroadcastss xmm12,DWORD PTR [rbx+rdi*1]
    3691cc6922e6:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    3691cc6922eb:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    3691cc6922f0:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    3691cc6922f4:	41 83 ff 03                                     	cmp    r15d,0x3
    3691cc6922f8:	0f 84 61 02 00 00                               	je     0x3691cc69255f
    3691cc6922fe:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    3691cc692306:	41 8b fb                                        	mov    edi,r11d
    3691cc692309:	c4 41 7a 7f a4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm12
    3691cc692313:	c4 41 7a 7f a4 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm12
    3691cc69231d:	c4 41 7a 7f a4 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm12
    3691cc692327:	c4 41 7a 7f 94 3c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1f0],xmm10
    3691cc692331:	c4 41 7a 7f 84 3c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1e0],xmm8
    3691cc69233b:	c4 c1 7a 7f bc 3c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1d0],xmm7
    3691cc692345:	c4 41 7a 7f a4 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm12
    3691cc69234f:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    3691cc692356:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    3691cc69235d:	45 33 c0                                        	xor    r8d,r8d
    3691cc692360:	e9 28 00 00 00                                  	jmp    0x3691cc69238d
    3691cc692365:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc69236e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc692377:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc692380:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    3691cc692386:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc692389:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc69238d:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    3691cc692394:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc692399:	0f 85 f1 42 00 00                               	jne    0x3691cc696690
    3691cc69239f:	8b c1                                           	mov    eax,ecx
    3691cc6923a1:	41 8b c8                                        	mov    ecx,r8d
    3691cc6923a4:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc6923ab:	d3 eb                                           	shr    ebx,cl
    3691cc6923ad:	f6 c3 01                                        	test   bl,0x1
    3691cc6923b0:	0f 84 ff 00 00 00                               	je     0x3691cc6924b5
    3691cc6923b6:	41 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+rax*1+0x10]
    3691cc6923bb:	41 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+rax*1+0xc]
    3691cc6923c0:	45 8b 5c 04 08                                  	mov    r11d,DWORD PTR [r12+rax*1+0x8]
    3691cc6923c5:	45 8b 5c 04 04                                  	mov    r11d,DWORD PTR [r12+rax*1+0x4]
    3691cc6923ca:	45 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+rax*1]
    3691cc6923ce:	41 83 ff 02                                     	cmp    r15d,0x2
    3691cc6923d2:	0f 84 88 00 00 00                               	je     0x3691cc692460
    3691cc6923d8:	45 85 ff                                        	test   r15d,r15d
    3691cc6923db:	0f 85 33 00 00 00                               	jne    0x3691cc692414
    3691cc6923e1:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    3691cc6923e9:	c4 81 7a 10 3c 3c                               	vmovss xmm7,DWORD PTR [r12+r15*1]
    3691cc6923ef:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    3691cc6923f6:	41 8b d8                                        	mov    ebx,r8d
    3691cc6923f9:	c1 e3 04                                        	shl    ebx,0x4
    3691cc6923fc:	41 03 df                                        	add    ebx,r15d
    3691cc6923ff:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc692403:	41 8b c3                                        	mov    eax,r11d
    3691cc692406:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    3691cc69240a:	e8 11 ee f2 ff                                  	call   0x3691cc5c1220
    3691cc69240f:	e9 a1 00 00 00                                  	jmp    0x3691cc6924b5
    3691cc692414:	49 8b f4                                        	mov    rsi,r12
    3691cc692417:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
    3691cc69241b:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
    3691cc692423:	c4 a1 7a 10 3c 26                               	vmovss xmm7,DWORD PTR [rsi+r12*1]
    3691cc692429:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
    3691cc692431:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
    3691cc692437:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
    3691cc69243e:	45 8b f8                                        	mov    r15d,r8d
    3691cc692441:	41 c1 e7 04                                     	shl    r15d,0x4
    3691cc692445:	45 03 e7                                        	add    r12d,r15d
    3691cc692448:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69244c:	41 8b c3                                        	mov    eax,r11d
    3691cc69244f:	45 8b cc                                        	mov    r9d,r12d
    3691cc692452:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    3691cc692456:	e8 dd ed f2 ff                                  	call   0x3691cc5c1238
    3691cc69245b:	e9 55 00 00 00                                  	jmp    0x3691cc6924b5
    3691cc692460:	49 8b f4                                        	mov    rsi,r12
    3691cc692463:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
    3691cc692467:	44 8b 4c 06 18                                  	mov    r9d,DWORD PTR [rsi+rax*1+0x18]
    3691cc69246c:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
    3691cc692474:	c4 a1 7a 10 0c 26                               	vmovss xmm1,DWORD PTR [rsi+r12*1]
    3691cc69247a:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
    3691cc692482:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
    3691cc692488:	46 8d a4 87 d0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1d0]
    3691cc692490:	c4 a1 7a 10 1c 26                               	vmovss xmm3,DWORD PTR [rsi+r12*1]
    3691cc692496:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
    3691cc69249d:	45 8b f8                                        	mov    r15d,r8d
    3691cc6924a0:	41 c1 e7 04                                     	shl    r15d,0x4
    3691cc6924a4:	45 03 e7                                        	add    r12d,r15d
    3691cc6924a7:	41 54                                           	push   r12
    3691cc6924a9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6924ad:	41 8b c3                                        	mov    eax,r11d
    3691cc6924b0:	e8 73 ed f2 ff                                  	call   0x3691cc5c1228
    3691cc6924b5:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
    3691cc6924bc:	41 83 c0 01                                     	add    r8d,0x1
    3691cc6924c0:	41 83 f8 04                                     	cmp    r8d,0x4
    3691cc6924c4:	0f 85 b6 fe ff ff                               	jne    0x3691cc692380
    3691cc6924ca:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6924cd:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6924d1:	c4 c1 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1b0]
    3691cc6924db:	c4 c1 7a 6f b4 38 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x1c0]
    3691cc6924e5:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    3691cc6924e9:	c4 41 7a 6f 84 38 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x190]
    3691cc6924f3:	c4 41 7a 6f 8c 38 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0x1a0]
    3691cc6924fd:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    3691cc692502:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    3691cc692506:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc69250c:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    3691cc692513:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    3691cc692517:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    3691cc69251e:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    3691cc692522:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    3691cc692527:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    3691cc69252b:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    3691cc692532:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    3691cc692536:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    3691cc69253c:	44 8b df                                        	mov    r11d,edi
    3691cc69253f:	4d 8b e0                                        	mov    r12,r8
    3691cc692542:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    3691cc69254a:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    3691cc692552:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    3691cc69255a:	e9 94 00 00 00                                  	jmp    0x3691cc6925f3
    3691cc69255f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc692563:	8b c1                                           	mov    eax,ecx
    3691cc692565:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    3691cc69256a:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    3691cc69256f:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    3691cc692573:	48 8b 95 38 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xc8]
    3691cc69257a:	41 8b c9                                        	mov    ecx,r9d
    3691cc69257d:	e8 a6 ef f2 ff                                  	call   0x3691cc5c1528
    3691cc692582:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc692586:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc69258a:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    3691cc692592:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    3691cc69259a:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    3691cc6925a2:	e9 4c 00 00 00                                  	jmp    0x3691cc6925f3
    3691cc6925a7:	49 8b f4                                        	mov    rsi,r12
    3691cc6925aa:	48 8d 7e 3c                                     	lea    rdi,[rsi+0x3c]
    3691cc6925ae:	44 8b e1                                        	mov    r12d,ecx
    3691cc6925b1:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    3691cc6925b7:	c4 a1 7a 7f 3c 0e                               	vmovdqu XMMWORD PTR [rsi+r9*1],xmm7
    3691cc6925bd:	48 8d 7e 40                                     	lea    rdi,[rsi+0x40]
    3691cc6925c1:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    3691cc6925c7:	c4 a1 7a 7f 7c 0e 10                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x10],xmm7
    3691cc6925ce:	48 8d 7e 44                                     	lea    rdi,[rsi+0x44]
    3691cc6925d2:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    3691cc6925d8:	c4 a1 7a 7f 7c 0e 20                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x20],xmm7
    3691cc6925df:	48 8d 7e 48                                     	lea    rdi,[rsi+0x48]
    3691cc6925e3:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    3691cc6925e9:	c4 a1 7a 7f 7c 0e 30                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x30],xmm7
    3691cc6925f0:	4c 8b e6                                        	mov    r12,rsi
    3691cc6925f3:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    3691cc6925f9:	83 c7 01                                        	add    edi,0x1
    3691cc6925fc:	83 ff 04                                        	cmp    edi,0x4
    3691cc6925ff:	0f 85 3b ed ff ff                               	jne    0x3691cc691340
    3691cc692605:	41 8b fb                                        	mov    edi,r11d
    3691cc692608:	c4 c1 7a 6f 84 3c 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x90]
    3691cc692612:	4c 8b 15 4f ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4f]        # 0x3691cc691568
    3691cc692619:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc69261e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc692622:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc692626:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    3691cc69262e:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    3691cc692632:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    3691cc692637:	c4 41 7a 6f 84 3c a0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xa0]
    3691cc692641:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    3691cc692645:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
    3691cc69264d:	c5 30 58 cf                                     	vaddps xmm9,xmm9,xmm7
    3691cc692651:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc692656:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    3691cc69265b:	c4 41 7a 6f 84 3c b0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xb0]
    3691cc692665:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    3691cc692669:	c5 78 10 95 f0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x110]
    3691cc692671:	c5 a8 58 ff                                     	vaddps xmm7,xmm10,xmm7
    3691cc692675:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    3691cc692679:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc69267d:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    3691cc692687:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc69268c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc692690:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc692694:	c5 f8 10 bd 10 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1f0]
    3691cc69269c:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc6926a0:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    3691cc6926a4:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6926a8:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    3691cc6926ac:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    3691cc6926b1:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc6926b6:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc6926bd:	47 8b 9c 04 38 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x138]
    3691cc6926c5:	4d 8b fb                                        	mov    r15,r11
    3691cc6926c8:	41 83 c7 ff                                     	add    r15d,0xffffffff
    3691cc6926cc:	0f 85 fc 00 00 00                               	jne    0x3691cc6927ce
    3691cc6926d2:	c4 41 7a 6f 84 3c 70 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x170]
    3691cc6926dc:	c4 41 7a 6f 8c 3c 30 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x130]
    3691cc6926e6:	4d 8d 9c 24 38 36 00 00                         	lea    r11,[r12+0x3638]
    3691cc6926ee:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc6926f2:	c4 42 79 18 14 03                               	vbroadcastss xmm10,DWORD PTR [r11+rax*1]
    3691cc6926f8:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    3691cc6926fd:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
    3691cc692702:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    3691cc692707:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    3691cc69270c:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    3691cc692711:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc692716:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    3691cc69271b:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    3691cc692720:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc692725:	c4 41 7a 6f 8c 3c 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x160]
    3691cc69272f:	c4 41 7a 6f 94 3c 20 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x120]
    3691cc692739:	4d 8d 9c 24 34 36 00 00                         	lea    r11,[r12+0x3634]
    3691cc692741:	c4 42 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [r11+rax*1]
    3691cc692747:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    3691cc69274c:	c4 41 40 5f e4                                  	vmaxps xmm12,xmm7,xmm12
    3691cc692751:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    3691cc692756:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    3691cc69275b:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
    3691cc692760:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    3691cc692765:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    3691cc69276a:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    3691cc69276f:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc692774:	c4 41 7a 6f 94 3c 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x150]
    3691cc69277e:	c4 41 7a 6f a4 3c 10 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x110]
    3691cc692788:	4d 8d 9c 24 30 36 00 00                         	lea    r11,[r12+0x3630]
    3691cc692790:	c4 42 79 18 2c 03                               	vbroadcastss xmm13,DWORD PTR [r11+rax*1]
    3691cc692796:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    3691cc69279b:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc69279f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6927a3:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    3691cc6927a7:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc6927ab:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6927af:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6927b3:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc6927b7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6927bb:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    3691cc6927c0:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc6927c4:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    3691cc6927c9:	e9 8f 01 00 00                                  	jmp    0x3691cc69295d
    3691cc6927ce:	41 83 ff 02                                     	cmp    r15d,0x2
    3691cc6927d2:	0f 84 8b 00 00 00                               	je     0x3691cc692863
    3691cc6927d8:	c4 c1 7a 6f 84 3c 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x130]
    3691cc6927e2:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    3691cc6927e6:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc6927ea:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6927ee:	c4 41 7a 6f 8c 3c 20 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x120]
    3691cc6927f8:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    3691cc6927fd:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    3691cc692802:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc692807:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
    3691cc69280f:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    3691cc692813:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    3691cc692819:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    3691cc69281e:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    3691cc692823:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc692828:	c4 41 7a 6f 94 3c 10 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x110]
    3691cc692832:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    3691cc692837:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    3691cc69283c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc692841:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
    3691cc692849:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    3691cc69284f:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    3691cc692854:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    3691cc692859:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc69285e:	e9 5a 00 00 00                                  	jmp    0x3691cc6928bd
    3691cc692863:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    3691cc692868:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc69286c:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc692870:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
    3691cc692878:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    3691cc69287c:	c4 22 79 18 04 38                               	vbroadcastss xmm8,DWORD PTR [rax+r15*1]
    3691cc692882:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    3691cc692887:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    3691cc69288c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc692891:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
    3691cc692899:	c4 22 79 18 0c 38                               	vbroadcastss xmm9,DWORD PTR [rax+r15*1]
    3691cc69289f:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    3691cc6928a4:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    3691cc6928a9:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc6928ae:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    3691cc6928b3:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    3691cc6928b8:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    3691cc6928bd:	49 8d 84 24 20 37 00 00                         	lea    rax,[r12+0x3720]
    3691cc6928c5:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    3691cc6928cb:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    3691cc6928d0:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    3691cc6928d4:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6928d8:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6928dc:	0f 84 78 00 00 00                               	je     0x3691cc69295a
    3691cc6928e2:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    3691cc6928ec:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    3691cc6928f1:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    3691cc6928f7:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    3691cc6928fd:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    3691cc692902:	0f 87 09 00 00 00                               	ja     0x3691cc692911
    3691cc692908:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc69290c:	e9 05 00 00 00                                  	jmp    0x3691cc692916
    3691cc692911:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    3691cc692916:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    3691cc69291b:	c5 78 2e ef                                     	vucomiss xmm13,xmm7
    3691cc69291f:	0f 87 0a 00 00 00                               	ja     0x3691cc69292f
    3691cc692925:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc69292a:	e9 05 00 00 00                                  	jmp    0x3691cc692934
    3691cc69292f:	c4 c1 79 28 fd                                  	vmovapd xmm7,xmm13
    3691cc692934:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc692939:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    3691cc69293d:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc692941:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc692946:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    3691cc69294b:	49 8b c7                                        	mov    rax,r15
    3691cc69294e:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc692955:	e9 3c 12 00 00                                  	jmp    0x3691cc693b96
    3691cc69295a:	49 8b c7                                        	mov    rax,r15
    3691cc69295d:	c5 78 10 a5 10 ff ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0xf0]
    3691cc692965:	c4 41 40 5f d4                                  	vmaxps xmm10,xmm7,xmm12
    3691cc69296a:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    3691cc69296f:	c4 41 7a 6f a4 3c 40 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x140]
    3691cc692979:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    3691cc69297e:	c4 c1 40 5f fa                                  	vmaxps xmm7,xmm7,xmm10
    3691cc692983:	c5 a0 5d ff                                     	vminps xmm7,xmm11,xmm7
    3691cc692987:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    3691cc69298b:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc69298f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc692994:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    3691cc692999:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc6929a0:	e9 f1 11 00 00                                  	jmp    0x3691cc693b96
    3691cc6929a5:	43 8b 4c 04 38                                  	mov    ecx,DWORD PTR [r12+r8*1+0x38]
    3691cc6929aa:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
    3691cc6929b2:	43 83 7c 04 38 00                               	cmp    DWORD PTR [r12+r8*1+0x38],0x0
    3691cc6929b8:	0f 85 e6 10 00 00                               	jne    0x3691cc693aa4
    3691cc6929be:	49 8d 4c 24 54                                  	lea    rcx,[r12+0x54]
    3691cc6929c3:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
    3691cc6929c9:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    3691cc6929cd:	c4 e2 79 18 34 11                               	vbroadcastss xmm6,DWORD PTR [rcx+rdx*1]
    3691cc6929d3:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    3691cc6929d7:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    3691cc6929db:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
    3691cc6929e1:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc6929e5:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    3691cc6929e9:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    3691cc6929ed:	49 8d 4c 24 50                                  	lea    rcx,[r12+0x50]
    3691cc6929f2:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
    3691cc6929f8:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    3691cc6929fc:	c4 62 79 18 04 11                               	vbroadcastss xmm8,DWORD PTR [rcx+rdx*1]
    3691cc692a02:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    3691cc692a07:	c4 41 70 58 c0                                  	vaddps xmm8,xmm1,xmm8
    3691cc692a0c:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
    3691cc692a12:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc692a16:	c5 38 58 c1                                     	vaddps xmm8,xmm8,xmm1
    3691cc692a1a:	c4 c1 78 59 c8                                  	vmulps xmm1,xmm0,xmm8
    3691cc692a1f:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    3691cc692a23:	83 f9 01                                        	cmp    ecx,0x1
    3691cc692a26:	0f 85 50 0d 00 00                               	jne    0x3691cc69377c
    3691cc692a2c:	43 8b 7c 04 28                                  	mov    edi,DWORD PTR [r12+r8*1+0x28]
    3691cc692a31:	85 ff                                           	test   edi,edi
    3691cc692a33:	0f 84 43 0d 00 00                               	je     0x3691cc69377c
    3691cc692a39:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
    3691cc692a3e:	45 85 ff                                        	test   r15d,r15d
    3691cc692a41:	0f 8e 35 0d 00 00                               	jle    0x3691cc69377c
    3691cc692a47:	43 8b 44 04 20                                  	mov    eax,DWORD PTR [r12+r8*1+0x20]
    3691cc692a4c:	85 c0                                           	test   eax,eax
    3691cc692a4e:	0f 8e 24 0d 00 00                               	jle    0x3691cc693778
    3691cc692a54:	45 8b d7                                        	mov    r10d,r15d
    3691cc692a57:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc692a5c:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc692a61:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
    3691cc692a66:	33 f6                                           	xor    esi,esi
    3691cc692a68:	81 f9 2f 81 00 00                               	cmp    ecx,0x812f
    3691cc692a6e:	40 0f 95 c6                                     	setne  sil
    3691cc692a72:	81 f9 00 29 00 00                               	cmp    ecx,0x2900
    3691cc692a78:	0f 95 c1                                        	setne  cl
    3691cc692a7b:	0f b6 c9                                        	movzx  ecx,cl
    3691cc692a7e:	23 ce                                           	and    ecx,esi
    3691cc692a80:	0f 85 0d 00 00 00                               	jne    0x3691cc692a93
    3691cc692a86:	c5 e0 5f f9                                     	vmaxps xmm7,xmm3,xmm1
    3691cc692a8a:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    3691cc692a8e:	e9 0a 00 00 00                                  	jmp    0x3691cc692a9d
    3691cc692a93:	c4 e3 79 08 f9 09                               	vroundps xmm7,xmm1,0x9
    3691cc692a99:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    3691cc692a9d:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc692aa1:	44 8b d0                                        	mov    r10d,eax
    3691cc692aa4:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    3691cc692aa9:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc692aae:	43 8b 74 04 14                                  	mov    esi,DWORD PTR [r12+r8*1+0x14]
    3691cc692ab3:	33 d2                                           	xor    edx,edx
    3691cc692ab5:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    3691cc692abb:	0f 95 c2                                        	setne  dl
    3691cc692abe:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    3691cc692ac4:	40 0f 95 c6                                     	setne  sil
    3691cc692ac8:	40 0f b6 f6                                     	movzx  esi,sil
    3691cc692acc:	23 f2                                           	and    esi,edx
    3691cc692ace:	0f 85 0d 00 00 00                               	jne    0x3691cc692ae1
    3691cc692ad4:	c5 e0 5f f6                                     	vmaxps xmm6,xmm3,xmm6
    3691cc692ad8:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    3691cc692adc:	e9 0b 00 00 00                                  	jmp    0x3691cc692aec
    3691cc692ae1:	c4 63 79 08 c6 09                               	vroundps xmm8,xmm6,0x9
    3691cc692ae7:	c4 c1 48 5c f0                                  	vsubps xmm6,xmm6,xmm8
    3691cc692aec:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    3691cc692af0:	4c 8b 15 71 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea71]        # 0x3691cc691568
    3691cc692af7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc692afc:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc692b00:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    3691cc692b04:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    3691cc692b09:	33 d2                                           	xor    edx,edx
    3691cc692b0b:	43 81 7c 04 0c 00 26 00 00                      	cmp    DWORD PTR [r12+r8*1+0xc],0x2600
    3691cc692b14:	0f 94 c2                                        	sete   dl
    3691cc692b17:	85 d2                                           	test   edx,edx
    3691cc692b19:	0f 85 5b 00 00 00                               	jne    0x3691cc692b7a
    3691cc692b1f:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    3691cc692b25:	4c 8b 15 79 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea79]        # 0x3691cc6915a5
    3691cc692b2c:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    3691cc692b31:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x3691cc6915b4
    3691cc692b38:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc692b3d:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc692b42:	c4 41 30 c2 ce 01                               	vcmpltps xmm9,xmm9,xmm14
    3691cc692b48:	4c 8b 15 5a a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa35a]        # 0x3691cc68cea9
    3691cc692b4f:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    3691cc692b54:	c4 c1 48 54 cf                                  	vandps xmm1,xmm6,xmm15
    3691cc692b59:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    3691cc692b5f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    3691cc692b63:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    3691cc692b68:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc692b6c:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc692b70:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    3691cc692b75:	e9 49 00 00 00                                  	jmp    0x3691cc692bc3
    3691cc692b7a:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    3691cc692b80:	4c 8b 15 1e ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea1e]        # 0x3691cc6915a5
    3691cc692b87:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    3691cc692b8c:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x3691cc6915b4
    3691cc692b93:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc692b98:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc692b9d:	c4 41 38 c2 ce 01                               	vcmpltps xmm9,xmm8,xmm14
    3691cc692ba3:	4c 8b 15 ff a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2ff]        # 0x3691cc68cea9
    3691cc692baa:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    3691cc692baf:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    3691cc692bb4:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    3691cc692bba:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    3691cc692bbe:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    3691cc692bc3:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    3691cc692bc9:	4c 8b 15 d9 a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2d9]        # 0x3691cc68cea9
    3691cc692bd0:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc692bd6:	c4 c1 38 54 d7                                  	vandps xmm2,xmm8,xmm15
    3691cc692bdb:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc692be1:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    3691cc692be5:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    3691cc692bea:	4c 8b 15 89 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea89]        # 0x3691cc69167a
    3691cc692bf1:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc692bf6:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc692bfa:	4c 8b 15 a4 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a4]        # 0x3691cc6915a5
    3691cc692c01:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    3691cc692c06:	c4 c1 50 c2 ee 01                               	vcmpltps xmm5,xmm5,xmm14
    3691cc692c0c:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    3691cc692c10:	c5 e9 db d5                                     	vpand  xmm2,xmm2,xmm5
    3691cc692c14:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    3691cc692c19:	45 8d 4f ff                                     	lea    r9d,[r15-0x1]
    3691cc692c1d:	c4 c1 79 6e e9                                  	vmovd  xmm5,r9d
    3691cc692c22:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    3691cc692c27:	47 8b 4c 04 2c                                  	mov    r9d,DWORD PTR [r12+r8*1+0x2c]
    3691cc692c2c:	c5 78 10 95 80 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x280]
    3691cc692c34:	c4 42 69 3d da                                  	vpmaxsd xmm11,xmm2,xmm10
    3691cc692c39:	c4 62 21 39 dd                                  	vpminsd xmm11,xmm11,xmm5
    3691cc692c3e:	85 c9                                           	test   ecx,ecx
    3691cc692c40:	0f 84 55 00 00 00                               	je     0x3691cc692c9b
    3691cc692c46:	c4 41 79 6e d9                                  	vmovd  xmm11,r9d
    3691cc692c4b:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc692c50:	c4 41 69 db db                                  	vpand  xmm11,xmm2,xmm11
    3691cc692c55:	45 85 c9                                        	test   r9d,r9d
    3691cc692c58:	0f 85 3d 00 00 00                               	jne    0x3691cc692c9b
    3691cc692c5e:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    3691cc692c63:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc692c68:	c5 69 66 e5                                     	vpcmpgtd xmm12,xmm2,xmm5
    3691cc692c6c:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    3691cc692c71:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc692c76:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    3691cc692c7b:	c5 29 66 ea                                     	vpcmpgtd xmm13,xmm10,xmm2
    3691cc692c7f:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    3691cc692c84:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    3691cc692c89:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    3691cc692c8e:	c4 41 69 fe db                                  	vpaddd xmm11,xmm2,xmm11
    3691cc692c93:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc692c9b:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    3691cc692c9f:	c4 41 71 db c9                                  	vpand  xmm9,xmm1,xmm9
    3691cc692ca4:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc692ca9:	44 8d 58 ff                                     	lea    r11d,[rax-0x1]
    3691cc692cad:	c4 c1 79 6e cb                                  	vmovd  xmm1,r11d
    3691cc692cb2:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    3691cc692cb7:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
    3691cc692cbc:	c4 42 31 3d e2                                  	vpmaxsd xmm12,xmm9,xmm10
    3691cc692cc1:	c4 62 19 39 e1                                  	vpminsd xmm12,xmm12,xmm1
    3691cc692cc6:	85 f6                                           	test   esi,esi
    3691cc692cc8:	0f 84 4c 00 00 00                               	je     0x3691cc692d1a
    3691cc692cce:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    3691cc692cd3:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc692cd8:	c4 41 19 db e1                                  	vpand  xmm12,xmm12,xmm9
    3691cc692cdd:	45 85 db                                        	test   r11d,r11d
    3691cc692ce0:	0f 85 34 00 00 00                               	jne    0x3691cc692d1a
    3691cc692ce6:	c5 79 6e e0                                     	vmovd  xmm12,eax
    3691cc692cea:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc692cef:	c5 31 66 e9                                     	vpcmpgtd xmm13,xmm9,xmm1
    3691cc692cf3:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    3691cc692cf8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc692cfd:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    3691cc692d02:	c4 c1 29 66 e1                                  	vpcmpgtd xmm4,xmm10,xmm9
    3691cc692d07:	c4 41 59 df fd                                  	vpandn xmm15,xmm4,xmm13
    3691cc692d0c:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    3691cc692d10:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    3691cc692d15:	c4 41 31 fe e4                                  	vpaddd xmm12,xmm9,xmm12
    3691cc692d1a:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    3691cc692d1f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc692d24:	c4 42 19 40 e5                                  	vpmulld xmm12,xmm12,xmm13
    3691cc692d29:	c4 c1 19 fe e3                                  	vpaddd xmm4,xmm12,xmm11
    3691cc692d2e:	c4 c3 79 16 e7 03                               	vpextrd r15d,xmm4,0x3
    3691cc692d34:	c4 c3 79 16 e0 02                               	vpextrd r8d,xmm4,0x2
    3691cc692d3a:	4c 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r15
    3691cc692d41:	c4 c3 79 16 e7 01                               	vpextrd r15d,xmm4,0x1
    3691cc692d47:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    3691cc692d4e:	c4 c1 79 7e e0                                  	vmovd  r8d,xmm4
    3691cc692d53:	85 d2                                           	test   edx,edx
    3691cc692d55:	0f 85 3e 08 00 00                               	jne    0x3691cc693599
    3691cc692d5b:	c5 f8 10 a5 60 fc ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x3a0]
    3691cc692d63:	c5 e9 fe d4                                     	vpaddd xmm2,xmm2,xmm4
    3691cc692d67:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
    3691cc692d6f:	c4 c2 69 3d f2                                  	vpmaxsd xmm6,xmm2,xmm10
    3691cc692d74:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    3691cc692d79:	85 c9                                           	test   ecx,ecx
    3691cc692d7b:	0f 84 3f 00 00 00                               	je     0x3691cc692dc0
    3691cc692d81:	c4 c1 79 6e f1                                  	vmovd  xmm6,r9d
    3691cc692d86:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    3691cc692d8b:	c5 e9 db f6                                     	vpand  xmm6,xmm2,xmm6
    3691cc692d8f:	45 85 c9                                        	test   r9d,r9d
    3691cc692d92:	0f 85 28 00 00 00                               	jne    0x3691cc692dc0
    3691cc692d98:	c5 e9 66 f5                                     	vpcmpgtd xmm6,xmm2,xmm5
    3691cc692d9c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    3691cc692da1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc692da6:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    3691cc692dab:	c5 a9 66 ea                                     	vpcmpgtd xmm5,xmm10,xmm2
    3691cc692daf:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    3691cc692db3:	c5 91 db f5                                     	vpand  xmm6,xmm13,xmm5
    3691cc692db7:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc692dbc:	c5 e9 fe f6                                     	vpaddd xmm6,xmm2,xmm6
    3691cc692dc0:	c5 31 fe cc                                     	vpaddd xmm9,xmm9,xmm4
    3691cc692dc4:	c4 c2 31 3d d2                                  	vpmaxsd xmm2,xmm9,xmm10
    3691cc692dc9:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    3691cc692dce:	85 f6                                           	test   esi,esi
    3691cc692dd0:	0f 84 49 00 00 00                               	je     0x3691cc692e1f
    3691cc692dd6:	c4 c1 79 6e d3                                  	vmovd  xmm2,r11d
    3691cc692ddb:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc692de0:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    3691cc692de5:	45 85 db                                        	test   r11d,r11d
    3691cc692de8:	0f 85 31 00 00 00                               	jne    0x3691cc692e1f
    3691cc692dee:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    3691cc692df2:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc692df7:	c5 b1 66 c9                                     	vpcmpgtd xmm1,xmm9,xmm1
    3691cc692dfb:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    3691cc692dff:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc692e04:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    3691cc692e09:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    3691cc692e0e:	c5 51 df f9                                     	vpandn xmm15,xmm5,xmm1
    3691cc692e12:	c5 e9 db cd                                     	vpand  xmm1,xmm2,xmm5
    3691cc692e16:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc692e1b:	c5 b1 fe d1                                     	vpaddd xmm2,xmm9,xmm1
    3691cc692e1f:	c4 42 69 40 cd                                  	vpmulld xmm9,xmm2,xmm13
    3691cc692e24:	c4 41 31 fe eb                                  	vpaddd xmm13,xmm9,xmm11
    3691cc692e29:	83 fb 0f                                        	cmp    ebx,0xf
    3691cc692e2c:	0f 85 18 00 00 00                               	jne    0x3691cc692e4a
    3691cc692e32:	c5 21 fe dc                                     	vpaddd xmm11,xmm11,xmm4
    3691cc692e36:	c4 41 49 76 db                                  	vpcmpeqd xmm11,xmm6,xmm11
    3691cc692e3b:	c4 41 78 50 db                                  	vmovmskps r11d,xmm11
    3691cc692e40:	41 83 fb 0f                                     	cmp    r11d,0xf
    3691cc692e44:	0f 84 36 03 00 00                               	je     0x3691cc693180
    3691cc692e4a:	4c 8b db                                        	mov    r11,rbx
    3691cc692e4d:	41 83 e3 08                                     	and    r11d,0x8
    3691cc692e51:	48 8b c3                                        	mov    rax,rbx
    3691cc692e54:	83 e0 04                                        	and    eax,0x4
    3691cc692e57:	48 8b d3                                        	mov    rdx,rbx
    3691cc692e5a:	83 e2 02                                        	and    edx,0x2
    3691cc692e5d:	48 8b cb                                        	mov    rcx,rbx
    3691cc692e60:	83 e1 01                                        	and    ecx,0x1
    3691cc692e63:	83 fb 0f                                        	cmp    ebx,0xf
    3691cc692e66:	0f 84 6c 00 00 00                               	je     0x3691cc692ed8
    3691cc692e6c:	85 c9                                           	test   ecx,ecx
    3691cc692e6e:	0f 85 08 00 00 00                               	jne    0x3691cc692e7c
    3691cc692e74:	45 33 c0                                        	xor    r8d,r8d
    3691cc692e77:	e9 08 00 00 00                                  	jmp    0x3691cc692e84
    3691cc692e7c:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc692e80:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc692e84:	85 d2                                           	test   edx,edx
    3691cc692e86:	0f 85 08 00 00 00                               	jne    0x3691cc692e94
    3691cc692e8c:	45 33 ff                                        	xor    r15d,r15d
    3691cc692e8f:	e9 08 00 00 00                                  	jmp    0x3691cc692e9c
    3691cc692e94:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    3691cc692e98:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc692e9c:	85 c0                                           	test   eax,eax
    3691cc692e9e:	0f 85 07 00 00 00                               	jne    0x3691cc692eab
    3691cc692ea4:	33 c0                                           	xor    eax,eax
    3691cc692ea6:	e9 0d 00 00 00                                  	jmp    0x3691cc692eb8
    3691cc692eab:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc692eb1:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    3691cc692eb4:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc692eb8:	45 85 db                                        	test   r11d,r11d
    3691cc692ebb:	0f 85 36 00 00 00                               	jne    0x3691cc692ef7
    3691cc692ec1:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
    3691cc692ec6:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    3691cc692ecb:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc692ed0:	45 33 db                                        	xor    r11d,r11d
    3691cc692ed3:	e9 45 00 00 00                                  	jmp    0x3691cc692f1d
    3691cc692ed8:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
    3691cc692edc:	47 8b 3c 1c                                     	mov    r15d,DWORD PTR [r12+r11*1]
    3691cc692ee0:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc692ee4:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc692ee8:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    3691cc692eef:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
    3691cc692ef3:	43 8b 04 1c                                     	mov    eax,DWORD PTR [r12+r11*1]
    3691cc692ef7:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc692efd:	44 8d 1c 97                                     	lea    r11d,[rdi+rdx*4]
    3691cc692f01:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc692f05:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
    3691cc692f0a:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    3691cc692f0f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc692f14:	83 fb 0f                                        	cmp    ebx,0xf
    3691cc692f17:	0f 84 68 00 00 00                               	je     0x3691cc692f85
    3691cc692f1d:	f6 c3 01                                        	test   bl,0x1
    3691cc692f20:	0f 85 08 00 00 00                               	jne    0x3691cc692f2e
    3691cc692f26:	45 33 c0                                        	xor    r8d,r8d
    3691cc692f29:	e9 0d 00 00 00                                  	jmp    0x3691cc692f3b
    3691cc692f2e:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
    3691cc692f33:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc692f37:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc692f3b:	f6 c3 02                                        	test   bl,0x2
    3691cc692f3e:	0f 85 07 00 00 00                               	jne    0x3691cc692f4b
    3691cc692f44:	33 d2                                           	xor    edx,edx
    3691cc692f46:	e9 0d 00 00 00                                  	jmp    0x3691cc692f58
    3691cc692f4b:	c4 63 79 16 da 01                               	vpextrd edx,xmm11,0x1
    3691cc692f51:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    3691cc692f54:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    3691cc692f58:	f6 c3 04                                        	test   bl,0x4
    3691cc692f5b:	0f 85 07 00 00 00                               	jne    0x3691cc692f68
    3691cc692f61:	33 c9                                           	xor    ecx,ecx
    3691cc692f63:	e9 0d 00 00 00                                  	jmp    0x3691cc692f75
    3691cc692f68:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
    3691cc692f6e:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
    3691cc692f71:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    3691cc692f75:	f6 c3 08                                        	test   bl,0x8
    3691cc692f78:	0f 85 2f 00 00 00                               	jne    0x3691cc692fad
    3691cc692f7e:	33 f6                                           	xor    esi,esi
    3691cc692f80:	e9 35 00 00 00                                  	jmp    0x3691cc692fba
    3691cc692f85:	c4 43 79 16 d8 01                               	vpextrd r8d,xmm11,0x1
    3691cc692f8b:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc692f8f:	43 8b 14 04                                     	mov    edx,DWORD PTR [r12+r8*1]
    3691cc692f93:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
    3691cc692f98:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc692f9c:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc692fa0:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
    3691cc692fa6:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
    3691cc692fa9:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    3691cc692fad:	c4 63 79 16 de 03                               	vpextrd esi,xmm11,0x3
    3691cc692fb3:	8d 34 b7                                        	lea    esi,[rdi+rsi*4]
    3691cc692fb6:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    3691cc692fba:	c4 43 19 22 df 01                               	vpinsrd xmm11,xmm12,r15d,0x1
    3691cc692fc0:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    3691cc692fc5:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc692fca:	c4 63 19 22 e2 01                               	vpinsrd xmm12,xmm12,edx,0x1
    3691cc692fd0:	83 fb 0f                                        	cmp    ebx,0xf
    3691cc692fd3:	0f 84 6b 00 00 00                               	je     0x3691cc693044
    3691cc692fd9:	f6 c3 01                                        	test   bl,0x1
    3691cc692fdc:	0f 85 08 00 00 00                               	jne    0x3691cc692fea
    3691cc692fe2:	45 33 c0                                        	xor    r8d,r8d
    3691cc692fe5:	e9 0d 00 00 00                                  	jmp    0x3691cc692ff7
    3691cc692fea:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    3691cc692fef:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc692ff3:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc692ff7:	f6 c3 02                                        	test   bl,0x2
    3691cc692ffa:	0f 85 08 00 00 00                               	jne    0x3691cc693008
    3691cc693000:	45 33 ff                                        	xor    r15d,r15d
    3691cc693003:	e9 0e 00 00 00                                  	jmp    0x3691cc693016
    3691cc693008:	c4 43 79 16 ef 01                               	vpextrd r15d,xmm13,0x1
    3691cc69300e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    3691cc693012:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc693016:	f6 c3 04                                        	test   bl,0x4
    3691cc693019:	0f 85 07 00 00 00                               	jne    0x3691cc693026
    3691cc69301f:	33 d2                                           	xor    edx,edx
    3691cc693021:	e9 0d 00 00 00                                  	jmp    0x3691cc693033
    3691cc693026:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    3691cc69302c:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    3691cc69302f:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    3691cc693033:	f6 c3 08                                        	test   bl,0x8
    3691cc693036:	0f 85 30 00 00 00                               	jne    0x3691cc69306c
    3691cc69303c:	45 33 c9                                        	xor    r9d,r9d
    3691cc69303f:	e9 36 00 00 00                                  	jmp    0x3691cc69307a
    3691cc693044:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    3691cc69304a:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc69304e:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
    3691cc693052:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    3691cc693057:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc69305b:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc69305f:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    3691cc693065:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    3691cc693068:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    3691cc69306c:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    3691cc693072:	46 8d 0c 8f                                     	lea    r9d,[rdi+r9*4]
    3691cc693076:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    3691cc69307a:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    3691cc693080:	c4 63 19 22 e1 02                               	vpinsrd xmm12,xmm12,ecx,0x2
    3691cc693086:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    3691cc69308a:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    3691cc69308f:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc693094:	c4 43 31 22 cf 01                               	vpinsrd xmm9,xmm9,r15d,0x1
    3691cc69309a:	c4 63 31 22 ca 02                               	vpinsrd xmm9,xmm9,edx,0x2
    3691cc6930a0:	83 fb 0f                                        	cmp    ebx,0xf
    3691cc6930a3:	0f 84 6a 00 00 00                               	je     0x3691cc693113
    3691cc6930a9:	f6 c3 01                                        	test   bl,0x1
    3691cc6930ac:	0f 85 08 00 00 00                               	jne    0x3691cc6930ba
    3691cc6930b2:	45 33 c0                                        	xor    r8d,r8d
    3691cc6930b5:	e9 0d 00 00 00                                  	jmp    0x3691cc6930c7
    3691cc6930ba:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    3691cc6930bf:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc6930c3:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc6930c7:	f6 c3 02                                        	test   bl,0x2
    3691cc6930ca:	0f 85 08 00 00 00                               	jne    0x3691cc6930d8
    3691cc6930d0:	45 33 ff                                        	xor    r15d,r15d
    3691cc6930d3:	e9 0e 00 00 00                                  	jmp    0x3691cc6930e6
    3691cc6930d8:	c4 c3 79 16 f7 01                               	vpextrd r15d,xmm6,0x1
    3691cc6930de:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    3691cc6930e2:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc6930e6:	f6 c3 04                                        	test   bl,0x4
    3691cc6930e9:	0f 85 07 00 00 00                               	jne    0x3691cc6930f6
    3691cc6930ef:	33 c0                                           	xor    eax,eax
    3691cc6930f1:	e9 0d 00 00 00                                  	jmp    0x3691cc693103
    3691cc6930f6:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    3691cc6930fc:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    3691cc6930ff:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc693103:	f6 c3 08                                        	test   bl,0x8
    3691cc693106:	0f 85 2f 00 00 00                               	jne    0x3691cc69313b
    3691cc69310c:	33 ff                                           	xor    edi,edi
    3691cc69310e:	e9 35 00 00 00                                  	jmp    0x3691cc693148
    3691cc693113:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    3691cc693119:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc69311d:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
    3691cc693121:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    3691cc693126:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc69312a:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc69312e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    3691cc693134:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    3691cc693137:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    3691cc69313b:	c4 e3 79 16 f2 03                               	vpextrd edx,xmm6,0x3
    3691cc693141:	8d 3c 97                                        	lea    edi,[rdi+rdx*4]
    3691cc693144:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc693148:	c4 c3 21 22 f3 03                               	vpinsrd xmm6,xmm11,r11d,0x3
    3691cc69314e:	c4 63 19 22 de 03                               	vpinsrd xmm11,xmm12,esi,0x3
    3691cc693154:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    3691cc693159:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc69315e:	c4 43 19 22 e7 01                               	vpinsrd xmm12,xmm12,r15d,0x1
    3691cc693164:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    3691cc69316a:	c4 63 19 22 e7 03                               	vpinsrd xmm12,xmm12,edi,0x3
    3691cc693170:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    3691cc693176:	c4 41 79 28 ec                                  	vmovapd xmm13,xmm12
    3691cc69317b:	e9 a2 00 00 00                                  	jmp    0x3691cc693222
    3691cc693180:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc693184:	c4 81 7b 10 34 04                               	vmovsd xmm6,QWORD PTR [r12+r8*1]
    3691cc69318a:	46 8d 04 bf                                     	lea    r8d,[rdi+r15*4]
    3691cc69318e:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
    3691cc693194:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    3691cc693199:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    3691cc6931a0:	46 8d 04 9f                                     	lea    r8d,[rdi+r11*4]
    3691cc6931a4:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
    3691cc6931aa:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    3691cc6931b0:	44 8d 04 87                                     	lea    r8d,[rdi+rax*4]
    3691cc6931b4:	c4 01 7b 10 1c 04                               	vmovsd xmm11,QWORD PTR [r12+r8*1]
    3691cc6931ba:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    3691cc6931bf:	c4 41 48 c6 d9 dd                               	vshufps xmm11,xmm6,xmm9,0xdd
    3691cc6931c5:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    3691cc6931cb:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    3691cc6931d1:	c4 41 79 7e c8                                  	vmovd  r8d,xmm9
    3691cc6931d6:	44 03 c7                                        	add    r8d,edi
    3691cc6931d9:	c4 01 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+r8*1]
    3691cc6931df:	c4 43 79 16 c8 01                               	vpextrd r8d,xmm9,0x1
    3691cc6931e5:	44 03 c7                                        	add    r8d,edi
    3691cc6931e8:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
    3691cc6931ee:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    3691cc6931f3:	c4 43 79 16 c8 02                               	vpextrd r8d,xmm9,0x2
    3691cc6931f9:	44 03 c7                                        	add    r8d,edi
    3691cc6931fc:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
    3691cc693202:	c4 43 79 16 c8 03                               	vpextrd r8d,xmm9,0x3
    3691cc693208:	41 03 f8                                        	add    edi,r8d
    3691cc69320b:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    3691cc693211:	c4 41 11 6c c9                                  	vpunpcklqdq xmm9,xmm13,xmm9
    3691cc693216:	c4 41 18 c6 e9 dd                               	vshufps xmm13,xmm12,xmm9,0xdd
    3691cc69321c:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    3691cc693222:	c5 99 72 d6 18                                  	vpsrld xmm12,xmm6,0x18
    3691cc693227:	c4 c1 71 72 d3 18                               	vpsrld xmm1,xmm11,0x18
    3691cc69322d:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    3691cc693231:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    3691cc693235:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    3691cc69323b:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    3691cc69323f:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    3691cc693249:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc69324e:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc693252:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    3691cc693257:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    3691cc69325f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    3691cc693264:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    3691cc69326e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc693273:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc693277:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    3691cc69327b:	4c 8b 15 27 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c27]        # 0x3691cc68cea9
    3691cc693282:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc693287:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    3691cc69328c:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc693292:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    3691cc693296:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    3691cc69329b:	4c 8b 15 03 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe303]        # 0x3691cc6915a5
    3691cc6932a2:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6932a7:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    3691cc6932ad:	c5 79 df fb                                     	vpandn xmm15,xmm0,xmm3
    3691cc6932b1:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    3691cc6932b5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6932ba:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    3691cc6932be:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    3691cc6932c2:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    3691cc6932c8:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    3691cc6932cc:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    3691cc6932d0:	c5 f8 10 a5 d0 fe ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x130]
    3691cc6932d8:	c5 d8 5c ff                                     	vsubps xmm7,xmm4,xmm7
    3691cc6932dc:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    3691cc6932e1:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    3691cc6932e5:	4c 8b 15 bd 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9bbd]        # 0x3691cc68cea9
    3691cc6932ec:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    3691cc6932f1:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    3691cc6932f6:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    3691cc6932fc:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    3691cc693300:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    3691cc693305:	4c 8b 15 99 e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe299]        # 0x3691cc6915a5
    3691cc69330c:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    3691cc693311:	c4 c1 40 c2 fe 01                               	vcmpltps xmm7,xmm7,xmm14
    3691cc693317:	c5 41 df fb                                     	vpandn xmm15,xmm7,xmm3
    3691cc69331b:	c5 d9 db ff                                     	vpand  xmm7,xmm4,xmm7
    3691cc69331f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc693324:	c5 69 fa f7                                     	vpsubd xmm14,xmm2,xmm7
    3691cc693328:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
    3691cc69332d:	c4 c1 69 72 d1 18                               	vpsrld xmm2,xmm9,0x18
    3691cc693333:	c4 c1 61 72 d5 18                               	vpsrld xmm3,xmm13,0x18
    3691cc693339:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    3691cc69333d:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    3691cc693343:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    3691cc693347:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    3691cc69334b:	c4 e2 69 40 d7                                  	vpmulld xmm2,xmm2,xmm7
    3691cc693350:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
    3691cc693354:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    3691cc69335e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc693363:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc693367:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
    3691cc69336b:	c4 c1 19 72 d4 10                               	vpsrld xmm12,xmm12,0x10
    3691cc693371:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc693376:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    3691cc69337c:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    3691cc693381:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc693386:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    3691cc69338c:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    3691cc693391:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    3691cc693396:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    3691cc69339b:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x3691cc691dc3
    3691cc6933a2:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6933a7:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6933ab:	c5 18 59 e3                                     	vmulps xmm12,xmm12,xmm3
    3691cc6933af:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    3691cc6933b2:	c4 41 7a 7f a4 14 c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1c0],xmm12
    3691cc6933bc:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    3691cc6933c1:	4c 8b 15 13 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe913]        # 0x3691cc691cdb
    3691cc6933c8:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    3691cc6933cd:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    3691cc6933d1:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    3691cc6933d5:	c4 c1 51 72 d3 10                               	vpsrld xmm5,xmm11,0x10
    3691cc6933db:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    3691cc6933df:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
    3691cc6933e3:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
    3691cc6933e9:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
    3691cc6933ed:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    3691cc6933f1:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
    3691cc6933f6:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    3691cc6933fc:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    3691cc693400:	c4 c1 39 72 d5 10                               	vpsrld xmm8,xmm13,0x10
    3691cc693406:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    3691cc69340a:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    3691cc69340f:	c4 c3 71 0f e8 08                               	vpalignr xmm5,xmm1,xmm8,0x8
    3691cc693415:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    3691cc693419:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    3691cc69341d:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    3691cc693422:	c4 41 19 fe c0                                  	vpaddd xmm8,xmm12,xmm8
    3691cc693427:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    3691cc69342b:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    3691cc693431:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc693436:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc69343c:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc693441:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc693446:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc69344c:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc693451:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc693456:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc69345b:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    3691cc69345f:	c4 41 7a 7f 84 14 b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1b0],xmm8
    3691cc693469:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    3691cc69346e:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    3691cc693472:	c4 c1 19 72 d3 08                               	vpsrld xmm12,xmm11,0x8
    3691cc693478:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    3691cc69347c:	c4 41 39 6b c4                                  	vpackssdw xmm8,xmm8,xmm12
    3691cc693481:	c4 43 71 0f e0 08                               	vpalignr xmm12,xmm1,xmm8,0x8
    3691cc693487:	c4 41 39 61 c4                                  	vpunpcklwd xmm8,xmm8,xmm12
    3691cc69348c:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    3691cc693490:	c4 42 39 40 c6                                  	vpmulld xmm8,xmm8,xmm14
    3691cc693495:	c4 c1 19 72 d1 08                               	vpsrld xmm12,xmm9,0x8
    3691cc69349b:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    3691cc69349f:	c4 c1 51 72 d5 08                               	vpsrld xmm5,xmm13,0x8
    3691cc6934a5:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    3691cc6934a9:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
    3691cc6934ad:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
    3691cc6934b3:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
    3691cc6934b7:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    3691cc6934bb:	c4 62 19 40 e7                                  	vpmulld xmm12,xmm12,xmm7
    3691cc6934c0:	c4 41 39 fe c4                                  	vpaddd xmm8,xmm8,xmm12
    3691cc6934c5:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    3691cc6934c9:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    3691cc6934cf:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6934d4:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6934da:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6934df:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6934e4:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6934ea:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6934ef:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6934f4:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6934f9:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    3691cc6934fd:	c4 41 7a 7f 84 14 a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1a0],xmm8
    3691cc693507:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    3691cc69350b:	c5 21 db c4                                     	vpand  xmm8,xmm11,xmm4
    3691cc69350f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    3691cc693514:	c4 63 71 0f c6 08                               	vpalignr xmm8,xmm1,xmm6,0x8
    3691cc69351a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    3691cc69351f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    3691cc693523:	c4 c2 49 40 f6                                  	vpmulld xmm6,xmm6,xmm14
    3691cc693528:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    3691cc69352c:	c5 11 db cc                                     	vpand  xmm9,xmm13,xmm4
    3691cc693530:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    3691cc693535:	c4 43 71 0f c8 08                               	vpalignr xmm9,xmm1,xmm8,0x8
    3691cc69353b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    3691cc693540:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    3691cc693544:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    3691cc693549:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    3691cc69354d:	c5 f9 fe c2                                     	vpaddd xmm0,xmm0,xmm2
    3691cc693551:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    3691cc693556:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc69355b:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc693561:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc693566:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69356b:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc693570:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc693574:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc693578:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc69357d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    3691cc693581:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    3691cc69358b:	8b fa                                           	mov    edi,edx
    3691cc69358d:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc693594:	e9 62 05 00 00                                  	jmp    0x3691cc693afb
    3691cc693599:	83 fb 0f                                        	cmp    ebx,0xf
    3691cc69359c:	0f 84 61 00 00 00                               	je     0x3691cc693603
    3691cc6935a2:	f6 c3 01                                        	test   bl,0x1
    3691cc6935a5:	0f 85 08 00 00 00                               	jne    0x3691cc6935b3
    3691cc6935ab:	45 33 c0                                        	xor    r8d,r8d
    3691cc6935ae:	e9 08 00 00 00                                  	jmp    0x3691cc6935bb
    3691cc6935b3:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc6935b7:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc6935bb:	f6 c3 02                                        	test   bl,0x2
    3691cc6935be:	0f 85 08 00 00 00                               	jne    0x3691cc6935cc
    3691cc6935c4:	45 33 db                                        	xor    r11d,r11d
    3691cc6935c7:	e9 08 00 00 00                                  	jmp    0x3691cc6935d4
    3691cc6935cc:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
    3691cc6935d0:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc6935d4:	f6 c3 04                                        	test   bl,0x4
    3691cc6935d7:	0f 85 08 00 00 00                               	jne    0x3691cc6935e5
    3691cc6935dd:	45 33 ff                                        	xor    r15d,r15d
    3691cc6935e0:	e9 0e 00 00 00                                  	jmp    0x3691cc6935f3
    3691cc6935e5:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc6935eb:	44 8d 3c 87                                     	lea    r15d,[rdi+rax*4]
    3691cc6935ef:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc6935f3:	f6 c3 08                                        	test   bl,0x8
    3691cc6935f6:	0f 85 2f 00 00 00                               	jne    0x3691cc69362b
    3691cc6935fc:	33 ff                                           	xor    edi,edi
    3691cc6935fe:	e9 35 00 00 00                                  	jmp    0x3691cc693638
    3691cc693603:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    3691cc69360a:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
    3691cc69360e:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc693612:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    3691cc693616:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    3691cc69361a:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    3691cc69361e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc693622:	45 8b d7                                        	mov    r10d,r15d
    3691cc693625:	45 8b fb                                        	mov    r15d,r11d
    3691cc693628:	45 8b da                                        	mov    r11d,r10d
    3691cc69362b:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    3691cc693631:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    3691cc693634:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    3691cc693638:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    3691cc69363d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc693642:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    3691cc693648:	c4 c3 79 22 c7 02                               	vpinsrd xmm0,xmm0,r15d,0x2
    3691cc69364e:	c4 e3 79 22 c7 03                               	vpinsrd xmm0,xmm0,edi,0x3
    3691cc693654:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    3691cc693659:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc69365e:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    3691cc693664:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    3691cc693669:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69366e:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    3691cc693673:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    3691cc693677:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    3691cc69367b:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    3691cc693680:	4c 8b 15 3c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73c]        # 0x3691cc691dc3
    3691cc693687:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc69368c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc693690:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    3691cc693694:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc693697:	c4 c1 7a 7f b4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm6
    3691cc6936a1:	4c 8b 15 33 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe633]        # 0x3691cc691cdb
    3691cc6936a8:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6936ad:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6936b1:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    3691cc6936b5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6936ba:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6936c0:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6936c5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6936ca:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6936d0:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6936d5:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6936da:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6936df:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    3691cc6936e3:	c4 41 7a 7f 84 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm8
    3691cc6936ed:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    3691cc6936f2:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    3691cc6936f6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6936fb:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc693701:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc693706:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69370b:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc693711:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc693716:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc69371b:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc693720:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    3691cc693724:	c4 41 7a 7f 84 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm8
    3691cc69372e:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    3691cc693733:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    3691cc693737:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc69373c:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc693742:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc693747:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc69374c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc693751:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc693755:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc693759:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc69375e:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc693762:	c4 c1 7a 7f 84 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm0
    3691cc69376c:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc693773:	e9 83 03 00 00                                  	jmp    0x3691cc693afb
    3691cc693778:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc69377c:	49 8d 7c 24 58                                  	lea    rdi,[r12+0x58]
    3691cc693781:	4d 8b f9                                        	mov    r15,r9
    3691cc693784:	c4 22 79 18 04 3f                               	vbroadcastss xmm8,DWORD PTR [rdi+r15*1]
    3691cc69378a:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
    3691cc69378f:	c4 62 79 18 34 17                               	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1]
    3691cc693795:	c4 41 68 59 f6                                  	vmulps xmm14,xmm2,xmm14
    3691cc69379a:	c4 41 38 58 c6                                  	vaddps xmm8,xmm8,xmm14
    3691cc69379f:	c4 62 79 18 34 37                               	vbroadcastss xmm14,DWORD PTR [rdi+rsi*1]
    3691cc6937a5:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    3691cc6937aa:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    3691cc6937af:	c4 c1 78 59 d8                                  	vmulps xmm3,xmm0,xmm8
    3691cc6937b4:	83 f9 03                                        	cmp    ecx,0x3
    3691cc6937b7:	0f 84 b3 02 00 00                               	je     0x3691cc693a70
    3691cc6937bd:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc6937c1:	c4 81 7a 7f 84 1c c0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xc0],xmm0
    3691cc6937cb:	c4 81 7a 7f 84 1c b0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xb0],xmm0
    3691cc6937d5:	c4 81 7a 7f 84 1c a0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xa0],xmm0
    3691cc6937df:	c4 81 7a 7f 8c 1c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1f0],xmm1
    3691cc6937e9:	c4 81 7a 7f b4 1c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1e0],xmm6
    3691cc6937f3:	c4 81 7a 7f 9c 1c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1d0],xmm3
    3691cc6937fd:	c4 81 7a 7f 84 1c 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x90],xmm0
    3691cc693807:	33 ff                                           	xor    edi,edi
    3691cc693809:	e9 48 00 00 00                                  	jmp    0x3691cc693856
    3691cc69380e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc693817:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc693820:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc693829:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc693832:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc69383b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    3691cc693840:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc693847:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc69384b:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc69384f:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc693856:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    3691cc69385d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc693862:	0f 85 46 2e 00 00                               	jne    0x3691cc6966ae
    3691cc693868:	8b cf                                           	mov    ecx,edi
    3691cc69386a:	4c 8b cb                                        	mov    r9,rbx
    3691cc69386d:	41 d3 e9                                        	shr    r9d,cl
    3691cc693870:	41 f6 c1 01                                     	test   r9b,0x1
    3691cc693874:	0f 84 55 01 00 00                               	je     0x3691cc6939cf
    3691cc69387a:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
    3691cc69387f:	47 8b 4c 04 0c                                  	mov    r9d,DWORD PTR [r12+r8*1+0xc]
    3691cc693884:	48 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rcx
    3691cc69388b:	43 8b 4c 04 08                                  	mov    ecx,DWORD PTR [r12+r8*1+0x8]
    3691cc693890:	43 8b 4c 04 04                                  	mov    ecx,DWORD PTR [r12+r8*1+0x4]
    3691cc693895:	48 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rcx
    3691cc69389c:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    3691cc6938a0:	83 f9 02                                        	cmp    ecx,0x2
    3691cc6938a3:	0f 84 b3 00 00 00                               	je     0x3691cc69395c
    3691cc6938a9:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    3691cc6938b0:	85 c9                                           	test   ecx,ecx
    3691cc6938b2:	0f 85 41 00 00 00                               	jne    0x3691cc6938f9
    3691cc6938b8:	41 8d 8c bb f0 01 00 00                         	lea    ecx,[r11+rdi*4+0x1f0]
    3691cc6938c0:	c4 c1 7a 10 0c 0c                               	vmovss xmm1,DWORD PTR [r12+rcx*1]
    3691cc6938c6:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    3691cc6938cd:	44 8b cf                                        	mov    r9d,edi
    3691cc6938d0:	41 c1 e1 04                                     	shl    r9d,0x4
    3691cc6938d4:	41 03 c9                                        	add    ecx,r9d
    3691cc6938d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6938db:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc6938e1:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    3691cc6938e7:	8b d9                                           	mov    ebx,ecx
    3691cc6938e9:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    3691cc6938ef:	e8 2c d9 f2 ff                                  	call   0x3691cc5c1220
    3691cc6938f4:	e9 d6 00 00 00                                  	jmp    0x3691cc6939cf
    3691cc6938f9:	4d 8b d0                                        	mov    r10,r8
    3691cc6938fc:	4d 8b c4                                        	mov    r8,r12
    3691cc6938ff:	4d 8b e2                                        	mov    r12,r10
    3691cc693902:	43 8b 4c 20 14                                  	mov    ecx,DWORD PTR [r8+r12*1+0x14]
    3691cc693907:	44 8b d7                                        	mov    r10d,edi
    3691cc69390a:	41 8b fb                                        	mov    edi,r11d
    3691cc69390d:	45 8b da                                        	mov    r11d,r10d
    3691cc693910:	46 8d 8c 9f f0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1f0]
    3691cc693918:	c4 81 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+r9*1]
    3691cc69391e:	46 8d 8c 9f e0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1e0]
    3691cc693926:	c4 81 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+r9*1]
    3691cc69392c:	44 8d 8f 90 00 00 00                            	lea    r9d,[rdi+0x90]
    3691cc693933:	41 c1 e3 04                                     	shl    r11d,0x4
    3691cc693937:	45 03 cb                                        	add    r9d,r11d
    3691cc69393a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69393e:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc693944:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    3691cc69394a:	8b d9                                           	mov    ebx,ecx
    3691cc69394c:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    3691cc693952:	e8 e1 d8 f2 ff                                  	call   0x3691cc5c1238
    3691cc693957:	e9 73 00 00 00                                  	jmp    0x3691cc6939cf
    3691cc69395c:	4d 8b d0                                        	mov    r10,r8
    3691cc69395f:	4d 8b c4                                        	mov    r8,r12
    3691cc693962:	4d 8b e2                                        	mov    r12,r10
    3691cc693965:	47 8b 7c 20 14                                  	mov    r15d,DWORD PTR [r8+r12*1+0x14]
    3691cc69396a:	43 8b 44 20 18                                  	mov    eax,DWORD PTR [r8+r12*1+0x18]
    3691cc69396f:	44 8b d7                                        	mov    r10d,edi
    3691cc693972:	41 8b fb                                        	mov    edi,r11d
    3691cc693975:	45 8b da                                        	mov    r11d,r10d
    3691cc693978:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    3691cc693980:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    3691cc693986:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    3691cc69398e:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    3691cc693994:	42 8d 94 9f d0 01 00 00                         	lea    edx,[rdi+r11*4+0x1d0]
    3691cc69399c:	c4 c1 7a 10 1c 10                               	vmovss xmm3,DWORD PTR [r8+rdx*1]
    3691cc6939a2:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    3691cc6939a8:	41 8b cb                                        	mov    ecx,r11d
    3691cc6939ab:	c1 e1 04                                        	shl    ecx,0x4
    3691cc6939ae:	03 d1                                           	add    edx,ecx
    3691cc6939b0:	52                                              	push   rdx
    3691cc6939b1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6939b5:	41 8b d1                                        	mov    edx,r9d
    3691cc6939b8:	44 8b c8                                        	mov    r9d,eax
    3691cc6939bb:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc6939c1:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    3691cc6939c7:	41 8b df                                        	mov    ebx,r15d
    3691cc6939ca:	e8 59 d8 f2 ff                                  	call   0x3691cc5c1228
    3691cc6939cf:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    3691cc6939d5:	83 c7 01                                        	add    edi,0x1
    3691cc6939d8:	83 ff 04                                        	cmp    edi,0x4
    3691cc6939db:	0f 85 5f fe ff ff                               	jne    0x3691cc693840
    3691cc6939e1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6939e4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6939e8:	c4 c1 7a 6f 84 38 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0xb0]
    3691cc6939f2:	c4 c1 7a 6f b4 38 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0xc0]
    3691cc6939fc:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    3691cc693a00:	c4 41 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x90]
    3691cc693a0a:	c4 41 7a 6f 8c 38 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0xa0]
    3691cc693a14:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    3691cc693a19:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    3691cc693a1d:	c4 41 7a 7f 9c 38 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1c0],xmm11
    3691cc693a27:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    3691cc693a2b:	c4 c1 7a 7f bc 38 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1b0],xmm7
    3691cc693a35:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    3691cc693a39:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    3691cc693a3e:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    3691cc693a42:	c4 c1 7a 7f bc 38 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1a0],xmm7
    3691cc693a4c:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    3691cc693a50:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
    3691cc693a5a:	4d 8b e0                                        	mov    r12,r8
    3691cc693a5d:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc693a64:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc693a6b:	e9 8b 00 00 00                                  	jmp    0x3691cc693afb
    3691cc693a70:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    3691cc693a77:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc693a7b:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc693a7e:	48 8b d3                                        	mov    rdx,rbx
    3691cc693a81:	c5 f9 28 d6                                     	vmovapd xmm2,xmm6
    3691cc693a85:	e8 9e da f2 ff                                  	call   0x3691cc5c1528
    3691cc693a8a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc693a8d:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc693a91:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc693a98:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc693a9f:	e9 57 00 00 00                                  	jmp    0x3691cc693afb
    3691cc693aa4:	49 8d 4c 24 3c                                  	lea    rcx,[r12+0x3c]
    3691cc693aa9:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    3691cc693aaf:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
    3691cc693ab9:	49 8d 4c 24 40                                  	lea    rcx,[r12+0x40]
    3691cc693abe:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    3691cc693ac4:	c4 81 7a 7f 84 1c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1a0],xmm0
    3691cc693ace:	49 8d 4c 24 44                                  	lea    rcx,[r12+0x44]
    3691cc693ad3:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    3691cc693ad9:	c4 81 7a 7f 84 1c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1b0],xmm0
    3691cc693ae3:	49 8d 4c 24 48                                  	lea    rcx,[r12+0x48]
    3691cc693ae8:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    3691cc693aee:	c4 81 7a 7f 84 1c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1c0],xmm0
    3691cc693af8:	41 8b fb                                        	mov    edi,r11d
    3691cc693afb:	c4 c1 7a 6f 84 3c 90 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x190]
    3691cc693b05:	47 8b 9c 04 34 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x134]
    3691cc693b0d:	43 83 bc 04 34 01 00 00 02                      	cmp    DWORD PTR [r12+r8*1+0x134],0x2
    3691cc693b16:	0f 84 58 00 00 00                               	je     0x3691cc693b74
    3691cc693b1c:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
    3691cc693b26:	c5 f8 10 bd 10 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xf0]
    3691cc693b2e:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    3691cc693b32:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
    3691cc693b3c:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    3691cc693b44:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    3691cc693b48:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
    3691cc693b52:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
    3691cc693b5a:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    3691cc693b5f:	c5 78 10 8d e0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x120]
    3691cc693b67:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc693b6b:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc693b6f:	e9 22 00 00 00                                  	jmp    0x3691cc693b96
    3691cc693b74:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
    3691cc693b7e:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
    3691cc693b88:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
    3691cc693b92:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc693b96:	c5 41 6a ce                                     	vpunpckhdq xmm9,xmm7,xmm6
    3691cc693b9a:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    3691cc693b9f:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    3691cc693ba4:	c4 41 7a 7f 5c 3c 30                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x30],xmm11
    3691cc693bab:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    3691cc693bb0:	c4 41 7a 7f 4c 3c 20                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x20],xmm9
    3691cc693bb7:	c5 c1 62 f6                                     	vpunpckldq xmm6,xmm7,xmm6
    3691cc693bbb:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    3691cc693bc0:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    3691cc693bc4:	c4 c1 7a 7f 7c 3c 10                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x10],xmm7
    3691cc693bcb:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    3691cc693bcf:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    3691cc693bd5:	44 8b df                                        	mov    r11d,edi
    3691cc693bd8:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc693bdf:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    3691cc693be2:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc693be6:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc693beb:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc693bf0:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc693bf4:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    3691cc693bfb:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc693c02:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    3691cc693c09:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    3691cc693c11:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    3691cc693c19:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc693c21:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc693c29:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc693c31:	f6 c3 01                                        	test   bl,0x1
    3691cc693c34:	0f 85 08 00 00 00                               	jne    0x3691cc693c42
    3691cc693c3a:	4d 8b c4                                        	mov    r8,r12
    3691cc693c3d:	e9 77 02 00 00                                  	jmp    0x3691cc693eb9
    3691cc693c42:	c4 81 7a 10 4c 1c 40                            	vmovss xmm1,DWORD PTR [r12+r11*1+0x40]
    3691cc693c49:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    3691cc693c50:	0f 85 a1 00 00 00                               	jne    0x3691cc693cf7
    3691cc693c56:	c4 81 7a 10 14 1c                               	vmovss xmm2,DWORD PTR [r12+r11*1]
    3691cc693c5c:	c4 81 7a 10 5c 1c 04                            	vmovss xmm3,DWORD PTR [r12+r11*1+0x4]
    3691cc693c63:	c4 81 7a 10 44 1c 08                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x8]
    3691cc693c6a:	c4 81 7a 10 6c 1c 0c                            	vmovss xmm5,DWORD PTR [r12+r11*1+0xc]
    3691cc693c71:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc693c75:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc693c78:	8b d7                                           	mov    edx,edi
    3691cc693c7a:	41 8b cf                                        	mov    ecx,r15d
    3691cc693c7d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc693c81:	e8 da d5 f2 ff                                  	call   0x3691cc5c1260
    3691cc693c86:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc693c8a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc693c8e:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc693c92:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc693c99:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    3691cc693c9c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc693ca0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc693ca5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc693caa:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc693cae:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    3691cc693cb5:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc693cbc:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    3691cc693cc3:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    3691cc693ccb:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc693cd2:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    3691cc693cda:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc693ce2:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc693cea:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc693cf2:	e9 c2 01 00 00                                  	jmp    0x3691cc693eb9
    3691cc693cf7:	4d 8b c4                                        	mov    r8,r12
    3691cc693cfa:	4c 8b e0                                        	mov    r12,rax
    3691cc693cfd:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    3691cc693d01:	41 0f af c7                                     	imul   eax,r15d
    3691cc693d05:	03 c7                                           	add    eax,edi
    3691cc693d07:	43 8b 4c 20 68                                  	mov    ecx,DWORD PTR [r8+r12*1+0x68]
    3691cc693d0c:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    3691cc693d12:	0f 84 1f 00 00 00                               	je     0x3691cc693d37
    3691cc693d18:	43 8b 4c 20 70                                  	mov    ecx,DWORD PTR [r8+r12*1+0x70]
    3691cc693d1d:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
    3691cc693d23:	0f 84 0e 00 00 00                               	je     0x3691cc693d37
    3691cc693d29:	43 8b 4c 20 0c                                  	mov    ecx,DWORD PTR [r8+r12*1+0xc]
    3691cc693d2e:	8d 0c 81                                        	lea    ecx,[rcx+rax*4]
    3691cc693d31:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
    3691cc693d37:	c4 81 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+r11*1]
    3691cc693d3d:	43 8b 4c 20 08                                  	mov    ecx,DWORD PTR [r8+r12*1+0x8]
    3691cc693d42:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    3691cc693d45:	43 8b 4c 20 74                                  	mov    ecx,DWORD PTR [r8+r12*1+0x74]
    3691cc693d4a:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    3691cc693d50:	0f 84 81 00 00 00                               	je     0x3691cc693dd7
    3691cc693d56:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    3691cc693d5b:	43 8b 4c 20 78                                  	mov    ecx,DWORD PTR [r8+r12*1+0x78]
    3691cc693d60:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
    3691cc693d69:	0f 84 09 00 00 00                               	je     0x3691cc693d78
    3691cc693d6f:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc693d73:	e9 04 00 00 00                                  	jmp    0x3691cc693d7c
    3691cc693d78:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc693d7c:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc693d81:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc693d86:	c4 41 7a 10 0c 00                               	vmovss xmm9,DWORD PTR [r8+rax*1]
    3691cc693d8c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    3691cc693d91:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    3691cc693d96:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    3691cc693d9b:	4c 8b 15 21 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe021]        # 0x3691cc691dc3
    3691cc693da2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc693da7:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc693dac:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    3691cc693db1:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    3691cc693db5:	43 8b 4c 20 7c                                  	mov    ecx,DWORD PTR [r8+r12*1+0x7c]
    3691cc693dba:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
    3691cc693dc0:	0f 85 04 00 00 00                               	jne    0x3691cc693dca
    3691cc693dc6:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc693dca:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc693dcf:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    3691cc693dd3:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc693dd7:	4c 8b 15 ef a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ef]        # 0x3691cc68e6cd
    3691cc693dde:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc693de3:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc693de7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc693dec:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    3691cc693df2:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    3691cc693df6:	4c 8b 15 d0 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d0]        # 0x3691cc68e6cd
    3691cc693dfd:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc693e02:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc693e07:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    3691cc693e0c:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    3691cc693e10:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    3691cc693e15:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc693e1a:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    3691cc693e24:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc693e29:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc693e2d:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc693e31:	4c 8b 15 2e f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff42e]        # 0x3691cc693266
    3691cc693e38:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc693e3d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc693e41:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc693e45:	4c 8b 15 5d 90 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff905d]        # 0x3691cc68cea9
    3691cc693e4c:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc693e51:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    3691cc693e56:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc693e5c:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc693e60:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc693e65:	4c 8b 15 0e d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd80e]        # 0x3691cc69167a
    3691cc693e6c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc693e71:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc693e76:	4c 8b 15 28 d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd728]        # 0x3691cc6915a5
    3691cc693e7d:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc693e82:	4c 8b 15 2b d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd72b]        # 0x3691cc6915b4
    3691cc693e89:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc693e8e:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc693e93:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    3691cc693e99:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    3691cc693e9e:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    3691cc693ea2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc693ea7:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    3691cc693eac:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    3691cc693eb0:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    3691cc693eb6:	49 8b c4                                        	mov    rax,r12
    3691cc693eb9:	f6 c3 02                                        	test   bl,0x2
    3691cc693ebc:	0f 84 7f 02 00 00                               	je     0x3691cc694141
    3691cc693ec2:	c4 81 7a 10 4c 18 44                            	vmovss xmm1,DWORD PTR [r8+r11*1+0x44]
    3691cc693ec9:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    3691cc693ed0:	0f 85 a3 00 00 00                               	jne    0x3691cc693f79
    3691cc693ed6:	c4 81 7a 10 54 18 10                            	vmovss xmm2,DWORD PTR [r8+r11*1+0x10]
    3691cc693edd:	c4 81 7a 10 5c 18 14                            	vmovss xmm3,DWORD PTR [r8+r11*1+0x14]
    3691cc693ee4:	c4 81 7a 10 44 18 18                            	vmovss xmm0,DWORD PTR [r8+r11*1+0x18]
    3691cc693eeb:	c4 81 7a 10 6c 18 1c                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x1c]
    3691cc693ef2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc693ef6:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc693ef9:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    3691cc693eff:	41 8b cf                                        	mov    ecx,r15d
    3691cc693f02:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc693f06:	e8 55 d3 f2 ff                                  	call   0x3691cc5c1260
    3691cc693f0b:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc693f0f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc693f13:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc693f17:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc693f1e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc693f22:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc693f27:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc693f2c:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc693f30:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    3691cc693f37:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc693f3e:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    3691cc693f45:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    3691cc693f4d:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc693f54:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    3691cc693f5c:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc693f64:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc693f6c:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc693f74:	e9 c8 01 00 00                                  	jmp    0x3691cc694141
    3691cc693f79:	4c 8b e0                                        	mov    r12,rax
    3691cc693f7c:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    3691cc693f80:	41 0f af c7                                     	imul   eax,r15d
    3691cc693f84:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc693f8a:	03 c1                                           	add    eax,ecx
    3691cc693f8c:	43 8b 7c 20 68                                  	mov    edi,DWORD PTR [r8+r12*1+0x68]
    3691cc693f91:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    3691cc693f97:	0f 84 1f 00 00 00                               	je     0x3691cc693fbc
    3691cc693f9d:	43 8b 7c 20 70                                  	mov    edi,DWORD PTR [r8+r12*1+0x70]
    3691cc693fa2:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
    3691cc693fa8:	0f 84 0e 00 00 00                               	je     0x3691cc693fbc
    3691cc693fae:	43 8b 7c 20 0c                                  	mov    edi,DWORD PTR [r8+r12*1+0xc]
    3691cc693fb3:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    3691cc693fb6:	c4 c1 7a 11 0c 38                               	vmovss DWORD PTR [r8+rdi*1],xmm1
    3691cc693fbc:	8b bd f0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x310]
    3691cc693fc2:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    3691cc693fc8:	43 8b 7c 20 08                                  	mov    edi,DWORD PTR [r8+r12*1+0x8]
    3691cc693fcd:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    3691cc693fd0:	43 8b 44 20 74                                  	mov    eax,DWORD PTR [r8+r12*1+0x74]
    3691cc693fd5:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    3691cc693fdb:	0f 84 81 00 00 00                               	je     0x3691cc694062
    3691cc693fe1:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    3691cc693fe6:	43 8b 44 20 78                                  	mov    eax,DWORD PTR [r8+r12*1+0x78]
    3691cc693feb:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
    3691cc693ff4:	0f 84 09 00 00 00                               	je     0x3691cc694003
    3691cc693ffa:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc693ffe:	e9 04 00 00 00                                  	jmp    0x3691cc694007
    3691cc694003:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc694007:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc69400c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc694011:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    3691cc694017:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    3691cc69401c:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    3691cc694021:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    3691cc694026:	4c 8b 15 96 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd96]        # 0x3691cc691dc3
    3691cc69402d:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc694032:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc694037:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    3691cc69403c:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    3691cc694040:	43 8b 44 20 7c                                  	mov    eax,DWORD PTR [r8+r12*1+0x7c]
    3691cc694045:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
    3691cc69404b:	0f 85 04 00 00 00                               	jne    0x3691cc694055
    3691cc694051:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc694055:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc69405a:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    3691cc69405e:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc694062:	4c 8b 15 64 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa664]        # 0x3691cc68e6cd
    3691cc694069:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc69406e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc694072:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc694077:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    3691cc69407d:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    3691cc694081:	4c 8b 15 45 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa645]        # 0x3691cc68e6cd
    3691cc694088:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc69408d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc694092:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    3691cc694097:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    3691cc69409b:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    3691cc6940a0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6940a5:	4c 8b 15 70 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffd70]        # 0x3691cc693e1c
    3691cc6940ac:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6940b1:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6940b5:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc6940b9:	4c 8b 15 a6 f1 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff1a6]        # 0x3691cc693266
    3691cc6940c0:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6940c5:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6940c9:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc6940cd:	4c 8b 15 d5 8d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8dd5]        # 0x3691cc68cea9
    3691cc6940d4:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc6940d9:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    3691cc6940de:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc6940e4:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc6940e8:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc6940ed:	4c 8b 15 86 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd586]        # 0x3691cc69167a
    3691cc6940f4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6940f9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6940fe:	4c 8b 15 a0 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a0]        # 0x3691cc6915a5
    3691cc694105:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc69410a:	4c 8b 15 a3 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a3]        # 0x3691cc6915b4
    3691cc694111:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc694116:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc69411b:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    3691cc694121:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    3691cc694126:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    3691cc69412a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc69412f:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    3691cc694134:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    3691cc694138:	c4 c1 7a 11 04 38                               	vmovss DWORD PTR [r8+rdi*1],xmm0
    3691cc69413e:	49 8b c4                                        	mov    rax,r12
    3691cc694141:	f6 c3 04                                        	test   bl,0x4
    3691cc694144:	0f 85 08 00 00 00                               	jne    0x3691cc694152
    3691cc69414a:	41 8b fb                                        	mov    edi,r11d
    3691cc69414d:	e9 7e 02 00 00                                  	jmp    0x3691cc6943d0
    3691cc694152:	41 8b fb                                        	mov    edi,r11d
    3691cc694155:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    3691cc69415c:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    3691cc694163:	0f 85 9b 00 00 00                               	jne    0x3691cc694204
    3691cc694169:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    3691cc694170:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    3691cc694177:	c4 c1 7a 10 44 38 28                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x28]
    3691cc69417e:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    3691cc694185:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc694189:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc69418c:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    3691cc69418f:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    3691cc694195:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc694199:	e8 c2 d0 f2 ff                                  	call   0x3691cc5c1260
    3691cc69419e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6941a1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6941a5:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc6941a9:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc6941ad:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc6941b2:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc6941b7:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc6941bb:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    3691cc6941c2:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc6941c9:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    3691cc6941d0:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    3691cc6941d8:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc6941df:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    3691cc6941e7:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc6941ef:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc6941f7:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc6941ff:	e9 cc 01 00 00                                  	jmp    0x3691cc6943d0
    3691cc694204:	4c 8b d8                                        	mov    r11,rax
    3691cc694207:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
    3691cc69420b:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
    3691cc694213:	8b 45 90                                        	mov    eax,DWORD PTR [rbp-0x70]
    3691cc694216:	44 03 e0                                        	add    r12d,eax
    3691cc694219:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    3691cc69421e:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    3691cc694224:	0f 84 20 00 00 00                               	je     0x3691cc69424a
    3691cc69422a:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    3691cc69422f:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    3691cc694235:	0f 84 0f 00 00 00                               	je     0x3691cc69424a
    3691cc69423b:	43 8b 4c 18 0c                                  	mov    ecx,DWORD PTR [r8+r11*1+0xc]
    3691cc694240:	42 8d 0c a1                                     	lea    ecx,[rcx+r12*4]
    3691cc694244:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
    3691cc69424a:	8b 8d f8 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x308]
    3691cc694250:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    3691cc694256:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    3691cc69425b:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    3691cc69425f:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
    3691cc694264:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    3691cc69426a:	0f 84 81 00 00 00                               	je     0x3691cc6942f1
    3691cc694270:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    3691cc694275:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
    3691cc69427a:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
    3691cc694283:	0f 84 09 00 00 00                               	je     0x3691cc694292
    3691cc694289:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc69428d:	e9 04 00 00 00                                  	jmp    0x3691cc694296
    3691cc694292:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc694296:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc69429b:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6942a0:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
    3691cc6942a6:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    3691cc6942ab:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    3691cc6942b0:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    3691cc6942b5:	4c 8b 15 07 db ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdb07]        # 0x3691cc691dc3
    3691cc6942bc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc6942c1:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc6942c6:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    3691cc6942cb:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    3691cc6942cf:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
    3691cc6942d4:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
    3691cc6942da:	0f 85 04 00 00 00                               	jne    0x3691cc6942e4
    3691cc6942e0:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6942e4:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc6942e9:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    3691cc6942ed:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc6942f1:	4c 8b 15 d5 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3d5]        # 0x3691cc68e6cd
    3691cc6942f8:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6942fd:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc694301:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc694306:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    3691cc69430c:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    3691cc694310:	4c 8b 15 b6 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3b6]        # 0x3691cc68e6cd
    3691cc694317:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc69431c:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc694321:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    3691cc694326:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    3691cc69432a:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    3691cc69432f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc694334:	4c 8b 15 e1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffae1]        # 0x3691cc693e1c
    3691cc69433b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc694340:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc694344:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc694348:	4c 8b 15 17 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef17]        # 0x3691cc693266
    3691cc69434f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc694354:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc694358:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc69435c:	4c 8b 15 46 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b46]        # 0x3691cc68cea9
    3691cc694363:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc694368:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    3691cc69436d:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc694373:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc694377:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc69437c:	4c 8b 15 f7 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2f7]        # 0x3691cc69167a
    3691cc694383:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc694388:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc69438d:	4c 8b 15 11 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd211]        # 0x3691cc6915a5
    3691cc694394:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc694399:	4c 8b 15 14 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd214]        # 0x3691cc6915b4
    3691cc6943a0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc6943a5:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc6943aa:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    3691cc6943b0:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    3691cc6943b5:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    3691cc6943b9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6943be:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    3691cc6943c3:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    3691cc6943c7:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
    3691cc6943cd:	49 8b c3                                        	mov    rax,r11
    3691cc6943d0:	f6 c3 08                                        	test   bl,0x8
    3691cc6943d3:	0f 85 23 00 00 00                               	jne    0x3691cc6943fc
    3691cc6943d9:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc6943df:	4c 8b e6                                        	mov    r12,rsi
    3691cc6943e2:	49 8b f0                                        	mov    rsi,r8
    3691cc6943e5:	4c 8b d8                                        	mov    r11,rax
    3691cc6943e8:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6943ed:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    3691cc6943f1:	4c 8b fa                                        	mov    r15,rdx
    3691cc6943f4:	49 8b f9                                        	mov    rdi,r9
    3691cc6943f7:	e9 fc 1e 00 00                                  	jmp    0x3691cc6962f8
    3691cc6943fc:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    3691cc694403:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    3691cc69440a:	0f 85 95 00 00 00                               	jne    0x3691cc6944a5
    3691cc694410:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    3691cc694417:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    3691cc69441e:	c4 c1 7a 10 44 38 38                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x38]
    3691cc694425:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    3691cc69442c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc694430:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc694433:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    3691cc694439:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    3691cc69443f:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc694443:	e8 18 ce f2 ff                                  	call   0x3691cc5c1260
    3691cc694448:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc69444e:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    3691cc694452:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc694456:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc69445b:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc694461:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc694467:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc69446b:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc694472:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    3691cc694479:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc694480:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc694488:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc694490:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc694498:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc6944a0:	e9 53 1e 00 00                                  	jmp    0x3691cc6962f8
    3691cc6944a5:	4c 8b d8                                        	mov    r11,rax
    3691cc6944a8:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
    3691cc6944ac:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
    3691cc6944b4:	44 8b bd 58 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xa8]
    3691cc6944bb:	45 03 e7                                        	add    r12d,r15d
    3691cc6944be:	47 8b 7c 18 68                                  	mov    r15d,DWORD PTR [r8+r11*1+0x68]
    3691cc6944c3:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    3691cc6944c9:	0f 84 20 00 00 00                               	je     0x3691cc6944ef
    3691cc6944cf:	47 8b 7c 18 70                                  	mov    r15d,DWORD PTR [r8+r11*1+0x70]
    3691cc6944d4:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    3691cc6944da:	0f 84 0f 00 00 00                               	je     0x3691cc6944ef
    3691cc6944e0:	47 8b 7c 18 0c                                  	mov    r15d,DWORD PTR [r8+r11*1+0xc]
    3691cc6944e5:	47 8d 3c a7                                     	lea    r15d,[r15+r12*4]
    3691cc6944e9:	c4 81 7a 11 0c 38                               	vmovss DWORD PTR [r8+r15*1],xmm1
    3691cc6944ef:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    3691cc6944f5:	c4 c1 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1]
    3691cc6944fb:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    3691cc694500:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    3691cc694504:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
    3691cc694509:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    3691cc69450f:	0f 84 81 00 00 00                               	je     0x3691cc694596
    3691cc694515:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    3691cc69451a:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
    3691cc69451f:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
    3691cc694528:	0f 84 09 00 00 00                               	je     0x3691cc694537
    3691cc69452e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc694532:	e9 04 00 00 00                                  	jmp    0x3691cc69453b
    3691cc694537:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc69453b:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc694540:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc694545:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
    3691cc69454b:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    3691cc694550:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    3691cc694555:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    3691cc69455a:	4c 8b 15 62 d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd862]        # 0x3691cc691dc3
    3691cc694561:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc694566:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc69456b:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    3691cc694570:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    3691cc694574:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
    3691cc694579:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
    3691cc69457f:	0f 85 04 00 00 00                               	jne    0x3691cc694589
    3691cc694585:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc694589:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc69458e:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    3691cc694592:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc694596:	4c 8b 15 30 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa130]        # 0x3691cc68e6cd
    3691cc69459d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6945a2:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6945a6:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6945ab:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    3691cc6945b1:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    3691cc6945b5:	4c 8b 15 11 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa111]        # 0x3691cc68e6cd
    3691cc6945bc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6945c1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6945c6:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    3691cc6945cb:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    3691cc6945cf:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    3691cc6945d4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6945d9:	4c 8b 15 3c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff83c]        # 0x3691cc693e1c
    3691cc6945e0:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6945e5:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6945e9:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc6945ed:	4c 8b 15 72 ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec72]        # 0x3691cc693266
    3691cc6945f4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6945f9:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6945fd:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc694601:	4c 8b 15 a1 88 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff88a1]        # 0x3691cc68cea9
    3691cc694608:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc69460d:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    3691cc694612:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc694618:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc69461c:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc694621:	4c 8b 15 52 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd052]        # 0x3691cc69167a
    3691cc694628:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc69462d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc694632:	4c 8b 15 6c cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6c]        # 0x3691cc6915a5
    3691cc694639:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc69463e:	4c 8b 15 6f cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6f]        # 0x3691cc6915b4
    3691cc694645:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc69464a:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc69464f:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    3691cc694655:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    3691cc69465a:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    3691cc69465e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc694663:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    3691cc694668:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    3691cc69466c:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
    3691cc694672:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc694678:	4c 8b e6                                        	mov    r12,rsi
    3691cc69467b:	49 8b f0                                        	mov    rsi,r8
    3691cc69467e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc694683:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    3691cc694687:	4c 8b fa                                        	mov    r15,rdx
    3691cc69468a:	49 8b f9                                        	mov    rdi,r9
    3691cc69468d:	e9 66 1c 00 00                                  	jmp    0x3691cc6962f8
    3691cc694692:	45 8b e7                                        	mov    r12d,r15d
    3691cc694695:	41 83 e4 01                                     	and    r12d,0x1
    3691cc694699:	41 f7 dc                                        	neg    r12d
    3691cc69469c:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    3691cc6946a1:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6946a6:	45 8b e7                                        	mov    r12d,r15d
    3691cc6946a9:	41 c1 e4 1e                                     	shl    r12d,0x1e
    3691cc6946ad:	41 c1 fc 1f                                     	sar    r12d,0x1f
    3691cc6946b1:	c4 c3 41 22 fc 01                               	vpinsrd xmm7,xmm7,r12d,0x1
    3691cc6946b7:	45 8b e7                                        	mov    r12d,r15d
    3691cc6946ba:	41 c1 e4 1d                                     	shl    r12d,0x1d
    3691cc6946be:	41 c1 fc 1f                                     	sar    r12d,0x1f
    3691cc6946c2:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    3691cc6946c8:	45 8b e7                                        	mov    r12d,r15d
    3691cc6946cb:	41 c1 e4 1c                                     	shl    r12d,0x1c
    3691cc6946cf:	41 c1 fc 1f                                     	sar    r12d,0x1f
    3691cc6946d3:	c4 c3 41 22 fc 03                               	vpinsrd xmm7,xmm7,r12d,0x3
    3691cc6946d9:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    3691cc6946de:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc6946e3:	4d 8b e3                                        	mov    r12,r11
    3691cc6946e6:	4c 2b a5 18 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2e8]
    3691cc6946ed:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    3691cc6946f2:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
    3691cc6946f8:	48 8b da                                        	mov    rbx,rdx
    3691cc6946fb:	4a 8d 14 1b                                     	lea    rdx,[rbx+r11*1]
    3691cc6946ff:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    3691cc694704:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    3691cc69470a:	4c 03 e3                                        	add    r12,rbx
    3691cc69470d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    3691cc694712:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
    3691cc694718:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    3691cc694720:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
    3691cc694725:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    3691cc69472d:	c4 c1 08 59 c9                                  	vmulps xmm1,xmm14,xmm9
    3691cc694732:	c4 c1 82 2a d1                                  	vcvtsi2ss xmm2,xmm15,r9
    3691cc694737:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    3691cc69473c:	4d 8b e1                                        	mov    r12,r9
    3691cc69473f:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
    3691cc694746:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
    3691cc69474b:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    3691cc694751:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
    3691cc694755:	c4 e1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,rdx
    3691cc69475a:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    3691cc694760:	4c 03 e6                                        	add    r12,rsi
    3691cc694763:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
    3691cc694768:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    3691cc69476e:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc694772:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    3691cc69477a:	c5 e0 59 ea                                     	vmulps xmm5,xmm3,xmm2
    3691cc69477e:	c5 f0 58 c5                                     	vaddps xmm0,xmm1,xmm5
    3691cc694782:	4c 8b 15 44 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f44]        # 0x3691cc68e6cd
    3691cc694789:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc69478e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc694792:	c4 41 48 5c c1                                  	vsubps xmm8,xmm6,xmm9
    3691cc694797:	c5 38 5c c2                                     	vsubps xmm8,xmm8,xmm2
    3691cc69479b:	c5 78 10 95 60 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2a0]
    3691cc6947a3:	c4 41 28 59 d8                                  	vmulps xmm11,xmm10,xmm8
    3691cc6947a8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6947ad:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    3691cc6947b2:	c5 28 c2 e0 01                                  	vcmpltps xmm12,xmm10,xmm0
    3691cc6947b7:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
    3691cc6947bb:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6947bf:	49 8d 54 24 18                                  	lea    rdx,[r12+0x18]
    3691cc6947c4:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc6947cb:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    3691cc6947d1:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    3691cc6947d6:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    3691cc6947dd:	c4 22 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+r11*1]
    3691cc6947e3:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    3691cc6947e8:	c4 41 30 58 cc                                  	vaddps xmm9,xmm9,xmm12
    3691cc6947ed:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    3691cc6947f4:	c4 62 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+rbx*1]
    3691cc6947fa:	c4 41 38 59 c4                                  	vmulps xmm8,xmm8,xmm12
    3691cc6947ff:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
    3691cc694804:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    3691cc69480c:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
    3691cc694811:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
    3691cc694815:	41 8b 34 14                                     	mov    esi,DWORD PTR [r12+rdx*1]
    3691cc694819:	44 8b ce                                        	mov    r9d,esi
    3691cc69481c:	44 0f af 8d 50 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xb0]
    3691cc694824:	45 03 c8                                        	add    r9d,r8d
    3691cc694827:	0f af b5 e0 fc ff ff                            	imul   esi,DWORD PTR [rbp-0x320]
    3691cc69482e:	41 03 f0                                        	add    esi,r8d
    3691cc694831:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    3691cc694835:	45 8b 44 14 04                                  	mov    r8d,DWORD PTR [r12+rdx*1+0x4]
    3691cc69483a:	45 8b 7c 14 68                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x68]
    3691cc69483f:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
    3691cc694846:	45 85 ff                                        	test   r15d,r15d
    3691cc694849:	0f 85 08 00 00 00                               	jne    0x3691cc694857
    3691cc69484f:	45 33 ff                                        	xor    r15d,r15d
    3691cc694852:	e9 1d 01 00 00                                  	jmp    0x3691cc694974
    3691cc694857:	45 8b bc 14 80 00 00 00                         	mov    r15d,DWORD PTR [r12+rdx*1+0x80]
    3691cc69485f:	41 83 bc 14 80 00 00 00 00                      	cmp    DWORD PTR [r12+rdx*1+0x80],0x0
    3691cc694868:	75 e5                                           	jne    0x3691cc69484f
    3691cc69486a:	45 8b 7c 14 0c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0xc]
    3691cc69486f:	41 8d 04 b7                                     	lea    eax,[r15+rsi*4]
    3691cc694873:	c4 41 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+rax*1]
    3691cc694879:	8b 85 50 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb0]
    3691cc69487f:	41 3b c0                                        	cmp    eax,r8d
    3691cc694882:	0f 8c 0d 00 00 00                               	jl     0x3691cc694895
    3691cc694888:	c5 f8 10 95 80 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x280]
    3691cc694890:	e9 0a 00 00 00                                  	jmp    0x3691cc69489f
    3691cc694895:	47 8d 3c 8f                                     	lea    r15d,[r15+r9*4]
    3691cc694899:	c4 81 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+r15*1]
    3691cc69489f:	c5 19 6c e2                                     	vpunpcklqdq xmm12,xmm12,xmm2
    3691cc6948a3:	45 8b 7c 14 6c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x6c]
    3691cc6948a8:	41 81 ef 00 02 00 00                            	sub    r15d,0x200
    3691cc6948af:	41 83 ff 07                                     	cmp    r15d,0x7
    3691cc6948b3:	0f 83 0b 00 00 00                               	jae    0x3691cc6948c4
    3691cc6948b9:	4c 8d 15 48 1f 00 00                            	lea    r10,[rip+0x1f48]        # 0x3691cc696808
    3691cc6948c0:	43 ff 24 fa                                     	jmp    QWORD PTR [r10+r15*8]
    3691cc6948c4:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    3691cc6948c9:	e9 4a 00 00 00                                  	jmp    0x3691cc694918
    3691cc6948ce:	c4 41 18 c2 e0 02                               	vcmpleps xmm12,xmm12,xmm8
    3691cc6948d4:	e9 3f 00 00 00                                  	jmp    0x3691cc694918
    3691cc6948d9:	c4 41 38 c2 e4 04                               	vcmpneqps xmm12,xmm8,xmm12
    3691cc6948df:	e9 34 00 00 00                                  	jmp    0x3691cc694918
    3691cc6948e4:	c4 41 18 c2 e0 01                               	vcmpltps xmm12,xmm12,xmm8
    3691cc6948ea:	e9 29 00 00 00                                  	jmp    0x3691cc694918
    3691cc6948ef:	c4 41 38 c2 e4 02                               	vcmpleps xmm12,xmm8,xmm12
    3691cc6948f5:	e9 1e 00 00 00                                  	jmp    0x3691cc694918
    3691cc6948fa:	c4 41 38 c2 e4 00                               	vcmpeqps xmm12,xmm8,xmm12
    3691cc694900:	e9 13 00 00 00                                  	jmp    0x3691cc694918
    3691cc694905:	c4 41 38 c2 e4 01                               	vcmpltps xmm12,xmm8,xmm12
    3691cc69490b:	e9 08 00 00 00                                  	jmp    0x3691cc694918
    3691cc694910:	c5 78 10 a5 80 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x280]
    3691cc694918:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
    3691cc69491c:	c5 78 50 ff                                     	vmovmskps r15d,xmm7
    3691cc694920:	45 85 ff                                        	test   r15d,r15d
    3691cc694923:	0f 85 3f 00 00 00                               	jne    0x3691cc694968
    3691cc694929:	49 8b f4                                        	mov    rsi,r12
    3691cc69492c:	4c 8b e3                                        	mov    r12,rbx
    3691cc69492f:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc694934:	4d 8b fb                                        	mov    r15,r11
    3691cc694937:	4c 8b da                                        	mov    r11,rdx
    3691cc69493a:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc69493f:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc694945:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc69494b:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc694953:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc69495b:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc694963:	e9 90 19 00 00                                  	jmp    0x3691cc6962f8
    3691cc694968:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    3691cc69496e:	41 bf 01 00 00 00                               	mov    r15d,0x1
    3691cc694974:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    3691cc69497e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc694983:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc694988:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x3691cc694976
    3691cc69498f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc694994:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc694998:	c5 e8 c2 d0 01                                  	vcmpltps xmm2,xmm2,xmm0
    3691cc69499d:	c4 41 69 df fc                                  	vpandn xmm15,xmm2,xmm12
    3691cc6949a2:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    3691cc6949a6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6949ab:	c5 c8 5e c0                                     	vdivps xmm0,xmm6,xmm0
    3691cc6949af:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    3691cc6949b6:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
    3691cc6949bb:	c4 42 79 18 24 38                               	vbroadcastss xmm12,DWORD PTR [r8+rdi*1]
    3691cc6949c1:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    3691cc6949c6:	c4 82 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+r11*1]
    3691cc6949cc:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    3691cc6949d0:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
    3691cc6949d4:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    3691cc6949da:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc6949de:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
    3691cc6949e2:	c4 41 78 59 e4                                  	vmulps xmm12,xmm0,xmm12
    3691cc6949e7:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
    3691cc6949ec:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    3691cc6949f2:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    3691cc6949f6:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
    3691cc6949fe:	c4 82 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+r11*1]
    3691cc694a04:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc694a08:	c5 e8 58 f6                                     	vaddps xmm6,xmm2,xmm6
    3691cc694a0c:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    3691cc694a12:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc694a16:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    3691cc694a1a:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    3691cc694a1e:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
    3691cc694a23:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    3691cc694a29:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    3691cc694a2d:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    3691cc694a35:	c4 82 79 18 3c 18                               	vbroadcastss xmm7,DWORD PTR [r8+r11*1]
    3691cc694a3b:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    3691cc694a3f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    3691cc694a43:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    3691cc694a49:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc694a4d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    3691cc694a51:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    3691cc694a55:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
    3691cc694a5a:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    3691cc694a60:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    3691cc694a64:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    3691cc694a6c:	c4 02 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [r8+r11*1]
    3691cc694a72:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    3691cc694a77:	c4 41 68 58 c0                                  	vaddps xmm8,xmm2,xmm8
    3691cc694a7c:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    3691cc694a82:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc694a86:	c5 38 58 c2                                     	vaddps xmm8,xmm8,xmm2
    3691cc694a8a:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    3691cc694a8f:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc694a96:	4c 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r15
    3691cc694a9d:	47 8b bc 04 34 01 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x134]
    3691cc694aa5:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    3691cc694aac:	41 8d 77 ff                                     	lea    esi,[r15-0x1]
    3691cc694ab0:	4c 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r9
    3691cc694ab7:	c5 78 11 95 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm10
    3691cc694abf:	83 fe 01                                        	cmp    esi,0x1
    3691cc694ac2:	0f 87 14 07 00 00                               	ja     0x3691cc6951dc
    3691cc694ac8:	43 8b 74 04 28                                  	mov    esi,DWORD PTR [r12+r8*1+0x28]
    3691cc694acd:	47 8b 4c 04 20                                  	mov    r9d,DWORD PTR [r12+r8*1+0x20]
    3691cc694ad2:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
    3691cc694ad9:	4d 8d 7c 24 54                                  	lea    r15,[r12+0x54]
    3691cc694ade:	c4 c2 79 18 14 1f                               	vbroadcastss xmm2,DWORD PTR [r15+rbx*1]
    3691cc694ae4:	c4 42 79 18 0c 3f                               	vbroadcastss xmm9,DWORD PTR [r15+rdi*1]
    3691cc694aea:	c4 02 79 18 2c 1f                               	vbroadcastss xmm13,DWORD PTR [r15+r11*1]
    3691cc694af0:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
    3691cc694af5:	c4 41 02 2a f7                                  	vcvtsi2ss xmm14,xmm15,r15d
    3691cc694afa:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    3691cc694aff:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
    3691cc694b06:	49 8d 74 24 50                                  	lea    rsi,[r12+0x50]
    3691cc694b0b:	c4 e2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+rdi*1]
    3691cc694b11:	c5 f0 59 db                                     	vmulps xmm3,xmm1,xmm3
    3691cc694b15:	c4 a2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+r11*1]
    3691cc694b1b:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    3691cc694b1f:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    3691cc694b23:	c4 e2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+rbx*1]
    3691cc694b29:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    3691cc694b2d:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    3691cc694b31:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    3691cc694b35:	c4 e3 79 08 e3 09                               	vroundps xmm4,xmm3,0x9
    3691cc694b3b:	c5 e0 5c dc                                     	vsubps xmm3,xmm3,xmm4
    3691cc694b3f:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    3691cc694b43:	4c 8b 15 1e ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca1e]        # 0x3691cc691568
    3691cc694b4a:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc694b4f:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc694b53:	c5 08 58 f3                                     	vaddps xmm14,xmm14,xmm3
    3691cc694b57:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    3691cc694b5d:	4c 8b 15 45 83 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8345]        # 0x3691cc68cea9
    3691cc694b64:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    3691cc694b69:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    3691cc694b6e:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    3691cc694b74:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    3691cc694b79:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    3691cc694b7e:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
    3691cc694b86:	4c 8b 15 ed ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcaed]        # 0x3691cc69167a
    3691cc694b8d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc694b92:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc694b97:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    3691cc694b9f:	4c 8b 15 ff c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9ff]        # 0x3691cc6915a5
    3691cc694ba6:	c4 c1 58 54 32                                  	vandps xmm6,xmm4,XMMWORD PTR [r10]
    3691cc694bab:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    3691cc694bb3:	4c 8b 15 fa c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9fa]        # 0x3691cc6915b4
    3691cc694bba:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc694bbf:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc694bc3:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    3691cc694bc8:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
    3691cc694bcd:	c5 a9 db f6                                     	vpand  xmm6,xmm10,xmm6
    3691cc694bd1:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc694bd6:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    3691cc694bd9:	c4 c1 7a 7f b4 34 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x90],xmm6
    3691cc694be3:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    3691cc694be8:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    3691cc694bed:	c4 41 70 59 c9                                  	vmulps xmm9,xmm1,xmm9
    3691cc694bf2:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    3691cc694bf7:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    3691cc694bfc:	c5 20 59 d2                                     	vmulps xmm10,xmm11,xmm2
    3691cc694c00:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    3691cc694c05:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    3691cc694c0a:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    3691cc694c10:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    3691cc694c15:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    3691cc694c1a:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    3691cc694c1e:	c4 63 79 08 ce 09                               	vroundps xmm9,xmm6,0x9
    3691cc694c24:	4c 8b 15 7e 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff827e]        # 0x3691cc68cea9
    3691cc694c2b:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    3691cc694c31:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    3691cc694c36:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    3691cc694c3c:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    3691cc694c41:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    3691cc694c46:	4c 8b 15 58 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc958]        # 0x3691cc6915a5
    3691cc694c4d:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    3691cc694c52:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    3691cc694c57:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    3691cc694c5c:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    3691cc694c61:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    3691cc694c66:	c4 41 7a 7f 94 34 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x190],xmm10
    3691cc694c70:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    3691cc694c74:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
    3691cc694c7c:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    3691cc694c81:	4c 8b 15 de e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5de]        # 0x3691cc693266
    3691cc694c88:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc694c8d:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc694c92:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    3691cc694c97:	4c 8b 15 0b 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff820b]        # 0x3691cc68cea9
    3691cc694c9e:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    3691cc694ca4:	c4 c1 28 54 d7                                  	vandps xmm2,xmm10,xmm15
    3691cc694ca9:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    3691cc694caf:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    3691cc694cb3:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    3691cc694cb8:	4c 8b 15 e6 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc8e6]        # 0x3691cc6915a5
    3691cc694cbf:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    3691cc694cc4:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    3691cc694cc9:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    3691cc694cce:	c4 41 69 db d2                                  	vpand  xmm10,xmm2,xmm10
    3691cc694cd3:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    3691cc694cd8:	c4 41 7a 7f 14 34                               	vmovdqu XMMWORD PTR [r12+rsi*1],xmm10
    3691cc694cde:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    3691cc694ce3:	c4 c1 48 59 f5                                  	vmulps xmm6,xmm6,xmm13
    3691cc694ce8:	c4 c1 48 58 f6                                  	vaddps xmm6,xmm6,xmm14
    3691cc694ced:	4c 8b 15 b5 81 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff81b5]        # 0x3691cc68cea9
    3691cc694cf4:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    3691cc694cf9:	c4 41 48 54 cf                                  	vandps xmm9,xmm6,xmm15
    3691cc694cfe:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    3691cc694d04:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    3691cc694d09:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    3691cc694d0e:	4c 8b 15 90 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc890]        # 0x3691cc6915a5
    3691cc694d15:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    3691cc694d1a:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    3691cc694d1f:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
    3691cc694d24:	c5 b1 db f6                                     	vpand  xmm6,xmm9,xmm6
    3691cc694d28:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc694d2d:	c4 c1 7a 7f 74 34 70                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x70],xmm6
    3691cc694d34:	c4 41 7a 7f 44 34 50                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x50],xmm8
    3691cc694d3b:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    3691cc694d43:	c4 c1 7a 7f bc 34 f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1f0],xmm7
    3691cc694d4d:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    3691cc694d55:	c4 c1 7a 7f b4 34 e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1e0],xmm6
    3691cc694d5f:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    3691cc694d67:	c4 41 7a 7f a4 34 d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1d0],xmm12
    3691cc694d71:	43 8b 5c 04 34                                  	mov    ebx,DWORD PTR [r12+r8*1+0x34]
    3691cc694d76:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
    3691cc694d7b:	43 8b 7c 04 2c                                  	mov    edi,DWORD PTR [r12+r8*1+0x2c]
    3691cc694d80:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    3691cc694d87:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    3691cc694d8e:	4c 89 9d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r11
    3691cc694d95:	45 33 c0                                        	xor    r8d,r8d
    3691cc694d98:	e9 37 00 00 00                                  	jmp    0x3691cc694dd4
    3691cc694d9d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc694da6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc694daf:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc694db8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    3691cc694dc0:	41 8b f0                                        	mov    esi,r8d
    3691cc694dc3:	45 8b c3                                        	mov    r8d,r11d
    3691cc694dc6:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    3691cc694dcd:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
    3691cc694dd4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc694dd9:	0f 85 f5 18 00 00                               	jne    0x3691cc6966d4
    3691cc694ddf:	41 8b c8                                        	mov    ecx,r8d
    3691cc694de2:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    3691cc694de8:	d3 eb                                           	shr    ebx,cl
    3691cc694dea:	f6 c3 01                                        	test   bl,0x1
    3691cc694ded:	0f 85 11 00 00 00                               	jne    0x3691cc694e04
    3691cc694df3:	41 8b d8                                        	mov    ebx,r8d
    3691cc694df6:	44 8b c6                                        	mov    r8d,esi
    3691cc694df9:	8b 95 80 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x180]
    3691cc694dff:	e9 45 03 00 00                                  	jmp    0x3691cc695149
    3691cc694e04:	42 8d 9c 86 90 01 00 00                         	lea    ebx,[rsi+r8*4+0x190]
    3691cc694e0c:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    3691cc694e10:	42 8d 8c 86 90 00 00 00                         	lea    ecx,[rsi+r8*4+0x90]
    3691cc694e18:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    3691cc694e1c:	8d 71 01                                        	lea    esi,[rcx+0x1]
    3691cc694e1f:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    3691cc694e26:	44 8d 43 01                                     	lea    r8d,[rbx+0x1]
    3691cc694e2a:	85 ff                                           	test   edi,edi
    3691cc694e2c:	0f 85 48 00 00 00                               	jne    0x3691cc694e7a
    3691cc694e32:	45 85 ff                                        	test   r15d,r15d
    3691cc694e35:	0f 84 50 19 00 00                               	je     0x3691cc69678b
    3691cc694e3b:	41 83 ff ff                                     	cmp    r15d,0xffffffff
    3691cc694e3f:	0f 84 1f 19 00 00                               	je     0x3691cc696764
    3691cc694e45:	8b c6                                           	mov    eax,esi
    3691cc694e47:	99                                              	cdq
    3691cc694e48:	41 f7 ff                                        	idiv   r15d
    3691cc694e4b:	8b c2                                           	mov    eax,edx
    3691cc694e4d:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc694e50:	41 23 c7                                        	and    eax,r15d
    3691cc694e53:	03 c2                                           	add    eax,edx
    3691cc694e55:	41 83 ff ff                                     	cmp    r15d,0xffffffff
    3691cc694e59:	0f 84 0c 19 00 00                               	je     0x3691cc69676b
    3691cc694e5f:	44 8b d0                                        	mov    r10d,eax
    3691cc694e62:	8b c1                                           	mov    eax,ecx
    3691cc694e64:	41 8b ca                                        	mov    ecx,r10d
    3691cc694e67:	99                                              	cdq
    3691cc694e68:	41 f7 ff                                        	idiv   r15d
    3691cc694e6b:	8b c2                                           	mov    eax,edx
    3691cc694e6d:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc694e70:	41 23 c7                                        	and    eax,r15d
    3691cc694e73:	03 c2                                           	add    eax,edx
    3691cc694e75:	e9 08 00 00 00                                  	jmp    0x3691cc694e82
    3691cc694e7a:	23 f7                                           	and    esi,edi
    3691cc694e7c:	23 cf                                           	and    ecx,edi
    3691cc694e7e:	8b c1                                           	mov    eax,ecx
    3691cc694e80:	8b ce                                           	mov    ecx,esi
    3691cc694e82:	45 85 db                                        	test   r11d,r11d
    3691cc694e85:	0f 85 51 00 00 00                               	jne    0x3691cc694edc
    3691cc694e8b:	45 85 c9                                        	test   r9d,r9d
    3691cc694e8e:	0f 84 f2 18 00 00                               	je     0x3691cc696786
    3691cc694e94:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
    3691cc694e98:	0f 84 d6 18 00 00                               	je     0x3691cc696774
    3691cc694e9e:	8b f0                                           	mov    esi,eax
    3691cc694ea0:	41 8b c0                                        	mov    eax,r8d
    3691cc694ea3:	99                                              	cdq
    3691cc694ea4:	41 f7 f9                                        	idiv   r9d
    3691cc694ea7:	8b c2                                           	mov    eax,edx
    3691cc694ea9:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc694eac:	41 23 c1                                        	and    eax,r9d
    3691cc694eaf:	03 c2                                           	add    eax,edx
    3691cc694eb1:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
    3691cc694eb5:	0f 84 c2 18 00 00                               	je     0x3691cc69677d
    3691cc694ebb:	44 8b d0                                        	mov    r10d,eax
    3691cc694ebe:	8b c3                                           	mov    eax,ebx
    3691cc694ec0:	41 8b da                                        	mov    ebx,r10d
    3691cc694ec3:	99                                              	cdq
    3691cc694ec4:	41 f7 f9                                        	idiv   r9d
    3691cc694ec7:	8b c2                                           	mov    eax,edx
    3691cc694ec9:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc694ecc:	44 23 c8                                        	and    r9d,eax
    3691cc694ecf:	42 8d 04 0a                                     	lea    eax,[rdx+r9*1]
    3691cc694ed3:	8b d0                                           	mov    edx,eax
    3691cc694ed5:	8b c3                                           	mov    eax,ebx
    3691cc694ed7:	e9 0d 00 00 00                                  	jmp    0x3691cc694ee9
    3691cc694edc:	45 23 c3                                        	and    r8d,r11d
    3691cc694edf:	41 8b d3                                        	mov    edx,r11d
    3691cc694ee2:	23 d3                                           	and    edx,ebx
    3691cc694ee4:	8b f0                                           	mov    esi,eax
    3691cc694ee6:	41 8b c0                                        	mov    eax,r8d
    3691cc694ee9:	44 8b c9                                        	mov    r9d,ecx
    3691cc694eec:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
    3691cc694ef2:	8b da                                           	mov    ebx,edx
    3691cc694ef4:	d3 e3                                           	shl    ebx,cl
    3691cc694ef6:	41 0f af d7                                     	imul   edx,r15d
    3691cc694efa:	85 ff                                           	test   edi,edi
    3691cc694efc:	0f 45 d3                                        	cmovne edx,ebx
    3691cc694eff:	8d 1c 32                                        	lea    ebx,[rdx+rsi*1]
    3691cc694f02:	8b 8d 80 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x180]
    3691cc694f08:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    3691cc694f0b:	c4 c1 7a 10 34 1c                               	vmovss xmm6,DWORD PTR [r12+rbx*1]
    3691cc694f11:	c4 e2 79 30 f6                                  	vpmovzxbw xmm6,xmm6
    3691cc694f16:	41 8d 1c 11                                     	lea    ebx,[r9+rdx*1]
    3691cc694f1a:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    3691cc694f1d:	c4 c1 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+rbx*1]
    3691cc694f23:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    3691cc694f28:	c5 c9 61 f7                                     	vpunpcklwd xmm6,xmm6,xmm7
    3691cc694f2c:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc694f32:	8b 95 c8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x238]
    3691cc694f38:	44 8d 84 9a 00 fe ff ff                         	lea    r8d,[rdx+rbx*4-0x200]
    3691cc694f40:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    3691cc694f44:	ba 00 01 00 00                                  	mov    edx,0x100
    3691cc694f49:	45 8b d8                                        	mov    r11d,r8d
    3691cc694f4c:	41 81 f8 00 01 00 00                            	cmp    r8d,0x100
    3691cc694f53:	44 0f 4d da                                     	cmovge r11d,edx
    3691cc694f57:	45 33 c0                                        	xor    r8d,r8d
    3691cc694f5a:	45 85 db                                        	test   r11d,r11d
    3691cc694f5d:	45 0f 4f c3                                     	cmovg  r8d,r11d
    3691cc694f61:	45 69 c0 ff ff 00 00                            	imul   r8d,r8d,0xffff
    3691cc694f68:	41 81 c0 00 01 00 00                            	add    r8d,0x100
    3691cc694f6f:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    3691cc694f74:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc694f79:	c5 c9 f5 f7                                     	vpmaddwd xmm6,xmm6,xmm7
    3691cc694f7d:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc694f81:	45 8d 5c 98 70                                  	lea    r11d,[r8+rbx*4+0x70]
    3691cc694f86:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    3691cc694f8a:	45 8b c3                                        	mov    r8d,r11d
    3691cc694f8d:	41 81 fb 00 01 00 00                            	cmp    r11d,0x100
    3691cc694f94:	44 0f 4d c2                                     	cmovge r8d,edx
    3691cc694f98:	45 33 db                                        	xor    r11d,r11d
    3691cc694f9b:	45 85 c0                                        	test   r8d,r8d
    3691cc694f9e:	45 0f 4f d8                                     	cmovg  r11d,r8d
    3691cc694fa2:	41 2b d3                                        	sub    edx,r11d
    3691cc694fa5:	c5 79 6e c2                                     	vmovd  xmm8,edx
    3691cc694fa9:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc694fae:	c4 c2 49 40 f0                                  	vpmulld xmm6,xmm6,xmm8
    3691cc694fb3:	8b d1                                           	mov    edx,ecx
    3691cc694fb5:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
    3691cc694fbb:	44 8b c0                                        	mov    r8d,eax
    3691cc694fbe:	41 d3 e0                                        	shl    r8d,cl
    3691cc694fc1:	41 0f af c7                                     	imul   eax,r15d
    3691cc694fc5:	85 ff                                           	test   edi,edi
    3691cc694fc7:	41 0f 45 c0                                     	cmovne eax,r8d
    3691cc694fcb:	44 8d 04 06                                     	lea    r8d,[rsi+rax*1]
    3691cc694fcf:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    3691cc694fd3:	c4 01 7a 10 04 04                               	vmovss xmm8,DWORD PTR [r12+r8*1]
    3691cc694fd9:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    3691cc694fde:	46 8d 04 08                                     	lea    r8d,[rax+r9*1]
    3691cc694fe2:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    3691cc694fe6:	c4 01 7a 10 0c 04                               	vmovss xmm9,DWORD PTR [r12+r8*1]
    3691cc694fec:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    3691cc694ff1:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    3691cc694ff6:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    3691cc694ffa:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    3691cc694fff:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc695004:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    3691cc695009:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
    3691cc69500d:	4c 8b 15 42 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe342]        # 0x3691cc693356
    3691cc695014:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc695019:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc69501d:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
    3691cc695021:	c5 c9 72 e6 10                                  	vpsrad xmm6,xmm6,0x10
    3691cc695026:	c4 e2 49 2b f6                                  	vpackusdw xmm6,xmm6,xmm6
    3691cc69502b:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
    3691cc69502f:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    3691cc695034:	45 8b d8                                        	mov    r11d,r8d
    3691cc695037:	41 c1 eb 18                                     	shr    r11d,0x18
    3691cc69503b:	41 8b c0                                        	mov    eax,r8d
    3691cc69503e:	c1 e8 10                                        	shr    eax,0x10
    3691cc695041:	41 8b c8                                        	mov    ecx,r8d
    3691cc695044:	c1 e9 08                                        	shr    ecx,0x8
    3691cc695047:	45 0f b6 c0                                     	movzx  r8d,r8b
    3691cc69504b:	45 8b d0                                        	mov    r10d,r8d
    3691cc69504e:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc695053:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    3691cc695059:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    3691cc69505e:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc695062:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc695066:	41 8d 74 98 50                                  	lea    esi,[r8+rbx*4+0x50]
    3691cc69506b:	83 bd a0 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x160],0x2
    3691cc695072:	0f 84 77 00 00 00                               	je     0x3691cc6950ef
    3691cc695078:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
    3691cc69507e:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    3691cc695084:	41 8d b4 98 f0 01 00 00                         	lea    esi,[r8+rbx*4+0x1f0]
    3691cc69508c:	0f b6 c9                                        	movzx  ecx,cl
    3691cc69508f:	44 8b d1                                        	mov    r10d,ecx
    3691cc695092:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc695097:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc69509b:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
    3691cc6950a1:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    3691cc6950a7:	41 8d 8c 98 e0 01 00 00                         	lea    ecx,[r8+rbx*4+0x1e0]
    3691cc6950af:	0f b6 c0                                        	movzx  eax,al
    3691cc6950b2:	44 8b d0                                        	mov    r10d,eax
    3691cc6950b5:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc6950ba:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc6950be:	c4 c1 4a 59 34 0c                               	vmulss xmm6,xmm6,DWORD PTR [r12+rcx*1]
    3691cc6950c4:	c4 c1 7a 11 34 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm6
    3691cc6950ca:	41 8d 84 98 d0 01 00 00                         	lea    eax,[r8+rbx*4+0x1d0]
    3691cc6950d2:	45 8b d3                                        	mov    r10d,r11d
    3691cc6950d5:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc6950da:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc6950de:	c4 c1 4a 59 34 04                               	vmulss xmm6,xmm6,DWORD PTR [r12+rax*1]
    3691cc6950e4:	c4 c1 7a 11 34 04                               	vmovss DWORD PTR [r12+rax*1],xmm6
    3691cc6950ea:	e9 5a 00 00 00                                  	jmp    0x3691cc695149
    3691cc6950ef:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    3691cc6950f5:	41 8d b4 98 d0 01 00 00                         	lea    esi,[r8+rbx*4+0x1d0]
    3691cc6950fd:	45 8b d3                                        	mov    r10d,r11d
    3691cc695100:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc695105:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc695109:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    3691cc69510f:	45 8d 9c 98 e0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1e0]
    3691cc695117:	0f b6 c0                                        	movzx  eax,al
    3691cc69511a:	44 8b d0                                        	mov    r10d,eax
    3691cc69511d:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc695122:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc695126:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
    3691cc69512c:	45 8d 9c 98 f0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1f0]
    3691cc695134:	0f b6 c1                                        	movzx  eax,cl
    3691cc695137:	44 8b d0                                        	mov    r10d,eax
    3691cc69513a:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc69513f:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc695143:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
    3691cc695149:	44 8d 5b 01                                     	lea    r11d,[rbx+0x1]
    3691cc69514d:	41 83 fb 04                                     	cmp    r11d,0x4
    3691cc695151:	0f 85 69 fc ff ff                               	jne    0x3691cc694dc0
    3691cc695157:	c4 01 7a 6f a4 04 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+r8*1+0x1d0]
    3691cc695161:	c4 81 7a 6f bc 04 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r8*1+0x1f0]
    3691cc69516b:	c4 01 7a 6f 44 04 50                            	vmovdqu xmm8,XMMWORD PTR [r12+r8*1+0x50]
    3691cc695172:	c4 81 7a 6f b4 04 e0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+r8*1+0x1e0]
    3691cc69517c:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    3691cc695183:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    3691cc695189:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc695191:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    3691cc695199:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
    3691cc69519d:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    3691cc6951a4:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
    3691cc6951ac:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc6951b0:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    3691cc6951b7:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    3691cc6951be:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc6951c5:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc6951cc:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    3691cc6951d4:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    3691cc6951dc:	4c 8b fa                                        	mov    r15,rdx
    3691cc6951df:	43 8b 94 3c ec 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xec]
    3691cc6951e7:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
    3691cc6951ef:	43 83 bc 3c ec 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0xec],0x0
    3691cc6951f8:	0f 84 02 04 00 00                               	je     0x3691cc695600
    3691cc6951fe:	49 8d 94 24 98 00 00 00                         	lea    rdx,[r12+0x98]
    3691cc695206:	c4 e2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+rdi*1]
    3691cc69520c:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    3691cc695210:	c4 a2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+r11*1]
    3691cc695216:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    3691cc69521a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    3691cc69521e:	c4 e2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+rbx*1]
    3691cc695224:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    3691cc695228:	c4 41 70 58 db                                  	vaddps xmm11,xmm1,xmm11
    3691cc69522d:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc695232:	c5 28 5c d8                                     	vsubps xmm11,xmm10,xmm0
    3691cc695236:	c5 a0 c2 c8 01                                  	vcmpltps xmm1,xmm11,xmm0
    3691cc69523b:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    3691cc695240:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    3691cc695244:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc695249:	4c 8b 15 7d 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947d]        # 0x3691cc68e6cd
    3691cc695250:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc695255:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    3691cc69525a:	43 8b 94 3c f0 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xf0]
    3691cc695262:	81 fa 00 08 00 00                               	cmp    edx,0x800
    3691cc695268:	0f 84 8f 01 00 00                               	je     0x3691cc6953fd
    3691cc69526e:	81 fa 01 26 00 00                               	cmp    edx,0x2601
    3691cc695274:	0f 84 23 01 00 00                               	je     0x3691cc69539d
    3691cc69527a:	c4 81 7a 10 8c 3c f4 00 00 00                   	vmovss xmm1,DWORD PTR [r12+r15*1+0xf4]
    3691cc695284:	c5 f8 28 d0                                     	vmovaps xmm2,xmm0
    3691cc695288:	c5 f2 59 d2                                     	vmulss xmm2,xmm1,xmm2
    3691cc69528c:	4c 8b 15 53 7f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7f53]        # 0x3691cc68d1e6
    3691cc695293:	c4 c1 68 57 2a                                  	vxorps xmm5,xmm2,XMMWORD PTR [r10]
    3691cc695298:	c5 ea 59 d5                                     	vmulss xmm2,xmm2,xmm5
    3691cc69529c:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    3691cc6952a4:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    3691cc6952ac:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    3691cc6952b4:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    3691cc6952bc:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    3691cc6952c4:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    3691cc6952cc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6952d0:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    3691cc6952d4:	e8 e7 e2 f2 ff                                  	call   0x3691cc5c35c0
    3691cc6952d9:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc6952de:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    3691cc6952e6:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    3691cc6952ea:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
    3691cc6952f2:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    3691cc6952f6:	4c 8b 15 e9 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ee9]        # 0x3691cc68d1e6
    3691cc6952fd:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    3691cc695302:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    3691cc695307:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    3691cc69530f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc695313:	e8 a8 e2 f2 ff                                  	call   0x3691cc5c35c0
    3691cc695318:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    3691cc695320:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    3691cc695326:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    3691cc69532e:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    3691cc695333:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
    3691cc69533b:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    3691cc69533f:	4c 8b 15 a0 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ea0]        # 0x3691cc68d1e6
    3691cc695346:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    3691cc69534b:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    3691cc695350:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    3691cc695358:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69535c:	e8 5f e2 f2 ff                                  	call   0x3691cc5c35c0
    3691cc695361:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    3691cc695369:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    3691cc69536f:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    3691cc695377:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    3691cc69537c:	c5 fb 10 bd a8 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x158]
    3691cc695384:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    3691cc695388:	4c 8b 15 57 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7e57]        # 0x3691cc68d1e6
    3691cc69538f:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    3691cc695394:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc695398:	e9 38 01 00 00                                  	jmp    0x3691cc6954d5
    3691cc69539d:	49 8b f4                                        	mov    rsi,r12
    3691cc6953a0:	4d 8b e7                                        	mov    r12,r15
    3691cc6953a3:	c4 a1 7a 10 8c 26 fc 00 00 00                   	vmovss xmm1,DWORD PTR [rsi+r12*1+0xfc]
    3691cc6953ad:	c4 a1 72 5c 94 26 f8 00 00 00                   	vsubss xmm2,xmm1,DWORD PTR [rsi+r12*1+0xf8]
    3691cc6953b7:	c5 f8 2e e2                                     	vucomiss xmm4,xmm2
    3691cc6953bb:	7a 06                                           	jp     0x3691cc6953c3
    3691cc6953bd:	0f 84 2d 00 00 00                               	je     0x3691cc6953f0
    3691cc6953c3:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    3691cc6953c8:	c5 f0 5c c0                                     	vsubps xmm0,xmm1,xmm0
    3691cc6953cc:	c5 f1 76 c9                                     	vpcmpeqd xmm1,xmm1,xmm1
    3691cc6953d0:	c5 f1 72 f1 19                                  	vpslld xmm1,xmm1,0x19
    3691cc6953d5:	c5 f1 72 d1 02                                  	vpsrld xmm1,xmm1,0x2
    3691cc6953da:	c5 f2 5e d2                                     	vdivss xmm2,xmm1,xmm2
    3691cc6953de:	c5 f8 28 d2                                     	vmovaps xmm2,xmm2
    3691cc6953e2:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    3691cc6953e7:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    3691cc6953eb:	e9 94 01 00 00                                  	jmp    0x3691cc695584
    3691cc6953f0:	c5 f8 10 85 d0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x130]
    3691cc6953f8:	e9 87 01 00 00                                  	jmp    0x3691cc695584
    3691cc6953fd:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    3691cc695401:	c4 81 7a 10 94 3c f4 00 00 00                   	vmovss xmm2,DWORD PTR [r12+r15*1+0xf4]
    3691cc69540b:	4c 8b 15 d4 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7dd4]        # 0x3691cc68d1e6
    3691cc695412:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    3691cc695417:	c5 f2 59 ca                                     	vmulss xmm1,xmm1,xmm2
    3691cc69541b:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    3691cc695423:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    3691cc69542b:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    3691cc695433:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    3691cc69543b:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    3691cc695443:	c5 fb 11 95 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm2
    3691cc69544b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69544f:	e8 6c e1 f2 ff                                  	call   0x3691cc5c35c0
    3691cc695454:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc695459:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    3691cc695461:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    3691cc695465:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
    3691cc69546d:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    3691cc695475:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc695479:	e8 42 e1 f2 ff                                  	call   0x3691cc5c35c0
    3691cc69547e:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    3691cc695486:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    3691cc69548c:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    3691cc695494:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    3691cc695499:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
    3691cc6954a1:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    3691cc6954a9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6954ad:	e8 0e e1 f2 ff                                  	call   0x3691cc5c35c0
    3691cc6954b2:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    3691cc6954ba:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    3691cc6954c0:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    3691cc6954c8:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    3691cc6954cd:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    3691cc6954d5:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    3691cc6954dd:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6954e1:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6954e5:	e8 d6 e0 f2 ff                                  	call   0x3691cc5c35c0
    3691cc6954ea:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    3691cc6954f2:	c4 e3 79 21 c1 30                               	vinsertps xmm0,xmm0,xmm1,0x30
    3691cc6954f8:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    3691cc6954ff:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    3691cc695503:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    3691cc695507:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    3691cc69550f:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    3691cc695516:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
    3691cc69551e:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    3691cc695526:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    3691cc69552e:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    3691cc695536:	c5 78 10 9d c0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x140]
    3691cc69553e:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc695542:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    3691cc695549:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    3691cc695550:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc695557:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc69555e:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    3691cc695566:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    3691cc69556e:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    3691cc695576:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc69557e:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    3691cc695584:	c5 f8 10 8d d0 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x130]
    3691cc69558c:	c5 f0 c2 d0 01                                  	vcmpltps xmm2,xmm1,xmm0
    3691cc695591:	c5 69 df f8                                     	vpandn xmm15,xmm2,xmm0
    3691cc695595:	c5 a1 db c2                                     	vpand  xmm0,xmm11,xmm2
    3691cc695599:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc69559e:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    3691cc6955a4:	c5 a0 55 c0                                     	vandnps xmm0,xmm11,xmm0
    3691cc6955a8:	c5 c8 59 f0                                     	vmulps xmm6,xmm6,xmm0
    3691cc6955ac:	4c 8d be 08 01 00 00                            	lea    r15,[rsi+0x108]
    3691cc6955b3:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
    3691cc6955b9:	c5 f0 5c c8                                     	vsubps xmm1,xmm1,xmm0
    3691cc6955bd:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    3691cc6955c1:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    3691cc6955c6:	c5 c0 59 f8                                     	vmulps xmm7,xmm7,xmm0
    3691cc6955ca:	4c 8d be 04 01 00 00                            	lea    r15,[rsi+0x104]
    3691cc6955d1:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
    3691cc6955d7:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    3691cc6955db:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    3691cc6955e0:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    3691cc6955e4:	4c 8d be 00 01 00 00                            	lea    r15,[rsi+0x100]
    3691cc6955eb:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    3691cc6955f1:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    3691cc6955f5:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    3691cc6955fa:	4d 8b fc                                        	mov    r15,r12
    3691cc6955fd:	4c 8b e6                                        	mov    r12,rsi
    3691cc695600:	43 8b 94 3c 80 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x80]
    3691cc695608:	43 83 bc 3c 80 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0x80],0x0
    3691cc695611:	0f 85 0d 00 00 00                               	jne    0x3691cc695624
    3691cc695617:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
    3691cc69561f:	e9 84 00 00 00                                  	jmp    0x3691cc6956a8
    3691cc695624:	49 8d 94 24 88 00 00 00                         	lea    rdx,[r12+0x88]
    3691cc69562c:	c4 a2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+r15*1]
    3691cc695632:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc695637:	43 8b 94 3c 84 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x84]
    3691cc69563f:	81 ea 00 02 00 00                               	sub    edx,0x200
    3691cc695645:	83 fa 07                                        	cmp    edx,0x7
    3691cc695648:	0f 83 0b 00 00 00                               	jae    0x3691cc695659
    3691cc69564e:	4c 8d 15 7b 11 00 00                            	lea    r10,[rip+0x117b]        # 0x3691cc6967d0
    3691cc695655:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    3691cc695659:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    3691cc69565e:	e9 39 00 00 00                                  	jmp    0x3691cc69569c
    3691cc695663:	c4 41 78 c2 dc 02                               	vcmpleps xmm11,xmm0,xmm12
    3691cc695669:	e9 2e 00 00 00                                  	jmp    0x3691cc69569c
    3691cc69566e:	c5 18 c2 d8 04                                  	vcmpneqps xmm11,xmm12,xmm0
    3691cc695673:	e9 24 00 00 00                                  	jmp    0x3691cc69569c
    3691cc695678:	c4 41 78 c2 dc 01                               	vcmpltps xmm11,xmm0,xmm12
    3691cc69567e:	e9 19 00 00 00                                  	jmp    0x3691cc69569c
    3691cc695683:	c5 18 c2 d8 02                                  	vcmpleps xmm11,xmm12,xmm0
    3691cc695688:	e9 0f 00 00 00                                  	jmp    0x3691cc69569c
    3691cc69568d:	c5 18 c2 d8 00                                  	vcmpeqps xmm11,xmm12,xmm0
    3691cc695692:	e9 05 00 00 00                                  	jmp    0x3691cc69569c
    3691cc695697:	c5 18 c2 d8 01                                  	vcmpltps xmm11,xmm12,xmm0
    3691cc69569c:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
    3691cc6956a4:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    3691cc6956a8:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    3691cc6956ac:	85 d2                                           	test   edx,edx
    3691cc6956ae:	0f 85 42 00 00 00                               	jne    0x3691cc6956f6
    3691cc6956b4:	49 8b f4                                        	mov    rsi,r12
    3691cc6956b7:	4c 8b e3                                        	mov    r12,rbx
    3691cc6956ba:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc6956bf:	4d 8b d3                                        	mov    r10,r11
    3691cc6956c2:	4d 8b df                                        	mov    r11,r15
    3691cc6956c5:	4d 8b fa                                        	mov    r15,r10
    3691cc6956c8:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc6956cd:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc6956d3:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc6956d9:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc6956e1:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc6956e9:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc6956f1:	e9 02 0c 00 00                                  	jmp    0x3691cc6962f8
    3691cc6956f6:	43 8b 74 3c 58                                  	mov    esi,DWORD PTR [r12+r15*1+0x58]
    3691cc6956fb:	43 83 7c 3c 58 00                               	cmp    DWORD PTR [r12+r15*1+0x58],0x0
    3691cc695701:	0f 85 18 00 00 00                               	jne    0x3691cc69571f
    3691cc695707:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    3691cc69570e:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc695714:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc69571a:	e9 28 01 00 00                                  	jmp    0x3691cc695847
    3691cc69571f:	43 8b 54 3c 48                                  	mov    edx,DWORD PTR [r12+r15*1+0x48]
    3691cc695724:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
    3691cc695727:	33 ff                                           	xor    edi,edi
    3691cc695729:	3b f2                                           	cmp    esi,edx
    3691cc69572b:	40 0f 9c c7                                     	setl   dil
    3691cc69572f:	47 8b 44 3c 50                                  	mov    r8d,DWORD PTR [r12+r15*1+0x50]
    3691cc695734:	44 03 c2                                        	add    r8d,edx
    3691cc695737:	45 33 db                                        	xor    r11d,r11d
    3691cc69573a:	44 3b c6                                        	cmp    r8d,esi
    3691cc69573d:	41 0f 9e c3                                     	setle  r11b
    3691cc695741:	44 0b df                                        	or     r11d,edi
    3691cc695744:	43 8b 7c 3c 4c                                  	mov    edi,DWORD PTR [r12+r15*1+0x4c]
    3691cc695749:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc69574f:	33 db                                           	xor    ebx,ebx
    3691cc695751:	3b c7                                           	cmp    eax,edi
    3691cc695753:	0f 9c c3                                        	setl   bl
    3691cc695756:	41 8b cb                                        	mov    ecx,r11d
    3691cc695759:	0b cb                                           	or     ecx,ebx
    3691cc69575b:	83 f1 ff                                        	xor    ecx,0xffffffff
    3691cc69575e:	43 8b 74 3c 54                                  	mov    esi,DWORD PTR [r12+r15*1+0x54]
    3691cc695763:	03 f7                                           	add    esi,edi
    3691cc695765:	45 33 c9                                        	xor    r9d,r9d
    3691cc695768:	3b c6                                           	cmp    eax,esi
    3691cc69576a:	41 0f 9c c1                                     	setl   r9b
    3691cc69576e:	41 23 c9                                        	and    ecx,r9d
    3691cc695771:	f7 d9                                           	neg    ecx
    3691cc695773:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    3691cc695777:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc69577c:	44 3b 85 58 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xa8]
    3691cc695783:	41 0f 9e c0                                     	setle  r8b
    3691cc695787:	45 0f b6 c0                                     	movzx  r8d,r8b
    3691cc69578b:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc695791:	3b ca                                           	cmp    ecx,edx
    3691cc695793:	0f 9c c2                                        	setl   dl
    3691cc695796:	0f b6 d2                                        	movzx  edx,dl
    3691cc695799:	41 0b d0                                        	or     edx,r8d
    3691cc69579c:	0b da                                           	or     ebx,edx
    3691cc69579e:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc6957a1:	44 23 cb                                        	and    r9d,ebx
    3691cc6957a4:	41 f7 d9                                        	neg    r9d
    3691cc6957a7:	c4 43 21 22 d9 01                               	vpinsrd xmm11,xmm11,r9d,0x1
    3691cc6957ad:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    3691cc6957b4:	33 db                                           	xor    ebx,ebx
    3691cc6957b6:	44 3b c6                                        	cmp    r8d,esi
    3691cc6957b9:	0f 9c c3                                        	setl   bl
    3691cc6957bc:	44 3b c7                                        	cmp    r8d,edi
    3691cc6957bf:	40 0f 9c c7                                     	setl   dil
    3691cc6957c3:	40 0f b6 ff                                     	movzx  edi,dil
    3691cc6957c7:	44 0b df                                        	or     r11d,edi
    3691cc6957ca:	41 83 f3 ff                                     	xor    r11d,0xffffffff
    3691cc6957ce:	44 23 db                                        	and    r11d,ebx
    3691cc6957d1:	41 f7 db                                        	neg    r11d
    3691cc6957d4:	c4 43 21 22 db 02                               	vpinsrd xmm11,xmm11,r11d,0x2
    3691cc6957da:	0b fa                                           	or     edi,edx
    3691cc6957dc:	83 f7 ff                                        	xor    edi,0xffffffff
    3691cc6957df:	23 df                                           	and    ebx,edi
    3691cc6957e1:	f7 db                                           	neg    ebx
    3691cc6957e3:	c4 63 21 22 db 03                               	vpinsrd xmm11,xmm11,ebx,0x3
    3691cc6957e9:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    3691cc6957ed:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    3691cc6957f1:	85 d2                                           	test   edx,edx
    3691cc6957f3:	0f 85 4e 00 00 00                               	jne    0x3691cc695847
    3691cc6957f9:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc6957fe:	49 8b f4                                        	mov    rsi,r12
    3691cc695801:	4d 8b df                                        	mov    r11,r15
    3691cc695804:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc695809:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc69580f:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc695815:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc69581c:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    3691cc695823:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc69582a:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc695832:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc69583a:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc695842:	e9 b1 0a 00 00                                  	jmp    0x3691cc6962f8
    3691cc695847:	83 bd 00 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x100],0x0
    3691cc69584e:	0f 84 c6 01 00 00                               	je     0x3691cc695a1a
    3691cc695854:	83 bd 38 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xc8],0x0
    3691cc69585b:	0f 85 00 01 00 00                               	jne    0x3691cc695961
    3691cc695861:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc695866:	43 8b 7c 3c 0c                                  	mov    edi,DWORD PTR [r12+r15*1+0xc]
    3691cc69586b:	44 8b 9d 20 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xe0]
    3691cc695872:	42 8d 1c 9f                                     	lea    ebx,[rdi+r11*4]
    3691cc695876:	c4 c1 7b 10 0c 1c                               	vmovsd xmm1,QWORD PTR [r12+rbx*1]
    3691cc69587c:	44 3b 85 28 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xd8]
    3691cc695883:	0f 8c 10 00 00 00                               	jl     0x3691cc695899
    3691cc695889:	c4 c1 79 28 d3                                  	vmovapd xmm2,xmm11
    3691cc69588e:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    3691cc695894:	e9 0f 00 00 00                                  	jmp    0x3691cc6958a8
    3691cc695899:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    3691cc69589f:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
    3691cc6958a2:	c4 c1 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+rdi*1]
    3691cc6958a8:	c5 f1 6c ca                                     	vpunpcklqdq xmm1,xmm1,xmm2
    3691cc6958ac:	43 8b 7c 3c 6c                                  	mov    edi,DWORD PTR [r12+r15*1+0x6c]
    3691cc6958b1:	81 ef 00 02 00 00                               	sub    edi,0x200
    3691cc6958b7:	83 ff 07                                        	cmp    edi,0x7
    3691cc6958ba:	0f 83 0b 00 00 00                               	jae    0x3691cc6958cb
    3691cc6958c0:	4c 8d 15 d1 0e 00 00                            	lea    r10,[rip+0xed1]        # 0x3691cc696798
    3691cc6958c7:	41 ff 24 fa                                     	jmp    QWORD PTR [r10+rdi*8]
    3691cc6958cb:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    3691cc6958d0:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc6958d8:	e9 74 00 00 00                                  	jmp    0x3691cc695951
    3691cc6958dd:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc6958e5:	c5 70 c2 da 02                                  	vcmpleps xmm11,xmm1,xmm2
    3691cc6958ea:	e9 62 00 00 00                                  	jmp    0x3691cc695951
    3691cc6958ef:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc6958f7:	c5 68 c2 d9 04                                  	vcmpneqps xmm11,xmm2,xmm1
    3691cc6958fc:	e9 50 00 00 00                                  	jmp    0x3691cc695951
    3691cc695901:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc695909:	c5 70 c2 da 01                                  	vcmpltps xmm11,xmm1,xmm2
    3691cc69590e:	e9 3e 00 00 00                                  	jmp    0x3691cc695951
    3691cc695913:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc69591b:	c5 68 c2 d9 02                                  	vcmpleps xmm11,xmm2,xmm1
    3691cc695920:	e9 2c 00 00 00                                  	jmp    0x3691cc695951
    3691cc695925:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc69592d:	c5 68 c2 d9 00                                  	vcmpeqps xmm11,xmm2,xmm1
    3691cc695932:	e9 1a 00 00 00                                  	jmp    0x3691cc695951
    3691cc695937:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc69593f:	c5 68 c2 d9 01                                  	vcmpltps xmm11,xmm2,xmm1
    3691cc695944:	e9 08 00 00 00                                  	jmp    0x3691cc695951
    3691cc695949:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    3691cc695951:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    3691cc695955:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    3691cc695959:	85 d2                                           	test   edx,edx
    3691cc69595b:	0f 84 98 fe ff ff                               	je     0x3691cc6957f9
    3691cc695961:	43 8b 7c 3c 70                                  	mov    edi,DWORD PTR [r12+r15*1+0x70]
    3691cc695966:	43 83 7c 3c 70 00                               	cmp    DWORD PTR [r12+r15*1+0x70],0x0
    3691cc69596c:	0f 84 a8 00 00 00                               	je     0x3691cc695a1a
    3691cc695972:	f6 c2 01                                        	test   dl,0x1
    3691cc695975:	0f 85 13 00 00 00                               	jne    0x3691cc69598e
    3691cc69597b:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc695983:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    3691cc695989:	e9 21 00 00 00                                  	jmp    0x3691cc6959af
    3691cc69598e:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
    3691cc695993:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    3691cc695999:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    3691cc69599d:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc6959a5:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    3691cc6959a9:	c4 01 7a 11 1c 1c                               	vmovss DWORD PTR [r12+r11*1],xmm11
    3691cc6959af:	f6 c2 02                                        	test   dl,0x2
    3691cc6959b2:	0f 84 14 00 00 00                               	je     0x3691cc6959cc
    3691cc6959b8:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
    3691cc6959bd:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    3691cc6959c1:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    3691cc6959c5:	c4 01 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+r11*1+0x4],xmm11
    3691cc6959cc:	f6 c2 04                                        	test   dl,0x4
    3691cc6959cf:	0f 85 0c 00 00 00                               	jne    0x3691cc6959e1
    3691cc6959d5:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    3691cc6959dc:	e9 1b 00 00 00                                  	jmp    0x3691cc6959fc
    3691cc6959e1:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
    3691cc6959e6:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    3691cc6959ed:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
    3691cc6959f1:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    3691cc6959f6:	c4 41 7a 11 1c 1c                               	vmovss DWORD PTR [r12+rbx*1],xmm11
    3691cc6959fc:	f6 c2 08                                        	test   dl,0x8
    3691cc6959ff:	0f 84 15 00 00 00                               	je     0x3691cc695a1a
    3691cc695a05:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
    3691cc695a0a:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
    3691cc695a0e:	c5 79 70 d8 03                                  	vpshufd xmm11,xmm0,0x3
    3691cc695a13:	c4 41 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+rbx*1+0x4],xmm11
    3691cc695a1a:	43 8b 7c 3c 74                                  	mov    edi,DWORD PTR [r12+r15*1+0x74]
    3691cc695a1f:	43 83 7c 3c 74 00                               	cmp    DWORD PTR [r12+r15*1+0x74],0x0
    3691cc695a25:	0f 85 14 00 00 00                               	jne    0x3691cc695a3f
    3691cc695a2b:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    3691cc695a31:	c1 e7 02                                        	shl    edi,0x2
    3691cc695a34:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc695a3a:	e9 dd 02 00 00                                  	jmp    0x3691cc695d1c
    3691cc695a3f:	43 8b 7c 3c 78                                  	mov    edi,DWORD PTR [r12+r15*1+0x78]
    3691cc695a44:	44 8d 9f fe fc ff ff                            	lea    r11d,[rdi-0x302]
    3691cc695a4b:	33 db                                           	xor    ebx,ebx
    3691cc695a4d:	41 83 fb 04                                     	cmp    r11d,0x4
    3691cc695a51:	0f 93 c3                                        	setae  bl
    3691cc695a54:	33 f6                                           	xor    esi,esi
    3691cc695a56:	83 ff 01                                        	cmp    edi,0x1
    3691cc695a59:	40 0f 97 c6                                     	seta   sil
    3691cc695a5d:	85 f3                                           	test   ebx,esi
    3691cc695a5f:	0f 85 dc 05 00 00                               	jne    0x3691cc696041
    3691cc695a65:	43 8b 5c 3c 7c                                  	mov    ebx,DWORD PTR [r12+r15*1+0x7c]
    3691cc695a6a:	8d b3 fe fc ff ff                               	lea    esi,[rbx-0x302]
    3691cc695a70:	45 33 c9                                        	xor    r9d,r9d
    3691cc695a73:	83 fe 04                                        	cmp    esi,0x4
    3691cc695a76:	41 0f 93 c1                                     	setae  r9b
    3691cc695a7a:	33 c0                                           	xor    eax,eax
    3691cc695a7c:	83 fb 01                                        	cmp    ebx,0x1
    3691cc695a7f:	0f 97 c0                                        	seta   al
    3691cc695a82:	41 85 c1                                        	test   r9d,eax
    3691cc695a85:	0f 85 b0 05 00 00                               	jne    0x3691cc69603b
    3691cc695a8b:	8b 85 20 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe0]
    3691cc695a91:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    3691cc695a98:	47 8b 4c 3c 08                                  	mov    r9d,DWORD PTR [r12+r15*1+0x8]
    3691cc695a9d:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    3691cc695aa1:	c4 c1 7b 10 04 04                               	vmovsd xmm0,QWORD PTR [r12+rax*1]
    3691cc695aa7:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    3691cc695aad:	41 3b c0                                        	cmp    eax,r8d
    3691cc695ab0:	0f 8e 22 00 00 00                               	jle    0x3691cc695ad8
    3691cc695ab6:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    3691cc695abd:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc695ac3:	45 8d 0c 91                                     	lea    r9d,[r9+rdx*4]
    3691cc695ac7:	c4 01 7b 10 1c 0c                               	vmovsd xmm11,QWORD PTR [r12+r9*1]
    3691cc695acd:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    3691cc695ad3:	e9 05 00 00 00                                  	jmp    0x3691cc695add
    3691cc695ad8:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc695add:	c4 c1 79 6c c3                                  	vpunpcklqdq xmm0,xmm0,xmm11
    3691cc695ae2:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    3691cc695aec:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc695af1:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    3691cc695afb:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    3691cc695b01:	c4 42 79 00 db                                  	vpshufb xmm11,xmm0,xmm11
    3691cc695b06:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    3691cc695b0b:	4c 8b 15 b1 c2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc2b1]        # 0x3691cc691dc3
    3691cc695b12:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc695b17:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc695b1b:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    3691cc695b1f:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    3691cc695b29:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc695b2e:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    3691cc695b38:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    3691cc695b3e:	c4 e2 79 00 d2                                  	vpshufb xmm2,xmm0,xmm2
    3691cc695b43:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc695b47:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    3691cc695b51:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc695b56:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    3691cc695b60:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    3691cc695b66:	c4 e2 79 00 ed                                  	vpshufb xmm5,xmm0,xmm5
    3691cc695b6b:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    3691cc695b6f:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    3691cc695b79:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc695b7e:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    3691cc695b88:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    3691cc695b8e:	c4 c2 79 00 c1                                  	vpshufb xmm0,xmm0,xmm9
    3691cc695b93:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc695b97:	41 83 fb 02                                     	cmp    r11d,0x2
    3691cc695b9b:	0f 8c 15 00 00 00                               	jl     0x3691cc695bb6
    3691cc695ba1:	0f 84 6b 00 00 00                               	je     0x3691cc695c12
    3691cc695ba7:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc695bab:	0f 84 46 00 00 00                               	je     0x3691cc695bf7
    3691cc695bb1:	e9 19 00 00 00                                  	jmp    0x3691cc695bcf
    3691cc695bb6:	41 83 fb 00                                     	cmp    r11d,0x0
    3691cc695bba:	0f 84 77 00 00 00                               	je     0x3691cc695c37
    3691cc695bc0:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc695bc4:	0f 84 52 00 00 00                               	je     0x3691cc695c1c
    3691cc695bca:	e9 00 00 00 00                                  	jmp    0x3691cc695bcf
    3691cc695bcf:	85 ff                                           	test   edi,edi
    3691cc695bd1:	0f 85 0a 00 00 00                               	jne    0x3691cc695be1
    3691cc695bd7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc695bdc:	e9 5b 00 00 00                                  	jmp    0x3691cc695c3c
    3691cc695be1:	4c 8b 15 e5 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ae5]        # 0x3691cc68e6cd
    3691cc695be8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc695bed:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc695bf2:	e9 45 00 00 00                                  	jmp    0x3691cc695c3c
    3691cc695bf7:	4c 8b 15 cf 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8acf]        # 0x3691cc68e6cd
    3691cc695bfe:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc695c03:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc695c08:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    3691cc695c0d:	e9 2a 00 00 00                                  	jmp    0x3691cc695c3c
    3691cc695c12:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    3691cc695c17:	e9 20 00 00 00                                  	jmp    0x3691cc695c3c
    3691cc695c1c:	4c 8b 15 aa 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8aaa]        # 0x3691cc68e6cd
    3691cc695c23:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc695c28:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc695c2d:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    3691cc695c32:	e9 05 00 00 00                                  	jmp    0x3691cc695c3c
    3691cc695c37:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    3691cc695c3c:	c5 e8 59 d1                                     	vmulps xmm2,xmm2,xmm1
    3691cc695c40:	c5 d0 59 e9                                     	vmulps xmm5,xmm5,xmm1
    3691cc695c44:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    3691cc695c48:	83 fe 02                                        	cmp    esi,0x2
    3691cc695c4b:	0f 8c 14 00 00 00                               	jl     0x3691cc695c65
    3691cc695c51:	0f 84 5e 00 00 00                               	je     0x3691cc695cb5
    3691cc695c57:	83 fe 03                                        	cmp    esi,0x3
    3691cc695c5a:	0f 84 3a 00 00 00                               	je     0x3691cc695c9a
    3691cc695c60:	e9 17 00 00 00                                  	jmp    0x3691cc695c7c
    3691cc695c65:	83 fe 00                                        	cmp    esi,0x0
    3691cc695c68:	0f 84 6c 00 00 00                               	je     0x3691cc695cda
    3691cc695c6e:	83 fe 01                                        	cmp    esi,0x1
    3691cc695c71:	0f 84 48 00 00 00                               	je     0x3691cc695cbf
    3691cc695c77:	e9 00 00 00 00                                  	jmp    0x3691cc695c7c
    3691cc695c7c:	85 db                                           	test   ebx,ebx
    3691cc695c7e:	0f 84 5b 00 00 00                               	je     0x3691cc695cdf
    3691cc695c84:	4c 8b 15 42 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a42]        # 0x3691cc68e6cd
    3691cc695c8b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc695c90:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc695c95:	e9 45 00 00 00                                  	jmp    0x3691cc695cdf
    3691cc695c9a:	4c 8b 15 2c 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a2c]        # 0x3691cc68e6cd
    3691cc695ca1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc695ca6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc695cab:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    3691cc695cb0:	e9 2a 00 00 00                                  	jmp    0x3691cc695cdf
    3691cc695cb5:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    3691cc695cba:	e9 20 00 00 00                                  	jmp    0x3691cc695cdf
    3691cc695cbf:	4c 8b 15 07 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a07]        # 0x3691cc68e6cd
    3691cc695cc6:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc695ccb:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc695cd0:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    3691cc695cd5:	e9 05 00 00 00                                  	jmp    0x3691cc695cdf
    3691cc695cda:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    3691cc695cdf:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    3691cc695ce4:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    3691cc695ce9:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    3691cc695cee:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    3691cc695cf3:	c4 41 68 59 da                                  	vmulps xmm11,xmm2,xmm10
    3691cc695cf8:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    3691cc695cfd:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    3691cc695d02:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    3691cc695d07:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    3691cc695d0c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc695d11:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    3691cc695d16:	c5 38 58 c0                                     	vaddps xmm8,xmm8,xmm0
    3691cc695d1a:	8b f9                                           	mov    edi,ecx
    3691cc695d1c:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc695d20:	4c 8b 15 a6 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff89a6]        # 0x3691cc68e6cd
    3691cc695d27:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc695d2c:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc695d31:	4c 8b 15 95 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8995]        # 0x3691cc68e6cd
    3691cc695d38:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc695d3d:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc695d42:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    3691cc695d48:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    3691cc695d4d:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    3691cc695d52:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    3691cc695d57:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc695d5c:	c4 c1 38 c2 cb 01                               	vcmpltps xmm1,xmm8,xmm11
    3691cc695d62:	c4 41 70 55 c0                                  	vandnps xmm8,xmm1,xmm8
    3691cc695d67:	4c 8b 15 ae e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe0ae]        # 0x3691cc693e1c
    3691cc695d6e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc695d73:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc695d77:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    3691cc695d7b:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    3691cc695d81:	4c 8b 15 21 71 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7121]        # 0x3691cc68cea9
    3691cc695d88:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc695d8e:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    3691cc695d93:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc695d99:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc695d9e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc695da3:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    3691cc695da8:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    3691cc695dad:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
    3691cc695db3:	c5 a8 c2 d7 01                                  	vcmpltps xmm2,xmm10,xmm7
    3691cc695db8:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    3691cc695dbc:	c5 b1 db fa                                     	vpand  xmm7,xmm9,xmm2
    3691cc695dc0:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc695dc5:	c4 c1 40 c2 d3 01                               	vcmpltps xmm2,xmm7,xmm11
    3691cc695dcb:	c5 e8 55 ff                                     	vandnps xmm7,xmm2,xmm7
    3691cc695dcf:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    3691cc695dd3:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    3691cc695dd9:	4c 8b 15 c9 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff70c9]        # 0x3691cc68cea9
    3691cc695de0:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    3691cc695de5:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    3691cc695dea:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    3691cc695df0:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc695df4:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc695df9:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    3691cc695dfd:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    3691cc695e01:	c4 e3 41 0e f8 fc                               	vpblendw xmm7,xmm7,xmm0,0xfc
    3691cc695e07:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    3691cc695e0b:	c5 28 c2 c6 01                                  	vcmpltps xmm8,xmm10,xmm6
    3691cc695e10:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    3691cc695e14:	c4 c1 31 db f0                                  	vpand  xmm6,xmm9,xmm8
    3691cc695e19:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc695e1e:	c4 41 48 c2 c3 01                               	vcmpltps xmm8,xmm6,xmm11
    3691cc695e24:	c5 b8 55 f6                                     	vandnps xmm6,xmm8,xmm6
    3691cc695e28:	c5 c8 59 f1                                     	vmulps xmm6,xmm6,xmm1
    3691cc695e2c:	c4 e3 79 08 f6 08                               	vroundps xmm6,xmm6,0x8
    3691cc695e32:	4c 8b 15 70 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7070]        # 0x3691cc68cea9
    3691cc695e39:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    3691cc695e3e:	c4 c1 48 54 f7                                  	vandps xmm6,xmm6,xmm15
    3691cc695e43:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    3691cc695e49:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    3691cc695e4d:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    3691cc695e52:	c5 c9 6b f6                                     	vpackssdw xmm6,xmm6,xmm6
    3691cc695e56:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
    3691cc695e5a:	c4 e3 49 0e f0 fc                               	vpblendw xmm6,xmm6,xmm0,0xfc
    3691cc695e60:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    3691cc695e66:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    3691cc695e6b:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    3691cc695e70:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    3691cc695e75:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    3691cc695e7b:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    3691cc695e80:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    3691cc695e84:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    3691cc695e8a:	4c 8b 15 18 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7018]        # 0x3691cc68cea9
    3691cc695e91:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc695e97:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    3691cc695e9c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc695ea2:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc695ea7:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc695eac:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    3691cc695eb1:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    3691cc695eb6:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
    3691cc695ebc:	c4 c1 49 60 f0                                  	vpunpcklbw xmm6,xmm6,xmm8
    3691cc695ec1:	c5 c1 61 f6                                     	vpunpcklwd xmm6,xmm7,xmm6
    3691cc695ec5:	c4 81 7a 6f bc 3c 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r15*1+0x520]
    3691cc695ecf:	c5 c1 76 f8                                     	vpcmpeqd xmm7,xmm7,xmm0
    3691cc695ed3:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    3691cc695ed9:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    3691cc695ede:	33 f6                                           	xor    esi,esi
    3691cc695ee0:	41 f6 c3 01                                     	test   r11b,0x1
    3691cc695ee4:	0f 45 de                                        	cmovne ebx,esi
    3691cc695ee7:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    3691cc695eec:	b9 ff 00 00 00                                  	mov    ecx,0xff
    3691cc695ef1:	41 f6 c3 01                                     	test   r11b,0x1
    3691cc695ef5:	0f 45 ce                                        	cmovne ecx,esi
    3691cc695ef8:	0b cb                                           	or     ecx,ebx
    3691cc695efa:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    3691cc695f00:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    3691cc695f05:	41 f6 c3 01                                     	test   r11b,0x1
    3691cc695f09:	0f 45 de                                        	cmovne ebx,esi
    3691cc695f0c:	0b d9                                           	or     ebx,ecx
    3691cc695f0e:	c4 c3 79 16 fb 03                               	vpextrd r11d,xmm7,0x3
    3691cc695f14:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    3691cc695f19:	41 f6 c3 01                                     	test   r11b,0x1
    3691cc695f1d:	0f 45 ce                                        	cmovne ecx,esi
    3691cc695f20:	0b cb                                           	or     ecx,ebx
    3691cc695f22:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    3691cc695f26:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc695f2b:	44 8b da                                        	mov    r11d,edx
    3691cc695f2e:	41 83 e3 01                                     	and    r11d,0x1
    3691cc695f32:	41 f7 db                                        	neg    r11d
    3691cc695f35:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    3691cc695f3a:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc695f3f:	44 8b da                                        	mov    r11d,edx
    3691cc695f42:	41 c1 e3 1e                                     	shl    r11d,0x1e
    3691cc695f46:	41 c1 fb 1f                                     	sar    r11d,0x1f
    3691cc695f4a:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    3691cc695f50:	44 8b da                                        	mov    r11d,edx
    3691cc695f53:	41 c1 e3 1d                                     	shl    r11d,0x1d
    3691cc695f57:	41 c1 fb 1f                                     	sar    r11d,0x1f
    3691cc695f5b:	c4 43 39 22 c3 02                               	vpinsrd xmm8,xmm8,r11d,0x2
    3691cc695f61:	44 8b da                                        	mov    r11d,edx
    3691cc695f64:	41 c1 e3 1c                                     	shl    r11d,0x1c
    3691cc695f68:	41 c1 fb 1f                                     	sar    r11d,0x1f
    3691cc695f6c:	c4 43 39 22 c3 03                               	vpinsrd xmm8,xmm8,r11d,0x3
    3691cc695f72:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    3691cc695f77:	47 8b 5c 3c 08                                  	mov    r11d,DWORD PTR [r12+r15*1+0x8]
    3691cc695f7c:	41 03 fb                                        	add    edi,r11d
    3691cc695f7f:	c4 41 7b 10 04 3c                               	vmovsd xmm8,QWORD PTR [r12+rdi*1]
    3691cc695f85:	41 3b c0                                        	cmp    eax,r8d
    3691cc695f88:	0f 8e 15 00 00 00                               	jle    0x3691cc695fa3
    3691cc695f8e:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    3691cc695f94:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
    3691cc695f98:	c4 81 7b 10 04 1c                               	vmovsd xmm0,QWORD PTR [r12+r11*1]
    3691cc695f9e:	e9 06 00 00 00                                  	jmp    0x3691cc695fa9
    3691cc695fa3:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    3691cc695fa9:	c5 b9 6c c0                                     	vpunpcklqdq xmm0,xmm8,xmm0
    3691cc695fad:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    3691cc695fb1:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    3691cc695fb5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc695fba:	f6 c2 03                                        	test   dl,0x3
    3691cc695fbd:	0f 84 06 00 00 00                               	je     0x3691cc695fc9
    3691cc695fc3:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
    3691cc695fc9:	41 3b c0                                        	cmp    eax,r8d
    3691cc695fcc:	0f 8e 27 f8 ff ff                               	jle    0x3691cc6957f9
    3691cc695fd2:	f6 c2 0c                                        	test   dl,0xc
    3691cc695fd5:	0f 84 1e f8 ff ff                               	je     0x3691cc6957f9
    3691cc695fdb:	43 8b 7c 3c 08                                  	mov    edi,DWORD PTR [r12+r15*1+0x8]
    3691cc695fe0:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
    3691cc695fe3:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    3691cc695fe7:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
    3691cc695fed:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc695ff2:	49 8b f4                                        	mov    rsi,r12
    3691cc695ff5:	4d 8b df                                        	mov    r11,r15
    3691cc695ff8:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc695ffd:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc696003:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc696009:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc696010:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    3691cc696017:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc69601e:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc696026:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc69602e:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc696036:	e9 bd 02 00 00                                  	jmp    0x3691cc6962f8
    3691cc69603b:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc696041:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    3691cc696049:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    3691cc696051:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    3691cc696059:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    3691cc696060:	f6 c2 01                                        	test   dl,0x1
    3691cc696063:	0f 84 a0 00 00 00                               	je     0x3691cc696109
    3691cc696069:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc696071:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    3691cc696075:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    3691cc69607a:	c5 78 28 d7                                     	vmovaps xmm10,xmm7
    3691cc69607e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    3691cc696082:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    3691cc696087:	8b f8                                           	mov    edi,eax
    3691cc696089:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69608d:	8b c8                                           	mov    ecx,eax
    3691cc69608f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc696092:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    3691cc696095:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    3691cc69609a:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc69609f:	e8 bc b1 f2 ff                                  	call   0x3691cc5c1260
    3691cc6960a4:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6960a8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    3691cc6960ac:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc6960b2:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc6960b8:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    3691cc6960bf:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    3691cc6960c7:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    3691cc6960cf:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    3691cc6960d7:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    3691cc6960df:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    3691cc6960e5:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc6960e9:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    3691cc6960f1:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    3691cc6960f9:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    3691cc696101:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc696109:	f6 c2 02                                        	test   dl,0x2
    3691cc69610c:	0f 84 9d 00 00 00                               	je     0x3691cc6961af
    3691cc696112:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc69611a:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    3691cc69611e:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    3691cc696123:	c5 7a 16 d7                                     	vmovshdup xmm10,xmm7
    3691cc696127:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    3691cc69612b:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    3691cc696130:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc696134:	8b d1                                           	mov    edx,ecx
    3691cc696136:	8b c8                                           	mov    ecx,eax
    3691cc696138:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc69613b:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc696140:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    3691cc696145:	e8 16 b1 f2 ff                                  	call   0x3691cc5c1260
    3691cc69614a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc69614e:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    3691cc696152:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc696158:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc69615e:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    3691cc696165:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    3691cc69616d:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    3691cc696175:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    3691cc69617d:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    3691cc696185:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    3691cc69618b:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc69618f:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    3691cc696197:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    3691cc69619f:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    3691cc6961a7:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc6961af:	f6 c2 04                                        	test   dl,0x4
    3691cc6961b2:	0f 84 a4 00 00 00                               	je     0x3691cc69625c
    3691cc6961b8:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc6961c0:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    3691cc6961c5:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    3691cc6961cb:	c5 79 70 d7 02                                  	vpshufd xmm10,xmm7,0x2
    3691cc6961d0:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    3691cc6961d5:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    3691cc6961db:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6961df:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc6961e2:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    3691cc6961e5:	41 8b c8                                        	mov    ecx,r8d
    3691cc6961e8:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6961ed:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    3691cc6961f2:	e8 69 b0 f2 ff                                  	call   0x3691cc5c1260
    3691cc6961f7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6961fb:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    3691cc6961ff:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc696205:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    3691cc69620b:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    3691cc696212:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    3691cc69621a:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    3691cc696222:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    3691cc69622a:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    3691cc696232:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    3691cc696238:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc69623c:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    3691cc696244:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    3691cc69624c:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    3691cc696254:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc69625c:	f6 c2 08                                        	test   dl,0x8
    3691cc69625f:	0f 84 94 f5 ff ff                               	je     0x3691cc6957f9
    3691cc696265:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc69626d:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    3691cc696272:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    3691cc696278:	c5 f9 70 c7 03                                  	vpshufd xmm0,xmm7,0x3
    3691cc69627d:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    3691cc696282:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    3691cc696288:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc69628c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc69628f:	8b d1                                           	mov    edx,ecx
    3691cc696291:	41 8b c8                                        	mov    ecx,r8d
    3691cc696294:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    3691cc696298:	c5 f9 28 d8                                     	vmovapd xmm3,xmm0
    3691cc69629c:	e8 bf af f2 ff                                  	call   0x3691cc5c1260
    3691cc6962a1:	bb 01 00 00 00                                  	mov    ebx,0x1
    3691cc6962a6:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    3691cc6962aa:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    3691cc6962ae:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc6962b3:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc6962b9:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc6962bf:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc6962c3:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    3691cc6962ca:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    3691cc6962d1:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    3691cc6962d8:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc6962e0:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc6962e8:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc6962f0:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc6962f8:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    3691cc6962ff:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
    3691cc69630a:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc69630e:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    3691cc696312:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    3691cc696319:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    3691cc696320:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    3691cc696328:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
    3691cc69632f:	48 2b 85 60 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa0]
    3691cc696336:	4c 2b 8d 70 ff ff ff                            	sub    r9,QWORD PTR [rbp-0x90]
    3691cc69633d:	4c 2b 5d 80                                     	sub    r11,QWORD PTR [rbp-0x80]
    3691cc696341:	41 83 c0 02                                     	add    r8d,0x2
    3691cc696345:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    3691cc696349:	0f 8c f1 7a ff ff                               	jl     0x3691cc68de40
    3691cc69634f:	48 8b 7d a0                                     	mov    rdi,QWORD PTR [rbp-0x60]
    3691cc696353:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    3691cc69635a:	4e 8d 1c 07                                     	lea    r11,[rdi+r8*1]
    3691cc69635e:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    3691cc696362:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
    3691cc696366:	4d 03 c8                                        	add    r9,r8
    3691cc696369:	4c 8b 65 b8                                     	mov    r12,QWORD PTR [rbp-0x48]
    3691cc69636d:	4c 8b bd 40 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x3c0]
    3691cc696374:	4d 03 fc                                        	add    r15,r12
    3691cc696377:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    3691cc69637d:	83 c0 02                                        	add    eax,0x2
    3691cc696380:	3b 45 c0                                        	cmp    eax,DWORD PTR [rbp-0x40]
    3691cc696383:	0f 8c f7 79 ff ff                               	jl     0x3691cc68dd80
    3691cc696389:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc69638d:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    3691cc696391:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    3691cc696396:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    3691cc69639c:	0f 85 56 00 00 00                               	jne    0x3691cc6963f8
    3691cc6963a2:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    3691cc6963a8:	85 c0                                           	test   eax,eax
    3691cc6963aa:	0f 85 1d 00 00 00                               	jne    0x3691cc6963cd
    3691cc6963b0:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6963b3:	81 c7 00 02 00 00                               	add    edi,0x200
    3691cc6963b9:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    3691cc6963bd:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    3691cc6963c1:	b8 01 00 00 00                                  	mov    eax,0x1
    3691cc6963c6:	48 8b e5                                        	mov    rsp,rbp
    3691cc6963c9:	5d                                              	pop    rbp
    3691cc6963ca:	c2 10 00                                        	ret    0x10
    3691cc6963cd:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc6963d3:	33 ff                                           	xor    edi,edi
    3691cc6963d5:	85 db                                           	test   ebx,ebx
    3691cc6963d7:	40 0f 94 c7                                     	sete   dil
    3691cc6963db:	8d 04 3f                                        	lea    eax,[rdi+rdi*1]
    3691cc6963de:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc6963e2:	41 81 c0 00 02 00 00                            	add    r8d,0x200
    3691cc6963e9:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    3691cc6963ed:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    3691cc6963f1:	48 8b e5                                        	mov    rsp,rbp
    3691cc6963f4:	5d                                              	pop    rbp
    3691cc6963f5:	c2 10 00                                        	ret    0x10
    3691cc6963f8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6963fb:	81 c7 00 02 00 00                               	add    edi,0x200
    3691cc696401:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    3691cc696405:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    3691cc696409:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    3691cc69640e:	48 8b e5                                        	mov    rsp,rbp
    3691cc696411:	5d                                              	pop    rbp
    3691cc696412:	c2 10 00                                        	ret    0x10
    3691cc696415:	8b f8                                           	mov    edi,eax
    3691cc696417:	45 8b 64 38 58                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x58]
    3691cc69641c:	41 bc 01 00 00 00                               	mov    r12d,0x1
    3691cc696422:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    3691cc696427:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    3691cc69642d:	44 0f 45 e0                                     	cmovne r12d,eax
    3691cc696431:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
    3691cc696438:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    3691cc69643c:	41 8b c4                                        	mov    eax,r12d
    3691cc69643f:	48 8b e5                                        	mov    rsp,rbp
    3691cc696442:	5d                                              	pop    rbp
    3691cc696443:	c2 10 00                                        	ret    0x10
    3691cc696446:	41 b8 10 00 00 00                               	mov    r8d,0x10
    3691cc69644c:	41 d1 f8                                        	sar    r8d,1
    3691cc69644f:	4d 63 c0                                        	movsxd r8,r8d
    3691cc696452:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    3691cc696456:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
    3691cc69645e:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    3691cc696465:	4c 89 4d c8                                     	mov    QWORD PTR [rbp-0x38],r9
    3691cc696469:	49 8b c0                                        	mov    rax,r8
    3691cc69646c:	e8 bf da f2 ff                                  	call   0x3691cc5c3f30
    3691cc696471:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    3691cc696474:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc696478:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
    3691cc696480:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    3691cc696486:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    3691cc69648c:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    3691cc696492:	44 8b 4d c8                                     	mov    r9d,DWORD PTR [rbp-0x38]
    3691cc696496:	e9 d1 69 ff ff                                  	jmp    0x3691cc68ce6c
    3691cc69649b:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    3691cc6964a2:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    3691cc6964a9:	e8 92 da f2 ff                                  	call   0x3691cc5c3f40
    3691cc6964ae:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc6964b5:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc6964ba:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc6964c0:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc6964c6:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc6964ca:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc6964d2:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    3691cc6964da:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc6964e2:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc6964ea:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc6964f2:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
    3691cc6964f9:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    3691cc6964ff:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    3691cc696505:	e9 b0 78 ff ff                                  	jmp    0x3691cc68ddba
    3691cc69650a:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    3691cc69650e:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
    3691cc696512:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    3691cc696519:	e8 22 da f2 ff                                  	call   0x3691cc5c3f40
    3691cc69651e:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    3691cc696522:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    3691cc696526:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    3691cc69652d:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
    3691cc696534:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    3691cc696539:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    3691cc69653f:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    3691cc696545:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc696549:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    3691cc696550:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    3691cc696558:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    3691cc696560:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc696568:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc696570:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc696578:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
    3691cc69657f:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    3691cc696585:	e9 d5 78 ff ff                                  	jmp    0x3691cc68de5f
    3691cc69658a:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    3691cc69658e:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    3691cc696596:	4c 89 85 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],r8
    3691cc69659d:	e8 9e d9 f2 ff                                  	call   0x3691cc5c3f40
    3691cc6965a2:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6965a6:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6965aa:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    3691cc6965ae:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    3691cc6965b5:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    3691cc6965b8:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc6965bc:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc6965c1:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc6965c6:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    3691cc6965ca:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    3691cc6965d1:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    3691cc6965d8:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    3691cc6965df:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    3691cc6965e7:	44 8b 85 80 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x180]
    3691cc6965ee:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    3691cc6965f6:	c5 fb 10 85 58 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x3a8]
    3691cc6965fe:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    3691cc696606:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    3691cc69660e:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    3691cc696616:	e9 70 a6 ff ff                                  	jmp    0x3691cc690c8b
    3691cc69661b:	e8 20 d9 f2 ff                                  	call   0x3691cc5c3f40
    3691cc696620:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc696624:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc696628:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc69662f:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    3691cc696637:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc69663a:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    3691cc696642:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    3691cc69664a:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    3691cc696652:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    3691cc69665a:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    3691cc696662:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    3691cc69666a:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
    3691cc696672:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    3691cc696678:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
    3691cc69667e:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
    3691cc696684:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    3691cc69668b:	e9 07 ad ff ff                                  	jmp    0x3691cc691397
    3691cc696690:	e8 ab d8 f2 ff                                  	call   0x3691cc5c3f40
    3691cc696695:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc696698:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc69669c:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    3691cc6966a2:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
    3691cc6966a9:	e9 f1 bc ff ff                                  	jmp    0x3691cc69239f
    3691cc6966ae:	e8 8d d8 f2 ff                                  	call   0x3691cc5c3f40
    3691cc6966b3:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6966b7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6966bb:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    3691cc6966c2:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    3691cc6966c9:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    3691cc6966cf:	e9 94 d1 ff ff                                  	jmp    0x3691cc693868
    3691cc6966d4:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
    3691cc6966dc:	c5 78 11 9d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm11
    3691cc6966e4:	c5 f8 11 ad 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm5
    3691cc6966ec:	c5 f8 11 8d 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm1
    3691cc6966f4:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    3691cc6966fb:	4c 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r15
    3691cc696702:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    3691cc696709:	e8 32 d8 f2 ff                                  	call   0x3691cc5c3f40
    3691cc69670e:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    3691cc696711:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc696715:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    3691cc69671d:	c5 78 10 9d b0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x150]
    3691cc696725:	c5 f8 10 ad 90 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x170]
    3691cc69672d:	c5 f8 10 8d 30 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x1d0]
    3691cc696735:	44 8b 85 a8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x158]
    3691cc69673c:	8b bd f0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x210]
    3691cc696742:	44 8b bd d8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x228]
    3691cc696749:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    3691cc696750:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
    3691cc696757:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
    3691cc69675f:	e9 7b e6 ff ff                                  	jmp    0x3691cc694ddf
    3691cc696764:	33 d2                                           	xor    edx,edx
    3691cc696766:	e9 e0 e6 ff ff                                  	jmp    0x3691cc694e4b
    3691cc69676b:	33 d2                                           	xor    edx,edx
    3691cc69676d:	8b c8                                           	mov    ecx,eax
    3691cc69676f:	e9 f7 e6 ff ff                                  	jmp    0x3691cc694e6b
    3691cc696774:	8b f0                                           	mov    esi,eax
    3691cc696776:	33 d2                                           	xor    edx,edx
    3691cc696778:	e9 2a e7 ff ff                                  	jmp    0x3691cc694ea7
    3691cc69677d:	33 d2                                           	xor    edx,edx
    3691cc69677f:	8b d8                                           	mov    ebx,eax
    3691cc696781:	e9 41 e7 ff ff                                  	jmp    0x3691cc694ec7
    3691cc696786:	e8 c5 d4 f2 ff                                  	call   0x3691cc5c3c50
    3691cc69678b:	e8 c0 d4 f2 ff                                  	call   0x3691cc5c3c50
    3691cc696790:	90                                              	nop
    3691cc696791:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3691cc696798:	49 59                                           	rex.WB pop r9
    3691cc69679a:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6967a0:	37                                              	(bad)
    3691cc6967a1:	59                                              	pop    rcx
    3691cc6967a2:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6967a8:	25 59 69 cc 91                                  	and    eax,0x91cc6959
    3691cc6967ad:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6967b0:	13 59 69                                        	adc    ebx,DWORD PTR [rcx+0x69]
    3691cc6967b3:	cc                                              	int3
    3691cc6967b4:	91                                              	xchg   ecx,eax
    3691cc6967b5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6967b8:	01 59 69                                        	add    DWORD PTR [rcx+0x69],ebx
    3691cc6967bb:	cc                                              	int3
    3691cc6967bc:	91                                              	xchg   ecx,eax
    3691cc6967bd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6967c0:	ef                                              	out    dx,eax
    3691cc6967c1:	58                                              	pop    rax
    3691cc6967c2:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6967c8:	dd 58 69                                        	fstp   QWORD PTR [rax+0x69]
    3691cc6967cb:	cc                                              	int3
    3691cc6967cc:	91                                              	xchg   ecx,eax
    3691cc6967cd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6967d0:	9c                                              	pushf
    3691cc6967d1:	56                                              	push   rsi
    3691cc6967d2:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6967d8:	97                                              	xchg   edi,eax
    3691cc6967d9:	56                                              	push   rsi
    3691cc6967da:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6967e0:	8d 56 69                                        	lea    edx,[rsi+0x69]
    3691cc6967e3:	cc                                              	int3
    3691cc6967e4:	91                                              	xchg   ecx,eax
    3691cc6967e5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6967e8:	83 56 69 cc                                     	adc    DWORD PTR [rsi+0x69],0xffffffcc
    3691cc6967ec:	91                                              	xchg   ecx,eax
    3691cc6967ed:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6967f0:	78 56                                           	js     0x3691cc696848
    3691cc6967f2:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6967f8:	6e                                              	outs   dx,BYTE PTR ds:[rsi]
    3691cc6967f9:	56                                              	push   rsi
    3691cc6967fa:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696800:	63 56 69                                        	movsxd edx,DWORD PTR [rsi+0x69]
    3691cc696803:	cc                                              	int3
    3691cc696804:	91                                              	xchg   ecx,eax
    3691cc696805:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696808:	10 49 69                                        	adc    BYTE PTR [rcx+0x69],cl
    3691cc69680b:	cc                                              	int3
    3691cc69680c:	91                                              	xchg   ecx,eax
    3691cc69680d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696810:	05 49 69 cc 91                                  	add    eax,0x91cc6949
    3691cc696815:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696818:	fa                                              	cli
    3691cc696819:	48 69 cc 91 36 00 00                            	imul   rcx,rsp,0x3691
    3691cc696820:	ef                                              	out    dx,eax
    3691cc696821:	48 69 cc 91 36 00 00                            	imul   rcx,rsp,0x3691
    3691cc696828:	e4 48                                           	in     al,0x48
    3691cc69682a:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696830:	d9 48 69                                        	(bad) [rax+0x69]
    3691cc696833:	cc                                              	int3
    3691cc696834:	91                                              	xchg   ecx,eax
    3691cc696835:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696838:	ce                                              	(bad)
    3691cc696839:	48 69 cc 91 36 00 00                            	imul   rcx,rsp,0x3691
    3691cc696840:	d9 0f                                           	(bad) [rdi]
    3691cc696842:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696848:	7c 0f                                           	jl     0x3691cc696859
    3691cc69684a:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696850:	24 0f                                           	and    al,0xf
    3691cc696852:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696858:	d5 0e 69 cc 91 36 00 00                         	{rex2 0xe} imul r9,rsp,0x3691
    3691cc696860:	86 0e                                           	xchg   BYTE PTR [rsi],cl
    3691cc696862:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696868:	27                                              	(bad)
    3691cc696869:	0e                                              	(bad)
    3691cc69686a:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696870:	d8 0d 69 cc 91 36                               	fmul   DWORD PTR [rip+0x3691cc69]        # 0x369202fb34df
    3691cc696876:	00 00                                           	add    BYTE PTR [rax],al
    3691cc696878:	cd 0d                                           	int    0xd
    3691cc69687a:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696880:	d0 02                                           	rol    BYTE PTR [rdx],1
    3691cc696882:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696888:	c4 02 69 cc                                     	(bad)
    3691cc69688c:	91                                              	xchg   ecx,eax
    3691cc69688d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696890:	b5 02                                           	mov    ch,0x2
    3691cc696892:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc696898:	a9 02 69 cc 91                                  	test   eax,0x91cc6902
    3691cc69689d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6968a0:	9c                                              	pushf
    3691cc6968a1:	02 69 cc                                        	add    ch,BYTE PTR [rcx-0x34]
    3691cc6968a4:	91                                              	xchg   ecx,eax
    3691cc6968a5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6968a8:	8a 02                                           	mov    al,BYTE PTR [rdx]
    3691cc6968aa:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6968b0:	7d 02                                           	jge    0x3691cc6968b4
    3691cc6968b2:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6968b8:	ff 02                                           	inc    DWORD PTR [rdx]
    3691cc6968ba:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6968c0:	d3 00                                           	rol    DWORD PTR [rax],cl
    3691cc6968c2:	69 cc 91 36 00 00                               	imul   ecx,esp,0x3691
    3691cc6968c8:	2b f8                                           	sub    edi,eax
    3691cc6968ca:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc6968cf:	00 15 f8 68 cc 91                               	add    BYTE PTR [rip+0xffffffff91cc68f8],dl        # 0x36915e35d1cd
    3691cc6968d5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6968d8:	06                                              	(bad)
    3691cc6968d9:	f8                                              	clc
    3691cc6968da:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc6968df:	00 f6                                           	add    dh,dh
    3691cc6968e1:	f7 68 cc                                        	imul   DWORD PTR [rax-0x34]
    3691cc6968e4:	91                                              	xchg   ecx,eax
    3691cc6968e5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6968e8:	e0 f7                                           	loopne 0x3691cc6968e1
    3691cc6968ea:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc6968ef:	00 d0                                           	add    al,dl
    3691cc6968f1:	f7 68 cc                                        	imul   DWORD PTR [rax-0x34]
    3691cc6968f4:	91                                              	xchg   ecx,eax
    3691cc6968f5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6968f8:	35 f8 68 cc 91                                  	xor    eax,0x91cc68f8
    3691cc6968fd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696900:	76 f6                                           	jbe    0x3691cc6968f8
    3691cc696902:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc696907:	00 bc ed 68 cc 91 36                            	add    BYTE PTR [rbp+rbp*8+0x3691cc68],bh
    3691cc69690e:	00 00                                           	add    BYTE PTR [rax],al
    3691cc696910:	a6                                              	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
    3691cc696911:	ed                                              	in     eax,dx
    3691cc696912:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc696917:	00 97 ed 68 cc 91                               	add    BYTE PTR [rdi-0x6e339713],dl
    3691cc69691d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696920:	87 ed                                           	xchg   ebp,ebp
    3691cc696922:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc696927:	00 71 ed                                        	add    BYTE PTR [rcx-0x13],dh
    3691cc69692a:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc69692f:	00 61 ed                                        	add    BYTE PTR [rcx-0x13],ah
    3691cc696932:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc696937:	00 c6                                           	add    dh,al
    3691cc696939:	ed                                              	in     eax,dx
    3691cc69693a:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc69693f:	00 95 eb 68 cc 91                               	add    BYTE PTR [rbp-0x6e339715],dl
    3691cc696945:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696948:	dc e2                                           	fsubr  st(2),st
    3691cc69694a:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc69694f:	00 c7                                           	add    bh,al
    3691cc696951:	e2 68                                           	loop   0x3691cc6969bb
    3691cc696953:	cc                                              	int3
    3691cc696954:	91                                              	xchg   ecx,eax
    3691cc696955:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696958:	b8 e2 68 cc 91                                  	mov    eax,0x91cc68e2
    3691cc69695d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696960:	a9 e2 68 cc 91                                  	test   eax,0x91cc68e2
    3691cc696965:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696968:	94                                              	xchg   esp,eax
    3691cc696969:	e2 68                                           	loop   0x3691cc6969d3
    3691cc69696b:	cc                                              	int3
    3691cc69696c:	91                                              	xchg   ecx,eax
    3691cc69696d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696970:	85 e2                                           	test   edx,esp
    3691cc696972:	68 cc 91 36 00                                  	push   0x3691cc
    3691cc696977:	00 e6                                           	add    dh,ah
    3691cc696979:	e2 68                                           	loop   0x3691cc6969e3
    3691cc69697b:	cc                                              	int3
    3691cc69697c:	91                                              	xchg   ecx,eax
    3691cc69697d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc696980:	82                                              	(bad)
    3691cc696981:	00 00                                           	add    BYTE PTR [rax],al
    3691cc696983:	00 1c 00                                        	add    BYTE PTR [rax+rax*1],bl
    3691cc696986:	00 00                                           	add    BYTE PTR [rax],al
    3691cc696988:	f0 2b db                                        	lock sub ebx,ebx
    3691cc69698b:	03 05 c0 80 02 db                               	add    eax,DWORD PTR [rip+0xffffffffdb0280c0]        # 0x3691a76bea51
    3691cc696991:	03 05 3d db 03 05                               	add    eax,DWORD PTR [rip+0x503db3d]        # 0x3691d16d44d4
    3691cc696997:	dd 05 db 03 05 00                               	fld    QWORD PTR [rip+0x503db]        # 0x3691cc6e6d78
	...
