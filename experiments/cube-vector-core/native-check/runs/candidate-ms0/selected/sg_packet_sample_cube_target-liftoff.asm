
/home/cosmo/Git/softgl/build/diagnostics/cube-vector-core/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_target-liftoff.bin:     file format binary


Disassembly of section .data:

00003691cc653940 <.data>:
    3691cc653940:	41 bc a5 00 00 00                               	mov    r12d,0xa5
    3691cc653946:	e8 25 04 f7 ff                                  	call   0x3691cc5c3d70
    3691cc65394b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
    3691cc653952:	8b c0                                           	mov    eax,eax
    3691cc653954:	8b d2                                           	mov    edx,edx
    3691cc653956:	8b c9                                           	mov    ecx,ecx
    3691cc653958:	50                                              	push   rax
    3691cc653959:	51                                              	push   rcx
    3691cc65395a:	57                                              	push   rdi
    3691cc65395b:	48 8d bd 20 ff ff ff                            	lea    rdi,[rbp-0xe0]
    3691cc653962:	33 c0                                           	xor    eax,eax
    3691cc653964:	b9 21 00 00 00                                  	mov    ecx,0x21
    3691cc653969:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    3691cc65396b:	5f                                              	pop    rdi
    3691cc65396c:	59                                              	pop    rcx
    3691cc65396d:	58                                              	pop    rax
    3691cc65396e:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    3691cc653972:	0f 86 da 05 00 00                               	jbe    0x3691cc653f52
    3691cc653978:	8b 5e 57                                        	mov    ebx,DWORD PTR [rsi+0x57]
    3691cc65397b:	49 0b de                                        	or     rbx,r14
    3691cc65397e:	8b 5b 07                                        	mov    ebx,DWORD PTR [rbx+0x7]
    3691cc653981:	83 c3 c0                                        	add    ebx,0xffffffc0
    3691cc653984:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    3691cc653987:	49 0b fe                                        	or     rdi,r14
    3691cc65398a:	89 5f 07                                        	mov    DWORD PTR [rdi+0x7],ebx
    3691cc65398d:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    3691cc653991:	83 47 0b 02                                     	add    DWORD PTR [rdi+0xb],0x2
    3691cc653995:	89 5d a0                                        	mov    DWORD PTR [rbp-0x60],ebx
    3691cc653998:	89 4d a4                                        	mov    DWORD PTR [rbp-0x5c],ecx
    3691cc65399b:	89 55 a8                                        	mov    DWORD PTR [rbp-0x58],edx
    3691cc65399e:	c5 fa 7f 5d ac                                  	vmovdqu XMMWORD PTR [rbp-0x54],xmm3
    3691cc6539a3:	c5 fa 7f 55 bc                                  	vmovdqu XMMWORD PTR [rbp-0x44],xmm2
    3691cc6539a8:	c5 fa 7f 4d cc                                  	vmovdqu XMMWORD PTR [rbp-0x34],xmm1
    3691cc6539ad:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    3691cc6539b0:	e8 c3 db f6 ff                                  	call   0x3691cc5c1578
    3691cc6539b5:	8b c0                                           	mov    eax,eax
    3691cc6539b7:	85 c0                                           	test   eax,eax
    3691cc6539b9:	0f 85 3b 05 00 00                               	jne    0x3691cc653efa
    3691cc6539bf:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc6539c2:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc6539c6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6539ca:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    3691cc6539ce:	c5 fa 7f 44 01 30                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x30],xmm0
    3691cc6539d4:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc6539d7:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc6539df:	c5 fa 7f 44 01 20                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x20],xmm0
    3691cc6539e5:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc6539e8:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc6539f0:	c5 fa 7f 44 01 10                               	vmovdqu XMMWORD PTR [rcx+rax*1+0x10],xmm0
    3691cc6539f6:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc6539f9:	c5 fa 6f 85 40 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc0]
    3691cc653a01:	c5 fa 7f 04 01                                  	vmovdqu XMMWORD PTR [rcx+rax*1],xmm0
    3691cc653a06:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc653a09:	83 e0 01                                        	and    eax,0x1
    3691cc653a0c:	85 c0                                           	test   eax,eax
    3691cc653a0e:	0f 84 75 00 00 00                               	je     0x3691cc653a89
    3691cc653a14:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653a17:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    3691cc653a1b:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653a1e:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    3691cc653a22:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653a25:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    3691cc653a29:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653a2c:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    3691cc653a31:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653a34:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    3691cc653a39:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    3691cc653a3e:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    3691cc653a43:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    3691cc653a48:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc653a4b:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    3691cc653a4f:	41 83 44 24 13 02                               	add    DWORD PTR [r12+0x13],0x2
    3691cc653a55:	44 89 4d 8c                                     	mov    DWORD PTR [rbp-0x74],r9d
    3691cc653a59:	44 89 45 90                                     	mov    DWORD PTR [rbp-0x70],r8d
    3691cc653a5d:	89 7d 94                                        	mov    DWORD PTR [rbp-0x6c],edi
    3691cc653a60:	89 5d 98                                        	mov    DWORD PTR [rbp-0x68],ebx
    3691cc653a63:	89 55 9c                                        	mov    DWORD PTR [rbp-0x64],edx
    3691cc653a66:	41 8b c8                                        	mov    ecx,r8d
    3691cc653a69:	41 8b d9                                        	mov    ebx,r9d
    3691cc653a6c:	44 8b c8                                        	mov    r9d,eax
    3691cc653a6f:	8b c2                                           	mov    eax,edx
    3691cc653a71:	8b d7                                           	mov    edx,edi
    3691cc653a73:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    3691cc653a77:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    3691cc653a7b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    3691cc653a7f:	e8 ac d7 f6 ff                                  	call   0x3691cc5c1230
    3691cc653a84:	e9 00 00 00 00                                  	jmp    0x3691cc653a89
    3691cc653a89:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc653a8c:	83 e0 02                                        	and    eax,0x2
    3691cc653a8f:	85 c0                                           	test   eax,eax
    3691cc653a91:	0f 84 92 00 00 00                               	je     0x3691cc653b29
    3691cc653a97:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653a9a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653a9e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    3691cc653aa2:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    3691cc653aa6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653aa9:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    3691cc653aad:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653ab0:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    3691cc653ab4:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653ab7:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    3691cc653abc:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653abf:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    3691cc653ac4:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    3691cc653ac9:	c5 fa 16 c0                                     	vmovshdup xmm0,xmm0
    3691cc653acd:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    3691cc653ad2:	c5 fa 16 c9                                     	vmovshdup xmm1,xmm1
    3691cc653ad6:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    3691cc653adb:	c5 fa 16 d2                                     	vmovshdup xmm2,xmm2
    3691cc653adf:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc653ae2:	83 c0 10                                        	add    eax,0x10
    3691cc653ae5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    3691cc653ae9:	41 83 44 24 1b 02                               	add    DWORD PTR [r12+0x1b],0x2
    3691cc653aef:	44 89 8d 78 ff ff ff                            	mov    DWORD PTR [rbp-0x88],r9d
    3691cc653af6:	44 89 85 7c ff ff ff                            	mov    DWORD PTR [rbp-0x84],r8d
    3691cc653afd:	89 7d 80                                        	mov    DWORD PTR [rbp-0x80],edi
    3691cc653b00:	89 5d 84                                        	mov    DWORD PTR [rbp-0x7c],ebx
    3691cc653b03:	89 55 88                                        	mov    DWORD PTR [rbp-0x78],edx
    3691cc653b06:	41 8b c8                                        	mov    ecx,r8d
    3691cc653b09:	41 8b d9                                        	mov    ebx,r9d
    3691cc653b0c:	44 8b c8                                        	mov    r9d,eax
    3691cc653b0f:	8b c2                                           	mov    eax,edx
    3691cc653b11:	8b d7                                           	mov    edx,edi
    3691cc653b13:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    3691cc653b17:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    3691cc653b1b:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    3691cc653b1f:	e8 0c d7 f6 ff                                  	call   0x3691cc5c1230
    3691cc653b24:	e9 00 00 00 00                                  	jmp    0x3691cc653b29
    3691cc653b29:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc653b2c:	83 e0 04                                        	and    eax,0x4
    3691cc653b2f:	85 c0                                           	test   eax,eax
    3691cc653b31:	0f 84 9b 00 00 00                               	je     0x3691cc653bd2
    3691cc653b37:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653b3a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653b3e:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    3691cc653b42:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    3691cc653b46:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653b49:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    3691cc653b4d:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653b50:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    3691cc653b54:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653b57:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    3691cc653b5c:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653b5f:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    3691cc653b64:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    3691cc653b69:	c5 f8 12 c0                                     	vmovhlps xmm0,xmm0,xmm0
    3691cc653b6d:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    3691cc653b72:	c5 f0 12 c9                                     	vmovhlps xmm1,xmm1,xmm1
    3691cc653b76:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    3691cc653b7b:	c5 e8 12 d2                                     	vmovhlps xmm2,xmm2,xmm2
    3691cc653b7f:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc653b82:	83 c0 20                                        	add    eax,0x20
    3691cc653b85:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    3691cc653b89:	41 83 44 24 23 02                               	add    DWORD PTR [r12+0x23],0x2
    3691cc653b8f:	44 89 8d 64 ff ff ff                            	mov    DWORD PTR [rbp-0x9c],r9d
    3691cc653b96:	44 89 85 68 ff ff ff                            	mov    DWORD PTR [rbp-0x98],r8d
    3691cc653b9d:	89 bd 6c ff ff ff                               	mov    DWORD PTR [rbp-0x94],edi
    3691cc653ba3:	89 9d 70 ff ff ff                               	mov    DWORD PTR [rbp-0x90],ebx
    3691cc653ba9:	89 95 74 ff ff ff                               	mov    DWORD PTR [rbp-0x8c],edx
    3691cc653baf:	41 8b c8                                        	mov    ecx,r8d
    3691cc653bb2:	41 8b d9                                        	mov    ebx,r9d
    3691cc653bb5:	44 8b c8                                        	mov    r9d,eax
    3691cc653bb8:	8b c2                                           	mov    eax,edx
    3691cc653bba:	8b d7                                           	mov    edx,edi
    3691cc653bbc:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    3691cc653bc0:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    3691cc653bc4:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    3691cc653bc8:	e8 63 d6 f6 ff                                  	call   0x3691cc5c1230
    3691cc653bcd:	e9 00 00 00 00                                  	jmp    0x3691cc653bd2
    3691cc653bd2:	8b 45 a8                                        	mov    eax,DWORD PTR [rbp-0x58]
    3691cc653bd5:	83 e0 08                                        	and    eax,0x8
    3691cc653bd8:	85 c0                                           	test   eax,eax
    3691cc653bda:	0f 84 9e 00 00 00                               	je     0x3691cc653c7e
    3691cc653be0:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653be3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653be7:	48 8b 4e 17                                     	mov    rcx,QWORD PTR [rsi+0x17]
    3691cc653beb:	8b 54 01 04                                     	mov    edx,DWORD PTR [rcx+rax*1+0x4]
    3691cc653bef:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653bf2:	8b 5c 01 08                                     	mov    ebx,DWORD PTR [rcx+rax*1+0x8]
    3691cc653bf6:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653bf9:	8b 7c 01 0c                                     	mov    edi,DWORD PTR [rcx+rax*1+0xc]
    3691cc653bfd:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653c00:	44 8b 44 01 10                                  	mov    r8d,DWORD PTR [rcx+rax*1+0x10]
    3691cc653c05:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    3691cc653c08:	44 8b 4c 01 14                                  	mov    r9d,DWORD PTR [rcx+rax*1+0x14]
    3691cc653c0d:	c5 fa 6f 45 cc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x34]
    3691cc653c12:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    3691cc653c17:	c5 fa 6f 4d bc                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x44]
    3691cc653c1c:	c5 f0 c6 c9 03                                  	vshufps xmm1,xmm1,xmm1,0x3
    3691cc653c21:	c5 fa 6f 55 ac                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x54]
    3691cc653c26:	c5 e8 c6 d2 03                                  	vshufps xmm2,xmm2,xmm2,0x3
    3691cc653c2b:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc653c2e:	83 c0 30                                        	add    eax,0x30
    3691cc653c31:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    3691cc653c35:	41 83 44 24 2b 02                               	add    DWORD PTR [r12+0x2b],0x2
    3691cc653c3b:	44 89 8d 50 ff ff ff                            	mov    DWORD PTR [rbp-0xb0],r9d
    3691cc653c42:	44 89 85 54 ff ff ff                            	mov    DWORD PTR [rbp-0xac],r8d
    3691cc653c49:	89 bd 58 ff ff ff                               	mov    DWORD PTR [rbp-0xa8],edi
    3691cc653c4f:	89 9d 5c ff ff ff                               	mov    DWORD PTR [rbp-0xa4],ebx
    3691cc653c55:	89 95 60 ff ff ff                               	mov    DWORD PTR [rbp-0xa0],edx
    3691cc653c5b:	41 8b c8                                        	mov    ecx,r8d
    3691cc653c5e:	41 8b d9                                        	mov    ebx,r9d
    3691cc653c61:	44 8b c8                                        	mov    r9d,eax
    3691cc653c64:	8b c2                                           	mov    eax,edx
    3691cc653c66:	8b d7                                           	mov    edx,edi
    3691cc653c68:	c5 e2 10 da                                     	vmovss xmm3,xmm3,xmm2
    3691cc653c6c:	c5 ea 10 d1                                     	vmovss xmm2,xmm2,xmm1
    3691cc653c70:	c5 f2 10 c8                                     	vmovss xmm1,xmm1,xmm0
    3691cc653c74:	e8 b7 d5 f6 ff                                  	call   0x3691cc5c1230
    3691cc653c79:	e9 00 00 00 00                                  	jmp    0x3691cc653c7e
    3691cc653c7e:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc653c81:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc653c84:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653c88:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    3691cc653c8c:	c5 fa 6f 44 0a 20                               	vmovdqu xmm0,XMMWORD PTR [rdx+rcx*1+0x20]
    3691cc653c92:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc653c95:	c5 fa 6f 4c 0a 30                               	vmovdqu xmm1,XMMWORD PTR [rdx+rcx*1+0x30]
    3691cc653c9b:	49 ba 08 09 0a 0b 80 80 80 80                   	movabs r10,0x808080800b0a0908
    3691cc653ca5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653caa:	49 ba 0c 0d 0e 0f 80 80 80 80                   	movabs r10,0x808080800f0e0d0c
    3691cc653cb4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653cba:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    3691cc653cbf:	49 ba 80 80 80 80 08 09 0a 0b                   	movabs r10,0xb0a090880808080
    3691cc653cc9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653cce:	49 ba 80 80 80 80 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c80808080
    3691cc653cd8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653cde:	c4 c2 71 00 d6                                  	vpshufb xmm2,xmm1,xmm14
    3691cc653ce3:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    3691cc653ce8:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc653ceb:	c5 fa 6f 1c 0a                                  	vmovdqu xmm3,XMMWORD PTR [rdx+rcx*1]
    3691cc653cf0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc653cf3:	c5 fa 6f 64 0a 10                               	vmovdqu xmm4,XMMWORD PTR [rdx+rcx*1+0x10]
    3691cc653cf9:	4c 8b 15 9d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9d]        # 0x3691cc653c9d
    3691cc653d00:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653d05:	4c 8b 15 a0 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa0]        # 0x3691cc653cac
    3691cc653d0c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653d12:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    3691cc653d17:	4c 8b 15 a3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa3]        # 0x3691cc653cc1
    3691cc653d1e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653d23:	4c 8b 15 a6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa6]        # 0x3691cc653cd0
    3691cc653d2a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653d30:	c4 c2 59 00 ee                                  	vpshufb xmm5,xmm4,xmm14
    3691cc653d35:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    3691cc653d3a:	49 ba 08 09 0a 0b 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c0b0a0908
    3691cc653d44:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653d49:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    3691cc653d53:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653d59:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    3691cc653d5e:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x3691cc653d4b
    3691cc653d65:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653d6a:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x3691cc653d3c
    3691cc653d71:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653d77:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    3691cc653d7c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc653d81:	c5 fa 7f 74 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm6
    3691cc653d87:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc653d8a:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    3691cc653d94:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653d99:	4c 8b 15 ab ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffab]        # 0x3691cc653d4b
    3691cc653da0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653da6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    3691cc653dab:	4c 8b 15 99 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff99]        # 0x3691cc653d4b
    3691cc653db2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653db7:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x3691cc653d8c
    3691cc653dbe:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653dc4:	c4 c2 69 00 f6                                  	vpshufb xmm6,xmm2,xmm14
    3691cc653dc9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc653dce:	c5 fa 7f 74 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm6
    3691cc653dd4:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc653dd7:	49 ba 00 01 02 03 80 80 80 80                   	movabs r10,0x8080808003020100
    3691cc653de1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653de6:	49 ba 04 05 06 07 80 80 80 80                   	movabs r10,0x8080808007060504
    3691cc653df0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653df6:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    3691cc653dfb:	49 ba 80 80 80 80 00 01 02 03                   	movabs r10,0x302010080808080
    3691cc653e05:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653e0a:	49 ba 80 80 80 80 04 05 06 07                   	movabs r10,0x706050480808080
    3691cc653e14:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653e1a:	c4 c2 71 00 f6                                  	vpshufb xmm6,xmm1,xmm14
    3691cc653e1f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc653e24:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x3691cc653dd9
    3691cc653e2b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653e30:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x3691cc653de8
    3691cc653e37:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653e3d:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    3691cc653e42:	4c 8b 15 b4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb4]        # 0x3691cc653dfd
    3691cc653e49:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653e4e:	4c 8b 15 b7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb7]        # 0x3691cc653e0c
    3691cc653e55:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653e5b:	c4 c2 59 00 c6                                  	vpshufb xmm0,xmm4,xmm14
    3691cc653e60:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc653e65:	4c 8b 15 d0 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed0]        # 0x3691cc653d3c
    3691cc653e6c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653e71:	4c 8b 15 d3 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed3]        # 0x3691cc653d4b
    3691cc653e78:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653e7e:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    3691cc653e83:	4c 8b 15 c1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffec1]        # 0x3691cc653d4b
    3691cc653e8a:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653e8f:	4c 8b 15 a6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea6]        # 0x3691cc653d3c
    3691cc653e96:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653e9c:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    3691cc653ea1:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc653ea6:	c5 fa 7f 4c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm1
    3691cc653eac:	8b 45 a4                                        	mov    eax,DWORD PTR [rbp-0x5c]
    3691cc653eaf:	4c 8b 15 d6 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed6]        # 0x3691cc653d8c
    3691cc653eb6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653ebb:	4c 8b 15 89 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe89]        # 0x3691cc653d4b
    3691cc653ec2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653ec8:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    3691cc653ecd:	4c 8b 15 77 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe77]        # 0x3691cc653d4b
    3691cc653ed4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc653ed9:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x3691cc653d8c
    3691cc653ee0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    3691cc653ee6:	c4 c2 49 00 ce                                  	vpshufb xmm1,xmm6,xmm14
    3691cc653eeb:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc653ef0:	c5 fa 7f 0c 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm1
    3691cc653ef5:	e9 27 00 00 00                                  	jmp    0x3691cc653f21
    3691cc653efa:	c5 fa 6f 45 bc                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x44]
    3691cc653eff:	c5 fa 6f 55 cc                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x34]
    3691cc653f04:	c5 fa 6f 9d 40 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xc0]
    3691cc653f0c:	c5 fa 6f a5 30 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd0]
    3691cc653f14:	c5 fa 6f ad 20 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xe0]
    3691cc653f1c:	c5 fa 6f 75 ac                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x54]
    3691cc653f21:	8b 45 a0                                        	mov    eax,DWORD PTR [rbp-0x60]
    3691cc653f24:	b9 c0 ff ff ff                                  	mov    ecx,0xffffffc0
    3691cc653f29:	2b c1                                           	sub    eax,ecx
    3691cc653f2b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653f2f:	8b 4e 57                                        	mov    ecx,DWORD PTR [rsi+0x57]
    3691cc653f32:	49 0b ce                                        	or     rcx,r14
    3691cc653f35:	89 41 07                                        	mov    DWORD PTR [rcx+0x7],eax
    3691cc653f38:	4c 8b 56 37                                     	mov    r10,QWORD PTR [rsi+0x37]
    3691cc653f3c:	41 81 aa 94 02 00 00 34 06 00 00                	sub    DWORD PTR [r10+0x294],0x634
    3691cc653f47:	0f 88 45 00 00 00                               	js     0x3691cc653f92
    3691cc653f4d:	48 8b e5                                        	mov    rsp,rbp
    3691cc653f50:	5d                                              	pop    rbp
    3691cc653f51:	c3                                              	ret
    3691cc653f52:	50                                              	push   rax
    3691cc653f53:	51                                              	push   rcx
    3691cc653f54:	52                                              	push   rdx
    3691cc653f55:	48 83 ec 30                                     	sub    rsp,0x30
    3691cc653f59:	c5 fa 7f 0c 24                                  	vmovdqu XMMWORD PTR [rsp],xmm1
    3691cc653f5e:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    3691cc653f64:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    3691cc653f6a:	33 c0                                           	xor    eax,eax
    3691cc653f6c:	e8 bf ff f6 ff                                  	call   0x3691cc5c3f30
    3691cc653f71:	c5 fa 6f 0c 24                                  	vmovdqu xmm1,XMMWORD PTR [rsp]
    3691cc653f76:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    3691cc653f7c:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    3691cc653f82:	48 83 c4 30                                     	add    rsp,0x30
    3691cc653f86:	5a                                              	pop    rdx
    3691cc653f87:	59                                              	pop    rcx
    3691cc653f88:	58                                              	pop    rax
    3691cc653f89:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653f8d:	e9 e6 f9 ff ff                                  	jmp    0x3691cc653978
    3691cc653f92:	48 83 ec 60                                     	sub    rsp,0x60
    3691cc653f96:	c5 fa 7f 04 24                                  	vmovdqu XMMWORD PTR [rsp],xmm0
    3691cc653f9b:	c5 fa 7f 54 24 10                               	vmovdqu XMMWORD PTR [rsp+0x10],xmm2
    3691cc653fa1:	c5 fa 7f 5c 24 20                               	vmovdqu XMMWORD PTR [rsp+0x20],xmm3
    3691cc653fa7:	c5 fa 7f 64 24 30                               	vmovdqu XMMWORD PTR [rsp+0x30],xmm4
    3691cc653fad:	c5 fa 7f 6c 24 40                               	vmovdqu XMMWORD PTR [rsp+0x40],xmm5
    3691cc653fb3:	c5 fa 7f 74 24 50                               	vmovdqu XMMWORD PTR [rsp+0x50],xmm6
    3691cc653fb9:	e8 a2 fd f6 ff                                  	call   0x3691cc5c3d60
    3691cc653fbe:	c5 fa 6f 04 24                                  	vmovdqu xmm0,XMMWORD PTR [rsp]
    3691cc653fc3:	c5 fa 6f 54 24 10                               	vmovdqu xmm2,XMMWORD PTR [rsp+0x10]
    3691cc653fc9:	c5 fa 6f 5c 24 20                               	vmovdqu xmm3,XMMWORD PTR [rsp+0x20]
    3691cc653fcf:	c5 fa 6f 64 24 30                               	vmovdqu xmm4,XMMWORD PTR [rsp+0x30]
    3691cc653fd5:	c5 fa 6f 6c 24 40                               	vmovdqu xmm5,XMMWORD PTR [rsp+0x40]
    3691cc653fdb:	c5 fa 6f 74 24 50                               	vmovdqu xmm6,XMMWORD PTR [rsp+0x50]
    3691cc653fe1:	48 83 c4 60                                     	add    rsp,0x60
    3691cc653fe5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc653fe9:	e9 5f ff ff ff                                  	jmp    0x3691cc653f4d
    3691cc653fee:	66 90                                           	xchg   ax,ax
    3691cc653ff0:	2b 00                                           	sub    eax,DWORD PTR [rax]
    3691cc653ff2:	00 00                                           	add    BYTE PTR [rax],al
    3691cc653ff4:	08 00                                           	or     BYTE PTR [rax],al
	...
