
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

00002989c621da40 <.data>:
    2989c621da40:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    2989c621da46:	e8 25 03 f6 ff                                  	call   0x2989c617dd70
    2989c621da4b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
    2989c621da52:	8b c0                                           	mov    eax,eax
    2989c621da54:	8b d2                                           	mov    edx,edx
    2989c621da56:	8b c9                                           	mov    ecx,ecx
    2989c621da58:	50                                              	push   rax
    2989c621da59:	51                                              	push   rcx
    2989c621da5a:	57                                              	push   rdi
    2989c621da5b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
    2989c621da62:	33 c0                                           	xor    eax,eax
    2989c621da64:	b9 21 00 00 00                                  	mov    ecx,0x21
    2989c621da69:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    2989c621da6b:	5f                                              	pop    rdi
    2989c621da6c:	59                                              	pop    rcx
    2989c621da6d:	58                                              	pop    rax
    2989c621da6e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    2989c621da72:	0f 86 06 06 00 00                               	jbe    0x2989c621e07e
    2989c621da78:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
    2989c621da7b:	49 0b de                                        	or     rbx,r14
    2989c621da7e:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
    2989c621da81:	bf 70 00 00 00                                  	mov    edi,0x70
    2989c621da86:	2b df                                           	sub    ebx,edi
    2989c621da88:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    2989c621da8b:	49 0b fe                                        	or     rdi,r14
    2989c621da8e:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
    2989c621da91:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c621da95:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    2989c621da99:	c5 fa 7f 44 1f 30                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x30],xmm0
    2989c621da9f:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    2989c621daa7:	c5 fa 7f 44 1f 20                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x20],xmm0
    2989c621daad:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    2989c621dab5:	c5 fa 7f 44 1f 10                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x10],xmm0
    2989c621dabb:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    2989c621dac3:	c5 fa 7f 04 1f                                  	vmovdqu XMMWORD PTR [rdi+rbx*1],xmm0
    2989c621dac8:	c5 fa 7f 4c 1f 60                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x60],xmm1
    2989c621dace:	c5 fa 7f 54 1f 50                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x50],xmm2
    2989c621dad4:	c5 fa 7f 5c 1f 40                               	vmovdqu XMMWORD PTR [rdi+rbx*1+0x40],xmm3
    2989c621dada:	44 8d 43 60                                     	lea    r8d,[rbx+0x60]
    2989c621dade:	44 8d 4b 50                                     	lea    r9d,[rbx+0x50]
    2989c621dae2:	41 bc c0 ff ff ff                               	mov    r12d,0xffffffc0
    2989c621dae8:	41 f7 dc                                        	neg    r12d
    2989c621daeb:	44 03 e3                                        	add    r12d,ebx
    2989c621daee:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    2989c621daf2:	41 83 47 0b 02                                  	add    DWORD PTR [r15+0xb],0x2
    2989c621daf7:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
    2989c621dafa:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    2989c621dafd:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    2989c621db00:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    2989c621db05:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    2989c621db0a:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    2989c621db0f:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    2989c621db12:	51                                              	push   rcx
    2989c621db13:	41 8b c9                                        	mov    ecx,r9d
    2989c621db16:	44 8b ca                                        	mov    r9d,edx
    2989c621db19:	41 8b d0                                        	mov    edx,r8d
    2989c621db1c:	41 8b dc                                        	mov    ebx,r12d
    2989c621db1f:	e8 54 da f5 ff                                  	call   0x2989c617b578
    2989c621db24:	8b c0                                           	mov    eax,eax
    2989c621db26:	85 c0                                           	test   eax,eax
    2989c621db28:	0f 85 fc 04 00 00                               	jne    0x2989c621e02a
    2989c621db2e:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    2989c621db31:	83 e0 01                                        	and    eax,0x1
    2989c621db34:	85 c0                                           	test   eax,eax
    2989c621db36:	0f 84 7d 00 00 00                               	je     0x2989c621dbb9
    2989c621db3c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621db3f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621db43:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    2989c621db47:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    2989c621db4b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621db4e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    2989c621db52:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621db55:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    2989c621db59:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621db5c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    2989c621db61:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621db64:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    2989c621db69:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    2989c621db6e:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    2989c621db73:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    2989c621db78:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    2989c621db7b:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c621db7f:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
    2989c621db85:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
    2989c621db89:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
    2989c621db8d:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
    2989c621db90:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
    2989c621db93:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    2989c621db96:	41 8b c8                                        	mov    ecx,r8d
    2989c621db99:	41 8b d9                                        	mov    ebx,r9d
    2989c621db9c:	44 8b c8                                        	mov    r9d,eax
    2989c621db9f:	8b c2                                           	mov    eax,edx
    2989c621dba1:	8b d7                                           	mov    edx,edi
    2989c621dba3:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    2989c621dba7:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    2989c621dbab:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    2989c621dbaf:	e8 7c d6 f5 ff                                  	call   0x2989c617b230
    2989c621dbb4:	e9 00 00 00 00                                  	jmp    0x2989c621dbb9
    2989c621dbb9:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    2989c621dbbc:	83 e0 02                                        	and    eax,0x2
    2989c621dbbf:	85 c0                                           	test   eax,eax
    2989c621dbc1:	0f 84 92 00 00 00                               	je     0x2989c621dc59
    2989c621dbc7:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dbca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621dbce:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    2989c621dbd2:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    2989c621dbd6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dbd9:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    2989c621dbdd:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dbe0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    2989c621dbe4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dbe7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    2989c621dbec:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dbef:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    2989c621dbf4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    2989c621dbf9:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    2989c621dbfd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    2989c621dc02:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    2989c621dc06:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    2989c621dc0b:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    2989c621dc0f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    2989c621dc12:	83 c0 10                                        	add    eax,0x10
    2989c621dc15:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c621dc19:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
    2989c621dc1f:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    2989c621dc26:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
    2989c621dc2d:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    2989c621dc30:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
    2989c621dc33:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
    2989c621dc36:	41 8b c8                                        	mov    ecx,r8d
    2989c621dc39:	41 8b d9                                        	mov    ebx,r9d
    2989c621dc3c:	44 8b c8                                        	mov    r9d,eax
    2989c621dc3f:	8b c2                                           	mov    eax,edx
    2989c621dc41:	8b d7                                           	mov    edx,edi
    2989c621dc43:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    2989c621dc47:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    2989c621dc4b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    2989c621dc4f:	e8 dc d5 f5 ff                                  	call   0x2989c617b230
    2989c621dc54:	e9 00 00 00 00                                  	jmp    0x2989c621dc59
    2989c621dc59:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    2989c621dc5c:	83 e0 04                                        	and    eax,0x4
    2989c621dc5f:	85 c0                                           	test   eax,eax
    2989c621dc61:	0f 84 9b 00 00 00                               	je     0x2989c621dd02
    2989c621dc67:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dc6a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621dc6e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    2989c621dc72:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    2989c621dc76:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dc79:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    2989c621dc7d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dc80:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    2989c621dc84:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dc87:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    2989c621dc8c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dc8f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    2989c621dc94:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    2989c621dc99:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    2989c621dc9d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    2989c621dca2:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    2989c621dca6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    2989c621dcab:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    2989c621dcaf:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    2989c621dcb2:	83 c0 20                                        	add    eax,0x20
    2989c621dcb5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c621dcb9:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
    2989c621dcbf:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
    2989c621dcc6:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
    2989c621dccd:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
    2989c621dcd3:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
    2989c621dcd9:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
    2989c621dcdf:	41 8b c8                                        	mov    ecx,r8d
    2989c621dce2:	41 8b d9                                        	mov    ebx,r9d
    2989c621dce5:	44 8b c8                                        	mov    r9d,eax
    2989c621dce8:	8b c2                                           	mov    eax,edx
    2989c621dcea:	8b d7                                           	mov    edx,edi
    2989c621dcec:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    2989c621dcf0:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    2989c621dcf4:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    2989c621dcf8:	e8 33 d5 f5 ff                                  	call   0x2989c617b230
    2989c621dcfd:	e9 00 00 00 00                                  	jmp    0x2989c621dd02
    2989c621dd02:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    2989c621dd05:	83 e0 08                                        	and    eax,0x8
    2989c621dd08:	85 c0                                           	test   eax,eax
    2989c621dd0a:	0f 84 9e 00 00 00                               	je     0x2989c621ddae
    2989c621dd10:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dd13:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621dd17:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    2989c621dd1b:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    2989c621dd1f:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dd22:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    2989c621dd26:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dd29:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    2989c621dd2d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dd30:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    2989c621dd35:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621dd38:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    2989c621dd3d:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    2989c621dd42:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c621dd47:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    2989c621dd4c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    2989c621dd51:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    2989c621dd56:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    2989c621dd5b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    2989c621dd5e:	83 c0 30                                        	add    eax,0x30
    2989c621dd61:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c621dd65:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
    2989c621dd6b:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
    2989c621dd72:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
    2989c621dd79:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
    2989c621dd7f:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
    2989c621dd85:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
    2989c621dd8b:	41 8b c8                                        	mov    ecx,r8d
    2989c621dd8e:	41 8b d9                                        	mov    ebx,r9d
    2989c621dd91:	44 8b c8                                        	mov    r9d,eax
    2989c621dd94:	8b c2                                           	mov    eax,edx
    2989c621dd96:	8b d7                                           	mov    edx,edi
    2989c621dd98:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    2989c621dd9c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    2989c621dda0:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    2989c621dda4:	e8 87 d4 f5 ff                                  	call   0x2989c617b230
    2989c621dda9:	e9 00 00 00 00                                  	jmp    0x2989c621ddae
    2989c621ddae:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    2989c621ddb1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c621ddb4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621ddb8:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    2989c621ddbc:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    2989c621ddc2:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c621ddc5:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    2989c621ddcb:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    2989c621ddd5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621ddda:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    2989c621dde4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621ddea:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    2989c621ddef:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    2989c621ddf9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621ddfe:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    2989c621de08:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621de0e:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    2989c621de13:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    2989c621de18:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c621de1b:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    2989c621de20:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c621de23:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    2989c621de29:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x2989c621ddcd
    2989c621de30:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621de35:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x2989c621dddc
    2989c621de3c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621de42:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    2989c621de47:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x2989c621ddf1
    2989c621de4e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621de53:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x2989c621de00
    2989c621de5a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621de60:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    2989c621de65:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c621de6a:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    2989c621de74:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621de79:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    2989c621de83:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621de89:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    2989c621de8e:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x2989c621de7b
    2989c621de95:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621de9a:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x2989c621de6c
    2989c621dea1:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621dea7:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    2989c621deac:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c621deb1:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    2989c621deb7:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    2989c621deba:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    2989c621dec4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621dec9:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x2989c621de7b
    2989c621ded0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621ded6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    2989c621dedb:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x2989c621de7b
    2989c621dee2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621dee7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x2989c621debc
    2989c621deee:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621def4:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    2989c621def9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c621defe:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    2989c621df04:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    2989c621df07:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    2989c621df11:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621df16:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    2989c621df20:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621df26:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    2989c621df2b:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    2989c621df35:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621df3a:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    2989c621df44:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621df4a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    2989c621df4f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c621df54:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x2989c621df09
    2989c621df5b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621df60:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x2989c621df18
    2989c621df67:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621df6d:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    2989c621df72:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x2989c621df2d
    2989c621df79:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621df7e:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x2989c621df3c
    2989c621df85:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621df8b:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    2989c621df90:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621df95:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x2989c621de6c
    2989c621df9c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621dfa1:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x2989c621de7b
    2989c621dfa8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621dfae:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    2989c621dfb3:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x2989c621de7b
    2989c621dfba:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621dfbf:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x2989c621de6c
    2989c621dfc6:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621dfcc:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    2989c621dfd1:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c621dfd6:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    2989c621dfdc:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    2989c621dfdf:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x2989c621debc
    2989c621dfe6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621dfeb:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x2989c621de7b
    2989c621dff2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621dff8:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    2989c621dffd:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x2989c621de7b
    2989c621e004:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621e009:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x2989c621debc
    2989c621e010:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621e016:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    2989c621e01b:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c621e020:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    2989c621e025:	e9 27 00 00 00                                  	jmp    0x2989c621e051
    2989c621e02a:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    2989c621e02f:	c5 fa 6f 55 bc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x44]
    2989c621e034:	c5 fa 6f 5d ac                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x54]
    2989c621e039:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
    2989c621e041:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
    2989c621e049:	c5 fa 6f b5 40 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xc0]
    2989c621e051:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    2989c621e054:	83 c0 70                                        	add    eax,0x70
    2989c621e057:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621e05b:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    2989c621e05e:	49 0b ce                                        	or     rcx,r14
    2989c621e061:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    2989c621e064:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
    2989c621e068:	41 81 aa 94 02 00 00 60 06 00 00                	sub    DWORD PTR [r10+0x294],0x660
    2989c621e073:	0f 88 45 00 00 00                               	js     0x2989c621e0be
    2989c621e079:	48 8b e5                                        	mov    rsp,rbp
    2989c621e07c:	5d                                              	pop    rbp
    2989c621e07d:	c3                                              	ret
    2989c621e07e:	50                                              	push   rax
    2989c621e07f:	51                                              	push   rcx
    2989c621e080:	52                                              	push   rdx
    2989c621e081:	48 83 ec 30                                     	sub    rsp,0x30
    2989c621e085:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    2989c621e08a:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    2989c621e090:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    2989c621e096:	33 c0                                           	xor    eax,eax
    2989c621e098:	e8 93 fe f5 ff                                  	call   0x2989c617df30
    2989c621e09d:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    2989c621e0a2:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    2989c621e0a8:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    2989c621e0ae:	48 83 c4 30                                     	add    rsp,0x30
    2989c621e0b2:	5a                                              	pop    rdx
    2989c621e0b3:	59                                              	pop    rcx
    2989c621e0b4:	58                                              	pop    rax
    2989c621e0b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621e0b9:	e9 ba f9 ff ff                                  	jmp    0x2989c621da78
    2989c621e0be:	48 83 ec 60                                     	sub    rsp,0x60
    2989c621e0c2:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    2989c621e0c7:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    2989c621e0cd:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    2989c621e0d3:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    2989c621e0d9:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    2989c621e0df:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    2989c621e0e5:	e8 76 fc f5 ff                                  	call   0x2989c617dd60
    2989c621e0ea:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    2989c621e0ef:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    2989c621e0f5:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    2989c621e0fb:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    2989c621e101:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    2989c621e107:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    2989c621e10d:	48 83 c4 60                                     	add    rsp,0x60
    2989c621e111:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621e115:	e9 5f ff ff ff                                  	jmp    0x2989c621e079
    2989c621e11a:	66 90                                           	xchg   ax,ax
    2989c621e11c:	2b 00                                           	sub    eax,DWORD PTR [rax]
    2989c621e11e:	00 00                                           	add    BYTE PTR [rax],al
    2989c621e120:	08 00                                           	or     BYTE PTR [rax],al
	...
