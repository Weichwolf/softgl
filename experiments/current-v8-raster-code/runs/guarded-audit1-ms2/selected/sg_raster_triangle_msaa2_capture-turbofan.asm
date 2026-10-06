
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_raster_triangle_msaa2_capture-turbofan.bin:     file format binary


Disassembly of section .data:

000023a8d3566980 <.data>:
    23a8d3566980:	55                                              	push   rbp
    23a8d3566981:	48 8b ec                                        	mov    rbp,rsp
    23a8d3566984:	6a 30                                           	push   0x30
    23a8d3566986:	56                                              	push   rsi
    23a8d3566987:	48 81 ec 08 04 00 00                            	sub    rsp,0x408
    23a8d356698e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d3566992:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    23a8d3566996:	8b f9                                           	mov    edi,ecx
    23a8d3566998:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    23a8d356699f:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    23a8d35669a3:	0f 86 bc 89 00 00                               	jbe    0x23a8d356f365
    23a8d35669a9:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    23a8d35669ad:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    23a8d35669b1:	4d 0b de                                        	or     r11,r14
    23a8d35669b4:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    23a8d35669b8:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    23a8d35669bf:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    23a8d35669c3:	44 8b f8                                        	mov    r15d,eax
    23a8d35669c6:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    23a8d35669cb:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    23a8d35669cf:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    23a8d35669d6:	83 f9 02                                        	cmp    ecx,0x2
    23a8d35669d9:	0f 84 26 00 00 00                               	je     0x23a8d3566a05
    23a8d35669df:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d35669e3:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    23a8d35669e7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d35669eb:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    23a8d35669f2:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    23a8d35669f9:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    23a8d3566a00:	e9 7f 04 00 00                                  	jmp    0x23a8d3566e84
    23a8d3566a05:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    23a8d3566a0a:	85 f6                                           	test   esi,esi
    23a8d3566a0c:	74 d1                                           	je     0x23a8d35669df
    23a8d3566a0e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    23a8d3566a11:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    23a8d3566a15:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    23a8d3566a1a:	74 c3                                           	je     0x23a8d35669df
    23a8d3566a1c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    23a8d3566a21:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    23a8d3566a27:	74 b6                                           	je     0x23a8d35669df
    23a8d3566a29:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    23a8d3566a31:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    23a8d3566a3a:	75 a3                                           	jne    0x23a8d35669df
    23a8d3566a3c:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    23a8d3566a41:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    23a8d3566a48:	33 c9                                           	xor    ecx,ecx
    23a8d3566a4a:	45 85 c9                                        	test   r9d,r9d
    23a8d3566a4d:	0f 94 c1                                        	sete   cl
    23a8d3566a50:	41 83 f9 02                                     	cmp    r9d,0x2
    23a8d3566a54:	41 0f 94 c1                                     	sete   r9b
    23a8d3566a58:	45 0f b6 c9                                     	movzx  r9d,r9b
    23a8d3566a5c:	44 0b c9                                        	or     r9d,ecx
    23a8d3566a5f:	0f 84 7a ff ff ff                               	je     0x23a8d35669df
    23a8d3566a65:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    23a8d3566a69:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    23a8d3566a6f:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    23a8d3566a75:	0f 87 64 ff ff ff                               	ja     0x23a8d35669df
    23a8d3566a7b:	8b cb                                           	mov    ecx,ebx
    23a8d3566a7d:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    23a8d3566a84:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d3566a88:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    23a8d3566a8d:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    23a8d3566a92:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566a96:	0f 82 43 ff ff ff                               	jb     0x23a8d35669df
    23a8d3566a9c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d3566aa0:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    23a8d3566aa4:	0f 83 22 00 00 00                               	jae    0x23a8d3566acc
    23a8d3566aaa:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d3566aae:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    23a8d3566ab2:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    23a8d3566ab9:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    23a8d3566ac0:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    23a8d3566ac7:	e9 b8 03 00 00                                  	jmp    0x23a8d3566e84
    23a8d3566acc:	8b cf                                           	mov    ecx,edi
    23a8d3566ace:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    23a8d3566ad5:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    23a8d3566ada:	72 ce                                           	jb     0x23a8d3566aaa
    23a8d3566adc:	8b ca                                           	mov    ecx,edx
    23a8d3566ade:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    23a8d3566ae5:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    23a8d3566ae9:	72 bf                                           	jb     0x23a8d3566aaa
    23a8d3566aeb:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    23a8d3566af0:	72 b8                                           	jb     0x23a8d3566aaa
    23a8d3566af2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d3566af6:	72 b2                                           	jb     0x23a8d3566aaa
    23a8d3566af8:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    23a8d3566afb:	c1 f9 02                                        	sar    ecx,0x2
    23a8d3566afe:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    23a8d3566b02:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    23a8d3566b06:	41 c1 ff 02                                     	sar    r15d,0x2
    23a8d3566b0a:	44 3b f9                                        	cmp    r15d,ecx
    23a8d3566b0d:	0f 8c 5e 03 00 00                               	jl     0x23a8d3566e71
    23a8d3566b13:	49 ba 50 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32850
    23a8d3566b1d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    23a8d3566b22:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    23a8d3566b26:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    23a8d3566b2c:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    23a8d3566b31:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    23a8d3566b36:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d3566b3a:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    23a8d3566b3e:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    23a8d3566b45:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    23a8d3566b4c:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    23a8d3566b53:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    23a8d3566b5a:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    23a8d3566b5f:	0f 87 05 00 00 00                               	ja     0x23a8d3566b6a
    23a8d3566b65:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    23a8d3566b6a:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    23a8d3566b6e:	0f 87 05 00 00 00                               	ja     0x23a8d3566b79
    23a8d3566b74:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    23a8d3566b79:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    23a8d3566b7d:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    23a8d3566b81:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d3566b85:	0f 87 04 00 00 00                               	ja     0x23a8d3566b8f
    23a8d3566b8b:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d3566b8f:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    23a8d3566b93:	0f 87 09 00 00 00                               	ja     0x23a8d3566ba2
    23a8d3566b99:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    23a8d3566b9d:	e9 04 00 00 00                                  	jmp    0x23a8d3566ba6
    23a8d3566ba2:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    23a8d3566ba6:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    23a8d3566baa:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    23a8d3566bae:	c1 fa 02                                        	sar    edx,0x2
    23a8d3566bb1:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d3566bb5:	41 c1 f9 02                                     	sar    r9d,0x2
    23a8d3566bb9:	41 8b d9                                        	mov    ebx,r9d
    23a8d3566bbc:	44 3b ca                                        	cmp    r9d,edx
    23a8d3566bbf:	0f 4c da                                        	cmovl  ebx,edx
    23a8d3566bc2:	8d 7e c4                                        	lea    edi,[rsi-0x3c]
    23a8d3566bc5:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    23a8d3566bc9:	83 ee 40                                        	sub    esi,0x40
    23a8d3566bcc:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    23a8d3566bd0:	45 33 db                                        	xor    r11d,r11d
    23a8d3566bd3:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3566bd8:	41 0f 94 c3                                     	sete   r11b
    23a8d3566bdc:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d3566be0:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    23a8d3566be7:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    23a8d3566bee:	48 89 b5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rsi
    23a8d3566bf5:	4c 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],r11
    23a8d3566bf9:	48 c7 85 28 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xd8],0x1
    23a8d3566c04:	45 33 e4                                        	xor    r12d,r12d
    23a8d3566c07:	e9 3e 00 00 00                                  	jmp    0x23a8d3566c4a
    23a8d3566c0c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3566c15:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3566c1e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3566c27:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3566c30:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3566c39:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    23a8d3566c40:	41 8b cf                                        	mov    ecx,r15d
    23a8d3566c43:	4c 89 9d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r11
    23a8d3566c4a:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3566c4f:	0f 85 7e 87 00 00                               	jne    0x23a8d356f3d3
    23a8d3566c55:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    23a8d3566c59:	0f 8e 0c 00 00 00                               	jle    0x23a8d3566c6b
    23a8d3566c5f:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    23a8d3566c66:	e9 a2 01 00 00                                  	jmp    0x23a8d3566e0d
    23a8d3566c6b:	0f af f9                                        	imul   edi,ecx
    23a8d3566c6e:	c1 e7 04                                        	shl    edi,0x4
    23a8d3566c71:	03 fe                                           	add    edi,esi
    23a8d3566c73:	41 8b d1                                        	mov    edx,r9d
    23a8d3566c76:	e9 0c 00 00 00                                  	jmp    0x23a8d3566c87
    23a8d3566c7b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d3566c80:	48 89 b5 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rsi
    23a8d3566c87:	8b f2                                           	mov    esi,edx
    23a8d3566c89:	c1 e6 04                                        	shl    esi,0x4
    23a8d3566c8c:	03 f7                                           	add    esi,edi
    23a8d3566c8e:	4d 8b 0c 30                                     	mov    r9,QWORD PTR [r8+rsi*1]
    23a8d3566c92:	41 b9 ff ff ff ff                               	mov    r9d,0xffffffff
    23a8d3566c98:	4d 39 0c 30                                     	cmp    QWORD PTR [r8+rsi*1],r9
    23a8d3566c9c:	0f 85 80 01 00 00                               	jne    0x23a8d3566e22
    23a8d3566ca2:	c4 c1 7a 10 74 30 08                            	vmovss xmm6,DWORD PTR [r8+rsi*1+0x8]
    23a8d3566ca9:	83 7d b8 00                                     	cmp    DWORD PTR [rbp-0x48],0x0
    23a8d3566cad:	0f 85 0f 00 00 00                               	jne    0x23a8d3566cc2
    23a8d3566cb3:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566cb7:	0f 83 65 01 00 00                               	jae    0x23a8d3566e22
    23a8d3566cbd:	e9 0a 00 00 00                                  	jmp    0x23a8d3566ccc
    23a8d3566cc2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566cc6:	0f 87 56 01 00 00                               	ja     0x23a8d3566e22
    23a8d3566ccc:	8b b5 28 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd8]
    23a8d3566cd2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566cd6:	41 0f 43 f4                                     	cmovae esi,r12d
    23a8d3566cda:	44 8d 5a 01                                     	lea    r11d,[rdx+0x1]
    23a8d3566cde:	3b d3                                           	cmp    edx,ebx
    23a8d3566ce0:	0f 84 11 01 00 00                               	je     0x23a8d3566df7
    23a8d3566ce6:	41 8b d3                                        	mov    edx,r11d
    23a8d3566ce9:	c1 e2 04                                        	shl    edx,0x4
    23a8d3566cec:	03 d7                                           	add    edx,edi
    23a8d3566cee:	4d 8b 3c 10                                     	mov    r15,QWORD PTR [r8+rdx*1]
    23a8d3566cf2:	4d 39 0c 10                                     	cmp    QWORD PTR [r8+rdx*1],r9
    23a8d3566cf6:	0f 85 26 01 00 00                               	jne    0x23a8d3566e22
    23a8d3566cfc:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    23a8d3566d03:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3566d08:	0f 84 0f 00 00 00                               	je     0x23a8d3566d1d
    23a8d3566d0e:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566d12:	0f 83 0a 01 00 00                               	jae    0x23a8d3566e22
    23a8d3566d18:	e9 0a 00 00 00                                  	jmp    0x23a8d3566d27
    23a8d3566d1d:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566d21:	0f 87 fb 00 00 00                               	ja     0x23a8d3566e22
    23a8d3566d27:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566d2b:	41 0f 43 f4                                     	cmovae esi,r12d
    23a8d3566d2f:	45 8d 7b 01                                     	lea    r15d,[r11+0x1]
    23a8d3566d33:	44 3b db                                        	cmp    r11d,ebx
    23a8d3566d36:	0f 84 bb 00 00 00                               	je     0x23a8d3566df7
    23a8d3566d3c:	45 8b df                                        	mov    r11d,r15d
    23a8d3566d3f:	41 c1 e3 04                                     	shl    r11d,0x4
    23a8d3566d43:	44 03 df                                        	add    r11d,edi
    23a8d3566d46:	4b 8b 14 18                                     	mov    rdx,QWORD PTR [r8+r11*1]
    23a8d3566d4a:	4f 39 0c 18                                     	cmp    QWORD PTR [r8+r11*1],r9
    23a8d3566d4e:	0f 85 ce 00 00 00                               	jne    0x23a8d3566e22
    23a8d3566d54:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    23a8d3566d5b:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3566d60:	0f 84 0f 00 00 00                               	je     0x23a8d3566d75
    23a8d3566d66:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566d6a:	0f 83 b2 00 00 00                               	jae    0x23a8d3566e22
    23a8d3566d70:	e9 0a 00 00 00                                  	jmp    0x23a8d3566d7f
    23a8d3566d75:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566d79:	0f 87 a3 00 00 00                               	ja     0x23a8d3566e22
    23a8d3566d7f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566d83:	41 0f 43 f4                                     	cmovae esi,r12d
    23a8d3566d87:	45 8d 5f 01                                     	lea    r11d,[r15+0x1]
    23a8d3566d8b:	44 3b fb                                        	cmp    r15d,ebx
    23a8d3566d8e:	0f 84 63 00 00 00                               	je     0x23a8d3566df7
    23a8d3566d94:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3566d99:	0f 85 b1 86 00 00                               	jne    0x23a8d356f450
    23a8d3566d9f:	45 8b fb                                        	mov    r15d,r11d
    23a8d3566da2:	41 c1 e7 04                                     	shl    r15d,0x4
    23a8d3566da6:	44 03 ff                                        	add    r15d,edi
    23a8d3566da9:	4b 8b 14 38                                     	mov    rdx,QWORD PTR [r8+r15*1]
    23a8d3566dad:	4f 39 0c 38                                     	cmp    QWORD PTR [r8+r15*1],r9
    23a8d3566db1:	0f 85 6b 00 00 00                               	jne    0x23a8d3566e22
    23a8d3566db7:	c4 81 7a 10 74 38 08                            	vmovss xmm6,DWORD PTR [r8+r15*1+0x8]
    23a8d3566dbe:	3d 01 02 00 00                                  	cmp    eax,0x201
    23a8d3566dc3:	0f 84 0f 00 00 00                               	je     0x23a8d3566dd8
    23a8d3566dc9:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566dcd:	0f 83 4f 00 00 00                               	jae    0x23a8d3566e22
    23a8d3566dd3:	e9 0a 00 00 00                                  	jmp    0x23a8d3566de2
    23a8d3566dd8:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566ddc:	0f 87 40 00 00 00                               	ja     0x23a8d3566e22
    23a8d3566de2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3566de6:	41 0f 43 f4                                     	cmovae esi,r12d
    23a8d3566dea:	41 8d 53 01                                     	lea    edx,[r11+0x1]
    23a8d3566dee:	41 3b db                                        	cmp    ebx,r11d
    23a8d3566df1:	0f 85 89 fe ff ff                               	jne    0x23a8d3566c80
    23a8d3566df7:	44 8b de                                        	mov    r11d,esi
    23a8d3566dfa:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    23a8d3566e01:	8b b5 18 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe8]
    23a8d3566e07:	8b bd 40 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc0]
    23a8d3566e0d:	44 8d 79 01                                     	lea    r15d,[rcx+0x1]
    23a8d3566e11:	3b 8d 70 ff ff ff                               	cmp    ecx,DWORD PTR [rbp-0x90]
    23a8d3566e17:	0f 85 23 fe ff ff                               	jne    0x23a8d3566c40
    23a8d3566e1d:	e9 23 00 00 00                                  	jmp    0x23a8d3566e45
    23a8d3566e22:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    23a8d3566e28:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    23a8d3566e2c:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    23a8d3566e30:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    23a8d3566e34:	8b 95 48 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b8]
    23a8d3566e3a:	8b bd 88 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x378]
    23a8d3566e40:	e9 3f 00 00 00                                  	jmp    0x23a8d3566e84
    23a8d3566e45:	b8 02 00 00 00                                  	mov    eax,0x2
    23a8d3566e4a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    23a8d3566e4f:	45 85 db                                        	test   r11d,r11d
    23a8d3566e52:	0f 45 f8                                        	cmovne edi,eax
    23a8d3566e55:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3566e59:	45 8d 83 a0 02 00 00                            	lea    r8d,[r11+0x2a0]
    23a8d3566e60:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    23a8d3566e64:	45 89 47 07                                     	mov    DWORD PTR [r15+0x7],r8d
    23a8d3566e68:	8b c7                                           	mov    eax,edi
    23a8d3566e6a:	48 8b e5                                        	mov    rsp,rbp
    23a8d3566e6d:	5d                                              	pop    rbp
    23a8d3566e6e:	c2 40 00                                        	ret    0x40
    23a8d3566e71:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    23a8d3566e79:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    23a8d3566e7d:	b8 02 00 00 00                                  	mov    eax,0x2
    23a8d3566e82:	eb e6                                           	jmp    0x23a8d3566e6a
    23a8d3566e84:	8b c7                                           	mov    eax,edi
    23a8d3566e86:	c4 c1 7a 10 6c 00 14                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x14]
    23a8d3566e8d:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    23a8d3566e93:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d3566e98:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3566e9c:	4c 8b 15 72 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc72]        # 0x23a8d3566b15
    23a8d3566ea3:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3566ea8:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d3566eac:	48 89 85 f8 fe ff ff                            	mov    QWORD PTR [rbp-0x108],rax
    23a8d3566eb3:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    23a8d3566eb9:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    23a8d3566ebe:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d3566ec3:	0f 87 0d 00 00 00                               	ja     0x23a8d3566ed6
    23a8d3566ec9:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d3566ece:	48 8b f1                                        	mov    rsi,rcx
    23a8d3566ed1:	e9 21 00 00 00                                  	jmp    0x23a8d3566ef7
    23a8d3566ed6:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3566edc:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    23a8d3566ee0:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    23a8d3566ee4:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d3566ee9:	0f 8a 0d 89 00 00                               	jp     0x23a8d356f7fc
    23a8d3566eef:	0f 85 07 89 00 00                               	jne    0x23a8d356f7fc
    23a8d3566ef5:	8b f1                                           	mov    esi,ecx
    23a8d3566ef7:	44 8b cb                                        	mov    r9d,ebx
    23a8d3566efa:	c4 81 7a 10 6c 08 14                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x14]
    23a8d3566f01:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3566f05:	4c 8b 15 09 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc09]        # 0x23a8d3566b15
    23a8d3566f0c:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3566f11:	48 89 b5 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rsi
    23a8d3566f18:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    23a8d3566f1f:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d3566f24:	0f 87 0a 00 00 00                               	ja     0x23a8d3566f34
    23a8d3566f2a:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d3566f2f:	e9 1f 00 00 00                                  	jmp    0x23a8d3566f53
    23a8d3566f34:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3566f3a:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    23a8d3566f3e:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    23a8d3566f42:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d3566f47:	0f 8a aa 88 00 00                               	jp     0x23a8d356f7f7
    23a8d3566f4d:	0f 85 a4 88 00 00                               	jne    0x23a8d356f7f7
    23a8d3566f53:	44 8b d9                                        	mov    r11d,ecx
    23a8d3566f56:	44 2b de                                        	sub    r11d,esi
    23a8d3566f59:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    23a8d3566f60:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3566f64:	4c 8b 15 aa fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbaa]        # 0x23a8d3566b15
    23a8d3566f6b:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3566f70:	48 89 8d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rcx
    23a8d3566f77:	4c 89 9d a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r11
    23a8d3566f7e:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d3566f83:	0f 87 10 00 00 00                               	ja     0x23a8d3566f99
    23a8d3566f89:	48 c7 85 18 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xe8],0xffffffff80000000
    23a8d3566f94:	e9 26 00 00 00                                  	jmp    0x23a8d3566fbf
    23a8d3566f99:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3566f9f:	c5 fa 2c c5                                     	vcvttss2si eax,xmm5
    23a8d3566fa3:	c5 02 2a c0                                     	vcvtsi2ss xmm8,xmm15,eax
    23a8d3566fa7:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d3566fac:	0f 8a 40 88 00 00                               	jp     0x23a8d356f7f2
    23a8d3566fb2:	0f 85 3a 88 00 00                               	jne    0x23a8d356f7f2
    23a8d3566fb8:	48 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rax
    23a8d3566fbf:	49 63 c3                                        	movsxd rax,r11d
    23a8d3566fc2:	c4 81 7a 10 6c 08 10                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x10]
    23a8d3566fc9:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3566fcd:	4c 8b 15 41 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb41]        # 0x23a8d3566b15
    23a8d3566fd4:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    23a8d3566fd9:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    23a8d3566fdd:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    23a8d3566fe2:	0f 87 10 00 00 00                               	ja     0x23a8d3566ff8
    23a8d3566fe8:	48 c7 85 50 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xb0],0xffffffff80000000
    23a8d3566ff3:	e9 27 00 00 00                                  	jmp    0x23a8d356701f
    23a8d3566ff8:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3566ffe:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    23a8d3567002:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    23a8d3567007:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    23a8d356700c:	0f 8a db 87 00 00                               	jp     0x23a8d356f7ed
    23a8d3567012:	0f 85 d5 87 00 00                               	jne    0x23a8d356f7ed
    23a8d3567018:	4c 89 8d 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r9
    23a8d356701f:	44 8b da                                        	mov    r11d,edx
    23a8d3567022:	c4 81 7a 10 6c 18 10                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x10]
    23a8d3567029:	c4 01 7a 10 44 18 14                            	vmovss xmm8,DWORD PTR [r8+r11*1+0x14]
    23a8d3567030:	4c 89 9d f0 fe ff ff                            	mov    QWORD PTR [rbp-0x110],r11
    23a8d3567037:	47 8b 9c 38 8c 00 00 00                         	mov    r11d,DWORD PTR [r8+r15*1+0x8c]
    23a8d356703f:	41 b9 c0 00 00 00                               	mov    r9d,0xc0
    23a8d3567045:	ba 80 00 00 00                                  	mov    edx,0x80
    23a8d356704a:	45 85 db                                        	test   r11d,r11d
    23a8d356704d:	49 0f 45 d1                                     	cmovne rdx,r9
    23a8d3567051:	44 8b 8d 50 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xb0]
    23a8d3567058:	44 2b 8d 18 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xe8]
    23a8d356705f:	4d 63 c9                                        	movsxd r9,r9d
    23a8d3567062:	49 8b f9                                        	mov    rdi,r9
    23a8d3567065:	48 2b f8                                        	sub    rdi,rax
    23a8d3567068:	48 8b da                                        	mov    rbx,rdx
    23a8d356706b:	48 0f af df                                     	imul   rbx,rdi
    23a8d356706f:	4b 89 9c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rbx
    23a8d3567077:	41 bf 07 00 00 00                               	mov    r15d,0x7
    23a8d356707d:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    23a8d3567081:	bf 06 00 00 00                                  	mov    edi,0x6
    23a8d3567086:	45 85 db                                        	test   r11d,r11d
    23a8d3567089:	4c 0f 45 ff                                     	cmovne r15,rdi
    23a8d356708d:	41 8b ff                                        	mov    edi,r15d
    23a8d3567090:	83 e7 3f                                        	and    edi,0x3f
    23a8d3567093:	4d 8b f9                                        	mov    r15,r9
    23a8d3567096:	8b cf                                           	mov    ecx,edi
    23a8d3567098:	49 d3 e7                                        	shl    r15,cl
    23a8d356709b:	4c 89 9d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r11
    23a8d35670a2:	4c 8b d8                                        	mov    r11,rax
    23a8d35670a5:	8b cf                                           	mov    ecx,edi
    23a8d35670a7:	49 d3 e3                                        	shl    r11,cl
    23a8d35670aa:	4d 2b fb                                        	sub    r15,r11
    23a8d35670ad:	4f 89 bc 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],r15
    23a8d35670b5:	c5 3a 59 c6                                     	vmulss xmm8,xmm8,xmm6
    23a8d35670b9:	4c 8b 15 55 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffa55]        # 0x23a8d3566b15
    23a8d35670c0:	c4 41 38 54 12                                  	vandps xmm10,xmm8,XMMWORD PTR [r10]
    23a8d35670c5:	4c 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r9
    23a8d35670cc:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35670d1:	0f 87 0b 00 00 00                               	ja     0x23a8d35670e2
    23a8d35670d7:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    23a8d35670dd:	e9 21 00 00 00                                  	jmp    0x23a8d3567103
    23a8d35670e2:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    23a8d35670e8:	c4 41 7a 2c d8                                  	vcvttss2si r11d,xmm8
    23a8d35670ed:	c4 41 02 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11d
    23a8d35670f2:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    23a8d35670f7:	0f 8a eb 86 00 00                               	jp     0x23a8d356f7e8
    23a8d35670fd:	0f 85 e5 86 00 00                               	jne    0x23a8d356f7e8
    23a8d3567103:	41 8b cb                                        	mov    ecx,r11d
    23a8d3567106:	2b 8d 40 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0xc0]
    23a8d356710c:	48 63 c1                                        	movsxd rax,ecx
    23a8d356710f:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    23a8d3567113:	4c 8b 15 fb f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff9fb]        # 0x23a8d3566b15
    23a8d356711a:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    23a8d356711f:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    23a8d3567126:	48 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rcx
    23a8d356712d:	48 89 85 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rax
    23a8d3567134:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    23a8d3567138:	0f 87 10 00 00 00                               	ja     0x23a8d356714e
    23a8d356713e:	48 c7 85 58 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xa8],0xffffffff80000000
    23a8d3567149:	e9 26 00 00 00                                  	jmp    0x23a8d3567174
    23a8d356714e:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    23a8d3567154:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    23a8d3567158:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    23a8d356715d:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d3567161:	0f 8a 7c 86 00 00                               	jp     0x23a8d356f7e3
    23a8d3567167:	0f 85 76 86 00 00                               	jne    0x23a8d356f7e3
    23a8d356716d:	4c 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r9
    23a8d3567174:	44 8b 8d 58 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xa8]
    23a8d356717b:	44 2b 8d 50 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xb0]
    23a8d3567182:	4d 63 c9                                        	movsxd r9,r9d
    23a8d3567185:	49 8b f1                                        	mov    rsi,r9
    23a8d3567188:	48 2b f0                                        	sub    rsi,rax
    23a8d356718b:	48 8b c2                                        	mov    rax,rdx
    23a8d356718e:	48 0f af c6                                     	imul   rax,rsi
    23a8d3567192:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    23a8d356719a:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    23a8d356719e:	49 8b f1                                        	mov    rsi,r9
    23a8d35671a1:	8b cf                                           	mov    ecx,edi
    23a8d35671a3:	48 d3 e6                                        	shl    rsi,cl
    23a8d35671a6:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    23a8d35671ad:	4c 8b 8d 08 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xf8]
    23a8d35671b4:	8b cf                                           	mov    ecx,edi
    23a8d35671b6:	49 d3 e1                                        	shl    r9,cl
    23a8d35671b9:	49 2b f1                                        	sub    rsi,r9
    23a8d35671bc:	4b 89 b4 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rsi
    23a8d35671c4:	8b 8d 18 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe8]
    23a8d35671ca:	2b 8d 58 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0xa8]
    23a8d35671d0:	4c 63 c9                                        	movsxd r9,ecx
    23a8d35671d3:	8b 8d 10 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf0]
    23a8d35671d9:	41 2b cb                                        	sub    ecx,r11d
    23a8d35671dc:	4c 89 8d d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r9
    23a8d35671e3:	4c 63 c9                                        	movsxd r9,ecx
    23a8d35671e6:	4c 8b 9d d8 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x128]
    23a8d35671ed:	4d 2b d9                                        	sub    r11,r9
    23a8d35671f0:	4c 0f af da                                     	imul   r11,rdx
    23a8d35671f4:	4f 89 9c 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],r11
    23a8d35671fc:	48 8b 95 d8 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x128]
    23a8d3567203:	48 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rcx
    23a8d356720a:	8b cf                                           	mov    ecx,edi
    23a8d356720c:	48 d3 e2                                        	shl    rdx,cl
    23a8d356720f:	8b cf                                           	mov    ecx,edi
    23a8d3567211:	49 8b f9                                        	mov    rdi,r9
    23a8d3567214:	48 d3 e7                                        	shl    rdi,cl
    23a8d3567217:	48 2b d7                                        	sub    rdx,rdi
    23a8d356721a:	4b 89 94 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],rdx
    23a8d3567222:	48 8b fa                                        	mov    rdi,rdx
    23a8d3567225:	49 3b d3                                        	cmp    rdx,r11
    23a8d3567228:	49 0f 4c fb                                     	cmovl  rdi,r11
    23a8d356722c:	48 8b ca                                        	mov    rcx,rdx
    23a8d356722f:	4c 3b da                                        	cmp    r11,rdx
    23a8d3567232:	49 0f 4c cb                                     	cmovl  rcx,r11
    23a8d3567236:	4c 8b e6                                        	mov    r12,rsi
    23a8d3567239:	48 3b f0                                        	cmp    rsi,rax
    23a8d356723c:	4c 0f 4c e0                                     	cmovl  r12,rax
    23a8d3567240:	4c 8b c6                                        	mov    r8,rsi
    23a8d3567243:	48 3b c6                                        	cmp    rax,rsi
    23a8d3567246:	4c 0f 4c c0                                     	cmovl  r8,rax
    23a8d356724a:	4c 89 9d d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],r11
    23a8d3567251:	4d 8b df                                        	mov    r11,r15
    23a8d3567254:	4c 3b fb                                        	cmp    r15,rbx
    23a8d3567257:	4c 0f 4c db                                     	cmovl  r11,rbx
    23a8d356725b:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    23a8d3567262:	49 8b d7                                        	mov    rdx,r15
    23a8d3567265:	49 3b df                                        	cmp    rbx,r15
    23a8d3567268:	48 0f 4c d3                                     	cmovl  rdx,rbx
    23a8d356726c:	48 89 bd 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],rdi
    23a8d3567273:	48 63 7d 18                                     	movsxd rdi,DWORD PTR [rbp+0x18]
    23a8d3567277:	48 c1 e7 08                                     	shl    rdi,0x8
    23a8d356727b:	48 89 8d 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rcx
    23a8d3567282:	48 63 8d 58 fe ff ff                            	movsxd rcx,DWORD PTR [rbp-0x1a8]
    23a8d3567289:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    23a8d3567290:	48 8b c7                                        	mov    rax,rdi
    23a8d3567293:	48 2b c1                                        	sub    rax,rcx
    23a8d3567296:	48 0f af 85 d8 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x128]
    23a8d356729e:	48 63 8d 58 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xa8]
    23a8d35672a5:	48 89 b5 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rsi
    23a8d35672ac:	48 63 75 10                                     	movsxd rsi,DWORD PTR [rbp+0x10]
    23a8d35672b0:	48 c1 e6 08                                     	shl    rsi,0x8
    23a8d35672b4:	48 2b ce                                        	sub    rcx,rsi
    23a8d35672b7:	49 0f af c9                                     	imul   rcx,r9
    23a8d35672bb:	48 03 c1                                        	add    rax,rcx
    23a8d35672be:	48 63 8d 40 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xc0]
    23a8d35672c5:	48 89 85 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rax
    23a8d35672cc:	48 8b c7                                        	mov    rax,rdi
    23a8d35672cf:	48 2b c1                                        	sub    rax,rcx
    23a8d35672d2:	48 0f af 85 c8 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x138]
    23a8d35672da:	48 63 8d 50 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xb0]
    23a8d35672e1:	48 2b ce                                        	sub    rcx,rsi
    23a8d35672e4:	48 0f af 8d 08 ff ff ff                         	imul   rcx,QWORD PTR [rbp-0xf8]
    23a8d35672ec:	48 03 c1                                        	add    rax,rcx
    23a8d35672ef:	48 63 8d 10 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xf0]
    23a8d35672f6:	48 2b f9                                        	sub    rdi,rcx
    23a8d35672f9:	48 0f af bd 70 ff ff ff                         	imul   rdi,QWORD PTR [rbp-0x90]
    23a8d3567301:	48 63 8d 18 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xe8]
    23a8d3567308:	48 2b ce                                        	sub    rcx,rsi
    23a8d356730b:	48 0f af 4d d0                                  	imul   rcx,QWORD PTR [rbp-0x30]
    23a8d3567310:	48 03 f9                                        	add    rdi,rcx
    23a8d3567313:	49 f7 d9                                        	neg    r9
    23a8d3567316:	48 8b b5 08 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xf8]
    23a8d356731d:	48 f7 de                                        	neg    rsi
    23a8d3567320:	48 8b 4d d0                                     	mov    rcx,QWORD PTR [rbp-0x30]
    23a8d3567324:	48 f7 d9                                        	neg    rcx
    23a8d3567327:	48 89 8d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rcx
    23a8d356732e:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    23a8d3567331:	2b 4d 18                                        	sub    ecx,DWORD PTR [rbp+0x18]
    23a8d3567334:	4c 89 8d 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],r9
    23a8d356733b:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    23a8d356733f:	44 2b 4d 10                                     	sub    r9d,DWORD PTR [rbp+0x10]
    23a8d3567343:	4c 89 a5 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r12
    23a8d356734a:	4c 89 85 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],r8
    23a8d3567351:	48 89 95 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rdx
    23a8d3567358:	48 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdi
    23a8d356735f:	48 89 b5 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rsi
    23a8d3567366:	48 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rcx
    23a8d356736d:	4c 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],r9
    23a8d3567371:	41 81 f9 00 00 01 00                            	cmp    r9d,0x10000
    23a8d3567378:	0f 8f 9d 02 00 00                               	jg     0x23a8d356761b
    23a8d356737e:	81 f9 00 00 01 00                               	cmp    ecx,0x10000
    23a8d3567384:	0f 8f 91 02 00 00                               	jg     0x23a8d356761b
    23a8d356738a:	49 c7 c4 00 00 00 80                            	mov    r12,0xffffffff80000000
    23a8d3567391:	48 8b f7                                        	mov    rsi,rdi
    23a8d3567394:	49 03 f4                                        	add    rsi,r12
    23a8d3567397:	49 b8 00 00 00 00 ff ff ff ff                   	movabs r8,0xffffffff00000000
    23a8d35673a1:	49 3b f0                                        	cmp    rsi,r8
    23a8d35673a4:	0f 82 58 02 00 00                               	jb     0x23a8d3567602
    23a8d35673aa:	48 8d 34 3a                                     	lea    rsi,[rdx+rdi*1]
    23a8d35673ae:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    23a8d35673b2:	48 63 d2                                        	movsxd rdx,edx
    23a8d35673b5:	4c 8b 8d 90 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x270]
    23a8d35673bc:	4c 0f af ca                                     	imul   r9,rdx
    23a8d35673c0:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d35673c4:	48 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rdx
    23a8d35673cb:	49 8b d1                                        	mov    rdx,r9
    23a8d35673ce:	48 c1 fa 3f                                     	sar    rdx,0x3f
    23a8d35673d2:	49 23 d1                                        	and    rdx,r9
    23a8d35673d5:	48 03 d6                                        	add    rdx,rsi
    23a8d35673d8:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    23a8d35673db:	48 63 f6                                        	movsxd rsi,esi
    23a8d35673de:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    23a8d35673e5:	48 0f af ce                                     	imul   rcx,rsi
    23a8d35673e9:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d35673ed:	48 89 b5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rsi
    23a8d35673f4:	48 8b f1                                        	mov    rsi,rcx
    23a8d35673f7:	48 c1 fe 3f                                     	sar    rsi,0x3f
    23a8d35673fb:	48 23 f1                                        	and    rsi,rcx
    23a8d35673fe:	48 03 d6                                        	add    rdx,rsi
    23a8d3567401:	48 81 fa 01 00 00 80                            	cmp    rdx,0xffffffff80000001
    23a8d3567408:	0f 8c f4 01 00 00                               	jl     0x23a8d3567602
    23a8d356740e:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    23a8d3567412:	33 ff                                           	xor    edi,edi
    23a8d3567414:	4d 85 c9                                        	test   r9,r9
    23a8d3567417:	49 0f 4f f9                                     	cmovg  rdi,r9
    23a8d356741b:	48 03 fa                                        	add    rdi,rdx
    23a8d356741e:	33 d2                                           	xor    edx,edx
    23a8d3567420:	48 85 c9                                        	test   rcx,rcx
    23a8d3567423:	48 0f 4f d1                                     	cmovg  rdx,rcx
    23a8d3567427:	48 03 fa                                        	add    rdi,rdx
    23a8d356742a:	33 f6                                           	xor    esi,esi
    23a8d356742c:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    23a8d3567433:	0f 8f c9 01 00 00                               	jg     0x23a8d3567602
    23a8d3567439:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d356743d:	8b 7d 38                                        	mov    edi,DWORD PTR [rbp+0x38]
    23a8d3567440:	44 03 ff                                        	add    r15d,edi
    23a8d3567443:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    23a8d3567449:	44 8d 3c 1f                                     	lea    r15d,[rdi+rbx*1]
    23a8d356744d:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    23a8d3567453:	4c 8b f8                                        	mov    r15,rax
    23a8d3567456:	4d 03 fc                                        	add    r15,r12
    23a8d3567459:	4d 3b f8                                        	cmp    r15,r8
    23a8d356745c:	0f 82 8b 01 00 00                               	jb     0x23a8d35675ed
    23a8d3567462:	4c 8b bd 78 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x388]
    23a8d3567469:	49 8d 1c 07                                     	lea    rbx,[r15+rax*1]
    23a8d356746d:	48 8b 95 58 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa8]
    23a8d3567474:	48 0f af 95 b8 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x148]
    23a8d356747c:	48 c1 e2 08                                     	shl    rdx,0x8
    23a8d3567480:	48 8b ca                                        	mov    rcx,rdx
    23a8d3567483:	48 c1 f9 3f                                     	sar    rcx,0x3f
    23a8d3567487:	48 23 ca                                        	and    rcx,rdx
    23a8d356748a:	48 03 d9                                        	add    rbx,rcx
    23a8d356748d:	4c 8b 8d c8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x138]
    23a8d3567494:	4c 0f af 8d 18 ff ff ff                         	imul   r9,QWORD PTR [rbp-0xe8]
    23a8d356749c:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d35674a0:	49 8b c9                                        	mov    rcx,r9
    23a8d35674a3:	48 c1 f9 3f                                     	sar    rcx,0x3f
    23a8d35674a7:	49 23 c9                                        	and    rcx,r9
    23a8d35674aa:	48 03 d9                                        	add    rbx,rcx
    23a8d35674ad:	48 81 fb 01 00 00 80                            	cmp    rbx,0xffffffff80000001
    23a8d35674b4:	0f 8c 33 01 00 00                               	jl     0x23a8d35675ed
    23a8d35674ba:	48 8b 9d 20 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3e0]
    23a8d35674c1:	48 8d 0c 03                                     	lea    rcx,[rbx+rax*1]
    23a8d35674c5:	4c 8b fe                                        	mov    r15,rsi
    23a8d35674c8:	48 85 d2                                        	test   rdx,rdx
    23a8d35674cb:	4c 0f 4f fa                                     	cmovg  r15,rdx
    23a8d35674cf:	4c 03 f9                                        	add    r15,rcx
    23a8d35674d2:	48 8b d6                                        	mov    rdx,rsi
    23a8d35674d5:	4d 85 c9                                        	test   r9,r9
    23a8d35674d8:	49 0f 4f d1                                     	cmovg  rdx,r9
    23a8d35674dc:	4c 03 fa                                        	add    r15,rdx
    23a8d35674df:	49 81 ff fe ff ff 7f                            	cmp    r15,0x7ffffffe
    23a8d35674e6:	0f 8f 01 01 00 00                               	jg     0x23a8d35675ed
    23a8d35674ec:	44 8b 7d 40                                     	mov    r15d,DWORD PTR [rbp+0x40]
    23a8d35674f0:	48 8b 95 78 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0x88]
    23a8d35674f7:	41 03 d7                                        	add    edx,r15d
    23a8d35674fa:	c4 e3 79 22 f2 00                               	vpinsrd xmm6,xmm0,edx,0x0
    23a8d3567500:	48 8b 95 48 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb8]
    23a8d3567507:	41 03 d7                                        	add    edx,r15d
    23a8d356750a:	c4 e3 49 22 f2 01                               	vpinsrd xmm6,xmm6,edx,0x1
    23a8d3567510:	4c 03 a5 78 fe ff ff                            	add    r12,QWORD PTR [rbp-0x188]
    23a8d3567517:	4d 3b e0                                        	cmp    r12,r8
    23a8d356751a:	0f 82 c3 00 00 00                               	jb     0x23a8d35675e3
    23a8d3567520:	4c 8b 85 98 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x368]
    23a8d3567527:	4c 8b a5 78 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x188]
    23a8d356752e:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    23a8d3567532:	48 8b 8d 58 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xa8]
    23a8d3567539:	48 0f af 8d 48 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x2b8]
    23a8d3567541:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d3567545:	4c 8b c9                                        	mov    r9,rcx
    23a8d3567548:	49 c1 f9 3f                                     	sar    r9,0x3f
    23a8d356754c:	4c 23 c9                                        	and    r9,rcx
    23a8d356754f:	49 03 d1                                        	add    rdx,r9
    23a8d3567552:	4c 8b 8d 18 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe8]
    23a8d3567559:	4c 0f af 8d d8 fe ff ff                         	imul   r9,QWORD PTR [rbp-0x128]
    23a8d3567561:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3567565:	4d 8b c1                                        	mov    r8,r9
    23a8d3567568:	49 c1 f8 3f                                     	sar    r8,0x3f
    23a8d356756c:	4d 23 c1                                        	and    r8,r9
    23a8d356756f:	4c 03 c2                                        	add    r8,rdx
    23a8d3567572:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    23a8d3567579:	0f 8c 64 00 00 00                               	jl     0x23a8d35675e3
    23a8d356757f:	4c 8b 85 98 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x268]
    23a8d3567586:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    23a8d356758a:	4c 8b c6                                        	mov    r8,rsi
    23a8d356758d:	48 85 c9                                        	test   rcx,rcx
    23a8d3567590:	4c 0f 4f c1                                     	cmovg  r8,rcx
    23a8d3567594:	4c 03 c2                                        	add    r8,rdx
    23a8d3567597:	4d 85 c9                                        	test   r9,r9
    23a8d356759a:	49 0f 4f f1                                     	cmovg  rsi,r9
    23a8d356759e:	4c 03 c6                                        	add    r8,rsi
    23a8d35675a1:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    23a8d35675a8:	0f 8f 2b 00 00 00                               	jg     0x23a8d35675d9
    23a8d35675ae:	44 8b 45 48                                     	mov    r8d,DWORD PTR [rbp+0x48]
    23a8d35675b2:	48 8b 95 e0 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x120]
    23a8d35675b9:	41 03 d0                                        	add    edx,r8d
    23a8d35675bc:	c4 e3 79 22 c2 00                               	vpinsrd xmm0,xmm0,edx,0x0
    23a8d35675c2:	48 8b 95 d0 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x130]
    23a8d35675c9:	41 03 d0                                        	add    edx,r8d
    23a8d35675cc:	c4 e3 79 22 c2 01                               	vpinsrd xmm0,xmm0,edx,0x1
    23a8d35675d2:	33 d2                                           	xor    edx,edx
    23a8d35675d4:	e9 1d 00 00 00                                  	jmp    0x23a8d35675f6
    23a8d35675d9:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d35675de:	e9 48 00 00 00                                  	jmp    0x23a8d356762b
    23a8d35675e3:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d35675e8:	e9 3e 00 00 00                                  	jmp    0x23a8d356762b
    23a8d35675ed:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d35675f2:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d35675f6:	48 8b 9d 20 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3e0]
    23a8d35675fd:	e9 29 00 00 00                                  	jmp    0x23a8d356762b
    23a8d3567602:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d3567606:	48 8b 9d 20 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3e0]
    23a8d356760d:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d3567611:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3567616:	e9 10 00 00 00                                  	jmp    0x23a8d356762b
    23a8d356761b:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d356761f:	49 8b dc                                        	mov    rbx,r12
    23a8d3567622:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d3567626:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d356762b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356762f:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3567633:	46 8b a4 07 c8 3c 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0x3cc8]
    23a8d356763b:	48 89 95 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdx
    23a8d3567642:	42 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3cc8],0x0
    23a8d356764b:	0f 85 72 00 00 00                               	jne    0x23a8d35676c3
    23a8d3567651:	46 8b a4 07 ec 00 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0xec]
    23a8d3567659:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    23a8d3567662:	0f 85 5b 00 00 00                               	jne    0x23a8d35676c3
    23a8d3567668:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    23a8d356766f:	46 8b bc 27 30 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x130]
    23a8d3567677:	42 83 bc 27 30 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x130],0x0
    23a8d3567680:	0f 85 0b 00 00 00                               	jne    0x23a8d3567691
    23a8d3567686:	41 bc 01 00 00 00                               	mov    r12d,0x1
    23a8d356768c:	e9 35 00 00 00                                  	jmp    0x23a8d35676c6
    23a8d3567691:	46 8b bc 27 38 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x138]
    23a8d3567699:	42 83 bc 27 38 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x138],0x0
    23a8d35676a2:	75 e2                                           	jne    0x23a8d3567686
    23a8d35676a4:	46 8b a4 27 34 01 00 00                         	mov    r12d,DWORD PTR [rdi+r12*1+0x134]
    23a8d35676ac:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d35676b0:	74 d4                                           	je     0x23a8d3567686
    23a8d35676b2:	41 83 fc 02                                     	cmp    r12d,0x2
    23a8d35676b6:	41 0f 94 c4                                     	sete   r12b
    23a8d35676ba:	45 0f b6 e4                                     	movzx  r12d,r12b
    23a8d35676be:	e9 03 00 00 00                                  	jmp    0x23a8d35676c6
    23a8d35676c3:	45 33 e4                                        	xor    r12d,r12d
    23a8d35676c6:	4c 89 a5 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r12
    23a8d35676cd:	83 bd 20 ff ff ff 02                            	cmp    DWORD PTR [rbp-0xe0],0x2
    23a8d35676d4:	0f 84 0b 00 00 00                               	je     0x23a8d35676e5
    23a8d35676da:	41 bf 01 00 00 00                               	mov    r15d,0x1
    23a8d35676e0:	e9 5b 01 00 00                                  	jmp    0x23a8d3567840
    23a8d35676e5:	46 8b bc 07 80 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x80]
    23a8d35676ed:	42 83 bc 07 80 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x80],0x0
    23a8d35676f6:	75 e2                                           	jne    0x23a8d35676da
    23a8d35676f8:	46 8b bc 07 a4 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0xa4]
    23a8d3567700:	42 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xa4],0x0
    23a8d3567709:	75 cf                                           	jne    0x23a8d35676da
    23a8d356770b:	46 8b bc 07 30 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x530]
    23a8d3567713:	42 83 bc 07 30 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x530],0x0
    23a8d356771c:	75 bc                                           	jne    0x23a8d35676da
    23a8d356771e:	46 8b bc 07 70 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3770]
    23a8d3567726:	42 83 bc 07 70 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3770],0x0
    23a8d356772f:	75 a9                                           	jne    0x23a8d35676da
    23a8d3567731:	46 8b bc 07 74 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3774]
    23a8d3567739:	42 83 bc 07 74 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3774],0x0
    23a8d3567742:	75 96                                           	jne    0x23a8d35676da
    23a8d3567744:	46 8b bc 07 20 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x520]
    23a8d356774c:	42 83 bc 07 20 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x520],0x0
    23a8d3567755:	74 83                                           	je     0x23a8d35676da
    23a8d3567757:	46 8b bc 07 24 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x524]
    23a8d356775f:	42 83 bc 07 24 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x524],0x0
    23a8d3567768:	0f 84 6c ff ff ff                               	je     0x23a8d35676da
    23a8d356776e:	46 8b bc 07 28 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x528]
    23a8d3567776:	42 83 bc 07 28 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x528],0x0
    23a8d356777f:	0f 84 55 ff ff ff                               	je     0x23a8d35676da
    23a8d3567785:	46 8b bc 07 2c 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x52c]
    23a8d356778d:	42 83 bc 07 2c 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x52c],0x0
    23a8d3567796:	0f 84 3e ff ff ff                               	je     0x23a8d35676da
    23a8d356779c:	46 8b 7c 07 74                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x74]
    23a8d35677a1:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    23a8d35677a7:	0f 84 38 00 00 00                               	je     0x23a8d35677e5
    23a8d35677ad:	46 8b 7c 07 78                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x78]
    23a8d35677b2:	41 81 ff 02 03 00 00                            	cmp    r15d,0x302
    23a8d35677b9:	0f 84 0a 00 00 00                               	je     0x23a8d35677c9
    23a8d35677bf:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d35677c3:	0f 85 11 ff ff ff                               	jne    0x23a8d35676da
    23a8d35677c9:	46 8b 7c 07 7c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x7c]
    23a8d35677ce:	41 81 ff 03 03 00 00                            	cmp    r15d,0x303
    23a8d35677d5:	0f 84 0a 00 00 00                               	je     0x23a8d35677e5
    23a8d35677db:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d35677df:	0f 85 f5 fe ff ff                               	jne    0x23a8d35676da
    23a8d35677e5:	83 bd 28 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd8],0x0
    23a8d35677ec:	0f 85 08 00 00 00                               	jne    0x23a8d35677fa
    23a8d35677f2:	45 33 ff                                        	xor    r15d,r15d
    23a8d35677f5:	e9 46 00 00 00                                  	jmp    0x23a8d3567840
    23a8d35677fa:	46 8b bc 07 90 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x90]
    23a8d3567802:	42 83 bc 07 90 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x90],0x0
    23a8d356780b:	0f 85 c9 fe ff ff                               	jne    0x23a8d35676da
    23a8d3567811:	46 8b bc 07 94 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x94]
    23a8d3567819:	42 83 bc 07 94 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x94],0x0
    23a8d3567822:	0f 85 b2 fe ff ff                               	jne    0x23a8d35676da
    23a8d3567828:	46 8b bc 07 98 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x98]
    23a8d3567830:	45 33 ff                                        	xor    r15d,r15d
    23a8d3567833:	42 83 bc 07 98 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x98],0x0
    23a8d356783c:	41 0f 95 c7                                     	setne  r15b
    23a8d3567840:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    23a8d3567843:	c7 44 37 18 00 00 00 00                         	mov    DWORD PTR [rdi+rsi*1+0x18],0x0
    23a8d356784b:	33 c9                                           	xor    ecx,ecx
    23a8d356784d:	83 7d d0 07                                     	cmp    DWORD PTR [rbp-0x30],0x7
    23a8d3567851:	0f 9f c1                                        	setg   cl
    23a8d3567854:	4c 63 8d 08 ff ff ff                            	movsxd r9,DWORD PTR [rbp-0xf8]
    23a8d356785b:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    23a8d3567862:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    23a8d3567866:	4d 0f af f9                                     	imul   r15,r9
    23a8d356786a:	49 83 ff 3f                                     	cmp    r15,0x3f
    23a8d356786e:	41 0f 9f c7                                     	setg   r15b
    23a8d3567872:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d3567876:	44 23 f9                                        	and    r15d,ecx
    23a8d3567879:	0f 85 1d 00 00 00                               	jne    0x23a8d356789c
    23a8d356787f:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d3567883:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    23a8d3567887:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d356788b:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d356788f:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    23a8d3567893:	c5 79 28 f7                                     	vmovapd xmm14,xmm7
    23a8d3567897:	e9 02 02 00 00                                  	jmp    0x23a8d3567a9e
    23a8d356789c:	44 8b 8d 10 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf0]
    23a8d35678a3:	44 3b 8d 40 ff ff ff                            	cmp    r9d,DWORD PTR [rbp-0xc0]
    23a8d35678aa:	0f 84 8a 00 00 00                               	je     0x23a8d356793a
    23a8d35678b0:	48 8b 8d 90 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x270]
    23a8d35678b7:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d35678bb:	c4 61 82 2a c1                                  	vcvtsi2ss xmm8,xmm15,rcx
    23a8d35678c0:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d35678c5:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d35678cb:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d35678d1:	c4 41 2a 5e c0                                  	vdivss xmm8,xmm10,xmm8
    23a8d35678d6:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    23a8d35678db:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    23a8d35678e2:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d35678e6:	c4 61 82 2a d1                                  	vcvtsi2ss xmm10,xmm15,rcx
    23a8d35678eb:	c4 41 3a 59 d2                                  	vmulss xmm10,xmm8,xmm10
    23a8d35678f0:	48 63 4d 38                                     	movsxd rcx,DWORD PTR [rbp+0x38]
    23a8d35678f4:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    23a8d35678fb:	4f 8d 04 23                                     	lea    r8,[r11+r12*1]
    23a8d35678ff:	4c 03 c1                                        	add    r8,rcx
    23a8d3567902:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    23a8d3567907:	49 ba 60 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32860
    23a8d3567911:	c4 41 20 57 1a                                  	vxorps xmm11,xmm11,XMMWORD PTR [r10]
    23a8d3567916:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    23a8d356791b:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    23a8d3567920:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    23a8d3567925:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    23a8d356792a:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356792e:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    23a8d3567935:	e9 08 00 00 00                                  	jmp    0x23a8d3567942
    23a8d356793a:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d356793e:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d3567942:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    23a8d3567948:	3b 8d 58 fe ff ff                               	cmp    ecx,DWORD PTR [rbp-0x1a8]
    23a8d356794e:	0f 84 80 00 00 00                               	je     0x23a8d35679d4
    23a8d3567954:	4c 8b a5 b8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x148]
    23a8d356795b:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d356795f:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    23a8d3567964:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    23a8d3567969:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    23a8d356796f:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    23a8d3567975:	c4 41 1a 5e db                                  	vdivss xmm11,xmm12,xmm11
    23a8d356797a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    23a8d356797f:	4c 8b a5 c8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x138]
    23a8d3567986:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d356798a:	c4 41 82 2a e4                                  	vcvtsi2ss xmm12,xmm15,r12
    23a8d356798f:	c4 41 22 59 e4                                  	vmulss xmm12,xmm11,xmm12
    23a8d3567994:	4c 63 65 40                                     	movsxd r12,DWORD PTR [rbp+0x40]
    23a8d3567998:	48 8d 3c 03                                     	lea    rdi,[rbx+rax*1]
    23a8d356799c:	49 03 fc                                        	add    rdi,r12
    23a8d356799f:	c4 61 82 2a ef                                  	vcvtsi2ss xmm13,xmm15,rdi
    23a8d35679a4:	4c 8b 15 5e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff5e]        # 0x23a8d3567909
    23a8d35679ab:	c4 41 10 57 2a                                  	vxorps xmm13,xmm13,XMMWORD PTR [r10]
    23a8d35679b0:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    23a8d35679b5:	c4 41 79 28 fb                                  	vmovapd xmm15,xmm11
    23a8d35679ba:	c4 41 79 28 dc                                  	vmovapd xmm11,xmm12
    23a8d35679bf:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    23a8d35679c4:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d35679c8:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    23a8d35679cf:	e9 08 00 00 00                                  	jmp    0x23a8d35679dc
    23a8d35679d4:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    23a8d35679d8:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d35679dc:	44 3b 8d 58 fe ff ff                            	cmp    r9d,DWORD PTR [rbp-0x1a8]
    23a8d35679e3:	0f 84 9e 00 00 00                               	je     0x23a8d3567a87
    23a8d35679e9:	4c 8b a5 48 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2b8]
    23a8d35679f0:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d35679f4:	c4 41 82 2a ec                                  	vcvtsi2ss xmm13,xmm15,r12
    23a8d35679f9:	c4 41 09 76 f6                                  	vpcmpeqd xmm14,xmm14,xmm14
    23a8d35679fe:	c4 c1 09 72 f6 19                               	vpslld xmm14,xmm14,0x19
    23a8d3567a04:	c4 c1 09 72 d6 02                               	vpsrld xmm14,xmm14,0x2
    23a8d3567a0a:	c4 41 0a 5e ed                                  	vdivss xmm13,xmm14,xmm13
    23a8d3567a0f:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    23a8d3567a14:	4c 8b a5 d8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x128]
    23a8d3567a1b:	49 c1 e4 08                                     	shl    r12,0x8
    23a8d3567a1f:	c4 41 82 2a f4                                  	vcvtsi2ss xmm14,xmm15,r12
    23a8d3567a24:	c4 41 12 59 f6                                  	vmulss xmm14,xmm13,xmm14
    23a8d3567a29:	48 63 55 48                                     	movsxd rdx,DWORD PTR [rbp+0x48]
    23a8d3567a2d:	4c 8b a5 78 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x188]
    23a8d3567a34:	48 8b 8d 98 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x268]
    23a8d3567a3b:	4e 8d 0c 21                                     	lea    r9,[rcx+r12*1]
    23a8d3567a3f:	49 03 d1                                        	add    rdx,r9
    23a8d3567a42:	c4 e1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,rdx
    23a8d3567a47:	4c 8b 15 bb fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffebb]        # 0x23a8d3567909
    23a8d3567a4e:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    23a8d3567a53:	c5 12 59 ea                                     	vmulss xmm13,xmm13,xmm2
    23a8d3567a57:	c4 41 79 28 fc                                  	vmovapd xmm15,xmm12
    23a8d3567a5c:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    23a8d3567a61:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    23a8d3567a66:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    23a8d3567a6b:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    23a8d3567a70:	c4 41 79 28 f7                                  	vmovapd xmm14,xmm15
    23a8d3567a75:	8b 95 40 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2c0]
    23a8d3567a7b:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    23a8d3567a82:	e9 17 00 00 00                                  	jmp    0x23a8d3567a9e
    23a8d3567a87:	c4 41 79 28 f4                                  	vmovapd xmm14,xmm12
    23a8d3567a8c:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d3567a90:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    23a8d3567a95:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    23a8d3567a9a:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    23a8d3567a9e:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    23a8d3567aa1:	3b 4d 18                                        	cmp    ecx,DWORD PTR [rbp+0x18]
    23a8d3567aa4:	0f 8e a0 78 00 00                               	jle    0x23a8d356f34a
    23a8d3567aaa:	4c 8b 8d 48 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2b8]
    23a8d3567ab1:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3567ab5:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d3567ab9:	41 8d 54 24 ff                                  	lea    edx,[r12-0x1]
    23a8d3567abe:	48 63 d2                                        	movsxd rdx,edx
    23a8d3567ac1:	4c 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r9
    23a8d3567ac8:	4c 0f af ca                                     	imul   r9,rdx
    23a8d3567acc:	4c 89 bd 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],r15
    23a8d3567ad3:	4d 8b f9                                        	mov    r15,r9
    23a8d3567ad6:	49 f7 d7                                        	not    r15
    23a8d3567ad9:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    23a8d3567ae0:	48 c1 e7 08                                     	shl    rdi,0x8
    23a8d3567ae4:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    23a8d3567aeb:	48 0f af fa                                     	imul   rdi,rdx
    23a8d3567aef:	48 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rdi
    23a8d3567af6:	48 f7 d7                                        	not    rdi
    23a8d3567af9:	48 8b 8d 90 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x270]
    23a8d3567b00:	48 c1 e1 08                                     	shl    rcx,0x8
    23a8d3567b04:	48 0f af d1                                     	imul   rdx,rcx
    23a8d3567b08:	48 89 95 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rdx
    23a8d3567b0f:	48 f7 d2                                        	not    rdx
    23a8d3567b12:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    23a8d3567b19:	4c 8b 8d d8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x128]
    23a8d3567b20:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3567b24:	4c 89 8d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r9
    23a8d3567b2b:	4c 8b 8d c8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x138]
    23a8d3567b32:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3567b36:	4c 89 8d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r9
    23a8d3567b3d:	4c 8b 8d 70 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x90]
    23a8d3567b44:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d3567b48:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    23a8d3567b4f:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3567b52:	48 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdi
    23a8d3567b59:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    23a8d3567b5f:	48 89 bd e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdi
    23a8d3567b66:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    23a8d3567b6c:	48 89 bd d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],rdi
    23a8d3567b73:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    23a8d3567b79:	48 89 bd c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rdi
    23a8d3567b80:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    23a8d3567b86:	48 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rdi
    23a8d3567b8d:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    23a8d3567b93:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    23a8d3567b99:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    23a8d3567ba0:	8d 78 50                                        	lea    edi,[rax+0x50]
    23a8d3567ba3:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    23a8d3567ba9:	48 89 bd 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],rdi
    23a8d3567bb0:	8d 78 50                                        	lea    edi,[rax+0x50]
    23a8d3567bb3:	8b 85 48 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3b8]
    23a8d3567bb9:	48 89 bd 98 fe ff ff                            	mov    QWORD PTR [rbp-0x168],rdi
    23a8d3567bc0:	8d 78 50                                        	lea    edi,[rax+0x50]
    23a8d3567bc3:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    23a8d3567bc6:	83 f0 ff                                        	xor    eax,0xffffffff
    23a8d3567bc9:	48 89 bd 90 fe ff ff                            	mov    QWORD PTR [rbp-0x170],rdi
    23a8d3567bd0:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    23a8d3567bd3:	44 8d 47 02                                     	lea    r8d,[rdi+0x2]
    23a8d3567bd7:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    23a8d3567bdb:	48 c1 e7 07                                     	shl    rdi,0x7
    23a8d3567bdf:	48 89 bd f0 fb ff ff                            	mov    QWORD PTR [rbp-0x410],rdi
    23a8d3567be6:	48 8b 7d c0                                     	mov    rdi,QWORD PTR [rbp-0x40]
    23a8d3567bea:	48 c1 e7 07                                     	shl    rdi,0x7
    23a8d3567bee:	48 89 bd 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rdi
    23a8d3567bf5:	41 8d 7c 24 fe                                  	lea    edi,[r12-0x2]
    23a8d3567bfa:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    23a8d3567bfe:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    23a8d3567c02:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    23a8d3567c09:	48 63 7d 40                                     	movsxd rdi,DWORD PTR [rbp+0x40]
    23a8d3567c0d:	48 89 bd 00 fc ff ff                            	mov    QWORD PTR [rbp-0x400],rdi
    23a8d3567c14:	48 63 7d 38                                     	movsxd rdi,DWORD PTR [rbp+0x38]
    23a8d3567c18:	c4 e1 82 2a 5d 30                               	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp+0x30]
    23a8d3567c1e:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d3567c22:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d3567c27:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d3567c2c:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    23a8d3567c30:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    23a8d3567c34:	c5 7b 11 85 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm8
    23a8d3567c3c:	c4 62 79 18 c3                                  	vbroadcastss xmm8,xmm3
    23a8d3567c41:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    23a8d3567c48:	8d be 90 00 00 00                               	lea    edi,[rsi+0x90]
    23a8d3567c4e:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    23a8d3567c55:	8d 7e 18                                        	lea    edi,[rsi+0x18]
    23a8d3567c58:	83 cf 04                                        	or     edi,0x4
    23a8d3567c5b:	c5 7b 11 95 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm10
    23a8d3567c63:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    23a8d3567c68:	44 8d a6 60 01 00 00                            	lea    r12d,[rsi+0x160]
    23a8d3567c6f:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    23a8d3567c76:	8d be 50 01 00 00                               	lea    edi,[rsi+0x150]
    23a8d3567c7c:	c5 7b 11 9d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm11
    23a8d3567c84:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    23a8d3567c8c:	4c 89 9d 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r11
    23a8d3567c93:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    23a8d3567c9b:	c5 f8 11 ad 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm5
    23a8d3567ca3:	c5 f8 11 b5 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm6
    23a8d3567cab:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    23a8d3567cb2:	48 89 8d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rcx
    23a8d3567cb9:	48 89 95 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rdx
    23a8d3567cc0:	4c 89 8d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r9
    23a8d3567cc7:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    23a8d3567cce:	4c 89 85 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r8
    23a8d3567cd5:	c5 fb 11 95 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm2
    23a8d3567cdd:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    23a8d3567ce5:	c5 78 11 85 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm8
    23a8d3567ced:	c5 7b 11 95 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm10
    23a8d3567cf5:	4c 89 a5 f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r12
    23a8d3567cfc:	48 89 bd f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],rdi
    23a8d3567d03:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    23a8d3567d0a:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    23a8d3567d11:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    23a8d3567d18:	48 c7 85 28 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x0
    23a8d3567d23:	48 c7 85 20 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1e0],0x0
    23a8d3567d2e:	8b 7d 18                                        	mov    edi,DWORD PTR [rbp+0x18]
    23a8d3567d31:	49 8b cb                                        	mov    rcx,r11
    23a8d3567d34:	45 8b c8                                        	mov    r9d,r8d
    23a8d3567d37:	e9 24 00 00 00                                  	jmp    0x23a8d3567d60
    23a8d3567d3c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    23a8d3567d40:	48 8b c6                                        	mov    rax,rsi
    23a8d3567d43:	49 8b dc                                        	mov    rbx,r12
    23a8d3567d46:	4c 8b ff                                        	mov    r15,rdi
    23a8d3567d49:	8b fa                                           	mov    edi,edx
    23a8d3567d4b:	48 8b 95 80 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x280]
    23a8d3567d52:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    23a8d3567d59:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    23a8d3567d60:	4c 8b a5 b0 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x150]
    23a8d3567d67:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    23a8d3567d6d:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    23a8d3567d71:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3567d76:	0f 85 6c 77 00 00                               	jne    0x23a8d356f4e8
    23a8d3567d7c:	83 bd 00 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x200],0x0
    23a8d3567d83:	0f 85 22 00 00 00                               	jne    0x23a8d3567dab
    23a8d3567d89:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    23a8d3567d90:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    23a8d3567d97:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    23a8d3567d9e:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    23a8d3567da2:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    23a8d3567da6:	e9 a5 05 00 00                                  	jmp    0x23a8d3568350
    23a8d3567dab:	4e 8d 04 39                                     	lea    r8,[rcx+r15*1]
    23a8d3567daf:	4d 03 c4                                        	add    r8,r12
    23a8d3567db2:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    23a8d3567db9:	0f 8c ef 00 00 00                               	jl     0x23a8d3567eae
    23a8d3567dbf:	3b b5 40 ff ff ff                               	cmp    esi,DWORD PTR [rbp-0xc0]
    23a8d3567dc5:	0f 84 d8 00 00 00                               	je     0x23a8d3567ea3
    23a8d3567dcb:	4d 85 c0                                        	test   r8,r8
    23a8d3567dce:	0f 8c 85 5d 00 00                               	jl     0x23a8d356db59
    23a8d3567dd4:	49 3b d0                                        	cmp    rdx,r8
    23a8d3567dd7:	0f 8c 64 00 00 00                               	jl     0x23a8d3567e41
    23a8d3567ddd:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    23a8d3567de2:	0f 87 66 00 00 00                               	ja     0x23a8d3567e4e
    23a8d3567de8:	c5 78 2e ad 50 fe ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0x1b0]
    23a8d3567df0:	0f 83 4b 00 00 00                               	jae    0x23a8d3567e41
    23a8d3567df6:	4c 8b 15 18 ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffed18]        # 0x23a8d3566b15
    23a8d3567dfd:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    23a8d3567e02:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d3567e07:	0f 87 0b 00 00 00                               	ja     0x23a8d3567e18
    23a8d3567e0d:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    23a8d3567e13:	e9 21 00 00 00                                  	jmp    0x23a8d3567e39
    23a8d3567e18:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    23a8d3567e1e:	c4 41 7a 2c da                                  	vcvttss2si r11d,xmm10
    23a8d3567e23:	c4 41 02 2a db                                  	vcvtsi2ss xmm11,xmm15,r11d
    23a8d3567e28:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d3567e2d:	0f 8a ab 79 00 00                               	jp     0x23a8d356f7de
    23a8d3567e33:	0f 85 a5 79 00 00                               	jne    0x23a8d356f7de
    23a8d3567e39:	45 03 d9                                        	add    r11d,r9d
    23a8d3567e3c:	e9 11 00 00 00                                  	jmp    0x23a8d3567e52
    23a8d3567e41:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    23a8d3567e45:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    23a8d3567e49:	e9 21 01 00 00                                  	jmp    0x23a8d3567f6f
    23a8d3567e4e:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    23a8d3567e52:	8b 4d 20                                        	mov    ecx,DWORD PTR [rbp+0x20]
    23a8d3567e55:	41 3b cb                                        	cmp    ecx,r11d
    23a8d3567e58:	0f 8e 32 00 00 00                               	jle    0x23a8d3567e90
    23a8d3567e5e:	45 8b e3                                        	mov    r12d,r11d
    23a8d3567e61:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    23a8d3567e65:	4d 63 e4                                        	movsxd r12,r12d
    23a8d3567e68:	4c 0f af a5 e8 fd ff ff                         	imul   r12,QWORD PTR [rbp-0x218]
    23a8d3567e70:	4d 03 c4                                        	add    r8,r12
    23a8d3567e73:	44 8b e1                                        	mov    r12d,ecx
    23a8d3567e76:	4d 85 c0                                        	test   r8,r8
    23a8d3567e79:	45 0f 4c e3                                     	cmovl  r12d,r11d
    23a8d3567e7d:	45 8b c4                                        	mov    r8d,r12d
    23a8d3567e80:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    23a8d3567e84:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    23a8d3567e8b:	e9 df 00 00 00                                  	jmp    0x23a8d3567f6f
    23a8d3567e90:	44 8b c1                                        	mov    r8d,ecx
    23a8d3567e93:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    23a8d3567e97:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    23a8d3567e9e:	e9 cc 00 00 00                                  	jmp    0x23a8d3567f6f
    23a8d3567ea3:	4d 85 c0                                        	test   r8,r8
    23a8d3567ea6:	0f 8c ad 5c 00 00                               	jl     0x23a8d356db59
    23a8d3567eac:	eb 93                                           	jmp    0x23a8d3567e41
    23a8d3567eae:	4c 8b 9d 48 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xb8]
    23a8d3567eb5:	4f 8d 24 03                                     	lea    r12,[r11+r8*1]
    23a8d3567eb9:	4d 85 e4                                        	test   r12,r12
    23a8d3567ebc:	0f 8c 97 5c 00 00                               	jl     0x23a8d356db59
    23a8d3567ec2:	4d 85 c0                                        	test   r8,r8
    23a8d3567ec5:	0f 8d 76 ff ff ff                               	jge    0x23a8d3567e41
    23a8d3567ecb:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    23a8d3567ed0:	0f 83 6b ff ff ff                               	jae    0x23a8d3567e41
    23a8d3567ed6:	4c 8b 15 38 ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec38]        # 0x23a8d3566b15
    23a8d3567edd:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    23a8d3567ee2:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d3567ee7:	0f 87 0b 00 00 00                               	ja     0x23a8d3567ef8
    23a8d3567eed:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    23a8d3567ef3:	e9 21 00 00 00                                  	jmp    0x23a8d3567f19
    23a8d3567ef8:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    23a8d3567efe:	c4 41 7a 2c e2                                  	vcvttss2si r12d,xmm10
    23a8d3567f03:	c4 41 02 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12d
    23a8d3567f08:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d3567f0d:	0f 8a c6 78 00 00                               	jp     0x23a8d356f7d9
    23a8d3567f13:	0f 85 c0 78 00 00                               	jne    0x23a8d356f7d9
    23a8d3567f19:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    23a8d3567f1d:	45 03 e3                                        	add    r12d,r11d
    23a8d3567f20:	c5 78 2e ad 18 ff ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0xe8]
    23a8d3567f28:	44 0f 43 65 20                                  	cmovae r12d,DWORD PTR [rbp+0x20]
    23a8d3567f2d:	45 3b e3                                        	cmp    r12d,r11d
    23a8d3567f30:	0f 8e 35 00 00 00                               	jle    0x23a8d3567f6b
    23a8d3567f36:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    23a8d3567f3c:	42 8d 0c 22                                     	lea    ecx,[rdx+r12*1]
    23a8d3567f40:	48 63 c9                                        	movsxd rcx,ecx
    23a8d3567f43:	48 0f af 8d e8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x218]
    23a8d3567f4b:	4c 03 c1                                        	add    r8,rcx
    23a8d3567f4e:	41 8b cb                                        	mov    ecx,r11d
    23a8d3567f51:	4d 85 c0                                        	test   r8,r8
    23a8d3567f54:	41 0f 4c cc                                     	cmovl  ecx,r12d
    23a8d3567f58:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    23a8d3567f5c:	44 8b d9                                        	mov    r11d,ecx
    23a8d3567f5f:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    23a8d3567f66:	e9 04 00 00 00                                  	jmp    0x23a8d3567f6f
    23a8d3567f6b:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    23a8d3567f6f:	4c 8b a5 20 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x3e0]
    23a8d3567f76:	49 8d 14 04                                     	lea    rdx,[r12+rax*1]
    23a8d3567f7a:	4c 8b a5 00 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x400]
    23a8d3567f81:	49 03 d4                                        	add    rdx,r12
    23a8d3567f84:	83 bd 30 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd0],0x0
    23a8d3567f8b:	0f 8d c5 00 00 00                               	jge    0x23a8d3568056
    23a8d3567f91:	4c 8b a5 88 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x278]
    23a8d3567f98:	49 8d 0c 14                                     	lea    rcx,[r12+rdx*1]
    23a8d3567f9c:	48 85 c9                                        	test   rcx,rcx
    23a8d3567f9f:	0f 8c b4 5b 00 00                               	jl     0x23a8d356db59
    23a8d3567fa5:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    23a8d3567fac:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    23a8d3567fb3:	48 85 d2                                        	test   rdx,rdx
    23a8d3567fb6:	0f 8d 9d 01 00 00                               	jge    0x23a8d3568159
    23a8d3567fbc:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    23a8d3567fc1:	0f 83 92 01 00 00                               	jae    0x23a8d3568159
    23a8d3567fc7:	4c 8b 15 47 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb47]        # 0x23a8d3566b15
    23a8d3567fce:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    23a8d3567fd3:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d3567fd8:	0f 87 0a 00 00 00                               	ja     0x23a8d3567fe8
    23a8d3567fde:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d3567fe3:	e9 20 00 00 00                                  	jmp    0x23a8d3568008
    23a8d3567fe8:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    23a8d3567fee:	c4 c1 7a 2c ca                                  	vcvttss2si ecx,xmm10
    23a8d3567ff3:	c5 02 2a d9                                     	vcvtsi2ss xmm11,xmm15,ecx
    23a8d3567ff7:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d3567ffc:	0f 8a d2 77 00 00                               	jp     0x23a8d356f7d4
    23a8d3568002:	0f 85 cc 77 00 00                               	jne    0x23a8d356f7d4
    23a8d3568008:	44 8b 65 10                                     	mov    r12d,DWORD PTR [rbp+0x10]
    23a8d356800c:	41 03 cc                                        	add    ecx,r12d
    23a8d356800f:	c5 78 2e b5 18 ff ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0xe8]
    23a8d3568017:	0f 43 4d 20                                     	cmovae ecx,DWORD PTR [rbp+0x20]
    23a8d356801b:	41 3b cb                                        	cmp    ecx,r11d
    23a8d356801e:	0f 8e 35 01 00 00                               	jle    0x23a8d3568159
    23a8d3568024:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    23a8d356802a:	44 8d 3c 08                                     	lea    r15d,[rax+rcx*1]
    23a8d356802e:	4d 63 ff                                        	movsxd r15,r15d
    23a8d3568031:	4c 0f af bd d8 fd ff ff                         	imul   r15,QWORD PTR [rbp-0x228]
    23a8d3568039:	4c 03 fa                                        	add    r15,rdx
    23a8d356803c:	4d 85 ff                                        	test   r15,r15
    23a8d356803f:	44 0f 4c d9                                     	cmovl  r11d,ecx
    23a8d3568043:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    23a8d356804a:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    23a8d3568051:	e9 03 01 00 00                                  	jmp    0x23a8d3568159
    23a8d3568056:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    23a8d356805c:	3b 8d 58 fe ff ff                               	cmp    ecx,DWORD PTR [rbp-0x1a8]
    23a8d3568062:	0f 84 da 00 00 00                               	je     0x23a8d3568142
    23a8d3568068:	48 85 d2                                        	test   rdx,rdx
    23a8d356806b:	0f 8c e8 5a 00 00                               	jl     0x23a8d356db59
    23a8d3568071:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    23a8d3568078:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    23a8d356807f:	48 8b 8d 28 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xd8]
    23a8d3568086:	48 3b ca                                        	cmp    rcx,rdx
    23a8d3568089:	0f 8c ca 00 00 00                               	jl     0x23a8d3568159
    23a8d356808f:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    23a8d3568094:	0f 87 67 00 00 00                               	ja     0x23a8d3568101
    23a8d356809a:	c5 78 2e b5 50 fe ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0x1b0]
    23a8d35680a2:	0f 83 b1 00 00 00                               	jae    0x23a8d3568159
    23a8d35680a8:	4c 8b 15 66 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea66]        # 0x23a8d3566b15
    23a8d35680af:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    23a8d35680b4:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35680b9:	0f 87 0b 00 00 00                               	ja     0x23a8d35680ca
    23a8d35680bf:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    23a8d35680c5:	e9 21 00 00 00                                  	jmp    0x23a8d35680eb
    23a8d35680ca:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    23a8d35680d0:	c4 41 7a 2c e2                                  	vcvttss2si r12d,xmm10
    23a8d35680d5:	c4 41 02 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12d
    23a8d35680da:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35680df:	0f 8a ea 76 00 00                               	jp     0x23a8d356f7cf
    23a8d35680e5:	0f 85 e4 76 00 00                               	jne    0x23a8d356f7cf
    23a8d35680eb:	45 03 e1                                        	add    r12d,r9d
    23a8d35680ee:	4c 89 a5 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r12
    23a8d35680f5:	4c 8b a5 00 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x400]
    23a8d35680fc:	e9 0b 00 00 00                                  	jmp    0x23a8d356810c
    23a8d3568101:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    23a8d3568105:	4c 89 95 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r10
    23a8d356810c:	44 3b 85 d8 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x128]
    23a8d3568113:	0f 8e 40 00 00 00                               	jle    0x23a8d3568159
    23a8d3568119:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    23a8d3568120:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    23a8d3568124:	4d 63 e4                                        	movsxd r12,r12d
    23a8d3568127:	4c 0f af a5 d8 fd ff ff                         	imul   r12,QWORD PTR [rbp-0x228]
    23a8d356812f:	4c 03 e2                                        	add    r12,rdx
    23a8d3568132:	4d 85 e4                                        	test   r12,r12
    23a8d3568135:	44 0f 4c 85 d8 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x128]
    23a8d356813d:	e9 17 00 00 00                                  	jmp    0x23a8d3568159
    23a8d3568142:	48 85 d2                                        	test   rdx,rdx
    23a8d3568145:	0f 8c 0e 5a 00 00                               	jl     0x23a8d356db59
    23a8d356814b:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    23a8d3568152:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    23a8d3568159:	4c 8b a5 98 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x268]
    23a8d3568160:	49 8d 14 1c                                     	lea    rdx,[r12+rbx*1]
    23a8d3568164:	48 8b 8d f8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x208]
    23a8d356816b:	48 03 d1                                        	add    rdx,rcx
    23a8d356816e:	83 bd 38 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xc8],0x0
    23a8d3568175:	0f 8d d1 00 00 00                               	jge    0x23a8d356824c
    23a8d356817b:	4c 8b a5 20 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xe0]
    23a8d3568182:	49 8d 0c 14                                     	lea    rcx,[r12+rdx*1]
    23a8d3568186:	48 85 c9                                        	test   rcx,rcx
    23a8d3568189:	0f 8c ca 59 00 00                               	jl     0x23a8d356db59
    23a8d356818f:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    23a8d3568196:	48 85 d2                                        	test   rdx,rdx
    23a8d3568199:	0f 8d b1 01 00 00                               	jge    0x23a8d3568350
    23a8d356819f:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    23a8d35681a4:	0f 83 6a 00 00 00                               	jae    0x23a8d3568214
    23a8d35681aa:	c5 78 2e a5 18 ff ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0xe8]
    23a8d35681b2:	0f 83 54 00 00 00                               	jae    0x23a8d356820c
    23a8d35681b8:	4c 8b 15 56 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe956]        # 0x23a8d3566b15
    23a8d35681bf:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    23a8d35681c4:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35681c9:	0f 87 0a 00 00 00                               	ja     0x23a8d35681d9
    23a8d35681cf:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    23a8d35681d4:	e9 20 00 00 00                                  	jmp    0x23a8d35681f9
    23a8d35681d9:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    23a8d35681df:	c4 c1 7a 2c ca                                  	vcvttss2si ecx,xmm10
    23a8d35681e4:	c5 02 2a d9                                     	vcvtsi2ss xmm11,xmm15,ecx
    23a8d35681e8:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35681ed:	0f 8a d7 75 00 00                               	jp     0x23a8d356f7ca
    23a8d35681f3:	0f 85 d1 75 00 00                               	jne    0x23a8d356f7ca
    23a8d35681f9:	44 8b 65 10                                     	mov    r12d,DWORD PTR [rbp+0x10]
    23a8d35681fd:	41 03 cc                                        	add    ecx,r12d
    23a8d3568200:	4c 8b a5 20 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xe0]
    23a8d3568207:	e9 0b 00 00 00                                  	jmp    0x23a8d3568217
    23a8d356820c:	8b 4d 20                                        	mov    ecx,DWORD PTR [rbp+0x20]
    23a8d356820f:	e9 03 00 00 00                                  	jmp    0x23a8d3568217
    23a8d3568214:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    23a8d3568217:	41 3b cb                                        	cmp    ecx,r11d
    23a8d356821a:	0f 8e 30 01 00 00                               	jle    0x23a8d3568350
    23a8d3568220:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    23a8d3568227:	41 8d 1c 0c                                     	lea    ebx,[r12+rcx*1]
    23a8d356822b:	48 63 db                                        	movsxd rbx,ebx
    23a8d356822e:	48 0f af 9d c8 fd ff ff                         	imul   rbx,QWORD PTR [rbp-0x238]
    23a8d3568236:	48 03 da                                        	add    rbx,rdx
    23a8d3568239:	48 85 db                                        	test   rbx,rbx
    23a8d356823c:	44 0f 4c d9                                     	cmovl  r11d,ecx
    23a8d3568240:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    23a8d3568247:	e9 04 01 00 00                                  	jmp    0x23a8d3568350
    23a8d356824c:	44 8b a5 58 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a8]
    23a8d3568253:	44 3b e6                                        	cmp    r12d,esi
    23a8d3568256:	0f 84 e4 00 00 00                               	je     0x23a8d3568340
    23a8d356825c:	48 85 d2                                        	test   rdx,rdx
    23a8d356825f:	0f 8c f4 58 00 00                               	jl     0x23a8d356db59
    23a8d3568265:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    23a8d356826c:	4c 8b a5 08 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xf8]
    23a8d3568273:	4c 3b e2                                        	cmp    r12,rdx
    23a8d3568276:	0f 8c d4 00 00 00                               	jl     0x23a8d3568350
    23a8d356827c:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    23a8d3568281:	0f 87 74 00 00 00                               	ja     0x23a8d35682fb
    23a8d3568287:	c5 78 2e a5 50 fe ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0x1b0]
    23a8d356828f:	0f 83 56 00 00 00                               	jae    0x23a8d35682eb
    23a8d3568295:	4c 8b 15 79 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe879]        # 0x23a8d3566b15
    23a8d356829c:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    23a8d35682a1:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d35682a6:	0f 87 0a 00 00 00                               	ja     0x23a8d35682b6
    23a8d35682ac:	be 00 00 00 80                                  	mov    esi,0x80000000
    23a8d35682b1:	e9 20 00 00 00                                  	jmp    0x23a8d35682d6
    23a8d35682b6:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    23a8d35682bc:	c4 c1 7a 2c f2                                  	vcvttss2si esi,xmm10
    23a8d35682c1:	c5 02 2a de                                     	vcvtsi2ss xmm11,xmm15,esi
    23a8d35682c5:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    23a8d35682ca:	0f 8a f5 74 00 00                               	jp     0x23a8d356f7c5
    23a8d35682d0:	0f 85 ef 74 00 00                               	jne    0x23a8d356f7c5
    23a8d35682d6:	41 03 f1                                        	add    esi,r9d
    23a8d35682d9:	48 89 b5 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],rsi
    23a8d35682e0:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    23a8d35682e6:	e9 1b 00 00 00                                  	jmp    0x23a8d3568306
    23a8d35682eb:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    23a8d35682ef:	4c 89 95 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r10
    23a8d35682f6:	e9 0b 00 00 00                                  	jmp    0x23a8d3568306
    23a8d35682fb:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    23a8d35682ff:	4c 89 95 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r10
    23a8d3568306:	44 3b 85 d8 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x128]
    23a8d356830d:	0f 8e 3d 00 00 00                               	jle    0x23a8d3568350
    23a8d3568313:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    23a8d3568319:	2b 75 10                                        	sub    esi,DWORD PTR [rbp+0x10]
    23a8d356831c:	48 63 f6                                        	movsxd rsi,esi
    23a8d356831f:	48 0f af b5 c8 fd ff ff                         	imul   rsi,QWORD PTR [rbp-0x238]
    23a8d3568327:	48 03 d6                                        	add    rdx,rsi
    23a8d356832a:	48 85 d2                                        	test   rdx,rdx
    23a8d356832d:	44 0f 4c 85 d8 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x128]
    23a8d3568335:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    23a8d356833b:	e9 10 00 00 00                                  	jmp    0x23a8d3568350
    23a8d3568340:	48 85 d2                                        	test   rdx,rdx
    23a8d3568343:	0f 8c 10 58 00 00                               	jl     0x23a8d356db59
    23a8d3568349:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    23a8d3568350:	45 3b d8                                        	cmp    r11d,r8d
    23a8d3568353:	0f 8c 24 00 00 00                               	jl     0x23a8d356837d
    23a8d3568359:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    23a8d3568360:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d3568366:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356836a:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d3568371:	4c 8b bd d8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x228]
    23a8d3568378:	e9 97 57 00 00                                  	jmp    0x23a8d356db14
    23a8d356837d:	44 8b e7                                        	mov    r12d,edi
    23a8d3568380:	41 83 cc 03                                     	or     r12d,0x3
    23a8d3568384:	8b d7                                           	mov    edx,edi
    23a8d3568386:	81 e2 fc ff ff 1f                               	and    edx,0x1ffffffc
    23a8d356838c:	8b ca                                           	mov    ecx,edx
    23a8d356838e:	83 c9 02                                        	or     ecx,0x2
    23a8d3568391:	48 89 95 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rdx
    23a8d3568398:	83 ca 01                                        	or     edx,0x1
    23a8d356839b:	4c 89 85 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r8
    23a8d35683a2:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
    23a8d35683aa:	4c 89 a5 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r12
    23a8d35683b1:	45 8b e0                                        	mov    r12d,r8d
    23a8d35683b4:	41 83 e4 0c                                     	and    r12d,0xc
    23a8d35683b8:	41 83 e0 7c                                     	and    r8d,0x7c
    23a8d35683bc:	4c 89 85 e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],r8
    23a8d35683c3:	45 8b c3                                        	mov    r8d,r11d
    23a8d35683c6:	44 2b 45 10                                     	sub    r8d,DWORD PTR [rbp+0x10]
    23a8d35683ca:	4d 63 c0                                        	movsxd r8,r8d
    23a8d35683cd:	49 c1 e0 08                                     	shl    r8,0x8
    23a8d35683d1:	48 8b b5 90 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x270]
    23a8d35683d8:	49 0f af f0                                     	imul   rsi,r8
    23a8d35683dc:	49 03 f7                                        	add    rsi,r15
    23a8d35683df:	4c 8b bd b8 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x148]
    23a8d35683e6:	4d 0f af f8                                     	imul   r15,r8
    23a8d35683ea:	4c 03 f8                                        	add    r15,rax
    23a8d35683ed:	48 8b 85 48 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2b8]
    23a8d35683f4:	49 0f af c0                                     	imul   rax,r8
    23a8d35683f8:	4c 8b c3                                        	mov    r8,rbx
    23a8d35683fb:	49 03 c0                                        	add    rax,r8
    23a8d35683fe:	8b df                                           	mov    ebx,edi
    23a8d3568400:	c1 fb 02                                        	sar    ebx,0x2
    23a8d3568403:	c1 e3 04                                        	shl    ebx,0x4
    23a8d3568406:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    23a8d356840b:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    23a8d3568410:	c5 7b 11 b5 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm14
    23a8d3568418:	48 89 8d 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],rcx
    23a8d356841f:	48 89 95 f8 fb ff ff                            	mov    QWORD PTR [rbp-0x408],rdx
    23a8d3568426:	4c 89 a5 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],r12
    23a8d356842d:	48 89 9d 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rbx
    23a8d3568434:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d356843a:	e9 07 00 00 00                                  	jmp    0x23a8d3568446
    23a8d356843f:	90                                              	nop
    23a8d3568440:	49 8b c4                                        	mov    rax,r12
    23a8d3568443:	4c 8b fb                                        	mov    r15,rbx
    23a8d3568446:	48 8b bd f8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x208]
    23a8d356844d:	48 8b 8d 20 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3e0]
    23a8d3568454:	48 8b 9d 00 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x400]
    23a8d356845b:	4c 8b 85 38 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x2c8]
    23a8d3568462:	4c 8b 8d b0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x150]
    23a8d3568469:	48 89 85 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rax
    23a8d3568470:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3568475:	0f 85 27 71 00 00                               	jne    0x23a8d356f5a2
    23a8d356847b:	83 bd 40 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2c0],0x0
    23a8d3568482:	0f 85 6b 00 00 00                               	jne    0x23a8d35684f3
    23a8d3568488:	45 8b e7                                        	mov    r12d,r15d
    23a8d356848b:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    23a8d3568490:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d3568495:	c5 29 fe d6                                     	vpaddd xmm10,xmm10,xmm6
    23a8d3568499:	44 8b e6                                        	mov    r12d,esi
    23a8d356849c:	c4 41 79 6e dc                                  	vmovd  xmm11,r12d
    23a8d35684a1:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d35684a6:	c5 21 fe dd                                     	vpaddd xmm11,xmm11,xmm5
    23a8d35684aa:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    23a8d35684af:	44 8b e0                                        	mov    r12d,eax
    23a8d35684b2:	c4 41 79 6e dc                                  	vmovd  xmm11,r12d
    23a8d35684b7:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d35684bc:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    23a8d35684c0:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    23a8d35684c5:	c4 41 78 50 e2                                  	vmovmskps r12d,xmm10
    23a8d35684ca:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    23a8d35684ce:	41 83 e4 03                                     	and    r12d,0x3
    23a8d35684d2:	45 85 e4                                        	test   r12d,r12d
    23a8d35684d5:	0f 85 0c 00 00 00                               	jne    0x23a8d35684e7
    23a8d35684db:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35684de:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d35684e2:	e9 d4 55 00 00                                  	jmp    0x23a8d356dabb
    23a8d35684e7:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d35684eb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35684ee:	e9 50 01 00 00                                  	jmp    0x23a8d3568643
    23a8d35684f3:	4d 8d 24 31                                     	lea    r12,[r9+rsi*1]
    23a8d35684f7:	4f 8d 0c 20                                     	lea    r9,[r8+r12*1]
    23a8d35684fb:	4d 85 c9                                        	test   r9,r9
    23a8d35684fe:	0f 8c b0 55 00 00                               	jl     0x23a8d356dab4
    23a8d3568504:	4e 8d 0c 3b                                     	lea    r9,[rbx+r15*1]
    23a8d3568508:	4a 8d 1c 09                                     	lea    rbx,[rcx+r9*1]
    23a8d356850c:	48 85 db                                        	test   rbx,rbx
    23a8d356850f:	0f 8c 9f 55 00 00                               	jl     0x23a8d356dab4
    23a8d3568515:	48 8d 1c 07                                     	lea    rbx,[rdi+rax*1]
    23a8d3568519:	48 8b 85 98 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x268]
    23a8d3568520:	48 8d 3c 18                                     	lea    rdi,[rax+rbx*1]
    23a8d3568524:	48 85 ff                                        	test   rdi,rdi
    23a8d3568527:	0f 8c 87 55 00 00                               	jl     0x23a8d356dab4
    23a8d356852d:	48 8b bd 50 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x3b0]
    23a8d3568534:	4a 8d 04 27                                     	lea    rax,[rdi+r12*1]
    23a8d3568538:	48 85 c0                                        	test   rax,rax
    23a8d356853b:	0f 8c 48 00 00 00                               	jl     0x23a8d3568589
    23a8d3568541:	48 8b 85 78 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x388]
    23a8d3568548:	4a 8d 3c 08                                     	lea    rdi,[rax+r9*1]
    23a8d356854c:	48 85 ff                                        	test   rdi,rdi
    23a8d356854f:	0f 8c 34 00 00 00                               	jl     0x23a8d3568589
    23a8d3568555:	48 8b bd 98 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x368]
    23a8d356855c:	48 8d 04 1f                                     	lea    rax,[rdi+rbx*1]
    23a8d3568560:	48 85 c0                                        	test   rax,rax
    23a8d3568563:	0f 8c 20 00 00 00                               	jl     0x23a8d3568589
    23a8d3568569:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    23a8d3568570:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    23a8d3568577:	41 bc 03 00 00 00                               	mov    r12d,0x3
    23a8d356857d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3568580:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d3568584:	e9 e2 00 00 00                                  	jmp    0x23a8d356866b
    23a8d3568589:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356858c:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d3568590:	4c 8b 84 38 d0 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd0]
    23a8d3568598:	4d 03 c4                                        	add    r8,r12
    23a8d356859b:	4d 85 c0                                        	test   r8,r8
    23a8d356859e:	0f 8c 2f 00 00 00                               	jl     0x23a8d35685d3
    23a8d35685a4:	4c 8b 84 38 d8 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd8]
    23a8d35685ac:	4d 03 c1                                        	add    r8,r9
    23a8d35685af:	4d 85 c0                                        	test   r8,r8
    23a8d35685b2:	0f 8c 1b 00 00 00                               	jl     0x23a8d35685d3
    23a8d35685b8:	4c 8b 84 38 e0 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xe0]
    23a8d35685c0:	4c 03 c3                                        	add    r8,rbx
    23a8d35685c3:	4d 85 c0                                        	test   r8,r8
    23a8d35685c6:	41 0f 9d c0                                     	setge  r8b
    23a8d35685ca:	45 0f b6 c0                                     	movzx  r8d,r8b
    23a8d35685ce:	e9 03 00 00 00                                  	jmp    0x23a8d35685d6
    23a8d35685d3:	45 33 c0                                        	xor    r8d,r8d
    23a8d35685d6:	48 8b 8c 38 e8 00 00 00                         	mov    rcx,QWORD PTR [rax+rdi*1+0xe8]
    23a8d35685de:	4c 03 e1                                        	add    r12,rcx
    23a8d35685e1:	4d 85 e4                                        	test   r12,r12
    23a8d35685e4:	0f 8c 4f 00 00 00                               	jl     0x23a8d3568639
    23a8d35685ea:	4c 8b a4 38 f0 00 00 00                         	mov    r12,QWORD PTR [rax+rdi*1+0xf0]
    23a8d35685f2:	4d 03 e1                                        	add    r12,r9
    23a8d35685f5:	4d 85 e4                                        	test   r12,r12
    23a8d35685f8:	0f 8c 31 00 00 00                               	jl     0x23a8d356862f
    23a8d35685fe:	4c 8b a4 38 f8 00 00 00                         	mov    r12,QWORD PTR [rax+rdi*1+0xf8]
    23a8d3568606:	4c 03 e3                                        	add    r12,rbx
    23a8d3568609:	4d 85 e4                                        	test   r12,r12
    23a8d356860c:	0f 8c 0c 00 00 00                               	jl     0x23a8d356861e
    23a8d3568612:	41 83 c8 02                                     	or     r8d,0x2
    23a8d3568616:	45 8b e0                                        	mov    r12d,r8d
    23a8d3568619:	e9 25 00 00 00                                  	jmp    0x23a8d3568643
    23a8d356861e:	45 85 c0                                        	test   r8d,r8d
    23a8d3568621:	0f 84 94 54 00 00                               	je     0x23a8d356dabb
    23a8d3568627:	45 8b e0                                        	mov    r12d,r8d
    23a8d356862a:	e9 14 00 00 00                                  	jmp    0x23a8d3568643
    23a8d356862f:	45 85 c0                                        	test   r8d,r8d
    23a8d3568632:	75 f3                                           	jne    0x23a8d3568627
    23a8d3568634:	e9 82 54 00 00                                  	jmp    0x23a8d356dabb
    23a8d3568639:	45 85 c0                                        	test   r8d,r8d
    23a8d356863c:	75 e9                                           	jne    0x23a8d3568627
    23a8d356863e:	e9 78 54 00 00                                  	jmp    0x23a8d356dabb
    23a8d3568643:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    23a8d356864a:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    23a8d3568651:	41 f6 c4 01                                     	test   r12b,0x1
    23a8d3568655:	0f 85 10 00 00 00                               	jne    0x23a8d356866b
    23a8d356865b:	4c 8b 85 e8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x118]
    23a8d3568662:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    23a8d3568666:	e9 5a 02 00 00                                  	jmp    0x23a8d35688c5
    23a8d356866b:	4c 8b 84 38 d0 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd0]
    23a8d3568673:	4c 03 c6                                        	add    r8,rsi
    23a8d3568676:	c4 41 82 2a d0                                  	vcvtsi2ss xmm10,xmm15,r8
    23a8d356867b:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    23a8d3568680:	c4 41 5a 5c da                                  	vsubss xmm11,xmm4,xmm10
    23a8d3568685:	4c 8b 84 38 d8 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd8]
    23a8d356868d:	4d 03 c7                                        	add    r8,r15
    23a8d3568690:	c4 c1 82 2a c0                                  	vcvtsi2ss xmm0,xmm15,r8
    23a8d3568695:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    23a8d3568699:	c5 22 5c d8                                     	vsubss xmm11,xmm11,xmm0
    23a8d356869d:	4c 8b 85 e8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x118]
    23a8d35686a4:	c4 21 22 59 5c 00 18                            	vmulss xmm11,xmm11,DWORD PTR [rax+r8*1+0x18]
    23a8d35686ab:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    23a8d35686b2:	c5 2a 59 54 18 18                               	vmulss xmm10,xmm10,DWORD PTR [rax+rbx*1+0x18]
    23a8d35686b8:	4c 8b 8d f8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x108]
    23a8d35686bf:	c4 a1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [rax+r9*1+0x18]
    23a8d35686c6:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    23a8d35686ca:	c5 aa 58 c0                                     	vaddss xmm0,xmm10,xmm0
    23a8d35686ce:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    23a8d35686d2:	c5 fa 58 85 b8 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x248]
    23a8d35686da:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    23a8d35686de:	0f 87 09 00 00 00                               	ja     0x23a8d35686ed
    23a8d35686e4:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d35686e8:	e9 04 00 00 00                                  	jmp    0x23a8d35686f1
    23a8d35686ed:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    23a8d35686f1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d35686f5:	0f 87 09 00 00 00                               	ja     0x23a8d3568704
    23a8d35686fb:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    23a8d35686ff:	e9 04 00 00 00                                  	jmp    0x23a8d3568708
    23a8d3568704:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d3568708:	c5 fa 11 04 38                                  	vmovss DWORD PTR [rax+rdi*1],xmm0
    23a8d356870d:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    23a8d3568711:	44 8b 4c 08 68                                  	mov    r9d,DWORD PTR [rax+rcx*1+0x68]
    23a8d3568716:	83 7c 08 68 00                                  	cmp    DWORD PTR [rax+rcx*1+0x68],0x0
    23a8d356871b:	0f 84 a4 01 00 00                               	je     0x23a8d35688c5
    23a8d3568721:	44 8b 8c 08 a4 00 00 00                         	mov    r9d,DWORD PTR [rax+rcx*1+0xa4]
    23a8d3568729:	83 bc 08 a4 00 00 00 00                         	cmp    DWORD PTR [rax+rcx*1+0xa4],0x0
    23a8d3568731:	0f 85 8e 01 00 00                               	jne    0x23a8d35688c5
    23a8d3568737:	44 8b 4c 08 1c                                  	mov    r9d,DWORD PTR [rax+rcx*1+0x1c]
    23a8d356873c:	8b 1c 08                                        	mov    ebx,DWORD PTR [rax+rcx*1]
    23a8d356873f:	0f af 5d d0                                     	imul   ebx,DWORD PTR [rbp-0x30]
    23a8d3568743:	41 03 db                                        	add    ebx,r11d
    23a8d3568746:	41 8d 1c d9                                     	lea    ebx,[r9+rbx*8]
    23a8d356874a:	c5 fa 10 2c 18                                  	vmovss xmm5,DWORD PTR [rax+rbx*1]
    23a8d356874f:	8b 5c 08 6c                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x6c]
    23a8d3568753:	81 eb 00 02 00 00                               	sub    ebx,0x200
    23a8d3568759:	83 fb 08                                        	cmp    ebx,0x8
    23a8d356875c:	0f 83 0b 00 00 00                               	jae    0x23a8d356876d
    23a8d3568762:	4c 8d 15 df 70 00 00                            	lea    r10,[rip+0x70df]        # 0x23a8d356f848
    23a8d3568769:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    23a8d356876d:	33 db                                           	xor    ebx,ebx
    23a8d356876f:	85 d2                                           	test   edx,edx
    23a8d3568771:	0f 95 c3                                        	setne  bl
    23a8d3568774:	33 d2                                           	xor    edx,edx
    23a8d3568776:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d356877a:	0f 93 c2                                        	setae  dl
    23a8d356877d:	0b d3                                           	or     edx,ebx
    23a8d356877f:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568783:	0f 87 15 01 00 00                               	ja     0x23a8d356889e
    23a8d3568789:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    23a8d356878e:	e9 2c 01 00 00                                  	jmp    0x23a8d35688bf
    23a8d3568793:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3568798:	e9 01 01 00 00                                  	jmp    0x23a8d356889e
    23a8d356879d:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    23a8d35687a1:	7b 04                                           	jnp    0x23a8d35687a7
    23a8d35687a3:	33 db                                           	xor    ebx,ebx
    23a8d35687a5:	eb 06                                           	jmp    0x23a8d35687ad
    23a8d35687a7:	0f 94 c3                                        	sete   bl
    23a8d35687aa:	0f b6 db                                        	movzx  ebx,bl
    23a8d35687ad:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    23a8d35687b1:	7b 05                                           	jnp    0x23a8d35687b8
    23a8d35687b3:	45 33 c9                                        	xor    r9d,r9d
    23a8d35687b6:	eb 08                                           	jmp    0x23a8d35687c0
    23a8d35687b8:	41 0f 94 c1                                     	sete   r9b
    23a8d35687bc:	45 0f b6 c9                                     	movzx  r9d,r9b
    23a8d35687c0:	44 23 cb                                        	and    r9d,ebx
    23a8d35687c3:	33 db                                           	xor    ebx,ebx
    23a8d35687c5:	85 d2                                           	test   edx,edx
    23a8d35687c7:	0f 95 c3                                        	setne  bl
    23a8d35687ca:	41 0b d9                                        	or     ebx,r9d
    23a8d35687cd:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d35687d1:	0f 83 0c 00 00 00                               	jae    0x23a8d35687e3
    23a8d35687d7:	8b d3                                           	mov    edx,ebx
    23a8d35687d9:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    23a8d35687de:	e9 dc 00 00 00                                  	jmp    0x23a8d35688bf
    23a8d35687e3:	8b d3                                           	mov    edx,ebx
    23a8d35687e5:	e9 b4 00 00 00                                  	jmp    0x23a8d356889e
    23a8d35687ea:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d35687ee:	7a a3                                           	jp     0x23a8d3568793
    23a8d35687f0:	75 a1                                           	jne    0x23a8d3568793
    23a8d35687f2:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    23a8d35687f7:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d35687fc:	e9 be 00 00 00                                  	jmp    0x23a8d35688bf
    23a8d3568801:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    23a8d3568805:	7b 04                                           	jnp    0x23a8d356880b
    23a8d3568807:	33 db                                           	xor    ebx,ebx
    23a8d3568809:	eb 06                                           	jmp    0x23a8d3568811
    23a8d356880b:	0f 94 c3                                        	sete   bl
    23a8d356880e:	0f b6 db                                        	movzx  ebx,bl
    23a8d3568811:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    23a8d3568815:	7b 05                                           	jnp    0x23a8d356881c
    23a8d3568817:	45 33 c9                                        	xor    r9d,r9d
    23a8d356881a:	eb 08                                           	jmp    0x23a8d3568824
    23a8d356881c:	41 0f 94 c1                                     	sete   r9b
    23a8d3568820:	45 0f b6 c9                                     	movzx  r9d,r9b
    23a8d3568824:	44 23 cb                                        	and    r9d,ebx
    23a8d3568827:	33 db                                           	xor    ebx,ebx
    23a8d3568829:	85 d2                                           	test   edx,edx
    23a8d356882b:	0f 95 c3                                        	setne  bl
    23a8d356882e:	41 0b d9                                        	or     ebx,r9d
    23a8d3568831:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3568835:	77 ac                                           	ja     0x23a8d35687e3
    23a8d3568837:	eb 9e                                           	jmp    0x23a8d35687d7
    23a8d3568839:	33 db                                           	xor    ebx,ebx
    23a8d356883b:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d356883f:	0f 93 c3                                        	setae  bl
    23a8d3568842:	85 d2                                           	test   edx,edx
    23a8d3568844:	0f 95 c2                                        	setne  dl
    23a8d3568847:	0f b6 d2                                        	movzx  edx,dl
    23a8d356884a:	0b d3                                           	or     edx,ebx
    23a8d356884c:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568850:	0f 83 48 00 00 00                               	jae    0x23a8d356889e
    23a8d3568856:	e9 2e ff ff ff                                  	jmp    0x23a8d3568789
    23a8d356885b:	33 db                                           	xor    ebx,ebx
    23a8d356885d:	85 d2                                           	test   edx,edx
    23a8d356885f:	0f 95 c3                                        	setne  bl
    23a8d3568862:	33 d2                                           	xor    edx,edx
    23a8d3568864:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568868:	0f 93 c2                                        	setae  dl
    23a8d356886b:	0b d3                                           	or     edx,ebx
    23a8d356886d:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568871:	0f 8a 12 ff ff ff                               	jp     0x23a8d3568789
    23a8d3568877:	0f 84 21 00 00 00                               	je     0x23a8d356889e
    23a8d356887d:	e9 07 ff ff ff                                  	jmp    0x23a8d3568789
    23a8d3568882:	33 db                                           	xor    ebx,ebx
    23a8d3568884:	85 d2                                           	test   edx,edx
    23a8d3568886:	0f 95 c3                                        	setne  bl
    23a8d3568889:	33 d2                                           	xor    edx,edx
    23a8d356888b:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d356888f:	0f 93 c2                                        	setae  dl
    23a8d3568892:	0b d3                                           	or     edx,ebx
    23a8d3568894:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568898:	0f 86 eb fe ff ff                               	jbe    0x23a8d3568789
    23a8d356889e:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    23a8d35688a3:	e9 17 00 00 00                                  	jmp    0x23a8d35688bf
    23a8d35688a8:	33 db                                           	xor    ebx,ebx
    23a8d35688aa:	85 d2                                           	test   edx,edx
    23a8d35688ac:	0f 95 c3                                        	setne  bl
    23a8d35688af:	33 d2                                           	xor    edx,edx
    23a8d35688b1:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d35688b5:	0f 93 c2                                        	setae  dl
    23a8d35688b8:	0b d3                                           	or     edx,ebx
    23a8d35688ba:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    23a8d35688bf:	41 23 dc                                        	and    ebx,r12d
    23a8d35688c2:	44 8b e3                                        	mov    r12d,ebx
    23a8d35688c5:	41 f6 c4 02                                     	test   r12b,0x2
    23a8d35688c9:	0f 85 0e 00 00 00                               	jne    0x23a8d35688dd
    23a8d35688cf:	45 85 e4                                        	test   r12d,r12d
    23a8d35688d2:	0f 85 90 02 00 00                               	jne    0x23a8d3568b68
    23a8d35688d8:	e9 70 02 00 00                                  	jmp    0x23a8d3568b4d
    23a8d35688dd:	48 8b 9c 38 e8 00 00 00                         	mov    rbx,QWORD PTR [rax+rdi*1+0xe8]
    23a8d35688e5:	48 03 de                                        	add    rbx,rsi
    23a8d35688e8:	c4 e1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,rbx
    23a8d35688ed:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    23a8d35688f1:	c5 da 5c e8                                     	vsubss xmm5,xmm4,xmm0
    23a8d35688f5:	48 8b 9c 38 f0 00 00 00                         	mov    rbx,QWORD PTR [rax+rdi*1+0xf0]
    23a8d35688fd:	49 03 df                                        	add    rbx,r15
    23a8d3568900:	c4 61 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,rbx
    23a8d3568905:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    23a8d356890a:	c4 c1 52 5c ea                                  	vsubss xmm5,xmm5,xmm10
    23a8d356890f:	c4 a1 52 59 6c 00 18                            	vmulss xmm5,xmm5,DWORD PTR [rax+r8*1+0x18]
    23a8d3568916:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    23a8d356891d:	c5 fa 59 44 18 18                               	vmulss xmm0,xmm0,DWORD PTR [rax+rbx*1+0x18]
    23a8d3568923:	4c 8b 8d f8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x108]
    23a8d356892a:	c4 21 7a 10 5c 08 18                            	vmovss xmm11,DWORD PTR [rax+r9*1+0x18]
    23a8d3568931:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    23a8d3568936:	c4 c1 7a 58 c2                                  	vaddss xmm0,xmm0,xmm10
    23a8d356893b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    23a8d356893f:	c5 fa 58 85 b8 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x248]
    23a8d3568947:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    23a8d356894b:	0f 87 09 00 00 00                               	ja     0x23a8d356895a
    23a8d3568951:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d3568955:	e9 04 00 00 00                                  	jmp    0x23a8d356895e
    23a8d356895a:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    23a8d356895e:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d3568962:	0f 87 09 00 00 00                               	ja     0x23a8d3568971
    23a8d3568968:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    23a8d356896c:	e9 04 00 00 00                                  	jmp    0x23a8d3568975
    23a8d3568971:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d3568975:	c5 fa 11 44 38 04                               	vmovss DWORD PTR [rax+rdi*1+0x4],xmm0
    23a8d356897b:	8b 5c 08 68                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x68]
    23a8d356897f:	83 7c 08 68 00                                  	cmp    DWORD PTR [rax+rcx*1+0x68],0x0
    23a8d3568984:	0f 84 e5 01 00 00                               	je     0x23a8d3568b6f
    23a8d356898a:	8b 9c 08 a4 00 00 00                            	mov    ebx,DWORD PTR [rax+rcx*1+0xa4]
    23a8d3568991:	83 bc 08 a4 00 00 00 00                         	cmp    DWORD PTR [rax+rcx*1+0xa4],0x0
    23a8d3568999:	0f 85 d0 01 00 00                               	jne    0x23a8d3568b6f
    23a8d356899f:	8b 5c 08 1c                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x1c]
    23a8d35689a3:	44 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+rcx*1]
    23a8d35689a7:	44 0f af 4d d0                                  	imul   r9d,DWORD PTR [rbp-0x30]
    23a8d35689ac:	45 03 cb                                        	add    r9d,r11d
    23a8d35689af:	42 8d 1c cb                                     	lea    ebx,[rbx+r9*8]
    23a8d35689b3:	c5 fa 10 6c 18 04                               	vmovss xmm5,DWORD PTR [rax+rbx*1+0x4]
    23a8d35689b9:	8b 5c 08 6c                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x6c]
    23a8d35689bd:	81 eb 00 02 00 00                               	sub    ebx,0x200
    23a8d35689c3:	83 fb 08                                        	cmp    ebx,0x8
    23a8d35689c6:	0f 83 0b 00 00 00                               	jae    0x23a8d35689d7
    23a8d35689cc:	4c 8d 15 35 6e 00 00                            	lea    r10,[rip+0x6e35]        # 0x23a8d356f808
    23a8d35689d3:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    23a8d35689d7:	33 db                                           	xor    ebx,ebx
    23a8d35689d9:	85 d2                                           	test   edx,edx
    23a8d35689db:	0f 95 c3                                        	setne  bl
    23a8d35689de:	33 d2                                           	xor    edx,edx
    23a8d35689e0:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d35689e4:	0f 93 c2                                        	setae  dl
    23a8d35689e7:	0b d3                                           	or     edx,ebx
    23a8d35689e9:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d35689ed:	0f 87 2e 01 00 00                               	ja     0x23a8d3568b21
    23a8d35689f3:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d35689f8:	e9 45 01 00 00                                  	jmp    0x23a8d3568b42
    23a8d35689fd:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3568a02:	e9 1a 01 00 00                                  	jmp    0x23a8d3568b21
    23a8d3568a07:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    23a8d3568a0b:	7b 04                                           	jnp    0x23a8d3568a11
    23a8d3568a0d:	33 db                                           	xor    ebx,ebx
    23a8d3568a0f:	eb 06                                           	jmp    0x23a8d3568a17
    23a8d3568a11:	0f 94 c3                                        	sete   bl
    23a8d3568a14:	0f b6 db                                        	movzx  ebx,bl
    23a8d3568a17:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    23a8d3568a1b:	7b 05                                           	jnp    0x23a8d3568a22
    23a8d3568a1d:	45 33 c9                                        	xor    r9d,r9d
    23a8d3568a20:	eb 08                                           	jmp    0x23a8d3568a2a
    23a8d3568a22:	41 0f 94 c1                                     	sete   r9b
    23a8d3568a26:	45 0f b6 c9                                     	movzx  r9d,r9b
    23a8d3568a2a:	44 23 cb                                        	and    r9d,ebx
    23a8d3568a2d:	33 db                                           	xor    ebx,ebx
    23a8d3568a2f:	85 d2                                           	test   edx,edx
    23a8d3568a31:	0f 95 c3                                        	setne  bl
    23a8d3568a34:	41 0b d9                                        	or     ebx,r9d
    23a8d3568a37:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3568a3b:	0f 83 0c 00 00 00                               	jae    0x23a8d3568a4d
    23a8d3568a41:	8b d3                                           	mov    edx,ebx
    23a8d3568a43:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568a48:	e9 f5 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568a4d:	8b d3                                           	mov    edx,ebx
    23a8d3568a4f:	e9 cd 00 00 00                                  	jmp    0x23a8d3568b21
    23a8d3568a54:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568a58:	7a a3                                           	jp     0x23a8d35689fd
    23a8d3568a5a:	75 a1                                           	jne    0x23a8d35689fd
    23a8d3568a5c:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568a61:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3568a66:	e9 d7 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568a6b:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    23a8d3568a6f:	7b 04                                           	jnp    0x23a8d3568a75
    23a8d3568a71:	33 db                                           	xor    ebx,ebx
    23a8d3568a73:	eb 06                                           	jmp    0x23a8d3568a7b
    23a8d3568a75:	0f 94 c3                                        	sete   bl
    23a8d3568a78:	0f b6 db                                        	movzx  ebx,bl
    23a8d3568a7b:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    23a8d3568a7f:	7b 05                                           	jnp    0x23a8d3568a86
    23a8d3568a81:	45 33 c9                                        	xor    r9d,r9d
    23a8d3568a84:	eb 08                                           	jmp    0x23a8d3568a8e
    23a8d3568a86:	41 0f 94 c1                                     	sete   r9b
    23a8d3568a8a:	45 0f b6 c9                                     	movzx  r9d,r9b
    23a8d3568a8e:	44 23 cb                                        	and    r9d,ebx
    23a8d3568a91:	33 db                                           	xor    ebx,ebx
    23a8d3568a93:	85 d2                                           	test   edx,edx
    23a8d3568a95:	0f 95 c3                                        	setne  bl
    23a8d3568a98:	41 0b d9                                        	or     ebx,r9d
    23a8d3568a9b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3568a9f:	77 ac                                           	ja     0x23a8d3568a4d
    23a8d3568aa1:	8b d3                                           	mov    edx,ebx
    23a8d3568aa3:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568aa8:	e9 95 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568aad:	33 db                                           	xor    ebx,ebx
    23a8d3568aaf:	85 d2                                           	test   edx,edx
    23a8d3568ab1:	0f 95 c3                                        	setne  bl
    23a8d3568ab4:	33 d2                                           	xor    edx,edx
    23a8d3568ab6:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568aba:	0f 93 c2                                        	setae  dl
    23a8d3568abd:	0b d3                                           	or     edx,ebx
    23a8d3568abf:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568ac3:	0f 83 58 00 00 00                               	jae    0x23a8d3568b21
    23a8d3568ac9:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568ace:	e9 6f 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568ad3:	33 db                                           	xor    ebx,ebx
    23a8d3568ad5:	85 d2                                           	test   edx,edx
    23a8d3568ad7:	0f 95 c3                                        	setne  bl
    23a8d3568ada:	33 d2                                           	xor    edx,edx
    23a8d3568adc:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568ae0:	0f 93 c2                                        	setae  dl
    23a8d3568ae3:	0b d3                                           	or     edx,ebx
    23a8d3568ae5:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568ae9:	7a 06                                           	jp     0x23a8d3568af1
    23a8d3568aeb:	0f 84 30 00 00 00                               	je     0x23a8d3568b21
    23a8d3568af1:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568af6:	e9 47 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568afb:	33 db                                           	xor    ebx,ebx
    23a8d3568afd:	85 d2                                           	test   edx,edx
    23a8d3568aff:	0f 95 c3                                        	setne  bl
    23a8d3568b02:	33 d2                                           	xor    edx,edx
    23a8d3568b04:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568b08:	0f 93 c2                                        	setae  dl
    23a8d3568b0b:	0b d3                                           	or     edx,ebx
    23a8d3568b0d:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568b11:	0f 87 0a 00 00 00                               	ja     0x23a8d3568b21
    23a8d3568b17:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568b1c:	e9 21 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568b21:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    23a8d3568b26:	e9 17 00 00 00                                  	jmp    0x23a8d3568b42
    23a8d3568b2b:	33 db                                           	xor    ebx,ebx
    23a8d3568b2d:	85 d2                                           	test   edx,edx
    23a8d3568b2f:	0f 95 c3                                        	setne  bl
    23a8d3568b32:	33 d2                                           	xor    edx,edx
    23a8d3568b34:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3568b38:	0f 93 c2                                        	setae  dl
    23a8d3568b3b:	0b d3                                           	or     edx,ebx
    23a8d3568b3d:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    23a8d3568b42:	41 23 dc                                        	and    ebx,r12d
    23a8d3568b45:	85 db                                           	test   ebx,ebx
    23a8d3568b47:	0f 85 18 00 00 00                               	jne    0x23a8d3568b65
    23a8d3568b4d:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    23a8d3568b54:	44 8b cf                                        	mov    r9d,edi
    23a8d3568b57:	48 8b f8                                        	mov    rdi,rax
    23a8d3568b5a:	4c 8b c1                                        	mov    r8,rcx
    23a8d3568b5d:	41 8b d3                                        	mov    edx,r11d
    23a8d3568b60:	e9 a5 14 00 00                                  	jmp    0x23a8d356a00a
    23a8d3568b65:	44 8b e3                                        	mov    r12d,ebx
    23a8d3568b68:	4c 8b 8d f8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x108]
    23a8d3568b6f:	4c 89 9d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r11
    23a8d3568b76:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    23a8d3568b7d:	41 83 fc 03                                     	cmp    r12d,0x3
    23a8d3568b81:	0f 84 29 00 00 00                               	je     0x23a8d3568bb0
    23a8d3568b87:	8d 9f d0 00 00 00                               	lea    ebx,[rdi+0xd0]
    23a8d3568b8d:	f3 45 0f bc dc                                  	tzcnt  r11d,r12d
    23a8d3568b92:	45 6b db 18                                     	imul   r11d,r11d,0x18
    23a8d3568b96:	44 03 db                                        	add    r11d,ebx
    23a8d3568b99:	4a 8b 5c 18 08                                  	mov    rbx,QWORD PTR [rax+r11*1+0x8]
    23a8d3568b9e:	4e 8b 1c 18                                     	mov    r11,QWORD PTR [rax+r11*1]
    23a8d3568ba2:	4d 8b d3                                        	mov    r10,r11
    23a8d3568ba5:	4c 8b db                                        	mov    r11,rbx
    23a8d3568ba8:	49 8b da                                        	mov    rbx,r10
    23a8d3568bab:	e9 0e 00 00 00                                  	jmp    0x23a8d3568bbe
    23a8d3568bb0:	4c 8b 9d f0 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x410]
    23a8d3568bb7:	48 8b 9d 30 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2d0]
    23a8d3568bbe:	4d 03 df                                        	add    r11,r15
    23a8d3568bc1:	48 03 de                                        	add    rbx,rsi
    23a8d3568bc4:	83 bd 18 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e8],0x0
    23a8d3568bcb:	0f 85 98 14 00 00                               	jne    0x23a8d356a069
    23a8d3568bd1:	c4 a1 7a 10 44 00 1c                            	vmovss xmm0,DWORD PTR [rax+r8*1+0x1c]
    23a8d3568bd8:	c4 a1 7a 10 6c 08 1c                            	vmovss xmm5,DWORD PTR [rax+r9*1+0x1c]
    23a8d3568bdf:	4c 89 a5 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r12
    23a8d3568be6:	4c 8b a5 f0 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x110]
    23a8d3568bed:	c4 21 7a 10 54 20 1c                            	vmovss xmm10,DWORD PTR [rax+r12*1+0x1c]
    23a8d3568bf4:	44 8b bc 08 c8 3c 00 00                         	mov    r15d,DWORD PTR [rax+rcx*1+0x3cc8]
    23a8d3568bfc:	83 bc 08 c8 3c 00 00 00                         	cmp    DWORD PTR [rax+rcx*1+0x3cc8],0x0
    23a8d3568c04:	0f 84 65 00 00 00                               	je     0x23a8d3568c6f
    23a8d3568c0a:	44 8b bd f0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x210]
    23a8d3568c11:	41 c1 ef 03                                     	shr    r15d,0x3
    23a8d3568c15:	41 83 e7 03                                     	and    r15d,0x3
    23a8d3568c19:	8b 95 e8 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x318]
    23a8d3568c1f:	41 0b d7                                        	or     edx,r15d
    23a8d3568c22:	44 8b bd 70 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x190]
    23a8d3568c29:	41 03 d7                                        	add    edx,r15d
    23a8d3568c2c:	0f b6 14 10                                     	movzx  edx,BYTE PTR [rax+rdx*1]
    23a8d3568c30:	44 8b bd f0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x210]
    23a8d3568c37:	41 83 e7 07                                     	and    r15d,0x7
    23a8d3568c3b:	41 8b cf                                        	mov    ecx,r15d
    23a8d3568c3e:	d3 e2                                           	shl    edx,cl
    23a8d3568c40:	44 8b bd 28 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3d8]
    23a8d3568c47:	f6 c2 80                                        	test   dl,0x80
    23a8d3568c4a:	0f 85 15 00 00 00                               	jne    0x23a8d3568c65
    23a8d3568c50:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d3568c56:	44 8b cf                                        	mov    r9d,edi
    23a8d3568c59:	48 8b f8                                        	mov    rdi,rax
    23a8d3568c5c:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d3568c60:	e9 a5 13 00 00                                  	jmp    0x23a8d356a00a
    23a8d3568c65:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    23a8d3568c69:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d3568c6f:	c4 61 82 2a db                                  	vcvtsi2ss xmm11,xmm15,rbx
    23a8d3568c74:	c4 41 62 59 db                                  	vmulss xmm11,xmm3,xmm11
    23a8d3568c79:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    23a8d3568c7e:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    23a8d3568c83:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    23a8d3568c87:	c5 ca 59 ed                                     	vmulss xmm5,xmm6,xmm5
    23a8d3568c8b:	c5 2a 58 c5                                     	vaddss xmm8,xmm10,xmm5
    23a8d3568c8f:	c4 41 5a 5c db                                  	vsubss xmm11,xmm4,xmm11
    23a8d3568c94:	c5 a2 5c f6                                     	vsubss xmm6,xmm11,xmm6
    23a8d3568c98:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d3568c9c:	c5 ba 58 f0                                     	vaddss xmm6,xmm8,xmm0
    23a8d3568ca0:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d3568ca4:	0f 83 4a 13 00 00                               	jae    0x23a8d3569ff4
    23a8d3568caa:	c5 da 5e f6                                     	vdivss xmm6,xmm4,xmm6
    23a8d3568cae:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    23a8d3568cb2:	c4 62 79 18 c6                                  	vbroadcastss xmm8,xmm6
    23a8d3568cb7:	c4 21 7a 6f 5c 00 20                            	vmovdqu xmm11,XMMWORD PTR [rax+r8*1+0x20]
    23a8d3568cbe:	c5 fb 11 b5 b0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x250],xmm6
    23a8d3568cc6:	c4 e2 79 18 f0                                  	vbroadcastss xmm6,xmm0
    23a8d3568ccb:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    23a8d3568ccf:	c4 21 7a 6f 5c 20 20                            	vmovdqu xmm11,XMMWORD PTR [rax+r12*1+0x20]
    23a8d3568cd6:	c5 fb 11 85 10 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2f0],xmm0
    23a8d3568cde:	c4 c2 79 18 c2                                  	vbroadcastss xmm0,xmm10
    23a8d3568ce3:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    23a8d3568ce7:	c4 62 79 18 dd                                  	vbroadcastss xmm11,xmm5
    23a8d3568cec:	c5 fb 11 ad 30 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3d0],xmm5
    23a8d3568cf4:	c4 a1 7a 6f 6c 08 20                            	vmovdqu xmm5,XMMWORD PTR [rax+r9*1+0x20]
    23a8d3568cfb:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    23a8d3568cff:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d3568d03:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    23a8d3568d07:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d3568d0b:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    23a8d3568d14:	c4 a1 7a 10 ac 00 98 00 00 00                   	vmovss xmm5,DWORD PTR [rax+r8*1+0x98]
    23a8d3568d1e:	c4 a1 7a 10 b4 20 98 00 00 00                   	vmovss xmm6,DWORD PTR [rax+r12*1+0x98]
    23a8d3568d28:	c4 21 7a 10 84 08 98 00 00 00                   	vmovss xmm8,DWORD PTR [rax+r9*1+0x98]
    23a8d3568d32:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    23a8d3568d3b:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    23a8d3568d42:	46 8b bc 18 34 01 00 00                         	mov    r15d,DWORD PTR [rax+r11*1+0x134]
    23a8d3568d4a:	41 8d 5f ff                                     	lea    ebx,[r15-0x1]
    23a8d3568d4e:	c5 7b 11 95 00 fd ff ff                         	vmovsd QWORD PTR [rbp-0x300],xmm10
    23a8d3568d56:	c5 fb 11 ad 70 fd ff ff                         	vmovsd QWORD PTR [rbp-0x290],xmm5
    23a8d3568d5e:	c5 fb 11 b5 80 fc ff ff                         	vmovsd QWORD PTR [rbp-0x380],xmm6
    23a8d3568d66:	c5 7b 11 85 40 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3c0],xmm8
    23a8d3568d6e:	83 fb 01                                        	cmp    ebx,0x1
    23a8d3568d71:	0f 86 b4 04 00 00                               	jbe    0x23a8d356922b
    23a8d3568d77:	46 8b bc 18 30 01 00 00                         	mov    r15d,DWORD PTR [rax+r11*1+0x130]
    23a8d3568d7f:	42 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [rax+r11*1+0x130],0x0
    23a8d3568d88:	0f 85 0b 00 00 00                               	jne    0x23a8d3568d99
    23a8d3568d8e:	44 8b cf                                        	mov    r9d,edi
    23a8d3568d91:	48 8b f8                                        	mov    rdi,rax
    23a8d3568d94:	e9 45 05 00 00                                  	jmp    0x23a8d35692de
    23a8d3568d99:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    23a8d3568da0:	8d 9f 80 02 00 00                               	lea    ebx,[rdi+0x280]
    23a8d3568da6:	53                                              	push   rbx
    23a8d3568da7:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    23a8d3568dae:	4c 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r15
    23a8d3568db5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3568db9:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d3568dbf:	8b 95 48 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b8]
    23a8d3568dc5:	8b 8d 88 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x378]
    23a8d3568dcb:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    23a8d3568dd1:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    23a8d3568dd6:	c5 fb 10 95 30 fc ff ff                         	vmovsd xmm2,QWORD PTR [rbp-0x3d0]
    23a8d3568dde:	c5 fb 10 9d 10 fd ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x2f0]
    23a8d3568de6:	c5 fb 10 a5 b0 fd ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x250]
    23a8d3568dee:	45 8b cf                                        	mov    r9d,r15d
    23a8d3568df1:	e8 22 34 ee ff                                  	call   0x23a8d344c218
    23a8d3568df6:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3568dfa:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    23a8d3568e01:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    23a8d3568e09:	45 85 c0                                        	test   r8d,r8d
    23a8d3568e0c:	0f 85 9a 01 00 00                               	jne    0x23a8d3568fac
    23a8d3568e12:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3568e16:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    23a8d3568e1e:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    23a8d3568e27:	0f 84 4b 00 00 00                               	je     0x23a8d3568e78
    23a8d3568e2d:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d3568e34:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d3568e3b:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d3568e42:	41 50                                           	push   r8
    23a8d3568e44:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3568e48:	8b 85 c0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x140]
    23a8d3568e4e:	33 d2                                           	xor    edx,edx
    23a8d3568e50:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    23a8d3568e57:	e8 e4 33 ee ff                                  	call   0x23a8d344c240
    23a8d3568e5c:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3568e60:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3568e64:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d3568e6e:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d3568e78:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    23a8d3568e80:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    23a8d3568e89:	0f 84 4e 00 00 00                               	je     0x23a8d3568edd
    23a8d3568e8f:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d3568e96:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d3568e9d:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d3568ea4:	41 50                                           	push   r8
    23a8d3568ea6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3568eaa:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    23a8d3568eb0:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3568eb5:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    23a8d3568ebc:	e8 7f 33 ee ff                                  	call   0x23a8d344c240
    23a8d3568ec1:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3568ec5:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3568ec9:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d3568ed3:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d3568edd:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    23a8d3568ee5:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    23a8d3568eee:	0f 84 4e 00 00 00                               	je     0x23a8d3568f42
    23a8d3568ef4:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d3568efb:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d3568f02:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d3568f09:	41 50                                           	push   r8
    23a8d3568f0b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3568f0f:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    23a8d3568f15:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d3568f1a:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    23a8d3568f21:	e8 1a 33 ee ff                                  	call   0x23a8d344c240
    23a8d3568f26:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3568f2a:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3568f2e:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d3568f38:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d3568f42:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    23a8d3568f4a:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    23a8d3568f53:	0f 84 85 03 00 00                               	je     0x23a8d35692de
    23a8d3568f59:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    23a8d3568f60:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    23a8d3568f67:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    23a8d3568f6e:	41 50                                           	push   r8
    23a8d3568f70:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3568f74:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    23a8d3568f7a:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d3568f7f:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    23a8d3568f86:	e8 b5 32 ee ff                                  	call   0x23a8d344c240
    23a8d3568f8b:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3568f8f:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3568f93:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    23a8d3568f9d:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d3568fa7:	e9 32 03 00 00                                  	jmp    0x23a8d35692de
    23a8d3568fac:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3568fb0:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    23a8d3568fba:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d3568fc0:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d3568fc5:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d3568fc9:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    23a8d3568fd3:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d3568fd7:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d3568fdb:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    23a8d3568fe5:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d3568fe9:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    23a8d3568ff3:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d3568ff7:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    23a8d3568ffb:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    23a8d3569005:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d3569009:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    23a8d3569013:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    23a8d3569017:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    23a8d356901b:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    23a8d356901f:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d3569023:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d3569029:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d356902e:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    23a8d3569032:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d3569036:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d356903b:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d3569040:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3569044:	0f 87 09 00 00 00                               	ja     0x23a8d3569053
    23a8d356904a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d356904e:	e9 04 00 00 00                                  	jmp    0x23a8d3569057
    23a8d3569053:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d3569057:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356905b:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d356905f:	0f 87 09 00 00 00                               	ja     0x23a8d356906e
    23a8d3569065:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d3569069:	e9 04 00 00 00                                  	jmp    0x23a8d3569072
    23a8d356906e:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d3569072:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d3569077:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d356907b:	0f 84 a3 00 00 00                               	je     0x23a8d3569124
    23a8d3569081:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d3569085:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    23a8d356908f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3569093:	0f 87 09 00 00 00                               	ja     0x23a8d35690a2
    23a8d3569099:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d356909d:	e9 04 00 00 00                                  	jmp    0x23a8d35690a6
    23a8d35690a2:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d35690a6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d35690aa:	0f 87 0a 00 00 00                               	ja     0x23a8d35690ba
    23a8d35690b0:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d35690b5:	e9 04 00 00 00                                  	jmp    0x23a8d35690be
    23a8d35690ba:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d35690be:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d35690c2:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d35690c7:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d35690cc:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d35690d0:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    23a8d35690da:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d35690df:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d35690e4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d35690e8:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d35690f2:	41 83 f8 03                                     	cmp    r8d,0x3
    23a8d35690f6:	0f 85 04 00 00 00                               	jne    0x23a8d3569100
    23a8d35690fc:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    23a8d3569100:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    23a8d3569105:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d3569109:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d356910d:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    23a8d3569117:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d356911c:	4d 8b c4                                        	mov    r8,r12
    23a8d356911f:	e9 cd 00 00 00                                  	jmp    0x23a8d35691f1
    23a8d3569124:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    23a8d356912e:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3569132:	0f 87 09 00 00 00                               	ja     0x23a8d3569141
    23a8d3569138:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d356913c:	e9 04 00 00 00                                  	jmp    0x23a8d3569145
    23a8d3569141:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d3569145:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d3569149:	0f 87 0a 00 00 00                               	ja     0x23a8d3569159
    23a8d356914f:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d3569154:	e9 04 00 00 00                                  	jmp    0x23a8d356915d
    23a8d3569159:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d356915d:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d3569167:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    23a8d356916d:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    23a8d3569172:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3569176:	0f 87 09 00 00 00                               	ja     0x23a8d3569185
    23a8d356917c:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d3569180:	e9 04 00 00 00                                  	jmp    0x23a8d3569189
    23a8d3569185:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    23a8d3569189:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d356918d:	0f 87 0a 00 00 00                               	ja     0x23a8d356919d
    23a8d3569193:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d3569198:	e9 04 00 00 00                                  	jmp    0x23a8d35691a1
    23a8d356919d:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d35691a1:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    23a8d35691ab:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d35691b0:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d35691b4:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    23a8d35691be:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    23a8d35691c3:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d35691c8:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d35691cc:	4c 8b 15 ff fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeff]        # 0x23a8d35690d2
    23a8d35691d3:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d35691d8:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d35691dd:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d35691e1:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d35691e5:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d35691e9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d35691ed:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    23a8d35691f1:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d35691f6:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d35691fa:	4c 8b 15 d1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed1]        # 0x23a8d35690d2
    23a8d3569201:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d3569206:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d356920b:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    23a8d356920f:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    23a8d3569219:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    23a8d3569223:	45 8b cb                                        	mov    r9d,r11d
    23a8d3569226:	e9 b3 00 00 00                                  	jmp    0x23a8d35692de
    23a8d356922b:	c4 a1 7a 10 44 00 50                            	vmovss xmm0,DWORD PTR [rax+r8*1+0x50]
    23a8d3569232:	c5 fa 59 85 10 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2f0]
    23a8d356923a:	4d 8b dc                                        	mov    r11,r12
    23a8d356923d:	c4 21 7a 10 4c 18 50                            	vmovss xmm9,DWORD PTR [rax+r11*1+0x50]
    23a8d3569244:	c4 41 32 59 ca                                  	vmulss xmm9,xmm9,xmm10
    23a8d3569249:	4d 8b e1                                        	mov    r12,r9
    23a8d356924c:	c5 7b 10 9d 30 fc ff ff                         	vmovsd xmm11,QWORD PTR [rbp-0x3d0]
    23a8d3569254:	c4 a1 22 59 4c 20 50                            	vmulss xmm1,xmm11,DWORD PTR [rax+r12*1+0x50]
    23a8d356925b:	c5 32 58 c9                                     	vaddss xmm9,xmm9,xmm1
    23a8d356925f:	c4 c1 7a 58 c1                                  	vaddss xmm0,xmm0,xmm9
    23a8d3569264:	c5 7b 10 8d b0 fd ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x250]
    23a8d356926c:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    23a8d3569270:	c4 a1 7a 10 44 00 54                            	vmovss xmm0,DWORD PTR [rax+r8*1+0x54]
    23a8d3569277:	c5 fa 59 85 10 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2f0]
    23a8d356927f:	c4 a1 7a 10 54 18 54                            	vmovss xmm2,DWORD PTR [rax+r11*1+0x54]
    23a8d3569286:	c4 c1 6a 59 d2                                  	vmulss xmm2,xmm2,xmm10
    23a8d356928b:	c4 a1 22 59 6c 20 54                            	vmulss xmm5,xmm11,DWORD PTR [rax+r12*1+0x54]
    23a8d3569292:	c5 ea 58 ed                                     	vaddss xmm5,xmm2,xmm5
    23a8d3569296:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d356929a:	c5 b2 59 d0                                     	vmulss xmm2,xmm9,xmm0
    23a8d356929e:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    23a8d35692a4:	44 8d 8f 30 01 00 00                            	lea    r9d,[rdi+0x130]
    23a8d35692ab:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35692af:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d35692b5:	41 8b d7                                        	mov    edx,r15d
    23a8d35692b8:	8b cb                                           	mov    ecx,ebx
    23a8d35692ba:	41 8b d9                                        	mov    ebx,r9d
    23a8d35692bd:	e8 6e 32 ee ff                                  	call   0x23a8d344c530
    23a8d35692c2:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d35692c6:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d35692ca:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    23a8d35692d4:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    23a8d35692de:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d35692e2:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    23a8d35692ea:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    23a8d35692f3:	0f 84 c5 01 00 00                               	je     0x23a8d35694be
    23a8d35692f9:	c5 fb 10 85 70 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x290]
    23a8d3569301:	c5 fa 59 85 10 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2f0]
    23a8d3569309:	c5 fb 10 ad 80 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x380]
    23a8d3569311:	c5 d2 59 ad 00 fd ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x300]
    23a8d3569319:	c5 fb 10 b5 30 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3d0]
    23a8d3569321:	c5 ca 59 b5 40 fc ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x3c0]
    23a8d3569329:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d356932d:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d3569331:	c5 fb 10 ad b0 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x250]
    23a8d3569339:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    23a8d356933d:	4c 8b 15 c5 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5c5]        # 0x23a8d3567909
    23a8d3569344:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d3569349:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d356934d:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    23a8d3569351:	0f 87 04 00 00 00                               	ja     0x23a8d356935b
    23a8d3569357:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d356935b:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    23a8d3569363:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    23a8d356936a:	0f 85 28 00 00 00                               	jne    0x23a8d3569398
    23a8d3569370:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    23a8d356937a:	4c 8b 15 88 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe588]        # 0x23a8d3567909
    23a8d3569381:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d3569386:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    23a8d356938a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356938e:	e8 25 52 ee ff                                  	call   0x23a8d344e5b8
    23a8d3569393:	e9 89 00 00 00                                  	jmp    0x23a8d3569421
    23a8d3569398:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d356939c:	0f 84 5c 00 00 00                               	je     0x23a8d35693fe
    23a8d35693a2:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    23a8d35693ac:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    23a8d35693b6:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    23a8d35693ba:	7a 06                                           	jp     0x23a8d35693c2
    23a8d35693bc:	0f 84 29 00 00 00                               	je     0x23a8d35693eb
    23a8d35693c2:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    23a8d35693c6:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    23a8d35693ca:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d35693ce:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    23a8d35693d2:	0f 86 49 00 00 00                               	jbe    0x23a8d3569421
    23a8d35693d8:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d35693dc:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d35693e1:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d35693e6:	e9 5b 00 00 00                                  	jmp    0x23a8d3569446
    23a8d35693eb:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d35693ef:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d35693f4:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d35693f9:	e9 44 00 00 00                                  	jmp    0x23a8d3569442
    23a8d35693fe:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    23a8d3569408:	4c 8b 15 fa e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4fa]        # 0x23a8d3567909
    23a8d356940f:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d3569414:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    23a8d3569418:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356941c:	e8 97 51 ee ff                                  	call   0x23a8d344e5b8
    23a8d3569421:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d3569425:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d356942a:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d356942f:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d3569433:	0f 87 09 00 00 00                               	ja     0x23a8d3569442
    23a8d3569439:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    23a8d356943d:	e9 04 00 00 00                                  	jmp    0x23a8d3569446
    23a8d3569442:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d3569446:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d356944a:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d356944e:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    23a8d3569458:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    23a8d356945c:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d3569460:	c4 21 42 59 84 07 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x100]
    23a8d356946a:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d356946f:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    23a8d3569479:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    23a8d3569483:	c4 21 42 59 84 07 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x104]
    23a8d356948d:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d3569492:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    23a8d356949c:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    23a8d35694a6:	c4 a1 42 59 b4 07 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [rdi+r8*1+0x108]
    23a8d35694b0:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d35694b4:	c4 a1 7a 11 ac 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm5
    23a8d35694be:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    23a8d35694c8:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    23a8d35694d2:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d35694d9:	0f 85 da 0a 00 00                               	jne    0x23a8d3569fb9
    23a8d35694df:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    23a8d35694e4:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    23a8d35694ea:	0f 85 8e 0a 00 00                               	jne    0x23a8d3569f7e
    23a8d35694f0:	4c 8b 15 db fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbdb]        # 0x23a8d35690d2
    23a8d35694f7:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d35694fc:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d3569500:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d3569504:	c4 a1 7a 6f b4 0f 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1+0x280]
    23a8d356950e:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    23a8d3569512:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    23a8d3569517:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    23a8d356951b:	4c 8b 15 b0 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb0]        # 0x23a8d35690d2
    23a8d3569522:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d3569527:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d356952b:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    23a8d3569530:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    23a8d3569534:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d3569538:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356953d:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    23a8d3569547:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356954c:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d3569550:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d3569554:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    23a8d356955e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d3569563:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d3569567:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356956b:	49 ba 40 29 a3 be 86 62 00 00                   	movabs r10,0x6286bea32940
    23a8d3569575:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d356957a:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    23a8d356957f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d3569585:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    23a8d3569589:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    23a8d356958e:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    23a8d3569598:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d356959d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d35695a1:	4c 8b 15 6d d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd56d]        # 0x23a8d3566b15
    23a8d35695a8:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d35695ad:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    23a8d35695b7:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d35695bc:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d35695c1:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    23a8d35695c7:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    23a8d35695cb:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    23a8d35695cf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35695d4:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    23a8d35695d9:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    23a8d35695dd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d35695e2:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    23a8d35695e6:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    23a8d35695eb:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d35695f1:	44 03 da                                        	add    r11d,edx
    23a8d35695f4:	47 8d 24 1b                                     	lea    r12d,[r11+r11*1]
    23a8d35695f8:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    23a8d35695fd:	47 8d 1c df                                     	lea    r11d,[r15+r11*8]
    23a8d3569601:	83 bd 28 fe ff ff 03                            	cmp    DWORD PTR [rbp-0x1d8],0x3
    23a8d3569608:	0f 84 8b 00 00 00                               	je     0x23a8d3569699
    23a8d356960e:	44 8b bd 28 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d8]
    23a8d3569615:	41 83 e7 01                                     	and    r15d,0x1
    23a8d3569619:	41 f7 df                                        	neg    r15d
    23a8d356961c:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    23a8d3569622:	44 8b bd 28 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d8]
    23a8d3569629:	41 c1 e7 1e                                     	shl    r15d,0x1e
    23a8d356962d:	41 c1 ff 1f                                     	sar    r15d,0x1f
    23a8d3569631:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    23a8d3569637:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    23a8d356963c:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    23a8d3569642:	0f 84 39 00 00 00                               	je     0x23a8d3569681
    23a8d3569648:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    23a8d356964d:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    23a8d3569653:	0f 84 28 00 00 00                               	je     0x23a8d3569681
    23a8d3569659:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d356965e:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    23a8d3569662:	c4 a1 7b 10 34 0f                               	vmovsd xmm6,QWORD PTR [rdi+r9*1]
    23a8d3569668:	c4 a1 7b 10 3c 27                               	vmovsd xmm7,QWORD PTR [rdi+r12*1]
    23a8d356966e:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    23a8d3569672:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    23a8d3569676:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d356967b:	c4 a1 78 13 34 27                               	vmovlps QWORD PTR [rdi+r12*1],xmm6
    23a8d3569681:	c4 a1 7b 10 34 1f                               	vmovsd xmm6,QWORD PTR [rdi+r11*1]
    23a8d3569687:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    23a8d356968b:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d356968f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569694:	e9 33 00 00 00                                  	jmp    0x23a8d35696cc
    23a8d3569699:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    23a8d356969e:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    23a8d35696a4:	0f 84 22 00 00 00                               	je     0x23a8d35696cc
    23a8d35696aa:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    23a8d35696af:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    23a8d35696b5:	0f 84 11 00 00 00                               	je     0x23a8d35696cc
    23a8d35696bb:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d35696c0:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    23a8d35696c4:	4e 8b 3c 0f                                     	mov    r15,QWORD PTR [rdi+r9*1]
    23a8d35696c8:	4e 89 3c 27                                     	mov    QWORD PTR [rdi+r12*1],r15
    23a8d35696cc:	c4 a1 78 13 04 1f                               	vmovlps QWORD PTR [rdi+r11*1],xmm0
    23a8d35696d2:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    23a8d35696d7:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    23a8d35696dd:	0f 84 27 09 00 00                               	je     0x23a8d356a00a
    23a8d35696e3:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    23a8d35696e8:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    23a8d35696ee:	0f 84 16 09 00 00                               	je     0x23a8d356a00a
    23a8d35696f4:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    23a8d35696f9:	42 83 7c 07 14 02                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x2
    23a8d35696ff:	0f 85 05 09 00 00                               	jne    0x23a8d356a00a
    23a8d3569705:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    23a8d356970a:	45 85 db                                        	test   r11d,r11d
    23a8d356970d:	0f 84 f7 08 00 00                               	je     0x23a8d356a00a
    23a8d3569713:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    23a8d3569717:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    23a8d356971b:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    23a8d3569720:	0f 84 e4 08 00 00                               	je     0x23a8d356a00a
    23a8d3569726:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    23a8d356972a:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    23a8d356972e:	41 83 eb 3c                                     	sub    r11d,0x3c
    23a8d3569732:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    23a8d3569736:	44 8b fa                                        	mov    r15d,edx
    23a8d3569739:	41 c1 ef 02                                     	shr    r15d,0x2
    23a8d356973d:	45 0f af fb                                     	imul   r15d,r11d
    23a8d3569741:	41 c1 e7 04                                     	shl    r15d,0x4
    23a8d3569745:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    23a8d3569749:	44 8b a5 08 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2f8]
    23a8d3569750:	45 03 dc                                        	add    r11d,r12d
    23a8d3569753:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    23a8d3569758:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    23a8d356975f:	33 c0                                           	xor    eax,eax
    23a8d3569761:	45 85 ff                                        	test   r15d,r15d
    23a8d3569764:	0f 94 c0                                        	sete   al
    23a8d3569767:	41 83 ff 02                                     	cmp    r15d,0x2
    23a8d356976b:	41 0f 94 c7                                     	sete   r15b
    23a8d356976f:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d3569773:	44 0b f8                                        	or     r15d,eax
    23a8d3569776:	0f 85 0d 00 00 00                               	jne    0x23a8d3569789
    23a8d356977c:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    23a8d3569784:	e9 81 08 00 00                                  	jmp    0x23a8d356a00a
    23a8d3569789:	44 8b bd 28 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d8]
    23a8d3569790:	8b c2                                           	mov    eax,edx
    23a8d3569792:	83 e0 03                                        	and    eax,0x3
    23a8d3569795:	8b 9d 90 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x370]
    23a8d356979b:	0b d8                                           	or     ebx,eax
    23a8d356979d:	8d 04 1b                                        	lea    eax,[rbx+rbx*1]
    23a8d35697a0:	83 e0 3f                                        	and    eax,0x3f
    23a8d35697a3:	8b c8                                           	mov    ecx,eax
    23a8d35697a5:	49 d3 e7                                        	shl    r15,cl
    23a8d35697a8:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    23a8d35697ac:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    23a8d35697b1:	48 3b c3                                        	cmp    rax,rbx
    23a8d35697b4:	0f 84 e2 03 00 00                               	je     0x23a8d3569b9c
    23a8d35697ba:	49 0b c7                                        	or     rax,r15
    23a8d35697bd:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    23a8d35697c1:	48 3b d8                                        	cmp    rbx,rax
    23a8d35697c4:	0f 85 40 08 00 00                               	jne    0x23a8d356a00a
    23a8d35697ca:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d35697cf:	8b c2                                           	mov    eax,edx
    23a8d35697d1:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    23a8d35697d6:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    23a8d35697da:	8b cb                                           	mov    ecx,ebx
    23a8d35697dc:	0f af 8d 58 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3a8]
    23a8d35697e3:	03 c8                                           	add    ecx,eax
    23a8d35697e5:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d35697e9:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d35697ef:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d35697f4:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    23a8d35697f9:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d35697fe:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d3569802:	8b cb                                           	mov    ecx,ebx
    23a8d3569804:	0f af 8d 28 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3d8]
    23a8d356980b:	03 c8                                           	add    ecx,eax
    23a8d356980d:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d3569811:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d3569817:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d356981c:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d3569821:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    23a8d3569826:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d356982c:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d3569831:	8b cb                                           	mov    ecx,ebx
    23a8d3569833:	0f af 8d f8 fb ff ff                            	imul   ecx,DWORD PTR [rbp-0x408]
    23a8d356983a:	03 c8                                           	add    ecx,eax
    23a8d356983c:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d3569840:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d3569846:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d356984c:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d3569851:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    23a8d3569856:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d356985c:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d3569861:	0f af 9d 70 fc ff ff                            	imul   ebx,DWORD PTR [rbp-0x390]
    23a8d3569868:	03 c3                                           	add    eax,ebx
    23a8d356986a:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    23a8d356986e:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    23a8d3569875:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356987b:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d3569880:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    23a8d3569886:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356988c:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d3569891:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d3569896:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d356989b:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    23a8d356989f:	41 83 ff 0f                                     	cmp    r15d,0xf
    23a8d35698a3:	0f 84 0e 00 00 00                               	je     0x23a8d35698b7
    23a8d35698a9:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    23a8d35698b2:	e9 53 07 00 00                                  	jmp    0x23a8d356a00a
    23a8d35698b7:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    23a8d35698c1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d35698c6:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    23a8d35698d0:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d35698d6:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    23a8d35698e0:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d35698e5:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    23a8d35698ef:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d35698f5:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    23a8d35698ff:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d3569904:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    23a8d356990e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d3569914:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    23a8d356991e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3569923:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    23a8d356992d:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d3569933:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    23a8d356993d:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d3569942:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    23a8d356994c:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d3569952:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    23a8d356995c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3569961:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    23a8d356996b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d3569971:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    23a8d356997b:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d3569980:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    23a8d356998a:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d3569990:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d3569995:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d3569999:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d356999e:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d35699a3:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    23a8d35699ad:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d35699b3:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d35699b8:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    23a8d35699c2:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d35699c7:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d35699cb:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d35699d0:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d35699d6:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d35699db:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d35699df:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d35699e3:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d35699e7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d35699ec:	4c 8b 15 c7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc7]        # 0x23a8d35699ba
    23a8d35699f3:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d35699f8:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d35699fd:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d3569a02:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d3569a06:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569a0b:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d3569a11:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d3569a15:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d3569a1a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569a1f:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d3569a23:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d3569a28:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569a2d:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d3569a33:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d3569a37:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d3569a3c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569a41:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d3569a45:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d3569a4a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569a4f:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d3569a55:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d3569a59:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d3569a5e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569a63:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d3569a67:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d3569a6c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569a71:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d3569a77:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d3569a7b:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d3569a80:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569a85:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d3569a89:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d3569a8e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569a93:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d3569a98:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d3569a9c:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d3569aa1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569aa6:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d3569aaa:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d3569aaf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569ab4:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d3569ab9:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d3569abe:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d3569ac2:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d3569ac6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569acb:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d3569acf:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d3569ad3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569ad8:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d3569add:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d3569ae2:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d3569ae7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d3569aeb:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d3569aef:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569af4:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    23a8d3569afe:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d3569b02:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d3569b06:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569b0b:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    23a8d3569b15:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d3569b19:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d3569b1d:	45 33 ff                                        	xor    r15d,r15d
    23a8d3569b20:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d3569b24:	41 0f 97 c7                                     	seta   r15b
    23a8d3569b28:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    23a8d3569b2f:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    23a8d3569b37:	0b d8                                           	or     ebx,eax
    23a8d3569b39:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    23a8d3569b3e:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d3569b43:	bb 02 00 00 00                                  	mov    ebx,0x2
    23a8d3569b48:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3569b4c:	44 0f 47 fb                                     	cmova  r15d,ebx
    23a8d3569b50:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    23a8d3569b58:	0b c8                                           	or     ecx,eax
    23a8d3569b5a:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    23a8d3569b5f:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d3569b64:	be 03 00 00 00                                  	mov    esi,0x3
    23a8d3569b69:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3569b6d:	44 0f 47 fe                                     	cmova  r15d,esi
    23a8d3569b71:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d3569b75:	41 0b c7                                        	or     eax,r15d
    23a8d3569b78:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    23a8d3569b7d:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    23a8d3569b84:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    23a8d3569b8b:	44 0b f8                                        	or     r15d,eax
    23a8d3569b8e:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    23a8d3569b92:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    23a8d3569b97:	e9 6e 04 00 00                                  	jmp    0x23a8d356a00a
    23a8d3569b9c:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    23a8d3569ba1:	8b d8                                           	mov    ebx,eax
    23a8d3569ba3:	83 e3 3f                                        	and    ebx,0x3f
    23a8d3569ba6:	8b cb                                           	mov    ecx,ebx
    23a8d3569ba8:	49 d3 ef                                        	shr    r15,cl
    23a8d3569bab:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d3569baf:	0f 84 55 04 00 00                               	je     0x23a8d356a00a
    23a8d3569bb5:	83 e0 01                                        	and    eax,0x1
    23a8d3569bb8:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    23a8d3569bc0:	45 0b f9                                        	or     r15d,r9d
    23a8d3569bc3:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    23a8d3569bc9:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    23a8d3569bd0:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d3569bd4:	0f 86 30 04 00 00                               	jbe    0x23a8d356a00a
    23a8d3569bda:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    23a8d3569bdf:	8b c2                                           	mov    eax,edx
    23a8d3569be1:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    23a8d3569be6:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    23a8d3569bea:	8b 8d 58 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3a8]
    23a8d3569bf0:	0f af cb                                        	imul   ecx,ebx
    23a8d3569bf3:	03 c8                                           	add    ecx,eax
    23a8d3569bf5:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d3569bf9:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d3569bff:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d3569c04:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    23a8d3569c09:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d3569c0e:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d3569c12:	8b 8d 28 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3d8]
    23a8d3569c18:	0f af cb                                        	imul   ecx,ebx
    23a8d3569c1b:	03 c8                                           	add    ecx,eax
    23a8d3569c1d:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d3569c21:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d3569c27:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d3569c2c:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d3569c31:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    23a8d3569c36:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d3569c3c:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d3569c41:	8b 8d f8 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x408]
    23a8d3569c47:	0f af cb                                        	imul   ecx,ebx
    23a8d3569c4a:	03 c8                                           	add    ecx,eax
    23a8d3569c4c:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    23a8d3569c50:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    23a8d3569c56:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d3569c5c:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d3569c61:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    23a8d3569c66:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d3569c6c:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d3569c71:	8b 8d 70 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x390]
    23a8d3569c77:	0f af cb                                        	imul   ecx,ebx
    23a8d3569c7a:	03 c1                                           	add    eax,ecx
    23a8d3569c7c:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    23a8d3569c80:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    23a8d3569c87:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d3569c8d:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d3569c92:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    23a8d3569c98:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d3569c9e:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d3569ca3:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d3569ca8:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d3569cad:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    23a8d3569cb1:	41 83 ff 0f                                     	cmp    r15d,0xf
    23a8d3569cb5:	0f 84 0e 00 00 00                               	je     0x23a8d3569cc9
    23a8d3569cbb:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    23a8d3569cc4:	e9 41 03 00 00                                  	jmp    0x23a8d356a00a
    23a8d3569cc9:	4c 8b 15 e9 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe9]        # 0x23a8d35698b9
    23a8d3569cd0:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d3569cd5:	4c 8b 15 ec fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbec]        # 0x23a8d35698c8
    23a8d3569cdc:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d3569ce2:	4c 8b 15 ef fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbef]        # 0x23a8d35698d8
    23a8d3569ce9:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d3569cee:	4c 8b 15 f2 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf2]        # 0x23a8d35698e7
    23a8d3569cf5:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d3569cfb:	4c 8b 15 f5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf5]        # 0x23a8d35698f7
    23a8d3569d02:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d3569d07:	4c 8b 15 f8 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf8]        # 0x23a8d3569906
    23a8d3569d0e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d3569d14:	4c 8b 15 fb fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfb]        # 0x23a8d3569916
    23a8d3569d1b:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3569d20:	4c 8b 15 fe fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfe]        # 0x23a8d3569925
    23a8d3569d27:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d3569d2d:	4c 8b 15 01 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc01]        # 0x23a8d3569935
    23a8d3569d34:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d3569d39:	4c 8b 15 04 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc04]        # 0x23a8d3569944
    23a8d3569d40:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d3569d46:	4c 8b 15 07 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc07]        # 0x23a8d3569954
    23a8d3569d4d:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3569d52:	4c 8b 15 0a fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0a]        # 0x23a8d3569963
    23a8d3569d59:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d3569d5f:	4c 8b 15 0d fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0d]        # 0x23a8d3569973
    23a8d3569d66:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d3569d6b:	4c 8b 15 10 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc10]        # 0x23a8d3569982
    23a8d3569d72:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d3569d78:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d3569d7d:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d3569d81:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d3569d86:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d3569d8b:	4c 8b 15 13 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc13]        # 0x23a8d35699a5
    23a8d3569d92:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d3569d98:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d3569d9d:	4c 8b 15 16 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc16]        # 0x23a8d35699ba
    23a8d3569da4:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d3569da9:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d3569dad:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d3569db2:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d3569db8:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d3569dbd:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d3569dc1:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d3569dc5:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d3569dc9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569dce:	4c 8b 15 e5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe5]        # 0x23a8d35699ba
    23a8d3569dd5:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d3569dda:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d3569ddf:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d3569de4:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d3569de8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569ded:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d3569df3:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d3569df7:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d3569dfc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569e01:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d3569e05:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d3569e0a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569e0f:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d3569e15:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d3569e19:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d3569e1e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569e23:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d3569e27:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d3569e2c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569e31:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d3569e37:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d3569e3b:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d3569e40:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569e45:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d3569e49:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d3569e4e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569e53:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d3569e59:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d3569e5d:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d3569e62:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569e67:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d3569e6b:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d3569e70:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569e75:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d3569e7a:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d3569e7e:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d3569e83:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569e88:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d3569e8c:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d3569e91:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569e96:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d3569e9b:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d3569ea0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d3569ea4:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d3569ea8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569ead:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d3569eb1:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d3569eb5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569eba:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d3569ebf:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d3569ec4:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d3569ec9:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d3569ecd:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d3569ed1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d3569ed6:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    23a8d3569ee0:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d3569ee4:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d3569ee8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3569eed:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    23a8d3569ef7:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d3569efb:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d3569eff:	45 33 ff                                        	xor    r15d,r15d
    23a8d3569f02:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d3569f06:	41 0f 97 c7                                     	seta   r15b
    23a8d3569f0a:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    23a8d3569f11:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    23a8d3569f19:	0b d8                                           	or     ebx,eax
    23a8d3569f1b:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    23a8d3569f20:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d3569f25:	bb 02 00 00 00                                  	mov    ebx,0x2
    23a8d3569f2a:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d3569f2e:	44 0f 47 fb                                     	cmova  r15d,ebx
    23a8d3569f32:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    23a8d3569f3a:	0b c8                                           	or     ecx,eax
    23a8d3569f3c:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    23a8d3569f41:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d3569f46:	b9 03 00 00 00                                  	mov    ecx,0x3
    23a8d3569f4b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d3569f4f:	44 0f 47 f9                                     	cmova  r15d,ecx
    23a8d3569f53:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d3569f57:	41 0b c7                                        	or     eax,r15d
    23a8d3569f5a:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    23a8d3569f5f:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    23a8d3569f66:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    23a8d3569f6d:	44 0b f8                                        	or     r15d,eax
    23a8d3569f70:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    23a8d3569f74:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    23a8d3569f79:	e9 8c 00 00 00                                  	jmp    0x23a8d356a00a
    23a8d3569f7e:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    23a8d3569f85:	41 53                                           	push   r11
    23a8d3569f87:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3569f8b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3569f8e:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d3569f94:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d3569f97:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    23a8d3569f9d:	e8 c6 22 ee ff                                  	call   0x23a8d344c268
    23a8d3569fa2:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d3569fa8:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3569fac:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3569fb0:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d3569fb4:	e9 51 00 00 00                                  	jmp    0x23a8d356a00a
    23a8d3569fb9:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    23a8d3569fc0:	41 53                                           	push   r11
    23a8d3569fc2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3569fc6:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3569fc9:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d3569fcf:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d3569fd2:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    23a8d3569fd8:	e8 7b 22 ee ff                                  	call   0x23a8d344c258
    23a8d3569fdd:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d3569fe3:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3569fe7:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d3569feb:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d3569fef:	e9 16 00 00 00                                  	jmp    0x23a8d356a00a
    23a8d3569ff4:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    23a8d3569ffb:	44 8b cf                                        	mov    r9d,edi
    23a8d3569ffe:	48 8b f8                                        	mov    rdi,rax
    23a8d356a001:	4c 8b c1                                        	mov    r8,rcx
    23a8d356a004:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d356a00a:	48 c7 85 28 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x1
    23a8d356a015:	44 8b da                                        	mov    r11d,edx
    23a8d356a018:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d356a01e:	48 8b c7                                        	mov    rax,rdi
    23a8d356a021:	41 8b f9                                        	mov    edi,r9d
    23a8d356a024:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d356a028:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d356a02d:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d356a032:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356a036:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    23a8d356a03e:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    23a8d356a045:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    23a8d356a04c:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    23a8d356a054:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    23a8d356a05c:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    23a8d356a064:	e9 52 3a 00 00                                  	jmp    0x23a8d356dabb
    23a8d356a069:	44 8b 7c 38 18                                  	mov    r15d,DWORD PTR [rax+rdi*1+0x18]
    23a8d356a06e:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    23a8d356a072:	89 54 38 18                                     	mov    DWORD PTR [rax+rdi*1+0x18],edx
    23a8d356a076:	8b 95 68 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x198]
    23a8d356a07c:	42 8d 34 ba                                     	lea    esi,[rdx+r15*4]
    23a8d356a080:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d356a086:	89 14 30                                        	mov    DWORD PTR [rax+rsi*1],edx
    23a8d356a089:	42 8d 74 bf 2c                                  	lea    esi,[rdi+r15*4+0x2c]
    23a8d356a08e:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d356a091:	89 0c 30                                        	mov    DWORD PTR [rax+rsi*1],ecx
    23a8d356a094:	42 8d 74 bf 3c                                  	lea    esi,[rdi+r15*4+0x3c]
    23a8d356a099:	44 89 24 30                                     	mov    DWORD PTR [rax+rsi*1],r12d
    23a8d356a09d:	46 8d 64 ff 50                                  	lea    r12d,[rdi+r15*8+0x50]
    23a8d356a0a2:	4a 89 1c 20                                     	mov    QWORD PTR [rax+r12*1],rbx
    23a8d356a0a6:	46 8d 64 ff 70                                  	lea    r12d,[rdi+r15*8+0x70]
    23a8d356a0ab:	4e 89 1c 20                                     	mov    QWORD PTR [rax+r12*1],r11
    23a8d356a0af:	41 c1 e7 04                                     	shl    r15d,0x4
    23a8d356a0b3:	44 8b 9d 70 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x90]
    23a8d356a0ba:	47 8d 24 1f                                     	lea    r12d,[r15+r11*1]
    23a8d356a0be:	4c 8b 3c 38                                     	mov    r15,QWORD PTR [rax+rdi*1]
    23a8d356a0c2:	4e 89 3c 20                                     	mov    QWORD PTR [rax+r12*1],r15
    23a8d356a0c6:	44 8b 64 38 18                                  	mov    r12d,DWORD PTR [rax+rdi*1+0x18]
    23a8d356a0cb:	83 7c 38 18 04                                  	cmp    DWORD PTR [rax+rdi*1+0x18],0x4
    23a8d356a0d0:	0f 84 37 00 00 00                               	je     0x23a8d356a10d
    23a8d356a0d6:	48 c7 85 28 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x1
    23a8d356a0e1:	44 8b da                                        	mov    r11d,edx
    23a8d356a0e4:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d356a0ea:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    23a8d356a0f1:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    23a8d356a0f8:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    23a8d356a100:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    23a8d356a108:	e9 ae 39 00 00                                  	jmp    0x23a8d356dabb
    23a8d356a10d:	c5 fa 6f 44 38 50                               	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x50]
    23a8d356a113:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    23a8d356a119:	c4 c1 82 2a ec                                  	vcvtsi2ss xmm5,xmm15,r12
    23a8d356a11e:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    23a8d356a123:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    23a8d356a129:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    23a8d356a12e:	c4 e3 51 21 e8 10                               	vinsertps xmm5,xmm5,xmm0,0x10
    23a8d356a134:	c5 fa 6f 44 38 60                               	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x60]
    23a8d356a13a:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    23a8d356a140:	c4 41 82 2a c4                                  	vcvtsi2ss xmm8,xmm15,r12
    23a8d356a145:	c4 c3 51 21 e8 20                               	vinsertps xmm5,xmm5,xmm8,0x20
    23a8d356a14b:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    23a8d356a151:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    23a8d356a156:	c4 e3 51 21 e8 30                               	vinsertps xmm5,xmm5,xmm0,0x30
    23a8d356a15c:	c5 f8 10 85 10 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3f0]
    23a8d356a164:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    23a8d356a168:	4c 8d 60 1c                                     	lea    r12,[rax+0x1c]
    23a8d356a16c:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    23a8d356a173:	c4 02 79 18 04 3c                               	vbroadcastss xmm8,DWORD PTR [r12+r15*1]
    23a8d356a179:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    23a8d356a17e:	c5 7a 6f 4c 38 70                               	vmovdqu xmm9,XMMWORD PTR [rax+rdi*1+0x70]
    23a8d356a184:	c4 63 f9 16 cb 00                               	vpextrq rbx,xmm9,0x0
    23a8d356a18a:	c4 61 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,rbx
    23a8d356a18f:	c4 42 79 18 d2                                  	vbroadcastss xmm10,xmm10
    23a8d356a194:	c4 63 f9 16 cb 01                               	vpextrq rbx,xmm9,0x1
    23a8d356a19a:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    23a8d356a19f:	c4 43 29 21 d1 10                               	vinsertps xmm10,xmm10,xmm9,0x10
    23a8d356a1a5:	c5 7a 6f 8c 38 80 00 00 00                      	vmovdqu xmm9,XMMWORD PTR [rax+rdi*1+0x80]
    23a8d356a1ae:	c4 63 f9 16 cb 00                               	vpextrq rbx,xmm9,0x0
    23a8d356a1b4:	c4 61 82 2a db                                  	vcvtsi2ss xmm11,xmm15,rbx
    23a8d356a1b9:	c4 43 29 21 d3 20                               	vinsertps xmm10,xmm10,xmm11,0x20
    23a8d356a1bf:	c4 63 f9 16 cb 01                               	vpextrq rbx,xmm9,0x1
    23a8d356a1c5:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    23a8d356a1ca:	c4 43 29 21 d1 30                               	vinsertps xmm10,xmm10,xmm9,0x30
    23a8d356a1d0:	c4 41 78 59 ca                                  	vmulps xmm9,xmm0,xmm10
    23a8d356a1d5:	49 8b d9                                        	mov    rbx,r9
    23a8d356a1d8:	c4 42 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+rbx*1]
    23a8d356a1de:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    23a8d356a1e3:	c4 41 38 58 da                                  	vaddps xmm11,xmm8,xmm10
    23a8d356a1e8:	4c 8b 15 e3 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeee3]        # 0x23a8d35690d2
    23a8d356a1ef:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d356a1f4:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d356a1f9:	c5 98 5c ed                                     	vsubps xmm5,xmm12,xmm5
    23a8d356a1fd:	c4 c1 50 5c e9                                  	vsubps xmm5,xmm5,xmm9
    23a8d356a202:	c4 02 79 18 0c 04                               	vbroadcastss xmm9,DWORD PTR [r12+r8*1]
    23a8d356a208:	c4 c1 50 59 e9                                  	vmulps xmm5,xmm5,xmm9
    23a8d356a20d:	c5 20 58 cd                                     	vaddps xmm9,xmm11,xmm5
    23a8d356a211:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d356a216:	c4 41 30 c2 eb 02                               	vcmpleps xmm13,xmm9,xmm11
    23a8d356a21c:	c4 41 78 50 e5                                  	vmovmskps r12d,xmm13
    23a8d356a221:	41 8b f4                                        	mov    esi,r12d
    23a8d356a224:	83 f6 0f                                        	xor    esi,0xf
    23a8d356a227:	c5 78 11 a5 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm12
    23a8d356a22f:	c5 78 11 9d 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm11
    23a8d356a237:	48 89 b5 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rsi
    23a8d356a23e:	41 83 fc 0f                                     	cmp    r12d,0xf
    23a8d356a242:	0f 84 17 2c 00 00                               	je     0x23a8d356ce5f
    23a8d356a248:	c4 41 18 5e c9                                  	vdivps xmm9,xmm12,xmm9
    23a8d356a24d:	4c 8d 48 2c                                     	lea    r9,[rax+0x2c]
    23a8d356a251:	c4 02 79 18 2c 39                               	vbroadcastss xmm13,DWORD PTR [r9+r15*1]
    23a8d356a257:	c4 41 38 59 ed                                  	vmulps xmm13,xmm8,xmm13
    23a8d356a25c:	c4 42 79 18 34 19                               	vbroadcastss xmm14,DWORD PTR [r9+rbx*1]
    23a8d356a262:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    23a8d356a267:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    23a8d356a26c:	c4 02 79 18 34 01                               	vbroadcastss xmm14,DWORD PTR [r9+r8*1]
    23a8d356a272:	c4 41 50 59 f6                                  	vmulps xmm14,xmm5,xmm14
    23a8d356a277:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    23a8d356a27c:	c4 41 30 59 ed                                  	vmulps xmm13,xmm9,xmm13
    23a8d356a281:	4c 8d 48 28                                     	lea    r9,[rax+0x28]
    23a8d356a285:	c4 02 79 18 34 39                               	vbroadcastss xmm14,DWORD PTR [r9+r15*1]
    23a8d356a28b:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    23a8d356a290:	c4 c2 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+rbx*1]
    23a8d356a296:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    23a8d356a29a:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    23a8d356a29e:	c4 82 79 18 0c 01                               	vbroadcastss xmm1,DWORD PTR [r9+r8*1]
    23a8d356a2a4:	c5 d0 59 c9                                     	vmulps xmm1,xmm5,xmm1
    23a8d356a2a8:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    23a8d356a2ac:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    23a8d356a2b1:	4c 8d 48 24                                     	lea    r9,[rax+0x24]
    23a8d356a2b5:	c4 82 79 18 0c 39                               	vbroadcastss xmm1,DWORD PTR [r9+r15*1]
    23a8d356a2bb:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    23a8d356a2bf:	c4 c2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [r9+rbx*1]
    23a8d356a2c5:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    23a8d356a2c9:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d356a2cd:	c4 82 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [r9+r8*1]
    23a8d356a2d3:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d356a2d7:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d356a2db:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    23a8d356a2df:	4c 8d 48 20                                     	lea    r9,[rax+0x20]
    23a8d356a2e3:	c4 82 79 18 14 39                               	vbroadcastss xmm2,DWORD PTR [r9+r15*1]
    23a8d356a2e9:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d356a2ed:	c4 c2 79 18 04 19                               	vbroadcastss xmm0,DWORD PTR [r9+rbx*1]
    23a8d356a2f3:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    23a8d356a2f7:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    23a8d356a2fb:	c4 82 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [r9+r8*1]
    23a8d356a301:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d356a305:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    23a8d356a309:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d356a30d:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    23a8d356a314:	46 8b 84 08 34 01 00 00                         	mov    r8d,DWORD PTR [rax+r9*1+0x134]
    23a8d356a31c:	41 83 e8 01                                     	sub    r8d,0x1
    23a8d356a320:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d356a324:	0f 86 12 17 00 00                               	jbe    0x23a8d356ba3c
    23a8d356a32a:	46 8b 84 08 38 01 00 00                         	mov    r8d,DWORD PTR [rax+r9*1+0x138]
    23a8d356a332:	42 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [rax+r9*1+0x138],0x0
    23a8d356a33b:	0f 85 0f 00 00 00                               	jne    0x23a8d356a350
    23a8d356a341:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    23a8d356a346:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    23a8d356a34b:	e9 6c 2a 00 00                                  	jmp    0x23a8d356cdbc
    23a8d356a350:	44 8b c6                                        	mov    r8d,esi
    23a8d356a353:	41 83 e0 04                                     	and    r8d,0x4
    23a8d356a357:	44 8b de                                        	mov    r11d,esi
    23a8d356a35a:	41 83 e3 02                                     	and    r11d,0x2
    23a8d356a35e:	44 8b fe                                        	mov    r15d,esi
    23a8d356a361:	41 83 e7 01                                     	and    r15d,0x1
    23a8d356a365:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    23a8d356a36a:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    23a8d356a36f:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    23a8d356a374:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    23a8d356a37c:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    23a8d356a383:	c5 78 11 8d d0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x330],xmm9
    23a8d356a38b:	c5 f8 11 ad c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm5
    23a8d356a393:	c5 78 11 95 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm10
    23a8d356a39b:	c5 78 11 85 a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm8
    23a8d356a3a3:	4c 89 a5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r12
    23a8d356a3aa:	4c 89 85 e8 fb ff ff                            	mov    QWORD PTR [rbp-0x418],r8
    23a8d356a3b1:	4c 89 9d 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],r11
    23a8d356a3b8:	4c 89 bd 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],r15
    23a8d356a3bf:	45 33 db                                        	xor    r11d,r11d
    23a8d356a3c2:	e9 58 00 00 00                                  	jmp    0x23a8d356a41f
    23a8d356a3c7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356a3d0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356a3d9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356a3e2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356a3eb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356a3f4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356a3fd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    23a8d356a400:	c5 f8 10 ad c0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x340]
    23a8d356a408:	c5 78 10 8d d0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x330]
    23a8d356a410:	4c 8b 8d 28 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1d8]
    23a8d356a417:	c5 78 10 9d 50 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2b0]
    23a8d356a41f:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    23a8d356a426:	8b 8d 98 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x168]
    23a8d356a42c:	8b 95 90 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x170]
    23a8d356a432:	8b 9d 88 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x178]
    23a8d356a438:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    23a8d356a43f:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d356a444:	0f 85 f5 51 00 00                               	jne    0x23a8d356f63f
    23a8d356a44a:	42 8b b4 08 3c 01 00 00                         	mov    esi,DWORD PTR [rax+r9*1+0x13c]
    23a8d356a452:	44 8b c9                                        	mov    r9d,ecx
    23a8d356a455:	41 8b cb                                        	mov    ecx,r11d
    23a8d356a458:	d3 ee                                           	shr    esi,cl
    23a8d356a45a:	40 f6 c6 01                                     	test   sil,0x1
    23a8d356a45e:	0f 85 2a 00 00 00                               	jne    0x23a8d356a48e
    23a8d356a464:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    23a8d356a46a:	41 8b f3                                        	mov    esi,r11d
    23a8d356a46d:	c1 e6 06                                        	shl    esi,0x6
    23a8d356a470:	03 ce                                           	add    ecx,esi
    23a8d356a472:	c5 7a 7f 64 08 30                               	vmovdqu XMMWORD PTR [rax+rcx*1+0x30],xmm12
    23a8d356a478:	c5 7a 7f 64 08 20                               	vmovdqu XMMWORD PTR [rax+rcx*1+0x20],xmm12
    23a8d356a47e:	c5 7a 7f 64 08 10                               	vmovdqu XMMWORD PTR [rax+rcx*1+0x10],xmm12
    23a8d356a484:	c5 7a 7f 24 08                                  	vmovdqu XMMWORD PTR [rax+rcx*1],xmm12
    23a8d356a489:	e9 75 12 00 00                                  	jmp    0x23a8d356b703
    23a8d356a48e:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    23a8d356a494:	41 8b f3                                        	mov    esi,r11d
    23a8d356a497:	c1 e6 06                                        	shl    esi,0x6
    23a8d356a49a:	03 f1                                           	add    esi,ecx
    23a8d356a49c:	41 6b cb 4c                                     	imul   ecx,r11d,0x4c
    23a8d356a4a0:	41 03 cf                                        	add    ecx,r15d
    23a8d356a4a3:	44 8b 5c 08 38                                  	mov    r11d,DWORD PTR [rax+rcx*1+0x38]
    23a8d356a4a8:	83 7c 08 38 00                                  	cmp    DWORD PTR [rax+rcx*1+0x38],0x0
    23a8d356a4ad:	0f 85 04 12 00 00                               	jne    0x23a8d356b6b7
    23a8d356a4b3:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    23a8d356a4ba:	41 c1 e3 04                                     	shl    r11d,0x4
    23a8d356a4be:	45 8d 3c 13                                     	lea    r15d,[r11+rdx*1]
    23a8d356a4c2:	48 8d 50 04                                     	lea    rdx,[rax+0x4]
    23a8d356a4c6:	c4 a2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+r15*1]
    23a8d356a4cc:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d356a4d0:	43 8d 3c 19                                     	lea    edi,[r9+r11*1]
    23a8d356a4d4:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    23a8d356a4da:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    23a8d356a4de:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    23a8d356a4e2:	44 03 db                                        	add    r11d,ebx
    23a8d356a4e5:	c4 a2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+r11*1]
    23a8d356a4eb:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d356a4ef:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    23a8d356a4f3:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    23a8d356a4f7:	c4 a2 79 18 04 38                               	vbroadcastss xmm0,DWORD PTR [rax+r15*1]
    23a8d356a4fd:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d356a501:	c4 e2 79 18 34 38                               	vbroadcastss xmm6,DWORD PTR [rax+rdi*1]
    23a8d356a507:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    23a8d356a50b:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356a50f:	c4 a2 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [rax+r11*1]
    23a8d356a515:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d356a519:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356a51d:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d356a521:	8b 14 08                                        	mov    edx,DWORD PTR [rax+rcx*1]
    23a8d356a524:	83 fa 01                                        	cmp    edx,0x1
    23a8d356a527:	0f 85 7d 0e 00 00                               	jne    0x23a8d356b3aa
    23a8d356a52d:	8b 5c 08 28                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x28]
    23a8d356a531:	85 db                                           	test   ebx,ebx
    23a8d356a533:	0f 84 71 0e 00 00                               	je     0x23a8d356b3aa
    23a8d356a539:	44 8b 4c 08 1c                                  	mov    r9d,DWORD PTR [rax+rcx*1+0x1c]
    23a8d356a53e:	45 85 c9                                        	test   r9d,r9d
    23a8d356a541:	0f 8e 63 0e 00 00                               	jle    0x23a8d356b3aa
    23a8d356a547:	48 89 95 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rdx
    23a8d356a54e:	8b 54 08 20                                     	mov    edx,DWORD PTR [rax+rcx*1+0x20]
    23a8d356a552:	85 d2                                           	test   edx,edx
    23a8d356a554:	0f 8e 4a 0e 00 00                               	jle    0x23a8d356b3a4
    23a8d356a55a:	45 8b d1                                        	mov    r10d,r9d
    23a8d356a55d:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    23a8d356a562:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    23a8d356a567:	8b 7c 08 10                                     	mov    edi,DWORD PTR [rax+rcx*1+0x10]
    23a8d356a56b:	45 33 db                                        	xor    r11d,r11d
    23a8d356a56e:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    23a8d356a574:	41 0f 95 c3                                     	setne  r11b
    23a8d356a578:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    23a8d356a57e:	40 0f 95 c7                                     	setne  dil
    23a8d356a582:	40 0f b6 ff                                     	movzx  edi,dil
    23a8d356a586:	48 89 b5 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rsi
    23a8d356a58d:	41 23 fb                                        	and    edi,r11d
    23a8d356a590:	0f 85 0d 00 00 00                               	jne    0x23a8d356a5a3
    23a8d356a596:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d356a59a:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d356a59e:	e9 0a 00 00 00                                  	jmp    0x23a8d356a5ad
    23a8d356a5a3:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    23a8d356a5a9:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    23a8d356a5ad:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d356a5b1:	44 8b d2                                        	mov    r10d,edx
    23a8d356a5b4:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    23a8d356a5b9:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    23a8d356a5be:	44 8b 5c 08 14                                  	mov    r11d,DWORD PTR [rax+rcx*1+0x14]
    23a8d356a5c3:	45 33 ff                                        	xor    r15d,r15d
    23a8d356a5c6:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    23a8d356a5cd:	41 0f 95 c7                                     	setne  r15b
    23a8d356a5d1:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    23a8d356a5d8:	41 0f 95 c3                                     	setne  r11b
    23a8d356a5dc:	45 0f b6 db                                     	movzx  r11d,r11b
    23a8d356a5e0:	45 23 df                                        	and    r11d,r15d
    23a8d356a5e3:	0f 85 0d 00 00 00                               	jne    0x23a8d356a5f6
    23a8d356a5e9:	c5 a0 5f fa                                     	vmaxps xmm7,xmm11,xmm2
    23a8d356a5ed:	c5 98 5d ff                                     	vminps xmm7,xmm12,xmm7
    23a8d356a5f1:	e9 0a 00 00 00                                  	jmp    0x23a8d356a600
    23a8d356a5f6:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    23a8d356a5fc:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    23a8d356a600:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d356a604:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    23a8d356a60e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d356a613:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d356a617:	c5 c8 58 d7                                     	vaddps xmm2,xmm6,xmm7
    23a8d356a61b:	44 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [rax+rcx*1+0xc]
    23a8d356a620:	45 33 ff                                        	xor    r15d,r15d
    23a8d356a623:	81 7c 08 0c 00 26 00 00                         	cmp    DWORD PTR [rax+rcx*1+0xc],0x2600
    23a8d356a62b:	41 0f 94 c7                                     	sete   r15b
    23a8d356a62f:	45 85 ff                                        	test   r15d,r15d
    23a8d356a632:	0f 85 6a 00 00 00                               	jne    0x23a8d356a6a2
    23a8d356a638:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    23a8d356a63e:	4c 8b 15 d0 c4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc4d0]        # 0x23a8d3566b15
    23a8d356a645:	c4 41 48 54 1a                                  	vandps xmm11,xmm6,XMMWORD PTR [r10]
    23a8d356a64a:	4c 8b 15 5e ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef5e]        # 0x23a8d35695af
    23a8d356a651:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356a656:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d356a65b:	c4 41 20 c2 dd 01                               	vcmpltps xmm11,xmm11,xmm13
    23a8d356a661:	4c 8b 15 05 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef05]        # 0x23a8d356956d
    23a8d356a668:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    23a8d356a66d:	c4 41 48 54 f7                                  	vandps xmm14,xmm6,xmm15
    23a8d356a672:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    23a8d356a678:	c4 41 7a 5b f6                                  	vcvttps2dq xmm14,xmm14
    23a8d356a67d:	c4 41 09 ef f7                                  	vpxor  xmm14,xmm14,xmm15
    23a8d356a682:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    23a8d356a686:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d356a68a:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    23a8d356a68e:	c4 c1 79 28 d6                                  	vmovapd xmm2,xmm14
    23a8d356a693:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    23a8d356a698:	c4 41 79 28 eb                                  	vmovapd xmm13,xmm11
    23a8d356a69d:	e9 49 00 00 00                                  	jmp    0x23a8d356a6eb
    23a8d356a6a2:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    23a8d356a6a8:	4c 8b 15 66 c4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc466]        # 0x23a8d3566b15
    23a8d356a6af:	c4 41 40 54 2a                                  	vandps xmm13,xmm7,XMMWORD PTR [r10]
    23a8d356a6b4:	4c 8b 15 f4 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeef4]        # 0x23a8d35695af
    23a8d356a6bb:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d356a6c0:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    23a8d356a6c5:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    23a8d356a6cb:	4c 8b 15 9b ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee9b]        # 0x23a8d356956d
    23a8d356a6d2:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    23a8d356a6d7:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    23a8d356a6dc:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    23a8d356a6e2:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d356a6e6:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d356a6eb:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    23a8d356a6f1:	4c 8b 15 75 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee75]        # 0x23a8d356956d
    23a8d356a6f8:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    23a8d356a6fe:	c4 c1 20 54 cf                                  	vandps xmm1,xmm11,xmm15
    23a8d356a703:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    23a8d356a709:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    23a8d356a70d:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    23a8d356a712:	4c 8b 15 77 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee77]        # 0x23a8d3569590
    23a8d356a719:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356a71e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d356a722:	4c 8b 15 ec c3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc3ec]        # 0x23a8d3566b15
    23a8d356a729:	c4 c1 20 54 22                                  	vandps xmm4,xmm11,XMMWORD PTR [r10]
    23a8d356a72e:	c4 41 58 c2 f6 01                               	vcmpltps xmm14,xmm4,xmm14
    23a8d356a734:	c5 09 df fb                                     	vpandn xmm15,xmm14,xmm3
    23a8d356a738:	c4 41 71 db f6                                  	vpand  xmm14,xmm1,xmm14
    23a8d356a73d:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    23a8d356a742:	41 8d 71 ff                                     	lea    esi,[r9-0x1]
    23a8d356a746:	c5 f9 6e ce                                     	vmovd  xmm1,esi
    23a8d356a74a:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d356a74f:	8b 74 08 2c                                     	mov    esi,DWORD PTR [rax+rcx*1+0x2c]
    23a8d356a753:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d356a757:	c4 e2 09 3d e4                                  	vpmaxsd xmm4,xmm14,xmm4
    23a8d356a75c:	c4 e2 59 39 e1                                  	vpminsd xmm4,xmm4,xmm1
    23a8d356a761:	85 ff                                           	test   edi,edi
    23a8d356a763:	0f 84 5d 00 00 00                               	je     0x23a8d356a7c6
    23a8d356a769:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    23a8d356a76d:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d356a772:	c5 89 db e4                                     	vpand  xmm4,xmm14,xmm4
    23a8d356a776:	85 f6                                           	test   esi,esi
    23a8d356a778:	0f 85 48 00 00 00                               	jne    0x23a8d356a7c6
    23a8d356a77e:	c4 c1 79 6e e1                                  	vmovd  xmm4,r9d
    23a8d356a783:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d356a788:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d356a78d:	c5 89 66 e9                                     	vpcmpgtd xmm5,xmm14,xmm1
    23a8d356a791:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    23a8d356a795:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356a79a:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    23a8d356a79f:	c4 41 31 66 ce                                  	vpcmpgtd xmm9,xmm9,xmm14
    23a8d356a7a4:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356a7a8:	c4 c1 59 db e9                                  	vpand  xmm5,xmm4,xmm9
    23a8d356a7ad:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356a7b2:	c5 89 fe e5                                     	vpaddd xmm4,xmm14,xmm5
    23a8d356a7b6:	c5 f8 10 ad c0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x340]
    23a8d356a7be:	c5 78 10 8d d0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x330]
    23a8d356a7c6:	c5 11 df fb                                     	vpandn xmm15,xmm13,xmm3
    23a8d356a7ca:	c4 41 69 db ed                                  	vpand  xmm13,xmm2,xmm13
    23a8d356a7cf:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    23a8d356a7d4:	44 8d 42 ff                                     	lea    r8d,[rdx-0x1]
    23a8d356a7d8:	c4 c1 79 6e d0                                  	vmovd  xmm2,r8d
    23a8d356a7dd:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d356a7e2:	44 8b 44 08 30                                  	mov    r8d,DWORD PTR [rax+rcx*1+0x30]
    23a8d356a7e7:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    23a8d356a7eb:	c4 e2 11 3d db                                  	vpmaxsd xmm3,xmm13,xmm3
    23a8d356a7f0:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    23a8d356a7f5:	45 85 db                                        	test   r11d,r11d
    23a8d356a7f8:	0f 84 4f 00 00 00                               	je     0x23a8d356a84d
    23a8d356a7fe:	c4 c1 79 6e d8                                  	vmovd  xmm3,r8d
    23a8d356a803:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d356a808:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d356a80d:	45 85 c0                                        	test   r8d,r8d
    23a8d356a810:	0f 85 37 00 00 00                               	jne    0x23a8d356a84d
    23a8d356a816:	c5 f9 6e da                                     	vmovd  xmm3,edx
    23a8d356a81a:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d356a81f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d356a824:	c5 91 66 ea                                     	vpcmpgtd xmm5,xmm13,xmm2
    23a8d356a828:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    23a8d356a82c:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356a831:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    23a8d356a836:	c4 41 31 66 cd                                  	vpcmpgtd xmm9,xmm9,xmm13
    23a8d356a83b:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356a83f:	c4 c1 61 db e9                                  	vpand  xmm5,xmm3,xmm9
    23a8d356a844:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356a849:	c5 91 fe dd                                     	vpaddd xmm3,xmm13,xmm5
    23a8d356a84d:	c4 41 79 6e c9                                  	vmovd  xmm9,r9d
    23a8d356a852:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d356a857:	c4 c2 61 40 d9                                  	vpmulld xmm3,xmm3,xmm9
    23a8d356a85c:	c5 e1 fe ec                                     	vpaddd xmm5,xmm3,xmm4
    23a8d356a860:	c4 e3 79 16 e9 03                               	vpextrd ecx,xmm5,0x3
    23a8d356a866:	c4 c3 79 16 e9 02                               	vpextrd r9d,xmm5,0x2
    23a8d356a86c:	48 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rcx
    23a8d356a873:	c4 e3 79 16 e9 01                               	vpextrd ecx,xmm5,0x1
    23a8d356a879:	48 89 8d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rcx
    23a8d356a880:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    23a8d356a884:	45 85 ff                                        	test   r15d,r15d
    23a8d356a887:	0f 85 2d 09 00 00                               	jne    0x23a8d356b1ba
    23a8d356a88d:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    23a8d356a897:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356a89c:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d356a8a0:	c5 09 fe f5                                     	vpaddd xmm14,xmm14,xmm5
    23a8d356a8a4:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d356a8a9:	c4 42 09 3d d2                                  	vpmaxsd xmm10,xmm14,xmm10
    23a8d356a8ae:	c4 62 29 39 d1                                  	vpminsd xmm10,xmm10,xmm1
    23a8d356a8b3:	85 ff                                           	test   edi,edi
    23a8d356a8b5:	0f 84 46 00 00 00                               	je     0x23a8d356a901
    23a8d356a8bb:	c5 79 6e d6                                     	vmovd  xmm10,esi
    23a8d356a8bf:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d356a8c4:	c4 41 09 db d2                                  	vpand  xmm10,xmm14,xmm10
    23a8d356a8c9:	85 f6                                           	test   esi,esi
    23a8d356a8cb:	0f 85 30 00 00 00                               	jne    0x23a8d356a901
    23a8d356a8d1:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d356a8d6:	c5 89 66 c9                                     	vpcmpgtd xmm1,xmm14,xmm1
    23a8d356a8da:	c4 c1 71 db c9                                  	vpand  xmm1,xmm1,xmm9
    23a8d356a8df:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356a8e4:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    23a8d356a8e9:	c4 41 29 66 d6                                  	vpcmpgtd xmm10,xmm10,xmm14
    23a8d356a8ee:	c5 29 df f9                                     	vpandn xmm15,xmm10,xmm1
    23a8d356a8f2:	c4 41 31 db d2                                  	vpand  xmm10,xmm9,xmm10
    23a8d356a8f7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    23a8d356a8fc:	c4 41 09 fe d2                                  	vpaddd xmm10,xmm14,xmm10
    23a8d356a901:	c5 11 fe ed                                     	vpaddd xmm13,xmm13,xmm5
    23a8d356a905:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    23a8d356a90a:	c4 42 11 3d f6                                  	vpmaxsd xmm14,xmm13,xmm14
    23a8d356a90f:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    23a8d356a914:	45 85 db                                        	test   r11d,r11d
    23a8d356a917:	0f 84 4f 00 00 00                               	je     0x23a8d356a96c
    23a8d356a91d:	c4 41 79 6e f0                                  	vmovd  xmm14,r8d
    23a8d356a922:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356a927:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    23a8d356a92c:	45 85 c0                                        	test   r8d,r8d
    23a8d356a92f:	0f 85 37 00 00 00                               	jne    0x23a8d356a96c
    23a8d356a935:	c5 79 6e f2                                     	vmovd  xmm14,edx
    23a8d356a939:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356a93e:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d356a942:	c5 91 66 d2                                     	vpcmpgtd xmm2,xmm13,xmm2
    23a8d356a946:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    23a8d356a94b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356a950:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    23a8d356a955:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    23a8d356a95a:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    23a8d356a95e:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    23a8d356a962:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    23a8d356a967:	c4 41 11 fe f6                                  	vpaddd xmm14,xmm13,xmm14
    23a8d356a96c:	c4 42 09 40 c9                                  	vpmulld xmm9,xmm14,xmm9
    23a8d356a971:	c5 31 fe ec                                     	vpaddd xmm13,xmm9,xmm4
    23a8d356a975:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    23a8d356a97c:	0f 85 d0 00 00 00                               	jne    0x23a8d356aa52
    23a8d356a982:	c5 d9 fe ed                                     	vpaddd xmm5,xmm4,xmm5
    23a8d356a986:	c5 a9 76 ed                                     	vpcmpeqd xmm5,xmm10,xmm5
    23a8d356a98a:	c5 f8 50 fd                                     	vmovmskps edi,xmm5
    23a8d356a98e:	83 ff 0f                                        	cmp    edi,0xf
    23a8d356a991:	0f 84 23 00 00 00                               	je     0x23a8d356a9ba
    23a8d356a997:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d356a99b:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356a99e:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    23a8d356a9a5:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d356a9a9:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356a9ad:	44 8d 1c 8b                                     	lea    r11d,[rbx+rcx*4]
    23a8d356a9b1:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356a9b5:	e9 fe 00 00 00                                  	jmp    0x23a8d356aab8
    23a8d356a9ba:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    23a8d356a9bd:	c5 fb 10 2c 38                                  	vmovsd xmm5,QWORD PTR [rax+rdi*1]
    23a8d356a9c2:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    23a8d356a9c9:	42 8d 3c 83                                     	lea    edi,[rbx+r8*4]
    23a8d356a9cd:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    23a8d356a9d2:	c4 c1 51 6c e9                                  	vpunpcklqdq xmm5,xmm5,xmm9
    23a8d356a9d7:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d356a9db:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    23a8d356a9e0:	8b bd 00 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x300]
    23a8d356a9e6:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d356a9e9:	c5 7b 10 14 38                                  	vmovsd xmm10,QWORD PTR [rax+rdi*1]
    23a8d356a9ee:	c4 41 31 6c ca                                  	vpunpcklqdq xmm9,xmm9,xmm10
    23a8d356a9f3:	c4 41 50 c6 d1 dd                               	vshufps xmm10,xmm5,xmm9,0xdd
    23a8d356a9f9:	c4 c1 50 c6 e9 88                               	vshufps xmm5,xmm5,xmm9,0x88
    23a8d356a9ff:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    23a8d356aa05:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d356aa09:	03 fb                                           	add    edi,ebx
    23a8d356aa0b:	c5 7b 10 2c 38                                  	vmovsd xmm13,QWORD PTR [rax+rdi*1]
    23a8d356aa10:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d356aa16:	03 fb                                           	add    edi,ebx
    23a8d356aa18:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    23a8d356aa1d:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    23a8d356aa22:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d356aa28:	03 fb                                           	add    edi,ebx
    23a8d356aa2a:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    23a8d356aa2f:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d356aa35:	03 fb                                           	add    edi,ebx
    23a8d356aa37:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    23a8d356aa3c:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    23a8d356aa41:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    23a8d356aa47:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    23a8d356aa4d:	e9 6b 03 00 00                                  	jmp    0x23a8d356adbd
    23a8d356aa52:	83 bd 30 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3d0],0x0
    23a8d356aa59:	0f 85 08 00 00 00                               	jne    0x23a8d356aa67
    23a8d356aa5f:	45 33 db                                        	xor    r11d,r11d
    23a8d356aa62:	e9 07 00 00 00                                  	jmp    0x23a8d356aa6e
    23a8d356aa67:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    23a8d356aa6a:	44 8b 1c 38                                     	mov    r11d,DWORD PTR [rax+rdi*1]
    23a8d356aa6e:	83 bd 08 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3f8],0x0
    23a8d356aa75:	0f 85 08 00 00 00                               	jne    0x23a8d356aa83
    23a8d356aa7b:	45 33 c0                                        	xor    r8d,r8d
    23a8d356aa7e:	e9 0d 00 00 00                                  	jmp    0x23a8d356aa90
    23a8d356aa83:	8b bd 80 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x380]
    23a8d356aa89:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d356aa8c:	44 8b 04 38                                     	mov    r8d,DWORD PTR [rax+rdi*1]
    23a8d356aa90:	83 bd e8 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x418],0x0
    23a8d356aa97:	0f 85 07 00 00 00                               	jne    0x23a8d356aaa4
    23a8d356aa9d:	33 ff                                           	xor    edi,edi
    23a8d356aa9f:	e9 07 00 00 00                                  	jmp    0x23a8d356aaab
    23a8d356aaa4:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d356aaa8:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356aaab:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356aab2:	0f 82 53 00 00 00                               	jb     0x23a8d356ab0b
    23a8d356aab8:	44 8b bd 00 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x300]
    23a8d356aabf:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d356aac3:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    23a8d356aac7:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    23a8d356aacb:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    23a8d356aad0:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356aad5:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    23a8d356aadc:	0f 85 3a 00 00 00                               	jne    0x23a8d356ab1c
    23a8d356aae2:	c4 c3 79 16 eb 01                               	vpextrd r11d,xmm5,0x1
    23a8d356aae8:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d356aaec:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356aaf0:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    23a8d356aaf4:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    23a8d356aaf7:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    23a8d356aafa:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    23a8d356ab00:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    23a8d356ab03:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    23a8d356ab06:	e9 89 00 00 00                                  	jmp    0x23a8d356ab94
    23a8d356ab0b:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    23a8d356ab0f:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    23a8d356ab14:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356ab19:	45 33 ff                                        	xor    r15d,r15d
    23a8d356ab1c:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    23a8d356ab23:	0f 85 07 00 00 00                               	jne    0x23a8d356ab30
    23a8d356ab29:	33 d2                                           	xor    edx,edx
    23a8d356ab2b:	e9 0d 00 00 00                                  	jmp    0x23a8d356ab3d
    23a8d356ab30:	c4 c1 79 7e eb                                  	vmovd  r11d,xmm5
    23a8d356ab35:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d356ab39:	42 8b 14 18                                     	mov    edx,DWORD PTR [rax+r11*1]
    23a8d356ab3d:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    23a8d356ab44:	0f 85 08 00 00 00                               	jne    0x23a8d356ab52
    23a8d356ab4a:	45 33 db                                        	xor    r11d,r11d
    23a8d356ab4d:	e9 0e 00 00 00                                  	jmp    0x23a8d356ab60
    23a8d356ab52:	c4 c3 79 16 eb 01                               	vpextrd r11d,xmm5,0x1
    23a8d356ab58:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d356ab5c:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356ab60:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    23a8d356ab67:	0f 85 07 00 00 00                               	jne    0x23a8d356ab74
    23a8d356ab6d:	33 c9                                           	xor    ecx,ecx
    23a8d356ab6f:	e9 0c 00 00 00                                  	jmp    0x23a8d356ab80
    23a8d356ab74:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    23a8d356ab7a:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    23a8d356ab7d:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    23a8d356ab80:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356ab87:	0f 83 07 00 00 00                               	jae    0x23a8d356ab94
    23a8d356ab8d:	33 f6                                           	xor    esi,esi
    23a8d356ab8f:	e9 0c 00 00 00                                  	jmp    0x23a8d356aba0
    23a8d356ab94:	c4 e3 79 16 ee 03                               	vpextrd esi,xmm5,0x3
    23a8d356ab9a:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d356ab9d:	8b 34 30                                        	mov    esi,DWORD PTR [rax+rsi*1]
    23a8d356aba0:	c4 c3 09 22 e8 01                               	vpinsrd xmm5,xmm14,r8d,0x1
    23a8d356aba6:	c5 79 6e f2                                     	vmovd  xmm14,edx
    23a8d356abaa:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356abaf:	c4 43 09 22 f3 01                               	vpinsrd xmm14,xmm14,r11d,0x1
    23a8d356abb5:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    23a8d356abbc:	0f 85 2c 00 00 00                               	jne    0x23a8d356abee
    23a8d356abc2:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    23a8d356abc8:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d356abcc:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356abd0:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    23a8d356abd5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d356abd9:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356abdd:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    23a8d356abe3:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    23a8d356abe6:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    23a8d356abe9:	e9 a1 00 00 00                                  	jmp    0x23a8d356ac8f
    23a8d356abee:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    23a8d356abf5:	0f 85 08 00 00 00                               	jne    0x23a8d356ac03
    23a8d356abfb:	45 33 db                                        	xor    r11d,r11d
    23a8d356abfe:	e9 0d 00 00 00                                  	jmp    0x23a8d356ac10
    23a8d356ac03:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    23a8d356ac08:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d356ac0c:	46 8b 1c 00                                     	mov    r11d,DWORD PTR [rax+r8*1]
    23a8d356ac10:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    23a8d356ac17:	0f 85 08 00 00 00                               	jne    0x23a8d356ac25
    23a8d356ac1d:	45 33 c0                                        	xor    r8d,r8d
    23a8d356ac20:	e9 0e 00 00 00                                  	jmp    0x23a8d356ac33
    23a8d356ac25:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    23a8d356ac2b:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d356ac2f:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356ac33:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    23a8d356ac3a:	0f 85 07 00 00 00                               	jne    0x23a8d356ac47
    23a8d356ac40:	33 d2                                           	xor    edx,edx
    23a8d356ac42:	e9 0c 00 00 00                                  	jmp    0x23a8d356ac53
    23a8d356ac47:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    23a8d356ac4d:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    23a8d356ac50:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    23a8d356ac53:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356ac5a:	0f 83 2f 00 00 00                               	jae    0x23a8d356ac8f
    23a8d356ac60:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    23a8d356ac66:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    23a8d356ac6c:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    23a8d356ac71:	c4 41 79 6e d3                                  	vmovd  xmm10,r11d
    23a8d356ac76:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d356ac7b:	c4 43 29 22 d0 01                               	vpinsrd xmm10,xmm10,r8d,0x1
    23a8d356ac81:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    23a8d356ac87:	45 33 c9                                        	xor    r9d,r9d
    23a8d356ac8a:	e9 6e 00 00 00                                  	jmp    0x23a8d356acfd
    23a8d356ac8f:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    23a8d356ac95:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    23a8d356ac99:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    23a8d356ac9d:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    23a8d356aca3:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    23a8d356aca9:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    23a8d356acae:	c4 41 79 6e d3                                  	vmovd  xmm10,r11d
    23a8d356acb3:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d356acb8:	c4 43 29 22 d0 01                               	vpinsrd xmm10,xmm10,r8d,0x1
    23a8d356acbe:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    23a8d356acc4:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    23a8d356accb:	0f 85 2c 00 00 00                               	jne    0x23a8d356acfd
    23a8d356acd1:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d356acd7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d356acda:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356acdd:	c4 41 79 7e c8                                  	vmovd  r8d,xmm9
    23a8d356ace2:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d356ace6:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356acea:	c4 43 79 16 cb 02                               	vpextrd r11d,xmm9,0x2
    23a8d356acf0:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d356acf4:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356acf8:	e9 77 00 00 00                                  	jmp    0x23a8d356ad74
    23a8d356acfd:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    23a8d356ad04:	0f 85 08 00 00 00                               	jne    0x23a8d356ad12
    23a8d356ad0a:	45 33 c0                                        	xor    r8d,r8d
    23a8d356ad0d:	e9 0b 00 00 00                                  	jmp    0x23a8d356ad1d
    23a8d356ad12:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d356ad16:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d356ad19:	44 8b 04 38                                     	mov    r8d,DWORD PTR [rax+rdi*1]
    23a8d356ad1d:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    23a8d356ad24:	0f 85 07 00 00 00                               	jne    0x23a8d356ad31
    23a8d356ad2a:	33 ff                                           	xor    edi,edi
    23a8d356ad2c:	e9 0c 00 00 00                                  	jmp    0x23a8d356ad3d
    23a8d356ad31:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d356ad37:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d356ad3a:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356ad3d:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    23a8d356ad44:	0f 85 08 00 00 00                               	jne    0x23a8d356ad52
    23a8d356ad4a:	45 33 db                                        	xor    r11d,r11d
    23a8d356ad4d:	e9 0e 00 00 00                                  	jmp    0x23a8d356ad60
    23a8d356ad52:	c4 43 79 16 cb 02                               	vpextrd r11d,xmm9,0x2
    23a8d356ad58:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d356ad5c:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356ad60:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356ad67:	0f 83 07 00 00 00                               	jae    0x23a8d356ad74
    23a8d356ad6d:	33 db                                           	xor    ebx,ebx
    23a8d356ad6f:	e9 0c 00 00 00                                  	jmp    0x23a8d356ad80
    23a8d356ad74:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    23a8d356ad7a:	8d 1c 93                                        	lea    ebx,[rbx+rdx*4]
    23a8d356ad7d:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    23a8d356ad80:	c4 c3 51 22 ef 03                               	vpinsrd xmm5,xmm5,r15d,0x3
    23a8d356ad86:	c4 63 11 22 ce 03                               	vpinsrd xmm9,xmm13,esi,0x3
    23a8d356ad8c:	c4 41 79 6e e8                                  	vmovd  xmm13,r8d
    23a8d356ad91:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356ad96:	c4 63 11 22 ef 01                               	vpinsrd xmm13,xmm13,edi,0x1
    23a8d356ad9c:	c4 43 11 22 eb 02                               	vpinsrd xmm13,xmm13,r11d,0x2
    23a8d356ada2:	c4 63 11 22 f3 03                               	vpinsrd xmm14,xmm13,ebx,0x3
    23a8d356ada8:	c4 43 29 22 d1 03                               	vpinsrd xmm10,xmm10,r9d,0x3
    23a8d356adae:	c4 41 79 28 f9                                  	vmovapd xmm15,xmm9
    23a8d356adb3:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    23a8d356adb8:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    23a8d356adbd:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    23a8d356adc1:	c5 98 5c fe                                     	vsubps xmm7,xmm12,xmm6
    23a8d356adc5:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    23a8d356adca:	c5 18 5c d8                                     	vsubps xmm11,xmm12,xmm0
    23a8d356adce:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    23a8d356add8:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356addd:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d356ade2:	c4 c1 51 db cd                                  	vpand  xmm1,xmm5,xmm13
    23a8d356ade7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356adec:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d356adf2:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d356adf7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356adfc:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d356ae01:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d356ae05:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d356ae09:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d356ae0e:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    23a8d356ae12:	c4 c1 29 db d5                                  	vpand  xmm2,xmm10,xmm13
    23a8d356ae17:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356ae1c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d356ae22:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d356ae27:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356ae2c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d356ae31:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d356ae35:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d356ae39:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d356ae3e:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    23a8d356ae42:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d356ae46:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    23a8d356ae4a:	c4 c1 31 db d5                                  	vpand  xmm2,xmm9,xmm13
    23a8d356ae4f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356ae54:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d356ae5a:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d356ae5f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356ae64:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d356ae69:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d356ae6d:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d356ae71:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d356ae76:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d356ae7a:	c4 c1 09 db dd                                  	vpand  xmm3,xmm14,xmm13
    23a8d356ae7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356ae84:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d356ae8a:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d356ae8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356ae94:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d356ae99:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d356ae9d:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d356aea1:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d356aea6:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d356aeaa:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    23a8d356aeae:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    23a8d356aeb2:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d356aeb6:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    23a8d356aec0:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d356aec5:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d356aec9:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    23a8d356aecd:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    23a8d356aed4:	c4 a1 7a 7f 0c 00                               	vmovdqu XMMWORD PTR [rax+r8*1],xmm1
    23a8d356aeda:	c5 f1 72 d5 10                                  	vpsrld xmm1,xmm5,0x10
    23a8d356aedf:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    23a8d356aee4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356aee9:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d356aeef:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d356aef4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356aef9:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d356aefe:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d356af02:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d356af06:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d356af0b:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    23a8d356af0f:	c4 c1 61 72 d2 10                               	vpsrld xmm3,xmm10,0x10
    23a8d356af15:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d356af1a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356af1f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d356af25:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d356af2a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356af2f:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d356af34:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d356af38:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d356af3c:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d356af41:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d356af45:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d356af49:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    23a8d356af4d:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    23a8d356af53:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d356af58:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356af5d:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d356af63:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d356af68:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356af6d:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d356af72:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d356af76:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d356af7a:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d356af7f:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d356af83:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    23a8d356af89:	c4 c1 59 db e5                                  	vpand  xmm4,xmm4,xmm13
    23a8d356af8e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356af93:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d356af99:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d356af9e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356afa3:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d356afa8:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d356afac:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d356afb0:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d356afb5:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    23a8d356afb9:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    23a8d356afbd:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    23a8d356afc1:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d356afc5:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    23a8d356afc9:	c4 a1 7a 7f 4c 00 20                            	vmovdqu XMMWORD PTR [rax+r8*1+0x20],xmm1
    23a8d356afd0:	c5 f1 72 d5 08                                  	vpsrld xmm1,xmm5,0x8
    23a8d356afd5:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    23a8d356afda:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356afdf:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d356afe5:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d356afea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356afef:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d356aff4:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d356aff8:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d356affc:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d356b001:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    23a8d356b005:	c4 c1 61 72 d2 08                               	vpsrld xmm3,xmm10,0x8
    23a8d356b00b:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d356b010:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b015:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d356b01b:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d356b020:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b025:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d356b02a:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d356b02e:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d356b032:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d356b037:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d356b03b:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d356b03f:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    23a8d356b043:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    23a8d356b049:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    23a8d356b04e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b053:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d356b059:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d356b05e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b063:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d356b068:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d356b06c:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d356b070:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d356b075:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d356b079:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    23a8d356b07f:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    23a8d356b084:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b089:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    23a8d356b08f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    23a8d356b094:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b099:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    23a8d356b09f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    23a8d356b0a4:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    23a8d356b0a9:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    23a8d356b0ae:	c4 41 78 59 ed                                  	vmulps xmm13,xmm0,xmm13
    23a8d356b0b3:	c4 41 60 58 ed                                  	vaddps xmm13,xmm3,xmm13
    23a8d356b0b8:	c4 41 48 59 ed                                  	vmulps xmm13,xmm6,xmm13
    23a8d356b0bd:	c4 41 70 58 ed                                  	vaddps xmm13,xmm1,xmm13
    23a8d356b0c2:	c5 10 59 ea                                     	vmulps xmm13,xmm13,xmm2
    23a8d356b0c6:	c4 21 7a 7f 6c 00 10                            	vmovdqu XMMWORD PTR [rax+r8*1+0x10],xmm13
    23a8d356b0cd:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    23a8d356b0d2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b0d7:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d356b0dd:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d356b0e2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b0e7:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d356b0ec:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d356b0f0:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d356b0f4:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d356b0f9:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    23a8d356b0fd:	c4 c1 29 72 d2 18                               	vpsrld xmm10,xmm10,0x18
    23a8d356b103:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b108:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    23a8d356b10e:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    23a8d356b113:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b118:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    23a8d356b11e:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    23a8d356b123:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    23a8d356b128:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    23a8d356b12d:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    23a8d356b132:	c4 c1 50 58 ea                                  	vaddps xmm5,xmm5,xmm10
    23a8d356b137:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    23a8d356b13b:	c4 c1 41 72 d1 18                               	vpsrld xmm7,xmm9,0x18
    23a8d356b141:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b146:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d356b14c:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d356b151:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b156:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d356b15b:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d356b15f:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d356b163:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d356b168:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    23a8d356b16c:	c4 c1 31 72 d6 18                               	vpsrld xmm9,xmm14,0x18
    23a8d356b172:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b177:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    23a8d356b17d:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    23a8d356b182:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b187:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    23a8d356b18d:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    23a8d356b192:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    23a8d356b197:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    23a8d356b19c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d356b1a1:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    23a8d356b1a5:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d356b1a9:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    23a8d356b1ad:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    23a8d356b1b5:	e9 c7 01 00 00                                  	jmp    0x23a8d356b381
    23a8d356b1ba:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    23a8d356b1c1:	0f 85 23 00 00 00                               	jne    0x23a8d356b1ea
    23a8d356b1c7:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d356b1cb:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356b1ce:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    23a8d356b1d5:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d356b1d9:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356b1dd:	44 8d 1c 8b                                     	lea    r11d,[rbx+rcx*4]
    23a8d356b1e1:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356b1e5:	e9 66 00 00 00                                  	jmp    0x23a8d356b250
    23a8d356b1ea:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    23a8d356b1f1:	0f 85 08 00 00 00                               	jne    0x23a8d356b1ff
    23a8d356b1f7:	45 33 db                                        	xor    r11d,r11d
    23a8d356b1fa:	e9 07 00 00 00                                  	jmp    0x23a8d356b206
    23a8d356b1ff:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    23a8d356b202:	44 8b 1c 38                                     	mov    r11d,DWORD PTR [rax+rdi*1]
    23a8d356b206:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    23a8d356b20d:	0f 85 08 00 00 00                               	jne    0x23a8d356b21b
    23a8d356b213:	45 33 c0                                        	xor    r8d,r8d
    23a8d356b216:	e9 0d 00 00 00                                  	jmp    0x23a8d356b228
    23a8d356b21b:	8b bd 80 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x380]
    23a8d356b221:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d356b224:	44 8b 04 38                                     	mov    r8d,DWORD PTR [rax+rdi*1]
    23a8d356b228:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    23a8d356b22f:	0f 85 07 00 00 00                               	jne    0x23a8d356b23c
    23a8d356b235:	33 ff                                           	xor    edi,edi
    23a8d356b237:	e9 07 00 00 00                                  	jmp    0x23a8d356b243
    23a8d356b23c:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d356b240:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356b243:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356b24a:	0f 82 14 00 00 00                               	jb     0x23a8d356b264
    23a8d356b250:	44 8b bd 00 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x300]
    23a8d356b257:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d356b25b:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    23a8d356b25f:	e9 03 00 00 00                                  	jmp    0x23a8d356b267
    23a8d356b264:	45 33 ff                                        	xor    r15d,r15d
    23a8d356b267:	c4 c1 79 6e c3                                  	vmovd  xmm0,r11d
    23a8d356b26c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d356b271:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    23a8d356b277:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    23a8d356b27d:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    23a8d356b283:	4c 8b 15 46 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb46]        # 0x23a8d356add0
    23a8d356b28a:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356b28f:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d356b293:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    23a8d356b297:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b29c:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d356b2a2:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d356b2a7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b2ac:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d356b2b1:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d356b2b5:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d356b2b9:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d356b2be:	4c 8b 15 f3 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf3]        # 0x23a8d356aeb8
    23a8d356b2c5:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d356b2ca:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d356b2ce:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d356b2d2:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    23a8d356b2d9:	c4 a1 7a 7f 34 00                               	vmovdqu XMMWORD PTR [rax+r8*1],xmm6
    23a8d356b2df:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    23a8d356b2e4:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    23a8d356b2e8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b2ed:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d356b2f3:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d356b2f8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b2fd:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d356b302:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d356b306:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d356b30a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d356b30f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d356b313:	c4 a1 7a 7f 74 00 20                            	vmovdqu XMMWORD PTR [rax+r8*1+0x20],xmm6
    23a8d356b31a:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    23a8d356b31f:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    23a8d356b323:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b328:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d356b32e:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d356b333:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b338:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d356b33d:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d356b341:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d356b345:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d356b34a:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    23a8d356b34e:	c4 a1 7a 7f 6c 00 10                            	vmovdqu XMMWORD PTR [rax+r8*1+0x10],xmm5
    23a8d356b355:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    23a8d356b35a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356b35f:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d356b365:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d356b36a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356b36f:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d356b374:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d356b378:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d356b37c:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d356b381:	4c 8b 15 30 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb30]        # 0x23a8d356aeb8
    23a8d356b388:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356b38d:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d356b391:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    23a8d356b395:	c4 a1 7a 7f 44 00 30                            	vmovdqu XMMWORD PTR [rax+r8*1+0x30],xmm0
    23a8d356b39c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356b39f:	e9 5f 03 00 00                                  	jmp    0x23a8d356b703
    23a8d356b3a4:	8b 95 80 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x380]
    23a8d356b3aa:	4c 8d 40 08                                     	lea    r8,[rax+0x8]
    23a8d356b3ae:	c4 82 79 18 34 38                               	vbroadcastss xmm6,DWORD PTR [r8+r15*1]
    23a8d356b3b4:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d356b3b8:	c4 c2 79 18 3c 38                               	vbroadcastss xmm7,DWORD PTR [r8+rdi*1]
    23a8d356b3be:	c5 a8 59 ff                                     	vmulps xmm7,xmm10,xmm7
    23a8d356b3c2:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    23a8d356b3c6:	c4 82 79 18 3c 18                               	vbroadcastss xmm7,DWORD PTR [r8+r11*1]
    23a8d356b3cc:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    23a8d356b3d0:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    23a8d356b3d4:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d356b3d9:	c5 c0 59 de                                     	vmulps xmm3,xmm7,xmm6
    23a8d356b3dd:	83 fa 03                                        	cmp    edx,0x3
    23a8d356b3e0:	0f 84 96 02 00 00                               	je     0x23a8d356b67c
    23a8d356b3e6:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d356b3ea:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356b3ed:	c5 fa 7f b4 38 60 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x260],xmm6
    23a8d356b3f6:	c5 fa 7f b4 38 50 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x250],xmm6
    23a8d356b3ff:	c5 fa 7f b4 38 40 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x240],xmm6
    23a8d356b408:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    23a8d356b411:	c5 fa 7f 94 38 80 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x280],xmm2
    23a8d356b41a:	c5 fa 7f 9c 38 70 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x270],xmm3
    23a8d356b423:	c5 fa 7f b4 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm6
    23a8d356b42c:	48 89 b5 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rsi
    23a8d356b433:	48 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rcx
    23a8d356b43a:	45 33 c0                                        	xor    r8d,r8d
    23a8d356b43d:	e9 4b 00 00 00                                  	jmp    0x23a8d356b48d
    23a8d356b442:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356b44b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356b454:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356b45d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356b466:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356b46f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356b478:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d356b480:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    23a8d356b486:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356b489:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356b48d:	4c 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r8
    23a8d356b494:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d356b499:	0f 85 08 42 00 00                               	jne    0x23a8d356f6a7
    23a8d356b49f:	8b d1                                           	mov    edx,ecx
    23a8d356b4a1:	41 8b c8                                        	mov    ecx,r8d
    23a8d356b4a4:	8b 9d 70 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x290]
    23a8d356b4aa:	d3 eb                                           	shr    ebx,cl
    23a8d356b4ac:	f6 c3 01                                        	test   bl,0x1
    23a8d356b4af:	0f 84 20 01 00 00                               	je     0x23a8d356b5d5
    23a8d356b4b5:	8b 4c 10 10                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x10]
    23a8d356b4b9:	8b 5c 10 0c                                     	mov    ebx,DWORD PTR [rax+rdx*1+0xc]
    23a8d356b4bd:	44 8b 4c 10 08                                  	mov    r9d,DWORD PTR [rax+rdx*1+0x8]
    23a8d356b4c2:	44 8b 4c 10 04                                  	mov    r9d,DWORD PTR [rax+rdx*1+0x4]
    23a8d356b4c7:	48 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rbx
    23a8d356b4ce:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    23a8d356b4d1:	83 fb 02                                        	cmp    ebx,0x2
    23a8d356b4d4:	0f 84 9b 00 00 00                               	je     0x23a8d356b575
    23a8d356b4da:	48 89 8d 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rcx
    23a8d356b4e1:	85 db                                           	test   ebx,ebx
    23a8d356b4e3:	0f 85 38 00 00 00                               	jne    0x23a8d356b521
    23a8d356b4e9:	42 8d 9c 87 90 02 00 00                         	lea    ebx,[rdi+r8*4+0x290]
    23a8d356b4f1:	c5 fa 10 0c 18                                  	vmovss xmm1,DWORD PTR [rax+rbx*1]
    23a8d356b4f6:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    23a8d356b4fc:	41 8b c8                                        	mov    ecx,r8d
    23a8d356b4ff:	c1 e1 04                                        	shl    ecx,0x4
    23a8d356b502:	03 d9                                           	add    ebx,ecx
    23a8d356b504:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356b508:	41 8b c1                                        	mov    eax,r9d
    23a8d356b50b:	8b 95 40 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c0]
    23a8d356b511:	8b 8d 38 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3c8]
    23a8d356b517:	e8 04 0d ee ff                                  	call   0x23a8d344c220
    23a8d356b51c:	e9 b4 00 00 00                                  	jmp    0x23a8d356b5d5
    23a8d356b521:	4c 8b e0                                        	mov    r12,rax
    23a8d356b524:	8b c2                                           	mov    eax,edx
    23a8d356b526:	41 8b 5c 04 14                                  	mov    ebx,DWORD PTR [r12+rax*1+0x14]
    23a8d356b52b:	42 8d 94 87 90 02 00 00                         	lea    edx,[rdi+r8*4+0x290]
    23a8d356b533:	c4 c1 7a 10 0c 14                               	vmovss xmm1,DWORD PTR [r12+rdx*1]
    23a8d356b539:	42 8d 94 87 80 02 00 00                         	lea    edx,[rdi+r8*4+0x280]
    23a8d356b541:	c4 c1 7a 10 14 14                               	vmovss xmm2,DWORD PTR [r12+rdx*1]
    23a8d356b547:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    23a8d356b54d:	41 8b c8                                        	mov    ecx,r8d
    23a8d356b550:	c1 e1 04                                        	shl    ecx,0x4
    23a8d356b553:	03 d1                                           	add    edx,ecx
    23a8d356b555:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356b559:	41 8b c1                                        	mov    eax,r9d
    23a8d356b55c:	44 8b ca                                        	mov    r9d,edx
    23a8d356b55f:	8b 95 40 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c0]
    23a8d356b565:	8b 8d 38 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3c8]
    23a8d356b56b:	e8 c8 0c ee ff                                  	call   0x23a8d344c238
    23a8d356b570:	e9 60 00 00 00                                  	jmp    0x23a8d356b5d5
    23a8d356b575:	4c 8b d8                                        	mov    r11,rax
    23a8d356b578:	8b c2                                           	mov    eax,edx
    23a8d356b57a:	41 8b 5c 03 14                                  	mov    ebx,DWORD PTR [r11+rax*1+0x14]
    23a8d356b57f:	45 8b 64 03 18                                  	mov    r12d,DWORD PTR [r11+rax*1+0x18]
    23a8d356b584:	46 8d bc 87 90 02 00 00                         	lea    r15d,[rdi+r8*4+0x290]
    23a8d356b58c:	c4 81 7a 10 0c 3b                               	vmovss xmm1,DWORD PTR [r11+r15*1]
    23a8d356b592:	46 8d bc 87 80 02 00 00                         	lea    r15d,[rdi+r8*4+0x280]
    23a8d356b59a:	c4 81 7a 10 14 3b                               	vmovss xmm2,DWORD PTR [r11+r15*1]
    23a8d356b5a0:	46 8d bc 87 70 02 00 00                         	lea    r15d,[rdi+r8*4+0x270]
    23a8d356b5a8:	c4 81 7a 10 1c 3b                               	vmovss xmm3,DWORD PTR [r11+r15*1]
    23a8d356b5ae:	44 8d bf 30 02 00 00                            	lea    r15d,[rdi+0x230]
    23a8d356b5b5:	41 8b d0                                        	mov    edx,r8d
    23a8d356b5b8:	c1 e2 04                                        	shl    edx,0x4
    23a8d356b5bb:	44 03 fa                                        	add    r15d,edx
    23a8d356b5be:	41 57                                           	push   r15
    23a8d356b5c0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356b5c4:	41 8b c1                                        	mov    eax,r9d
    23a8d356b5c7:	8b 95 40 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c0]
    23a8d356b5cd:	45 8b cc                                        	mov    r9d,r12d
    23a8d356b5d0:	e8 53 0c ee ff                                  	call   0x23a8d344c228
    23a8d356b5d5:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    23a8d356b5dc:	41 83 c0 01                                     	add    r8d,0x1
    23a8d356b5e0:	41 83 f8 04                                     	cmp    r8d,0x4
    23a8d356b5e4:	0f 85 96 fe ff ff                               	jne    0x23a8d356b480
    23a8d356b5ea:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356b5ed:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356b5f1:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    23a8d356b5fb:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    23a8d356b605:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    23a8d356b609:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    23a8d356b613:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    23a8d356b61d:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    23a8d356b622:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    23a8d356b626:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    23a8d356b62c:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    23a8d356b633:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    23a8d356b637:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    23a8d356b63e:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    23a8d356b642:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    23a8d356b647:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    23a8d356b64b:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    23a8d356b652:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    23a8d356b656:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    23a8d356b65c:	49 8b c0                                        	mov    rax,r8
    23a8d356b65f:	c5 78 10 a5 60 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2a0]
    23a8d356b667:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    23a8d356b66f:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    23a8d356b677:	e9 87 00 00 00                                  	jmp    0x23a8d356b703
    23a8d356b67c:	8b c1                                           	mov    eax,ecx
    23a8d356b67e:	8b ce                                           	mov    ecx,esi
    23a8d356b680:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356b684:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d356b688:	8b 95 70 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x290]
    23a8d356b68e:	e8 95 0e ee ff                                  	call   0x23a8d344c528
    23a8d356b693:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356b696:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356b69a:	c5 78 10 a5 60 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2a0]
    23a8d356b6a2:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    23a8d356b6aa:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    23a8d356b6b2:	e9 4c 00 00 00                                  	jmp    0x23a8d356b703
    23a8d356b6b7:	4c 8b c0                                        	mov    r8,rax
    23a8d356b6ba:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    23a8d356b6be:	44 8b e1                                        	mov    r12d,ecx
    23a8d356b6c1:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d356b6c7:	c4 c1 7a 7f 04 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm0
    23a8d356b6cd:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    23a8d356b6d1:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d356b6d7:	c4 c1 7a 7f 44 30 10                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x10],xmm0
    23a8d356b6de:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    23a8d356b6e2:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d356b6e8:	c4 c1 7a 7f 44 30 20                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x20],xmm0
    23a8d356b6ef:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    23a8d356b6f3:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    23a8d356b6f9:	c4 c1 7a 7f 44 30 30                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x30],xmm0
    23a8d356b700:	49 8b c0                                        	mov    rax,r8
    23a8d356b703:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    23a8d356b70a:	41 83 c3 01                                     	add    r11d,0x1
    23a8d356b70e:	41 83 fb 04                                     	cmp    r11d,0x4
    23a8d356b712:	0f 85 e8 ec ff ff                               	jne    0x23a8d356a400
    23a8d356b718:	c5 fa 6f 84 38 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x130]
    23a8d356b721:	4c 8b 15 de ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeede]        # 0x23a8d356a606
    23a8d356b728:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356b72d:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d356b731:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d356b735:	c5 f8 10 b5 20 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x2e0]
    23a8d356b73d:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    23a8d356b741:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d356b745:	c5 fa 6f b4 38 40 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x140]
    23a8d356b74e:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    23a8d356b752:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    23a8d356b757:	c5 f0 58 fd                                     	vaddps xmm7,xmm1,xmm5
    23a8d356b75b:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d356b75f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356b763:	c5 fa 6f b4 38 50 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x150]
    23a8d356b76c:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    23a8d356b770:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    23a8d356b775:	c5 88 58 ed                                     	vaddps xmm5,xmm14,xmm5
    23a8d356b779:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    23a8d356b77d:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d356b781:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    23a8d356b78b:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356b790:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d356b794:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    23a8d356b798:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356b7a0:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b7a4:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    23a8d356b7a9:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356b7ad:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    23a8d356b7b1:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b7b5:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d356b7b9:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    23a8d356b7c0:	46 8b 84 00 38 01 00 00                         	mov    r8d,DWORD PTR [rax+r8*1+0x138]
    23a8d356b7c8:	4d 8b d8                                        	mov    r11,r8
    23a8d356b7cb:	41 83 c3 ff                                     	add    r11d,0xffffffff
    23a8d356b7cf:	0f 85 e5 00 00 00                               	jne    0x23a8d356b8ba
    23a8d356b7d5:	c5 fa 6f b4 38 10 02 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x210]
    23a8d356b7de:	c5 7a 6f 84 38 d0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1d0]
    23a8d356b7e7:	4c 8d 80 38 36 00 00                            	lea    r8,[rax+0x3638]
    23a8d356b7ee:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d356b7f2:	c4 02 79 18 0c 20                               	vbroadcastss xmm9,DWORD PTR [r8+r12*1]
    23a8d356b7f8:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    23a8d356b7fd:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    23a8d356b802:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    23a8d356b807:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d356b80c:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d356b811:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    23a8d356b816:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    23a8d356b81b:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b81f:	c5 40 5d f6                                     	vminps xmm14,xmm7,xmm6
    23a8d356b823:	c5 fa 6f b4 38 00 02 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x200]
    23a8d356b82c:	c5 7a 6f 84 38 c0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1c0]
    23a8d356b835:	4c 8d 80 34 36 00 00                            	lea    r8,[rax+0x3634]
    23a8d356b83c:	c4 02 79 18 0c 20                               	vbroadcastss xmm9,DWORD PTR [r8+r12*1]
    23a8d356b842:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    23a8d356b847:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    23a8d356b84c:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    23a8d356b851:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d356b856:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d356b85b:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    23a8d356b860:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    23a8d356b865:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b869:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    23a8d356b86d:	c5 fa 6f b4 38 f0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x1f0]
    23a8d356b876:	c5 7a 6f 84 38 b0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1b0]
    23a8d356b87f:	4c 8d 80 30 36 00 00                            	lea    r8,[rax+0x3630]
    23a8d356b886:	c4 02 79 18 0c 20                               	vbroadcastss xmm9,DWORD PTR [r8+r12*1]
    23a8d356b88c:	c4 c1 78 58 c1                                  	vaddps xmm0,xmm0,xmm9
    23a8d356b891:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b895:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356b899:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d356b89d:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b8a1:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356b8a5:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    23a8d356b8a9:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b8ad:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356b8b1:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d356b8b5:	e9 55 01 00 00                                  	jmp    0x23a8d356ba0f
    23a8d356b8ba:	41 83 fb 02                                     	cmp    r11d,0x2
    23a8d356b8be:	0f 84 82 00 00 00                               	je     0x23a8d356b946
    23a8d356b8c4:	c5 fa 6f 84 38 d0 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x1d0]
    23a8d356b8cd:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d356b8d1:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b8d5:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356b8d9:	c5 7a 6f 84 38 c0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1c0]
    23a8d356b8e2:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    23a8d356b8e7:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d356b8ec:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    23a8d356b8f1:	4c 8d a0 1c 37 00 00                            	lea    r12,[rax+0x371c]
    23a8d356b8f8:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356b8fc:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    23a8d356b902:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d356b907:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    23a8d356b90c:	c4 c1 40 5d c8                                  	vminps xmm1,xmm7,xmm8
    23a8d356b911:	c5 7a 6f 84 38 b0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1b0]
    23a8d356b91a:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    23a8d356b91f:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b923:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d356b927:	4c 8d a0 18 37 00 00                            	lea    r12,[rax+0x3718]
    23a8d356b92e:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    23a8d356b934:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    23a8d356b939:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b93d:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d356b941:	e9 42 00 00 00                                  	jmp    0x23a8d356b988
    23a8d356b946:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    23a8d356b94a:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b94e:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356b952:	4c 8d a0 1c 37 00 00                            	lea    r12,[rax+0x371c]
    23a8d356b959:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356b95d:	c4 82 79 18 34 1c                               	vbroadcastss xmm6,DWORD PTR [r12+r11*1]
    23a8d356b963:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    23a8d356b967:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b96b:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    23a8d356b96f:	4c 8d a0 18 37 00 00                            	lea    r12,[rax+0x3718]
    23a8d356b976:	c4 82 79 18 34 1c                               	vbroadcastss xmm6,DWORD PTR [r12+r11*1]
    23a8d356b97c:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    23a8d356b980:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    23a8d356b984:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    23a8d356b988:	4c 8d a0 20 37 00 00                            	lea    r12,[rax+0x3720]
    23a8d356b98f:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    23a8d356b995:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d356b99a:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356b99e:	c5 40 5d f0                                     	vminps xmm14,xmm7,xmm0
    23a8d356b9a2:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d356b9a6:	0f 84 60 00 00 00                               	je     0x23a8d356ba0c
    23a8d356b9ac:	c4 a1 7a 10 84 18 24 37 00 00                   	vmovss xmm0,DWORD PTR [rax+r11*1+0x3724]
    23a8d356b9b6:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    23a8d356b9bb:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    23a8d356b9c1:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    23a8d356b9c7:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    23a8d356b9cc:	0f 87 09 00 00 00                               	ja     0x23a8d356b9db
    23a8d356b9d2:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d356b9d6:	e9 05 00 00 00                                  	jmp    0x23a8d356b9e0
    23a8d356b9db:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    23a8d356b9e0:	c4 41 20 57 db                                  	vxorps xmm11,xmm11,xmm11
    23a8d356b9e5:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d356b9e9:	0f 87 0a 00 00 00                               	ja     0x23a8d356b9f9
    23a8d356b9ef:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d356b9f4:	e9 05 00 00 00                                  	jmp    0x23a8d356b9fe
    23a8d356b9f9:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    23a8d356b9fe:	c4 62 79 18 e8                                  	vbroadcastss xmm13,xmm0
    23a8d356ba03:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d356ba07:	e9 b0 13 00 00                                  	jmp    0x23a8d356cdbc
    23a8d356ba0c:	4d 8b e3                                        	mov    r12,r11
    23a8d356ba0f:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    23a8d356ba14:	c4 c1 50 5f c5                                  	vmaxps xmm0,xmm5,xmm13
    23a8d356ba19:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    23a8d356ba1d:	c5 7a 6f 84 38 e0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1e0]
    23a8d356ba26:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d356ba2b:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    23a8d356ba2f:	c5 40 5d e8                                     	vminps xmm13,xmm7,xmm0
    23a8d356ba33:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d356ba37:	e9 80 13 00 00                                  	jmp    0x23a8d356cdbc
    23a8d356ba3c:	46 8b 44 08 38                                  	mov    r8d,DWORD PTR [rax+r9*1+0x38]
    23a8d356ba41:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    23a8d356ba46:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    23a8d356ba4b:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    23a8d356ba50:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    23a8d356ba58:	42 83 7c 08 38 00                               	cmp    DWORD PTR [rax+r9*1+0x38],0x0
    23a8d356ba5e:	0f 85 57 12 00 00                               	jne    0x23a8d356ccbb
    23a8d356ba64:	4c 8d 40 54                                     	lea    r8,[rax+0x54]
    23a8d356ba68:	c4 82 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+r15*1]
    23a8d356ba6e:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d356ba72:	c4 c2 79 18 04 18                               	vbroadcastss xmm0,DWORD PTR [r8+rbx*1]
    23a8d356ba78:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    23a8d356ba7c:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    23a8d356ba80:	4c 8b 9d e8 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x118]
    23a8d356ba87:	c4 82 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+r11*1]
    23a8d356ba8d:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    23a8d356ba91:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    23a8d356ba95:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    23a8d356ba99:	4c 8d 40 50                                     	lea    r8,[rax+0x50]
    23a8d356ba9d:	c4 82 79 18 04 38                               	vbroadcastss xmm0,DWORD PTR [r8+r15*1]
    23a8d356baa3:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d356baa7:	c4 c2 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+rbx*1]
    23a8d356baad:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    23a8d356bab1:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356bab5:	c4 82 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+r11*1]
    23a8d356babb:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d356babf:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356bac3:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d356bac7:	46 8b 04 08                                     	mov    r8d,DWORD PTR [rax+r9*1]
    23a8d356bacb:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    23a8d356bad2:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d356bad6:	0f 85 f0 0e 00 00                               	jne    0x23a8d356c9cc
    23a8d356badc:	42 8b 54 08 28                                  	mov    edx,DWORD PTR [rax+r9*1+0x28]
    23a8d356bae1:	85 d2                                           	test   edx,edx
    23a8d356bae3:	0f 84 e3 0e 00 00                               	je     0x23a8d356c9cc
    23a8d356bae9:	42 8b 4c 08 1c                                  	mov    ecx,DWORD PTR [rax+r9*1+0x1c]
    23a8d356baee:	85 c9                                           	test   ecx,ecx
    23a8d356baf0:	0f 8e d6 0e 00 00                               	jle    0x23a8d356c9cc
    23a8d356baf6:	4c 89 85 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r8
    23a8d356bafd:	46 8b 44 08 20                                  	mov    r8d,DWORD PTR [rax+r9*1+0x20]
    23a8d356bb02:	45 85 c0                                        	test   r8d,r8d
    23a8d356bb05:	0f 8e ba 0e 00 00                               	jle    0x23a8d356c9c5
    23a8d356bb0b:	44 8b d1                                        	mov    r10d,ecx
    23a8d356bb0e:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    23a8d356bb13:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    23a8d356bb18:	46 8b 5c 08 10                                  	mov    r11d,DWORD PTR [rax+r9*1+0x10]
    23a8d356bb1d:	33 db                                           	xor    ebx,ebx
    23a8d356bb1f:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    23a8d356bb26:	0f 95 c3                                        	setne  bl
    23a8d356bb29:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    23a8d356bb30:	41 0f 95 c3                                     	setne  r11b
    23a8d356bb34:	45 0f b6 db                                     	movzx  r11d,r11b
    23a8d356bb38:	44 23 db                                        	and    r11d,ebx
    23a8d356bb3b:	0f 85 0d 00 00 00                               	jne    0x23a8d356bb4e
    23a8d356bb41:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d356bb45:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d356bb49:	e9 0a 00 00 00                                  	jmp    0x23a8d356bb58
    23a8d356bb4e:	c4 e3 79 08 f0 09                               	vroundps xmm6,xmm0,0x9
    23a8d356bb54:	c5 f8 5c c6                                     	vsubps xmm0,xmm0,xmm6
    23a8d356bb58:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d356bb5c:	45 8b d0                                        	mov    r10d,r8d
    23a8d356bb5f:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    23a8d356bb64:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    23a8d356bb69:	42 8b 5c 08 14                                  	mov    ebx,DWORD PTR [rax+r9*1+0x14]
    23a8d356bb6e:	45 33 ff                                        	xor    r15d,r15d
    23a8d356bb71:	81 fb 2f 81 00 00                               	cmp    ebx,0x812f
    23a8d356bb77:	41 0f 95 c7                                     	setne  r15b
    23a8d356bb7b:	81 fb 00 29 00 00                               	cmp    ebx,0x2900
    23a8d356bb81:	0f 95 c3                                        	setne  bl
    23a8d356bb84:	0f b6 db                                        	movzx  ebx,bl
    23a8d356bb87:	41 23 df                                        	and    ebx,r15d
    23a8d356bb8a:	0f 85 0d 00 00 00                               	jne    0x23a8d356bb9d
    23a8d356bb90:	c5 a0 5f f2                                     	vmaxps xmm6,xmm11,xmm2
    23a8d356bb94:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    23a8d356bb98:	e9 0a 00 00 00                                  	jmp    0x23a8d356bba7
    23a8d356bb9d:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    23a8d356bba3:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    23a8d356bba7:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    23a8d356bbab:	4c 8b 15 54 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea54]        # 0x23a8d356a606
    23a8d356bbb2:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356bbb7:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d356bbbb:	c5 50 58 c6                                     	vaddps xmm8,xmm5,xmm6
    23a8d356bbbf:	46 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [rax+r9*1+0xc]
    23a8d356bbc4:	45 33 ff                                        	xor    r15d,r15d
    23a8d356bbc7:	42 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [rax+r9*1+0xc],0x2600
    23a8d356bbd0:	41 0f 94 c7                                     	sete   r15b
    23a8d356bbd4:	45 85 ff                                        	test   r15d,r15d
    23a8d356bbd7:	0f 85 5b 00 00 00                               	jne    0x23a8d356bc38
    23a8d356bbdd:	c4 c3 79 08 e8 09                               	vroundps xmm5,xmm8,0x9
    23a8d356bbe3:	4c 8b 15 2b af ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaf2b]        # 0x23a8d3566b15
    23a8d356bbea:	c4 41 50 54 0a                                  	vandps xmm9,xmm5,XMMWORD PTR [r10]
    23a8d356bbef:	4c 8b 15 b9 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd9b9]        # 0x23a8d35695af
    23a8d356bbf6:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d356bbfb:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d356bc00:	c4 41 30 c2 ca 01                               	vcmpltps xmm9,xmm9,xmm10
    23a8d356bc06:	4c 8b 15 60 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd960]        # 0x23a8d356956d
    23a8d356bc0d:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    23a8d356bc12:	c4 c1 50 54 d7                                  	vandps xmm2,xmm5,xmm15
    23a8d356bc17:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    23a8d356bc1d:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d356bc21:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d356bc26:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356bc2a:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d356bc2e:	c4 c1 79 28 e8                                  	vmovapd xmm5,xmm8
    23a8d356bc33:	e9 49 00 00 00                                  	jmp    0x23a8d356bc81
    23a8d356bc38:	c4 e3 79 08 f5 09                               	vroundps xmm6,xmm5,0x9
    23a8d356bc3e:	4c 8b 15 d0 ae ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaed0]        # 0x23a8d3566b15
    23a8d356bc45:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    23a8d356bc4a:	4c 8b 15 5e d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd95e]        # 0x23a8d35695af
    23a8d356bc51:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d356bc56:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d356bc5b:	c4 41 38 c2 ca 01                               	vcmpltps xmm9,xmm8,xmm10
    23a8d356bc61:	4c 8b 15 05 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd905]        # 0x23a8d356956d
    23a8d356bc68:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    23a8d356bc6d:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    23a8d356bc72:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    23a8d356bc78:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d356bc7c:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d356bc81:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    23a8d356bc87:	4c 8b 15 df d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd8df]        # 0x23a8d356956d
    23a8d356bc8e:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d356bc94:	c4 c1 38 54 ff                                  	vandps xmm7,xmm8,xmm15
    23a8d356bc99:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d356bc9f:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    23a8d356bca3:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    23a8d356bca8:	4c 8b 15 e1 d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd8e1]        # 0x23a8d3569590
    23a8d356bcaf:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d356bcb4:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d356bcb9:	4c 8b 15 55 ae ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffae55]        # 0x23a8d3566b15
    23a8d356bcc0:	c4 41 38 54 22                                  	vandps xmm12,xmm8,XMMWORD PTR [r10]
    23a8d356bcc5:	c4 41 18 c2 e2 01                               	vcmpltps xmm12,xmm12,xmm10
    23a8d356bccb:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    23a8d356bcd0:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    23a8d356bcd5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d356bcda:	8d 79 ff                                        	lea    edi,[rcx-0x1]
    23a8d356bcdd:	c5 79 6e e7                                     	vmovd  xmm12,edi
    23a8d356bce1:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    23a8d356bce6:	42 8b 7c 08 2c                                  	mov    edi,DWORD PTR [rax+r9*1+0x2c]
    23a8d356bceb:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    23a8d356bcf0:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    23a8d356bcf5:	c4 42 11 39 ec                                  	vpminsd xmm13,xmm13,xmm12
    23a8d356bcfa:	45 85 db                                        	test   r11d,r11d
    23a8d356bcfd:	0f 84 54 00 00 00                               	je     0x23a8d356bd57
    23a8d356bd03:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d356bd07:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356bd0c:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    23a8d356bd11:	85 ff                                           	test   edi,edi
    23a8d356bd13:	0f 85 3e 00 00 00                               	jne    0x23a8d356bd57
    23a8d356bd19:	c5 79 6e e9                                     	vmovd  xmm13,ecx
    23a8d356bd1d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356bd22:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    23a8d356bd27:	c4 c1 41 66 cc                                  	vpcmpgtd xmm1,xmm7,xmm12
    23a8d356bd2c:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    23a8d356bd31:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356bd36:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    23a8d356bd3b:	c5 09 66 f7                                     	vpcmpgtd xmm14,xmm14,xmm7
    23a8d356bd3f:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    23a8d356bd43:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    23a8d356bd48:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    23a8d356bd4d:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    23a8d356bd52:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    23a8d356bd57:	c4 41 31 df fb                                  	vpandn xmm15,xmm9,xmm11
    23a8d356bd5c:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    23a8d356bd61:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d356bd66:	41 8d 70 ff                                     	lea    esi,[r8-0x1]
    23a8d356bd6a:	c5 f9 6e d6                                     	vmovd  xmm2,esi
    23a8d356bd6e:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d356bd73:	42 8b 74 08 30                                  	mov    esi,DWORD PTR [rax+r9*1+0x30]
    23a8d356bd78:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    23a8d356bd7d:	c4 42 31 3d f6                                  	vpmaxsd xmm14,xmm9,xmm14
    23a8d356bd82:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    23a8d356bd87:	85 db                                           	test   ebx,ebx
    23a8d356bd89:	0f 84 4e 00 00 00                               	je     0x23a8d356bddd
    23a8d356bd8f:	c5 79 6e f6                                     	vmovd  xmm14,esi
    23a8d356bd93:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356bd98:	c4 41 09 db f1                                  	vpand  xmm14,xmm14,xmm9
    23a8d356bd9d:	85 f6                                           	test   esi,esi
    23a8d356bd9f:	0f 85 38 00 00 00                               	jne    0x23a8d356bddd
    23a8d356bda5:	c4 41 79 6e f0                                  	vmovd  xmm14,r8d
    23a8d356bdaa:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d356bdaf:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d356bdb3:	c5 b1 66 da                                     	vpcmpgtd xmm3,xmm9,xmm2
    23a8d356bdb7:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    23a8d356bdbc:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356bdc1:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    23a8d356bdc6:	c4 c1 71 66 c9                                  	vpcmpgtd xmm1,xmm1,xmm9
    23a8d356bdcb:	c5 71 df fb                                     	vpandn xmm15,xmm1,xmm3
    23a8d356bdcf:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    23a8d356bdd3:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    23a8d356bdd8:	c4 41 31 fe f6                                  	vpaddd xmm14,xmm9,xmm14
    23a8d356bddd:	c5 f9 6e c9                                     	vmovd  xmm1,ecx
    23a8d356bde1:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d356bde6:	c4 62 09 40 f1                                  	vpmulld xmm14,xmm14,xmm1
    23a8d356bdeb:	c4 c1 09 fe dd                                  	vpaddd xmm3,xmm14,xmm13
    23a8d356bdf0:	c4 e3 79 16 d9 03                               	vpextrd ecx,xmm3,0x3
    23a8d356bdf6:	c4 c3 79 16 d9 02                               	vpextrd r9d,xmm3,0x2
    23a8d356bdfc:	48 89 8d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rcx
    23a8d356be03:	c4 e3 79 16 d9 01                               	vpextrd ecx,xmm3,0x1
    23a8d356be09:	4c 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r9
    23a8d356be10:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    23a8d356be15:	45 85 ff                                        	test   r15d,r15d
    23a8d356be18:	0f 85 c6 09 00 00                               	jne    0x23a8d356c7e4
    23a8d356be1e:	4c 8b 15 6a ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea6a]        # 0x23a8d356a88f
    23a8d356be25:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356be2a:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d356be2e:	c5 c1 fe fb                                     	vpaddd xmm7,xmm7,xmm3
    23a8d356be32:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d356be36:	c4 e2 41 3d e4                                  	vpmaxsd xmm4,xmm7,xmm4
    23a8d356be3b:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    23a8d356be40:	45 85 db                                        	test   r11d,r11d
    23a8d356be43:	0f 84 43 00 00 00                               	je     0x23a8d356be8c
    23a8d356be49:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    23a8d356be4d:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d356be52:	c5 c1 db e4                                     	vpand  xmm4,xmm7,xmm4
    23a8d356be56:	85 ff                                           	test   edi,edi
    23a8d356be58:	0f 85 2e 00 00 00                               	jne    0x23a8d356be8c
    23a8d356be5e:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d356be62:	c4 41 41 66 e4                                  	vpcmpgtd xmm12,xmm7,xmm12
    23a8d356be67:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    23a8d356be6b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356be70:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    23a8d356be75:	c5 d9 66 e7                                     	vpcmpgtd xmm4,xmm4,xmm7
    23a8d356be79:	c4 41 59 df fc                                  	vpandn xmm15,xmm4,xmm12
    23a8d356be7e:	c5 71 db e4                                     	vpand  xmm12,xmm1,xmm4
    23a8d356be82:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    23a8d356be87:	c4 c1 41 fe e4                                  	vpaddd xmm4,xmm7,xmm12
    23a8d356be8c:	c5 b1 fe fb                                     	vpaddd xmm7,xmm9,xmm3
    23a8d356be90:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d356be95:	c4 42 41 3d c9                                  	vpmaxsd xmm9,xmm7,xmm9
    23a8d356be9a:	c4 62 31 39 ca                                  	vpminsd xmm9,xmm9,xmm2
    23a8d356be9f:	85 db                                           	test   ebx,ebx
    23a8d356bea1:	0f 84 4e 00 00 00                               	je     0x23a8d356bef5
    23a8d356bea7:	c5 79 6e ce                                     	vmovd  xmm9,esi
    23a8d356beab:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d356beb0:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    23a8d356beb4:	85 f6                                           	test   esi,esi
    23a8d356beb6:	0f 85 39 00 00 00                               	jne    0x23a8d356bef5
    23a8d356bebc:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    23a8d356bec1:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d356bec6:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    23a8d356becb:	c5 c1 66 d2                                     	vpcmpgtd xmm2,xmm7,xmm2
    23a8d356becf:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    23a8d356bed4:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d356bed9:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    23a8d356bede:	c5 19 66 e7                                     	vpcmpgtd xmm12,xmm12,xmm7
    23a8d356bee2:	c5 19 df fa                                     	vpandn xmm15,xmm12,xmm2
    23a8d356bee6:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    23a8d356beeb:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d356bef0:	c4 41 41 fe c9                                  	vpaddd xmm9,xmm7,xmm9
    23a8d356bef5:	c4 e2 31 40 f9                                  	vpmulld xmm7,xmm9,xmm1
    23a8d356befa:	c4 41 41 fe cd                                  	vpaddd xmm9,xmm7,xmm13
    23a8d356beff:	45 85 e4                                        	test   r12d,r12d
    23a8d356bf02:	0f 85 f4 00 00 00                               	jne    0x23a8d356bffc
    23a8d356bf08:	c5 11 fe e3                                     	vpaddd xmm12,xmm13,xmm3
    23a8d356bf0c:	c4 41 59 76 e4                                  	vpcmpeqd xmm12,xmm4,xmm12
    23a8d356bf11:	c4 c1 78 50 fc                                  	vmovmskps edi,xmm12
    23a8d356bf16:	83 ff 0f                                        	cmp    edi,0xf
    23a8d356bf19:	0f 84 45 00 00 00                               	je     0x23a8d356bf64
    23a8d356bf1f:	4c 89 a5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r12
    23a8d356bf26:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356bf2c:	83 e6 04                                        	and    esi,0x4
    23a8d356bf2f:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    23a8d356bf35:	83 e7 02                                        	and    edi,0x2
    23a8d356bf38:	44 8b 85 70 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x290]
    23a8d356bf3f:	41 83 e0 01                                     	and    r8d,0x1
    23a8d356bf43:	44 8d 1c 8a                                     	lea    r11d,[rdx+rcx*4]
    23a8d356bf47:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356bf4b:	46 8d 3c 8a                                     	lea    r15d,[rdx+r9*4]
    23a8d356bf4f:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    23a8d356bf53:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    23a8d356bf59:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d356bf5c:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    23a8d356bf5f:	e9 2b 01 00 00                                  	jmp    0x23a8d356c08f
    23a8d356bf64:	42 8d 3c 8a                                     	lea    edi,[rdx+r9*4]
    23a8d356bf68:	c5 fb 10 3c 38                                  	vmovsd xmm7,QWORD PTR [rax+rdi*1]
    23a8d356bf6d:	8d 3c 8a                                        	lea    edi,[rdx+rcx*4]
    23a8d356bf70:	c5 7b 10 24 38                                  	vmovsd xmm12,QWORD PTR [rax+rdi*1]
    23a8d356bf75:	c4 c1 41 6c fc                                  	vpunpcklqdq xmm7,xmm7,xmm12
    23a8d356bf7a:	8b bd a8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x258]
    23a8d356bf80:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d356bf83:	c5 7b 10 24 38                                  	vmovsd xmm12,QWORD PTR [rax+rdi*1]
    23a8d356bf88:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    23a8d356bf8f:	42 8d 3c 82                                     	lea    edi,[rdx+r8*4]
    23a8d356bf93:	c5 7b 10 2c 38                                  	vmovsd xmm13,QWORD PTR [rax+rdi*1]
    23a8d356bf98:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    23a8d356bf9d:	c4 41 40 c6 ec dd                               	vshufps xmm13,xmm7,xmm12,0xdd
    23a8d356bfa3:	c4 c1 40 c6 fc 88                               	vshufps xmm7,xmm7,xmm12,0x88
    23a8d356bfa9:	c4 c1 31 72 f1 02                               	vpslld xmm9,xmm9,0x2
    23a8d356bfaf:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d356bfb3:	03 fa                                           	add    edi,edx
    23a8d356bfb5:	c5 7b 10 24 38                                  	vmovsd xmm12,QWORD PTR [rax+rdi*1]
    23a8d356bfba:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d356bfc0:	03 fa                                           	add    edi,edx
    23a8d356bfc2:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    23a8d356bfc7:	c4 41 19 6c e6                                  	vpunpcklqdq xmm12,xmm12,xmm14
    23a8d356bfcc:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d356bfd2:	03 fa                                           	add    edi,edx
    23a8d356bfd4:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    23a8d356bfd9:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d356bfdf:	03 fa                                           	add    edi,edx
    23a8d356bfe1:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    23a8d356bfe6:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    23a8d356bfeb:	c4 41 18 c6 f1 dd                               	vshufps xmm14,xmm12,xmm9,0xdd
    23a8d356bff1:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    23a8d356bff7:	e9 5f 04 00 00                                  	jmp    0x23a8d356c45b
    23a8d356bffc:	4c 89 a5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r12
    23a8d356c003:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356c009:	83 e6 04                                        	and    esi,0x4
    23a8d356c00c:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    23a8d356c012:	83 e7 02                                        	and    edi,0x2
    23a8d356c015:	44 8b 85 70 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x290]
    23a8d356c01c:	41 83 e0 01                                     	and    r8d,0x1
    23a8d356c020:	45 85 c0                                        	test   r8d,r8d
    23a8d356c023:	0f 85 08 00 00 00                               	jne    0x23a8d356c031
    23a8d356c029:	45 33 ff                                        	xor    r15d,r15d
    23a8d356c02c:	e9 08 00 00 00                                  	jmp    0x23a8d356c039
    23a8d356c031:	46 8d 1c 8a                                     	lea    r11d,[rdx+r9*4]
    23a8d356c035:	46 8b 3c 18                                     	mov    r15d,DWORD PTR [rax+r11*1]
    23a8d356c039:	85 ff                                           	test   edi,edi
    23a8d356c03b:	0f 85 08 00 00 00                               	jne    0x23a8d356c049
    23a8d356c041:	45 33 db                                        	xor    r11d,r11d
    23a8d356c044:	e9 08 00 00 00                                  	jmp    0x23a8d356c051
    23a8d356c049:	44 8d 1c 8a                                     	lea    r11d,[rdx+rcx*4]
    23a8d356c04d:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356c051:	85 f6                                           	test   esi,esi
    23a8d356c053:	0f 85 07 00 00 00                               	jne    0x23a8d356c060
    23a8d356c059:	33 db                                           	xor    ebx,ebx
    23a8d356c05b:	e9 0c 00 00 00                                  	jmp    0x23a8d356c06c
    23a8d356c060:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    23a8d356c066:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d356c069:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    23a8d356c06c:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356c073:	0f 83 16 00 00 00                               	jae    0x23a8d356c08f
    23a8d356c079:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    23a8d356c07e:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    23a8d356c083:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356c088:	33 c9                                           	xor    ecx,ecx
    23a8d356c08a:	e9 5e 00 00 00                                  	jmp    0x23a8d356c0ed
    23a8d356c08f:	8b 8d b0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x250]
    23a8d356c095:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    23a8d356c098:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    23a8d356c09b:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    23a8d356c0a0:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    23a8d356c0a5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356c0aa:	45 85 e4                                        	test   r12d,r12d
    23a8d356c0ad:	0f 85 3a 00 00 00                               	jne    0x23a8d356c0ed
    23a8d356c0b3:	c4 43 79 16 e7 01                               	vpextrd r15d,xmm12,0x1
    23a8d356c0b9:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d356c0bd:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    23a8d356c0c1:	c4 41 79 7e e1                                  	vmovd  r9d,xmm12
    23a8d356c0c6:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    23a8d356c0ca:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    23a8d356c0ce:	c4 43 79 16 e4 02                               	vpextrd r12d,xmm12,0x2
    23a8d356c0d4:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    23a8d356c0d8:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356c0dc:	48 89 b5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rsi
    23a8d356c0e3:	8b f7                                           	mov    esi,edi
    23a8d356c0e5:	41 8b fc                                        	mov    edi,r12d
    23a8d356c0e8:	e9 b5 00 00 00                                  	jmp    0x23a8d356c1a2
    23a8d356c0ed:	45 85 c0                                        	test   r8d,r8d
    23a8d356c0f0:	0f 85 08 00 00 00                               	jne    0x23a8d356c0fe
    23a8d356c0f6:	45 33 c9                                        	xor    r9d,r9d
    23a8d356c0f9:	e9 0d 00 00 00                                  	jmp    0x23a8d356c10b
    23a8d356c0fe:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    23a8d356c103:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d356c107:	46 8b 0c 38                                     	mov    r9d,DWORD PTR [rax+r15*1]
    23a8d356c10b:	85 ff                                           	test   edi,edi
    23a8d356c10d:	0f 85 08 00 00 00                               	jne    0x23a8d356c11b
    23a8d356c113:	45 33 ff                                        	xor    r15d,r15d
    23a8d356c116:	e9 0e 00 00 00                                  	jmp    0x23a8d356c129
    23a8d356c11b:	c4 43 79 16 e7 01                               	vpextrd r15d,xmm12,0x1
    23a8d356c121:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d356c125:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    23a8d356c129:	85 f6                                           	test   esi,esi
    23a8d356c12b:	0f 85 10 00 00 00                               	jne    0x23a8d356c141
    23a8d356c131:	48 c7 85 b0 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x250],0x0
    23a8d356c13c:	e9 1c 00 00 00                                  	jmp    0x23a8d356c15d
    23a8d356c141:	c4 43 79 16 e4 02                               	vpextrd r12d,xmm12,0x2
    23a8d356c147:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    23a8d356c14b:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356c14f:	4c 89 a5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r12
    23a8d356c156:	44 8b a5 10 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2f0]
    23a8d356c15d:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356c164:	0f 83 25 00 00 00                               	jae    0x23a8d356c18f
    23a8d356c16a:	4c 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r9
    23a8d356c171:	45 8b cf                                        	mov    r9d,r15d
    23a8d356c174:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    23a8d356c17b:	4c 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r11
    23a8d356c182:	45 8b d8                                        	mov    r11d,r8d
    23a8d356c185:	44 8b c7                                        	mov    r8d,edi
    23a8d356c188:	33 ff                                           	xor    edi,edi
    23a8d356c18a:	e9 4b 00 00 00                                  	jmp    0x23a8d356c1da
    23a8d356c18f:	44 8b d7                                        	mov    r10d,edi
    23a8d356c192:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    23a8d356c198:	48 89 b5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rsi
    23a8d356c19f:	41 8b f2                                        	mov    esi,r10d
    23a8d356c1a2:	c4 43 79 16 e4 03                               	vpextrd r12d,xmm12,0x3
    23a8d356c1a8:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    23a8d356c1ac:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356c1b0:	4c 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r9
    23a8d356c1b7:	45 8b cf                                        	mov    r9d,r15d
    23a8d356c1ba:	44 8b ff                                        	mov    r15d,edi
    23a8d356c1bd:	41 8b fc                                        	mov    edi,r12d
    23a8d356c1c0:	44 8b a5 10 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2f0]
    23a8d356c1c7:	4c 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r11
    23a8d356c1ce:	45 8b d8                                        	mov    r11d,r8d
    23a8d356c1d1:	44 8b c6                                        	mov    r8d,esi
    23a8d356c1d4:	8b b5 b0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x250]
    23a8d356c1da:	c4 63 11 22 a5 80 fc ff ff 01                   	vpinsrd xmm12,xmm13,DWORD PTR [rbp-0x380],0x1
    23a8d356c1e4:	c5 79 6e ad 00 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x300]
    23a8d356c1ec:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356c1f1:	c4 43 11 22 e9 01                               	vpinsrd xmm13,xmm13,r9d,0x1
    23a8d356c1f7:	48 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rdi
    23a8d356c1fe:	45 85 e4                                        	test   r12d,r12d
    23a8d356c201:	0f 85 47 00 00 00                               	jne    0x23a8d356c24e
    23a8d356c207:	c4 43 79 16 c9 01                               	vpextrd r9d,xmm9,0x1
    23a8d356c20d:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    23a8d356c211:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    23a8d356c215:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d356c219:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d356c21c:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356c21f:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    23a8d356c226:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    23a8d356c22c:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    23a8d356c22f:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    23a8d356c232:	4c 89 8d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r9
    23a8d356c239:	44 8b c9                                        	mov    r9d,ecx
    23a8d356c23c:	48 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rdi
    23a8d356c243:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    23a8d356c249:	e9 d5 00 00 00                                  	jmp    0x23a8d356c323
    23a8d356c24e:	45 85 db                                        	test   r11d,r11d
    23a8d356c251:	0f 85 08 00 00 00                               	jne    0x23a8d356c25f
    23a8d356c257:	45 33 c9                                        	xor    r9d,r9d
    23a8d356c25a:	e9 0d 00 00 00                                  	jmp    0x23a8d356c26c
    23a8d356c25f:	c4 41 79 7e c9                                  	vmovd  r9d,xmm9
    23a8d356c264:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    23a8d356c268:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    23a8d356c26c:	45 85 c0                                        	test   r8d,r8d
    23a8d356c26f:	0f 85 10 00 00 00                               	jne    0x23a8d356c285
    23a8d356c275:	48 c7 85 80 fc ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x380],0x0
    23a8d356c280:	e9 19 00 00 00                                  	jmp    0x23a8d356c29e
    23a8d356c285:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d356c28b:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d356c28e:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356c291:	48 89 bd 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rdi
    23a8d356c298:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    23a8d356c29e:	85 f6                                           	test   esi,esi
    23a8d356c2a0:	0f 85 10 00 00 00                               	jne    0x23a8d356c2b6
    23a8d356c2a6:	48 c7 85 00 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x300],0x0
    23a8d356c2b1:	e9 19 00 00 00                                  	jmp    0x23a8d356c2cf
    23a8d356c2b6:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d356c2bc:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d356c2bf:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356c2c2:	48 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rdi
    23a8d356c2c9:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    23a8d356c2cf:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356c2d6:	0f 83 36 00 00 00                               	jae    0x23a8d356c312
    23a8d356c2dc:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    23a8d356c2e2:	c4 43 11 22 e7 02                               	vpinsrd xmm12,xmm13,r15d,0x2
    23a8d356c2e8:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    23a8d356c2ec:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    23a8d356c2f1:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356c2f6:	c4 63 11 22 ad 80 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x380],0x1
    23a8d356c300:	c4 63 11 22 ad 00 fd ff ff 02                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x300],0x2
    23a8d356c30a:	45 33 e4                                        	xor    r12d,r12d
    23a8d356c30d:	e9 96 00 00 00                                  	jmp    0x23a8d356c3a8
    23a8d356c312:	4d 8b d1                                        	mov    r10,r9
    23a8d356c315:	4c 8b 8d 00 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x300]
    23a8d356c31c:	4c 89 95 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r10
    23a8d356c323:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d356c329:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d356c32c:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356c32f:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    23a8d356c335:	c4 43 11 22 e7 02                               	vpinsrd xmm12,xmm13,r15d,0x2
    23a8d356c33b:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    23a8d356c33f:	c5 79 6e ad 00 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x300]
    23a8d356c347:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d356c34c:	c4 63 11 22 ad 80 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x380],0x1
    23a8d356c356:	c4 43 11 22 e9 02                               	vpinsrd xmm13,xmm13,r9d,0x2
    23a8d356c35c:	45 85 e4                                        	test   r12d,r12d
    23a8d356c35f:	0f 85 3a 00 00 00                               	jne    0x23a8d356c39f
    23a8d356c365:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    23a8d356c36b:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d356c36f:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356c373:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    23a8d356c378:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d356c37c:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356c380:	c4 c3 79 16 fc 02                               	vpextrd r12d,xmm7,0x2
    23a8d356c386:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    23a8d356c38a:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356c38e:	45 8b fc                                        	mov    r15d,r12d
    23a8d356c391:	44 8b e7                                        	mov    r12d,edi
    23a8d356c394:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    23a8d356c39a:	e9 78 00 00 00                                  	jmp    0x23a8d356c417
    23a8d356c39f:	44 8b e7                                        	mov    r12d,edi
    23a8d356c3a2:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    23a8d356c3a8:	45 85 db                                        	test   r11d,r11d
    23a8d356c3ab:	0f 85 08 00 00 00                               	jne    0x23a8d356c3b9
    23a8d356c3b1:	45 33 db                                        	xor    r11d,r11d
    23a8d356c3b4:	e9 0d 00 00 00                                  	jmp    0x23a8d356c3c6
    23a8d356c3b9:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    23a8d356c3be:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    23a8d356c3c2:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356c3c6:	45 85 c0                                        	test   r8d,r8d
    23a8d356c3c9:	0f 85 08 00 00 00                               	jne    0x23a8d356c3d7
    23a8d356c3cf:	45 33 c0                                        	xor    r8d,r8d
    23a8d356c3d2:	e9 0e 00 00 00                                  	jmp    0x23a8d356c3e5
    23a8d356c3d7:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    23a8d356c3dd:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d356c3e1:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356c3e5:	85 f6                                           	test   esi,esi
    23a8d356c3e7:	0f 85 08 00 00 00                               	jne    0x23a8d356c3f5
    23a8d356c3ed:	45 33 ff                                        	xor    r15d,r15d
    23a8d356c3f0:	e9 0e 00 00 00                                  	jmp    0x23a8d356c403
    23a8d356c3f5:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    23a8d356c3fb:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    23a8d356c3ff:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    23a8d356c403:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356c40a:	0f 83 07 00 00 00                               	jae    0x23a8d356c417
    23a8d356c410:	33 db                                           	xor    ebx,ebx
    23a8d356c412:	e9 0c 00 00 00                                  	jmp    0x23a8d356c423
    23a8d356c417:	c4 e3 79 16 fb 03                               	vpextrd ebx,xmm7,0x3
    23a8d356c41d:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d356c420:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    23a8d356c423:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    23a8d356c429:	c4 63 19 22 cf 03                               	vpinsrd xmm9,xmm12,edi,0x3
    23a8d356c42f:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    23a8d356c434:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    23a8d356c439:	c4 43 19 22 e0 01                               	vpinsrd xmm12,xmm12,r8d,0x1
    23a8d356c43f:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    23a8d356c445:	c4 63 19 22 f3 03                               	vpinsrd xmm14,xmm12,ebx,0x3
    23a8d356c44b:	c4 43 11 22 e4 03                               	vpinsrd xmm12,xmm13,r12d,0x3
    23a8d356c451:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    23a8d356c456:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    23a8d356c45b:	c5 99 72 d7 18                                  	vpsrld xmm12,xmm7,0x18
    23a8d356c460:	c4 c1 71 72 d5 18                               	vpsrld xmm1,xmm13,0x18
    23a8d356c466:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    23a8d356c46a:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d356c46e:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    23a8d356c474:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    23a8d356c478:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    23a8d356c482:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d356c487:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d356c48b:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    23a8d356c490:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    23a8d356c49a:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d356c49f:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d356c4a4:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d356c4a9:	4c 8b 15 a6 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0a6]        # 0x23a8d3569556
    23a8d356c4b0:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356c4b5:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d356c4b9:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    23a8d356c4bd:	4c 8b 15 a9 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0a9]        # 0x23a8d356956d
    23a8d356c4c4:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d356c4c9:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    23a8d356c4ce:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d356c4d4:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    23a8d356c4d8:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    23a8d356c4dd:	4c 8b 15 31 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa631]        # 0x23a8d3566b15
    23a8d356c4e4:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d356c4e9:	c4 c1 78 c2 c2 01                               	vcmpltps xmm0,xmm0,xmm10
    23a8d356c4ef:	c4 41 79 df fb                                  	vpandn xmm15,xmm0,xmm11
    23a8d356c4f4:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    23a8d356c4f8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356c4fd:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    23a8d356c501:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    23a8d356c505:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    23a8d356c50b:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    23a8d356c50f:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    23a8d356c513:	c5 d0 5c ee                                     	vsubps xmm5,xmm5,xmm6
    23a8d356c517:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    23a8d356c51c:	c5 d0 58 eb                                     	vaddps xmm5,xmm5,xmm3
    23a8d356c520:	4c 8b 15 46 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd046]        # 0x23a8d356956d
    23a8d356c527:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    23a8d356c52c:	c4 c1 50 54 f7                                  	vandps xmm6,xmm5,xmm15
    23a8d356c531:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    23a8d356c537:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    23a8d356c53b:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    23a8d356c540:	4c 8b 15 ce a5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa5ce]        # 0x23a8d3566b15
    23a8d356c547:	c4 c1 50 54 2a                                  	vandps xmm5,xmm5,XMMWORD PTR [r10]
    23a8d356c54c:	c4 c1 50 c2 ea 01                               	vcmpltps xmm5,xmm5,xmm10
    23a8d356c552:	c4 41 51 df fb                                  	vpandn xmm15,xmm5,xmm11
    23a8d356c557:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    23a8d356c55b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356c560:	c5 e9 fa f5                                     	vpsubd xmm6,xmm2,xmm5
    23a8d356c564:	c4 62 19 40 c6                                  	vpmulld xmm8,xmm12,xmm6
    23a8d356c569:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    23a8d356c56f:	c4 c1 21 72 d6 18                               	vpsrld xmm11,xmm14,0x18
    23a8d356c575:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    23a8d356c57a:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    23a8d356c580:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    23a8d356c585:	c5 29 f5 d0                                     	vpmaddwd xmm10,xmm10,xmm0
    23a8d356c589:	c4 62 29 40 d5                                  	vpmulld xmm10,xmm10,xmm5
    23a8d356c58e:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d356c593:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    23a8d356c59d:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d356c5a2:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d356c5a7:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d356c5ac:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d356c5b2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c5b7:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d356c5bd:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d356c5c2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c5c7:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d356c5cd:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d356c5d2:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d356c5d7:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d356c5dc:	4c 8b 15 d5 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8d5]        # 0x23a8d356aeb8
    23a8d356c5e3:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d356c5e8:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d356c5ed:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    23a8d356c5f2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356c5f5:	c5 7a 7f 84 38 60 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x260],xmm8
    23a8d356c5fe:	c5 b9 72 d7 10                                  	vpsrld xmm8,xmm7,0x10
    23a8d356c603:	4c 8b 15 c6 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7c6]        # 0x23a8d356add0
    23a8d356c60a:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d356c60f:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d356c614:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    23a8d356c619:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    23a8d356c61f:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d356c624:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    23a8d356c628:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    23a8d356c62e:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    23a8d356c632:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    23a8d356c636:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    23a8d356c63b:	c4 c1 69 72 d1 10                               	vpsrld xmm2,xmm9,0x10
    23a8d356c641:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d356c646:	c4 c1 61 72 d6 10                               	vpsrld xmm3,xmm14,0x10
    23a8d356c64c:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    23a8d356c651:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    23a8d356c655:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    23a8d356c65b:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    23a8d356c65f:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    23a8d356c663:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    23a8d356c668:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    23a8d356c66c:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d356c671:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d356c677:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c67c:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d356c682:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d356c687:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c68c:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d356c692:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d356c697:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d356c69c:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d356c6a1:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    23a8d356c6a6:	c5 7a 7f 84 38 50 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x250],xmm8
    23a8d356c6af:	c5 b9 72 d7 08                                  	vpsrld xmm8,xmm7,0x8
    23a8d356c6b4:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    23a8d356c6b9:	c4 c1 69 72 d5 08                               	vpsrld xmm2,xmm13,0x8
    23a8d356c6bf:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d356c6c4:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    23a8d356c6c8:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    23a8d356c6ce:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    23a8d356c6d2:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    23a8d356c6d6:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    23a8d356c6db:	c4 c1 69 72 d1 08                               	vpsrld xmm2,xmm9,0x8
    23a8d356c6e1:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    23a8d356c6e6:	c4 c1 61 72 d6 08                               	vpsrld xmm3,xmm14,0x8
    23a8d356c6ec:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    23a8d356c6f1:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    23a8d356c6f5:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    23a8d356c6fb:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    23a8d356c6ff:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    23a8d356c703:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    23a8d356c708:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    23a8d356c70c:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    23a8d356c711:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d356c717:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c71c:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d356c722:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d356c727:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c72c:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d356c732:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d356c737:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d356c73c:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d356c741:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    23a8d356c746:	c5 7a 7f 84 38 40 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x240],xmm8
    23a8d356c74f:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    23a8d356c754:	c4 41 11 db c4                                  	vpand  xmm8,xmm13,xmm12
    23a8d356c759:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    23a8d356c75e:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    23a8d356c764:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    23a8d356c769:	c5 c1 f5 f8                                     	vpmaddwd xmm7,xmm7,xmm0
    23a8d356c76d:	c4 e2 41 40 f6                                  	vpmulld xmm6,xmm7,xmm6
    23a8d356c772:	c4 c1 31 db fc                                  	vpand  xmm7,xmm9,xmm12
    23a8d356c777:	c4 41 09 db c4                                  	vpand  xmm8,xmm14,xmm12
    23a8d356c77c:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    23a8d356c781:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    23a8d356c787:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    23a8d356c78c:	c5 c1 f5 c0                                     	vpmaddwd xmm0,xmm7,xmm0
    23a8d356c790:	c4 e2 79 40 c5                                  	vpmulld xmm0,xmm0,xmm5
    23a8d356c795:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    23a8d356c799:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    23a8d356c79e:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    23a8d356c7a3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c7a8:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d356c7ae:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d356c7b3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c7b8:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d356c7bd:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d356c7c1:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d356c7c5:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d356c7ca:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    23a8d356c7cf:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    23a8d356c7d8:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    23a8d356c7df:	e9 36 05 00 00                                  	jmp    0x23a8d356cd1a
    23a8d356c7e4:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    23a8d356c7ea:	45 85 e4                                        	test   r12d,r12d
    23a8d356c7ed:	0f 85 24 00 00 00                               	jne    0x23a8d356c817
    23a8d356c7f3:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    23a8d356c7fa:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d356c7fe:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356c802:	44 8d 1c 8a                                     	lea    r11d,[rdx+rcx*4]
    23a8d356c806:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356c80a:	46 8d 24 8a                                     	lea    r12d,[rdx+r9*4]
    23a8d356c80e:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356c812:	e9 6b 00 00 00                                  	jmp    0x23a8d356c882
    23a8d356c817:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    23a8d356c81e:	0f 85 08 00 00 00                               	jne    0x23a8d356c82c
    23a8d356c824:	45 33 e4                                        	xor    r12d,r12d
    23a8d356c827:	e9 08 00 00 00                                  	jmp    0x23a8d356c834
    23a8d356c82c:	46 8d 04 8a                                     	lea    r8d,[rdx+r9*4]
    23a8d356c830:	46 8b 24 00                                     	mov    r12d,DWORD PTR [rax+r8*1]
    23a8d356c834:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    23a8d356c83b:	0f 85 08 00 00 00                               	jne    0x23a8d356c849
    23a8d356c841:	45 33 db                                        	xor    r11d,r11d
    23a8d356c844:	e9 08 00 00 00                                  	jmp    0x23a8d356c851
    23a8d356c849:	44 8d 04 8a                                     	lea    r8d,[rdx+rcx*4]
    23a8d356c84d:	46 8b 1c 00                                     	mov    r11d,DWORD PTR [rax+r8*1]
    23a8d356c851:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    23a8d356c858:	0f 85 08 00 00 00                               	jne    0x23a8d356c866
    23a8d356c85e:	45 33 c0                                        	xor    r8d,r8d
    23a8d356c861:	e9 0f 00 00 00                                  	jmp    0x23a8d356c875
    23a8d356c866:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    23a8d356c86d:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    23a8d356c871:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    23a8d356c875:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    23a8d356c87c:	0f 82 0b 00 00 00                               	jb     0x23a8d356c88d
    23a8d356c882:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    23a8d356c885:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    23a8d356c888:	e9 02 00 00 00                                  	jmp    0x23a8d356c88f
    23a8d356c88d:	33 ff                                           	xor    edi,edi
    23a8d356c88f:	c4 c1 79 6e c4                                  	vmovd  xmm0,r12d
    23a8d356c894:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d356c899:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    23a8d356c89f:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    23a8d356c8a5:	c4 e3 79 22 c7 03                               	vpinsrd xmm0,xmm0,edi,0x3
    23a8d356c8ab:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    23a8d356c8b0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c8b5:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d356c8bb:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d356c8c0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c8c5:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d356c8ca:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d356c8ce:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d356c8d2:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d356c8d7:	4c 8b 15 da e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5da]        # 0x23a8d356aeb8
    23a8d356c8de:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356c8e3:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d356c8e7:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    23a8d356c8eb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356c8ee:	c5 fa 7f ac 38 60 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x260],xmm5
    23a8d356c8f7:	4c 8b 15 d2 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4d2]        # 0x23a8d356add0
    23a8d356c8fe:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356c903:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d356c907:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    23a8d356c90b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c910:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d356c916:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d356c91b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c920:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d356c925:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d356c929:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d356c92d:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d356c932:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    23a8d356c936:	c5 fa 7f bc 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm7
    23a8d356c93f:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    23a8d356c944:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    23a8d356c948:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c94d:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d356c953:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d356c958:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c95d:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d356c962:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d356c966:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d356c96a:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d356c96f:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    23a8d356c973:	c5 fa 7f bc 38 50 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x250],xmm7
    23a8d356c97c:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    23a8d356c981:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d356c985:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d356c98a:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d356c990:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d356c995:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d356c99a:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d356c99f:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d356c9a3:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d356c9a7:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d356c9ac:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d356c9b0:	c5 fa 7f 84 38 40 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x240],xmm0
    23a8d356c9b9:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    23a8d356c9c0:	e9 55 03 00 00                                  	jmp    0x23a8d356cd1a
    23a8d356c9c5:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    23a8d356c9cc:	4c 8d 60 58                                     	lea    r12,[rax+0x58]
    23a8d356c9d0:	c4 82 79 18 34 3c                               	vbroadcastss xmm6,DWORD PTR [r12+r15*1]
    23a8d356c9d6:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d356c9da:	c4 42 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+rbx*1]
    23a8d356c9e0:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    23a8d356c9e5:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    23a8d356c9ea:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    23a8d356c9f0:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    23a8d356c9f5:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    23a8d356c9f9:	c5 b0 59 ed                                     	vmulps xmm5,xmm9,xmm5
    23a8d356c9fd:	41 83 f8 03                                     	cmp    r8d,0x3
    23a8d356ca01:	0f 84 82 02 00 00                               	je     0x23a8d356cc89
    23a8d356ca07:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d356ca0b:	44 8b 85 f0 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x310]
    23a8d356ca12:	c4 a1 7a 7f 34 00                               	vmovdqu XMMWORD PTR [rax+r8*1],xmm6
    23a8d356ca18:	44 8b a5 f8 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x308]
    23a8d356ca1f:	c4 a1 7a 7f 34 20                               	vmovdqu XMMWORD PTR [rax+r12*1],xmm6
    23a8d356ca25:	c5 fa 7f b4 38 40 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x140],xmm6
    23a8d356ca2e:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    23a8d356ca37:	c5 fa 7f 94 38 80 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x280],xmm2
    23a8d356ca40:	c5 fa 7f ac 38 70 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x270],xmm5
    23a8d356ca49:	c5 fa 7f b4 38 30 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x130],xmm6
    23a8d356ca52:	45 33 db                                        	xor    r11d,r11d
    23a8d356ca55:	49 8b d1                                        	mov    rdx,r9
    23a8d356ca58:	e9 37 00 00 00                                  	jmp    0x23a8d356ca94
    23a8d356ca5d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356ca66:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356ca6f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356ca78:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d356ca80:	48 8b 95 28 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1d8]
    23a8d356ca87:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356ca8a:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356ca8e:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356ca94:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    23a8d356ca9b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d356caa0:	0f 85 1f 2c 00 00                               	jne    0x23a8d356f6c5
    23a8d356caa6:	41 8b cb                                        	mov    ecx,r11d
    23a8d356caa9:	d3 ee                                           	shr    esi,cl
    23a8d356caab:	40 f6 c6 01                                     	test   sil,0x1
    23a8d356caaf:	0f 84 37 01 00 00                               	je     0x23a8d356cbec
    23a8d356cab5:	8b 4c 10 10                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x10]
    23a8d356cab9:	8b 74 10 0c                                     	mov    esi,DWORD PTR [rax+rdx*1+0xc]
    23a8d356cabd:	48 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rcx
    23a8d356cac4:	8b 4c 10 08                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x8]
    23a8d356cac8:	8b 4c 10 04                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x4]
    23a8d356cacc:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    23a8d356cad3:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    23a8d356cad6:	83 f9 02                                        	cmp    ecx,0x2
    23a8d356cad9:	0f 84 aa 00 00 00                               	je     0x23a8d356cb89
    23a8d356cadf:	85 c9                                           	test   ecx,ecx
    23a8d356cae1:	0f 85 48 00 00 00                               	jne    0x23a8d356cb2f
    23a8d356cae7:	42 8d 8c 9f 90 02 00 00                         	lea    ecx,[rdi+r11*4+0x290]
    23a8d356caef:	c5 fa 10 04 08                                  	vmovss xmm0,DWORD PTR [rax+rcx*1]
    23a8d356caf4:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    23a8d356cafa:	48 89 b5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rsi
    23a8d356cb01:	41 8b f3                                        	mov    esi,r11d
    23a8d356cb04:	c1 e6 04                                        	shl    esi,0x4
    23a8d356cb07:	03 ce                                           	add    ecx,esi
    23a8d356cb09:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356cb0d:	8b 85 a8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x258]
    23a8d356cb13:	8b 95 10 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2f0]
    23a8d356cb19:	8b d9                                           	mov    ebx,ecx
    23a8d356cb1b:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    23a8d356cb21:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d356cb25:	e8 f6 f6 ed ff                                  	call   0x23a8d344c220
    23a8d356cb2a:	e9 bd 00 00 00                                  	jmp    0x23a8d356cbec
    23a8d356cb2f:	4c 8b c0                                        	mov    r8,rax
    23a8d356cb32:	4c 8b e2                                        	mov    r12,rdx
    23a8d356cb35:	43 8b 44 20 14                                  	mov    eax,DWORD PTR [r8+r12*1+0x14]
    23a8d356cb3a:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    23a8d356cb42:	c4 c1 7a 10 04 10                               	vmovss xmm0,DWORD PTR [r8+rdx*1]
    23a8d356cb48:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    23a8d356cb50:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    23a8d356cb56:	8d 97 30 01 00 00                               	lea    edx,[rdi+0x130]
    23a8d356cb5c:	41 8b cb                                        	mov    ecx,r11d
    23a8d356cb5f:	c1 e1 04                                        	shl    ecx,0x4
    23a8d356cb62:	03 d1                                           	add    edx,ecx
    23a8d356cb64:	44 8b ca                                        	mov    r9d,edx
    23a8d356cb67:	8b d6                                           	mov    edx,esi
    23a8d356cb69:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356cb6d:	8b d8                                           	mov    ebx,eax
    23a8d356cb6f:	8b 85 a8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x258]
    23a8d356cb75:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    23a8d356cb7b:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d356cb7f:	e8 b4 f6 ed ff                                  	call   0x23a8d344c238
    23a8d356cb84:	e9 63 00 00 00                                  	jmp    0x23a8d356cbec
    23a8d356cb89:	4c 8b c0                                        	mov    r8,rax
    23a8d356cb8c:	4c 8b e2                                        	mov    r12,rdx
    23a8d356cb8f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    23a8d356cb94:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    23a8d356cb99:	46 8d bc 9f 90 02 00 00                         	lea    r15d,[rdi+r11*4+0x290]
    23a8d356cba1:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    23a8d356cba7:	46 8d bc 9f 80 02 00 00                         	lea    r15d,[rdi+r11*4+0x280]
    23a8d356cbaf:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    23a8d356cbb5:	46 8d bc 9f 70 02 00 00                         	lea    r15d,[rdi+r11*4+0x270]
    23a8d356cbbd:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    23a8d356cbc3:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    23a8d356cbca:	41 8b c3                                        	mov    eax,r11d
    23a8d356cbcd:	c1 e0 04                                        	shl    eax,0x4
    23a8d356cbd0:	44 03 f8                                        	add    r15d,eax
    23a8d356cbd3:	41 57                                           	push   r15
    23a8d356cbd5:	8b d6                                           	mov    edx,esi
    23a8d356cbd7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356cbdb:	8b 85 a8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x258]
    23a8d356cbe1:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    23a8d356cbe7:	e8 3c f6 ed ff                                  	call   0x23a8d344c228
    23a8d356cbec:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    23a8d356cbf3:	41 83 c3 01                                     	add    r11d,0x1
    23a8d356cbf7:	41 83 fb 04                                     	cmp    r11d,0x4
    23a8d356cbfb:	0f 85 7f fe ff ff                               	jne    0x23a8d356ca80
    23a8d356cc01:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356cc04:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356cc08:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    23a8d356cc12:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    23a8d356cc1c:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    23a8d356cc20:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    23a8d356cc2a:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    23a8d356cc34:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    23a8d356cc39:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    23a8d356cc3d:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    23a8d356cc47:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    23a8d356cc4b:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    23a8d356cc55:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    23a8d356cc59:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    23a8d356cc5e:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    23a8d356cc62:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    23a8d356cc6c:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    23a8d356cc70:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d356cc7a:	49 8b c0                                        	mov    rax,r8
    23a8d356cc7d:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    23a8d356cc84:	e9 91 00 00 00                                  	jmp    0x23a8d356cd1a
    23a8d356cc89:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    23a8d356cc8f:	8b d6                                           	mov    edx,esi
    23a8d356cc91:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356cc95:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d356cc9b:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d356cc9f:	c5 f9 28 dd                                     	vmovapd xmm3,xmm5
    23a8d356cca3:	e8 80 f8 ed ff                                  	call   0x23a8d344c528
    23a8d356cca8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356ccab:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356ccaf:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    23a8d356ccb6:	e9 5f 00 00 00                                  	jmp    0x23a8d356cd1a
    23a8d356ccbb:	4c 8b c0                                        	mov    r8,rax
    23a8d356ccbe:	4d 8d 60 3c                                     	lea    r12,[r8+0x3c]
    23a8d356ccc2:	49 8b c1                                        	mov    rax,r9
    23a8d356ccc5:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    23a8d356cccb:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d356ccd5:	4d 8d 60 40                                     	lea    r12,[r8+0x40]
    23a8d356ccd9:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    23a8d356ccdf:	c4 c1 7a 7f ac 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm5
    23a8d356cce9:	4d 8d 60 44                                     	lea    r12,[r8+0x44]
    23a8d356cced:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    23a8d356ccf3:	c4 c1 7a 7f ac 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm5
    23a8d356ccfd:	4d 8d 60 48                                     	lea    r12,[r8+0x48]
    23a8d356cd01:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    23a8d356cd07:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    23a8d356cd11:	4c 8b d0                                        	mov    r10,rax
    23a8d356cd14:	49 8b c0                                        	mov    rax,r8
    23a8d356cd17:	4d 8b c2                                        	mov    r8,r10
    23a8d356cd1a:	c5 fa 6f 84 38 30 02 00 00                      	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x230]
    23a8d356cd23:	46 8b 9c 00 34 01 00 00                         	mov    r11d,DWORD PTR [rax+r8*1+0x134]
    23a8d356cd2b:	42 83 bc 00 34 01 00 00 02                      	cmp    DWORD PTR [rax+r8*1+0x134],0x2
    23a8d356cd34:	0f 84 57 00 00 00                               	je     0x23a8d356cd91
    23a8d356cd3a:	c5 fa 6f ac 38 60 02 00 00                      	vmovdqu xmm5,XMMWORD PTR [rax+rdi*1+0x260]
    23a8d356cd43:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    23a8d356cd48:	c5 10 59 ed                                     	vmulps xmm13,xmm13,xmm5
    23a8d356cd4c:	c5 fa 6f ac 38 50 02 00 00                      	vmovdqu xmm5,XMMWORD PTR [rax+rdi*1+0x250]
    23a8d356cd55:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    23a8d356cd5a:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    23a8d356cd5e:	c5 fa 6f ac 38 40 02 00 00                      	vmovdqu xmm5,XMMWORD PTR [rax+rdi*1+0x240]
    23a8d356cd67:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    23a8d356cd6c:	c5 f0 59 cd                                     	vmulps xmm1,xmm1,xmm5
    23a8d356cd70:	c5 f8 10 ad 20 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2e0]
    23a8d356cd78:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d356cd7c:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356cd84:	c5 f8 10 bd 60 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2a0]
    23a8d356cd8c:	e9 2b 00 00 00                                  	jmp    0x23a8d356cdbc
    23a8d356cd91:	c5 7a 6f ac 38 60 02 00 00                      	vmovdqu xmm13,XMMWORD PTR [rax+rdi*1+0x260]
    23a8d356cd9a:	c5 7a 6f b4 38 50 02 00 00                      	vmovdqu xmm14,XMMWORD PTR [rax+rdi*1+0x250]
    23a8d356cda3:	c5 fa 6f 8c 38 40 02 00 00                      	vmovdqu xmm1,XMMWORD PTR [rax+rdi*1+0x240]
    23a8d356cdac:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356cdb4:	c5 f8 10 bd 60 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2a0]
    23a8d356cdbc:	c4 c1 09 6a f5                                  	vpunpckhdq xmm6,xmm14,xmm13
    23a8d356cdc1:	c5 79 6a c1                                     	vpunpckhdq xmm8,xmm0,xmm1
    23a8d356cdc5:	c5 39 6d ce                                     	vpunpckhqdq xmm9,xmm8,xmm6
    23a8d356cdc9:	c5 7a 7f 8c 38 60 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x160],xmm9
    23a8d356cdd2:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    23a8d356cdd6:	c5 fa 7f b4 38 50 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x150],xmm6
    23a8d356cddf:	c4 c1 09 62 f5                                  	vpunpckldq xmm6,xmm14,xmm13
    23a8d356cde4:	c5 f9 62 c1                                     	vpunpckldq xmm0,xmm0,xmm1
    23a8d356cde8:	c5 79 6d c6                                     	vpunpckhqdq xmm8,xmm0,xmm6
    23a8d356cdec:	c5 7a 7f 84 38 40 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x140],xmm8
    23a8d356cdf5:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    23a8d356cdf9:	c5 fa 7f 84 38 30 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x130],xmm0
    23a8d356ce02:	44 8b 9d 70 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x90]
    23a8d356ce09:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d356ce0d:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d356ce12:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d356ce17:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    23a8d356ce1b:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356ce1f:	48 8b 9d f8 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x108]
    23a8d356ce26:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    23a8d356ce2d:	4c 8b 85 e8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x118]
    23a8d356ce34:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    23a8d356ce3c:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d356ce3f:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    23a8d356ce45:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    23a8d356ce49:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356ce4f:	c5 f8 10 85 10 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3f0]
    23a8d356ce57:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    23a8d356ce5f:	45 8b e3                                        	mov    r12d,r11d
    23a8d356ce62:	45 33 db                                        	xor    r11d,r11d
    23a8d356ce65:	41 bf 02 00 00 00                               	mov    r15d,0x2
    23a8d356ce6b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356ce6f:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    23a8d356ce76:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    23a8d356ce7b:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    23a8d356ce80:	e9 48 00 00 00                                  	jmp    0x23a8d356cecd
    23a8d356ce85:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356ce8e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356ce97:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356cea0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356cea9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356ceb2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356cebb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d356cec0:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356cec6:	44 8b a5 70 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x90]
    23a8d356cecd:	4c 89 9d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r11
    23a8d356ced4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d356ced9:	0f 85 0b 28 00 00                               	jne    0x23a8d356f6ea
    23a8d356cedf:	41 8b cb                                        	mov    ecx,r11d
    23a8d356cee2:	d3 ee                                           	shr    esi,cl
    23a8d356cee4:	40 f6 c6 01                                     	test   sil,0x1
    23a8d356cee8:	0f 84 45 0b 00 00                               	je     0x23a8d356da33
    23a8d356ceee:	41 8b cb                                        	mov    ecx,r11d
    23a8d356cef1:	c1 e1 04                                        	shl    ecx,0x4
    23a8d356cef4:	42 8d 34 21                                     	lea    esi,[rcx+r12*1]
    23a8d356cef8:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    23a8d356ceff:	44 03 e1                                        	add    r12d,ecx
    23a8d356cf02:	42 8d 4c 9f 3c                                  	lea    ecx,[rdi+r11*4+0x3c]
    23a8d356cf07:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    23a8d356cf0a:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    23a8d356cf0f:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    23a8d356cf12:	43 8d 1c 99                                     	lea    ebx,[r9+r11*4]
    23a8d356cf16:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    23a8d356cf19:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d356cf20:	0f 85 ca 0a 00 00                               	jne    0x23a8d356d9f0
    23a8d356cf26:	46 8b 5c 00 74                                  	mov    r11d,DWORD PTR [rax+r8*1+0x74]
    23a8d356cf2b:	42 83 7c 00 74 00                               	cmp    DWORD PTR [rax+r8*1+0x74],0x0
    23a8d356cf31:	0f 85 6b 0a 00 00                               	jne    0x23a8d356d9a2
    23a8d356cf37:	4c 8b 15 94 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc194]        # 0x23a8d35690d2
    23a8d356cf3e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d356cf43:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d356cf48:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d356cf4d:	c4 21 7a 6f 1c 20                               	vmovdqu xmm11,XMMWORD PTR [rax+r12*1]
    23a8d356cf53:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    23a8d356cf58:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    23a8d356cf5d:	c4 41 38 c2 e3 01                               	vcmpltps xmm12,xmm8,xmm11
    23a8d356cf63:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    23a8d356cf68:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    23a8d356cf6d:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d356cf72:	4c 8b 15 c6 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c6]        # 0x23a8d356953f
    23a8d356cf79:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d356cf7e:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d356cf83:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    23a8d356cf88:	4c 8b 15 c7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c7]        # 0x23a8d3569556
    23a8d356cf8f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d356cf94:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d356cf99:	c4 41 30 58 cb                                  	vaddps xmm9,xmm9,xmm11
    23a8d356cf9e:	4c 8b 15 c8 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c8]        # 0x23a8d356956d
    23a8d356cfa5:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    23a8d356cfab:	c4 41 30 54 df                                  	vandps xmm11,xmm9,xmm15
    23a8d356cfb0:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    23a8d356cfb6:	c4 41 7a 5b db                                  	vcvttps2dq xmm11,xmm11
    23a8d356cfbb:	c4 41 21 ef df                                  	vpxor  xmm11,xmm11,xmm15
    23a8d356cfc0:	4c 8b 15 c9 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c9]        # 0x23a8d3569590
    23a8d356cfc7:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d356cfcc:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d356cfd1:	4c 8b 15 3d 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9b3d]        # 0x23a8d3566b15
    23a8d356cfd8:	c4 41 30 54 0a                                  	vandps xmm9,xmm9,XMMWORD PTR [r10]
    23a8d356cfdd:	4c 8b 15 cb c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5cb]        # 0x23a8d35695af
    23a8d356cfe4:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356cfe9:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d356cfee:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    23a8d356cff4:	c4 41 31 df fc                                  	vpandn xmm15,xmm9,xmm12
    23a8d356cff9:	c4 41 21 db c9                                  	vpand  xmm9,xmm11,xmm9
    23a8d356cffe:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d356d003:	c4 42 31 2b c9                                  	vpackusdw xmm9,xmm9,xmm9
    23a8d356d008:	c4 41 31 67 c9                                  	vpackuswb xmm9,xmm9,xmm9
    23a8d356d00d:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d356d012:	46 8b 1c 00                                     	mov    r11d,DWORD PTR [rax+r8*1]
    23a8d356d016:	44 0f af da                                     	imul   r11d,edx
    23a8d356d01a:	44 03 db                                        	add    r11d,ebx
    23a8d356d01d:	47 8d 24 1b                                     	lea    r12d,[r11+r11*1]
    23a8d356d021:	48 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rbx
    23a8d356d028:	42 8b 5c 00 18                                  	mov    ebx,DWORD PTR [rax+r8*1+0x18]
    23a8d356d02d:	46 8d 1c db                                     	lea    r11d,[rbx+r11*8]
    23a8d356d031:	83 f9 03                                        	cmp    ecx,0x3
    23a8d356d034:	0f 84 80 00 00 00                               	je     0x23a8d356d0ba
    23a8d356d03a:	8b d9                                           	mov    ebx,ecx
    23a8d356d03c:	83 e3 01                                        	and    ebx,0x1
    23a8d356d03f:	f7 db                                           	neg    ebx
    23a8d356d041:	c4 63 29 22 d3 00                               	vpinsrd xmm10,xmm10,ebx,0x0
    23a8d356d047:	8b d9                                           	mov    ebx,ecx
    23a8d356d049:	c1 e3 1e                                        	shl    ebx,0x1e
    23a8d356d04c:	c1 fb 1f                                        	sar    ebx,0x1f
    23a8d356d04f:	c4 63 29 22 d3 01                               	vpinsrd xmm10,xmm10,ebx,0x1
    23a8d356d055:	42 8b 5c 00 68                                  	mov    ebx,DWORD PTR [rax+r8*1+0x68]
    23a8d356d05a:	42 83 7c 00 68 00                               	cmp    DWORD PTR [rax+r8*1+0x68],0x0
    23a8d356d060:	0f 84 3a 00 00 00                               	je     0x23a8d356d0a0
    23a8d356d066:	42 8b 5c 00 70                                  	mov    ebx,DWORD PTR [rax+r8*1+0x70]
    23a8d356d06b:	42 83 7c 00 70 00                               	cmp    DWORD PTR [rax+r8*1+0x70],0x0
    23a8d356d071:	0f 84 29 00 00 00                               	je     0x23a8d356d0a0
    23a8d356d077:	42 8b 5c 00 1c                                  	mov    ebx,DWORD PTR [rax+r8*1+0x1c]
    23a8d356d07c:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    23a8d356d080:	c5 7b 10 1c 30                                  	vmovsd xmm11,QWORD PTR [rax+rsi*1]
    23a8d356d085:	c4 21 7b 10 24 20                               	vmovsd xmm12,QWORD PTR [rax+r12*1]
    23a8d356d08b:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    23a8d356d090:	c4 41 21 db da                                  	vpand  xmm11,xmm11,xmm10
    23a8d356d095:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    23a8d356d09a:	c4 21 78 13 1c 20                               	vmovlps QWORD PTR [rax+r12*1],xmm11
    23a8d356d0a0:	c4 21 7b 10 1c 18                               	vmovsd xmm11,QWORD PTR [rax+r11*1]
    23a8d356d0a6:	c4 41 29 df fb                                  	vpandn xmm15,xmm10,xmm11
    23a8d356d0ab:	c4 41 31 db ca                                  	vpand  xmm9,xmm9,xmm10
    23a8d356d0b0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d356d0b5:	e9 33 00 00 00                                  	jmp    0x23a8d356d0ed
    23a8d356d0ba:	42 8b 5c 00 68                                  	mov    ebx,DWORD PTR [rax+r8*1+0x68]
    23a8d356d0bf:	42 83 7c 00 68 00                               	cmp    DWORD PTR [rax+r8*1+0x68],0x0
    23a8d356d0c5:	0f 84 22 00 00 00                               	je     0x23a8d356d0ed
    23a8d356d0cb:	42 8b 5c 00 70                                  	mov    ebx,DWORD PTR [rax+r8*1+0x70]
    23a8d356d0d0:	42 83 7c 00 70 00                               	cmp    DWORD PTR [rax+r8*1+0x70],0x0
    23a8d356d0d6:	0f 84 11 00 00 00                               	je     0x23a8d356d0ed
    23a8d356d0dc:	42 8b 5c 00 1c                                  	mov    ebx,DWORD PTR [rax+r8*1+0x1c]
    23a8d356d0e1:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    23a8d356d0e5:	48 8b 1c 30                                     	mov    rbx,QWORD PTR [rax+rsi*1]
    23a8d356d0e9:	4a 89 1c 20                                     	mov    QWORD PTR [rax+r12*1],rbx
    23a8d356d0ed:	c4 21 78 13 0c 18                               	vmovlps QWORD PTR [rax+r11*1],xmm9
    23a8d356d0f3:	46 8b 5c 00 68                                  	mov    r11d,DWORD PTR [rax+r8*1+0x68]
    23a8d356d0f8:	42 83 7c 00 68 00                               	cmp    DWORD PTR [rax+r8*1+0x68],0x0
    23a8d356d0fe:	0f 84 2f 09 00 00                               	je     0x23a8d356da33
    23a8d356d104:	46 8b 5c 00 70                                  	mov    r11d,DWORD PTR [rax+r8*1+0x70]
    23a8d356d109:	42 83 7c 00 70 00                               	cmp    DWORD PTR [rax+r8*1+0x70],0x0
    23a8d356d10f:	0f 84 1e 09 00 00                               	je     0x23a8d356da33
    23a8d356d115:	46 8b 5c 00 14                                  	mov    r11d,DWORD PTR [rax+r8*1+0x14]
    23a8d356d11a:	42 83 7c 00 14 02                               	cmp    DWORD PTR [rax+r8*1+0x14],0x2
    23a8d356d120:	0f 85 0d 09 00 00                               	jne    0x23a8d356da33
    23a8d356d126:	46 8b 5c 00 18                                  	mov    r11d,DWORD PTR [rax+r8*1+0x18]
    23a8d356d12b:	45 85 db                                        	test   r11d,r11d
    23a8d356d12e:	0f 84 ff 08 00 00                               	je     0x23a8d356da33
    23a8d356d134:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    23a8d356d138:	42 8b 1c 20                                     	mov    ebx,DWORD PTR [rax+r12*1]
    23a8d356d13c:	42 83 3c 20 00                                  	cmp    DWORD PTR [rax+r12*1],0x0
    23a8d356d141:	0f 84 ec 08 00 00                               	je     0x23a8d356da33
    23a8d356d147:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    23a8d356d14b:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356d14f:	41 83 eb 3c                                     	sub    r11d,0x3c
    23a8d356d153:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    23a8d356d157:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    23a8d356d15d:	c1 eb 02                                        	shr    ebx,0x2
    23a8d356d160:	41 0f af db                                     	imul   ebx,r11d
    23a8d356d164:	c1 e3 04                                        	shl    ebx,0x4
    23a8d356d167:	46 8d 1c 23                                     	lea    r11d,[rbx+r12*1]
    23a8d356d16b:	44 8d 24 95 00 00 00 00                         	lea    r12d,[rdx*4+0x0]
    23a8d356d173:	41 8b dc                                        	mov    ebx,r12d
    23a8d356d176:	83 e3 f0                                        	and    ebx,0xfffffff0
    23a8d356d179:	44 03 db                                        	add    r11d,ebx
    23a8d356d17c:	42 8b 5c 00 6c                                  	mov    ebx,DWORD PTR [rax+r8*1+0x6c]
    23a8d356d181:	81 eb 01 02 00 00                               	sub    ebx,0x201
    23a8d356d187:	48 89 95 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rdx
    23a8d356d18e:	33 d2                                           	xor    edx,edx
    23a8d356d190:	85 db                                           	test   ebx,ebx
    23a8d356d192:	0f 94 c2                                        	sete   dl
    23a8d356d195:	83 fb 02                                        	cmp    ebx,0x2
    23a8d356d198:	0f 94 c3                                        	sete   bl
    23a8d356d19b:	0f b6 db                                        	movzx  ebx,bl
    23a8d356d19e:	0b da                                           	or     ebx,edx
    23a8d356d1a0:	0f 85 0d 00 00 00                               	jne    0x23a8d356d1b3
    23a8d356d1a6:	4a c7 04 18 00 00 00 00                         	mov    QWORD PTR [rax+r11*1],0x0
    23a8d356d1ae:	e9 80 08 00 00                                  	jmp    0x23a8d356da33
    23a8d356d1b3:	83 e1 03                                        	and    ecx,0x3
    23a8d356d1b6:	41 83 e4 0c                                     	and    r12d,0xc
    23a8d356d1ba:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    23a8d356d1c0:	83 e3 03                                        	and    ebx,0x3
    23a8d356d1c3:	41 0b dc                                        	or     ebx,r12d
    23a8d356d1c6:	44 8d 24 1b                                     	lea    r12d,[rbx+rbx*1]
    23a8d356d1ca:	41 83 e4 3f                                     	and    r12d,0x3f
    23a8d356d1ce:	4c 8b d1                                        	mov    r10,rcx
    23a8d356d1d1:	41 8b cc                                        	mov    ecx,r12d
    23a8d356d1d4:	4d 8b e2                                        	mov    r12,r10
    23a8d356d1d7:	49 d3 e4                                        	shl    r12,cl
    23a8d356d1da:	4a 8b 1c 18                                     	mov    rbx,QWORD PTR [rax+r11*1]
    23a8d356d1de:	ba ff ff ff ff                                  	mov    edx,0xffffffff
    23a8d356d1e3:	48 3b da                                        	cmp    rbx,rdx
    23a8d356d1e6:	0f 84 ce 03 00 00                               	je     0x23a8d356d5ba
    23a8d356d1ec:	49 0b dc                                        	or     rbx,r12
    23a8d356d1ef:	4a 89 1c 18                                     	mov    QWORD PTR [rax+r11*1],rbx
    23a8d356d1f3:	48 3b d3                                        	cmp    rdx,rbx
    23a8d356d1f6:	0f 85 37 08 00 00                               	jne    0x23a8d356da33
    23a8d356d1fc:	46 8b 64 00 1c                                  	mov    r12d,DWORD PTR [rax+r8*1+0x1c]
    23a8d356d201:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    23a8d356d207:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    23a8d356d20d:	42 8b 14 00                                     	mov    edx,DWORD PTR [rax+r8*1]
    23a8d356d211:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    23a8d356d217:	83 c9 03                                        	or     ecx,0x3
    23a8d356d21a:	0f af ca                                        	imul   ecx,edx
    23a8d356d21d:	03 cb                                           	add    ecx,ebx
    23a8d356d21f:	41 8d 0c cc                                     	lea    ecx,[r12+rcx*8]
    23a8d356d223:	c5 7a 6f 4c 08 10                               	vmovdqu xmm9,XMMWORD PTR [rax+rcx*1+0x10]
    23a8d356d229:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d356d22f:	c5 7a 6f 1c 08                                  	vmovdqu xmm11,XMMWORD PTR [rax+rcx*1]
    23a8d356d234:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356d23a:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    23a8d356d23f:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    23a8d356d245:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    23a8d356d24b:	8b f1                                           	mov    esi,ecx
    23a8d356d24d:	83 ce 02                                        	or     esi,0x2
    23a8d356d250:	0f af f2                                        	imul   esi,edx
    23a8d356d253:	03 f3                                           	add    esi,ebx
    23a8d356d255:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    23a8d356d259:	c5 7a 6f 64 30 10                               	vmovdqu xmm12,XMMWORD PTR [rax+rsi*1+0x10]
    23a8d356d25f:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356d265:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    23a8d356d26a:	c5 7a 6f 2c 30                                  	vmovdqu xmm13,XMMWORD PTR [rax+rsi*1]
    23a8d356d26f:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    23a8d356d275:	c4 41 29 db d6                                  	vpand  xmm10,xmm10,xmm14
    23a8d356d27a:	8b f1                                           	mov    esi,ecx
    23a8d356d27c:	83 ce 01                                        	or     esi,0x1
    23a8d356d27f:	0f af f2                                        	imul   esi,edx
    23a8d356d282:	03 f3                                           	add    esi,ebx
    23a8d356d284:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    23a8d356d288:	c5 7a 6f 74 30 10                               	vmovdqu xmm14,XMMWORD PTR [rax+rsi*1+0x10]
    23a8d356d28e:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    23a8d356d294:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    23a8d356d298:	c5 fa 6f 0c 30                                  	vmovdqu xmm1,XMMWORD PTR [rax+rsi*1]
    23a8d356d29d:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    23a8d356d2a2:	c5 29 db d2                                     	vpand  xmm10,xmm10,xmm2
    23a8d356d2a6:	0f af ca                                        	imul   ecx,edx
    23a8d356d2a9:	03 d9                                           	add    ebx,ecx
    23a8d356d2ab:	45 8d 24 dc                                     	lea    r12d,[r12+rbx*8]
    23a8d356d2af:	c4 a1 7a 6f 54 20 10                            	vmovdqu xmm2,XMMWORD PTR [rax+r12*1+0x10]
    23a8d356d2b6:	c5 e8 c2 c2 00                                  	vcmpeqps xmm0,xmm2,xmm2
    23a8d356d2bb:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    23a8d356d2bf:	c4 21 7a 6f 14 20                               	vmovdqu xmm10,XMMWORD PTR [rax+r12*1]
    23a8d356d2c5:	c4 c1 28 c2 ea 00                               	vcmpeqps xmm5,xmm10,xmm10
    23a8d356d2cb:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d356d2cf:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    23a8d356d2d4:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    23a8d356d2d9:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    23a8d356d2dd:	41 83 fc 0f                                     	cmp    r12d,0xf
    23a8d356d2e1:	0f 84 16 00 00 00                               	je     0x23a8d356d2fd
    23a8d356d2e7:	4a c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [rax+r11*1+0x8],0x7f800000
    23a8d356d2f0:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356d2f8:	e9 36 07 00 00                                  	jmp    0x23a8d356da33
    23a8d356d2fd:	4c 8b 15 b5 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5b5]        # 0x23a8d35698b9
    23a8d356d304:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d356d309:	4c 8b 15 b8 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5b8]        # 0x23a8d35698c8
    23a8d356d310:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    23a8d356d316:	4c 8b 15 bb c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5bb]        # 0x23a8d35698d8
    23a8d356d31d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356d322:	4c 8b 15 be c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5be]        # 0x23a8d35698e7
    23a8d356d329:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d356d32f:	4c 8b 15 c1 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c1]        # 0x23a8d35698f7
    23a8d356d336:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356d33b:	4c 8b 15 c4 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c4]        # 0x23a8d3569906
    23a8d356d342:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    23a8d356d348:	4c 8b 15 c7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c7]        # 0x23a8d3569916
    23a8d356d34f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d356d354:	4c 8b 15 ca c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ca]        # 0x23a8d3569925
    23a8d356d35b:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    23a8d356d361:	4c 8b 15 cd c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5cd]        # 0x23a8d3569935
    23a8d356d368:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d356d36d:	4c 8b 15 d0 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d0]        # 0x23a8d3569944
    23a8d356d374:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    23a8d356d37a:	4c 8b 15 d3 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d3]        # 0x23a8d3569954
    23a8d356d381:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356d386:	4c 8b 15 d6 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d6]        # 0x23a8d3569963
    23a8d356d38d:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d356d393:	4c 8b 15 d9 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d9]        # 0x23a8d3569973
    23a8d356d39a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d356d39f:	4c 8b 15 dc c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5dc]        # 0x23a8d3569982
    23a8d356d3a6:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d356d3ac:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    23a8d356d3b1:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d356d3b5:	c5 f9 73 f0 3f                                  	vpsllq xmm0,xmm0,0x3f
    23a8d356d3ba:	c5 f9 73 d0 1f                                  	vpsrlq xmm0,xmm0,0x1f
    23a8d356d3bf:	4c 8b 15 df c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5df]        # 0x23a8d35699a5
    23a8d356d3c6:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    23a8d356d3cc:	c5 78 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm9
    23a8d356d3d1:	4c 8b 15 e2 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e2]        # 0x23a8d35699ba
    23a8d356d3d8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d356d3dd:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d356d3e2:	c5 f8 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm5
    23a8d356d3e7:	c4 c1 30 c2 ea 01                               	vcmpltps xmm5,xmm9,xmm10
    23a8d356d3ed:	c4 41 28 c2 c9 01                               	vcmpltps xmm9,xmm10,xmm9
    23a8d356d3f3:	c4 c1 51 eb e9                                  	vpor   xmm5,xmm5,xmm9
    23a8d356d3f8:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    23a8d356d3fc:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d356d400:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d405:	4c 8b 15 ae c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ae]        # 0x23a8d35699ba
    23a8d356d40c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d356d411:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d356d416:	c4 41 51 df f9                                  	vpandn xmm15,xmm5,xmm9
    23a8d356d41b:	c5 a9 db ed                                     	vpand  xmm5,xmm10,xmm5
    23a8d356d41f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d424:	c5 50 c2 ca 01                                  	vcmpltps xmm9,xmm5,xmm2
    23a8d356d429:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d356d42d:	c4 c1 59 db c1                                  	vpand  xmm0,xmm4,xmm9
    23a8d356d432:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d437:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356d43b:	c4 c1 69 db e9                                  	vpand  xmm5,xmm2,xmm9
    23a8d356d440:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d445:	c5 50 c2 c9 01                                  	vcmpltps xmm9,xmm5,xmm1
    23a8d356d44a:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d356d44e:	c4 c1 61 db c1                                  	vpand  xmm0,xmm3,xmm9
    23a8d356d453:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d458:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356d45c:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d356d461:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d466:	c4 41 50 c2 ce 01                               	vcmpltps xmm9,xmm5,xmm14
    23a8d356d46c:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d356d470:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d356d475:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d47a:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356d47e:	c4 c1 09 db e9                                  	vpand  xmm5,xmm14,xmm9
    23a8d356d483:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d488:	c4 41 50 c2 c5 01                               	vcmpltps xmm8,xmm5,xmm13
    23a8d356d48e:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d356d492:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d356d497:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d49c:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d356d4a0:	c4 c1 11 db e8                                  	vpand  xmm5,xmm13,xmm8
    23a8d356d4a5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d4aa:	c4 c1 50 c2 fc 01                               	vcmpltps xmm7,xmm5,xmm12
    23a8d356d4b0:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356d4b4:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356d4b8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d4bd:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356d4c1:	c5 99 db ef                                     	vpand  xmm5,xmm12,xmm7
    23a8d356d4c5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d4ca:	c4 c1 50 c2 f3 01                               	vcmpltps xmm6,xmm5,xmm11
    23a8d356d4d0:	c5 f8 10 7d 80                                  	vmovups xmm7,XMMWORD PTR [rbp-0x80]
    23a8d356d4d5:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d356d4d9:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    23a8d356d4dd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d4e2:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d356d4e6:	c5 a1 db ee                                     	vpand  xmm5,xmm11,xmm6
    23a8d356d4ea:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d4ef:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d356d4f4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    23a8d356d4f9:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d356d4fe:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356d502:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    23a8d356d506:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d50b:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    23a8d356d514:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356d518:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356d51c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d521:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    23a8d356d52a:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d356d52e:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d356d532:	45 33 e4                                        	xor    r12d,r12d
    23a8d356d535:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d356d539:	41 0f 97 c4                                     	seta   r12b
    23a8d356d53d:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    23a8d356d543:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    23a8d356d54b:	0b d3                                           	or     edx,ebx
    23a8d356d54d:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    23a8d356d552:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d356d557:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356d55b:	45 0f 47 e7                                     	cmova  r12d,r15d
    23a8d356d55f:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    23a8d356d567:	0b d3                                           	or     edx,ebx
    23a8d356d569:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    23a8d356d56e:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d356d573:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d356d578:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d356d57c:	44 0f 47 e2                                     	cmova  r12d,edx
    23a8d356d580:	41 c1 e4 02                                     	shl    r12d,0x2
    23a8d356d584:	41 0b dc                                        	or     ebx,r12d
    23a8d356d587:	c5 fa 10 04 18                                  	vmovss xmm0,DWORD PTR [rax+rbx*1]
    23a8d356d58c:	c4 a1 7a 11 44 18 08                            	vmovss DWORD PTR [rax+r11*1+0x8],xmm0
    23a8d356d593:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    23a8d356d599:	44 0b e3                                        	or     r12d,ebx
    23a8d356d59c:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356d5a0:	46 89 64 18 0c                                  	mov    DWORD PTR [rax+r11*1+0xc],r12d
    23a8d356d5a5:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    23a8d356d5ad:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356d5b5:	e9 79 04 00 00                                  	jmp    0x23a8d356da33
    23a8d356d5ba:	42 8b 5c 18 0c                                  	mov    ebx,DWORD PTR [rax+r11*1+0xc]
    23a8d356d5bf:	8b d3                                           	mov    edx,ebx
    23a8d356d5c1:	83 e2 3f                                        	and    edx,0x3f
    23a8d356d5c4:	8b ca                                           	mov    ecx,edx
    23a8d356d5c6:	49 d3 ec                                        	shr    r12,cl
    23a8d356d5c9:	41 f6 c4 01                                     	test   r12b,0x1
    23a8d356d5cd:	0f 84 60 04 00 00                               	je     0x23a8d356da33
    23a8d356d5d3:	83 e3 01                                        	and    ebx,0x1
    23a8d356d5d6:	44 8d 24 9e                                     	lea    r12d,[rsi+rbx*4]
    23a8d356d5da:	c4 a1 7a 10 04 20                               	vmovss xmm0,DWORD PTR [rax+r12*1]
    23a8d356d5e0:	c4 a1 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [rax+r11*1+0x8]
    23a8d356d5e7:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    23a8d356d5eb:	0f 86 42 04 00 00                               	jbe    0x23a8d356da33
    23a8d356d5f1:	46 8b 64 00 1c                                  	mov    r12d,DWORD PTR [rax+r8*1+0x1c]
    23a8d356d5f6:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    23a8d356d5fc:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    23a8d356d602:	42 8b 14 00                                     	mov    edx,DWORD PTR [rax+r8*1]
    23a8d356d606:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    23a8d356d60c:	83 c9 03                                        	or     ecx,0x3
    23a8d356d60f:	0f af ca                                        	imul   ecx,edx
    23a8d356d612:	03 cb                                           	add    ecx,ebx
    23a8d356d614:	41 8d 0c cc                                     	lea    ecx,[r12+rcx*8]
    23a8d356d618:	c5 fa 6f 44 08 10                               	vmovdqu xmm0,XMMWORD PTR [rax+rcx*1+0x10]
    23a8d356d61e:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    23a8d356d623:	c5 fa 6f 3c 08                                  	vmovdqu xmm7,XMMWORD PTR [rax+rcx*1]
    23a8d356d628:	c5 40 c2 cf 00                                  	vcmpeqps xmm9,xmm7,xmm7
    23a8d356d62d:	c4 c1 49 db f1                                  	vpand  xmm6,xmm6,xmm9
    23a8d356d632:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    23a8d356d638:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    23a8d356d63e:	8b f1                                           	mov    esi,ecx
    23a8d356d640:	83 ce 02                                        	or     esi,0x2
    23a8d356d643:	0f af f2                                        	imul   esi,edx
    23a8d356d646:	03 f3                                           	add    esi,ebx
    23a8d356d648:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    23a8d356d64c:	c5 7a 6f 4c 30 10                               	vmovdqu xmm9,XMMWORD PTR [rax+rsi*1+0x10]
    23a8d356d652:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d356d658:	c4 c1 49 db f2                                  	vpand  xmm6,xmm6,xmm10
    23a8d356d65d:	c5 7a 6f 14 30                                  	vmovdqu xmm10,XMMWORD PTR [rax+rsi*1]
    23a8d356d662:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d356d668:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    23a8d356d66d:	8b f1                                           	mov    esi,ecx
    23a8d356d66f:	83 ce 01                                        	or     esi,0x1
    23a8d356d672:	0f af f2                                        	imul   esi,edx
    23a8d356d675:	03 f3                                           	add    esi,ebx
    23a8d356d677:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    23a8d356d67b:	c5 7a 6f 5c 30 10                               	vmovdqu xmm11,XMMWORD PTR [rax+rsi*1+0x10]
    23a8d356d681:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356d687:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    23a8d356d68c:	c5 7a 6f 24 30                                  	vmovdqu xmm12,XMMWORD PTR [rax+rsi*1]
    23a8d356d691:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356d697:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    23a8d356d69c:	0f af ca                                        	imul   ecx,edx
    23a8d356d69f:	03 d9                                           	add    ebx,ecx
    23a8d356d6a1:	45 8d 24 dc                                     	lea    r12d,[r12+rbx*8]
    23a8d356d6a5:	c4 21 7a 6f 6c 20 10                            	vmovdqu xmm13,XMMWORD PTR [rax+r12*1+0x10]
    23a8d356d6ac:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    23a8d356d6b2:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    23a8d356d6b7:	c4 21 7a 6f 34 20                               	vmovdqu xmm14,XMMWORD PTR [rax+r12*1]
    23a8d356d6bd:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    23a8d356d6c3:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    23a8d356d6c7:	c5 c9 72 f6 1f                                  	vpslld xmm6,xmm6,0x1f
    23a8d356d6cc:	c5 c9 72 e6 1f                                  	vpsrad xmm6,xmm6,0x1f
    23a8d356d6d1:	c5 78 50 e6                                     	vmovmskps r12d,xmm6
    23a8d356d6d5:	41 83 fc 0f                                     	cmp    r12d,0xf
    23a8d356d6d9:	0f 84 0e 00 00 00                               	je     0x23a8d356d6ed
    23a8d356d6df:	4a c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [rax+r11*1+0x8],0x7f800000
    23a8d356d6e8:	e9 46 03 00 00                                  	jmp    0x23a8d356da33
    23a8d356d6ed:	4c 8b 15 c5 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c5]        # 0x23a8d35698b9
    23a8d356d6f4:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356d6f9:	4c 8b 15 c8 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c8]        # 0x23a8d35698c8
    23a8d356d700:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    23a8d356d706:	4c 8b 15 cb c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1cb]        # 0x23a8d35698d8
    23a8d356d70d:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d356d712:	4c 8b 15 ce c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ce]        # 0x23a8d35698e7
    23a8d356d719:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d356d71f:	4c 8b 15 d1 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d1]        # 0x23a8d35698f7
    23a8d356d726:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d356d72b:	4c 8b 15 d4 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d4]        # 0x23a8d3569906
    23a8d356d732:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d356d738:	4c 8b 15 d7 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d7]        # 0x23a8d3569916
    23a8d356d73f:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356d744:	4c 8b 15 da c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1da]        # 0x23a8d3569925
    23a8d356d74b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d356d751:	4c 8b 15 dd c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1dd]        # 0x23a8d3569935
    23a8d356d758:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d356d75d:	4c 8b 15 e0 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e0]        # 0x23a8d3569944
    23a8d356d764:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d356d76a:	4c 8b 15 e3 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e3]        # 0x23a8d3569954
    23a8d356d771:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356d776:	4c 8b 15 e6 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e6]        # 0x23a8d3569963
    23a8d356d77d:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d356d783:	4c 8b 15 e9 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e9]        # 0x23a8d3569973
    23a8d356d78a:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d356d78f:	4c 8b 15 ec c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ec]        # 0x23a8d3569982
    23a8d356d796:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    23a8d356d79c:	c5 f8 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm6
    23a8d356d7a1:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d356d7a5:	c5 c9 73 f6 3f                                  	vpsllq xmm6,xmm6,0x3f
    23a8d356d7aa:	c5 c9 73 d6 1f                                  	vpsrlq xmm6,xmm6,0x1f
    23a8d356d7af:	4c 8b 15 ef c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ef]        # 0x23a8d35699a5
    23a8d356d7b6:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    23a8d356d7bc:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d356d7c1:	4c 8b 15 f2 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f2]        # 0x23a8d35699ba
    23a8d356d7c8:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d356d7cd:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d356d7d1:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    23a8d356d7d6:	c4 c1 78 c2 ce 01                               	vcmpltps xmm1,xmm0,xmm14
    23a8d356d7dc:	c5 88 c2 c0 01                                  	vcmpltps xmm0,xmm14,xmm0
    23a8d356d7e1:	c5 f1 eb c0                                     	vpor   xmm0,xmm1,xmm0
    23a8d356d7e5:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    23a8d356d7e9:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    23a8d356d7ed:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d356d7f2:	4c 8b 15 c1 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c1]        # 0x23a8d35699ba
    23a8d356d7f9:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d356d7fe:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d356d802:	c5 79 df f9                                     	vpandn xmm15,xmm0,xmm1
    23a8d356d806:	c5 89 db c0                                     	vpand  xmm0,xmm14,xmm0
    23a8d356d80a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d80f:	c4 41 78 c2 f5 01                               	vcmpltps xmm14,xmm0,xmm13
    23a8d356d815:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    23a8d356d819:	c4 c1 39 db f6                                  	vpand  xmm6,xmm8,xmm14
    23a8d356d81e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d356d823:	c5 09 df f8                                     	vpandn xmm15,xmm14,xmm0
    23a8d356d827:	c4 c1 11 db c6                                  	vpand  xmm0,xmm13,xmm14
    23a8d356d82c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d831:	c4 41 78 c2 c4 01                               	vcmpltps xmm8,xmm0,xmm12
    23a8d356d837:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    23a8d356d83b:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d356d840:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d845:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d356d849:	c4 c1 19 db c0                                  	vpand  xmm0,xmm12,xmm8
    23a8d356d84e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d853:	c4 c1 78 c2 f3 01                               	vcmpltps xmm6,xmm0,xmm11
    23a8d356d859:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d356d85d:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    23a8d356d861:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d866:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d356d86a:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    23a8d356d86e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d873:	c4 c1 78 c2 f2 01                               	vcmpltps xmm6,xmm0,xmm10
    23a8d356d879:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d356d87d:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    23a8d356d881:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d886:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d356d88a:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    23a8d356d88e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d893:	c4 c1 78 c2 f1 01                               	vcmpltps xmm6,xmm0,xmm9
    23a8d356d899:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d356d89d:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    23a8d356d8a1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d8a6:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d356d8aa:	c5 b1 db c6                                     	vpand  xmm0,xmm9,xmm6
    23a8d356d8ae:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d8b3:	c5 f8 c2 f7 01                                  	vcmpltps xmm6,xmm0,xmm7
    23a8d356d8b8:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d356d8bd:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    23a8d356d8c1:	c5 b9 db ee                                     	vpand  xmm5,xmm8,xmm6
    23a8d356d8c5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d8ca:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    23a8d356d8ce:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    23a8d356d8d2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d8d7:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d356d8dc:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d356d8e1:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d356d8e6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356d8ea:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d356d8ee:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356d8f3:	c5 fa 7f ac 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm5
    23a8d356d8fc:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356d900:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356d904:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356d909:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    23a8d356d912:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d356d916:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d356d91a:	45 33 e4                                        	xor    r12d,r12d
    23a8d356d91d:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d356d921:	41 0f 97 c4                                     	seta   r12b
    23a8d356d925:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    23a8d356d92b:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    23a8d356d933:	0b d3                                           	or     edx,ebx
    23a8d356d935:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    23a8d356d93a:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d356d93f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356d943:	45 0f 47 e7                                     	cmova  r12d,r15d
    23a8d356d947:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    23a8d356d94f:	0b d3                                           	or     edx,ebx
    23a8d356d951:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    23a8d356d956:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d356d95b:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d356d960:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d356d964:	44 0f 47 e2                                     	cmova  r12d,edx
    23a8d356d968:	41 c1 e4 02                                     	shl    r12d,0x2
    23a8d356d96c:	41 0b dc                                        	or     ebx,r12d
    23a8d356d96f:	c5 fa 10 04 18                                  	vmovss xmm0,DWORD PTR [rax+rbx*1]
    23a8d356d974:	c4 a1 7a 11 44 18 08                            	vmovss DWORD PTR [rax+r11*1+0x8],xmm0
    23a8d356d97b:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    23a8d356d981:	44 0b e3                                        	or     r12d,ebx
    23a8d356d984:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    23a8d356d988:	46 89 64 18 0c                                  	mov    DWORD PTR [rax+r11*1+0xc],r12d
    23a8d356d98d:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    23a8d356d995:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356d99d:	e9 91 00 00 00                                  	jmp    0x23a8d356da33
    23a8d356d9a2:	41 54                                           	push   r12
    23a8d356d9a4:	41 bb 03 00 00 00                               	mov    r11d,0x3
    23a8d356d9aa:	44 8b ce                                        	mov    r9d,esi
    23a8d356d9ad:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356d9b1:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d356d9b4:	44 8b d2                                        	mov    r10d,edx
    23a8d356d9b7:	8b d3                                           	mov    edx,ebx
    23a8d356d9b9:	8b d9                                           	mov    ebx,ecx
    23a8d356d9bb:	41 8b ca                                        	mov    ecx,r10d
    23a8d356d9be:	e8 a5 e8 ed ff                                  	call   0x23a8d344c268
    23a8d356d9c3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356d9c6:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356d9ca:	41 bf 02 00 00 00                               	mov    r15d,0x2
    23a8d356d9d0:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356d9d4:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    23a8d356d9db:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    23a8d356d9e3:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356d9eb:	e9 43 00 00 00                                  	jmp    0x23a8d356da33
    23a8d356d9f0:	41 54                                           	push   r12
    23a8d356d9f2:	44 8b ce                                        	mov    r9d,esi
    23a8d356d9f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356d9f9:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d356d9fc:	44 8b d2                                        	mov    r10d,edx
    23a8d356d9ff:	8b d3                                           	mov    edx,ebx
    23a8d356da01:	8b d9                                           	mov    ebx,ecx
    23a8d356da03:	41 8b ca                                        	mov    ecx,r10d
    23a8d356da06:	e8 4d e8 ed ff                                  	call   0x23a8d344c258
    23a8d356da0b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356da0e:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356da12:	41 bf 02 00 00 00                               	mov    r15d,0x2
    23a8d356da18:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356da1c:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    23a8d356da23:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    23a8d356da2b:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356da33:	44 8b 9d 28 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1d8]
    23a8d356da3a:	41 83 c3 01                                     	add    r11d,0x1
    23a8d356da3e:	41 83 fb 04                                     	cmp    r11d,0x4
    23a8d356da42:	0f 85 78 f4 ff ff                               	jne    0x23a8d356cec0
    23a8d356da48:	4c 8b d8                                        	mov    r11,rax
    23a8d356da4b:	41 c7 44 3b 18 00 00 00 00                      	mov    DWORD PTR [r11+rdi*1+0x18],0x0
    23a8d356da54:	48 c7 85 28 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x1
    23a8d356da5f:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d356da65:	49 8b c3                                        	mov    rax,r11
    23a8d356da68:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d356da6c:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d356da71:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d356da76:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356da7a:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    23a8d356da82:	44 8b 9d f0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x210]
    23a8d356da89:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    23a8d356da90:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    23a8d356da97:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    23a8d356da9f:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    23a8d356daa7:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    23a8d356daaf:	e9 07 00 00 00                                  	jmp    0x23a8d356dabb
    23a8d356dab4:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356dab8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356dabb:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    23a8d356dac2:	4c 8b a5 c0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x240]
    23a8d356dac9:	4d 03 e0                                        	add    r12,r8
    23a8d356dacc:	49 8b df                                        	mov    rbx,r15
    23a8d356dacf:	4c 8b bd d8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x228]
    23a8d356dad6:	49 03 df                                        	add    rbx,r15
    23a8d356dad9:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d356dae0:	48 03 f1                                        	add    rsi,rcx
    23a8d356dae3:	41 83 c3 01                                     	add    r11d,0x1
    23a8d356dae7:	44 8b 8d d8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x128]
    23a8d356daee:	45 3b cb                                        	cmp    r9d,r11d
    23a8d356daf1:	0f 85 49 a9 ff ff                               	jne    0x23a8d3568440
    23a8d356daf7:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    23a8d356dafd:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    23a8d356db02:	c5 7b 10 b5 58 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0xa8]
    23a8d356db0a:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    23a8d356db0f:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    23a8d356db14:	4c 8b 9d 08 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f8]
    23a8d356db1b:	4c 8b a5 78 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x188]
    23a8d356db22:	4d 03 e3                                        	add    r12,r11
    23a8d356db25:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    23a8d356db2c:	48 8b b5 48 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1b8]
    23a8d356db33:	48 03 f3                                        	add    rsi,rbx
    23a8d356db36:	4c 8b 8d 18 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1e8]
    23a8d356db3d:	48 8b bd 50 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xb0]
    23a8d356db44:	49 03 f9                                        	add    rdi,r9
    23a8d356db47:	83 bd 00 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x200],0x0
    23a8d356db4e:	0f 85 52 00 00 00                               	jne    0x23a8d356dba6
    23a8d356db54:	e9 83 00 00 00                                  	jmp    0x23a8d356dbdc
    23a8d356db59:	4c 8b 85 08 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f8]
    23a8d356db60:	4d 8d 24 18                                     	lea    r12,[r8+rbx*1]
    23a8d356db64:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    23a8d356db6b:	49 03 c3                                        	add    rax,r11
    23a8d356db6e:	48 8b 9d 18 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1e8]
    23a8d356db75:	4c 03 fb                                        	add    r15,rbx
    23a8d356db78:	48 8b f0                                        	mov    rsi,rax
    23a8d356db7b:	4c 8b cb                                        	mov    r9,rbx
    23a8d356db7e:	49 8b db                                        	mov    rbx,r11
    23a8d356db81:	4d 8b d8                                        	mov    r11,r8
    23a8d356db84:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    23a8d356db8b:	49 8b ff                                        	mov    rdi,r15
    23a8d356db8e:	4c 8b bd d8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x228]
    23a8d356db95:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d356db9b:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356db9f:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d356dba6:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    23a8d356dbab:	c5 3a 5c 85 30 fe ff ff                         	vsubss xmm8,xmm8,DWORD PTR [rbp-0x1d0]
    23a8d356dbb3:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    23a8d356dbb8:	c5 22 5c 9d 38 fe ff ff                         	vsubss xmm11,xmm11,DWORD PTR [rbp-0x1c8]
    23a8d356dbc0:	c4 41 79 28 d5                                  	vmovapd xmm10,xmm13
    23a8d356dbc5:	c5 2a 5c 95 40 fe ff ff                         	vsubss xmm10,xmm10,DWORD PTR [rbp-0x1c0]
    23a8d356dbcd:	c4 41 79 28 f3                                  	vmovapd xmm14,xmm11
    23a8d356dbd2:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    23a8d356dbd7:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    23a8d356dbdc:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    23a8d356dbe3:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d356dbe6:	83 c2 01                                        	add    edx,0x1
    23a8d356dbe9:	44 8b 45 28                                     	mov    r8d,DWORD PTR [rbp+0x28]
    23a8d356dbed:	44 3b c2                                        	cmp    r8d,edx
    23a8d356dbf0:	0f 85 4a a1 ff ff                               	jne    0x23a8d3567d40
    23a8d356dbf6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356dbf9:	44 8b 44 38 18                                  	mov    r8d,DWORD PTR [rax+rdi*1+0x18]
    23a8d356dbfe:	83 7c 38 18 00                                  	cmp    DWORD PTR [rax+rdi*1+0x18],0x0
    23a8d356dc03:	0f 8e 03 17 00 00                               	jle    0x23a8d356f30c
    23a8d356dc09:	45 33 c0                                        	xor    r8d,r8d
    23a8d356dc0c:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    23a8d356dc10:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    23a8d356dc14:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d356dc18:	c5 f9 28 c3                                     	vmovapd xmm0,xmm3
    23a8d356dc1c:	e9 42 00 00 00                                  	jmp    0x23a8d356dc63
    23a8d356dc21:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356dc2a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356dc33:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356dc3c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    23a8d356dc40:	49 8b c0                                        	mov    rax,r8
    23a8d356dc43:	45 8b c4                                        	mov    r8d,r12d
    23a8d356dc46:	49 8b d3                                        	mov    rdx,r11
    23a8d356dc49:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d356dc4d:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d356dc52:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d356dc57:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d356dc5b:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    23a8d356dc63:	4c 8b bd f8 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x108]
    23a8d356dc6a:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    23a8d356dc71:	4c 8b a5 e8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x118]
    23a8d356dc78:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d356dc7e:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    23a8d356dc85:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    23a8d356dc89:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d356dc8e:	0f 85 9c 1a 00 00                               	jne    0x23a8d356f730
    23a8d356dc94:	46 8d 4c 87 2c                                  	lea    r9d,[rdi+r8*4+0x2c]
    23a8d356dc99:	43 8d 0c 83                                     	lea    ecx,[r11+r8*4]
    23a8d356dc9d:	46 8d 5c c7 70                                  	lea    r11d,[rdi+r8*8+0x70]
    23a8d356dca2:	4e 8b 1c 18                                     	mov    r11,QWORD PTR [rax+r11*1]
    23a8d356dca6:	4c 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r11
    23a8d356dcad:	46 8d 5c c7 50                                  	lea    r11d,[rdi+r8*8+0x50]
    23a8d356dcb2:	4e 8b 1c 18                                     	mov    r11,QWORD PTR [rax+r11*1]
    23a8d356dcb6:	c4 a1 7a 10 7c 20 1c                            	vmovss xmm7,DWORD PTR [rax+r12*1+0x1c]
    23a8d356dcbd:	c4 21 7a 10 44 38 1c                            	vmovss xmm8,DWORD PTR [rax+r15*1+0x1c]
    23a8d356dcc4:	c5 7a 10 4c 18 1c                               	vmovss xmm9,DWORD PTR [rax+rbx*1+0x1c]
    23a8d356dcca:	44 8b 84 10 c8 3c 00 00                         	mov    r8d,DWORD PTR [rax+rdx*1+0x3cc8]
    23a8d356dcd2:	83 bc 10 c8 3c 00 00 00                         	cmp    DWORD PTR [rax+rdx*1+0x3cc8],0x0
    23a8d356dcda:	0f 85 0e 00 00 00                               	jne    0x23a8d356dcee
    23a8d356dce0:	8b d1                                           	mov    edx,ecx
    23a8d356dce2:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    23a8d356dce9:	e9 55 00 00 00                                  	jmp    0x23a8d356dd43
    23a8d356dcee:	44 8b 04 08                                     	mov    r8d,DWORD PTR [rax+rcx*1]
    23a8d356dcf2:	41 8b d0                                        	mov    edx,r8d
    23a8d356dcf5:	c1 ea 03                                        	shr    edx,0x3
    23a8d356dcf8:	83 e2 03                                        	and    edx,0x3
    23a8d356dcfb:	42 8b 3c 08                                     	mov    edi,DWORD PTR [rax+r9*1]
    23a8d356dcff:	c1 e7 02                                        	shl    edi,0x2
    23a8d356dd02:	83 e7 7c                                        	and    edi,0x7c
    23a8d356dd05:	0b fa                                           	or     edi,edx
    23a8d356dd07:	03 fe                                           	add    edi,esi
    23a8d356dd09:	0f b6 3c 38                                     	movzx  edi,BYTE PTR [rax+rdi*1]
    23a8d356dd0d:	41 83 e0 07                                     	and    r8d,0x7
    23a8d356dd11:	8b d1                                           	mov    edx,ecx
    23a8d356dd13:	41 8b c8                                        	mov    ecx,r8d
    23a8d356dd16:	d3 e7                                           	shl    edi,cl
    23a8d356dd18:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    23a8d356dd1f:	40 f6 c7 80                                     	test   dil,0x80
    23a8d356dd23:	0f 85 1a 00 00 00                               	jne    0x23a8d356dd43
    23a8d356dd29:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356dd2c:	4c 8b c0                                        	mov    r8,rax
    23a8d356dd2f:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d356dd33:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356dd37:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d356dd3e:	e9 b5 15 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356dd43:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    23a8d356dd48:	c4 41 7a 59 d2                                  	vmulss xmm10,xmm0,xmm10
    23a8d356dd4d:	c4 41 2a 59 c9                                  	vmulss xmm9,xmm10,xmm9
    23a8d356dd52:	c4 61 82 2a 9d 58 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0xa8]
    23a8d356dd5b:	c4 41 7a 59 db                                  	vmulss xmm11,xmm0,xmm11
    23a8d356dd60:	c4 41 22 59 c0                                  	vmulss xmm8,xmm11,xmm8
    23a8d356dd65:	c4 41 32 58 e0                                  	vaddss xmm12,xmm9,xmm8
    23a8d356dd6a:	c4 41 52 5c d2                                  	vsubss xmm10,xmm5,xmm10
    23a8d356dd6f:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    23a8d356dd74:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    23a8d356dd78:	c5 1a 58 d7                                     	vaddss xmm10,xmm12,xmm7
    23a8d356dd7c:	c4 c1 78 2e f2                                  	vucomiss xmm6,xmm10
    23a8d356dd81:	73 a6                                           	jae    0x23a8d356dd29
    23a8d356dd83:	c4 41 52 5e d2                                  	vdivss xmm10,xmm5,xmm10
    23a8d356dd88:	c4 41 78 28 d2                                  	vmovaps xmm10,xmm10
    23a8d356dd8d:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    23a8d356dd92:	c4 21 7a 6f 64 20 20                            	vmovdqu xmm12,XMMWORD PTR [rax+r12*1+0x20]
    23a8d356dd99:	c4 62 79 18 ef                                  	vbroadcastss xmm13,xmm7
    23a8d356dd9e:	c4 41 18 59 e5                                  	vmulps xmm12,xmm12,xmm13
    23a8d356dda3:	c5 7a 6f 6c 18 20                               	vmovdqu xmm13,XMMWORD PTR [rax+rbx*1+0x20]
    23a8d356dda9:	c4 42 79 18 f1                                  	vbroadcastss xmm14,xmm9
    23a8d356ddae:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    23a8d356ddb3:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    23a8d356ddb8:	c4 a1 7a 6f 4c 38 20                            	vmovdqu xmm1,XMMWORD PTR [rax+r15*1+0x20]
    23a8d356ddbf:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    23a8d356ddc3:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    23a8d356ddc8:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    23a8d356ddcd:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    23a8d356ddd2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356ddd5:	c5 7a 7f 9c 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm11
    23a8d356ddde:	c4 21 7a 10 a4 20 98 00 00 00                   	vmovss xmm12,DWORD PTR [rax+r12*1+0x98]
    23a8d356dde8:	c5 7a 10 ac 18 98 00 00 00                      	vmovss xmm13,DWORD PTR [rax+rbx*1+0x98]
    23a8d356ddf1:	c4 21 7a 10 b4 38 98 00 00 00                   	vmovss xmm14,DWORD PTR [rax+r15*1+0x98]
    23a8d356ddfb:	c5 7a 7f 9c 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm11
    23a8d356de04:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    23a8d356de0b:	42 8b 8c 18 34 01 00 00                         	mov    ecx,DWORD PTR [rax+r11*1+0x134]
    23a8d356de13:	44 8d 61 ff                                     	lea    r12d,[rcx-0x1]
    23a8d356de17:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d356de1b:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    23a8d356de1f:	c5 7b 11 85 50 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb0],xmm8
    23a8d356de27:	c5 7b 11 8d 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm9
    23a8d356de2f:	c5 fb 11 bd 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm7
    23a8d356de37:	c5 7b 11 95 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm10
    23a8d356de3f:	c5 7b 11 a5 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm12
    23a8d356de47:	c5 7b 11 ad 40 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc0],xmm13
    23a8d356de4f:	c5 7b 11 b5 48 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb8],xmm14
    23a8d356de57:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d356de5b:	0f 86 15 07 00 00                               	jbe    0x23a8d356e576
    23a8d356de61:	46 8b a4 18 30 01 00 00                         	mov    r12d,DWORD PTR [rax+r11*1+0x130]
    23a8d356de69:	42 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [rax+r11*1+0x130],0x0
    23a8d356de72:	0f 85 08 00 00 00                               	jne    0x23a8d356de80
    23a8d356de78:	4c 8b c0                                        	mov    r8,rax
    23a8d356de7b:	e9 94 07 00 00                                  	jmp    0x23a8d356e614
    23a8d356de80:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    23a8d356de87:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    23a8d356de8e:	4c 89 a5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r12
    23a8d356de95:	33 c9                                           	xor    ecx,ecx
    23a8d356de97:	e9 40 00 00 00                                  	jmp    0x23a8d356dedc
    23a8d356de9c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356dea5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356deae:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356deb7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356dec0:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    23a8d356dec7:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356deca:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356dece:	4c 8b 9d 18 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe8]
    23a8d356ded5:	44 8b a5 20 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xe0]
    23a8d356dedc:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    23a8d356dee3:	8b 9d 98 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x168]
    23a8d356dee9:	44 8b bd 90 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x170]
    23a8d356def0:	48 89 8d 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rcx
    23a8d356def7:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d356defc:	0f 85 83 18 00 00                               	jne    0x23a8d356f785
    23a8d356df02:	8b d1                                           	mov    edx,ecx
    23a8d356df04:	c1 e2 04                                        	shl    edx,0x4
    23a8d356df07:	42 8d 34 22                                     	lea    esi,[rdx+r12*1]
    23a8d356df0b:	4c 8b 15 c0 b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb1c0]        # 0x23a8d35690d2
    23a8d356df12:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d356df17:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d356df1c:	c5 7a 7f 1c 30                                  	vmovdqu XMMWORD PTR [rax+rsi*1],xmm11
    23a8d356df21:	48 89 b5 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rsi
    23a8d356df28:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    23a8d356df2f:	c7 04 30 00 00 00 00                            	mov    DWORD PTR [rax+rsi*1],0x0
    23a8d356df36:	6b f9 4c                                        	imul   edi,ecx,0x4c
    23a8d356df39:	41 03 f9                                        	add    edi,r9d
    23a8d356df3c:	44 8b 24 38                                     	mov    r12d,DWORD PTR [rax+rdi*1]
    23a8d356df40:	83 3c 38 00                                     	cmp    DWORD PTR [rax+rdi*1],0x0
    23a8d356df44:	0f 8c bd 01 00 00                               	jl     0x23a8d356e107
    23a8d356df4a:	44 8b 64 38 04                                  	mov    r12d,DWORD PTR [rax+rdi*1+0x4]
    23a8d356df4f:	45 85 e4                                        	test   r12d,r12d
    23a8d356df52:	0f 84 af 01 00 00                               	je     0x23a8d356e107
    23a8d356df58:	c7 04 30 01 00 00 00                            	mov    DWORD PTR [rax+rsi*1],0x1
    23a8d356df5f:	42 8b b4 18 3c 01 00 00                         	mov    esi,DWORD PTR [rax+r11*1+0x13c]
    23a8d356df67:	d3 ee                                           	shr    esi,cl
    23a8d356df69:	40 f6 c6 01                                     	test   sil,0x1
    23a8d356df6d:	0f 84 94 01 00 00                               	je     0x23a8d356e107
    23a8d356df73:	8b 4c 38 38                                     	mov    ecx,DWORD PTR [rax+rdi*1+0x38]
    23a8d356df77:	83 7c 38 38 00                                  	cmp    DWORD PTR [rax+rdi*1+0x38],0x0
    23a8d356df7c:	0f 85 6f 01 00 00                               	jne    0x23a8d356e0f1
    23a8d356df82:	41 8d 0c 10                                     	lea    ecx,[r8+rdx*1]
    23a8d356df86:	c5 7a 10 5c 08 08                               	vmovss xmm11,DWORD PTR [rax+rcx*1+0x8]
    23a8d356df8c:	c5 22 59 9d 28 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xd8]
    23a8d356df94:	41 8d 34 17                                     	lea    esi,[r15+rdx*1]
    23a8d356df98:	c5 fa 10 4c 30 08                               	vmovss xmm1,DWORD PTR [rax+rsi*1+0x8]
    23a8d356df9e:	c5 f2 59 8d 38 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xc8]
    23a8d356dfa6:	03 d3                                           	add    edx,ebx
    23a8d356dfa8:	c5 fa 10 54 10 08                               	vmovss xmm2,DWORD PTR [rax+rdx*1+0x8]
    23a8d356dfae:	c5 ea 59 95 50 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xb0]
    23a8d356dfb6:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    23a8d356dfba:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d356dfbe:	c5 a2 59 9d 58 ff ff ff                         	vmulss xmm3,xmm11,DWORD PTR [rbp-0xa8]
    23a8d356dfc6:	c5 7a 10 5c 08 04                               	vmovss xmm11,DWORD PTR [rax+rcx*1+0x4]
    23a8d356dfcc:	c5 22 59 9d 28 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xd8]
    23a8d356dfd4:	c5 fa 10 4c 30 04                               	vmovss xmm1,DWORD PTR [rax+rsi*1+0x4]
    23a8d356dfda:	c5 f2 59 8d 38 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xc8]
    23a8d356dfe2:	c5 fa 10 54 10 04                               	vmovss xmm2,DWORD PTR [rax+rdx*1+0x4]
    23a8d356dfe8:	c5 ea 59 95 50 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xb0]
    23a8d356dff0:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    23a8d356dff4:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d356dff8:	c5 a2 59 95 58 ff ff ff                         	vmulss xmm2,xmm11,DWORD PTR [rbp-0xa8]
    23a8d356e000:	c5 7a 10 1c 08                                  	vmovss xmm11,DWORD PTR [rax+rcx*1]
    23a8d356e005:	c5 22 59 9d 28 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xd8]
    23a8d356e00d:	c5 fa 10 0c 30                                  	vmovss xmm1,DWORD PTR [rax+rsi*1]
    23a8d356e012:	c5 f2 59 8d 38 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xc8]
    23a8d356e01a:	c5 fa 10 24 10                                  	vmovss xmm4,DWORD PTR [rax+rdx*1]
    23a8d356e01f:	c5 da 59 a5 50 ff ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0xb0]
    23a8d356e027:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    23a8d356e02b:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d356e02f:	c5 a2 59 8d 58 ff ff ff                         	vmulss xmm1,xmm11,DWORD PTR [rbp-0xa8]
    23a8d356e037:	8b 4c 38 10                                     	mov    ecx,DWORD PTR [rax+rdi*1+0x10]
    23a8d356e03b:	8b 54 38 0c                                     	mov    edx,DWORD PTR [rax+rdi*1+0xc]
    23a8d356e03f:	8b 74 38 08                                     	mov    esi,DWORD PTR [rax+rdi*1+0x8]
    23a8d356e043:	8b 34 38                                        	mov    esi,DWORD PTR [rax+rdi*1]
    23a8d356e046:	83 fe 02                                        	cmp    esi,0x2
    23a8d356e049:	0f 8c 14 00 00 00                               	jl     0x23a8d356e063
    23a8d356e04f:	0f 84 43 00 00 00                               	je     0x23a8d356e098
    23a8d356e055:	83 fe 03                                        	cmp    esi,0x3
    23a8d356e058:	0f 84 1c 00 00 00                               	je     0x23a8d356e07a
    23a8d356e05e:	e9 59 00 00 00                                  	jmp    0x23a8d356e0bc
    23a8d356e063:	83 fe 00                                        	cmp    esi,0x0
    23a8d356e066:	0f 84 6e 00 00 00                               	je     0x23a8d356e0da
    23a8d356e06c:	83 fe 01                                        	cmp    esi,0x1
    23a8d356e06f:	0f 84 47 00 00 00                               	je     0x23a8d356e0bc
    23a8d356e075:	e9 42 00 00 00                                  	jmp    0x23a8d356e0bc
    23a8d356e07a:	8b 7c 38 14                                     	mov    edi,DWORD PTR [rax+rdi*1+0x14]
    23a8d356e07e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e082:	41 8b c4                                        	mov    eax,r12d
    23a8d356e085:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    23a8d356e08c:	8b df                                           	mov    ebx,edi
    23a8d356e08e:	e8 9d e1 ed ff                                  	call   0x23a8d344c230
    23a8d356e093:	e9 6f 00 00 00                                  	jmp    0x23a8d356e107
    23a8d356e098:	8b 74 38 14                                     	mov    esi,DWORD PTR [rax+rdi*1+0x14]
    23a8d356e09c:	8b 7c 38 18                                     	mov    edi,DWORD PTR [rax+rdi*1+0x18]
    23a8d356e0a0:	ff b5 08 ff ff ff                               	push   QWORD PTR [rbp-0xf8]
    23a8d356e0a6:	8b de                                           	mov    ebx,esi
    23a8d356e0a8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e0ac:	41 8b c4                                        	mov    eax,r12d
    23a8d356e0af:	44 8b cf                                        	mov    r9d,edi
    23a8d356e0b2:	e8 71 e1 ed ff                                  	call   0x23a8d344c228
    23a8d356e0b7:	e9 4b 00 00 00                                  	jmp    0x23a8d356e107
    23a8d356e0bc:	8b 7c 38 14                                     	mov    edi,DWORD PTR [rax+rdi*1+0x14]
    23a8d356e0c0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e0c4:	41 8b c4                                        	mov    eax,r12d
    23a8d356e0c7:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    23a8d356e0ce:	8b df                                           	mov    ebx,edi
    23a8d356e0d0:	e8 63 e1 ed ff                                  	call   0x23a8d344c238
    23a8d356e0d5:	e9 2d 00 00 00                                  	jmp    0x23a8d356e107
    23a8d356e0da:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e0de:	41 8b c4                                        	mov    eax,r12d
    23a8d356e0e1:	8b 9d 08 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xf8]
    23a8d356e0e7:	e8 34 e1 ed ff                                  	call   0x23a8d344c220
    23a8d356e0ec:	e9 16 00 00 00                                  	jmp    0x23a8d356e107
    23a8d356e0f1:	4c 8b e0                                        	mov    r12,rax
    23a8d356e0f4:	c4 c1 7a 6f 44 3c 3c                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x3c]
    23a8d356e0fb:	8b bd 08 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xf8]
    23a8d356e101:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    23a8d356e107:	8b 8d 10 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf0]
    23a8d356e10d:	83 c1 01                                        	add    ecx,0x1
    23a8d356e110:	83 f9 04                                        	cmp    ecx,0x4
    23a8d356e113:	0f 85 a7 fd ff ff                               	jne    0x23a8d356dec0
    23a8d356e119:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d356e11d:	4c 8b 85 18 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe8]
    23a8d356e124:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    23a8d356e12c:	45 85 c0                                        	test   r8d,r8d
    23a8d356e12f:	0f 85 c2 01 00 00                               	jne    0x23a8d356e2f7
    23a8d356e135:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    23a8d356e139:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    23a8d356e141:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    23a8d356e14a:	0f 84 53 00 00 00                               	je     0x23a8d356e1a3
    23a8d356e150:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d356e157:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d356e15e:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d356e165:	41 53                                           	push   r11
    23a8d356e167:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e16b:	8b 85 c0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x140]
    23a8d356e171:	33 d2                                           	xor    edx,edx
    23a8d356e173:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    23a8d356e17a:	e8 c1 e0 ed ff                                  	call   0x23a8d344c240
    23a8d356e17f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356e182:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356e186:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    23a8d356e190:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d356e19a:	4d 8b d0                                        	mov    r10,r8
    23a8d356e19d:	44 8b c7                                        	mov    r8d,edi
    23a8d356e1a0:	49 8b fa                                        	mov    rdi,r10
    23a8d356e1a3:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    23a8d356e1ab:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    23a8d356e1b4:	0f 84 56 00 00 00                               	je     0x23a8d356e210
    23a8d356e1ba:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d356e1c1:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d356e1c8:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d356e1cf:	41 53                                           	push   r11
    23a8d356e1d1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e1d5:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    23a8d356e1db:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d356e1e0:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    23a8d356e1e7:	e8 54 e0 ed ff                                  	call   0x23a8d344c240
    23a8d356e1ec:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356e1ef:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356e1f3:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    23a8d356e1fd:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d356e207:	4d 8b d0                                        	mov    r10,r8
    23a8d356e20a:	44 8b c7                                        	mov    r8d,edi
    23a8d356e20d:	49 8b fa                                        	mov    rdi,r10
    23a8d356e210:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    23a8d356e218:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    23a8d356e221:	0f 84 56 00 00 00                               	je     0x23a8d356e27d
    23a8d356e227:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d356e22e:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d356e235:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d356e23c:	41 53                                           	push   r11
    23a8d356e23e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e242:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    23a8d356e248:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d356e24d:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    23a8d356e254:	e8 e7 df ed ff                                  	call   0x23a8d344c240
    23a8d356e259:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356e25c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356e260:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    23a8d356e26a:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d356e274:	4d 8b d0                                        	mov    r10,r8
    23a8d356e277:	44 8b c7                                        	mov    r8d,edi
    23a8d356e27a:	49 8b fa                                        	mov    rdi,r10
    23a8d356e27d:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    23a8d356e285:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    23a8d356e28e:	0f 85 0e 00 00 00                               	jne    0x23a8d356e2a2
    23a8d356e294:	4c 8b d7                                        	mov    r10,rdi
    23a8d356e297:	41 8b f8                                        	mov    edi,r8d
    23a8d356e29a:	4d 8b c2                                        	mov    r8,r10
    23a8d356e29d:	e9 72 03 00 00                                  	jmp    0x23a8d356e614
    23a8d356e2a2:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    23a8d356e2a9:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    23a8d356e2b0:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    23a8d356e2b7:	41 53                                           	push   r11
    23a8d356e2b9:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d356e2be:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e2c2:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    23a8d356e2c8:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    23a8d356e2cf:	e8 6c df ed ff                                  	call   0x23a8d344c240
    23a8d356e2d4:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356e2d7:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    23a8d356e2db:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    23a8d356e2e5:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    23a8d356e2ef:	4d 8b c3                                        	mov    r8,r11
    23a8d356e2f2:	e9 1d 03 00 00                                  	jmp    0x23a8d356e614
    23a8d356e2f7:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d356e2fb:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    23a8d356e305:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d356e30b:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d356e310:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d356e314:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    23a8d356e31e:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d356e322:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d356e326:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    23a8d356e330:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    23a8d356e334:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    23a8d356e33e:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d356e342:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    23a8d356e346:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    23a8d356e350:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    23a8d356e354:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    23a8d356e35e:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    23a8d356e362:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    23a8d356e366:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    23a8d356e36a:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d356e36e:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d356e374:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    23a8d356e379:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    23a8d356e37d:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d356e381:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d356e386:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d356e38b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d356e38f:	0f 87 09 00 00 00                               	ja     0x23a8d356e39e
    23a8d356e395:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d356e399:	e9 04 00 00 00                                  	jmp    0x23a8d356e3a2
    23a8d356e39e:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    23a8d356e3a2:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356e3a6:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d356e3aa:	0f 87 09 00 00 00                               	ja     0x23a8d356e3b9
    23a8d356e3b0:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d356e3b4:	e9 04 00 00 00                                  	jmp    0x23a8d356e3bd
    23a8d356e3b9:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d356e3bd:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d356e3c2:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d356e3c6:	0f 84 a0 00 00 00                               	je     0x23a8d356e46c
    23a8d356e3cc:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    23a8d356e3d0:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    23a8d356e3da:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356e3de:	0f 87 09 00 00 00                               	ja     0x23a8d356e3ed
    23a8d356e3e4:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d356e3e8:	e9 04 00 00 00                                  	jmp    0x23a8d356e3f1
    23a8d356e3ed:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d356e3f1:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d356e3f5:	0f 87 0a 00 00 00                               	ja     0x23a8d356e405
    23a8d356e3fb:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d356e400:	e9 04 00 00 00                                  	jmp    0x23a8d356e409
    23a8d356e405:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d356e409:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d356e40d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d356e412:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d356e417:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d356e41b:	4c 8b 15 b0 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacb0]        # 0x23a8d35690d2
    23a8d356e422:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d356e427:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d356e42c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d356e430:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d356e43a:	41 83 f8 03                                     	cmp    r8d,0x3
    23a8d356e43e:	0f 85 04 00 00 00                               	jne    0x23a8d356e448
    23a8d356e444:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    23a8d356e448:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    23a8d356e44d:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d356e451:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d356e455:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    23a8d356e45f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d356e464:	4d 8b c4                                        	mov    r8,r12
    23a8d356e467:	e9 cd 00 00 00                                  	jmp    0x23a8d356e539
    23a8d356e46c:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    23a8d356e476:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356e47a:	0f 87 09 00 00 00                               	ja     0x23a8d356e489
    23a8d356e480:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d356e484:	e9 04 00 00 00                                  	jmp    0x23a8d356e48d
    23a8d356e489:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    23a8d356e48d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d356e491:	0f 87 0a 00 00 00                               	ja     0x23a8d356e4a1
    23a8d356e497:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d356e49c:	e9 04 00 00 00                                  	jmp    0x23a8d356e4a5
    23a8d356e4a1:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d356e4a5:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    23a8d356e4af:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    23a8d356e4b5:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    23a8d356e4ba:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356e4be:	0f 87 09 00 00 00                               	ja     0x23a8d356e4cd
    23a8d356e4c4:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d356e4c8:	e9 04 00 00 00                                  	jmp    0x23a8d356e4d1
    23a8d356e4cd:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    23a8d356e4d1:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d356e4d5:	0f 87 0a 00 00 00                               	ja     0x23a8d356e4e5
    23a8d356e4db:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d356e4e0:	e9 04 00 00 00                                  	jmp    0x23a8d356e4e9
    23a8d356e4e5:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d356e4e9:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    23a8d356e4f3:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d356e4f8:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356e4fc:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    23a8d356e506:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    23a8d356e50b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d356e510:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d356e514:	4c 8b 15 b7 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffabb7]        # 0x23a8d35690d2
    23a8d356e51b:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d356e520:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d356e525:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d356e529:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d356e52d:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    23a8d356e531:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d356e535:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    23a8d356e539:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    23a8d356e53e:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    23a8d356e542:	4c 8b 15 89 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffab89]        # 0x23a8d35690d2
    23a8d356e549:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d356e54e:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d356e553:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    23a8d356e557:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    23a8d356e561:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    23a8d356e56b:	4c 8b c7                                        	mov    r8,rdi
    23a8d356e56e:	41 8b fb                                        	mov    edi,r11d
    23a8d356e571:	e9 9e 00 00 00                                  	jmp    0x23a8d356e614
    23a8d356e576:	4c 8b 9d e8 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x118]
    23a8d356e57d:	c4 21 7a 10 5c 18 50                            	vmovss xmm11,DWORD PTR [rax+r11*1+0x50]
    23a8d356e584:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    23a8d356e588:	4c 8b e3                                        	mov    r12,rbx
    23a8d356e58b:	c4 a1 7a 10 4c 20 50                            	vmovss xmm1,DWORD PTR [rax+r12*1+0x50]
    23a8d356e592:	c4 c1 72 59 c9                                  	vmulss xmm1,xmm1,xmm9
    23a8d356e597:	c4 a1 3a 59 54 38 50                            	vmulss xmm2,xmm8,DWORD PTR [rax+r15*1+0x50]
    23a8d356e59e:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    23a8d356e5a2:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    23a8d356e5a6:	c4 c1 2a 59 cb                                  	vmulss xmm1,xmm10,xmm11
    23a8d356e5ab:	c4 21 7a 10 5c 18 54                            	vmovss xmm11,DWORD PTR [rax+r11*1+0x54]
    23a8d356e5b2:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    23a8d356e5b6:	c4 a1 7a 10 54 20 54                            	vmovss xmm2,DWORD PTR [rax+r12*1+0x54]
    23a8d356e5bd:	c4 c1 6a 59 d1                                  	vmulss xmm2,xmm2,xmm9
    23a8d356e5c2:	c4 a1 3a 59 5c 38 54                            	vmulss xmm3,xmm8,DWORD PTR [rax+r15*1+0x54]
    23a8d356e5c9:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    23a8d356e5cd:	c5 22 58 da                                     	vaddss xmm11,xmm11,xmm2
    23a8d356e5d1:	c4 c1 2a 59 d3                                  	vmulss xmm2,xmm10,xmm11
    23a8d356e5d6:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    23a8d356e5dc:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    23a8d356e5e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e5e7:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d356e5ed:	8b d1                                           	mov    edx,ecx
    23a8d356e5ef:	8b cb                                           	mov    ecx,ebx
    23a8d356e5f1:	41 8b d8                                        	mov    ebx,r8d
    23a8d356e5f4:	e8 37 df ed ff                                  	call   0x23a8d344c530
    23a8d356e5f9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356e5fc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356e600:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    23a8d356e60a:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    23a8d356e614:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356e618:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    23a8d356e620:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    23a8d356e629:	0f 84 c4 01 00 00                               	je     0x23a8d356e7f3
    23a8d356e62f:	c5 fb 10 85 30 ff ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0xd0]
    23a8d356e637:	c5 fa 59 85 28 ff ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0xd8]
    23a8d356e63f:	c5 fb 10 ad 40 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xc0]
    23a8d356e647:	c5 d2 59 ad 38 ff ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0xc8]
    23a8d356e64f:	c5 fb 10 b5 50 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xb0]
    23a8d356e657:	c5 ca 59 b5 48 ff ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0xb8]
    23a8d356e65f:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d356e663:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    23a8d356e667:	c5 fb 10 ad 58 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa8]
    23a8d356e66f:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    23a8d356e673:	4c 8b 15 8f 92 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff928f]        # 0x23a8d3567909
    23a8d356e67a:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d356e67f:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d356e683:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    23a8d356e687:	0f 87 04 00 00 00                               	ja     0x23a8d356e691
    23a8d356e68d:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    23a8d356e691:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    23a8d356e699:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    23a8d356e6a0:	0f 85 28 00 00 00                               	jne    0x23a8d356e6ce
    23a8d356e6a6:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    23a8d356e6b0:	4c 8b 15 52 92 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9252]        # 0x23a8d3567909
    23a8d356e6b7:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d356e6bc:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    23a8d356e6c0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e6c4:	e8 ef fe ed ff                                  	call   0x23a8d344e5b8
    23a8d356e6c9:	e9 89 00 00 00                                  	jmp    0x23a8d356e757
    23a8d356e6ce:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d356e6d2:	0f 84 5c 00 00 00                               	je     0x23a8d356e734
    23a8d356e6d8:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    23a8d356e6e2:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    23a8d356e6ec:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    23a8d356e6f0:	7a 06                                           	jp     0x23a8d356e6f8
    23a8d356e6f2:	0f 84 29 00 00 00                               	je     0x23a8d356e721
    23a8d356e6f8:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    23a8d356e6fc:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    23a8d356e700:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d356e704:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    23a8d356e708:	0f 86 49 00 00 00                               	jbe    0x23a8d356e757
    23a8d356e70e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d356e712:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d356e717:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d356e71c:	e9 5b 00 00 00                                  	jmp    0x23a8d356e77c
    23a8d356e721:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d356e725:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d356e72a:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d356e72f:	e9 44 00 00 00                                  	jmp    0x23a8d356e778
    23a8d356e734:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    23a8d356e73e:	4c 8b 15 c4 91 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff91c4]        # 0x23a8d3567909
    23a8d356e745:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    23a8d356e74a:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    23a8d356e74e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356e752:	e8 61 fe ed ff                                  	call   0x23a8d344e5b8
    23a8d356e757:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d356e75b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d356e760:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d356e765:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d356e769:	0f 87 09 00 00 00                               	ja     0x23a8d356e778
    23a8d356e76f:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    23a8d356e773:	e9 04 00 00 00                                  	jmp    0x23a8d356e77c
    23a8d356e778:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d356e77c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356e77f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356e783:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    23a8d356e78d:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    23a8d356e791:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356e795:	c4 01 42 59 84 18 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x100]
    23a8d356e79f:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d356e7a4:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d356e7ae:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    23a8d356e7b8:	c4 01 42 59 84 18 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x104]
    23a8d356e7c2:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    23a8d356e7c7:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    23a8d356e7d1:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    23a8d356e7db:	c4 81 42 59 b4 18 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+r11*1+0x108]
    23a8d356e7e5:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    23a8d356e7e9:	c4 c1 7a 11 ac 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm5
    23a8d356e7f3:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    23a8d356e7fd:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    23a8d356e807:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d356e80b:	41 c1 e4 04                                     	shl    r12d,0x4
    23a8d356e80f:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d356e816:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    23a8d356e81a:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d356e81e:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    23a8d356e823:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    23a8d356e827:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    23a8d356e82a:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    23a8d356e82e:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d356e831:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    23a8d356e835:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d356e83c:	0f 85 8b 0a 00 00                               	jne    0x23a8d356f2cd
    23a8d356e842:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    23a8d356e847:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    23a8d356e84d:	0f 85 4a 0a 00 00                               	jne    0x23a8d356f29d
    23a8d356e853:	4c 8b 15 78 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa878]        # 0x23a8d35690d2
    23a8d356e85a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d356e85f:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d356e863:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d356e867:	c4 c1 7a 6f b4 38 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x280]
    23a8d356e871:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    23a8d356e875:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    23a8d356e87a:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    23a8d356e87e:	4c 8b 15 4d a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa84d]        # 0x23a8d35690d2
    23a8d356e885:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d356e88a:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d356e88e:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    23a8d356e893:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    23a8d356e897:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d356e89b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356e8a0:	4c 8b 15 98 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffac98]        # 0x23a8d356953f
    23a8d356e8a7:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356e8ac:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d356e8b0:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d356e8b4:	4c 8b 15 9b ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffac9b]        # 0x23a8d3569556
    23a8d356e8bb:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d356e8c0:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d356e8c4:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d356e8c8:	4c 8b 15 9e ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffac9e]        # 0x23a8d356956d
    23a8d356e8cf:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d356e8d4:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    23a8d356e8d9:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d356e8df:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    23a8d356e8e3:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    23a8d356e8e8:	4c 8b 15 a1 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaca1]        # 0x23a8d3569590
    23a8d356e8ef:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d356e8f4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d356e8f8:	4c 8b 15 16 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8216]        # 0x23a8d3566b15
    23a8d356e8ff:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d356e904:	4c 8b 15 a4 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaca4]        # 0x23a8d35695af
    23a8d356e90b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d356e910:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d356e915:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    23a8d356e91b:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    23a8d356e91f:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    23a8d356e923:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356e928:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    23a8d356e92d:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    23a8d356e931:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d356e936:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    23a8d356e93a:	0f af c8                                        	imul   ecx,eax
    23a8d356e93d:	03 ca                                           	add    ecx,edx
    23a8d356e93f:	8d 34 09                                        	lea    esi,[rcx+rcx*1]
    23a8d356e942:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d356e946:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    23a8d356e94b:	8d 14 ca                                        	lea    edx,[rdx+rcx*8]
    23a8d356e94e:	83 fb 03                                        	cmp    ebx,0x3
    23a8d356e951:	0f 84 7c 00 00 00                               	je     0x23a8d356e9d3
    23a8d356e957:	8b cb                                           	mov    ecx,ebx
    23a8d356e959:	83 e1 01                                        	and    ecx,0x1
    23a8d356e95c:	f7 d9                                           	neg    ecx
    23a8d356e95e:	c4 e3 51 22 e9 00                               	vpinsrd xmm5,xmm5,ecx,0x0
    23a8d356e964:	8b cb                                           	mov    ecx,ebx
    23a8d356e966:	c1 e1 1e                                        	shl    ecx,0x1e
    23a8d356e969:	c1 f9 1f                                        	sar    ecx,0x1f
    23a8d356e96c:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    23a8d356e972:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    23a8d356e977:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    23a8d356e97d:	0f 84 38 00 00 00                               	je     0x23a8d356e9bb
    23a8d356e983:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    23a8d356e988:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d356e98e:	0f 84 27 00 00 00                               	je     0x23a8d356e9bb
    23a8d356e994:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    23a8d356e999:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    23a8d356e99c:	c4 81 7b 10 34 08                               	vmovsd xmm6,QWORD PTR [r8+r9*1]
    23a8d356e9a2:	c4 c1 7b 10 3c 08                               	vmovsd xmm7,QWORD PTR [r8+rcx*1]
    23a8d356e9a8:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    23a8d356e9ac:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    23a8d356e9b0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d356e9b5:	c4 c1 78 13 34 08                               	vmovlps QWORD PTR [r8+rcx*1],xmm6
    23a8d356e9bb:	c4 c1 7b 10 34 10                               	vmovsd xmm6,QWORD PTR [r8+rdx*1]
    23a8d356e9c1:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    23a8d356e9c5:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    23a8d356e9c9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356e9ce:	e9 32 00 00 00                                  	jmp    0x23a8d356ea05
    23a8d356e9d3:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    23a8d356e9d8:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    23a8d356e9de:	0f 84 21 00 00 00                               	je     0x23a8d356ea05
    23a8d356e9e4:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    23a8d356e9e9:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d356e9ef:	0f 84 10 00 00 00                               	je     0x23a8d356ea05
    23a8d356e9f5:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    23a8d356e9fa:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    23a8d356e9fd:	4b 8b 34 08                                     	mov    rsi,QWORD PTR [r8+r9*1]
    23a8d356ea01:	49 89 34 08                                     	mov    QWORD PTR [r8+rcx*1],rsi
    23a8d356ea05:	c4 c1 78 13 04 10                               	vmovlps QWORD PTR [r8+rdx*1],xmm0
    23a8d356ea0b:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    23a8d356ea10:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    23a8d356ea16:	0f 84 dc 08 00 00                               	je     0x23a8d356f2f8
    23a8d356ea1c:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    23a8d356ea21:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d356ea27:	0f 84 cb 08 00 00                               	je     0x23a8d356f2f8
    23a8d356ea2d:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    23a8d356ea32:	43 83 7c 18 14 02                               	cmp    DWORD PTR [r8+r11*1+0x14],0x2
    23a8d356ea38:	0f 85 ba 08 00 00                               	jne    0x23a8d356f2f8
    23a8d356ea3e:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    23a8d356ea43:	85 d2                                           	test   edx,edx
    23a8d356ea45:	0f 84 ad 08 00 00                               	je     0x23a8d356f2f8
    23a8d356ea4b:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    23a8d356ea4e:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    23a8d356ea52:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    23a8d356ea57:	0f 84 9b 08 00 00                               	je     0x23a8d356f2f8
    23a8d356ea5d:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    23a8d356ea60:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    23a8d356ea64:	83 ea 3c                                        	sub    edx,0x3c
    23a8d356ea67:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    23a8d356ea6b:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    23a8d356ea6e:	c1 ee 02                                        	shr    esi,0x2
    23a8d356ea71:	0f af f2                                        	imul   esi,edx
    23a8d356ea74:	c1 e6 04                                        	shl    esi,0x4
    23a8d356ea77:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    23a8d356ea7a:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    23a8d356ea81:	8b f1                                           	mov    esi,ecx
    23a8d356ea83:	83 e6 f0                                        	and    esi,0xfffffff0
    23a8d356ea86:	03 d6                                           	add    edx,esi
    23a8d356ea88:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    23a8d356ea8d:	81 ee 01 02 00 00                               	sub    esi,0x201
    23a8d356ea93:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    23a8d356ea97:	33 c0                                           	xor    eax,eax
    23a8d356ea99:	85 f6                                           	test   esi,esi
    23a8d356ea9b:	0f 94 c0                                        	sete   al
    23a8d356ea9e:	83 fe 02                                        	cmp    esi,0x2
    23a8d356eaa1:	40 0f 94 c6                                     	sete   sil
    23a8d356eaa5:	40 0f b6 f6                                     	movzx  esi,sil
    23a8d356eaa9:	0b f0                                           	or     esi,eax
    23a8d356eaab:	0f 85 0d 00 00 00                               	jne    0x23a8d356eabe
    23a8d356eab1:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    23a8d356eab9:	e9 3a 08 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356eabe:	83 e3 03                                        	and    ebx,0x3
    23a8d356eac1:	83 e1 0c                                        	and    ecx,0xc
    23a8d356eac4:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    23a8d356eac7:	83 e0 03                                        	and    eax,0x3
    23a8d356eaca:	0b c1                                           	or     eax,ecx
    23a8d356eacc:	d1 e0                                           	shl    eax,1
    23a8d356eace:	83 e0 3f                                        	and    eax,0x3f
    23a8d356ead1:	8b c8                                           	mov    ecx,eax
    23a8d356ead3:	48 d3 e3                                        	shl    rbx,cl
    23a8d356ead6:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    23a8d356eada:	b9 ff ff ff ff                                  	mov    ecx,0xffffffff
    23a8d356eadf:	48 3b c1                                        	cmp    rax,rcx
    23a8d356eae2:	0f 84 ba 03 00 00                               	je     0x23a8d356eea2
    23a8d356eae8:	48 0b c3                                        	or     rax,rbx
    23a8d356eaeb:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    23a8d356eaef:	48 3b c8                                        	cmp    rcx,rax
    23a8d356eaf2:	0f 85 00 08 00 00                               	jne    0x23a8d356f2f8
    23a8d356eaf8:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    23a8d356eafd:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    23a8d356eb00:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    23a8d356eb06:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    23a8d356eb0a:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    23a8d356eb0d:	83 ce 03                                        	or     esi,0x3
    23a8d356eb10:	0f af f1                                        	imul   esi,ecx
    23a8d356eb13:	03 f3                                           	add    esi,ebx
    23a8d356eb15:	8d 34 f0                                        	lea    esi,[rax+rsi*8]
    23a8d356eb18:	c4 c1 7a 6f 44 30 10                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x10]
    23a8d356eb1f:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d356eb24:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    23a8d356eb2a:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d356eb2f:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d356eb33:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    23a8d356eb36:	81 e6 fc ff ff 1f                               	and    esi,0x1ffffffc
    23a8d356eb3c:	44 8b ce                                        	mov    r9d,esi
    23a8d356eb3f:	41 83 c9 02                                     	or     r9d,0x2
    23a8d356eb43:	44 0f af c9                                     	imul   r9d,ecx
    23a8d356eb47:	44 03 cb                                        	add    r9d,ebx
    23a8d356eb4a:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    23a8d356eb4e:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    23a8d356eb55:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d356eb5a:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d356eb5f:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    23a8d356eb65:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d356eb6b:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d356eb70:	44 8b ce                                        	mov    r9d,esi
    23a8d356eb73:	41 83 c9 01                                     	or     r9d,0x1
    23a8d356eb77:	44 0f af c9                                     	imul   r9d,ecx
    23a8d356eb7b:	44 03 cb                                        	add    r9d,ebx
    23a8d356eb7e:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    23a8d356eb82:	c4 01 7a 6f 4c 08 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x10]
    23a8d356eb89:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d356eb8f:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d356eb94:	c4 01 7a 6f 14 08                               	vmovdqu xmm10,XMMWORD PTR [r8+r9*1]
    23a8d356eb9a:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d356eba0:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d356eba5:	0f af ce                                        	imul   ecx,esi
    23a8d356eba8:	03 d9                                           	add    ebx,ecx
    23a8d356ebaa:	8d 04 d8                                        	lea    eax,[rax+rbx*8]
    23a8d356ebad:	c4 41 7a 6f 5c 00 10                            	vmovdqu xmm11,XMMWORD PTR [r8+rax*1+0x10]
    23a8d356ebb4:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356ebba:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d356ebbf:	c4 41 7a 6f 24 00                               	vmovdqu xmm12,XMMWORD PTR [r8+rax*1]
    23a8d356ebc5:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356ebcb:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d356ebd0:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d356ebd5:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d356ebda:	c5 f8 50 c5                                     	vmovmskps eax,xmm5
    23a8d356ebde:	83 f8 0f                                        	cmp    eax,0xf
    23a8d356ebe1:	0f 84 0e 00 00 00                               	je     0x23a8d356ebf5
    23a8d356ebe7:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    23a8d356ebf0:	e9 03 07 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356ebf5:	4c 8b 15 bd ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacbd]        # 0x23a8d35698b9
    23a8d356ebfc:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356ec01:	4c 8b 15 c0 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc0]        # 0x23a8d35698c8
    23a8d356ec08:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d356ec0e:	4c 8b 15 c3 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc3]        # 0x23a8d35698d8
    23a8d356ec15:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356ec1a:	4c 8b 15 c6 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc6]        # 0x23a8d35698e7
    23a8d356ec21:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d356ec27:	4c 8b 15 c9 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc9]        # 0x23a8d35698f7
    23a8d356ec2e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d356ec33:	4c 8b 15 cc ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaccc]        # 0x23a8d3569906
    23a8d356ec3a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d356ec40:	4c 8b 15 cf ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaccf]        # 0x23a8d3569916
    23a8d356ec47:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d356ec4c:	4c 8b 15 d2 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd2]        # 0x23a8d3569925
    23a8d356ec53:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d356ec59:	4c 8b 15 d5 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd5]        # 0x23a8d3569935
    23a8d356ec60:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d356ec65:	4c 8b 15 d8 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd8]        # 0x23a8d3569944
    23a8d356ec6c:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d356ec72:	4c 8b 15 db ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacdb]        # 0x23a8d3569954
    23a8d356ec79:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356ec7e:	4c 8b 15 de ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacde]        # 0x23a8d3569963
    23a8d356ec85:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d356ec8b:	4c 8b 15 e1 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface1]        # 0x23a8d3569973
    23a8d356ec92:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d356ec97:	4c 8b 15 e4 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface4]        # 0x23a8d3569982
    23a8d356ec9e:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d356eca4:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d356eca9:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d356ecad:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d356ecb2:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d356ecb7:	4c 8b 15 e7 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface7]        # 0x23a8d35699a5
    23a8d356ecbe:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d356ecc4:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d356ecc9:	4c 8b 15 ea ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacea]        # 0x23a8d35699ba
    23a8d356ecd0:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d356ecd5:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d356ecd9:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d356ecde:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d356ece4:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d356ece9:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d356eced:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d356ecf1:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d356ecf5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356ecfa:	4c 8b 15 b9 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacb9]        # 0x23a8d35699ba
    23a8d356ed01:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356ed06:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d356ed0b:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d356ed10:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d356ed14:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356ed19:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d356ed1f:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d356ed23:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d356ed28:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356ed2d:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d356ed31:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d356ed36:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356ed3b:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d356ed41:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d356ed45:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d356ed4a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356ed4f:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d356ed53:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d356ed58:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356ed5d:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d356ed63:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d356ed67:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d356ed6c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356ed71:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d356ed75:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d356ed7a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356ed7f:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d356ed85:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356ed89:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d356ed8e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356ed93:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d356ed97:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d356ed9c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356eda1:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d356eda6:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d356edaa:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d356edaf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356edb4:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d356edb8:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d356edbd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356edc2:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d356edc7:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d356edcc:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356edd0:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d356edd4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356edd9:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356eddd:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356ede1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356ede6:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d356edeb:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d356edf0:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d356edf5:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356edf9:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d356edfd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356ee02:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d356ee0c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356ee10:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356ee14:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356ee19:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    23a8d356ee23:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d356ee27:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d356ee2b:	33 c0                                           	xor    eax,eax
    23a8d356ee2d:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d356ee31:	0f 97 c0                                        	seta   al
    23a8d356ee34:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    23a8d356ee3a:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    23a8d356ee41:	0b cb                                           	or     ecx,ebx
    23a8d356ee43:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    23a8d356ee49:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d356ee4e:	be 02 00 00 00                                  	mov    esi,0x2
    23a8d356ee53:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356ee57:	0f 47 c6                                        	cmova  eax,esi
    23a8d356ee5a:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    23a8d356ee61:	0b cb                                           	or     ecx,ebx
    23a8d356ee63:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    23a8d356ee69:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d356ee6e:	b9 03 00 00 00                                  	mov    ecx,0x3
    23a8d356ee73:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d356ee77:	0f 47 c1                                        	cmova  eax,ecx
    23a8d356ee7a:	c1 e0 02                                        	shl    eax,0x2
    23a8d356ee7d:	0b d8                                           	or     ebx,eax
    23a8d356ee7f:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    23a8d356ee85:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    23a8d356ee8c:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    23a8d356ee92:	0b c3                                           	or     eax,ebx
    23a8d356ee94:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    23a8d356ee98:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    23a8d356ee9d:	e9 56 04 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356eea2:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    23a8d356eea7:	8b c8                                           	mov    ecx,eax
    23a8d356eea9:	83 e1 3f                                        	and    ecx,0x3f
    23a8d356eeac:	48 d3 eb                                        	shr    rbx,cl
    23a8d356eeaf:	be 03 00 00 00                                  	mov    esi,0x3
    23a8d356eeb4:	f6 c3 01                                        	test   bl,0x1
    23a8d356eeb7:	0f 84 3b 04 00 00                               	je     0x23a8d356f2f8
    23a8d356eebd:	83 e0 01                                        	and    eax,0x1
    23a8d356eec0:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    23a8d356eec4:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    23a8d356eeca:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    23a8d356eed1:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    23a8d356eed5:	0f 86 1d 04 00 00                               	jbe    0x23a8d356f2f8
    23a8d356eedb:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    23a8d356eee0:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    23a8d356eee3:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    23a8d356eee9:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    23a8d356eeed:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    23a8d356eef1:	41 83 c9 03                                     	or     r9d,0x3
    23a8d356eef5:	44 0f af c9                                     	imul   r9d,ecx
    23a8d356eef9:	44 03 cb                                        	add    r9d,ebx
    23a8d356eefc:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    23a8d356ef00:	c4 81 7a 6f 44 08 10                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x10]
    23a8d356ef07:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    23a8d356ef0c:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    23a8d356ef12:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    23a8d356ef17:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    23a8d356ef1b:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    23a8d356ef1f:	41 81 e1 fc ff ff 1f                            	and    r9d,0x1ffffffc
    23a8d356ef26:	45 8b d9                                        	mov    r11d,r9d
    23a8d356ef29:	41 83 cb 02                                     	or     r11d,0x2
    23a8d356ef2d:	44 0f af d9                                     	imul   r11d,ecx
    23a8d356ef31:	44 03 db                                        	add    r11d,ebx
    23a8d356ef34:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    23a8d356ef38:	c4 81 7a 6f 7c 18 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x10]
    23a8d356ef3f:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    23a8d356ef44:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    23a8d356ef49:	c4 01 7a 6f 04 18                               	vmovdqu xmm8,XMMWORD PTR [r8+r11*1]
    23a8d356ef4f:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    23a8d356ef55:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    23a8d356ef5a:	45 8b d9                                        	mov    r11d,r9d
    23a8d356ef5d:	41 83 cb 01                                     	or     r11d,0x1
    23a8d356ef61:	44 0f af d9                                     	imul   r11d,ecx
    23a8d356ef65:	44 03 db                                        	add    r11d,ebx
    23a8d356ef68:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    23a8d356ef6c:	c4 01 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x10]
    23a8d356ef73:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    23a8d356ef79:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    23a8d356ef7e:	c4 01 7a 6f 14 18                               	vmovdqu xmm10,XMMWORD PTR [r8+r11*1]
    23a8d356ef84:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    23a8d356ef8a:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    23a8d356ef8f:	41 0f af c9                                     	imul   ecx,r9d
    23a8d356ef93:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    23a8d356ef97:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    23a8d356ef9b:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    23a8d356efa2:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    23a8d356efa8:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    23a8d356efad:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    23a8d356efb3:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    23a8d356efb9:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    23a8d356efbe:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    23a8d356efc3:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    23a8d356efc8:	c5 78 50 dd                                     	vmovmskps r11d,xmm5
    23a8d356efcc:	41 83 fb 0f                                     	cmp    r11d,0xf
    23a8d356efd0:	0f 84 12 00 00 00                               	je     0x23a8d356efe8
    23a8d356efd6:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    23a8d356efdf:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356efe3:	e9 10 03 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356efe8:	4c 8b 15 ca a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ca]        # 0x23a8d35698b9
    23a8d356efef:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d356eff4:	4c 8b 15 cd a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8cd]        # 0x23a8d35698c8
    23a8d356effb:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d356f001:	4c 8b 15 d0 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d0]        # 0x23a8d35698d8
    23a8d356f008:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356f00d:	4c 8b 15 d3 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d3]        # 0x23a8d35698e7
    23a8d356f014:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    23a8d356f01a:	4c 8b 15 d6 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d6]        # 0x23a8d35698f7
    23a8d356f021:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d356f026:	4c 8b 15 d9 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d9]        # 0x23a8d3569906
    23a8d356f02d:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d356f033:	4c 8b 15 dc a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8dc]        # 0x23a8d3569916
    23a8d356f03a:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d356f03f:	4c 8b 15 df a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8df]        # 0x23a8d3569925
    23a8d356f046:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    23a8d356f04c:	4c 8b 15 e2 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e2]        # 0x23a8d3569935
    23a8d356f053:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d356f058:	4c 8b 15 e5 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e5]        # 0x23a8d3569944
    23a8d356f05f:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    23a8d356f065:	4c 8b 15 e8 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e8]        # 0x23a8d3569954
    23a8d356f06c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d356f071:	4c 8b 15 eb a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8eb]        # 0x23a8d3569963
    23a8d356f078:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d356f07e:	4c 8b 15 ee a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ee]        # 0x23a8d3569973
    23a8d356f085:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d356f08a:	4c 8b 15 f1 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f1]        # 0x23a8d3569982
    23a8d356f091:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    23a8d356f097:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    23a8d356f09c:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d356f0a0:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    23a8d356f0a5:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    23a8d356f0aa:	4c 8b 15 f4 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f4]        # 0x23a8d35699a5
    23a8d356f0b1:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d356f0b7:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    23a8d356f0bc:	4c 8b 15 f7 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f7]        # 0x23a8d35699ba
    23a8d356f0c3:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d356f0c8:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d356f0cc:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    23a8d356f0d1:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    23a8d356f0d7:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    23a8d356f0dc:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    23a8d356f0e0:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d356f0e4:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    23a8d356f0e8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f0ed:	4c 8b 15 c6 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8c6]        # 0x23a8d35699ba
    23a8d356f0f4:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    23a8d356f0f9:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    23a8d356f0fe:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    23a8d356f103:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d356f107:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f10c:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    23a8d356f112:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    23a8d356f116:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    23a8d356f11b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f120:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    23a8d356f124:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    23a8d356f129:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f12e:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    23a8d356f134:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    23a8d356f138:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    23a8d356f13d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f142:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    23a8d356f146:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    23a8d356f14b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f150:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    23a8d356f156:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    23a8d356f15a:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    23a8d356f15f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f164:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    23a8d356f168:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    23a8d356f16d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f172:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    23a8d356f178:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    23a8d356f17c:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    23a8d356f181:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f186:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    23a8d356f18a:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    23a8d356f18f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f194:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    23a8d356f199:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    23a8d356f19d:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    23a8d356f1a2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f1a7:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d356f1ab:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    23a8d356f1b0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f1b5:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d356f1ba:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    23a8d356f1bf:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356f1c3:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d356f1c7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f1cc:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356f1d0:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356f1d4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f1d9:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    23a8d356f1de:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    23a8d356f1e3:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    23a8d356f1e8:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    23a8d356f1ec:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    23a8d356f1f0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d356f1f5:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    23a8d356f1ff:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d356f203:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    23a8d356f207:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d356f20c:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    23a8d356f216:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    23a8d356f21a:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    23a8d356f21e:	45 33 db                                        	xor    r11d,r11d
    23a8d356f221:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    23a8d356f225:	41 0f 97 c3                                     	seta   r11b
    23a8d356f229:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    23a8d356f22f:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    23a8d356f237:	0b d8                                           	or     ebx,eax
    23a8d356f239:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    23a8d356f23f:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    23a8d356f244:	b9 02 00 00 00                                  	mov    ecx,0x2
    23a8d356f249:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    23a8d356f24d:	44 0f 47 d9                                     	cmova  r11d,ecx
    23a8d356f251:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    23a8d356f259:	0b d8                                           	or     ebx,eax
    23a8d356f25b:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    23a8d356f261:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d356f266:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    23a8d356f26a:	44 0f 47 de                                     	cmova  r11d,esi
    23a8d356f26e:	41 c1 e3 02                                     	shl    r11d,0x2
    23a8d356f272:	41 0b c3                                        	or     eax,r11d
    23a8d356f275:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    23a8d356f27b:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    23a8d356f282:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    23a8d356f288:	44 0b d8                                        	or     r11d,eax
    23a8d356f28b:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    23a8d356f28f:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    23a8d356f294:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356f298:	e9 5b 00 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356f29d:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    23a8d356f2a3:	51                                              	push   rcx
    23a8d356f2a4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356f2a8:	8b c8                                           	mov    ecx,eax
    23a8d356f2aa:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d356f2ad:	e8 b6 cf ed ff                                  	call   0x23a8d344c268
    23a8d356f2b2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f2b5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356f2b9:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d356f2bd:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356f2c1:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d356f2c8:	e9 2b 00 00 00                                  	jmp    0x23a8d356f2f8
    23a8d356f2cd:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    23a8d356f2d3:	51                                              	push   rcx
    23a8d356f2d4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356f2d8:	8b c8                                           	mov    ecx,eax
    23a8d356f2da:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d356f2dd:	e8 76 cf ed ff                                  	call   0x23a8d344c258
    23a8d356f2e2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f2e5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356f2e9:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d356f2ed:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    23a8d356f2f1:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    23a8d356f2f8:	41 83 c4 01                                     	add    r12d,0x1
    23a8d356f2fc:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    23a8d356f301:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    23a8d356f306:	0f 8f 34 e9 ff ff                               	jg     0x23a8d356dc40
    23a8d356f30c:	44 8b 85 28 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1d8]
    23a8d356f313:	45 85 c0                                        	test   r8d,r8d
    23a8d356f316:	0f 85 07 00 00 00                               	jne    0x23a8d356f323
    23a8d356f31c:	8b f7                                           	mov    esi,edi
    23a8d356f31e:	e9 27 00 00 00                                  	jmp    0x23a8d356f34a
    23a8d356f323:	45 33 c0                                        	xor    r8d,r8d
    23a8d356f326:	83 bd 20 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e0],0x0
    23a8d356f32d:	41 0f 94 c0                                     	sete   r8b
    23a8d356f331:	43 8d 04 00                                     	lea    eax,[r8+r8*1]
    23a8d356f335:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    23a8d356f33b:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    23a8d356f33f:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    23a8d356f343:	48 8b e5                                        	mov    rsp,rbp
    23a8d356f346:	5d                                              	pop    rbp
    23a8d356f347:	c2 40 00                                        	ret    0x40
    23a8d356f34a:	44 8d 86 a0 02 00 00                            	lea    r8d,[rsi+0x2a0]
    23a8d356f351:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    23a8d356f355:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    23a8d356f359:	b8 01 00 00 00                                  	mov    eax,0x1
    23a8d356f35e:	48 8b e5                                        	mov    rsp,rbp
    23a8d356f361:	5d                                              	pop    rbp
    23a8d356f362:	c2 40 00                                        	ret    0x40
    23a8d356f365:	41 b8 10 00 00 00                               	mov    r8d,0x10
    23a8d356f36b:	41 d1 f8                                        	sar    r8d,1
    23a8d356f36e:	4d 63 c0                                        	movsxd r8,r8d
    23a8d356f371:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    23a8d356f379:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    23a8d356f380:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    23a8d356f387:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    23a8d356f38e:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    23a8d356f396:	49 8b c0                                        	mov    rax,r8
    23a8d356f399:	e8 92 fb ed ff                                  	call   0x23a8d344ef30
    23a8d356f39e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d356f3a2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d356f3a5:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    23a8d356f3ac:	8b 95 48 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b8]
    23a8d356f3b2:	8b bd 88 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x378]
    23a8d356f3b8:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    23a8d356f3be:	c5 fb 10 8d b8 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x248]
    23a8d356f3c6:	c5 f8 10 85 60 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xa0]
    23a8d356f3ce:	e9 d6 75 ff ff                                  	jmp    0x23a8d35669a9
    23a8d356f3d3:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d356f3d7:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    23a8d356f3df:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    23a8d356f3e3:	48 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rbx
    23a8d356f3ea:	c5 fb 11 ad 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm5
    23a8d356f3f2:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    23a8d356f3f9:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    23a8d356f401:	e8 3a fb ed ff                                  	call   0x23a8d344ef40
    23a8d356f406:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356f40a:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356f40e:	45 33 e4                                        	xor    r12d,r12d
    23a8d356f411:	c5 fb 10 8d b8 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x248]
    23a8d356f419:	c5 f8 10 85 60 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xa0]
    23a8d356f421:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d356f424:	8b 9d 48 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xb8]
    23a8d356f42a:	c5 fb 10 ad 58 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa8]
    23a8d356f432:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    23a8d356f438:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    23a8d356f43f:	8b b5 18 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe8]
    23a8d356f445:	8b bd 40 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc0]
    23a8d356f44b:	e9 05 78 ff ff                                  	jmp    0x23a8d3566c55
    23a8d356f450:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d356f454:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    23a8d356f45c:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    23a8d356f460:	48 89 b5 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rsi
    23a8d356f467:	48 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rbx
    23a8d356f46e:	4c 89 9d 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r11
    23a8d356f475:	c5 fb 11 ad 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm5
    23a8d356f47d:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    23a8d356f484:	48 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdi
    23a8d356f48b:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    23a8d356f493:	e8 a8 fa ed ff                                  	call   0x23a8d344ef40
    23a8d356f498:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d356f49c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356f4a0:	45 33 e4                                        	xor    r12d,r12d
    23a8d356f4a3:	c5 fb 10 8d b8 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x248]
    23a8d356f4ab:	c5 f8 10 85 60 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xa0]
    23a8d356f4b3:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d356f4b6:	8b b5 28 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd8]
    23a8d356f4bc:	8b 9d 48 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xb8]
    23a8d356f4c2:	44 8b 9d 50 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xb0]
    23a8d356f4c9:	c5 fb 10 ad 58 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa8]
    23a8d356f4d1:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    23a8d356f4d7:	41 b9 ff ff ff ff                               	mov    r9d,0xffffffff
    23a8d356f4dd:	8b bd 38 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc8]
    23a8d356f4e3:	e9 b7 78 ff ff                                  	jmp    0x23a8d3566d9f
    23a8d356f4e8:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    23a8d356f4ed:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    23a8d356f4f2:	c5 7b 11 b5 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm14
    23a8d356f4fa:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    23a8d356f501:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    23a8d356f508:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    23a8d356f50f:	e8 2c fa ed ff                                  	call   0x23a8d344ef40
    23a8d356f514:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d356f518:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d356f51d:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d356f522:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356f526:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    23a8d356f52e:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    23a8d356f531:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    23a8d356f536:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    23a8d356f53b:	c5 7b 10 b5 58 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0xa8]
    23a8d356f543:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    23a8d356f54a:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    23a8d356f551:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    23a8d356f558:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    23a8d356f55f:	4c 8b a5 b0 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x150]
    23a8d356f566:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    23a8d356f56e:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    23a8d356f576:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    23a8d356f57e:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    23a8d356f585:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    23a8d356f58b:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    23a8d356f590:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    23a8d356f596:	48 8b 95 80 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x280]
    23a8d356f59d:	e9 da 87 ff ff                                  	jmp    0x23a8d3567d7c
    23a8d356f5a2:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    23a8d356f5a9:	4c 89 9d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r11
    23a8d356f5b0:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    23a8d356f5b7:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    23a8d356f5be:	e8 7d f9 ed ff                                  	call   0x23a8d344ef40
    23a8d356f5c3:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    23a8d356f5c7:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    23a8d356f5cc:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    23a8d356f5d1:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d356f5d5:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    23a8d356f5dd:	44 8b 9d f0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x210]
    23a8d356f5e4:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    23a8d356f5eb:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    23a8d356f5f2:	48 8b 85 c0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x240]
    23a8d356f5f9:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    23a8d356f5ff:	48 8b bd f8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x208]
    23a8d356f606:	48 8b 8d 20 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3e0]
    23a8d356f60d:	48 8b 9d 00 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x400]
    23a8d356f614:	4c 8b 85 38 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x2c8]
    23a8d356f61b:	4c 8b 8d b0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x150]
    23a8d356f622:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    23a8d356f62a:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    23a8d356f632:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    23a8d356f63a:	e9 3c 8e ff ff                                  	jmp    0x23a8d356847b
    23a8d356f63f:	e8 fc f8 ed ff                                  	call   0x23a8d344ef40
    23a8d356f644:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f647:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356f64b:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    23a8d356f652:	8b 8d 98 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x168]
    23a8d356f658:	8b 95 90 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x170]
    23a8d356f65e:	8b 9d 88 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x178]
    23a8d356f664:	c5 78 10 a5 60 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2a0]
    23a8d356f66c:	c5 78 10 9d 50 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2b0]
    23a8d356f674:	4c 8b 8d 28 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1d8]
    23a8d356f67b:	c5 78 10 8d d0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x330]
    23a8d356f683:	c5 f8 10 ad c0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x340]
    23a8d356f68b:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    23a8d356f693:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    23a8d356f69b:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    23a8d356f6a2:	e9 a3 ad ff ff                                  	jmp    0x23a8d356a44a
    23a8d356f6a7:	e8 94 f8 ed ff                                  	call   0x23a8d344ef40
    23a8d356f6ac:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f6af:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356f6b3:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    23a8d356f6b9:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    23a8d356f6c0:	e9 da bd ff ff                                  	jmp    0x23a8d356b49f
    23a8d356f6c5:	e8 76 f8 ed ff                                  	call   0x23a8d344ef40
    23a8d356f6ca:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f6cd:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356f6d1:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356f6d7:	48 8b 95 28 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1d8]
    23a8d356f6de:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    23a8d356f6e5:	e9 bc d3 ff ff                                  	jmp    0x23a8d356caa6
    23a8d356f6ea:	e8 51 f8 ed ff                                  	call   0x23a8d344ef40
    23a8d356f6ef:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f6f2:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356f6f6:	41 bf 02 00 00 00                               	mov    r15d,0x2
    23a8d356f6fc:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    23a8d356f700:	44 8b a5 70 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x90]
    23a8d356f707:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    23a8d356f70e:	44 8b 9d 28 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1d8]
    23a8d356f715:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    23a8d356f71d:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    23a8d356f725:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    23a8d356f72b:	e9 af d7 ff ff                                  	jmp    0x23a8d356cedf
    23a8d356f730:	e8 0b f8 ed ff                                  	call   0x23a8d344ef40
    23a8d356f735:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f738:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356f73c:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    23a8d356f740:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    23a8d356f744:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    23a8d356f748:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    23a8d356f74d:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    23a8d356f752:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d356f756:	4c 8b bd f8 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x108]
    23a8d356f75d:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    23a8d356f764:	4c 8b a5 e8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x118]
    23a8d356f76b:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    23a8d356f773:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    23a8d356f779:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    23a8d356f780:	e9 0f e5 ff ff                                  	jmp    0x23a8d356dc94
    23a8d356f785:	e8 b6 f7 ed ff                                  	call   0x23a8d344ef40
    23a8d356f78a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d356f78d:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    23a8d356f791:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    23a8d356f798:	44 8b a5 20 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xe0]
    23a8d356f79f:	4c 8b 9d 18 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe8]
    23a8d356f7a6:	8b 8d 10 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf0]
    23a8d356f7ac:	8b 9d 98 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x168]
    23a8d356f7b2:	44 8b bd 90 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x170]
    23a8d356f7b9:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    23a8d356f7c0:	e9 3d e7 ff ff                                  	jmp    0x23a8d356df02
    23a8d356f7c5:	e8 96 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7ca:	e8 91 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7cf:	e8 8c f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7d4:	e8 87 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7d9:	e8 82 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7de:	e8 7d f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7e3:	e8 78 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7e8:	e8 73 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7ed:	e8 6e f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7f2:	e8 69 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7f7:	e8 64 f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f7fc:	e8 5f f4 ed ff                                  	call   0x23a8d344ec60
    23a8d356f801:	90                                              	nop
    23a8d356f802:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    23a8d356f808:	2b 8b 56 d3 a8 23                               	sub    ecx,DWORD PTR [rbx+0x23a8d356]
    23a8d356f80e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f810:	fb                                              	sti
    23a8d356f811:	8a 56 d3                                        	mov    dl,BYTE PTR [rsi-0x2d]
    23a8d356f814:	a8 23                                           	test   al,0x23
    23a8d356f816:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f818:	d3 8a 56 d3 a8 23                               	ror    DWORD PTR [rdx+0x23a8d356],cl
    23a8d356f81e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f820:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    23a8d356f821:	8a 56 d3                                        	mov    dl,BYTE PTR [rsi-0x2d]
    23a8d356f824:	a8 23                                           	test   al,0x23
    23a8d356f826:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f828:	6b 8a 56 d3 a8 23 00                            	imul   ecx,DWORD PTR [rdx+0x23a8d356],0x0
    23a8d356f82f:	00 54 8a 56                                     	add    BYTE PTR [rdx+rcx*4+0x56],dl
    23a8d356f833:	d3 a8 23 00 00 07                               	shr    DWORD PTR [rax+0x7000023],cl
    23a8d356f839:	8a 56 d3                                        	mov    dl,BYTE PTR [rsi-0x2d]
    23a8d356f83c:	a8 23                                           	test   al,0x23
    23a8d356f83e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f840:	fd                                              	std
    23a8d356f841:	89 56 d3                                        	mov    DWORD PTR [rsi-0x2d],edx
    23a8d356f844:	a8 23                                           	test   al,0x23
    23a8d356f846:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f848:	a8 88                                           	test   al,0x88
    23a8d356f84a:	56                                              	push   rsi
    23a8d356f84b:	d3 a8 23 00 00 82                               	shr    DWORD PTR [rax-0x7dffffdd],cl
    23a8d356f851:	88 56 d3                                        	mov    BYTE PTR [rsi-0x2d],dl
    23a8d356f854:	a8 23                                           	test   al,0x23
    23a8d356f856:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f858:	5b                                              	pop    rbx
    23a8d356f859:	88 56 d3                                        	mov    BYTE PTR [rsi-0x2d],dl
    23a8d356f85c:	a8 23                                           	test   al,0x23
    23a8d356f85e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f860:	39 88 56 d3 a8 23                               	cmp    DWORD PTR [rax+0x23a8d356],ecx
    23a8d356f866:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f868:	01 88 56 d3 a8 23                               	add    DWORD PTR [rax+0x23a8d356],ecx
    23a8d356f86e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f870:	ea                                              	(bad)
    23a8d356f871:	87 56 d3                                        	xchg   DWORD PTR [rsi-0x2d],edx
    23a8d356f874:	a8 23                                           	test   al,0x23
    23a8d356f876:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f878:	9d                                              	popf
    23a8d356f879:	87 56 d3                                        	xchg   DWORD PTR [rsi-0x2d],edx
    23a8d356f87c:	a8 23                                           	test   al,0x23
    23a8d356f87e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f880:	93                                              	xchg   ebx,eax
    23a8d356f881:	87 56 d3                                        	xchg   DWORD PTR [rsi-0x2d],edx
    23a8d356f884:	a8 23                                           	test   al,0x23
    23a8d356f886:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f888:	85 00                                           	test   DWORD PTR [rax],eax
    23a8d356f88a:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f88c:	1c 00                                           	sbb    al,0x0
    23a8d356f88e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d356f890:	f5                                              	cmc
    23a8d356f891:	48 e7 03                                        	rex.W out 0x3,eax
    23a8d356f894:	05 a8 cb 01 e7                                  	add    eax,0xe701cba8
    23a8d356f899:	03 05 68 e7 03 05                               	add    eax,DWORD PTR [rip+0x503e768]        # 0x23a8d85ae007
    23a8d356f89f:	c4 07 e7 03                                     	(bad)
    23a8d356f8a3:	05 00 00 00 00                                  	add    eax,0x0
	...
