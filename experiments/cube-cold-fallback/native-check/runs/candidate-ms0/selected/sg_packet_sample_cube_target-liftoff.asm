
/home/cosmo/Git/softgl/build/diagnostics/cube-cold-fallback/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

000022bdd7cb3b80 <.data>:
    22bdd7cb3b80:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    22bdd7cb3b86:	e8 e5 51 f5 ff                                  	call   0x22bdd7c08d70
    22bdd7cb3b8b:	48 81 ec a0 00 00 00                            	sub    rsp,0xa0
    22bdd7cb3b92:	8b c0                                           	mov    eax,eax
    22bdd7cb3b94:	8b d2                                           	mov    edx,edx
    22bdd7cb3b96:	8b c9                                           	mov    ecx,ecx
    22bdd7cb3b98:	50                                              	push   rax
    22bdd7cb3b99:	51                                              	push   rcx
    22bdd7cb3b9a:	57                                              	push   rdi
    22bdd7cb3b9b:	48 8d bd 70 ff ff ff                            	lea    rdi,[rbp-0x90]
    22bdd7cb3ba2:	33 c0                                           	xor    eax,eax
    22bdd7cb3ba4:	b9 0d 00 00 00                                  	mov    ecx,0xd
    22bdd7cb3ba9:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    22bdd7cb3bab:	5f                                              	pop    rdi
    22bdd7cb3bac:	59                                              	pop    rcx
    22bdd7cb3bad:	58                                              	pop    rax
    22bdd7cb3bae:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    22bdd7cb3bb2:	0f 86 53 05 00 00                               	jbe    0x22bdd7cb410b
    22bdd7cb3bb8:	48 8b 5d e8                                     	mov    rbx,QWORD PTR [rbp-0x18]
    22bdd7cb3bbc:	83 43 0b 02                                     	add    DWORD PTR [rbx+0xb],0x2
    22bdd7cb3bc0:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    22bdd7cb3bc3:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    22bdd7cb3bc6:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    22bdd7cb3bcb:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    22bdd7cb3bd0:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    22bdd7cb3bd5:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    22bdd7cb3bd8:	e8 9b 29 f5 ff                                  	call   0x22bdd7c06578
    22bdd7cb3bdd:	8b c0                                           	mov    eax,eax
    22bdd7cb3bdf:	85 c0                                           	test   eax,eax
    22bdd7cb3be1:	0f 85 e5 04 00 00                               	jne    0x22bdd7cb40cc
    22bdd7cb3be7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb3beb:	8b 46 57                                        	mov    eax,DWORD PTR [rsi+0x57]
    22bdd7cb3bee:	49 0b c6                                        	or     rax,r14
    22bdd7cb3bf1:	8b 40 07                                        	mov    eax,DWORD PTR [rax+0x7]
    22bdd7cb3bf4:	83 c0 c0                                        	add    eax,0xffffffc0
    22bdd7cb3bf7:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    22bdd7cb3bfa:	49 0b ce                                        	or     rcx,r14
    22bdd7cb3bfd:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    22bdd7cb3c00:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cb3c04:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    22bdd7cb3c08:	c5 fa 7f 44 01 30                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x30],xmm0
    22bdd7cb3c0e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cb3c12:	c5 fa 7f 44 01 20                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x20],xmm0
    22bdd7cb3c18:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cb3c1c:	c5 fa 7f 44 01 10                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x10],xmm0
    22bdd7cb3c22:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cb3c26:	c5 fa 7f 04 01                                  	vmovdqu XMMWORD PTR [rcx+rax*1],xmm0
    22bdd7cb3c2b:	8b 55 a8                                        	mov    edx,DWORD PTR [rbp-0x58]
    22bdd7cb3c2e:	83 e2 01                                        	and    edx,0x1
    22bdd7cb3c31:	85 d2                                           	test   edx,edx
    22bdd7cb3c33:	0f 84 6c 00 00 00                               	je     0x22bdd7cb3ca5
    22bdd7cb3c39:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb3c3c:	8b 5c 11 08                                     	mov    ebx,DWORD PTR [rcx+rdx*1+0x8]
    22bdd7cb3c40:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb3c43:	8b 5c 11 04                                     	mov    ebx,DWORD PTR [rcx+rdx*1+0x4]
    22bdd7cb3c47:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb3c4a:	8b 7c 11 0c                                     	mov    edi,DWORD PTR [rcx+rdx*1+0xc]
    22bdd7cb3c4e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb3c51:	44 8b 44 11 10                                  	mov    r8d,DWORD PTR [rcx+rdx*1+0x10]
    22bdd7cb3c56:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    22bdd7cb3c59:	44 8b 4c 11 14                                  	mov    r9d,DWORD PTR [rcx+rdx*1+0x14]
    22bdd7cb3c5e:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    22bdd7cb3c63:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    22bdd7cb3c68:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    22bdd7cb3c6d:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    22bdd7cb3c71:	83 42 13 02                                     	add    DWORD PTR [rdx+0x13],0x2
    22bdd7cb3c75:	89 45 a0                                        	mov    DWORD PTR [rbp-0x60],eax
    22bdd7cb3c78:	41 8b c8                                        	mov    ecx,r8d
    22bdd7cb3c7b:	8b d7                                           	mov    edx,edi
    22bdd7cb3c7d:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    22bdd7cb3c81:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    22bdd7cb3c85:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    22bdd7cb3c89:	89 9d 4c ff ff ff                               	mov    DWORD PTR [rbp-0xb4],ebx
    22bdd7cb3c8f:	41 8b d9                                        	mov    ebx,r9d
    22bdd7cb3c92:	44 8b c8                                        	mov    r9d,eax
    22bdd7cb3c95:	8b 85 4c ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb4]
    22bdd7cb3c9b:	e8 90 25 f5 ff                                  	call   0x22bdd7c06230
    22bdd7cb3ca0:	e9 03 00 00 00                                  	jmp    0x22bdd7cb3ca8
    22bdd7cb3ca5:	89 45 a0                                        	mov    DWORD PTR [rbp-0x60],eax
    22bdd7cb3ca8:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb3cab:	83 e0 02                                        	and    eax,0x2
    22bdd7cb3cae:	85 c0                                           	test   eax,eax
    22bdd7cb3cb0:	0f 84 78 00 00 00                               	je     0x22bdd7cb3d2e
    22bdd7cb3cb6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3cb9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb3cbd:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    22bdd7cb3cc1:	8b 54 01 08                                     	mov    edx,DWORD PTR [rcx+rax*1+0x8]
    22bdd7cb3cc5:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3cc8:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    22bdd7cb3ccc:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3ccf:	8b 5c 01 0c                                     	mov    ebx,DWORD PTR [rcx+rax*1+0xc]
    22bdd7cb3cd3:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3cd6:	8b 7c 01 10                                     	mov    edi,DWORD PTR [rcx+rax*1+0x10]
    22bdd7cb3cda:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3cdd:	44 8b 44 01 14                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x14]
    22bdd7cb3ce2:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    22bdd7cb3ce7:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    22bdd7cb3ceb:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    22bdd7cb3cf0:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    22bdd7cb3cf4:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    22bdd7cb3cf9:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    22bdd7cb3cfd:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    22bdd7cb3d00:	83 c0 10                                        	add    eax,0x10
    22bdd7cb3d03:	4c 8b 4d e8                                     	mov    r9,QWORD PTR [rbp-0x18]
    22bdd7cb3d07:	41 83 41 1b 02                                  	add    DWORD PTR [r9+0x1b],0x2
    22bdd7cb3d0c:	8b cf                                           	mov    ecx,edi
    22bdd7cb3d0e:	44 8b c8                                        	mov    r9d,eax
    22bdd7cb3d11:	8b c2                                           	mov    eax,edx
    22bdd7cb3d13:	8b d3                                           	mov    edx,ebx
    22bdd7cb3d15:	41 8b d8                                        	mov    ebx,r8d
    22bdd7cb3d18:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    22bdd7cb3d1c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    22bdd7cb3d20:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    22bdd7cb3d24:	e8 07 25 f5 ff                                  	call   0x22bdd7c06230
    22bdd7cb3d29:	e9 00 00 00 00                                  	jmp    0x22bdd7cb3d2e
    22bdd7cb3d2e:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb3d31:	83 e0 04                                        	and    eax,0x4
    22bdd7cb3d34:	85 c0                                           	test   eax,eax
    22bdd7cb3d36:	0f 84 78 00 00 00                               	je     0x22bdd7cb3db4
    22bdd7cb3d3c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3d3f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb3d43:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    22bdd7cb3d47:	8b 54 01 08                                     	mov    edx,DWORD PTR [rcx+rax*1+0x8]
    22bdd7cb3d4b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3d4e:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    22bdd7cb3d52:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3d55:	8b 5c 01 0c                                     	mov    ebx,DWORD PTR [rcx+rax*1+0xc]
    22bdd7cb3d59:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3d5c:	8b 7c 01 10                                     	mov    edi,DWORD PTR [rcx+rax*1+0x10]
    22bdd7cb3d60:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3d63:	44 8b 44 01 14                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x14]
    22bdd7cb3d68:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    22bdd7cb3d6d:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    22bdd7cb3d71:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    22bdd7cb3d76:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    22bdd7cb3d7a:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    22bdd7cb3d7f:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    22bdd7cb3d83:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    22bdd7cb3d86:	83 c0 20                                        	add    eax,0x20
    22bdd7cb3d89:	4c 8b 4d e8                                     	mov    r9,QWORD PTR [rbp-0x18]
    22bdd7cb3d8d:	41 83 41 23 02                                  	add    DWORD PTR [r9+0x23],0x2
    22bdd7cb3d92:	8b cf                                           	mov    ecx,edi
    22bdd7cb3d94:	44 8b c8                                        	mov    r9d,eax
    22bdd7cb3d97:	8b c2                                           	mov    eax,edx
    22bdd7cb3d99:	8b d3                                           	mov    edx,ebx
    22bdd7cb3d9b:	41 8b d8                                        	mov    ebx,r8d
    22bdd7cb3d9e:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    22bdd7cb3da2:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    22bdd7cb3da6:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    22bdd7cb3daa:	e8 81 24 f5 ff                                  	call   0x22bdd7c06230
    22bdd7cb3daf:	e9 00 00 00 00                                  	jmp    0x22bdd7cb3db4
    22bdd7cb3db4:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    22bdd7cb3db7:	83 e0 08                                        	and    eax,0x8
    22bdd7cb3dba:	85 c0                                           	test   eax,eax
    22bdd7cb3dbc:	0f 84 7b 00 00 00                               	je     0x22bdd7cb3e3d
    22bdd7cb3dc2:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3dc5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb3dc9:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    22bdd7cb3dcd:	8b 54 01 08                                     	mov    edx,DWORD PTR [rcx+rax*1+0x8]
    22bdd7cb3dd1:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3dd4:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    22bdd7cb3dd8:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3ddb:	8b 5c 01 0c                                     	mov    ebx,DWORD PTR [rcx+rax*1+0xc]
    22bdd7cb3ddf:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3de2:	8b 7c 01 10                                     	mov    edi,DWORD PTR [rcx+rax*1+0x10]
    22bdd7cb3de6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    22bdd7cb3de9:	44 8b 44 01 14                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x14]
    22bdd7cb3dee:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    22bdd7cb3df3:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    22bdd7cb3df8:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    22bdd7cb3dfd:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    22bdd7cb3e02:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    22bdd7cb3e07:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    22bdd7cb3e0c:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    22bdd7cb3e0f:	83 c0 30                                        	add    eax,0x30
    22bdd7cb3e12:	4c 8b 4d e8                                     	mov    r9,QWORD PTR [rbp-0x18]
    22bdd7cb3e16:	41 83 41 2b 02                                  	add    DWORD PTR [r9+0x2b],0x2
    22bdd7cb3e1b:	8b cf                                           	mov    ecx,edi
    22bdd7cb3e1d:	44 8b c8                                        	mov    r9d,eax
    22bdd7cb3e20:	8b c2                                           	mov    eax,edx
    22bdd7cb3e22:	8b d3                                           	mov    edx,ebx
    22bdd7cb3e24:	41 8b d8                                        	mov    ebx,r8d
    22bdd7cb3e27:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    22bdd7cb3e2b:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    22bdd7cb3e2f:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    22bdd7cb3e33:	e8 f8 23 f5 ff                                  	call   0x22bdd7c06230
    22bdd7cb3e38:	e9 00 00 00 00                                  	jmp    0x22bdd7cb3e3d
    22bdd7cb3e3d:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb3e40:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cb3e43:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb3e47:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    22bdd7cb3e4b:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    22bdd7cb3e51:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cb3e54:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    22bdd7cb3e5a:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    22bdd7cb3e64:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3e69:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    22bdd7cb3e73:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3e79:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    22bdd7cb3e7e:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    22bdd7cb3e88:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3e8d:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    22bdd7cb3e97:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3e9d:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    22bdd7cb3ea2:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    22bdd7cb3ea7:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cb3eaa:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    22bdd7cb3eaf:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cb3eb2:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    22bdd7cb3eb8:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x22bdd7cb3e5c
    22bdd7cb3ebf:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3ec4:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x22bdd7cb3e6b
    22bdd7cb3ecb:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3ed1:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    22bdd7cb3ed6:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x22bdd7cb3e80
    22bdd7cb3edd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3ee2:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x22bdd7cb3e8f
    22bdd7cb3ee9:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3eef:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    22bdd7cb3ef4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    22bdd7cb3ef9:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    22bdd7cb3f03:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3f08:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    22bdd7cb3f12:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3f18:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    22bdd7cb3f1d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x22bdd7cb3f0a
    22bdd7cb3f24:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3f29:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x22bdd7cb3efb
    22bdd7cb3f30:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3f36:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    22bdd7cb3f3b:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cb3f40:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    22bdd7cb3f46:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb3f49:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    22bdd7cb3f53:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3f58:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x22bdd7cb3f0a
    22bdd7cb3f5f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3f65:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    22bdd7cb3f6a:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x22bdd7cb3f0a
    22bdd7cb3f71:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3f76:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x22bdd7cb3f4b
    22bdd7cb3f7d:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3f83:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    22bdd7cb3f88:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cb3f8d:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    22bdd7cb3f93:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb3f96:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    22bdd7cb3fa0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3fa5:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    22bdd7cb3faf:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3fb5:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    22bdd7cb3fba:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    22bdd7cb3fc4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3fc9:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    22bdd7cb3fd3:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3fd9:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    22bdd7cb3fde:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cb3fe3:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x22bdd7cb3f98
    22bdd7cb3fea:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb3fef:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x22bdd7cb3fa7
    22bdd7cb3ff6:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb3ffc:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    22bdd7cb4001:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x22bdd7cb3fbc
    22bdd7cb4008:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb400d:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x22bdd7cb3fcb
    22bdd7cb4014:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb401a:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    22bdd7cb401f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cb4024:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x22bdd7cb3efb
    22bdd7cb402b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4030:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x22bdd7cb3f0a
    22bdd7cb4037:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb403d:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    22bdd7cb4042:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x22bdd7cb3f0a
    22bdd7cb4049:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb404e:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x22bdd7cb3efb
    22bdd7cb4055:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb405b:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    22bdd7cb4060:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7cb4065:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    22bdd7cb406b:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    22bdd7cb406e:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x22bdd7cb3f4b
    22bdd7cb4075:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb407a:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x22bdd7cb3f0a
    22bdd7cb4081:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb4087:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    22bdd7cb408c:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x22bdd7cb3f0a
    22bdd7cb4093:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cb4098:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x22bdd7cb3f4b
    22bdd7cb409f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    22bdd7cb40a5:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    22bdd7cb40aa:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7cb40af:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    22bdd7cb40b4:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    22bdd7cb40b7:	b9 c0 ff ff ff                                  	mov    ecx,0xffffffc0
    22bdd7cb40bc:	2b c1                                           	sub    eax,ecx
    22bdd7cb40be:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    22bdd7cb40c1:	49 0b ce                                        	or     rcx,r14
    22bdd7cb40c4:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    22bdd7cb40c7:	e9 21 00 00 00                                  	jmp    0x22bdd7cb40ed
    22bdd7cb40cc:	c5 fa 6f 45 ac                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x54]
    22bdd7cb40d1:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
    22bdd7cb40d6:	c5 fa 6f 5d cc                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x34]
    22bdd7cb40db:	c5 fa 6f 65 80                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x80]
    22bdd7cb40e0:	c5 fa 6f ad 70 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0x90]
    22bdd7cb40e8:	c5 fa 6f 75 90                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x70]
    22bdd7cb40ed:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    22bdd7cb40f1:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    22bdd7cb40f5:	41 81 aa 94 02 00 00 a9 05 00 00                	sub    DWORD PTR [r10+0x294],0x5a9
    22bdd7cb4100:	0f 88 45 00 00 00                               	js     0x22bdd7cb414b
    22bdd7cb4106:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cb4109:	5d                                              	pop    rbp
    22bdd7cb410a:	c3                                              	ret
    22bdd7cb410b:	50                                              	push   rax
    22bdd7cb410c:	51                                              	push   rcx
    22bdd7cb410d:	52                                              	push   rdx
    22bdd7cb410e:	48 83 ec 30                                     	sub    rsp,0x30
    22bdd7cb4112:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    22bdd7cb4117:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    22bdd7cb411d:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    22bdd7cb4123:	33 c0                                           	xor    eax,eax
    22bdd7cb4125:	e8 06 4e f5 ff                                  	call   0x22bdd7c08f30
    22bdd7cb412a:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    22bdd7cb412f:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    22bdd7cb4135:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    22bdd7cb413b:	48 83 c4 30                                     	add    rsp,0x30
    22bdd7cb413f:	5a                                              	pop    rdx
    22bdd7cb4140:	59                                              	pop    rcx
    22bdd7cb4141:	58                                              	pop    rax
    22bdd7cb4142:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cb4146:	e9 6d fa ff ff                                  	jmp    0x22bdd7cb3bb8
    22bdd7cb414b:	48 83 ec 60                                     	sub    rsp,0x60
    22bdd7cb414f:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    22bdd7cb4154:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    22bdd7cb415a:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    22bdd7cb4160:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    22bdd7cb4166:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    22bdd7cb416c:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    22bdd7cb4172:	e8 e9 4b f5 ff                                  	call   0x22bdd7c08d60
    22bdd7cb4177:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    22bdd7cb417c:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    22bdd7cb4182:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    22bdd7cb4188:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    22bdd7cb418e:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    22bdd7cb4194:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    22bdd7cb419a:	48 83 c4 60                                     	add    rsp,0x60
    22bdd7cb419e:	e9 63 ff ff ff                                  	jmp    0x22bdd7cb4106
    22bdd7cb41a3:	90                                              	nop
    22bdd7cb41a4:	25 00 00 00 08                                  	and    eax,0x8000000
	...
