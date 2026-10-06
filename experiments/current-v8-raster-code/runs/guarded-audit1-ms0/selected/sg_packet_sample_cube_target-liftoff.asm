
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms0/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

00001d2b7c461c00 <.data>:
    1d2b7c461c00:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    1d2b7c461c06:	e8 65 d1 f5 ff                                  	call   0x1d2b7c3bed70
    1d2b7c461c0b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
    1d2b7c461c12:	8b c0                                           	mov    eax,eax
    1d2b7c461c14:	8b d2                                           	mov    edx,edx
    1d2b7c461c16:	8b c9                                           	mov    ecx,ecx
    1d2b7c461c18:	50                                              	push   rax
    1d2b7c461c19:	51                                              	push   rcx
    1d2b7c461c1a:	57                                              	push   rdi
    1d2b7c461c1b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
    1d2b7c461c22:	33 c0                                           	xor    eax,eax
    1d2b7c461c24:	b9 21 00 00 00                                  	mov    ecx,0x21
    1d2b7c461c29:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    1d2b7c461c2b:	5f                                              	pop    rdi
    1d2b7c461c2c:	59                                              	pop    rcx
    1d2b7c461c2d:	58                                              	pop    rax
    1d2b7c461c2e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    1d2b7c461c32:	0f 86 06 06 00 00                               	jbe    0x1d2b7c46223e
    1d2b7c461c38:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
    1d2b7c461c3b:	49 0b de                                        	or     rbx,r14
    1d2b7c461c3e:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
    1d2b7c461c41:	bf 70 00 00 00                                  	mov    edi,0x70
    1d2b7c461c46:	2b df                                           	sub    ebx,edi
    1d2b7c461c48:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    1d2b7c461c4b:	49 0b fe                                        	or     rdi,r14
    1d2b7c461c4e:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
    1d2b7c461c51:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c461c55:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    1d2b7c461c59:	c5 fa 7f 44 1f 30                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x30],xmm0
    1d2b7c461c5f:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c461c67:	c5 fa 7f 44 1f 20                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x20],xmm0
    1d2b7c461c6d:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c461c75:	c5 fa 7f 44 1f 10                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x10],xmm0
    1d2b7c461c7b:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c461c83:	c5 fa 7f 04 1f                                  	vmovdqu XMMWORD PTR [rdi+rbx*1],xmm0
    1d2b7c461c88:	c5 fa 7f 4c 1f 60                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x60],xmm1
    1d2b7c461c8e:	c5 fa 7f 54 1f 50                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x50],xmm2
    1d2b7c461c94:	c5 fa 7f 5c 1f 40                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x40],xmm3
    1d2b7c461c9a:	44 8d 43 60                                     	lea    r8d,[rbx+0x60]
    1d2b7c461c9e:	44 8d 4b 50                                     	lea    r9d,[rbx+0x50]
    1d2b7c461ca2:	41 bc c0 ff ff ff                               	mov    r12d,0xffffffc0
    1d2b7c461ca8:	41 f7 dc                                        	neg    r12d
    1d2b7c461cab:	44 03 e3                                        	add    r12d,ebx
    1d2b7c461cae:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    1d2b7c461cb2:	41 83 47 0b 02                                  	add    DWORD PTR [r15+0xb],0x2
    1d2b7c461cb7:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
    1d2b7c461cba:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    1d2b7c461cbd:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    1d2b7c461cc0:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    1d2b7c461cc5:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    1d2b7c461cca:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    1d2b7c461ccf:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    1d2b7c461cd2:	51                                              	push   rcx
    1d2b7c461cd3:	41 8b c9                                        	mov    ecx,r9d
    1d2b7c461cd6:	44 8b ca                                        	mov    r9d,edx
    1d2b7c461cd9:	41 8b d0                                        	mov    edx,r8d
    1d2b7c461cdc:	41 8b dc                                        	mov    ebx,r12d
    1d2b7c461cdf:	e8 94 a8 f5 ff                                  	call   0x1d2b7c3bc578
    1d2b7c461ce4:	8b c0                                           	mov    eax,eax
    1d2b7c461ce6:	85 c0                                           	test   eax,eax
    1d2b7c461ce8:	0f 85 fc 04 00 00                               	jne    0x1d2b7c4621ea
    1d2b7c461cee:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    1d2b7c461cf1:	83 e0 01                                        	and    eax,0x1
    1d2b7c461cf4:	85 c0                                           	test   eax,eax
    1d2b7c461cf6:	0f 84 7d 00 00 00                               	je     0x1d2b7c461d79
    1d2b7c461cfc:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461cff:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c461d03:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    1d2b7c461d07:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    1d2b7c461d0b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461d0e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    1d2b7c461d12:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461d15:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    1d2b7c461d19:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461d1c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    1d2b7c461d21:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461d24:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    1d2b7c461d29:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    1d2b7c461d2e:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    1d2b7c461d33:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    1d2b7c461d38:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    1d2b7c461d3b:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c461d3f:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
    1d2b7c461d45:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
    1d2b7c461d49:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
    1d2b7c461d4d:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
    1d2b7c461d50:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
    1d2b7c461d53:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    1d2b7c461d56:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c461d59:	41 8b d9                                        	mov    ebx,r9d
    1d2b7c461d5c:	44 8b c8                                        	mov    r9d,eax
    1d2b7c461d5f:	8b c2                                           	mov    eax,edx
    1d2b7c461d61:	8b d7                                           	mov    edx,edi
    1d2b7c461d63:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    1d2b7c461d67:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    1d2b7c461d6b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    1d2b7c461d6f:	e8 bc a4 f5 ff                                  	call   0x1d2b7c3bc230
    1d2b7c461d74:	e9 00 00 00 00                                  	jmp    0x1d2b7c461d79
    1d2b7c461d79:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    1d2b7c461d7c:	83 e0 02                                        	and    eax,0x2
    1d2b7c461d7f:	85 c0                                           	test   eax,eax
    1d2b7c461d81:	0f 84 92 00 00 00                               	je     0x1d2b7c461e19
    1d2b7c461d87:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461d8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c461d8e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    1d2b7c461d92:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    1d2b7c461d96:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461d99:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    1d2b7c461d9d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461da0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    1d2b7c461da4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461da7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    1d2b7c461dac:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461daf:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    1d2b7c461db4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    1d2b7c461db9:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    1d2b7c461dbd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    1d2b7c461dc2:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    1d2b7c461dc6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    1d2b7c461dcb:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    1d2b7c461dcf:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    1d2b7c461dd2:	83 c0 10                                        	add    eax,0x10
    1d2b7c461dd5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c461dd9:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
    1d2b7c461ddf:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    1d2b7c461de6:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
    1d2b7c461ded:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    1d2b7c461df0:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
    1d2b7c461df3:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
    1d2b7c461df6:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c461df9:	41 8b d9                                        	mov    ebx,r9d
    1d2b7c461dfc:	44 8b c8                                        	mov    r9d,eax
    1d2b7c461dff:	8b c2                                           	mov    eax,edx
    1d2b7c461e01:	8b d7                                           	mov    edx,edi
    1d2b7c461e03:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    1d2b7c461e07:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    1d2b7c461e0b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    1d2b7c461e0f:	e8 1c a4 f5 ff                                  	call   0x1d2b7c3bc230
    1d2b7c461e14:	e9 00 00 00 00                                  	jmp    0x1d2b7c461e19
    1d2b7c461e19:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    1d2b7c461e1c:	83 e0 04                                        	and    eax,0x4
    1d2b7c461e1f:	85 c0                                           	test   eax,eax
    1d2b7c461e21:	0f 84 9b 00 00 00                               	je     0x1d2b7c461ec2
    1d2b7c461e27:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461e2a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c461e2e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    1d2b7c461e32:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    1d2b7c461e36:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461e39:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    1d2b7c461e3d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461e40:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    1d2b7c461e44:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461e47:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    1d2b7c461e4c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461e4f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    1d2b7c461e54:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    1d2b7c461e59:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    1d2b7c461e5d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    1d2b7c461e62:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    1d2b7c461e66:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    1d2b7c461e6b:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    1d2b7c461e6f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    1d2b7c461e72:	83 c0 20                                        	add    eax,0x20
    1d2b7c461e75:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c461e79:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
    1d2b7c461e7f:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
    1d2b7c461e86:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
    1d2b7c461e8d:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
    1d2b7c461e93:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
    1d2b7c461e99:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
    1d2b7c461e9f:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c461ea2:	41 8b d9                                        	mov    ebx,r9d
    1d2b7c461ea5:	44 8b c8                                        	mov    r9d,eax
    1d2b7c461ea8:	8b c2                                           	mov    eax,edx
    1d2b7c461eaa:	8b d7                                           	mov    edx,edi
    1d2b7c461eac:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    1d2b7c461eb0:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    1d2b7c461eb4:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    1d2b7c461eb8:	e8 73 a3 f5 ff                                  	call   0x1d2b7c3bc230
    1d2b7c461ebd:	e9 00 00 00 00                                  	jmp    0x1d2b7c461ec2
    1d2b7c461ec2:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    1d2b7c461ec5:	83 e0 08                                        	and    eax,0x8
    1d2b7c461ec8:	85 c0                                           	test   eax,eax
    1d2b7c461eca:	0f 84 9e 00 00 00                               	je     0x1d2b7c461f6e
    1d2b7c461ed0:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461ed3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c461ed7:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    1d2b7c461edb:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    1d2b7c461edf:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461ee2:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    1d2b7c461ee6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461ee9:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    1d2b7c461eed:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461ef0:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    1d2b7c461ef5:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c461ef8:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    1d2b7c461efd:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    1d2b7c461f02:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    1d2b7c461f07:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    1d2b7c461f0c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    1d2b7c461f11:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    1d2b7c461f16:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    1d2b7c461f1b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    1d2b7c461f1e:	83 c0 30                                        	add    eax,0x30
    1d2b7c461f21:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c461f25:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
    1d2b7c461f2b:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
    1d2b7c461f32:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
    1d2b7c461f39:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
    1d2b7c461f3f:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
    1d2b7c461f45:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
    1d2b7c461f4b:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c461f4e:	41 8b d9                                        	mov    ebx,r9d
    1d2b7c461f51:	44 8b c8                                        	mov    r9d,eax
    1d2b7c461f54:	8b c2                                           	mov    eax,edx
    1d2b7c461f56:	8b d7                                           	mov    edx,edi
    1d2b7c461f58:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    1d2b7c461f5c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    1d2b7c461f60:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    1d2b7c461f64:	e8 c7 a2 f5 ff                                  	call   0x1d2b7c3bc230
    1d2b7c461f69:	e9 00 00 00 00                                  	jmp    0x1d2b7c461f6e
    1d2b7c461f6e:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    1d2b7c461f71:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c461f74:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c461f78:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    1d2b7c461f7c:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    1d2b7c461f82:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c461f85:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    1d2b7c461f8b:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    1d2b7c461f95:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c461f9a:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    1d2b7c461fa4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c461faa:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    1d2b7c461faf:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    1d2b7c461fb9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c461fbe:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    1d2b7c461fc8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c461fce:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    1d2b7c461fd3:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    1d2b7c461fd8:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c461fdb:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    1d2b7c461fe0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    1d2b7c461fe3:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    1d2b7c461fe9:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x1d2b7c461f8d
    1d2b7c461ff0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c461ff5:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x1d2b7c461f9c
    1d2b7c461ffc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462002:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    1d2b7c462007:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x1d2b7c461fb1
    1d2b7c46200e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462013:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x1d2b7c461fc0
    1d2b7c46201a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462020:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    1d2b7c462025:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    1d2b7c46202a:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    1d2b7c462034:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462039:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    1d2b7c462043:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462049:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    1d2b7c46204e:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x1d2b7c46203b
    1d2b7c462055:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c46205a:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x1d2b7c46202c
    1d2b7c462061:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462067:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    1d2b7c46206c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c462071:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    1d2b7c462077:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    1d2b7c46207a:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    1d2b7c462084:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462089:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x1d2b7c46203b
    1d2b7c462090:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462096:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    1d2b7c46209b:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x1d2b7c46203b
    1d2b7c4620a2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4620a7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x1d2b7c46207c
    1d2b7c4620ae:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4620b4:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    1d2b7c4620b9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c4620be:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    1d2b7c4620c4:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    1d2b7c4620c7:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    1d2b7c4620d1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4620d6:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    1d2b7c4620e0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4620e6:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    1d2b7c4620eb:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    1d2b7c4620f5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4620fa:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    1d2b7c462104:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c46210a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    1d2b7c46210f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c462114:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x1d2b7c4620c9
    1d2b7c46211b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462120:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x1d2b7c4620d8
    1d2b7c462127:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c46212d:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    1d2b7c462132:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x1d2b7c4620ed
    1d2b7c462139:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c46213e:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x1d2b7c4620fc
    1d2b7c462145:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c46214b:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    1d2b7c462150:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c462155:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x1d2b7c46202c
    1d2b7c46215c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462161:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x1d2b7c46203b
    1d2b7c462168:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c46216e:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    1d2b7c462173:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x1d2b7c46203b
    1d2b7c46217a:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c46217f:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x1d2b7c46202c
    1d2b7c462186:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c46218c:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    1d2b7c462191:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c462196:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    1d2b7c46219c:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    1d2b7c46219f:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x1d2b7c46207c
    1d2b7c4621a6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4621ab:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x1d2b7c46203b
    1d2b7c4621b2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4621b8:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    1d2b7c4621bd:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x1d2b7c46203b
    1d2b7c4621c4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4621c9:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x1d2b7c46207c
    1d2b7c4621d0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4621d6:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    1d2b7c4621db:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c4621e0:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    1d2b7c4621e5:	e9 27 00 00 00                                  	jmp    0x1d2b7c462211
    1d2b7c4621ea:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    1d2b7c4621ef:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
    1d2b7c4621f4:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    1d2b7c4621f9:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
    1d2b7c462201:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
    1d2b7c462209:	c5 fa 6f b5 40 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xc0]
    1d2b7c462211:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    1d2b7c462214:	83 c0 70                                        	add    eax,0x70
    1d2b7c462217:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c46221b:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    1d2b7c46221e:	49 0b ce                                        	or     rcx,r14
    1d2b7c462221:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    1d2b7c462224:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
    1d2b7c462228:	41 81 aa 94 02 00 00 60 06 00 00                	sub    DWORD PTR [r10+0x294],0x660
    1d2b7c462233:	0f 88 45 00 00 00                               	js     0x1d2b7c46227e
    1d2b7c462239:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c46223c:	5d                                              	pop    rbp
    1d2b7c46223d:	c3                                              	ret
    1d2b7c46223e:	50                                              	push   rax
    1d2b7c46223f:	51                                              	push   rcx
    1d2b7c462240:	52                                              	push   rdx
    1d2b7c462241:	48 83 ec 30                                     	sub    rsp,0x30
    1d2b7c462245:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    1d2b7c46224a:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    1d2b7c462250:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    1d2b7c462256:	33 c0                                           	xor    eax,eax
    1d2b7c462258:	e8 d3 cc f5 ff                                  	call   0x1d2b7c3bef30
    1d2b7c46225d:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    1d2b7c462262:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    1d2b7c462268:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    1d2b7c46226e:	48 83 c4 30                                     	add    rsp,0x30
    1d2b7c462272:	5a                                              	pop    rdx
    1d2b7c462273:	59                                              	pop    rcx
    1d2b7c462274:	58                                              	pop    rax
    1d2b7c462275:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c462279:	e9 ba f9 ff ff                                  	jmp    0x1d2b7c461c38
    1d2b7c46227e:	48 83 ec 60                                     	sub    rsp,0x60
    1d2b7c462282:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    1d2b7c462287:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    1d2b7c46228d:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    1d2b7c462293:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    1d2b7c462299:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    1d2b7c46229f:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    1d2b7c4622a5:	e8 b6 ca f5 ff                                  	call   0x1d2b7c3bed60
    1d2b7c4622aa:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    1d2b7c4622af:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    1d2b7c4622b5:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    1d2b7c4622bb:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    1d2b7c4622c1:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    1d2b7c4622c7:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    1d2b7c4622cd:	48 83 c4 60                                     	add    rsp,0x60
    1d2b7c4622d1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4622d5:	e9 5f ff ff ff                                  	jmp    0x1d2b7c462239
    1d2b7c4622da:	66 90                                           	xchg   ax,ax
    1d2b7c4622dc:	2b 00                                           	sub    eax,DWORD PTR [rax]
    1d2b7c4622de:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c4622e0:	08 00                                           	or     BYTE PTR [rax],al
	...
