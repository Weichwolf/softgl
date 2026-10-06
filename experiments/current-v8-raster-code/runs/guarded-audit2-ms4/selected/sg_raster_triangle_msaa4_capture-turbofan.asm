
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_raster_triangle_msaa4_capture-turbofan.bin:     file format binary


Disassembly of section .data:

0000214fa4937cc0 <.data>:
    214fa4937cc0:	55                                              	push   rbp
    214fa4937cc1:	48 8b ec                                        	mov    rbp,rsp
    214fa4937cc4:	6a 30                                           	push   0x30
    214fa4937cc6:	56                                              	push   rsi
    214fa4937cc7:	48 81 ec 18 05 00 00                            	sub    rsp,0x518
    214fa4937cce:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa4937cd2:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    214fa4937cd6:	8b f9                                           	mov    edi,ecx
    214fa4937cd8:	4c 89 8d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r9
    214fa4937cdf:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    214fa4937ce3:	0f 86 04 a2 00 00                               	jbe    0x214fa4941eed
    214fa4937ce9:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    214fa4937ced:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    214fa4937cf1:	4d 0b de                                        	or     r11,r14
    214fa4937cf4:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    214fa4937cf8:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    214fa4937cff:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    214fa4937d03:	44 8b f8                                        	mov    r15d,eax
    214fa4937d06:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    214fa4937d0b:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    214fa4937d0f:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    214fa4937d16:	83 f9 04                                        	cmp    ecx,0x4
    214fa4937d19:	0f 84 26 00 00 00                               	je     0x214fa4937d45
    214fa4937d1f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa4937d23:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    214fa4937d27:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4937d2b:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    214fa4937d32:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    214fa4937d39:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    214fa4937d40:	e9 79 04 00 00                                  	jmp    0x214fa49381be
    214fa4937d45:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    214fa4937d4a:	85 f6                                           	test   esi,esi
    214fa4937d4c:	74 d1                                           	je     0x214fa4937d1f
    214fa4937d4e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    214fa4937d51:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    214fa4937d55:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    214fa4937d5a:	74 c3                                           	je     0x214fa4937d1f
    214fa4937d5c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    214fa4937d61:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    214fa4937d67:	74 b6                                           	je     0x214fa4937d1f
    214fa4937d69:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    214fa4937d71:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    214fa4937d7a:	75 a3                                           	jne    0x214fa4937d1f
    214fa4937d7c:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    214fa4937d81:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    214fa4937d88:	33 c9                                           	xor    ecx,ecx
    214fa4937d8a:	45 85 c9                                        	test   r9d,r9d
    214fa4937d8d:	0f 94 c1                                        	sete   cl
    214fa4937d90:	41 83 f9 02                                     	cmp    r9d,0x2
    214fa4937d94:	41 0f 94 c1                                     	sete   r9b
    214fa4937d98:	45 0f b6 c9                                     	movzx  r9d,r9b
    214fa4937d9c:	44 0b c9                                        	or     r9d,ecx
    214fa4937d9f:	0f 84 7a ff ff ff                               	je     0x214fa4937d1f
    214fa4937da5:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    214fa4937da9:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    214fa4937daf:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    214fa4937db5:	0f 87 64 ff ff ff                               	ja     0x214fa4937d1f
    214fa4937dbb:	8b cb                                           	mov    ecx,ebx
    214fa4937dbd:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    214fa4937dc4:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa4937dc8:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa4937dcd:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa4937dd2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4937dd6:	0f 82 43 ff ff ff                               	jb     0x214fa4937d1f
    214fa4937ddc:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4937de0:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    214fa4937de4:	0f 83 22 00 00 00                               	jae    0x214fa4937e0c
    214fa4937dea:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa4937dee:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    214fa4937df2:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    214fa4937df9:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    214fa4937e00:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    214fa4937e07:	e9 b2 03 00 00                                  	jmp    0x214fa49381be
    214fa4937e0c:	8b cf                                           	mov    ecx,edi
    214fa4937e0e:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    214fa4937e15:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    214fa4937e1a:	72 ce                                           	jb     0x214fa4937dea
    214fa4937e1c:	8b ca                                           	mov    ecx,edx
    214fa4937e1e:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    214fa4937e25:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    214fa4937e29:	72 bf                                           	jb     0x214fa4937dea
    214fa4937e2b:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    214fa4937e30:	72 b8                                           	jb     0x214fa4937dea
    214fa4937e32:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4937e36:	72 b2                                           	jb     0x214fa4937dea
    214fa4937e38:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    214fa4937e3b:	c1 f9 02                                        	sar    ecx,0x2
    214fa4937e3e:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    214fa4937e42:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    214fa4937e46:	41 c1 ff 02                                     	sar    r15d,0x2
    214fa4937e4a:	44 3b f9                                        	cmp    r15d,ecx
    214fa4937e4d:	0f 8c 58 03 00 00                               	jl     0x214fa49381ab
    214fa4937e53:	49 ba 50 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2850
    214fa4937e5d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    214fa4937e62:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    214fa4937e66:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    214fa4937e6c:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    214fa4937e71:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    214fa4937e76:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa4937e7a:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    214fa4937e7e:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    214fa4937e85:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    214fa4937e8c:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    214fa4937e93:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    214fa4937e98:	0f 87 05 00 00 00                               	ja     0x214fa4937ea3
    214fa4937e9e:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    214fa4937ea3:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    214fa4937ea7:	0f 87 05 00 00 00                               	ja     0x214fa4937eb2
    214fa4937ead:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    214fa4937eb2:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    214fa4937eb6:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    214fa4937eba:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4937ebe:	0f 87 04 00 00 00                               	ja     0x214fa4937ec8
    214fa4937ec4:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    214fa4937ec8:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa4937ecc:	0f 87 09 00 00 00                               	ja     0x214fa4937edb
    214fa4937ed2:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    214fa4937ed6:	e9 04 00 00 00                                  	jmp    0x214fa4937edf
    214fa4937edb:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    214fa4937edf:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    214fa4937ee3:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    214fa4937ee7:	c1 fa 02                                        	sar    edx,0x2
    214fa4937eea:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa4937eee:	41 c1 f9 02                                     	sar    r9d,0x2
    214fa4937ef2:	41 8b f9                                        	mov    edi,r9d
    214fa4937ef5:	44 3b ca                                        	cmp    r9d,edx
    214fa4937ef8:	0f 4c fa                                        	cmovl  edi,edx
    214fa4937efb:	8d 5e c4                                        	lea    ebx,[rsi-0x3c]
    214fa4937efe:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa4937f02:	83 ee 40                                        	sub    esi,0x40
    214fa4937f05:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    214fa4937f09:	45 33 db                                        	xor    r11d,r11d
    214fa4937f0c:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa4937f11:	41 0f 94 c3                                     	sete   r11b
    214fa4937f15:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa4937f19:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    214fa4937f20:	48 89 9d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rbx
    214fa4937f27:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    214fa4937f2b:	4c 89 9d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r11
    214fa4937f32:	48 c7 85 70 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x190],0x1
    214fa4937f3d:	45 33 e4                                        	xor    r12d,r12d
    214fa4937f40:	e9 44 00 00 00                                  	jmp    0x214fa4937f89
    214fa4937f45:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937f4e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937f57:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937f60:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937f69:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937f72:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937f7b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    214fa4937f80:	8b ca                                           	mov    ecx,edx
    214fa4937f82:	4c 89 9d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r11
    214fa4937f89:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4937f8e:	0f 85 c1 9f 00 00                               	jne    0x214fa4941f55
    214fa4937f94:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    214fa4937f98:	0f 8e 0c 00 00 00                               	jle    0x214fa4937faa
    214fa4937f9e:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    214fa4937fa5:	e9 a1 01 00 00                                  	jmp    0x214fa493814b
    214fa4937faa:	0f af d9                                        	imul   ebx,ecx
    214fa4937fad:	c1 e3 04                                        	shl    ebx,0x4
    214fa4937fb0:	03 de                                           	add    ebx,esi
    214fa4937fb2:	41 8b d1                                        	mov    edx,r9d
    214fa4937fb5:	e9 10 00 00 00                                  	jmp    0x214fa4937fca
    214fa4937fba:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    214fa4937fc0:	48 89 b5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rsi
    214fa4937fc7:	41 8b d3                                        	mov    edx,r11d
    214fa4937fca:	8b f2                                           	mov    esi,edx
    214fa4937fcc:	c1 e6 04                                        	shl    esi,0x4
    214fa4937fcf:	03 f3                                           	add    esi,ebx
    214fa4937fd1:	4d 8b 0c 30                                     	mov    r9,QWORD PTR [r8+rsi*1]
    214fa4937fd5:	49 83 3c 30 ff                                  	cmp    QWORD PTR [r8+rsi*1],0xffffffffffffffff
    214fa4937fda:	0f 85 7c 01 00 00                               	jne    0x214fa493815c
    214fa4937fe0:	c4 c1 7a 10 74 30 08                            	vmovss xmm6,DWORD PTR [r8+rsi*1+0x8]
    214fa4937fe7:	83 bd 18 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e8],0x0
    214fa4937fee:	0f 85 0f 00 00 00                               	jne    0x214fa4938003
    214fa4937ff4:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4937ff8:	0f 83 5e 01 00 00                               	jae    0x214fa493815c
    214fa4937ffe:	e9 0a 00 00 00                                  	jmp    0x214fa493800d
    214fa4938003:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4938007:	0f 87 4f 01 00 00                               	ja     0x214fa493815c
    214fa493800d:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    214fa4938013:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4938017:	41 0f 43 f4                                     	cmovae esi,r12d
    214fa493801b:	44 8d 4a 01                                     	lea    r9d,[rdx+0x1]
    214fa493801f:	3b d7                                           	cmp    edx,edi
    214fa4938021:	0f 84 11 01 00 00                               	je     0x214fa4938138
    214fa4938027:	41 8b d1                                        	mov    edx,r9d
    214fa493802a:	c1 e2 04                                        	shl    edx,0x4
    214fa493802d:	03 d3                                           	add    edx,ebx
    214fa493802f:	4d 8b 1c 10                                     	mov    r11,QWORD PTR [r8+rdx*1]
    214fa4938033:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    214fa4938038:	0f 85 1e 01 00 00                               	jne    0x214fa493815c
    214fa493803e:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    214fa4938045:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa493804a:	0f 84 0f 00 00 00                               	je     0x214fa493805f
    214fa4938050:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4938054:	0f 83 02 01 00 00                               	jae    0x214fa493815c
    214fa493805a:	e9 0a 00 00 00                                  	jmp    0x214fa4938069
    214fa493805f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4938063:	0f 87 f3 00 00 00                               	ja     0x214fa493815c
    214fa4938069:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493806d:	41 0f 43 f4                                     	cmovae esi,r12d
    214fa4938071:	45 8d 59 01                                     	lea    r11d,[r9+0x1]
    214fa4938075:	44 3b cf                                        	cmp    r9d,edi
    214fa4938078:	0f 84 ba 00 00 00                               	je     0x214fa4938138
    214fa493807e:	41 8b d3                                        	mov    edx,r11d
    214fa4938081:	c1 e2 04                                        	shl    edx,0x4
    214fa4938084:	03 d3                                           	add    edx,ebx
    214fa4938086:	4d 8b 0c 10                                     	mov    r9,QWORD PTR [r8+rdx*1]
    214fa493808a:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    214fa493808f:	0f 85 c7 00 00 00                               	jne    0x214fa493815c
    214fa4938095:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    214fa493809c:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa49380a1:	0f 84 0f 00 00 00                               	je     0x214fa49380b6
    214fa49380a7:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa49380ab:	0f 83 ab 00 00 00                               	jae    0x214fa493815c
    214fa49380b1:	e9 0a 00 00 00                                  	jmp    0x214fa49380c0
    214fa49380b6:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa49380ba:	0f 87 9c 00 00 00                               	ja     0x214fa493815c
    214fa49380c0:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa49380c4:	41 0f 43 f4                                     	cmovae esi,r12d
    214fa49380c8:	41 8d 53 01                                     	lea    edx,[r11+0x1]
    214fa49380cc:	44 3b df                                        	cmp    r11d,edi
    214fa49380cf:	0f 84 63 00 00 00                               	je     0x214fa4938138
    214fa49380d5:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa49380da:	0f 85 fd 9e 00 00                               	jne    0x214fa4941fdd
    214fa49380e0:	44 8b da                                        	mov    r11d,edx
    214fa49380e3:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa49380e7:	44 03 db                                        	add    r11d,ebx
    214fa49380ea:	4f 8b 0c 18                                     	mov    r9,QWORD PTR [r8+r11*1]
    214fa49380ee:	4b 83 3c 18 ff                                  	cmp    QWORD PTR [r8+r11*1],0xffffffffffffffff
    214fa49380f3:	0f 85 63 00 00 00                               	jne    0x214fa493815c
    214fa49380f9:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    214fa4938100:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa4938105:	0f 84 0f 00 00 00                               	je     0x214fa493811a
    214fa493810b:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493810f:	0f 83 47 00 00 00                               	jae    0x214fa493815c
    214fa4938115:	e9 0a 00 00 00                                  	jmp    0x214fa4938124
    214fa493811a:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493811e:	0f 87 38 00 00 00                               	ja     0x214fa493815c
    214fa4938124:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4938128:	41 0f 43 f4                                     	cmovae esi,r12d
    214fa493812c:	44 8d 5a 01                                     	lea    r11d,[rdx+0x1]
    214fa4938130:	3b fa                                           	cmp    edi,edx
    214fa4938132:	0f 85 88 fe ff ff                               	jne    0x214fa4937fc0
    214fa4938138:	44 8b de                                        	mov    r11d,esi
    214fa493813b:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4938142:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa4938145:	8b 9d e0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x220]
    214fa493814b:	8d 51 01                                        	lea    edx,[rcx+0x1]
    214fa493814e:	44 3b f9                                        	cmp    r15d,ecx
    214fa4938151:	0f 85 29 fe ff ff                               	jne    0x214fa4937f80
    214fa4938157:	e9 23 00 00 00                                  	jmp    0x214fa493817f
    214fa493815c:	8b 9d d0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x230]
    214fa4938162:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    214fa4938166:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    214fa493816a:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    214fa493816e:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    214fa4938174:	8b bd 68 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x198]
    214fa493817a:	e9 3f 00 00 00                                  	jmp    0x214fa49381be
    214fa493817f:	b8 02 00 00 00                                  	mov    eax,0x2
    214fa4938184:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    214fa4938189:	45 85 db                                        	test   r11d,r11d
    214fa493818c:	0f 45 f8                                        	cmovne edi,eax
    214fa493818f:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa4938193:	45 8d 83 a0 02 00 00                            	lea    r8d,[r11+0x2a0]
    214fa493819a:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    214fa493819e:	45 89 47 07                                     	mov    DWORD PTR [r15+0x7],r8d
    214fa49381a2:	8b c7                                           	mov    eax,edi
    214fa49381a4:	48 8b e5                                        	mov    rsp,rbp
    214fa49381a7:	5d                                              	pop    rbp
    214fa49381a8:	c2 40 00                                        	ret    0x40
    214fa49381ab:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    214fa49381b3:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    214fa49381b7:	b8 02 00 00 00                                  	mov    eax,0x2
    214fa49381bc:	eb e6                                           	jmp    0x214fa49381a4
    214fa49381be:	8b c3                                           	mov    eax,ebx
    214fa49381c0:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    214fa49381c7:	c4 c1 7a 10 74 00 14                            	vmovss xmm6,DWORD PTR [r8+rax*1+0x14]
    214fa49381ce:	8b f7                                           	mov    esi,edi
    214fa49381d0:	c4 41 7a 10 44 30 10                            	vmovss xmm8,DWORD PTR [r8+rsi*1+0x10]
    214fa49381d7:	44 8b ca                                        	mov    r9d,edx
    214fa49381da:	c4 01 7a 10 4c 08 10                            	vmovss xmm9,DWORD PTR [r8+r9*1+0x10]
    214fa49381e1:	c4 41 7a 10 54 30 14                            	vmovss xmm10,DWORD PTR [r8+rsi*1+0x14]
    214fa49381e8:	43 8b 8c 38 8c 00 00 00                         	mov    ecx,DWORD PTR [r8+r15*1+0x8c]
    214fa49381f0:	c4 01 7a 10 5c 08 14                            	vmovss xmm11,DWORD PTR [r8+r9*1+0x14]
    214fa49381f7:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    214fa49381fd:	c4 41 79 6e e2                                  	vmovd  xmm12,r10d
    214fa4938202:	c4 41 22 59 dc                                  	vmulss xmm11,xmm11,xmm12
    214fa4938207:	4c 8b 15 47 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc47]        # 0x214fa4937e55
    214fa493820e:	c4 41 20 54 2a                                  	vandps xmm13,xmm11,XMMWORD PTR [r10]
    214fa4938213:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa4938217:	48 89 85 50 fd ff ff                            	mov    QWORD PTR [rbp-0x2b0],rax
    214fa493821e:	48 89 b5 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],rsi
    214fa4938225:	4c 89 8d 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],r9
    214fa493822c:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    214fa4938233:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    214fa4938239:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    214fa493823e:	c4 41 78 2e f5                                  	vucomiss xmm14,xmm13
    214fa4938243:	0f 87 0b 00 00 00                               	ja     0x214fa4938254
    214fa4938249:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    214fa493824f:	e9 21 00 00 00                                  	jmp    0x214fa4938275
    214fa4938254:	c4 43 21 0a db 0b                               	vroundss xmm11,xmm11,xmm11,0xb
    214fa493825a:	c4 41 7a 2c db                                  	vcvttss2si r11d,xmm11
    214fa493825f:	c4 41 02 2a eb                                  	vcvtsi2ss xmm13,xmm15,r11d
    214fa4938264:	c4 41 78 2e dd                                  	vucomiss xmm11,xmm13
    214fa4938269:	0f 8a 29 a1 00 00                               	jp     0x214fa4942398
    214fa493826f:	0f 85 23 a1 00 00                               	jne    0x214fa4942398
    214fa4938275:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    214fa493827c:	48 c7 c0 a0 ff ff ff                            	mov    rax,0xffffffffffffffa0
    214fa4938283:	85 c9                                           	test   ecx,ecx
    214fa4938285:	48 0f 45 f0                                     	cmovne rsi,rax
    214fa4938289:	c4 41 2a 59 d4                                  	vmulss xmm10,xmm10,xmm12
    214fa493828e:	4c 8b 15 c0 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbc0]        # 0x214fa4937e55
    214fa4938295:	c4 41 28 54 1a                                  	vandps xmm11,xmm10,XMMWORD PTR [r10]
    214fa493829a:	4c 89 9d f8 fa ff ff                            	mov    QWORD PTR [rbp-0x508],r11
    214fa49382a1:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    214fa49382a5:	c4 41 78 2e f3                                  	vucomiss xmm14,xmm11
    214fa49382aa:	0f 87 0a 00 00 00                               	ja     0x214fa49382ba
    214fa49382b0:	b8 00 00 00 80                                  	mov    eax,0x80000000
    214fa49382b5:	e9 20 00 00 00                                  	jmp    0x214fa49382da
    214fa49382ba:	c4 43 29 0a d2 0b                               	vroundss xmm10,xmm10,xmm10,0xb
    214fa49382c0:	c4 c1 7a 2c c2                                  	vcvttss2si eax,xmm10
    214fa49382c5:	c5 02 2a d8                                     	vcvtsi2ss xmm11,xmm15,eax
    214fa49382c9:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    214fa49382ce:	0f 8a bf a0 00 00                               	jp     0x214fa4942393
    214fa49382d4:	0f 85 b9 a0 00 00                               	jne    0x214fa4942393
    214fa49382da:	44 8b c8                                        	mov    r9d,eax
    214fa49382dd:	45 2b cb                                        	sub    r9d,r11d
    214fa49382e0:	49 63 d1                                        	movsxd rdx,r9d
    214fa49382e3:	c4 41 32 59 cc                                  	vmulss xmm9,xmm9,xmm12
    214fa49382e8:	4c 8b 15 66 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb66]        # 0x214fa4937e55
    214fa49382ef:	c4 41 30 54 12                                  	vandps xmm10,xmm9,XMMWORD PTR [r10]
    214fa49382f4:	48 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],rax
    214fa49382fb:	4c 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r9
    214fa4938302:	48 89 95 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdx
    214fa4938309:	c4 41 78 2e f2                                  	vucomiss xmm14,xmm10
    214fa493830e:	0f 87 10 00 00 00                               	ja     0x214fa4938324
    214fa4938314:	48 c7 85 38 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x1c8],0xffffffff80000000
    214fa493831f:	e9 28 00 00 00                                  	jmp    0x214fa493834c
    214fa4938324:	c4 43 31 0a c9 0b                               	vroundss xmm9,xmm9,xmm9,0xb
    214fa493832a:	c4 41 7a 2c c9                                  	vcvttss2si r9d,xmm9
    214fa493832f:	c4 41 02 2a d1                                  	vcvtsi2ss xmm10,xmm15,r9d
    214fa4938334:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    214fa4938339:	0f 8a 4f a0 00 00                               	jp     0x214fa494238e
    214fa493833f:	0f 85 49 a0 00 00                               	jne    0x214fa494238e
    214fa4938345:	4c 89 8d 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r9
    214fa493834c:	41 b9 05 00 00 00                               	mov    r9d,0x5
    214fa4938352:	bf 07 00 00 00                                  	mov    edi,0x7
    214fa4938357:	85 c9                                           	test   ecx,ecx
    214fa4938359:	49 0f 45 f9                                     	cmovne rdi,r9
    214fa493835d:	4c 8b ca                                        	mov    r9,rdx
    214fa4938360:	4c 0f af ce                                     	imul   r9,rsi
    214fa4938364:	c4 41 3a 59 c4                                  	vmulss xmm8,xmm8,xmm12
    214fa4938369:	4c 8b 15 e5 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffae5]        # 0x214fa4937e55
    214fa4938370:	c4 41 38 54 0a                                  	vandps xmm9,xmm8,XMMWORD PTR [r10]
    214fa4938375:	c4 41 78 2e f1                                  	vucomiss xmm14,xmm9
    214fa493837a:	0f 87 10 00 00 00                               	ja     0x214fa4938390
    214fa4938380:	48 c7 85 c8 fd ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x238],0xffffffff80000000
    214fa493838b:	e9 27 00 00 00                                  	jmp    0x214fa49383b7
    214fa4938390:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    214fa4938396:	c4 c1 7a 2c d8                                  	vcvttss2si ebx,xmm8
    214fa493839b:	c5 02 2a cb                                     	vcvtsi2ss xmm9,xmm15,ebx
    214fa493839f:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    214fa49383a4:	0f 8a df 9f 00 00                               	jp     0x214fa4942389
    214fa49383aa:	0f 85 d9 9f 00 00                               	jne    0x214fa4942389
    214fa49383b0:	48 89 9d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],rbx
    214fa49383b7:	8b 9d c8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x238]
    214fa49383bd:	2b 9d 38 fe ff ff                               	sub    ebx,DWORD PTR [rbp-0x1c8]
    214fa49383c3:	48 63 db                                        	movsxd rbx,ebx
    214fa49383c6:	8b ff                                           	mov    edi,edi
    214fa49383c8:	83 e7 3f                                        	and    edi,0x3f
    214fa49383cb:	4c 8b fb                                        	mov    r15,rbx
    214fa49383ce:	8b cf                                           	mov    ecx,edi
    214fa49383d0:	49 d3 e7                                        	shl    r15,cl
    214fa49383d3:	4d 03 f9                                        	add    r15,r9
    214fa49383d6:	4f 89 bc 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],r15
    214fa49383de:	41 bb 80 00 00 00                               	mov    r11d,0x80
    214fa49383e4:	41 b9 60 00 00 00                               	mov    r9d,0x60
    214fa49383ea:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa49383f1:	4d 0f 45 d9                                     	cmovne r11,r9
    214fa49383f5:	4d 8b cb                                        	mov    r9,r11
    214fa49383f8:	4c 0f af cb                                     	imul   r9,rbx
    214fa49383fc:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    214fa4938403:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    214fa493840a:	48 c7 c7 20 ff ff ff                            	mov    rdi,0xffffffffffffff20
    214fa4938411:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa4938418:	48 0f 45 f7                                     	cmovne rsi,rdi
    214fa493841c:	48 8b fe                                        	mov    rdi,rsi
    214fa493841f:	48 0f af fa                                     	imul   rdi,rdx
    214fa4938423:	49 03 f9                                        	add    rdi,r9
    214fa4938426:	4b 89 bc 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],rdi
    214fa493842e:	b8 80 00 00 00                                  	mov    eax,0x80
    214fa4938433:	41 b9 a0 00 00 00                               	mov    r9d,0xa0
    214fa4938439:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa4938440:	49 0f 45 c1                                     	cmovne rax,r9
    214fa4938444:	4c 8b c8                                        	mov    r9,rax
    214fa4938447:	4c 0f af cb                                     	imul   r9,rbx
    214fa493844b:	48 89 b5 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rsi
    214fa4938452:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    214fa4938459:	48 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rax
    214fa4938460:	48 c7 c0 e0 ff ff ff                            	mov    rax,0xffffffffffffffe0
    214fa4938467:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa493846e:	48 0f 45 f0                                     	cmovne rsi,rax
    214fa4938472:	48 8b c6                                        	mov    rax,rsi
    214fa4938475:	48 0f af c2                                     	imul   rax,rdx
    214fa4938479:	49 03 c1                                        	add    rax,r9
    214fa493847c:	4b 89 84 20 10 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x110],rax
    214fa4938484:	4d 8b cf                                        	mov    r9,r15
    214fa4938487:	4c 3b ff                                        	cmp    r15,rdi
    214fa493848a:	4c 0f 4c cf                                     	cmovl  r9,rdi
    214fa493848e:	48 89 b5 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rsi
    214fa4938495:	be e0 00 00 00                                  	mov    esi,0xe0
    214fa493849a:	b9 80 00 00 00                                  	mov    ecx,0x80
    214fa493849f:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa49384a6:	48 0f 45 ce                                     	cmovne rcx,rsi
    214fa49384aa:	48 8b f1                                        	mov    rsi,rcx
    214fa49384ad:	48 0f af f3                                     	imul   rsi,rbx
    214fa49384b1:	48 89 5d c0                                     	mov    QWORD PTR [rbp-0x40],rbx
    214fa49384b5:	4c 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r11
    214fa49384bc:	49 c7 c3 80 ff ff ff                            	mov    r11,0xffffffffffffff80
    214fa49384c3:	48 c7 c3 60 ff ff ff                            	mov    rbx,0xffffffffffffff60
    214fa49384ca:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa49384d1:	4c 0f 45 db                                     	cmovne r11,rbx
    214fa49384d5:	49 8b db                                        	mov    rbx,r11
    214fa49384d8:	48 0f af da                                     	imul   rbx,rdx
    214fa49384dc:	48 03 de                                        	add    rbx,rsi
    214fa49384df:	4b 89 9c 20 28 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x128],rbx
    214fa49384e7:	49 8b f7                                        	mov    rsi,r15
    214fa49384ea:	49 3b ff                                        	cmp    rdi,r15
    214fa49384ed:	48 0f 4c f7                                     	cmovl  rsi,rdi
    214fa49384f1:	48 8b fe                                        	mov    rdi,rsi
    214fa49384f4:	48 3b c6                                        	cmp    rax,rsi
    214fa49384f7:	48 0f 4c f8                                     	cmovl  rdi,rax
    214fa49384fb:	4d 8b f9                                        	mov    r15,r9
    214fa49384fe:	4c 3b c8                                        	cmp    r9,rax
    214fa4938501:	4c 0f 4c f8                                     	cmovl  r15,rax
    214fa4938505:	33 c0                                           	xor    eax,eax
    214fa4938507:	4c 3b fb                                        	cmp    r15,rbx
    214fa493850a:	0f 9c c0                                        	setl   al
    214fa493850d:	33 f6                                           	xor    esi,esi
    214fa493850f:	48 3b df                                        	cmp    rbx,rdi
    214fa4938512:	40 0f 9c c6                                     	setl   sil
    214fa4938516:	c4 c1 4a 59 f4                                  	vmulss xmm6,xmm6,xmm12
    214fa493851b:	4c 8b 15 33 f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff933]        # 0x214fa4937e55
    214fa4938522:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    214fa4938527:	48 89 8d 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rcx
    214fa493852e:	48 89 9d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rbx
    214fa4938535:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    214fa493853c:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    214fa4938543:	48 89 85 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rax
    214fa493854a:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    214fa4938551:	c4 41 78 2e f0                                  	vucomiss xmm14,xmm8
    214fa4938556:	0f 87 0b 00 00 00                               	ja     0x214fa4938567
    214fa493855c:	41 b9 00 00 00 80                               	mov    r9d,0x80000000
    214fa4938562:	e9 20 00 00 00                                  	jmp    0x214fa4938587
    214fa4938567:	c4 e3 49 0a f6 0b                               	vroundss xmm6,xmm6,xmm6,0xb
    214fa493856d:	c5 7a 2c ce                                     	vcvttss2si r9d,xmm6
    214fa4938571:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    214fa4938576:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    214fa493857b:	0f 8a 03 9e 00 00                               	jp     0x214fa4942384
    214fa4938581:	0f 85 fd 9d 00 00                               	jne    0x214fa4942384
    214fa4938587:	8b bd f8 fa ff ff                               	mov    edi,DWORD PTR [rbp-0x508]
    214fa493858d:	41 2b f9                                        	sub    edi,r9d
    214fa4938590:	48 63 f7                                        	movsxd rsi,edi
    214fa4938593:	48 89 bd 80 fb ff ff                            	mov    QWORD PTR [rbp-0x480],rdi
    214fa493859a:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa493859e:	48 0f af fe                                     	imul   rdi,rsi
    214fa49385a2:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    214fa49385a7:	4c 8b 15 a7 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a7]        # 0x214fa4937e55
    214fa49385ae:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    214fa49385b3:	4c 89 8d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r9
    214fa49385ba:	48 89 b5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rsi
    214fa49385c1:	c5 78 2e f6                                     	vucomiss xmm14,xmm6
    214fa49385c5:	0f 87 10 00 00 00                               	ja     0x214fa49385db
    214fa49385cb:	48 c7 85 70 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x190],0xffffffff80000000
    214fa49385d6:	e9 26 00 00 00                                  	jmp    0x214fa4938601
    214fa49385db:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    214fa49385e1:	c5 7a 2c fd                                     	vcvttss2si r15d,xmm5
    214fa49385e5:	c4 c1 02 2a f7                                  	vcvtsi2ss xmm6,xmm15,r15d
    214fa49385ea:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa49385ee:	0f 8a 8b 9d 00 00                               	jp     0x214fa494237f
    214fa49385f4:	0f 85 85 9d 00 00                               	jne    0x214fa494237f
    214fa49385fa:	4c 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r15
    214fa4938601:	44 8b bd 38 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c8]
    214fa4938608:	44 2b bd 70 fe ff ff                            	sub    r15d,DWORD PTR [rbp-0x190]
    214fa493860f:	4d 63 ff                                        	movsxd r15,r15d
    214fa4938612:	49 8b c7                                        	mov    rax,r15
    214fa4938615:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    214fa493861b:	48 d3 e0                                        	shl    rax,cl
    214fa493861e:	48 03 f8                                        	add    rdi,rax
    214fa4938621:	4b 89 bc 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rdi
    214fa4938629:	49 8b c7                                        	mov    rax,r15
    214fa493862c:	48 0f af 85 78 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x188]
    214fa4938634:	48 8b ce                                        	mov    rcx,rsi
    214fa4938637:	48 0f af 8d d8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x228]
    214fa493863f:	48 03 c1                                        	add    rax,rcx
    214fa4938642:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    214fa493864a:	49 8b cf                                        	mov    rcx,r15
    214fa493864d:	48 0f af 8d a0 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x260]
    214fa4938655:	48 8b de                                        	mov    rbx,rsi
    214fa4938658:	48 0f af 9d 48 fd ff ff                         	imul   rbx,QWORD PTR [rbp-0x2b8]
    214fa4938660:	48 03 d9                                        	add    rbx,rcx
    214fa4938663:	4b 89 9c 20 08 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x108],rbx
    214fa493866b:	49 8b cf                                        	mov    rcx,r15
    214fa493866e:	48 0f af 8d 70 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x290]
    214fa4938676:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    214fa493867d:	4c 8b fe                                        	mov    r15,rsi
    214fa4938680:	4d 0f af fb                                     	imul   r15,r11
    214fa4938684:	4c 03 f9                                        	add    r15,rcx
    214fa4938687:	4f 89 bc 20 20 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x120],r15
    214fa493868f:	48 8b cf                                        	mov    rcx,rdi
    214fa4938692:	48 3b f8                                        	cmp    rdi,rax
    214fa4938695:	48 0f 4c c8                                     	cmovl  rcx,rax
    214fa4938699:	4c 8b c9                                        	mov    r9,rcx
    214fa493869c:	48 3b cb                                        	cmp    rcx,rbx
    214fa493869f:	4c 0f 4c cb                                     	cmovl  r9,rbx
    214fa49386a3:	33 c9                                           	xor    ecx,ecx
    214fa49386a5:	4d 3b cf                                        	cmp    r9,r15
    214fa49386a8:	0f 9c c1                                        	setl   cl
    214fa49386ab:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    214fa49386b2:	4c 8b cf                                        	mov    r9,rdi
    214fa49386b5:	48 3b c7                                        	cmp    rax,rdi
    214fa49386b8:	4c 0f 4c c8                                     	cmovl  r9,rax
    214fa49386bc:	49 8b f9                                        	mov    rdi,r9
    214fa49386bf:	49 3b d9                                        	cmp    rbx,r9
    214fa49386c2:	48 0f 4c fb                                     	cmovl  rdi,rbx
    214fa49386c6:	33 c0                                           	xor    eax,eax
    214fa49386c8:	4c 3b ff                                        	cmp    r15,rdi
    214fa49386cb:	0f 9c c0                                        	setl   al
    214fa49386ce:	44 8b 8d 18 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1e8]
    214fa49386d5:	44 2b 8d c8 fc ff ff                            	sub    r9d,DWORD PTR [rbp-0x338]
    214fa49386dc:	49 63 d9                                        	movsxd rbx,r9d
    214fa49386df:	4c 89 8d b8 fb ff ff                            	mov    QWORD PTR [rbp-0x448],r9
    214fa49386e6:	4c 8b 4d b8                                     	mov    r9,QWORD PTR [rbp-0x48]
    214fa49386ea:	4c 0f af cb                                     	imul   r9,rbx
    214fa49386ee:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    214fa49386f5:	8b bd 70 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x190]
    214fa49386fb:	2b bd c8 fd ff ff                               	sub    edi,DWORD PTR [rbp-0x238]
    214fa4938701:	48 63 ff                                        	movsxd rdi,edi
    214fa4938704:	48 89 85 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rax
    214fa493870b:	48 8b c7                                        	mov    rax,rdi
    214fa493870e:	48 89 8d 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],rcx
    214fa4938715:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    214fa493871b:	48 d3 e0                                        	shl    rax,cl
    214fa493871e:	49 03 c1                                        	add    rax,r9
    214fa4938721:	4b 89 84 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],rax
    214fa4938729:	48 8b 8d 78 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x188]
    214fa4938730:	48 0f af cf                                     	imul   rcx,rdi
    214fa4938734:	4c 8b 8d d8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x228]
    214fa493873b:	4c 0f af cb                                     	imul   r9,rbx
    214fa493873f:	49 03 c9                                        	add    rcx,r9
    214fa4938742:	4b 89 8c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rcx
    214fa493874a:	4c 8b 8d a0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x260]
    214fa4938751:	4c 0f af cf                                     	imul   r9,rdi
    214fa4938755:	4c 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r15
    214fa493875c:	4c 8b bd 48 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2b8]
    214fa4938763:	4c 0f af fb                                     	imul   r15,rbx
    214fa4938767:	4d 03 f9                                        	add    r15,r9
    214fa493876a:	4f 89 bc 20 00 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x100],r15
    214fa4938772:	4c 8b 8d 70 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x290]
    214fa4938779:	4c 0f af cf                                     	imul   r9,rdi
    214fa493877d:	4c 0f af db                                     	imul   r11,rbx
    214fa4938781:	4d 03 d9                                        	add    r11,r9
    214fa4938784:	4f 89 9c 20 18 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x118],r11
    214fa493878c:	4c 8b c8                                        	mov    r9,rax
    214fa493878f:	48 3b c1                                        	cmp    rax,rcx
    214fa4938792:	4c 0f 4c c9                                     	cmovl  r9,rcx
    214fa4938796:	4d 8b c1                                        	mov    r8,r9
    214fa4938799:	4d 3b cf                                        	cmp    r9,r15
    214fa493879c:	4d 0f 4c c7                                     	cmovl  r8,r15
    214fa49387a0:	45 33 c9                                        	xor    r9d,r9d
    214fa49387a3:	4d 3b c3                                        	cmp    r8,r11
    214fa49387a6:	41 0f 9c c1                                     	setl   r9b
    214fa49387aa:	4c 8b e0                                        	mov    r12,rax
    214fa49387ad:	48 3b c8                                        	cmp    rcx,rax
    214fa49387b0:	4c 0f 4c e1                                     	cmovl  r12,rcx
    214fa49387b4:	49 8b c4                                        	mov    rax,r12
    214fa49387b7:	4d 3b fc                                        	cmp    r15,r12
    214fa49387ba:	49 0f 4c c7                                     	cmovl  rax,r15
    214fa49387be:	45 33 e4                                        	xor    r12d,r12d
    214fa49387c1:	4c 3b d8                                        	cmp    r11,rax
    214fa49387c4:	41 0f 9c c4                                     	setl   r12b
    214fa49387c8:	4c 63 bd 38 fe ff ff                            	movsxd r15,DWORD PTR [rbp-0x1c8]
    214fa49387cf:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    214fa49387d2:	4c 89 a5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r12
    214fa49387d9:	4c 63 e1                                        	movsxd r12,ecx
    214fa49387dc:	49 c1 e4 08                                     	shl    r12,0x8
    214fa49387e0:	4d 2b fc                                        	sub    r15,r12
    214fa49387e3:	4c 0f af fa                                     	imul   r15,rdx
    214fa49387e7:	48 63 4d 18                                     	movsxd rcx,DWORD PTR [rbp+0x18]
    214fa49387eb:	48 c1 e1 08                                     	shl    rcx,0x8
    214fa49387ef:	48 63 95 f8 fa ff ff                            	movsxd rdx,DWORD PTR [rbp-0x508]
    214fa49387f6:	48 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rax
    214fa49387fd:	48 8b c1                                        	mov    rax,rcx
    214fa4938800:	48 2b c2                                        	sub    rax,rdx
    214fa4938803:	48 0f af 45 c0                                  	imul   rax,QWORD PTR [rbp-0x40]
    214fa4938808:	48 63 95 70 fe ff ff                            	movsxd rdx,DWORD PTR [rbp-0x190]
    214fa493880f:	49 2b d4                                        	sub    rdx,r12
    214fa4938812:	48 0f af d6                                     	imul   rdx,rsi
    214fa4938816:	48 63 b5 18 fe ff ff                            	movsxd rsi,DWORD PTR [rbp-0x1e8]
    214fa493881d:	4c 89 85 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r8
    214fa4938824:	4c 8b c1                                        	mov    r8,rcx
    214fa4938827:	4c 2b c6                                        	sub    r8,rsi
    214fa493882a:	4c 0f af 85 30 fe ff ff                         	imul   r8,QWORD PTR [rbp-0x1d0]
    214fa4938832:	48 63 b5 c8 fd ff ff                            	movsxd rsi,DWORD PTR [rbp-0x238]
    214fa4938839:	49 2b f4                                        	sub    rsi,r12
    214fa493883c:	48 0f af f3                                     	imul   rsi,rbx
    214fa4938840:	4c 63 a5 c8 fc ff ff                            	movsxd r12,DWORD PTR [rbp-0x338]
    214fa4938847:	49 2b cc                                        	sub    rcx,r12
    214fa493884a:	48 0f af cf                                     	imul   rcx,rdi
    214fa493884e:	4c 8b e7                                        	mov    r12,rdi
    214fa4938851:	49 c1 fc 3f                                     	sar    r12,0x3f
    214fa4938855:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    214fa4938859:	49 33 fc                                        	xor    rdi,r12
    214fa493885c:	49 2b fc                                        	sub    rdi,r12
    214fa493885f:	4c 8b e3                                        	mov    r12,rbx
    214fa4938862:	49 c1 fc 3f                                     	sar    r12,0x3f
    214fa4938866:	48 89 9d 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rbx
    214fa493886d:	49 33 dc                                        	xor    rbx,r12
    214fa4938870:	49 2b dc                                        	sub    rbx,r12
    214fa4938873:	48 03 fb                                        	add    rdi,rbx
    214fa4938876:	48 81 ff ff ff 7f 00                            	cmp    rdi,0x7fffff
    214fa493887d:	0f 86 09 00 00 00                               	jbe    0x214fa493888c
    214fa4938883:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    214fa4938887:	e9 1a 00 00 00                                  	jmp    0x214fa49388a6
    214fa493888c:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa4938890:	41 bc ff ff ff 7f                               	mov    r12d,0x7fffffff
    214fa4938896:	4c 2b e7                                        	sub    r12,rdi
    214fa4938899:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    214fa493889d:	49 3b fc                                        	cmp    rdi,r12
    214fa49388a0:	0f 8e 0b 00 00 00                               	jle    0x214fa49388b1
    214fa49388a6:	41 bc 01 00 00 00                               	mov    r12d,0x1
    214fa49388ac:	e9 03 00 00 00                                  	jmp    0x214fa49388b4
    214fa49388b1:	45 33 e4                                        	xor    r12d,r12d
    214fa49388b4:	4c 03 c2                                        	add    r8,rdx
    214fa49388b7:	4c 03 f8                                        	add    r15,rax
    214fa49388ba:	48 8b 85 88 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x278]
    214fa49388c1:	83 bd 30 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2d0],0x0
    214fa49388c8:	48 0f 45 85 e0 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x220]
    214fa49388d0:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    214fa49388d7:	83 bd 60 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1a0],0x0
    214fa49388de:	48 0f 45 9d e0 fd ff ff                         	cmovne rbx,QWORD PTR [rbp-0x220]
    214fa49388e6:	48 8b 95 b8 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x248]
    214fa49388ed:	83 bd 78 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x288],0x0
    214fa49388f4:	48 0f 45 95 38 fd ff ff                         	cmovne rdx,QWORD PTR [rbp-0x2c8]
    214fa49388fc:	48 89 85 e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rax
    214fa4938903:	48 8b 85 f0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x210]
    214fa493890a:	83 bd 10 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f0],0x0
    214fa4938911:	48 0f 45 85 38 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x2c8]
    214fa4938919:	48 89 9d 50 fb ff ff                            	mov    QWORD PTR [rbp-0x4b0],rbx
    214fa4938920:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    214fa4938927:	45 85 c9                                        	test   r9d,r9d
    214fa493892a:	49 0f 45 db                                     	cmovne rbx,r11
    214fa493892e:	4c 8b 8d d8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x228]
    214fa4938935:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    214fa493893c:	4d 0f 45 cb                                     	cmovne r9,r11
    214fa4938940:	4c 8d 1c 31                                     	lea    r11,[rcx+rsi*1]
    214fa4938944:	48 8b b5 40 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2c0]
    214fa493894b:	48 f7 de                                        	neg    rsi
    214fa493894e:	48 8b 8d b0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x250]
    214fa4938955:	48 f7 d9                                        	neg    rcx
    214fa4938958:	48 89 b5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rsi
    214fa493895f:	48 8b b5 80 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x280]
    214fa4938966:	48 f7 de                                        	neg    rsi
    214fa4938969:	c4 e1 82 2a ef                                  	vcvtsi2ss xmm5,xmm15,rdi
    214fa493896e:	48 89 b5 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rsi
    214fa4938975:	48 8b b5 30 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1d0]
    214fa493897c:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa4938980:	4c 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],r15
    214fa4938987:	4c 8b bd 30 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1d0]
    214fa493898e:	4c 33 fe                                        	xor    r15,rsi
    214fa4938991:	4c 2b fe                                        	sub    r15,rsi
    214fa4938994:	48 8b b5 b0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x250]
    214fa493899b:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa493899f:	48 89 95 30 fb ff ff                            	mov    QWORD PTR [rbp-0x4d0],rdx
    214fa49389a6:	48 8b 95 b0 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x250]
    214fa49389ad:	48 33 d6                                        	xor    rdx,rsi
    214fa49389b0:	48 2b d6                                        	sub    rdx,rsi
    214fa49389b3:	4c 03 fa                                        	add    r15,rdx
    214fa49389b6:	48 89 85 88 fb ff ff                            	mov    QWORD PTR [rbp-0x478],rax
    214fa49389bd:	48 89 9d d8 fa ff ff                            	mov    QWORD PTR [rbp-0x528],rbx
    214fa49389c4:	4c 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r9
    214fa49389cb:	4c 89 9d d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],r11
    214fa49389d2:	48 89 8d 58 fb ff ff                            	mov    QWORD PTR [rbp-0x4a8],rcx
    214fa49389d9:	49 81 ff ff ff 7f 00                            	cmp    r15,0x7fffff
    214fa49389e0:	0f 87 15 00 00 00                               	ja     0x214fa49389fb
    214fa49389e6:	49 c1 e7 08                                     	shl    r15,0x8
    214fa49389ea:	ba ff ff ff 7f                                  	mov    edx,0x7fffffff
    214fa49389ef:	49 2b d7                                        	sub    rdx,r15
    214fa49389f2:	48 3b fa                                        	cmp    rdi,rdx
    214fa49389f5:	0f 8e 1b 00 00 00                               	jle    0x214fa4938a16
    214fa49389fb:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa49389ff:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa4938a04:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa4938a09:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    214fa4938a0d:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    214fa4938a11:	e9 61 04 00 00                                  	jmp    0x214fa4938e77
    214fa4938a16:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa4938a1a:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa4938a1f:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa4938a24:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    214fa4938a28:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    214fa4938a2c:	45 85 e4                                        	test   r12d,r12d
    214fa4938a2f:	0f 85 42 04 00 00                               	jne    0x214fa4938e77
    214fa4938a35:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4938a38:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa4938a3c:	45 8b bc 3c d8 00 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0xd8]
    214fa4938a44:	c4 c1 79 6e f7                                  	vmovd  xmm6,r15d
    214fa4938a49:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa4938a4e:	41 8b 94 3c f0 00 00 00                         	mov    edx,DWORD PTR [r12+rdi*1+0xf0]
    214fa4938a56:	c4 e3 49 22 f2 01                               	vpinsrd xmm6,xmm6,edx,0x1
    214fa4938a5c:	41 8b b4 3c 08 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x108]
    214fa4938a64:	c4 e3 49 22 f6 02                               	vpinsrd xmm6,xmm6,esi,0x2
    214fa4938a6a:	48 89 b5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rsi
    214fa4938a71:	41 8b b4 3c 20 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x120]
    214fa4938a79:	c4 e3 49 22 f6 03                               	vpinsrd xmm6,xmm6,esi,0x3
    214fa4938a7f:	48 89 b5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rsi
    214fa4938a86:	41 8b b4 3c d0 00 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0xd0]
    214fa4938a8e:	c5 79 6e c6                                     	vmovd  xmm8,esi
    214fa4938a92:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4938a97:	48 89 95 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rdx
    214fa4938a9e:	41 8b 94 3c e8 00 00 00                         	mov    edx,DWORD PTR [r12+rdi*1+0xe8]
    214fa4938aa6:	c4 63 39 22 c2 01                               	vpinsrd xmm8,xmm8,edx,0x1
    214fa4938aac:	4c 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r15
    214fa4938ab3:	45 8b bc 3c 00 01 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0x100]
    214fa4938abb:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    214fa4938ac1:	41 8b 8c 3c 18 01 00 00                         	mov    ecx,DWORD PTR [r12+rdi*1+0x118]
    214fa4938ac9:	c4 63 39 22 c1 03                               	vpinsrd xmm8,xmm8,ecx,0x3
    214fa4938acf:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    214fa4938ad2:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    214fa4938ad5:	81 ff 01 00 01 00                               	cmp    edi,0x10001
    214fa4938adb:	0f 8d 87 03 00 00                               	jge    0x214fa4938e68
    214fa4938ae1:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    214fa4938ae8:	8b 7d 40                                        	mov    edi,DWORD PTR [rbp+0x40]
    214fa4938aeb:	c5 79 6e cf                                     	vmovd  xmm9,edi
    214fa4938aef:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa4938af4:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    214fa4938af8:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    214fa4938afd:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4938b02:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    214fa4938b05:	2b 7d 18                                        	sub    edi,DWORD PTR [rbp+0x18]
    214fa4938b08:	4c 89 85 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r8
    214fa4938b0f:	81 ff 00 00 01 00                               	cmp    edi,0x10000
    214fa4938b15:	0f 8f 22 03 00 00                               	jg     0x214fa4938e3d
    214fa4938b1b:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    214fa4938b22:	4d 8b c3                                        	mov    r8,r11
    214fa4938b25:	4c 03 c7                                        	add    r8,rdi
    214fa4938b28:	48 b8 00 00 00 00 ff ff ff ff                   	movabs rax,0xffffffff00000000
    214fa4938b32:	4c 3b c0                                        	cmp    r8,rax
    214fa4938b35:	0f 82 02 03 00 00                               	jb     0x214fa4938e3d
    214fa4938b3b:	4f 8d 04 19                                     	lea    r8,[r9+r11*1]
    214fa4938b3f:	44 8b 4d 10                                     	mov    r9d,DWORD PTR [rbp+0x10]
    214fa4938b43:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    214fa4938b47:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    214fa4938b4a:	44 03 c8                                        	add    r9d,eax
    214fa4938b4d:	4d 63 c9                                        	movsxd r9,r9d
    214fa4938b50:	48 8b 85 40 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2c0]
    214fa4938b57:	49 0f af c1                                     	imul   rax,r9
    214fa4938b5b:	48 c1 e0 08                                     	shl    rax,0x8
    214fa4938b5f:	4c 89 8d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r9
    214fa4938b66:	4c 8b c8                                        	mov    r9,rax
    214fa4938b69:	49 c1 f9 3f                                     	sar    r9,0x3f
    214fa4938b6d:	4c 23 c8                                        	and    r9,rax
    214fa4938b70:	4d 03 c1                                        	add    r8,r9
    214fa4938b73:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa4938b77:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    214fa4938b7b:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    214fa4938b7e:	44 03 cf                                        	add    r9d,edi
    214fa4938b81:	4d 63 c9                                        	movsxd r9,r9d
    214fa4938b84:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa4938b88:	49 0f af f9                                     	imul   rdi,r9
    214fa4938b8c:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa4938b90:	4c 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r9
    214fa4938b97:	4c 8b cf                                        	mov    r9,rdi
    214fa4938b9a:	49 c1 f9 3f                                     	sar    r9,0x3f
    214fa4938b9e:	4c 23 cf                                        	and    r9,rdi
    214fa4938ba1:	4d 03 c1                                        	add    r8,r9
    214fa4938ba4:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    214fa4938bab:	0f 8c 8c 02 00 00                               	jl     0x214fa4938e3d
    214fa4938bb1:	4e 8d 04 1b                                     	lea    r8,[rbx+r11*1]
    214fa4938bb5:	45 33 db                                        	xor    r11d,r11d
    214fa4938bb8:	48 85 c0                                        	test   rax,rax
    214fa4938bbb:	4c 0f 4f d8                                     	cmovg  r11,rax
    214fa4938bbf:	4d 03 c3                                        	add    r8,r11
    214fa4938bc2:	45 33 db                                        	xor    r11d,r11d
    214fa4938bc5:	48 85 ff                                        	test   rdi,rdi
    214fa4938bc8:	4c 0f 4f df                                     	cmovg  r11,rdi
    214fa4938bcc:	4b 8d 3c 03                                     	lea    rdi,[r11+r8*1]
    214fa4938bd0:	45 33 c9                                        	xor    r9d,r9d
    214fa4938bd3:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    214fa4938bda:	0f 8f 56 02 00 00                               	jg     0x214fa4938e36
    214fa4938be0:	42 8d 3c 26                                     	lea    edi,[rsi+r12*1]
    214fa4938be4:	c5 79 6e df                                     	vmovd  xmm11,edi
    214fa4938be8:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa4938bed:	42 8d 3c 22                                     	lea    edi,[rdx+r12*1]
    214fa4938bf1:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    214fa4938bf7:	43 8d 3c 27                                     	lea    edi,[r15+r12*1]
    214fa4938bfb:	c4 63 21 22 df 02                               	vpinsrd xmm11,xmm11,edi,0x2
    214fa4938c01:	42 8d 3c 21                                     	lea    edi,[rcx+r12*1]
    214fa4938c05:	c4 63 21 22 df 03                               	vpinsrd xmm11,xmm11,edi,0x3
    214fa4938c0b:	4c 8b 85 38 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1c8]
    214fa4938c12:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    214fa4938c19:	4c 03 c7                                        	add    r8,rdi
    214fa4938c1c:	4c 8b 1d 07 ff ff ff                            	mov    r11,QWORD PTR [rip+0xffffffffffffff07]        # 0x214fa4938b2a
    214fa4938c23:	4d 3b c3                                        	cmp    r8,r11
    214fa4938c26:	0f 82 e3 01 00 00                               	jb     0x214fa4938e0f
    214fa4938c2c:	4c 8b 85 88 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x478]
    214fa4938c33:	4c 8b bd 38 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c8]
    214fa4938c3a:	4b 8d 04 38                                     	lea    rax,[r8+r15*1]
    214fa4938c3e:	48 8b 95 60 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1a0]
    214fa4938c45:	48 0f af 95 58 fb ff ff                         	imul   rdx,QWORD PTR [rbp-0x4a8]
    214fa4938c4d:	48 c1 e2 08                                     	shl    rdx,0x8
    214fa4938c51:	48 8b ca                                        	mov    rcx,rdx
    214fa4938c54:	48 c1 f9 3f                                     	sar    rcx,0x3f
    214fa4938c58:	48 23 ca                                        	and    rcx,rdx
    214fa4938c5b:	48 03 c1                                        	add    rax,rcx
    214fa4938c5e:	48 8b 8d 30 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1d0]
    214fa4938c65:	48 0f af 8d c8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x238]
    214fa4938c6d:	48 c1 e1 08                                     	shl    rcx,0x8
    214fa4938c71:	48 8b f1                                        	mov    rsi,rcx
    214fa4938c74:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa4938c78:	48 23 f1                                        	and    rsi,rcx
    214fa4938c7b:	48 03 c6                                        	add    rax,rsi
    214fa4938c7e:	48 3d 01 00 00 80                               	cmp    rax,0xffffffff80000001
    214fa4938c84:	0f 8c 8c 01 00 00                               	jl     0x214fa4938e16
    214fa4938c8a:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    214fa4938c91:	4a 8d 34 38                                     	lea    rsi,[rax+r15*1]
    214fa4938c95:	4d 8b c1                                        	mov    r8,r9
    214fa4938c98:	48 85 d2                                        	test   rdx,rdx
    214fa4938c9b:	4c 0f 4f c2                                     	cmovg  r8,rdx
    214fa4938c9f:	4c 03 c6                                        	add    r8,rsi
    214fa4938ca2:	49 8b d1                                        	mov    rdx,r9
    214fa4938ca5:	48 85 c9                                        	test   rcx,rcx
    214fa4938ca8:	48 0f 4f d1                                     	cmovg  rdx,rcx
    214fa4938cac:	4c 03 c2                                        	add    r8,rdx
    214fa4938caf:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    214fa4938cb6:	0f 8f 5a 01 00 00                               	jg     0x214fa4938e16
    214fa4938cbc:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa4938cc0:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    214fa4938cc6:	41 03 d0                                        	add    edx,r8d
    214fa4938cc9:	c5 79 6e e2                                     	vmovd  xmm12,edx
    214fa4938ccd:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa4938cd2:	8b 95 10 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1f0]
    214fa4938cd8:	41 03 d0                                        	add    edx,r8d
    214fa4938cdb:	c4 63 19 22 e2 01                               	vpinsrd xmm12,xmm12,edx,0x1
    214fa4938ce1:	8b 95 78 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x188]
    214fa4938ce7:	41 03 d0                                        	add    edx,r8d
    214fa4938cea:	c4 63 19 22 e2 02                               	vpinsrd xmm12,xmm12,edx,0x2
    214fa4938cf0:	8b 95 70 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x190]
    214fa4938cf6:	41 03 d0                                        	add    edx,r8d
    214fa4938cf9:	c4 63 19 22 e2 03                               	vpinsrd xmm12,xmm12,edx,0x3
    214fa4938cff:	48 03 bd 70 fd ff ff                            	add    rdi,QWORD PTR [rbp-0x290]
    214fa4938d06:	49 3b fb                                        	cmp    rdi,r11
    214fa4938d09:	0f 82 ef 00 00 00                               	jb     0x214fa4938dfe
    214fa4938d0f:	48 8b bd 50 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x4b0]
    214fa4938d16:	4c 8b 9d 70 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x290]
    214fa4938d1d:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    214fa4938d21:	48 8b 8d 60 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1a0]
    214fa4938d28:	48 0f af 8d f8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x208]
    214fa4938d30:	48 c1 e1 08                                     	shl    rcx,0x8
    214fa4938d34:	48 8b f1                                        	mov    rsi,rcx
    214fa4938d37:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa4938d3b:	48 23 f1                                        	and    rsi,rcx
    214fa4938d3e:	48 03 d6                                        	add    rdx,rsi
    214fa4938d41:	48 8b b5 c8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x238]
    214fa4938d48:	48 0f af 75 c0                                  	imul   rsi,QWORD PTR [rbp-0x40]
    214fa4938d4d:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa4938d51:	48 8b fe                                        	mov    rdi,rsi
    214fa4938d54:	48 c1 ff 3f                                     	sar    rdi,0x3f
    214fa4938d58:	48 23 fe                                        	and    rdi,rsi
    214fa4938d5b:	48 03 fa                                        	add    rdi,rdx
    214fa4938d5e:	48 81 ff 01 00 00 80                            	cmp    rdi,0xffffffff80000001
    214fa4938d65:	0f 8c 93 00 00 00                               	jl     0x214fa4938dfe
    214fa4938d6b:	48 8b bd e8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x218]
    214fa4938d72:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    214fa4938d76:	49 8b f9                                        	mov    rdi,r9
    214fa4938d79:	48 85 c9                                        	test   rcx,rcx
    214fa4938d7c:	48 0f 4f f9                                     	cmovg  rdi,rcx
    214fa4938d80:	48 03 fa                                        	add    rdi,rdx
    214fa4938d83:	48 85 f6                                        	test   rsi,rsi
    214fa4938d86:	4c 0f 4f ce                                     	cmovg  r9,rsi
    214fa4938d8a:	49 03 f9                                        	add    rdi,r9
    214fa4938d8d:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    214fa4938d94:	0f 8f 53 00 00 00                               	jg     0x214fa4938ded
    214fa4938d9a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4938d9d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa4938da1:	8b 8c 3a e0 00 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0xe0]
    214fa4938da8:	8b 75 48                                        	mov    esi,DWORD PTR [rbp+0x48]
    214fa4938dab:	03 ce                                           	add    ecx,esi
    214fa4938dad:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    214fa4938db1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4938db6:	8b 8c 3a f8 00 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0xf8]
    214fa4938dbd:	03 ce                                           	add    ecx,esi
    214fa4938dbf:	c4 e3 79 22 c1 01                               	vpinsrd xmm0,xmm0,ecx,0x1
    214fa4938dc5:	8b 8c 3a 10 01 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0x110]
    214fa4938dcc:	03 ce                                           	add    ecx,esi
    214fa4938dce:	c4 e3 79 22 c1 02                               	vpinsrd xmm0,xmm0,ecx,0x2
    214fa4938dd4:	8b 8c 3a 28 01 00 00                            	mov    ecx,DWORD PTR [rdx+rdi*1+0x128]
    214fa4938ddb:	03 ce                                           	add    ecx,esi
    214fa4938ddd:	c4 e3 79 22 c1 03                               	vpinsrd xmm0,xmm0,ecx,0x3
    214fa4938de3:	33 ff                                           	xor    edi,edi
    214fa4938de5:	44 8b df                                        	mov    r11d,edi
    214fa4938de8:	e9 e0 00 00 00                                  	jmp    0x214fa4938ecd
    214fa4938ded:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa4938df1:	33 ff                                           	xor    edi,edi
    214fa4938df3:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa4938df9:	e9 cf 00 00 00                                  	jmp    0x214fa4938ecd
    214fa4938dfe:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa4938e02:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa4938e08:	33 ff                                           	xor    edi,edi
    214fa4938e0a:	e9 be 00 00 00                                  	jmp    0x214fa4938ecd
    214fa4938e0f:	4c 8b bd 38 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c8]
    214fa4938e16:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa4938e1a:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    214fa4938e21:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa4938e25:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa4938e2b:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    214fa4938e2f:	33 ff                                           	xor    edi,edi
    214fa4938e31:	e9 97 00 00 00                                  	jmp    0x214fa4938ecd
    214fa4938e36:	4c 8b 9d d8 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x428]
    214fa4938e3d:	4c 8b bd 38 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c8]
    214fa4938e44:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa4938e48:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    214fa4938e4f:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa4938e53:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    214fa4938e57:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa4938e5b:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa4938e61:	33 ff                                           	xor    edi,edi
    214fa4938e63:	e9 65 00 00 00                                  	jmp    0x214fa4938ecd
    214fa4938e68:	45 33 e4                                        	xor    r12d,r12d
    214fa4938e6b:	48 8b 8d 58 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x4a8]
    214fa4938e72:	e9 14 00 00 00                                  	jmp    0x214fa4938e8b
    214fa4938e77:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    214fa4938e7a:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    214fa4938e7d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    214fa4938e83:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa4938e87:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4938e8b:	c5 79 6e 4d 40                                  	vmovd  xmm9,DWORD PTR [rbp+0x40]
    214fa4938e90:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa4938e95:	c5 79 6e 55 38                                  	vmovd  xmm10,DWORD PTR [rbp+0x38]
    214fa4938e9a:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4938e9f:	4d 8b f8                                        	mov    r15,r8
    214fa4938ea2:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    214fa4938ea6:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa4938eaa:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    214fa4938eb1:	41 8b fc                                        	mov    edi,r12d
    214fa4938eb4:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa4938eba:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa4938ebe:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    214fa4938ec5:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    214fa4938ec9:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa4938ecd:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    214fa4938ed1:	8b 8c 32 c8 3c 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x3cc8]
    214fa4938ed8:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    214fa4938ee0:	c5 78 11 85 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm8
    214fa4938ee8:	48 89 bd 18 fb ff ff                            	mov    QWORD PTR [rbp-0x4e8],rdi
    214fa4938eef:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    214fa4938ef7:	c5 78 11 95 20 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4e0],xmm10
    214fa4938eff:	4c 89 9d 98 fb ff ff                            	mov    QWORD PTR [rbp-0x468],r11
    214fa4938f06:	83 bc 32 c8 3c 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x3cc8],0x0
    214fa4938f0e:	0f 85 7c 00 00 00                               	jne    0x214fa4938f90
    214fa4938f14:	8b 8c 32 ec 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0xec]
    214fa4938f1b:	83 bc 32 ec 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xec],0x0
    214fa4938f23:	0f 85 67 00 00 00                               	jne    0x214fa4938f90
    214fa4938f29:	8b 8d 68 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x298]
    214fa4938f2f:	44 8b 8c 0a 30 01 00 00                         	mov    r9d,DWORD PTR [rdx+rcx*1+0x130]
    214fa4938f37:	83 bc 0a 30 01 00 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0x130],0x0
    214fa4938f3f:	0f 85 0b 00 00 00                               	jne    0x214fa4938f50
    214fa4938f45:	41 b9 01 00 00 00                               	mov    r9d,0x1
    214fa4938f4b:	e9 43 00 00 00                                  	jmp    0x214fa4938f93
    214fa4938f50:	44 8b 8c 0a 38 01 00 00                         	mov    r9d,DWORD PTR [rdx+rcx*1+0x138]
    214fa4938f58:	83 bc 0a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0x138],0x0
    214fa4938f60:	0f 85 1f 00 00 00                               	jne    0x214fa4938f85
    214fa4938f66:	8b 8c 0a 34 01 00 00                            	mov    ecx,DWORD PTR [rdx+rcx*1+0x134]
    214fa4938f6d:	83 f9 01                                        	cmp    ecx,0x1
    214fa4938f70:	0f 84 0f 00 00 00                               	je     0x214fa4938f85
    214fa4938f76:	45 33 c9                                        	xor    r9d,r9d
    214fa4938f79:	83 f9 02                                        	cmp    ecx,0x2
    214fa4938f7c:	41 0f 94 c1                                     	sete   r9b
    214fa4938f80:	e9 0e 00 00 00                                  	jmp    0x214fa4938f93
    214fa4938f85:	41 b9 01 00 00 00                               	mov    r9d,0x1
    214fa4938f8b:	e9 03 00 00 00                                  	jmp    0x214fa4938f93
    214fa4938f90:	45 33 c9                                        	xor    r9d,r9d
    214fa4938f93:	4c 89 8d 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r9
    214fa4938f9a:	83 bd 40 fe ff ff 04                            	cmp    DWORD PTR [rbp-0x1c0],0x4
    214fa4938fa1:	0f 84 0a 00 00 00                               	je     0x214fa4938fb1
    214fa4938fa7:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa4938fac:	e9 50 01 00 00                                  	jmp    0x214fa4939101
    214fa4938fb1:	8b 8c 32 80 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x80]
    214fa4938fb8:	83 bc 32 80 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x80],0x0
    214fa4938fc0:	0f 85 69 00 00 00                               	jne    0x214fa493902f
    214fa4938fc6:	8b 8c 32 a4 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0xa4]
    214fa4938fcd:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    214fa4938fd5:	0f 85 54 00 00 00                               	jne    0x214fa493902f
    214fa4938fdb:	8b 8c 32 30 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x530]
    214fa4938fe2:	83 bc 32 30 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x530],0x0
    214fa4938fea:	0f 85 3f 00 00 00                               	jne    0x214fa493902f
    214fa4938ff0:	8b 8c 32 70 37 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x3770]
    214fa4938ff7:	83 bc 32 70 37 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x3770],0x0
    214fa4938fff:	0f 85 2a 00 00 00                               	jne    0x214fa493902f
    214fa4939005:	8b 8c 32 74 37 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x3774]
    214fa493900c:	83 bc 32 74 37 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x3774],0x0
    214fa4939014:	0f 85 15 00 00 00                               	jne    0x214fa493902f
    214fa493901a:	8b 8c 32 20 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x520]
    214fa4939021:	83 bc 32 20 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x520],0x0
    214fa4939029:	0f 85 0a 00 00 00                               	jne    0x214fa4939039
    214fa493902f:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa4939034:	e9 c8 00 00 00                                  	jmp    0x214fa4939101
    214fa4939039:	8b 8c 32 24 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x524]
    214fa4939040:	83 bc 32 24 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x524],0x0
    214fa4939048:	74 e5                                           	je     0x214fa493902f
    214fa493904a:	8b 8c 32 28 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x528]
    214fa4939051:	83 bc 32 28 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x528],0x0
    214fa4939059:	74 d4                                           	je     0x214fa493902f
    214fa493905b:	8b 8c 32 2c 05 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x52c]
    214fa4939062:	83 bc 32 2c 05 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x52c],0x0
    214fa493906a:	74 c3                                           	je     0x214fa493902f
    214fa493906c:	8b 4c 32 74                                     	mov    ecx,DWORD PTR [rdx+rsi*1+0x74]
    214fa4939070:	83 7c 32 74 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x74],0x0
    214fa4939075:	0f 84 34 00 00 00                               	je     0x214fa49390af
    214fa493907b:	8b 4c 32 78                                     	mov    ecx,DWORD PTR [rdx+rsi*1+0x78]
    214fa493907f:	45 33 c9                                        	xor    r9d,r9d
    214fa4939082:	81 f9 02 03 00 00                               	cmp    ecx,0x302
    214fa4939088:	41 0f 95 c1                                     	setne  r9b
    214fa493908c:	83 f9 01                                        	cmp    ecx,0x1
    214fa493908f:	0f 95 c1                                        	setne  cl
    214fa4939092:	0f b6 c9                                        	movzx  ecx,cl
    214fa4939095:	41 85 c9                                        	test   r9d,ecx
    214fa4939098:	75 95                                           	jne    0x214fa493902f
    214fa493909a:	8b 4c 32 7c                                     	mov    ecx,DWORD PTR [rdx+rsi*1+0x7c]
    214fa493909e:	81 f9 03 03 00 00                               	cmp    ecx,0x303
    214fa49390a4:	0f 84 05 00 00 00                               	je     0x214fa49390af
    214fa49390aa:	83 f9 01                                        	cmp    ecx,0x1
    214fa49390ad:	75 80                                           	jne    0x214fa493902f
    214fa49390af:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa49390b6:	0f 85 07 00 00 00                               	jne    0x214fa49390c3
    214fa49390bc:	33 c9                                           	xor    ecx,ecx
    214fa49390be:	e9 3e 00 00 00                                  	jmp    0x214fa4939101
    214fa49390c3:	8b 8c 32 90 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x90]
    214fa49390ca:	83 bc 32 90 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x90],0x0
    214fa49390d2:	0f 85 57 ff ff ff                               	jne    0x214fa493902f
    214fa49390d8:	8b 8c 32 94 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x94]
    214fa49390df:	83 bc 32 94 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x94],0x0
    214fa49390e7:	0f 85 42 ff ff ff                               	jne    0x214fa493902f
    214fa49390ed:	8b 8c 32 98 00 00 00                            	mov    ecx,DWORD PTR [rdx+rsi*1+0x98]
    214fa49390f4:	33 c9                                           	xor    ecx,ecx
    214fa49390f6:	83 bc 32 98 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0x98],0x0
    214fa49390fe:	0f 95 c1                                        	setne  cl
    214fa4939101:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4939105:	42 c7 44 0a 18 00 00 00 00                      	mov    DWORD PTR [rdx+r9*1+0x18],0x0
    214fa493910e:	48 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],rcx
    214fa4939115:	8b 8d d8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x228]
    214fa493911b:	83 f9 08                                        	cmp    ecx,0x8
    214fa493911e:	0f 8c 39 02 00 00                               	jl     0x214fa493935d
    214fa4939124:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    214fa4939127:	2b 75 18                                        	sub    esi,DWORD PTR [rbp+0x18]
    214fa493912a:	48 63 f6                                        	movsxd rsi,esi
    214fa493912d:	48 8b f9                                        	mov    rdi,rcx
    214fa4939130:	48 0f af fe                                     	imul   rdi,rsi
    214fa4939134:	48 83 ff 40                                     	cmp    rdi,0x40
    214fa4939138:	0f 8c 1f 02 00 00                               	jl     0x214fa493935d
    214fa493913e:	8b bd c8 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x338]
    214fa4939144:	3b bd 18 fe ff ff                               	cmp    edi,DWORD PTR [rbp-0x1e8]
    214fa493914a:	0f 84 80 00 00 00                               	je     0x214fa49391d0
    214fa4939150:	48 8b b5 40 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2c0]
    214fa4939157:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa493915b:	c4 61 82 2a ee                                  	vcvtsi2ss xmm13,xmm15,rsi
    214fa4939160:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    214fa4939164:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    214fa4939169:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    214fa493916e:	c4 41 6a 5e ed                                  	vdivss xmm13,xmm2,xmm13
    214fa4939173:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    214fa4939178:	48 8b 75 b8                                     	mov    rsi,QWORD PTR [rbp-0x48]
    214fa493917c:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa4939180:	c4 e1 82 2a d6                                  	vcvtsi2ss xmm2,xmm15,rsi
    214fa4939185:	c5 92 59 d2                                     	vmulss xmm2,xmm13,xmm2
    214fa4939189:	49 63 f4                                        	movsxd rsi,r12d
    214fa493918c:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    214fa4939193:	4c 8d 1c 13                                     	lea    r11,[rbx+rdx*1]
    214fa4939197:	4c 03 de                                        	add    r11,rsi
    214fa493919a:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    214fa493919f:	49 ba 60 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2860
    214fa49391a9:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    214fa49391ae:	c5 12 59 eb                                     	vmulss xmm13,xmm13,xmm3
    214fa49391b2:	c4 41 79 28 fd                                  	vmovapd xmm15,xmm13
    214fa49391b7:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    214fa49391bb:	c4 c1 79 28 d7                                  	vmovapd xmm2,xmm15
    214fa49391c0:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa49391c4:	44 8b 9d 98 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x468]
    214fa49391cb:	e9 08 00 00 00                                  	jmp    0x214fa49391d8
    214fa49391d0:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    214fa49391d4:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa49391d8:	8b b5 f8 fa ff ff                               	mov    esi,DWORD PTR [rbp-0x508]
    214fa49391de:	3b b5 18 fe ff ff                               	cmp    esi,DWORD PTR [rbp-0x1e8]
    214fa49391e4:	0f 84 7c 00 00 00                               	je     0x214fa4939266
    214fa49391ea:	4c 8b 9d 58 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x4a8]
    214fa49391f1:	49 c1 e3 08                                     	shl    r11,0x8
    214fa49391f5:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    214fa49391fa:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    214fa49391fe:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    214fa4939203:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    214fa4939208:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    214fa493920c:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    214fa4939210:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    214fa4939217:	49 c1 e3 08                                     	shl    r11,0x8
    214fa493921b:	c4 c1 82 2a e3                                  	vcvtsi2ss xmm4,xmm15,r11
    214fa4939220:	c5 e2 59 e4                                     	vmulss xmm4,xmm3,xmm4
    214fa4939224:	4d 63 d8                                        	movsxd r11,r8d
    214fa4939227:	4a 8d 1c 38                                     	lea    rbx,[rax+r15*1]
    214fa493922b:	4c 03 db                                        	add    r11,rbx
    214fa493922e:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    214fa4939233:	4c 8b 15 67 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff67]        # 0x214fa49391a1
    214fa493923a:	c4 c1 48 57 32                                  	vxorps xmm6,xmm6,XMMWORD PTR [r10]
    214fa493923f:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    214fa4939243:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa4939247:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    214fa493924b:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    214fa4939253:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    214fa493925a:	44 8b 9d 98 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x468]
    214fa4939261:	e9 08 00 00 00                                  	jmp    0x214fa493926e
    214fa4939266:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    214fa493926a:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    214fa493926e:	3b f7                                           	cmp    esi,edi
    214fa4939270:	0f 84 c1 00 00 00                               	je     0x214fa4939337
    214fa4939276:	4c 8b 9d f8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x208]
    214fa493927d:	49 c1 e3 08                                     	shl    r11,0x8
    214fa4939281:	c4 41 82 2a c3                                  	vcvtsi2ss xmm8,xmm15,r11
    214fa4939286:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa493928b:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    214fa4939291:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    214fa4939297:	c4 41 32 5e c0                                  	vdivss xmm8,xmm9,xmm8
    214fa493929c:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    214fa49392a1:	4c 8b 5d c0                                     	mov    r11,QWORD PTR [rbp-0x40]
    214fa49392a5:	49 c1 e3 08                                     	shl    r11,0x8
    214fa49392a9:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    214fa49392ae:	c4 41 3a 59 c9                                  	vmulss xmm9,xmm8,xmm9
    214fa49392b3:	48 63 45 48                                     	movsxd rax,DWORD PTR [rbp+0x48]
    214fa49392b7:	4c 8b 9d 70 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x290]
    214fa49392be:	48 8b bd e8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x218]
    214fa49392c5:	49 8d 1c 3b                                     	lea    rbx,[r11+rdi*1]
    214fa49392c9:	48 03 c3                                        	add    rax,rbx
    214fa49392cc:	c4 61 82 2a d0                                  	vcvtsi2ss xmm10,xmm15,rax
    214fa49392d1:	4c 8b 15 c9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec9]        # 0x214fa49391a1
    214fa49392d8:	c4 41 28 57 12                                  	vxorps xmm10,xmm10,XMMWORD PTR [r10]
    214fa49392dd:	c4 41 3a 59 c2                                  	vmulss xmm8,xmm8,xmm10
    214fa49392e2:	c5 fb 11 95 f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm2
    214fa49392ea:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    214fa49392ee:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    214fa49392f3:	44 8b 9d 98 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x468]
    214fa49392fa:	c5 fb 11 a5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm4
    214fa4939302:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    214fa4939307:	bf 01 00 00 00                                  	mov    edi,0x1
    214fa493930c:	c5 78 10 85 00 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x400]
    214fa4939314:	48 8b 85 30 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x4d0]
    214fa493931b:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    214fa4939322:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    214fa493932a:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa4939332:	e9 48 00 00 00                                  	jmp    0x214fa493937f
    214fa4939337:	c5 fb 11 95 f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm2
    214fa493933f:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    214fa4939343:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    214fa4939347:	bf 01 00 00 00                                  	mov    edi,0x1
    214fa493934c:	c5 fb 11 a5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm4
    214fa4939354:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    214fa4939358:	e9 22 00 00 00                                  	jmp    0x214fa493937f
    214fa493935d:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    214fa4939361:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa4939365:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    214fa4939369:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    214fa493936d:	c5 fb 11 bd 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm7
    214fa4939375:	c5 fb 11 bd f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm7
    214fa493937d:	33 ff                                           	xor    edi,edi
    214fa493937f:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    214fa4939382:	3b 75 18                                        	cmp    esi,DWORD PTR [rbp+0x18]
    214fa4939385:	0f 8e 47 8b 00 00                               	jle    0x214fa4941ed2
    214fa493938b:	c5 7b 11 ad b0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x350],xmm13
    214fa4939393:	c4 41 f9 6e ef                                  	vmovq  xmm13,r15
    214fa4939398:	c4 41 7b 12 ed                                  	vmovddup xmm13,xmm13
    214fa493939d:	c4 63 91 22 ad 70 fd ff ff 01                   	vpinsrq xmm13,xmm13,QWORD PTR [rbp-0x290],0x1
    214fa49393a7:	4c 8b bd f8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x208]
    214fa49393ae:	49 c1 e7 08                                     	shl    r15,0x8
    214fa49393b2:	44 8d 59 ff                                     	lea    r11d,[rcx-0x1]
    214fa49393b6:	4d 63 db                                        	movsxd r11,r11d
    214fa49393b9:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    214fa49393c0:	4d 0f af fb                                     	imul   r15,r11
    214fa49393c4:	48 89 bd 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rdi
    214fa49393cb:	49 8b ff                                        	mov    rdi,r15
    214fa49393ce:	48 f7 d7                                        	not    rdi
    214fa49393d1:	48 89 bd d0 fb ff ff                            	mov    QWORD PTR [rbp-0x430],rdi
    214fa49393d8:	48 8b bd 58 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x4a8]
    214fa49393df:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa49393e3:	48 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rdi
    214fa49393ea:	49 0f af fb                                     	imul   rdi,r11
    214fa49393ee:	48 89 bd f8 fb ff ff                            	mov    QWORD PTR [rbp-0x408],rdi
    214fa49393f5:	48 f7 d7                                        	not    rdi
    214fa49393f8:	48 8b b5 40 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2c0]
    214fa49393ff:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa4939403:	4c 0f af de                                     	imul   r11,rsi
    214fa4939407:	4c 89 9d 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r11
    214fa493940e:	49 f7 d3                                        	not    r11
    214fa4939411:	c5 fb 11 95 88 fc ff ff                         	vmovsd QWORD PTR [rbp-0x378],xmm2
    214fa4939419:	c5 fb 12 95 30 fe ff ff                         	vmovddup xmm2,QWORD PTR [rbp-0x1d0]
    214fa4939421:	c4 e3 e9 22 55 c0 01                            	vpinsrq xmm2,xmm2,QWORD PTR [rbp-0x40],0x1
    214fa4939428:	c5 e9 73 f2 08                                  	vpsllq xmm2,xmm2,0x8
    214fa493942d:	48 89 bd b0 fb ff ff                            	mov    QWORD PTR [rbp-0x450],rdi
    214fa4939434:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa4939438:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa493943c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa493943f:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    214fa4939443:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    214fa4939449:	48 89 bd 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rdi
    214fa4939450:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    214fa4939456:	48 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],rdi
    214fa493945d:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    214fa4939463:	48 89 bd 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rdi
    214fa493946a:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    214fa4939470:	48 89 bd 28 fd ff ff                            	mov    QWORD PTR [rbp-0x2d8],rdi
    214fa4939477:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    214fa493947d:	8b 85 d0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x230]
    214fa4939483:	48 89 bd d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rdi
    214fa493948a:	8d 78 50                                        	lea    edi,[rax+0x50]
    214fa493948d:	8b 85 68 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x198]
    214fa4939493:	48 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rdi
    214fa493949a:	8d 78 50                                        	lea    edi,[rax+0x50]
    214fa493949d:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    214fa49394a3:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    214fa49394aa:	8d 78 50                                        	lea    edi,[rax+0x50]
    214fa49394ad:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    214fa49394b0:	83 f0 ff                                        	xor    eax,0xffffffff
    214fa49394b3:	48 89 bd f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],rdi
    214fa49394ba:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    214fa49394bd:	4c 89 9d 08 fb ff ff                            	mov    QWORD PTR [rbp-0x4f8],r11
    214fa49394c4:	44 8d 5f 02                                     	lea    r11d,[rdi+0x2]
    214fa49394c8:	48 8b bd 30 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1d0]
    214fa49394cf:	48 2b bd b0 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x250]
    214fa49394d6:	48 c1 e7 07                                     	shl    rdi,0x7
    214fa49394da:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    214fa49394e1:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa49394e5:	48 2b bd 80 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x280]
    214fa49394ec:	48 c1 e7 07                                     	shl    rdi,0x7
    214fa49394f0:	48 89 bd e0 fb ff ff                            	mov    QWORD PTR [rbp-0x420],rdi
    214fa49394f7:	8d 79 fe                                        	lea    edi,[rcx-0x2]
    214fa49394fa:	c5 f8 11 55 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm2
    214fa49394ff:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    214fa4939503:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    214fa4939507:	4d 63 c0                                        	movsxd r8,r8d
    214fa493950a:	4d 63 e4                                        	movsxd r12,r12d
    214fa493950d:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    214fa4939514:	41 8d b9 90 00 00 00                            	lea    edi,[r9+0x90]
    214fa493951b:	4c 89 85 e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r8
    214fa4939522:	45 8d 41 18                                     	lea    r8d,[r9+0x18]
    214fa4939526:	41 83 c8 04                                     	or     r8d,0x4
    214fa493952a:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    214fa493952f:	c5 fb 11 9d 78 fc ff ff                         	vmovsd QWORD PTR [rbp-0x388],xmm3
    214fa4939537:	c4 e2 79 18 dd                                  	vbroadcastss xmm3,xmm5
    214fa493953c:	c5 fb 11 ad e8 fc ff ff                         	vmovsd QWORD PTR [rbp-0x318],xmm5
    214fa4939544:	c5 82 2a e9                                     	vcvtsi2ss xmm5,xmm15,ecx
    214fa4939548:	41 8d 89 60 01 00 00                            	lea    ecx,[r9+0x160]
    214fa493954f:	4c 89 85 d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r8
    214fa4939556:	45 8d 81 50 01 00 00                            	lea    r8d,[r9+0x150]
    214fa493955d:	c5 78 11 a5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm12
    214fa4939565:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    214fa493956d:	c5 78 11 9d e0 fa ff ff                         	vmovups XMMWORD PTR [rbp-0x520],xmm11
    214fa4939575:	4c 89 bd a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r15
    214fa493957c:	48 89 b5 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rsi
    214fa4939583:	48 89 85 a8 fb ff ff                            	mov    QWORD PTR [rbp-0x458],rax
    214fa493958a:	4c 89 9d a0 fb ff ff                            	mov    QWORD PTR [rbp-0x460],r11
    214fa4939591:	c5 fb 11 95 10 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f0],xmm2
    214fa4939599:	4c 89 a5 90 fb ff ff                            	mov    QWORD PTR [rbp-0x470],r12
    214fa49395a0:	48 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rdi
    214fa49395a7:	c5 f8 11 8d 70 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x490],xmm1
    214fa49395af:	c5 f8 11 9d 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm3
    214fa49395b7:	c5 fb 11 ad 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm5
    214fa49395bf:	48 89 8d 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],rcx
    214fa49395c6:	4c 89 85 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r8
    214fa49395cd:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa49395d1:	c5 fb 10 b5 78 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x188]
    214fa49395d9:	c5 fb 10 ad f0 fb ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x410]
    214fa49395e1:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    214fa49395e8:	48 c7 85 70 fc ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x390],0x0
    214fa49395f3:	48 c7 85 b8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x248],0x0
    214fa49395fe:	8b 7d 18                                        	mov    edi,DWORD PTR [rbp+0x18]
    214fa4939601:	c4 c1 79 28 d8                                  	vmovapd xmm3,xmm8
    214fa4939606:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    214fa493960b:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    214fa493960e:	45 8b fb                                        	mov    r15d,r11d
    214fa4939611:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    214fa4939617:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    214fa493961d:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa4939624:	e9 29 00 00 00                                  	jmp    0x214fa4939652
    214fa4939629:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4939632:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493963b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    214fa4939640:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    214fa4939644:	4c 8b a5 90 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x470]
    214fa493964b:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    214fa4939652:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4939657:	0f 85 1f 8a 00 00                               	jne    0x214fa494207c
    214fa493965d:	83 bd 80 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x380],0x0
    214fa4939664:	0f 85 13 00 00 00                               	jne    0x214fa493967d
    214fa493966a:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    214fa4939671:	44 8b c0                                        	mov    r8d,eax
    214fa4939674:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa4939678:	e9 6c 05 00 00                                  	jmp    0x214fa4939be9
    214fa493967d:	4c 8d 04 13                                     	lea    r8,[rbx+rdx*1]
    214fa4939681:	4d 03 c4                                        	add    r8,r12
    214fa4939684:	83 bd b8 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x448],0x0
    214fa493968b:	0f 8c c4 00 00 00                               	jl     0x214fa4939755
    214fa4939691:	3b f1                                           	cmp    esi,ecx
    214fa4939693:	0f 84 b1 00 00 00                               	je     0x214fa493974a
    214fa4939699:	4d 85 c0                                        	test   r8,r8
    214fa493969c:	0f 8c d4 69 00 00                               	jl     0x214fa4940076
    214fa49396a2:	4d 3b c8                                        	cmp    r9,r8
    214fa49396a5:	0f 8c 61 00 00 00                               	jl     0x214fa493970c
    214fa49396ab:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa49396af:	0f 87 63 00 00 00                               	ja     0x214fa4939718
    214fa49396b5:	c5 f8 2e ad 10 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x1f0]
    214fa49396bd:	0f 83 49 00 00 00                               	jae    0x214fa493970c
    214fa49396c3:	4c 8b 15 8b e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe78b]        # 0x214fa4937e55
    214fa49396ca:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    214fa49396cf:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa49396d3:	0f 87 0b 00 00 00                               	ja     0x214fa49396e4
    214fa49396d9:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    214fa49396df:	e9 20 00 00 00                                  	jmp    0x214fa4939704
    214fa49396e4:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    214fa49396ea:	c5 7a 2c d8                                     	vcvttss2si r11d,xmm0
    214fa49396ee:	c4 41 02 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11d
    214fa49396f3:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa49396f8:	0f 8a 7c 8c 00 00                               	jp     0x214fa494237a
    214fa49396fe:	0f 85 76 8c 00 00                               	jne    0x214fa494237a
    214fa4939704:	45 03 df                                        	add    r11d,r15d
    214fa4939707:	e9 10 00 00 00                                  	jmp    0x214fa493971c
    214fa493970c:	44 8b c0                                        	mov    r8d,eax
    214fa493970f:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa4939713:	e9 f0 00 00 00                                  	jmp    0x214fa4939808
    214fa4939718:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa493971c:	41 3b c3                                        	cmp    eax,r11d
    214fa493971f:	7e eb                                           	jle    0x214fa493970c
    214fa4939721:	41 8b db                                        	mov    ebx,r11d
    214fa4939724:	2b 5d 10                                        	sub    ebx,DWORD PTR [rbp+0x10]
    214fa4939727:	48 63 db                                        	movsxd rbx,ebx
    214fa493972a:	48 0f af 9d 48 fc ff ff                         	imul   rbx,QWORD PTR [rbp-0x3b8]
    214fa4939732:	4c 03 c3                                        	add    r8,rbx
    214fa4939735:	8b d8                                           	mov    ebx,eax
    214fa4939737:	4d 85 c0                                        	test   r8,r8
    214fa493973a:	41 0f 4c db                                     	cmovl  ebx,r11d
    214fa493973e:	44 8b c3                                        	mov    r8d,ebx
    214fa4939741:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa4939745:	e9 be 00 00 00                                  	jmp    0x214fa4939808
    214fa493974a:	4d 85 c0                                        	test   r8,r8
    214fa493974d:	0f 8c 23 69 00 00                               	jl     0x214fa4940076
    214fa4939753:	eb b7                                           	jmp    0x214fa493970c
    214fa4939755:	4c 8b 9d 20 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x2e0]
    214fa493975c:	4f 8d 24 03                                     	lea    r12,[r11+r8*1]
    214fa4939760:	4d 85 e4                                        	test   r12,r12
    214fa4939763:	0f 8c 0d 69 00 00                               	jl     0x214fa4940076
    214fa4939769:	4d 85 c0                                        	test   r8,r8
    214fa493976c:	7d 9e                                           	jge    0x214fa493970c
    214fa493976e:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa4939772:	73 98                                           	jae    0x214fa493970c
    214fa4939774:	4c 8b 15 da e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6da]        # 0x214fa4937e55
    214fa493977b:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    214fa4939780:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa4939784:	0f 87 0b 00 00 00                               	ja     0x214fa4939795
    214fa493978a:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    214fa4939790:	e9 20 00 00 00                                  	jmp    0x214fa49397b5
    214fa4939795:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    214fa493979b:	c5 7a 2c e0                                     	vcvttss2si r12d,xmm0
    214fa493979f:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    214fa49397a4:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa49397a9:	0f 8a c6 8b 00 00                               	jp     0x214fa4942375
    214fa49397af:	0f 85 c0 8b 00 00                               	jne    0x214fa4942375
    214fa49397b5:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa49397b9:	45 03 e3                                        	add    r12d,r11d
    214fa49397bc:	c5 f8 2e ad 30 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x1d0]
    214fa49397c4:	44 0f 43 e0                                     	cmovae r12d,eax
    214fa49397c8:	45 3b e3                                        	cmp    r12d,r11d
    214fa49397cb:	0f 8e 34 00 00 00                               	jle    0x214fa4939805
    214fa49397d1:	8b 9d a8 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x458]
    214fa49397d7:	46 8d 0c 23                                     	lea    r9d,[rbx+r12*1]
    214fa49397db:	4d 63 c9                                        	movsxd r9,r9d
    214fa49397de:	4c 0f af 8d 48 fc ff ff                         	imul   r9,QWORD PTR [rbp-0x3b8]
    214fa49397e6:	4d 03 c1                                        	add    r8,r9
    214fa49397e9:	45 8b cb                                        	mov    r9d,r11d
    214fa49397ec:	4d 85 c0                                        	test   r8,r8
    214fa49397ef:	45 0f 4c cc                                     	cmovl  r9d,r12d
    214fa49397f3:	44 8b c0                                        	mov    r8d,eax
    214fa49397f6:	45 8b d9                                        	mov    r11d,r9d
    214fa49397f9:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa4939800:	e9 03 00 00 00                                  	jmp    0x214fa4939808
    214fa4939805:	44 8b c0                                        	mov    r8d,eax
    214fa4939808:	c4 43 f9 16 ec 00                               	vpextrq r12,xmm13,0x0
    214fa493980e:	48 8b 9d 30 fb ff ff                            	mov    rbx,QWORD PTR [rbp-0x4d0]
    214fa4939815:	4c 03 e3                                        	add    r12,rbx
    214fa4939818:	48 8b 9d e0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x320]
    214fa493981f:	4c 03 e3                                        	add    r12,rbx
    214fa4939822:	83 bd 80 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x480],0x0
    214fa4939829:	0f 8d e2 00 00 00                               	jge    0x214fa4939911
    214fa493982f:	48 8b 9d f8 fb ff ff                            	mov    rbx,QWORD PTR [rbp-0x408]
    214fa4939836:	4e 8d 0c 23                                     	lea    r9,[rbx+r12*1]
    214fa493983a:	4d 85 c9                                        	test   r9,r9
    214fa493983d:	0f 8c c2 00 00 00                               	jl     0x214fa4939905
    214fa4939843:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    214fa493984a:	4d 85 e4                                        	test   r12,r12
    214fa493984d:	0f 8d 9f 00 00 00                               	jge    0x214fa49398f2
    214fa4939853:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4939857:	0f 83 95 00 00 00                               	jae    0x214fa49398f2
    214fa493985d:	4c 8b 15 f1 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5f1]        # 0x214fa4937e55
    214fa4939864:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    214fa4939869:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa493986d:	0f 87 0b 00 00 00                               	ja     0x214fa493987e
    214fa4939873:	41 b9 00 00 00 80                               	mov    r9d,0x80000000
    214fa4939879:	e9 20 00 00 00                                  	jmp    0x214fa493989e
    214fa493987e:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    214fa4939884:	c5 7a 2c c8                                     	vcvttss2si r9d,xmm0
    214fa4939888:	c4 41 02 2a d1                                  	vcvtsi2ss xmm10,xmm15,r9d
    214fa493988d:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa4939892:	0f 8a d8 8a 00 00                               	jp     0x214fa4942370
    214fa4939898:	0f 85 d2 8a 00 00                               	jne    0x214fa4942370
    214fa493989e:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    214fa49398a1:	44 03 cb                                        	add    r9d,ebx
    214fa49398a4:	c5 f8 2e b5 30 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x1d0]
    214fa49398ac:	44 0f 43 c8                                     	cmovae r9d,eax
    214fa49398b0:	45 3b cb                                        	cmp    r9d,r11d
    214fa49398b3:	0f 8e 39 00 00 00                               	jle    0x214fa49398f2
    214fa49398b9:	8b 85 a8 fb ff ff                               	mov    eax,DWORD PTR [rbp-0x458]
    214fa49398bf:	42 8d 14 08                                     	lea    edx,[rax+r9*1]
    214fa49398c3:	48 63 d2                                        	movsxd rdx,edx
    214fa49398c6:	48 0f af 95 38 fc ff ff                         	imul   rdx,QWORD PTR [rbp-0x3c8]
    214fa49398ce:	4c 03 e2                                        	add    r12,rdx
    214fa49398d1:	4d 85 e4                                        	test   r12,r12
    214fa49398d4:	45 0f 4c d9                                     	cmovl  r11d,r9d
    214fa49398d8:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa49398df:	48 8b 9d e0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x320]
    214fa49398e6:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    214fa49398ed:	e9 07 01 00 00                                  	jmp    0x214fa49399f9
    214fa49398f2:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa49398f9:	48 8b 9d e0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x320]
    214fa4939900:	e9 f4 00 00 00                                  	jmp    0x214fa49399f9
    214fa4939905:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa493990c:	e9 65 67 00 00                                  	jmp    0x214fa4940076
    214fa4939911:	3b 8d f8 fa ff ff                               	cmp    ecx,DWORD PTR [rbp-0x508]
    214fa4939917:	0f 84 cc 00 00 00                               	je     0x214fa49399e9
    214fa493991d:	4d 85 e4                                        	test   r12,r12
    214fa4939920:	0f 8c 50 67 00 00                               	jl     0x214fa4940076
    214fa4939926:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    214fa493992d:	48 8b 85 b0 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x450]
    214fa4939934:	49 3b c4                                        	cmp    rax,r12
    214fa4939937:	0f 8c bc 00 00 00                               	jl     0x214fa49399f9
    214fa493993d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4939941:	0f 87 63 00 00 00                               	ja     0x214fa49399aa
    214fa4939947:	c5 f8 2e b5 10 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x1f0]
    214fa493994f:	0f 83 a4 00 00 00                               	jae    0x214fa49399f9
    214fa4939955:	4c 8b 15 f9 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4f9]        # 0x214fa4937e55
    214fa493995c:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    214fa4939961:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa4939965:	0f 87 0a 00 00 00                               	ja     0x214fa4939975
    214fa493996b:	b8 00 00 00 80                                  	mov    eax,0x80000000
    214fa4939970:	e9 1f 00 00 00                                  	jmp    0x214fa4939994
    214fa4939975:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    214fa493997b:	c5 fa 2c c0                                     	vcvttss2si eax,xmm0
    214fa493997f:	c5 02 2a d0                                     	vcvtsi2ss xmm10,xmm15,eax
    214fa4939983:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa4939988:	0f 8a dd 89 00 00                               	jp     0x214fa494236b
    214fa493998e:	0f 85 d7 89 00 00                               	jne    0x214fa494236b
    214fa4939994:	41 03 c7                                        	add    eax,r15d
    214fa4939997:	48 89 85 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rax
    214fa493999e:	48 8b 85 b0 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x450]
    214fa49399a5:	e9 0b 00 00 00                                  	jmp    0x214fa49399b5
    214fa49399aa:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    214fa49399ae:	4c 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r10
    214fa49399b5:	44 3b 85 70 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x190]
    214fa49399bc:	0f 8e 37 00 00 00                               	jle    0x214fa49399f9
    214fa49399c2:	8b 85 70 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x190]
    214fa49399c8:	2b 45 10                                        	sub    eax,DWORD PTR [rbp+0x10]
    214fa49399cb:	48 63 c0                                        	movsxd rax,eax
    214fa49399ce:	48 0f af 85 38 fc ff ff                         	imul   rax,QWORD PTR [rbp-0x3c8]
    214fa49399d6:	4c 03 e0                                        	add    r12,rax
    214fa49399d9:	4d 85 e4                                        	test   r12,r12
    214fa49399dc:	44 0f 4c 85 70 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x190]
    214fa49399e4:	e9 10 00 00 00                                  	jmp    0x214fa49399f9
    214fa49399e9:	4d 85 e4                                        	test   r12,r12
    214fa49399ec:	0f 8c 84 66 00 00                               	jl     0x214fa4940076
    214fa49399f2:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    214fa49399f9:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    214fa49399ff:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    214fa4939a06:	49 03 c4                                        	add    rax,r12
    214fa4939a09:	4c 8b a5 f0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x210]
    214fa4939a10:	49 03 c4                                        	add    rax,r12
    214fa4939a13:	83 bd c0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x240],0x0
    214fa4939a1a:	0f 8d ce 00 00 00                               	jge    0x214fa4939aee
    214fa4939a20:	4c 8b a5 a0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x260]
    214fa4939a27:	49 8d 1c 04                                     	lea    rbx,[r12+rax*1]
    214fa4939a2b:	48 85 db                                        	test   rbx,rbx
    214fa4939a2e:	0f 8c b2 00 00 00                               	jl     0x214fa4939ae6
    214fa4939a34:	48 85 c0                                        	test   rax,rax
    214fa4939a37:	0f 8d ac 01 00 00                               	jge    0x214fa4939be9
    214fa4939a3d:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    214fa4939a41:	0f 83 68 00 00 00                               	jae    0x214fa4939aaf
    214fa4939a47:	c5 f8 2e a5 30 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x1d0]
    214fa4939a4f:	0f 83 52 00 00 00                               	jae    0x214fa4939aa7
    214fa4939a55:	4c 8b 15 f9 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe3f9]        # 0x214fa4937e55
    214fa4939a5c:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    214fa4939a61:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa4939a65:	0f 87 0a 00 00 00                               	ja     0x214fa4939a75
    214fa4939a6b:	bb 00 00 00 80                                  	mov    ebx,0x80000000
    214fa4939a70:	e9 1f 00 00 00                                  	jmp    0x214fa4939a94
    214fa4939a75:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    214fa4939a7b:	c5 fa 2c d8                                     	vcvttss2si ebx,xmm0
    214fa4939a7f:	c5 02 2a d3                                     	vcvtsi2ss xmm10,xmm15,ebx
    214fa4939a83:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa4939a88:	0f 8a d8 88 00 00                               	jp     0x214fa4942366
    214fa4939a8e:	0f 85 d2 88 00 00                               	jne    0x214fa4942366
    214fa4939a94:	44 8b 65 10                                     	mov    r12d,DWORD PTR [rbp+0x10]
    214fa4939a98:	41 03 dc                                        	add    ebx,r12d
    214fa4939a9b:	4c 8b a5 a0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x260]
    214fa4939aa2:	e9 0b 00 00 00                                  	jmp    0x214fa4939ab2
    214fa4939aa7:	8b 5d 20                                        	mov    ebx,DWORD PTR [rbp+0x20]
    214fa4939aaa:	e9 03 00 00 00                                  	jmp    0x214fa4939ab2
    214fa4939aaf:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    214fa4939ab2:	41 3b db                                        	cmp    ebx,r11d
    214fa4939ab5:	0f 8e 2e 01 00 00                               	jle    0x214fa4939be9
    214fa4939abb:	44 8b a5 a8 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x458]
    214fa4939ac2:	41 8d 0c 1c                                     	lea    ecx,[r12+rbx*1]
    214fa4939ac6:	48 63 c9                                        	movsxd rcx,ecx
    214fa4939ac9:	48 0f af 8d 28 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x3d8]
    214fa4939ad1:	48 03 c1                                        	add    rax,rcx
    214fa4939ad4:	48 85 c0                                        	test   rax,rax
    214fa4939ad7:	44 0f 4c db                                     	cmovl  r11d,ebx
    214fa4939adb:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    214fa4939ae1:	e9 03 01 00 00                                  	jmp    0x214fa4939be9
    214fa4939ae6:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    214fa4939ae9:	e9 88 65 00 00                                  	jmp    0x214fa4940076
    214fa4939aee:	3b b5 f8 fa ff ff                               	cmp    esi,DWORD PTR [rbp-0x508]
    214fa4939af4:	0f 84 e6 00 00 00                               	je     0x214fa4939be0
    214fa4939afa:	48 85 c0                                        	test   rax,rax
    214fa4939afd:	7c e7                                           	jl     0x214fa4939ae6
    214fa4939aff:	48 8b b5 d0 fb ff ff                            	mov    rsi,QWORD PTR [rbp-0x430]
    214fa4939b06:	48 3b f0                                        	cmp    rsi,rax
    214fa4939b09:	0f 8c c6 00 00 00                               	jl     0x214fa4939bd5
    214fa4939b0f:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    214fa4939b13:	0f 87 75 00 00 00                               	ja     0x214fa4939b8e
    214fa4939b19:	c5 f8 2e a5 10 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x1f0]
    214fa4939b21:	0f 83 57 00 00 00                               	jae    0x214fa4939b7e
    214fa4939b27:	4c 8b 15 27 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe327]        # 0x214fa4937e55
    214fa4939b2e:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    214fa4939b33:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa4939b37:	0f 87 0b 00 00 00                               	ja     0x214fa4939b48
    214fa4939b3d:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    214fa4939b43:	e9 20 00 00 00                                  	jmp    0x214fa4939b68
    214fa4939b48:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    214fa4939b4e:	c5 7a 2c e0                                     	vcvttss2si r12d,xmm0
    214fa4939b52:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    214fa4939b57:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa4939b5c:	0f 8a ff 87 00 00                               	jp     0x214fa4942361
    214fa4939b62:	0f 85 f9 87 00 00                               	jne    0x214fa4942361
    214fa4939b68:	45 03 e7                                        	add    r12d,r15d
    214fa4939b6b:	4c 89 a5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r12
    214fa4939b72:	4c 8b a5 f0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x210]
    214fa4939b79:	e9 1b 00 00 00                                  	jmp    0x214fa4939b99
    214fa4939b7e:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    214fa4939b82:	4c 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r10
    214fa4939b89:	e9 0b 00 00 00                                  	jmp    0x214fa4939b99
    214fa4939b8e:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    214fa4939b92:	4c 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r10
    214fa4939b99:	44 3b 85 70 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x190]
    214fa4939ba0:	0f 8e 2f 00 00 00                               	jle    0x214fa4939bd5
    214fa4939ba6:	44 8b a5 70 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x190]
    214fa4939bad:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    214fa4939bb1:	4d 63 e4                                        	movsxd r12,r12d
    214fa4939bb4:	4c 0f af a5 28 fc ff ff                         	imul   r12,QWORD PTR [rbp-0x3d8]
    214fa4939bbc:	4c 03 e0                                        	add    r12,rax
    214fa4939bbf:	4d 85 e4                                        	test   r12,r12
    214fa4939bc2:	44 0f 4c 85 70 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x190]
    214fa4939bca:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    214fa4939bd0:	e9 14 00 00 00                                  	jmp    0x214fa4939be9
    214fa4939bd5:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    214fa4939bdb:	e9 09 00 00 00                                  	jmp    0x214fa4939be9
    214fa4939be0:	48 85 c0                                        	test   rax,rax
    214fa4939be3:	0f 8c fd fe ff ff                               	jl     0x214fa4939ae6
    214fa4939be9:	45 3b c3                                        	cmp    r8d,r11d
    214fa4939bec:	0f 8e f4 fe ff ff                               	jle    0x214fa4939ae6
    214fa4939bf2:	44 8b e7                                        	mov    r12d,edi
    214fa4939bf5:	41 83 cc 03                                     	or     r12d,0x3
    214fa4939bf9:	8b c7                                           	mov    eax,edi
    214fa4939bfb:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa4939c00:	8b d8                                           	mov    ebx,eax
    214fa4939c02:	83 cb 02                                        	or     ebx,0x2
    214fa4939c05:	48 89 85 e8 fb ff ff                            	mov    QWORD PTR [rbp-0x418],rax
    214fa4939c0c:	83 c8 01                                        	or     eax,0x1
    214fa4939c0f:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    214fa4939c16:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
    214fa4939c1e:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    214fa4939c25:	45 8b e0                                        	mov    r12d,r8d
    214fa4939c28:	41 83 e4 0c                                     	and    r12d,0xc
    214fa4939c2c:	41 83 e0 7c                                     	and    r8d,0x7c
    214fa4939c30:	4c 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r8
    214fa4939c37:	45 8b c3                                        	mov    r8d,r11d
    214fa4939c3a:	44 2b 45 10                                     	sub    r8d,DWORD PTR [rbp+0x10]
    214fa4939c3e:	4d 63 c0                                        	movsxd r8,r8d
    214fa4939c41:	49 c1 e0 08                                     	shl    r8,0x8
    214fa4939c45:	48 89 9d 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rbx
    214fa4939c4c:	48 8b 9d 40 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2c0]
    214fa4939c53:	49 0f af d8                                     	imul   rbx,r8
    214fa4939c57:	48 03 da                                        	add    rbx,rdx
    214fa4939c5a:	48 8b 95 58 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x4a8]
    214fa4939c61:	49 0f af d0                                     	imul   rdx,r8
    214fa4939c65:	c4 63 f9 16 ee 00                               	vpextrq rsi,xmm13,0x0
    214fa4939c6b:	48 03 d6                                        	add    rdx,rsi
    214fa4939c6e:	48 8b b5 f8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x208]
    214fa4939c75:	49 0f af f0                                     	imul   rsi,r8
    214fa4939c79:	c4 43 f9 16 e8 01                               	vpextrq r8,xmm13,0x1
    214fa4939c7f:	4c 03 c6                                        	add    r8,rsi
    214fa4939c82:	8b f7                                           	mov    esi,edi
    214fa4939c84:	c1 fe 02                                        	sar    esi,0x2
    214fa4939c87:	c1 e6 04                                        	shl    esi,0x4
    214fa4939c8a:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    214fa4939c8e:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    214fa4939c93:	c5 fb 11 ad f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm5
    214fa4939c9b:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    214fa4939ca0:	c5 fb 11 b5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm6
    214fa4939ca8:	48 89 85 38 fb ff ff                            	mov    QWORD PTR [rbp-0x4c8],rax
    214fa4939caf:	4c 89 a5 f0 fa ff ff                            	mov    QWORD PTR [rbp-0x510],r12
    214fa4939cb6:	48 89 b5 00 fb ff ff                            	mov    QWORD PTR [rbp-0x500],rsi
    214fa4939cbd:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    214fa4939cc5:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    214fa4939ccd:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    214fa4939cd5:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa4939cdd:	e9 2c 00 00 00                                  	jmp    0x214fa4939d0e
    214fa4939ce2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4939ceb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4939cf4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4939cfd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    214fa4939d00:	4d 8b c7                                        	mov    r8,r15
    214fa4939d03:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa4939d0b:	48 8b d9                                        	mov    rbx,rcx
    214fa4939d0e:	48 8b bd f0 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x210]
    214fa4939d15:	48 8b b5 30 fb ff ff                            	mov    rsi,QWORD PTR [rbp-0x4d0]
    214fa4939d1c:	48 8b 8d e0 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x320]
    214fa4939d23:	4c 8b 8d d8 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x528]
    214fa4939d2a:	48 8b 85 90 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x470]
    214fa4939d31:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    214fa4939d39:	4c 89 85 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r8
    214fa4939d40:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4939d45:	0f 85 e6 83 00 00                               	jne    0x214fa4942131
    214fa4939d4b:	83 bd 98 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x468],0x0
    214fa4939d52:	0f 85 7b 00 00 00                               	jne    0x214fa4939dd3
    214fa4939d58:	44 8b fb                                        	mov    r15d,ebx
    214fa4939d5b:	c4 41 79 6e cf                                  	vmovd  xmm9,r15d
    214fa4939d60:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa4939d65:	c4 41 31 fe cb                                  	vpaddd xmm9,xmm9,xmm11
    214fa4939d6a:	45 8b f8                                        	mov    r15d,r8d
    214fa4939d6d:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    214fa4939d72:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa4939d77:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    214fa4939d7b:	c4 41 31 eb db                                  	vpor   xmm11,xmm9,xmm11
    214fa4939d80:	44 8b fa                                        	mov    r15d,edx
    214fa4939d83:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    214fa4939d88:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4939d8d:	c4 c1 79 fe c4                                  	vpaddd xmm0,xmm0,xmm12
    214fa4939d92:	c5 21 eb d8                                     	vpor   xmm11,xmm11,xmm0
    214fa4939d96:	c4 41 78 50 fb                                  	vmovmskps r15d,xmm11
    214fa4939d9b:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa4939d9f:	0f 84 22 00 00 00                               	je     0x214fa4939dc7
    214fa4939da5:	41 83 f7 0f                                     	xor    r15d,0xf
    214fa4939da9:	c4 41 31 fa ca                                  	vpsubd xmm9,xmm9,xmm10
    214fa4939dae:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa4939db3:	c5 f9 fa c2                                     	vpsubd xmm0,xmm0,xmm2
    214fa4939db7:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa4939dbb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4939dbf:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4939dc2:	e9 95 02 00 00                                  	jmp    0x214fa493a05c
    214fa4939dc7:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4939dcb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4939dce:	e9 11 62 00 00                                  	jmp    0x214fa493ffe4
    214fa4939dd3:	4c 8d 3c 18                                     	lea    r15,[rax+rbx*1]
    214fa4939dd7:	4b 8d 04 39                                     	lea    rax,[r9+r15*1]
    214fa4939ddb:	48 85 c0                                        	test   rax,rax
    214fa4939dde:	7c e7                                           	jl     0x214fa4939dc7
    214fa4939de0:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    214fa4939de4:	4c 8d 0c 06                                     	lea    r9,[rsi+rax*1]
    214fa4939de8:	4d 85 c9                                        	test   r9,r9
    214fa4939deb:	7c da                                           	jl     0x214fa4939dc7
    214fa4939ded:	4e 8d 0c 07                                     	lea    r9,[rdi+r8*1]
    214fa4939df1:	48 8b bd e8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x218]
    214fa4939df8:	4e 8d 04 0f                                     	lea    r8,[rdi+r9*1]
    214fa4939dfc:	4d 85 c0                                        	test   r8,r8
    214fa4939dff:	7c c6                                           	jl     0x214fa4939dc7
    214fa4939e01:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    214fa4939e08:	4b 8d 3c 38                                     	lea    rdi,[r8+r15*1]
    214fa4939e0c:	48 85 ff                                        	test   rdi,rdi
    214fa4939e0f:	0f 8c 3a 00 00 00                               	jl     0x214fa4939e4f
    214fa4939e15:	48 8b bd 88 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x478]
    214fa4939e1c:	4c 8d 04 07                                     	lea    r8,[rdi+rax*1]
    214fa4939e20:	4d 85 c0                                        	test   r8,r8
    214fa4939e23:	0f 8c 26 00 00 00                               	jl     0x214fa4939e4f
    214fa4939e29:	4c 8b 85 50 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x4b0]
    214fa4939e30:	4b 8d 3c 08                                     	lea    rdi,[r8+r9*1]
    214fa4939e34:	48 85 ff                                        	test   rdi,rdi
    214fa4939e37:	0f 8c 12 00 00 00                               	jl     0x214fa4939e4f
    214fa4939e3d:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    214fa4939e43:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4939e46:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4939e4a:	e9 22 01 00 00                                  	jmp    0x214fa4939f71
    214fa4939e4f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4939e52:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4939e56:	49 8b b4 38 d0 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xd0]
    214fa4939e5e:	49 03 f7                                        	add    rsi,r15
    214fa4939e61:	48 85 f6                                        	test   rsi,rsi
    214fa4939e64:	0f 8c 2f 00 00 00                               	jl     0x214fa4939e99
    214fa4939e6a:	49 8b b4 38 d8 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xd8]
    214fa4939e72:	48 03 f0                                        	add    rsi,rax
    214fa4939e75:	48 85 f6                                        	test   rsi,rsi
    214fa4939e78:	0f 8c 1b 00 00 00                               	jl     0x214fa4939e99
    214fa4939e7e:	49 8b b4 38 e0 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xe0]
    214fa4939e86:	49 03 f1                                        	add    rsi,r9
    214fa4939e89:	48 85 f6                                        	test   rsi,rsi
    214fa4939e8c:	40 0f 9d c6                                     	setge  sil
    214fa4939e90:	40 0f b6 f6                                     	movzx  esi,sil
    214fa4939e94:	e9 02 00 00 00                                  	jmp    0x214fa4939e9b
    214fa4939e99:	33 f6                                           	xor    esi,esi
    214fa4939e9b:	49 8b 8c 38 e8 00 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0xe8]
    214fa4939ea3:	49 03 cf                                        	add    rcx,r15
    214fa4939ea6:	48 85 c9                                        	test   rcx,rcx
    214fa4939ea9:	0f 8c 2c 00 00 00                               	jl     0x214fa4939edb
    214fa4939eaf:	49 8b 8c 38 f0 00 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0xf0]
    214fa4939eb7:	48 03 c8                                        	add    rcx,rax
    214fa4939eba:	48 85 c9                                        	test   rcx,rcx
    214fa4939ebd:	0f 8c 18 00 00 00                               	jl     0x214fa4939edb
    214fa4939ec3:	8b ce                                           	mov    ecx,esi
    214fa4939ec5:	83 c9 02                                        	or     ecx,0x2
    214fa4939ec8:	4d 8b a4 38 f8 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xf8]
    214fa4939ed0:	4d 03 e1                                        	add    r12,r9
    214fa4939ed3:	4d 85 e4                                        	test   r12,r12
    214fa4939ed6:	0f 4c ce                                        	cmovl  ecx,esi
    214fa4939ed9:	8b f1                                           	mov    esi,ecx
    214fa4939edb:	4d 8b a4 38 00 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x100]
    214fa4939ee3:	4d 03 e7                                        	add    r12,r15
    214fa4939ee6:	4d 85 e4                                        	test   r12,r12
    214fa4939ee9:	0f 8c 30 00 00 00                               	jl     0x214fa4939f1f
    214fa4939eef:	4d 8b a4 38 08 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x108]
    214fa4939ef7:	4c 03 e0                                        	add    r12,rax
    214fa4939efa:	4d 85 e4                                        	test   r12,r12
    214fa4939efd:	0f 8c 1c 00 00 00                               	jl     0x214fa4939f1f
    214fa4939f03:	44 8b e6                                        	mov    r12d,esi
    214fa4939f06:	41 83 cc 04                                     	or     r12d,0x4
    214fa4939f0a:	49 8b 8c 38 10 01 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0x110]
    214fa4939f12:	49 03 c9                                        	add    rcx,r9
    214fa4939f15:	48 85 c9                                        	test   rcx,rcx
    214fa4939f18:	44 0f 4c e6                                     	cmovl  r12d,esi
    214fa4939f1c:	41 8b f4                                        	mov    esi,r12d
    214fa4939f1f:	4d 8b a4 38 18 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x118]
    214fa4939f27:	4d 03 e7                                        	add    r12,r15
    214fa4939f2a:	4d 85 e4                                        	test   r12,r12
    214fa4939f2d:	0f 8c 33 00 00 00                               	jl     0x214fa4939f66
    214fa4939f33:	4d 8b a4 38 20 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x120]
    214fa4939f3b:	4c 03 e0                                        	add    r12,rax
    214fa4939f3e:	4d 85 e4                                        	test   r12,r12
    214fa4939f41:	0f 8c 1f 00 00 00                               	jl     0x214fa4939f66
    214fa4939f47:	4d 8b a4 38 28 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x128]
    214fa4939f4f:	4d 03 e1                                        	add    r12,r9
    214fa4939f52:	4d 85 e4                                        	test   r12,r12
    214fa4939f55:	0f 8c 0b 00 00 00                               	jl     0x214fa4939f66
    214fa4939f5b:	83 ce 08                                        	or     esi,0x8
    214fa4939f5e:	44 8b fe                                        	mov    r15d,esi
    214fa4939f61:	e9 0b 00 00 00                                  	jmp    0x214fa4939f71
    214fa4939f66:	85 f6                                           	test   esi,esi
    214fa4939f68:	0f 84 76 60 00 00                               	je     0x214fa493ffe4
    214fa4939f6e:	44 8b fe                                        	mov    r15d,esi
    214fa4939f71:	83 bd 18 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4e8],0x0
    214fa4939f78:	0f 85 30 00 00 00                               	jne    0x214fa4939fae
    214fa4939f7e:	44 8b e3                                        	mov    r12d,ebx
    214fa4939f81:	c4 41 79 6e cc                                  	vmovd  xmm9,r12d
    214fa4939f86:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa4939f8b:	c5 31 fe cb                                     	vpaddd xmm9,xmm9,xmm3
    214fa4939f8f:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa4939f94:	44 8b e2                                        	mov    r12d,edx
    214fa4939f97:	c4 c1 79 6e c4                                  	vmovd  xmm0,r12d
    214fa4939f9c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4939fa1:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    214fa4939fa5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa4939fa9:	e9 ae 00 00 00                                  	jmp    0x214fa493a05c
    214fa4939fae:	4d 8b a4 38 d0 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xd0]
    214fa4939fb6:	4c 03 e3                                        	add    r12,rbx
    214fa4939fb9:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    214fa4939fbe:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa4939fc3:	4d 8b a4 38 e8 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xe8]
    214fa4939fcb:	4c 03 e3                                        	add    r12,rbx
    214fa4939fce:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    214fa4939fd3:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    214fa4939fd9:	4d 8b a4 38 00 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x100]
    214fa4939fe1:	4c 03 e3                                        	add    r12,rbx
    214fa4939fe4:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    214fa4939fe9:	c4 63 31 21 c8 20                               	vinsertps xmm9,xmm9,xmm0,0x20
    214fa4939fef:	4d 8b a4 38 18 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x118]
    214fa4939ff7:	4c 03 e3                                        	add    r12,rbx
    214fa4939ffa:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    214fa4939fff:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    214fa493a005:	4d 8b a4 38 d8 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xd8]
    214fa493a00d:	4c 03 e2                                        	add    r12,rdx
    214fa493a010:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    214fa493a015:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa493a01a:	4d 8b a4 38 f0 00 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0xf0]
    214fa493a022:	4c 03 e2                                        	add    r12,rdx
    214fa493a025:	c4 41 82 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12
    214fa493a02a:	c4 c3 79 21 c2 10                               	vinsertps xmm0,xmm0,xmm10,0x10
    214fa493a030:	4d 8b a4 38 08 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x108]
    214fa493a038:	4c 03 e2                                        	add    r12,rdx
    214fa493a03b:	c4 41 82 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12
    214fa493a040:	c4 c3 79 21 c2 20                               	vinsertps xmm0,xmm0,xmm10,0x20
    214fa493a046:	4d 8b a4 38 20 01 00 00                         	mov    r12,QWORD PTR [r8+rdi*1+0x120]
    214fa493a04e:	4c 03 e2                                        	add    r12,rdx
    214fa493a051:	c4 41 82 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12
    214fa493a056:	c4 c3 79 21 c2 30                               	vinsertps xmm0,xmm0,xmm10,0x30
    214fa493a05c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    214fa493a066:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa493a06b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa493a070:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa493a075:	c4 41 50 59 c9                                  	vmulps xmm9,xmm5,xmm9
    214fa493a07a:	4d 8d 60 18                                     	lea    r12,[r8+0x18]
    214fa493a07e:	48 8b 85 58 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a8]
    214fa493a085:	c4 42 79 18 24 04                               	vbroadcastss xmm12,DWORD PTR [r12+rax*1]
    214fa493a08b:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    214fa493a090:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    214fa493a094:	48 8b b5 60 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2a0]
    214fa493a09b:	c4 c2 79 18 2c 34                               	vbroadcastss xmm5,DWORD PTR [r12+rsi*1]
    214fa493a0a1:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    214fa493a0a5:	c5 98 58 ed                                     	vaddps xmm5,xmm12,xmm5
    214fa493a0a9:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x214fa493a05e
    214fa493a0b0:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493a0b5:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa493a0ba:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    214fa493a0bf:	c5 b0 5c c0                                     	vsubps xmm0,xmm9,xmm0
    214fa493a0c3:	4c 8b 8d 50 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2b0]
    214fa493a0ca:	c4 02 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+r9*1]
    214fa493a0d0:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa493a0d5:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    214fa493a0d9:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    214fa493a0dd:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    214fa493a0e1:	c5 78 c2 cd 01                                  	vcmpltps xmm9,xmm0,xmm5
    214fa493a0e6:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    214fa493a0ea:	c5 18 c2 c8 01                                  	vcmpltps xmm9,xmm12,xmm0
    214fa493a0ef:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    214fa493a0f3:	c4 c1 29 db c1                                  	vpand  xmm0,xmm10,xmm9
    214fa493a0f8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493a0fd:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    214fa493a103:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa493a107:	43 8b 4c 20 68                                  	mov    ecx,DWORD PTR [r8+r12*1+0x68]
    214fa493a10c:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    214fa493a112:	0f 84 1f 01 00 00                               	je     0x214fa493a237
    214fa493a118:	43 8b 8c 20 a4 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xa4]
    214fa493a120:	43 83 bc 20 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xa4],0x0
    214fa493a129:	0f 85 08 01 00 00                               	jne    0x214fa493a237
    214fa493a12f:	43 8b 4c 20 1c                                  	mov    ecx,DWORD PTR [r8+r12*1+0x1c]
    214fa493a134:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    214fa493a138:	0f af 45 d0                                     	imul   eax,DWORD PTR [rbp-0x30]
    214fa493a13c:	41 03 c3                                        	add    eax,r11d
    214fa493a13f:	c1 e0 04                                        	shl    eax,0x4
    214fa493a142:	03 c1                                           	add    eax,ecx
    214fa493a144:	c4 41 7a 6f 0c 00                               	vmovdqu xmm9,XMMWORD PTR [r8+rax*1]
    214fa493a14a:	43 8b 44 20 6c                                  	mov    eax,DWORD PTR [r8+r12*1+0x6c]
    214fa493a14f:	2d 00 02 00 00                                  	sub    eax,0x200
    214fa493a154:	83 f8 07                                        	cmp    eax,0x7
    214fa493a157:	0f 83 0b 00 00 00                               	jae    0x214fa493a168
    214fa493a15d:	4c 8d 15 3c 82 00 00                            	lea    r10,[rip+0x823c]        # 0x214fa49423a0
    214fa493a164:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    214fa493a168:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    214fa493a16d:	e9 39 00 00 00                                  	jmp    0x214fa493a1ab
    214fa493a172:	c5 30 c2 d8 02                                  	vcmpleps xmm11,xmm9,xmm0
    214fa493a177:	e9 2f 00 00 00                                  	jmp    0x214fa493a1ab
    214fa493a17c:	c5 30 c2 d8 04                                  	vcmpneqps xmm11,xmm9,xmm0
    214fa493a181:	e9 25 00 00 00                                  	jmp    0x214fa493a1ab
    214fa493a186:	c5 30 c2 d8 01                                  	vcmpltps xmm11,xmm9,xmm0
    214fa493a18b:	e9 1b 00 00 00                                  	jmp    0x214fa493a1ab
    214fa493a190:	c4 41 78 c2 d9 02                               	vcmpleps xmm11,xmm0,xmm9
    214fa493a196:	e9 10 00 00 00                                  	jmp    0x214fa493a1ab
    214fa493a19b:	c5 30 c2 d8 00                                  	vcmpeqps xmm11,xmm9,xmm0
    214fa493a1a0:	e9 06 00 00 00                                  	jmp    0x214fa493a1ab
    214fa493a1a5:	c4 41 78 c2 d9 01                               	vcmpltps xmm11,xmm0,xmm9
    214fa493a1ab:	c4 c1 78 50 c3                                  	vmovmskps eax,xmm11
    214fa493a1b0:	41 8b cf                                        	mov    ecx,r15d
    214fa493a1b3:	23 c8                                           	and    ecx,eax
    214fa493a1b5:	83 bd 70 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x390],0x0
    214fa493a1bc:	0f 85 22 00 00 00                               	jne    0x214fa493a1e4
    214fa493a1c2:	85 c9                                           	test   ecx,ecx
    214fa493a1c4:	0f 85 58 00 00 00                               	jne    0x214fa493a222
    214fa493a1ca:	c4 c1 78 c2 c1 02                               	vcmpleps xmm0,xmm0,xmm9
    214fa493a1d0:	c5 f8 50 c0                                     	vmovmskps eax,xmm0
    214fa493a1d4:	41 85 c7                                        	test   r15d,eax
    214fa493a1d7:	41 0f 95 c7                                     	setne  r15b
    214fa493a1db:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa493a1df:	e9 0f 00 00 00                                  	jmp    0x214fa493a1f3
    214fa493a1e4:	41 85 c7                                        	test   r15d,eax
    214fa493a1e7:	0f 85 35 00 00 00                               	jne    0x214fa493a222
    214fa493a1ed:	41 bf 01 00 00 00                               	mov    r15d,0x1
    214fa493a1f3:	4c 89 bd 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r15
    214fa493a1fa:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    214fa493a205:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    214fa493a20d:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa493a215:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    214fa493a21d:	e9 c2 5d 00 00                                  	jmp    0x214fa493ffe4
    214fa493a222:	48 8b 85 58 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a8]
    214fa493a229:	44 8b f9                                        	mov    r15d,ecx
    214fa493a22c:	48 c7 85 70 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x390],0x1
    214fa493a237:	4c 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r11
    214fa493a23e:	48 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rbx
    214fa493a245:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    214fa493a24c:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa493a250:	0f 84 29 00 00 00                               	je     0x214fa493a27f
    214fa493a256:	8d 8f d0 00 00 00                               	lea    ecx,[rdi+0xd0]
    214fa493a25c:	f3 45 0f bc df                                  	tzcnt  r11d,r15d
    214fa493a261:	45 6b db 18                                     	imul   r11d,r11d,0x18
    214fa493a265:	44 03 d9                                        	add    r11d,ecx
    214fa493a268:	4b 8b 4c 18 08                                  	mov    rcx,QWORD PTR [r8+r11*1+0x8]
    214fa493a26d:	4f 8b 1c 18                                     	mov    r11,QWORD PTR [r8+r11*1]
    214fa493a271:	4d 8b d3                                        	mov    r10,r11
    214fa493a274:	4c 8b d9                                        	mov    r11,rcx
    214fa493a277:	49 8b ca                                        	mov    rcx,r10
    214fa493a27a:	e9 0e 00 00 00                                  	jmp    0x214fa493a28d
    214fa493a27f:	4c 8b 9d 70 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x290]
    214fa493a286:	48 8b 8d e0 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x420]
    214fa493a28d:	4c 03 da                                        	add    r11,rdx
    214fa493a290:	48 03 cb                                        	add    rcx,rbx
    214fa493a293:	83 bd 88 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x278],0x0
    214fa493a29a:	0f 85 9f 1b 00 00                               	jne    0x214fa493be3f
    214fa493a2a0:	c4 81 7a 10 44 08 1c                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x1c]
    214fa493a2a7:	c4 41 7a 10 4c 30 1c                            	vmovss xmm9,DWORD PTR [r8+rsi*1+0x1c]
    214fa493a2ae:	c4 41 7a 10 5c 00 1c                            	vmovss xmm11,DWORD PTR [r8+rax*1+0x1c]
    214fa493a2b5:	4c 89 bd 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r15
    214fa493a2bc:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    214fa493a2c4:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    214fa493a2cd:	0f 84 65 00 00 00                               	je     0x214fa493a338
    214fa493a2d3:	44 8b bd 50 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3b0]
    214fa493a2da:	41 c1 ef 03                                     	shr    r15d,0x3
    214fa493a2de:	41 83 e7 03                                     	and    r15d,0x3
    214fa493a2e2:	44 8b a5 d8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x228]
    214fa493a2e9:	45 0b e7                                        	or     r12d,r15d
    214fa493a2ec:	44 8b bd d8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x328]
    214fa493a2f3:	45 03 e7                                        	add    r12d,r15d
    214fa493a2f6:	47 0f b6 24 20                                  	movzx  r12d,BYTE PTR [r8+r12*1]
    214fa493a2fb:	44 8b bd 50 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3b0]
    214fa493a302:	41 83 e7 07                                     	and    r15d,0x7
    214fa493a306:	4c 8b d1                                        	mov    r10,rcx
    214fa493a309:	41 8b cf                                        	mov    ecx,r15d
    214fa493a30c:	4d 8b fa                                        	mov    r15,r10
    214fa493a30f:	41 d3 e4                                        	shl    r12d,cl
    214fa493a312:	41 f6 c4 80                                     	test   r12b,0x80
    214fa493a316:	0f 85 15 00 00 00                               	jne    0x214fa493a331
    214fa493a31c:	44 8b cf                                        	mov    r9d,edi
    214fa493a31f:	49 8b f8                                        	mov    rdi,r8
    214fa493a322:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa493a326:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493a32c:	e9 a3 1a 00 00                                  	jmp    0x214fa493bdd4
    214fa493a331:	49 8b cf                                        	mov    rcx,r15
    214fa493a334:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa493a338:	c5 f8 11 ad a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm5
    214fa493a340:	c4 e1 82 2a e9                                  	vcvtsi2ss xmm5,xmm15,rcx
    214fa493a345:	c5 ba 59 ed                                     	vmulss xmm5,xmm8,xmm5
    214fa493a349:	c4 41 52 59 db                                  	vmulss xmm11,xmm5,xmm11
    214fa493a34e:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    214fa493a353:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    214fa493a357:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    214fa493a35c:	c4 41 22 58 c1                                  	vaddss xmm8,xmm11,xmm9
    214fa493a361:	c5 78 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm10
    214fa493a369:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa493a36e:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa493a374:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa493a37a:	c5 aa 5c ed                                     	vsubss xmm5,xmm10,xmm5
    214fa493a37e:	c5 d2 5c ee                                     	vsubss xmm5,xmm5,xmm6
    214fa493a382:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    214fa493a386:	c5 ba 58 e8                                     	vaddss xmm5,xmm8,xmm0
    214fa493a38a:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa493a38e:	0f 83 31 1a 00 00                               	jae    0x214fa493bdc5
    214fa493a394:	c5 aa 5e ed                                     	vdivss xmm5,xmm10,xmm5
    214fa493a398:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    214fa493a39c:	c4 e2 79 18 f5                                  	vbroadcastss xmm6,xmm5
    214fa493a3a1:	c4 01 7a 6f 44 08 20                            	vmovdqu xmm8,XMMWORD PTR [r8+r9*1+0x20]
    214fa493a3a8:	c5 fb 11 ad b8 fc ff ff                         	vmovsd QWORD PTR [rbp-0x348],xmm5
    214fa493a3b0:	c4 e2 79 18 e8                                  	vbroadcastss xmm5,xmm0
    214fa493a3b5:	c5 b8 59 ed                                     	vmulps xmm5,xmm8,xmm5
    214fa493a3b9:	c4 41 7a 6f 44 00 20                            	vmovdqu xmm8,XMMWORD PTR [r8+rax*1+0x20]
    214fa493a3c0:	c5 fb 11 85 18 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2e8],xmm0
    214fa493a3c8:	c4 c2 79 18 c3                                  	vbroadcastss xmm0,xmm11
    214fa493a3cd:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa493a3d1:	c4 42 79 18 c1                                  	vbroadcastss xmm8,xmm9
    214fa493a3d6:	c4 c1 7a 6f 7c 30 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x20]
    214fa493a3dd:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    214fa493a3e1:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    214fa493a3e5:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    214fa493a3e9:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    214fa493a3ed:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa493a3f7:	c4 81 7a 10 ac 08 98 00 00 00                   	vmovss xmm5,DWORD PTR [r8+r9*1+0x98]
    214fa493a401:	c4 c1 7a 10 b4 00 98 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rax*1+0x98]
    214fa493a40b:	c4 c1 7a 10 bc 30 98 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rsi*1+0x98]
    214fa493a415:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    214fa493a41f:	44 8b 9d 68 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x298]
    214fa493a426:	47 8b bc 18 34 01 00 00                         	mov    r15d,DWORD PTR [r8+r11*1+0x134]
    214fa493a42e:	41 8d 4f ff                                     	lea    ecx,[r15-0x1]
    214fa493a432:	c5 78 11 a5 c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm12
    214fa493a43a:	c5 7b 11 8d c0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x340],xmm9
    214fa493a442:	c5 7b 11 9d 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm11
    214fa493a44a:	c5 fb 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm5
    214fa493a452:	c5 fb 11 b5 b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm6
    214fa493a45a:	c5 fb 11 bd a8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x258],xmm7
    214fa493a462:	83 f9 01                                        	cmp    ecx,0x1
    214fa493a465:	0f 86 96 04 00 00                               	jbe    0x214fa493a901
    214fa493a46b:	47 8b bc 18 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r11*1+0x130]
    214fa493a473:	43 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x130],0x0
    214fa493a47c:	0f 85 0b 00 00 00                               	jne    0x214fa493a48d
    214fa493a482:	44 8b cf                                        	mov    r9d,edi
    214fa493a485:	49 8b f8                                        	mov    rdi,r8
    214fa493a488:	e9 34 05 00 00                                  	jmp    0x214fa493a9c1
    214fa493a48d:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    214fa493a494:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    214fa493a49a:	51                                              	push   rcx
    214fa493a49b:	4c 89 9d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r11
    214fa493a4a2:	4c 89 bd 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r15
    214fa493a4a9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493a4ad:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    214fa493a4b3:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    214fa493a4b9:	8b 8d 68 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x198]
    214fa493a4bf:	8b 9d d0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x230]
    214fa493a4c5:	c4 c1 79 28 cb                                  	vmovapd xmm1,xmm11
    214fa493a4ca:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    214fa493a4cf:	c5 fb 10 9d 18 fd ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x2e8]
    214fa493a4d7:	c5 fb 10 a5 b8 fc ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x348]
    214fa493a4df:	45 8b cf                                        	mov    r9d,r15d
    214fa493a4e2:	e8 31 dd ee ff                                  	call   0x214fa4828218
    214fa493a4e7:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493a4eb:	4c 8b 85 70 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x190]
    214fa493a4f2:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    214fa493a4fa:	45 85 c0                                        	test   r8d,r8d
    214fa493a4fd:	0f 85 9a 01 00 00                               	jne    0x214fa493a69d
    214fa493a503:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493a507:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    214fa493a50f:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    214fa493a518:	0f 84 4b 00 00 00                               	je     0x214fa493a569
    214fa493a51e:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa493a525:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa493a52c:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa493a533:	41 50                                           	push   r8
    214fa493a535:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493a539:	8b 85 28 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d8]
    214fa493a53f:	33 d2                                           	xor    edx,edx
    214fa493a541:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    214fa493a548:	e8 f3 dc ee ff                                  	call   0x214fa4828240
    214fa493a54d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493a551:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493a555:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa493a55f:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493a569:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    214fa493a571:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    214fa493a57a:	0f 84 4e 00 00 00                               	je     0x214fa493a5ce
    214fa493a580:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa493a587:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa493a58e:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa493a595:	41 50                                           	push   r8
    214fa493a597:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493a59b:	8b 85 30 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d0]
    214fa493a5a1:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa493a5a6:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    214fa493a5ad:	e8 8e dc ee ff                                  	call   0x214fa4828240
    214fa493a5b2:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493a5b6:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493a5ba:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa493a5c4:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493a5ce:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    214fa493a5d6:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    214fa493a5df:	0f 84 4e 00 00 00                               	je     0x214fa493a633
    214fa493a5e5:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa493a5ec:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa493a5f3:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa493a5fa:	41 50                                           	push   r8
    214fa493a5fc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493a600:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    214fa493a606:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa493a60b:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    214fa493a612:	e8 29 dc ee ff                                  	call   0x214fa4828240
    214fa493a617:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493a61b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493a61f:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa493a629:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493a633:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    214fa493a63b:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    214fa493a644:	0f 84 77 03 00 00                               	je     0x214fa493a9c1
    214fa493a64a:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa493a651:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa493a658:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa493a65f:	41 50                                           	push   r8
    214fa493a661:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493a665:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    214fa493a66b:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa493a670:	44 8b 8d 38 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c8]
    214fa493a677:	e8 c4 db ee ff                                  	call   0x214fa4828240
    214fa493a67c:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493a680:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493a684:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa493a68e:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493a698:	e9 24 03 00 00                                  	jmp    0x214fa493a9c1
    214fa493a69d:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa493a6a1:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    214fa493a6ab:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa493a6b1:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa493a6b6:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa493a6ba:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    214fa493a6c4:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa493a6c8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa493a6cc:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    214fa493a6d6:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa493a6da:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    214fa493a6e4:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa493a6e8:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    214fa493a6ec:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    214fa493a6f6:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa493a6fa:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    214fa493a704:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    214fa493a708:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    214fa493a70c:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    214fa493a710:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa493a714:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa493a71a:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa493a71f:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    214fa493a723:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    214fa493a727:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    214fa493a72c:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    214fa493a731:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa493a735:	0f 87 09 00 00 00                               	ja     0x214fa493a744
    214fa493a73b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa493a73f:	e9 04 00 00 00                                  	jmp    0x214fa493a748
    214fa493a744:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    214fa493a748:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa493a74c:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa493a750:	0f 87 09 00 00 00                               	ja     0x214fa493a75f
    214fa493a756:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa493a75a:	e9 04 00 00 00                                  	jmp    0x214fa493a763
    214fa493a75f:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa493a763:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa493a768:	41 83 f8 01                                     	cmp    r8d,0x1
    214fa493a76c:	0f 84 a4 00 00 00                               	je     0x214fa493a816
    214fa493a772:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa493a776:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    214fa493a780:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493a784:	0f 87 09 00 00 00                               	ja     0x214fa493a793
    214fa493a78a:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa493a78e:	e9 04 00 00 00                                  	jmp    0x214fa493a797
    214fa493a793:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa493a797:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa493a79b:	0f 87 0a 00 00 00                               	ja     0x214fa493a7ab
    214fa493a7a1:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa493a7a6:	e9 04 00 00 00                                  	jmp    0x214fa493a7af
    214fa493a7ab:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa493a7af:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa493a7b3:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa493a7b8:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    214fa493a7c0:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa493a7c4:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493a7cc:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493a7d0:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    214fa493a7da:	41 83 f8 03                                     	cmp    r8d,0x3
    214fa493a7de:	0f 85 04 00 00 00                               	jne    0x214fa493a7e8
    214fa493a7e4:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    214fa493a7e8:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa493a7ed:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa493a7f1:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493a7f5:	c4 21 7a 6f 94 27 18 37 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r12*1+0x3718]
    214fa493a7ff:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa493a804:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    214fa493a809:	c4 41 79 28 d1                                  	vmovapd xmm10,xmm9
    214fa493a80e:	4d 8b c4                                        	mov    r8,r12
    214fa493a811:	e9 c7 00 00 00                                  	jmp    0x214fa493a8dd
    214fa493a816:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    214fa493a820:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493a824:	0f 87 09 00 00 00                               	ja     0x214fa493a833
    214fa493a82a:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa493a82e:	e9 04 00 00 00                                  	jmp    0x214fa493a837
    214fa493a833:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa493a837:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa493a83b:	0f 87 0a 00 00 00                               	ja     0x214fa493a84b
    214fa493a841:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa493a846:	e9 04 00 00 00                                  	jmp    0x214fa493a84f
    214fa493a84b:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa493a84f:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    214fa493a859:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    214fa493a85f:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    214fa493a864:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493a868:	0f 87 09 00 00 00                               	ja     0x214fa493a877
    214fa493a86e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa493a872:	e9 04 00 00 00                                  	jmp    0x214fa493a87b
    214fa493a877:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    214fa493a87b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa493a87f:	0f 87 0a 00 00 00                               	ja     0x214fa493a88f
    214fa493a885:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa493a88a:	e9 04 00 00 00                                  	jmp    0x214fa493a893
    214fa493a88f:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa493a893:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    214fa493a89d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa493a8a2:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa493a8a6:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    214fa493a8b0:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    214fa493a8b5:	c5 78 10 9d a0 fc ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x360]
    214fa493a8bd:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa493a8c1:	c5 78 10 95 c0 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x440]
    214fa493a8c9:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa493a8cd:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa493a8d1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa493a8d5:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa493a8d9:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    214fa493a8dd:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa493a8e1:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa493a8e5:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    214fa493a8ef:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    214fa493a8f9:	45 8b cb                                        	mov    r9d,r11d
    214fa493a8fc:	e9 c0 00 00 00                                  	jmp    0x214fa493a9c1
    214fa493a901:	4d 8b d9                                        	mov    r11,r9
    214fa493a904:	c4 81 7a 10 44 18 50                            	vmovss xmm0,DWORD PTR [r8+r11*1+0x50]
    214fa493a90b:	c5 fa 59 85 18 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e8]
    214fa493a913:	c4 41 7a 10 44 00 50                            	vmovss xmm8,DWORD PTR [r8+rax*1+0x50]
    214fa493a91a:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    214fa493a91f:	48 8b ce                                        	mov    rcx,rsi
    214fa493a922:	c4 41 32 59 74 08 50                            	vmulss xmm14,xmm9,DWORD PTR [r8+rcx*1+0x50]
    214fa493a929:	c4 41 3a 58 c6                                  	vaddss xmm8,xmm8,xmm14
    214fa493a92e:	c4 c1 7a 58 c0                                  	vaddss xmm0,xmm0,xmm8
    214fa493a933:	c5 7b 10 85 b8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x348]
    214fa493a93b:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    214fa493a93f:	c4 01 7a 10 74 18 54                            	vmovss xmm14,DWORD PTR [r8+r11*1+0x54]
    214fa493a946:	c5 0a 59 b5 18 fd ff ff                         	vmulss xmm14,xmm14,DWORD PTR [rbp-0x2e8]
    214fa493a94e:	c5 fb 11 85 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm0
    214fa493a956:	c4 c1 7a 10 44 00 54                            	vmovss xmm0,DWORD PTR [r8+rax*1+0x54]
    214fa493a95d:	c4 c1 7a 59 c3                                  	vmulss xmm0,xmm0,xmm11
    214fa493a962:	c4 c1 32 59 6c 08 54                            	vmulss xmm5,xmm9,DWORD PTR [r8+rcx*1+0x54]
    214fa493a969:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa493a96d:	c5 8a 58 c0                                     	vaddss xmm0,xmm14,xmm0
    214fa493a971:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    214fa493a975:	8d b7 90 02 00 00                               	lea    esi,[rdi+0x290]
    214fa493a97b:	44 8d 8f 30 01 00 00                            	lea    r9d,[rdi+0x130]
    214fa493a982:	8b ce                                           	mov    ecx,esi
    214fa493a984:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493a988:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    214fa493a98e:	41 8b d7                                        	mov    edx,r15d
    214fa493a991:	c5 fb 10 8d 70 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x190]
    214fa493a999:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa493a99d:	41 8b d9                                        	mov    ebx,r9d
    214fa493a9a0:	e8 8b db ee ff                                  	call   0x214fa4828530
    214fa493a9a5:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493a9a9:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493a9ad:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    214fa493a9b7:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493a9c1:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa493a9c5:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    214fa493a9cd:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    214fa493a9d6:	0f 84 c3 01 00 00                               	je     0x214fa493ab9f
    214fa493a9dc:	c5 fb 10 85 60 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1a0]
    214fa493a9e4:	c5 fa 59 85 18 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e8]
    214fa493a9ec:	c5 fb 10 ad b8 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x248]
    214fa493a9f4:	c5 d2 59 ad 40 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1c0]
    214fa493a9fc:	c5 fb 10 b5 c0 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x340]
    214fa493aa04:	c5 ca 59 b5 a8 fd ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x258]
    214fa493aa0c:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    214fa493aa10:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa493aa14:	c5 fb 10 ad b8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x348]
    214fa493aa1c:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    214fa493aa20:	4c 8b 15 7a e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77a]        # 0x214fa49391a1
    214fa493aa27:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa493aa2c:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    214fa493aa30:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    214fa493aa34:	0f 87 04 00 00 00                               	ja     0x214fa493aa3e
    214fa493aa3a:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    214fa493aa3e:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    214fa493aa46:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    214fa493aa4d:	0f 85 28 00 00 00                               	jne    0x214fa493aa7b
    214fa493aa53:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    214fa493aa5d:	4c 8b 15 3d e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73d]        # 0x214fa49391a1
    214fa493aa64:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa493aa69:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    214fa493aa6d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493aa71:	e8 42 fb ee ff                                  	call   0x214fa482a5b8
    214fa493aa76:	e9 89 00 00 00                                  	jmp    0x214fa493ab04
    214fa493aa7b:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa493aa7f:	0f 84 5c 00 00 00                               	je     0x214fa493aae1
    214fa493aa85:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    214fa493aa8f:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    214fa493aa99:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    214fa493aa9d:	7a 06                                           	jp     0x214fa493aaa5
    214fa493aa9f:	0f 84 29 00 00 00                               	je     0x214fa493aace
    214fa493aaa5:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    214fa493aaa9:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    214fa493aaad:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa493aab1:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    214fa493aab5:	0f 86 49 00 00 00                               	jbe    0x214fa493ab04
    214fa493aabb:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa493aabf:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa493aac4:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa493aac9:	e9 5b 00 00 00                                  	jmp    0x214fa493ab29
    214fa493aace:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa493aad2:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa493aad7:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa493aadc:	e9 44 00 00 00                                  	jmp    0x214fa493ab25
    214fa493aae1:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    214fa493aaeb:	4c 8b 15 af e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6af]        # 0x214fa49391a1
    214fa493aaf2:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa493aaf7:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    214fa493aafb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493aaff:	e8 b4 fa ee ff                                  	call   0x214fa482a5b8
    214fa493ab04:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa493ab08:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa493ab0d:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa493ab12:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa493ab16:	0f 87 09 00 00 00                               	ja     0x214fa493ab25
    214fa493ab1c:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    214fa493ab20:	e9 04 00 00 00                                  	jmp    0x214fa493ab29
    214fa493ab25:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa493ab29:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493ab2d:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493ab31:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    214fa493ab3b:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa493ab3f:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa493ab43:	c4 a1 7a 59 bc 07 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x100]
    214fa493ab4d:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa493ab51:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    214fa493ab5b:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    214fa493ab65:	c4 a1 7a 59 bc 07 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x104]
    214fa493ab6f:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa493ab73:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    214fa493ab7d:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    214fa493ab87:	c4 a1 7a 59 84 07 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [rdi+r8*1+0x108]
    214fa493ab91:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa493ab95:	c4 a1 7a 11 84 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm0
    214fa493ab9f:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    214fa493aba9:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    214fa493abb3:	83 bd c8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x238],0x0
    214fa493abba:	0f 85 ca 11 00 00                               	jne    0x214fa493bd8a
    214fa493abc0:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    214fa493abc5:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    214fa493abcb:	0f 85 7e 11 00 00                               	jne    0x214fa493bd4f
    214fa493abd1:	c4 a1 7a 6f 84 0f 80 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x280]
    214fa493abdb:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493abe3:	c5 f8 c2 ed 01                                  	vcmpltps xmm5,xmm0,xmm5
    214fa493abe8:	c5 d0 55 c0                                     	vandnps xmm0,xmm5,xmm0
    214fa493abec:	c5 f8 10 b5 c0 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x440]
    214fa493abf4:	c5 c8 c2 e8 01                                  	vcmpltps xmm5,xmm6,xmm0
    214fa493abf9:	c5 f8 10 bd 60 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3a0]
    214fa493ac01:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    214fa493ac05:	c5 c1 db c5                                     	vpand  xmm0,xmm7,xmm5
    214fa493ac09:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493ac0e:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    214fa493ac18:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493ac1d:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493ac21:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa493ac25:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    214fa493ac2f:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493ac34:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493ac38:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa493ac3c:	49 ba 40 29 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2940
    214fa493ac46:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa493ac4b:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    214fa493ac50:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa493ac56:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    214fa493ac5a:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    214fa493ac5f:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    214fa493ac69:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa493ac6e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa493ac72:	4c 8b 15 dc d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1dc]        # 0x214fa4937e55
    214fa493ac79:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa493ac7e:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    214fa493ac88:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493ac8d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa493ac91:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    214fa493ac96:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    214fa493ac9a:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa493ac9e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493aca3:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    214fa493aca8:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    214fa493acac:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa493acb1:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    214fa493acb5:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    214fa493acba:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493acc0:	44 03 da                                        	add    r11d,edx
    214fa493acc3:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    214fa493accb:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    214fa493acd0:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa493acd4:	45 03 df                                        	add    r11d,r15d
    214fa493acd7:	83 bd 80 fd ff ff 0f                            	cmp    DWORD PTR [rbp-0x280],0xf
    214fa493acde:	0f 84 b9 00 00 00                               	je     0x214fa493ad9d
    214fa493ace4:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    214fa493aceb:	41 83 e7 01                                     	and    r15d,0x1
    214fa493acef:	41 f7 df                                        	neg    r15d
    214fa493acf2:	c4 c1 79 6e ef                                  	vmovd  xmm5,r15d
    214fa493acf7:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    214fa493acfc:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    214fa493ad03:	41 c1 e7 1e                                     	shl    r15d,0x1e
    214fa493ad07:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa493ad0b:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    214fa493ad11:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    214fa493ad18:	41 c1 e7 1d                                     	shl    r15d,0x1d
    214fa493ad1c:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa493ad20:	c4 c3 51 22 ef 02                               	vpinsrd xmm5,xmm5,r15d,0x2
    214fa493ad26:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    214fa493ad2d:	41 c1 e7 1c                                     	shl    r15d,0x1c
    214fa493ad31:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa493ad35:	c4 c3 51 22 ef 03                               	vpinsrd xmm5,xmm5,r15d,0x3
    214fa493ad3b:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    214fa493ad40:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    214fa493ad46:	0f 84 39 00 00 00                               	je     0x214fa493ad85
    214fa493ad4c:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    214fa493ad51:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    214fa493ad57:	0f 84 28 00 00 00                               	je     0x214fa493ad85
    214fa493ad5d:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa493ad62:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    214fa493ad66:	c4 a1 7a 6f 34 0f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1]
    214fa493ad6c:	c4 a1 7a 6f 3c 27                               	vmovdqu xmm7,XMMWORD PTR [rdi+r12*1]
    214fa493ad72:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    214fa493ad76:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    214fa493ad7a:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa493ad7f:	c4 a1 7a 7f 34 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm6
    214fa493ad85:	c4 a1 7a 6f 34 1f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r11*1]
    214fa493ad8b:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    214fa493ad8f:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa493ad93:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493ad98:	e9 37 00 00 00                                  	jmp    0x214fa493add4
    214fa493ad9d:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    214fa493ada2:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    214fa493ada8:	0f 84 26 00 00 00                               	je     0x214fa493add4
    214fa493adae:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    214fa493adb3:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    214fa493adb9:	0f 84 15 00 00 00                               	je     0x214fa493add4
    214fa493adbf:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa493adc4:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    214fa493adc8:	c4 a1 7a 6f 2c 0f                               	vmovdqu xmm5,XMMWORD PTR [rdi+r9*1]
    214fa493adce:	c4 a1 7a 7f 2c 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm5
    214fa493add4:	c4 a1 7a 7f 04 1f                               	vmovdqu XMMWORD PTR [rdi+r11*1],xmm0
    214fa493adda:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    214fa493addf:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    214fa493ade5:	0f 84 e9 0f 00 00                               	je     0x214fa493bdd4
    214fa493adeb:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    214fa493adf0:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    214fa493adf6:	0f 84 d8 0f 00 00                               	je     0x214fa493bdd4
    214fa493adfc:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    214fa493ae01:	42 83 7c 07 14 04                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x4
    214fa493ae07:	0f 85 c7 0f 00 00                               	jne    0x214fa493bdd4
    214fa493ae0d:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    214fa493ae12:	45 85 db                                        	test   r11d,r11d
    214fa493ae15:	0f 84 b9 0f 00 00                               	je     0x214fa493bdd4
    214fa493ae1b:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    214fa493ae1f:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    214fa493ae23:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    214fa493ae28:	0f 84 a6 0f 00 00                               	je     0x214fa493bdd4
    214fa493ae2e:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    214fa493ae32:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    214fa493ae36:	41 83 eb 3c                                     	sub    r11d,0x3c
    214fa493ae3a:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    214fa493ae3e:	44 8b fa                                        	mov    r15d,edx
    214fa493ae41:	41 c1 ef 02                                     	shr    r15d,0x2
    214fa493ae45:	45 0f af fb                                     	imul   r15d,r11d
    214fa493ae49:	41 c1 e7 04                                     	shl    r15d,0x4
    214fa493ae4d:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    214fa493ae51:	44 8b a5 00 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x500]
    214fa493ae58:	45 03 dc                                        	add    r11d,r12d
    214fa493ae5b:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    214fa493ae60:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    214fa493ae67:	33 c0                                           	xor    eax,eax
    214fa493ae69:	45 85 ff                                        	test   r15d,r15d
    214fa493ae6c:	0f 94 c0                                        	sete   al
    214fa493ae6f:	41 83 ff 02                                     	cmp    r15d,0x2
    214fa493ae73:	41 0f 94 c7                                     	sete   r15b
    214fa493ae77:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa493ae7b:	44 0b f8                                        	or     r15d,eax
    214fa493ae7e:	0f 85 0d 00 00 00                               	jne    0x214fa493ae91
    214fa493ae84:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    214fa493ae8c:	e9 43 0f 00 00                                  	jmp    0x214fa493bdd4
    214fa493ae91:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    214fa493ae98:	8b c2                                           	mov    eax,edx
    214fa493ae9a:	83 e0 03                                        	and    eax,0x3
    214fa493ae9d:	8b 9d f0 fa ff ff                               	mov    ebx,DWORD PTR [rbp-0x510]
    214fa493aea3:	0b d8                                           	or     ebx,eax
    214fa493aea5:	8d 04 9d 00 00 00 00                            	lea    eax,[rbx*4+0x0]
    214fa493aeac:	83 e0 3f                                        	and    eax,0x3f
    214fa493aeaf:	8b c8                                           	mov    ecx,eax
    214fa493aeb1:	49 d3 e7                                        	shl    r15,cl
    214fa493aeb4:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    214fa493aeb8:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa493aebc:	0f 84 5f 07 00 00                               	je     0x214fa493b621
    214fa493aec2:	49 0b c7                                        	or     rax,r15
    214fa493aec5:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    214fa493aec9:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa493aecd:	0f 85 01 0f 00 00                               	jne    0x214fa493bdd4
    214fa493aed3:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa493aed8:	8b c2                                           	mov    eax,edx
    214fa493aeda:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa493aedf:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    214fa493aee3:	8b cb                                           	mov    ecx,ebx
    214fa493aee5:	0f af 8d 78 fd ff ff                            	imul   ecx,DWORD PTR [rbp-0x288]
    214fa493aeec:	03 c8                                           	add    ecx,eax
    214fa493aeee:	c1 e1 04                                        	shl    ecx,0x4
    214fa493aef1:	41 03 cf                                        	add    ecx,r15d
    214fa493aef4:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa493aefa:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa493aeff:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa493af05:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa493af0a:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa493af0e:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa493af14:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa493af19:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa493af1e:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    214fa493af23:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa493af29:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa493af2e:	8b cb                                           	mov    ecx,ebx
    214fa493af30:	0f af 8d 10 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3f0]
    214fa493af37:	03 c8                                           	add    ecx,eax
    214fa493af39:	c1 e1 04                                        	shl    ecx,0x4
    214fa493af3c:	41 03 cf                                        	add    ecx,r15d
    214fa493af3f:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa493af45:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa493af4b:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa493af50:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa493af56:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa493af5c:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa493af61:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa493af67:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa493af6d:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa493af72:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    214fa493af77:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa493af7d:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa493af82:	8b cb                                           	mov    ecx,ebx
    214fa493af84:	0f af 8d 38 fb ff ff                            	imul   ecx,DWORD PTR [rbp-0x4c8]
    214fa493af8b:	03 c8                                           	add    ecx,eax
    214fa493af8d:	c1 e1 04                                        	shl    ecx,0x4
    214fa493af90:	41 03 cf                                        	add    ecx,r15d
    214fa493af93:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa493af99:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa493af9f:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa493afa4:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa493afaa:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa493afb0:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa493afb4:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa493afba:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa493afbf:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa493afc3:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    214fa493afc8:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa493afcd:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa493afd1:	0f af 9d e8 fb ff ff                            	imul   ebx,DWORD PTR [rbp-0x418]
    214fa493afd8:	03 c3                                           	add    eax,ebx
    214fa493afda:	c1 e0 04                                        	shl    eax,0x4
    214fa493afdd:	44 03 f8                                        	add    r15d,eax
    214fa493afe0:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    214fa493afe7:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa493afec:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa493aff0:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    214fa493aff7:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa493affc:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa493b001:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa493b005:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    214fa493b00c:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    214fa493b014:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa493b019:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa493b01d:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    214fa493b023:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    214fa493b02b:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa493b030:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa493b034:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa493b039:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa493b03e:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    214fa493b042:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa493b046:	0f 84 0e 00 00 00                               	je     0x214fa493b05a
    214fa493b04c:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    214fa493b055:	e9 7a 0d 00 00                                  	jmp    0x214fa493bdd4
    214fa493b05a:	49 ba 3c 00 00 00 3d 00 00 00                   	movabs r10,0x3d0000003c
    214fa493b064:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b069:	49 ba 3e 00 00 00 3f 00 00 00                   	movabs r10,0x3f0000003e
    214fa493b073:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b079:	49 ba 38 00 00 00 39 00 00 00                   	movabs r10,0x3900000038
    214fa493b083:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b088:	49 ba 3a 00 00 00 3b 00 00 00                   	movabs r10,0x3b0000003a
    214fa493b092:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b098:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa493b0a0:	49 ba 34 00 00 00 35 00 00 00                   	movabs r10,0x3500000034
    214fa493b0aa:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b0af:	49 ba 36 00 00 00 37 00 00 00                   	movabs r10,0x3700000036
    214fa493b0b9:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b0bf:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    214fa493b0c7:	49 ba 30 00 00 00 31 00 00 00                   	movabs r10,0x3100000030
    214fa493b0d1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b0d6:	49 ba 32 00 00 00 33 00 00 00                   	movabs r10,0x3300000032
    214fa493b0e0:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b0e6:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa493b0ee:	49 ba 2c 00 00 00 2d 00 00 00                   	movabs r10,0x2d0000002c
    214fa493b0f8:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b0fd:	49 ba 2e 00 00 00 2f 00 00 00                   	movabs r10,0x2f0000002e
    214fa493b107:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b10d:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    214fa493b115:	49 ba 28 00 00 00 29 00 00 00                   	movabs r10,0x2900000028
    214fa493b11f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b124:	49 ba 2a 00 00 00 2b 00 00 00                   	movabs r10,0x2b0000002a
    214fa493b12e:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b134:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    214fa493b13c:	49 ba 24 00 00 00 25 00 00 00                   	movabs r10,0x2500000024
    214fa493b146:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493b14b:	49 ba 26 00 00 00 27 00 00 00                   	movabs r10,0x2700000026
    214fa493b155:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493b15b:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa493b163:	49 ba 20 00 00 00 21 00 00 00                   	movabs r10,0x2100000020
    214fa493b16d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b172:	49 ba 22 00 00 00 23 00 00 00                   	movabs r10,0x2300000022
    214fa493b17c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b182:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    214fa493b18a:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    214fa493b194:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa493b199:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    214fa493b1a3:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa493b1a9:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    214fa493b1b1:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    214fa493b1bb:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b1c0:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    214fa493b1ca:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b1d0:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    214fa493b1d8:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    214fa493b1e2:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa493b1e7:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    214fa493b1f1:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa493b1f7:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    214fa493b1ff:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    214fa493b209:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493b20e:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    214fa493b218:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493b21e:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    214fa493b226:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    214fa493b230:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa493b235:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    214fa493b23f:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa493b245:	c5 f8 11 85 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm0
    214fa493b24d:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    214fa493b257:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b25c:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    214fa493b266:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b26c:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    214fa493b274:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    214fa493b27e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493b283:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    214fa493b28d:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa493b293:	c5 78 11 8d 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm9
    214fa493b29b:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa493b2a0:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa493b2a6:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa493b2ac:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    214fa493b2b6:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa493b2bc:	c5 78 11 ad 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm13
    214fa493b2c4:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    214fa493b2ce:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa493b2d3:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa493b2d8:	c5 f8 11 bd 90 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x370],xmm7
    214fa493b2e0:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa493b2e5:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa493b2eb:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa493b2f0:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa493b2f5:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa493b2f9:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa493b2fe:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x214fa493b2c6
    214fa493b305:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa493b30a:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa493b30f:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa493b314:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa493b318:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa493b31d:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa493b322:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa493b327:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa493b32b:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa493b330:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa493b334:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa493b338:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b33d:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa493b342:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa493b347:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa493b34b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b350:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493b354:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa493b358:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b35d:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa493b362:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493b366:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa493b36a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b36f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493b373:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa493b377:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b37c:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa493b381:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493b385:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa493b389:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b38e:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493b392:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa493b396:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b39b:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa493b3a0:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493b3a4:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa493b3a8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b3ad:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493b3b1:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa493b3b5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b3ba:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa493b3c0:	c5 f8 10 bd 90 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x370]
    214fa493b3c8:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493b3cc:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa493b3d0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b3d5:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493b3d9:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa493b3dd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b3e2:	c5 f8 10 b5 50 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1b0]
    214fa493b3ea:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b3ef:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    214fa493b3f7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b3fb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b3ff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b404:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b408:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b40c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b411:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa493b419:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b41e:	c5 78 10 85 20 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1e0]
    214fa493b426:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b42a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b42e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b433:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b437:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b43b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b440:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa493b448:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b44d:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa493b455:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b459:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b45d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b462:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b466:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b46a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b46f:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa493b477:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b47c:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa493b484:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b488:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b48c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b491:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b495:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b499:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b49e:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa493b4a6:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b4ab:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa493b4b3:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b4b7:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b4bb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b4c0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b4c4:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b4c8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b4cd:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa493b4d5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b4da:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa493b4e2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b4e6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b4ea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b4ef:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b4f3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b4f7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b4fc:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa493b504:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b509:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa493b511:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b515:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b519:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b51e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b522:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b526:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b52b:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa493b533:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b538:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa493b540:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b544:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b548:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b54d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b551:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493b555:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493b55a:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa493b55f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493b564:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa493b56c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493b570:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493b574:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b579:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493b583:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493b587:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa493b58b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493b590:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    214fa493b59a:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa493b59e:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa493b5a2:	45 33 ff                                        	xor    r15d,r15d
    214fa493b5a5:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa493b5a9:	41 0f 97 c7                                     	seta   r15b
    214fa493b5ad:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    214fa493b5b4:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    214fa493b5bc:	0b d8                                           	or     ebx,eax
    214fa493b5be:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    214fa493b5c3:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa493b5c8:	bb 02 00 00 00                                  	mov    ebx,0x2
    214fa493b5cd:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493b5d1:	44 0f 47 fb                                     	cmova  r15d,ebx
    214fa493b5d5:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    214fa493b5dd:	0b c8                                           	or     ecx,eax
    214fa493b5df:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    214fa493b5e4:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa493b5e9:	be 03 00 00 00                                  	mov    esi,0x3
    214fa493b5ee:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa493b5f2:	44 0f 47 fe                                     	cmova  r15d,esi
    214fa493b5f6:	41 c1 e7 02                                     	shl    r15d,0x2
    214fa493b5fa:	41 0b c7                                        	or     eax,r15d
    214fa493b5fd:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    214fa493b602:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    214fa493b609:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    214fa493b610:	44 0b f8                                        	or     r15d,eax
    214fa493b613:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    214fa493b617:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    214fa493b61c:	e9 b3 07 00 00                                  	jmp    0x214fa493bdd4
    214fa493b621:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    214fa493b626:	8b d8                                           	mov    ebx,eax
    214fa493b628:	83 e3 3f                                        	and    ebx,0x3f
    214fa493b62b:	8b cb                                           	mov    ecx,ebx
    214fa493b62d:	49 d3 ef                                        	shr    r15,cl
    214fa493b630:	41 f6 c7 01                                     	test   r15b,0x1
    214fa493b634:	0f 84 9a 07 00 00                               	je     0x214fa493bdd4
    214fa493b63a:	83 e0 03                                        	and    eax,0x3
    214fa493b63d:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    214fa493b645:	45 0b f9                                        	or     r15d,r9d
    214fa493b648:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    214fa493b64e:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    214fa493b655:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    214fa493b659:	0f 86 75 07 00 00                               	jbe    0x214fa493bdd4
    214fa493b65f:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa493b664:	8b c2                                           	mov    eax,edx
    214fa493b666:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa493b66b:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    214fa493b66f:	8b 8d 78 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x288]
    214fa493b675:	0f af cb                                        	imul   ecx,ebx
    214fa493b678:	03 c8                                           	add    ecx,eax
    214fa493b67a:	c1 e1 04                                        	shl    ecx,0x4
    214fa493b67d:	41 03 cf                                        	add    ecx,r15d
    214fa493b680:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa493b686:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa493b68b:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa493b691:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa493b696:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa493b69a:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa493b6a0:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa493b6a5:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa493b6aa:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    214fa493b6af:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa493b6b5:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa493b6ba:	8b 8d 10 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3f0]
    214fa493b6c0:	0f af cb                                        	imul   ecx,ebx
    214fa493b6c3:	03 c8                                           	add    ecx,eax
    214fa493b6c5:	c1 e1 04                                        	shl    ecx,0x4
    214fa493b6c8:	41 03 cf                                        	add    ecx,r15d
    214fa493b6cb:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa493b6d1:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa493b6d7:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa493b6dc:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa493b6e2:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa493b6e8:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa493b6ed:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa493b6f3:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa493b6f9:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa493b6fe:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    214fa493b703:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa493b709:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa493b70e:	8b 8d 38 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4c8]
    214fa493b714:	0f af cb                                        	imul   ecx,ebx
    214fa493b717:	03 c8                                           	add    ecx,eax
    214fa493b719:	c1 e1 04                                        	shl    ecx,0x4
    214fa493b71c:	41 03 cf                                        	add    ecx,r15d
    214fa493b71f:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa493b725:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa493b72b:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa493b730:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa493b736:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa493b73c:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa493b740:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa493b746:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa493b74b:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa493b74f:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    214fa493b754:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa493b759:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa493b75d:	8b 8d e8 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x418]
    214fa493b763:	0f af cb                                        	imul   ecx,ebx
    214fa493b766:	03 c1                                           	add    eax,ecx
    214fa493b768:	c1 e0 04                                        	shl    eax,0x4
    214fa493b76b:	44 03 f8                                        	add    r15d,eax
    214fa493b76e:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    214fa493b775:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa493b77a:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa493b77e:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    214fa493b785:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa493b78a:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa493b78f:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa493b793:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    214fa493b79a:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    214fa493b7a2:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa493b7a7:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa493b7ab:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    214fa493b7b1:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    214fa493b7b9:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa493b7be:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa493b7c2:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa493b7c7:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa493b7cc:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    214fa493b7d0:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa493b7d4:	0f 84 0e 00 00 00                               	je     0x214fa493b7e8
    214fa493b7da:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    214fa493b7e3:	e9 ec 05 00 00                                  	jmp    0x214fa493bdd4
    214fa493b7e8:	4c 8b 15 6d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff86d]        # 0x214fa493b05c
    214fa493b7ef:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b7f4:	4c 8b 15 70 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff870]        # 0x214fa493b06b
    214fa493b7fb:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b801:	4c 8b 15 73 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff873]        # 0x214fa493b07b
    214fa493b808:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b80d:	4c 8b 15 76 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff876]        # 0x214fa493b08a
    214fa493b814:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b81a:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa493b822:	4c 8b 15 79 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff879]        # 0x214fa493b0a2
    214fa493b829:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b82e:	4c 8b 15 7c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87c]        # 0x214fa493b0b1
    214fa493b835:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b83b:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    214fa493b843:	4c 8b 15 7f f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87f]        # 0x214fa493b0c9
    214fa493b84a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b84f:	4c 8b 15 82 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff882]        # 0x214fa493b0d8
    214fa493b856:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b85c:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa493b864:	4c 8b 15 85 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff885]        # 0x214fa493b0f0
    214fa493b86b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b870:	4c 8b 15 88 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff888]        # 0x214fa493b0ff
    214fa493b877:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b87d:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    214fa493b885:	4c 8b 15 8b f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88b]        # 0x214fa493b117
    214fa493b88c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b891:	4c 8b 15 8e f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88e]        # 0x214fa493b126
    214fa493b898:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b89e:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    214fa493b8a6:	4c 8b 15 91 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff891]        # 0x214fa493b13e
    214fa493b8ad:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493b8b2:	4c 8b 15 94 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff894]        # 0x214fa493b14d
    214fa493b8b9:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493b8bf:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa493b8c7:	4c 8b 15 97 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff897]        # 0x214fa493b165
    214fa493b8ce:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b8d3:	4c 8b 15 9a f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89a]        # 0x214fa493b174
    214fa493b8da:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b8e0:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    214fa493b8e8:	4c 8b 15 9d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89d]        # 0x214fa493b18c
    214fa493b8ef:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa493b8f4:	4c 8b 15 a0 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a0]        # 0x214fa493b19b
    214fa493b8fb:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa493b901:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    214fa493b909:	4c 8b 15 a3 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a3]        # 0x214fa493b1b3
    214fa493b910:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493b915:	4c 8b 15 a6 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a6]        # 0x214fa493b1c2
    214fa493b91c:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493b922:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    214fa493b92a:	4c 8b 15 a9 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a9]        # 0x214fa493b1da
    214fa493b931:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa493b936:	4c 8b 15 ac f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ac]        # 0x214fa493b1e9
    214fa493b93d:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa493b943:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    214fa493b94b:	4c 8b 15 af f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8af]        # 0x214fa493b201
    214fa493b952:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493b957:	4c 8b 15 b2 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b2]        # 0x214fa493b210
    214fa493b95e:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493b964:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    214fa493b96c:	4c 8b 15 b5 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b5]        # 0x214fa493b228
    214fa493b973:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa493b978:	4c 8b 15 b8 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b8]        # 0x214fa493b237
    214fa493b97f:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa493b985:	c5 f8 11 85 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm0
    214fa493b98d:	4c 8b 15 bb f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8bb]        # 0x214fa493b24f
    214fa493b994:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493b999:	4c 8b 15 be f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8be]        # 0x214fa493b25e
    214fa493b9a0:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493b9a6:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    214fa493b9ae:	4c 8b 15 c1 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c1]        # 0x214fa493b276
    214fa493b9b5:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493b9ba:	4c 8b 15 c4 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c4]        # 0x214fa493b285
    214fa493b9c1:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa493b9c7:	c5 78 11 8d 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm9
    214fa493b9cf:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa493b9d4:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa493b9da:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa493b9e0:	4c 8b 15 c7 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c7]        # 0x214fa493b2ae
    214fa493b9e7:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa493b9ed:	c5 78 11 ad 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm13
    214fa493b9f5:	4c 8b 15 ca f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ca]        # 0x214fa493b2c6
    214fa493b9fc:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa493ba01:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa493ba06:	c5 f8 11 bd a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm7
    214fa493ba0e:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa493ba13:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa493ba19:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa493ba1e:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa493ba23:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa493ba27:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa493ba2c:	4c 8b 15 93 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff893]        # 0x214fa493b2c6
    214fa493ba33:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa493ba38:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa493ba3d:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa493ba42:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa493ba46:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa493ba4b:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa493ba50:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa493ba55:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa493ba59:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa493ba5e:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa493ba62:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa493ba66:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493ba6b:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa493ba70:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa493ba75:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa493ba79:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493ba7e:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493ba82:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa493ba86:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493ba8b:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa493ba90:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493ba94:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa493ba98:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493ba9d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493baa1:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa493baa5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493baaa:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa493baaf:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493bab3:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa493bab7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493babc:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493bac0:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa493bac4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bac9:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa493bace:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493bad2:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa493bad6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493badb:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493badf:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa493bae3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bae8:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa493baee:	c5 f8 10 bd a0 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x360]
    214fa493baf6:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493bafa:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa493bafe:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bb03:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493bb07:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa493bb0b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bb10:	c5 f8 10 b5 20 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1e0]
    214fa493bb18:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bb1d:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    214fa493bb25:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bb29:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bb2d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bb32:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bb36:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bb3a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bb3f:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa493bb47:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bb4c:	c5 78 10 85 50 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1b0]
    214fa493bb54:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bb58:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bb5c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bb61:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bb65:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bb69:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bb6e:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa493bb76:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bb7b:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa493bb83:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bb87:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bb8b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bb90:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bb94:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bb98:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bb9d:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa493bba5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bbaa:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa493bbb2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bbb6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bbba:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bbbf:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bbc3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bbc7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bbcc:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa493bbd4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bbd9:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa493bbe1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bbe5:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bbe9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bbee:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bbf2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bbf6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bbfb:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa493bc03:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bc08:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa493bc10:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bc14:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bc18:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bc1d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bc21:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bc25:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bc2a:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa493bc32:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bc37:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa493bc3f:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bc43:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bc47:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bc4c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bc50:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bc54:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bc59:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa493bc61:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bc66:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa493bc6e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bc72:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bc76:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bc7b:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bc7f:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493bc83:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493bc88:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa493bc8d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493bc92:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa493bc9a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493bc9e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493bca2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bca7:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa493bcb1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493bcb5:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa493bcb9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493bcbe:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    214fa493bcc8:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa493bccc:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa493bcd0:	45 33 ff                                        	xor    r15d,r15d
    214fa493bcd3:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa493bcd7:	41 0f 97 c7                                     	seta   r15b
    214fa493bcdb:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    214fa493bce2:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    214fa493bcea:	0b d8                                           	or     ebx,eax
    214fa493bcec:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    214fa493bcf1:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa493bcf6:	bb 02 00 00 00                                  	mov    ebx,0x2
    214fa493bcfb:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493bcff:	44 0f 47 fb                                     	cmova  r15d,ebx
    214fa493bd03:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    214fa493bd0b:	0b c8                                           	or     ecx,eax
    214fa493bd0d:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    214fa493bd12:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa493bd17:	b9 03 00 00 00                                  	mov    ecx,0x3
    214fa493bd1c:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa493bd20:	44 0f 47 f9                                     	cmova  r15d,ecx
    214fa493bd24:	41 c1 e7 02                                     	shl    r15d,0x2
    214fa493bd28:	41 0b c7                                        	or     eax,r15d
    214fa493bd2b:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    214fa493bd30:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    214fa493bd37:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    214fa493bd3e:	44 0b f8                                        	or     r15d,eax
    214fa493bd41:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    214fa493bd45:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    214fa493bd4a:	e9 85 00 00 00                                  	jmp    0x214fa493bdd4
    214fa493bd4f:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    214fa493bd56:	41 53                                           	push   r11
    214fa493bd58:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493bd5c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa493bd5f:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493bd65:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa493bd68:	8b 9d 80 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x280]
    214fa493bd6e:	e8 fd c4 ee ff                                  	call   0x214fa4828270
    214fa493bd73:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493bd77:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493bd7b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa493bd7f:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493bd85:	e9 4a 00 00 00                                  	jmp    0x214fa493bdd4
    214fa493bd8a:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    214fa493bd91:	41 53                                           	push   r11
    214fa493bd93:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493bd97:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa493bd9a:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493bda0:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa493bda3:	8b 9d 80 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x280]
    214fa493bda9:	e8 aa c4 ee ff                                  	call   0x214fa4828258
    214fa493bdae:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa493bdb2:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa493bdb6:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa493bdba:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493bdc0:	e9 0f 00 00 00                                  	jmp    0x214fa493bdd4
    214fa493bdc5:	44 8b cf                                        	mov    r9d,edi
    214fa493bdc8:	49 8b f8                                        	mov    rdi,r8
    214fa493bdcb:	4d 8b c4                                        	mov    r8,r12
    214fa493bdce:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    214fa493bdd4:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    214fa493bddc:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    214fa493bde7:	4c 8b c7                                        	mov    r8,rdi
    214fa493bdea:	41 8b f9                                        	mov    edi,r9d
    214fa493bded:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa493bdf1:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    214fa493bdf9:	44 8b da                                        	mov    r11d,edx
    214fa493bdfc:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    214fa493be03:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    214fa493be0a:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    214fa493be12:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    214fa493be1a:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa493be22:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    214fa493be2a:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa493be32:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa493be3a:	e9 a5 41 00 00                                  	jmp    0x214fa493ffe4
    214fa493be3f:	45 8b 64 38 18                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x18]
    214fa493be44:	41 8d 5c 24 01                                  	lea    ebx,[r12+0x1]
    214fa493be49:	41 89 5c 38 18                                  	mov    DWORD PTR [r8+rdi*1+0x18],ebx
    214fa493be4e:	8b 9d d0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x330]
    214fa493be54:	42 8d 14 a3                                     	lea    edx,[rbx+r12*4]
    214fa493be58:	8b 9d 50 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3b0]
    214fa493be5e:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    214fa493be62:	42 8d 54 a7 2c                                  	lea    edx,[rdi+r12*4+0x2c]
    214fa493be67:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    214fa493be6a:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    214fa493be6e:	42 8d 54 a7 3c                                  	lea    edx,[rdi+r12*4+0x3c]
    214fa493be73:	45 89 3c 10                                     	mov    DWORD PTR [r8+rdx*1],r15d
    214fa493be77:	46 8d 7c e7 50                                  	lea    r15d,[rdi+r12*8+0x50]
    214fa493be7c:	4b 89 0c 38                                     	mov    QWORD PTR [r8+r15*1],rcx
    214fa493be80:	46 8d 7c e7 70                                  	lea    r15d,[rdi+r12*8+0x70]
    214fa493be85:	4f 89 1c 38                                     	mov    QWORD PTR [r8+r15*1],r11
    214fa493be89:	41 c1 e4 04                                     	shl    r12d,0x4
    214fa493be8d:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    214fa493be94:	45 03 e3                                        	add    r12d,r11d
    214fa493be97:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    214fa493be9d:	c4 81 7a 7f 04 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm0
    214fa493bea3:	45 8b 64 38 18                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x18]
    214fa493bea8:	41 83 7c 38 18 04                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x4
    214fa493beae:	0f 84 3d 00 00 00                               	je     0x214fa493bef1
    214fa493beb4:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    214fa493bebc:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    214fa493bec7:	44 8b 9d 50 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3b0]
    214fa493bece:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    214fa493bed5:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    214fa493bedc:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    214fa493bee4:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa493beec:	e9 f3 40 00 00                                  	jmp    0x214fa493ffe4
    214fa493bef1:	c4 c1 7a 6f 44 38 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x50]
    214fa493bef8:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    214fa493befe:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    214fa493bf03:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa493bf08:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    214fa493bf0e:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    214fa493bf13:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    214fa493bf19:	c4 c1 7a 6f 44 38 60                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x60]
    214fa493bf20:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    214fa493bf26:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    214fa493bf2b:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    214fa493bf31:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    214fa493bf37:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    214fa493bf3c:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    214fa493bf42:	c5 f8 10 85 00 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x300]
    214fa493bf4a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    214fa493bf4f:	4d 8d 60 1c                                     	lea    r12,[r8+0x1c]
    214fa493bf53:	4c 8b f8                                        	mov    r15,rax
    214fa493bf56:	c4 02 79 18 1c 3c                               	vbroadcastss xmm11,DWORD PTR [r12+r15*1]
    214fa493bf5c:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    214fa493bf61:	c4 41 7a 6f 6c 38 70                            	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x70]
    214fa493bf68:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    214fa493bf6e:	c4 61 82 2a f0                                  	vcvtsi2ss xmm14,xmm15,rax
    214fa493bf73:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    214fa493bf78:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    214fa493bf7e:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    214fa493bf83:	c4 43 09 21 f5 10                               	vinsertps xmm14,xmm14,xmm13,0x10
    214fa493bf89:	c4 41 7a 6f ac 38 80 00 00 00                   	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x80]
    214fa493bf93:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    214fa493bf99:	c4 e1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,rax
    214fa493bf9e:	c4 63 09 21 f4 20                               	vinsertps xmm14,xmm14,xmm4,0x20
    214fa493bfa4:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    214fa493bfaa:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    214fa493bfaf:	c4 43 09 21 f5 30                               	vinsertps xmm14,xmm14,xmm13,0x30
    214fa493bfb5:	c4 41 78 59 ee                                  	vmulps xmm13,xmm0,xmm14
    214fa493bfba:	48 8b c6                                        	mov    rax,rsi
    214fa493bfbd:	c4 42 79 18 34 04                               	vbroadcastss xmm14,DWORD PTR [r12+rax*1]
    214fa493bfc3:	c4 41 10 59 f6                                  	vmulps xmm14,xmm13,xmm14
    214fa493bfc8:	c4 c1 20 58 e6                                  	vaddps xmm4,xmm11,xmm14
    214fa493bfcd:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    214fa493bfd2:	c4 41 30 5c cd                                  	vsubps xmm9,xmm9,xmm13
    214fa493bfd7:	49 8b d1                                        	mov    rdx,r9
    214fa493bfda:	c4 42 79 18 2c 14                               	vbroadcastss xmm13,DWORD PTR [r12+rdx*1]
    214fa493bfe0:	c4 41 30 59 cd                                  	vmulps xmm9,xmm9,xmm13
    214fa493bfe5:	c4 41 58 58 e9                                  	vaddps xmm13,xmm4,xmm9
    214fa493bfea:	c5 90 c2 e5 02                                  	vcmpleps xmm4,xmm13,xmm5
    214fa493bfef:	c5 78 50 e4                                     	vmovmskps r12d,xmm4
    214fa493bff3:	41 8b f4                                        	mov    esi,r12d
    214fa493bff6:	83 f6 0f                                        	xor    esi,0xf
    214fa493bff9:	c5 78 11 a5 c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm12
    214fa493c001:	c5 78 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm10
    214fa493c009:	c5 f8 11 ad a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm5
    214fa493c011:	48 89 b5 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],rsi
    214fa493c018:	41 83 fc 0f                                     	cmp    r12d,0xf
    214fa493c01c:	0f 84 4c 2c 00 00                               	je     0x214fa493ec6e
    214fa493c022:	c4 41 18 5e ed                                  	vdivps xmm13,xmm12,xmm13
    214fa493c027:	49 8d 48 2c                                     	lea    rcx,[r8+0x2c]
    214fa493c02b:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa493c031:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493c035:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa493c03b:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa493c03f:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa493c043:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa493c049:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493c04d:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa493c051:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa493c055:	49 8d 48 28                                     	lea    rcx,[r8+0x28]
    214fa493c059:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa493c05f:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493c063:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa493c068:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa493c06e:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa493c072:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa493c076:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa493c07c:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493c080:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa493c084:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa493c088:	49 8d 48 24                                     	lea    rcx,[r8+0x24]
    214fa493c08c:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa493c092:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493c096:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    214fa493c09e:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa493c0a4:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa493c0a8:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa493c0ac:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa493c0b2:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493c0b6:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa493c0ba:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa493c0be:	49 8d 48 20                                     	lea    rcx,[r8+0x20]
    214fa493c0c2:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa493c0c8:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493c0cc:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa493c0d4:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa493c0da:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa493c0de:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa493c0e2:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa493c0e8:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493c0ec:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa493c0f0:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa493c0f4:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    214fa493c0fb:	43 8b 8c 08 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x134]
    214fa493c103:	83 e9 01                                        	sub    ecx,0x1
    214fa493c106:	83 f9 01                                        	cmp    ecx,0x1
    214fa493c109:	0f 86 15 17 00 00                               	jbe    0x214fa493d824
    214fa493c10f:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    214fa493c117:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    214fa493c120:	0f 85 1f 00 00 00                               	jne    0x214fa493c145
    214fa493c126:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    214fa493c12b:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    214fa493c133:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa493c13b:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa493c140:	e9 77 2a 00 00                                  	jmp    0x214fa493ebbc
    214fa493c145:	8b ce                                           	mov    ecx,esi
    214fa493c147:	83 e1 04                                        	and    ecx,0x4
    214fa493c14a:	44 8b de                                        	mov    r11d,esi
    214fa493c14d:	41 83 e3 02                                     	and    r11d,0x2
    214fa493c151:	44 8b fe                                        	mov    r15d,esi
    214fa493c154:	41 83 e7 01                                     	and    r15d,0x1
    214fa493c158:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa493c160:	4c 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r9
    214fa493c167:	c5 78 11 ad 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm13
    214fa493c16f:	c5 78 11 8d 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm9
    214fa493c177:	c5 78 11 b5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm14
    214fa493c17f:	c5 78 11 9d 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm11
    214fa493c187:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    214fa493c18e:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    214fa493c195:	4c 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r11
    214fa493c19c:	4c 89 bd b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r15
    214fa493c1a3:	45 33 db                                        	xor    r11d,r11d
    214fa493c1a6:	e9 34 00 00 00                                  	jmp    0x214fa493c1df
    214fa493c1ab:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493c1b4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493c1bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    214fa493c1c0:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    214fa493c1c8:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    214fa493c1d0:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    214fa493c1d7:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493c1df:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    214fa493c1e6:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    214fa493c1ec:	8b 9d f8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x308]
    214fa493c1f2:	8b 95 f0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x310]
    214fa493c1f8:	4c 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r11
    214fa493c1ff:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa493c204:	0f 85 d9 5f 00 00                               	jne    0x214fa49421e3
    214fa493c20a:	43 8b b4 08 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r9*1+0x13c]
    214fa493c212:	41 8b cb                                        	mov    ecx,r11d
    214fa493c215:	d3 ee                                           	shr    esi,cl
    214fa493c217:	40 f6 c6 01                                     	test   sil,0x1
    214fa493c21b:	0f 85 2e 00 00 00                               	jne    0x214fa493c24f
    214fa493c221:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa493c227:	41 8b f3                                        	mov    esi,r11d
    214fa493c22a:	c1 e6 06                                        	shl    esi,0x6
    214fa493c22d:	03 ce                                           	add    ecx,esi
    214fa493c22f:	c4 41 7a 7f 64 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm12
    214fa493c236:	c4 41 7a 7f 64 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm12
    214fa493c23d:	c4 41 7a 7f 64 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm12
    214fa493c244:	c4 41 7a 7f 24 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm12
    214fa493c24a:	e9 6e 12 00 00                                  	jmp    0x214fa493d4bd
    214fa493c24f:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa493c255:	41 8b f3                                        	mov    esi,r11d
    214fa493c258:	c1 e6 06                                        	shl    esi,0x6
    214fa493c25b:	03 f1                                           	add    esi,ecx
    214fa493c25d:	41 6b cb 4c                                     	imul   ecx,r11d,0x4c
    214fa493c261:	41 03 cf                                        	add    ecx,r15d
    214fa493c264:	45 8b 5c 08 38                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x38]
    214fa493c269:	41 83 7c 08 38 00                               	cmp    DWORD PTR [r8+rcx*1+0x38],0x0
    214fa493c26f:	0f 85 02 12 00 00                               	jne    0x214fa493d477
    214fa493c275:	44 8b 9d 60 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1a0]
    214fa493c27c:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa493c280:	45 8d 3c 1b                                     	lea    r15d,[r11+rbx*1]
    214fa493c284:	49 8d 58 04                                     	lea    rbx,[r8+0x4]
    214fa493c288:	c4 a2 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [rbx+r15*1]
    214fa493c28e:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493c292:	46 8d 0c 18                                     	lea    r9d,[rax+r11*1]
    214fa493c296:	c4 a2 79 18 04 0b                               	vbroadcastss xmm0,DWORD PTR [rbx+r9*1]
    214fa493c29c:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa493c2a0:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa493c2a4:	44 03 da                                        	add    r11d,edx
    214fa493c2a7:	c4 a2 79 18 24 1b                               	vbroadcastss xmm4,DWORD PTR [rbx+r11*1]
    214fa493c2ad:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493c2b1:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa493c2b5:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa493c2b9:	c4 82 79 18 24 38                               	vbroadcastss xmm4,DWORD PTR [r8+r15*1]
    214fa493c2bf:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493c2c3:	c4 82 79 18 34 08                               	vbroadcastss xmm6,DWORD PTR [r8+r9*1]
    214fa493c2c9:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    214fa493c2cd:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    214fa493c2d1:	c4 82 79 18 24 18                               	vbroadcastss xmm4,DWORD PTR [r8+r11*1]
    214fa493c2d7:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493c2db:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    214fa493c2df:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    214fa493c2e3:	41 8b 1c 08                                     	mov    ebx,DWORD PTR [r8+rcx*1]
    214fa493c2e7:	83 fb 01                                        	cmp    ebx,0x1
    214fa493c2ea:	0f 85 8c 0e 00 00                               	jne    0x214fa493d17c
    214fa493c2f0:	41 8b 44 08 28                                  	mov    eax,DWORD PTR [r8+rcx*1+0x28]
    214fa493c2f5:	85 c0                                           	test   eax,eax
    214fa493c2f7:	0f 84 7f 0e 00 00                               	je     0x214fa493d17c
    214fa493c2fd:	41 8b 54 08 1c                                  	mov    edx,DWORD PTR [r8+rcx*1+0x1c]
    214fa493c302:	85 d2                                           	test   edx,edx
    214fa493c304:	0f 8e 72 0e 00 00                               	jle    0x214fa493d17c
    214fa493c30a:	41 8b 7c 08 20                                  	mov    edi,DWORD PTR [r8+rcx*1+0x20]
    214fa493c30f:	85 ff                                           	test   edi,edi
    214fa493c311:	0f 8e 62 0e 00 00                               	jle    0x214fa493d179
    214fa493c317:	44 8b d2                                        	mov    r10d,edx
    214fa493c31a:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    214fa493c31f:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    214fa493c324:	45 8b 5c 08 10                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x10]
    214fa493c329:	45 33 ff                                        	xor    r15d,r15d
    214fa493c32c:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    214fa493c333:	41 0f 95 c7                                     	setne  r15b
    214fa493c337:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    214fa493c33e:	41 0f 95 c3                                     	setne  r11b
    214fa493c342:	45 0f b6 db                                     	movzx  r11d,r11b
    214fa493c346:	48 89 b5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rsi
    214fa493c34d:	45 23 df                                        	and    r11d,r15d
    214fa493c350:	0f 85 0d 00 00 00                               	jne    0x214fa493c363
    214fa493c356:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493c35a:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    214fa493c35e:	e9 0a 00 00 00                                  	jmp    0x214fa493c36d
    214fa493c363:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    214fa493c369:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    214fa493c36d:	c5 d8 59 f6                                     	vmulps xmm6,xmm4,xmm6
    214fa493c371:	44 8b d7                                        	mov    r10d,edi
    214fa493c374:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    214fa493c379:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    214fa493c37e:	45 8b 7c 08 14                                  	mov    r15d,DWORD PTR [r8+rcx*1+0x14]
    214fa493c383:	33 db                                           	xor    ebx,ebx
    214fa493c385:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    214fa493c38c:	0f 95 c3                                        	setne  bl
    214fa493c38f:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    214fa493c396:	41 0f 95 c7                                     	setne  r15b
    214fa493c39a:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa493c39e:	44 23 fb                                        	and    r15d,ebx
    214fa493c3a1:	0f 85 0d 00 00 00                               	jne    0x214fa493c3b4
    214fa493c3a7:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493c3ab:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa493c3af:	e9 0a 00 00 00                                  	jmp    0x214fa493c3be
    214fa493c3b4:	c4 e3 79 08 e0 09                               	vroundps xmm4,xmm0,0x9
    214fa493c3ba:	c5 f8 5c c4                                     	vsubps xmm0,xmm0,xmm4
    214fa493c3be:	c5 c0 59 c0                                     	vmulps xmm0,xmm7,xmm0
    214fa493c3c2:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    214fa493c3cc:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493c3d1:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa493c3d5:	c5 f8 58 e7                                     	vaddps xmm4,xmm0,xmm7
    214fa493c3d9:	41 8b 5c 08 0c                                  	mov    ebx,DWORD PTR [r8+rcx*1+0xc]
    214fa493c3de:	33 db                                           	xor    ebx,ebx
    214fa493c3e0:	41 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+rcx*1+0xc],0x2600
    214fa493c3e9:	0f 94 c3                                        	sete   bl
    214fa493c3ec:	85 db                                           	test   ebx,ebx
    214fa493c3ee:	0f 85 69 00 00 00                               	jne    0x214fa493c45d
    214fa493c3f4:	c4 e3 79 08 c4 09                               	vroundps xmm0,xmm4,0x9
    214fa493c3fa:	4c 8b 15 54 ba ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffba54]        # 0x214fa4937e55
    214fa493c401:	c4 c1 78 54 2a                                  	vandps xmm5,xmm0,XMMWORD PTR [r10]
    214fa493c406:	4c 8b 15 73 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe873]        # 0x214fa493ac80
    214fa493c40d:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493c412:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa493c417:	c4 c1 50 c2 e8 01                               	vcmpltps xmm5,xmm5,xmm8
    214fa493c41d:	4c 8b 15 1a e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe81a]        # 0x214fa493ac3e
    214fa493c424:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa493c429:	c4 41 78 54 d7                                  	vandps xmm10,xmm0,xmm15
    214fa493c42e:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa493c434:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    214fa493c439:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    214fa493c43e:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    214fa493c442:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa493c446:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    214fa493c44a:	c4 c1 79 28 e2                                  	vmovapd xmm4,xmm10
    214fa493c44f:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    214fa493c454:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa493c458:	e9 49 00 00 00                                  	jmp    0x214fa493c4a6
    214fa493c45d:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    214fa493c463:	4c 8b 15 eb b9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb9eb]        # 0x214fa4937e55
    214fa493c46a:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    214fa493c46f:	4c 8b 15 0a e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe80a]        # 0x214fa493ac80
    214fa493c476:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa493c47b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa493c480:	c4 41 38 c2 c2 01                               	vcmpltps xmm8,xmm8,xmm10
    214fa493c486:	4c 8b 15 b1 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7b1]        # 0x214fa493ac3e
    214fa493c48d:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    214fa493c492:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    214fa493c497:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    214fa493c49d:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa493c4a1:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa493c4a6:	c4 e3 79 08 ee 09                               	vroundps xmm5,xmm6,0x9
    214fa493c4ac:	4c 8b 15 8b e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe78b]        # 0x214fa493ac3e
    214fa493c4b3:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    214fa493c4b8:	c4 c1 50 54 cf                                  	vandps xmm1,xmm5,xmm15
    214fa493c4bd:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    214fa493c4c3:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    214fa493c4c7:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    214fa493c4cc:	4c 8b 15 8e e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe78e]        # 0x214fa493ac61
    214fa493c4d3:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa493c4d8:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa493c4dc:	4c 8b 15 72 b9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb972]        # 0x214fa4937e55
    214fa493c4e3:	c4 c1 50 54 1a                                  	vandps xmm3,xmm5,XMMWORD PTR [r10]
    214fa493c4e8:	c4 41 60 c2 d2 01                               	vcmpltps xmm10,xmm3,xmm10
    214fa493c4ee:	c5 29 df fa                                     	vpandn xmm15,xmm10,xmm2
    214fa493c4f2:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    214fa493c4f7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa493c4fc:	44 8d 4a ff                                     	lea    r9d,[rdx-0x1]
    214fa493c500:	c4 c1 79 6e c9                                  	vmovd  xmm1,r9d
    214fa493c505:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa493c50a:	45 8b 4c 08 2c                                  	mov    r9d,DWORD PTR [r8+rcx*1+0x2c]
    214fa493c50f:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa493c513:	c4 e2 29 3d db                                  	vpmaxsd xmm3,xmm10,xmm3
    214fa493c518:	c4 e2 61 39 d9                                  	vpminsd xmm3,xmm3,xmm1
    214fa493c51d:	45 85 db                                        	test   r11d,r11d
    214fa493c520:	0f 84 60 00 00 00                               	je     0x214fa493c586
    214fa493c526:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    214fa493c52b:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa493c530:	c5 a9 db db                                     	vpand  xmm3,xmm10,xmm3
    214fa493c534:	45 85 c9                                        	test   r9d,r9d
    214fa493c537:	0f 85 49 00 00 00                               	jne    0x214fa493c586
    214fa493c53d:	c5 f9 6e da                                     	vmovd  xmm3,edx
    214fa493c541:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa493c546:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa493c54b:	c5 29 66 c9                                     	vpcmpgtd xmm9,xmm10,xmm1
    214fa493c54f:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    214fa493c553:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493c558:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa493c55d:	c4 41 11 66 ea                                  	vpcmpgtd xmm13,xmm13,xmm10
    214fa493c562:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    214fa493c567:	c4 41 61 db cd                                  	vpand  xmm9,xmm3,xmm13
    214fa493c56c:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa493c571:	c4 c1 29 fe d9                                  	vpaddd xmm3,xmm10,xmm9
    214fa493c576:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    214fa493c57e:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    214fa493c586:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    214fa493c58a:	c4 41 59 db c0                                  	vpand  xmm8,xmm4,xmm8
    214fa493c58f:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa493c594:	8d 77 ff                                        	lea    esi,[rdi-0x1]
    214fa493c597:	c5 f9 6e d6                                     	vmovd  xmm2,esi
    214fa493c59b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa493c5a0:	41 8b 4c 08 30                                  	mov    ecx,DWORD PTR [r8+rcx*1+0x30]
    214fa493c5a5:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    214fa493c5a9:	c4 e2 39 3d e4                                  	vpmaxsd xmm4,xmm8,xmm4
    214fa493c5ae:	c4 e2 59 39 e2                                  	vpminsd xmm4,xmm4,xmm2
    214fa493c5b3:	45 85 ff                                        	test   r15d,r15d
    214fa493c5b6:	0f 84 4f 00 00 00                               	je     0x214fa493c60b
    214fa493c5bc:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    214fa493c5c0:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa493c5c5:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    214fa493c5ca:	85 c9                                           	test   ecx,ecx
    214fa493c5cc:	0f 85 39 00 00 00                               	jne    0x214fa493c60b
    214fa493c5d2:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    214fa493c5d6:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa493c5db:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa493c5e0:	c5 39 66 ca                                     	vpcmpgtd xmm9,xmm8,xmm2
    214fa493c5e4:	c5 31 db cc                                     	vpand  xmm9,xmm9,xmm4
    214fa493c5e8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493c5ed:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa493c5f2:	c4 41 11 66 e8                                  	vpcmpgtd xmm13,xmm13,xmm8
    214fa493c5f7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    214fa493c5fc:	c4 41 59 db cd                                  	vpand  xmm9,xmm4,xmm13
    214fa493c601:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa493c606:	c4 c1 39 fe e1                                  	vpaddd xmm4,xmm8,xmm9
    214fa493c60b:	c5 79 6e ea                                     	vmovd  xmm13,edx
    214fa493c60f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa493c614:	c4 c2 59 40 e5                                  	vpmulld xmm4,xmm4,xmm13
    214fa493c619:	c5 59 fe cb                                     	vpaddd xmm9,xmm4,xmm3
    214fa493c61d:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    214fa493c623:	c4 63 79 16 ce 02                               	vpextrd esi,xmm9,0x2
    214fa493c629:	48 89 95 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rdx
    214fa493c630:	c4 63 79 16 ca 01                               	vpextrd edx,xmm9,0x1
    214fa493c636:	48 89 95 c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],rdx
    214fa493c63d:	c5 79 7e ca                                     	vmovd  edx,xmm9
    214fa493c641:	85 db                                           	test   ebx,ebx
    214fa493c643:	0f 85 4a 09 00 00                               	jne    0x214fa493cf93
    214fa493c649:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    214fa493c653:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa493c658:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa493c65d:	c4 41 29 fe d1                                  	vpaddd xmm10,xmm10,xmm9
    214fa493c662:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    214fa493c667:	c4 42 29 3d f6                                  	vpmaxsd xmm14,xmm10,xmm14
    214fa493c66c:	c4 62 09 39 f1                                  	vpminsd xmm14,xmm14,xmm1
    214fa493c671:	45 85 db                                        	test   r11d,r11d
    214fa493c674:	0f 84 48 00 00 00                               	je     0x214fa493c6c2
    214fa493c67a:	c4 41 79 6e f1                                  	vmovd  xmm14,r9d
    214fa493c67f:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    214fa493c684:	c4 41 29 db f6                                  	vpand  xmm14,xmm10,xmm14
    214fa493c689:	45 85 c9                                        	test   r9d,r9d
    214fa493c68c:	0f 85 30 00 00 00                               	jne    0x214fa493c6c2
    214fa493c692:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    214fa493c697:	c5 a9 66 c9                                     	vpcmpgtd xmm1,xmm10,xmm1
    214fa493c69b:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    214fa493c6a0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493c6a5:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    214fa493c6aa:	c4 41 09 66 f2                                  	vpcmpgtd xmm14,xmm14,xmm10
    214fa493c6af:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    214fa493c6b3:	c4 41 11 db f6                                  	vpand  xmm14,xmm13,xmm14
    214fa493c6b8:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    214fa493c6bd:	c4 41 29 fe f6                                  	vpaddd xmm14,xmm10,xmm14
    214fa493c6c2:	c4 41 39 fe c1                                  	vpaddd xmm8,xmm8,xmm9
    214fa493c6c7:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa493c6cc:	c4 42 39 3d d2                                  	vpmaxsd xmm10,xmm8,xmm10
    214fa493c6d1:	c4 62 29 39 d2                                  	vpminsd xmm10,xmm10,xmm2
    214fa493c6d6:	45 85 ff                                        	test   r15d,r15d
    214fa493c6d9:	0f 84 4d 00 00 00                               	je     0x214fa493c72c
    214fa493c6df:	c5 79 6e d1                                     	vmovd  xmm10,ecx
    214fa493c6e3:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa493c6e8:	c4 41 29 db d0                                  	vpand  xmm10,xmm10,xmm8
    214fa493c6ed:	85 c9                                           	test   ecx,ecx
    214fa493c6ef:	0f 85 37 00 00 00                               	jne    0x214fa493c72c
    214fa493c6f5:	c5 79 6e d7                                     	vmovd  xmm10,edi
    214fa493c6f9:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa493c6fe:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa493c702:	c5 b9 66 d2                                     	vpcmpgtd xmm2,xmm8,xmm2
    214fa493c706:	c4 c1 69 db d2                                  	vpand  xmm2,xmm2,xmm10
    214fa493c70b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493c710:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    214fa493c715:	c4 c1 71 66 c8                                  	vpcmpgtd xmm1,xmm1,xmm8
    214fa493c71a:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    214fa493c71e:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    214fa493c722:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa493c727:	c4 41 39 fe d2                                  	vpaddd xmm10,xmm8,xmm10
    214fa493c72c:	c4 42 29 40 c5                                  	vpmulld xmm8,xmm10,xmm13
    214fa493c731:	c5 39 fe d3                                     	vpaddd xmm10,xmm8,xmm3
    214fa493c735:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    214fa493c73c:	0f 85 da 00 00 00                               	jne    0x214fa493c81c
    214fa493c742:	c4 41 61 fe c9                                  	vpaddd xmm9,xmm3,xmm9
    214fa493c747:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    214fa493c74c:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    214fa493c751:	83 ff 0f                                        	cmp    edi,0xf
    214fa493c754:	0f 84 23 00 00 00                               	je     0x214fa493c77d
    214fa493c75a:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa493c75d:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493c761:	44 8b 9d c0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x340]
    214fa493c768:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    214fa493c76c:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493c770:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    214fa493c774:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493c778:	e9 05 01 00 00                                  	jmp    0x214fa493c882
    214fa493c77d:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    214fa493c780:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    214fa493c786:	44 8b 9d c0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x340]
    214fa493c78d:	42 8d 3c 98                                     	lea    edi,[rax+r11*4]
    214fa493c791:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    214fa493c797:	c4 41 39 6c c1                                  	vpunpcklqdq xmm8,xmm8,xmm9
    214fa493c79c:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa493c79f:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    214fa493c7a5:	8b bd 18 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x2e8]
    214fa493c7ab:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa493c7ae:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    214fa493c7b4:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    214fa493c7b9:	c4 41 38 c6 e9 dd                               	vshufps xmm13,xmm8,xmm9,0xdd
    214fa493c7bf:	c4 41 38 c6 c1 88                               	vshufps xmm8,xmm8,xmm9,0x88
    214fa493c7c5:	c4 c1 31 72 f2 02                               	vpslld xmm9,xmm10,0x2
    214fa493c7cb:	c5 79 7e cf                                     	vmovd  edi,xmm9
    214fa493c7cf:	03 f8                                           	add    edi,eax
    214fa493c7d1:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa493c7d7:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    214fa493c7dd:	03 f8                                           	add    edi,eax
    214fa493c7df:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    214fa493c7e5:	c4 41 29 6c d6                                  	vpunpcklqdq xmm10,xmm10,xmm14
    214fa493c7ea:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    214fa493c7f0:	03 f8                                           	add    edi,eax
    214fa493c7f2:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    214fa493c7f8:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    214fa493c7fe:	03 f8                                           	add    edi,eax
    214fa493c800:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    214fa493c806:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    214fa493c80b:	c4 41 28 c6 f1 dd                               	vshufps xmm14,xmm10,xmm9,0xdd
    214fa493c811:	c4 41 28 c6 c9 88                               	vshufps xmm9,xmm10,xmm9,0x88
    214fa493c817:	e9 6c 03 00 00                                  	jmp    0x214fa493cb88
    214fa493c81c:	83 bd b8 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x348],0x0
    214fa493c823:	0f 85 08 00 00 00                               	jne    0x214fa493c831
    214fa493c829:	45 33 ff                                        	xor    r15d,r15d
    214fa493c82c:	e9 07 00 00 00                                  	jmp    0x214fa493c838
    214fa493c831:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    214fa493c834:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa493c838:	83 bd b8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x248],0x0
    214fa493c83f:	0f 85 08 00 00 00                               	jne    0x214fa493c84d
    214fa493c845:	45 33 db                                        	xor    r11d,r11d
    214fa493c848:	e9 0d 00 00 00                                  	jmp    0x214fa493c85a
    214fa493c84d:	8b bd c0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x340]
    214fa493c853:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa493c856:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    214fa493c85a:	83 bd a8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x258],0x0
    214fa493c861:	0f 85 07 00 00 00                               	jne    0x214fa493c86e
    214fa493c867:	33 ff                                           	xor    edi,edi
    214fa493c869:	e9 07 00 00 00                                  	jmp    0x214fa493c875
    214fa493c86e:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa493c871:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493c875:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493c87c:	0f 82 53 00 00 00                               	jb     0x214fa493c8d5
    214fa493c882:	8b 9d 18 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2e8]
    214fa493c888:	8d 1c 98                                        	lea    ebx,[rax+rbx*4]
    214fa493c88b:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa493c88f:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    214fa493c893:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa493c898:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa493c89d:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    214fa493c8a4:	0f 85 3b 00 00 00                               	jne    0x214fa493c8e5
    214fa493c8aa:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    214fa493c8b0:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa493c8b4:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493c8b8:	c5 79 7e ca                                     	vmovd  edx,xmm9
    214fa493c8bc:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    214fa493c8bf:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa493c8c3:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    214fa493c8c9:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    214fa493c8cc:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa493c8d0:	e9 89 00 00 00                                  	jmp    0x214fa493c95e
    214fa493c8d5:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    214fa493c8d9:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa493c8de:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa493c8e3:	33 db                                           	xor    ebx,ebx
    214fa493c8e5:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    214fa493c8ec:	0f 85 07 00 00 00                               	jne    0x214fa493c8f9
    214fa493c8f2:	33 d2                                           	xor    edx,edx
    214fa493c8f4:	e9 0d 00 00 00                                  	jmp    0x214fa493c906
    214fa493c8f9:	c4 41 79 7e cf                                  	vmovd  r15d,xmm9
    214fa493c8fe:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa493c902:	43 8b 14 38                                     	mov    edx,DWORD PTR [r8+r15*1]
    214fa493c906:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    214fa493c90d:	0f 85 08 00 00 00                               	jne    0x214fa493c91b
    214fa493c913:	45 33 ff                                        	xor    r15d,r15d
    214fa493c916:	e9 0e 00 00 00                                  	jmp    0x214fa493c929
    214fa493c91b:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    214fa493c921:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa493c925:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493c929:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    214fa493c930:	0f 85 07 00 00 00                               	jne    0x214fa493c93d
    214fa493c936:	33 c9                                           	xor    ecx,ecx
    214fa493c938:	e9 0d 00 00 00                                  	jmp    0x214fa493c94a
    214fa493c93d:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    214fa493c943:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    214fa493c946:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa493c94a:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493c951:	0f 83 07 00 00 00                               	jae    0x214fa493c95e
    214fa493c957:	33 f6                                           	xor    esi,esi
    214fa493c959:	e9 0d 00 00 00                                  	jmp    0x214fa493c96b
    214fa493c95e:	c4 63 79 16 ce 03                               	vpextrd esi,xmm9,0x3
    214fa493c964:	8d 34 b0                                        	lea    esi,[rax+rsi*4]
    214fa493c967:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    214fa493c96b:	c4 43 11 22 cb 01                               	vpinsrd xmm9,xmm13,r11d,0x1
    214fa493c971:	c5 79 6e ea                                     	vmovd  xmm13,edx
    214fa493c975:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa493c97a:	c4 43 11 22 ef 01                               	vpinsrd xmm13,xmm13,r15d,0x1
    214fa493c980:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    214fa493c987:	0f 85 2d 00 00 00                               	jne    0x214fa493c9ba
    214fa493c98d:	c4 43 79 16 d3 01                               	vpextrd r11d,xmm10,0x1
    214fa493c993:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    214fa493c997:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493c99b:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    214fa493c9a0:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa493c9a4:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493c9a8:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    214fa493c9ae:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    214fa493c9b1:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa493c9b5:	e9 a2 00 00 00                                  	jmp    0x214fa493ca5c
    214fa493c9ba:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    214fa493c9c1:	0f 85 08 00 00 00                               	jne    0x214fa493c9cf
    214fa493c9c7:	45 33 ff                                        	xor    r15d,r15d
    214fa493c9ca:	e9 0d 00 00 00                                  	jmp    0x214fa493c9dc
    214fa493c9cf:	c4 41 79 7e d3                                  	vmovd  r11d,xmm10
    214fa493c9d4:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    214fa493c9d8:	47 8b 3c 18                                     	mov    r15d,DWORD PTR [r8+r11*1]
    214fa493c9dc:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    214fa493c9e3:	0f 85 08 00 00 00                               	jne    0x214fa493c9f1
    214fa493c9e9:	45 33 db                                        	xor    r11d,r11d
    214fa493c9ec:	e9 0e 00 00 00                                  	jmp    0x214fa493c9ff
    214fa493c9f1:	c4 43 79 16 d3 01                               	vpextrd r11d,xmm10,0x1
    214fa493c9f7:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    214fa493c9fb:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493c9ff:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    214fa493ca06:	0f 85 07 00 00 00                               	jne    0x214fa493ca13
    214fa493ca0c:	33 d2                                           	xor    edx,edx
    214fa493ca0e:	e9 0d 00 00 00                                  	jmp    0x214fa493ca20
    214fa493ca13:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    214fa493ca19:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    214fa493ca1c:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa493ca20:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493ca27:	0f 83 2f 00 00 00                               	jae    0x214fa493ca5c
    214fa493ca2d:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    214fa493ca33:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    214fa493ca39:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    214fa493ca3e:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa493ca43:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa493ca48:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    214fa493ca4e:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    214fa493ca54:	45 33 c9                                        	xor    r9d,r9d
    214fa493ca57:	e9 6f 00 00 00                                  	jmp    0x214fa493cacb
    214fa493ca5c:	c4 43 79 16 d1 03                               	vpextrd r9d,xmm10,0x3
    214fa493ca62:	46 8d 0c 88                                     	lea    r9d,[rax+r9*4]
    214fa493ca66:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa493ca6a:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    214fa493ca70:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    214fa493ca76:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    214fa493ca7b:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa493ca80:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa493ca85:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    214fa493ca8b:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    214fa493ca91:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    214fa493ca98:	0f 85 2d 00 00 00                               	jne    0x214fa493cacb
    214fa493ca9e:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa493caa4:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa493caa7:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493caab:	c4 41 79 7e c3                                  	vmovd  r11d,xmm8
    214fa493cab0:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    214fa493cab4:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493cab8:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    214fa493cabe:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa493cac2:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493cac6:	e9 78 00 00 00                                  	jmp    0x214fa493cb43
    214fa493cacb:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    214fa493cad2:	0f 85 08 00 00 00                               	jne    0x214fa493cae0
    214fa493cad8:	45 33 db                                        	xor    r11d,r11d
    214fa493cadb:	e9 0b 00 00 00                                  	jmp    0x214fa493caeb
    214fa493cae0:	c5 79 7e c7                                     	vmovd  edi,xmm8
    214fa493cae4:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa493cae7:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    214fa493caeb:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    214fa493caf2:	0f 85 07 00 00 00                               	jne    0x214fa493caff
    214fa493caf8:	33 ff                                           	xor    edi,edi
    214fa493cafa:	e9 0d 00 00 00                                  	jmp    0x214fa493cb0c
    214fa493caff:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa493cb05:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa493cb08:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493cb0c:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    214fa493cb13:	0f 85 08 00 00 00                               	jne    0x214fa493cb21
    214fa493cb19:	45 33 ff                                        	xor    r15d,r15d
    214fa493cb1c:	e9 0e 00 00 00                                  	jmp    0x214fa493cb2f
    214fa493cb21:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    214fa493cb27:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa493cb2b:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493cb2f:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493cb36:	0f 83 07 00 00 00                               	jae    0x214fa493cb43
    214fa493cb3c:	33 c0                                           	xor    eax,eax
    214fa493cb3e:	e9 0d 00 00 00                                  	jmp    0x214fa493cb50
    214fa493cb43:	c4 63 79 16 c2 03                               	vpextrd edx,xmm8,0x3
    214fa493cb49:	8d 04 90                                        	lea    eax,[rax+rdx*4]
    214fa493cb4c:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493cb50:	c4 63 31 22 c3 03                               	vpinsrd xmm8,xmm9,ebx,0x3
    214fa493cb56:	c4 63 29 22 ce 03                               	vpinsrd xmm9,xmm10,esi,0x3
    214fa493cb5c:	c4 41 79 6e d3                                  	vmovd  xmm10,r11d
    214fa493cb61:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa493cb66:	c4 63 29 22 d7 01                               	vpinsrd xmm10,xmm10,edi,0x1
    214fa493cb6c:	c4 43 29 22 d7 02                               	vpinsrd xmm10,xmm10,r15d,0x2
    214fa493cb72:	c4 63 29 22 f0 03                               	vpinsrd xmm14,xmm10,eax,0x3
    214fa493cb78:	c4 43 11 22 d1 03                               	vpinsrd xmm10,xmm13,r9d,0x3
    214fa493cb7e:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    214fa493cb83:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    214fa493cb88:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    214fa493cb8c:	c5 98 5c f8                                     	vsubps xmm7,xmm12,xmm0
    214fa493cb90:	c5 c8 5c ed                                     	vsubps xmm5,xmm6,xmm5
    214fa493cb94:	c5 98 5c f5                                     	vsubps xmm6,xmm12,xmm5
    214fa493cb98:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    214fa493cba2:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa493cba7:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa493cbac:	c4 c1 39 db ca                                  	vpand  xmm1,xmm8,xmm10
    214fa493cbb1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cbb6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa493cbbc:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa493cbc1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cbc6:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa493cbcb:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa493cbcf:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa493cbd3:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa493cbd8:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa493cbdc:	c4 c1 11 db d2                                  	vpand  xmm2,xmm13,xmm10
    214fa493cbe1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cbe6:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa493cbec:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa493cbf1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cbf6:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa493cbfb:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa493cbff:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa493cc03:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa493cc08:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    214fa493cc0c:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    214fa493cc10:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    214fa493cc14:	c4 c1 31 db d2                                  	vpand  xmm2,xmm9,xmm10
    214fa493cc19:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cc1e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa493cc24:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa493cc29:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cc2e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa493cc33:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa493cc37:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa493cc3b:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa493cc40:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    214fa493cc44:	c4 c1 09 db da                                  	vpand  xmm3,xmm14,xmm10
    214fa493cc49:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cc4e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa493cc54:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa493cc59:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cc5e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa493cc63:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa493cc67:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa493cc6b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa493cc70:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa493cc74:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    214fa493cc78:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    214fa493cc7c:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    214fa493cc80:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    214fa493cc8a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa493cc8f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa493cc93:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    214fa493cc97:	44 8b 9d 40 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1c0]
    214fa493cc9e:	c4 81 7a 7f 0c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm1
    214fa493cca4:	c4 c1 71 72 d0 10                               	vpsrld xmm1,xmm8,0x10
    214fa493ccaa:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    214fa493ccaf:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493ccb4:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa493ccba:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa493ccbf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493ccc4:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa493ccc9:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa493cccd:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa493ccd1:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa493ccd6:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa493ccda:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    214fa493cce0:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa493cce5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493ccea:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa493ccf0:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa493ccf5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493ccfa:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa493ccff:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa493cd03:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa493cd07:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa493cd0c:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa493cd10:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa493cd14:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    214fa493cd18:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    214fa493cd1e:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa493cd23:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cd28:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa493cd2e:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa493cd33:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cd38:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa493cd3d:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa493cd41:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa493cd45:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa493cd4a:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    214fa493cd4e:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    214fa493cd54:	c4 c1 59 db e2                                  	vpand  xmm4,xmm4,xmm10
    214fa493cd59:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cd5e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa493cd64:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa493cd69:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cd6e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa493cd73:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa493cd77:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa493cd7b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa493cd80:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    214fa493cd84:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    214fa493cd88:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    214fa493cd8c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa493cd90:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    214fa493cd94:	c4 81 7a 7f 4c 18 20                            	vmovdqu XMMWORD PTR [r8+r11*1+0x20],xmm1
    214fa493cd9b:	c4 c1 71 72 d0 08                               	vpsrld xmm1,xmm8,0x8
    214fa493cda1:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    214fa493cda6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cdab:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa493cdb1:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa493cdb6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cdbb:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa493cdc0:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa493cdc4:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa493cdc8:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa493cdcd:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa493cdd1:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    214fa493cdd7:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa493cddc:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cde1:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa493cde7:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa493cdec:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cdf1:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa493cdf6:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa493cdfa:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa493cdfe:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa493ce03:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa493ce07:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa493ce0b:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    214fa493ce0f:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    214fa493ce15:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa493ce1a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493ce1f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa493ce25:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa493ce2a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493ce2f:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa493ce34:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa493ce38:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa493ce3c:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa493ce41:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    214fa493ce45:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    214fa493ce4b:	c4 41 59 db d2                                  	vpand  xmm10,xmm4,xmm10
    214fa493ce50:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493ce55:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    214fa493ce5b:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    214fa493ce60:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493ce65:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    214fa493ce6b:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    214fa493ce70:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    214fa493ce75:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    214fa493ce7a:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    214fa493ce7f:	c4 41 60 58 d2                                  	vaddps xmm10,xmm3,xmm10
    214fa493ce84:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    214fa493ce89:	c4 41 70 58 d2                                  	vaddps xmm10,xmm1,xmm10
    214fa493ce8e:	c5 28 59 d2                                     	vmulps xmm10,xmm10,xmm2
    214fa493ce92:	c4 01 7a 7f 54 18 10                            	vmovdqu XMMWORD PTR [r8+r11*1+0x10],xmm10
    214fa493ce99:	c4 c1 39 72 d0 18                               	vpsrld xmm8,xmm8,0x18
    214fa493ce9f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cea4:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa493ceaa:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa493ceaf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493ceb4:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa493ceba:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa493cebf:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa493cec4:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa493cec9:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    214fa493cece:	c4 c1 29 72 d5 18                               	vpsrld xmm10,xmm13,0x18
    214fa493ced4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493ced9:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    214fa493cedf:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    214fa493cee4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cee9:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    214fa493ceef:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    214fa493cef4:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    214fa493cef9:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    214fa493cefe:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    214fa493cf03:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    214fa493cf08:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa493cf0d:	c4 c1 39 72 d1 18                               	vpsrld xmm8,xmm9,0x18
    214fa493cf13:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cf18:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa493cf1e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa493cf23:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cf28:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa493cf2e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa493cf33:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa493cf38:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa493cf3d:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    214fa493cf42:	c4 c1 39 72 d6 18                               	vpsrld xmm8,xmm14,0x18
    214fa493cf48:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493cf4d:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa493cf53:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa493cf58:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493cf5d:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa493cf63:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa493cf68:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa493cf6d:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa493cf72:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    214fa493cf77:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    214fa493cf7b:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa493cf7f:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    214fa493cf83:	41 8b fb                                        	mov    edi,r11d
    214fa493cf86:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa493cf8e:	e9 c3 01 00 00                                  	jmp    0x214fa493d156
    214fa493cf93:	83 bd 80 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x280],0x0
    214fa493cf9a:	0f 85 23 00 00 00                               	jne    0x214fa493cfc3
    214fa493cfa0:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa493cfa3:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493cfa7:	44 8b 9d c0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x340]
    214fa493cfae:	46 8d 1c 98                                     	lea    r11d,[rax+r11*4]
    214fa493cfb2:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493cfb6:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    214fa493cfba:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493cfbe:	e9 66 00 00 00                                  	jmp    0x214fa493d029
    214fa493cfc3:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    214fa493cfca:	0f 85 08 00 00 00                               	jne    0x214fa493cfd8
    214fa493cfd0:	45 33 ff                                        	xor    r15d,r15d
    214fa493cfd3:	e9 07 00 00 00                                  	jmp    0x214fa493cfdf
    214fa493cfd8:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    214fa493cfdb:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa493cfdf:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    214fa493cfe6:	0f 85 08 00 00 00                               	jne    0x214fa493cff4
    214fa493cfec:	45 33 db                                        	xor    r11d,r11d
    214fa493cfef:	e9 0d 00 00 00                                  	jmp    0x214fa493d001
    214fa493cff4:	8b bd c0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x340]
    214fa493cffa:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa493cffd:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    214fa493d001:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    214fa493d008:	0f 85 07 00 00 00                               	jne    0x214fa493d015
    214fa493d00e:	33 ff                                           	xor    edi,edi
    214fa493d010:	e9 07 00 00 00                                  	jmp    0x214fa493d01c
    214fa493d015:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa493d018:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493d01c:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493d023:	0f 82 12 00 00 00                               	jb     0x214fa493d03b
    214fa493d029:	8b 9d 18 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2e8]
    214fa493d02f:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    214fa493d032:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493d036:	e9 02 00 00 00                                  	jmp    0x214fa493d03d
    214fa493d03b:	33 c0                                           	xor    eax,eax
    214fa493d03d:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    214fa493d042:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa493d047:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    214fa493d04d:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    214fa493d053:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    214fa493d059:	4c 8b 15 3a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb3a]        # 0x214fa493cb9a
    214fa493d060:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493d065:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493d069:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    214fa493d06d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493d072:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa493d078:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa493d07d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493d082:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa493d087:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa493d08b:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa493d08f:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa493d094:	4c 8b 15 e7 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe7]        # 0x214fa493cc82
    214fa493d09b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493d0a0:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa493d0a4:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa493d0a8:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    214fa493d0ae:	c4 c1 7a 7f 34 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm6
    214fa493d0b4:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    214fa493d0b9:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    214fa493d0bd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493d0c2:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa493d0c8:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa493d0cd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493d0d2:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa493d0d7:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa493d0db:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa493d0df:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa493d0e4:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa493d0e8:	c4 c1 7a 7f 74 38 20                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x20],xmm6
    214fa493d0ef:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    214fa493d0f4:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    214fa493d0f8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493d0fd:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa493d103:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa493d108:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493d10d:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa493d112:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa493d116:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa493d11a:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa493d11f:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    214fa493d123:	c4 c1 7a 7f 6c 38 10                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x10],xmm5
    214fa493d12a:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    214fa493d12f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493d134:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa493d13a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa493d13f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493d144:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa493d149:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa493d14d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa493d151:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa493d156:	4c 8b 15 25 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb25]        # 0x214fa493cc82
    214fa493d15d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493d162:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493d166:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa493d16a:	c4 c1 7a 7f 44 38 30                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x30],xmm0
    214fa493d171:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493d174:	e9 44 03 00 00                                  	jmp    0x214fa493d4bd
    214fa493d179:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493d17c:	49 8d 40 08                                     	lea    rax,[r8+0x8]
    214fa493d180:	c4 a2 79 18 3c 38                               	vbroadcastss xmm7,DWORD PTR [rax+r15*1]
    214fa493d186:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    214fa493d18a:	c4 22 79 18 04 08                               	vbroadcastss xmm8,DWORD PTR [rax+r9*1]
    214fa493d190:	c4 41 79 28 d6                                  	vmovapd xmm10,xmm14
    214fa493d195:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    214fa493d19a:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa493d19f:	c4 22 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [rax+r11*1]
    214fa493d1a5:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    214fa493d1aa:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa493d1af:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    214fa493d1b4:	c5 b8 59 df                                     	vmulps xmm3,xmm8,xmm7
    214fa493d1b8:	83 fb 03                                        	cmp    ebx,0x3
    214fa493d1bb:	0f 84 77 02 00 00                               	je     0x214fa493d438
    214fa493d1c1:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    214fa493d1c5:	c4 c1 7a 7f bc 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm7
    214fa493d1cf:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    214fa493d1d9:	c4 c1 7a 7f bc 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm7
    214fa493d1e3:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    214fa493d1ed:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    214fa493d1f7:	c4 c1 7a 7f 9c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm3
    214fa493d201:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    214fa493d20b:	48 89 b5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rsi
    214fa493d212:	48 89 8d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],rcx
    214fa493d219:	45 33 db                                        	xor    r11d,r11d
    214fa493d21c:	e9 2c 00 00 00                                  	jmp    0x214fa493d24d
    214fa493d221:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493d22a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493d233:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493d23c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    214fa493d240:	8b 8d c0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x340]
    214fa493d246:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493d249:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493d24d:	4c 89 9d 48 fb ff ff                            	mov    QWORD PTR [rbp-0x4b8],r11
    214fa493d254:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa493d259:	0f 85 ec 4f 00 00                               	jne    0x214fa494224b
    214fa493d25f:	8b d1                                           	mov    edx,ecx
    214fa493d261:	41 8b cb                                        	mov    ecx,r11d
    214fa493d264:	8b 9d 38 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1c8]
    214fa493d26a:	d3 eb                                           	shr    ebx,cl
    214fa493d26c:	f6 c3 01                                        	test   bl,0x1
    214fa493d26f:	0f 84 1f 01 00 00                               	je     0x214fa493d394
    214fa493d275:	41 8b 4c 10 10                                  	mov    ecx,DWORD PTR [r8+rdx*1+0x10]
    214fa493d27a:	41 8b 5c 10 0c                                  	mov    ebx,DWORD PTR [r8+rdx*1+0xc]
    214fa493d27f:	45 8b 4c 10 08                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x8]
    214fa493d284:	45 8b 4c 10 04                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x4]
    214fa493d289:	48 89 9d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rbx
    214fa493d290:	41 8b 1c 10                                     	mov    ebx,DWORD PTR [r8+rdx*1]
    214fa493d294:	83 fb 02                                        	cmp    ebx,0x2
    214fa493d297:	0f 84 9a 00 00 00                               	je     0x214fa493d337
    214fa493d29d:	48 89 8d 10 fb ff ff                            	mov    QWORD PTR [rbp-0x4f0],rcx
    214fa493d2a4:	85 db                                           	test   ebx,ebx
    214fa493d2a6:	0f 85 39 00 00 00                               	jne    0x214fa493d2e5
    214fa493d2ac:	42 8d 9c 9f 90 02 00 00                         	lea    ebx,[rdi+r11*4+0x290]
    214fa493d2b4:	c4 c1 7a 10 0c 18                               	vmovss xmm1,DWORD PTR [r8+rbx*1]
    214fa493d2ba:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    214fa493d2c0:	41 8b cb                                        	mov    ecx,r11d
    214fa493d2c3:	c1 e1 04                                        	shl    ecx,0x4
    214fa493d2c6:	03 d9                                           	add    ebx,ecx
    214fa493d2c8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493d2cc:	41 8b c1                                        	mov    eax,r9d
    214fa493d2cf:	8b 95 18 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e8]
    214fa493d2d5:	8b 8d 10 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4f0]
    214fa493d2db:	e8 40 af ee ff                                  	call   0x214fa4828220
    214fa493d2e0:	e9 af 00 00 00                                  	jmp    0x214fa493d394
    214fa493d2e5:	44 8b e2                                        	mov    r12d,edx
    214fa493d2e8:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    214fa493d2ed:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    214fa493d2f5:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    214fa493d2fb:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    214fa493d303:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    214fa493d309:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    214fa493d30f:	41 8b cb                                        	mov    ecx,r11d
    214fa493d312:	c1 e1 04                                        	shl    ecx,0x4
    214fa493d315:	03 d1                                           	add    edx,ecx
    214fa493d317:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493d31b:	41 8b c1                                        	mov    eax,r9d
    214fa493d31e:	44 8b ca                                        	mov    r9d,edx
    214fa493d321:	8b 95 18 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e8]
    214fa493d327:	8b 8d 10 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4f0]
    214fa493d32d:	e8 06 af ee ff                                  	call   0x214fa4828238
    214fa493d332:	e9 5d 00 00 00                                  	jmp    0x214fa493d394
    214fa493d337:	8b c2                                           	mov    eax,edx
    214fa493d339:	41 8b 5c 00 14                                  	mov    ebx,DWORD PTR [r8+rax*1+0x14]
    214fa493d33e:	45 8b 64 00 18                                  	mov    r12d,DWORD PTR [r8+rax*1+0x18]
    214fa493d343:	46 8d bc 9f 90 02 00 00                         	lea    r15d,[rdi+r11*4+0x290]
    214fa493d34b:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    214fa493d351:	46 8d bc 9f 80 02 00 00                         	lea    r15d,[rdi+r11*4+0x280]
    214fa493d359:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    214fa493d35f:	46 8d bc 9f 70 02 00 00                         	lea    r15d,[rdi+r11*4+0x270]
    214fa493d367:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    214fa493d36d:	44 8d bf 30 02 00 00                            	lea    r15d,[rdi+0x230]
    214fa493d374:	41 8b d3                                        	mov    edx,r11d
    214fa493d377:	c1 e2 04                                        	shl    edx,0x4
    214fa493d37a:	44 03 fa                                        	add    r15d,edx
    214fa493d37d:	41 57                                           	push   r15
    214fa493d37f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493d383:	41 8b c1                                        	mov    eax,r9d
    214fa493d386:	8b 95 18 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e8]
    214fa493d38c:	45 8b cc                                        	mov    r9d,r12d
    214fa493d38f:	e8 94 ae ee ff                                  	call   0x214fa4828228
    214fa493d394:	44 8b 9d 48 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4b8]
    214fa493d39b:	41 83 c3 01                                     	add    r11d,0x1
    214fa493d39f:	41 83 fb 04                                     	cmp    r11d,0x4
    214fa493d3a3:	0f 85 97 fe ff ff                               	jne    0x214fa493d240
    214fa493d3a9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493d3ac:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493d3b0:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    214fa493d3ba:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    214fa493d3c4:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    214fa493d3c8:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    214fa493d3d2:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    214fa493d3dc:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    214fa493d3e1:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    214fa493d3e5:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa493d3eb:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    214fa493d3f2:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    214fa493d3f6:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    214fa493d3fd:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    214fa493d401:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    214fa493d406:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    214fa493d40a:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    214fa493d411:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    214fa493d415:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    214fa493d41b:	c5 78 10 a5 c0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x440]
    214fa493d423:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa493d42b:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    214fa493d433:	e9 85 00 00 00                                  	jmp    0x214fa493d4bd
    214fa493d438:	8b c1                                           	mov    eax,ecx
    214fa493d43a:	8b ce                                           	mov    ecx,esi
    214fa493d43c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493d440:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa493d444:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa493d448:	8b 95 38 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c8]
    214fa493d44e:	e8 d5 b0 ee ff                                  	call   0x214fa4828528
    214fa493d453:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493d456:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493d45a:	c5 78 10 a5 c0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x440]
    214fa493d462:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa493d46a:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    214fa493d472:	e9 46 00 00 00                                  	jmp    0x214fa493d4bd
    214fa493d477:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    214fa493d47b:	44 8b e1                                        	mov    r12d,ecx
    214fa493d47e:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa493d484:	c4 c1 7a 7f 04 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm0
    214fa493d48a:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    214fa493d48e:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa493d494:	c4 c1 7a 7f 44 30 10                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x10],xmm0
    214fa493d49b:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    214fa493d49f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa493d4a5:	c4 c1 7a 7f 44 30 20                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x20],xmm0
    214fa493d4ac:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    214fa493d4b0:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa493d4b6:	c4 c1 7a 7f 44 30 30                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x30],xmm0
    214fa493d4bd:	44 8b 9d 60 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1a0]
    214fa493d4c4:	41 83 c3 01                                     	add    r11d,0x1
    214fa493d4c8:	41 83 fb 04                                     	cmp    r11d,0x4
    214fa493d4cc:	0f 85 ee ec ff ff                               	jne    0x214fa493c1c0
    214fa493d4d2:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    214fa493d4dc:	4c 8b 15 e1 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeee1]        # 0x214fa493c3c4
    214fa493d4e3:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493d4e8:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493d4ec:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa493d4f0:	c5 f8 10 b5 50 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xb0]
    214fa493d4f8:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    214fa493d4fc:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa493d500:	c4 c1 7a 6f b4 38 40 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x140]
    214fa493d50a:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    214fa493d50e:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    214fa493d516:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    214fa493d51a:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa493d51e:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa493d522:	c4 c1 7a 6f b4 38 50 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x150]
    214fa493d52c:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    214fa493d530:	c5 78 10 85 60 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xa0]
    214fa493d538:	c5 b8 58 ed                                     	vaddps xmm5,xmm8,xmm5
    214fa493d53c:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    214fa493d540:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa493d544:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    214fa493d54e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493d553:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493d557:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa493d55b:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493d563:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d567:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa493d56c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d570:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    214fa493d574:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493d578:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa493d57c:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    214fa493d583:	47 8b 9c 18 38 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x138]
    214fa493d58b:	4d 8b e3                                        	mov    r12,r11
    214fa493d58e:	41 83 c4 ff                                     	add    r12d,0xffffffff
    214fa493d592:	0f 85 f1 00 00 00                               	jne    0x214fa493d689
    214fa493d598:	c4 c1 7a 6f b4 38 10 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x210]
    214fa493d5a2:	c4 c1 7a 6f bc 38 d0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1d0]
    214fa493d5ac:	4d 8d 98 38 36 00 00                            	lea    r11,[r8+0x3638]
    214fa493d5b3:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    214fa493d5b7:	c4 02 79 18 04 3b                               	vbroadcastss xmm8,DWORD PTR [r11+r15*1]
    214fa493d5bd:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    214fa493d5c2:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    214fa493d5c7:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa493d5cc:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa493d5d1:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa493d5d5:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa493d5d9:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    214fa493d5dd:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493d5e1:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa493d5e5:	c4 c1 7a 6f bc 38 00 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x200]
    214fa493d5ef:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    214fa493d5f9:	4d 8d 98 34 36 00 00                            	lea    r11,[r8+0x3634]
    214fa493d600:	c4 02 79 18 14 3b                               	vbroadcastss xmm10,DWORD PTR [r11+r15*1]
    214fa493d606:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    214fa493d60b:	c4 41 50 5f d2                                  	vmaxps xmm10,xmm5,xmm10
    214fa493d610:	c4 41 30 5d d2                                  	vminps xmm10,xmm9,xmm10
    214fa493d615:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    214fa493d61a:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    214fa493d61f:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa493d624:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa493d629:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa493d62d:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa493d631:	c4 41 7a 6f 84 38 f0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1f0]
    214fa493d63b:	c4 41 7a 6f 94 38 b0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1b0]
    214fa493d645:	4d 8d 98 30 36 00 00                            	lea    r11,[r8+0x3630]
    214fa493d64c:	c4 02 79 18 1c 3b                               	vbroadcastss xmm11,DWORD PTR [r11+r15*1]
    214fa493d652:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa493d657:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d65b:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d65f:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    214fa493d663:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d667:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d66b:	c5 b8 58 c0                                     	vaddps xmm0,xmm8,xmm0
    214fa493d66f:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d673:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d677:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    214fa493d67b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa493d67f:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    214fa493d684:	e9 61 01 00 00                                  	jmp    0x214fa493d7ea
    214fa493d689:	41 83 fc 02                                     	cmp    r12d,0x2
    214fa493d68d:	0f 84 80 00 00 00                               	je     0x214fa493d713
    214fa493d693:	c4 c1 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1d0]
    214fa493d69d:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    214fa493d6a1:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d6a5:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d6a9:	c4 c1 7a 6f bc 38 c0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1c0]
    214fa493d6b3:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa493d6b7:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa493d6bb:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa493d6bf:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    214fa493d6c6:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa493d6ca:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    214fa493d6d0:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa493d6d5:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa493d6d9:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa493d6dd:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    214fa493d6e7:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    214fa493d6ec:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493d6f0:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa493d6f4:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    214fa493d6fb:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    214fa493d701:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    214fa493d706:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493d70a:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa493d70e:	e9 4f 00 00 00                                  	jmp    0x214fa493d762
    214fa493d713:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    214fa493d717:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d71b:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d71f:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    214fa493d726:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa493d72a:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    214fa493d730:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    214fa493d734:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493d738:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa493d73c:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    214fa493d743:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    214fa493d749:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    214fa493d74d:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa493d751:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa493d755:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    214fa493d759:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa493d75d:	c4 c1 79 28 ff                                  	vmovapd xmm7,xmm15
    214fa493d762:	4d 8d b8 20 37 00 00                            	lea    r15,[r8+0x3720]
    214fa493d769:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    214fa493d76f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    214fa493d774:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d778:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa493d77c:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa493d780:	0f 84 61 00 00 00                               	je     0x214fa493d7e7
    214fa493d786:	c4 01 7a 10 84 20 24 37 00 00                   	vmovss xmm8,DWORD PTR [r8+r12*1+0x3724]
    214fa493d790:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa493d795:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa493d79b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa493d7a1:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    214fa493d7a6:	0f 87 05 00 00 00                               	ja     0x214fa493d7b1
    214fa493d7ac:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    214fa493d7b1:	c4 41 18 57 e4                                  	vxorps xmm12,xmm12,xmm12
    214fa493d7b6:	c4 41 78 2e e0                                  	vucomiss xmm12,xmm8
    214fa493d7bb:	0f 87 0a 00 00 00                               	ja     0x214fa493d7cb
    214fa493d7c1:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    214fa493d7c6:	e9 05 00 00 00                                  	jmp    0x214fa493d7d0
    214fa493d7cb:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    214fa493d7d0:	c4 42 79 18 c0                                  	vbroadcastss xmm8,xmm8
    214fa493d7d5:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    214fa493d7d9:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa493d7dd:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    214fa493d7e2:	e9 d5 13 00 00                                  	jmp    0x214fa493ebbc
    214fa493d7e7:	4d 8b fc                                        	mov    r15,r12
    214fa493d7ea:	c5 78 10 55 80                                  	vmovups xmm10,XMMWORD PTR [rbp-0x80]
    214fa493d7ef:	c4 41 50 5f c2                                  	vmaxps xmm8,xmm5,xmm10
    214fa493d7f4:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa493d7f9:	c4 41 7a 6f 94 38 e0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1e0]
    214fa493d803:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    214fa493d808:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    214fa493d80d:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa493d812:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    214fa493d816:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa493d81a:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    214fa493d81f:	e9 98 13 00 00                                  	jmp    0x214fa493ebbc
    214fa493d824:	43 8b 4c 08 38                                  	mov    ecx,DWORD PTR [r8+r9*1+0x38]
    214fa493d829:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa493d831:	43 83 7c 08 38 00                               	cmp    DWORD PTR [r8+r9*1+0x38],0x0
    214fa493d837:	0f 85 72 12 00 00                               	jne    0x214fa493eaaf
    214fa493d83d:	49 8d 48 54                                     	lea    rcx,[r8+0x54]
    214fa493d841:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa493d847:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493d84b:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa493d851:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa493d855:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa493d859:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa493d85f:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493d863:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa493d867:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa493d86b:	49 8d 48 50                                     	lea    rcx,[r8+0x50]
    214fa493d86f:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa493d875:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa493d879:	c4 e2 79 18 34 01                               	vbroadcastss xmm6,DWORD PTR [rcx+rax*1]
    214fa493d87f:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    214fa493d883:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    214fa493d887:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa493d88d:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa493d891:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    214fa493d895:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    214fa493d899:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    214fa493d89d:	4c 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r9
    214fa493d8a4:	83 f9 01                                        	cmp    ecx,0x1
    214fa493d8a7:	0f 85 0e 0f 00 00                               	jne    0x214fa493e7bb
    214fa493d8ad:	47 8b 5c 08 28                                  	mov    r11d,DWORD PTR [r8+r9*1+0x28]
    214fa493d8b2:	45 85 db                                        	test   r11d,r11d
    214fa493d8b5:	0f 84 00 0f 00 00                               	je     0x214fa493e7bb
    214fa493d8bb:	43 8b 5c 08 1c                                  	mov    ebx,DWORD PTR [r8+r9*1+0x1c]
    214fa493d8c0:	85 db                                           	test   ebx,ebx
    214fa493d8c2:	0f 8e f3 0e 00 00                               	jle    0x214fa493e7bb
    214fa493d8c8:	48 89 8d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rcx
    214fa493d8cf:	43 8b 4c 08 20                                  	mov    ecx,DWORD PTR [r8+r9*1+0x20]
    214fa493d8d4:	85 c9                                           	test   ecx,ecx
    214fa493d8d6:	0f 8e d9 0e 00 00                               	jle    0x214fa493e7b5
    214fa493d8dc:	44 8b d3                                        	mov    r10d,ebx
    214fa493d8df:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    214fa493d8e4:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa493d8e9:	43 8b 54 08 10                                  	mov    edx,DWORD PTR [r8+r9*1+0x10]
    214fa493d8ee:	33 c0                                           	xor    eax,eax
    214fa493d8f0:	81 fa 2f 81 00 00                               	cmp    edx,0x812f
    214fa493d8f6:	0f 95 c0                                        	setne  al
    214fa493d8f9:	81 fa 00 29 00 00                               	cmp    edx,0x2900
    214fa493d8ff:	0f 95 c2                                        	setne  dl
    214fa493d902:	0f b6 d2                                        	movzx  edx,dl
    214fa493d905:	23 d0                                           	and    edx,eax
    214fa493d907:	0f 85 0d 00 00 00                               	jne    0x214fa493d91a
    214fa493d90d:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa493d911:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    214fa493d915:	e9 0b 00 00 00                                  	jmp    0x214fa493d925
    214fa493d91a:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    214fa493d920:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    214fa493d925:	c5 b0 59 f6                                     	vmulps xmm6,xmm9,xmm6
    214fa493d929:	44 8b d1                                        	mov    r10d,ecx
    214fa493d92c:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    214fa493d931:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa493d936:	43 8b 44 08 14                                  	mov    eax,DWORD PTR [r8+r9*1+0x14]
    214fa493d93b:	45 33 ff                                        	xor    r15d,r15d
    214fa493d93e:	3d 2f 81 00 00                                  	cmp    eax,0x812f
    214fa493d943:	41 0f 95 c7                                     	setne  r15b
    214fa493d947:	3d 00 29 00 00                                  	cmp    eax,0x2900
    214fa493d94c:	0f 95 c0                                        	setne  al
    214fa493d94f:	0f b6 c0                                        	movzx  eax,al
    214fa493d952:	41 23 c7                                        	and    eax,r15d
    214fa493d955:	0f 85 0d 00 00 00                               	jne    0x214fa493d968
    214fa493d95b:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa493d95f:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa493d963:	e9 0b 00 00 00                                  	jmp    0x214fa493d973
    214fa493d968:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    214fa493d96e:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    214fa493d973:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa493d977:	4c 8b 15 46 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea46]        # 0x214fa493c3c4
    214fa493d97e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa493d983:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa493d988:	c4 41 78 58 d9                                  	vaddps xmm11,xmm0,xmm9
    214fa493d98d:	47 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [r8+r9*1+0xc]
    214fa493d992:	45 33 ff                                        	xor    r15d,r15d
    214fa493d995:	43 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+r9*1+0xc],0x2600
    214fa493d99e:	41 0f 94 c7                                     	sete   r15b
    214fa493d9a2:	45 85 ff                                        	test   r15d,r15d
    214fa493d9a5:	0f 85 5c 00 00 00                               	jne    0x214fa493da07
    214fa493d9ab:	c4 c3 79 08 c3 09                               	vroundps xmm0,xmm11,0x9
    214fa493d9b1:	4c 8b 15 9d a4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa49d]        # 0x214fa4937e55
    214fa493d9b8:	c4 41 78 54 2a                                  	vandps xmm13,xmm0,XMMWORD PTR [r10]
    214fa493d9bd:	4c 8b 15 bc d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2bc]        # 0x214fa493ac80
    214fa493d9c4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493d9c9:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa493d9ce:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    214fa493d9d4:	4c 8b 15 63 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd263]        # 0x214fa493ac3e
    214fa493d9db:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa493d9e0:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    214fa493d9e5:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa493d9eb:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa493d9ef:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa493d9f4:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    214fa493d9f9:	c5 79 28 c8                                     	vmovapd xmm9,xmm0
    214fa493d9fd:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    214fa493da02:	e9 4a 00 00 00                                  	jmp    0x214fa493da51
    214fa493da07:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    214fa493da0d:	4c 8b 15 41 a4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa441]        # 0x214fa4937e55
    214fa493da14:	c4 41 30 54 1a                                  	vandps xmm11,xmm9,XMMWORD PTR [r10]
    214fa493da19:	4c 8b 15 60 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd260]        # 0x214fa493ac80
    214fa493da20:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493da25:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa493da2a:	c4 41 20 c2 ee 01                               	vcmpltps xmm13,xmm11,xmm14
    214fa493da30:	4c 8b 15 07 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd207]        # 0x214fa493ac3e
    214fa493da37:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    214fa493da3d:	c4 c1 30 54 e7                                  	vandps xmm4,xmm9,xmm15
    214fa493da42:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    214fa493da48:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa493da4c:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa493da51:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    214fa493da57:	4c 8b 15 e0 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1e0]        # 0x214fa493ac3e
    214fa493da5e:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    214fa493da64:	c4 c1 20 54 ef                                  	vandps xmm5,xmm11,xmm15
    214fa493da69:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    214fa493da6f:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    214fa493da73:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    214fa493da78:	4c 8b 15 e2 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1e2]        # 0x214fa493ac61
    214fa493da7f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493da84:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa493da88:	4c 8b 15 c6 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3c6]        # 0x214fa4937e55
    214fa493da8f:	c4 41 20 54 02                                  	vandps xmm8,xmm11,XMMWORD PTR [r10]
    214fa493da94:	c4 41 38 c2 c6 01                               	vcmpltps xmm8,xmm8,xmm14
    214fa493da9a:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    214fa493da9e:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa493daa3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493daa8:	8d 7b ff                                        	lea    edi,[rbx-0x1]
    214fa493daab:	c5 79 6e c7                                     	vmovd  xmm8,edi
    214fa493daaf:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa493dab4:	43 8b 7c 08 2c                                  	mov    edi,DWORD PTR [r8+r9*1+0x2c]
    214fa493dab9:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa493dabe:	c4 42 51 3d d2                                  	vpmaxsd xmm10,xmm5,xmm10
    214fa493dac3:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    214fa493dac8:	85 d2                                           	test   edx,edx
    214fa493daca:	0f 84 57 00 00 00                               	je     0x214fa493db27
    214fa493dad0:	c5 79 6e d7                                     	vmovd  xmm10,edi
    214fa493dad4:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa493dad9:	c4 41 51 db d2                                  	vpand  xmm10,xmm5,xmm10
    214fa493dade:	85 ff                                           	test   edi,edi
    214fa493dae0:	0f 85 41 00 00 00                               	jne    0x214fa493db27
    214fa493dae6:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    214fa493daea:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa493daef:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    214fa493daf4:	c4 c1 51 66 c8                                  	vpcmpgtd xmm1,xmm5,xmm8
    214fa493daf9:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    214fa493dafe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493db03:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    214fa493db08:	c5 19 66 e5                                     	vpcmpgtd xmm12,xmm12,xmm5
    214fa493db0c:	c5 19 df f9                                     	vpandn xmm15,xmm12,xmm1
    214fa493db10:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    214fa493db15:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa493db1a:	c4 41 51 fe d2                                  	vpaddd xmm10,xmm5,xmm10
    214fa493db1f:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa493db27:	c5 11 df ff                                     	vpandn xmm15,xmm13,xmm7
    214fa493db2b:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    214fa493db30:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    214fa493db35:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    214fa493db38:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    214fa493db3c:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa493db41:	43 8b 74 08 30                                  	mov    esi,DWORD PTR [r8+r9*1+0x30]
    214fa493db46:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    214fa493db4b:	c4 42 11 3d e4                                  	vpmaxsd xmm12,xmm13,xmm12
    214fa493db50:	c4 62 19 39 e4                                  	vpminsd xmm12,xmm12,xmm4
    214fa493db55:	85 c0                                           	test   eax,eax
    214fa493db57:	0f 84 4d 00 00 00                               	je     0x214fa493dbaa
    214fa493db5d:	c5 79 6e e6                                     	vmovd  xmm12,esi
    214fa493db61:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493db66:	c4 41 19 db e5                                  	vpand  xmm12,xmm12,xmm13
    214fa493db6b:	85 f6                                           	test   esi,esi
    214fa493db6d:	0f 85 37 00 00 00                               	jne    0x214fa493dbaa
    214fa493db73:	c5 79 6e e1                                     	vmovd  xmm12,ecx
    214fa493db77:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493db7c:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa493db80:	c5 91 66 d4                                     	vpcmpgtd xmm2,xmm13,xmm4
    214fa493db84:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    214fa493db89:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493db8e:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    214fa493db93:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    214fa493db98:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    214fa493db9c:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    214fa493dba0:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa493dba5:	c4 41 11 fe e4                                  	vpaddd xmm12,xmm13,xmm12
    214fa493dbaa:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    214fa493dbae:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa493dbb3:	c4 62 19 40 e1                                  	vpmulld xmm12,xmm12,xmm1
    214fa493dbb8:	c4 c1 19 fe d2                                  	vpaddd xmm2,xmm12,xmm10
    214fa493dbbd:	c4 e3 79 16 d3 03                               	vpextrd ebx,xmm2,0x3
    214fa493dbc3:	c4 c3 79 16 d1 02                               	vpextrd r9d,xmm2,0x2
    214fa493dbc9:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    214fa493dbd0:	c4 e3 79 16 d3 01                               	vpextrd ebx,xmm2,0x1
    214fa493dbd6:	4c 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r9
    214fa493dbdd:	c4 c1 79 7e d1                                  	vmovd  r9d,xmm2
    214fa493dbe2:	45 85 ff                                        	test   r15d,r15d
    214fa493dbe5:	0f 85 e5 09 00 00                               	jne    0x214fa493e5d0
    214fa493dbeb:	4c 8b 15 59 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea59]        # 0x214fa493c64b
    214fa493dbf2:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa493dbf7:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa493dbfb:	c5 d1 fe ea                                     	vpaddd xmm5,xmm5,xmm2
    214fa493dbff:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa493dc03:	c4 e2 51 3d db                                  	vpmaxsd xmm3,xmm5,xmm3
    214fa493dc08:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    214fa493dc0d:	85 d2                                           	test   edx,edx
    214fa493dc0f:	0f 84 43 00 00 00                               	je     0x214fa493dc58
    214fa493dc15:	c5 f9 6e df                                     	vmovd  xmm3,edi
    214fa493dc19:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa493dc1e:	c5 d1 db db                                     	vpand  xmm3,xmm5,xmm3
    214fa493dc22:	85 ff                                           	test   edi,edi
    214fa493dc24:	0f 85 2e 00 00 00                               	jne    0x214fa493dc58
    214fa493dc2a:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa493dc2e:	c4 41 51 66 c0                                  	vpcmpgtd xmm8,xmm5,xmm8
    214fa493dc33:	c5 39 db c1                                     	vpand  xmm8,xmm8,xmm1
    214fa493dc37:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493dc3c:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    214fa493dc41:	c5 e1 66 dd                                     	vpcmpgtd xmm3,xmm3,xmm5
    214fa493dc45:	c4 41 61 df f8                                  	vpandn xmm15,xmm3,xmm8
    214fa493dc4a:	c5 71 db c3                                     	vpand  xmm8,xmm1,xmm3
    214fa493dc4e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa493dc53:	c4 c1 51 fe d8                                  	vpaddd xmm3,xmm5,xmm8
    214fa493dc58:	c5 91 fe ea                                     	vpaddd xmm5,xmm13,xmm2
    214fa493dc5c:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    214fa493dc61:	c4 42 51 3d c0                                  	vpmaxsd xmm8,xmm5,xmm8
    214fa493dc66:	c4 62 39 39 c4                                  	vpminsd xmm8,xmm8,xmm4
    214fa493dc6b:	85 c0                                           	test   eax,eax
    214fa493dc6d:	0f 84 4d 00 00 00                               	je     0x214fa493dcc0
    214fa493dc73:	c5 79 6e c6                                     	vmovd  xmm8,esi
    214fa493dc77:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa493dc7c:	c5 39 db c5                                     	vpand  xmm8,xmm8,xmm5
    214fa493dc80:	85 f6                                           	test   esi,esi
    214fa493dc82:	0f 85 38 00 00 00                               	jne    0x214fa493dcc0
    214fa493dc88:	c5 79 6e c1                                     	vmovd  xmm8,ecx
    214fa493dc8c:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa493dc91:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa493dc96:	c5 d1 66 e4                                     	vpcmpgtd xmm4,xmm5,xmm4
    214fa493dc9a:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    214fa493dc9f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa493dca4:	c4 c2 59 0a e7                                  	vpsignd xmm4,xmm4,xmm15
    214fa493dca9:	c5 11 66 ed                                     	vpcmpgtd xmm13,xmm13,xmm5
    214fa493dcad:	c5 11 df fc                                     	vpandn xmm15,xmm13,xmm4
    214fa493dcb1:	c4 41 39 db c5                                  	vpand  xmm8,xmm8,xmm13
    214fa493dcb6:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa493dcbb:	c4 41 51 fe c0                                  	vpaddd xmm8,xmm5,xmm8
    214fa493dcc0:	c4 e2 39 40 e9                                  	vpmulld xmm5,xmm8,xmm1
    214fa493dcc5:	c4 41 51 fe c2                                  	vpaddd xmm8,xmm5,xmm10
    214fa493dcca:	45 85 e4                                        	test   r12d,r12d
    214fa493dccd:	0f 85 0c 01 00 00                               	jne    0x214fa493dddf
    214fa493dcd3:	c5 29 fe d2                                     	vpaddd xmm10,xmm10,xmm2
    214fa493dcd7:	c4 41 61 76 d2                                  	vpcmpeqd xmm10,xmm3,xmm10
    214fa493dcdc:	c4 c1 78 50 fa                                  	vmovmskps edi,xmm10
    214fa493dce1:	83 ff 0f                                        	cmp    edi,0xf
    214fa493dce4:	0f 84 4f 00 00 00                               	je     0x214fa493dd39
    214fa493dcea:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    214fa493dcf1:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa493dcf7:	83 e6 04                                        	and    esi,0x4
    214fa493dcfa:	8b bd 38 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c8]
    214fa493dd00:	83 e7 02                                        	and    edi,0x2
    214fa493dd03:	44 8b bd 38 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c8]
    214fa493dd0a:	41 83 e7 01                                     	and    r15d,0x1
    214fa493dd0e:	41 8d 04 9b                                     	lea    eax,[r11+rbx*4]
    214fa493dd12:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493dd16:	43 8d 1c 8b                                     	lea    ebx,[r11+r9*4]
    214fa493dd1a:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa493dd1e:	8b 95 40 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c0]
    214fa493dd24:	41 8d 14 93                                     	lea    edx,[r11+rdx*4]
    214fa493dd28:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa493dd2c:	44 8b d0                                        	mov    r10d,eax
    214fa493dd2f:	8b c3                                           	mov    eax,ebx
    214fa493dd31:	41 8b da                                        	mov    ebx,r10d
    214fa493dd34:	e9 38 01 00 00                                  	jmp    0x214fa493de71
    214fa493dd39:	43 8d 3c 8b                                     	lea    edi,[r11+r9*4]
    214fa493dd3d:	c4 c1 7b 10 2c 38                               	vmovsd xmm5,QWORD PTR [r8+rdi*1]
    214fa493dd43:	41 8d 3c 9b                                     	lea    edi,[r11+rbx*4]
    214fa493dd47:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa493dd4d:	c4 c1 51 6c ea                                  	vpunpcklqdq xmm5,xmm5,xmm10
    214fa493dd52:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    214fa493dd58:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493dd5c:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa493dd62:	44 8b bd 60 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1a0]
    214fa493dd69:	43 8d 3c bb                                     	lea    edi,[r11+r15*4]
    214fa493dd6d:	c4 41 7b 10 24 38                               	vmovsd xmm12,QWORD PTR [r8+rdi*1]
    214fa493dd73:	c4 41 29 6c d4                                  	vpunpcklqdq xmm10,xmm10,xmm12
    214fa493dd78:	c4 41 50 c6 e2 dd                               	vshufps xmm12,xmm5,xmm10,0xdd
    214fa493dd7e:	c4 c1 50 c6 ea 88                               	vshufps xmm5,xmm5,xmm10,0x88
    214fa493dd84:	c4 c1 39 72 f0 02                               	vpslld xmm8,xmm8,0x2
    214fa493dd8a:	c5 79 7e c7                                     	vmovd  edi,xmm8
    214fa493dd8e:	41 03 fb                                        	add    edi,r11d
    214fa493dd91:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa493dd97:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa493dd9d:	41 03 fb                                        	add    edi,r11d
    214fa493dda0:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    214fa493dda6:	c4 41 29 6c d5                                  	vpunpcklqdq xmm10,xmm10,xmm13
    214fa493ddab:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    214fa493ddb1:	41 03 fb                                        	add    edi,r11d
    214fa493ddb4:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    214fa493ddba:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    214fa493ddc0:	41 03 fb                                        	add    edi,r11d
    214fa493ddc3:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    214fa493ddc9:	c4 41 11 6c c0                                  	vpunpcklqdq xmm8,xmm13,xmm8
    214fa493ddce:	c4 41 28 c6 e8 dd                               	vshufps xmm13,xmm10,xmm8,0xdd
    214fa493ddd4:	c4 41 28 c6 c0 88                               	vshufps xmm8,xmm10,xmm8,0x88
    214fa493ddda:	e9 64 04 00 00                                  	jmp    0x214fa493e243
    214fa493dddf:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    214fa493dde6:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa493ddec:	83 e6 04                                        	and    esi,0x4
    214fa493ddef:	8b bd 38 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c8]
    214fa493ddf5:	83 e7 02                                        	and    edi,0x2
    214fa493ddf8:	44 8b bd 38 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c8]
    214fa493ddff:	41 83 e7 01                                     	and    r15d,0x1
    214fa493de03:	45 85 ff                                        	test   r15d,r15d
    214fa493de06:	0f 85 07 00 00 00                               	jne    0x214fa493de13
    214fa493de0c:	33 c0                                           	xor    eax,eax
    214fa493de0e:	e9 08 00 00 00                                  	jmp    0x214fa493de1b
    214fa493de13:	43 8d 04 8b                                     	lea    eax,[r11+r9*4]
    214fa493de17:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493de1b:	85 ff                                           	test   edi,edi
    214fa493de1d:	0f 85 07 00 00 00                               	jne    0x214fa493de2a
    214fa493de23:	33 db                                           	xor    ebx,ebx
    214fa493de25:	e9 08 00 00 00                                  	jmp    0x214fa493de32
    214fa493de2a:	41 8d 1c 9b                                     	lea    ebx,[r11+rbx*4]
    214fa493de2e:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa493de32:	85 f6                                           	test   esi,esi
    214fa493de34:	0f 85 07 00 00 00                               	jne    0x214fa493de41
    214fa493de3a:	33 d2                                           	xor    edx,edx
    214fa493de3c:	e9 0e 00 00 00                                  	jmp    0x214fa493de4f
    214fa493de41:	8b 95 40 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c0]
    214fa493de47:	41 8d 14 93                                     	lea    edx,[r11+rdx*4]
    214fa493de4b:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa493de4f:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493de56:	0f 83 15 00 00 00                               	jae    0x214fa493de71
    214fa493de5c:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    214fa493de61:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa493de65:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493de6a:	33 c9                                           	xor    ecx,ecx
    214fa493de6c:	e9 5f 00 00 00                                  	jmp    0x214fa493ded0
    214fa493de71:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    214fa493de77:	41 8d 0c 8b                                     	lea    ecx,[r11+rcx*4]
    214fa493de7b:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa493de7f:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    214fa493de84:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa493de88:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493de8d:	45 85 e4                                        	test   r12d,r12d
    214fa493de90:	0f 85 3a 00 00 00                               	jne    0x214fa493ded0
    214fa493de96:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    214fa493de9c:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    214fa493dea0:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493dea4:	c4 41 79 7e d1                                  	vmovd  r9d,xmm10
    214fa493dea9:	47 8d 0c 8b                                     	lea    r9d,[r11+r9*4]
    214fa493dead:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa493deb1:	c4 43 79 16 d4 02                               	vpextrd r12d,xmm10,0x2
    214fa493deb7:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    214fa493debb:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493debf:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    214fa493dec6:	8b f7                                           	mov    esi,edi
    214fa493dec8:	41 8b fc                                        	mov    edi,r12d
    214fa493decb:	e9 b2 00 00 00                                  	jmp    0x214fa493df82
    214fa493ded0:	45 85 ff                                        	test   r15d,r15d
    214fa493ded3:	0f 85 08 00 00 00                               	jne    0x214fa493dee1
    214fa493ded9:	45 33 c9                                        	xor    r9d,r9d
    214fa493dedc:	e9 0c 00 00 00                                  	jmp    0x214fa493deed
    214fa493dee1:	c5 79 7e d0                                     	vmovd  eax,xmm10
    214fa493dee5:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    214fa493dee9:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    214fa493deed:	85 ff                                           	test   edi,edi
    214fa493deef:	0f 85 07 00 00 00                               	jne    0x214fa493defc
    214fa493def5:	33 c0                                           	xor    eax,eax
    214fa493def7:	e9 0e 00 00 00                                  	jmp    0x214fa493df0a
    214fa493defc:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    214fa493df02:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    214fa493df06:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493df0a:	85 f6                                           	test   esi,esi
    214fa493df0c:	0f 85 10 00 00 00                               	jne    0x214fa493df22
    214fa493df12:	48 c7 85 60 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1a0],0x0
    214fa493df1d:	e9 1c 00 00 00                                  	jmp    0x214fa493df3e
    214fa493df22:	c4 43 79 16 d4 02                               	vpextrd r12d,xmm10,0x2
    214fa493df28:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    214fa493df2c:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493df30:	4c 89 a5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r12
    214fa493df37:	44 8b a5 80 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x280]
    214fa493df3e:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493df45:	0f 83 24 00 00 00                               	jae    0x214fa493df6f
    214fa493df4b:	48 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rbx
    214fa493df52:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    214fa493df58:	4c 89 8d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r9
    214fa493df5f:	44 8b c8                                        	mov    r9d,eax
    214fa493df62:	41 8b c7                                        	mov    eax,r15d
    214fa493df65:	44 8b ff                                        	mov    r15d,edi
    214fa493df68:	33 ff                                           	xor    edi,edi
    214fa493df6a:	e9 4a 00 00 00                                  	jmp    0x214fa493dfb9
    214fa493df6f:	44 8b d7                                        	mov    r10d,edi
    214fa493df72:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa493df78:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    214fa493df7f:	41 8b f2                                        	mov    esi,r10d
    214fa493df82:	c4 43 79 16 d4 03                               	vpextrd r12d,xmm10,0x3
    214fa493df88:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    214fa493df8c:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493df90:	48 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rbx
    214fa493df97:	8b df                                           	mov    ebx,edi
    214fa493df99:	41 8b fc                                        	mov    edi,r12d
    214fa493df9c:	4c 89 8d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r9
    214fa493dfa3:	44 8b c8                                        	mov    r9d,eax
    214fa493dfa6:	44 8b a5 80 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x280]
    214fa493dfad:	41 8b c7                                        	mov    eax,r15d
    214fa493dfb0:	44 8b fe                                        	mov    r15d,esi
    214fa493dfb3:	8b b5 60 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1a0]
    214fa493dfb9:	c4 63 19 22 95 a8 fd ff ff 01                   	vpinsrd xmm10,xmm12,DWORD PTR [rbp-0x258],0x1
    214fa493dfc3:	c5 79 6e a5 18 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x2e8]
    214fa493dfcb:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493dfd0:	c4 43 19 22 e1 01                               	vpinsrd xmm12,xmm12,r9d,0x1
    214fa493dfd6:	48 89 bd 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdi
    214fa493dfdd:	45 85 e4                                        	test   r12d,r12d
    214fa493dfe0:	0f 85 4b 00 00 00                               	jne    0x214fa493e031
    214fa493dfe6:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    214fa493dfec:	47 8d 0c 8b                                     	lea    r9d,[r11+r9*4]
    214fa493dff0:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa493dff4:	c5 79 7e c7                                     	vmovd  edi,xmm8
    214fa493dff8:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493dffc:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493e000:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    214fa493e007:	c4 63 79 16 c1 02                               	vpextrd ecx,xmm8,0x2
    214fa493e00d:	41 8d 0c 8b                                     	lea    ecx,[r11+rcx*4]
    214fa493e011:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa493e015:	4c 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r9
    214fa493e01c:	44 8b c9                                        	mov    r9d,ecx
    214fa493e01f:	48 89 bd b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdi
    214fa493e026:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa493e02c:	e9 d5 00 00 00                                  	jmp    0x214fa493e106
    214fa493e031:	85 c0                                           	test   eax,eax
    214fa493e033:	0f 85 08 00 00 00                               	jne    0x214fa493e041
    214fa493e039:	45 33 c9                                        	xor    r9d,r9d
    214fa493e03c:	e9 0d 00 00 00                                  	jmp    0x214fa493e04e
    214fa493e041:	c4 41 79 7e c1                                  	vmovd  r9d,xmm8
    214fa493e046:	47 8d 0c 8b                                     	lea    r9d,[r11+r9*4]
    214fa493e04a:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa493e04e:	45 85 ff                                        	test   r15d,r15d
    214fa493e051:	0f 85 10 00 00 00                               	jne    0x214fa493e067
    214fa493e057:	48 c7 85 a8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x258],0x0
    214fa493e062:	e9 1b 00 00 00                                  	jmp    0x214fa493e082
    214fa493e067:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa493e06d:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493e071:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493e075:	48 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rdi
    214fa493e07c:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa493e082:	85 f6                                           	test   esi,esi
    214fa493e084:	0f 85 10 00 00 00                               	jne    0x214fa493e09a
    214fa493e08a:	48 c7 85 18 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x2e8],0x0
    214fa493e095:	e9 1b 00 00 00                                  	jmp    0x214fa493e0b5
    214fa493e09a:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    214fa493e0a0:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493e0a4:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493e0a8:	48 89 bd 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rdi
    214fa493e0af:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa493e0b5:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493e0bc:	0f 83 36 00 00 00                               	jae    0x214fa493e0f8
    214fa493e0c2:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    214fa493e0c8:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    214fa493e0ce:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    214fa493e0d2:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    214fa493e0d7:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493e0dc:	c4 63 19 22 a5 a8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x258],0x1
    214fa493e0e6:	c4 63 19 22 a5 18 fd ff ff 02                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x2e8],0x2
    214fa493e0f0:	45 33 e4                                        	xor    r12d,r12d
    214fa493e0f3:	e9 9a 00 00 00                                  	jmp    0x214fa493e192
    214fa493e0f8:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    214fa493e0ff:	44 8b 8d 18 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x2e8]
    214fa493e106:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    214fa493e10c:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493e110:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493e114:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    214fa493e11a:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    214fa493e120:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    214fa493e124:	c5 79 6e a5 b8 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x248]
    214fa493e12c:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493e131:	c4 63 19 22 a5 a8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x258],0x1
    214fa493e13b:	c4 43 19 22 e1 02                               	vpinsrd xmm12,xmm12,r9d,0x2
    214fa493e141:	45 85 e4                                        	test   r12d,r12d
    214fa493e144:	0f 85 3f 00 00 00                               	jne    0x214fa493e189
    214fa493e14a:	c4 c3 79 16 ec 01                               	vpextrd r12d,xmm5,0x1
    214fa493e150:	47 8d 24 a3                                     	lea    r12d,[r11+r12*4]
    214fa493e154:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493e158:	c4 c1 79 7e ef                                  	vmovd  r15d,xmm5
    214fa493e15d:	47 8d 3c bb                                     	lea    r15d,[r11+r15*4]
    214fa493e161:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493e165:	c4 e3 79 16 e8 02                               	vpextrd eax,xmm5,0x2
    214fa493e16b:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    214fa493e16f:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493e173:	8b d8                                           	mov    ebx,eax
    214fa493e175:	41 8b c7                                        	mov    eax,r15d
    214fa493e178:	45 8b fc                                        	mov    r15d,r12d
    214fa493e17b:	44 8b e7                                        	mov    r12d,edi
    214fa493e17e:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa493e184:	e9 75 00 00 00                                  	jmp    0x214fa493e1fe
    214fa493e189:	44 8b e7                                        	mov    r12d,edi
    214fa493e18c:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa493e192:	85 c0                                           	test   eax,eax
    214fa493e194:	0f 85 07 00 00 00                               	jne    0x214fa493e1a1
    214fa493e19a:	33 c0                                           	xor    eax,eax
    214fa493e19c:	e9 0c 00 00 00                                  	jmp    0x214fa493e1ad
    214fa493e1a1:	c5 f9 7e e8                                     	vmovd  eax,xmm5
    214fa493e1a5:	41 8d 04 83                                     	lea    eax,[r11+rax*4]
    214fa493e1a9:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493e1ad:	45 85 ff                                        	test   r15d,r15d
    214fa493e1b0:	0f 85 08 00 00 00                               	jne    0x214fa493e1be
    214fa493e1b6:	45 33 ff                                        	xor    r15d,r15d
    214fa493e1b9:	e9 0e 00 00 00                                  	jmp    0x214fa493e1cc
    214fa493e1be:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    214fa493e1c4:	47 8d 3c bb                                     	lea    r15d,[r11+r15*4]
    214fa493e1c8:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493e1cc:	85 f6                                           	test   esi,esi
    214fa493e1ce:	0f 85 07 00 00 00                               	jne    0x214fa493e1db
    214fa493e1d4:	33 db                                           	xor    ebx,ebx
    214fa493e1d6:	e9 0e 00 00 00                                  	jmp    0x214fa493e1e9
    214fa493e1db:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    214fa493e1e1:	41 8d 1c 9b                                     	lea    ebx,[r11+rbx*4]
    214fa493e1e5:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa493e1e9:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493e1f0:	0f 83 08 00 00 00                               	jae    0x214fa493e1fe
    214fa493e1f6:	45 33 db                                        	xor    r11d,r11d
    214fa493e1f9:	e9 0e 00 00 00                                  	jmp    0x214fa493e20c
    214fa493e1fe:	c4 e3 79 16 ea 03                               	vpextrd edx,xmm5,0x3
    214fa493e204:	45 8d 1c 93                                     	lea    r11d,[r11+rdx*4]
    214fa493e208:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493e20c:	c4 e3 39 22 e9 03                               	vpinsrd xmm5,xmm8,ecx,0x3
    214fa493e212:	c4 63 29 22 c7 03                               	vpinsrd xmm8,xmm10,edi,0x3
    214fa493e218:	c5 79 6e d0                                     	vmovd  xmm10,eax
    214fa493e21c:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa493e221:	c4 43 29 22 d7 01                               	vpinsrd xmm10,xmm10,r15d,0x1
    214fa493e227:	c4 63 29 22 d3 02                               	vpinsrd xmm10,xmm10,ebx,0x2
    214fa493e22d:	c4 43 29 22 eb 03                               	vpinsrd xmm13,xmm10,r11d,0x3
    214fa493e233:	c4 43 19 22 d4 03                               	vpinsrd xmm10,xmm12,r12d,0x3
    214fa493e239:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    214fa493e23e:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    214fa493e243:	c5 a9 72 d5 18                                  	vpsrld xmm10,xmm5,0x18
    214fa493e248:	c4 c1 71 72 d4 18                               	vpsrld xmm1,xmm12,0x18
    214fa493e24e:	c5 29 6b d1                                     	vpackssdw xmm10,xmm10,xmm1
    214fa493e252:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa493e256:	c4 c3 71 0f d2 08                               	vpalignr xmm2,xmm1,xmm10,0x8
    214fa493e25c:	c5 29 61 d2                                     	vpunpcklwd xmm10,xmm10,xmm2
    214fa493e260:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    214fa493e26a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa493e26f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa493e273:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    214fa493e278:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    214fa493e282:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa493e287:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa493e28c:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    214fa493e291:	4c 8b 15 8f c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc98f]        # 0x214fa493ac27
    214fa493e298:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa493e29d:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa493e2a1:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    214fa493e2a5:	4c 8b 15 92 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc992]        # 0x214fa493ac3e
    214fa493e2ac:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    214fa493e2b1:	c4 c1 48 54 e7                                  	vandps xmm4,xmm6,xmm15
    214fa493e2b6:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    214fa493e2bc:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa493e2c0:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa493e2c5:	4c 8b 15 89 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9b89]        # 0x214fa4937e55
    214fa493e2cc:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    214fa493e2d1:	c4 c1 48 c2 f6 01                               	vcmpltps xmm6,xmm6,xmm14
    214fa493e2d7:	c5 49 df ff                                     	vpandn xmm15,xmm6,xmm7
    214fa493e2db:	c5 d9 db f6                                     	vpand  xmm6,xmm4,xmm6
    214fa493e2df:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa493e2e4:	c5 e9 fa e6                                     	vpsubd xmm4,xmm2,xmm6
    214fa493e2e8:	c5 d9 6b f6                                     	vpackssdw xmm6,xmm4,xmm6
    214fa493e2ec:	c4 e3 71 0f e6 08                               	vpalignr xmm4,xmm1,xmm6,0x8
    214fa493e2f2:	c5 c9 61 f4                                     	vpunpcklwd xmm6,xmm6,xmm4
    214fa493e2f6:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    214fa493e2fa:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    214fa493e2ff:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa493e304:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    214fa493e308:	4c 8b 15 2f c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc92f]        # 0x214fa493ac3e
    214fa493e30f:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa493e314:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    214fa493e319:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa493e31f:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    214fa493e324:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    214fa493e329:	4c 8b 15 25 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9b25]        # 0x214fa4937e55
    214fa493e330:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa493e335:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    214fa493e33b:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    214fa493e33f:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    214fa493e343:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493e348:	c5 e9 fa f8                                     	vpsubd xmm7,xmm2,xmm0
    214fa493e34c:	c4 62 29 40 cf                                  	vpmulld xmm9,xmm10,xmm7
    214fa493e351:	c4 c1 29 72 d0 18                               	vpsrld xmm10,xmm8,0x18
    214fa493e357:	c4 c1 21 72 d5 18                               	vpsrld xmm11,xmm13,0x18
    214fa493e35d:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    214fa493e362:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    214fa493e368:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    214fa493e36d:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    214fa493e371:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    214fa493e376:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa493e37b:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    214fa493e385:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa493e38a:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa493e38f:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa493e394:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    214fa493e39a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e39f:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa493e3a5:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa493e3aa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e3af:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa493e3b5:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa493e3ba:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa493e3bf:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa493e3c4:	4c 8b 15 b7 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8b7]        # 0x214fa493cc82
    214fa493e3cb:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa493e3d0:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa493e3d5:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa493e3da:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493e3dd:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    214fa493e3e7:	c5 b1 72 d5 10                                  	vpsrld xmm9,xmm5,0x10
    214fa493e3ec:	4c 8b 15 a7 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a7]        # 0x214fa493cb9a
    214fa493e3f3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493e3f8:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa493e3fd:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    214fa493e402:	c4 c1 69 72 d4 10                               	vpsrld xmm2,xmm12,0x10
    214fa493e408:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa493e40d:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    214fa493e411:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    214fa493e417:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    214fa493e41b:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    214fa493e41f:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    214fa493e424:	c4 c1 69 72 d0 10                               	vpsrld xmm2,xmm8,0x10
    214fa493e42a:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa493e42f:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    214fa493e435:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    214fa493e43a:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    214fa493e43e:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    214fa493e444:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    214fa493e448:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    214fa493e44c:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    214fa493e451:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    214fa493e455:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa493e45a:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    214fa493e460:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e465:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa493e46b:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa493e470:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e475:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa493e47b:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa493e480:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa493e485:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa493e48a:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa493e48f:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    214fa493e499:	c5 b1 72 d5 08                                  	vpsrld xmm9,xmm5,0x8
    214fa493e49e:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    214fa493e4a3:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    214fa493e4a9:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa493e4ae:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    214fa493e4b2:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    214fa493e4b8:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    214fa493e4bc:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    214fa493e4c0:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    214fa493e4c5:	c4 c1 69 72 d0 08                               	vpsrld xmm2,xmm8,0x8
    214fa493e4cb:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa493e4d0:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    214fa493e4d6:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    214fa493e4db:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    214fa493e4df:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    214fa493e4e5:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    214fa493e4e9:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    214fa493e4ed:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    214fa493e4f2:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    214fa493e4f6:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa493e4fb:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    214fa493e501:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e506:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa493e50c:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa493e511:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e516:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa493e51c:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa493e521:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa493e526:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa493e52b:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa493e530:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    214fa493e53a:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa493e53f:	c4 41 19 db ce                                  	vpand  xmm9,xmm12,xmm14
    214fa493e544:	c4 c1 51 6b e9                                  	vpackssdw xmm5,xmm5,xmm9
    214fa493e549:	c4 63 71 0f cd 08                               	vpalignr xmm9,xmm1,xmm5,0x8
    214fa493e54f:	c4 c1 51 61 e9                                  	vpunpcklwd xmm5,xmm5,xmm9
    214fa493e554:	c5 d1 f5 ee                                     	vpmaddwd xmm5,xmm5,xmm6
    214fa493e558:	c4 e2 51 40 ef                                  	vpmulld xmm5,xmm5,xmm7
    214fa493e55d:	c4 c1 39 db fe                                  	vpand  xmm7,xmm8,xmm14
    214fa493e562:	c4 41 11 db c6                                  	vpand  xmm8,xmm13,xmm14
    214fa493e567:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    214fa493e56c:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    214fa493e572:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    214fa493e577:	c5 c1 f5 f6                                     	vpmaddwd xmm6,xmm7,xmm6
    214fa493e57b:	c4 e2 49 40 c0                                  	vpmulld xmm0,xmm6,xmm0
    214fa493e580:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    214fa493e584:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    214fa493e589:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    214fa493e58e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e593:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa493e599:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa493e59e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e5a3:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa493e5a8:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa493e5ac:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa493e5b0:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa493e5b5:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa493e5ba:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa493e5c4:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    214fa493e5cb:	e9 35 05 00 00                                  	jmp    0x214fa493eb05
    214fa493e5d0:	45 85 e4                                        	test   r12d,r12d
    214fa493e5d3:	0f 85 23 00 00 00                               	jne    0x214fa493e5fc
    214fa493e5d9:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    214fa493e5df:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493e5e3:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493e5e7:	45 8d 24 9b                                     	lea    r12d,[r11+rbx*4]
    214fa493e5eb:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493e5ef:	47 8d 3c 8b                                     	lea    r15d,[r11+r9*4]
    214fa493e5f3:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa493e5f7:	e9 69 00 00 00                                  	jmp    0x214fa493e665
    214fa493e5fc:	f6 85 38 fe ff ff 01                            	test   BYTE PTR [rbp-0x1c8],0x1
    214fa493e603:	0f 85 08 00 00 00                               	jne    0x214fa493e611
    214fa493e609:	45 33 ff                                        	xor    r15d,r15d
    214fa493e60c:	e9 08 00 00 00                                  	jmp    0x214fa493e619
    214fa493e611:	43 8d 3c 8b                                     	lea    edi,[r11+r9*4]
    214fa493e615:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa493e619:	f6 85 38 fe ff ff 02                            	test   BYTE PTR [rbp-0x1c8],0x2
    214fa493e620:	0f 85 08 00 00 00                               	jne    0x214fa493e62e
    214fa493e626:	45 33 e4                                        	xor    r12d,r12d
    214fa493e629:	e9 08 00 00 00                                  	jmp    0x214fa493e636
    214fa493e62e:	41 8d 3c 9b                                     	lea    edi,[r11+rbx*4]
    214fa493e632:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    214fa493e636:	f6 85 38 fe ff ff 04                            	test   BYTE PTR [rbp-0x1c8],0x4
    214fa493e63d:	0f 85 07 00 00 00                               	jne    0x214fa493e64a
    214fa493e643:	33 ff                                           	xor    edi,edi
    214fa493e645:	e9 0e 00 00 00                                  	jmp    0x214fa493e658
    214fa493e64a:	8b bd 40 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1c0]
    214fa493e650:	41 8d 3c bb                                     	lea    edi,[r11+rdi*4]
    214fa493e654:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa493e658:	83 bd 38 fe ff ff 08                            	cmp    DWORD PTR [rbp-0x1c8],0x8
    214fa493e65f:	0f 82 13 00 00 00                               	jb     0x214fa493e678
    214fa493e665:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa493e66b:	45 8d 1c 83                                     	lea    r11d,[r11+rax*4]
    214fa493e66f:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493e673:	e9 03 00 00 00                                  	jmp    0x214fa493e67b
    214fa493e678:	45 33 db                                        	xor    r11d,r11d
    214fa493e67b:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    214fa493e680:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa493e685:	c4 c3 79 22 c4 01                               	vpinsrd xmm0,xmm0,r12d,0x1
    214fa493e68b:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    214fa493e691:	c4 c3 79 22 c3 03                               	vpinsrd xmm0,xmm0,r11d,0x3
    214fa493e697:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    214fa493e69c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e6a1:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa493e6a7:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa493e6ac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e6b1:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa493e6b6:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa493e6ba:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa493e6be:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa493e6c3:	4c 8b 15 b8 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5b8]        # 0x214fa493cc82
    214fa493e6ca:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa493e6cf:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa493e6d3:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    214fa493e6d7:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493e6da:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    214fa493e6e4:	4c 8b 15 af e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4af]        # 0x214fa493cb9a
    214fa493e6eb:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493e6f0:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa493e6f4:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    214fa493e6f8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e6fd:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa493e703:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa493e708:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e70d:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa493e712:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa493e716:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa493e71a:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa493e71f:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    214fa493e723:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    214fa493e72d:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    214fa493e732:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    214fa493e736:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e73b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa493e741:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa493e746:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e74b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa493e750:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa493e754:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa493e758:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa493e75d:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    214fa493e761:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    214fa493e76b:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    214fa493e770:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa493e774:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa493e779:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa493e77f:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa493e784:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa493e789:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa493e78e:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa493e792:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa493e796:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa493e79b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa493e79f:	c4 c1 7a 7f 84 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm0
    214fa493e7a9:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    214fa493e7b0:	e9 50 03 00 00                                  	jmp    0x214fa493eb05
    214fa493e7b5:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    214fa493e7bb:	4d 8d 58 58                                     	lea    r11,[r8+0x58]
    214fa493e7bf:	4d 8b e7                                        	mov    r12,r15
    214fa493e7c2:	c4 82 79 18 24 23                               	vbroadcastss xmm4,DWORD PTR [r11+r12*1]
    214fa493e7c8:	c5 20 59 dc                                     	vmulps xmm11,xmm11,xmm4
    214fa493e7cc:	4c 8b f8                                        	mov    r15,rax
    214fa493e7cf:	c4 82 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [r11+r15*1]
    214fa493e7d5:	c5 08 59 f4                                     	vmulps xmm14,xmm14,xmm4
    214fa493e7d9:	c4 41 20 58 de                                  	vaddps xmm11,xmm11,xmm14
    214fa493e7de:	48 8b c2                                        	mov    rax,rdx
    214fa493e7e1:	c4 42 79 18 34 03                               	vbroadcastss xmm14,DWORD PTR [r11+rax*1]
    214fa493e7e7:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    214fa493e7ec:	c4 41 20 58 c9                                  	vaddps xmm9,xmm11,xmm9
    214fa493e7f1:	c4 41 10 59 c9                                  	vmulps xmm9,xmm13,xmm9
    214fa493e7f6:	83 f9 03                                        	cmp    ecx,0x3
    214fa493e7f9:	0f 84 79 02 00 00                               	je     0x214fa493ea78
    214fa493e7ff:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa493e804:	44 8b 9d 18 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3e8]
    214fa493e80b:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    214fa493e811:	8b 9d 40 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x4c0]
    214fa493e817:	c4 41 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+rbx*1],xmm11
    214fa493e81d:	c4 41 7a 7f 9c 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm11
    214fa493e827:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    214fa493e831:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    214fa493e83b:	c4 41 7a 7f 8c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm9
    214fa493e845:	c4 41 7a 7f 9c 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm11
    214fa493e84f:	33 d2                                           	xor    edx,edx
    214fa493e851:	e9 3e 00 00 00                                  	jmp    0x214fa493e894
    214fa493e856:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493e85f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493e868:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493e871:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493e87a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    214fa493e880:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    214fa493e887:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493e88a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493e88e:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa493e894:	48 89 95 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdx
    214fa493e89b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa493e8a0:	0f 85 c3 39 00 00                               	jne    0x214fa4942269
    214fa493e8a6:	8b ca                                           	mov    ecx,edx
    214fa493e8a8:	d3 ee                                           	shr    esi,cl
    214fa493e8aa:	40 f6 c6 01                                     	test   sil,0x1
    214fa493e8ae:	0f 84 2d 01 00 00                               	je     0x214fa493e9e1
    214fa493e8b4:	43 8b 4c 08 10                                  	mov    ecx,DWORD PTR [r8+r9*1+0x10]
    214fa493e8b9:	43 8b 74 08 0c                                  	mov    esi,DWORD PTR [r8+r9*1+0xc]
    214fa493e8be:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    214fa493e8c5:	43 8b 4c 08 08                                  	mov    ecx,DWORD PTR [r8+r9*1+0x8]
    214fa493e8ca:	43 8b 4c 08 04                                  	mov    ecx,DWORD PTR [r8+r9*1+0x4]
    214fa493e8cf:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    214fa493e8d6:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    214fa493e8da:	83 f9 02                                        	cmp    ecx,0x2
    214fa493e8dd:	0f 84 9d 00 00 00                               	je     0x214fa493e980
    214fa493e8e3:	85 c9                                           	test   ecx,ecx
    214fa493e8e5:	0f 85 47 00 00 00                               	jne    0x214fa493e932
    214fa493e8eb:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    214fa493e8f2:	c4 c1 7a 10 04 08                               	vmovss xmm0,DWORD PTR [r8+rcx*1]
    214fa493e8f8:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa493e8fe:	48 89 b5 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rsi
    214fa493e905:	8b f2                                           	mov    esi,edx
    214fa493e907:	c1 e6 04                                        	shl    esi,0x4
    214fa493e90a:	03 ce                                           	add    ecx,esi
    214fa493e90c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493e910:	8b 85 40 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1c0]
    214fa493e916:	8b 95 b8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x248]
    214fa493e91c:	8b d9                                           	mov    ebx,ecx
    214fa493e91e:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    214fa493e924:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    214fa493e928:	e8 f3 98 ee ff                                  	call   0x214fa4828220
    214fa493e92d:	e9 af 00 00 00                                  	jmp    0x214fa493e9e1
    214fa493e932:	4d 8b d9                                        	mov    r11,r9
    214fa493e935:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    214fa493e93a:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    214fa493e941:	c4 c1 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+rcx*1]
    214fa493e947:	8d 8c 97 80 02 00 00                            	lea    ecx,[rdi+rdx*4+0x280]
    214fa493e94e:	c4 c1 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+rcx*1]
    214fa493e954:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa493e95a:	44 8b ca                                        	mov    r9d,edx
    214fa493e95d:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa493e961:	44 03 c9                                        	add    r9d,ecx
    214fa493e964:	8b d6                                           	mov    edx,esi
    214fa493e966:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493e96a:	8b 85 40 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1c0]
    214fa493e970:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    214fa493e976:	e8 bd 98 ee ff                                  	call   0x214fa4828238
    214fa493e97b:	e9 61 00 00 00                                  	jmp    0x214fa493e9e1
    214fa493e980:	4d 8b d9                                        	mov    r11,r9
    214fa493e983:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    214fa493e988:	47 8b 4c 18 18                                  	mov    r9d,DWORD PTR [r8+r11*1+0x18]
    214fa493e98d:	44 8d a4 97 90 02 00 00                         	lea    r12d,[rdi+rdx*4+0x290]
    214fa493e995:	c4 81 7a 10 0c 20                               	vmovss xmm1,DWORD PTR [r8+r12*1]
    214fa493e99b:	44 8d a4 97 80 02 00 00                         	lea    r12d,[rdi+rdx*4+0x280]
    214fa493e9a3:	c4 81 7a 10 14 20                               	vmovss xmm2,DWORD PTR [r8+r12*1]
    214fa493e9a9:	44 8d a4 97 70 02 00 00                         	lea    r12d,[rdi+rdx*4+0x270]
    214fa493e9b1:	c4 81 7a 10 1c 20                               	vmovss xmm3,DWORD PTR [r8+r12*1]
    214fa493e9b7:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    214fa493e9be:	44 8b fa                                        	mov    r15d,edx
    214fa493e9c1:	41 c1 e7 04                                     	shl    r15d,0x4
    214fa493e9c5:	45 03 e7                                        	add    r12d,r15d
    214fa493e9c8:	41 54                                           	push   r12
    214fa493e9ca:	8b d6                                           	mov    edx,esi
    214fa493e9cc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493e9d0:	8b 85 40 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1c0]
    214fa493e9d6:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    214fa493e9dc:	e8 47 98 ee ff                                  	call   0x214fa4828228
    214fa493e9e1:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    214fa493e9e7:	83 c2 01                                        	add    edx,0x1
    214fa493e9ea:	83 fa 04                                        	cmp    edx,0x4
    214fa493e9ed:	0f 85 8d fe ff ff                               	jne    0x214fa493e880
    214fa493e9f3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493e9f6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493e9fa:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    214fa493ea04:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    214fa493ea0e:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    214fa493ea12:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    214fa493ea1c:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    214fa493ea26:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    214fa493ea2b:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    214fa493ea2f:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    214fa493ea39:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    214fa493ea3d:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    214fa493ea47:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    214fa493ea4b:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    214fa493ea50:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    214fa493ea54:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    214fa493ea5e:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    214fa493ea62:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa493ea6c:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    214fa493ea73:	e9 8d 00 00 00                                  	jmp    0x214fa493eb05
    214fa493ea78:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    214fa493ea7e:	8b d6                                           	mov    edx,esi
    214fa493ea80:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493ea84:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    214fa493ea8a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa493ea8e:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa493ea92:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    214fa493ea97:	e8 8c 9a ee ff                                  	call   0x214fa4828528
    214fa493ea9c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493ea9f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493eaa3:	4c 8b 9d 70 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x190]
    214fa493eaaa:	e9 56 00 00 00                                  	jmp    0x214fa493eb05
    214fa493eaaf:	4d 8d 60 3c                                     	lea    r12,[r8+0x3c]
    214fa493eab3:	49 8b c9                                        	mov    rcx,r9
    214fa493eab6:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    214fa493eabc:	c4 41 7a 7f 8c 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm9
    214fa493eac6:	4d 8d 60 40                                     	lea    r12,[r8+0x40]
    214fa493eaca:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    214fa493ead0:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    214fa493eada:	4d 8d 60 44                                     	lea    r12,[r8+0x44]
    214fa493eade:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    214fa493eae4:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    214fa493eaee:	4d 8d 60 48                                     	lea    r12,[r8+0x48]
    214fa493eaf2:	c4 42 79 18 0c 0c                               	vbroadcastss xmm9,DWORD PTR [r12+rcx*1]
    214fa493eaf8:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    214fa493eb02:	4c 8b d9                                        	mov    r11,rcx
    214fa493eb05:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    214fa493eb0f:	47 8b a4 18 34 01 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0x134]
    214fa493eb17:	43 83 bc 18 34 01 00 00 02                      	cmp    DWORD PTR [r8+r11*1+0x134],0x2
    214fa493eb20:	0f 84 64 00 00 00                               	je     0x214fa493eb8a
    214fa493eb26:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    214fa493eb30:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa493eb35:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    214fa493eb39:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    214fa493eb43:	c5 f8 10 bd 60 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xa0]
    214fa493eb4b:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    214fa493eb4f:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    214fa493eb59:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa493eb61:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    214fa493eb65:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa493eb6d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa493eb71:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa493eb75:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493eb7d:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493eb85:	e9 32 00 00 00                                  	jmp    0x214fa493ebbc
    214fa493eb8a:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    214fa493eb94:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    214fa493eb9e:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    214fa493eba8:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa493ebac:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493ebb4:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493ebbc:	c4 41 49 6a d0                                  	vpunpckhdq xmm10,xmm6,xmm8
    214fa493ebc1:	c5 79 6a df                                     	vpunpckhdq xmm11,xmm0,xmm7
    214fa493ebc5:	c4 41 21 6d e2                                  	vpunpckhqdq xmm12,xmm11,xmm10
    214fa493ebca:	c4 41 7a 7f a4 38 60 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x160],xmm12
    214fa493ebd4:	c4 41 21 6c d2                                  	vpunpcklqdq xmm10,xmm11,xmm10
    214fa493ebd9:	c4 41 7a 7f 94 38 50 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x150],xmm10
    214fa493ebe3:	c4 c1 49 62 f0                                  	vpunpckldq xmm6,xmm6,xmm8
    214fa493ebe8:	c5 f9 62 c7                                     	vpunpckldq xmm0,xmm0,xmm7
    214fa493ebec:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    214fa493ebf0:	c4 c1 7a 7f bc 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm7
    214fa493ebfa:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    214fa493ebfe:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    214fa493ec08:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    214fa493ec0f:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa493ec13:	48 8b 85 60 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a0]
    214fa493ec1a:	4c 8b bd 58 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a8]
    214fa493ec21:	48 8b 95 50 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2b0]
    214fa493ec28:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    214fa493ec30:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    214fa493ec33:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    214fa493ec38:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493ec40:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa493ec46:	c5 f8 10 85 00 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x300]
    214fa493ec4e:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    214fa493ec56:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa493ec5e:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    214fa493ec66:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa493ec6e:	45 8b e3                                        	mov    r12d,r11d
    214fa493ec71:	45 33 db                                        	xor    r11d,r11d
    214fa493ec74:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa493ec7a:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    214fa493ec7e:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    214fa493ec85:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa493ec8a:	e9 41 00 00 00                                  	jmp    0x214fa493ecd0
    214fa493ec8f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493ec98:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493eca1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493ecaa:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493ecb3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa493ecbc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    214fa493ecc0:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa493ecc6:	48 8b cb                                        	mov    rcx,rbx
    214fa493ecc9:	44 8b a5 b0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x250]
    214fa493ecd0:	4c 89 9d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],r11
    214fa493ecd7:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa493ecdc:	0f 85 ab 35 00 00                               	jne    0x214fa494228d
    214fa493ece2:	48 8b d9                                        	mov    rbx,rcx
    214fa493ece5:	41 8b cb                                        	mov    ecx,r11d
    214fa493ece8:	d3 ee                                           	shr    esi,cl
    214fa493ecea:	40 f6 c6 01                                     	test   sil,0x1
    214fa493ecee:	0f 84 6e 12 00 00                               	je     0x214fa493ff62
    214fa493ecf4:	41 8b cb                                        	mov    ecx,r11d
    214fa493ecf7:	c1 e1 04                                        	shl    ecx,0x4
    214fa493ecfa:	42 8d 34 21                                     	lea    esi,[rcx+r12*1]
    214fa493ecfe:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    214fa493ed05:	44 03 e1                                        	add    r12d,ecx
    214fa493ed08:	42 8d 4c 9f 3c                                  	lea    ecx,[rdi+r11*4+0x3c]
    214fa493ed0d:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa493ed11:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    214fa493ed16:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa493ed1a:	43 8d 04 99                                     	lea    eax,[r9+r11*4]
    214fa493ed1e:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa493ed22:	83 bd c8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x238],0x0
    214fa493ed29:	0f 85 ec 11 00 00                               	jne    0x214fa493ff1b
    214fa493ed2f:	45 8b 5c 18 74                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x74]
    214fa493ed34:	41 83 7c 18 74 00                               	cmp    DWORD PTR [r8+rbx*1+0x74],0x0
    214fa493ed3a:	0f 85 86 11 00 00                               	jne    0x214fa493fec6
    214fa493ed40:	c4 01 7a 6f 1c 20                               	vmovdqu xmm11,XMMWORD PTR [r8+r12*1]
    214fa493ed46:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    214fa493ed4b:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    214fa493ed50:	c4 41 30 c2 e3 01                               	vcmpltps xmm12,xmm9,xmm11
    214fa493ed56:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    214fa493ed5b:	c4 41 29 db dc                                  	vpand  xmm11,xmm10,xmm12
    214fa493ed60:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa493ed65:	4c 8b 15 a4 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea4]        # 0x214fa493ac10
    214fa493ed6c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493ed71:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa493ed76:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    214fa493ed7b:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x214fa493ac27
    214fa493ed82:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493ed87:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa493ed8c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    214fa493ed91:	4c 8b 15 a6 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea6]        # 0x214fa493ac3e
    214fa493ed98:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    214fa493ed9e:	c4 41 20 54 e7                                  	vandps xmm12,xmm11,xmm15
    214fa493eda3:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    214fa493eda9:	c4 41 7a 5b e4                                  	vcvttps2dq xmm12,xmm12
    214fa493edae:	c4 41 19 ef e7                                  	vpxor  xmm12,xmm12,xmm15
    214fa493edb3:	4c 8b 15 a7 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea7]        # 0x214fa493ac61
    214fa493edba:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa493edbf:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa493edc4:	4c 8b 15 8a 90 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff908a]        # 0x214fa4937e55
    214fa493edcb:	c4 41 20 54 1a                                  	vandps xmm11,xmm11,XMMWORD PTR [r10]
    214fa493edd0:	4c 8b 15 a9 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea9]        # 0x214fa493ac80
    214fa493edd7:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493eddc:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa493ede1:	c4 41 20 c2 de 01                               	vcmpltps xmm11,xmm11,xmm14
    214fa493ede7:	c4 41 21 df fd                                  	vpandn xmm15,xmm11,xmm13
    214fa493edec:	c4 41 19 db db                                  	vpand  xmm11,xmm12,xmm11
    214fa493edf1:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa493edf6:	c4 42 21 2b db                                  	vpackusdw xmm11,xmm11,xmm11
    214fa493edfb:	c4 41 21 67 db                                  	vpackuswb xmm11,xmm11,xmm11
    214fa493ee00:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa493ee05:	45 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+rbx*1]
    214fa493ee09:	44 0f af da                                     	imul   r11d,edx
    214fa493ee0d:	44 03 d8                                        	add    r11d,eax
    214fa493ee10:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    214fa493ee18:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    214fa493ee1f:	41 8b 44 18 18                                  	mov    eax,DWORD PTR [r8+rbx*1+0x18]
    214fa493ee24:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa493ee28:	44 03 d8                                        	add    r11d,eax
    214fa493ee2b:	83 f9 0f                                        	cmp    ecx,0xf
    214fa493ee2e:	0f 84 a0 00 00 00                               	je     0x214fa493eed4
    214fa493ee34:	8b c1                                           	mov    eax,ecx
    214fa493ee36:	83 e0 01                                        	and    eax,0x1
    214fa493ee39:	f7 d8                                           	neg    eax
    214fa493ee3b:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa493ee3f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa493ee44:	8b c1                                           	mov    eax,ecx
    214fa493ee46:	c1 e0 1e                                        	shl    eax,0x1e
    214fa493ee49:	c1 f8 1f                                        	sar    eax,0x1f
    214fa493ee4c:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    214fa493ee52:	8b c1                                           	mov    eax,ecx
    214fa493ee54:	c1 e0 1d                                        	shl    eax,0x1d
    214fa493ee57:	c1 f8 1f                                        	sar    eax,0x1f
    214fa493ee5a:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    214fa493ee60:	8b c1                                           	mov    eax,ecx
    214fa493ee62:	c1 e0 1c                                        	shl    eax,0x1c
    214fa493ee65:	c1 f8 1f                                        	sar    eax,0x1f
    214fa493ee68:	c4 63 19 22 e0 03                               	vpinsrd xmm12,xmm12,eax,0x3
    214fa493ee6e:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    214fa493ee73:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    214fa493ee79:	0f 84 3b 00 00 00                               	je     0x214fa493eeba
    214fa493ee7f:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    214fa493ee84:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    214fa493ee8a:	0f 84 2a 00 00 00                               	je     0x214fa493eeba
    214fa493ee90:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    214fa493ee95:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa493ee99:	c4 41 7a 6f 2c 30                               	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1]
    214fa493ee9f:	c4 01 7a 6f 34 20                               	vmovdqu xmm14,XMMWORD PTR [r8+r12*1]
    214fa493eea5:	c4 41 19 df fe                                  	vpandn xmm15,xmm12,xmm14
    214fa493eeaa:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    214fa493eeaf:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    214fa493eeb4:	c4 01 7a 7f 2c 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm13
    214fa493eeba:	c4 01 7a 6f 2c 18                               	vmovdqu xmm13,XMMWORD PTR [r8+r11*1]
    214fa493eec0:	c4 41 19 df fd                                  	vpandn xmm15,xmm12,xmm13
    214fa493eec5:	c4 41 21 db dc                                  	vpand  xmm11,xmm11,xmm12
    214fa493eeca:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa493eecf:	e9 37 00 00 00                                  	jmp    0x214fa493ef0b
    214fa493eed4:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    214fa493eed9:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    214fa493eedf:	0f 84 26 00 00 00                               	je     0x214fa493ef0b
    214fa493eee5:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    214fa493eeea:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    214fa493eef0:	0f 84 15 00 00 00                               	je     0x214fa493ef0b
    214fa493eef6:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    214fa493eefb:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa493eeff:	c4 41 7a 6f 24 30                               	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1]
    214fa493ef05:	c4 01 7a 7f 24 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm12
    214fa493ef0b:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    214fa493ef11:	45 8b 5c 18 68                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x68]
    214fa493ef16:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    214fa493ef1c:	0f 84 40 10 00 00                               	je     0x214fa493ff62
    214fa493ef22:	45 8b 5c 18 70                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x70]
    214fa493ef27:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    214fa493ef2d:	0f 84 2f 10 00 00                               	je     0x214fa493ff62
    214fa493ef33:	45 8b 5c 18 14                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x14]
    214fa493ef38:	41 83 7c 18 14 04                               	cmp    DWORD PTR [r8+rbx*1+0x14],0x4
    214fa493ef3e:	0f 85 1e 10 00 00                               	jne    0x214fa493ff62
    214fa493ef44:	45 8b 5c 18 18                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x18]
    214fa493ef49:	45 85 db                                        	test   r11d,r11d
    214fa493ef4c:	0f 84 10 10 00 00                               	je     0x214fa493ff62
    214fa493ef52:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    214fa493ef56:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    214fa493ef5a:	43 83 3c 20 00                                  	cmp    DWORD PTR [r8+r12*1],0x0
    214fa493ef5f:	0f 84 fd 0f 00 00                               	je     0x214fa493ff62
    214fa493ef65:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    214fa493ef69:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493ef6d:	41 83 eb 3c                                     	sub    r11d,0x3c
    214fa493ef71:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa493ef75:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa493ef7b:	c1 e8 02                                        	shr    eax,0x2
    214fa493ef7e:	41 0f af c3                                     	imul   eax,r11d
    214fa493ef82:	c1 e0 04                                        	shl    eax,0x4
    214fa493ef85:	46 8d 1c 20                                     	lea    r11d,[rax+r12*1]
    214fa493ef89:	44 8d 24 95 00 00 00 00                         	lea    r12d,[rdx*4+0x0]
    214fa493ef91:	41 8b c4                                        	mov    eax,r12d
    214fa493ef94:	83 e0 f0                                        	and    eax,0xfffffff0
    214fa493ef97:	44 03 d8                                        	add    r11d,eax
    214fa493ef9a:	41 8b 44 18 6c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x6c]
    214fa493ef9f:	2d 01 02 00 00                                  	sub    eax,0x201
    214fa493efa4:	48 89 95 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rdx
    214fa493efab:	33 d2                                           	xor    edx,edx
    214fa493efad:	85 c0                                           	test   eax,eax
    214fa493efaf:	0f 94 c2                                        	sete   dl
    214fa493efb2:	83 f8 02                                        	cmp    eax,0x2
    214fa493efb5:	0f 94 c0                                        	sete   al
    214fa493efb8:	0f b6 c0                                        	movzx  eax,al
    214fa493efbb:	0b c2                                           	or     eax,edx
    214fa493efbd:	0f 85 0d 00 00 00                               	jne    0x214fa493efd0
    214fa493efc3:	4b c7 04 18 00 00 00 00                         	mov    QWORD PTR [r8+r11*1],0x0
    214fa493efcb:	e9 92 0f 00 00                                  	jmp    0x214fa493ff62
    214fa493efd0:	83 e1 0f                                        	and    ecx,0xf
    214fa493efd3:	41 83 e4 0c                                     	and    r12d,0xc
    214fa493efd7:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa493efdd:	83 e0 03                                        	and    eax,0x3
    214fa493efe0:	41 0b c4                                        	or     eax,r12d
    214fa493efe3:	44 8d 24 85 00 00 00 00                         	lea    r12d,[rax*4+0x0]
    214fa493efeb:	41 83 e4 3f                                     	and    r12d,0x3f
    214fa493efef:	4c 8b d1                                        	mov    r10,rcx
    214fa493eff2:	41 8b cc                                        	mov    ecx,r12d
    214fa493eff5:	4d 8b e2                                        	mov    r12,r10
    214fa493eff8:	49 d3 e4                                        	shl    r12,cl
    214fa493effb:	4b 8b 04 18                                     	mov    rax,QWORD PTR [r8+r11*1]
    214fa493efff:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa493f003:	0f 84 52 07 00 00                               	je     0x214fa493f75b
    214fa493f009:	49 0b c4                                        	or     rax,r12
    214fa493f00c:	4b 89 04 18                                     	mov    QWORD PTR [r8+r11*1],rax
    214fa493f010:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa493f014:	0f 85 48 0f 00 00                               	jne    0x214fa493ff62
    214fa493f01a:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    214fa493f01f:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa493f025:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa493f02a:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    214fa493f02e:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa493f034:	83 c9 03                                        	or     ecx,0x3
    214fa493f037:	0f af ca                                        	imul   ecx,edx
    214fa493f03a:	03 c8                                           	add    ecx,eax
    214fa493f03c:	c1 e1 04                                        	shl    ecx,0x4
    214fa493f03f:	41 03 cc                                        	add    ecx,r12d
    214fa493f042:	c4 41 7a 6f 5c 08 30                            	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0x30]
    214fa493f049:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa493f04f:	c4 41 7a 6f 6c 08 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rcx*1+0x20]
    214fa493f056:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa493f05c:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    214fa493f061:	c4 41 7a 6f 74 08 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rcx*1+0x10]
    214fa493f068:	c4 c1 08 c2 e6 00                               	vcmpeqps xmm4,xmm14,xmm14
    214fa493f06e:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    214fa493f072:	c4 c1 7a 6f 24 08                               	vmovdqu xmm4,XMMWORD PTR [r8+rcx*1]
    214fa493f078:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa493f07d:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    214fa493f081:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa493f087:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    214fa493f08d:	8b f1                                           	mov    esi,ecx
    214fa493f08f:	83 ce 02                                        	or     esi,0x2
    214fa493f092:	0f af f2                                        	imul   esi,edx
    214fa493f095:	03 f0                                           	add    esi,eax
    214fa493f097:	c1 e6 04                                        	shl    esi,0x4
    214fa493f09a:	41 03 f4                                        	add    esi,r12d
    214fa493f09d:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    214fa493f0a4:	c4 c1 18 c2 ec 00                               	vcmpeqps xmm5,xmm12,xmm12
    214fa493f0aa:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa493f0ae:	c4 c1 7a 6f 6c 30 20                            	vmovdqu xmm5,XMMWORD PTR [r8+rsi*1+0x20]
    214fa493f0b5:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa493f0ba:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa493f0be:	c4 c1 7a 6f 74 30 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x10]
    214fa493f0c5:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa493f0ca:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa493f0ce:	c4 c1 7a 6f 3c 30                               	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1]
    214fa493f0d4:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa493f0d9:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    214fa493f0de:	8b f1                                           	mov    esi,ecx
    214fa493f0e0:	83 ce 01                                        	or     esi,0x1
    214fa493f0e3:	0f af f2                                        	imul   esi,edx
    214fa493f0e6:	03 f0                                           	add    esi,eax
    214fa493f0e8:	c1 e6 04                                        	shl    esi,0x4
    214fa493f0eb:	41 03 f4                                        	add    esi,r12d
    214fa493f0ee:	c4 41 7a 6f 44 30 30                            	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1+0x30]
    214fa493f0f5:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa493f0fb:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    214fa493f100:	c4 41 7a 6f 4c 30 20                            	vmovdqu xmm9,XMMWORD PTR [r8+rsi*1+0x20]
    214fa493f107:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa493f10d:	c4 c1 79 db c2                                  	vpand  xmm0,xmm0,xmm10
    214fa493f112:	c4 41 7a 6f 54 30 10                            	vmovdqu xmm10,XMMWORD PTR [r8+rsi*1+0x10]
    214fa493f119:	c4 c1 28 c2 ca 00                               	vcmpeqps xmm1,xmm10,xmm10
    214fa493f11f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa493f123:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    214fa493f129:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa493f12e:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    214fa493f132:	0f af d1                                        	imul   edx,ecx
    214fa493f135:	03 c2                                           	add    eax,edx
    214fa493f137:	c1 e0 04                                        	shl    eax,0x4
    214fa493f13a:	44 03 e0                                        	add    r12d,eax
    214fa493f13d:	c4 81 7a 6f 54 20 30                            	vmovdqu xmm2,XMMWORD PTR [r8+r12*1+0x30]
    214fa493f144:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa493f149:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    214fa493f14d:	c4 81 7a 6f 5c 20 20                            	vmovdqu xmm3,XMMWORD PTR [r8+r12*1+0x20]
    214fa493f154:	c5 78 11 5d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm11
    214fa493f159:	c5 60 c2 db 00                                  	vcmpeqps xmm11,xmm3,xmm3
    214fa493f15e:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    214fa493f163:	c4 01 7a 6f 5c 20 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x10]
    214fa493f16a:	c5 78 11 ad 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm13
    214fa493f172:	c4 41 20 c2 eb 00                               	vcmpeqps xmm13,xmm11,xmm11
    214fa493f178:	c4 c1 79 db c5                                  	vpand  xmm0,xmm0,xmm13
    214fa493f17d:	c4 01 7a 6f 2c 20                               	vmovdqu xmm13,XMMWORD PTR [r8+r12*1]
    214fa493f183:	c5 78 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm14
    214fa493f18b:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa493f191:	c4 c1 79 db c6                                  	vpand  xmm0,xmm0,xmm14
    214fa493f196:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa493f19b:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa493f1a0:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    214fa493f1a4:	41 83 fc 0f                                     	cmp    r12d,0xf
    214fa493f1a8:	0f 84 26 00 00 00                               	je     0x214fa493f1d4
    214fa493f1ae:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    214fa493f1b7:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493f1bf:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493f1c7:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493f1cf:	e9 8e 0d 00 00                                  	jmp    0x214fa493ff62
    214fa493f1d4:	4c 8b 15 81 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe81]        # 0x214fa493b05c
    214fa493f1db:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f1e0:	4c 8b 15 84 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe84]        # 0x214fa493b06b
    214fa493f1e7:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f1ed:	4c 8b 15 87 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe87]        # 0x214fa493b07b
    214fa493f1f4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493f1f9:	4c 8b 15 8a be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8a]        # 0x214fa493b08a
    214fa493f200:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa493f206:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa493f20e:	4c 8b 15 8d be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8d]        # 0x214fa493b0a2
    214fa493f215:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f21a:	4c 8b 15 90 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe90]        # 0x214fa493b0b1
    214fa493f221:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f227:	c5 78 11 b5 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm14
    214fa493f22f:	4c 8b 15 93 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe93]        # 0x214fa493b0c9
    214fa493f236:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493f23b:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x214fa493b0d8
    214fa493f242:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa493f248:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa493f250:	4c 8b 15 99 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe99]        # 0x214fa493b0f0
    214fa493f257:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f25c:	4c 8b 15 9c be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9c]        # 0x214fa493b0ff
    214fa493f263:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f269:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    214fa493f271:	4c 8b 15 9f be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9f]        # 0x214fa493b117
    214fa493f278:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493f27d:	4c 8b 15 a2 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea2]        # 0x214fa493b126
    214fa493f284:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa493f28a:	c5 f8 11 a5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm4
    214fa493f292:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x214fa493b13e
    214fa493f299:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa493f29e:	4c 8b 15 a8 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea8]        # 0x214fa493b14d
    214fa493f2a5:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    214fa493f2ab:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa493f2b3:	4c 8b 15 ab be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeab]        # 0x214fa493b165
    214fa493f2ba:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f2bf:	4c 8b 15 ae be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeae]        # 0x214fa493b174
    214fa493f2c6:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f2cc:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    214fa493f2d4:	4c 8b 15 b1 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb1]        # 0x214fa493b18c
    214fa493f2db:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493f2e0:	4c 8b 15 b4 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb4]        # 0x214fa493b19b
    214fa493f2e7:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa493f2ed:	c5 78 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm14
    214fa493f2f5:	4c 8b 15 b7 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb7]        # 0x214fa493b1b3
    214fa493f2fc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493f301:	4c 8b 15 ba be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeba]        # 0x214fa493b1c2
    214fa493f308:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa493f30e:	c5 f8 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm5
    214fa493f316:	4c 8b 15 bd be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbebd]        # 0x214fa493b1da
    214fa493f31d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa493f322:	4c 8b 15 c0 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec0]        # 0x214fa493b1e9
    214fa493f329:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    214fa493f32f:	c5 f8 11 a5 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm4
    214fa493f337:	4c 8b 15 c3 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec3]        # 0x214fa493b201
    214fa493f33e:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa493f343:	4c 8b 15 c6 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec6]        # 0x214fa493b210
    214fa493f34a:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    214fa493f350:	c5 f8 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm6
    214fa493f358:	4c 8b 15 c9 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec9]        # 0x214fa493b228
    214fa493f35f:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa493f364:	4c 8b 15 cc be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecc]        # 0x214fa493b237
    214fa493f36b:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    214fa493f371:	c5 f8 11 85 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm0
    214fa493f379:	4c 8b 15 cf be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecf]        # 0x214fa493b24f
    214fa493f380:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f385:	4c 8b 15 d2 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbed2]        # 0x214fa493b25e
    214fa493f38c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f392:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    214fa493f39a:	4c 8b 15 d5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbed5]        # 0x214fa493b276
    214fa493f3a1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa493f3a6:	4c 8b 15 d8 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbed8]        # 0x214fa493b285
    214fa493f3ad:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa493f3b3:	c5 78 11 a5 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm12
    214fa493f3bb:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa493f3c0:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    214fa493f3c6:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    214fa493f3cc:	4c 8b 15 db be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbedb]        # 0x214fa493b2ae
    214fa493f3d3:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa493f3d9:	c5 78 11 85 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm8
    214fa493f3e1:	4c 8b 15 de be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbede]        # 0x214fa493b2c6
    214fa493f3e8:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493f3ed:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa493f3f2:	c5 78 11 b5 90 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x370],xmm14
    214fa493f3fa:	c4 41 38 c2 f5 01                               	vcmpltps xmm14,xmm8,xmm13
    214fa493f400:	c4 41 10 c2 c0 01                               	vcmpltps xmm8,xmm13,xmm8
    214fa493f406:	c4 41 09 eb c0                                  	vpor   xmm8,xmm14,xmm8
    214fa493f40b:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa493f410:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    214fa493f415:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa493f41a:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x214fa493b2c6
    214fa493f421:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493f426:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa493f42b:	c4 41 39 df fe                                  	vpandn xmm15,xmm8,xmm14
    214fa493f430:	c4 41 11 db c0                                  	vpand  xmm8,xmm13,xmm8
    214fa493f435:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa493f43a:	c4 41 38 c2 eb 01                               	vcmpltps xmm13,xmm8,xmm11
    214fa493f440:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    214fa493f445:	c4 c1 41 db fd                                  	vpand  xmm7,xmm7,xmm13
    214fa493f44a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa493f44f:	c4 41 11 df f8                                  	vpandn xmm15,xmm13,xmm8
    214fa493f454:	c4 41 21 db c5                                  	vpand  xmm8,xmm11,xmm13
    214fa493f459:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa493f45e:	c5 38 c2 db 01                                  	vcmpltps xmm11,xmm8,xmm3
    214fa493f463:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    214fa493f467:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    214fa493f46c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f471:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    214fa493f476:	c4 c1 61 db fb                                  	vpand  xmm7,xmm3,xmm11
    214fa493f47b:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa493f480:	c5 40 c2 c2 01                                  	vcmpltps xmm8,xmm7,xmm2
    214fa493f485:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    214fa493f489:	c4 c1 49 db c0                                  	vpand  xmm0,xmm6,xmm8
    214fa493f48e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f493:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    214fa493f497:	c4 c1 69 db f0                                  	vpand  xmm6,xmm2,xmm8
    214fa493f49c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa493f4a1:	c5 c8 c2 f9 01                                  	vcmpltps xmm7,xmm6,xmm1
    214fa493f4a6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f4aa:	c5 d9 db c7                                     	vpand  xmm0,xmm4,xmm7
    214fa493f4ae:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f4b3:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa493f4b7:	c5 f1 db f7                                     	vpand  xmm6,xmm1,xmm7
    214fa493f4bb:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa493f4c0:	c4 c1 48 c2 fa 01                               	vcmpltps xmm7,xmm6,xmm10
    214fa493f4c6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f4ca:	c5 d1 db c7                                     	vpand  xmm0,xmm5,xmm7
    214fa493f4ce:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f4d3:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa493f4d7:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    214fa493f4db:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f4e0:	c4 c1 50 c2 f1 01                               	vcmpltps xmm6,xmm5,xmm9
    214fa493f4e6:	c5 f8 10 bd 90 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x370]
    214fa493f4ee:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493f4f2:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa493f4f6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f4fb:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493f4ff:	c5 b1 db ee                                     	vpand  xmm5,xmm9,xmm6
    214fa493f503:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f508:	c5 f8 10 b5 20 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1e0]
    214fa493f510:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f515:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    214fa493f51d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f521:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f525:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f52a:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f52e:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f532:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f537:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa493f53f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f544:	c5 78 10 85 50 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1b0]
    214fa493f54c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f550:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f554:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f559:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f55d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f561:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f566:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa493f56e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f573:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa493f57b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f57f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f583:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f588:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f58c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f590:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f595:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa493f59d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f5a2:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa493f5aa:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f5ae:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f5b2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f5b7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f5bb:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f5bf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f5c4:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa493f5cc:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f5d1:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa493f5d9:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f5dd:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f5e1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f5e6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f5ea:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f5ee:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f5f3:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa493f5fb:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f600:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa493f608:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f60c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f610:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f615:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f619:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f61d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f622:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa493f62a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f62f:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa493f637:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f63b:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f63f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f644:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f648:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f64c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f651:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa493f659:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f65e:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa493f666:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f66a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f66e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f673:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f677:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493f67b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493f680:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa493f685:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493f68a:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa493f692:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493f696:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493f69a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f69f:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    214fa493f6a9:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493f6ad:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa493f6b1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493f6b6:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa493f6c0:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa493f6c4:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa493f6c8:	45 33 e4                                        	xor    r12d,r12d
    214fa493f6cb:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa493f6cf:	41 0f 97 c4                                     	seta   r12b
    214fa493f6d3:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    214fa493f6d9:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa493f6e1:	0b d0                                           	or     edx,eax
    214fa493f6e3:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa493f6e9:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa493f6ee:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493f6f2:	45 0f 47 e7                                     	cmova  r12d,r15d
    214fa493f6f6:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa493f6fe:	0b d0                                           	or     edx,eax
    214fa493f700:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa493f706:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa493f70b:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa493f710:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa493f714:	44 0f 47 e2                                     	cmova  r12d,edx
    214fa493f718:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa493f71c:	41 0b c4                                        	or     eax,r12d
    214fa493f71f:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa493f725:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    214fa493f72c:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    214fa493f732:	44 0b e0                                        	or     r12d,eax
    214fa493f735:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493f739:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    214fa493f73e:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493f746:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493f74e:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493f756:	e9 07 08 00 00                                  	jmp    0x214fa493ff62
    214fa493f75b:	43 8b 44 18 0c                                  	mov    eax,DWORD PTR [r8+r11*1+0xc]
    214fa493f760:	8b d0                                           	mov    edx,eax
    214fa493f762:	83 e2 3f                                        	and    edx,0x3f
    214fa493f765:	8b ca                                           	mov    ecx,edx
    214fa493f767:	49 d3 ec                                        	shr    r12,cl
    214fa493f76a:	41 f6 c4 01                                     	test   r12b,0x1
    214fa493f76e:	0f 84 ee 07 00 00                               	je     0x214fa493ff62
    214fa493f774:	83 e0 03                                        	and    eax,0x3
    214fa493f777:	44 8d 24 86                                     	lea    r12d,[rsi+rax*4]
    214fa493f77b:	c4 81 7a 10 04 20                               	vmovss xmm0,DWORD PTR [r8+r12*1]
    214fa493f781:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    214fa493f788:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    214fa493f78c:	0f 86 d0 07 00 00                               	jbe    0x214fa493ff62
    214fa493f792:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    214fa493f797:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa493f79d:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa493f7a2:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    214fa493f7a6:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa493f7ac:	83 c9 03                                        	or     ecx,0x3
    214fa493f7af:	0f af ca                                        	imul   ecx,edx
    214fa493f7b2:	03 c8                                           	add    ecx,eax
    214fa493f7b4:	c1 e1 04                                        	shl    ecx,0x4
    214fa493f7b7:	41 03 cc                                        	add    ecx,r12d
    214fa493f7ba:	c4 c1 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x30]
    214fa493f7c1:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    214fa493f7c6:	c4 c1 7a 6f 7c 08 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1+0x20]
    214fa493f7cd:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa493f7d2:	c4 c1 49 db f0                                  	vpand  xmm6,xmm6,xmm8
    214fa493f7d7:	c4 41 7a 6f 44 08 10                            	vmovdqu xmm8,XMMWORD PTR [r8+rcx*1+0x10]
    214fa493f7de:	c4 41 38 c2 d8 00                               	vcmpeqps xmm11,xmm8,xmm8
    214fa493f7e4:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    214fa493f7e9:	c4 41 7a 6f 1c 08                               	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1]
    214fa493f7ef:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa493f7f5:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    214fa493f7fa:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa493f800:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    214fa493f806:	8b f1                                           	mov    esi,ecx
    214fa493f808:	83 ce 02                                        	or     esi,0x2
    214fa493f80b:	0f af f2                                        	imul   esi,edx
    214fa493f80e:	03 f0                                           	add    esi,eax
    214fa493f810:	c1 e6 04                                        	shl    esi,0x4
    214fa493f813:	41 03 f4                                        	add    esi,r12d
    214fa493f816:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    214fa493f81d:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa493f823:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    214fa493f828:	c4 41 7a 6f 6c 30 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1+0x20]
    214fa493f82f:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa493f835:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    214fa493f83a:	c4 41 7a 6f 74 30 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rsi*1+0x10]
    214fa493f841:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa493f847:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    214fa493f84b:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    214fa493f851:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa493f856:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    214fa493f85a:	8b f1                                           	mov    esi,ecx
    214fa493f85c:	83 ce 01                                        	or     esi,0x1
    214fa493f85f:	0f af f2                                        	imul   esi,edx
    214fa493f862:	03 f0                                           	add    esi,eax
    214fa493f864:	c1 e6 04                                        	shl    esi,0x4
    214fa493f867:	41 03 f4                                        	add    esi,r12d
    214fa493f86a:	c4 c1 7a 6f 54 30 30                            	vmovdqu xmm2,XMMWORD PTR [r8+rsi*1+0x30]
    214fa493f871:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa493f876:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    214fa493f87a:	c4 c1 7a 6f 5c 30 20                            	vmovdqu xmm3,XMMWORD PTR [r8+rsi*1+0x20]
    214fa493f881:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa493f886:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    214fa493f88a:	c4 c1 7a 6f 64 30 10                            	vmovdqu xmm4,XMMWORD PTR [r8+rsi*1+0x10]
    214fa493f891:	c5 d8 c2 ec 00                                  	vcmpeqps xmm5,xmm4,xmm4
    214fa493f896:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    214fa493f89a:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    214fa493f8a0:	c5 48 c2 ce 00                                  	vcmpeqps xmm9,xmm6,xmm6
    214fa493f8a5:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa493f8aa:	0f af d1                                        	imul   edx,ecx
    214fa493f8ad:	03 c2                                           	add    eax,edx
    214fa493f8af:	c1 e0 04                                        	shl    eax,0x4
    214fa493f8b2:	44 03 e0                                        	add    r12d,eax
    214fa493f8b5:	c4 01 7a 6f 4c 20 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x30]
    214fa493f8bc:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa493f8c2:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa493f8c7:	c4 01 7a 6f 54 20 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r12*1+0x20]
    214fa493f8ce:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa493f8d3:	c4 c1 28 c2 c2 00                               	vcmpeqps xmm0,xmm10,xmm10
    214fa493f8d9:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa493f8dd:	c4 81 7a 6f 6c 20 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r12*1+0x10]
    214fa493f8e4:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    214fa493f8ec:	c5 d0 c2 fd 00                                  	vcmpeqps xmm7,xmm5,xmm5
    214fa493f8f1:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa493f8f5:	c4 81 7a 6f 3c 20                               	vmovdqu xmm7,XMMWORD PTR [r8+r12*1]
    214fa493f8fb:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    214fa493f903:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa493f908:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    214fa493f90d:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa493f912:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa493f917:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    214fa493f91b:	41 83 fc 0f                                     	cmp    r12d,0xf
    214fa493f91f:	0f 84 26 00 00 00                               	je     0x214fa493f94b
    214fa493f925:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    214fa493f92e:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493f936:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493f93e:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493f946:	e9 17 06 00 00                                  	jmp    0x214fa493ff62
    214fa493f94b:	4c 8b 15 0a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70a]        # 0x214fa493b05c
    214fa493f952:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f957:	4c 8b 15 0d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70d]        # 0x214fa493b06b
    214fa493f95e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f964:	4c 8b 15 10 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb710]        # 0x214fa493b07b
    214fa493f96b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493f970:	4c 8b 15 13 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb713]        # 0x214fa493b08a
    214fa493f977:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493f97d:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa493f985:	4c 8b 15 16 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb716]        # 0x214fa493b0a2
    214fa493f98c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f991:	4c 8b 15 19 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb719]        # 0x214fa493b0b1
    214fa493f998:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f99e:	c5 78 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm8
    214fa493f9a6:	4c 8b 15 1c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71c]        # 0x214fa493b0c9
    214fa493f9ad:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493f9b2:	4c 8b 15 1f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71f]        # 0x214fa493b0d8
    214fa493f9b9:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493f9bf:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa493f9c7:	4c 8b 15 22 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb722]        # 0x214fa493b0f0
    214fa493f9ce:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493f9d3:	4c 8b 15 25 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb725]        # 0x214fa493b0ff
    214fa493f9da:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493f9e0:	c5 78 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm8
    214fa493f9e8:	4c 8b 15 28 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb728]        # 0x214fa493b117
    214fa493f9ef:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493f9f4:	4c 8b 15 2b b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72b]        # 0x214fa493b126
    214fa493f9fb:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493fa01:	c5 78 11 9d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm11
    214fa493fa09:	4c 8b 15 2e b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72e]        # 0x214fa493b13e
    214fa493fa10:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa493fa15:	4c 8b 15 31 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb731]        # 0x214fa493b14d
    214fa493fa1c:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa493fa22:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa493fa2a:	4c 8b 15 34 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb734]        # 0x214fa493b165
    214fa493fa31:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493fa36:	4c 8b 15 37 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb737]        # 0x214fa493b174
    214fa493fa3d:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493fa43:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    214fa493fa4b:	4c 8b 15 3a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73a]        # 0x214fa493b18c
    214fa493fa52:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa493fa57:	4c 8b 15 3d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73d]        # 0x214fa493b19b
    214fa493fa5e:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa493fa64:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    214fa493fa6c:	4c 8b 15 40 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb740]        # 0x214fa493b1b3
    214fa493fa73:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa493fa78:	4c 8b 15 43 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb743]        # 0x214fa493b1c2
    214fa493fa7f:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa493fa85:	c5 78 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm13
    214fa493fa8d:	4c 8b 15 46 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb746]        # 0x214fa493b1da
    214fa493fa94:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa493fa99:	4c 8b 15 49 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb749]        # 0x214fa493b1e9
    214fa493faa0:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    214fa493faa6:	c5 78 11 9d a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm11
    214fa493faae:	4c 8b 15 4c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74c]        # 0x214fa493b201
    214fa493fab5:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa493faba:	4c 8b 15 4f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74f]        # 0x214fa493b210
    214fa493fac1:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa493fac7:	c5 78 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm14
    214fa493facf:	4c 8b 15 52 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb752]        # 0x214fa493b228
    214fa493fad6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa493fadb:	4c 8b 15 55 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb755]        # 0x214fa493b237
    214fa493fae2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa493fae8:	c5 f8 11 85 50 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1b0],xmm0
    214fa493faf0:	4c 8b 15 58 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb758]        # 0x214fa493b24f
    214fa493faf7:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa493fafc:	4c 8b 15 5b b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb75b]        # 0x214fa493b25e
    214fa493fb03:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa493fb09:	c5 f8 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm1
    214fa493fb11:	4c 8b 15 5e b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb75e]        # 0x214fa493b276
    214fa493fb18:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa493fb1d:	4c 8b 15 61 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb761]        # 0x214fa493b285
    214fa493fb24:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    214fa493fb2a:	c5 78 11 a5 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm12
    214fa493fb32:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa493fb37:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    214fa493fb3d:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    214fa493fb43:	4c 8b 15 64 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb764]        # 0x214fa493b2ae
    214fa493fb4a:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa493fb50:	c5 f8 11 95 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm2
    214fa493fb58:	4c 8b 15 67 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb767]        # 0x214fa493b2c6
    214fa493fb5f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa493fb64:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa493fb68:	c5 78 11 85 90 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x370],xmm8
    214fa493fb70:	c5 68 c2 c7 01                                  	vcmpltps xmm8,xmm2,xmm7
    214fa493fb75:	c5 c0 c2 d2 01                                  	vcmpltps xmm2,xmm7,xmm2
    214fa493fb7a:	c5 39 eb c2                                     	vpor   xmm8,xmm8,xmm2
    214fa493fb7e:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa493fb83:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    214fa493fb88:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa493fb8d:	4c 8b 15 32 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb732]        # 0x214fa493b2c6
    214fa493fb94:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa493fb99:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa493fb9d:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    214fa493fba1:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    214fa493fba6:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa493fbab:	c5 40 c2 c5 01                                  	vcmpltps xmm8,xmm7,xmm5
    214fa493fbb0:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa493fbb5:	c4 41 71 db e0                                  	vpand  xmm12,xmm1,xmm8
    214fa493fbba:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa493fbbf:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    214fa493fbc3:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa493fbc8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fbcd:	c4 c1 50 c2 fa 01                               	vcmpltps xmm7,xmm5,xmm10
    214fa493fbd3:	c4 41 41 df fc                                  	vpandn xmm15,xmm7,xmm12
    214fa493fbd8:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa493fbdc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fbe1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fbe5:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    214fa493fbe9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fbee:	c4 c1 50 c2 f9 01                               	vcmpltps xmm7,xmm5,xmm9
    214fa493fbf4:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fbf8:	c5 89 db c7                                     	vpand  xmm0,xmm14,xmm7
    214fa493fbfc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fc01:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fc05:	c5 b1 db ef                                     	vpand  xmm5,xmm9,xmm7
    214fa493fc09:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fc0e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fc13:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fc17:	c5 a1 db c7                                     	vpand  xmm0,xmm11,xmm7
    214fa493fc1b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fc20:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fc24:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fc28:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fc2d:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa493fc32:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493fc36:	c5 91 db c6                                     	vpand  xmm0,xmm13,xmm6
    214fa493fc3a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fc3f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493fc43:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa493fc47:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fc4c:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa493fc51:	c5 f8 10 bd 90 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x370]
    214fa493fc59:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa493fc5d:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa493fc61:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fc66:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa493fc6a:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa493fc6e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fc73:	c5 f8 10 b5 20 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1e0]
    214fa493fc7b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fc80:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    214fa493fc88:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fc8c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fc90:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fc95:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fc99:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fc9d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fca2:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa493fcaa:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fcaf:	c5 78 10 85 50 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x1b0]
    214fa493fcb7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fcbb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fcbf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fcc4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fcc8:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fccc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fcd1:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa493fcd9:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fcde:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa493fce6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fcea:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fcee:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fcf3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fcf7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fcfb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fd00:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa493fd08:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fd0d:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa493fd15:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fd19:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fd1d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fd22:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fd26:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fd2a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fd2f:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa493fd37:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fd3c:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa493fd44:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fd48:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fd4c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fd51:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fd55:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fd59:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fd5e:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa493fd66:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fd6b:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa493fd73:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fd77:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fd7b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fd80:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fd84:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fd88:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fd8d:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa493fd95:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fd9a:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa493fda2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fda6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fdaa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fdaf:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fdb3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fdb7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fdbc:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa493fdc4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fdc9:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa493fdd1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fdd5:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fdd9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fdde:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fde2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa493fde6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa493fdeb:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa493fdf0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa493fdf5:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa493fdfd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa493fe01:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa493fe05:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fe0a:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    214fa493fe14:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa493fe18:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa493fe1c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa493fe21:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa493fe2b:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa493fe2f:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa493fe33:	45 33 e4                                        	xor    r12d,r12d
    214fa493fe36:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa493fe3a:	41 0f 97 c4                                     	seta   r12b
    214fa493fe3e:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    214fa493fe44:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa493fe4c:	0b d0                                           	or     edx,eax
    214fa493fe4e:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa493fe54:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa493fe59:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa493fe5d:	45 0f 47 e7                                     	cmova  r12d,r15d
    214fa493fe61:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa493fe69:	0b d0                                           	or     edx,eax
    214fa493fe6b:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa493fe71:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa493fe76:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa493fe7b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa493fe7f:	44 0f 47 e2                                     	cmova  r12d,edx
    214fa493fe83:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa493fe87:	41 0b c4                                        	or     eax,r12d
    214fa493fe8a:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa493fe90:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    214fa493fe97:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    214fa493fe9d:	44 0b e0                                        	or     r12d,eax
    214fa493fea0:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa493fea4:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    214fa493fea9:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493feb1:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493feb9:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493fec1:	e9 9c 00 00 00                                  	jmp    0x214fa493ff62
    214fa493fec6:	41 54                                           	push   r12
    214fa493fec8:	4c 8b db                                        	mov    r11,rbx
    214fa493fecb:	41 bc 03 00 00 00                               	mov    r12d,0x3
    214fa493fed1:	44 8b ce                                        	mov    r9d,esi
    214fa493fed4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493fed8:	8b d9                                           	mov    ebx,ecx
    214fa493feda:	8b ca                                           	mov    ecx,edx
    214fa493fedc:	8b d0                                           	mov    edx,eax
    214fa493fede:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa493fee1:	e8 8a 83 ee ff                                  	call   0x214fa4828270
    214fa493fee6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493fee9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493feed:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa493fef3:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    214fa493fef7:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    214fa493fefe:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493ff06:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493ff0e:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493ff16:	e9 47 00 00 00                                  	jmp    0x214fa493ff62
    214fa493ff1b:	41 54                                           	push   r12
    214fa493ff1d:	44 8b ce                                        	mov    r9d,esi
    214fa493ff20:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa493ff24:	8b d9                                           	mov    ebx,ecx
    214fa493ff26:	8b ca                                           	mov    ecx,edx
    214fa493ff28:	8b d0                                           	mov    edx,eax
    214fa493ff2a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa493ff2d:	e8 26 83 ee ff                                  	call   0x214fa4828258
    214fa493ff32:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa493ff35:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa493ff39:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa493ff3f:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    214fa493ff43:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    214fa493ff4a:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa493ff52:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa493ff5a:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa493ff62:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    214fa493ff69:	41 83 c3 01                                     	add    r11d,0x1
    214fa493ff6d:	41 83 fb 04                                     	cmp    r11d,0x4
    214fa493ff71:	0f 85 49 ed ff ff                               	jne    0x214fa493ecc0
    214fa493ff77:	41 c7 44 38 18 00 00 00 00                      	mov    DWORD PTR [r8+rdi*1+0x18],0x0
    214fa493ff80:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    214fa493ff88:	48 c7 85 b8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x248],0x1
    214fa493ff93:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa493ff97:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    214fa493ff9f:	44 8b 9d 50 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3b0]
    214fa493ffa6:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    214fa493ffad:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    214fa493ffb4:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    214fa493ffbc:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    214fa493ffc4:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa493ffcc:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    214fa493ffd4:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa493ffdc:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa493ffe4:	4c 8b a5 28 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x3d8]
    214fa493ffeb:	4c 8b bd 20 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x3e0]
    214fa493fff2:	4d 03 fc                                        	add    r15,r12
    214fa493fff5:	48 8b 85 38 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x3c8]
    214fa493fffc:	48 03 d0                                        	add    rdx,rax
    214fa493ffff:	48 8b cb                                        	mov    rcx,rbx
    214fa4940002:	48 8b 9d 48 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b8]
    214fa4940009:	48 03 cb                                        	add    rcx,rbx
    214fa494000c:	45 8b cb                                        	mov    r9d,r11d
    214fa494000f:	45 8d 59 01                                     	lea    r11d,[r9+0x1]
    214fa4940013:	8b b5 58 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x3a8]
    214fa4940019:	41 3b f3                                        	cmp    esi,r11d
    214fa494001c:	0f 85 de 9c ff ff                               	jne    0x214fa4939d00
    214fa4940022:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa4940029:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    214fa494002f:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    214fa4940032:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    214fa4940039:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    214fa494003e:	c5 fb 10 ad f0 fb ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x410]
    214fa4940046:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    214fa494004b:	c5 fb 10 b5 78 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x188]
    214fa4940053:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa494005b:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    214fa494005e:	44 8b bd a0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x460]
    214fa4940065:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    214fa494006b:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    214fa4940070:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    214fa4940076:	c5 79 28 c4                                     	vmovapd xmm8,xmm4
    214fa494007a:	c5 ba 5c 85 78 fc ff ff                         	vsubss xmm0,xmm8,DWORD PTR [rbp-0x388]
    214fa4940082:	83 bd 80 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x380],0x0
    214fa4940089:	0f 85 0a 00 00 00                               	jne    0x214fa4940099
    214fa494008f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa4940094:	e9 10 00 00 00                                  	jmp    0x214fa49400a9
    214fa4940099:	c5 ca 5c b5 88 fc ff ff                         	vsubss xmm6,xmm6,DWORD PTR [rbp-0x378]
    214fa49400a1:	c5 d2 5c ad b0 fc ff ff                         	vsubss xmm5,xmm5,DWORD PTR [rbp-0x350]
    214fa49400a9:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    214fa49400ae:	c4 41 11 d4 e8                                  	vpaddq xmm13,xmm13,xmm8
    214fa49400b3:	4c 8b 45 c0                                     	mov    r8,QWORD PTR [rbp-0x40]
    214fa49400b7:	4c 8b da                                        	mov    r11,rdx
    214fa49400ba:	4b 8d 14 18                                     	lea    rdx,[r8+r11*1]
    214fa49400be:	83 c7 01                                        	add    edi,0x1
    214fa49400c1:	44 8b 5d 28                                     	mov    r11d,DWORD PTR [rbp+0x28]
    214fa49400c5:	44 3b df                                        	cmp    r11d,edi
    214fa49400c8:	0f 85 72 95 ff ff                               	jne    0x214fa4939640
    214fa49400ce:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49400d1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49400d5:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    214fa49400da:	41 83 7c 38 18 00                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x0
    214fa49400e0:	0f 8e a9 1d 00 00                               	jle    0x214fa4941e8f
    214fa49400e6:	45 33 db                                        	xor    r11d,r11d
    214fa49400e9:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    214fa49400ed:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa49400f1:	e9 14 00 00 00                                  	jmp    0x214fa494010a
    214fa49400f6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa49400ff:	90                                              	nop
    214fa4940100:	49 8b d3                                        	mov    rdx,r11
    214fa4940103:	45 8b dc                                        	mov    r11d,r12d
    214fa4940106:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    214fa494010a:	48 8b 85 60 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a0]
    214fa4940111:	48 8b 9d 58 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a8]
    214fa4940118:	4c 8b bd 50 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2b0]
    214fa494011f:	c5 fb 10 ad e8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x318]
    214fa4940127:	8b b5 d8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x328]
    214fa494012d:	44 8b a5 d0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x330]
    214fa4940134:	4c 89 5d d0                                     	mov    QWORD PTR [rbp-0x30],r11
    214fa4940138:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa494013d:	0f 85 98 21 00 00                               	jne    0x214fa49422db
    214fa4940143:	46 8d 4c 9f 2c                                  	lea    r9d,[rdi+r11*4+0x2c]
    214fa4940148:	43 8d 0c 9c                                     	lea    ecx,[r12+r11*4]
    214fa494014c:	46 8d 64 df 70                                  	lea    r12d,[rdi+r11*8+0x70]
    214fa4940151:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    214fa4940155:	4c 89 a5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r12
    214fa494015c:	46 8d 64 df 50                                  	lea    r12d,[rdi+r11*8+0x50]
    214fa4940161:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    214fa4940165:	c4 81 7a 10 74 38 1c                            	vmovss xmm6,DWORD PTR [r8+r15*1+0x1c]
    214fa494016c:	c4 c1 7a 10 7c 00 1c                            	vmovss xmm7,DWORD PTR [r8+rax*1+0x1c]
    214fa4940173:	c4 41 7a 10 44 18 1c                            	vmovss xmm8,DWORD PTR [r8+rbx*1+0x1c]
    214fa494017a:	45 8b 9c 10 c8 3c 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x3cc8]
    214fa4940182:	41 83 bc 10 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x3cc8],0x0
    214fa494018b:	0f 85 0e 00 00 00                               	jne    0x214fa494019f
    214fa4940191:	8b d1                                           	mov    edx,ecx
    214fa4940193:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    214fa494019a:	e9 53 00 00 00                                  	jmp    0x214fa49401f2
    214fa494019f:	45 8b 1c 08                                     	mov    r11d,DWORD PTR [r8+rcx*1]
    214fa49401a3:	41 8b d3                                        	mov    edx,r11d
    214fa49401a6:	c1 ea 03                                        	shr    edx,0x3
    214fa49401a9:	83 e2 03                                        	and    edx,0x3
    214fa49401ac:	43 8b 3c 08                                     	mov    edi,DWORD PTR [r8+r9*1]
    214fa49401b0:	c1 e7 02                                        	shl    edi,0x2
    214fa49401b3:	83 e7 7c                                        	and    edi,0x7c
    214fa49401b6:	0b fa                                           	or     edi,edx
    214fa49401b8:	03 fe                                           	add    edi,esi
    214fa49401ba:	41 0f b6 3c 38                                  	movzx  edi,BYTE PTR [r8+rdi*1]
    214fa49401bf:	41 83 e3 07                                     	and    r11d,0x7
    214fa49401c3:	8b d1                                           	mov    edx,ecx
    214fa49401c5:	41 8b cb                                        	mov    ecx,r11d
    214fa49401c8:	d3 e7                                           	shl    edi,cl
    214fa49401ca:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    214fa49401d1:	40 f6 c7 80                                     	test   dil,0x80
    214fa49401d5:	0f 85 17 00 00 00                               	jne    0x214fa49401f2
    214fa49401db:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49401de:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa49401e2:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa49401e6:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    214fa49401ed:	e9 89 1c 00 00                                  	jmp    0x214fa4941e7b
    214fa49401f2:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    214fa49401f7:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    214fa49401fc:	c4 41 32 59 c0                                  	vmulss xmm8,xmm9,xmm8
    214fa4940201:	c4 61 82 2a 95 78 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x188]
    214fa494020a:	c4 41 52 59 d2                                  	vmulss xmm10,xmm5,xmm10
    214fa494020f:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    214fa4940213:	c5 3a 58 df                                     	vaddss xmm11,xmm8,xmm7
    214fa4940217:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa494021c:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    214fa4940222:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    214fa4940228:	c4 41 1a 5c c9                                  	vsubss xmm9,xmm12,xmm9
    214fa494022d:	c4 41 32 5c ca                                  	vsubss xmm9,xmm9,xmm10
    214fa4940232:	c5 b2 59 f6                                     	vmulss xmm6,xmm9,xmm6
    214fa4940236:	c5 22 58 ce                                     	vaddss xmm9,xmm11,xmm6
    214fa494023a:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    214fa494023f:	73 9a                                           	jae    0x214fa49401db
    214fa4940241:	c4 41 1a 5e c9                                  	vdivss xmm9,xmm12,xmm9
    214fa4940246:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    214fa494024b:	c4 42 79 18 d1                                  	vbroadcastss xmm10,xmm9
    214fa4940250:	c4 01 7a 6f 5c 38 20                            	vmovdqu xmm11,XMMWORD PTR [r8+r15*1+0x20]
    214fa4940257:	c4 62 79 18 ee                                  	vbroadcastss xmm13,xmm6
    214fa494025c:	c4 41 20 59 dd                                  	vmulps xmm11,xmm11,xmm13
    214fa4940261:	c4 41 7a 6f 6c 18 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rbx*1+0x20]
    214fa4940268:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    214fa494026d:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    214fa4940272:	c4 62 79 18 f7                                  	vbroadcastss xmm14,xmm7
    214fa4940277:	c4 c1 7a 6f 4c 00 20                            	vmovdqu xmm1,XMMWORD PTR [r8+rax*1+0x20]
    214fa494027e:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    214fa4940282:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    214fa4940287:	c4 41 20 58 dd                                  	vaddps xmm11,xmm11,xmm13
    214fa494028c:	c4 41 28 59 d3                                  	vmulps xmm10,xmm10,xmm11
    214fa4940291:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4940294:	c4 41 7a 7f 94 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm10
    214fa494029e:	c4 01 7a 10 9c 38 98 00 00 00                   	vmovss xmm11,DWORD PTR [r8+r15*1+0x98]
    214fa49402a8:	c4 41 7a 10 ac 18 98 00 00 00                   	vmovss xmm13,DWORD PTR [r8+rbx*1+0x98]
    214fa49402b2:	c4 41 7a 10 b4 00 98 00 00 00                   	vmovss xmm14,DWORD PTR [r8+rax*1+0x98]
    214fa49402bc:	c4 41 7a 7f 94 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm10
    214fa49402c6:	44 8b a5 68 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x298]
    214fa49402cd:	43 8b 8c 20 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x134]
    214fa49402d5:	44 8d 79 ff                                     	lea    r15d,[rcx-0x1]
    214fa49402d9:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa49402dd:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    214fa49402e1:	c5 fb 11 bd 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm7
    214fa49402e9:	c5 7b 11 85 48 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b8],xmm8
    214fa49402f1:	c5 fb 11 b5 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm6
    214fa49402f9:	c5 7b 11 8d 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm9
    214fa4940301:	c5 7b 11 9d 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm11
    214fa4940309:	c5 7b 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm13
    214fa4940311:	c5 7b 11 b5 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm14
    214fa4940319:	41 83 ff 01                                     	cmp    r15d,0x1
    214fa494031d:	0f 86 25 07 00 00                               	jbe    0x214fa4940a48
    214fa4940323:	47 8b bc 20 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x130]
    214fa494032b:	43 83 bc 20 30 01 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x130],0x0
    214fa4940334:	0f 84 ac 07 00 00                               	je     0x214fa4940ae6
    214fa494033a:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    214fa4940341:	4c 89 a5 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r12
    214fa4940348:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    214fa494034f:	33 c9                                           	xor    ecx,ecx
    214fa4940351:	e9 46 00 00 00                                  	jmp    0x214fa494039c
    214fa4940356:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494035f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4940368:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4940371:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494037a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    214fa4940380:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    214fa4940387:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494038a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494038e:	4c 8b a5 18 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1e8]
    214fa4940395:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    214fa494039c:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    214fa49403a3:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    214fa49403a9:	8b 85 f8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x308]
    214fa49403af:	48 89 8d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rcx
    214fa49403b6:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa49403bb:	0f 85 61 1f 00 00                               	jne    0x214fa4942322
    214fa49403c1:	8b d1                                           	mov    edx,ecx
    214fa49403c3:	c1 e2 04                                        	shl    edx,0x4
    214fa49403c6:	42 8d 34 3a                                     	lea    esi,[rdx+r15*1]
    214fa49403ca:	4c 8b 15 8d 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c8d]        # 0x214fa493a05e
    214fa49403d1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa49403d6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa49403db:	c4 41 7a 7f 14 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm10
    214fa49403e1:	48 89 b5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rsi
    214fa49403e8:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    214fa49403ef:	41 c7 04 30 00 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x0
    214fa49403f7:	6b f9 4c                                        	imul   edi,ecx,0x4c
    214fa49403fa:	41 03 f9                                        	add    edi,r9d
    214fa49403fd:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa4940401:	41 83 3c 38 00                                  	cmp    DWORD PTR [r8+rdi*1],0x0
    214fa4940406:	0f 8c cd 01 00 00                               	jl     0x214fa49405d9
    214fa494040c:	45 8b 7c 38 04                                  	mov    r15d,DWORD PTR [r8+rdi*1+0x4]
    214fa4940411:	45 85 ff                                        	test   r15d,r15d
    214fa4940414:	0f 84 bf 01 00 00                               	je     0x214fa49405d9
    214fa494041a:	41 c7 04 30 01 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x1
    214fa4940422:	43 8b b4 20 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r12*1+0x13c]
    214fa494042a:	d3 ee                                           	shr    esi,cl
    214fa494042c:	40 f6 c6 01                                     	test   sil,0x1
    214fa4940430:	0f 84 a3 01 00 00                               	je     0x214fa49405d9
    214fa4940436:	41 8b 4c 38 38                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x38]
    214fa494043b:	41 83 7c 38 38 00                               	cmp    DWORD PTR [r8+rdi*1+0x38],0x0
    214fa4940441:	0f 85 7f 01 00 00                               	jne    0x214fa49405c6
    214fa4940447:	41 8d 0c 13                                     	lea    ecx,[r11+rdx*1]
    214fa494044b:	c4 41 7a 10 54 08 08                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x8]
    214fa4940452:	c5 2a 59 95 38 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1c8]
    214fa494045a:	8d 34 10                                        	lea    esi,[rax+rdx*1]
    214fa494045d:	c4 c1 7a 10 4c 30 08                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x8]
    214fa4940464:	c5 f2 59 8d 48 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1b8]
    214fa494046c:	03 d3                                           	add    edx,ebx
    214fa494046e:	c4 c1 7a 10 54 10 08                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x8]
    214fa4940475:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    214fa494047d:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    214fa4940481:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa4940485:	c5 aa 59 9d 78 fe ff ff                         	vmulss xmm3,xmm10,DWORD PTR [rbp-0x188]
    214fa494048d:	c4 41 7a 10 54 08 04                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x4]
    214fa4940494:	c5 2a 59 95 38 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1c8]
    214fa494049c:	c4 c1 7a 10 4c 30 04                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x4]
    214fa49404a3:	c5 f2 59 8d 48 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1b8]
    214fa49404ab:	c4 c1 7a 10 54 10 04                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x4]
    214fa49404b2:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    214fa49404ba:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    214fa49404be:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa49404c2:	c5 aa 59 95 78 fe ff ff                         	vmulss xmm2,xmm10,DWORD PTR [rbp-0x188]
    214fa49404ca:	c4 41 7a 10 14 08                               	vmovss xmm10,DWORD PTR [r8+rcx*1]
    214fa49404d0:	c5 2a 59 95 38 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1c8]
    214fa49404d8:	c4 c1 7a 10 0c 30                               	vmovss xmm1,DWORD PTR [r8+rsi*1]
    214fa49404de:	c5 f2 59 8d 48 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1b8]
    214fa49404e6:	c4 c1 7a 10 24 10                               	vmovss xmm4,DWORD PTR [r8+rdx*1]
    214fa49404ec:	c5 da 59 a5 70 fe ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0x190]
    214fa49404f4:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    214fa49404f8:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa49404fc:	c5 aa 59 8d 78 fe ff ff                         	vmulss xmm1,xmm10,DWORD PTR [rbp-0x188]
    214fa4940504:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    214fa4940509:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa494050e:	41 8b 74 38 08                                  	mov    esi,DWORD PTR [r8+rdi*1+0x8]
    214fa4940513:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    214fa4940517:	83 fe 02                                        	cmp    esi,0x2
    214fa494051a:	0f 8c 14 00 00 00                               	jl     0x214fa4940534
    214fa4940520:	0f 84 44 00 00 00                               	je     0x214fa494056a
    214fa4940526:	83 fe 03                                        	cmp    esi,0x3
    214fa4940529:	0f 84 1c 00 00 00                               	je     0x214fa494054b
    214fa494052f:	e9 5c 00 00 00                                  	jmp    0x214fa4940590
    214fa4940534:	83 fe 00                                        	cmp    esi,0x0
    214fa4940537:	0f 84 72 00 00 00                               	je     0x214fa49405af
    214fa494053d:	83 fe 01                                        	cmp    esi,0x1
    214fa4940540:	0f 84 4a 00 00 00                               	je     0x214fa4940590
    214fa4940546:	e9 45 00 00 00                                  	jmp    0x214fa4940590
    214fa494054b:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    214fa4940550:	44 8b 8d f8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x208]
    214fa4940557:	8b df                                           	mov    ebx,edi
    214fa4940559:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494055d:	41 8b c7                                        	mov    eax,r15d
    214fa4940560:	e8 cb 7c ee ff                                  	call   0x214fa4828230
    214fa4940565:	e9 6f 00 00 00                                  	jmp    0x214fa49405d9
    214fa494056a:	41 8b 74 38 14                                  	mov    esi,DWORD PTR [r8+rdi*1+0x14]
    214fa494056f:	41 8b 7c 38 18                                  	mov    edi,DWORD PTR [r8+rdi*1+0x18]
    214fa4940574:	ff b5 f8 fd ff ff                               	push   QWORD PTR [rbp-0x208]
    214fa494057a:	8b de                                           	mov    ebx,esi
    214fa494057c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940580:	41 8b c7                                        	mov    eax,r15d
    214fa4940583:	44 8b cf                                        	mov    r9d,edi
    214fa4940586:	e8 9d 7c ee ff                                  	call   0x214fa4828228
    214fa494058b:	e9 49 00 00 00                                  	jmp    0x214fa49405d9
    214fa4940590:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    214fa4940595:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940599:	41 8b c7                                        	mov    eax,r15d
    214fa494059c:	44 8b 8d f8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x208]
    214fa49405a3:	8b df                                           	mov    ebx,edi
    214fa49405a5:	e8 8e 7c ee ff                                  	call   0x214fa4828238
    214fa49405aa:	e9 2a 00 00 00                                  	jmp    0x214fa49405d9
    214fa49405af:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49405b3:	41 8b c7                                        	mov    eax,r15d
    214fa49405b6:	8b 9d f8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x208]
    214fa49405bc:	e8 5f 7c ee ff                                  	call   0x214fa4828220
    214fa49405c1:	e9 13 00 00 00                                  	jmp    0x214fa49405d9
    214fa49405c6:	c4 c1 7a 6f 44 38 3c                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x3c]
    214fa49405cd:	8b bd f8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x208]
    214fa49405d3:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    214fa49405d9:	8b 8d 10 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1f0]
    214fa49405df:	83 c1 01                                        	add    ecx,0x1
    214fa49405e2:	83 f9 04                                        	cmp    ecx,0x4
    214fa49405e5:	0f 85 95 fd ff ff                               	jne    0x214fa4940380
    214fa49405eb:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa49405ef:	4c 8b 85 18 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1e8]
    214fa49405f6:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    214fa49405fe:	45 85 c0                                        	test   r8d,r8d
    214fa4940601:	0f 85 c2 01 00 00                               	jne    0x214fa49407c9
    214fa4940607:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    214fa494060b:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    214fa4940613:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    214fa494061c:	0f 84 53 00 00 00                               	je     0x214fa4940675
    214fa4940622:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4940629:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4940630:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa4940637:	41 53                                           	push   r11
    214fa4940639:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494063d:	8b 85 28 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d8]
    214fa4940643:	33 d2                                           	xor    edx,edx
    214fa4940645:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa494064c:	e8 ef 7b ee ff                                  	call   0x214fa4828240
    214fa4940651:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4940654:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4940658:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    214fa4940662:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa494066c:	4d 8b d0                                        	mov    r10,r8
    214fa494066f:	44 8b c7                                        	mov    r8d,edi
    214fa4940672:	49 8b fa                                        	mov    rdi,r10
    214fa4940675:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    214fa494067d:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    214fa4940686:	0f 84 56 00 00 00                               	je     0x214fa49406e2
    214fa494068c:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4940693:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa494069a:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa49406a1:	41 53                                           	push   r11
    214fa49406a3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49406a7:	8b 85 30 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2d0]
    214fa49406ad:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa49406b2:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa49406b9:	e8 82 7b ee ff                                  	call   0x214fa4828240
    214fa49406be:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49406c1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49406c5:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    214fa49406cf:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa49406d9:	4d 8b d0                                        	mov    r10,r8
    214fa49406dc:	44 8b c7                                        	mov    r8d,edi
    214fa49406df:	49 8b fa                                        	mov    rdi,r10
    214fa49406e2:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    214fa49406ea:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    214fa49406f3:	0f 84 56 00 00 00                               	je     0x214fa494074f
    214fa49406f9:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4940700:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4940707:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa494070e:	41 53                                           	push   r11
    214fa4940710:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940714:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    214fa494071a:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa494071f:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4940726:	e8 15 7b ee ff                                  	call   0x214fa4828240
    214fa494072b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494072e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4940732:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    214fa494073c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4940746:	4d 8b d0                                        	mov    r10,r8
    214fa4940749:	44 8b c7                                        	mov    r8d,edi
    214fa494074c:	49 8b fa                                        	mov    rdi,r10
    214fa494074f:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    214fa4940757:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    214fa4940760:	0f 85 0e 00 00 00                               	jne    0x214fa4940774
    214fa4940766:	4c 8b d7                                        	mov    r10,rdi
    214fa4940769:	41 8b f8                                        	mov    edi,r8d
    214fa494076c:	4d 8b c2                                        	mov    r8,r10
    214fa494076f:	e9 72 03 00 00                                  	jmp    0x214fa4940ae6
    214fa4940774:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa494077b:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4940782:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa4940789:	41 53                                           	push   r11
    214fa494078b:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa4940790:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940794:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    214fa494079a:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa49407a1:	e8 9a 7a ee ff                                  	call   0x214fa4828240
    214fa49407a6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49407a9:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    214fa49407ad:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    214fa49407b7:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    214fa49407c1:	4d 8b c3                                        	mov    r8,r11
    214fa49407c4:	e9 1d 03 00 00                                  	jmp    0x214fa4940ae6
    214fa49407c9:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa49407cd:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    214fa49407d7:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa49407dd:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa49407e2:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa49407e6:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    214fa49407f0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa49407f4:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa49407f8:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    214fa4940802:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa4940806:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    214fa4940810:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa4940814:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    214fa4940818:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    214fa4940822:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa4940826:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    214fa4940830:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    214fa4940834:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    214fa4940838:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    214fa494083c:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4940840:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa4940846:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa494084b:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    214fa494084f:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    214fa4940853:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    214fa4940858:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    214fa494085d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4940861:	0f 87 09 00 00 00                               	ja     0x214fa4940870
    214fa4940867:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa494086b:	e9 04 00 00 00                                  	jmp    0x214fa4940874
    214fa4940870:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    214fa4940874:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4940878:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa494087c:	0f 87 09 00 00 00                               	ja     0x214fa494088b
    214fa4940882:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa4940886:	e9 04 00 00 00                                  	jmp    0x214fa494088f
    214fa494088b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa494088f:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa4940894:	41 83 f8 01                                     	cmp    r8d,0x1
    214fa4940898:	0f 84 a0 00 00 00                               	je     0x214fa494093e
    214fa494089e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa49408a2:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    214fa49408ac:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa49408b0:	0f 87 09 00 00 00                               	ja     0x214fa49408bf
    214fa49408b6:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa49408ba:	e9 04 00 00 00                                  	jmp    0x214fa49408c3
    214fa49408bf:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa49408c3:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa49408c7:	0f 87 0a 00 00 00                               	ja     0x214fa49408d7
    214fa49408cd:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa49408d2:	e9 04 00 00 00                                  	jmp    0x214fa49408db
    214fa49408d7:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa49408db:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa49408df:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa49408e4:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    214fa49408e9:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa49408ed:	4c 8b 15 6a 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff976a]        # 0x214fa493a05e
    214fa49408f4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa49408f9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa49408fe:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4940902:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    214fa494090c:	41 83 f8 03                                     	cmp    r8d,0x3
    214fa4940910:	0f 85 04 00 00 00                               	jne    0x214fa494091a
    214fa4940916:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    214fa494091a:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa494091f:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4940923:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4940927:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    214fa4940931:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    214fa4940936:	4d 8b c4                                        	mov    r8,r12
    214fa4940939:	e9 cd 00 00 00                                  	jmp    0x214fa4940a0b
    214fa494093e:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    214fa4940948:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa494094c:	0f 87 09 00 00 00                               	ja     0x214fa494095b
    214fa4940952:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa4940956:	e9 04 00 00 00                                  	jmp    0x214fa494095f
    214fa494095b:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa494095f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4940963:	0f 87 0a 00 00 00                               	ja     0x214fa4940973
    214fa4940969:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa494096e:	e9 04 00 00 00                                  	jmp    0x214fa4940977
    214fa4940973:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4940977:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    214fa4940981:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    214fa4940987:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    214fa494098c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4940990:	0f 87 09 00 00 00                               	ja     0x214fa494099f
    214fa4940996:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa494099a:	e9 04 00 00 00                                  	jmp    0x214fa49409a3
    214fa494099f:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    214fa49409a3:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa49409a7:	0f 87 0a 00 00 00                               	ja     0x214fa49409b7
    214fa49409ad:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa49409b2:	e9 04 00 00 00                                  	jmp    0x214fa49409bb
    214fa49409b7:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa49409bb:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    214fa49409c5:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa49409ca:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa49409ce:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    214fa49409d8:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    214fa49409dd:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa49409e2:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    214fa49409e6:	4c 8b 15 71 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9671]        # 0x214fa493a05e
    214fa49409ed:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa49409f2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa49409f7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa49409fb:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa49409ff:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    214fa4940a03:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa4940a07:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    214fa4940a0b:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    214fa4940a10:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4940a14:	4c 8b 15 43 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9643]        # 0x214fa493a05e
    214fa4940a1b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4940a20:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa4940a25:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    214fa4940a29:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    214fa4940a33:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    214fa4940a3d:	4c 8b c7                                        	mov    r8,rdi
    214fa4940a40:	41 8b fb                                        	mov    edi,r11d
    214fa4940a43:	e9 9e 00 00 00                                  	jmp    0x214fa4940ae6
    214fa4940a48:	4c 8b a5 50 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2b0]
    214fa4940a4f:	c4 01 7a 10 54 20 50                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x50]
    214fa4940a56:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    214fa4940a5a:	4c 8b fb                                        	mov    r15,rbx
    214fa4940a5d:	c4 81 7a 10 4c 38 50                            	vmovss xmm1,DWORD PTR [r8+r15*1+0x50]
    214fa4940a64:	c4 c1 72 59 c8                                  	vmulss xmm1,xmm1,xmm8
    214fa4940a69:	c4 c1 42 59 54 00 50                            	vmulss xmm2,xmm7,DWORD PTR [r8+rax*1+0x50]
    214fa4940a70:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    214fa4940a74:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa4940a78:	c4 c1 32 59 ca                                  	vmulss xmm1,xmm9,xmm10
    214fa4940a7d:	c4 01 7a 10 54 20 54                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x54]
    214fa4940a84:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    214fa4940a88:	c4 81 7a 10 54 38 54                            	vmovss xmm2,DWORD PTR [r8+r15*1+0x54]
    214fa4940a8f:	c4 c1 6a 59 d0                                  	vmulss xmm2,xmm2,xmm8
    214fa4940a94:	c4 c1 42 59 5c 00 54                            	vmulss xmm3,xmm7,DWORD PTR [r8+rax*1+0x54]
    214fa4940a9b:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    214fa4940a9f:	c5 2a 58 d2                                     	vaddss xmm10,xmm10,xmm2
    214fa4940aa3:	c4 c1 32 59 d2                                  	vmulss xmm2,xmm9,xmm10
    214fa4940aa8:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    214fa4940aae:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    214fa4940ab5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940ab9:	8b 85 68 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x298]
    214fa4940abf:	8b d1                                           	mov    edx,ecx
    214fa4940ac1:	8b cb                                           	mov    ecx,ebx
    214fa4940ac3:	41 8b d8                                        	mov    ebx,r8d
    214fa4940ac6:	e8 65 7a ee ff                                  	call   0x214fa4828530
    214fa4940acb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4940ace:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4940ad2:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    214fa4940adc:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4940ae6:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4940aea:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    214fa4940af2:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    214fa4940afb:	0f 84 c2 01 00 00                               	je     0x214fa4940cc3
    214fa4940b01:	c5 fb 10 85 40 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1c0]
    214fa4940b09:	c5 fa 59 85 38 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1c8]
    214fa4940b11:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    214fa4940b19:	c5 d2 59 ad 48 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1b8]
    214fa4940b21:	c5 fb 10 b5 70 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x190]
    214fa4940b29:	c5 ca 59 b5 68 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x198]
    214fa4940b31:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    214fa4940b35:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4940b39:	c5 fb 10 ad 78 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x188]
    214fa4940b41:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    214fa4940b45:	4c 8b 15 55 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8655]        # 0x214fa49391a1
    214fa4940b4c:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa4940b51:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    214fa4940b55:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    214fa4940b59:	0f 87 04 00 00 00                               	ja     0x214fa4940b63
    214fa4940b5f:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    214fa4940b63:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    214fa4940b6b:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    214fa4940b72:	0f 85 28 00 00 00                               	jne    0x214fa4940ba0
    214fa4940b78:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    214fa4940b82:	4c 8b 15 18 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8618]        # 0x214fa49391a1
    214fa4940b89:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa4940b8e:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    214fa4940b92:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940b96:	e8 1d 9a ee ff                                  	call   0x214fa482a5b8
    214fa4940b9b:	e9 89 00 00 00                                  	jmp    0x214fa4940c29
    214fa4940ba0:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa4940ba4:	0f 84 5c 00 00 00                               	je     0x214fa4940c06
    214fa4940baa:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    214fa4940bb4:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    214fa4940bbe:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    214fa4940bc2:	7a 06                                           	jp     0x214fa4940bca
    214fa4940bc4:	0f 84 29 00 00 00                               	je     0x214fa4940bf3
    214fa4940bca:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    214fa4940bce:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    214fa4940bd2:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa4940bd6:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    214fa4940bda:	0f 86 49 00 00 00                               	jbe    0x214fa4940c29
    214fa4940be0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4940be4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4940be9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4940bee:	e9 5b 00 00 00                                  	jmp    0x214fa4940c4e
    214fa4940bf3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4940bf7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4940bfc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4940c01:	e9 44 00 00 00                                  	jmp    0x214fa4940c4a
    214fa4940c06:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    214fa4940c10:	4c 8b 15 8a 85 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff858a]        # 0x214fa49391a1
    214fa4940c17:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa4940c1c:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    214fa4940c20:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4940c24:	e8 8f 99 ee ff                                  	call   0x214fa482a5b8
    214fa4940c29:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4940c2d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4940c32:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4940c37:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa4940c3b:	0f 87 09 00 00 00                               	ja     0x214fa4940c4a
    214fa4940c41:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    214fa4940c45:	e9 04 00 00 00                                  	jmp    0x214fa4940c4e
    214fa4940c4a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4940c4e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4940c51:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4940c55:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    214fa4940c5f:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4940c63:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4940c67:	c4 81 7a 59 bc 18 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x100]
    214fa4940c71:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa4940c75:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    214fa4940c7f:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    214fa4940c89:	c4 81 7a 59 bc 18 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x104]
    214fa4940c93:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa4940c97:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    214fa4940ca1:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    214fa4940cab:	c4 81 7a 59 84 18 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [r8+r11*1+0x108]
    214fa4940cb5:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa4940cb9:	c4 c1 7a 11 84 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm0
    214fa4940cc3:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    214fa4940ccd:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    214fa4940cd7:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa4940cdb:	41 c1 e4 04                                     	shl    r12d,0x4
    214fa4940cdf:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    214fa4940ce6:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    214fa4940cea:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa4940cee:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    214fa4940cf3:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    214fa4940cf7:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    214fa4940cfa:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa4940cfe:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa4940d01:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa4940d05:	83 bd c8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x238],0x0
    214fa4940d0c:	0f 85 3e 11 00 00                               	jne    0x214fa4941e50
    214fa4940d12:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    214fa4940d17:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    214fa4940d1d:	0f 85 fd 10 00 00                               	jne    0x214fa4941e20
    214fa4940d23:	4c 8b 15 34 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9334]        # 0x214fa493a05e
    214fa4940d2a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4940d2f:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    214fa4940d33:	c4 c1 7a 6f ac 38 80 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x280]
    214fa4940d3d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    214fa4940d41:	c5 d0 c2 f6 01                                  	vcmpltps xmm6,xmm5,xmm6
    214fa4940d46:	c5 c8 55 ed                                     	vandnps xmm5,xmm6,xmm5
    214fa4940d4a:	4c 8b 15 0d 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff930d]        # 0x214fa493a05e
    214fa4940d51:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa4940d56:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa4940d5a:	c5 c8 c2 f5 01                                  	vcmpltps xmm6,xmm6,xmm5
    214fa4940d5f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4940d63:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4940d67:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4940d6c:	4c 8b 15 9d 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e9d]        # 0x214fa493ac10
    214fa4940d73:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4940d78:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4940d7c:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa4940d80:	4c 8b 15 a0 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea0]        # 0x214fa493ac27
    214fa4940d87:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4940d8c:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4940d90:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa4940d94:	4c 8b 15 a3 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea3]        # 0x214fa493ac3e
    214fa4940d9b:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa4940da0:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    214fa4940da5:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa4940dab:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    214fa4940daf:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    214fa4940db4:	4c 8b 15 a6 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea6]        # 0x214fa493ac61
    214fa4940dbb:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa4940dc0:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa4940dc4:	4c 8b 15 8a 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff708a]        # 0x214fa4937e55
    214fa4940dcb:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa4940dd0:	4c 8b 15 a9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ea9]        # 0x214fa493ac80
    214fa4940dd7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4940ddc:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4940de0:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    214fa4940de5:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    214fa4940de9:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa4940ded:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4940df2:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    214fa4940df7:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    214fa4940dfb:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4940e00:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    214fa4940e04:	0f af c8                                        	imul   ecx,eax
    214fa4940e07:	03 ca                                           	add    ecx,edx
    214fa4940e09:	8d 34 8d 00 00 00 00                            	lea    esi,[rcx*4+0x0]
    214fa4940e10:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa4940e14:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    214fa4940e19:	c1 e1 04                                        	shl    ecx,0x4
    214fa4940e1c:	03 d1                                           	add    edx,ecx
    214fa4940e1e:	83 fb 0f                                        	cmp    ebx,0xf
    214fa4940e21:	0f 84 9b 00 00 00                               	je     0x214fa4940ec2
    214fa4940e27:	8b cb                                           	mov    ecx,ebx
    214fa4940e29:	83 e1 01                                        	and    ecx,0x1
    214fa4940e2c:	f7 d9                                           	neg    ecx
    214fa4940e2e:	c5 f9 6e e9                                     	vmovd  xmm5,ecx
    214fa4940e32:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    214fa4940e37:	8b cb                                           	mov    ecx,ebx
    214fa4940e39:	c1 e1 1e                                        	shl    ecx,0x1e
    214fa4940e3c:	c1 f9 1f                                        	sar    ecx,0x1f
    214fa4940e3f:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    214fa4940e45:	8b cb                                           	mov    ecx,ebx
    214fa4940e47:	c1 e1 1d                                        	shl    ecx,0x1d
    214fa4940e4a:	c1 f9 1f                                        	sar    ecx,0x1f
    214fa4940e4d:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    214fa4940e53:	8b cb                                           	mov    ecx,ebx
    214fa4940e55:	c1 e1 1c                                        	shl    ecx,0x1c
    214fa4940e58:	c1 f9 1f                                        	sar    ecx,0x1f
    214fa4940e5b:	c4 e3 51 22 e9 03                               	vpinsrd xmm5,xmm5,ecx,0x3
    214fa4940e61:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    214fa4940e66:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa4940e6c:	0f 84 38 00 00 00                               	je     0x214fa4940eaa
    214fa4940e72:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    214fa4940e77:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa4940e7d:	0f 84 27 00 00 00                               	je     0x214fa4940eaa
    214fa4940e83:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    214fa4940e88:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    214fa4940e8b:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    214fa4940e91:	c4 c1 7a 6f 3c 08                               	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1]
    214fa4940e97:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    214fa4940e9b:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    214fa4940e9f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4940ea4:	c4 c1 7a 7f 34 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm6
    214fa4940eaa:	c4 c1 7a 6f 34 10                               	vmovdqu xmm6,XMMWORD PTR [r8+rdx*1]
    214fa4940eb0:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    214fa4940eb4:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa4940eb8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4940ebd:	e9 36 00 00 00                                  	jmp    0x214fa4940ef8
    214fa4940ec2:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    214fa4940ec7:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa4940ecd:	0f 84 25 00 00 00                               	je     0x214fa4940ef8
    214fa4940ed3:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    214fa4940ed8:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa4940ede:	0f 84 14 00 00 00                               	je     0x214fa4940ef8
    214fa4940ee4:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    214fa4940ee9:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    214fa4940eec:	c4 81 7a 6f 2c 08                               	vmovdqu xmm5,XMMWORD PTR [r8+r9*1]
    214fa4940ef2:	c4 c1 7a 7f 2c 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm5
    214fa4940ef8:	c4 c1 7a 7f 04 10                               	vmovdqu XMMWORD PTR [r8+rdx*1],xmm0
    214fa4940efe:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    214fa4940f03:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa4940f09:	0f 84 6c 0f 00 00                               	je     0x214fa4941e7b
    214fa4940f0f:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    214fa4940f14:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa4940f1a:	0f 84 5b 0f 00 00                               	je     0x214fa4941e7b
    214fa4940f20:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    214fa4940f25:	43 83 7c 18 14 04                               	cmp    DWORD PTR [r8+r11*1+0x14],0x4
    214fa4940f2b:	0f 85 4a 0f 00 00                               	jne    0x214fa4941e7b
    214fa4940f31:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    214fa4940f36:	85 d2                                           	test   edx,edx
    214fa4940f38:	0f 84 3d 0f 00 00                               	je     0x214fa4941e7b
    214fa4940f3e:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    214fa4940f41:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    214fa4940f45:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    214fa4940f4a:	0f 84 2b 0f 00 00                               	je     0x214fa4941e7b
    214fa4940f50:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    214fa4940f53:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa4940f57:	83 ea 3c                                        	sub    edx,0x3c
    214fa4940f5a:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa4940f5e:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    214fa4940f61:	c1 ee 02                                        	shr    esi,0x2
    214fa4940f64:	0f af f2                                        	imul   esi,edx
    214fa4940f67:	c1 e6 04                                        	shl    esi,0x4
    214fa4940f6a:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    214fa4940f6d:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    214fa4940f74:	8b f1                                           	mov    esi,ecx
    214fa4940f76:	83 e6 f0                                        	and    esi,0xfffffff0
    214fa4940f79:	03 d6                                           	add    edx,esi
    214fa4940f7b:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    214fa4940f80:	81 ee 01 02 00 00                               	sub    esi,0x201
    214fa4940f86:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    214fa4940f8a:	33 c0                                           	xor    eax,eax
    214fa4940f8c:	85 f6                                           	test   esi,esi
    214fa4940f8e:	0f 94 c0                                        	sete   al
    214fa4940f91:	83 fe 02                                        	cmp    esi,0x2
    214fa4940f94:	40 0f 94 c6                                     	sete   sil
    214fa4940f98:	40 0f b6 f6                                     	movzx  esi,sil
    214fa4940f9c:	0b f0                                           	or     esi,eax
    214fa4940f9e:	0f 85 0d 00 00 00                               	jne    0x214fa4940fb1
    214fa4940fa4:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    214fa4940fac:	e9 ca 0e 00 00                                  	jmp    0x214fa4941e7b
    214fa4940fb1:	83 e3 0f                                        	and    ebx,0xf
    214fa4940fb4:	83 e1 0c                                        	and    ecx,0xc
    214fa4940fb7:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    214fa4940fba:	83 e0 03                                        	and    eax,0x3
    214fa4940fbd:	0b c1                                           	or     eax,ecx
    214fa4940fbf:	c1 e0 02                                        	shl    eax,0x2
    214fa4940fc2:	83 e0 3f                                        	and    eax,0x3f
    214fa4940fc5:	8b c8                                           	mov    ecx,eax
    214fa4940fc7:	48 d3 e3                                        	shl    rbx,cl
    214fa4940fca:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    214fa4940fce:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa4940fd2:	0f 84 03 07 00 00                               	je     0x214fa49416db
    214fa4940fd8:	48 0b c3                                        	or     rax,rbx
    214fa4940fdb:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    214fa4940fdf:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa4940fe3:	0f 85 92 0e 00 00                               	jne    0x214fa4941e7b
    214fa4940fe9:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    214fa4940fee:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    214fa4940ff1:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    214fa4940ff7:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    214fa4940ffb:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa4940ffe:	83 ce 03                                        	or     esi,0x3
    214fa4941001:	0f af f1                                        	imul   esi,ecx
    214fa4941004:	03 f3                                           	add    esi,ebx
    214fa4941006:	c1 e6 04                                        	shl    esi,0x4
    214fa4941009:	03 f0                                           	add    esi,eax
    214fa494100b:	c4 c1 7a 6f 44 30 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x30]
    214fa4941012:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa4941017:	c4 c1 7a 6f 74 30 20                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x20]
    214fa494101e:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4941023:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4941027:	c4 c1 7a 6f 7c 30 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x10]
    214fa494102e:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4941033:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa4941038:	c4 41 7a 6f 04 30                               	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1]
    214fa494103e:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa4941044:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa4941049:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa494104c:	81 e6 fc ff ff 0f                               	and    esi,0xffffffc
    214fa4941052:	44 8b ce                                        	mov    r9d,esi
    214fa4941055:	41 83 c9 02                                     	or     r9d,0x2
    214fa4941059:	44 0f af c9                                     	imul   r9d,ecx
    214fa494105d:	44 03 cb                                        	add    r9d,ebx
    214fa4941060:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa4941064:	44 03 c8                                        	add    r9d,eax
    214fa4941067:	c4 01 7a 6f 4c 08 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x30]
    214fa494106e:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa4941074:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa4941079:	c4 01 7a 6f 54 08 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r9*1+0x20]
    214fa4941080:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa4941086:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa494108b:	c4 01 7a 6f 5c 08 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r9*1+0x10]
    214fa4941092:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa4941098:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa494109d:	c4 01 7a 6f 24 08                               	vmovdqu xmm12,XMMWORD PTR [r8+r9*1]
    214fa49410a3:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa49410a9:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa49410ae:	44 8b ce                                        	mov    r9d,esi
    214fa49410b1:	41 83 c9 01                                     	or     r9d,0x1
    214fa49410b5:	44 0f af c9                                     	imul   r9d,ecx
    214fa49410b9:	44 03 cb                                        	add    r9d,ebx
    214fa49410bc:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa49410c0:	44 03 c8                                        	add    r9d,eax
    214fa49410c3:	c4 01 7a 6f 6c 08 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r9*1+0x30]
    214fa49410ca:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa49410d0:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa49410d5:	c4 01 7a 6f 74 08 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r9*1+0x20]
    214fa49410dc:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa49410e2:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa49410e6:	c4 81 7a 6f 4c 08 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r9*1+0x10]
    214fa49410ed:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa49410f2:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa49410f6:	c4 81 7a 6f 14 08                               	vmovdqu xmm2,XMMWORD PTR [r8+r9*1]
    214fa49410fc:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa4941101:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa4941105:	0f af ce                                        	imul   ecx,esi
    214fa4941108:	03 d9                                           	add    ebx,ecx
    214fa494110a:	c1 e3 04                                        	shl    ebx,0x4
    214fa494110d:	03 c3                                           	add    eax,ebx
    214fa494110f:	c4 c1 7a 6f 5c 00 30                            	vmovdqu xmm3,XMMWORD PTR [r8+rax*1+0x30]
    214fa4941116:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa494111b:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa494111f:	c4 c1 7a 6f 64 00 20                            	vmovdqu xmm4,XMMWORD PTR [r8+rax*1+0x20]
    214fa4941126:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    214fa494112b:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa4941130:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa4941134:	c4 c1 7a 6f 6c 00 10                            	vmovdqu xmm5,XMMWORD PTR [r8+rax*1+0x10]
    214fa494113b:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    214fa4941140:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa4941145:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4941149:	c4 c1 7a 6f 34 00                               	vmovdqu xmm6,XMMWORD PTR [r8+rax*1]
    214fa494114f:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    214fa4941157:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa494115c:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa4941160:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa4941165:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa494116a:	c5 f8 50 c0                                     	vmovmskps eax,xmm0
    214fa494116e:	83 f8 0f                                        	cmp    eax,0xf
    214fa4941171:	0f 84 0e 00 00 00                               	je     0x214fa4941185
    214fa4941177:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    214fa4941180:	e9 f6 0c 00 00                                  	jmp    0x214fa4941e7b
    214fa4941185:	4c 8b 15 d0 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed0]        # 0x214fa493b05c
    214fa494118c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4941191:	4c 8b 15 d3 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed3]        # 0x214fa493b06b
    214fa4941198:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa494119e:	4c 8b 15 d6 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed6]        # 0x214fa493b07b
    214fa49411a5:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49411aa:	4c 8b 15 d9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed9]        # 0x214fa493b08a
    214fa49411b1:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49411b7:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    214fa49411bc:	4c 8b 15 df 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9edf]        # 0x214fa493b0a2
    214fa49411c3:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49411c8:	4c 8b 15 e2 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee2]        # 0x214fa493b0b1
    214fa49411cf:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49411d5:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    214fa49411dd:	4c 8b 15 e5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee5]        # 0x214fa493b0c9
    214fa49411e4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49411e9:	4c 8b 15 e8 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee8]        # 0x214fa493b0d8
    214fa49411f0:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49411f6:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa49411fe:	4c 8b 15 eb 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eeb]        # 0x214fa493b0f0
    214fa4941205:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa494120a:	4c 8b 15 ee 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eee]        # 0x214fa493b0ff
    214fa4941211:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4941217:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    214fa494121f:	4c 8b 15 f1 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef1]        # 0x214fa493b117
    214fa4941226:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa494122b:	4c 8b 15 f4 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef4]        # 0x214fa493b126
    214fa4941232:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4941238:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    214fa4941240:	4c 8b 15 f7 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef7]        # 0x214fa493b13e
    214fa4941247:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa494124c:	4c 8b 15 fa 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efa]        # 0x214fa493b14d
    214fa4941253:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4941259:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    214fa4941261:	4c 8b 15 fd 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efd]        # 0x214fa493b165
    214fa4941268:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa494126d:	4c 8b 15 00 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f00]        # 0x214fa493b174
    214fa4941274:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa494127a:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    214fa4941282:	4c 8b 15 03 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f03]        # 0x214fa493b18c
    214fa4941289:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494128e:	4c 8b 15 06 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f06]        # 0x214fa493b19b
    214fa4941295:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa494129b:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    214fa49412a3:	4c 8b 15 09 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f09]        # 0x214fa493b1b3
    214fa49412aa:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49412af:	4c 8b 15 0c 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0c]        # 0x214fa493b1c2
    214fa49412b6:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49412bc:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    214fa49412c4:	4c 8b 15 0f 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0f]        # 0x214fa493b1da
    214fa49412cb:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa49412d0:	4c 8b 15 12 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f12]        # 0x214fa493b1e9
    214fa49412d7:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa49412dd:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    214fa49412e5:	4c 8b 15 15 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f15]        # 0x214fa493b201
    214fa49412ec:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa49412f1:	4c 8b 15 18 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f18]        # 0x214fa493b210
    214fa49412f8:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa49412fe:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    214fa4941306:	4c 8b 15 1b 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1b]        # 0x214fa493b228
    214fa494130d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4941312:	4c 8b 15 1e 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1e]        # 0x214fa493b237
    214fa4941319:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa494131f:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    214fa4941327:	4c 8b 15 21 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f21]        # 0x214fa493b24f
    214fa494132e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4941333:	4c 8b 15 24 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f24]        # 0x214fa493b25e
    214fa494133a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4941340:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    214fa4941348:	4c 8b 15 27 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f27]        # 0x214fa493b276
    214fa494134f:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4941354:	4c 8b 15 2a 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f2a]        # 0x214fa493b285
    214fa494135b:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4941361:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    214fa4941369:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa494136e:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa4941374:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa494137a:	4c 8b 15 2d 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f2d]        # 0x214fa493b2ae
    214fa4941381:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4941387:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    214fa494138f:	4c 8b 15 30 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f30]        # 0x214fa493b2c6
    214fa4941396:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa494139b:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa49413a0:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    214fa49413a8:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa49413ad:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa49413b3:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa49413b8:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa49413bd:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa49413c1:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa49413c6:	4c 8b 15 f9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef9]        # 0x214fa493b2c6
    214fa49413cd:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa49413d2:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa49413d7:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa49413dc:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa49413e0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa49413e5:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa49413ea:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa49413ef:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa49413f3:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa49413f8:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa49413fc:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4941400:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941405:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa494140a:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa494140f:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4941413:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941418:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa494141c:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa4941420:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941425:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa494142a:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa494142e:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa4941432:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941437:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa494143b:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa494143f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941444:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa4941449:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa494144d:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa4941451:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941456:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa494145a:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa494145e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941463:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa4941468:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa494146c:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa4941470:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941475:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4941479:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa494147d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941482:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa4941488:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    214fa4941490:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4941494:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4941498:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494149d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa49414a1:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa49414a5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49414aa:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa49414b2:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49414b7:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa49414bf:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49414c3:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49414c7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49414cc:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49414d0:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49414d4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49414d9:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa49414e1:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49414e6:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    214fa49414ee:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49414f2:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49414f6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49414fb:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49414ff:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941503:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941508:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa4941510:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941515:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa494151d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941521:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941525:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494152a:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa494152e:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941532:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941537:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa494153f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941544:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa494154c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941550:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941554:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941559:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa494155d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941561:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941566:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa494156e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941573:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa494157b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa494157f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941583:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941588:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa494158c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941590:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941595:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa494159d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49415a2:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa49415aa:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49415ae:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49415b2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49415b7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49415bb:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49415bf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49415c4:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa49415cc:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49415d1:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa49415d9:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49415dd:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49415e1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49415e6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49415ea:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49415ee:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49415f3:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa49415f8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49415fd:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4941605:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941609:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa494160d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941612:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941616:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa494161a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa494161f:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    214fa4941624:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941629:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    214fa494162e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941632:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941636:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494163b:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4941645:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941649:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa494164d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941652:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    214fa494165c:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa4941660:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4941664:	33 c0                                           	xor    eax,eax
    214fa4941666:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa494166a:	0f 97 c0                                        	seta   al
    214fa494166d:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    214fa4941673:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    214fa494167a:	0b cb                                           	or     ecx,ebx
    214fa494167c:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    214fa4941682:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4941687:	be 02 00 00 00                                  	mov    esi,0x2
    214fa494168c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4941690:	0f 47 c6                                        	cmova  eax,esi
    214fa4941693:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    214fa494169a:	0b cb                                           	or     ecx,ebx
    214fa494169c:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    214fa49416a2:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa49416a7:	b9 03 00 00 00                                  	mov    ecx,0x3
    214fa49416ac:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa49416b0:	0f 47 c1                                        	cmova  eax,ecx
    214fa49416b3:	c1 e0 02                                        	shl    eax,0x2
    214fa49416b6:	0b d8                                           	or     ebx,eax
    214fa49416b8:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    214fa49416be:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    214fa49416c5:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    214fa49416cb:	0b c3                                           	or     eax,ebx
    214fa49416cd:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49416d1:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    214fa49416d6:	e9 a0 07 00 00                                  	jmp    0x214fa4941e7b
    214fa49416db:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    214fa49416e0:	8b c8                                           	mov    ecx,eax
    214fa49416e2:	83 e1 3f                                        	and    ecx,0x3f
    214fa49416e5:	48 d3 eb                                        	shr    rbx,cl
    214fa49416e8:	be 03 00 00 00                                  	mov    esi,0x3
    214fa49416ed:	f6 c3 01                                        	test   bl,0x1
    214fa49416f0:	0f 84 85 07 00 00                               	je     0x214fa4941e7b
    214fa49416f6:	83 e0 03                                        	and    eax,0x3
    214fa49416f9:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    214fa49416fd:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa4941703:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    214fa494170a:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    214fa494170e:	0f 86 67 07 00 00                               	jbe    0x214fa4941e7b
    214fa4941714:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    214fa4941719:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    214fa494171c:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    214fa4941722:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    214fa4941726:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    214fa494172a:	41 83 c9 03                                     	or     r9d,0x3
    214fa494172e:	44 0f af c9                                     	imul   r9d,ecx
    214fa4941732:	44 03 cb                                        	add    r9d,ebx
    214fa4941735:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa4941739:	44 03 c8                                        	add    r9d,eax
    214fa494173c:	c4 81 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x30]
    214fa4941743:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa4941748:	c4 81 7a 6f 74 08 20                            	vmovdqu xmm6,XMMWORD PTR [r8+r9*1+0x20]
    214fa494174f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4941754:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4941758:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    214fa494175f:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4941764:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa4941769:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    214fa494176f:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa4941775:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa494177a:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    214fa494177e:	41 81 e1 fc ff ff 0f                            	and    r9d,0xffffffc
    214fa4941785:	45 8b d9                                        	mov    r11d,r9d
    214fa4941788:	41 83 cb 02                                     	or     r11d,0x2
    214fa494178c:	44 0f af d9                                     	imul   r11d,ecx
    214fa4941790:	44 03 db                                        	add    r11d,ebx
    214fa4941793:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa4941797:	44 03 d8                                        	add    r11d,eax
    214fa494179a:	c4 01 7a 6f 4c 18 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x30]
    214fa49417a1:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa49417a7:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa49417ac:	c4 01 7a 6f 54 18 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r11*1+0x20]
    214fa49417b3:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa49417b9:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa49417be:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    214fa49417c5:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa49417cb:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa49417d0:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    214fa49417d6:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa49417dc:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa49417e1:	45 8b d9                                        	mov    r11d,r9d
    214fa49417e4:	41 83 cb 01                                     	or     r11d,0x1
    214fa49417e8:	44 0f af d9                                     	imul   r11d,ecx
    214fa49417ec:	44 03 db                                        	add    r11d,ebx
    214fa49417ef:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa49417f3:	44 03 d8                                        	add    r11d,eax
    214fa49417f6:	c4 01 7a 6f 6c 18 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r11*1+0x30]
    214fa49417fd:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4941803:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa4941808:	c4 01 7a 6f 74 18 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r11*1+0x20]
    214fa494180f:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa4941815:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa4941819:	c4 81 7a 6f 4c 18 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r11*1+0x10]
    214fa4941820:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa4941825:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa4941829:	c4 81 7a 6f 14 18                               	vmovdqu xmm2,XMMWORD PTR [r8+r11*1]
    214fa494182f:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa4941834:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa4941838:	41 0f af c9                                     	imul   ecx,r9d
    214fa494183c:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    214fa4941840:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa4941844:	44 03 d8                                        	add    r11d,eax
    214fa4941847:	c4 81 7a 6f 5c 18 30                            	vmovdqu xmm3,XMMWORD PTR [r8+r11*1+0x30]
    214fa494184e:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa4941853:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa4941857:	c4 81 7a 6f 64 18 20                            	vmovdqu xmm4,XMMWORD PTR [r8+r11*1+0x20]
    214fa494185e:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    214fa4941863:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa4941868:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa494186c:	c4 81 7a 6f 6c 18 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r11*1+0x10]
    214fa4941873:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    214fa4941878:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa494187d:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4941881:	c4 81 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+r11*1]
    214fa4941887:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    214fa494188f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4941894:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa4941898:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa494189d:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa49418a2:	c5 78 50 d8                                     	vmovmskps r11d,xmm0
    214fa49418a6:	41 83 fb 0f                                     	cmp    r11d,0xf
    214fa49418aa:	0f 84 12 00 00 00                               	je     0x214fa49418c2
    214fa49418b0:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    214fa49418b9:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa49418bd:	e9 b9 05 00 00                                  	jmp    0x214fa4941e7b
    214fa49418c2:	4c 8b 15 93 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9793]        # 0x214fa493b05c
    214fa49418c9:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49418ce:	4c 8b 15 96 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9796]        # 0x214fa493b06b
    214fa49418d5:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49418db:	4c 8b 15 99 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9799]        # 0x214fa493b07b
    214fa49418e2:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49418e7:	4c 8b 15 9c 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff979c]        # 0x214fa493b08a
    214fa49418ee:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49418f4:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    214fa49418f9:	4c 8b 15 a2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a2]        # 0x214fa493b0a2
    214fa4941900:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4941905:	4c 8b 15 a5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a5]        # 0x214fa493b0b1
    214fa494190c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4941912:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    214fa494191a:	4c 8b 15 a8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a8]        # 0x214fa493b0c9
    214fa4941921:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4941926:	4c 8b 15 ab 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ab]        # 0x214fa493b0d8
    214fa494192d:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4941933:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa494193b:	4c 8b 15 ae 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ae]        # 0x214fa493b0f0
    214fa4941942:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4941947:	4c 8b 15 b1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b1]        # 0x214fa493b0ff
    214fa494194e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4941954:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    214fa494195c:	4c 8b 15 b4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b4]        # 0x214fa493b117
    214fa4941963:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4941968:	4c 8b 15 b7 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b7]        # 0x214fa493b126
    214fa494196f:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4941975:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    214fa494197d:	4c 8b 15 ba 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ba]        # 0x214fa493b13e
    214fa4941984:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4941989:	4c 8b 15 bd 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97bd]        # 0x214fa493b14d
    214fa4941990:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4941996:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    214fa494199e:	4c 8b 15 c0 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c0]        # 0x214fa493b165
    214fa49419a5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49419aa:	4c 8b 15 c3 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c3]        # 0x214fa493b174
    214fa49419b1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49419b7:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    214fa49419bf:	4c 8b 15 c6 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c6]        # 0x214fa493b18c
    214fa49419c6:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa49419cb:	4c 8b 15 c9 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c9]        # 0x214fa493b19b
    214fa49419d2:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa49419d8:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    214fa49419e0:	4c 8b 15 cc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cc]        # 0x214fa493b1b3
    214fa49419e7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49419ec:	4c 8b 15 cf 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cf]        # 0x214fa493b1c2
    214fa49419f3:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49419f9:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    214fa4941a01:	4c 8b 15 d2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d2]        # 0x214fa493b1da
    214fa4941a08:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4941a0d:	4c 8b 15 d5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d5]        # 0x214fa493b1e9
    214fa4941a14:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa4941a1a:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    214fa4941a22:	4c 8b 15 d8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d8]        # 0x214fa493b201
    214fa4941a29:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4941a2e:	4c 8b 15 db 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97db]        # 0x214fa493b210
    214fa4941a35:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4941a3b:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    214fa4941a43:	4c 8b 15 de 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97de]        # 0x214fa493b228
    214fa4941a4a:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4941a4f:	4c 8b 15 e1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e1]        # 0x214fa493b237
    214fa4941a56:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa4941a5c:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    214fa4941a64:	4c 8b 15 e4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e4]        # 0x214fa493b24f
    214fa4941a6b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4941a70:	4c 8b 15 e7 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e7]        # 0x214fa493b25e
    214fa4941a77:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4941a7d:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    214fa4941a85:	4c 8b 15 ea 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ea]        # 0x214fa493b276
    214fa4941a8c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4941a91:	4c 8b 15 ed 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ed]        # 0x214fa493b285
    214fa4941a98:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4941a9e:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    214fa4941aa6:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa4941aab:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa4941ab1:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa4941ab7:	4c 8b 15 f0 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97f0]        # 0x214fa493b2ae
    214fa4941abe:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4941ac4:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    214fa4941acc:	4c 8b 15 f3 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97f3]        # 0x214fa493b2c6
    214fa4941ad3:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4941ad8:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4941add:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    214fa4941ae5:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa4941aea:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa4941af0:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa4941af5:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa4941afa:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa4941afe:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4941b03:	4c 8b 15 bc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97bc]        # 0x214fa493b2c6
    214fa4941b0a:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4941b0f:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4941b14:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa4941b19:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa4941b1d:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4941b22:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa4941b27:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa4941b2c:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa4941b30:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4941b35:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa4941b39:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4941b3d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941b42:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa4941b47:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa4941b4c:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4941b50:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941b55:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4941b59:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa4941b5d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941b62:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa4941b67:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4941b6b:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa4941b6f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941b74:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4941b78:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa4941b7c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941b81:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa4941b86:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4941b8a:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa4941b8e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941b93:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4941b97:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa4941b9b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941ba0:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa4941ba5:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4941ba9:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa4941bad:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941bb2:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4941bb6:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa4941bba:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941bbf:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa4941bc5:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    214fa4941bcd:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4941bd1:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4941bd5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941bda:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4941bde:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa4941be2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941be7:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa4941bef:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941bf4:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa4941bfc:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941c00:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941c04:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941c09:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941c0d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941c11:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941c16:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa4941c1e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941c23:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    214fa4941c2b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941c2f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941c33:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941c38:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941c3c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941c40:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941c45:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa4941c4d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941c52:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa4941c5a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941c5e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941c62:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941c67:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941c6b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941c6f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941c74:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa4941c7c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941c81:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4941c89:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941c8d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941c91:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941c96:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941c9a:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941c9e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941ca3:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa4941cab:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941cb0:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa4941cb8:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941cbc:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941cc0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941cc5:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941cc9:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941ccd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941cd2:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa4941cda:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941cdf:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa4941ce7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941ceb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941cef:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941cf4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941cf8:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941cfc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941d01:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa4941d09:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941d0e:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa4941d16:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941d1a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941d1e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941d23:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941d27:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941d2b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941d30:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa4941d35:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941d3a:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4941d42:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941d46:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941d4a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941d4f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941d53:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4941d57:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4941d5c:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    214fa4941d61:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4941d66:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    214fa4941d6b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4941d6f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4941d73:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941d78:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4941d82:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4941d86:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa4941d8a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4941d8f:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    214fa4941d99:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa4941d9d:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4941da1:	45 33 db                                        	xor    r11d,r11d
    214fa4941da4:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4941da8:	41 0f 97 c3                                     	seta   r11b
    214fa4941dac:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    214fa4941db2:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    214fa4941dba:	0b d8                                           	or     ebx,eax
    214fa4941dbc:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    214fa4941dc2:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4941dc7:	b9 02 00 00 00                                  	mov    ecx,0x2
    214fa4941dcc:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4941dd0:	44 0f 47 d9                                     	cmova  r11d,ecx
    214fa4941dd4:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    214fa4941ddc:	0b d8                                           	or     ebx,eax
    214fa4941dde:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    214fa4941de4:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa4941de9:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4941ded:	44 0f 47 de                                     	cmova  r11d,esi
    214fa4941df1:	41 c1 e3 02                                     	shl    r11d,0x2
    214fa4941df5:	41 0b c3                                        	or     eax,r11d
    214fa4941df8:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa4941dfe:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    214fa4941e05:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    214fa4941e0b:	44 0b d8                                        	or     r11d,eax
    214fa4941e0e:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa4941e12:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    214fa4941e17:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4941e1b:	e9 5b 00 00 00                                  	jmp    0x214fa4941e7b
    214fa4941e20:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    214fa4941e26:	51                                              	push   rcx
    214fa4941e27:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4941e2b:	8b c8                                           	mov    ecx,eax
    214fa4941e2d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa4941e30:	e8 3b 64 ee ff                                  	call   0x214fa4828270
    214fa4941e35:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4941e38:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4941e3c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa4941e40:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4941e44:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    214fa4941e4b:	e9 2b 00 00 00                                  	jmp    0x214fa4941e7b
    214fa4941e50:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    214fa4941e56:	51                                              	push   rcx
    214fa4941e57:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4941e5b:	8b c8                                           	mov    ecx,eax
    214fa4941e5d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa4941e60:	e8 f3 63 ee ff                                  	call   0x214fa4828258
    214fa4941e65:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4941e68:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4941e6c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa4941e70:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4941e74:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    214fa4941e7b:	41 83 c4 01                                     	add    r12d,0x1
    214fa4941e7f:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    214fa4941e84:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    214fa4941e89:	0f 8f 71 e2 ff ff                               	jg     0x214fa4940100
    214fa4941e8f:	44 8b 9d b8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x248]
    214fa4941e96:	45 85 db                                        	test   r11d,r11d
    214fa4941e99:	0f 85 08 00 00 00                               	jne    0x214fa4941ea7
    214fa4941e9f:	44 8b cf                                        	mov    r9d,edi
    214fa4941ea2:	e9 2b 00 00 00                                  	jmp    0x214fa4941ed2
    214fa4941ea7:	44 8b 85 70 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x390]
    214fa4941eae:	45 85 c0                                        	test   r8d,r8d
    214fa4941eb1:	41 0f 94 c0                                     	sete   r8b
    214fa4941eb5:	45 0f b6 c0                                     	movzx  r8d,r8b
    214fa4941eb9:	43 8d 04 00                                     	lea    eax,[r8+r8*1]
    214fa4941ebd:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    214fa4941ec3:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    214fa4941ec7:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    214fa4941ecb:	48 8b e5                                        	mov    rsp,rbp
    214fa4941ece:	5d                                              	pop    rbp
    214fa4941ecf:	c2 40 00                                        	ret    0x40
    214fa4941ed2:	45 8d 81 a0 02 00 00                            	lea    r8d,[r9+0x2a0]
    214fa4941ed9:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    214fa4941edd:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    214fa4941ee1:	b8 01 00 00 00                                  	mov    eax,0x1
    214fa4941ee6:	48 8b e5                                        	mov    rsp,rbp
    214fa4941ee9:	5d                                              	pop    rbp
    214fa4941eea:	c2 40 00                                        	ret    0x40
    214fa4941eed:	41 b8 10 00 00 00                               	mov    r8d,0x10
    214fa4941ef3:	41 d1 f8                                        	sar    r8d,1
    214fa4941ef6:	4d 63 c0                                        	movsxd r8,r8d
    214fa4941ef9:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    214fa4941f00:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    214fa4941f07:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    214fa4941f0e:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    214fa4941f13:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    214fa4941f1b:	49 8b c0                                        	mov    rax,r8
    214fa4941f1e:	e8 0d 90 ee ff                                  	call   0x214fa482af30
    214fa4941f23:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4941f27:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa4941f2a:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    214fa4941f31:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    214fa4941f37:	8b bd 68 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x198]
    214fa4941f3d:	8b 9d d0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x230]
    214fa4941f43:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    214fa4941f48:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    214fa4941f50:	e9 94 5d ff ff                                  	jmp    0x214fa4937ce9
    214fa4941f55:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa4941f59:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    214fa4941f5e:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    214fa4941f66:	4c 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r15
    214fa4941f6d:	48 89 8d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rcx
    214fa4941f74:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    214fa4941f7b:	c5 fb 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm5
    214fa4941f83:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    214fa4941f8a:	e8 b1 8f ee ff                                  	call   0x214fa482af40
    214fa4941f8f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4941f93:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4941f97:	45 33 e4                                        	xor    r12d,r12d
    214fa4941f9a:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    214fa4941f9f:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    214fa4941fa7:	44 8b bd f8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x208]
    214fa4941fae:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    214fa4941fb4:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    214fa4941fba:	c5 fb 10 ad 38 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1c8]
    214fa4941fc2:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa4941fc8:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4941fcf:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa4941fd2:	8b 9d e0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x220]
    214fa4941fd8:	e9 b7 5f ff ff                                  	jmp    0x214fa4937f94
    214fa4941fdd:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa4941fe1:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    214fa4941fe6:	c5 f8 11 85 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm0
    214fa4941fee:	4c 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r15
    214fa4941ff5:	48 89 8d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rcx
    214fa4941ffc:	48 89 b5 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rsi
    214fa4942003:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    214fa494200a:	48 89 95 f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdx
    214fa4942011:	c5 fb 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm5
    214fa4942019:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    214fa4942020:	48 89 9d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rbx
    214fa4942027:	e8 14 8f ee ff                                  	call   0x214fa482af40
    214fa494202c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4942030:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4942034:	45 33 e4                                        	xor    r12d,r12d
    214fa4942037:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    214fa494203c:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    214fa4942044:	44 8b bd f8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x208]
    214fa494204b:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    214fa4942051:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    214fa4942057:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    214fa494205d:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    214fa4942063:	c5 fb 10 ad 38 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1c8]
    214fa494206b:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa4942071:	8b 9d 10 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1f0]
    214fa4942077:	e9 64 60 ff ff                                  	jmp    0x214fa49380e0
    214fa494207c:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    214fa4942080:	48 89 95 d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rdx
    214fa4942087:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    214fa494208c:	c5 fb 11 ad f0 fb ff ff                         	vmovsd QWORD PTR [rbp-0x410],xmm5
    214fa4942094:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    214fa4942099:	c5 fb 11 b5 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm6
    214fa49420a1:	e8 9a 8e ee ff                                  	call   0x214fa482af40
    214fa49420a6:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa49420aa:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    214fa49420ad:	48 8b 95 d8 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x428]
    214fa49420b4:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    214fa49420b9:	c5 fb 10 ad f0 fb ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x410]
    214fa49420c1:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    214fa49420c6:	c5 fb 10 b5 78 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x188]
    214fa49420ce:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa49420d6:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    214fa49420de:	48 8b 9d d8 fa ff ff                            	mov    rbx,QWORD PTR [rbp-0x528]
    214fa49420e5:	4c 8b a5 90 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x470]
    214fa49420ec:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa49420f4:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    214fa49420fc:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa4942104:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    214fa4942107:	44 8b bd a0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x460]
    214fa494210e:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    214fa4942114:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    214fa4942119:	8b b5 c8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x338]
    214fa494211f:	8b 8d 18 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1e8]
    214fa4942125:	4c 8b 8d 08 fb ff ff                            	mov    r9,QWORD PTR [rbp-0x4f8]
    214fa494212c:	e9 2c 75 ff ff                                  	jmp    0x214fa493965d
    214fa4942131:	4c 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r11
    214fa4942138:	48 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rbx
    214fa494213f:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    214fa4942146:	e8 f5 8d ee ff                                  	call   0x214fa482af40
    214fa494214b:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa494214f:	c5 7b 10 85 e8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x318]
    214fa4942157:	44 8b 9d 50 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3b0]
    214fa494215e:	48 8b 9d 40 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3c0]
    214fa4942165:	48 8b 95 30 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3d0]
    214fa494216c:	4c 8b 85 20 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x3e0]
    214fa4942173:	c5 f8 10 ad 00 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x300]
    214fa494217b:	c5 f8 10 b5 70 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x490]
    214fa4942183:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa494218b:	c5 f8 10 9d 00 fc ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x400]
    214fa4942193:	48 8b bd f0 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x210]
    214fa494219a:	48 8b b5 30 fb ff ff                            	mov    rsi,QWORD PTR [rbp-0x4d0]
    214fa49421a1:	48 8b 8d e0 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x320]
    214fa49421a8:	4c 8b 8d d8 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x528]
    214fa49421af:	48 8b 85 90 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x470]
    214fa49421b6:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa49421be:	c5 78 10 95 20 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4e0]
    214fa49421c6:	c5 78 10 a5 00 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x200]
    214fa49421ce:	c5 f8 10 85 60 fb ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x4a0]
    214fa49421d6:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa49421de:	e9 68 7b ff ff                                  	jmp    0x214fa4939d4b
    214fa49421e3:	e8 58 8d ee ff                                  	call   0x214fa482af40
    214fa49421e8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49421eb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49421ef:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    214fa49421f6:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    214fa49421fc:	8b 9d f8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x308]
    214fa4942202:	8b 95 f0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x310]
    214fa4942208:	c5 78 10 a5 c0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x440]
    214fa4942210:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa4942218:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    214fa494221f:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    214fa4942227:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    214fa494222f:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa4942237:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    214fa494223f:	44 8b 9d 60 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1a0]
    214fa4942246:	e9 bf 9f ff ff                                  	jmp    0x214fa493c20a
    214fa494224b:	e8 f0 8c ee ff                                  	call   0x214fa482af40
    214fa4942250:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4942253:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4942257:	8b 8d c0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x340]
    214fa494225d:	44 8b 9d 48 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4b8]
    214fa4942264:	e9 f6 af ff ff                                  	jmp    0x214fa493d25f
    214fa4942269:	e8 d2 8c ee ff                                  	call   0x214fa482af40
    214fa494226e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4942271:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4942275:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa494227b:	4c 8b 8d 70 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x190]
    214fa4942282:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    214fa4942288:	e9 19 c6 ff ff                                  	jmp    0x214fa493e8a6
    214fa494228d:	e8 ae 8c ee ff                                  	call   0x214fa482af40
    214fa4942292:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4942295:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4942299:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa494229f:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    214fa49422a3:	44 8b a5 b0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x250]
    214fa49422aa:	44 8b 8d d0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x330]
    214fa49422b1:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    214fa49422b8:	c5 78 10 8d c0 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x440]
    214fa49422c0:	c5 78 10 95 60 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3a0]
    214fa49422c8:	c5 f8 10 ad a0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x360]
    214fa49422d0:	8b b5 38 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1c8]
    214fa49422d6:	e9 07 ca ff ff                                  	jmp    0x214fa493ece2
    214fa49422db:	e8 60 8c ee ff                                  	call   0x214fa482af40
    214fa49422e0:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49422e3:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49422e7:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    214fa49422eb:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    214fa49422ef:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    214fa49422f3:	48 8b 85 60 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a0]
    214fa49422fa:	48 8b 9d 58 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a8]
    214fa4942301:	4c 8b bd 50 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2b0]
    214fa4942308:	c5 fb 10 ad e8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x318]
    214fa4942310:	8b b5 d8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x328]
    214fa4942316:	44 8b a5 d0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x330]
    214fa494231d:	e9 21 de ff ff                                  	jmp    0x214fa4940143
    214fa4942322:	e8 19 8c ee ff                                  	call   0x214fa482af40
    214fa4942327:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494232a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494232e:	44 8b 8d 68 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x298]
    214fa4942335:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    214fa494233c:	4c 8b a5 18 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1e8]
    214fa4942343:	8b 8d 10 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1f0]
    214fa4942349:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    214fa494234f:	8b 85 f8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x308]
    214fa4942355:	44 8b 9d f0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x310]
    214fa494235c:	e9 60 e0 ff ff                                  	jmp    0x214fa49403c1
    214fa4942361:	e8 fa 88 ee ff                                  	call   0x214fa482ac60
    214fa4942366:	e8 f5 88 ee ff                                  	call   0x214fa482ac60
    214fa494236b:	e8 f0 88 ee ff                                  	call   0x214fa482ac60
    214fa4942370:	e8 eb 88 ee ff                                  	call   0x214fa482ac60
    214fa4942375:	e8 e6 88 ee ff                                  	call   0x214fa482ac60
    214fa494237a:	e8 e1 88 ee ff                                  	call   0x214fa482ac60
    214fa494237f:	e8 dc 88 ee ff                                  	call   0x214fa482ac60
    214fa4942384:	e8 d7 88 ee ff                                  	call   0x214fa482ac60
    214fa4942389:	e8 d2 88 ee ff                                  	call   0x214fa482ac60
    214fa494238e:	e8 cd 88 ee ff                                  	call   0x214fa482ac60
    214fa4942393:	e8 c8 88 ee ff                                  	call   0x214fa482ac60
    214fa4942398:	e8 c3 88 ee ff                                  	call   0x214fa482ac60
    214fa494239d:	90                                              	nop
    214fa494239e:	66 90                                           	xchg   ax,ax
    214fa49423a0:	ab                                              	stos   DWORD PTR es:[rdi],eax
    214fa49423a1:	a1 93 a4 4f 21 00 00 a5 a1                      	movabs eax,ds:0xa1a50000214fa493
    214fa49423aa:	93                                              	xchg   ebx,eax
    214fa49423ab:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa49423ac:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa49423af:	00 9b a1 93 a4 4f                               	add    BYTE PTR [rbx+0x4fa493a1],bl
    214fa49423b5:	21 00                                           	and    DWORD PTR [rax],eax
    214fa49423b7:	00 90 a1 93 a4 4f                               	add    BYTE PTR [rax+0x4fa493a1],dl
    214fa49423bd:	21 00                                           	and    DWORD PTR [rax],eax
    214fa49423bf:	00 86 a1 93 a4 4f                               	add    BYTE PTR [rsi+0x4fa493a1],al
    214fa49423c5:	21 00                                           	and    DWORD PTR [rax],eax
    214fa49423c7:	00 7c a1 93                                     	add    BYTE PTR [rcx+riz*4-0x6d],bh
    214fa49423cb:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa49423cc:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa49423cf:	00 72 a1                                        	add    BYTE PTR [rdx-0x5f],dh
    214fa49423d2:	93                                              	xchg   ebx,eax
    214fa49423d3:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa49423d4:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa49423d7:	00 a7 00 00 00 1c                               	add    BYTE PTR [rdi+0x1c000000],ah
    214fa49423dd:	00 00                                           	add    BYTE PTR [rax],al
    214fa49423df:	00 a6 50 ef 04 05                               	add    BYTE PTR [rsi+0x504ef50],ah
    214fa49423e5:	bc f4 01 ef 04                                  	mov    esp,0x4ef01f4
    214fa49423ea:	05 6c ef 04 05                                  	add    eax,0x504ef6c
    214fa49423ef:	d7                                              	xlat   BYTE PTR ds:[rbx]
    214fa49423f0:	07                                              	(bad)
    214fa49423f1:	ef                                              	out    dx,eax
    214fa49423f2:	04 05                                           	add    al,0x5
	...
