
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_raster_triangle_msaa4-turbofan.bin:     file format binary


Disassembly of section .data:

000010402e8e08c0 <.data>:
    10402e8e08c0:	55                                              	push   rbp
    10402e8e08c1:	48 8b ec                                        	mov    rbp,rsp
    10402e8e08c4:	6a 30                                           	push   0x30
    10402e8e08c6:	56                                              	push   rsi
    10402e8e08c7:	48 81 ec 10 05 00 00                            	sub    rsp,0x510
    10402e8e08ce:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e8e08d2:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    10402e8e08d6:	8b f9                                           	mov    edi,ecx
    10402e8e08d8:	4c 89 8d 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r9
    10402e8e08df:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    10402e8e08e3:	0f 86 15 a1 00 00                               	jbe    0x10402e8ea9fe
    10402e8e08e9:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    10402e8e08ed:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    10402e8e08f1:	4d 0b de                                        	or     r11,r14
    10402e8e08f4:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    10402e8e08f8:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    10402e8e08ff:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    10402e8e0903:	44 8b f8                                        	mov    r15d,eax
    10402e8e0906:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    10402e8e090b:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    10402e8e090f:	48 89 8d 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rcx
    10402e8e0916:	83 f9 04                                        	cmp    ecx,0x4
    10402e8e0919:	0f 84 26 00 00 00                               	je     0x10402e8e0945
    10402e8e091f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8e0923:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    10402e8e0927:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e092b:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    10402e8e0932:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    10402e8e0939:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    10402e8e0940:	e9 e0 03 00 00                                  	jmp    0x10402e8e0d25
    10402e8e0945:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    10402e8e094a:	85 f6                                           	test   esi,esi
    10402e8e094c:	74 d1                                           	je     0x10402e8e091f
    10402e8e094e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    10402e8e0951:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    10402e8e0955:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    10402e8e095a:	74 c3                                           	je     0x10402e8e091f
    10402e8e095c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    10402e8e0961:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    10402e8e0967:	74 b6                                           	je     0x10402e8e091f
    10402e8e0969:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    10402e8e0971:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    10402e8e097a:	75 a3                                           	jne    0x10402e8e091f
    10402e8e097c:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    10402e8e0981:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    10402e8e0988:	33 c9                                           	xor    ecx,ecx
    10402e8e098a:	45 85 c9                                        	test   r9d,r9d
    10402e8e098d:	0f 94 c1                                        	sete   cl
    10402e8e0990:	41 83 f9 02                                     	cmp    r9d,0x2
    10402e8e0994:	41 0f 94 c1                                     	sete   r9b
    10402e8e0998:	45 0f b6 c9                                     	movzx  r9d,r9b
    10402e8e099c:	44 0b c9                                        	or     r9d,ecx
    10402e8e099f:	0f 84 7a ff ff ff                               	je     0x10402e8e091f
    10402e8e09a5:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    10402e8e09a9:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    10402e8e09af:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    10402e8e09b5:	0f 87 64 ff ff ff                               	ja     0x10402e8e091f
    10402e8e09bb:	8b cb                                           	mov    ecx,ebx
    10402e8e09bd:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    10402e8e09c4:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8e09c8:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8e09cd:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8e09d2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e09d6:	0f 82 43 ff ff ff                               	jb     0x10402e8e091f
    10402e8e09dc:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e09e0:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    10402e8e09e4:	0f 83 22 00 00 00                               	jae    0x10402e8e0a0c
    10402e8e09ea:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8e09ee:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    10402e8e09f2:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    10402e8e09f9:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    10402e8e0a00:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    10402e8e0a07:	e9 19 03 00 00                                  	jmp    0x10402e8e0d25
    10402e8e0a0c:	8b cf                                           	mov    ecx,edi
    10402e8e0a0e:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    10402e8e0a15:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    10402e8e0a1a:	72 ce                                           	jb     0x10402e8e09ea
    10402e8e0a1c:	8b ca                                           	mov    ecx,edx
    10402e8e0a1e:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    10402e8e0a25:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    10402e8e0a29:	72 bf                                           	jb     0x10402e8e09ea
    10402e8e0a2b:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    10402e8e0a30:	72 b8                                           	jb     0x10402e8e09ea
    10402e8e0a32:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8e0a36:	72 b2                                           	jb     0x10402e8e09ea
    10402e8e0a38:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    10402e8e0a3b:	c1 f9 02                                        	sar    ecx,0x2
    10402e8e0a3e:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    10402e8e0a42:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    10402e8e0a46:	41 c1 ff 02                                     	sar    r15d,0x2
    10402e8e0a4a:	44 3b f9                                        	cmp    r15d,ecx
    10402e8e0a4d:	0f 8c bf 02 00 00                               	jl     0x10402e8e0d12
    10402e8e0a53:	49 ba 50 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b850
    10402e8e0a5d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    10402e8e0a62:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    10402e8e0a66:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    10402e8e0a6c:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    10402e8e0a71:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    10402e8e0a76:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8e0a7a:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    10402e8e0a7e:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    10402e8e0a85:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    10402e8e0a8c:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    10402e8e0a93:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    10402e8e0a98:	0f 87 05 00 00 00                               	ja     0x10402e8e0aa3
    10402e8e0a9e:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    10402e8e0aa3:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    10402e8e0aa7:	0f 87 05 00 00 00                               	ja     0x10402e8e0ab2
    10402e8e0aad:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    10402e8e0ab2:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    10402e8e0ab6:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    10402e8e0aba:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e0abe:	0f 87 04 00 00 00                               	ja     0x10402e8e0ac8
    10402e8e0ac4:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    10402e8e0ac8:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8e0acc:	0f 87 09 00 00 00                               	ja     0x10402e8e0adb
    10402e8e0ad2:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    10402e8e0ad6:	e9 04 00 00 00                                  	jmp    0x10402e8e0adf
    10402e8e0adb:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    10402e8e0adf:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    10402e8e0ae3:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    10402e8e0ae7:	c1 fa 02                                        	sar    edx,0x2
    10402e8e0aea:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8e0aee:	41 c1 f9 02                                     	sar    r9d,0x2
    10402e8e0af2:	41 8b f9                                        	mov    edi,r9d
    10402e8e0af5:	44 3b ca                                        	cmp    r9d,edx
    10402e8e0af8:	0f 4c fa                                        	cmovl  edi,edx
    10402e8e0afb:	8d 5e c4                                        	lea    ebx,[rsi-0x3c]
    10402e8e0afe:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8e0b02:	83 ee 40                                        	sub    esi,0x40
    10402e8e0b05:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    10402e8e0b09:	45 33 db                                        	xor    r11d,r11d
    10402e8e0b0c:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8e0b11:	41 0f 94 c3                                     	sete   r11b
    10402e8e0b15:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8e0b19:	48 89 9d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],rbx
    10402e8e0b20:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    10402e8e0b24:	e9 23 00 00 00                                  	jmp    0x10402e8e0b4c
    10402e8e0b29:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e0b32:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e0b3b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    10402e8e0b40:	41 8b cc                                        	mov    ecx,r12d
    10402e8e0b43:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8e0b46:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    10402e8e0b4c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e0b51:	0f 85 0f 9f 00 00                               	jne    0x10402e8eaa66
    10402e8e0b57:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    10402e8e0b5b:	0f 8f 5c 01 00 00                               	jg     0x10402e8e0cbd
    10402e8e0b61:	44 8b e3                                        	mov    r12d,ebx
    10402e8e0b64:	44 0f af e1                                     	imul   r12d,ecx
    10402e8e0b68:	41 c1 e4 04                                     	shl    r12d,0x4
    10402e8e0b6c:	44 03 e6                                        	add    r12d,esi
    10402e8e0b6f:	41 8b d9                                        	mov    ebx,r9d
    10402e8e0b72:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e0b7b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    10402e8e0b80:	8b d3                                           	mov    edx,ebx
    10402e8e0b82:	c1 e2 04                                        	shl    edx,0x4
    10402e8e0b85:	41 03 d4                                        	add    edx,r12d
    10402e8e0b88:	49 8b 34 10                                     	mov    rsi,QWORD PTR [r8+rdx*1]
    10402e8e0b8c:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    10402e8e0b91:	0f 85 38 01 00 00                               	jne    0x10402e8e0ccf
    10402e8e0b97:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    10402e8e0b9e:	45 85 db                                        	test   r11d,r11d
    10402e8e0ba1:	0f 85 0f 00 00 00                               	jne    0x10402e8e0bb6
    10402e8e0ba7:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0bab:	0f 83 1e 01 00 00                               	jae    0x10402e8e0ccf
    10402e8e0bb1:	e9 0a 00 00 00                                  	jmp    0x10402e8e0bc0
    10402e8e0bb6:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0bba:	0f 87 0f 01 00 00                               	ja     0x10402e8e0ccf
    10402e8e0bc0:	8d 53 01                                        	lea    edx,[rbx+0x1]
    10402e8e0bc3:	3b df                                           	cmp    ebx,edi
    10402e8e0bc5:	0f 84 f2 00 00 00                               	je     0x10402e8e0cbd
    10402e8e0bcb:	8b da                                           	mov    ebx,edx
    10402e8e0bcd:	c1 e3 04                                        	shl    ebx,0x4
    10402e8e0bd0:	41 03 dc                                        	add    ebx,r12d
    10402e8e0bd3:	49 8b 34 18                                     	mov    rsi,QWORD PTR [r8+rbx*1]
    10402e8e0bd7:	49 83 3c 18 ff                                  	cmp    QWORD PTR [r8+rbx*1],0xffffffffffffffff
    10402e8e0bdc:	0f 85 ed 00 00 00                               	jne    0x10402e8e0ccf
    10402e8e0be2:	c4 c1 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+rbx*1+0x8]
    10402e8e0be9:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8e0bee:	0f 84 0f 00 00 00                               	je     0x10402e8e0c03
    10402e8e0bf4:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0bf8:	0f 83 d1 00 00 00                               	jae    0x10402e8e0ccf
    10402e8e0bfe:	e9 0a 00 00 00                                  	jmp    0x10402e8e0c0d
    10402e8e0c03:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0c07:	0f 87 c2 00 00 00                               	ja     0x10402e8e0ccf
    10402e8e0c0d:	8d 5a 01                                        	lea    ebx,[rdx+0x1]
    10402e8e0c10:	3b d7                                           	cmp    edx,edi
    10402e8e0c12:	0f 84 a5 00 00 00                               	je     0x10402e8e0cbd
    10402e8e0c18:	8b d3                                           	mov    edx,ebx
    10402e8e0c1a:	c1 e2 04                                        	shl    edx,0x4
    10402e8e0c1d:	41 03 d4                                        	add    edx,r12d
    10402e8e0c20:	49 8b 34 10                                     	mov    rsi,QWORD PTR [r8+rdx*1]
    10402e8e0c24:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    10402e8e0c29:	0f 85 a0 00 00 00                               	jne    0x10402e8e0ccf
    10402e8e0c2f:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    10402e8e0c36:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8e0c3b:	0f 84 0f 00 00 00                               	je     0x10402e8e0c50
    10402e8e0c41:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0c45:	0f 83 84 00 00 00                               	jae    0x10402e8e0ccf
    10402e8e0c4b:	e9 0a 00 00 00                                  	jmp    0x10402e8e0c5a
    10402e8e0c50:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0c54:	0f 87 75 00 00 00                               	ja     0x10402e8e0ccf
    10402e8e0c5a:	8d 53 01                                        	lea    edx,[rbx+0x1]
    10402e8e0c5d:	3b df                                           	cmp    ebx,edi
    10402e8e0c5f:	0f 84 58 00 00 00                               	je     0x10402e8e0cbd
    10402e8e0c65:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e0c6a:	0f 85 90 9e 00 00                               	jne    0x10402e8eab00
    10402e8e0c70:	8b da                                           	mov    ebx,edx
    10402e8e0c72:	c1 e3 04                                        	shl    ebx,0x4
    10402e8e0c75:	41 03 dc                                        	add    ebx,r12d
    10402e8e0c78:	49 8b 34 18                                     	mov    rsi,QWORD PTR [r8+rbx*1]
    10402e8e0c7c:	49 83 3c 18 ff                                  	cmp    QWORD PTR [r8+rbx*1],0xffffffffffffffff
    10402e8e0c81:	0f 85 48 00 00 00                               	jne    0x10402e8e0ccf
    10402e8e0c87:	c4 c1 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+rbx*1+0x8]
    10402e8e0c8e:	3d 01 02 00 00                                  	cmp    eax,0x201
    10402e8e0c93:	0f 84 0f 00 00 00                               	je     0x10402e8e0ca8
    10402e8e0c99:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0c9d:	0f 83 2c 00 00 00                               	jae    0x10402e8e0ccf
    10402e8e0ca3:	e9 0a 00 00 00                                  	jmp    0x10402e8e0cb2
    10402e8e0ca8:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e0cac:	0f 87 1d 00 00 00                               	ja     0x10402e8e0ccf
    10402e8e0cb2:	8d 5a 01                                        	lea    ebx,[rdx+0x1]
    10402e8e0cb5:	3b fa                                           	cmp    edi,edx
    10402e8e0cb7:	0f 85 c3 fe ff ff                               	jne    0x10402e8e0b80
    10402e8e0cbd:	44 8d 61 01                                     	lea    r12d,[rcx+0x1]
    10402e8e0cc1:	44 3b f9                                        	cmp    r15d,ecx
    10402e8e0cc4:	0f 85 76 fe ff ff                               	jne    0x10402e8e0b40
    10402e8e0cca:	e9 23 00 00 00                                  	jmp    0x10402e8e0cf2
    10402e8e0ccf:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    10402e8e0cd5:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    10402e8e0cd9:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    10402e8e0cdd:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    10402e8e0ce1:	8b 95 50 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b0]
    10402e8e0ce7:	8b bd 70 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x190]
    10402e8e0ced:	e9 33 00 00 00                                  	jmp    0x10402e8e0d25
    10402e8e0cf2:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    10402e8e0cf6:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    10402e8e0cfe:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    10402e8e0d02:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    10402e8e0d06:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    10402e8e0d0b:	48 8b e5                                        	mov    rsp,rbp
    10402e8e0d0e:	5d                                              	pop    rbp
    10402e8e0d0f:	c2 40 00                                        	ret    0x40
    10402e8e0d12:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    10402e8e0d1a:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    10402e8e0d1e:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    10402e8e0d23:	eb e6                                           	jmp    0x10402e8e0d0b
    10402e8e0d25:	8b c3                                           	mov    eax,ebx
    10402e8e0d27:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    10402e8e0d2e:	c4 c1 7a 10 74 00 14                            	vmovss xmm6,DWORD PTR [r8+rax*1+0x14]
    10402e8e0d35:	8b f7                                           	mov    esi,edi
    10402e8e0d37:	c4 41 7a 10 44 30 10                            	vmovss xmm8,DWORD PTR [r8+rsi*1+0x10]
    10402e8e0d3e:	44 8b ca                                        	mov    r9d,edx
    10402e8e0d41:	c4 01 7a 10 4c 08 10                            	vmovss xmm9,DWORD PTR [r8+r9*1+0x10]
    10402e8e0d48:	c4 41 7a 10 54 30 14                            	vmovss xmm10,DWORD PTR [r8+rsi*1+0x14]
    10402e8e0d4f:	43 8b 8c 38 8c 00 00 00                         	mov    ecx,DWORD PTR [r8+r15*1+0x8c]
    10402e8e0d57:	c4 01 7a 10 5c 08 14                            	vmovss xmm11,DWORD PTR [r8+r9*1+0x14]
    10402e8e0d5e:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    10402e8e0d64:	c4 41 79 6e e2                                  	vmovd  xmm12,r10d
    10402e8e0d69:	c4 41 22 59 dc                                  	vmulss xmm11,xmm11,xmm12
    10402e8e0d6e:	4c 8b 15 e0 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffce0]        # 0x10402e8e0a55
    10402e8e0d75:	c4 41 20 54 2a                                  	vandps xmm13,xmm11,XMMWORD PTR [r10]
    10402e8e0d7a:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8e0d7e:	48 89 85 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],rax
    10402e8e0d85:	48 89 b5 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rsi
    10402e8e0d8c:	4c 89 8d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r9
    10402e8e0d93:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    10402e8e0d9a:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    10402e8e0da0:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    10402e8e0da5:	c4 41 78 2e f5                                  	vucomiss xmm14,xmm13
    10402e8e0daa:	0f 87 0b 00 00 00                               	ja     0x10402e8e0dbb
    10402e8e0db0:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    10402e8e0db6:	e9 21 00 00 00                                  	jmp    0x10402e8e0ddc
    10402e8e0dbb:	c4 43 21 0a db 0b                               	vroundss xmm11,xmm11,xmm11,0xb
    10402e8e0dc1:	c4 41 7a 2c db                                  	vcvttss2si r11d,xmm11
    10402e8e0dc6:	c4 41 02 2a eb                                  	vcvtsi2ss xmm13,xmm15,r11d
    10402e8e0dcb:	c4 41 78 2e dd                                  	vucomiss xmm11,xmm13
    10402e8e0dd0:	0f 8a fe a0 00 00                               	jp     0x10402e8eaed4
    10402e8e0dd6:	0f 85 f8 a0 00 00                               	jne    0x10402e8eaed4
    10402e8e0ddc:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    10402e8e0de3:	48 c7 c0 a0 ff ff ff                            	mov    rax,0xffffffffffffffa0
    10402e8e0dea:	85 c9                                           	test   ecx,ecx
    10402e8e0dec:	48 0f 45 f0                                     	cmovne rsi,rax
    10402e8e0df0:	c4 41 2a 59 d4                                  	vmulss xmm10,xmm10,xmm12
    10402e8e0df5:	4c 8b 15 59 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc59]        # 0x10402e8e0a55
    10402e8e0dfc:	c4 41 28 54 1a                                  	vandps xmm11,xmm10,XMMWORD PTR [r10]
    10402e8e0e01:	4c 89 9d 00 fb ff ff                            	mov    QWORD PTR [rbp-0x500],r11
    10402e8e0e08:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    10402e8e0e0c:	c4 41 78 2e f3                                  	vucomiss xmm14,xmm11
    10402e8e0e11:	0f 87 0a 00 00 00                               	ja     0x10402e8e0e21
    10402e8e0e17:	b8 00 00 00 80                                  	mov    eax,0x80000000
    10402e8e0e1c:	e9 20 00 00 00                                  	jmp    0x10402e8e0e41
    10402e8e0e21:	c4 43 29 0a d2 0b                               	vroundss xmm10,xmm10,xmm10,0xb
    10402e8e0e27:	c4 c1 7a 2c c2                                  	vcvttss2si eax,xmm10
    10402e8e0e2c:	c5 02 2a d8                                     	vcvtsi2ss xmm11,xmm15,eax
    10402e8e0e30:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    10402e8e0e35:	0f 8a 94 a0 00 00                               	jp     0x10402e8eaecf
    10402e8e0e3b:	0f 85 8e a0 00 00                               	jne    0x10402e8eaecf
    10402e8e0e41:	44 8b c8                                        	mov    r9d,eax
    10402e8e0e44:	45 2b cb                                        	sub    r9d,r11d
    10402e8e0e47:	49 63 d1                                        	movsxd rdx,r9d
    10402e8e0e4a:	c4 41 32 59 cc                                  	vmulss xmm9,xmm9,xmm12
    10402e8e0e4f:	4c 8b 15 ff fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbff]        # 0x10402e8e0a55
    10402e8e0e56:	c4 41 30 54 12                                  	vandps xmm10,xmm9,XMMWORD PTR [r10]
    10402e8e0e5b:	48 89 85 50 fd ff ff                            	mov    QWORD PTR [rbp-0x2b0],rax
    10402e8e0e62:	4c 89 8d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r9
    10402e8e0e69:	48 89 95 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rdx
    10402e8e0e70:	c4 41 78 2e f2                                  	vucomiss xmm14,xmm10
    10402e8e0e75:	0f 87 10 00 00 00                               	ja     0x10402e8e0e8b
    10402e8e0e7b:	48 c7 85 10 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x1f0],0xffffffff80000000
    10402e8e0e86:	e9 28 00 00 00                                  	jmp    0x10402e8e0eb3
    10402e8e0e8b:	c4 43 31 0a c9 0b                               	vroundss xmm9,xmm9,xmm9,0xb
    10402e8e0e91:	c4 41 7a 2c c9                                  	vcvttss2si r9d,xmm9
    10402e8e0e96:	c4 41 02 2a d1                                  	vcvtsi2ss xmm10,xmm15,r9d
    10402e8e0e9b:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    10402e8e0ea0:	0f 8a 24 a0 00 00                               	jp     0x10402e8eaeca
    10402e8e0ea6:	0f 85 1e a0 00 00                               	jne    0x10402e8eaeca
    10402e8e0eac:	4c 89 8d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r9
    10402e8e0eb3:	41 b9 05 00 00 00                               	mov    r9d,0x5
    10402e8e0eb9:	bf 07 00 00 00                                  	mov    edi,0x7
    10402e8e0ebe:	85 c9                                           	test   ecx,ecx
    10402e8e0ec0:	49 0f 45 f9                                     	cmovne rdi,r9
    10402e8e0ec4:	4c 8b ca                                        	mov    r9,rdx
    10402e8e0ec7:	4c 0f af ce                                     	imul   r9,rsi
    10402e8e0ecb:	c4 41 3a 59 c4                                  	vmulss xmm8,xmm8,xmm12
    10402e8e0ed0:	4c 8b 15 7e fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7e]        # 0x10402e8e0a55
    10402e8e0ed7:	c4 41 38 54 0a                                  	vandps xmm9,xmm8,XMMWORD PTR [r10]
    10402e8e0edc:	c4 41 78 2e f1                                  	vucomiss xmm14,xmm9
    10402e8e0ee1:	0f 87 10 00 00 00                               	ja     0x10402e8e0ef7
    10402e8e0ee7:	48 c7 85 60 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x1a0],0xffffffff80000000
    10402e8e0ef2:	e9 27 00 00 00                                  	jmp    0x10402e8e0f1e
    10402e8e0ef7:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    10402e8e0efd:	c4 c1 7a 2c d8                                  	vcvttss2si ebx,xmm8
    10402e8e0f02:	c5 02 2a cb                                     	vcvtsi2ss xmm9,xmm15,ebx
    10402e8e0f06:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    10402e8e0f0b:	0f 8a b4 9f 00 00                               	jp     0x10402e8eaec5
    10402e8e0f11:	0f 85 ae 9f 00 00                               	jne    0x10402e8eaec5
    10402e8e0f17:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    10402e8e0f1e:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    10402e8e0f24:	2b 9d 10 fe ff ff                               	sub    ebx,DWORD PTR [rbp-0x1f0]
    10402e8e0f2a:	48 63 db                                        	movsxd rbx,ebx
    10402e8e0f2d:	8b ff                                           	mov    edi,edi
    10402e8e0f2f:	83 e7 3f                                        	and    edi,0x3f
    10402e8e0f32:	4c 8b fb                                        	mov    r15,rbx
    10402e8e0f35:	8b cf                                           	mov    ecx,edi
    10402e8e0f37:	49 d3 e7                                        	shl    r15,cl
    10402e8e0f3a:	4d 03 f9                                        	add    r15,r9
    10402e8e0f3d:	4f 89 bc 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],r15
    10402e8e0f45:	41 bb 80 00 00 00                               	mov    r11d,0x80
    10402e8e0f4b:	41 b9 60 00 00 00                               	mov    r9d,0x60
    10402e8e0f51:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e0f58:	4d 0f 45 d9                                     	cmovne r11,r9
    10402e8e0f5c:	4d 8b cb                                        	mov    r9,r11
    10402e8e0f5f:	4c 0f af cb                                     	imul   r9,rbx
    10402e8e0f63:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    10402e8e0f6a:	48 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdi
    10402e8e0f71:	48 c7 c7 20 ff ff ff                            	mov    rdi,0xffffffffffffff20
    10402e8e0f78:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e0f7f:	48 0f 45 f7                                     	cmovne rsi,rdi
    10402e8e0f83:	48 8b fe                                        	mov    rdi,rsi
    10402e8e0f86:	48 0f af fa                                     	imul   rdi,rdx
    10402e8e0f8a:	49 03 f9                                        	add    rdi,r9
    10402e8e0f8d:	4b 89 bc 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],rdi
    10402e8e0f95:	b8 80 00 00 00                                  	mov    eax,0x80
    10402e8e0f9a:	41 b9 a0 00 00 00                               	mov    r9d,0xa0
    10402e8e0fa0:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e0fa7:	49 0f 45 c1                                     	cmovne rax,r9
    10402e8e0fab:	4c 8b c8                                        	mov    r9,rax
    10402e8e0fae:	4c 0f af cb                                     	imul   r9,rbx
    10402e8e0fb2:	48 89 b5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rsi
    10402e8e0fb9:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    10402e8e0fc0:	48 89 85 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rax
    10402e8e0fc7:	48 c7 c0 e0 ff ff ff                            	mov    rax,0xffffffffffffffe0
    10402e8e0fce:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e0fd5:	48 0f 45 f0                                     	cmovne rsi,rax
    10402e8e0fd9:	48 8b c6                                        	mov    rax,rsi
    10402e8e0fdc:	48 0f af c2                                     	imul   rax,rdx
    10402e8e0fe0:	49 03 c1                                        	add    rax,r9
    10402e8e0fe3:	4b 89 84 20 10 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x110],rax
    10402e8e0feb:	4d 8b cf                                        	mov    r9,r15
    10402e8e0fee:	4c 3b ff                                        	cmp    r15,rdi
    10402e8e0ff1:	4c 0f 4c cf                                     	cmovl  r9,rdi
    10402e8e0ff5:	48 89 b5 d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rsi
    10402e8e0ffc:	be e0 00 00 00                                  	mov    esi,0xe0
    10402e8e1001:	b9 80 00 00 00                                  	mov    ecx,0x80
    10402e8e1006:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e100d:	48 0f 45 ce                                     	cmovne rcx,rsi
    10402e8e1011:	48 8b f1                                        	mov    rsi,rcx
    10402e8e1014:	48 0f af f3                                     	imul   rsi,rbx
    10402e8e1018:	48 89 5d c0                                     	mov    QWORD PTR [rbp-0x40],rbx
    10402e8e101c:	4c 89 9d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r11
    10402e8e1023:	49 c7 c3 80 ff ff ff                            	mov    r11,0xffffffffffffff80
    10402e8e102a:	48 c7 c3 60 ff ff ff                            	mov    rbx,0xffffffffffffff60
    10402e8e1031:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e1038:	4c 0f 45 db                                     	cmovne r11,rbx
    10402e8e103c:	49 8b db                                        	mov    rbx,r11
    10402e8e103f:	48 0f af da                                     	imul   rbx,rdx
    10402e8e1043:	48 03 de                                        	add    rbx,rsi
    10402e8e1046:	4b 89 9c 20 28 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x128],rbx
    10402e8e104e:	49 8b f7                                        	mov    rsi,r15
    10402e8e1051:	49 3b ff                                        	cmp    rdi,r15
    10402e8e1054:	48 0f 4c f7                                     	cmovl  rsi,rdi
    10402e8e1058:	48 8b fe                                        	mov    rdi,rsi
    10402e8e105b:	48 3b c6                                        	cmp    rax,rsi
    10402e8e105e:	48 0f 4c f8                                     	cmovl  rdi,rax
    10402e8e1062:	4d 8b f9                                        	mov    r15,r9
    10402e8e1065:	4c 3b c8                                        	cmp    r9,rax
    10402e8e1068:	4c 0f 4c f8                                     	cmovl  r15,rax
    10402e8e106c:	33 c0                                           	xor    eax,eax
    10402e8e106e:	4c 3b fb                                        	cmp    r15,rbx
    10402e8e1071:	0f 9c c0                                        	setl   al
    10402e8e1074:	33 f6                                           	xor    esi,esi
    10402e8e1076:	48 3b df                                        	cmp    rbx,rdi
    10402e8e1079:	40 0f 9c c6                                     	setl   sil
    10402e8e107d:	c4 c1 4a 59 f4                                  	vmulss xmm6,xmm6,xmm12
    10402e8e1082:	4c 8b 15 cc f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff9cc]        # 0x10402e8e0a55
    10402e8e1089:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    10402e8e108e:	48 89 8d 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],rcx
    10402e8e1095:	48 89 9d 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rbx
    10402e8e109c:	48 89 bd a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rdi
    10402e8e10a3:	4c 89 bd e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r15
    10402e8e10aa:	48 89 85 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rax
    10402e8e10b1:	48 89 b5 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rsi
    10402e8e10b8:	c4 41 78 2e f0                                  	vucomiss xmm14,xmm8
    10402e8e10bd:	0f 87 0b 00 00 00                               	ja     0x10402e8e10ce
    10402e8e10c3:	41 b9 00 00 00 80                               	mov    r9d,0x80000000
    10402e8e10c9:	e9 20 00 00 00                                  	jmp    0x10402e8e10ee
    10402e8e10ce:	c4 e3 49 0a f6 0b                               	vroundss xmm6,xmm6,xmm6,0xb
    10402e8e10d4:	c5 7a 2c ce                                     	vcvttss2si r9d,xmm6
    10402e8e10d8:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    10402e8e10dd:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    10402e8e10e2:	0f 8a d8 9d 00 00                               	jp     0x10402e8eaec0
    10402e8e10e8:	0f 85 d2 9d 00 00                               	jne    0x10402e8eaec0
    10402e8e10ee:	8b bd 00 fb ff ff                               	mov    edi,DWORD PTR [rbp-0x500]
    10402e8e10f4:	41 2b f9                                        	sub    edi,r9d
    10402e8e10f7:	48 63 f7                                        	movsxd rsi,edi
    10402e8e10fa:	48 89 bd 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],rdi
    10402e8e1101:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8e1105:	48 0f af fe                                     	imul   rdi,rsi
    10402e8e1109:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    10402e8e110e:	4c 8b 15 40 f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff940]        # 0x10402e8e0a55
    10402e8e1115:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    10402e8e111a:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    10402e8e1121:	48 89 b5 f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rsi
    10402e8e1128:	c5 78 2e f6                                     	vucomiss xmm14,xmm6
    10402e8e112c:	0f 87 10 00 00 00                               	ja     0x10402e8e1142
    10402e8e1132:	48 c7 85 00 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x200],0xffffffff80000000
    10402e8e113d:	e9 26 00 00 00                                  	jmp    0x10402e8e1168
    10402e8e1142:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    10402e8e1148:	c5 7a 2c fd                                     	vcvttss2si r15d,xmm5
    10402e8e114c:	c4 c1 02 2a f7                                  	vcvtsi2ss xmm6,xmm15,r15d
    10402e8e1151:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e1155:	0f 8a 60 9d 00 00                               	jp     0x10402e8eaebb
    10402e8e115b:	0f 85 5a 9d 00 00                               	jne    0x10402e8eaebb
    10402e8e1161:	4c 89 bd 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],r15
    10402e8e1168:	44 8b bd 10 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1f0]
    10402e8e116f:	44 2b bd 00 fe ff ff                            	sub    r15d,DWORD PTR [rbp-0x200]
    10402e8e1176:	4d 63 ff                                        	movsxd r15,r15d
    10402e8e1179:	49 8b c7                                        	mov    rax,r15
    10402e8e117c:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    10402e8e1182:	48 d3 e0                                        	shl    rax,cl
    10402e8e1185:	48 03 f8                                        	add    rdi,rax
    10402e8e1188:	4b 89 bc 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rdi
    10402e8e1190:	49 8b c7                                        	mov    rax,r15
    10402e8e1193:	48 0f af 85 48 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x1b8]
    10402e8e119b:	48 8b ce                                        	mov    rcx,rsi
    10402e8e119e:	48 0f af 8d 68 fe ff ff                         	imul   rcx,QWORD PTR [rbp-0x198]
    10402e8e11a6:	48 03 c1                                        	add    rax,rcx
    10402e8e11a9:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    10402e8e11b1:	49 8b cf                                        	mov    rcx,r15
    10402e8e11b4:	48 0f af 8d f8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x208]
    10402e8e11bc:	48 8b de                                        	mov    rbx,rsi
    10402e8e11bf:	48 0f af 9d d0 fd ff ff                         	imul   rbx,QWORD PTR [rbp-0x230]
    10402e8e11c7:	48 03 d9                                        	add    rbx,rcx
    10402e8e11ca:	4b 89 9c 20 08 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x108],rbx
    10402e8e11d2:	49 8b cf                                        	mov    rcx,r15
    10402e8e11d5:	48 0f af 8d 58 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x2a8]
    10402e8e11dd:	4c 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r15
    10402e8e11e4:	4c 8b fe                                        	mov    r15,rsi
    10402e8e11e7:	4d 0f af fb                                     	imul   r15,r11
    10402e8e11eb:	4c 03 f9                                        	add    r15,rcx
    10402e8e11ee:	4f 89 bc 20 20 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x120],r15
    10402e8e11f6:	48 8b cf                                        	mov    rcx,rdi
    10402e8e11f9:	48 3b f8                                        	cmp    rdi,rax
    10402e8e11fc:	48 0f 4c c8                                     	cmovl  rcx,rax
    10402e8e1200:	4c 8b c9                                        	mov    r9,rcx
    10402e8e1203:	48 3b cb                                        	cmp    rcx,rbx
    10402e8e1206:	4c 0f 4c cb                                     	cmovl  r9,rbx
    10402e8e120a:	33 c9                                           	xor    ecx,ecx
    10402e8e120c:	4d 3b cf                                        	cmp    r9,r15
    10402e8e120f:	0f 9c c1                                        	setl   cl
    10402e8e1212:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    10402e8e1219:	4c 8b cf                                        	mov    r9,rdi
    10402e8e121c:	48 3b c7                                        	cmp    rax,rdi
    10402e8e121f:	4c 0f 4c c8                                     	cmovl  r9,rax
    10402e8e1223:	49 8b f9                                        	mov    rdi,r9
    10402e8e1226:	49 3b d9                                        	cmp    rbx,r9
    10402e8e1229:	48 0f 4c fb                                     	cmovl  rdi,rbx
    10402e8e122d:	33 c0                                           	xor    eax,eax
    10402e8e122f:	4c 3b ff                                        	cmp    r15,rdi
    10402e8e1232:	0f 9c c0                                        	setl   al
    10402e8e1235:	44 8b 8d 28 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d8]
    10402e8e123c:	44 2b 8d 50 fd ff ff                            	sub    r9d,DWORD PTR [rbp-0x2b0]
    10402e8e1243:	49 63 d9                                        	movsxd rbx,r9d
    10402e8e1246:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    10402e8e124d:	4c 8b 4d b8                                     	mov    r9,QWORD PTR [rbp-0x48]
    10402e8e1251:	4c 0f af cb                                     	imul   r9,rbx
    10402e8e1255:	48 89 bd 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdi
    10402e8e125c:	8b bd 00 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x200]
    10402e8e1262:	2b bd 60 fe ff ff                               	sub    edi,DWORD PTR [rbp-0x1a0]
    10402e8e1268:	48 63 ff                                        	movsxd rdi,edi
    10402e8e126b:	48 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rax
    10402e8e1272:	48 8b c7                                        	mov    rax,rdi
    10402e8e1275:	48 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rcx
    10402e8e127c:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    10402e8e1282:	48 d3 e0                                        	shl    rax,cl
    10402e8e1285:	49 03 c1                                        	add    rax,r9
    10402e8e1288:	4b 89 84 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],rax
    10402e8e1290:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    10402e8e1297:	48 0f af cf                                     	imul   rcx,rdi
    10402e8e129b:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    10402e8e12a2:	4c 0f af cb                                     	imul   r9,rbx
    10402e8e12a6:	49 03 c9                                        	add    rcx,r9
    10402e8e12a9:	4b 89 8c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rcx
    10402e8e12b1:	4c 8b 8d f8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x208]
    10402e8e12b8:	4c 0f af cf                                     	imul   r9,rdi
    10402e8e12bc:	4c 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r15
    10402e8e12c3:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    10402e8e12ca:	4c 0f af fb                                     	imul   r15,rbx
    10402e8e12ce:	4d 03 f9                                        	add    r15,r9
    10402e8e12d1:	4f 89 bc 20 00 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x100],r15
    10402e8e12d9:	4c 8b 8d 58 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2a8]
    10402e8e12e0:	4c 0f af cf                                     	imul   r9,rdi
    10402e8e12e4:	4c 0f af db                                     	imul   r11,rbx
    10402e8e12e8:	4d 03 d9                                        	add    r11,r9
    10402e8e12eb:	4f 89 9c 20 18 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x118],r11
    10402e8e12f3:	4c 8b c8                                        	mov    r9,rax
    10402e8e12f6:	48 3b c1                                        	cmp    rax,rcx
    10402e8e12f9:	4c 0f 4c c9                                     	cmovl  r9,rcx
    10402e8e12fd:	4d 8b c1                                        	mov    r8,r9
    10402e8e1300:	4d 3b cf                                        	cmp    r9,r15
    10402e8e1303:	4d 0f 4c c7                                     	cmovl  r8,r15
    10402e8e1307:	45 33 c9                                        	xor    r9d,r9d
    10402e8e130a:	4d 3b c3                                        	cmp    r8,r11
    10402e8e130d:	41 0f 9c c1                                     	setl   r9b
    10402e8e1311:	4c 8b e0                                        	mov    r12,rax
    10402e8e1314:	48 3b c8                                        	cmp    rcx,rax
    10402e8e1317:	4c 0f 4c e1                                     	cmovl  r12,rcx
    10402e8e131b:	49 8b c4                                        	mov    rax,r12
    10402e8e131e:	4d 3b fc                                        	cmp    r15,r12
    10402e8e1321:	49 0f 4c c7                                     	cmovl  rax,r15
    10402e8e1325:	45 33 e4                                        	xor    r12d,r12d
    10402e8e1328:	4c 3b d8                                        	cmp    r11,rax
    10402e8e132b:	41 0f 9c c4                                     	setl   r12b
    10402e8e132f:	4c 63 bd 10 fe ff ff                            	movsxd r15,DWORD PTR [rbp-0x1f0]
    10402e8e1336:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    10402e8e1339:	4c 89 a5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r12
    10402e8e1340:	4c 63 e1                                        	movsxd r12,ecx
    10402e8e1343:	49 c1 e4 08                                     	shl    r12,0x8
    10402e8e1347:	4d 2b fc                                        	sub    r15,r12
    10402e8e134a:	4c 0f af fa                                     	imul   r15,rdx
    10402e8e134e:	48 63 4d 18                                     	movsxd rcx,DWORD PTR [rbp+0x18]
    10402e8e1352:	48 c1 e1 08                                     	shl    rcx,0x8
    10402e8e1356:	48 63 95 00 fb ff ff                            	movsxd rdx,DWORD PTR [rbp-0x500]
    10402e8e135d:	48 89 85 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rax
    10402e8e1364:	48 8b c1                                        	mov    rax,rcx
    10402e8e1367:	48 2b c2                                        	sub    rax,rdx
    10402e8e136a:	48 0f af 45 c0                                  	imul   rax,QWORD PTR [rbp-0x40]
    10402e8e136f:	48 63 95 00 fe ff ff                            	movsxd rdx,DWORD PTR [rbp-0x200]
    10402e8e1376:	49 2b d4                                        	sub    rdx,r12
    10402e8e1379:	48 0f af d6                                     	imul   rdx,rsi
    10402e8e137d:	48 63 b5 28 fe ff ff                            	movsxd rsi,DWORD PTR [rbp-0x1d8]
    10402e8e1384:	4c 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r8
    10402e8e138b:	4c 8b c1                                        	mov    r8,rcx
    10402e8e138e:	4c 2b c6                                        	sub    r8,rsi
    10402e8e1391:	4c 0f af 85 b0 fd ff ff                         	imul   r8,QWORD PTR [rbp-0x250]
    10402e8e1399:	48 63 b5 60 fe ff ff                            	movsxd rsi,DWORD PTR [rbp-0x1a0]
    10402e8e13a0:	49 2b f4                                        	sub    rsi,r12
    10402e8e13a3:	48 0f af f3                                     	imul   rsi,rbx
    10402e8e13a7:	4c 63 a5 50 fd ff ff                            	movsxd r12,DWORD PTR [rbp-0x2b0]
    10402e8e13ae:	49 2b cc                                        	sub    rcx,r12
    10402e8e13b1:	48 0f af cf                                     	imul   rcx,rdi
    10402e8e13b5:	4c 8b e7                                        	mov    r12,rdi
    10402e8e13b8:	49 c1 fc 3f                                     	sar    r12,0x3f
    10402e8e13bc:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    10402e8e13c0:	49 33 fc                                        	xor    rdi,r12
    10402e8e13c3:	49 2b fc                                        	sub    rdi,r12
    10402e8e13c6:	4c 8b e3                                        	mov    r12,rbx
    10402e8e13c9:	49 c1 fc 3f                                     	sar    r12,0x3f
    10402e8e13cd:	48 89 9d 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],rbx
    10402e8e13d4:	49 33 dc                                        	xor    rbx,r12
    10402e8e13d7:	49 2b dc                                        	sub    rbx,r12
    10402e8e13da:	48 03 fb                                        	add    rdi,rbx
    10402e8e13dd:	48 81 ff ff ff 7f 00                            	cmp    rdi,0x7fffff
    10402e8e13e4:	0f 86 09 00 00 00                               	jbe    0x10402e8e13f3
    10402e8e13ea:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    10402e8e13ee:	e9 1a 00 00 00                                  	jmp    0x10402e8e140d
    10402e8e13f3:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8e13f7:	41 bc ff ff ff 7f                               	mov    r12d,0x7fffffff
    10402e8e13fd:	4c 2b e7                                        	sub    r12,rdi
    10402e8e1400:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    10402e8e1404:	49 3b fc                                        	cmp    rdi,r12
    10402e8e1407:	0f 8e 0e 00 00 00                               	jle    0x10402e8e141b
    10402e8e140d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    10402e8e1413:	49 8b dc                                        	mov    rbx,r12
    10402e8e1416:	e9 06 00 00 00                                  	jmp    0x10402e8e1421
    10402e8e141b:	45 33 e4                                        	xor    r12d,r12d
    10402e8e141e:	49 8b dc                                        	mov    rbx,r12
    10402e8e1421:	4c 03 c2                                        	add    r8,rdx
    10402e8e1424:	4c 03 f8                                        	add    r15,rax
    10402e8e1427:	48 8b 85 e0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x220]
    10402e8e142e:	83 bd b8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x248],0x0
    10402e8e1435:	48 0f 45 85 48 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x2b8]
    10402e8e143d:	48 8b 95 a0 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x260]
    10402e8e1444:	83 bd 20 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e0],0x0
    10402e8e144b:	48 0f 45 95 48 fd ff ff                         	cmovne rdx,QWORD PTR [rbp-0x2b8]
    10402e8e1453:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    10402e8e145a:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    10402e8e1461:	4c 0f 45 a5 a8 fd ff ff                         	cmovne r12,QWORD PTR [rbp-0x258]
    10402e8e1469:	48 89 85 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rax
    10402e8e1470:	48 8b 85 40 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2c0]
    10402e8e1477:	83 bd 08 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f8],0x0
    10402e8e147e:	48 0f 45 85 a8 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x258]
    10402e8e1486:	48 89 95 08 fb ff ff                            	mov    QWORD PTR [rbp-0x4f8],rdx
    10402e8e148d:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    10402e8e1494:	45 85 c9                                        	test   r9d,r9d
    10402e8e1497:	49 0f 45 d3                                     	cmovne rdx,r11
    10402e8e149b:	4c 8b 8d 78 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x188]
    10402e8e14a2:	83 bd 68 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x198],0x0
    10402e8e14a9:	4d 0f 45 cb                                     	cmovne r9,r11
    10402e8e14ad:	4c 8d 1c 31                                     	lea    r11,[rcx+rsi*1]
    10402e8e14b1:	48 8b b5 80 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x280]
    10402e8e14b8:	48 f7 de                                        	neg    rsi
    10402e8e14bb:	48 8b 8d f0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x210]
    10402e8e14c2:	48 f7 d9                                        	neg    rcx
    10402e8e14c5:	48 89 b5 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rsi
    10402e8e14cc:	48 8b b5 38 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1c8]
    10402e8e14d3:	48 f7 de                                        	neg    rsi
    10402e8e14d6:	c4 e1 82 2a ef                                  	vcvtsi2ss xmm5,xmm15,rdi
    10402e8e14db:	48 89 b5 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rsi
    10402e8e14e2:	48 8b b5 b0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x250]
    10402e8e14e9:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8e14ed:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    10402e8e14f4:	4c 8b bd b0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x250]
    10402e8e14fb:	4c 33 fe                                        	xor    r15,rsi
    10402e8e14fe:	4c 2b fe                                        	sub    r15,rsi
    10402e8e1501:	48 8b b5 f0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x210]
    10402e8e1508:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8e150c:	4c 89 a5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r12
    10402e8e1513:	4c 8b a5 f0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x210]
    10402e8e151a:	4c 33 e6                                        	xor    r12,rsi
    10402e8e151d:	4c 2b e6                                        	sub    r12,rsi
    10402e8e1520:	4d 03 e7                                        	add    r12,r15
    10402e8e1523:	48 89 85 90 fb ff ff                            	mov    QWORD PTR [rbp-0x470],rax
    10402e8e152a:	4c 89 8d f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r9
    10402e8e1531:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    10402e8e1538:	48 89 8d d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rcx
    10402e8e153f:	49 81 fc ff ff 7f 00                            	cmp    r12,0x7fffff
    10402e8e1546:	0f 87 16 00 00 00                               	ja     0x10402e8e1562
    10402e8e154c:	49 c1 e4 08                                     	shl    r12,0x8
    10402e8e1550:	41 bf ff ff ff 7f                               	mov    r15d,0x7fffffff
    10402e8e1556:	4d 2b fc                                        	sub    r15,r12
    10402e8e1559:	49 3b ff                                        	cmp    rdi,r15
    10402e8e155c:	0f 8e 1b 00 00 00                               	jle    0x10402e8e157d
    10402e8e1562:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8e1566:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8e156b:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8e1570:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    10402e8e1574:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    10402e8e1578:	e9 60 04 00 00                                  	jmp    0x10402e8e19dd
    10402e8e157d:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8e1581:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8e1586:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8e158b:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    10402e8e158f:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    10402e8e1593:	85 db                                           	test   ebx,ebx
    10402e8e1595:	0f 85 42 04 00 00                               	jne    0x10402e8e19dd
    10402e8e159b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e159e:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8e15a2:	45 8b bc 3c d8 00 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0xd8]
    10402e8e15aa:	c4 c1 79 6e f7                                  	vmovd  xmm6,r15d
    10402e8e15af:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8e15b4:	41 8b 9c 3c f0 00 00 00                         	mov    ebx,DWORD PTR [r12+rdi*1+0xf0]
    10402e8e15bc:	c4 e3 49 22 f3 01                               	vpinsrd xmm6,xmm6,ebx,0x1
    10402e8e15c2:	41 8b b4 3c 08 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x108]
    10402e8e15ca:	c4 e3 49 22 f6 02                               	vpinsrd xmm6,xmm6,esi,0x2
    10402e8e15d0:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    10402e8e15d7:	41 8b b4 3c 20 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x120]
    10402e8e15df:	c4 e3 49 22 f6 03                               	vpinsrd xmm6,xmm6,esi,0x3
    10402e8e15e5:	48 89 b5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rsi
    10402e8e15ec:	41 8b b4 3c d0 00 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0xd0]
    10402e8e15f4:	c5 79 6e c6                                     	vmovd  xmm8,esi
    10402e8e15f8:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8e15fd:	48 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rbx
    10402e8e1604:	41 8b 9c 3c e8 00 00 00                         	mov    ebx,DWORD PTR [r12+rdi*1+0xe8]
    10402e8e160c:	c4 63 39 22 c3 01                               	vpinsrd xmm8,xmm8,ebx,0x1
    10402e8e1612:	4c 89 bd 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r15
    10402e8e1619:	45 8b bc 3c 00 01 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0x100]
    10402e8e1621:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    10402e8e1627:	41 8b 8c 3c 18 01 00 00                         	mov    ecx,DWORD PTR [r12+rdi*1+0x118]
    10402e8e162f:	c4 63 39 22 c1 03                               	vpinsrd xmm8,xmm8,ecx,0x3
    10402e8e1635:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    10402e8e1638:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    10402e8e163b:	81 ff 01 00 01 00                               	cmp    edi,0x10001
    10402e8e1641:	0f 8d 87 03 00 00                               	jge    0x10402e8e19ce
    10402e8e1647:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    10402e8e164e:	8b 7d 40                                        	mov    edi,DWORD PTR [rbp+0x40]
    10402e8e1651:	c5 79 6e cf                                     	vmovd  xmm9,edi
    10402e8e1655:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8e165a:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    10402e8e165e:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    10402e8e1663:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e1668:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    10402e8e166b:	2b 7d 18                                        	sub    edi,DWORD PTR [rbp+0x18]
    10402e8e166e:	4c 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r8
    10402e8e1675:	81 ff 00 00 01 00                               	cmp    edi,0x10000
    10402e8e167b:	0f 8f 22 03 00 00                               	jg     0x10402e8e19a3
    10402e8e1681:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    10402e8e1688:	4d 8b c3                                        	mov    r8,r11
    10402e8e168b:	4c 03 c7                                        	add    r8,rdi
    10402e8e168e:	48 b8 00 00 00 00 ff ff ff ff                   	movabs rax,0xffffffff00000000
    10402e8e1698:	4c 3b c0                                        	cmp    r8,rax
    10402e8e169b:	0f 82 02 03 00 00                               	jb     0x10402e8e19a3
    10402e8e16a1:	4f 8d 04 19                                     	lea    r8,[r9+r11*1]
    10402e8e16a5:	44 8b 4d 10                                     	mov    r9d,DWORD PTR [rbp+0x10]
    10402e8e16a9:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    10402e8e16ad:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    10402e8e16b0:	44 03 c8                                        	add    r9d,eax
    10402e8e16b3:	4d 63 c9                                        	movsxd r9,r9d
    10402e8e16b6:	48 8b 85 20 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1e0]
    10402e8e16bd:	49 0f af c1                                     	imul   rax,r9
    10402e8e16c1:	48 c1 e0 08                                     	shl    rax,0x8
    10402e8e16c5:	4c 89 8d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r9
    10402e8e16cc:	4c 8b c8                                        	mov    r9,rax
    10402e8e16cf:	49 c1 f9 3f                                     	sar    r9,0x3f
    10402e8e16d3:	4c 23 c8                                        	and    r9,rax
    10402e8e16d6:	4d 03 c1                                        	add    r8,r9
    10402e8e16d9:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8e16dd:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    10402e8e16e1:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    10402e8e16e4:	44 03 cf                                        	add    r9d,edi
    10402e8e16e7:	4d 63 c9                                        	movsxd r9,r9d
    10402e8e16ea:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8e16ee:	49 0f af f9                                     	imul   rdi,r9
    10402e8e16f2:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8e16f6:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    10402e8e16fd:	4c 8b cf                                        	mov    r9,rdi
    10402e8e1700:	49 c1 f9 3f                                     	sar    r9,0x3f
    10402e8e1704:	4c 23 cf                                        	and    r9,rdi
    10402e8e1707:	4d 03 c1                                        	add    r8,r9
    10402e8e170a:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    10402e8e1711:	0f 8c 8c 02 00 00                               	jl     0x10402e8e19a3
    10402e8e1717:	4e 8d 04 1a                                     	lea    r8,[rdx+r11*1]
    10402e8e171b:	45 33 db                                        	xor    r11d,r11d
    10402e8e171e:	48 85 c0                                        	test   rax,rax
    10402e8e1721:	4c 0f 4f d8                                     	cmovg  r11,rax
    10402e8e1725:	4d 03 c3                                        	add    r8,r11
    10402e8e1728:	45 33 db                                        	xor    r11d,r11d
    10402e8e172b:	48 85 ff                                        	test   rdi,rdi
    10402e8e172e:	4c 0f 4f df                                     	cmovg  r11,rdi
    10402e8e1732:	4b 8d 3c 03                                     	lea    rdi,[r11+r8*1]
    10402e8e1736:	45 33 c9                                        	xor    r9d,r9d
    10402e8e1739:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    10402e8e1740:	0f 8f 56 02 00 00                               	jg     0x10402e8e199c
    10402e8e1746:	42 8d 3c 26                                     	lea    edi,[rsi+r12*1]
    10402e8e174a:	c5 79 6e df                                     	vmovd  xmm11,edi
    10402e8e174e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8e1753:	42 8d 3c 23                                     	lea    edi,[rbx+r12*1]
    10402e8e1757:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    10402e8e175d:	43 8d 3c 27                                     	lea    edi,[r15+r12*1]
    10402e8e1761:	c4 63 21 22 df 02                               	vpinsrd xmm11,xmm11,edi,0x2
    10402e8e1767:	42 8d 3c 21                                     	lea    edi,[rcx+r12*1]
    10402e8e176b:	c4 63 21 22 df 03                               	vpinsrd xmm11,xmm11,edi,0x3
    10402e8e1771:	4c 8b 85 60 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1a0]
    10402e8e1778:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    10402e8e177f:	4c 03 c7                                        	add    r8,rdi
    10402e8e1782:	4c 8b 1d 07 ff ff ff                            	mov    r11,QWORD PTR [rip+0xffffffffffffff07]        # 0x10402e8e1690
    10402e8e1789:	4d 3b c3                                        	cmp    r8,r11
    10402e8e178c:	0f 82 e3 01 00 00                               	jb     0x10402e8e1975
    10402e8e1792:	4c 8b 85 90 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x470]
    10402e8e1799:	4c 8b bd 60 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a0]
    10402e8e17a0:	4b 8d 04 38                                     	lea    rax,[r8+r15*1]
    10402e8e17a4:	48 8b 9d 68 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x198]
    10402e8e17ab:	48 0f af 9d d8 fb ff ff                         	imul   rbx,QWORD PTR [rbp-0x428]
    10402e8e17b3:	48 c1 e3 08                                     	shl    rbx,0x8
    10402e8e17b7:	48 8b cb                                        	mov    rcx,rbx
    10402e8e17ba:	48 c1 f9 3f                                     	sar    rcx,0x3f
    10402e8e17be:	48 23 cb                                        	and    rcx,rbx
    10402e8e17c1:	48 03 c1                                        	add    rax,rcx
    10402e8e17c4:	48 8b 8d b0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x250]
    10402e8e17cb:	48 0f af 8d 58 fe ff ff                         	imul   rcx,QWORD PTR [rbp-0x1a8]
    10402e8e17d3:	48 c1 e1 08                                     	shl    rcx,0x8
    10402e8e17d7:	48 8b f1                                        	mov    rsi,rcx
    10402e8e17da:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8e17de:	48 23 f1                                        	and    rsi,rcx
    10402e8e17e1:	48 03 c6                                        	add    rax,rsi
    10402e8e17e4:	48 3d 01 00 00 80                               	cmp    rax,0xffffffff80000001
    10402e8e17ea:	0f 8c 8c 01 00 00                               	jl     0x10402e8e197c
    10402e8e17f0:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    10402e8e17f7:	4a 8d 34 38                                     	lea    rsi,[rax+r15*1]
    10402e8e17fb:	4d 8b c1                                        	mov    r8,r9
    10402e8e17fe:	48 85 db                                        	test   rbx,rbx
    10402e8e1801:	4c 0f 4f c3                                     	cmovg  r8,rbx
    10402e8e1805:	4c 03 c6                                        	add    r8,rsi
    10402e8e1808:	49 8b d9                                        	mov    rbx,r9
    10402e8e180b:	48 85 c9                                        	test   rcx,rcx
    10402e8e180e:	48 0f 4f d9                                     	cmovg  rbx,rcx
    10402e8e1812:	4c 03 c3                                        	add    r8,rbx
    10402e8e1815:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    10402e8e181c:	0f 8f 5a 01 00 00                               	jg     0x10402e8e197c
    10402e8e1822:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8e1826:	8b 9d 48 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1b8]
    10402e8e182c:	41 03 d8                                        	add    ebx,r8d
    10402e8e182f:	c5 79 6e e3                                     	vmovd  xmm12,ebx
    10402e8e1833:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e1838:	8b 9d 08 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1f8]
    10402e8e183e:	41 03 d8                                        	add    ebx,r8d
    10402e8e1841:	c4 63 19 22 e3 01                               	vpinsrd xmm12,xmm12,ebx,0x1
    10402e8e1847:	8b 9d e0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x220]
    10402e8e184d:	41 03 d8                                        	add    ebx,r8d
    10402e8e1850:	c4 63 19 22 e3 02                               	vpinsrd xmm12,xmm12,ebx,0x2
    10402e8e1856:	8b 9d 78 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x188]
    10402e8e185c:	41 03 d8                                        	add    ebx,r8d
    10402e8e185f:	c4 63 19 22 e3 03                               	vpinsrd xmm12,xmm12,ebx,0x3
    10402e8e1865:	48 03 bd d0 fd ff ff                            	add    rdi,QWORD PTR [rbp-0x230]
    10402e8e186c:	49 3b fb                                        	cmp    rdi,r11
    10402e8e186f:	0f 82 ef 00 00 00                               	jb     0x10402e8e1964
    10402e8e1875:	48 8b bd 08 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x4f8]
    10402e8e187c:	4c 8b 9d d0 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x230]
    10402e8e1883:	49 8d 1c 3b                                     	lea    rbx,[r11+rdi*1]
    10402e8e1887:	48 8b 8d 68 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x198]
    10402e8e188e:	48 0f af 8d 10 fe ff ff                         	imul   rcx,QWORD PTR [rbp-0x1f0]
    10402e8e1896:	48 c1 e1 08                                     	shl    rcx,0x8
    10402e8e189a:	48 8b f1                                        	mov    rsi,rcx
    10402e8e189d:	48 c1 fe 3f                                     	sar    rsi,0x3f
    10402e8e18a1:	48 23 f1                                        	and    rsi,rcx
    10402e8e18a4:	48 03 de                                        	add    rbx,rsi
    10402e8e18a7:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    10402e8e18ae:	48 0f af 75 c0                                  	imul   rsi,QWORD PTR [rbp-0x40]
    10402e8e18b3:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8e18b7:	48 8b fe                                        	mov    rdi,rsi
    10402e8e18ba:	48 c1 ff 3f                                     	sar    rdi,0x3f
    10402e8e18be:	48 23 fe                                        	and    rdi,rsi
    10402e8e18c1:	48 03 fb                                        	add    rdi,rbx
    10402e8e18c4:	48 81 ff 01 00 00 80                            	cmp    rdi,0xffffffff80000001
    10402e8e18cb:	0f 8c 93 00 00 00                               	jl     0x10402e8e1964
    10402e8e18d1:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    10402e8e18d8:	49 8d 1c 3b                                     	lea    rbx,[r11+rdi*1]
    10402e8e18dc:	49 8b f9                                        	mov    rdi,r9
    10402e8e18df:	48 85 c9                                        	test   rcx,rcx
    10402e8e18e2:	48 0f 4f f9                                     	cmovg  rdi,rcx
    10402e8e18e6:	48 03 fb                                        	add    rdi,rbx
    10402e8e18e9:	48 85 f6                                        	test   rsi,rsi
    10402e8e18ec:	4c 0f 4f ce                                     	cmovg  r9,rsi
    10402e8e18f0:	49 03 f9                                        	add    rdi,r9
    10402e8e18f3:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    10402e8e18fa:	0f 8f 53 00 00 00                               	jg     0x10402e8e1953
    10402e8e1900:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e1903:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1907:	8b 8c 3b e0 00 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0xe0]
    10402e8e190e:	8b 75 48                                        	mov    esi,DWORD PTR [rbp+0x48]
    10402e8e1911:	03 ce                                           	add    ecx,esi
    10402e8e1913:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    10402e8e1917:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e191c:	8b 8c 3b f8 00 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0xf8]
    10402e8e1923:	03 ce                                           	add    ecx,esi
    10402e8e1925:	c4 e3 79 22 c1 01                               	vpinsrd xmm0,xmm0,ecx,0x1
    10402e8e192b:	8b 8c 3b 10 01 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0x110]
    10402e8e1932:	03 ce                                           	add    ecx,esi
    10402e8e1934:	c4 e3 79 22 c1 02                               	vpinsrd xmm0,xmm0,ecx,0x2
    10402e8e193a:	8b 8c 3b 28 01 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0x128]
    10402e8e1941:	03 ce                                           	add    ecx,esi
    10402e8e1943:	c4 e3 79 22 c1 03                               	vpinsrd xmm0,xmm0,ecx,0x3
    10402e8e1949:	33 ff                                           	xor    edi,edi
    10402e8e194b:	44 8b df                                        	mov    r11d,edi
    10402e8e194e:	e9 e0 00 00 00                                  	jmp    0x10402e8e1a33
    10402e8e1953:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1957:	33 ff                                           	xor    edi,edi
    10402e8e1959:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8e195f:	e9 cf 00 00 00                                  	jmp    0x10402e8e1a33
    10402e8e1964:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1968:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8e196e:	33 ff                                           	xor    edi,edi
    10402e8e1970:	e9 be 00 00 00                                  	jmp    0x10402e8e1a33
    10402e8e1975:	4c 8b bd 60 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a0]
    10402e8e197c:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8e1980:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    10402e8e1987:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e198b:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8e1991:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    10402e8e1995:	33 ff                                           	xor    edi,edi
    10402e8e1997:	e9 97 00 00 00                                  	jmp    0x10402e8e1a33
    10402e8e199c:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    10402e8e19a3:	4c 8b bd 60 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a0]
    10402e8e19aa:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8e19ae:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    10402e8e19b5:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e19b9:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    10402e8e19bd:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8e19c1:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8e19c7:	33 ff                                           	xor    edi,edi
    10402e8e19c9:	e9 65 00 00 00                                  	jmp    0x10402e8e1a33
    10402e8e19ce:	45 33 e4                                        	xor    r12d,r12d
    10402e8e19d1:	48 8b 8d d8 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x428]
    10402e8e19d8:	e9 14 00 00 00                                  	jmp    0x10402e8e19f1
    10402e8e19dd:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    10402e8e19e0:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    10402e8e19e3:	41 bc 01 00 00 00                               	mov    r12d,0x1
    10402e8e19e9:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8e19ed:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8e19f1:	c5 79 6e 4d 40                                  	vmovd  xmm9,DWORD PTR [rbp+0x40]
    10402e8e19f6:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8e19fb:	c5 79 6e 55 38                                  	vmovd  xmm10,DWORD PTR [rbp+0x38]
    10402e8e1a00:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e1a05:	4d 8b f8                                        	mov    r15,r8
    10402e8e1a08:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    10402e8e1a0c:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8e1a10:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    10402e8e1a17:	41 8b fc                                        	mov    edi,r12d
    10402e8e1a1a:	41 bb 01 00 00 00                               	mov    r11d,0x1
    10402e8e1a20:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1a24:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    10402e8e1a2b:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    10402e8e1a2f:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    10402e8e1a33:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    10402e8e1a37:	8b 8c 33 c8 3c 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x3cc8]
    10402e8e1a3e:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    10402e8e1a46:	c5 78 11 85 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm8
    10402e8e1a4e:	48 89 bd 20 fb ff ff                            	mov    QWORD PTR [rbp-0x4e0],rdi
    10402e8e1a55:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    10402e8e1a5d:	c5 78 11 95 20 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3e0],xmm10
    10402e8e1a65:	4c 89 9d a0 fb ff ff                            	mov    QWORD PTR [rbp-0x460],r11
    10402e8e1a6c:	83 bc 33 c8 3c 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x3cc8],0x0
    10402e8e1a74:	0f 85 7c 00 00 00                               	jne    0x10402e8e1af6
    10402e8e1a7a:	8b 8c 33 ec 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0xec]
    10402e8e1a81:	83 bc 33 ec 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0xec],0x0
    10402e8e1a89:	0f 85 67 00 00 00                               	jne    0x10402e8e1af6
    10402e8e1a8f:	8b 8d 78 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x288]
    10402e8e1a95:	44 8b 8c 0b 30 01 00 00                         	mov    r9d,DWORD PTR [rbx+rcx*1+0x130]
    10402e8e1a9d:	83 bc 0b 30 01 00 00 00                         	cmp    DWORD PTR [rbx+rcx*1+0x130],0x0
    10402e8e1aa5:	0f 85 0b 00 00 00                               	jne    0x10402e8e1ab6
    10402e8e1aab:	41 b9 01 00 00 00                               	mov    r9d,0x1
    10402e8e1ab1:	e9 43 00 00 00                                  	jmp    0x10402e8e1af9
    10402e8e1ab6:	44 8b 8c 0b 38 01 00 00                         	mov    r9d,DWORD PTR [rbx+rcx*1+0x138]
    10402e8e1abe:	83 bc 0b 38 01 00 00 00                         	cmp    DWORD PTR [rbx+rcx*1+0x138],0x0
    10402e8e1ac6:	0f 85 1f 00 00 00                               	jne    0x10402e8e1aeb
    10402e8e1acc:	8b 8c 0b 34 01 00 00                            	mov    ecx,DWORD PTR [rbx+rcx*1+0x134]
    10402e8e1ad3:	83 f9 01                                        	cmp    ecx,0x1
    10402e8e1ad6:	0f 84 0f 00 00 00                               	je     0x10402e8e1aeb
    10402e8e1adc:	45 33 c9                                        	xor    r9d,r9d
    10402e8e1adf:	83 f9 02                                        	cmp    ecx,0x2
    10402e8e1ae2:	41 0f 94 c1                                     	sete   r9b
    10402e8e1ae6:	e9 0e 00 00 00                                  	jmp    0x10402e8e1af9
    10402e8e1aeb:	41 b9 01 00 00 00                               	mov    r9d,0x1
    10402e8e1af1:	e9 03 00 00 00                                  	jmp    0x10402e8e1af9
    10402e8e1af6:	45 33 c9                                        	xor    r9d,r9d
    10402e8e1af9:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    10402e8e1b00:	83 bd 88 fd ff ff 04                            	cmp    DWORD PTR [rbp-0x278],0x4
    10402e8e1b07:	0f 84 0a 00 00 00                               	je     0x10402e8e1b17
    10402e8e1b0d:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8e1b12:	e9 50 01 00 00                                  	jmp    0x10402e8e1c67
    10402e8e1b17:	8b 8c 33 80 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x80]
    10402e8e1b1e:	83 bc 33 80 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x80],0x0
    10402e8e1b26:	0f 85 69 00 00 00                               	jne    0x10402e8e1b95
    10402e8e1b2c:	8b 8c 33 a4 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0xa4]
    10402e8e1b33:	83 bc 33 a4 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0xa4],0x0
    10402e8e1b3b:	0f 85 54 00 00 00                               	jne    0x10402e8e1b95
    10402e8e1b41:	8b 8c 33 30 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x530]
    10402e8e1b48:	83 bc 33 30 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x530],0x0
    10402e8e1b50:	0f 85 3f 00 00 00                               	jne    0x10402e8e1b95
    10402e8e1b56:	8b 8c 33 70 37 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x3770]
    10402e8e1b5d:	83 bc 33 70 37 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x3770],0x0
    10402e8e1b65:	0f 85 2a 00 00 00                               	jne    0x10402e8e1b95
    10402e8e1b6b:	8b 8c 33 74 37 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x3774]
    10402e8e1b72:	83 bc 33 74 37 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x3774],0x0
    10402e8e1b7a:	0f 85 15 00 00 00                               	jne    0x10402e8e1b95
    10402e8e1b80:	8b 8c 33 20 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x520]
    10402e8e1b87:	83 bc 33 20 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x520],0x0
    10402e8e1b8f:	0f 85 0a 00 00 00                               	jne    0x10402e8e1b9f
    10402e8e1b95:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8e1b9a:	e9 c8 00 00 00                                  	jmp    0x10402e8e1c67
    10402e8e1b9f:	8b 8c 33 24 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x524]
    10402e8e1ba6:	83 bc 33 24 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x524],0x0
    10402e8e1bae:	74 e5                                           	je     0x10402e8e1b95
    10402e8e1bb0:	8b 8c 33 28 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x528]
    10402e8e1bb7:	83 bc 33 28 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x528],0x0
    10402e8e1bbf:	74 d4                                           	je     0x10402e8e1b95
    10402e8e1bc1:	8b 8c 33 2c 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x52c]
    10402e8e1bc8:	83 bc 33 2c 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x52c],0x0
    10402e8e1bd0:	74 c3                                           	je     0x10402e8e1b95
    10402e8e1bd2:	8b 4c 33 74                                     	mov    ecx,DWORD PTR [rbx+rsi*1+0x74]
    10402e8e1bd6:	83 7c 33 74 00                                  	cmp    DWORD PTR [rbx+rsi*1+0x74],0x0
    10402e8e1bdb:	0f 84 34 00 00 00                               	je     0x10402e8e1c15
    10402e8e1be1:	8b 4c 33 78                                     	mov    ecx,DWORD PTR [rbx+rsi*1+0x78]
    10402e8e1be5:	45 33 c9                                        	xor    r9d,r9d
    10402e8e1be8:	81 f9 02 03 00 00                               	cmp    ecx,0x302
    10402e8e1bee:	41 0f 95 c1                                     	setne  r9b
    10402e8e1bf2:	83 f9 01                                        	cmp    ecx,0x1
    10402e8e1bf5:	0f 95 c1                                        	setne  cl
    10402e8e1bf8:	0f b6 c9                                        	movzx  ecx,cl
    10402e8e1bfb:	41 85 c9                                        	test   r9d,ecx
    10402e8e1bfe:	75 95                                           	jne    0x10402e8e1b95
    10402e8e1c00:	8b 4c 33 7c                                     	mov    ecx,DWORD PTR [rbx+rsi*1+0x7c]
    10402e8e1c04:	81 f9 03 03 00 00                               	cmp    ecx,0x303
    10402e8e1c0a:	0f 84 05 00 00 00                               	je     0x10402e8e1c15
    10402e8e1c10:	83 f9 01                                        	cmp    ecx,0x1
    10402e8e1c13:	75 80                                           	jne    0x10402e8e1b95
    10402e8e1c15:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    10402e8e1c1c:	0f 85 07 00 00 00                               	jne    0x10402e8e1c29
    10402e8e1c22:	33 c9                                           	xor    ecx,ecx
    10402e8e1c24:	e9 3e 00 00 00                                  	jmp    0x10402e8e1c67
    10402e8e1c29:	8b 8c 33 90 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x90]
    10402e8e1c30:	83 bc 33 90 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x90],0x0
    10402e8e1c38:	0f 85 57 ff ff ff                               	jne    0x10402e8e1b95
    10402e8e1c3e:	8b 8c 33 94 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x94]
    10402e8e1c45:	83 bc 33 94 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x94],0x0
    10402e8e1c4d:	0f 85 42 ff ff ff                               	jne    0x10402e8e1b95
    10402e8e1c53:	8b 8c 33 98 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x98]
    10402e8e1c5a:	33 c9                                           	xor    ecx,ecx
    10402e8e1c5c:	83 bc 33 98 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x98],0x0
    10402e8e1c64:	0f 95 c1                                        	setne  cl
    10402e8e1c67:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e1c6b:	42 c7 44 0b 18 00 00 00 00                      	mov    DWORD PTR [rbx+r9*1+0x18],0x0
    10402e8e1c74:	48 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rcx
    10402e8e1c7b:	8b 8d d8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x228]
    10402e8e1c81:	83 f9 08                                        	cmp    ecx,0x8
    10402e8e1c84:	0f 8c 33 02 00 00                               	jl     0x10402e8e1ebd
    10402e8e1c8a:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    10402e8e1c8d:	2b 75 18                                        	sub    esi,DWORD PTR [rbp+0x18]
    10402e8e1c90:	48 63 f6                                        	movsxd rsi,esi
    10402e8e1c93:	48 8b f9                                        	mov    rdi,rcx
    10402e8e1c96:	48 0f af fe                                     	imul   rdi,rsi
    10402e8e1c9a:	48 83 ff 40                                     	cmp    rdi,0x40
    10402e8e1c9e:	0f 8c 19 02 00 00                               	jl     0x10402e8e1ebd
    10402e8e1ca4:	8b bd 50 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x2b0]
    10402e8e1caa:	3b bd 28 fe ff ff                               	cmp    edi,DWORD PTR [rbp-0x1d8]
    10402e8e1cb0:	0f 84 80 00 00 00                               	je     0x10402e8e1d36
    10402e8e1cb6:	48 8b b5 20 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1e0]
    10402e8e1cbd:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8e1cc1:	c4 61 82 2a ee                                  	vcvtsi2ss xmm13,xmm15,rsi
    10402e8e1cc6:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    10402e8e1cca:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    10402e8e1ccf:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    10402e8e1cd4:	c4 41 6a 5e ed                                  	vdivss xmm13,xmm2,xmm13
    10402e8e1cd9:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    10402e8e1cde:	48 8b 75 b8                                     	mov    rsi,QWORD PTR [rbp-0x48]
    10402e8e1ce2:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8e1ce6:	c4 e1 82 2a d6                                  	vcvtsi2ss xmm2,xmm15,rsi
    10402e8e1ceb:	c5 92 59 d2                                     	vmulss xmm2,xmm13,xmm2
    10402e8e1cef:	49 63 f4                                        	movsxd rsi,r12d
    10402e8e1cf2:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8e1cf9:	4c 8d 1c 1a                                     	lea    r11,[rdx+rbx*1]
    10402e8e1cfd:	4c 03 de                                        	add    r11,rsi
    10402e8e1d00:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    10402e8e1d05:	49 ba 60 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b860
    10402e8e1d0f:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    10402e8e1d14:	c5 12 59 eb                                     	vmulss xmm13,xmm13,xmm3
    10402e8e1d18:	c4 41 79 28 fd                                  	vmovapd xmm15,xmm13
    10402e8e1d1d:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    10402e8e1d21:	c4 c1 79 28 d7                                  	vmovapd xmm2,xmm15
    10402e8e1d26:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1d2a:	44 8b 9d a0 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x460]
    10402e8e1d31:	e9 08 00 00 00                                  	jmp    0x10402e8e1d3e
    10402e8e1d36:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    10402e8e1d3a:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8e1d3e:	8b b5 00 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x500]
    10402e8e1d44:	3b b5 28 fe ff ff                               	cmp    esi,DWORD PTR [rbp-0x1d8]
    10402e8e1d4a:	0f 84 79 00 00 00                               	je     0x10402e8e1dc9
    10402e8e1d50:	4c 8b 9d d8 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x428]
    10402e8e1d57:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8e1d5b:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    10402e8e1d60:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    10402e8e1d64:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    10402e8e1d69:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    10402e8e1d6e:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    10402e8e1d72:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    10402e8e1d76:	4c 8b 9d b0 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x250]
    10402e8e1d7d:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8e1d81:	c4 c1 82 2a e3                                  	vcvtsi2ss xmm4,xmm15,r11
    10402e8e1d86:	c5 e2 59 e4                                     	vmulss xmm4,xmm3,xmm4
    10402e8e1d8a:	4d 63 d8                                        	movsxd r11,r8d
    10402e8e1d8d:	4a 8d 1c 38                                     	lea    rbx,[rax+r15*1]
    10402e8e1d91:	4c 03 db                                        	add    r11,rbx
    10402e8e1d94:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    10402e8e1d99:	4c 8b 15 67 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff67]        # 0x10402e8e1d07
    10402e8e1da0:	c4 c1 48 57 32                                  	vxorps xmm6,xmm6,XMMWORD PTR [r10]
    10402e8e1da5:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    10402e8e1da9:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e8e1dad:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    10402e8e1db1:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1db5:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    10402e8e1dbd:	44 8b 9d a0 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x460]
    10402e8e1dc4:	e9 08 00 00 00                                  	jmp    0x10402e8e1dd1
    10402e8e1dc9:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    10402e8e1dcd:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    10402e8e1dd1:	3b f7                                           	cmp    esi,edi
    10402e8e1dd3:	0f 84 be 00 00 00                               	je     0x10402e8e1e97
    10402e8e1dd9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    10402e8e1de0:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8e1de4:	c4 41 82 2a c3                                  	vcvtsi2ss xmm8,xmm15,r11
    10402e8e1de9:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8e1dee:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    10402e8e1df4:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    10402e8e1dfa:	c4 41 32 5e c0                                  	vdivss xmm8,xmm9,xmm8
    10402e8e1dff:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    10402e8e1e04:	4c 8b 5d c0                                     	mov    r11,QWORD PTR [rbp-0x40]
    10402e8e1e08:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8e1e0c:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    10402e8e1e11:	c4 41 3a 59 c9                                  	vmulss xmm9,xmm8,xmm9
    10402e8e1e16:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    10402e8e1e1a:	4c 8b 9d d0 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x230]
    10402e8e1e21:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    10402e8e1e28:	49 8d 1c 03                                     	lea    rbx,[r11+rax*1]
    10402e8e1e2c:	48 03 fb                                        	add    rdi,rbx
    10402e8e1e2f:	c4 61 82 2a d7                                  	vcvtsi2ss xmm10,xmm15,rdi
    10402e8e1e34:	4c 8b 15 cc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffecc]        # 0x10402e8e1d07
    10402e8e1e3b:	c4 41 28 57 12                                  	vxorps xmm10,xmm10,XMMWORD PTR [r10]
    10402e8e1e40:	c4 41 3a 59 c2                                  	vmulss xmm8,xmm8,xmm10
    10402e8e1e45:	c5 fb 11 95 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm2
    10402e8e1e4d:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    10402e8e1e51:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    10402e8e1e56:	44 8b 9d a0 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x460]
    10402e8e1e5d:	c5 fb 11 a5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm4
    10402e8e1e65:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    10402e8e1e6a:	bf 01 00 00 00                                  	mov    edi,0x1
    10402e8e1e6f:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    10402e8e1e73:	c5 78 10 85 c0 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x240]
    10402e8e1e7b:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    10402e8e1e82:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    10402e8e1e8a:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    10402e8e1e92:	e9 48 00 00 00                                  	jmp    0x10402e8e1edf
    10402e8e1e97:	c5 fb 11 95 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm2
    10402e8e1e9f:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    10402e8e1ea3:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    10402e8e1ea7:	bf 01 00 00 00                                  	mov    edi,0x1
    10402e8e1eac:	c5 fb 11 a5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm4
    10402e8e1eb4:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    10402e8e1eb8:	e9 22 00 00 00                                  	jmp    0x10402e8e1edf
    10402e8e1ebd:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    10402e8e1ec1:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8e1ec5:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    10402e8e1ec9:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    10402e8e1ecd:	c5 fb 11 bd 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm7
    10402e8e1ed5:	c5 fb 11 bd 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm7
    10402e8e1edd:	33 ff                                           	xor    edi,edi
    10402e8e1edf:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    10402e8e1ee2:	3b 75 18                                        	cmp    esi,DWORD PTR [rbp+0x18]
    10402e8e1ee5:	0f 8e f0 8a 00 00                               	jle    0x10402e8ea9db
    10402e8e1eeb:	c5 7b 11 ad a0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x360],xmm13
    10402e8e1ef3:	c4 41 f9 6e ef                                  	vmovq  xmm13,r15
    10402e8e1ef8:	c4 41 7b 12 ed                                  	vmovddup xmm13,xmm13
    10402e8e1efd:	c4 63 91 22 ad d0 fd ff ff 01                   	vpinsrq xmm13,xmm13,QWORD PTR [rbp-0x230],0x1
    10402e8e1f07:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    10402e8e1f0e:	49 c1 e7 08                                     	shl    r15,0x8
    10402e8e1f12:	44 8d 59 ff                                     	lea    r11d,[rcx-0x1]
    10402e8e1f16:	4d 63 db                                        	movsxd r11,r11d
    10402e8e1f19:	4c 89 bd 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],r15
    10402e8e1f20:	4d 0f af fb                                     	imul   r15,r11
    10402e8e1f24:	48 89 bd 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdi
    10402e8e1f2b:	49 8b ff                                        	mov    rdi,r15
    10402e8e1f2e:	48 f7 d7                                        	not    rdi
    10402e8e1f31:	48 89 bd 78 fb ff ff                            	mov    QWORD PTR [rbp-0x488],rdi
    10402e8e1f38:	48 8b bd d8 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x428]
    10402e8e1f3f:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8e1f43:	48 89 bd 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdi
    10402e8e1f4a:	49 0f af fb                                     	imul   rdi,r11
    10402e8e1f4e:	48 89 bd 30 fb ff ff                            	mov    QWORD PTR [rbp-0x4d0],rdi
    10402e8e1f55:	48 f7 d7                                        	not    rdi
    10402e8e1f58:	48 8b b5 20 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1e0]
    10402e8e1f5f:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8e1f63:	4c 0f af de                                     	imul   r11,rsi
    10402e8e1f67:	4c 89 9d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r11
    10402e8e1f6e:	49 f7 d3                                        	not    r11
    10402e8e1f71:	c5 fb 11 95 98 fc ff ff                         	vmovsd QWORD PTR [rbp-0x368],xmm2
    10402e8e1f79:	c5 fb 12 95 b0 fd ff ff                         	vmovddup xmm2,QWORD PTR [rbp-0x250]
    10402e8e1f81:	c4 e3 e9 22 55 c0 01                            	vpinsrq xmm2,xmm2,QWORD PTR [rbp-0x40],0x1
    10402e8e1f88:	c5 e9 73 f2 08                                  	vpsllq xmm2,xmm2,0x8
    10402e8e1f8d:	48 89 bd b8 fb ff ff                            	mov    QWORD PTR [rbp-0x448],rdi
    10402e8e1f94:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8e1f98:	48 c1 e7 08                                     	shl    rdi,0x8
    10402e8e1f9c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e1f9f:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    10402e8e1fa3:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    10402e8e1fa9:	48 89 bd 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],rdi
    10402e8e1fb0:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    10402e8e1fb6:	48 89 bd 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rdi
    10402e8e1fbd:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    10402e8e1fc3:	48 89 bd 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdi
    10402e8e1fca:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    10402e8e1fd0:	48 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],rdi
    10402e8e1fd7:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    10402e8e1fdd:	8b 85 e8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x218]
    10402e8e1fe3:	48 89 bd e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],rdi
    10402e8e1fea:	8d 78 50                                        	lea    edi,[rax+0x50]
    10402e8e1fed:	8b 85 70 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x190]
    10402e8e1ff3:	48 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rdi
    10402e8e1ffa:	8d 78 50                                        	lea    edi,[rax+0x50]
    10402e8e1ffd:	8b 85 50 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b0]
    10402e8e2003:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    10402e8e200a:	8d 78 50                                        	lea    edi,[rax+0x50]
    10402e8e200d:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    10402e8e2010:	83 f0 ff                                        	xor    eax,0xffffffff
    10402e8e2013:	48 89 bd 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdi
    10402e8e201a:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    10402e8e201d:	4c 89 9d d0 fb ff ff                            	mov    QWORD PTR [rbp-0x430],r11
    10402e8e2024:	44 8d 5f 02                                     	lea    r11d,[rdi+0x2]
    10402e8e2028:	48 8b bd b0 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x250]
    10402e8e202f:	48 2b bd f0 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x210]
    10402e8e2036:	48 c1 e7 07                                     	shl    rdi,0x7
    10402e8e203a:	48 89 bd 70 fb ff ff                            	mov    QWORD PTR [rbp-0x490],rdi
    10402e8e2041:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    10402e8e2045:	48 2b bd 38 fe ff ff                            	sub    rdi,QWORD PTR [rbp-0x1c8]
    10402e8e204c:	48 c1 e7 07                                     	shl    rdi,0x7
    10402e8e2050:	48 89 bd f8 fa ff ff                            	mov    QWORD PTR [rbp-0x508],rdi
    10402e8e2057:	8d 79 fe                                        	lea    edi,[rcx-0x2]
    10402e8e205a:	c5 f8 11 55 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm2
    10402e8e205f:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    10402e8e2063:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    10402e8e2067:	4d 63 c0                                        	movsxd r8,r8d
    10402e8e206a:	4d 63 e4                                        	movsxd r12,r12d
    10402e8e206d:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    10402e8e2074:	41 8d b9 90 00 00 00                            	lea    edi,[r9+0x90]
    10402e8e207b:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    10402e8e2082:	45 8d 41 18                                     	lea    r8d,[r9+0x18]
    10402e8e2086:	41 83 c8 04                                     	or     r8d,0x4
    10402e8e208a:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    10402e8e208f:	c5 fb 11 9d 88 fc ff ff                         	vmovsd QWORD PTR [rbp-0x378],xmm3
    10402e8e2097:	c4 e2 79 18 dd                                  	vbroadcastss xmm3,xmm5
    10402e8e209c:	c5 fb 11 ad f8 fc ff ff                         	vmovsd QWORD PTR [rbp-0x308],xmm5
    10402e8e20a4:	c5 82 2a e9                                     	vcvtsi2ss xmm5,xmm15,ecx
    10402e8e20a8:	41 8d 89 60 01 00 00                            	lea    ecx,[r9+0x160]
    10402e8e20af:	4c 89 85 e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r8
    10402e8e20b6:	45 8d 81 50 01 00 00                            	lea    r8d,[r9+0x150]
    10402e8e20bd:	48 89 95 f0 fa ff ff                            	mov    QWORD PTR [rbp-0x510],rdx
    10402e8e20c4:	c5 78 11 a5 f0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x410],xmm12
    10402e8e20cc:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    10402e8e20d4:	c5 78 11 9d e0 fa ff ff                         	vmovups XMMWORD PTR [rbp-0x520],xmm11
    10402e8e20dc:	4c 89 bd 38 fb ff ff                            	mov    QWORD PTR [rbp-0x4c8],r15
    10402e8e20e3:	48 89 b5 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rsi
    10402e8e20ea:	48 89 85 b0 fb ff ff                            	mov    QWORD PTR [rbp-0x450],rax
    10402e8e20f1:	4c 89 9d a8 fb ff ff                            	mov    QWORD PTR [rbp-0x458],r11
    10402e8e20f8:	c5 fb 11 95 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm2
    10402e8e2100:	4c 89 a5 98 fb ff ff                            	mov    QWORD PTR [rbp-0x468],r12
    10402e8e2107:	48 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rdi
    10402e8e210e:	c5 f8 11 8d 80 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x480],xmm1
    10402e8e2116:	c5 f8 11 9d 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm3
    10402e8e211e:	c5 fb 11 ad 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm5
    10402e8e2126:	48 89 8d 18 fb ff ff                            	mov    QWORD PTR [rbp-0x4e8],rcx
    10402e8e212d:	4c 89 85 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],r8
    10402e8e2134:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8e2138:	c5 fb 10 b5 48 fb ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x4b8]
    10402e8e2140:	c5 fb 10 ad 30 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x2d0]
    10402e8e2148:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8e214f:	48 c7 85 d8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x228],0x0
    10402e8e215a:	8b 7d 18                                        	mov    edi,DWORD PTR [rbp+0x18]
    10402e8e215d:	c4 c1 79 28 d8                                  	vmovapd xmm3,xmm8
    10402e8e2162:	48 8b c2                                        	mov    rax,rdx
    10402e8e2165:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    10402e8e216a:	45 8b cb                                        	mov    r9d,r11d
    10402e8e216d:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8e2171:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    10402e8e2175:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    10402e8e217b:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    10402e8e2181:	e9 4c 00 00 00                                  	jmp    0x10402e8e21d2
    10402e8e2186:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e218f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e2198:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e21a1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e21aa:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e21b3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e21bc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    10402e8e21c0:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    10402e8e21c4:	4c 8b a5 98 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x468]
    10402e8e21cb:	48 8b 85 f0 fa ff ff                            	mov    rax,QWORD PTR [rbp-0x510]
    10402e8e21d2:	48 8b 8d d0 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x430]
    10402e8e21d9:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e21de:	0f 85 c8 89 00 00                               	jne    0x10402e8eabac
    10402e8e21e4:	83 bd 90 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x370],0x0
    10402e8e21eb:	0f 85 19 00 00 00                               	jne    0x10402e8e220a
    10402e8e21f1:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    10402e8e21f8:	45 8b c7                                        	mov    r8d,r15d
    10402e8e21fb:	45 8b e3                                        	mov    r12d,r11d
    10402e8e21fe:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e2205:	e9 6f 05 00 00                                  	jmp    0x10402e8e2779
    10402e8e220a:	4c 8d 04 18                                     	lea    r8,[rax+rbx*1]
    10402e8e220e:	4d 03 c4                                        	add    r8,r12
    10402e8e2211:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    10402e8e2218:	0f 8c f1 00 00 00                               	jl     0x10402e8e230f
    10402e8e221e:	3b d6                                           	cmp    edx,esi
    10402e8e2220:	0f 84 e2 00 00 00                               	je     0x10402e8e2308
    10402e8e2226:	4d 85 c0                                        	test   r8,r8
    10402e8e2229:	0f 8c cd 00 00 00                               	jl     0x10402e8e22fc
    10402e8e222f:	49 3b c8                                        	cmp    rcx,r8
    10402e8e2232:	0f 8c 78 00 00 00                               	jl     0x10402e8e22b0
    10402e8e2238:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8e223c:	0f 87 79 00 00 00                               	ja     0x10402e8e22bb
    10402e8e2242:	c5 f8 2e ad 38 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x1c8]
    10402e8e224a:	0f 83 60 00 00 00                               	jae    0x10402e8e22b0
    10402e8e2250:	4c 8b 15 fe e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7fe]        # 0x10402e8e0a55
    10402e8e2257:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    10402e8e225c:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8e2260:	0f 87 0b 00 00 00                               	ja     0x10402e8e2271
    10402e8e2266:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    10402e8e226c:	e9 29 00 00 00                                  	jmp    0x10402e8e229a
    10402e8e2271:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    10402e8e2277:	c5 fa 2c c0                                     	vcvttss2si eax,xmm0
    10402e8e227b:	c5 02 2a d0                                     	vcvtsi2ss xmm10,xmm15,eax
    10402e8e227f:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8e2284:	0f 8a 2c 8c 00 00                               	jp     0x10402e8eaeb6
    10402e8e228a:	0f 85 26 8c 00 00                               	jne    0x10402e8eaeb6
    10402e8e2290:	44 8b e0                                        	mov    r12d,eax
    10402e8e2293:	48 8b 85 f0 fa ff ff                            	mov    rax,QWORD PTR [rbp-0x510]
    10402e8e229a:	45 03 e1                                        	add    r12d,r9d
    10402e8e229d:	4c 89 a5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r12
    10402e8e22a4:	4c 8b a5 98 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x468]
    10402e8e22ab:	e9 12 00 00 00                                  	jmp    0x10402e8e22c2
    10402e8e22b0:	45 8b c7                                        	mov    r8d,r15d
    10402e8e22b3:	45 8b e3                                        	mov    r12d,r11d
    10402e8e22b6:	e9 ee 00 00 00                                  	jmp    0x10402e8e23a9
    10402e8e22bb:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    10402e8e22c2:	44 3b bd 68 fe ff ff                            	cmp    r15d,DWORD PTR [rbp-0x198]
    10402e8e22c9:	7e e5                                           	jle    0x10402e8e22b0
    10402e8e22cb:	44 8b a5 68 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x198]
    10402e8e22d2:	45 2b e3                                        	sub    r12d,r11d
    10402e8e22d5:	4d 63 e4                                        	movsxd r12,r12d
    10402e8e22d8:	4c 0f af a5 68 fc ff ff                         	imul   r12,QWORD PTR [rbp-0x398]
    10402e8e22e0:	4d 03 c4                                        	add    r8,r12
    10402e8e22e3:	45 8b e7                                        	mov    r12d,r15d
    10402e8e22e6:	4d 85 c0                                        	test   r8,r8
    10402e8e22e9:	44 0f 4c a5 68 fe ff ff                         	cmovl  r12d,DWORD PTR [rbp-0x198]
    10402e8e22f1:	45 8b c4                                        	mov    r8d,r12d
    10402e8e22f4:	45 8b e3                                        	mov    r12d,r11d
    10402e8e22f7:	e9 ad 00 00 00                                  	jmp    0x10402e8e23a9
    10402e8e22fc:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e2303:	e9 ad 68 00 00                                  	jmp    0x10402e8e8bb5
    10402e8e2308:	4d 85 c0                                        	test   r8,r8
    10402e8e230b:	7c ef                                           	jl     0x10402e8e22fc
    10402e8e230d:	eb a1                                           	jmp    0x10402e8e22b0
    10402e8e230f:	4c 8b a5 18 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2e8]
    10402e8e2316:	4b 8d 04 04                                     	lea    rax,[r12+r8*1]
    10402e8e231a:	48 85 c0                                        	test   rax,rax
    10402e8e231d:	7c dd                                           	jl     0x10402e8e22fc
    10402e8e231f:	4d 85 c0                                        	test   r8,r8
    10402e8e2322:	7d 8c                                           	jge    0x10402e8e22b0
    10402e8e2324:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8e2328:	73 86                                           	jae    0x10402e8e22b0
    10402e8e232a:	4c 8b 15 24 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe724]        # 0x10402e8e0a55
    10402e8e2331:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    10402e8e2336:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8e233a:	0f 87 0a 00 00 00                               	ja     0x10402e8e234a
    10402e8e2340:	b8 00 00 00 80                                  	mov    eax,0x80000000
    10402e8e2345:	e9 1f 00 00 00                                  	jmp    0x10402e8e2369
    10402e8e234a:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    10402e8e2350:	c5 fa 2c c0                                     	vcvttss2si eax,xmm0
    10402e8e2354:	c5 02 2a d0                                     	vcvtsi2ss xmm10,xmm15,eax
    10402e8e2358:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8e235d:	0f 8a 4e 8b 00 00                               	jp     0x10402e8eaeb1
    10402e8e2363:	0f 85 48 8b 00 00                               	jne    0x10402e8eaeb1
    10402e8e2369:	41 03 c3                                        	add    eax,r11d
    10402e8e236c:	c5 f8 2e ad 78 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x188]
    10402e8e2374:	41 0f 43 c7                                     	cmovae eax,r15d
    10402e8e2378:	41 3b c3                                        	cmp    eax,r11d
    10402e8e237b:	0f 8e 2f ff ff ff                               	jle    0x10402e8e22b0
    10402e8e2381:	44 8b a5 b0 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x450]
    10402e8e2388:	41 8d 0c 04                                     	lea    ecx,[r12+rax*1]
    10402e8e238c:	48 63 c9                                        	movsxd rcx,ecx
    10402e8e238f:	48 0f af 8d 68 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x398]
    10402e8e2397:	4c 03 c1                                        	add    r8,rcx
    10402e8e239a:	41 8b cb                                        	mov    ecx,r11d
    10402e8e239d:	4d 85 c0                                        	test   r8,r8
    10402e8e23a0:	0f 4c c8                                        	cmovl  ecx,eax
    10402e8e23a3:	45 8b c7                                        	mov    r8d,r15d
    10402e8e23a6:	44 8b e1                                        	mov    r12d,ecx
    10402e8e23a9:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    10402e8e23af:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    10402e8e23b6:	48 03 c1                                        	add    rax,rcx
    10402e8e23b9:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e23c0:	48 03 c1                                        	add    rax,rcx
    10402e8e23c3:	83 bd 18 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e8],0x0
    10402e8e23ca:	0f 8d de 00 00 00                               	jge    0x10402e8e24ae
    10402e8e23d0:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    10402e8e23d7:	48 8b 8d 30 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x4d0]
    10402e8e23de:	48 8d 1c 01                                     	lea    rbx,[rcx+rax*1]
    10402e8e23e2:	48 85 db                                        	test   rbx,rbx
    10402e8e23e5:	0f 8c b0 00 00 00                               	jl     0x10402e8e249b
    10402e8e23eb:	48 85 c0                                        	test   rax,rax
    10402e8e23ee:	0f 8d 94 00 00 00                               	jge    0x10402e8e2488
    10402e8e23f4:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e23f8:	0f 83 8a 00 00 00                               	jae    0x10402e8e2488
    10402e8e23fe:	4c 8b 15 50 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe650]        # 0x10402e8e0a55
    10402e8e2405:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    10402e8e240a:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8e240e:	0f 87 0a 00 00 00                               	ja     0x10402e8e241e
    10402e8e2414:	bb 00 00 00 80                                  	mov    ebx,0x80000000
    10402e8e2419:	e9 1f 00 00 00                                  	jmp    0x10402e8e243d
    10402e8e241e:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    10402e8e2424:	c5 fa 2c d8                                     	vcvttss2si ebx,xmm0
    10402e8e2428:	c5 02 2a d3                                     	vcvtsi2ss xmm10,xmm15,ebx
    10402e8e242c:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8e2431:	0f 8a 75 8a 00 00                               	jp     0x10402e8eaeac
    10402e8e2437:	0f 85 6f 8a 00 00                               	jne    0x10402e8eaeac
    10402e8e243d:	41 03 db                                        	add    ebx,r11d
    10402e8e2440:	c5 f8 2e b5 78 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x188]
    10402e8e2448:	41 0f 43 df                                     	cmovae ebx,r15d
    10402e8e244c:	41 3b dc                                        	cmp    ebx,r12d
    10402e8e244f:	0f 8e 33 00 00 00                               	jle    0x10402e8e2488
    10402e8e2455:	44 8b bd b0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x450]
    10402e8e245c:	41 8d 0c 1f                                     	lea    ecx,[r15+rbx*1]
    10402e8e2460:	48 63 c9                                        	movsxd rcx,ecx
    10402e8e2463:	48 0f af 8d 58 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x3a8]
    10402e8e246b:	48 03 c1                                        	add    rax,rcx
    10402e8e246e:	48 85 c0                                        	test   rax,rax
    10402e8e2471:	44 0f 4c e3                                     	cmovl  r12d,ebx
    10402e8e2475:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e247c:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8e2483:	e9 09 01 00 00                                  	jmp    0x10402e8e2591
    10402e8e2488:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e248f:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8e2496:	e9 f6 00 00 00                                  	jmp    0x10402e8e2591
    10402e8e249b:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e24a2:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8e24a9:	e9 07 67 00 00                                  	jmp    0x10402e8e8bb5
    10402e8e24ae:	3b b5 00 fb ff ff                               	cmp    esi,DWORD PTR [rbp-0x500]
    10402e8e24b4:	0f 84 c7 00 00 00                               	je     0x10402e8e2581
    10402e8e24ba:	48 85 c0                                        	test   rax,rax
    10402e8e24bd:	0f 8c f2 66 00 00                               	jl     0x10402e8e8bb5
    10402e8e24c3:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    10402e8e24ca:	4c 8b bd b8 fb ff ff                            	mov    r15,QWORD PTR [rbp-0x448]
    10402e8e24d1:	4c 3b f8                                        	cmp    r15,rax
    10402e8e24d4:	0f 8c b7 00 00 00                               	jl     0x10402e8e2591
    10402e8e24da:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e24de:	0f 87 62 00 00 00                               	ja     0x10402e8e2546
    10402e8e24e4:	c5 f8 2e b5 38 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x1c8]
    10402e8e24ec:	0f 83 9f 00 00 00                               	jae    0x10402e8e2591
    10402e8e24f2:	4c 8b 15 5c e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe55c]        # 0x10402e8e0a55
    10402e8e24f9:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    10402e8e24fe:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8e2502:	0f 87 0a 00 00 00                               	ja     0x10402e8e2512
    10402e8e2508:	be 00 00 00 80                                  	mov    esi,0x80000000
    10402e8e250d:	e9 1f 00 00 00                                  	jmp    0x10402e8e2531
    10402e8e2512:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    10402e8e2518:	c5 fa 2c f0                                     	vcvttss2si esi,xmm0
    10402e8e251c:	c5 02 2a d6                                     	vcvtsi2ss xmm10,xmm15,esi
    10402e8e2520:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8e2525:	0f 8a 7c 89 00 00                               	jp     0x10402e8eaea7
    10402e8e252b:	0f 85 76 89 00 00                               	jne    0x10402e8eaea7
    10402e8e2531:	41 03 f1                                        	add    esi,r9d
    10402e8e2534:	48 89 b5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rsi
    10402e8e253b:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    10402e8e2541:	e9 07 00 00 00                                  	jmp    0x10402e8e254d
    10402e8e2546:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    10402e8e254d:	44 3b 85 68 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x198]
    10402e8e2554:	0f 8e 37 00 00 00                               	jle    0x10402e8e2591
    10402e8e255a:	8b b5 68 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x198]
    10402e8e2560:	41 2b f3                                        	sub    esi,r11d
    10402e8e2563:	48 63 f6                                        	movsxd rsi,esi
    10402e8e2566:	48 0f af b5 58 fc ff ff                         	imul   rsi,QWORD PTR [rbp-0x3a8]
    10402e8e256e:	48 03 c6                                        	add    rax,rsi
    10402e8e2571:	48 85 c0                                        	test   rax,rax
    10402e8e2574:	44 0f 4c 85 68 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x198]
    10402e8e257c:	e9 10 00 00 00                                  	jmp    0x10402e8e2591
    10402e8e2581:	48 85 c0                                        	test   rax,rax
    10402e8e2584:	0f 8c 2b 66 00 00                               	jl     0x10402e8e8bb5
    10402e8e258a:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    10402e8e2591:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    10402e8e2597:	4c 8b bd 00 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x200]
    10402e8e259e:	49 03 c7                                        	add    rax,r15
    10402e8e25a1:	48 8b b5 08 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1f8]
    10402e8e25a8:	48 03 c6                                        	add    rax,rsi
    10402e8e25ab:	83 bd d0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x330],0x0
    10402e8e25b2:	0f 8d cb 00 00 00                               	jge    0x10402e8e2683
    10402e8e25b8:	4c 8b bd 38 fb ff ff                            	mov    r15,QWORD PTR [rbp-0x4c8]
    10402e8e25bf:	49 8d 34 07                                     	lea    rsi,[r15+rax*1]
    10402e8e25c3:	48 85 f6                                        	test   rsi,rsi
    10402e8e25c6:	0f 8c a8 00 00 00                               	jl     0x10402e8e2674
    10402e8e25cc:	48 85 c0                                        	test   rax,rax
    10402e8e25cf:	0f 8d a4 01 00 00                               	jge    0x10402e8e2779
    10402e8e25d5:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    10402e8e25d9:	0f 83 5d 00 00 00                               	jae    0x10402e8e263c
    10402e8e25df:	c5 f8 2e a5 78 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x188]
    10402e8e25e7:	0f 83 47 00 00 00                               	jae    0x10402e8e2634
    10402e8e25ed:	4c 8b 15 61 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe461]        # 0x10402e8e0a55
    10402e8e25f4:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    10402e8e25f9:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8e25fd:	0f 87 0a 00 00 00                               	ja     0x10402e8e260d
    10402e8e2603:	be 00 00 00 80                                  	mov    esi,0x80000000
    10402e8e2608:	e9 1f 00 00 00                                  	jmp    0x10402e8e262c
    10402e8e260d:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    10402e8e2613:	c5 fa 2c f0                                     	vcvttss2si esi,xmm0
    10402e8e2617:	c5 02 2a d6                                     	vcvtsi2ss xmm10,xmm15,esi
    10402e8e261b:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8e2620:	0f 8a 7c 88 00 00                               	jp     0x10402e8eaea2
    10402e8e2626:	0f 85 76 88 00 00                               	jne    0x10402e8eaea2
    10402e8e262c:	41 03 f3                                        	add    esi,r11d
    10402e8e262f:	e9 0b 00 00 00                                  	jmp    0x10402e8e263f
    10402e8e2634:	8b 75 20                                        	mov    esi,DWORD PTR [rbp+0x20]
    10402e8e2637:	e9 03 00 00 00                                  	jmp    0x10402e8e263f
    10402e8e263c:	41 8b f3                                        	mov    esi,r11d
    10402e8e263f:	41 3b f4                                        	cmp    esi,r12d
    10402e8e2642:	0f 8e 31 01 00 00                               	jle    0x10402e8e2779
    10402e8e2648:	44 8b bd b0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x450]
    10402e8e264f:	41 8d 0c 37                                     	lea    ecx,[r15+rsi*1]
    10402e8e2653:	48 63 c9                                        	movsxd rcx,ecx
    10402e8e2656:	48 0f af 8d 48 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x3b8]
    10402e8e265e:	48 03 c1                                        	add    rax,rcx
    10402e8e2661:	48 85 c0                                        	test   rax,rax
    10402e8e2664:	44 0f 4c e6                                     	cmovl  r12d,esi
    10402e8e2668:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e266f:	e9 05 01 00 00                                  	jmp    0x10402e8e2779
    10402e8e2674:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    10402e8e267a:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    10402e8e267e:	e9 32 65 00 00                                  	jmp    0x10402e8e8bb5
    10402e8e2683:	3b 95 00 fb ff ff                               	cmp    edx,DWORD PTR [rbp-0x500]
    10402e8e2689:	0f 84 e1 00 00 00                               	je     0x10402e8e2770
    10402e8e268f:	48 85 c0                                        	test   rax,rax
    10402e8e2692:	7c e0                                           	jl     0x10402e8e2674
    10402e8e2694:	48 8b 95 78 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x488]
    10402e8e269b:	48 3b d0                                        	cmp    rdx,rax
    10402e8e269e:	0f 8c c1 00 00 00                               	jl     0x10402e8e2765
    10402e8e26a4:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    10402e8e26a8:	0f 87 75 00 00 00                               	ja     0x10402e8e2723
    10402e8e26ae:	c5 f8 2e a5 38 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x1c8]
    10402e8e26b6:	0f 83 57 00 00 00                               	jae    0x10402e8e2713
    10402e8e26bc:	4c 8b 15 92 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe392]        # 0x10402e8e0a55
    10402e8e26c3:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    10402e8e26c8:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    10402e8e26cc:	0f 87 0b 00 00 00                               	ja     0x10402e8e26dd
    10402e8e26d2:	41 bf 00 00 00 80                               	mov    r15d,0x80000000
    10402e8e26d8:	e9 20 00 00 00                                  	jmp    0x10402e8e26fd
    10402e8e26dd:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    10402e8e26e3:	c5 7a 2c f8                                     	vcvttss2si r15d,xmm0
    10402e8e26e7:	c4 41 02 2a d7                                  	vcvtsi2ss xmm10,xmm15,r15d
    10402e8e26ec:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    10402e8e26f1:	0f 8a a6 87 00 00                               	jp     0x10402e8eae9d
    10402e8e26f7:	0f 85 a0 87 00 00                               	jne    0x10402e8eae9d
    10402e8e26fd:	45 03 f9                                        	add    r15d,r9d
    10402e8e2700:	4c 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r15
    10402e8e2707:	4c 8b bd 00 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x200]
    10402e8e270e:	e9 17 00 00 00                                  	jmp    0x10402e8e272a
    10402e8e2713:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    10402e8e2717:	4c 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r10
    10402e8e271e:	e9 07 00 00 00                                  	jmp    0x10402e8e272a
    10402e8e2723:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    10402e8e272a:	44 3b 85 68 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x198]
    10402e8e2731:	0f 8e 2e 00 00 00                               	jle    0x10402e8e2765
    10402e8e2737:	44 8b bd 68 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x198]
    10402e8e273e:	45 2b fb                                        	sub    r15d,r11d
    10402e8e2741:	4d 63 ff                                        	movsxd r15,r15d
    10402e8e2744:	4c 0f af bd 48 fc ff ff                         	imul   r15,QWORD PTR [rbp-0x3b8]
    10402e8e274c:	4c 03 f8                                        	add    r15,rax
    10402e8e274f:	4d 85 ff                                        	test   r15,r15
    10402e8e2752:	44 0f 4c 85 68 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x198]
    10402e8e275a:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    10402e8e2760:	e9 14 00 00 00                                  	jmp    0x10402e8e2779
    10402e8e2765:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    10402e8e276b:	e9 09 00 00 00                                  	jmp    0x10402e8e2779
    10402e8e2770:	48 85 c0                                        	test   rax,rax
    10402e8e2773:	0f 8c fb fe ff ff                               	jl     0x10402e8e2674
    10402e8e2779:	45 3b c4                                        	cmp    r8d,r12d
    10402e8e277c:	0f 8e f2 fe ff ff                               	jle    0x10402e8e2674
    10402e8e2782:	44 8b ff                                        	mov    r15d,edi
    10402e8e2785:	41 83 cf 03                                     	or     r15d,0x3
    10402e8e2789:	8b c7                                           	mov    eax,edi
    10402e8e278b:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8e2790:	8b f0                                           	mov    esi,eax
    10402e8e2792:	83 ce 02                                        	or     esi,0x2
    10402e8e2795:	48 89 85 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rax
    10402e8e279c:	83 c8 01                                        	or     eax,0x1
    10402e8e279f:	4c 89 85 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],r8
    10402e8e27a6:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
    10402e8e27ae:	4c 89 bd 28 fb ff ff                            	mov    QWORD PTR [rbp-0x4d8],r15
    10402e8e27b5:	45 8b f8                                        	mov    r15d,r8d
    10402e8e27b8:	41 83 e7 0c                                     	and    r15d,0xc
    10402e8e27bc:	41 83 e0 7c                                     	and    r8d,0x7c
    10402e8e27c0:	4c 89 85 f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r8
    10402e8e27c7:	45 8b c4                                        	mov    r8d,r12d
    10402e8e27ca:	45 2b c3                                        	sub    r8d,r11d
    10402e8e27cd:	4d 63 c0                                        	movsxd r8,r8d
    10402e8e27d0:	49 c1 e0 08                                     	shl    r8,0x8
    10402e8e27d4:	48 8b 95 20 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1e0]
    10402e8e27db:	49 0f af d0                                     	imul   rdx,r8
    10402e8e27df:	48 03 d3                                        	add    rdx,rbx
    10402e8e27e2:	48 8b 9d d8 fb ff ff                            	mov    rbx,QWORD PTR [rbp-0x428]
    10402e8e27e9:	49 0f af d8                                     	imul   rbx,r8
    10402e8e27ed:	48 89 b5 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rsi
    10402e8e27f4:	c4 63 f9 16 ee 00                               	vpextrq rsi,xmm13,0x0
    10402e8e27fa:	48 03 de                                        	add    rbx,rsi
    10402e8e27fd:	48 8b b5 10 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1f0]
    10402e8e2804:	49 0f af f0                                     	imul   rsi,r8
    10402e8e2808:	c4 43 f9 16 e8 01                               	vpextrq r8,xmm13,0x1
    10402e8e280e:	4c 03 c6                                        	add    r8,rsi
    10402e8e2811:	8b f7                                           	mov    esi,edi
    10402e8e2813:	c1 fe 02                                        	sar    esi,0x2
    10402e8e2816:	c1 e6 04                                        	shl    esi,0x4
    10402e8e2819:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    10402e8e281d:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    10402e8e2822:	c5 fb 11 ad 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm5
    10402e8e282a:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    10402e8e282f:	c5 fb 11 b5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm6
    10402e8e2837:	48 89 85 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rax
    10402e8e283e:	4c 89 bd e0 fb ff ff                            	mov    QWORD PTR [rbp-0x420],r15
    10402e8e2845:	48 89 b5 e8 fb ff ff                            	mov    QWORD PTR [rbp-0x418],rsi
    10402e8e284c:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    10402e8e2854:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    10402e8e285c:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    10402e8e2864:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    10402e8e286c:	e9 17 00 00 00                                  	jmp    0x10402e8e2888
    10402e8e2871:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e287a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e2880:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8e2888:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    10402e8e288f:	4c 8b 9d 08 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f8]
    10402e8e2896:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    10402e8e289d:	4c 8b 8d f0 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x510]
    10402e8e28a4:	48 8b 85 98 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x468]
    10402e8e28ab:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    10402e8e28b3:	4c 89 85 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r8
    10402e8e28ba:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e28bf:	0f 85 a1 83 00 00                               	jne    0x10402e8eac66
    10402e8e28c5:	83 bd a0 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x460],0x0
    10402e8e28cc:	0f 85 7d 00 00 00                               	jne    0x10402e8e294f
    10402e8e28d2:	44 8b fa                                        	mov    r15d,edx
    10402e8e28d5:	c4 41 79 6e cf                                  	vmovd  xmm9,r15d
    10402e8e28da:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8e28df:	c4 41 31 fe cb                                  	vpaddd xmm9,xmm9,xmm11
    10402e8e28e4:	45 8b f8                                        	mov    r15d,r8d
    10402e8e28e7:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    10402e8e28ec:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8e28f1:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    10402e8e28f5:	c4 41 31 eb db                                  	vpor   xmm11,xmm9,xmm11
    10402e8e28fa:	44 8b fb                                        	mov    r15d,ebx
    10402e8e28fd:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    10402e8e2902:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e2907:	c4 c1 79 fe c4                                  	vpaddd xmm0,xmm0,xmm12
    10402e8e290c:	c5 21 eb d8                                     	vpor   xmm11,xmm11,xmm0
    10402e8e2910:	c4 41 78 50 fb                                  	vmovmskps r15d,xmm11
    10402e8e2915:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8e2919:	0f 84 0c 62 00 00                               	je     0x10402e8e8b2b
    10402e8e291f:	41 83 f7 0f                                     	xor    r15d,0xf
    10402e8e2923:	c4 41 31 fa ca                                  	vpsubd xmm9,xmm9,xmm10
    10402e8e2928:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8e292d:	c5 f9 fa c2                                     	vpsubd xmm0,xmm0,xmm2
    10402e8e2931:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8e2935:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    10402e8e293c:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    10402e8e2943:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e2946:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e294a:	e9 af 02 00 00                                  	jmp    0x10402e8e2bfe
    10402e8e294f:	4c 8d 3c 10                                     	lea    r15,[rax+rdx*1]
    10402e8e2953:	4b 8d 04 39                                     	lea    rax,[r9+r15*1]
    10402e8e2957:	48 85 c0                                        	test   rax,rax
    10402e8e295a:	0f 8c cb 61 00 00                               	jl     0x10402e8e8b2b
    10402e8e2960:	48 8d 04 19                                     	lea    rax,[rcx+rbx*1]
    10402e8e2964:	4c 8d 0c 06                                     	lea    r9,[rsi+rax*1]
    10402e8e2968:	4d 85 c9                                        	test   r9,r9
    10402e8e296b:	0f 8c ba 61 00 00                               	jl     0x10402e8e8b2b
    10402e8e2971:	4f 8d 0c 03                                     	lea    r9,[r11+r8*1]
    10402e8e2975:	4e 8d 04 0f                                     	lea    r8,[rdi+r9*1]
    10402e8e2979:	4d 85 c0                                        	test   r8,r8
    10402e8e297c:	0f 8c a9 61 00 00                               	jl     0x10402e8e8b2b
    10402e8e2982:	4c 8b 85 f8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x208]
    10402e8e2989:	4b 8d 3c 38                                     	lea    rdi,[r8+r15*1]
    10402e8e298d:	48 85 ff                                        	test   rdi,rdi
    10402e8e2990:	0f 8c 3a 00 00 00                               	jl     0x10402e8e29d0
    10402e8e2996:	48 8b bd 90 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x470]
    10402e8e299d:	4c 8d 04 07                                     	lea    r8,[rdi+rax*1]
    10402e8e29a1:	4d 85 c0                                        	test   r8,r8
    10402e8e29a4:	0f 8c 26 00 00 00                               	jl     0x10402e8e29d0
    10402e8e29aa:	4c 8b 85 08 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x4f8]
    10402e8e29b1:	4b 8d 3c 08                                     	lea    rdi,[r8+r9*1]
    10402e8e29b5:	48 85 ff                                        	test   rdi,rdi
    10402e8e29b8:	0f 8c 12 00 00 00                               	jl     0x10402e8e29d0
    10402e8e29be:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    10402e8e29c4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e29c8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e29cb:	e9 35 01 00 00                                  	jmp    0x10402e8e2b05
    10402e8e29d0:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e29d3:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e29d7:	4d 8b 9c 38 d0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd0]
    10402e8e29df:	4d 03 df                                        	add    r11,r15
    10402e8e29e2:	4d 85 db                                        	test   r11,r11
    10402e8e29e5:	0f 8c 2f 00 00 00                               	jl     0x10402e8e2a1a
    10402e8e29eb:	4d 8b 9c 38 d8 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd8]
    10402e8e29f3:	4c 03 d8                                        	add    r11,rax
    10402e8e29f6:	4d 85 db                                        	test   r11,r11
    10402e8e29f9:	0f 8c 1b 00 00 00                               	jl     0x10402e8e2a1a
    10402e8e29ff:	4d 8b 9c 38 e0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xe0]
    10402e8e2a07:	4d 03 d9                                        	add    r11,r9
    10402e8e2a0a:	4d 85 db                                        	test   r11,r11
    10402e8e2a0d:	41 0f 9d c3                                     	setge  r11b
    10402e8e2a11:	45 0f b6 db                                     	movzx  r11d,r11b
    10402e8e2a15:	e9 03 00 00 00                                  	jmp    0x10402e8e2a1d
    10402e8e2a1a:	45 33 db                                        	xor    r11d,r11d
    10402e8e2a1d:	49 8b b4 38 e8 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xe8]
    10402e8e2a25:	49 03 f7                                        	add    rsi,r15
    10402e8e2a28:	48 85 f6                                        	test   rsi,rsi
    10402e8e2a2b:	0f 8c 36 00 00 00                               	jl     0x10402e8e2a67
    10402e8e2a31:	49 8b b4 38 f0 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xf0]
    10402e8e2a39:	48 03 f0                                        	add    rsi,rax
    10402e8e2a3c:	48 85 f6                                        	test   rsi,rsi
    10402e8e2a3f:	0f 8c 22 00 00 00                               	jl     0x10402e8e2a67
    10402e8e2a45:	41 8b f3                                        	mov    esi,r11d
    10402e8e2a48:	83 ce 02                                        	or     esi,0x2
    10402e8e2a4b:	49 8b 8c 38 f8 00 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0xf8]
    10402e8e2a53:	49 03 c9                                        	add    rcx,r9
    10402e8e2a56:	48 85 c9                                        	test   rcx,rcx
    10402e8e2a59:	41 0f 4c f3                                     	cmovl  esi,r11d
    10402e8e2a5d:	44 8b de                                        	mov    r11d,esi
    10402e8e2a60:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e2a67:	49 8b b4 38 00 01 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0x100]
    10402e8e2a6f:	49 03 f7                                        	add    rsi,r15
    10402e8e2a72:	48 85 f6                                        	test   rsi,rsi
    10402e8e2a75:	0f 8c 36 00 00 00                               	jl     0x10402e8e2ab1
    10402e8e2a7b:	49 8b b4 38 08 01 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0x108]
    10402e8e2a83:	48 03 f0                                        	add    rsi,rax
    10402e8e2a86:	48 85 f6                                        	test   rsi,rsi
    10402e8e2a89:	0f 8c 22 00 00 00                               	jl     0x10402e8e2ab1
    10402e8e2a8f:	41 8b f3                                        	mov    esi,r11d
    10402e8e2a92:	83 ce 04                                        	or     esi,0x4
    10402e8e2a95:	49 8b 8c 38 10 01 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0x110]
    10402e8e2a9d:	49 03 c9                                        	add    rcx,r9
    10402e8e2aa0:	48 85 c9                                        	test   rcx,rcx
    10402e8e2aa3:	41 0f 4c f3                                     	cmovl  esi,r11d
    10402e8e2aa7:	44 8b de                                        	mov    r11d,esi
    10402e8e2aaa:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e2ab1:	49 8b b4 38 18 01 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0x118]
    10402e8e2ab9:	4c 03 fe                                        	add    r15,rsi
    10402e8e2abc:	4d 85 ff                                        	test   r15,r15
    10402e8e2abf:	0f 8c 34 00 00 00                               	jl     0x10402e8e2af9
    10402e8e2ac5:	4d 8b bc 38 20 01 00 00                         	mov    r15,QWORD PTR [r8+rdi*1+0x120]
    10402e8e2acd:	4c 03 f8                                        	add    r15,rax
    10402e8e2ad0:	4d 85 ff                                        	test   r15,r15
    10402e8e2ad3:	0f 8c 20 00 00 00                               	jl     0x10402e8e2af9
    10402e8e2ad9:	4d 8b bc 38 28 01 00 00                         	mov    r15,QWORD PTR [r8+rdi*1+0x128]
    10402e8e2ae1:	4d 03 f9                                        	add    r15,r9
    10402e8e2ae4:	4d 85 ff                                        	test   r15,r15
    10402e8e2ae7:	0f 8c 0c 00 00 00                               	jl     0x10402e8e2af9
    10402e8e2aed:	41 83 cb 08                                     	or     r11d,0x8
    10402e8e2af1:	45 8b fb                                        	mov    r15d,r11d
    10402e8e2af4:	e9 0c 00 00 00                                  	jmp    0x10402e8e2b05
    10402e8e2af9:	45 85 db                                        	test   r11d,r11d
    10402e8e2afc:	0f 84 29 60 00 00                               	je     0x10402e8e8b2b
    10402e8e2b02:	45 8b fb                                        	mov    r15d,r11d
    10402e8e2b05:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    10402e8e2b0c:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    10402e8e2b13:	83 bd 20 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4e0],0x0
    10402e8e2b1a:	0f 85 30 00 00 00                               	jne    0x10402e8e2b50
    10402e8e2b20:	44 8b da                                        	mov    r11d,edx
    10402e8e2b23:	c4 41 79 6e cb                                  	vmovd  xmm9,r11d
    10402e8e2b28:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8e2b2d:	c5 31 fe cb                                     	vpaddd xmm9,xmm9,xmm3
    10402e8e2b31:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8e2b36:	44 8b db                                        	mov    r11d,ebx
    10402e8e2b39:	c4 c1 79 6e c3                                  	vmovd  xmm0,r11d
    10402e8e2b3e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e2b43:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    10402e8e2b47:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8e2b4b:	e9 ae 00 00 00                                  	jmp    0x10402e8e2bfe
    10402e8e2b50:	4d 8b 9c 38 d0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd0]
    10402e8e2b58:	4c 03 da                                        	add    r11,rdx
    10402e8e2b5b:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    10402e8e2b60:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8e2b65:	4d 8b 9c 38 e8 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xe8]
    10402e8e2b6d:	4c 03 da                                        	add    r11,rdx
    10402e8e2b70:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    10402e8e2b75:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    10402e8e2b7b:	4d 8b 9c 38 00 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x100]
    10402e8e2b83:	4c 03 da                                        	add    r11,rdx
    10402e8e2b86:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    10402e8e2b8b:	c4 63 31 21 c8 20                               	vinsertps xmm9,xmm9,xmm0,0x20
    10402e8e2b91:	4d 8b 9c 38 18 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x118]
    10402e8e2b99:	4c 03 da                                        	add    r11,rdx
    10402e8e2b9c:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    10402e8e2ba1:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    10402e8e2ba7:	4d 8b 9c 38 d8 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd8]
    10402e8e2baf:	4c 03 db                                        	add    r11,rbx
    10402e8e2bb2:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    10402e8e2bb7:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8e2bbc:	4d 8b 9c 38 f0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xf0]
    10402e8e2bc4:	4c 03 db                                        	add    r11,rbx
    10402e8e2bc7:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    10402e8e2bcc:	c4 c3 79 21 c2 10                               	vinsertps xmm0,xmm0,xmm10,0x10
    10402e8e2bd2:	4d 8b 9c 38 08 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x108]
    10402e8e2bda:	4c 03 db                                        	add    r11,rbx
    10402e8e2bdd:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    10402e8e2be2:	c4 c3 79 21 c2 20                               	vinsertps xmm0,xmm0,xmm10,0x20
    10402e8e2be8:	4d 8b 9c 38 20 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x120]
    10402e8e2bf0:	4c 03 db                                        	add    r11,rbx
    10402e8e2bf3:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    10402e8e2bf8:	c4 c3 79 21 c2 30                               	vinsertps xmm0,xmm0,xmm10,0x30
    10402e8e2bfe:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    10402e8e2c08:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e2c0d:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8e2c12:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8e2c17:	c4 41 50 59 c9                                  	vmulps xmm9,xmm5,xmm9
    10402e8e2c1c:	4d 8d 58 18                                     	lea    r11,[r8+0x18]
    10402e8e2c20:	48 8b 85 68 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x298]
    10402e8e2c27:	c4 42 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [r11+rax*1]
    10402e8e2c2d:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    10402e8e2c32:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    10402e8e2c36:	48 8b b5 70 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x290]
    10402e8e2c3d:	c4 c2 79 18 2c 33                               	vbroadcastss xmm5,DWORD PTR [r11+rsi*1]
    10402e8e2c43:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    10402e8e2c47:	c5 98 58 ed                                     	vaddps xmm5,xmm12,xmm5
    10402e8e2c4b:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x10402e8e2c00
    10402e8e2c52:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e2c57:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8e2c5c:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    10402e8e2c61:	c5 b0 5c c0                                     	vsubps xmm0,xmm9,xmm0
    10402e8e2c65:	4c 8b 8d 60 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2a0]
    10402e8e2c6c:	c4 02 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+r9*1]
    10402e8e2c72:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8e2c77:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    10402e8e2c7b:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    10402e8e2c7f:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    10402e8e2c83:	c5 78 c2 cd 01                                  	vcmpltps xmm9,xmm0,xmm5
    10402e8e2c88:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    10402e8e2c8c:	c5 18 c2 c8 01                                  	vcmpltps xmm9,xmm12,xmm0
    10402e8e2c91:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    10402e8e2c95:	c4 c1 29 db c1                                  	vpand  xmm0,xmm10,xmm9
    10402e8e2c9a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e2c9f:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    10402e8e2ca5:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e2ca9:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    10402e8e2cae:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8e2cb4:	0f 84 bc 00 00 00                               	je     0x10402e8e2d76
    10402e8e2cba:	43 8b 8c 18 a4 00 00 00                         	mov    ecx,DWORD PTR [r8+r11*1+0xa4]
    10402e8e2cc2:	43 83 bc 18 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xa4],0x0
    10402e8e2ccb:	0f 85 a5 00 00 00                               	jne    0x10402e8e2d76
    10402e8e2cd1:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    10402e8e2cd6:	43 8b 04 18                                     	mov    eax,DWORD PTR [r8+r11*1]
    10402e8e2cda:	0f af 45 d0                                     	imul   eax,DWORD PTR [rbp-0x30]
    10402e8e2cde:	41 03 c4                                        	add    eax,r12d
    10402e8e2ce1:	c1 e0 04                                        	shl    eax,0x4
    10402e8e2ce4:	03 c1                                           	add    eax,ecx
    10402e8e2ce6:	c4 41 7a 6f 0c 00                               	vmovdqu xmm9,XMMWORD PTR [r8+rax*1]
    10402e8e2cec:	43 8b 44 18 6c                                  	mov    eax,DWORD PTR [r8+r11*1+0x6c]
    10402e8e2cf1:	2d 00 02 00 00                                  	sub    eax,0x200
    10402e8e2cf6:	83 f8 07                                        	cmp    eax,0x7
    10402e8e2cf9:	0f 83 0b 00 00 00                               	jae    0x10402e8e2d0a
    10402e8e2cff:	4c 8d 15 da 81 00 00                            	lea    r10,[rip+0x81da]        # 0x10402e8eaee0
    10402e8e2d06:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    10402e8e2d0a:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    10402e8e2d0f:	e9 39 00 00 00                                  	jmp    0x10402e8e2d4d
    10402e8e2d14:	c5 30 c2 d8 02                                  	vcmpleps xmm11,xmm9,xmm0
    10402e8e2d19:	e9 2f 00 00 00                                  	jmp    0x10402e8e2d4d
    10402e8e2d1e:	c5 30 c2 d8 04                                  	vcmpneqps xmm11,xmm9,xmm0
    10402e8e2d23:	e9 25 00 00 00                                  	jmp    0x10402e8e2d4d
    10402e8e2d28:	c5 30 c2 d8 01                                  	vcmpltps xmm11,xmm9,xmm0
    10402e8e2d2d:	e9 1b 00 00 00                                  	jmp    0x10402e8e2d4d
    10402e8e2d32:	c4 41 78 c2 d9 02                               	vcmpleps xmm11,xmm0,xmm9
    10402e8e2d38:	e9 10 00 00 00                                  	jmp    0x10402e8e2d4d
    10402e8e2d3d:	c5 30 c2 d8 00                                  	vcmpeqps xmm11,xmm9,xmm0
    10402e8e2d42:	e9 06 00 00 00                                  	jmp    0x10402e8e2d4d
    10402e8e2d47:	c4 41 78 c2 d9 01                               	vcmpltps xmm11,xmm0,xmm9
    10402e8e2d4d:	c4 c1 78 50 c3                                  	vmovmskps eax,xmm11
    10402e8e2d52:	41 23 c7                                        	and    eax,r15d
    10402e8e2d55:	0f 85 11 00 00 00                               	jne    0x10402e8e2d6c
    10402e8e2d5b:	44 8b cf                                        	mov    r9d,edi
    10402e8e2d5e:	49 8b f8                                        	mov    rdi,r8
    10402e8e2d61:	4d 8b c3                                        	mov    r8,r11
    10402e8e2d64:	41 8b d4                                        	mov    edx,r12d
    10402e8e2d67:	e9 99 1b 00 00                                  	jmp    0x10402e8e4905
    10402e8e2d6c:	4c 8b f8                                        	mov    r15,rax
    10402e8e2d6f:	48 8b 85 68 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x298]
    10402e8e2d76:	4c 89 a5 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r12
    10402e8e2d7d:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8e2d81:	0f 84 29 00 00 00                               	je     0x10402e8e2db0
    10402e8e2d87:	8d 8f d0 00 00 00                               	lea    ecx,[rdi+0xd0]
    10402e8e2d8d:	f3 45 0f bc e7                                  	tzcnt  r12d,r15d
    10402e8e2d92:	45 6b e4 18                                     	imul   r12d,r12d,0x18
    10402e8e2d96:	44 03 e1                                        	add    r12d,ecx
    10402e8e2d99:	4b 8b 4c 20 08                                  	mov    rcx,QWORD PTR [r8+r12*1+0x8]
    10402e8e2d9e:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    10402e8e2da2:	4d 8b d4                                        	mov    r10,r12
    10402e8e2da5:	4c 8b e1                                        	mov    r12,rcx
    10402e8e2da8:	49 8b ca                                        	mov    rcx,r10
    10402e8e2dab:	e9 0e 00 00 00                                  	jmp    0x10402e8e2dbe
    10402e8e2db0:	4c 8b a5 70 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x490]
    10402e8e2db7:	48 8b 8d f8 fa ff ff                            	mov    rcx,QWORD PTR [rbp-0x508]
    10402e8e2dbe:	4c 03 e3                                        	add    r12,rbx
    10402e8e2dc1:	48 03 ca                                        	add    rcx,rdx
    10402e8e2dc4:	83 bd 58 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1a8],0x0
    10402e8e2dcb:	0f 85 a0 1b 00 00                               	jne    0x10402e8e4971
    10402e8e2dd1:	c4 81 7a 10 44 08 1c                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x1c]
    10402e8e2dd8:	c4 41 7a 10 4c 30 1c                            	vmovss xmm9,DWORD PTR [r8+rsi*1+0x1c]
    10402e8e2ddf:	c4 41 7a 10 5c 00 1c                            	vmovss xmm11,DWORD PTR [r8+rax*1+0x1c]
    10402e8e2de6:	4c 89 bd 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r15
    10402e8e2ded:	47 8b bc 18 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r11*1+0x3cc8]
    10402e8e2df5:	43 83 bc 18 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x3cc8],0x0
    10402e8e2dfe:	0f 84 65 00 00 00                               	je     0x10402e8e2e69
    10402e8e2e04:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    10402e8e2e0b:	41 c1 ef 03                                     	shr    r15d,0x3
    10402e8e2e0f:	41 83 e7 03                                     	and    r15d,0x3
    10402e8e2e13:	44 8b 9d f0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x210]
    10402e8e2e1a:	45 0b df                                        	or     r11d,r15d
    10402e8e2e1d:	44 8b bd e8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x318]
    10402e8e2e24:	45 03 df                                        	add    r11d,r15d
    10402e8e2e27:	47 0f b6 1c 18                                  	movzx  r11d,BYTE PTR [r8+r11*1]
    10402e8e2e2c:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    10402e8e2e33:	41 83 e7 07                                     	and    r15d,0x7
    10402e8e2e37:	4c 8b d1                                        	mov    r10,rcx
    10402e8e2e3a:	41 8b cf                                        	mov    ecx,r15d
    10402e8e2e3d:	4d 8b fa                                        	mov    r15,r10
    10402e8e2e40:	41 d3 e3                                        	shl    r11d,cl
    10402e8e2e43:	41 f6 c3 80                                     	test   r11b,0x80
    10402e8e2e47:	0f 85 15 00 00 00                               	jne    0x10402e8e2e62
    10402e8e2e4d:	44 8b cf                                        	mov    r9d,edi
    10402e8e2e50:	49 8b f8                                        	mov    rdi,r8
    10402e8e2e53:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e2e57:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e2e5d:	e9 a3 1a 00 00                                  	jmp    0x10402e8e4905
    10402e8e2e62:	49 8b cf                                        	mov    rcx,r15
    10402e8e2e65:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e2e69:	c5 f8 11 ad c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm5
    10402e8e2e71:	c4 e1 82 2a e9                                  	vcvtsi2ss xmm5,xmm15,rcx
    10402e8e2e76:	c5 ba 59 ed                                     	vmulss xmm5,xmm8,xmm5
    10402e8e2e7a:	c4 41 52 59 db                                  	vmulss xmm11,xmm5,xmm11
    10402e8e2e7f:	c4 c1 82 2a f4                                  	vcvtsi2ss xmm6,xmm15,r12
    10402e8e2e84:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    10402e8e2e88:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    10402e8e2e8d:	c4 41 22 58 c1                                  	vaddss xmm8,xmm11,xmm9
    10402e8e2e92:	c5 78 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm10
    10402e8e2e9a:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8e2e9f:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8e2ea5:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8e2eab:	c5 aa 5c ed                                     	vsubss xmm5,xmm10,xmm5
    10402e8e2eaf:	c5 d2 5c ee                                     	vsubss xmm5,xmm5,xmm6
    10402e8e2eb3:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    10402e8e2eb7:	c5 ba 58 e8                                     	vaddss xmm5,xmm8,xmm0
    10402e8e2ebb:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    10402e8e2ebf:	0f 83 31 1a 00 00                               	jae    0x10402e8e48f6
    10402e8e2ec5:	c5 aa 5e ed                                     	vdivss xmm5,xmm10,xmm5
    10402e8e2ec9:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    10402e8e2ecd:	c4 e2 79 18 f5                                  	vbroadcastss xmm6,xmm5
    10402e8e2ed2:	c4 01 7a 6f 44 08 20                            	vmovdqu xmm8,XMMWORD PTR [r8+r9*1+0x20]
    10402e8e2ed9:	c5 fb 11 ad 38 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3c8],xmm5
    10402e8e2ee1:	c4 e2 79 18 e8                                  	vbroadcastss xmm5,xmm0
    10402e8e2ee6:	c5 b8 59 ed                                     	vmulps xmm5,xmm8,xmm5
    10402e8e2eea:	c4 41 7a 6f 44 00 20                            	vmovdqu xmm8,XMMWORD PTR [r8+rax*1+0x20]
    10402e8e2ef1:	c5 fb 11 85 f0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x310],xmm0
    10402e8e2ef9:	c4 c2 79 18 c3                                  	vbroadcastss xmm0,xmm11
    10402e8e2efe:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8e2f02:	c4 42 79 18 c1                                  	vbroadcastss xmm8,xmm9
    10402e8e2f07:	c4 c1 7a 6f 7c 30 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8e2f0e:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    10402e8e2f12:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    10402e8e2f16:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    10402e8e2f1a:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    10402e8e2f1e:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e2f28:	c4 81 7a 10 ac 08 98 00 00 00                   	vmovss xmm5,DWORD PTR [r8+r9*1+0x98]
    10402e8e2f32:	c4 c1 7a 10 b4 00 98 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rax*1+0x98]
    10402e8e2f3c:	c4 c1 7a 10 bc 30 98 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rsi*1+0x98]
    10402e8e2f46:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    10402e8e2f50:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    10402e8e2f57:	47 8b bc 20 34 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x134]
    10402e8e2f5f:	41 8d 4f ff                                     	lea    ecx,[r15-0x1]
    10402e8e2f63:	c5 78 11 a5 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm12
    10402e8e2f6b:	c5 7b 11 8d a8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x258],xmm9
    10402e8e2f73:	c5 7b 11 9d 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm11
    10402e8e2f7b:	c5 fb 11 ad b0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x250],xmm5
    10402e8e2f83:	c5 fb 11 b5 d8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x228],xmm6
    10402e8e2f8b:	c5 fb 11 bd b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm7
    10402e8e2f93:	83 f9 01                                        	cmp    ecx,0x1
    10402e8e2f96:	0f 86 96 04 00 00                               	jbe    0x10402e8e3432
    10402e8e2f9c:	47 8b bc 20 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x130]
    10402e8e2fa4:	43 83 bc 20 30 01 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x130],0x0
    10402e8e2fad:	0f 85 0b 00 00 00                               	jne    0x10402e8e2fbe
    10402e8e2fb3:	44 8b cf                                        	mov    r9d,edi
    10402e8e2fb6:	49 8b f8                                        	mov    rdi,r8
    10402e8e2fb9:	e9 34 05 00 00                                  	jmp    0x10402e8e34f2
    10402e8e2fbe:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    10402e8e2fc5:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    10402e8e2fcb:	51                                              	push   rcx
    10402e8e2fcc:	4c 89 a5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r12
    10402e8e2fd3:	4c 89 bd 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r15
    10402e8e2fda:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e2fde:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    10402e8e2fe4:	8b 95 50 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b0]
    10402e8e2fea:	8b 8d 70 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x190]
    10402e8e2ff0:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    10402e8e2ff6:	c4 c1 79 28 cb                                  	vmovapd xmm1,xmm11
    10402e8e2ffb:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    10402e8e3000:	c5 fb 10 9d f0 fc ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x310]
    10402e8e3008:	c5 fb 10 a5 38 fc ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x3c8]
    10402e8e3010:	45 8b cf                                        	mov    r9d,r15d
    10402e8e3013:	e8 00 32 eb ff                                  	call   0x10402e796218
    10402e8e3018:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e301c:	4c 8b 85 68 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x198]
    10402e8e3023:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    10402e8e302b:	45 85 c0                                        	test   r8d,r8d
    10402e8e302e:	0f 85 9a 01 00 00                               	jne    0x10402e8e31ce
    10402e8e3034:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e3038:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    10402e8e3040:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    10402e8e3049:	0f 84 4b 00 00 00                               	je     0x10402e8e309a
    10402e8e304f:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8e3056:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8e305d:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8e3064:	41 50                                           	push   r8
    10402e8e3066:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e306a:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    10402e8e3070:	33 d2                                           	xor    edx,edx
    10402e8e3072:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    10402e8e3079:	e8 c2 31 eb ff                                  	call   0x10402e796240
    10402e8e307e:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e3082:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e3086:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8e3090:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e309a:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    10402e8e30a2:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    10402e8e30ab:	0f 84 4e 00 00 00                               	je     0x10402e8e30ff
    10402e8e30b1:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8e30b8:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8e30bf:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8e30c6:	41 50                                           	push   r8
    10402e8e30c8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e30cc:	8b 85 40 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c0]
    10402e8e30d2:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8e30d7:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    10402e8e30de:	e8 5d 31 eb ff                                  	call   0x10402e796240
    10402e8e30e3:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e30e7:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e30eb:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8e30f5:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e30ff:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    10402e8e3107:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    10402e8e3110:	0f 84 4e 00 00 00                               	je     0x10402e8e3164
    10402e8e3116:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8e311d:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8e3124:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8e312b:	41 50                                           	push   r8
    10402e8e312d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e3131:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    10402e8e3137:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8e313c:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    10402e8e3143:	e8 f8 30 eb ff                                  	call   0x10402e796240
    10402e8e3148:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e314c:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e3150:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8e315a:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e3164:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    10402e8e316c:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    10402e8e3175:	0f 84 77 03 00 00                               	je     0x10402e8e34f2
    10402e8e317b:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    10402e8e3182:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    10402e8e3189:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    10402e8e3190:	41 50                                           	push   r8
    10402e8e3192:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e3196:	8b 85 58 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2a8]
    10402e8e319c:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8e31a1:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    10402e8e31a8:	e8 93 30 eb ff                                  	call   0x10402e796240
    10402e8e31ad:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e31b1:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e31b5:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    10402e8e31bf:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e31c9:	e9 24 03 00 00                                  	jmp    0x10402e8e34f2
    10402e8e31ce:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8e31d2:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    10402e8e31dc:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8e31e2:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8e31e7:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e31eb:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    10402e8e31f5:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8e31f9:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8e31fd:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    10402e8e3207:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8e320b:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    10402e8e3215:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8e3219:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    10402e8e321d:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    10402e8e3227:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8e322b:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    10402e8e3235:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    10402e8e3239:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    10402e8e323d:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    10402e8e3241:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e3245:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8e324b:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8e3250:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    10402e8e3254:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    10402e8e3258:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    10402e8e325d:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    10402e8e3262:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e3266:	0f 87 09 00 00 00                               	ja     0x10402e8e3275
    10402e8e326c:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8e3270:	e9 04 00 00 00                                  	jmp    0x10402e8e3279
    10402e8e3275:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    10402e8e3279:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e327d:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8e3281:	0f 87 09 00 00 00                               	ja     0x10402e8e3290
    10402e8e3287:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8e328b:	e9 04 00 00 00                                  	jmp    0x10402e8e3294
    10402e8e3290:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8e3294:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8e3299:	41 83 f8 01                                     	cmp    r8d,0x1
    10402e8e329d:	0f 84 a4 00 00 00                               	je     0x10402e8e3347
    10402e8e32a3:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8e32a7:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    10402e8e32b1:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e32b5:	0f 87 09 00 00 00                               	ja     0x10402e8e32c4
    10402e8e32bb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8e32bf:	e9 04 00 00 00                                  	jmp    0x10402e8e32c8
    10402e8e32c4:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e32c8:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e32cc:	0f 87 0a 00 00 00                               	ja     0x10402e8e32dc
    10402e8e32d2:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8e32d7:	e9 04 00 00 00                                  	jmp    0x10402e8e32e0
    10402e8e32dc:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e32e0:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8e32e4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e32e9:	c5 78 10 85 c0 fb ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x440]
    10402e8e32f1:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8e32f5:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e32fd:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e3301:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8e330b:	41 83 f8 03                                     	cmp    r8d,0x3
    10402e8e330f:	0f 85 04 00 00 00                               	jne    0x10402e8e3319
    10402e8e3315:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    10402e8e3319:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8e331e:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8e3322:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e3326:	c4 21 7a 6f 94 27 18 37 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r12*1+0x3718]
    10402e8e3330:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8e3335:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    10402e8e333a:	c4 41 79 28 d1                                  	vmovapd xmm10,xmm9
    10402e8e333f:	4d 8b c4                                        	mov    r8,r12
    10402e8e3342:	e9 c7 00 00 00                                  	jmp    0x10402e8e340e
    10402e8e3347:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    10402e8e3351:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e3355:	0f 87 09 00 00 00                               	ja     0x10402e8e3364
    10402e8e335b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8e335f:	e9 04 00 00 00                                  	jmp    0x10402e8e3368
    10402e8e3364:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e3368:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e336c:	0f 87 0a 00 00 00                               	ja     0x10402e8e337c
    10402e8e3372:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8e3377:	e9 04 00 00 00                                  	jmp    0x10402e8e3380
    10402e8e337c:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e3380:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8e338a:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    10402e8e3390:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    10402e8e3395:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e3399:	0f 87 09 00 00 00                               	ja     0x10402e8e33a8
    10402e8e339f:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8e33a3:	e9 04 00 00 00                                  	jmp    0x10402e8e33ac
    10402e8e33a8:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    10402e8e33ac:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e33b0:	0f 87 0a 00 00 00                               	ja     0x10402e8e33c0
    10402e8e33b6:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8e33bb:	e9 04 00 00 00                                  	jmp    0x10402e8e33c4
    10402e8e33c0:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e33c4:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    10402e8e33ce:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e33d3:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e33d7:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    10402e8e33e1:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    10402e8e33e6:	c5 78 10 9d c0 fb ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x440]
    10402e8e33ee:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8e33f2:	c5 78 10 95 60 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4a0]
    10402e8e33fa:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8e33fe:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8e3402:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8e3406:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8e340a:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    10402e8e340e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8e3412:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8e3416:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    10402e8e3420:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    10402e8e342a:	45 8b cb                                        	mov    r9d,r11d
    10402e8e342d:	e9 c0 00 00 00                                  	jmp    0x10402e8e34f2
    10402e8e3432:	4d 8b e1                                        	mov    r12,r9
    10402e8e3435:	c4 81 7a 10 44 20 50                            	vmovss xmm0,DWORD PTR [r8+r12*1+0x50]
    10402e8e343c:	c5 fa 59 85 f0 fc ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x310]
    10402e8e3444:	c4 41 7a 10 44 00 50                            	vmovss xmm8,DWORD PTR [r8+rax*1+0x50]
    10402e8e344b:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    10402e8e3450:	48 8b ce                                        	mov    rcx,rsi
    10402e8e3453:	c4 41 32 59 74 08 50                            	vmulss xmm14,xmm9,DWORD PTR [r8+rcx*1+0x50]
    10402e8e345a:	c4 41 3a 58 c6                                  	vaddss xmm8,xmm8,xmm14
    10402e8e345f:	c4 c1 7a 58 c0                                  	vaddss xmm0,xmm0,xmm8
    10402e8e3464:	c5 7b 10 85 38 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x3c8]
    10402e8e346c:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    10402e8e3470:	c4 01 7a 10 74 20 54                            	vmovss xmm14,DWORD PTR [r8+r12*1+0x54]
    10402e8e3477:	c5 0a 59 b5 f0 fc ff ff                         	vmulss xmm14,xmm14,DWORD PTR [rbp-0x310]
    10402e8e347f:	c5 fb 11 85 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm0
    10402e8e3487:	c4 c1 7a 10 44 00 54                            	vmovss xmm0,DWORD PTR [r8+rax*1+0x54]
    10402e8e348e:	c4 c1 7a 59 c3                                  	vmulss xmm0,xmm0,xmm11
    10402e8e3493:	c4 c1 32 59 6c 08 54                            	vmulss xmm5,xmm9,DWORD PTR [r8+rcx*1+0x54]
    10402e8e349a:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e349e:	c5 8a 58 c0                                     	vaddss xmm0,xmm14,xmm0
    10402e8e34a2:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    10402e8e34a6:	8d b7 90 02 00 00                               	lea    esi,[rdi+0x290]
    10402e8e34ac:	44 8d 8f 30 01 00 00                            	lea    r9d,[rdi+0x130]
    10402e8e34b3:	8b ce                                           	mov    ecx,esi
    10402e8e34b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e34b9:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    10402e8e34bf:	41 8b d7                                        	mov    edx,r15d
    10402e8e34c2:	c5 fb 10 8d 68 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x198]
    10402e8e34ca:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8e34ce:	41 8b d9                                        	mov    ebx,r9d
    10402e8e34d1:	e8 5a 30 eb ff                                  	call   0x10402e796530
    10402e8e34d6:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e34da:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e34de:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    10402e8e34e8:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e34f2:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e34f6:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    10402e8e34fe:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    10402e8e3507:	0f 84 c3 01 00 00                               	je     0x10402e8e36d0
    10402e8e350d:	c5 fb 10 85 b0 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x250]
    10402e8e3515:	c5 fa 59 85 f0 fc ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x310]
    10402e8e351d:	c5 fb 10 ad d8 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x228]
    10402e8e3525:	c5 d2 59 ad 60 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1a0]
    10402e8e352d:	c5 fb 10 b5 a8 fd ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x258]
    10402e8e3535:	c5 ca 59 b5 b8 fd ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x248]
    10402e8e353d:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    10402e8e3541:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e3545:	c5 fb 10 ad 38 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x3c8]
    10402e8e354d:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    10402e8e3551:	4c 8b 15 af e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7af]        # 0x10402e8e1d07
    10402e8e3558:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8e355d:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    10402e8e3561:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    10402e8e3565:	0f 87 04 00 00 00                               	ja     0x10402e8e356f
    10402e8e356b:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    10402e8e356f:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    10402e8e3577:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    10402e8e357e:	0f 85 28 00 00 00                               	jne    0x10402e8e35ac
    10402e8e3584:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    10402e8e358e:	4c 8b 15 72 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe772]        # 0x10402e8e1d07
    10402e8e3595:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8e359a:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    10402e8e359e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e35a2:	e8 11 50 eb ff                                  	call   0x10402e7985b8
    10402e8e35a7:	e9 89 00 00 00                                  	jmp    0x10402e8e3635
    10402e8e35ac:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8e35b0:	0f 84 5c 00 00 00                               	je     0x10402e8e3612
    10402e8e35b6:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    10402e8e35c0:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    10402e8e35ca:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    10402e8e35ce:	7a 06                                           	jp     0x10402e8e35d6
    10402e8e35d0:	0f 84 29 00 00 00                               	je     0x10402e8e35ff
    10402e8e35d6:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    10402e8e35da:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    10402e8e35de:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8e35e2:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    10402e8e35e6:	0f 86 49 00 00 00                               	jbe    0x10402e8e3635
    10402e8e35ec:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8e35f0:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8e35f5:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8e35fa:	e9 5b 00 00 00                                  	jmp    0x10402e8e365a
    10402e8e35ff:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8e3603:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8e3608:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8e360d:	e9 44 00 00 00                                  	jmp    0x10402e8e3656
    10402e8e3612:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    10402e8e361c:	4c 8b 15 e4 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6e4]        # 0x10402e8e1d07
    10402e8e3623:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8e3628:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    10402e8e362c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e3630:	e8 83 4f eb ff                                  	call   0x10402e7985b8
    10402e8e3635:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8e3639:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8e363e:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8e3643:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8e3647:	0f 87 09 00 00 00                               	ja     0x10402e8e3656
    10402e8e364d:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    10402e8e3651:	e9 04 00 00 00                                  	jmp    0x10402e8e365a
    10402e8e3656:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8e365a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e365e:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e3662:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    10402e8e366c:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8e3670:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e3674:	c4 a1 7a 59 bc 07 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x100]
    10402e8e367e:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8e3682:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    10402e8e368c:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    10402e8e3696:	c4 a1 7a 59 bc 07 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x104]
    10402e8e36a0:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8e36a4:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    10402e8e36ae:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    10402e8e36b8:	c4 a1 7a 59 84 07 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [rdi+r8*1+0x108]
    10402e8e36c2:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8e36c6:	c4 a1 7a 11 84 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm0
    10402e8e36d0:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    10402e8e36da:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    10402e8e36e4:	83 bd e0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x220],0x0
    10402e8e36eb:	0f 85 ca 11 00 00                               	jne    0x10402e8e48bb
    10402e8e36f1:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    10402e8e36f6:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    10402e8e36fc:	0f 85 7e 11 00 00                               	jne    0x10402e8e4880
    10402e8e3702:	c4 a1 7a 6f 84 0f 80 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x280]
    10402e8e370c:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e3714:	c5 f8 c2 ed 01                                  	vcmpltps xmm5,xmm0,xmm5
    10402e8e3719:	c5 d0 55 c0                                     	vandnps xmm0,xmm5,xmm0
    10402e8e371d:	c5 f8 10 b5 60 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x4a0]
    10402e8e3725:	c5 c8 c2 e8 01                                  	vcmpltps xmm5,xmm6,xmm0
    10402e8e372a:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    10402e8e3732:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    10402e8e3736:	c5 c1 db c5                                     	vpand  xmm0,xmm7,xmm5
    10402e8e373a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e373f:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    10402e8e3749:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e374e:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e3752:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8e3756:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    10402e8e3760:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e3765:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e3769:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8e376d:	49 ba 40 b9 70 c9 23 63 00 00                   	movabs r10,0x6323c970b940
    10402e8e3777:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8e377c:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    10402e8e3781:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8e3787:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    10402e8e378b:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    10402e8e3790:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    10402e8e379a:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8e379f:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8e37a3:	4c 8b 15 ab d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2ab]        # 0x10402e8e0a55
    10402e8e37aa:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8e37af:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    10402e8e37b9:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e37be:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8e37c2:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    10402e8e37c7:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    10402e8e37cb:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8e37cf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e37d4:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    10402e8e37d9:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    10402e8e37dd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e37e2:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    10402e8e37e6:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    10402e8e37eb:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e37f1:	44 03 da                                        	add    r11d,edx
    10402e8e37f4:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    10402e8e37fc:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    10402e8e3801:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8e3805:	45 03 df                                        	add    r11d,r15d
    10402e8e3808:	83 bd 80 fc ff ff 0f                            	cmp    DWORD PTR [rbp-0x380],0xf
    10402e8e380f:	0f 84 b9 00 00 00                               	je     0x10402e8e38ce
    10402e8e3815:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    10402e8e381c:	41 83 e7 01                                     	and    r15d,0x1
    10402e8e3820:	41 f7 df                                        	neg    r15d
    10402e8e3823:	c4 c1 79 6e ef                                  	vmovd  xmm5,r15d
    10402e8e3828:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    10402e8e382d:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    10402e8e3834:	41 c1 e7 1e                                     	shl    r15d,0x1e
    10402e8e3838:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8e383c:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    10402e8e3842:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    10402e8e3849:	41 c1 e7 1d                                     	shl    r15d,0x1d
    10402e8e384d:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8e3851:	c4 c3 51 22 ef 02                               	vpinsrd xmm5,xmm5,r15d,0x2
    10402e8e3857:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    10402e8e385e:	41 c1 e7 1c                                     	shl    r15d,0x1c
    10402e8e3862:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8e3866:	c4 c3 51 22 ef 03                               	vpinsrd xmm5,xmm5,r15d,0x3
    10402e8e386c:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    10402e8e3871:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    10402e8e3877:	0f 84 39 00 00 00                               	je     0x10402e8e38b6
    10402e8e387d:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    10402e8e3882:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    10402e8e3888:	0f 84 28 00 00 00                               	je     0x10402e8e38b6
    10402e8e388e:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8e3893:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    10402e8e3897:	c4 a1 7a 6f 34 0f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1]
    10402e8e389d:	c4 a1 7a 6f 3c 27                               	vmovdqu xmm7,XMMWORD PTR [rdi+r12*1]
    10402e8e38a3:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    10402e8e38a7:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    10402e8e38ab:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e38b0:	c4 a1 7a 7f 34 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm6
    10402e8e38b6:	c4 a1 7a 6f 34 1f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r11*1]
    10402e8e38bc:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    10402e8e38c0:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8e38c4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e38c9:	e9 37 00 00 00                                  	jmp    0x10402e8e3905
    10402e8e38ce:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    10402e8e38d3:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    10402e8e38d9:	0f 84 26 00 00 00                               	je     0x10402e8e3905
    10402e8e38df:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    10402e8e38e4:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    10402e8e38ea:	0f 84 15 00 00 00                               	je     0x10402e8e3905
    10402e8e38f0:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8e38f5:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    10402e8e38f9:	c4 a1 7a 6f 2c 0f                               	vmovdqu xmm5,XMMWORD PTR [rdi+r9*1]
    10402e8e38ff:	c4 a1 7a 7f 2c 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm5
    10402e8e3905:	c4 a1 7a 7f 04 1f                               	vmovdqu XMMWORD PTR [rdi+r11*1],xmm0
    10402e8e390b:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    10402e8e3910:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    10402e8e3916:	0f 84 e9 0f 00 00                               	je     0x10402e8e4905
    10402e8e391c:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    10402e8e3921:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    10402e8e3927:	0f 84 d8 0f 00 00                               	je     0x10402e8e4905
    10402e8e392d:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    10402e8e3932:	42 83 7c 07 14 04                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x4
    10402e8e3938:	0f 85 c7 0f 00 00                               	jne    0x10402e8e4905
    10402e8e393e:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    10402e8e3943:	45 85 db                                        	test   r11d,r11d
    10402e8e3946:	0f 84 b9 0f 00 00                               	je     0x10402e8e4905
    10402e8e394c:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    10402e8e3950:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    10402e8e3954:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    10402e8e3959:	0f 84 a6 0f 00 00                               	je     0x10402e8e4905
    10402e8e395f:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    10402e8e3963:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    10402e8e3967:	41 83 eb 3c                                     	sub    r11d,0x3c
    10402e8e396b:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    10402e8e396f:	44 8b fa                                        	mov    r15d,edx
    10402e8e3972:	41 c1 ef 02                                     	shr    r15d,0x2
    10402e8e3976:	45 0f af fb                                     	imul   r15d,r11d
    10402e8e397a:	41 c1 e7 04                                     	shl    r15d,0x4
    10402e8e397e:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    10402e8e3982:	44 8b a5 e8 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x418]
    10402e8e3989:	45 03 dc                                        	add    r11d,r12d
    10402e8e398c:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    10402e8e3991:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    10402e8e3998:	33 c0                                           	xor    eax,eax
    10402e8e399a:	45 85 ff                                        	test   r15d,r15d
    10402e8e399d:	0f 94 c0                                        	sete   al
    10402e8e39a0:	41 83 ff 02                                     	cmp    r15d,0x2
    10402e8e39a4:	41 0f 94 c7                                     	sete   r15b
    10402e8e39a8:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e8e39ac:	44 0b f8                                        	or     r15d,eax
    10402e8e39af:	0f 85 0d 00 00 00                               	jne    0x10402e8e39c2
    10402e8e39b5:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    10402e8e39bd:	e9 43 0f 00 00                                  	jmp    0x10402e8e4905
    10402e8e39c2:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    10402e8e39c9:	8b c2                                           	mov    eax,edx
    10402e8e39cb:	83 e0 03                                        	and    eax,0x3
    10402e8e39ce:	8b 9d e0 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x420]
    10402e8e39d4:	0b d8                                           	or     ebx,eax
    10402e8e39d6:	8d 04 9d 00 00 00 00                            	lea    eax,[rbx*4+0x0]
    10402e8e39dd:	83 e0 3f                                        	and    eax,0x3f
    10402e8e39e0:	8b c8                                           	mov    ecx,eax
    10402e8e39e2:	49 d3 e7                                        	shl    r15,cl
    10402e8e39e5:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    10402e8e39e9:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8e39ed:	0f 84 5f 07 00 00                               	je     0x10402e8e4152
    10402e8e39f3:	49 0b c7                                        	or     rax,r15
    10402e8e39f6:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    10402e8e39fa:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8e39fe:	0f 85 01 0f 00 00                               	jne    0x10402e8e4905
    10402e8e3a04:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8e3a09:	8b c2                                           	mov    eax,edx
    10402e8e3a0b:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8e3a10:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    10402e8e3a14:	8b cb                                           	mov    ecx,ebx
    10402e8e3a16:	0f af 8d 28 fb ff ff                            	imul   ecx,DWORD PTR [rbp-0x4d8]
    10402e8e3a1d:	03 c8                                           	add    ecx,eax
    10402e8e3a1f:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e3a22:	41 03 cf                                        	add    ecx,r15d
    10402e8e3a25:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8e3a2b:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8e3a30:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8e3a36:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e3a3b:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8e3a3f:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8e3a45:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8e3a4a:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8e3a4f:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    10402e8e3a54:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8e3a5a:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8e3a5f:	8b cb                                           	mov    ecx,ebx
    10402e8e3a61:	0f af 8d 88 fd ff ff                            	imul   ecx,DWORD PTR [rbp-0x278]
    10402e8e3a68:	03 c8                                           	add    ecx,eax
    10402e8e3a6a:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e3a6d:	41 03 cf                                        	add    ecx,r15d
    10402e8e3a70:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8e3a76:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8e3a7c:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8e3a81:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8e3a87:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8e3a8d:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8e3a92:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8e3a98:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8e3a9e:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8e3aa3:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    10402e8e3aa8:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8e3aae:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8e3ab3:	8b cb                                           	mov    ecx,ebx
    10402e8e3ab5:	0f af 8d 40 fe ff ff                            	imul   ecx,DWORD PTR [rbp-0x1c0]
    10402e8e3abc:	03 c8                                           	add    ecx,eax
    10402e8e3abe:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e3ac1:	41 03 cf                                        	add    ecx,r15d
    10402e8e3ac4:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8e3aca:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8e3ad0:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8e3ad5:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8e3adb:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8e3ae1:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8e3ae5:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8e3aeb:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8e3af0:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8e3af4:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    10402e8e3af9:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8e3afe:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8e3b02:	0f af 9d 80 fd ff ff                            	imul   ebx,DWORD PTR [rbp-0x280]
    10402e8e3b09:	03 c3                                           	add    eax,ebx
    10402e8e3b0b:	c1 e0 04                                        	shl    eax,0x4
    10402e8e3b0e:	44 03 f8                                        	add    r15d,eax
    10402e8e3b11:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    10402e8e3b18:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8e3b1d:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8e3b21:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    10402e8e3b28:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8e3b2d:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8e3b32:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8e3b36:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    10402e8e3b3d:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    10402e8e3b45:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8e3b4a:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e3b4e:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    10402e8e3b54:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    10402e8e3b5c:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e3b61:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8e3b65:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8e3b6a:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8e3b6f:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    10402e8e3b73:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8e3b77:	0f 84 0e 00 00 00                               	je     0x10402e8e3b8b
    10402e8e3b7d:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    10402e8e3b86:	e9 7a 0d 00 00                                  	jmp    0x10402e8e4905
    10402e8e3b8b:	49 ba 3c 00 00 00 3d 00 00 00                   	movabs r10,0x3d0000003c
    10402e8e3b95:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e3b9a:	49 ba 3e 00 00 00 3f 00 00 00                   	movabs r10,0x3f0000003e
    10402e8e3ba4:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e3baa:	49 ba 38 00 00 00 39 00 00 00                   	movabs r10,0x3900000038
    10402e8e3bb4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e3bb9:	49 ba 3a 00 00 00 3b 00 00 00                   	movabs r10,0x3b0000003a
    10402e8e3bc3:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e3bc9:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8e3bd1:	49 ba 34 00 00 00 35 00 00 00                   	movabs r10,0x3500000034
    10402e8e3bdb:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e3be0:	49 ba 36 00 00 00 37 00 00 00                   	movabs r10,0x3700000036
    10402e8e3bea:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e3bf0:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    10402e8e3bf8:	49 ba 30 00 00 00 31 00 00 00                   	movabs r10,0x3100000030
    10402e8e3c02:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e3c07:	49 ba 32 00 00 00 33 00 00 00                   	movabs r10,0x3300000032
    10402e8e3c11:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e3c17:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8e3c1f:	49 ba 2c 00 00 00 2d 00 00 00                   	movabs r10,0x2d0000002c
    10402e8e3c29:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e3c2e:	49 ba 2e 00 00 00 2f 00 00 00                   	movabs r10,0x2f0000002e
    10402e8e3c38:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e3c3e:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    10402e8e3c46:	49 ba 28 00 00 00 29 00 00 00                   	movabs r10,0x2900000028
    10402e8e3c50:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e3c55:	49 ba 2a 00 00 00 2b 00 00 00                   	movabs r10,0x2b0000002a
    10402e8e3c5f:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e3c65:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    10402e8e3c6d:	49 ba 24 00 00 00 25 00 00 00                   	movabs r10,0x2500000024
    10402e8e3c77:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e3c7c:	49 ba 26 00 00 00 27 00 00 00                   	movabs r10,0x2700000026
    10402e8e3c86:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e3c8c:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8e3c94:	49 ba 20 00 00 00 21 00 00 00                   	movabs r10,0x2100000020
    10402e8e3c9e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e3ca3:	49 ba 22 00 00 00 23 00 00 00                   	movabs r10,0x2300000022
    10402e8e3cad:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e3cb3:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    10402e8e3cbb:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    10402e8e3cc5:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8e3cca:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    10402e8e3cd4:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8e3cda:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    10402e8e3ce2:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    10402e8e3cec:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e3cf1:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    10402e8e3cfb:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e3d01:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    10402e8e3d09:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    10402e8e3d13:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e3d18:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    10402e8e3d22:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8e3d28:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    10402e8e3d30:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    10402e8e3d3a:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e3d3f:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    10402e8e3d49:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e3d4f:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    10402e8e3d57:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    10402e8e3d61:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e3d66:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    10402e8e3d70:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8e3d76:	c5 f8 11 85 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm0
    10402e8e3d7e:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    10402e8e3d88:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e3d8d:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    10402e8e3d97:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e3d9d:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    10402e8e3da5:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    10402e8e3daf:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e3db4:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    10402e8e3dbe:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e3dc4:	c5 78 11 8d 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm9
    10402e8e3dcc:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8e3dd1:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8e3dd7:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8e3ddd:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    10402e8e3de7:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8e3ded:	c5 78 11 ad 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm13
    10402e8e3df5:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    10402e8e3dff:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e3e04:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e3e09:	c5 f8 11 bd b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm7
    10402e8e3e11:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8e3e16:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8e3e1c:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8e3e21:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8e3e26:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8e3e2a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e3e2f:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x10402e8e3df7
    10402e8e3e36:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e3e3b:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e3e40:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8e3e45:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8e3e49:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e3e4e:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8e3e53:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8e3e58:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8e3e5c:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e3e61:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8e3e65:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8e3e69:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3e6e:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8e3e73:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8e3e78:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e3e7c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3e81:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e3e85:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8e3e89:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3e8e:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8e3e93:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e3e97:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8e3e9b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3ea0:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e3ea4:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8e3ea8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3ead:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8e3eb2:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e3eb6:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8e3eba:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3ebf:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e3ec3:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8e3ec7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3ecc:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8e3ed1:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e3ed5:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8e3ed9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3ede:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e3ee2:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8e3ee6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3eeb:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8e3ef1:	c5 f8 10 bd b0 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x350]
    10402e8e3ef9:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e3efd:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8e3f01:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3f06:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e3f0a:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8e3f0e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3f13:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    10402e8e3f1b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e3f20:	c5 78 10 85 10 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x3f0]
    10402e8e3f28:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e3f2c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e3f30:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3f35:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e3f39:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e3f3d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3f42:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8e3f4a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e3f4f:	c5 78 10 85 c0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x340]
    10402e8e3f57:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e3f5b:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e3f5f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3f64:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e3f68:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e3f6c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3f71:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8e3f79:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e3f7e:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8e3f86:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e3f8a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e3f8e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3f93:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e3f97:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e3f9b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3fa0:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8e3fa8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e3fad:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8e3fb5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e3fb9:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e3fbd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3fc2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e3fc6:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e3fca:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3fcf:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8e3fd7:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e3fdc:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8e3fe4:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e3fe8:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e3fec:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e3ff1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e3ff5:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e3ff9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e3ffe:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8e4006:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e400b:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8e4013:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4017:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e401b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e4020:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4024:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e4028:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e402d:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8e4035:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e403a:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8e4042:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4046:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e404a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e404f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4053:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e4057:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e405c:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8e4064:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e4069:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8e4071:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4075:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e4079:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e407e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4082:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e4086:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e408b:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8e4090:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e4095:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8e409d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e40a1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e40a5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e40aa:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e40b4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e40b8:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8e40bc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e40c1:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    10402e8e40cb:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8e40cf:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8e40d3:	45 33 ff                                        	xor    r15d,r15d
    10402e8e40d6:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e40da:	41 0f 97 c7                                     	seta   r15b
    10402e8e40de:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    10402e8e40e5:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    10402e8e40ed:	0b d8                                           	or     ebx,eax
    10402e8e40ef:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    10402e8e40f4:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8e40f9:	bb 02 00 00 00                                  	mov    ebx,0x2
    10402e8e40fe:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e4102:	44 0f 47 fb                                     	cmova  r15d,ebx
    10402e8e4106:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    10402e8e410e:	0b c8                                           	or     ecx,eax
    10402e8e4110:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    10402e8e4115:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8e411a:	be 03 00 00 00                                  	mov    esi,0x3
    10402e8e411f:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e4123:	44 0f 47 fe                                     	cmova  r15d,esi
    10402e8e4127:	41 c1 e7 02                                     	shl    r15d,0x2
    10402e8e412b:	41 0b c7                                        	or     eax,r15d
    10402e8e412e:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    10402e8e4133:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    10402e8e413a:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    10402e8e4141:	44 0b f8                                        	or     r15d,eax
    10402e8e4144:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    10402e8e4148:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    10402e8e414d:	e9 b3 07 00 00                                  	jmp    0x10402e8e4905
    10402e8e4152:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    10402e8e4157:	8b d8                                           	mov    ebx,eax
    10402e8e4159:	83 e3 3f                                        	and    ebx,0x3f
    10402e8e415c:	8b cb                                           	mov    ecx,ebx
    10402e8e415e:	49 d3 ef                                        	shr    r15,cl
    10402e8e4161:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8e4165:	0f 84 9a 07 00 00                               	je     0x10402e8e4905
    10402e8e416b:	83 e0 03                                        	and    eax,0x3
    10402e8e416e:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    10402e8e4176:	45 0b f9                                        	or     r15d,r9d
    10402e8e4179:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    10402e8e417f:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    10402e8e4186:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    10402e8e418a:	0f 86 75 07 00 00                               	jbe    0x10402e8e4905
    10402e8e4190:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    10402e8e4195:	8b c2                                           	mov    eax,edx
    10402e8e4197:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8e419c:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    10402e8e41a0:	8b 8d 28 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4d8]
    10402e8e41a6:	0f af cb                                        	imul   ecx,ebx
    10402e8e41a9:	03 c8                                           	add    ecx,eax
    10402e8e41ab:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e41ae:	41 03 cf                                        	add    ecx,r15d
    10402e8e41b1:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8e41b7:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8e41bc:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8e41c2:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e41c7:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8e41cb:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8e41d1:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8e41d6:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8e41db:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    10402e8e41e0:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8e41e6:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8e41eb:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    10402e8e41f1:	0f af cb                                        	imul   ecx,ebx
    10402e8e41f4:	03 c8                                           	add    ecx,eax
    10402e8e41f6:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e41f9:	41 03 cf                                        	add    ecx,r15d
    10402e8e41fc:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8e4202:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8e4208:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8e420d:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8e4213:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8e4219:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8e421e:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8e4224:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8e422a:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8e422f:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    10402e8e4234:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8e423a:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8e423f:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8e4245:	0f af cb                                        	imul   ecx,ebx
    10402e8e4248:	03 c8                                           	add    ecx,eax
    10402e8e424a:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e424d:	41 03 cf                                        	add    ecx,r15d
    10402e8e4250:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    10402e8e4256:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8e425c:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8e4261:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    10402e8e4267:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8e426d:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8e4271:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    10402e8e4277:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8e427c:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8e4280:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    10402e8e4285:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8e428a:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8e428e:	8b 8d 80 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x280]
    10402e8e4294:	0f af cb                                        	imul   ecx,ebx
    10402e8e4297:	03 c1                                           	add    eax,ecx
    10402e8e4299:	c1 e0 04                                        	shl    eax,0x4
    10402e8e429c:	44 03 f8                                        	add    r15d,eax
    10402e8e429f:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    10402e8e42a6:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8e42ab:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8e42af:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    10402e8e42b6:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8e42bb:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8e42c0:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8e42c4:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    10402e8e42cb:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    10402e8e42d3:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8e42d8:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e42dc:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    10402e8e42e2:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    10402e8e42ea:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e42ef:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8e42f3:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8e42f8:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8e42fd:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    10402e8e4301:	41 83 ff 0f                                     	cmp    r15d,0xf
    10402e8e4305:	0f 84 0e 00 00 00                               	je     0x10402e8e4319
    10402e8e430b:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    10402e8e4314:	e9 ec 05 00 00                                  	jmp    0x10402e8e4905
    10402e8e4319:	4c 8b 15 6d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff86d]        # 0x10402e8e3b8d
    10402e8e4320:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e4325:	4c 8b 15 70 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff870]        # 0x10402e8e3b9c
    10402e8e432c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e4332:	4c 8b 15 73 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff873]        # 0x10402e8e3bac
    10402e8e4339:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e433e:	4c 8b 15 76 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff876]        # 0x10402e8e3bbb
    10402e8e4345:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e434b:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8e4353:	4c 8b 15 79 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff879]        # 0x10402e8e3bd3
    10402e8e435a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e435f:	4c 8b 15 7c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87c]        # 0x10402e8e3be2
    10402e8e4366:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e436c:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    10402e8e4374:	4c 8b 15 7f f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87f]        # 0x10402e8e3bfa
    10402e8e437b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e4380:	4c 8b 15 82 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff882]        # 0x10402e8e3c09
    10402e8e4387:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e438d:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8e4395:	4c 8b 15 85 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff885]        # 0x10402e8e3c21
    10402e8e439c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e43a1:	4c 8b 15 88 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff888]        # 0x10402e8e3c30
    10402e8e43a8:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e43ae:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    10402e8e43b6:	4c 8b 15 8b f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88b]        # 0x10402e8e3c48
    10402e8e43bd:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e43c2:	4c 8b 15 8e f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88e]        # 0x10402e8e3c57
    10402e8e43c9:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e43cf:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    10402e8e43d7:	4c 8b 15 91 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff891]        # 0x10402e8e3c6f
    10402e8e43de:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e43e3:	4c 8b 15 94 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff894]        # 0x10402e8e3c7e
    10402e8e43ea:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e43f0:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8e43f8:	4c 8b 15 97 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff897]        # 0x10402e8e3c96
    10402e8e43ff:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e4404:	4c 8b 15 9a f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89a]        # 0x10402e8e3ca5
    10402e8e440b:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e4411:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    10402e8e4419:	4c 8b 15 9d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89d]        # 0x10402e8e3cbd
    10402e8e4420:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8e4425:	4c 8b 15 a0 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a0]        # 0x10402e8e3ccc
    10402e8e442c:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8e4432:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    10402e8e443a:	4c 8b 15 a3 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a3]        # 0x10402e8e3ce4
    10402e8e4441:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e4446:	4c 8b 15 a6 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a6]        # 0x10402e8e3cf3
    10402e8e444d:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e4453:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    10402e8e445b:	4c 8b 15 a9 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a9]        # 0x10402e8e3d0b
    10402e8e4462:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e4467:	4c 8b 15 ac f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ac]        # 0x10402e8e3d1a
    10402e8e446e:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8e4474:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    10402e8e447c:	4c 8b 15 af f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8af]        # 0x10402e8e3d32
    10402e8e4483:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e4488:	4c 8b 15 b2 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b2]        # 0x10402e8e3d41
    10402e8e448f:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e4495:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    10402e8e449d:	4c 8b 15 b5 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b5]        # 0x10402e8e3d59
    10402e8e44a4:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e44a9:	4c 8b 15 b8 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b8]        # 0x10402e8e3d68
    10402e8e44b0:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8e44b6:	c5 f8 11 85 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm0
    10402e8e44be:	4c 8b 15 bb f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8bb]        # 0x10402e8e3d80
    10402e8e44c5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e44ca:	4c 8b 15 be f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8be]        # 0x10402e8e3d8f
    10402e8e44d1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e44d7:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    10402e8e44df:	4c 8b 15 c1 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c1]        # 0x10402e8e3da7
    10402e8e44e6:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e44eb:	4c 8b 15 c4 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c4]        # 0x10402e8e3db6
    10402e8e44f2:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e44f8:	c5 78 11 8d b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm9
    10402e8e4500:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8e4505:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8e450b:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8e4511:	4c 8b 15 c7 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c7]        # 0x10402e8e3ddf
    10402e8e4518:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8e451e:	c5 78 11 ad 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm13
    10402e8e4526:	4c 8b 15 ca f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ca]        # 0x10402e8e3df7
    10402e8e452d:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e4532:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e4537:	c5 f8 11 bd c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm7
    10402e8e453f:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8e4544:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8e454a:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8e454f:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8e4554:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8e4558:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e455d:	4c 8b 15 93 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff893]        # 0x10402e8e3df7
    10402e8e4564:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e4569:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e456e:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8e4573:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8e4577:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e457c:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8e4581:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8e4586:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8e458a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e458f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8e4593:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8e4597:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e459c:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8e45a1:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8e45a6:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e45aa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e45af:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e45b3:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8e45b7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e45bc:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8e45c1:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e45c5:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8e45c9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e45ce:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e45d2:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8e45d6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e45db:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8e45e0:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e45e4:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8e45e8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e45ed:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e45f1:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8e45f5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e45fa:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8e45ff:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e4603:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8e4607:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e460c:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e4610:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8e4614:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e4619:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8e461f:	c5 f8 10 bd c0 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x340]
    10402e8e4627:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e462b:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8e462f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e4634:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e4638:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8e463c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e4641:	c5 f8 10 b5 10 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3f0]
    10402e8e4649:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e464e:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    10402e8e4656:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e465a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e465e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e4663:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4667:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e466b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e4670:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8e4678:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e467d:	c5 78 10 85 00 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x400]
    10402e8e4685:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4689:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e468d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e4692:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4696:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e469a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e469f:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8e46a7:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e46ac:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8e46b4:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e46b8:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e46bc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e46c1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e46c5:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e46c9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e46ce:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8e46d6:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e46db:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8e46e3:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e46e7:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e46eb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e46f0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e46f4:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e46f8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e46fd:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8e4705:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e470a:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8e4712:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4716:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e471a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e471f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4723:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e4727:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e472c:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8e4734:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e4739:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8e4741:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4745:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e4749:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e474e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4752:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e4756:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e475b:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8e4763:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e4768:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8e4770:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e4774:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e4778:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e477d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e4781:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e4785:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e478a:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8e4792:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e4797:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8e479f:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e47a3:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e47a7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e47ac:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e47b0:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e47b4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e47b9:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8e47be:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e47c3:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8e47cb:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e47cf:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e47d3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e47d8:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    10402e8e47e2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e47e6:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8e47ea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e47ef:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    10402e8e47f9:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8e47fd:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8e4801:	45 33 ff                                        	xor    r15d,r15d
    10402e8e4804:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e4808:	41 0f 97 c7                                     	seta   r15b
    10402e8e480c:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    10402e8e4813:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    10402e8e481b:	0b d8                                           	or     ebx,eax
    10402e8e481d:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    10402e8e4822:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8e4827:	bb 02 00 00 00                                  	mov    ebx,0x2
    10402e8e482c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e4830:	44 0f 47 fb                                     	cmova  r15d,ebx
    10402e8e4834:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    10402e8e483c:	0b c8                                           	or     ecx,eax
    10402e8e483e:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    10402e8e4843:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8e4848:	b9 03 00 00 00                                  	mov    ecx,0x3
    10402e8e484d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e4851:	44 0f 47 f9                                     	cmova  r15d,ecx
    10402e8e4855:	41 c1 e7 02                                     	shl    r15d,0x2
    10402e8e4859:	41 0b c7                                        	or     eax,r15d
    10402e8e485c:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    10402e8e4861:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    10402e8e4868:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    10402e8e486f:	44 0b f8                                        	or     r15d,eax
    10402e8e4872:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    10402e8e4876:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    10402e8e487b:	e9 85 00 00 00                                  	jmp    0x10402e8e4905
    10402e8e4880:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    10402e8e4887:	41 53                                           	push   r11
    10402e8e4889:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e488d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e4890:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e4896:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e8e4899:	8b 9d 80 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x380]
    10402e8e489f:	e8 cc 19 eb ff                                  	call   0x10402e796270
    10402e8e48a4:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e48a8:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e48ac:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e48b0:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e48b6:	e9 4a 00 00 00                                  	jmp    0x10402e8e4905
    10402e8e48bb:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    10402e8e48c2:	41 53                                           	push   r11
    10402e8e48c4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e48c8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e48cb:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e48d1:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e8e48d4:	8b 9d 80 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x380]
    10402e8e48da:	e8 79 19 eb ff                                  	call   0x10402e796258
    10402e8e48df:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8e48e3:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e48e7:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e48eb:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e48f1:	e9 0f 00 00 00                                  	jmp    0x10402e8e4905
    10402e8e48f6:	44 8b cf                                        	mov    r9d,edi
    10402e8e48f9:	49 8b f8                                        	mov    rdi,r8
    10402e8e48fc:	4d 8b c3                                        	mov    r8,r11
    10402e8e48ff:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8e4905:	48 c7 85 d8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x228],0x1
    10402e8e4910:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e4914:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    10402e8e491c:	44 8b e2                                        	mov    r12d,edx
    10402e8e491f:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    10402e8e4926:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    10402e8e492d:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    10402e8e4935:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    10402e8e493d:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8e4945:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    10402e8e494d:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e4954:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8e495c:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    10402e8e4964:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    10402e8e496c:	e9 ba 41 00 00                                  	jmp    0x10402e8e8b2b
    10402e8e4971:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    10402e8e4976:	41 8d 5b 01                                     	lea    ebx,[r11+0x1]
    10402e8e497a:	41 89 5c 38 18                                  	mov    DWORD PTR [r8+rdi*1+0x18],ebx
    10402e8e497f:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    10402e8e4985:	42 8d 14 9b                                     	lea    edx,[rbx+r11*4]
    10402e8e4989:	8b 9d 70 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x390]
    10402e8e498f:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    10402e8e4993:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    10402e8e4998:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    10402e8e499b:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    10402e8e499f:	42 8d 54 9f 3c                                  	lea    edx,[rdi+r11*4+0x3c]
    10402e8e49a4:	45 89 3c 10                                     	mov    DWORD PTR [r8+rdx*1],r15d
    10402e8e49a8:	46 8d 7c df 50                                  	lea    r15d,[rdi+r11*8+0x50]
    10402e8e49ad:	4b 89 0c 38                                     	mov    QWORD PTR [r8+r15*1],rcx
    10402e8e49b1:	46 8d 7c df 70                                  	lea    r15d,[rdi+r11*8+0x70]
    10402e8e49b6:	4f 89 24 38                                     	mov    QWORD PTR [r8+r15*1],r12
    10402e8e49ba:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8e49be:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    10402e8e49c5:	45 03 dc                                        	add    r11d,r12d
    10402e8e49c8:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    10402e8e49ce:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    10402e8e49d4:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    10402e8e49d9:	41 83 7c 38 18 04                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x4
    10402e8e49df:	0f 84 44 00 00 00                               	je     0x10402e8e4a29
    10402e8e49e5:	48 c7 85 d8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x228],0x1
    10402e8e49f0:	44 8b a5 70 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x390]
    10402e8e49f7:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    10402e8e49fe:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    10402e8e4a05:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    10402e8e4a0d:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e4a14:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    10402e8e4a1c:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    10402e8e4a24:	e9 02 41 00 00                                  	jmp    0x10402e8e8b2b
    10402e8e4a29:	c4 c1 7a 6f 44 38 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x50]
    10402e8e4a30:	c4 c3 f9 16 c3 00                               	vpextrq r11,xmm0,0x0
    10402e8e4a36:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    10402e8e4a3b:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8e4a40:	c4 c3 f9 16 c3 01                               	vpextrq r11,xmm0,0x1
    10402e8e4a46:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    10402e8e4a4b:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    10402e8e4a51:	c4 c1 7a 6f 44 38 60                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x60]
    10402e8e4a58:	c4 c3 f9 16 c3 00                               	vpextrq r11,xmm0,0x0
    10402e8e4a5e:	c4 41 82 2a db                                  	vcvtsi2ss xmm11,xmm15,r11
    10402e8e4a63:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    10402e8e4a69:	c4 c3 f9 16 c3 01                               	vpextrq r11,xmm0,0x1
    10402e8e4a6f:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    10402e8e4a74:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    10402e8e4a7a:	c5 f8 10 85 90 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x270]
    10402e8e4a82:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    10402e8e4a87:	4d 8d 58 1c                                     	lea    r11,[r8+0x1c]
    10402e8e4a8b:	4c 8b f8                                        	mov    r15,rax
    10402e8e4a8e:	c4 02 79 18 1c 3b                               	vbroadcastss xmm11,DWORD PTR [r11+r15*1]
    10402e8e4a94:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    10402e8e4a99:	c4 41 7a 6f 6c 38 70                            	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x70]
    10402e8e4aa0:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    10402e8e4aa6:	c4 61 82 2a f0                                  	vcvtsi2ss xmm14,xmm15,rax
    10402e8e4aab:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    10402e8e4ab0:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    10402e8e4ab6:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    10402e8e4abb:	c4 43 09 21 f5 10                               	vinsertps xmm14,xmm14,xmm13,0x10
    10402e8e4ac1:	c4 41 7a 6f ac 38 80 00 00 00                   	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x80]
    10402e8e4acb:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    10402e8e4ad1:	c4 e1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,rax
    10402e8e4ad6:	c4 63 09 21 f4 20                               	vinsertps xmm14,xmm14,xmm4,0x20
    10402e8e4adc:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    10402e8e4ae2:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    10402e8e4ae7:	c4 43 09 21 f5 30                               	vinsertps xmm14,xmm14,xmm13,0x30
    10402e8e4aed:	c4 41 78 59 ee                                  	vmulps xmm13,xmm0,xmm14
    10402e8e4af2:	48 8b c6                                        	mov    rax,rsi
    10402e8e4af5:	c4 42 79 18 34 03                               	vbroadcastss xmm14,DWORD PTR [r11+rax*1]
    10402e8e4afb:	c4 41 10 59 f6                                  	vmulps xmm14,xmm13,xmm14
    10402e8e4b00:	c4 c1 20 58 e6                                  	vaddps xmm4,xmm11,xmm14
    10402e8e4b05:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    10402e8e4b0a:	c4 41 30 5c cd                                  	vsubps xmm9,xmm9,xmm13
    10402e8e4b0f:	49 8b d1                                        	mov    rdx,r9
    10402e8e4b12:	c4 42 79 18 2c 13                               	vbroadcastss xmm13,DWORD PTR [r11+rdx*1]
    10402e8e4b18:	c4 41 30 59 cd                                  	vmulps xmm9,xmm9,xmm13
    10402e8e4b1d:	c4 41 58 58 e9                                  	vaddps xmm13,xmm4,xmm9
    10402e8e4b22:	c5 90 c2 e5 02                                  	vcmpleps xmm4,xmm13,xmm5
    10402e8e4b27:	c5 78 50 dc                                     	vmovmskps r11d,xmm4
    10402e8e4b2b:	41 8b f3                                        	mov    esi,r11d
    10402e8e4b2e:	83 f6 0f                                        	xor    esi,0xf
    10402e8e4b31:	c5 78 11 a5 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm12
    10402e8e4b39:	c5 78 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm10
    10402e8e4b41:	c5 f8 11 ad c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm5
    10402e8e4b49:	48 89 b5 10 fb ff ff                            	mov    QWORD PTR [rbp-0x4f0],rsi
    10402e8e4b50:	41 83 fb 0f                                     	cmp    r11d,0xf
    10402e8e4b54:	0f 84 54 2c 00 00                               	je     0x10402e8e77ae
    10402e8e4b5a:	c4 41 18 5e ed                                  	vdivps xmm13,xmm12,xmm13
    10402e8e4b5f:	49 8d 48 2c                                     	lea    rcx,[r8+0x2c]
    10402e8e4b63:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8e4b69:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e4b6d:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8e4b73:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8e4b77:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8e4b7b:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8e4b81:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e4b85:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8e4b89:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8e4b8d:	49 8d 48 28                                     	lea    rcx,[r8+0x28]
    10402e8e4b91:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8e4b97:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e4b9b:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8e4ba0:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8e4ba6:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8e4baa:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8e4bae:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8e4bb4:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e4bb8:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8e4bbc:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8e4bc0:	49 8d 48 24                                     	lea    rcx,[r8+0x24]
    10402e8e4bc4:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8e4bca:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e4bce:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    10402e8e4bd6:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8e4bdc:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8e4be0:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8e4be4:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8e4bea:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e4bee:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8e4bf2:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8e4bf6:	49 8d 48 20                                     	lea    rcx,[r8+0x20]
    10402e8e4bfa:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8e4c00:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e4c04:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8e4c0c:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8e4c12:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8e4c16:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8e4c1a:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8e4c20:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e4c24:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8e4c28:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8e4c2c:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    10402e8e4c33:	43 8b 8c 08 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x134]
    10402e8e4c3b:	83 e9 01                                        	sub    ecx,0x1
    10402e8e4c3e:	83 f9 01                                        	cmp    ecx,0x1
    10402e8e4c41:	0f 86 1d 17 00 00                               	jbe    0x10402e8e6364
    10402e8e4c47:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    10402e8e4c4f:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    10402e8e4c58:	0f 85 1f 00 00 00                               	jne    0x10402e8e4c7d
    10402e8e4c5e:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    10402e8e4c63:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    10402e8e4c6b:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8e4c73:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8e4c78:	e9 7f 2a 00 00                                  	jmp    0x10402e8e76fc
    10402e8e4c7d:	8b ce                                           	mov    ecx,esi
    10402e8e4c7f:	83 e1 04                                        	and    ecx,0x4
    10402e8e4c82:	44 8b e6                                        	mov    r12d,esi
    10402e8e4c85:	41 83 e4 02                                     	and    r12d,0x2
    10402e8e4c89:	44 8b fe                                        	mov    r15d,esi
    10402e8e4c8c:	41 83 e7 01                                     	and    r15d,0x1
    10402e8e4c90:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8e4c98:	4c 89 8d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r9
    10402e8e4c9f:	c5 78 11 ad 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm13
    10402e8e4ca7:	c5 78 11 8d 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm9
    10402e8e4caf:	c5 78 11 b5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm14
    10402e8e4cb7:	c5 78 11 9d 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm11
    10402e8e4cbf:	4c 89 9d 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r11
    10402e8e4cc6:	48 89 8d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rcx
    10402e8e4ccd:	4c 89 a5 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r12
    10402e8e4cd4:	4c 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r15
    10402e8e4cdb:	45 33 e4                                        	xor    r12d,r12d
    10402e8e4cde:	e9 3c 00 00 00                                  	jmp    0x10402e8e4d1f
    10402e8e4ce3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e4cec:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e4cf5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e4cfe:	66 90                                           	xchg   ax,ax
    10402e8e4d00:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    10402e8e4d08:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    10402e8e4d10:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    10402e8e4d17:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e4d1f:	44 8b bd 78 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x288]
    10402e8e4d26:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    10402e8e4d2c:	8b 9d 08 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f8]
    10402e8e4d32:	8b 95 00 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x300]
    10402e8e4d38:	4c 89 a5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r12
    10402e8e4d3f:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e4d44:	0f 85 d5 5f 00 00                               	jne    0x10402e8ead1f
    10402e8e4d4a:	43 8b b4 08 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r9*1+0x13c]
    10402e8e4d52:	41 8b cc                                        	mov    ecx,r12d
    10402e8e4d55:	d3 ee                                           	shr    esi,cl
    10402e8e4d57:	40 f6 c6 01                                     	test   sil,0x1
    10402e8e4d5b:	0f 85 2e 00 00 00                               	jne    0x10402e8e4d8f
    10402e8e4d61:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8e4d67:	41 8b f4                                        	mov    esi,r12d
    10402e8e4d6a:	c1 e6 06                                        	shl    esi,0x6
    10402e8e4d6d:	03 ce                                           	add    ecx,esi
    10402e8e4d6f:	c4 41 7a 7f 64 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm12
    10402e8e4d76:	c4 41 7a 7f 64 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm12
    10402e8e4d7d:	c4 41 7a 7f 64 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm12
    10402e8e4d84:	c4 41 7a 7f 24 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm12
    10402e8e4d8a:	e9 6e 12 00 00                                  	jmp    0x10402e8e5ffd
    10402e8e4d8f:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8e4d95:	41 8b f4                                        	mov    esi,r12d
    10402e8e4d98:	c1 e6 06                                        	shl    esi,0x6
    10402e8e4d9b:	03 f1                                           	add    esi,ecx
    10402e8e4d9d:	41 6b cc 4c                                     	imul   ecx,r12d,0x4c
    10402e8e4da1:	41 03 cf                                        	add    ecx,r15d
    10402e8e4da4:	45 8b 64 08 38                                  	mov    r12d,DWORD PTR [r8+rcx*1+0x38]
    10402e8e4da9:	41 83 7c 08 38 00                               	cmp    DWORD PTR [r8+rcx*1+0x38],0x0
    10402e8e4daf:	0f 85 02 12 00 00                               	jne    0x10402e8e5fb7
    10402e8e4db5:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    10402e8e4dbc:	41 c1 e4 04                                     	shl    r12d,0x4
    10402e8e4dc0:	45 8d 3c 1c                                     	lea    r15d,[r12+rbx*1]
    10402e8e4dc4:	49 8d 58 04                                     	lea    rbx,[r8+0x4]
    10402e8e4dc8:	c4 a2 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [rbx+r15*1]
    10402e8e4dce:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e4dd2:	46 8d 0c 20                                     	lea    r9d,[rax+r12*1]
    10402e8e4dd6:	c4 a2 79 18 04 0b                               	vbroadcastss xmm0,DWORD PTR [rbx+r9*1]
    10402e8e4ddc:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8e4de0:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8e4de4:	44 03 e2                                        	add    r12d,edx
    10402e8e4de7:	c4 a2 79 18 24 23                               	vbroadcastss xmm4,DWORD PTR [rbx+r12*1]
    10402e8e4ded:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e4df1:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8e4df5:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8e4df9:	c4 82 79 18 24 38                               	vbroadcastss xmm4,DWORD PTR [r8+r15*1]
    10402e8e4dff:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e4e03:	c4 82 79 18 34 08                               	vbroadcastss xmm6,DWORD PTR [r8+r9*1]
    10402e8e4e09:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    10402e8e4e0d:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    10402e8e4e11:	c4 82 79 18 24 20                               	vbroadcastss xmm4,DWORD PTR [r8+r12*1]
    10402e8e4e17:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e4e1b:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    10402e8e4e1f:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    10402e8e4e23:	41 8b 1c 08                                     	mov    ebx,DWORD PTR [r8+rcx*1]
    10402e8e4e27:	83 fb 01                                        	cmp    ebx,0x1
    10402e8e4e2a:	0f 85 8c 0e 00 00                               	jne    0x10402e8e5cbc
    10402e8e4e30:	41 8b 44 08 28                                  	mov    eax,DWORD PTR [r8+rcx*1+0x28]
    10402e8e4e35:	85 c0                                           	test   eax,eax
    10402e8e4e37:	0f 84 7f 0e 00 00                               	je     0x10402e8e5cbc
    10402e8e4e3d:	41 8b 54 08 1c                                  	mov    edx,DWORD PTR [r8+rcx*1+0x1c]
    10402e8e4e42:	85 d2                                           	test   edx,edx
    10402e8e4e44:	0f 8e 72 0e 00 00                               	jle    0x10402e8e5cbc
    10402e8e4e4a:	41 8b 7c 08 20                                  	mov    edi,DWORD PTR [r8+rcx*1+0x20]
    10402e8e4e4f:	85 ff                                           	test   edi,edi
    10402e8e4e51:	0f 8e 62 0e 00 00                               	jle    0x10402e8e5cb9
    10402e8e4e57:	44 8b d2                                        	mov    r10d,edx
    10402e8e4e5a:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    10402e8e4e5f:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    10402e8e4e64:	45 8b 64 08 10                                  	mov    r12d,DWORD PTR [r8+rcx*1+0x10]
    10402e8e4e69:	45 33 ff                                        	xor    r15d,r15d
    10402e8e4e6c:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    10402e8e4e73:	41 0f 95 c7                                     	setne  r15b
    10402e8e4e77:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    10402e8e4e7e:	41 0f 95 c4                                     	setne  r12b
    10402e8e4e82:	45 0f b6 e4                                     	movzx  r12d,r12b
    10402e8e4e86:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    10402e8e4e8d:	45 23 e7                                        	and    r12d,r15d
    10402e8e4e90:	0f 85 0d 00 00 00                               	jne    0x10402e8e4ea3
    10402e8e4e96:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e4e9a:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    10402e8e4e9e:	e9 0a 00 00 00                                  	jmp    0x10402e8e4ead
    10402e8e4ea3:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    10402e8e4ea9:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    10402e8e4ead:	c5 d8 59 f6                                     	vmulps xmm6,xmm4,xmm6
    10402e8e4eb1:	44 8b d7                                        	mov    r10d,edi
    10402e8e4eb4:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    10402e8e4eb9:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    10402e8e4ebe:	45 8b 7c 08 14                                  	mov    r15d,DWORD PTR [r8+rcx*1+0x14]
    10402e8e4ec3:	33 db                                           	xor    ebx,ebx
    10402e8e4ec5:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    10402e8e4ecc:	0f 95 c3                                        	setne  bl
    10402e8e4ecf:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    10402e8e4ed6:	41 0f 95 c7                                     	setne  r15b
    10402e8e4eda:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e8e4ede:	44 23 fb                                        	and    r15d,ebx
    10402e8e4ee1:	0f 85 0d 00 00 00                               	jne    0x10402e8e4ef4
    10402e8e4ee7:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e4eeb:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8e4eef:	e9 0a 00 00 00                                  	jmp    0x10402e8e4efe
    10402e8e4ef4:	c4 e3 79 08 e0 09                               	vroundps xmm4,xmm0,0x9
    10402e8e4efa:	c5 f8 5c c4                                     	vsubps xmm0,xmm0,xmm4
    10402e8e4efe:	c5 c0 59 c0                                     	vmulps xmm0,xmm7,xmm0
    10402e8e4f02:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    10402e8e4f0c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e4f11:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8e4f15:	c5 f8 58 e7                                     	vaddps xmm4,xmm0,xmm7
    10402e8e4f19:	41 8b 5c 08 0c                                  	mov    ebx,DWORD PTR [r8+rcx*1+0xc]
    10402e8e4f1e:	33 db                                           	xor    ebx,ebx
    10402e8e4f20:	41 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+rcx*1+0xc],0x2600
    10402e8e4f29:	0f 94 c3                                        	sete   bl
    10402e8e4f2c:	85 db                                           	test   ebx,ebx
    10402e8e4f2e:	0f 85 69 00 00 00                               	jne    0x10402e8e4f9d
    10402e8e4f34:	c4 e3 79 08 c4 09                               	vroundps xmm0,xmm4,0x9
    10402e8e4f3a:	4c 8b 15 14 bb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbb14]        # 0x10402e8e0a55
    10402e8e4f41:	c4 c1 78 54 2a                                  	vandps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8e4f46:	4c 8b 15 64 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe864]        # 0x10402e8e37b1
    10402e8e4f4d:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e4f52:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8e4f57:	c4 c1 50 c2 e8 01                               	vcmpltps xmm5,xmm5,xmm8
    10402e8e4f5d:	4c 8b 15 0b e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe80b]        # 0x10402e8e376f
    10402e8e4f64:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8e4f69:	c4 41 78 54 d7                                  	vandps xmm10,xmm0,xmm15
    10402e8e4f6e:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8e4f74:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    10402e8e4f79:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    10402e8e4f7e:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    10402e8e4f82:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8e4f86:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    10402e8e4f8a:	c4 c1 79 28 e2                                  	vmovapd xmm4,xmm10
    10402e8e4f8f:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    10402e8e4f94:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e4f98:	e9 49 00 00 00                                  	jmp    0x10402e8e4fe6
    10402e8e4f9d:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    10402e8e4fa3:	4c 8b 15 ab ba ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbaab]        # 0x10402e8e0a55
    10402e8e4faa:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    10402e8e4faf:	4c 8b 15 fb e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7fb]        # 0x10402e8e37b1
    10402e8e4fb6:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e4fbb:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8e4fc0:	c4 41 38 c2 c2 01                               	vcmpltps xmm8,xmm8,xmm10
    10402e8e4fc6:	4c 8b 15 a2 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a2]        # 0x10402e8e376f
    10402e8e4fcd:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    10402e8e4fd2:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    10402e8e4fd7:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    10402e8e4fdd:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8e4fe1:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8e4fe6:	c4 e3 79 08 ee 09                               	vroundps xmm5,xmm6,0x9
    10402e8e4fec:	4c 8b 15 7c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77c]        # 0x10402e8e376f
    10402e8e4ff3:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    10402e8e4ff8:	c4 c1 50 54 cf                                  	vandps xmm1,xmm5,xmm15
    10402e8e4ffd:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    10402e8e5003:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    10402e8e5007:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    10402e8e500c:	4c 8b 15 7f e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77f]        # 0x10402e8e3792
    10402e8e5013:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8e5018:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8e501c:	4c 8b 15 32 ba ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffba32]        # 0x10402e8e0a55
    10402e8e5023:	c4 c1 50 54 1a                                  	vandps xmm3,xmm5,XMMWORD PTR [r10]
    10402e8e5028:	c4 41 60 c2 d2 01                               	vcmpltps xmm10,xmm3,xmm10
    10402e8e502e:	c5 29 df fa                                     	vpandn xmm15,xmm10,xmm2
    10402e8e5032:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    10402e8e5037:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8e503c:	44 8d 4a ff                                     	lea    r9d,[rdx-0x1]
    10402e8e5040:	c4 c1 79 6e c9                                  	vmovd  xmm1,r9d
    10402e8e5045:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e8e504a:	45 8b 4c 08 2c                                  	mov    r9d,DWORD PTR [r8+rcx*1+0x2c]
    10402e8e504f:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8e5053:	c4 e2 29 3d db                                  	vpmaxsd xmm3,xmm10,xmm3
    10402e8e5058:	c4 e2 61 39 d9                                  	vpminsd xmm3,xmm3,xmm1
    10402e8e505d:	45 85 e4                                        	test   r12d,r12d
    10402e8e5060:	0f 84 60 00 00 00                               	je     0x10402e8e50c6
    10402e8e5066:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    10402e8e506b:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8e5070:	c5 a9 db db                                     	vpand  xmm3,xmm10,xmm3
    10402e8e5074:	45 85 c9                                        	test   r9d,r9d
    10402e8e5077:	0f 85 49 00 00 00                               	jne    0x10402e8e50c6
    10402e8e507d:	c5 f9 6e da                                     	vmovd  xmm3,edx
    10402e8e5081:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8e5086:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8e508b:	c5 29 66 c9                                     	vpcmpgtd xmm9,xmm10,xmm1
    10402e8e508f:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    10402e8e5093:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e5098:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8e509d:	c4 41 11 66 ea                                  	vpcmpgtd xmm13,xmm13,xmm10
    10402e8e50a2:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    10402e8e50a7:	c4 41 61 db cd                                  	vpand  xmm9,xmm3,xmm13
    10402e8e50ac:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e50b1:	c4 c1 29 fe d9                                  	vpaddd xmm3,xmm10,xmm9
    10402e8e50b6:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    10402e8e50be:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    10402e8e50c6:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    10402e8e50ca:	c4 41 59 db c0                                  	vpand  xmm8,xmm4,xmm8
    10402e8e50cf:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8e50d4:	8d 77 ff                                        	lea    esi,[rdi-0x1]
    10402e8e50d7:	c5 f9 6e d6                                     	vmovd  xmm2,esi
    10402e8e50db:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8e50e0:	41 8b 4c 08 30                                  	mov    ecx,DWORD PTR [r8+rcx*1+0x30]
    10402e8e50e5:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    10402e8e50e9:	c4 e2 39 3d e4                                  	vpmaxsd xmm4,xmm8,xmm4
    10402e8e50ee:	c4 e2 59 39 e2                                  	vpminsd xmm4,xmm4,xmm2
    10402e8e50f3:	45 85 ff                                        	test   r15d,r15d
    10402e8e50f6:	0f 84 4f 00 00 00                               	je     0x10402e8e514b
    10402e8e50fc:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    10402e8e5100:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8e5105:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    10402e8e510a:	85 c9                                           	test   ecx,ecx
    10402e8e510c:	0f 85 39 00 00 00                               	jne    0x10402e8e514b
    10402e8e5112:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    10402e8e5116:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8e511b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8e5120:	c5 39 66 ca                                     	vpcmpgtd xmm9,xmm8,xmm2
    10402e8e5124:	c5 31 db cc                                     	vpand  xmm9,xmm9,xmm4
    10402e8e5128:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e512d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8e5132:	c4 41 11 66 e8                                  	vpcmpgtd xmm13,xmm13,xmm8
    10402e8e5137:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    10402e8e513c:	c4 41 59 db cd                                  	vpand  xmm9,xmm4,xmm13
    10402e8e5141:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e5146:	c4 c1 39 fe e1                                  	vpaddd xmm4,xmm8,xmm9
    10402e8e514b:	c5 79 6e ea                                     	vmovd  xmm13,edx
    10402e8e514f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8e5154:	c4 c2 59 40 e5                                  	vpmulld xmm4,xmm4,xmm13
    10402e8e5159:	c5 59 fe cb                                     	vpaddd xmm9,xmm4,xmm3
    10402e8e515d:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    10402e8e5163:	c4 63 79 16 ce 02                               	vpextrd esi,xmm9,0x2
    10402e8e5169:	48 89 95 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdx
    10402e8e5170:	c4 63 79 16 ca 01                               	vpextrd edx,xmm9,0x1
    10402e8e5176:	48 89 95 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rdx
    10402e8e517d:	c5 79 7e ca                                     	vmovd  edx,xmm9
    10402e8e5181:	85 db                                           	test   ebx,ebx
    10402e8e5183:	0f 85 4a 09 00 00                               	jne    0x10402e8e5ad3
    10402e8e5189:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    10402e8e5193:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8e5198:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8e519d:	c4 41 29 fe d1                                  	vpaddd xmm10,xmm10,xmm9
    10402e8e51a2:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    10402e8e51a7:	c4 42 29 3d f6                                  	vpmaxsd xmm14,xmm10,xmm14
    10402e8e51ac:	c4 62 09 39 f1                                  	vpminsd xmm14,xmm14,xmm1
    10402e8e51b1:	45 85 e4                                        	test   r12d,r12d
    10402e8e51b4:	0f 84 48 00 00 00                               	je     0x10402e8e5202
    10402e8e51ba:	c4 41 79 6e f1                                  	vmovd  xmm14,r9d
    10402e8e51bf:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    10402e8e51c4:	c4 41 29 db f6                                  	vpand  xmm14,xmm10,xmm14
    10402e8e51c9:	45 85 c9                                        	test   r9d,r9d
    10402e8e51cc:	0f 85 30 00 00 00                               	jne    0x10402e8e5202
    10402e8e51d2:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    10402e8e51d7:	c5 a9 66 c9                                     	vpcmpgtd xmm1,xmm10,xmm1
    10402e8e51db:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    10402e8e51e0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e51e5:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    10402e8e51ea:	c4 41 09 66 f2                                  	vpcmpgtd xmm14,xmm14,xmm10
    10402e8e51ef:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    10402e8e51f3:	c4 41 11 db f6                                  	vpand  xmm14,xmm13,xmm14
    10402e8e51f8:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    10402e8e51fd:	c4 41 29 fe f6                                  	vpaddd xmm14,xmm10,xmm14
    10402e8e5202:	c4 41 39 fe c1                                  	vpaddd xmm8,xmm8,xmm9
    10402e8e5207:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8e520c:	c4 42 39 3d d2                                  	vpmaxsd xmm10,xmm8,xmm10
    10402e8e5211:	c4 62 29 39 d2                                  	vpminsd xmm10,xmm10,xmm2
    10402e8e5216:	45 85 ff                                        	test   r15d,r15d
    10402e8e5219:	0f 84 4d 00 00 00                               	je     0x10402e8e526c
    10402e8e521f:	c5 79 6e d1                                     	vmovd  xmm10,ecx
    10402e8e5223:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e5228:	c4 41 29 db d0                                  	vpand  xmm10,xmm10,xmm8
    10402e8e522d:	85 c9                                           	test   ecx,ecx
    10402e8e522f:	0f 85 37 00 00 00                               	jne    0x10402e8e526c
    10402e8e5235:	c5 79 6e d7                                     	vmovd  xmm10,edi
    10402e8e5239:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e523e:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8e5242:	c5 b9 66 d2                                     	vpcmpgtd xmm2,xmm8,xmm2
    10402e8e5246:	c4 c1 69 db d2                                  	vpand  xmm2,xmm2,xmm10
    10402e8e524b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e5250:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    10402e8e5255:	c4 c1 71 66 c8                                  	vpcmpgtd xmm1,xmm1,xmm8
    10402e8e525a:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    10402e8e525e:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    10402e8e5262:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8e5267:	c4 41 39 fe d2                                  	vpaddd xmm10,xmm8,xmm10
    10402e8e526c:	c4 42 29 40 c5                                  	vpmulld xmm8,xmm10,xmm13
    10402e8e5271:	c5 39 fe d3                                     	vpaddd xmm10,xmm8,xmm3
    10402e8e5275:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    10402e8e527c:	0f 85 da 00 00 00                               	jne    0x10402e8e535c
    10402e8e5282:	c4 41 61 fe c9                                  	vpaddd xmm9,xmm3,xmm9
    10402e8e5287:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    10402e8e528c:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    10402e8e5291:	83 ff 0f                                        	cmp    edi,0xf
    10402e8e5294:	0f 84 23 00 00 00                               	je     0x10402e8e52bd
    10402e8e529a:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8e529d:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e52a1:	44 8b a5 a8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x258]
    10402e8e52a8:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e52ac:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e52b0:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    10402e8e52b4:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e52b8:	e9 05 01 00 00                                  	jmp    0x10402e8e53c2
    10402e8e52bd:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    10402e8e52c0:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    10402e8e52c6:	44 8b a5 a8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x258]
    10402e8e52cd:	42 8d 3c a0                                     	lea    edi,[rax+r12*4]
    10402e8e52d1:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    10402e8e52d7:	c4 41 39 6c c1                                  	vpunpcklqdq xmm8,xmm8,xmm9
    10402e8e52dc:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8e52df:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    10402e8e52e5:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    10402e8e52eb:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8e52ee:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    10402e8e52f4:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    10402e8e52f9:	c4 41 38 c6 e9 dd                               	vshufps xmm13,xmm8,xmm9,0xdd
    10402e8e52ff:	c4 41 38 c6 c1 88                               	vshufps xmm8,xmm8,xmm9,0x88
    10402e8e5305:	c4 c1 31 72 f2 02                               	vpslld xmm9,xmm10,0x2
    10402e8e530b:	c5 79 7e cf                                     	vmovd  edi,xmm9
    10402e8e530f:	03 f8                                           	add    edi,eax
    10402e8e5311:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8e5317:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    10402e8e531d:	03 f8                                           	add    edi,eax
    10402e8e531f:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    10402e8e5325:	c4 41 29 6c d6                                  	vpunpcklqdq xmm10,xmm10,xmm14
    10402e8e532a:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    10402e8e5330:	03 f8                                           	add    edi,eax
    10402e8e5332:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    10402e8e5338:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    10402e8e533e:	03 f8                                           	add    edi,eax
    10402e8e5340:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    10402e8e5346:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    10402e8e534b:	c4 41 28 c6 f1 dd                               	vshufps xmm14,xmm10,xmm9,0xdd
    10402e8e5351:	c4 41 28 c6 c9 88                               	vshufps xmm9,xmm10,xmm9,0x88
    10402e8e5357:	e9 6c 03 00 00                                  	jmp    0x10402e8e56c8
    10402e8e535c:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    10402e8e5363:	0f 85 08 00 00 00                               	jne    0x10402e8e5371
    10402e8e5369:	45 33 ff                                        	xor    r15d,r15d
    10402e8e536c:	e9 07 00 00 00                                  	jmp    0x10402e8e5378
    10402e8e5371:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    10402e8e5374:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8e5378:	83 bd 80 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x380],0x0
    10402e8e537f:	0f 85 08 00 00 00                               	jne    0x10402e8e538d
    10402e8e5385:	45 33 e4                                        	xor    r12d,r12d
    10402e8e5388:	e9 0d 00 00 00                                  	jmp    0x10402e8e539a
    10402e8e538d:	8b bd a8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x258]
    10402e8e5393:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8e5396:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    10402e8e539a:	83 bd b0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x250],0x0
    10402e8e53a1:	0f 85 07 00 00 00                               	jne    0x10402e8e53ae
    10402e8e53a7:	33 ff                                           	xor    edi,edi
    10402e8e53a9:	e9 07 00 00 00                                  	jmp    0x10402e8e53b5
    10402e8e53ae:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8e53b1:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e53b5:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e53bc:	0f 82 53 00 00 00                               	jb     0x10402e8e5415
    10402e8e53c2:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    10402e8e53c8:	8d 1c 98                                        	lea    ebx,[rax+rbx*4]
    10402e8e53cb:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8e53cf:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    10402e8e53d3:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8e53d8:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8e53dd:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    10402e8e53e4:	0f 85 3b 00 00 00                               	jne    0x10402e8e5425
    10402e8e53ea:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    10402e8e53f0:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8e53f4:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e53f8:	c5 79 7e ca                                     	vmovd  edx,xmm9
    10402e8e53fc:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    10402e8e53ff:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e5403:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    10402e8e5409:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    10402e8e540c:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8e5410:	e9 89 00 00 00                                  	jmp    0x10402e8e549e
    10402e8e5415:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    10402e8e5419:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8e541e:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8e5423:	33 db                                           	xor    ebx,ebx
    10402e8e5425:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    10402e8e542c:	0f 85 07 00 00 00                               	jne    0x10402e8e5439
    10402e8e5432:	33 d2                                           	xor    edx,edx
    10402e8e5434:	e9 0d 00 00 00                                  	jmp    0x10402e8e5446
    10402e8e5439:	c4 41 79 7e cf                                  	vmovd  r15d,xmm9
    10402e8e543e:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8e5442:	43 8b 14 38                                     	mov    edx,DWORD PTR [r8+r15*1]
    10402e8e5446:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    10402e8e544d:	0f 85 08 00 00 00                               	jne    0x10402e8e545b
    10402e8e5453:	45 33 ff                                        	xor    r15d,r15d
    10402e8e5456:	e9 0e 00 00 00                                  	jmp    0x10402e8e5469
    10402e8e545b:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    10402e8e5461:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8e5465:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e5469:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    10402e8e5470:	0f 85 07 00 00 00                               	jne    0x10402e8e547d
    10402e8e5476:	33 c9                                           	xor    ecx,ecx
    10402e8e5478:	e9 0d 00 00 00                                  	jmp    0x10402e8e548a
    10402e8e547d:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    10402e8e5483:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    10402e8e5486:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8e548a:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e5491:	0f 83 07 00 00 00                               	jae    0x10402e8e549e
    10402e8e5497:	33 f6                                           	xor    esi,esi
    10402e8e5499:	e9 0d 00 00 00                                  	jmp    0x10402e8e54ab
    10402e8e549e:	c4 63 79 16 ce 03                               	vpextrd esi,xmm9,0x3
    10402e8e54a4:	8d 34 b0                                        	lea    esi,[rax+rsi*4]
    10402e8e54a7:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    10402e8e54ab:	c4 43 11 22 cc 01                               	vpinsrd xmm9,xmm13,r12d,0x1
    10402e8e54b1:	c5 79 6e ea                                     	vmovd  xmm13,edx
    10402e8e54b5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8e54ba:	c4 43 11 22 ef 01                               	vpinsrd xmm13,xmm13,r15d,0x1
    10402e8e54c0:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    10402e8e54c7:	0f 85 2d 00 00 00                               	jne    0x10402e8e54fa
    10402e8e54cd:	c4 43 79 16 d4 01                               	vpextrd r12d,xmm10,0x1
    10402e8e54d3:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e54d7:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e54db:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    10402e8e54e0:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8e54e4:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e54e8:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    10402e8e54ee:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    10402e8e54f1:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e54f5:	e9 a2 00 00 00                                  	jmp    0x10402e8e559c
    10402e8e54fa:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    10402e8e5501:	0f 85 08 00 00 00                               	jne    0x10402e8e550f
    10402e8e5507:	45 33 ff                                        	xor    r15d,r15d
    10402e8e550a:	e9 0d 00 00 00                                  	jmp    0x10402e8e551c
    10402e8e550f:	c4 41 79 7e d4                                  	vmovd  r12d,xmm10
    10402e8e5514:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e5518:	47 8b 3c 20                                     	mov    r15d,DWORD PTR [r8+r12*1]
    10402e8e551c:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    10402e8e5523:	0f 85 08 00 00 00                               	jne    0x10402e8e5531
    10402e8e5529:	45 33 e4                                        	xor    r12d,r12d
    10402e8e552c:	e9 0e 00 00 00                                  	jmp    0x10402e8e553f
    10402e8e5531:	c4 43 79 16 d4 01                               	vpextrd r12d,xmm10,0x1
    10402e8e5537:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e553b:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e553f:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    10402e8e5546:	0f 85 07 00 00 00                               	jne    0x10402e8e5553
    10402e8e554c:	33 d2                                           	xor    edx,edx
    10402e8e554e:	e9 0d 00 00 00                                  	jmp    0x10402e8e5560
    10402e8e5553:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    10402e8e5559:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    10402e8e555c:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e5560:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e5567:	0f 83 2f 00 00 00                               	jae    0x10402e8e559c
    10402e8e556d:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    10402e8e5573:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    10402e8e5579:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    10402e8e557e:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8e5583:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8e5588:	c4 43 11 22 ec 01                               	vpinsrd xmm13,xmm13,r12d,0x1
    10402e8e558e:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    10402e8e5594:	45 33 c9                                        	xor    r9d,r9d
    10402e8e5597:	e9 6f 00 00 00                                  	jmp    0x10402e8e560b
    10402e8e559c:	c4 43 79 16 d1 03                               	vpextrd r9d,xmm10,0x3
    10402e8e55a2:	46 8d 0c 88                                     	lea    r9d,[rax+r9*4]
    10402e8e55a6:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8e55aa:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    10402e8e55b0:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    10402e8e55b6:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    10402e8e55bb:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    10402e8e55c0:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8e55c5:	c4 43 11 22 ec 01                               	vpinsrd xmm13,xmm13,r12d,0x1
    10402e8e55cb:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    10402e8e55d1:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    10402e8e55d8:	0f 85 2d 00 00 00                               	jne    0x10402e8e560b
    10402e8e55de:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8e55e4:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8e55e7:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e55eb:	c4 41 79 7e c4                                  	vmovd  r12d,xmm8
    10402e8e55f0:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e55f4:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e55f8:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    10402e8e55fe:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8e5602:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e5606:	e9 78 00 00 00                                  	jmp    0x10402e8e5683
    10402e8e560b:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    10402e8e5612:	0f 85 08 00 00 00                               	jne    0x10402e8e5620
    10402e8e5618:	45 33 e4                                        	xor    r12d,r12d
    10402e8e561b:	e9 0b 00 00 00                                  	jmp    0x10402e8e562b
    10402e8e5620:	c5 79 7e c7                                     	vmovd  edi,xmm8
    10402e8e5624:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8e5627:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    10402e8e562b:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    10402e8e5632:	0f 85 07 00 00 00                               	jne    0x10402e8e563f
    10402e8e5638:	33 ff                                           	xor    edi,edi
    10402e8e563a:	e9 0d 00 00 00                                  	jmp    0x10402e8e564c
    10402e8e563f:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8e5645:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8e5648:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e564c:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    10402e8e5653:	0f 85 08 00 00 00                               	jne    0x10402e8e5661
    10402e8e5659:	45 33 ff                                        	xor    r15d,r15d
    10402e8e565c:	e9 0e 00 00 00                                  	jmp    0x10402e8e566f
    10402e8e5661:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    10402e8e5667:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    10402e8e566b:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e566f:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e5676:	0f 83 07 00 00 00                               	jae    0x10402e8e5683
    10402e8e567c:	33 c0                                           	xor    eax,eax
    10402e8e567e:	e9 0d 00 00 00                                  	jmp    0x10402e8e5690
    10402e8e5683:	c4 63 79 16 c2 03                               	vpextrd edx,xmm8,0x3
    10402e8e5689:	8d 04 90                                        	lea    eax,[rax+rdx*4]
    10402e8e568c:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e5690:	c4 63 31 22 c3 03                               	vpinsrd xmm8,xmm9,ebx,0x3
    10402e8e5696:	c4 63 29 22 ce 03                               	vpinsrd xmm9,xmm10,esi,0x3
    10402e8e569c:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    10402e8e56a1:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e56a6:	c4 63 29 22 d7 01                               	vpinsrd xmm10,xmm10,edi,0x1
    10402e8e56ac:	c4 43 29 22 d7 02                               	vpinsrd xmm10,xmm10,r15d,0x2
    10402e8e56b2:	c4 63 29 22 f0 03                               	vpinsrd xmm14,xmm10,eax,0x3
    10402e8e56b8:	c4 43 11 22 d1 03                               	vpinsrd xmm10,xmm13,r9d,0x3
    10402e8e56be:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    10402e8e56c3:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    10402e8e56c8:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    10402e8e56cc:	c5 98 5c f8                                     	vsubps xmm7,xmm12,xmm0
    10402e8e56d0:	c5 c8 5c ed                                     	vsubps xmm5,xmm6,xmm5
    10402e8e56d4:	c5 98 5c f5                                     	vsubps xmm6,xmm12,xmm5
    10402e8e56d8:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    10402e8e56e2:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e56e7:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8e56ec:	c4 c1 39 db ca                                  	vpand  xmm1,xmm8,xmm10
    10402e8e56f1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e56f6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8e56fc:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8e5701:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5706:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8e570b:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8e570f:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8e5713:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8e5718:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8e571c:	c4 c1 11 db d2                                  	vpand  xmm2,xmm13,xmm10
    10402e8e5721:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5726:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8e572c:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8e5731:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5736:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8e573b:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8e573f:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8e5743:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8e5748:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    10402e8e574c:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    10402e8e5750:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    10402e8e5754:	c4 c1 31 db d2                                  	vpand  xmm2,xmm9,xmm10
    10402e8e5759:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e575e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8e5764:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8e5769:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e576e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8e5773:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8e5777:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8e577b:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8e5780:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    10402e8e5784:	c4 c1 09 db da                                  	vpand  xmm3,xmm14,xmm10
    10402e8e5789:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e578e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8e5794:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8e5799:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e579e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8e57a3:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8e57a7:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8e57ab:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8e57b0:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8e57b4:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    10402e8e57b8:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    10402e8e57bc:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    10402e8e57c0:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    10402e8e57ca:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8e57cf:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8e57d3:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    10402e8e57d7:	44 8b a5 48 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1b8]
    10402e8e57de:	c4 81 7a 7f 0c 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm1
    10402e8e57e4:	c4 c1 71 72 d0 10                               	vpsrld xmm1,xmm8,0x10
    10402e8e57ea:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    10402e8e57ef:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e57f4:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8e57fa:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8e57ff:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5804:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8e5809:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8e580d:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8e5811:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8e5816:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8e581a:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    10402e8e5820:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8e5825:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e582a:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8e5830:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8e5835:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e583a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8e583f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8e5843:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8e5847:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8e584c:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8e5850:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8e5854:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    10402e8e5858:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    10402e8e585e:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8e5863:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5868:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8e586e:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8e5873:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5878:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8e587d:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8e5881:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8e5885:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8e588a:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    10402e8e588e:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    10402e8e5894:	c4 c1 59 db e2                                  	vpand  xmm4,xmm4,xmm10
    10402e8e5899:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e589e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8e58a4:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8e58a9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e58ae:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8e58b3:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8e58b7:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8e58bb:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8e58c0:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    10402e8e58c4:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    10402e8e58c8:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    10402e8e58cc:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8e58d0:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    10402e8e58d4:	c4 81 7a 7f 4c 20 20                            	vmovdqu XMMWORD PTR [r8+r12*1+0x20],xmm1
    10402e8e58db:	c4 c1 71 72 d0 08                               	vpsrld xmm1,xmm8,0x8
    10402e8e58e1:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    10402e8e58e6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e58eb:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8e58f1:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8e58f6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e58fb:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8e5900:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8e5904:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8e5908:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8e590d:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8e5911:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    10402e8e5917:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8e591c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5921:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8e5927:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8e592c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5931:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8e5936:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8e593a:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8e593e:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8e5943:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8e5947:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8e594b:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    10402e8e594f:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    10402e8e5955:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    10402e8e595a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e595f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8e5965:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8e596a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e596f:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8e5974:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8e5978:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8e597c:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8e5981:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    10402e8e5985:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    10402e8e598b:	c4 41 59 db d2                                  	vpand  xmm10,xmm4,xmm10
    10402e8e5990:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5995:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    10402e8e599b:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    10402e8e59a0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e59a5:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    10402e8e59ab:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    10402e8e59b0:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    10402e8e59b5:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    10402e8e59ba:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    10402e8e59bf:	c4 41 60 58 d2                                  	vaddps xmm10,xmm3,xmm10
    10402e8e59c4:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    10402e8e59c9:	c4 41 70 58 d2                                  	vaddps xmm10,xmm1,xmm10
    10402e8e59ce:	c5 28 59 d2                                     	vmulps xmm10,xmm10,xmm2
    10402e8e59d2:	c4 01 7a 7f 54 20 10                            	vmovdqu XMMWORD PTR [r8+r12*1+0x10],xmm10
    10402e8e59d9:	c4 c1 39 72 d0 18                               	vpsrld xmm8,xmm8,0x18
    10402e8e59df:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e59e4:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8e59ea:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8e59ef:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e59f4:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8e59fa:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8e59ff:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8e5a04:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8e5a09:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    10402e8e5a0e:	c4 c1 29 72 d5 18                               	vpsrld xmm10,xmm13,0x18
    10402e8e5a14:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5a19:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    10402e8e5a1f:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    10402e8e5a24:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5a29:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    10402e8e5a2f:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    10402e8e5a34:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    10402e8e5a39:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    10402e8e5a3e:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    10402e8e5a43:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    10402e8e5a48:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8e5a4d:	c4 c1 39 72 d1 18                               	vpsrld xmm8,xmm9,0x18
    10402e8e5a53:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5a58:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8e5a5e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8e5a63:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5a68:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8e5a6e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8e5a73:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8e5a78:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8e5a7d:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    10402e8e5a82:	c4 c1 39 72 d6 18                               	vpsrld xmm8,xmm14,0x18
    10402e8e5a88:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5a8d:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8e5a93:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8e5a98:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5a9d:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8e5aa3:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8e5aa8:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8e5aad:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8e5ab2:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    10402e8e5ab7:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    10402e8e5abb:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8e5abf:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    10402e8e5ac3:	41 8b fc                                        	mov    edi,r12d
    10402e8e5ac6:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8e5ace:	e9 c3 01 00 00                                  	jmp    0x10402e8e5c96
    10402e8e5ad3:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    10402e8e5ada:	0f 85 23 00 00 00                               	jne    0x10402e8e5b03
    10402e8e5ae0:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8e5ae3:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e5ae7:	44 8b a5 a8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x258]
    10402e8e5aee:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e5af2:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e5af6:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    10402e8e5afa:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e5afe:	e9 66 00 00 00                                  	jmp    0x10402e8e5b69
    10402e8e5b03:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    10402e8e5b0a:	0f 85 08 00 00 00                               	jne    0x10402e8e5b18
    10402e8e5b10:	45 33 ff                                        	xor    r15d,r15d
    10402e8e5b13:	e9 07 00 00 00                                  	jmp    0x10402e8e5b1f
    10402e8e5b18:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    10402e8e5b1b:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8e5b1f:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    10402e8e5b26:	0f 85 08 00 00 00                               	jne    0x10402e8e5b34
    10402e8e5b2c:	45 33 e4                                        	xor    r12d,r12d
    10402e8e5b2f:	e9 0d 00 00 00                                  	jmp    0x10402e8e5b41
    10402e8e5b34:	8b bd a8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x258]
    10402e8e5b3a:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    10402e8e5b3d:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    10402e8e5b41:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    10402e8e5b48:	0f 85 07 00 00 00                               	jne    0x10402e8e5b55
    10402e8e5b4e:	33 ff                                           	xor    edi,edi
    10402e8e5b50:	e9 07 00 00 00                                  	jmp    0x10402e8e5b5c
    10402e8e5b55:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    10402e8e5b58:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e5b5c:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e5b63:	0f 82 12 00 00 00                               	jb     0x10402e8e5b7b
    10402e8e5b69:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    10402e8e5b6f:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    10402e8e5b72:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e5b76:	e9 02 00 00 00                                  	jmp    0x10402e8e5b7d
    10402e8e5b7b:	33 c0                                           	xor    eax,eax
    10402e8e5b7d:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    10402e8e5b82:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e5b87:	c4 c3 79 22 c4 01                               	vpinsrd xmm0,xmm0,r12d,0x1
    10402e8e5b8d:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    10402e8e5b93:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    10402e8e5b99:	4c 8b 15 3a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb3a]        # 0x10402e8e56da
    10402e8e5ba0:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e5ba5:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e5ba9:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    10402e8e5bad:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5bb2:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8e5bb8:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8e5bbd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5bc2:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8e5bc7:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8e5bcb:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8e5bcf:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8e5bd4:	4c 8b 15 e7 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe7]        # 0x10402e8e57c2
    10402e8e5bdb:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e5be0:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8e5be4:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8e5be8:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    10402e8e5bee:	c4 c1 7a 7f 34 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm6
    10402e8e5bf4:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    10402e8e5bf9:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    10402e8e5bfd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5c02:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8e5c08:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8e5c0d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5c12:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8e5c17:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8e5c1b:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8e5c1f:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8e5c24:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8e5c28:	c4 c1 7a 7f 74 38 20                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x20],xmm6
    10402e8e5c2f:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    10402e8e5c34:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    10402e8e5c38:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5c3d:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e8e5c43:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e8e5c48:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5c4d:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e8e5c52:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e8e5c56:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e8e5c5a:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e8e5c5f:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    10402e8e5c63:	c4 c1 7a 7f 6c 38 10                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x10],xmm5
    10402e8e5c6a:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    10402e8e5c6f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e5c74:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8e5c7a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8e5c7f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e5c84:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8e5c89:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8e5c8d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8e5c91:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8e5c96:	4c 8b 15 25 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb25]        # 0x10402e8e57c2
    10402e8e5c9d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e5ca2:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e5ca6:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8e5caa:	c4 c1 7a 7f 44 38 30                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x30],xmm0
    10402e8e5cb1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e5cb4:	e9 44 03 00 00                                  	jmp    0x10402e8e5ffd
    10402e8e5cb9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e5cbc:	49 8d 40 08                                     	lea    rax,[r8+0x8]
    10402e8e5cc0:	c4 a2 79 18 3c 38                               	vbroadcastss xmm7,DWORD PTR [rax+r15*1]
    10402e8e5cc6:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    10402e8e5cca:	c4 22 79 18 04 08                               	vbroadcastss xmm8,DWORD PTR [rax+r9*1]
    10402e8e5cd0:	c4 41 79 28 d6                                  	vmovapd xmm10,xmm14
    10402e8e5cd5:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    10402e8e5cda:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8e5cdf:	c4 22 79 18 04 20                               	vbroadcastss xmm8,DWORD PTR [rax+r12*1]
    10402e8e5ce5:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    10402e8e5cea:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8e5cef:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    10402e8e5cf4:	c5 b8 59 df                                     	vmulps xmm3,xmm8,xmm7
    10402e8e5cf8:	83 fb 03                                        	cmp    ebx,0x3
    10402e8e5cfb:	0f 84 77 02 00 00                               	je     0x10402e8e5f78
    10402e8e5d01:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    10402e8e5d05:	c4 c1 7a 7f bc 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm7
    10402e8e5d0f:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    10402e8e5d19:	c4 c1 7a 7f bc 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm7
    10402e8e5d23:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    10402e8e5d2d:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    10402e8e5d37:	c4 c1 7a 7f 9c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm3
    10402e8e5d41:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    10402e8e5d4b:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    10402e8e5d52:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    10402e8e5d59:	45 33 e4                                        	xor    r12d,r12d
    10402e8e5d5c:	e9 2c 00 00 00                                  	jmp    0x10402e8e5d8d
    10402e8e5d61:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e5d6a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e5d73:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e5d7c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    10402e8e5d80:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    10402e8e5d86:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e5d89:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e5d8d:	4c 89 a5 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r12
    10402e8e5d94:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e5d99:	0f 85 e8 4f 00 00                               	jne    0x10402e8ead87
    10402e8e5d9f:	8b d1                                           	mov    edx,ecx
    10402e8e5da1:	41 8b cc                                        	mov    ecx,r12d
    10402e8e5da4:	8b 9d 10 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x4f0]
    10402e8e5daa:	d3 eb                                           	shr    ebx,cl
    10402e8e5dac:	f6 c3 01                                        	test   bl,0x1
    10402e8e5daf:	0f 84 1f 01 00 00                               	je     0x10402e8e5ed4
    10402e8e5db5:	41 8b 4c 10 10                                  	mov    ecx,DWORD PTR [r8+rdx*1+0x10]
    10402e8e5dba:	41 8b 5c 10 0c                                  	mov    ebx,DWORD PTR [r8+rdx*1+0xc]
    10402e8e5dbf:	45 8b 4c 10 08                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x8]
    10402e8e5dc4:	45 8b 4c 10 04                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x4]
    10402e8e5dc9:	48 89 9d 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rbx
    10402e8e5dd0:	41 8b 1c 10                                     	mov    ebx,DWORD PTR [r8+rdx*1]
    10402e8e5dd4:	83 fb 02                                        	cmp    ebx,0x2
    10402e8e5dd7:	0f 84 9a 00 00 00                               	je     0x10402e8e5e77
    10402e8e5ddd:	48 89 8d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rcx
    10402e8e5de4:	85 db                                           	test   ebx,ebx
    10402e8e5de6:	0f 85 39 00 00 00                               	jne    0x10402e8e5e25
    10402e8e5dec:	42 8d 9c a7 90 02 00 00                         	lea    ebx,[rdi+r12*4+0x290]
    10402e8e5df4:	c4 c1 7a 10 0c 18                               	vmovss xmm1,DWORD PTR [r8+rbx*1]
    10402e8e5dfa:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    10402e8e5e00:	41 8b cc                                        	mov    ecx,r12d
    10402e8e5e03:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e5e06:	03 d9                                           	add    ebx,ecx
    10402e8e5e08:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e5e0c:	41 8b c1                                        	mov    eax,r9d
    10402e8e5e0f:	8b 95 38 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c8]
    10402e8e5e15:	8b 8d f0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x310]
    10402e8e5e1b:	e8 00 04 eb ff                                  	call   0x10402e796220
    10402e8e5e20:	e9 af 00 00 00                                  	jmp    0x10402e8e5ed4
    10402e8e5e25:	44 8b da                                        	mov    r11d,edx
    10402e8e5e28:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    10402e8e5e2d:	42 8d 94 a7 90 02 00 00                         	lea    edx,[rdi+r12*4+0x290]
    10402e8e5e35:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    10402e8e5e3b:	42 8d 94 a7 80 02 00 00                         	lea    edx,[rdi+r12*4+0x280]
    10402e8e5e43:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    10402e8e5e49:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    10402e8e5e4f:	41 8b cc                                        	mov    ecx,r12d
    10402e8e5e52:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e5e55:	03 d1                                           	add    edx,ecx
    10402e8e5e57:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e5e5b:	41 8b c1                                        	mov    eax,r9d
    10402e8e5e5e:	44 8b ca                                        	mov    r9d,edx
    10402e8e5e61:	8b 95 38 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c8]
    10402e8e5e67:	8b 8d f0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x310]
    10402e8e5e6d:	e8 c6 03 eb ff                                  	call   0x10402e796238
    10402e8e5e72:	e9 5d 00 00 00                                  	jmp    0x10402e8e5ed4
    10402e8e5e77:	8b c2                                           	mov    eax,edx
    10402e8e5e79:	41 8b 5c 00 14                                  	mov    ebx,DWORD PTR [r8+rax*1+0x14]
    10402e8e5e7e:	45 8b 5c 00 18                                  	mov    r11d,DWORD PTR [r8+rax*1+0x18]
    10402e8e5e83:	46 8d bc a7 90 02 00 00                         	lea    r15d,[rdi+r12*4+0x290]
    10402e8e5e8b:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    10402e8e5e91:	46 8d bc a7 80 02 00 00                         	lea    r15d,[rdi+r12*4+0x280]
    10402e8e5e99:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    10402e8e5e9f:	46 8d bc a7 70 02 00 00                         	lea    r15d,[rdi+r12*4+0x270]
    10402e8e5ea7:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    10402e8e5ead:	44 8d bf 30 02 00 00                            	lea    r15d,[rdi+0x230]
    10402e8e5eb4:	41 8b d4                                        	mov    edx,r12d
    10402e8e5eb7:	c1 e2 04                                        	shl    edx,0x4
    10402e8e5eba:	44 03 fa                                        	add    r15d,edx
    10402e8e5ebd:	41 57                                           	push   r15
    10402e8e5ebf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e5ec3:	41 8b c1                                        	mov    eax,r9d
    10402e8e5ec6:	8b 95 38 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c8]
    10402e8e5ecc:	45 8b cb                                        	mov    r9d,r11d
    10402e8e5ecf:	e8 54 03 eb ff                                  	call   0x10402e796228
    10402e8e5ed4:	44 8b a5 b8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x248]
    10402e8e5edb:	41 83 c4 01                                     	add    r12d,0x1
    10402e8e5edf:	41 83 fc 04                                     	cmp    r12d,0x4
    10402e8e5ee3:	0f 85 97 fe ff ff                               	jne    0x10402e8e5d80
    10402e8e5ee9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e5eec:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e5ef0:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    10402e8e5efa:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    10402e8e5f04:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    10402e8e5f08:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    10402e8e5f12:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    10402e8e5f1c:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    10402e8e5f21:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    10402e8e5f25:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    10402e8e5f2b:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    10402e8e5f32:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    10402e8e5f36:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    10402e8e5f3d:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    10402e8e5f41:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    10402e8e5f46:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    10402e8e5f4a:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    10402e8e5f51:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    10402e8e5f55:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    10402e8e5f5b:	c5 78 10 a5 60 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x4a0]
    10402e8e5f63:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8e5f6b:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    10402e8e5f73:	e9 85 00 00 00                                  	jmp    0x10402e8e5ffd
    10402e8e5f78:	8b c1                                           	mov    eax,ecx
    10402e8e5f7a:	8b ce                                           	mov    ecx,esi
    10402e8e5f7c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e5f80:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8e5f84:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8e5f88:	8b 95 10 fb ff ff                               	mov    edx,DWORD PTR [rbp-0x4f0]
    10402e8e5f8e:	e8 95 05 eb ff                                  	call   0x10402e796528
    10402e8e5f93:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e5f96:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e5f9a:	c5 78 10 a5 60 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x4a0]
    10402e8e5fa2:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8e5faa:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    10402e8e5fb2:	e9 46 00 00 00                                  	jmp    0x10402e8e5ffd
    10402e8e5fb7:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    10402e8e5fbb:	44 8b e1                                        	mov    r12d,ecx
    10402e8e5fbe:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8e5fc4:	c4 c1 7a 7f 04 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm0
    10402e8e5fca:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    10402e8e5fce:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8e5fd4:	c4 c1 7a 7f 44 30 10                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x10],xmm0
    10402e8e5fdb:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    10402e8e5fdf:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8e5fe5:	c4 c1 7a 7f 44 30 20                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x20],xmm0
    10402e8e5fec:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    10402e8e5ff0:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    10402e8e5ff6:	c4 c1 7a 7f 44 30 30                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x30],xmm0
    10402e8e5ffd:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    10402e8e6004:	41 83 c4 01                                     	add    r12d,0x1
    10402e8e6008:	41 83 fc 04                                     	cmp    r12d,0x4
    10402e8e600c:	0f 85 ee ec ff ff                               	jne    0x10402e8e4d00
    10402e8e6012:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    10402e8e601c:	4c 8b 15 e1 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeee1]        # 0x10402e8e4f04
    10402e8e6023:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e6028:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e602c:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8e6030:	c5 f8 10 b5 50 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xb0]
    10402e8e6038:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    10402e8e603c:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8e6040:	c4 c1 7a 6f b4 38 40 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x140]
    10402e8e604a:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    10402e8e604e:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    10402e8e6056:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    10402e8e605a:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8e605e:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8e6062:	c4 c1 7a 6f b4 38 50 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x150]
    10402e8e606c:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    10402e8e6070:	c5 78 10 85 60 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xa0]
    10402e8e6078:	c5 b8 58 ed                                     	vaddps xmm5,xmm8,xmm5
    10402e8e607c:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    10402e8e6080:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8e6084:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    10402e8e608e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e6093:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e6097:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8e609b:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e60a3:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e60a7:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8e60ac:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e60b0:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    10402e8e60b4:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e60b8:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8e60bc:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    10402e8e60c3:	47 8b 9c 18 38 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x138]
    10402e8e60cb:	4d 8b e3                                        	mov    r12,r11
    10402e8e60ce:	41 83 c4 ff                                     	add    r12d,0xffffffff
    10402e8e60d2:	0f 85 f1 00 00 00                               	jne    0x10402e8e61c9
    10402e8e60d8:	c4 c1 7a 6f b4 38 10 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x210]
    10402e8e60e2:	c4 c1 7a 6f bc 38 d0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1d0]
    10402e8e60ec:	4d 8d 98 38 36 00 00                            	lea    r11,[r8+0x3638]
    10402e8e60f3:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    10402e8e60f7:	c4 02 79 18 04 3b                               	vbroadcastss xmm8,DWORD PTR [r11+r15*1]
    10402e8e60fd:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    10402e8e6102:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    10402e8e6107:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8e610c:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8e6111:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8e6115:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8e6119:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    10402e8e611d:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e6121:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8e6125:	c4 c1 7a 6f bc 38 00 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x200]
    10402e8e612f:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    10402e8e6139:	4d 8d 98 34 36 00 00                            	lea    r11,[r8+0x3634]
    10402e8e6140:	c4 02 79 18 14 3b                               	vbroadcastss xmm10,DWORD PTR [r11+r15*1]
    10402e8e6146:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    10402e8e614b:	c4 41 50 5f d2                                  	vmaxps xmm10,xmm5,xmm10
    10402e8e6150:	c4 41 30 5d d2                                  	vminps xmm10,xmm9,xmm10
    10402e8e6155:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    10402e8e615a:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    10402e8e615f:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8e6164:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8e6169:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8e616d:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8e6171:	c4 41 7a 6f 84 38 f0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1f0]
    10402e8e617b:	c4 41 7a 6f 94 38 b0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1b0]
    10402e8e6185:	4d 8d 98 30 36 00 00                            	lea    r11,[r8+0x3630]
    10402e8e618c:	c4 02 79 18 1c 3b                               	vbroadcastss xmm11,DWORD PTR [r11+r15*1]
    10402e8e6192:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8e6197:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e619b:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e619f:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    10402e8e61a3:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e61a7:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e61ab:	c5 b8 58 c0                                     	vaddps xmm0,xmm8,xmm0
    10402e8e61af:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e61b3:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e61b7:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    10402e8e61bb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8e61bf:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    10402e8e61c4:	e9 61 01 00 00                                  	jmp    0x10402e8e632a
    10402e8e61c9:	41 83 fc 02                                     	cmp    r12d,0x2
    10402e8e61cd:	0f 84 80 00 00 00                               	je     0x10402e8e6253
    10402e8e61d3:	c4 c1 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1d0]
    10402e8e61dd:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    10402e8e61e1:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e61e5:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e61e9:	c4 c1 7a 6f bc 38 c0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1c0]
    10402e8e61f3:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8e61f7:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8e61fb:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8e61ff:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    10402e8e6206:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8e620a:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    10402e8e6210:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8e6215:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8e6219:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8e621d:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    10402e8e6227:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    10402e8e622c:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e6230:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8e6234:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    10402e8e623b:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    10402e8e6241:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    10402e8e6246:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e624a:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8e624e:	e9 4f 00 00 00                                  	jmp    0x10402e8e62a2
    10402e8e6253:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    10402e8e6257:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e625b:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e625f:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    10402e8e6266:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8e626a:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    10402e8e6270:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    10402e8e6274:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e6278:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    10402e8e627c:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    10402e8e6283:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    10402e8e6289:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    10402e8e628d:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    10402e8e6291:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    10402e8e6295:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    10402e8e6299:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e629d:	c4 c1 79 28 ff                                  	vmovapd xmm7,xmm15
    10402e8e62a2:	4d 8d b8 20 37 00 00                            	lea    r15,[r8+0x3720]
    10402e8e62a9:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    10402e8e62af:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    10402e8e62b4:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e62b8:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e62bc:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8e62c0:	0f 84 61 00 00 00                               	je     0x10402e8e6327
    10402e8e62c6:	c4 01 7a 10 84 20 24 37 00 00                   	vmovss xmm8,DWORD PTR [r8+r12*1+0x3724]
    10402e8e62d0:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8e62d5:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8e62db:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8e62e1:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    10402e8e62e6:	0f 87 05 00 00 00                               	ja     0x10402e8e62f1
    10402e8e62ec:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    10402e8e62f1:	c4 41 18 57 e4                                  	vxorps xmm12,xmm12,xmm12
    10402e8e62f6:	c4 41 78 2e e0                                  	vucomiss xmm12,xmm8
    10402e8e62fb:	0f 87 0a 00 00 00                               	ja     0x10402e8e630b
    10402e8e6301:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    10402e8e6306:	e9 05 00 00 00                                  	jmp    0x10402e8e6310
    10402e8e630b:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    10402e8e6310:	c4 42 79 18 c0                                  	vbroadcastss xmm8,xmm8
    10402e8e6315:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    10402e8e6319:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8e631d:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    10402e8e6322:	e9 d5 13 00 00                                  	jmp    0x10402e8e76fc
    10402e8e6327:	4d 8b fc                                        	mov    r15,r12
    10402e8e632a:	c5 78 10 55 80                                  	vmovups xmm10,XMMWORD PTR [rbp-0x80]
    10402e8e632f:	c4 41 50 5f c2                                  	vmaxps xmm8,xmm5,xmm10
    10402e8e6334:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8e6339:	c4 41 7a 6f 94 38 e0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1e0]
    10402e8e6343:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    10402e8e6348:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    10402e8e634d:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    10402e8e6352:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    10402e8e6356:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8e635a:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    10402e8e635f:	e9 98 13 00 00                                  	jmp    0x10402e8e76fc
    10402e8e6364:	43 8b 4c 08 38                                  	mov    ecx,DWORD PTR [r8+r9*1+0x38]
    10402e8e6369:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8e6371:	43 83 7c 08 38 00                               	cmp    DWORD PTR [r8+r9*1+0x38],0x0
    10402e8e6377:	0f 85 72 12 00 00                               	jne    0x10402e8e75ef
    10402e8e637d:	49 8d 48 54                                     	lea    rcx,[r8+0x54]
    10402e8e6381:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8e6387:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e638b:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    10402e8e6391:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8e6395:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    10402e8e6399:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8e639f:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e63a3:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    10402e8e63a7:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    10402e8e63ab:	49 8d 48 50                                     	lea    rcx,[r8+0x50]
    10402e8e63af:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    10402e8e63b5:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8e63b9:	c4 e2 79 18 34 01                               	vbroadcastss xmm6,DWORD PTR [rcx+rax*1]
    10402e8e63bf:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    10402e8e63c3:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    10402e8e63c7:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    10402e8e63cd:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    10402e8e63d1:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    10402e8e63d5:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    10402e8e63d9:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    10402e8e63dd:	4c 89 8d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r9
    10402e8e63e4:	83 f9 01                                        	cmp    ecx,0x1
    10402e8e63e7:	0f 85 11 0f 00 00                               	jne    0x10402e8e72fe
    10402e8e63ed:	47 8b 64 08 28                                  	mov    r12d,DWORD PTR [r8+r9*1+0x28]
    10402e8e63f2:	45 85 e4                                        	test   r12d,r12d
    10402e8e63f5:	0f 84 03 0f 00 00                               	je     0x10402e8e72fe
    10402e8e63fb:	43 8b 5c 08 1c                                  	mov    ebx,DWORD PTR [r8+r9*1+0x1c]
    10402e8e6400:	85 db                                           	test   ebx,ebx
    10402e8e6402:	0f 8e f6 0e 00 00                               	jle    0x10402e8e72fe
    10402e8e6408:	48 89 8d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rcx
    10402e8e640f:	43 8b 4c 08 20                                  	mov    ecx,DWORD PTR [r8+r9*1+0x20]
    10402e8e6414:	85 c9                                           	test   ecx,ecx
    10402e8e6416:	0f 8e dc 0e 00 00                               	jle    0x10402e8e72f8
    10402e8e641c:	44 8b d3                                        	mov    r10d,ebx
    10402e8e641f:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    10402e8e6424:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8e6429:	43 8b 54 08 10                                  	mov    edx,DWORD PTR [r8+r9*1+0x10]
    10402e8e642e:	33 c0                                           	xor    eax,eax
    10402e8e6430:	81 fa 2f 81 00 00                               	cmp    edx,0x812f
    10402e8e6436:	0f 95 c0                                        	setne  al
    10402e8e6439:	81 fa 00 29 00 00                               	cmp    edx,0x2900
    10402e8e643f:	0f 95 c2                                        	setne  dl
    10402e8e6442:	0f b6 d2                                        	movzx  edx,dl
    10402e8e6445:	23 d0                                           	and    edx,eax
    10402e8e6447:	0f 85 0d 00 00 00                               	jne    0x10402e8e645a
    10402e8e644d:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    10402e8e6451:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    10402e8e6455:	e9 0b 00 00 00                                  	jmp    0x10402e8e6465
    10402e8e645a:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    10402e8e6460:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    10402e8e6465:	c5 b0 59 f6                                     	vmulps xmm6,xmm9,xmm6
    10402e8e6469:	44 8b d1                                        	mov    r10d,ecx
    10402e8e646c:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    10402e8e6471:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8e6476:	43 8b 44 08 14                                  	mov    eax,DWORD PTR [r8+r9*1+0x14]
    10402e8e647b:	45 33 ff                                        	xor    r15d,r15d
    10402e8e647e:	3d 2f 81 00 00                                  	cmp    eax,0x812f
    10402e8e6483:	41 0f 95 c7                                     	setne  r15b
    10402e8e6487:	3d 00 29 00 00                                  	cmp    eax,0x2900
    10402e8e648c:	0f 95 c0                                        	setne  al
    10402e8e648f:	0f b6 c0                                        	movzx  eax,al
    10402e8e6492:	41 23 c7                                        	and    eax,r15d
    10402e8e6495:	0f 85 0d 00 00 00                               	jne    0x10402e8e64a8
    10402e8e649b:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    10402e8e649f:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8e64a3:	e9 0b 00 00 00                                  	jmp    0x10402e8e64b3
    10402e8e64a8:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    10402e8e64ae:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    10402e8e64b3:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8e64b7:	4c 8b 15 46 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea46]        # 0x10402e8e4f04
    10402e8e64be:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8e64c3:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8e64c8:	c4 41 78 58 d9                                  	vaddps xmm11,xmm0,xmm9
    10402e8e64cd:	47 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [r8+r9*1+0xc]
    10402e8e64d2:	45 33 ff                                        	xor    r15d,r15d
    10402e8e64d5:	43 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+r9*1+0xc],0x2600
    10402e8e64de:	41 0f 94 c7                                     	sete   r15b
    10402e8e64e2:	45 85 ff                                        	test   r15d,r15d
    10402e8e64e5:	0f 85 5c 00 00 00                               	jne    0x10402e8e6547
    10402e8e64eb:	c4 c3 79 08 c3 09                               	vroundps xmm0,xmm11,0x9
    10402e8e64f1:	4c 8b 15 5d a5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa55d]        # 0x10402e8e0a55
    10402e8e64f8:	c4 41 78 54 2a                                  	vandps xmm13,xmm0,XMMWORD PTR [r10]
    10402e8e64fd:	4c 8b 15 ad d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2ad]        # 0x10402e8e37b1
    10402e8e6504:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e6509:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8e650e:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    10402e8e6514:	4c 8b 15 54 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd254]        # 0x10402e8e376f
    10402e8e651b:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8e6520:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    10402e8e6525:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8e652b:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8e652f:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8e6534:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    10402e8e6539:	c5 79 28 c8                                     	vmovapd xmm9,xmm0
    10402e8e653d:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    10402e8e6542:	e9 4a 00 00 00                                  	jmp    0x10402e8e6591
    10402e8e6547:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    10402e8e654d:	4c 8b 15 01 a5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa501]        # 0x10402e8e0a55
    10402e8e6554:	c4 41 30 54 1a                                  	vandps xmm11,xmm9,XMMWORD PTR [r10]
    10402e8e6559:	4c 8b 15 51 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd251]        # 0x10402e8e37b1
    10402e8e6560:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e6565:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8e656a:	c4 41 20 c2 ee 01                               	vcmpltps xmm13,xmm11,xmm14
    10402e8e6570:	4c 8b 15 f8 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f8]        # 0x10402e8e376f
    10402e8e6577:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    10402e8e657d:	c4 c1 30 54 e7                                  	vandps xmm4,xmm9,xmm15
    10402e8e6582:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    10402e8e6588:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8e658c:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8e6591:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    10402e8e6597:	4c 8b 15 d1 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1d1]        # 0x10402e8e376f
    10402e8e659e:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    10402e8e65a4:	c4 c1 20 54 ef                                  	vandps xmm5,xmm11,xmm15
    10402e8e65a9:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    10402e8e65af:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    10402e8e65b3:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    10402e8e65b8:	4c 8b 15 d3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1d3]        # 0x10402e8e3792
    10402e8e65bf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e65c4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8e65c8:	4c 8b 15 86 a4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa486]        # 0x10402e8e0a55
    10402e8e65cf:	c4 41 20 54 02                                  	vandps xmm8,xmm11,XMMWORD PTR [r10]
    10402e8e65d4:	c4 41 38 c2 c6 01                               	vcmpltps xmm8,xmm8,xmm14
    10402e8e65da:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    10402e8e65de:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8e65e3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e65e8:	8d 7b ff                                        	lea    edi,[rbx-0x1]
    10402e8e65eb:	c5 79 6e c7                                     	vmovd  xmm8,edi
    10402e8e65ef:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8e65f4:	43 8b 7c 08 2c                                  	mov    edi,DWORD PTR [r8+r9*1+0x2c]
    10402e8e65f9:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8e65fe:	c4 42 51 3d d2                                  	vpmaxsd xmm10,xmm5,xmm10
    10402e8e6603:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    10402e8e6608:	85 d2                                           	test   edx,edx
    10402e8e660a:	0f 84 57 00 00 00                               	je     0x10402e8e6667
    10402e8e6610:	c5 79 6e d7                                     	vmovd  xmm10,edi
    10402e8e6614:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e6619:	c4 41 51 db d2                                  	vpand  xmm10,xmm5,xmm10
    10402e8e661e:	85 ff                                           	test   edi,edi
    10402e8e6620:	0f 85 41 00 00 00                               	jne    0x10402e8e6667
    10402e8e6626:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    10402e8e662a:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e662f:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    10402e8e6634:	c4 c1 51 66 c8                                  	vpcmpgtd xmm1,xmm5,xmm8
    10402e8e6639:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    10402e8e663e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e6643:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    10402e8e6648:	c5 19 66 e5                                     	vpcmpgtd xmm12,xmm12,xmm5
    10402e8e664c:	c5 19 df f9                                     	vpandn xmm15,xmm12,xmm1
    10402e8e6650:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    10402e8e6655:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8e665a:	c4 41 51 fe d2                                  	vpaddd xmm10,xmm5,xmm10
    10402e8e665f:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8e6667:	c5 11 df ff                                     	vpandn xmm15,xmm13,xmm7
    10402e8e666b:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    10402e8e6670:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    10402e8e6675:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    10402e8e6678:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    10402e8e667c:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8e6681:	43 8b 74 08 30                                  	mov    esi,DWORD PTR [r8+r9*1+0x30]
    10402e8e6686:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    10402e8e668b:	c4 42 11 3d e4                                  	vpmaxsd xmm12,xmm13,xmm12
    10402e8e6690:	c4 62 19 39 e4                                  	vpminsd xmm12,xmm12,xmm4
    10402e8e6695:	85 c0                                           	test   eax,eax
    10402e8e6697:	0f 84 4d 00 00 00                               	je     0x10402e8e66ea
    10402e8e669d:	c5 79 6e e6                                     	vmovd  xmm12,esi
    10402e8e66a1:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e66a6:	c4 41 19 db e5                                  	vpand  xmm12,xmm12,xmm13
    10402e8e66ab:	85 f6                                           	test   esi,esi
    10402e8e66ad:	0f 85 37 00 00 00                               	jne    0x10402e8e66ea
    10402e8e66b3:	c5 79 6e e1                                     	vmovd  xmm12,ecx
    10402e8e66b7:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e66bc:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8e66c0:	c5 91 66 d4                                     	vpcmpgtd xmm2,xmm13,xmm4
    10402e8e66c4:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    10402e8e66c9:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e66ce:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    10402e8e66d3:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    10402e8e66d8:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    10402e8e66dc:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    10402e8e66e0:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8e66e5:	c4 41 11 fe e4                                  	vpaddd xmm12,xmm13,xmm12
    10402e8e66ea:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    10402e8e66ee:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e8e66f3:	c4 62 19 40 e1                                  	vpmulld xmm12,xmm12,xmm1
    10402e8e66f8:	c4 c1 19 fe d2                                  	vpaddd xmm2,xmm12,xmm10
    10402e8e66fd:	c4 e3 79 16 d3 03                               	vpextrd ebx,xmm2,0x3
    10402e8e6703:	c4 c3 79 16 d1 02                               	vpextrd r9d,xmm2,0x2
    10402e8e6709:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    10402e8e6710:	c4 e3 79 16 d3 01                               	vpextrd ebx,xmm2,0x1
    10402e8e6716:	4c 89 8d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r9
    10402e8e671d:	c4 c1 79 7e d1                                  	vmovd  r9d,xmm2
    10402e8e6722:	45 85 ff                                        	test   r15d,r15d
    10402e8e6725:	0f 85 e8 09 00 00                               	jne    0x10402e8e7113
    10402e8e672b:	4c 8b 15 59 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea59]        # 0x10402e8e518b
    10402e8e6732:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8e6737:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8e673b:	c5 d1 fe ea                                     	vpaddd xmm5,xmm5,xmm2
    10402e8e673f:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8e6743:	c4 e2 51 3d db                                  	vpmaxsd xmm3,xmm5,xmm3
    10402e8e6748:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    10402e8e674d:	85 d2                                           	test   edx,edx
    10402e8e674f:	0f 84 43 00 00 00                               	je     0x10402e8e6798
    10402e8e6755:	c5 f9 6e df                                     	vmovd  xmm3,edi
    10402e8e6759:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8e675e:	c5 d1 db db                                     	vpand  xmm3,xmm5,xmm3
    10402e8e6762:	85 ff                                           	test   edi,edi
    10402e8e6764:	0f 85 2e 00 00 00                               	jne    0x10402e8e6798
    10402e8e676a:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8e676e:	c4 41 51 66 c0                                  	vpcmpgtd xmm8,xmm5,xmm8
    10402e8e6773:	c5 39 db c1                                     	vpand  xmm8,xmm8,xmm1
    10402e8e6777:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e677c:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    10402e8e6781:	c5 e1 66 dd                                     	vpcmpgtd xmm3,xmm3,xmm5
    10402e8e6785:	c4 41 61 df f8                                  	vpandn xmm15,xmm3,xmm8
    10402e8e678a:	c5 71 db c3                                     	vpand  xmm8,xmm1,xmm3
    10402e8e678e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8e6793:	c4 c1 51 fe d8                                  	vpaddd xmm3,xmm5,xmm8
    10402e8e6798:	c5 91 fe ea                                     	vpaddd xmm5,xmm13,xmm2
    10402e8e679c:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    10402e8e67a1:	c4 42 51 3d c0                                  	vpmaxsd xmm8,xmm5,xmm8
    10402e8e67a6:	c4 62 39 39 c4                                  	vpminsd xmm8,xmm8,xmm4
    10402e8e67ab:	85 c0                                           	test   eax,eax
    10402e8e67ad:	0f 84 4d 00 00 00                               	je     0x10402e8e6800
    10402e8e67b3:	c5 79 6e c6                                     	vmovd  xmm8,esi
    10402e8e67b7:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8e67bc:	c5 39 db c5                                     	vpand  xmm8,xmm8,xmm5
    10402e8e67c0:	85 f6                                           	test   esi,esi
    10402e8e67c2:	0f 85 38 00 00 00                               	jne    0x10402e8e6800
    10402e8e67c8:	c5 79 6e c1                                     	vmovd  xmm8,ecx
    10402e8e67cc:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8e67d1:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8e67d6:	c5 d1 66 e4                                     	vpcmpgtd xmm4,xmm5,xmm4
    10402e8e67da:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    10402e8e67df:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8e67e4:	c4 c2 59 0a e7                                  	vpsignd xmm4,xmm4,xmm15
    10402e8e67e9:	c5 11 66 ed                                     	vpcmpgtd xmm13,xmm13,xmm5
    10402e8e67ed:	c5 11 df fc                                     	vpandn xmm15,xmm13,xmm4
    10402e8e67f1:	c4 41 39 db c5                                  	vpand  xmm8,xmm8,xmm13
    10402e8e67f6:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8e67fb:	c4 41 51 fe c0                                  	vpaddd xmm8,xmm5,xmm8
    10402e8e6800:	c4 e2 39 40 e9                                  	vpmulld xmm5,xmm8,xmm1
    10402e8e6805:	c4 41 51 fe c2                                  	vpaddd xmm8,xmm5,xmm10
    10402e8e680a:	45 85 db                                        	test   r11d,r11d
    10402e8e680d:	0f 85 0c 01 00 00                               	jne    0x10402e8e691f
    10402e8e6813:	c5 29 fe d2                                     	vpaddd xmm10,xmm10,xmm2
    10402e8e6817:	c4 41 61 76 d2                                  	vpcmpeqd xmm10,xmm3,xmm10
    10402e8e681c:	c4 c1 78 50 fa                                  	vmovmskps edi,xmm10
    10402e8e6821:	83 ff 0f                                        	cmp    edi,0xf
    10402e8e6824:	0f 84 4f 00 00 00                               	je     0x10402e8e6879
    10402e8e682a:	4c 89 9d 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r11
    10402e8e6831:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8e6837:	83 e6 04                                        	and    esi,0x4
    10402e8e683a:	8b bd 10 fb ff ff                               	mov    edi,DWORD PTR [rbp-0x4f0]
    10402e8e6840:	83 e7 02                                        	and    edi,0x2
    10402e8e6843:	44 8b bd 10 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x4f0]
    10402e8e684a:	41 83 e7 01                                     	and    r15d,0x1
    10402e8e684e:	41 8d 04 9c                                     	lea    eax,[r12+rbx*4]
    10402e8e6852:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e6856:	43 8d 1c 8c                                     	lea    ebx,[r12+r9*4]
    10402e8e685a:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8e685e:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    10402e8e6864:	41 8d 14 94                                     	lea    edx,[r12+rdx*4]
    10402e8e6868:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e686c:	44 8b d0                                        	mov    r10d,eax
    10402e8e686f:	8b c3                                           	mov    eax,ebx
    10402e8e6871:	41 8b da                                        	mov    ebx,r10d
    10402e8e6874:	e9 38 01 00 00                                  	jmp    0x10402e8e69b1
    10402e8e6879:	43 8d 3c 8c                                     	lea    edi,[r12+r9*4]
    10402e8e687d:	c4 c1 7b 10 2c 38                               	vmovsd xmm5,QWORD PTR [r8+rdi*1]
    10402e8e6883:	41 8d 3c 9c                                     	lea    edi,[r12+rbx*4]
    10402e8e6887:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8e688d:	c4 c1 51 6c ea                                  	vpunpcklqdq xmm5,xmm5,xmm10
    10402e8e6892:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    10402e8e6898:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e689c:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8e68a2:	44 8b bd 60 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1a0]
    10402e8e68a9:	43 8d 3c bc                                     	lea    edi,[r12+r15*4]
    10402e8e68ad:	c4 41 7b 10 24 38                               	vmovsd xmm12,QWORD PTR [r8+rdi*1]
    10402e8e68b3:	c4 41 29 6c d4                                  	vpunpcklqdq xmm10,xmm10,xmm12
    10402e8e68b8:	c4 41 50 c6 e2 dd                               	vshufps xmm12,xmm5,xmm10,0xdd
    10402e8e68be:	c4 c1 50 c6 ea 88                               	vshufps xmm5,xmm5,xmm10,0x88
    10402e8e68c4:	c4 c1 39 72 f0 02                               	vpslld xmm8,xmm8,0x2
    10402e8e68ca:	c5 79 7e c7                                     	vmovd  edi,xmm8
    10402e8e68ce:	41 03 fc                                        	add    edi,r12d
    10402e8e68d1:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    10402e8e68d7:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8e68dd:	41 03 fc                                        	add    edi,r12d
    10402e8e68e0:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    10402e8e68e6:	c4 41 29 6c d5                                  	vpunpcklqdq xmm10,xmm10,xmm13
    10402e8e68eb:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    10402e8e68f1:	41 03 fc                                        	add    edi,r12d
    10402e8e68f4:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    10402e8e68fa:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    10402e8e6900:	41 03 fc                                        	add    edi,r12d
    10402e8e6903:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    10402e8e6909:	c4 41 11 6c c0                                  	vpunpcklqdq xmm8,xmm13,xmm8
    10402e8e690e:	c4 41 28 c6 e8 dd                               	vshufps xmm13,xmm10,xmm8,0xdd
    10402e8e6914:	c4 41 28 c6 c0 88                               	vshufps xmm8,xmm10,xmm8,0x88
    10402e8e691a:	e9 67 04 00 00                                  	jmp    0x10402e8e6d86
    10402e8e691f:	4c 89 9d 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r11
    10402e8e6926:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8e692c:	83 e6 04                                        	and    esi,0x4
    10402e8e692f:	8b bd 10 fb ff ff                               	mov    edi,DWORD PTR [rbp-0x4f0]
    10402e8e6935:	83 e7 02                                        	and    edi,0x2
    10402e8e6938:	44 8b bd 10 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x4f0]
    10402e8e693f:	41 83 e7 01                                     	and    r15d,0x1
    10402e8e6943:	45 85 ff                                        	test   r15d,r15d
    10402e8e6946:	0f 85 07 00 00 00                               	jne    0x10402e8e6953
    10402e8e694c:	33 c0                                           	xor    eax,eax
    10402e8e694e:	e9 08 00 00 00                                  	jmp    0x10402e8e695b
    10402e8e6953:	43 8d 04 8c                                     	lea    eax,[r12+r9*4]
    10402e8e6957:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e695b:	85 ff                                           	test   edi,edi
    10402e8e695d:	0f 85 07 00 00 00                               	jne    0x10402e8e696a
    10402e8e6963:	33 db                                           	xor    ebx,ebx
    10402e8e6965:	e9 08 00 00 00                                  	jmp    0x10402e8e6972
    10402e8e696a:	41 8d 1c 9c                                     	lea    ebx,[r12+rbx*4]
    10402e8e696e:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8e6972:	85 f6                                           	test   esi,esi
    10402e8e6974:	0f 85 07 00 00 00                               	jne    0x10402e8e6981
    10402e8e697a:	33 d2                                           	xor    edx,edx
    10402e8e697c:	e9 0e 00 00 00                                  	jmp    0x10402e8e698f
    10402e8e6981:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    10402e8e6987:	41 8d 14 94                                     	lea    edx,[r12+rdx*4]
    10402e8e698b:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e698f:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e6996:	0f 83 15 00 00 00                               	jae    0x10402e8e69b1
    10402e8e699c:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    10402e8e69a1:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8e69a5:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e69aa:	33 c9                                           	xor    ecx,ecx
    10402e8e69ac:	e9 5f 00 00 00                                  	jmp    0x10402e8e6a10
    10402e8e69b1:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    10402e8e69b7:	41 8d 0c 8c                                     	lea    ecx,[r12+rcx*4]
    10402e8e69bb:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8e69bf:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    10402e8e69c4:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8e69c8:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e69cd:	45 85 db                                        	test   r11d,r11d
    10402e8e69d0:	0f 85 3a 00 00 00                               	jne    0x10402e8e6a10
    10402e8e69d6:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    10402e8e69dc:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    10402e8e69e0:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e69e4:	c4 41 79 7e d1                                  	vmovd  r9d,xmm10
    10402e8e69e9:	47 8d 0c 8c                                     	lea    r9d,[r12+r9*4]
    10402e8e69ed:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8e69f1:	c4 43 79 16 d3 02                               	vpextrd r11d,xmm10,0x2
    10402e8e69f7:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    10402e8e69fb:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e69ff:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    10402e8e6a06:	8b f7                                           	mov    esi,edi
    10402e8e6a08:	41 8b fb                                        	mov    edi,r11d
    10402e8e6a0b:	e9 b2 00 00 00                                  	jmp    0x10402e8e6ac2
    10402e8e6a10:	45 85 ff                                        	test   r15d,r15d
    10402e8e6a13:	0f 85 08 00 00 00                               	jne    0x10402e8e6a21
    10402e8e6a19:	45 33 c9                                        	xor    r9d,r9d
    10402e8e6a1c:	e9 0c 00 00 00                                  	jmp    0x10402e8e6a2d
    10402e8e6a21:	c5 79 7e d0                                     	vmovd  eax,xmm10
    10402e8e6a25:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    10402e8e6a29:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    10402e8e6a2d:	85 ff                                           	test   edi,edi
    10402e8e6a2f:	0f 85 07 00 00 00                               	jne    0x10402e8e6a3c
    10402e8e6a35:	33 c0                                           	xor    eax,eax
    10402e8e6a37:	e9 0e 00 00 00                                  	jmp    0x10402e8e6a4a
    10402e8e6a3c:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    10402e8e6a42:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    10402e8e6a46:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e6a4a:	85 f6                                           	test   esi,esi
    10402e8e6a4c:	0f 85 10 00 00 00                               	jne    0x10402e8e6a62
    10402e8e6a52:	48 c7 85 60 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1a0],0x0
    10402e8e6a5d:	e9 1c 00 00 00                                  	jmp    0x10402e8e6a7e
    10402e8e6a62:	c4 43 79 16 d3 02                               	vpextrd r11d,xmm10,0x2
    10402e8e6a68:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    10402e8e6a6c:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e6a70:	4c 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r11
    10402e8e6a77:	44 8b 9d 40 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4c0]
    10402e8e6a7e:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e6a85:	0f 83 24 00 00 00                               	jae    0x10402e8e6aaf
    10402e8e6a8b:	48 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rbx
    10402e8e6a92:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    10402e8e6a98:	4c 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r9
    10402e8e6a9f:	44 8b c8                                        	mov    r9d,eax
    10402e8e6aa2:	41 8b c7                                        	mov    eax,r15d
    10402e8e6aa5:	44 8b ff                                        	mov    r15d,edi
    10402e8e6aa8:	33 ff                                           	xor    edi,edi
    10402e8e6aaa:	e9 4a 00 00 00                                  	jmp    0x10402e8e6af9
    10402e8e6aaf:	44 8b d7                                        	mov    r10d,edi
    10402e8e6ab2:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8e6ab8:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    10402e8e6abf:	41 8b f2                                        	mov    esi,r10d
    10402e8e6ac2:	c4 43 79 16 d3 03                               	vpextrd r11d,xmm10,0x3
    10402e8e6ac8:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    10402e8e6acc:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e6ad0:	48 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rbx
    10402e8e6ad7:	8b df                                           	mov    ebx,edi
    10402e8e6ad9:	41 8b fb                                        	mov    edi,r11d
    10402e8e6adc:	4c 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r9
    10402e8e6ae3:	44 8b c8                                        	mov    r9d,eax
    10402e8e6ae6:	44 8b 9d 40 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4c0]
    10402e8e6aed:	41 8b c7                                        	mov    eax,r15d
    10402e8e6af0:	44 8b fe                                        	mov    r15d,esi
    10402e8e6af3:	8b b5 60 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1a0]
    10402e8e6af9:	c4 63 19 22 95 b8 fd ff ff 01                   	vpinsrd xmm10,xmm12,DWORD PTR [rbp-0x248],0x1
    10402e8e6b03:	c5 79 6e a5 d8 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x228]
    10402e8e6b0b:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e6b10:	c4 43 19 22 e1 01                               	vpinsrd xmm12,xmm12,r9d,0x1
    10402e8e6b16:	48 89 bd 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdi
    10402e8e6b1d:	45 85 db                                        	test   r11d,r11d
    10402e8e6b20:	0f 85 4b 00 00 00                               	jne    0x10402e8e6b71
    10402e8e6b26:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    10402e8e6b2c:	47 8d 0c 8c                                     	lea    r9d,[r12+r9*4]
    10402e8e6b30:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8e6b34:	c5 79 7e c7                                     	vmovd  edi,xmm8
    10402e8e6b38:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e6b3c:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e6b40:	48 89 8d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rcx
    10402e8e6b47:	c4 63 79 16 c1 02                               	vpextrd ecx,xmm8,0x2
    10402e8e6b4d:	41 8d 0c 8c                                     	lea    ecx,[r12+rcx*4]
    10402e8e6b51:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8e6b55:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    10402e8e6b5c:	44 8b c9                                        	mov    r9d,ecx
    10402e8e6b5f:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    10402e8e6b66:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    10402e8e6b6c:	e9 d8 00 00 00                                  	jmp    0x10402e8e6c49
    10402e8e6b71:	85 c0                                           	test   eax,eax
    10402e8e6b73:	0f 85 08 00 00 00                               	jne    0x10402e8e6b81
    10402e8e6b79:	45 33 c9                                        	xor    r9d,r9d
    10402e8e6b7c:	e9 0d 00 00 00                                  	jmp    0x10402e8e6b8e
    10402e8e6b81:	c4 41 79 7e c1                                  	vmovd  r9d,xmm8
    10402e8e6b86:	47 8d 0c 8c                                     	lea    r9d,[r12+r9*4]
    10402e8e6b8a:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    10402e8e6b8e:	45 85 ff                                        	test   r15d,r15d
    10402e8e6b91:	0f 85 10 00 00 00                               	jne    0x10402e8e6ba7
    10402e8e6b97:	48 c7 85 b8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x248],0x0
    10402e8e6ba2:	e9 1b 00 00 00                                  	jmp    0x10402e8e6bc2
    10402e8e6ba7:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    10402e8e6bad:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e6bb1:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e6bb5:	48 89 bd b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdi
    10402e8e6bbc:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8e6bc2:	85 f6                                           	test   esi,esi
    10402e8e6bc4:	0f 85 10 00 00 00                               	jne    0x10402e8e6bda
    10402e8e6bca:	48 c7 85 d8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x228],0x0
    10402e8e6bd5:	e9 1b 00 00 00                                  	jmp    0x10402e8e6bf5
    10402e8e6bda:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    10402e8e6be0:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e6be4:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e6be8:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    10402e8e6bef:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8e6bf5:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e6bfc:	0f 83 36 00 00 00                               	jae    0x10402e8e6c38
    10402e8e6c02:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    10402e8e6c08:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    10402e8e6c0e:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    10402e8e6c12:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    10402e8e6c17:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e6c1c:	c4 63 19 22 a5 b8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x248],0x1
    10402e8e6c26:	c4 63 19 22 a5 d8 fd ff ff 02                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x228],0x2
    10402e8e6c30:	45 33 db                                        	xor    r11d,r11d
    10402e8e6c33:	e9 9d 00 00 00                                  	jmp    0x10402e8e6cd5
    10402e8e6c38:	4d 8b d1                                        	mov    r10,r9
    10402e8e6c3b:	4c 8b 8d d8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x228]
    10402e8e6c42:	4c 89 95 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r10
    10402e8e6c49:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    10402e8e6c4f:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e6c53:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e6c57:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    10402e8e6c5d:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    10402e8e6c63:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    10402e8e6c67:	c5 79 6e a5 d8 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x228]
    10402e8e6c6f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e6c74:	c4 63 19 22 a5 b8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x248],0x1
    10402e8e6c7e:	c4 43 19 22 e1 02                               	vpinsrd xmm12,xmm12,r9d,0x2
    10402e8e6c84:	45 85 db                                        	test   r11d,r11d
    10402e8e6c87:	0f 85 3f 00 00 00                               	jne    0x10402e8e6ccc
    10402e8e6c8d:	c4 c3 79 16 eb 01                               	vpextrd r11d,xmm5,0x1
    10402e8e6c93:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    10402e8e6c97:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e6c9b:	c4 c1 79 7e ef                                  	vmovd  r15d,xmm5
    10402e8e6ca0:	47 8d 3c bc                                     	lea    r15d,[r12+r15*4]
    10402e8e6ca4:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e6ca8:	c4 e3 79 16 e8 02                               	vpextrd eax,xmm5,0x2
    10402e8e6cae:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    10402e8e6cb2:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e6cb6:	8b d8                                           	mov    ebx,eax
    10402e8e6cb8:	41 8b c7                                        	mov    eax,r15d
    10402e8e6cbb:	45 8b fb                                        	mov    r15d,r11d
    10402e8e6cbe:	44 8b df                                        	mov    r11d,edi
    10402e8e6cc1:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8e6cc7:	e9 75 00 00 00                                  	jmp    0x10402e8e6d41
    10402e8e6ccc:	44 8b df                                        	mov    r11d,edi
    10402e8e6ccf:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    10402e8e6cd5:	85 c0                                           	test   eax,eax
    10402e8e6cd7:	0f 85 07 00 00 00                               	jne    0x10402e8e6ce4
    10402e8e6cdd:	33 c0                                           	xor    eax,eax
    10402e8e6cdf:	e9 0c 00 00 00                                  	jmp    0x10402e8e6cf0
    10402e8e6ce4:	c5 f9 7e e8                                     	vmovd  eax,xmm5
    10402e8e6ce8:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    10402e8e6cec:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e6cf0:	45 85 ff                                        	test   r15d,r15d
    10402e8e6cf3:	0f 85 08 00 00 00                               	jne    0x10402e8e6d01
    10402e8e6cf9:	45 33 ff                                        	xor    r15d,r15d
    10402e8e6cfc:	e9 0e 00 00 00                                  	jmp    0x10402e8e6d0f
    10402e8e6d01:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    10402e8e6d07:	47 8d 3c bc                                     	lea    r15d,[r12+r15*4]
    10402e8e6d0b:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e6d0f:	85 f6                                           	test   esi,esi
    10402e8e6d11:	0f 85 07 00 00 00                               	jne    0x10402e8e6d1e
    10402e8e6d17:	33 db                                           	xor    ebx,ebx
    10402e8e6d19:	e9 0e 00 00 00                                  	jmp    0x10402e8e6d2c
    10402e8e6d1e:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    10402e8e6d24:	41 8d 1c 9c                                     	lea    ebx,[r12+rbx*4]
    10402e8e6d28:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    10402e8e6d2c:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e6d33:	0f 83 08 00 00 00                               	jae    0x10402e8e6d41
    10402e8e6d39:	45 33 e4                                        	xor    r12d,r12d
    10402e8e6d3c:	e9 0e 00 00 00                                  	jmp    0x10402e8e6d4f
    10402e8e6d41:	c4 e3 79 16 ea 03                               	vpextrd edx,xmm5,0x3
    10402e8e6d47:	45 8d 24 94                                     	lea    r12d,[r12+rdx*4]
    10402e8e6d4b:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e6d4f:	c4 e3 39 22 e9 03                               	vpinsrd xmm5,xmm8,ecx,0x3
    10402e8e6d55:	c4 63 29 22 c7 03                               	vpinsrd xmm8,xmm10,edi,0x3
    10402e8e6d5b:	c5 79 6e d0                                     	vmovd  xmm10,eax
    10402e8e6d5f:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8e6d64:	c4 43 29 22 d7 01                               	vpinsrd xmm10,xmm10,r15d,0x1
    10402e8e6d6a:	c4 63 29 22 d3 02                               	vpinsrd xmm10,xmm10,ebx,0x2
    10402e8e6d70:	c4 43 29 22 ec 03                               	vpinsrd xmm13,xmm10,r12d,0x3
    10402e8e6d76:	c4 43 19 22 d3 03                               	vpinsrd xmm10,xmm12,r11d,0x3
    10402e8e6d7c:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    10402e8e6d81:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    10402e8e6d86:	c5 a9 72 d5 18                                  	vpsrld xmm10,xmm5,0x18
    10402e8e6d8b:	c4 c1 71 72 d4 18                               	vpsrld xmm1,xmm12,0x18
    10402e8e6d91:	c5 29 6b d1                                     	vpackssdw xmm10,xmm10,xmm1
    10402e8e6d95:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8e6d99:	c4 c3 71 0f d2 08                               	vpalignr xmm2,xmm1,xmm10,0x8
    10402e8e6d9f:	c5 29 61 d2                                     	vpunpcklwd xmm10,xmm10,xmm2
    10402e8e6da3:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    10402e8e6dad:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8e6db2:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8e6db6:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    10402e8e6dbb:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    10402e8e6dc5:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e6dca:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8e6dcf:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    10402e8e6dd4:	4c 8b 15 7d c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc97d]        # 0x10402e8e3758
    10402e8e6ddb:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8e6de0:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8e6de4:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    10402e8e6de8:	4c 8b 15 80 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc980]        # 0x10402e8e376f
    10402e8e6def:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    10402e8e6df4:	c4 c1 48 54 e7                                  	vandps xmm4,xmm6,xmm15
    10402e8e6df9:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    10402e8e6dff:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8e6e03:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8e6e08:	4c 8b 15 46 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c46]        # 0x10402e8e0a55
    10402e8e6e0f:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    10402e8e6e14:	c4 c1 48 c2 f6 01                               	vcmpltps xmm6,xmm6,xmm14
    10402e8e6e1a:	c5 49 df ff                                     	vpandn xmm15,xmm6,xmm7
    10402e8e6e1e:	c5 d9 db f6                                     	vpand  xmm6,xmm4,xmm6
    10402e8e6e22:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e6e27:	c5 e9 fa e6                                     	vpsubd xmm4,xmm2,xmm6
    10402e8e6e2b:	c5 d9 6b f6                                     	vpackssdw xmm6,xmm4,xmm6
    10402e8e6e2f:	c4 e3 71 0f e6 08                               	vpalignr xmm4,xmm1,xmm6,0x8
    10402e8e6e35:	c5 c9 61 f4                                     	vpunpcklwd xmm6,xmm6,xmm4
    10402e8e6e39:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    10402e8e6e3d:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    10402e8e6e42:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8e6e47:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    10402e8e6e4b:	4c 8b 15 1d c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc91d]        # 0x10402e8e376f
    10402e8e6e52:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8e6e57:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    10402e8e6e5c:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8e6e62:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    10402e8e6e67:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    10402e8e6e6c:	4c 8b 15 e2 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9be2]        # 0x10402e8e0a55
    10402e8e6e73:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8e6e78:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    10402e8e6e7e:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    10402e8e6e82:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    10402e8e6e86:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e6e8b:	c5 e9 fa f8                                     	vpsubd xmm7,xmm2,xmm0
    10402e8e6e8f:	c4 62 29 40 cf                                  	vpmulld xmm9,xmm10,xmm7
    10402e8e6e94:	c4 c1 29 72 d0 18                               	vpsrld xmm10,xmm8,0x18
    10402e8e6e9a:	c4 c1 21 72 d5 18                               	vpsrld xmm11,xmm13,0x18
    10402e8e6ea0:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    10402e8e6ea5:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    10402e8e6eab:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    10402e8e6eb0:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    10402e8e6eb4:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    10402e8e6eb9:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8e6ebe:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    10402e8e6ec8:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e6ecd:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8e6ed2:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8e6ed7:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    10402e8e6edd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e6ee2:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8e6ee8:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8e6eed:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e6ef2:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8e6ef8:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8e6efd:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8e6f02:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8e6f07:	4c 8b 15 b4 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8b4]        # 0x10402e8e57c2
    10402e8e6f0e:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e6f13:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8e6f18:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8e6f1d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e6f20:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    10402e8e6f2a:	c5 b1 72 d5 10                                  	vpsrld xmm9,xmm5,0x10
    10402e8e6f2f:	4c 8b 15 a4 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a4]        # 0x10402e8e56da
    10402e8e6f36:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e6f3b:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8e6f40:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    10402e8e6f45:	c4 c1 69 72 d4 10                               	vpsrld xmm2,xmm12,0x10
    10402e8e6f4b:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8e6f50:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    10402e8e6f54:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    10402e8e6f5a:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    10402e8e6f5e:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    10402e8e6f62:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    10402e8e6f67:	c4 c1 69 72 d0 10                               	vpsrld xmm2,xmm8,0x10
    10402e8e6f6d:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8e6f72:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    10402e8e6f78:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    10402e8e6f7d:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    10402e8e6f81:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    10402e8e6f87:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    10402e8e6f8b:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    10402e8e6f8f:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    10402e8e6f94:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    10402e8e6f98:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8e6f9d:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    10402e8e6fa3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e6fa8:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8e6fae:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8e6fb3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e6fb8:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8e6fbe:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8e6fc3:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8e6fc8:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8e6fcd:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8e6fd2:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    10402e8e6fdc:	c5 b1 72 d5 08                                  	vpsrld xmm9,xmm5,0x8
    10402e8e6fe1:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    10402e8e6fe6:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    10402e8e6fec:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8e6ff1:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    10402e8e6ff5:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    10402e8e6ffb:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    10402e8e6fff:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    10402e8e7003:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    10402e8e7008:	c4 c1 69 72 d0 08                               	vpsrld xmm2,xmm8,0x8
    10402e8e700e:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8e7013:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    10402e8e7019:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    10402e8e701e:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    10402e8e7022:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    10402e8e7028:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    10402e8e702c:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    10402e8e7030:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    10402e8e7035:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    10402e8e7039:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    10402e8e703e:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    10402e8e7044:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e7049:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8e704f:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8e7054:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e7059:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8e705f:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8e7064:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8e7069:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8e706e:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8e7073:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    10402e8e707d:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8e7082:	c4 41 19 db ce                                  	vpand  xmm9,xmm12,xmm14
    10402e8e7087:	c4 c1 51 6b e9                                  	vpackssdw xmm5,xmm5,xmm9
    10402e8e708c:	c4 63 71 0f cd 08                               	vpalignr xmm9,xmm1,xmm5,0x8
    10402e8e7092:	c4 c1 51 61 e9                                  	vpunpcklwd xmm5,xmm5,xmm9
    10402e8e7097:	c5 d1 f5 ee                                     	vpmaddwd xmm5,xmm5,xmm6
    10402e8e709b:	c4 e2 51 40 ef                                  	vpmulld xmm5,xmm5,xmm7
    10402e8e70a0:	c4 c1 39 db fe                                  	vpand  xmm7,xmm8,xmm14
    10402e8e70a5:	c4 41 11 db c6                                  	vpand  xmm8,xmm13,xmm14
    10402e8e70aa:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    10402e8e70af:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    10402e8e70b5:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    10402e8e70ba:	c5 c1 f5 f6                                     	vpmaddwd xmm6,xmm7,xmm6
    10402e8e70be:	c4 e2 49 40 c0                                  	vpmulld xmm0,xmm6,xmm0
    10402e8e70c3:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    10402e8e70c7:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    10402e8e70cc:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    10402e8e70d1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e70d6:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8e70dc:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8e70e1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e70e6:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8e70eb:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8e70ef:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8e70f3:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8e70f8:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8e70fd:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e7107:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    10402e8e710e:	e9 32 05 00 00                                  	jmp    0x10402e8e7645
    10402e8e7113:	45 85 db                                        	test   r11d,r11d
    10402e8e7116:	0f 85 23 00 00 00                               	jne    0x10402e8e713f
    10402e8e711c:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    10402e8e7122:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e7126:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e712a:	45 8d 1c 9c                                     	lea    r11d,[r12+rbx*4]
    10402e8e712e:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e7132:	47 8d 3c 8c                                     	lea    r15d,[r12+r9*4]
    10402e8e7136:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8e713a:	e9 69 00 00 00                                  	jmp    0x10402e8e71a8
    10402e8e713f:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    10402e8e7146:	0f 85 08 00 00 00                               	jne    0x10402e8e7154
    10402e8e714c:	45 33 ff                                        	xor    r15d,r15d
    10402e8e714f:	e9 08 00 00 00                                  	jmp    0x10402e8e715c
    10402e8e7154:	43 8d 3c 8c                                     	lea    edi,[r12+r9*4]
    10402e8e7158:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8e715c:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    10402e8e7163:	0f 85 08 00 00 00                               	jne    0x10402e8e7171
    10402e8e7169:	45 33 db                                        	xor    r11d,r11d
    10402e8e716c:	e9 08 00 00 00                                  	jmp    0x10402e8e7179
    10402e8e7171:	41 8d 3c 9c                                     	lea    edi,[r12+rbx*4]
    10402e8e7175:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    10402e8e7179:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    10402e8e7180:	0f 85 07 00 00 00                               	jne    0x10402e8e718d
    10402e8e7186:	33 ff                                           	xor    edi,edi
    10402e8e7188:	e9 0e 00 00 00                                  	jmp    0x10402e8e719b
    10402e8e718d:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    10402e8e7193:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    10402e8e7197:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    10402e8e719b:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    10402e8e71a2:	0f 82 13 00 00 00                               	jb     0x10402e8e71bb
    10402e8e71a8:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e71ae:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8e71b2:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e71b6:	e9 03 00 00 00                                  	jmp    0x10402e8e71be
    10402e8e71bb:	45 33 e4                                        	xor    r12d,r12d
    10402e8e71be:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    10402e8e71c3:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e71c8:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    10402e8e71ce:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    10402e8e71d4:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    10402e8e71da:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    10402e8e71df:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e71e4:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e8e71ea:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e8e71ef:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e71f4:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e8e71f9:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e8e71fd:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e8e7201:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e8e7206:	4c 8b 15 b5 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5b5]        # 0x10402e8e57c2
    10402e8e720d:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8e7212:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8e7216:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    10402e8e721a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e721d:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    10402e8e7227:	4c 8b 15 ac e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4ac]        # 0x10402e8e56da
    10402e8e722e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e7233:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e7237:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    10402e8e723b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e7240:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8e7246:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8e724b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e7250:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8e7255:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8e7259:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8e725d:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8e7262:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    10402e8e7266:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    10402e8e7270:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    10402e8e7275:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    10402e8e7279:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e727e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8e7284:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8e7289:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e728e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8e7293:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8e7297:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8e729b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8e72a0:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    10402e8e72a4:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    10402e8e72ae:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    10402e8e72b3:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8e72b7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8e72bc:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8e72c2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8e72c7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8e72cc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8e72d1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8e72d5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8e72d9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8e72de:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8e72e2:	c4 c1 7a 7f 84 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm0
    10402e8e72ec:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    10402e8e72f3:	e9 4d 03 00 00                                  	jmp    0x10402e8e7645
    10402e8e72f8:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    10402e8e72fe:	4d 8d 58 58                                     	lea    r11,[r8+0x58]
    10402e8e7302:	4d 8b e7                                        	mov    r12,r15
    10402e8e7305:	c4 82 79 18 24 23                               	vbroadcastss xmm4,DWORD PTR [r11+r12*1]
    10402e8e730b:	c5 20 59 dc                                     	vmulps xmm11,xmm11,xmm4
    10402e8e730f:	4c 8b f8                                        	mov    r15,rax
    10402e8e7312:	c4 82 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [r11+r15*1]
    10402e8e7318:	c5 08 59 f4                                     	vmulps xmm14,xmm14,xmm4
    10402e8e731c:	c4 41 20 58 de                                  	vaddps xmm11,xmm11,xmm14
    10402e8e7321:	48 8b c2                                        	mov    rax,rdx
    10402e8e7324:	c4 42 79 18 34 03                               	vbroadcastss xmm14,DWORD PTR [r11+rax*1]
    10402e8e732a:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    10402e8e732f:	c4 41 20 58 c9                                  	vaddps xmm9,xmm11,xmm9
    10402e8e7334:	c4 41 10 59 c9                                  	vmulps xmm9,xmm13,xmm9
    10402e8e7339:	83 f9 03                                        	cmp    ecx,0x3
    10402e8e733c:	0f 84 76 02 00 00                               	je     0x10402e8e75b8
    10402e8e7342:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8e7347:	44 8b 9d 18 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4e8]
    10402e8e734e:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    10402e8e7354:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    10402e8e735a:	c4 41 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+rbx*1],xmm11
    10402e8e7360:	c4 41 7a 7f 9c 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm11
    10402e8e736a:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    10402e8e7374:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    10402e8e737e:	c4 41 7a 7f 8c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm9
    10402e8e7388:	c4 41 7a 7f 9c 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm11
    10402e8e7392:	33 d2                                           	xor    edx,edx
    10402e8e7394:	e9 3b 00 00 00                                  	jmp    0x10402e8e73d4
    10402e8e7399:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e73a2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e73ab:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e73b4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e73bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    10402e8e73c0:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    10402e8e73c7:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e73ca:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e73ce:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8e73d4:	48 89 95 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdx
    10402e8e73db:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e73e0:	0f 85 bf 39 00 00                               	jne    0x10402e8eada5
    10402e8e73e6:	8b ca                                           	mov    ecx,edx
    10402e8e73e8:	d3 ee                                           	shr    esi,cl
    10402e8e73ea:	40 f6 c6 01                                     	test   sil,0x1
    10402e8e73ee:	0f 84 2d 01 00 00                               	je     0x10402e8e7521
    10402e8e73f4:	43 8b 4c 08 10                                  	mov    ecx,DWORD PTR [r8+r9*1+0x10]
    10402e8e73f9:	43 8b 74 08 0c                                  	mov    esi,DWORD PTR [r8+r9*1+0xc]
    10402e8e73fe:	48 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rcx
    10402e8e7405:	43 8b 4c 08 08                                  	mov    ecx,DWORD PTR [r8+r9*1+0x8]
    10402e8e740a:	43 8b 4c 08 04                                  	mov    ecx,DWORD PTR [r8+r9*1+0x4]
    10402e8e740f:	48 89 8d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rcx
    10402e8e7416:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    10402e8e741a:	83 f9 02                                        	cmp    ecx,0x2
    10402e8e741d:	0f 84 9d 00 00 00                               	je     0x10402e8e74c0
    10402e8e7423:	85 c9                                           	test   ecx,ecx
    10402e8e7425:	0f 85 47 00 00 00                               	jne    0x10402e8e7472
    10402e8e742b:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    10402e8e7432:	c4 c1 7a 10 04 08                               	vmovss xmm0,DWORD PTR [r8+rcx*1]
    10402e8e7438:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8e743e:	48 89 b5 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rsi
    10402e8e7445:	8b f2                                           	mov    esi,edx
    10402e8e7447:	c1 e6 04                                        	shl    esi,0x4
    10402e8e744a:	03 ce                                           	add    ecx,esi
    10402e8e744c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e7450:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    10402e8e7456:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    10402e8e745c:	8b d9                                           	mov    ebx,ecx
    10402e8e745e:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    10402e8e7464:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    10402e8e7468:	e8 b3 ed ea ff                                  	call   0x10402e796220
    10402e8e746d:	e9 af 00 00 00                                  	jmp    0x10402e8e7521
    10402e8e7472:	4d 8b d9                                        	mov    r11,r9
    10402e8e7475:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    10402e8e747a:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    10402e8e7481:	c4 c1 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+rcx*1]
    10402e8e7487:	8d 8c 97 80 02 00 00                            	lea    ecx,[rdi+rdx*4+0x280]
    10402e8e748e:	c4 c1 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+rcx*1]
    10402e8e7494:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    10402e8e749a:	44 8b ca                                        	mov    r9d,edx
    10402e8e749d:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8e74a1:	44 03 c9                                        	add    r9d,ecx
    10402e8e74a4:	8b d6                                           	mov    edx,esi
    10402e8e74a6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e74aa:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    10402e8e74b0:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    10402e8e74b6:	e8 7d ed ea ff                                  	call   0x10402e796238
    10402e8e74bb:	e9 61 00 00 00                                  	jmp    0x10402e8e7521
    10402e8e74c0:	4d 8b d9                                        	mov    r11,r9
    10402e8e74c3:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    10402e8e74c8:	47 8b 4c 18 18                                  	mov    r9d,DWORD PTR [r8+r11*1+0x18]
    10402e8e74cd:	44 8d a4 97 90 02 00 00                         	lea    r12d,[rdi+rdx*4+0x290]
    10402e8e74d5:	c4 81 7a 10 0c 20                               	vmovss xmm1,DWORD PTR [r8+r12*1]
    10402e8e74db:	44 8d a4 97 80 02 00 00                         	lea    r12d,[rdi+rdx*4+0x280]
    10402e8e74e3:	c4 81 7a 10 14 20                               	vmovss xmm2,DWORD PTR [r8+r12*1]
    10402e8e74e9:	44 8d a4 97 70 02 00 00                         	lea    r12d,[rdi+rdx*4+0x270]
    10402e8e74f1:	c4 81 7a 10 1c 20                               	vmovss xmm3,DWORD PTR [r8+r12*1]
    10402e8e74f7:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    10402e8e74fe:	44 8b fa                                        	mov    r15d,edx
    10402e8e7501:	41 c1 e7 04                                     	shl    r15d,0x4
    10402e8e7505:	45 03 e7                                        	add    r12d,r15d
    10402e8e7508:	41 54                                           	push   r12
    10402e8e750a:	8b d6                                           	mov    edx,esi
    10402e8e750c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e7510:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    10402e8e7516:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    10402e8e751c:	e8 07 ed ea ff                                  	call   0x10402e796228
    10402e8e7521:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    10402e8e7527:	83 c2 01                                        	add    edx,0x1
    10402e8e752a:	83 fa 04                                        	cmp    edx,0x4
    10402e8e752d:	0f 85 8d fe ff ff                               	jne    0x10402e8e73c0
    10402e8e7533:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e7536:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e753a:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    10402e8e7544:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    10402e8e754e:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    10402e8e7552:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    10402e8e755c:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    10402e8e7566:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    10402e8e756b:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    10402e8e756f:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    10402e8e7579:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    10402e8e757d:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    10402e8e7587:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    10402e8e758b:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    10402e8e7590:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    10402e8e7594:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    10402e8e759e:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    10402e8e75a2:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e75ac:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    10402e8e75b3:	e9 8d 00 00 00                                  	jmp    0x10402e8e7645
    10402e8e75b8:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    10402e8e75be:	8b d6                                           	mov    edx,esi
    10402e8e75c0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e75c4:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    10402e8e75ca:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8e75ce:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8e75d2:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    10402e8e75d7:	e8 4c ef ea ff                                  	call   0x10402e796528
    10402e8e75dc:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e75df:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e75e3:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    10402e8e75ea:	e9 56 00 00 00                                  	jmp    0x10402e8e7645
    10402e8e75ef:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    10402e8e75f3:	49 8b c9                                        	mov    rcx,r9
    10402e8e75f6:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    10402e8e75fc:	c4 41 7a 7f 8c 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm9
    10402e8e7606:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    10402e8e760a:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    10402e8e7610:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    10402e8e761a:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    10402e8e761e:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    10402e8e7624:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    10402e8e762e:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    10402e8e7632:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    10402e8e7638:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    10402e8e7642:	4c 8b d9                                        	mov    r11,rcx
    10402e8e7645:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    10402e8e764f:	47 8b a4 18 34 01 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0x134]
    10402e8e7657:	43 83 bc 18 34 01 00 00 02                      	cmp    DWORD PTR [r8+r11*1+0x134],0x2
    10402e8e7660:	0f 84 64 00 00 00                               	je     0x10402e8e76ca
    10402e8e7666:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    10402e8e7670:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8e7675:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    10402e8e7679:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    10402e8e7683:	c5 f8 10 bd 60 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xa0]
    10402e8e768b:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    10402e8e768f:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    10402e8e7699:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8e76a1:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    10402e8e76a5:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8e76ad:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8e76b1:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e76b5:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e76bd:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e76c5:	e9 32 00 00 00                                  	jmp    0x10402e8e76fc
    10402e8e76ca:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    10402e8e76d4:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    10402e8e76de:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    10402e8e76e8:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e76ec:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e76f4:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e76fc:	c4 41 49 6a d0                                  	vpunpckhdq xmm10,xmm6,xmm8
    10402e8e7701:	c5 79 6a df                                     	vpunpckhdq xmm11,xmm0,xmm7
    10402e8e7705:	c4 41 21 6d e2                                  	vpunpckhqdq xmm12,xmm11,xmm10
    10402e8e770a:	c4 41 7a 7f a4 38 60 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x160],xmm12
    10402e8e7714:	c4 41 21 6c d2                                  	vpunpcklqdq xmm10,xmm11,xmm10
    10402e8e7719:	c4 41 7a 7f 94 38 50 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x150],xmm10
    10402e8e7723:	c4 c1 49 62 f0                                  	vpunpckldq xmm6,xmm6,xmm8
    10402e8e7728:	c5 f9 62 c7                                     	vpunpckldq xmm0,xmm0,xmm7
    10402e8e772c:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    10402e8e7730:	c4 c1 7a 7f bc 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm7
    10402e8e773a:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    10402e8e773e:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    10402e8e7748:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    10402e8e774f:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e7753:	48 8b 85 70 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x290]
    10402e8e775a:	4c 8b bd 68 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x298]
    10402e8e7761:	48 8b 95 60 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2a0]
    10402e8e7768:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    10402e8e7770:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    10402e8e7773:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    10402e8e7778:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e7780:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8e7786:	c5 f8 10 85 90 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x270]
    10402e8e778e:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    10402e8e7796:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8e779e:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    10402e8e77a6:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8e77ae:	45 33 db                                        	xor    r11d,r11d
    10402e8e77b1:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8e77b7:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    10402e8e77bb:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    10402e8e77c2:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8e77c7:	e9 44 00 00 00                                  	jmp    0x10402e8e7810
    10402e8e77cc:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e77d5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e77de:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e77e7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e77f0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e77f9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    10402e8e7800:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8e7806:	48 8b cb                                        	mov    rcx,rbx
    10402e8e7809:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    10402e8e7810:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    10402e8e7817:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e781c:	0f 85 a7 35 00 00                               	jne    0x10402e8eadc9
    10402e8e7822:	48 8b d9                                        	mov    rbx,rcx
    10402e8e7825:	41 8b cb                                        	mov    ecx,r11d
    10402e8e7828:	d3 ee                                           	shr    esi,cl
    10402e8e782a:	40 f6 c6 01                                     	test   sil,0x1
    10402e8e782e:	0f 84 6e 12 00 00                               	je     0x10402e8e8aa2
    10402e8e7834:	41 8b cb                                        	mov    ecx,r11d
    10402e8e7837:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e783a:	42 8d 34 21                                     	lea    esi,[rcx+r12*1]
    10402e8e783e:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    10402e8e7845:	44 03 e1                                        	add    r12d,ecx
    10402e8e7848:	42 8d 4c 9f 3c                                  	lea    ecx,[rdi+r11*4+0x3c]
    10402e8e784d:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8e7851:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    10402e8e7856:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e785a:	43 8d 04 99                                     	lea    eax,[r9+r11*4]
    10402e8e785e:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e7862:	83 bd e0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x220],0x0
    10402e8e7869:	0f 85 ec 11 00 00                               	jne    0x10402e8e8a5b
    10402e8e786f:	45 8b 5c 18 74                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x74]
    10402e8e7874:	41 83 7c 18 74 00                               	cmp    DWORD PTR [r8+rbx*1+0x74],0x0
    10402e8e787a:	0f 85 86 11 00 00                               	jne    0x10402e8e8a06
    10402e8e7880:	c4 01 7a 6f 1c 20                               	vmovdqu xmm11,XMMWORD PTR [r8+r12*1]
    10402e8e7886:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    10402e8e788b:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    10402e8e7890:	c4 41 30 c2 e3 01                               	vcmpltps xmm12,xmm9,xmm11
    10402e8e7896:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    10402e8e789b:	c4 41 29 db dc                                  	vpand  xmm11,xmm10,xmm12
    10402e8e78a0:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8e78a5:	4c 8b 15 95 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe95]        # 0x10402e8e3741
    10402e8e78ac:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e78b1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8e78b6:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    10402e8e78bb:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x10402e8e3758
    10402e8e78c2:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e78c7:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8e78cc:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    10402e8e78d1:	4c 8b 15 97 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe97]        # 0x10402e8e376f
    10402e8e78d8:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    10402e8e78de:	c4 41 20 54 e7                                  	vandps xmm12,xmm11,xmm15
    10402e8e78e3:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    10402e8e78e9:	c4 41 7a 5b e4                                  	vcvttps2dq xmm12,xmm12
    10402e8e78ee:	c4 41 19 ef e7                                  	vpxor  xmm12,xmm12,xmm15
    10402e8e78f3:	4c 8b 15 98 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe98]        # 0x10402e8e3792
    10402e8e78fa:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e78ff:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e7904:	4c 8b 15 4a 91 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff914a]        # 0x10402e8e0a55
    10402e8e790b:	c4 41 20 54 1a                                  	vandps xmm11,xmm11,XMMWORD PTR [r10]
    10402e8e7910:	4c 8b 15 9a be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9a]        # 0x10402e8e37b1
    10402e8e7917:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e791c:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8e7921:	c4 41 20 c2 de 01                               	vcmpltps xmm11,xmm11,xmm14
    10402e8e7927:	c4 41 21 df fd                                  	vpandn xmm15,xmm11,xmm13
    10402e8e792c:	c4 41 19 db db                                  	vpand  xmm11,xmm12,xmm11
    10402e8e7931:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8e7936:	c4 42 21 2b db                                  	vpackusdw xmm11,xmm11,xmm11
    10402e8e793b:	c4 41 21 67 db                                  	vpackuswb xmm11,xmm11,xmm11
    10402e8e7940:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8e7945:	45 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+rbx*1]
    10402e8e7949:	44 0f af da                                     	imul   r11d,edx
    10402e8e794d:	44 03 d8                                        	add    r11d,eax
    10402e8e7950:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    10402e8e7958:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    10402e8e795f:	41 8b 44 18 18                                  	mov    eax,DWORD PTR [r8+rbx*1+0x18]
    10402e8e7964:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8e7968:	44 03 d8                                        	add    r11d,eax
    10402e8e796b:	83 f9 0f                                        	cmp    ecx,0xf
    10402e8e796e:	0f 84 a0 00 00 00                               	je     0x10402e8e7a14
    10402e8e7974:	8b c1                                           	mov    eax,ecx
    10402e8e7976:	83 e0 01                                        	and    eax,0x1
    10402e8e7979:	f7 d8                                           	neg    eax
    10402e8e797b:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8e797f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8e7984:	8b c1                                           	mov    eax,ecx
    10402e8e7986:	c1 e0 1e                                        	shl    eax,0x1e
    10402e8e7989:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8e798c:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    10402e8e7992:	8b c1                                           	mov    eax,ecx
    10402e8e7994:	c1 e0 1d                                        	shl    eax,0x1d
    10402e8e7997:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8e799a:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    10402e8e79a0:	8b c1                                           	mov    eax,ecx
    10402e8e79a2:	c1 e0 1c                                        	shl    eax,0x1c
    10402e8e79a5:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8e79a8:	c4 63 19 22 e0 03                               	vpinsrd xmm12,xmm12,eax,0x3
    10402e8e79ae:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    10402e8e79b3:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    10402e8e79b9:	0f 84 3b 00 00 00                               	je     0x10402e8e79fa
    10402e8e79bf:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    10402e8e79c4:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    10402e8e79ca:	0f 84 2a 00 00 00                               	je     0x10402e8e79fa
    10402e8e79d0:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    10402e8e79d5:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e79d9:	c4 41 7a 6f 2c 30                               	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1]
    10402e8e79df:	c4 01 7a 6f 34 20                               	vmovdqu xmm14,XMMWORD PTR [r8+r12*1]
    10402e8e79e5:	c4 41 19 df fe                                  	vpandn xmm15,xmm12,xmm14
    10402e8e79ea:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    10402e8e79ef:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    10402e8e79f4:	c4 01 7a 7f 2c 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm13
    10402e8e79fa:	c4 01 7a 6f 2c 18                               	vmovdqu xmm13,XMMWORD PTR [r8+r11*1]
    10402e8e7a00:	c4 41 19 df fd                                  	vpandn xmm15,xmm12,xmm13
    10402e8e7a05:	c4 41 21 db dc                                  	vpand  xmm11,xmm11,xmm12
    10402e8e7a0a:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8e7a0f:	e9 37 00 00 00                                  	jmp    0x10402e8e7a4b
    10402e8e7a14:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    10402e8e7a19:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    10402e8e7a1f:	0f 84 26 00 00 00                               	je     0x10402e8e7a4b
    10402e8e7a25:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    10402e8e7a2a:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    10402e8e7a30:	0f 84 15 00 00 00                               	je     0x10402e8e7a4b
    10402e8e7a36:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    10402e8e7a3b:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    10402e8e7a3f:	c4 41 7a 6f 24 30                               	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1]
    10402e8e7a45:	c4 01 7a 7f 24 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm12
    10402e8e7a4b:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    10402e8e7a51:	45 8b 5c 18 68                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x68]
    10402e8e7a56:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    10402e8e7a5c:	0f 84 40 10 00 00                               	je     0x10402e8e8aa2
    10402e8e7a62:	45 8b 5c 18 70                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x70]
    10402e8e7a67:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    10402e8e7a6d:	0f 84 2f 10 00 00                               	je     0x10402e8e8aa2
    10402e8e7a73:	45 8b 5c 18 14                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x14]
    10402e8e7a78:	41 83 7c 18 14 04                               	cmp    DWORD PTR [r8+rbx*1+0x14],0x4
    10402e8e7a7e:	0f 85 1e 10 00 00                               	jne    0x10402e8e8aa2
    10402e8e7a84:	45 8b 5c 18 18                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x18]
    10402e8e7a89:	45 85 db                                        	test   r11d,r11d
    10402e8e7a8c:	0f 84 10 10 00 00                               	je     0x10402e8e8aa2
    10402e8e7a92:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    10402e8e7a96:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    10402e8e7a9a:	43 83 3c 20 00                                  	cmp    DWORD PTR [r8+r12*1],0x0
    10402e8e7a9f:	0f 84 fd 0f 00 00                               	je     0x10402e8e8aa2
    10402e8e7aa5:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    10402e8e7aa9:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e7aad:	41 83 eb 3c                                     	sub    r11d,0x3c
    10402e8e7ab1:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8e7ab5:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e7abb:	c1 e8 02                                        	shr    eax,0x2
    10402e8e7abe:	41 0f af c3                                     	imul   eax,r11d
    10402e8e7ac2:	c1 e0 04                                        	shl    eax,0x4
    10402e8e7ac5:	46 8d 1c 20                                     	lea    r11d,[rax+r12*1]
    10402e8e7ac9:	44 8d 24 95 00 00 00 00                         	lea    r12d,[rdx*4+0x0]
    10402e8e7ad1:	41 8b c4                                        	mov    eax,r12d
    10402e8e7ad4:	83 e0 f0                                        	and    eax,0xfffffff0
    10402e8e7ad7:	44 03 d8                                        	add    r11d,eax
    10402e8e7ada:	41 8b 44 18 6c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x6c]
    10402e8e7adf:	2d 01 02 00 00                                  	sub    eax,0x201
    10402e8e7ae4:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    10402e8e7aeb:	33 d2                                           	xor    edx,edx
    10402e8e7aed:	85 c0                                           	test   eax,eax
    10402e8e7aef:	0f 94 c2                                        	sete   dl
    10402e8e7af2:	83 f8 02                                        	cmp    eax,0x2
    10402e8e7af5:	0f 94 c0                                        	sete   al
    10402e8e7af8:	0f b6 c0                                        	movzx  eax,al
    10402e8e7afb:	0b c2                                           	or     eax,edx
    10402e8e7afd:	0f 85 0d 00 00 00                               	jne    0x10402e8e7b10
    10402e8e7b03:	4b c7 04 18 00 00 00 00                         	mov    QWORD PTR [r8+r11*1],0x0
    10402e8e7b0b:	e9 92 0f 00 00                                  	jmp    0x10402e8e8aa2
    10402e8e7b10:	83 e1 0f                                        	and    ecx,0xf
    10402e8e7b13:	41 83 e4 0c                                     	and    r12d,0xc
    10402e8e7b17:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e7b1d:	83 e0 03                                        	and    eax,0x3
    10402e8e7b20:	41 0b c4                                        	or     eax,r12d
    10402e8e7b23:	44 8d 24 85 00 00 00 00                         	lea    r12d,[rax*4+0x0]
    10402e8e7b2b:	41 83 e4 3f                                     	and    r12d,0x3f
    10402e8e7b2f:	4c 8b d1                                        	mov    r10,rcx
    10402e8e7b32:	41 8b cc                                        	mov    ecx,r12d
    10402e8e7b35:	4d 8b e2                                        	mov    r12,r10
    10402e8e7b38:	49 d3 e4                                        	shl    r12,cl
    10402e8e7b3b:	4b 8b 04 18                                     	mov    rax,QWORD PTR [r8+r11*1]
    10402e8e7b3f:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8e7b43:	0f 84 52 07 00 00                               	je     0x10402e8e829b
    10402e8e7b49:	49 0b c4                                        	or     rax,r12
    10402e8e7b4c:	4b 89 04 18                                     	mov    QWORD PTR [r8+r11*1],rax
    10402e8e7b50:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8e7b54:	0f 85 48 0f 00 00                               	jne    0x10402e8e8aa2
    10402e8e7b5a:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    10402e8e7b5f:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e7b65:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8e7b6a:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    10402e8e7b6e:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    10402e8e7b74:	83 c9 03                                        	or     ecx,0x3
    10402e8e7b77:	0f af ca                                        	imul   ecx,edx
    10402e8e7b7a:	03 c8                                           	add    ecx,eax
    10402e8e7b7c:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e7b7f:	41 03 cc                                        	add    ecx,r12d
    10402e8e7b82:	c4 41 7a 6f 5c 08 30                            	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0x30]
    10402e8e7b89:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8e7b8f:	c4 41 7a 6f 6c 08 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rcx*1+0x20]
    10402e8e7b96:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8e7b9c:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    10402e8e7ba1:	c4 41 7a 6f 74 08 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rcx*1+0x10]
    10402e8e7ba8:	c4 c1 08 c2 e6 00                               	vcmpeqps xmm4,xmm14,xmm14
    10402e8e7bae:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    10402e8e7bb2:	c4 c1 7a 6f 24 08                               	vmovdqu xmm4,XMMWORD PTR [r8+rcx*1]
    10402e8e7bb8:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8e7bbd:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    10402e8e7bc1:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    10402e8e7bc7:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    10402e8e7bcd:	8b f1                                           	mov    esi,ecx
    10402e8e7bcf:	83 ce 02                                        	or     esi,0x2
    10402e8e7bd2:	0f af f2                                        	imul   esi,edx
    10402e8e7bd5:	03 f0                                           	add    esi,eax
    10402e8e7bd7:	c1 e6 04                                        	shl    esi,0x4
    10402e8e7bda:	41 03 f4                                        	add    esi,r12d
    10402e8e7bdd:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8e7be4:	c4 c1 18 c2 ec 00                               	vcmpeqps xmm5,xmm12,xmm12
    10402e8e7bea:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8e7bee:	c4 c1 7a 6f 6c 30 20                            	vmovdqu xmm5,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8e7bf5:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8e7bfa:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e7bfe:	c4 c1 7a 6f 74 30 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8e7c05:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e7c0a:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8e7c0e:	c4 c1 7a 6f 3c 30                               	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1]
    10402e8e7c14:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8e7c19:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    10402e8e7c1e:	8b f1                                           	mov    esi,ecx
    10402e8e7c20:	83 ce 01                                        	or     esi,0x1
    10402e8e7c23:	0f af f2                                        	imul   esi,edx
    10402e8e7c26:	03 f0                                           	add    esi,eax
    10402e8e7c28:	c1 e6 04                                        	shl    esi,0x4
    10402e8e7c2b:	41 03 f4                                        	add    esi,r12d
    10402e8e7c2e:	c4 41 7a 6f 44 30 30                            	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8e7c35:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8e7c3b:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    10402e8e7c40:	c4 41 7a 6f 4c 30 20                            	vmovdqu xmm9,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8e7c47:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8e7c4d:	c4 c1 79 db c2                                  	vpand  xmm0,xmm0,xmm10
    10402e8e7c52:	c4 41 7a 6f 54 30 10                            	vmovdqu xmm10,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8e7c59:	c4 c1 28 c2 ca 00                               	vcmpeqps xmm1,xmm10,xmm10
    10402e8e7c5f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8e7c63:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    10402e8e7c69:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8e7c6e:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    10402e8e7c72:	0f af d1                                        	imul   edx,ecx
    10402e8e7c75:	03 c2                                           	add    eax,edx
    10402e8e7c77:	c1 e0 04                                        	shl    eax,0x4
    10402e8e7c7a:	44 03 e0                                        	add    r12d,eax
    10402e8e7c7d:	c4 81 7a 6f 54 20 30                            	vmovdqu xmm2,XMMWORD PTR [r8+r12*1+0x30]
    10402e8e7c84:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8e7c89:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    10402e8e7c8d:	c4 81 7a 6f 5c 20 20                            	vmovdqu xmm3,XMMWORD PTR [r8+r12*1+0x20]
    10402e8e7c94:	c5 78 11 5d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm11
    10402e8e7c99:	c5 60 c2 db 00                                  	vcmpeqps xmm11,xmm3,xmm3
    10402e8e7c9e:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    10402e8e7ca3:	c4 01 7a 6f 5c 20 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x10]
    10402e8e7caa:	c5 78 11 ad 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm13
    10402e8e7cb2:	c4 41 20 c2 eb 00                               	vcmpeqps xmm13,xmm11,xmm11
    10402e8e7cb8:	c4 c1 79 db c5                                  	vpand  xmm0,xmm0,xmm13
    10402e8e7cbd:	c4 01 7a 6f 2c 20                               	vmovdqu xmm13,XMMWORD PTR [r8+r12*1]
    10402e8e7cc3:	c5 78 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm14
    10402e8e7ccb:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8e7cd1:	c4 c1 79 db c6                                  	vpand  xmm0,xmm0,xmm14
    10402e8e7cd6:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8e7cdb:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8e7ce0:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    10402e8e7ce4:	41 83 fc 0f                                     	cmp    r12d,0xf
    10402e8e7ce8:	0f 84 26 00 00 00                               	je     0x10402e8e7d14
    10402e8e7cee:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    10402e8e7cf7:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e7cff:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e7d07:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e7d0f:	e9 8e 0d 00 00                                  	jmp    0x10402e8e8aa2
    10402e8e7d14:	4c 8b 15 72 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe72]        # 0x10402e8e3b8d
    10402e8e7d1b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e7d20:	4c 8b 15 75 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe75]        # 0x10402e8e3b9c
    10402e8e7d27:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e7d2d:	4c 8b 15 78 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe78]        # 0x10402e8e3bac
    10402e8e7d34:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e7d39:	4c 8b 15 7b be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe7b]        # 0x10402e8e3bbb
    10402e8e7d40:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8e7d46:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8e7d4e:	4c 8b 15 7e be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe7e]        # 0x10402e8e3bd3
    10402e8e7d55:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e7d5a:	4c 8b 15 81 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe81]        # 0x10402e8e3be2
    10402e8e7d61:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e7d67:	c5 78 11 b5 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm14
    10402e8e7d6f:	4c 8b 15 84 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe84]        # 0x10402e8e3bfa
    10402e8e7d76:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e7d7b:	4c 8b 15 87 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe87]        # 0x10402e8e3c09
    10402e8e7d82:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8e7d88:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8e7d90:	4c 8b 15 8a be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8a]        # 0x10402e8e3c21
    10402e8e7d97:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e7d9c:	4c 8b 15 8d be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8d]        # 0x10402e8e3c30
    10402e8e7da3:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e7da9:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    10402e8e7db1:	4c 8b 15 90 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe90]        # 0x10402e8e3c48
    10402e8e7db8:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e7dbd:	4c 8b 15 93 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe93]        # 0x10402e8e3c57
    10402e8e7dc4:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8e7dca:	c5 f8 11 a5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm4
    10402e8e7dd2:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x10402e8e3c6f
    10402e8e7dd9:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8e7dde:	4c 8b 15 99 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe99]        # 0x10402e8e3c7e
    10402e8e7de5:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    10402e8e7deb:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8e7df3:	4c 8b 15 9c be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9c]        # 0x10402e8e3c96
    10402e8e7dfa:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e7dff:	4c 8b 15 9f be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9f]        # 0x10402e8e3ca5
    10402e8e7e06:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e7e0c:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    10402e8e7e14:	4c 8b 15 a2 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea2]        # 0x10402e8e3cbd
    10402e8e7e1b:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e7e20:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x10402e8e3ccc
    10402e8e7e27:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e7e2d:	c5 78 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm14
    10402e8e7e35:	4c 8b 15 a8 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea8]        # 0x10402e8e3ce4
    10402e8e7e3c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e7e41:	4c 8b 15 ab be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeab]        # 0x10402e8e3cf3
    10402e8e7e48:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8e7e4e:	c5 f8 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm5
    10402e8e7e56:	4c 8b 15 ae be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeae]        # 0x10402e8e3d0b
    10402e8e7e5d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e7e62:	4c 8b 15 b1 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb1]        # 0x10402e8e3d1a
    10402e8e7e69:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    10402e8e7e6f:	c5 f8 11 a5 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm4
    10402e8e7e77:	4c 8b 15 b4 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb4]        # 0x10402e8e3d32
    10402e8e7e7e:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8e7e83:	4c 8b 15 b7 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb7]        # 0x10402e8e3d41
    10402e8e7e8a:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    10402e8e7e90:	c5 f8 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm6
    10402e8e7e98:	4c 8b 15 ba be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeba]        # 0x10402e8e3d59
    10402e8e7e9f:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8e7ea4:	4c 8b 15 bd be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbebd]        # 0x10402e8e3d68
    10402e8e7eab:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    10402e8e7eb1:	c5 f8 11 85 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm0
    10402e8e7eb9:	4c 8b 15 c0 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec0]        # 0x10402e8e3d80
    10402e8e7ec0:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e7ec5:	4c 8b 15 c3 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec3]        # 0x10402e8e3d8f
    10402e8e7ecc:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e7ed2:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    10402e8e7eda:	4c 8b 15 c6 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec6]        # 0x10402e8e3da7
    10402e8e7ee1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e7ee6:	4c 8b 15 c9 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec9]        # 0x10402e8e3db6
    10402e8e7eed:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e7ef3:	c5 78 11 a5 50 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4b0],xmm12
    10402e8e7efb:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8e7f00:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    10402e8e7f06:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    10402e8e7f0c:	4c 8b 15 cc be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecc]        # 0x10402e8e3ddf
    10402e8e7f13:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e7f19:	c5 78 11 85 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm8
    10402e8e7f21:	4c 8b 15 cf be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecf]        # 0x10402e8e3df7
    10402e8e7f28:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e7f2d:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8e7f32:	c5 78 11 b5 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm14
    10402e8e7f3a:	c4 41 38 c2 f5 01                               	vcmpltps xmm14,xmm8,xmm13
    10402e8e7f40:	c4 41 10 c2 c0 01                               	vcmpltps xmm8,xmm13,xmm8
    10402e8e7f46:	c4 41 09 eb c0                                  	vpor   xmm8,xmm14,xmm8
    10402e8e7f4b:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8e7f50:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    10402e8e7f55:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8e7f5a:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x10402e8e3df7
    10402e8e7f61:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e7f66:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8e7f6b:	c4 41 39 df fe                                  	vpandn xmm15,xmm8,xmm14
    10402e8e7f70:	c4 41 11 db c0                                  	vpand  xmm8,xmm13,xmm8
    10402e8e7f75:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8e7f7a:	c4 41 38 c2 eb 01                               	vcmpltps xmm13,xmm8,xmm11
    10402e8e7f80:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    10402e8e7f85:	c4 c1 41 db fd                                  	vpand  xmm7,xmm7,xmm13
    10402e8e7f8a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8e7f8f:	c4 41 11 df f8                                  	vpandn xmm15,xmm13,xmm8
    10402e8e7f94:	c4 41 21 db c5                                  	vpand  xmm8,xmm11,xmm13
    10402e8e7f99:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8e7f9e:	c5 38 c2 db 01                                  	vcmpltps xmm11,xmm8,xmm3
    10402e8e7fa3:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    10402e8e7fa7:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    10402e8e7fac:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e7fb1:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    10402e8e7fb6:	c4 c1 61 db fb                                  	vpand  xmm7,xmm3,xmm11
    10402e8e7fbb:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8e7fc0:	c5 40 c2 c2 01                                  	vcmpltps xmm8,xmm7,xmm2
    10402e8e7fc5:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    10402e8e7fc9:	c4 c1 49 db c0                                  	vpand  xmm0,xmm6,xmm8
    10402e8e7fce:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e7fd3:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    10402e8e7fd7:	c4 c1 69 db f0                                  	vpand  xmm6,xmm2,xmm8
    10402e8e7fdc:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e7fe1:	c5 c8 c2 f9 01                                  	vcmpltps xmm7,xmm6,xmm1
    10402e8e7fe6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e7fea:	c5 d9 db c7                                     	vpand  xmm0,xmm4,xmm7
    10402e8e7fee:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e7ff3:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8e7ff7:	c5 f1 db f7                                     	vpand  xmm6,xmm1,xmm7
    10402e8e7ffb:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e8000:	c4 c1 48 c2 fa 01                               	vcmpltps xmm7,xmm6,xmm10
    10402e8e8006:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e800a:	c5 d1 db c7                                     	vpand  xmm0,xmm5,xmm7
    10402e8e800e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8013:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8e8017:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    10402e8e801b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8020:	c4 c1 50 c2 f1 01                               	vcmpltps xmm6,xmm5,xmm9
    10402e8e8026:	c5 f8 10 bd 00 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x400]
    10402e8e802e:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e8032:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8e8036:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e803b:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e803f:	c5 b1 db ee                                     	vpand  xmm5,xmm9,xmm6
    10402e8e8043:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8048:	c5 f8 10 b5 b0 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x350]
    10402e8e8050:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8055:	c5 78 10 85 50 fb ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x4b0]
    10402e8e805d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8061:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e8065:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e806a:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e806e:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e8072:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8077:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8e807f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8084:	c5 78 10 85 c0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x340]
    10402e8e808c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8090:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e8094:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8099:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e809d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e80a1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e80a6:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8e80ae:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e80b3:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8e80bb:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e80bf:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e80c3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e80c8:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e80cc:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e80d0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e80d5:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8e80dd:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e80e2:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8e80ea:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e80ee:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e80f2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e80f7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e80fb:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e80ff:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8104:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8e810c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8111:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8e8119:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e811d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e8121:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8126:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e812a:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e812e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8133:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8e813b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8140:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8e8148:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e814c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e8150:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8155:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8159:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e815d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8162:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8e816a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e816f:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8e8177:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e817b:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e817f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8184:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8188:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e818c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8191:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8e8199:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e819e:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8e81a6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e81aa:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e81ae:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e81b3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e81b7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e81bb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e81c0:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8e81c5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e81ca:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8e81d2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e81d6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e81da:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e81df:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    10402e8e81e9:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e81ed:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8e81f1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e81f6:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e8200:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8e8204:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8e8208:	45 33 e4                                        	xor    r12d,r12d
    10402e8e820b:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e820f:	41 0f 97 c4                                     	seta   r12b
    10402e8e8213:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    10402e8e8219:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8e8221:	0b d0                                           	or     edx,eax
    10402e8e8223:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8e8229:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8e822e:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e8232:	45 0f 47 e7                                     	cmova  r12d,r15d
    10402e8e8236:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8e823e:	0b d0                                           	or     edx,eax
    10402e8e8240:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8e8246:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8e824b:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8e8250:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e8254:	44 0f 47 e2                                     	cmova  r12d,edx
    10402e8e8258:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e8e825c:	41 0b c4                                        	or     eax,r12d
    10402e8e825f:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8e8265:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    10402e8e826c:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    10402e8e8272:	44 0b e0                                        	or     r12d,eax
    10402e8e8275:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e8279:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    10402e8e827e:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e8286:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e828e:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e8296:	e9 07 08 00 00                                  	jmp    0x10402e8e8aa2
    10402e8e829b:	43 8b 44 18 0c                                  	mov    eax,DWORD PTR [r8+r11*1+0xc]
    10402e8e82a0:	8b d0                                           	mov    edx,eax
    10402e8e82a2:	83 e2 3f                                        	and    edx,0x3f
    10402e8e82a5:	8b ca                                           	mov    ecx,edx
    10402e8e82a7:	49 d3 ec                                        	shr    r12,cl
    10402e8e82aa:	41 f6 c4 01                                     	test   r12b,0x1
    10402e8e82ae:	0f 84 ee 07 00 00                               	je     0x10402e8e8aa2
    10402e8e82b4:	83 e0 03                                        	and    eax,0x3
    10402e8e82b7:	44 8d 24 86                                     	lea    r12d,[rsi+rax*4]
    10402e8e82bb:	c4 81 7a 10 04 20                               	vmovss xmm0,DWORD PTR [r8+r12*1]
    10402e8e82c1:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    10402e8e82c8:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    10402e8e82cc:	0f 86 d0 07 00 00                               	jbe    0x10402e8e8aa2
    10402e8e82d2:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    10402e8e82d7:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    10402e8e82dd:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    10402e8e82e2:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    10402e8e82e6:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    10402e8e82ec:	83 c9 03                                        	or     ecx,0x3
    10402e8e82ef:	0f af ca                                        	imul   ecx,edx
    10402e8e82f2:	03 c8                                           	add    ecx,eax
    10402e8e82f4:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e82f7:	41 03 cc                                        	add    ecx,r12d
    10402e8e82fa:	c4 c1 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x30]
    10402e8e8301:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    10402e8e8306:	c4 c1 7a 6f 7c 08 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1+0x20]
    10402e8e830d:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8e8312:	c4 c1 49 db f0                                  	vpand  xmm6,xmm6,xmm8
    10402e8e8317:	c4 41 7a 6f 44 08 10                            	vmovdqu xmm8,XMMWORD PTR [r8+rcx*1+0x10]
    10402e8e831e:	c4 41 38 c2 d8 00                               	vcmpeqps xmm11,xmm8,xmm8
    10402e8e8324:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    10402e8e8329:	c4 41 7a 6f 1c 08                               	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1]
    10402e8e832f:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8e8335:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    10402e8e833a:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    10402e8e8340:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    10402e8e8346:	8b f1                                           	mov    esi,ecx
    10402e8e8348:	83 ce 02                                        	or     esi,0x2
    10402e8e834b:	0f af f2                                        	imul   esi,edx
    10402e8e834e:	03 f0                                           	add    esi,eax
    10402e8e8350:	c1 e6 04                                        	shl    esi,0x4
    10402e8e8353:	41 03 f4                                        	add    esi,r12d
    10402e8e8356:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8e835d:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8e8363:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    10402e8e8368:	c4 41 7a 6f 6c 30 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8e836f:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8e8375:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    10402e8e837a:	c4 41 7a 6f 74 30 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8e8381:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8e8387:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    10402e8e838b:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    10402e8e8391:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8e8396:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    10402e8e839a:	8b f1                                           	mov    esi,ecx
    10402e8e839c:	83 ce 01                                        	or     esi,0x1
    10402e8e839f:	0f af f2                                        	imul   esi,edx
    10402e8e83a2:	03 f0                                           	add    esi,eax
    10402e8e83a4:	c1 e6 04                                        	shl    esi,0x4
    10402e8e83a7:	41 03 f4                                        	add    esi,r12d
    10402e8e83aa:	c4 c1 7a 6f 54 30 30                            	vmovdqu xmm2,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8e83b1:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8e83b6:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    10402e8e83ba:	c4 c1 7a 6f 5c 30 20                            	vmovdqu xmm3,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8e83c1:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8e83c6:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    10402e8e83ca:	c4 c1 7a 6f 64 30 10                            	vmovdqu xmm4,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8e83d1:	c5 d8 c2 ec 00                                  	vcmpeqps xmm5,xmm4,xmm4
    10402e8e83d6:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    10402e8e83da:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    10402e8e83e0:	c5 48 c2 ce 00                                  	vcmpeqps xmm9,xmm6,xmm6
    10402e8e83e5:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8e83ea:	0f af d1                                        	imul   edx,ecx
    10402e8e83ed:	03 c2                                           	add    eax,edx
    10402e8e83ef:	c1 e0 04                                        	shl    eax,0x4
    10402e8e83f2:	44 03 e0                                        	add    r12d,eax
    10402e8e83f5:	c4 01 7a 6f 4c 20 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x30]
    10402e8e83fc:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8e8402:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8e8407:	c4 01 7a 6f 54 20 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r12*1+0x20]
    10402e8e840e:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    10402e8e8413:	c4 c1 28 c2 c2 00                               	vcmpeqps xmm0,xmm10,xmm10
    10402e8e8419:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8e841d:	c4 81 7a 6f 6c 20 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r12*1+0x10]
    10402e8e8424:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    10402e8e842c:	c5 d0 c2 fd 00                                  	vcmpeqps xmm7,xmm5,xmm5
    10402e8e8431:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8e8435:	c4 81 7a 6f 3c 20                               	vmovdqu xmm7,XMMWORD PTR [r8+r12*1]
    10402e8e843b:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    10402e8e8443:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8e8448:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    10402e8e844d:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8e8452:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8e8457:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    10402e8e845b:	41 83 fc 0f                                     	cmp    r12d,0xf
    10402e8e845f:	0f 84 26 00 00 00                               	je     0x10402e8e848b
    10402e8e8465:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    10402e8e846e:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e8476:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e847e:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e8486:	e9 17 06 00 00                                  	jmp    0x10402e8e8aa2
    10402e8e848b:	4c 8b 15 fb b6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb6fb]        # 0x10402e8e3b8d
    10402e8e8492:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e8497:	4c 8b 15 fe b6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb6fe]        # 0x10402e8e3b9c
    10402e8e849e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e84a4:	4c 8b 15 01 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb701]        # 0x10402e8e3bac
    10402e8e84ab:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e84b0:	4c 8b 15 04 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb704]        # 0x10402e8e3bbb
    10402e8e84b7:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e84bd:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    10402e8e84c5:	4c 8b 15 07 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb707]        # 0x10402e8e3bd3
    10402e8e84cc:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e84d1:	4c 8b 15 0a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70a]        # 0x10402e8e3be2
    10402e8e84d8:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e84de:	c5 78 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm8
    10402e8e84e6:	4c 8b 15 0d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70d]        # 0x10402e8e3bfa
    10402e8e84ed:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e84f2:	4c 8b 15 10 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb710]        # 0x10402e8e3c09
    10402e8e84f9:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e84ff:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    10402e8e8507:	4c 8b 15 13 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb713]        # 0x10402e8e3c21
    10402e8e850e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e8513:	4c 8b 15 16 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb716]        # 0x10402e8e3c30
    10402e8e851a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e8520:	c5 78 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm8
    10402e8e8528:	4c 8b 15 19 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb719]        # 0x10402e8e3c48
    10402e8e852f:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e8534:	4c 8b 15 1c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71c]        # 0x10402e8e3c57
    10402e8e853b:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e8541:	c5 78 11 9d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm11
    10402e8e8549:	4c 8b 15 1f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71f]        # 0x10402e8e3c6f
    10402e8e8550:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e8555:	4c 8b 15 22 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb722]        # 0x10402e8e3c7e
    10402e8e855c:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8e8562:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    10402e8e856a:	4c 8b 15 25 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb725]        # 0x10402e8e3c96
    10402e8e8571:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e8576:	4c 8b 15 28 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb728]        # 0x10402e8e3ca5
    10402e8e857d:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e8583:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    10402e8e858b:	4c 8b 15 2b b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72b]        # 0x10402e8e3cbd
    10402e8e8592:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e8597:	4c 8b 15 2e b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72e]        # 0x10402e8e3ccc
    10402e8e859e:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e85a4:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    10402e8e85ac:	4c 8b 15 31 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb731]        # 0x10402e8e3ce4
    10402e8e85b3:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e85b8:	4c 8b 15 34 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb734]        # 0x10402e8e3cf3
    10402e8e85bf:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e85c5:	c5 78 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm13
    10402e8e85cd:	4c 8b 15 37 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb737]        # 0x10402e8e3d0b
    10402e8e85d4:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e85d9:	4c 8b 15 3a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73a]        # 0x10402e8e3d1a
    10402e8e85e0:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    10402e8e85e6:	c5 78 11 9d a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm11
    10402e8e85ee:	4c 8b 15 3d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73d]        # 0x10402e8e3d32
    10402e8e85f5:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e85fa:	4c 8b 15 40 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb740]        # 0x10402e8e3d41
    10402e8e8601:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8e8607:	c5 78 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm14
    10402e8e860f:	4c 8b 15 43 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb743]        # 0x10402e8e3d59
    10402e8e8616:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8e861b:	4c 8b 15 46 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb746]        # 0x10402e8e3d68
    10402e8e8622:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8e8628:	c5 f8 11 85 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm0
    10402e8e8630:	4c 8b 15 49 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb749]        # 0x10402e8e3d80
    10402e8e8637:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e863c:	4c 8b 15 4c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74c]        # 0x10402e8e3d8f
    10402e8e8643:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e8649:	c5 f8 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm1
    10402e8e8651:	4c 8b 15 4f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74f]        # 0x10402e8e3da7
    10402e8e8658:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8e865d:	4c 8b 15 52 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb752]        # 0x10402e8e3db6
    10402e8e8664:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    10402e8e866a:	c5 78 11 a5 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm12
    10402e8e8672:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8e8677:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    10402e8e867d:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    10402e8e8683:	4c 8b 15 55 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb755]        # 0x10402e8e3ddf
    10402e8e868a:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e8690:	c5 f8 11 95 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm2
    10402e8e8698:	4c 8b 15 58 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb758]        # 0x10402e8e3df7
    10402e8e869f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8e86a4:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8e86a8:	c5 78 11 85 50 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4b0],xmm8
    10402e8e86b0:	c5 68 c2 c7 01                                  	vcmpltps xmm8,xmm2,xmm7
    10402e8e86b5:	c5 c0 c2 d2 01                                  	vcmpltps xmm2,xmm7,xmm2
    10402e8e86ba:	c5 39 eb c2                                     	vpor   xmm8,xmm8,xmm2
    10402e8e86be:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8e86c3:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    10402e8e86c8:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8e86cd:	4c 8b 15 23 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb723]        # 0x10402e8e3df7
    10402e8e86d4:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8e86d9:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8e86dd:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    10402e8e86e1:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    10402e8e86e6:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8e86eb:	c5 40 c2 c5 01                                  	vcmpltps xmm8,xmm7,xmm5
    10402e8e86f0:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8e86f5:	c4 41 71 db e0                                  	vpand  xmm12,xmm1,xmm8
    10402e8e86fa:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8e86ff:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    10402e8e8703:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8e8708:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e870d:	c4 c1 50 c2 fa 01                               	vcmpltps xmm7,xmm5,xmm10
    10402e8e8713:	c4 41 41 df fc                                  	vpandn xmm15,xmm7,xmm12
    10402e8e8718:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8e871c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8721:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8725:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    10402e8e8729:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e872e:	c4 c1 50 c2 f9 01                               	vcmpltps xmm7,xmm5,xmm9
    10402e8e8734:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8738:	c5 89 db c7                                     	vpand  xmm0,xmm14,xmm7
    10402e8e873c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8741:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8745:	c5 b1 db ef                                     	vpand  xmm5,xmm9,xmm7
    10402e8e8749:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e874e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8753:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8757:	c5 a1 db c7                                     	vpand  xmm0,xmm11,xmm7
    10402e8e875b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8760:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8764:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e8768:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e876d:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8e8772:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e8776:	c5 91 db c6                                     	vpand  xmm0,xmm13,xmm6
    10402e8e877a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e877f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e8783:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8e8787:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e878c:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8e8791:	c5 f8 10 bd 50 fb ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x4b0]
    10402e8e8799:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e879d:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8e87a1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e87a6:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e87aa:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8e87ae:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e87b3:	c5 f8 10 b5 b0 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x350]
    10402e8e87bb:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e87c0:	c5 78 10 85 00 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x400]
    10402e8e87c8:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e87cc:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e87d0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e87d5:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e87d9:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e87dd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e87e2:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    10402e8e87ea:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e87ef:	c5 78 10 85 c0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x340]
    10402e8e87f7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e87fb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e87ff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8804:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8808:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e880c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8811:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8e8819:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e881e:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8e8826:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e882a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e882e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8833:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8837:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e883b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e8840:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8e8848:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e884d:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8e8855:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8859:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e885d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8862:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8866:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e886a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e886f:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8e8877:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e887c:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8e8884:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8888:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e888c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8891:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8895:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e8899:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e889e:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8e88a6:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e88ab:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8e88b3:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e88b7:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e88bb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e88c0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e88c4:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e88c8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e88cd:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8e88d5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e88da:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8e88e2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e88e6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e88ea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e88ef:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e88f3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e88f7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e88fc:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8e8904:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8909:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8e8911:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8915:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e8919:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e891e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8922:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8e8926:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e892b:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8e8930:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e8935:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8e893d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8e8941:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8e8945:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e894a:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    10402e8e8954:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8e8958:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8e895c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e8961:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e896b:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8e896f:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8e8973:	45 33 e4                                        	xor    r12d,r12d
    10402e8e8976:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8e897a:	41 0f 97 c4                                     	seta   r12b
    10402e8e897e:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    10402e8e8984:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8e898c:	0b d0                                           	or     edx,eax
    10402e8e898e:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8e8994:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8e8999:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e899d:	45 0f 47 e7                                     	cmova  r12d,r15d
    10402e8e89a1:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    10402e8e89a9:	0b d0                                           	or     edx,eax
    10402e8e89ab:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    10402e8e89b1:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8e89b6:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8e89bb:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e89bf:	44 0f 47 e2                                     	cmova  r12d,edx
    10402e8e89c3:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e8e89c7:	41 0b c4                                        	or     eax,r12d
    10402e8e89ca:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8e89d0:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    10402e8e89d7:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    10402e8e89dd:	44 0b e0                                        	or     r12d,eax
    10402e8e89e0:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    10402e8e89e4:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    10402e8e89e9:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e89f1:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e89f9:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e8a01:	e9 9c 00 00 00                                  	jmp    0x10402e8e8aa2
    10402e8e8a06:	41 54                                           	push   r12
    10402e8e8a08:	4c 8b db                                        	mov    r11,rbx
    10402e8e8a0b:	41 bc 03 00 00 00                               	mov    r12d,0x3
    10402e8e8a11:	44 8b ce                                        	mov    r9d,esi
    10402e8e8a14:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e8a18:	8b d9                                           	mov    ebx,ecx
    10402e8e8a1a:	8b ca                                           	mov    ecx,edx
    10402e8e8a1c:	8b d0                                           	mov    edx,eax
    10402e8e8a1e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e8a21:	e8 4a d8 ea ff                                  	call   0x10402e796270
    10402e8e8a26:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e8a29:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e8a2d:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8e8a33:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    10402e8e8a37:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    10402e8e8a3e:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e8a46:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e8a4e:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e8a56:	e9 47 00 00 00                                  	jmp    0x10402e8e8aa2
    10402e8e8a5b:	41 54                                           	push   r12
    10402e8e8a5d:	44 8b ce                                        	mov    r9d,esi
    10402e8e8a60:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e8a64:	8b d9                                           	mov    ebx,ecx
    10402e8e8a66:	8b ca                                           	mov    ecx,edx
    10402e8e8a68:	8b d0                                           	mov    edx,eax
    10402e8e8a6a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8e8a6d:	e8 e6 d7 ea ff                                  	call   0x10402e796258
    10402e8e8a72:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e8a75:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e8a79:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8e8a7f:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    10402e8e8a83:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    10402e8e8a8a:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8e8a92:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8e8a9a:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8e8aa2:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    10402e8e8aa9:	41 83 c3 01                                     	add    r11d,0x1
    10402e8e8aad:	41 83 fb 04                                     	cmp    r11d,0x4
    10402e8e8ab1:	0f 85 49 ed ff ff                               	jne    0x10402e8e7800
    10402e8e8ab7:	41 c7 44 38 18 00 00 00 00                      	mov    DWORD PTR [r8+rdi*1+0x18],0x0
    10402e8e8ac0:	48 c7 85 d8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x228],0x1
    10402e8e8acb:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e8acf:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    10402e8e8ad7:	44 8b a5 70 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x390]
    10402e8e8ade:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    10402e8e8ae5:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    10402e8e8aec:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    10402e8e8af4:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    10402e8e8afc:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8e8b04:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    10402e8e8b0c:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8e8b13:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8e8b1b:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    10402e8e8b23:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    10402e8e8b2b:	48 8b bd 48 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x3b8]
    10402e8e8b32:	4c 8b 85 40 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x3c0]
    10402e8e8b39:	4c 03 c7                                        	add    r8,rdi
    10402e8e8b3c:	4c 8b 9d 58 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x3a8]
    10402e8e8b43:	49 03 db                                        	add    rbx,r11
    10402e8e8b46:	4c 8b bd 68 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x398]
    10402e8e8b4d:	49 03 d7                                        	add    rdx,r15
    10402e8e8b50:	41 83 c4 01                                     	add    r12d,0x1
    10402e8e8b54:	8b 85 78 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x388]
    10402e8e8b5a:	41 3b c4                                        	cmp    eax,r12d
    10402e8e8b5d:	0f 85 1d 9d ff ff                               	jne    0x10402e8e2880
    10402e8e8b63:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    10402e8e8b69:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    10402e8e8b6c:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8e8b73:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    10402e8e8b78:	c5 fb 10 ad 30 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x2d0]
    10402e8e8b80:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    10402e8e8b85:	c5 fb 10 b5 48 fb ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x4b8]
    10402e8e8b8d:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8e8b95:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8e8b99:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    10402e8e8b9d:	44 8b 8d a8 fb ff ff                            	mov    r9d,DWORD PTR [rbp-0x458]
    10402e8e8ba4:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    10402e8e8baa:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    10402e8e8baf:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    10402e8e8bb5:	c5 79 28 c4                                     	vmovapd xmm8,xmm4
    10402e8e8bb9:	c5 ba 5c 85 88 fc ff ff                         	vsubss xmm0,xmm8,DWORD PTR [rbp-0x378]
    10402e8e8bc1:	83 bd 90 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x370],0x0
    10402e8e8bc8:	0f 85 0a 00 00 00                               	jne    0x10402e8e8bd8
    10402e8e8bce:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8e8bd3:	e9 10 00 00 00                                  	jmp    0x10402e8e8be8
    10402e8e8bd8:	c5 ca 5c b5 98 fc ff ff                         	vsubss xmm6,xmm6,DWORD PTR [rbp-0x368]
    10402e8e8be0:	c5 d2 5c ad a0 fc ff ff                         	vsubss xmm5,xmm5,DWORD PTR [rbp-0x360]
    10402e8e8be8:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    10402e8e8bed:	c4 41 11 d4 e8                                  	vpaddq xmm13,xmm13,xmm8
    10402e8e8bf2:	4c 8b 45 c0                                     	mov    r8,QWORD PTR [rbp-0x40]
    10402e8e8bf6:	4c 8b e3                                        	mov    r12,rbx
    10402e8e8bf9:	4b 8d 1c 20                                     	lea    rbx,[r8+r12*1]
    10402e8e8bfd:	83 c7 01                                        	add    edi,0x1
    10402e8e8c00:	44 8b 65 28                                     	mov    r12d,DWORD PTR [rbp+0x28]
    10402e8e8c04:	44 3b e7                                        	cmp    r12d,edi
    10402e8e8c07:	0f 85 b3 95 ff ff                               	jne    0x10402e8e21c0
    10402e8e8c0d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e8c10:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e8c14:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    10402e8e8c19:	41 83 7c 38 18 00                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x0
    10402e8e8c1f:	0f 8e aa 1d 00 00                               	jle    0x10402e8ea9cf
    10402e8e8c25:	45 33 db                                        	xor    r11d,r11d
    10402e8e8c28:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    10402e8e8c2c:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8e8c30:	e9 15 00 00 00                                  	jmp    0x10402e8e8c4a
    10402e8e8c35:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e8c3e:	66 90                                           	xchg   ax,ax
    10402e8e8c40:	49 8b d3                                        	mov    rdx,r11
    10402e8e8c43:	45 8b dc                                        	mov    r11d,r12d
    10402e8e8c46:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    10402e8e8c4a:	48 8b 85 70 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x290]
    10402e8e8c51:	48 8b 9d 68 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x298]
    10402e8e8c58:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    10402e8e8c5f:	c5 fb 10 ad f8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x308]
    10402e8e8c67:	8b b5 e8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x318]
    10402e8e8c6d:	44 8b a5 e0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x320]
    10402e8e8c74:	4c 89 5d d0                                     	mov    QWORD PTR [rbp-0x30],r11
    10402e8e8c78:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e8c7d:	0f 85 94 21 00 00                               	jne    0x10402e8eae17
    10402e8e8c83:	46 8d 4c 9f 2c                                  	lea    r9d,[rdi+r11*4+0x2c]
    10402e8e8c88:	43 8d 0c 9c                                     	lea    ecx,[r12+r11*4]
    10402e8e8c8c:	46 8d 64 df 70                                  	lea    r12d,[rdi+r11*8+0x70]
    10402e8e8c91:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    10402e8e8c95:	4c 89 a5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r12
    10402e8e8c9c:	46 8d 64 df 50                                  	lea    r12d,[rdi+r11*8+0x50]
    10402e8e8ca1:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    10402e8e8ca5:	c4 81 7a 10 74 38 1c                            	vmovss xmm6,DWORD PTR [r8+r15*1+0x1c]
    10402e8e8cac:	c4 c1 7a 10 7c 00 1c                            	vmovss xmm7,DWORD PTR [r8+rax*1+0x1c]
    10402e8e8cb3:	c4 41 7a 10 44 18 1c                            	vmovss xmm8,DWORD PTR [r8+rbx*1+0x1c]
    10402e8e8cba:	45 8b 9c 10 c8 3c 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x3cc8]
    10402e8e8cc2:	41 83 bc 10 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x3cc8],0x0
    10402e8e8ccb:	0f 85 0e 00 00 00                               	jne    0x10402e8e8cdf
    10402e8e8cd1:	8b d1                                           	mov    edx,ecx
    10402e8e8cd3:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    10402e8e8cda:	e9 53 00 00 00                                  	jmp    0x10402e8e8d32
    10402e8e8cdf:	45 8b 1c 08                                     	mov    r11d,DWORD PTR [r8+rcx*1]
    10402e8e8ce3:	41 8b d3                                        	mov    edx,r11d
    10402e8e8ce6:	c1 ea 03                                        	shr    edx,0x3
    10402e8e8ce9:	83 e2 03                                        	and    edx,0x3
    10402e8e8cec:	43 8b 3c 08                                     	mov    edi,DWORD PTR [r8+r9*1]
    10402e8e8cf0:	c1 e7 02                                        	shl    edi,0x2
    10402e8e8cf3:	83 e7 7c                                        	and    edi,0x7c
    10402e8e8cf6:	0b fa                                           	or     edi,edx
    10402e8e8cf8:	03 fe                                           	add    edi,esi
    10402e8e8cfa:	41 0f b6 3c 38                                  	movzx  edi,BYTE PTR [r8+rdi*1]
    10402e8e8cff:	41 83 e3 07                                     	and    r11d,0x7
    10402e8e8d03:	8b d1                                           	mov    edx,ecx
    10402e8e8d05:	41 8b cb                                        	mov    ecx,r11d
    10402e8e8d08:	d3 e7                                           	shl    edi,cl
    10402e8e8d0a:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    10402e8e8d11:	40 f6 c7 80                                     	test   dil,0x80
    10402e8e8d15:	0f 85 17 00 00 00                               	jne    0x10402e8e8d32
    10402e8e8d1b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e8d1e:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8e8d22:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e8d26:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    10402e8e8d2d:	e9 89 1c 00 00                                  	jmp    0x10402e8ea9bb
    10402e8e8d32:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    10402e8e8d37:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    10402e8e8d3c:	c4 41 32 59 c0                                  	vmulss xmm8,xmm9,xmm8
    10402e8e8d41:	c4 61 82 2a 95 78 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x188]
    10402e8e8d4a:	c4 41 52 59 d2                                  	vmulss xmm10,xmm5,xmm10
    10402e8e8d4f:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    10402e8e8d53:	c5 3a 58 df                                     	vaddss xmm11,xmm8,xmm7
    10402e8e8d57:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8e8d5c:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    10402e8e8d62:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    10402e8e8d68:	c4 41 1a 5c c9                                  	vsubss xmm9,xmm12,xmm9
    10402e8e8d6d:	c4 41 32 5c ca                                  	vsubss xmm9,xmm9,xmm10
    10402e8e8d72:	c5 b2 59 f6                                     	vmulss xmm6,xmm9,xmm6
    10402e8e8d76:	c5 22 58 ce                                     	vaddss xmm9,xmm11,xmm6
    10402e8e8d7a:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    10402e8e8d7f:	73 9a                                           	jae    0x10402e8e8d1b
    10402e8e8d81:	c4 41 1a 5e c9                                  	vdivss xmm9,xmm12,xmm9
    10402e8e8d86:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    10402e8e8d8b:	c4 42 79 18 d1                                  	vbroadcastss xmm10,xmm9
    10402e8e8d90:	c4 01 7a 6f 5c 38 20                            	vmovdqu xmm11,XMMWORD PTR [r8+r15*1+0x20]
    10402e8e8d97:	c4 62 79 18 ee                                  	vbroadcastss xmm13,xmm6
    10402e8e8d9c:	c4 41 20 59 dd                                  	vmulps xmm11,xmm11,xmm13
    10402e8e8da1:	c4 41 7a 6f 6c 18 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rbx*1+0x20]
    10402e8e8da8:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    10402e8e8dad:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    10402e8e8db2:	c4 62 79 18 f7                                  	vbroadcastss xmm14,xmm7
    10402e8e8db7:	c4 c1 7a 6f 4c 00 20                            	vmovdqu xmm1,XMMWORD PTR [r8+rax*1+0x20]
    10402e8e8dbe:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    10402e8e8dc2:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    10402e8e8dc7:	c4 41 20 58 dd                                  	vaddps xmm11,xmm11,xmm13
    10402e8e8dcc:	c4 41 28 59 d3                                  	vmulps xmm10,xmm10,xmm11
    10402e8e8dd1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e8dd4:	c4 41 7a 7f 94 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm10
    10402e8e8dde:	c4 01 7a 10 9c 38 98 00 00 00                   	vmovss xmm11,DWORD PTR [r8+r15*1+0x98]
    10402e8e8de8:	c4 41 7a 10 ac 18 98 00 00 00                   	vmovss xmm13,DWORD PTR [r8+rbx*1+0x98]
    10402e8e8df2:	c4 41 7a 10 b4 00 98 00 00 00                   	vmovss xmm14,DWORD PTR [r8+rax*1+0x98]
    10402e8e8dfc:	c4 41 7a 7f 94 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm10
    10402e8e8e06:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    10402e8e8e0d:	43 8b 8c 20 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x134]
    10402e8e8e15:	44 8d 79 ff                                     	lea    r15d,[rcx-0x1]
    10402e8e8e19:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8e8e1d:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    10402e8e8e21:	c5 fb 11 bd 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm7
    10402e8e8e29:	c5 7b 11 85 58 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a8],xmm8
    10402e8e8e31:	c5 fb 11 b5 48 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b8],xmm6
    10402e8e8e39:	c5 7b 11 8d 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm9
    10402e8e8e41:	c5 7b 11 9d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm11
    10402e8e8e49:	c5 7b 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm13
    10402e8e8e51:	c5 7b 11 b5 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm14
    10402e8e8e59:	41 83 ff 01                                     	cmp    r15d,0x1
    10402e8e8e5d:	0f 86 25 07 00 00                               	jbe    0x10402e8e9588
    10402e8e8e63:	47 8b bc 20 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x130]
    10402e8e8e6b:	43 83 bc 20 30 01 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x130],0x0
    10402e8e8e74:	0f 84 ac 07 00 00                               	je     0x10402e8e9626
    10402e8e8e7a:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    10402e8e8e81:	4c 89 a5 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r12
    10402e8e8e88:	4c 89 bd 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r15
    10402e8e8e8f:	33 c9                                           	xor    ecx,ecx
    10402e8e8e91:	e9 46 00 00 00                                  	jmp    0x10402e8e8edc
    10402e8e8e96:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e8e9f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e8ea8:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e8eb1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e8eba:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    10402e8e8ec0:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    10402e8e8ec7:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e8eca:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e8ece:	4c 8b a5 38 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1c8]
    10402e8e8ed5:	44 8b bd 40 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c0]
    10402e8e8edc:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    10402e8e8ee3:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    10402e8e8ee9:	8b 85 08 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f8]
    10402e8e8eef:	48 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rcx
    10402e8e8ef6:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8e8efb:	0f 85 5d 1f 00 00                               	jne    0x10402e8eae5e
    10402e8e8f01:	8b d1                                           	mov    edx,ecx
    10402e8e8f03:	c1 e2 04                                        	shl    edx,0x4
    10402e8e8f06:	42 8d 34 3a                                     	lea    esi,[rdx+r15*1]
    10402e8e8f0a:	4c 8b 15 ef 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9cef]        # 0x10402e8e2c00
    10402e8e8f11:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e8f16:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8e8f1b:	c4 41 7a 7f 14 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm10
    10402e8e8f21:	48 89 b5 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],rsi
    10402e8e8f28:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    10402e8e8f2f:	41 c7 04 30 00 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x0
    10402e8e8f37:	6b f9 4c                                        	imul   edi,ecx,0x4c
    10402e8e8f3a:	41 03 f9                                        	add    edi,r9d
    10402e8e8f3d:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    10402e8e8f41:	41 83 3c 38 00                                  	cmp    DWORD PTR [r8+rdi*1],0x0
    10402e8e8f46:	0f 8c cd 01 00 00                               	jl     0x10402e8e9119
    10402e8e8f4c:	45 8b 7c 38 04                                  	mov    r15d,DWORD PTR [r8+rdi*1+0x4]
    10402e8e8f51:	45 85 ff                                        	test   r15d,r15d
    10402e8e8f54:	0f 84 bf 01 00 00                               	je     0x10402e8e9119
    10402e8e8f5a:	41 c7 04 30 01 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x1
    10402e8e8f62:	43 8b b4 20 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r12*1+0x13c]
    10402e8e8f6a:	d3 ee                                           	shr    esi,cl
    10402e8e8f6c:	40 f6 c6 01                                     	test   sil,0x1
    10402e8e8f70:	0f 84 a3 01 00 00                               	je     0x10402e8e9119
    10402e8e8f76:	41 8b 4c 38 38                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x38]
    10402e8e8f7b:	41 83 7c 38 38 00                               	cmp    DWORD PTR [r8+rdi*1+0x38],0x0
    10402e8e8f81:	0f 85 7f 01 00 00                               	jne    0x10402e8e9106
    10402e8e8f87:	41 8d 0c 13                                     	lea    ecx,[r11+rdx*1]
    10402e8e8f8b:	c4 41 7a 10 54 08 08                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x8]
    10402e8e8f92:	c5 2a 59 95 48 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    10402e8e8f9a:	8d 34 10                                        	lea    esi,[rax+rdx*1]
    10402e8e8f9d:	c4 c1 7a 10 4c 30 08                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x8]
    10402e8e8fa4:	c5 f2 59 8d 58 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1a8]
    10402e8e8fac:	03 d3                                           	add    edx,ebx
    10402e8e8fae:	c4 c1 7a 10 54 10 08                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x8]
    10402e8e8fb5:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    10402e8e8fbd:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    10402e8e8fc1:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8e8fc5:	c5 aa 59 9d 78 fe ff ff                         	vmulss xmm3,xmm10,DWORD PTR [rbp-0x188]
    10402e8e8fcd:	c4 41 7a 10 54 08 04                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x4]
    10402e8e8fd4:	c5 2a 59 95 48 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    10402e8e8fdc:	c4 c1 7a 10 4c 30 04                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x4]
    10402e8e8fe3:	c5 f2 59 8d 58 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1a8]
    10402e8e8feb:	c4 c1 7a 10 54 10 04                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x4]
    10402e8e8ff2:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    10402e8e8ffa:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    10402e8e8ffe:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8e9002:	c5 aa 59 95 78 fe ff ff                         	vmulss xmm2,xmm10,DWORD PTR [rbp-0x188]
    10402e8e900a:	c4 41 7a 10 14 08                               	vmovss xmm10,DWORD PTR [r8+rcx*1]
    10402e8e9010:	c5 2a 59 95 48 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    10402e8e9018:	c4 c1 7a 10 0c 30                               	vmovss xmm1,DWORD PTR [r8+rsi*1]
    10402e8e901e:	c5 f2 59 8d 58 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1a8]
    10402e8e9026:	c4 c1 7a 10 24 10                               	vmovss xmm4,DWORD PTR [r8+rdx*1]
    10402e8e902c:	c5 da 59 a5 70 fe ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0x190]
    10402e8e9034:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    10402e8e9038:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8e903c:	c5 aa 59 8d 78 fe ff ff                         	vmulss xmm1,xmm10,DWORD PTR [rbp-0x188]
    10402e8e9044:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    10402e8e9049:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8e904e:	41 8b 74 38 08                                  	mov    esi,DWORD PTR [r8+rdi*1+0x8]
    10402e8e9053:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    10402e8e9057:	83 fe 02                                        	cmp    esi,0x2
    10402e8e905a:	0f 8c 14 00 00 00                               	jl     0x10402e8e9074
    10402e8e9060:	0f 84 44 00 00 00                               	je     0x10402e8e90aa
    10402e8e9066:	83 fe 03                                        	cmp    esi,0x3
    10402e8e9069:	0f 84 1c 00 00 00                               	je     0x10402e8e908b
    10402e8e906f:	e9 5c 00 00 00                                  	jmp    0x10402e8e90d0
    10402e8e9074:	83 fe 00                                        	cmp    esi,0x0
    10402e8e9077:	0f 84 72 00 00 00                               	je     0x10402e8e90ef
    10402e8e907d:	83 fe 01                                        	cmp    esi,0x1
    10402e8e9080:	0f 84 4a 00 00 00                               	je     0x10402e8e90d0
    10402e8e9086:	e9 45 00 00 00                                  	jmp    0x10402e8e90d0
    10402e8e908b:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    10402e8e9090:	44 8b 8d 28 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d8]
    10402e8e9097:	8b df                                           	mov    ebx,edi
    10402e8e9099:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e909d:	41 8b c7                                        	mov    eax,r15d
    10402e8e90a0:	e8 8b d1 ea ff                                  	call   0x10402e796230
    10402e8e90a5:	e9 6f 00 00 00                                  	jmp    0x10402e8e9119
    10402e8e90aa:	41 8b 74 38 14                                  	mov    esi,DWORD PTR [r8+rdi*1+0x14]
    10402e8e90af:	41 8b 7c 38 18                                  	mov    edi,DWORD PTR [r8+rdi*1+0x18]
    10402e8e90b4:	ff b5 28 fe ff ff                               	push   QWORD PTR [rbp-0x1d8]
    10402e8e90ba:	8b de                                           	mov    ebx,esi
    10402e8e90bc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e90c0:	41 8b c7                                        	mov    eax,r15d
    10402e8e90c3:	44 8b cf                                        	mov    r9d,edi
    10402e8e90c6:	e8 5d d1 ea ff                                  	call   0x10402e796228
    10402e8e90cb:	e9 49 00 00 00                                  	jmp    0x10402e8e9119
    10402e8e90d0:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    10402e8e90d5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e90d9:	41 8b c7                                        	mov    eax,r15d
    10402e8e90dc:	44 8b 8d 28 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d8]
    10402e8e90e3:	8b df                                           	mov    ebx,edi
    10402e8e90e5:	e8 4e d1 ea ff                                  	call   0x10402e796238
    10402e8e90ea:	e9 2a 00 00 00                                  	jmp    0x10402e8e9119
    10402e8e90ef:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e90f3:	41 8b c7                                        	mov    eax,r15d
    10402e8e90f6:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    10402e8e90fc:	e8 1f d1 ea ff                                  	call   0x10402e796220
    10402e8e9101:	e9 13 00 00 00                                  	jmp    0x10402e8e9119
    10402e8e9106:	c4 c1 7a 6f 44 38 3c                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x3c]
    10402e8e910d:	8b bd 28 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1d8]
    10402e8e9113:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    10402e8e9119:	8b 8d 30 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1d0]
    10402e8e911f:	83 c1 01                                        	add    ecx,0x1
    10402e8e9122:	83 f9 04                                        	cmp    ecx,0x4
    10402e8e9125:	0f 85 95 fd ff ff                               	jne    0x10402e8e8ec0
    10402e8e912b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8e912f:	4c 8b 85 38 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1c8]
    10402e8e9136:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    10402e8e913e:	45 85 c0                                        	test   r8d,r8d
    10402e8e9141:	0f 85 c2 01 00 00                               	jne    0x10402e8e9309
    10402e8e9147:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    10402e8e914b:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    10402e8e9153:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    10402e8e915c:	0f 84 53 00 00 00                               	je     0x10402e8e91b5
    10402e8e9162:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8e9169:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8e9170:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8e9177:	41 53                                           	push   r11
    10402e8e9179:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e917d:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    10402e8e9183:	33 d2                                           	xor    edx,edx
    10402e8e9185:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    10402e8e918c:	e8 af d0 ea ff                                  	call   0x10402e796240
    10402e8e9191:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e9194:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e9198:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    10402e8e91a2:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e91ac:	4d 8b d0                                        	mov    r10,r8
    10402e8e91af:	44 8b c7                                        	mov    r8d,edi
    10402e8e91b2:	49 8b fa                                        	mov    rdi,r10
    10402e8e91b5:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    10402e8e91bd:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    10402e8e91c6:	0f 84 56 00 00 00                               	je     0x10402e8e9222
    10402e8e91cc:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8e91d3:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8e91da:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8e91e1:	41 53                                           	push   r11
    10402e8e91e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e91e7:	8b 85 40 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c0]
    10402e8e91ed:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8e91f2:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    10402e8e91f9:	e8 42 d0 ea ff                                  	call   0x10402e796240
    10402e8e91fe:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e9201:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e9205:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    10402e8e920f:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e9219:	4d 8b d0                                        	mov    r10,r8
    10402e8e921c:	44 8b c7                                        	mov    r8d,edi
    10402e8e921f:	49 8b fa                                        	mov    rdi,r10
    10402e8e9222:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    10402e8e922a:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    10402e8e9233:	0f 84 56 00 00 00                               	je     0x10402e8e928f
    10402e8e9239:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8e9240:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8e9247:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8e924e:	41 53                                           	push   r11
    10402e8e9250:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e9254:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    10402e8e925a:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8e925f:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    10402e8e9266:	e8 d5 cf ea ff                                  	call   0x10402e796240
    10402e8e926b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e926e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e9272:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    10402e8e927c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e9286:	4d 8b d0                                        	mov    r10,r8
    10402e8e9289:	44 8b c7                                        	mov    r8d,edi
    10402e8e928c:	49 8b fa                                        	mov    rdi,r10
    10402e8e928f:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    10402e8e9297:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    10402e8e92a0:	0f 85 0e 00 00 00                               	jne    0x10402e8e92b4
    10402e8e92a6:	4c 8b d7                                        	mov    r10,rdi
    10402e8e92a9:	41 8b f8                                        	mov    edi,r8d
    10402e8e92ac:	4d 8b c2                                        	mov    r8,r10
    10402e8e92af:	e9 72 03 00 00                                  	jmp    0x10402e8e9626
    10402e8e92b4:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    10402e8e92bb:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    10402e8e92c2:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    10402e8e92c9:	41 53                                           	push   r11
    10402e8e92cb:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8e92d0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e92d4:	8b 85 58 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2a8]
    10402e8e92da:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    10402e8e92e1:	e8 5a cf ea ff                                  	call   0x10402e796240
    10402e8e92e6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e92e9:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    10402e8e92ed:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    10402e8e92f7:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    10402e8e9301:	4d 8b c3                                        	mov    r8,r11
    10402e8e9304:	e9 1d 03 00 00                                  	jmp    0x10402e8e9626
    10402e8e9309:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8e930d:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    10402e8e9317:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8e931d:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8e9322:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e9326:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    10402e8e9330:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8e9334:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8e9338:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    10402e8e9342:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    10402e8e9346:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    10402e8e9350:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8e9354:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    10402e8e9358:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    10402e8e9362:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    10402e8e9366:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    10402e8e9370:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    10402e8e9374:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    10402e8e9378:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    10402e8e937c:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e9380:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8e9386:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    10402e8e938b:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    10402e8e938f:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    10402e8e9393:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    10402e8e9398:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    10402e8e939d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8e93a1:	0f 87 09 00 00 00                               	ja     0x10402e8e93b0
    10402e8e93a7:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8e93ab:	e9 04 00 00 00                                  	jmp    0x10402e8e93b4
    10402e8e93b0:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    10402e8e93b4:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8e93b8:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8e93bc:	0f 87 09 00 00 00                               	ja     0x10402e8e93cb
    10402e8e93c2:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e8e93c6:	e9 04 00 00 00                                  	jmp    0x10402e8e93cf
    10402e8e93cb:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8e93cf:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8e93d4:	41 83 f8 01                                     	cmp    r8d,0x1
    10402e8e93d8:	0f 84 a0 00 00 00                               	je     0x10402e8e947e
    10402e8e93de:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    10402e8e93e2:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    10402e8e93ec:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e93f0:	0f 87 09 00 00 00                               	ja     0x10402e8e93ff
    10402e8e93f6:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8e93fa:	e9 04 00 00 00                                  	jmp    0x10402e8e9403
    10402e8e93ff:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e9403:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e9407:	0f 87 0a 00 00 00                               	ja     0x10402e8e9417
    10402e8e940d:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8e9412:	e9 04 00 00 00                                  	jmp    0x10402e8e941b
    10402e8e9417:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e941b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8e941f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e9424:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    10402e8e9429:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8e942d:	4c 8b 15 cc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cc]        # 0x10402e8e2c00
    10402e8e9434:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8e9439:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8e943e:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e9442:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8e944c:	41 83 f8 03                                     	cmp    r8d,0x3
    10402e8e9450:	0f 85 04 00 00 00                               	jne    0x10402e8e945a
    10402e8e9456:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    10402e8e945a:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8e945f:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8e9463:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8e9467:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    10402e8e9471:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    10402e8e9476:	4d 8b c4                                        	mov    r8,r12
    10402e8e9479:	e9 cd 00 00 00                                  	jmp    0x10402e8e954b
    10402e8e947e:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    10402e8e9488:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e948c:	0f 87 09 00 00 00                               	ja     0x10402e8e949b
    10402e8e9492:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8e9496:	e9 04 00 00 00                                  	jmp    0x10402e8e949f
    10402e8e949b:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    10402e8e949f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e94a3:	0f 87 0a 00 00 00                               	ja     0x10402e8e94b3
    10402e8e94a9:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8e94ae:	e9 04 00 00 00                                  	jmp    0x10402e8e94b7
    10402e8e94b3:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e94b7:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    10402e8e94c1:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    10402e8e94c7:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    10402e8e94cc:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8e94d0:	0f 87 09 00 00 00                               	ja     0x10402e8e94df
    10402e8e94d6:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8e94da:	e9 04 00 00 00                                  	jmp    0x10402e8e94e3
    10402e8e94df:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    10402e8e94e3:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8e94e7:	0f 87 0a 00 00 00                               	ja     0x10402e8e94f7
    10402e8e94ed:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8e94f2:	e9 04 00 00 00                                  	jmp    0x10402e8e94fb
    10402e8e94f7:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e8e94fb:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    10402e8e9505:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e950a:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    10402e8e950e:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    10402e8e9518:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    10402e8e951d:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8e9522:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    10402e8e9526:	4c 8b 15 d3 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff96d3]        # 0x10402e8e2c00
    10402e8e952d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e9532:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8e9537:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8e953b:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8e953f:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    10402e8e9543:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8e9547:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    10402e8e954b:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    10402e8e9550:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    10402e8e9554:	4c 8b 15 a5 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff96a5]        # 0x10402e8e2c00
    10402e8e955b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e9560:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8e9565:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    10402e8e9569:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    10402e8e9573:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    10402e8e957d:	4c 8b c7                                        	mov    r8,rdi
    10402e8e9580:	41 8b fb                                        	mov    edi,r11d
    10402e8e9583:	e9 9e 00 00 00                                  	jmp    0x10402e8e9626
    10402e8e9588:	4c 8b a5 60 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2a0]
    10402e8e958f:	c4 01 7a 10 54 20 50                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x50]
    10402e8e9596:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    10402e8e959a:	4c 8b fb                                        	mov    r15,rbx
    10402e8e959d:	c4 81 7a 10 4c 38 50                            	vmovss xmm1,DWORD PTR [r8+r15*1+0x50]
    10402e8e95a4:	c4 c1 72 59 c8                                  	vmulss xmm1,xmm1,xmm8
    10402e8e95a9:	c4 c1 42 59 54 00 50                            	vmulss xmm2,xmm7,DWORD PTR [r8+rax*1+0x50]
    10402e8e95b0:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    10402e8e95b4:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    10402e8e95b8:	c4 c1 32 59 ca                                  	vmulss xmm1,xmm9,xmm10
    10402e8e95bd:	c4 01 7a 10 54 20 54                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x54]
    10402e8e95c4:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    10402e8e95c8:	c4 81 7a 10 54 38 54                            	vmovss xmm2,DWORD PTR [r8+r15*1+0x54]
    10402e8e95cf:	c4 c1 6a 59 d0                                  	vmulss xmm2,xmm2,xmm8
    10402e8e95d4:	c4 c1 42 59 5c 00 54                            	vmulss xmm3,xmm7,DWORD PTR [r8+rax*1+0x54]
    10402e8e95db:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    10402e8e95df:	c5 2a 58 d2                                     	vaddss xmm10,xmm10,xmm2
    10402e8e95e3:	c4 c1 32 59 d2                                  	vmulss xmm2,xmm9,xmm10
    10402e8e95e8:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    10402e8e95ee:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    10402e8e95f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e95f9:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    10402e8e95ff:	8b d1                                           	mov    edx,ecx
    10402e8e9601:	8b cb                                           	mov    ecx,ebx
    10402e8e9603:	41 8b d8                                        	mov    ebx,r8d
    10402e8e9606:	e8 25 cf ea ff                                  	call   0x10402e796530
    10402e8e960b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e960e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e9612:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    10402e8e961c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8e9626:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e962a:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    10402e8e9632:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    10402e8e963b:	0f 84 c2 01 00 00                               	je     0x10402e8e9803
    10402e8e9641:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    10402e8e9649:	c5 fa 59 85 48 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1b8]
    10402e8e9651:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    10402e8e9659:	c5 d2 59 ad 58 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1a8]
    10402e8e9661:	c5 fb 10 b5 70 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x190]
    10402e8e9669:	c5 ca 59 b5 68 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x198]
    10402e8e9671:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    10402e8e9675:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    10402e8e9679:	c5 fb 10 ad 78 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x188]
    10402e8e9681:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    10402e8e9685:	4c 8b 15 7b 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff867b]        # 0x10402e8e1d07
    10402e8e968c:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8e9691:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    10402e8e9695:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    10402e8e9699:	0f 87 04 00 00 00                               	ja     0x10402e8e96a3
    10402e8e969f:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    10402e8e96a3:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    10402e8e96ab:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    10402e8e96b2:	0f 85 28 00 00 00                               	jne    0x10402e8e96e0
    10402e8e96b8:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    10402e8e96c2:	4c 8b 15 3e 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff863e]        # 0x10402e8e1d07
    10402e8e96c9:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8e96ce:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    10402e8e96d2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e96d6:	e8 dd ee ea ff                                  	call   0x10402e7985b8
    10402e8e96db:	e9 89 00 00 00                                  	jmp    0x10402e8e9769
    10402e8e96e0:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8e96e4:	0f 84 5c 00 00 00                               	je     0x10402e8e9746
    10402e8e96ea:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    10402e8e96f4:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    10402e8e96fe:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    10402e8e9702:	7a 06                                           	jp     0x10402e8e970a
    10402e8e9704:	0f 84 29 00 00 00                               	je     0x10402e8e9733
    10402e8e970a:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    10402e8e970e:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    10402e8e9712:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8e9716:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    10402e8e971a:	0f 86 49 00 00 00                               	jbe    0x10402e8e9769
    10402e8e9720:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8e9724:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8e9729:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8e972e:	e9 5b 00 00 00                                  	jmp    0x10402e8e978e
    10402e8e9733:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8e9737:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8e973c:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8e9741:	e9 44 00 00 00                                  	jmp    0x10402e8e978a
    10402e8e9746:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    10402e8e9750:	4c 8b 15 b0 85 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff85b0]        # 0x10402e8e1d07
    10402e8e9757:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    10402e8e975c:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    10402e8e9760:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8e9764:	e8 4f ee ea ff                                  	call   0x10402e7985b8
    10402e8e9769:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8e976d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8e9772:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8e9777:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8e977b:	0f 87 09 00 00 00                               	ja     0x10402e8e978a
    10402e8e9781:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    10402e8e9785:	e9 04 00 00 00                                  	jmp    0x10402e8e978e
    10402e8e978a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8e978e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8e9791:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8e9795:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    10402e8e979f:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8e97a3:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8e97a7:	c4 81 7a 59 bc 18 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x100]
    10402e8e97b1:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8e97b5:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    10402e8e97bf:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    10402e8e97c9:	c4 81 7a 59 bc 18 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x104]
    10402e8e97d3:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    10402e8e97d7:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    10402e8e97e1:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    10402e8e97eb:	c4 81 7a 59 84 18 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [r8+r11*1+0x108]
    10402e8e97f5:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8e97f9:	c4 c1 7a 11 84 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm0
    10402e8e9803:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    10402e8e980d:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    10402e8e9817:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8e981b:	41 c1 e4 04                                     	shl    r12d,0x4
    10402e8e981f:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    10402e8e9826:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    10402e8e982a:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8e982e:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    10402e8e9833:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    10402e8e9837:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    10402e8e983a:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8e983e:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8e9841:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e9845:	83 bd e0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x220],0x0
    10402e8e984c:	0f 85 3e 11 00 00                               	jne    0x10402e8ea990
    10402e8e9852:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    10402e8e9857:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    10402e8e985d:	0f 85 fd 10 00 00                               	jne    0x10402e8ea960
    10402e8e9863:	4c 8b 15 96 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9396]        # 0x10402e8e2c00
    10402e8e986a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e986f:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    10402e8e9873:	c4 c1 7a 6f ac 38 80 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x280]
    10402e8e987d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    10402e8e9881:	c5 d0 c2 f6 01                                  	vcmpltps xmm6,xmm5,xmm6
    10402e8e9886:	c5 c8 55 ed                                     	vandnps xmm5,xmm6,xmm5
    10402e8e988a:	4c 8b 15 6f 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff936f]        # 0x10402e8e2c00
    10402e8e9891:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8e9896:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8e989a:	c5 c8 c2 f5 01                                  	vcmpltps xmm6,xmm6,xmm5
    10402e8e989f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e98a3:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e98a7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e98ac:	4c 8b 15 8e 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e8e]        # 0x10402e8e3741
    10402e8e98b3:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e98b8:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e98bc:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    10402e8e98c0:	4c 8b 15 91 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e91]        # 0x10402e8e3758
    10402e8e98c7:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8e98cc:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8e98d0:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8e98d4:	4c 8b 15 94 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e94]        # 0x10402e8e376f
    10402e8e98db:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8e98e0:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    10402e8e98e5:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8e98eb:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    10402e8e98ef:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    10402e8e98f4:	4c 8b 15 97 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e97]        # 0x10402e8e3792
    10402e8e98fb:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8e9900:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8e9904:	4c 8b 15 4a 71 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff714a]        # 0x10402e8e0a55
    10402e8e990b:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8e9910:	4c 8b 15 9a 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e9a]        # 0x10402e8e37b1
    10402e8e9917:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e991c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8e9920:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    10402e8e9925:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    10402e8e9929:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8e992d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e9932:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    10402e8e9937:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    10402e8e993b:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8e9940:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    10402e8e9944:	0f af c8                                        	imul   ecx,eax
    10402e8e9947:	03 ca                                           	add    ecx,edx
    10402e8e9949:	8d 34 8d 00 00 00 00                            	lea    esi,[rcx*4+0x0]
    10402e8e9950:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8e9954:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    10402e8e9959:	c1 e1 04                                        	shl    ecx,0x4
    10402e8e995c:	03 d1                                           	add    edx,ecx
    10402e8e995e:	83 fb 0f                                        	cmp    ebx,0xf
    10402e8e9961:	0f 84 9b 00 00 00                               	je     0x10402e8e9a02
    10402e8e9967:	8b cb                                           	mov    ecx,ebx
    10402e8e9969:	83 e1 01                                        	and    ecx,0x1
    10402e8e996c:	f7 d9                                           	neg    ecx
    10402e8e996e:	c5 f9 6e e9                                     	vmovd  xmm5,ecx
    10402e8e9972:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    10402e8e9977:	8b cb                                           	mov    ecx,ebx
    10402e8e9979:	c1 e1 1e                                        	shl    ecx,0x1e
    10402e8e997c:	c1 f9 1f                                        	sar    ecx,0x1f
    10402e8e997f:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    10402e8e9985:	8b cb                                           	mov    ecx,ebx
    10402e8e9987:	c1 e1 1d                                        	shl    ecx,0x1d
    10402e8e998a:	c1 f9 1f                                        	sar    ecx,0x1f
    10402e8e998d:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    10402e8e9993:	8b cb                                           	mov    ecx,ebx
    10402e8e9995:	c1 e1 1c                                        	shl    ecx,0x1c
    10402e8e9998:	c1 f9 1f                                        	sar    ecx,0x1f
    10402e8e999b:	c4 e3 51 22 e9 03                               	vpinsrd xmm5,xmm5,ecx,0x3
    10402e8e99a1:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    10402e8e99a6:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8e99ac:	0f 84 38 00 00 00                               	je     0x10402e8e99ea
    10402e8e99b2:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    10402e8e99b7:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8e99bd:	0f 84 27 00 00 00                               	je     0x10402e8e99ea
    10402e8e99c3:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    10402e8e99c8:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    10402e8e99cb:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    10402e8e99d1:	c4 c1 7a 6f 3c 08                               	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1]
    10402e8e99d7:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    10402e8e99db:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    10402e8e99df:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e99e4:	c4 c1 7a 7f 34 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm6
    10402e8e99ea:	c4 c1 7a 6f 34 10                               	vmovdqu xmm6,XMMWORD PTR [r8+rdx*1]
    10402e8e99f0:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    10402e8e99f4:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    10402e8e99f8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e99fd:	e9 36 00 00 00                                  	jmp    0x10402e8e9a38
    10402e8e9a02:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    10402e8e9a07:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8e9a0d:	0f 84 25 00 00 00                               	je     0x10402e8e9a38
    10402e8e9a13:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    10402e8e9a18:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8e9a1e:	0f 84 14 00 00 00                               	je     0x10402e8e9a38
    10402e8e9a24:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    10402e8e9a29:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    10402e8e9a2c:	c4 81 7a 6f 2c 08                               	vmovdqu xmm5,XMMWORD PTR [r8+r9*1]
    10402e8e9a32:	c4 c1 7a 7f 2c 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm5
    10402e8e9a38:	c4 c1 7a 7f 04 10                               	vmovdqu XMMWORD PTR [r8+rdx*1],xmm0
    10402e8e9a3e:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    10402e8e9a43:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    10402e8e9a49:	0f 84 6c 0f 00 00                               	je     0x10402e8ea9bb
    10402e8e9a4f:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    10402e8e9a54:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8e9a5a:	0f 84 5b 0f 00 00                               	je     0x10402e8ea9bb
    10402e8e9a60:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    10402e8e9a65:	43 83 7c 18 14 04                               	cmp    DWORD PTR [r8+r11*1+0x14],0x4
    10402e8e9a6b:	0f 85 4a 0f 00 00                               	jne    0x10402e8ea9bb
    10402e8e9a71:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    10402e8e9a76:	85 d2                                           	test   edx,edx
    10402e8e9a78:	0f 84 3d 0f 00 00                               	je     0x10402e8ea9bb
    10402e8e9a7e:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    10402e8e9a81:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    10402e8e9a85:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    10402e8e9a8a:	0f 84 2b 0f 00 00                               	je     0x10402e8ea9bb
    10402e8e9a90:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    10402e8e9a93:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8e9a97:	83 ea 3c                                        	sub    edx,0x3c
    10402e8e9a9a:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    10402e8e9a9e:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    10402e8e9aa1:	c1 ee 02                                        	shr    esi,0x2
    10402e8e9aa4:	0f af f2                                        	imul   esi,edx
    10402e8e9aa7:	c1 e6 04                                        	shl    esi,0x4
    10402e8e9aaa:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    10402e8e9aad:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    10402e8e9ab4:	8b f1                                           	mov    esi,ecx
    10402e8e9ab6:	83 e6 f0                                        	and    esi,0xfffffff0
    10402e8e9ab9:	03 d6                                           	add    edx,esi
    10402e8e9abb:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    10402e8e9ac0:	81 ee 01 02 00 00                               	sub    esi,0x201
    10402e8e9ac6:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    10402e8e9aca:	33 c0                                           	xor    eax,eax
    10402e8e9acc:	85 f6                                           	test   esi,esi
    10402e8e9ace:	0f 94 c0                                        	sete   al
    10402e8e9ad1:	83 fe 02                                        	cmp    esi,0x2
    10402e8e9ad4:	40 0f 94 c6                                     	sete   sil
    10402e8e9ad8:	40 0f b6 f6                                     	movzx  esi,sil
    10402e8e9adc:	0b f0                                           	or     esi,eax
    10402e8e9ade:	0f 85 0d 00 00 00                               	jne    0x10402e8e9af1
    10402e8e9ae4:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    10402e8e9aec:	e9 ca 0e 00 00                                  	jmp    0x10402e8ea9bb
    10402e8e9af1:	83 e3 0f                                        	and    ebx,0xf
    10402e8e9af4:	83 e1 0c                                        	and    ecx,0xc
    10402e8e9af7:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    10402e8e9afa:	83 e0 03                                        	and    eax,0x3
    10402e8e9afd:	0b c1                                           	or     eax,ecx
    10402e8e9aff:	c1 e0 02                                        	shl    eax,0x2
    10402e8e9b02:	83 e0 3f                                        	and    eax,0x3f
    10402e8e9b05:	8b c8                                           	mov    ecx,eax
    10402e8e9b07:	48 d3 e3                                        	shl    rbx,cl
    10402e8e9b0a:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    10402e8e9b0e:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8e9b12:	0f 84 03 07 00 00                               	je     0x10402e8ea21b
    10402e8e9b18:	48 0b c3                                        	or     rax,rbx
    10402e8e9b1b:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    10402e8e9b1f:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    10402e8e9b23:	0f 85 92 0e 00 00                               	jne    0x10402e8ea9bb
    10402e8e9b29:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    10402e8e9b2e:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    10402e8e9b31:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    10402e8e9b37:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    10402e8e9b3b:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8e9b3e:	83 ce 03                                        	or     esi,0x3
    10402e8e9b41:	0f af f1                                        	imul   esi,ecx
    10402e8e9b44:	03 f3                                           	add    esi,ebx
    10402e8e9b46:	c1 e6 04                                        	shl    esi,0x4
    10402e8e9b49:	03 f0                                           	add    esi,eax
    10402e8e9b4b:	c4 c1 7a 6f 44 30 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x30]
    10402e8e9b52:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8e9b57:	c4 c1 7a 6f 74 30 20                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x20]
    10402e8e9b5e:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e9b63:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8e9b67:	c4 c1 7a 6f 7c 30 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x10]
    10402e8e9b6e:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8e9b73:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8e9b78:	c4 41 7a 6f 04 30                               	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1]
    10402e8e9b7e:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8e9b84:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8e9b89:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8e9b8c:	81 e6 fc ff ff 0f                               	and    esi,0xffffffc
    10402e8e9b92:	44 8b ce                                        	mov    r9d,esi
    10402e8e9b95:	41 83 c9 02                                     	or     r9d,0x2
    10402e8e9b99:	44 0f af c9                                     	imul   r9d,ecx
    10402e8e9b9d:	44 03 cb                                        	add    r9d,ebx
    10402e8e9ba0:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8e9ba4:	44 03 c8                                        	add    r9d,eax
    10402e8e9ba7:	c4 01 7a 6f 4c 08 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x30]
    10402e8e9bae:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8e9bb4:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8e9bb9:	c4 01 7a 6f 54 08 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r9*1+0x20]
    10402e8e9bc0:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8e9bc6:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8e9bcb:	c4 01 7a 6f 5c 08 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r9*1+0x10]
    10402e8e9bd2:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8e9bd8:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8e9bdd:	c4 01 7a 6f 24 08                               	vmovdqu xmm12,XMMWORD PTR [r8+r9*1]
    10402e8e9be3:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8e9be9:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8e9bee:	44 8b ce                                        	mov    r9d,esi
    10402e8e9bf1:	41 83 c9 01                                     	or     r9d,0x1
    10402e8e9bf5:	44 0f af c9                                     	imul   r9d,ecx
    10402e8e9bf9:	44 03 cb                                        	add    r9d,ebx
    10402e8e9bfc:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8e9c00:	44 03 c8                                        	add    r9d,eax
    10402e8e9c03:	c4 01 7a 6f 6c 08 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r9*1+0x30]
    10402e8e9c0a:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8e9c10:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8e9c15:	c4 01 7a 6f 74 08 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r9*1+0x20]
    10402e8e9c1c:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8e9c22:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8e9c26:	c4 81 7a 6f 4c 08 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r9*1+0x10]
    10402e8e9c2d:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8e9c32:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8e9c36:	c4 81 7a 6f 14 08                               	vmovdqu xmm2,XMMWORD PTR [r8+r9*1]
    10402e8e9c3c:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8e9c41:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8e9c45:	0f af ce                                        	imul   ecx,esi
    10402e8e9c48:	03 d9                                           	add    ebx,ecx
    10402e8e9c4a:	c1 e3 04                                        	shl    ebx,0x4
    10402e8e9c4d:	03 c3                                           	add    eax,ebx
    10402e8e9c4f:	c4 c1 7a 6f 5c 00 30                            	vmovdqu xmm3,XMMWORD PTR [r8+rax*1+0x30]
    10402e8e9c56:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8e9c5b:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8e9c5f:	c4 c1 7a 6f 64 00 20                            	vmovdqu xmm4,XMMWORD PTR [r8+rax*1+0x20]
    10402e8e9c66:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    10402e8e9c6b:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8e9c70:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8e9c74:	c4 c1 7a 6f 6c 00 10                            	vmovdqu xmm5,XMMWORD PTR [r8+rax*1+0x10]
    10402e8e9c7b:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    10402e8e9c80:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8e9c85:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e9c89:	c4 c1 7a 6f 34 00                               	vmovdqu xmm6,XMMWORD PTR [r8+rax*1]
    10402e8e9c8f:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    10402e8e9c97:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8e9c9c:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8e9ca0:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8e9ca5:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8e9caa:	c5 f8 50 c0                                     	vmovmskps eax,xmm0
    10402e8e9cae:	83 f8 0f                                        	cmp    eax,0xf
    10402e8e9cb1:	0f 84 0e 00 00 00                               	je     0x10402e8e9cc5
    10402e8e9cb7:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    10402e8e9cc0:	e9 f6 0c 00 00                                  	jmp    0x10402e8ea9bb
    10402e8e9cc5:	4c 8b 15 c1 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ec1]        # 0x10402e8e3b8d
    10402e8e9ccc:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e9cd1:	4c 8b 15 c4 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ec4]        # 0x10402e8e3b9c
    10402e8e9cd8:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e9cde:	4c 8b 15 c7 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ec7]        # 0x10402e8e3bac
    10402e8e9ce5:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e9cea:	4c 8b 15 ca 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eca]        # 0x10402e8e3bbb
    10402e8e9cf1:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e9cf7:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    10402e8e9cfc:	4c 8b 15 d0 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed0]        # 0x10402e8e3bd3
    10402e8e9d03:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e9d08:	4c 8b 15 d3 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed3]        # 0x10402e8e3be2
    10402e8e9d0f:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e9d15:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    10402e8e9d1d:	4c 8b 15 d6 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed6]        # 0x10402e8e3bfa
    10402e8e9d24:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e9d29:	4c 8b 15 d9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed9]        # 0x10402e8e3c09
    10402e8e9d30:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e9d36:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8e9d3e:	4c 8b 15 dc 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9edc]        # 0x10402e8e3c21
    10402e8e9d45:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e9d4a:	4c 8b 15 df 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9edf]        # 0x10402e8e3c30
    10402e8e9d51:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e9d57:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    10402e8e9d5f:	4c 8b 15 e2 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee2]        # 0x10402e8e3c48
    10402e8e9d66:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e9d6b:	4c 8b 15 e5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee5]        # 0x10402e8e3c57
    10402e8e9d72:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e9d78:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    10402e8e9d80:	4c 8b 15 e8 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee8]        # 0x10402e8e3c6f
    10402e8e9d87:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e9d8c:	4c 8b 15 eb 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eeb]        # 0x10402e8e3c7e
    10402e8e9d93:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e9d99:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    10402e8e9da1:	4c 8b 15 ee 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eee]        # 0x10402e8e3c96
    10402e8e9da8:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e9dad:	4c 8b 15 f1 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef1]        # 0x10402e8e3ca5
    10402e8e9db4:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e9dba:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    10402e8e9dc2:	4c 8b 15 f4 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef4]        # 0x10402e8e3cbd
    10402e8e9dc9:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8e9dce:	4c 8b 15 f7 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef7]        # 0x10402e8e3ccc
    10402e8e9dd5:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8e9ddb:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    10402e8e9de3:	4c 8b 15 fa 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efa]        # 0x10402e8e3ce4
    10402e8e9dea:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8e9def:	4c 8b 15 fd 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efd]        # 0x10402e8e3cf3
    10402e8e9df6:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8e9dfc:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    10402e8e9e04:	4c 8b 15 00 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f00]        # 0x10402e8e3d0b
    10402e8e9e0b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8e9e10:	4c 8b 15 03 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f03]        # 0x10402e8e3d1a
    10402e8e9e17:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8e9e1d:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    10402e8e9e25:	4c 8b 15 06 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f06]        # 0x10402e8e3d32
    10402e8e9e2c:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8e9e31:	4c 8b 15 09 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f09]        # 0x10402e8e3d41
    10402e8e9e38:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8e9e3e:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    10402e8e9e46:	4c 8b 15 0c 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0c]        # 0x10402e8e3d59
    10402e8e9e4d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8e9e52:	4c 8b 15 0f 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0f]        # 0x10402e8e3d68
    10402e8e9e59:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8e9e5f:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    10402e8e9e67:	4c 8b 15 12 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f12]        # 0x10402e8e3d80
    10402e8e9e6e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8e9e73:	4c 8b 15 15 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f15]        # 0x10402e8e3d8f
    10402e8e9e7a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8e9e80:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    10402e8e9e88:	4c 8b 15 18 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f18]        # 0x10402e8e3da7
    10402e8e9e8f:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8e9e94:	4c 8b 15 1b 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1b]        # 0x10402e8e3db6
    10402e8e9e9b:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8e9ea1:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    10402e8e9ea9:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8e9eae:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8e9eb4:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8e9eba:	4c 8b 15 1e 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1e]        # 0x10402e8e3ddf
    10402e8e9ec1:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8e9ec7:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    10402e8e9ecf:	4c 8b 15 21 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f21]        # 0x10402e8e3df7
    10402e8e9ed6:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e9edb:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e9ee0:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    10402e8e9ee8:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8e9eed:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8e9ef3:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8e9ef8:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8e9efd:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8e9f01:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e9f06:	4c 8b 15 ea 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eea]        # 0x10402e8e3df7
    10402e8e9f0d:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8e9f12:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8e9f17:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8e9f1c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8e9f20:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8e9f25:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8e9f2a:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8e9f2f:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8e9f33:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8e9f38:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8e9f3c:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8e9f40:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e9f45:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8e9f4a:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8e9f4f:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8e9f53:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e9f58:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e9f5c:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8e9f60:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e9f65:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8e9f6a:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e9f6e:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8e9f72:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e9f77:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e9f7b:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8e9f7f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e9f84:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8e9f89:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e9f8d:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8e9f91:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e9f96:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e9f9a:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8e9f9e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e9fa3:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8e9fa8:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e9fac:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8e9fb0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e9fb5:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e9fb9:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8e9fbd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e9fc2:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8e9fc8:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    10402e8e9fd0:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8e9fd4:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8e9fd8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8e9fdd:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8e9fe1:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8e9fe5:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8e9fea:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8e9ff2:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8e9ff7:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8e9fff:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea003:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea007:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea00c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea010:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea014:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea019:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8ea021:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea026:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    10402e8ea02e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea032:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea036:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea03b:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea03f:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea043:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea048:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8ea050:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea055:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8ea05d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea061:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea065:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea06a:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea06e:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea072:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea077:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8ea07f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea084:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8ea08c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea090:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea094:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea099:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea09d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea0a1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea0a6:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8ea0ae:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea0b3:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8ea0bb:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea0bf:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea0c3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea0c8:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea0cc:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea0d0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea0d5:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8ea0dd:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea0e2:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8ea0ea:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea0ee:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea0f2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea0f7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea0fb:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea0ff:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea104:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8ea10c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea111:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8ea119:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea11d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea121:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea126:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea12a:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea12e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea133:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8ea138:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea13d:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8ea145:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea149:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea14d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea152:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea156:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea15a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea15f:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    10402e8ea164:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea169:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    10402e8ea16e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea172:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea176:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea17b:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8ea185:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea189:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8ea18d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea192:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    10402e8ea19c:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8ea1a0:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8ea1a4:	33 c0                                           	xor    eax,eax
    10402e8ea1a6:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8ea1aa:	0f 97 c0                                        	seta   al
    10402e8ea1ad:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    10402e8ea1b3:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    10402e8ea1ba:	0b cb                                           	or     ecx,ebx
    10402e8ea1bc:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    10402e8ea1c2:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8ea1c7:	be 02 00 00 00                                  	mov    esi,0x2
    10402e8ea1cc:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8ea1d0:	0f 47 c6                                        	cmova  eax,esi
    10402e8ea1d3:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    10402e8ea1da:	0b cb                                           	or     ecx,ebx
    10402e8ea1dc:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    10402e8ea1e2:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8ea1e7:	b9 03 00 00 00                                  	mov    ecx,0x3
    10402e8ea1ec:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8ea1f0:	0f 47 c1                                        	cmova  eax,ecx
    10402e8ea1f3:	c1 e0 02                                        	shl    eax,0x2
    10402e8ea1f6:	0b d8                                           	or     ebx,eax
    10402e8ea1f8:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    10402e8ea1fe:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    10402e8ea205:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    10402e8ea20b:	0b c3                                           	or     eax,ebx
    10402e8ea20d:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    10402e8ea211:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    10402e8ea216:	e9 a0 07 00 00                                  	jmp    0x10402e8ea9bb
    10402e8ea21b:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    10402e8ea220:	8b c8                                           	mov    ecx,eax
    10402e8ea222:	83 e1 3f                                        	and    ecx,0x3f
    10402e8ea225:	48 d3 eb                                        	shr    rbx,cl
    10402e8ea228:	be 03 00 00 00                                  	mov    esi,0x3
    10402e8ea22d:	f6 c3 01                                        	test   bl,0x1
    10402e8ea230:	0f 84 85 07 00 00                               	je     0x10402e8ea9bb
    10402e8ea236:	83 e0 03                                        	and    eax,0x3
    10402e8ea239:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    10402e8ea23d:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8ea243:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    10402e8ea24a:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    10402e8ea24e:	0f 86 67 07 00 00                               	jbe    0x10402e8ea9bb
    10402e8ea254:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    10402e8ea259:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    10402e8ea25c:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    10402e8ea262:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    10402e8ea266:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    10402e8ea26a:	41 83 c9 03                                     	or     r9d,0x3
    10402e8ea26e:	44 0f af c9                                     	imul   r9d,ecx
    10402e8ea272:	44 03 cb                                        	add    r9d,ebx
    10402e8ea275:	41 c1 e1 04                                     	shl    r9d,0x4
    10402e8ea279:	44 03 c8                                        	add    r9d,eax
    10402e8ea27c:	c4 81 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x30]
    10402e8ea283:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    10402e8ea288:	c4 81 7a 6f 74 08 20                            	vmovdqu xmm6,XMMWORD PTR [r8+r9*1+0x20]
    10402e8ea28f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8ea294:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8ea298:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    10402e8ea29f:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    10402e8ea2a4:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    10402e8ea2a9:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    10402e8ea2af:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    10402e8ea2b5:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    10402e8ea2ba:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    10402e8ea2be:	41 81 e1 fc ff ff 0f                            	and    r9d,0xffffffc
    10402e8ea2c5:	45 8b d9                                        	mov    r11d,r9d
    10402e8ea2c8:	41 83 cb 02                                     	or     r11d,0x2
    10402e8ea2cc:	44 0f af d9                                     	imul   r11d,ecx
    10402e8ea2d0:	44 03 db                                        	add    r11d,ebx
    10402e8ea2d3:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8ea2d7:	44 03 d8                                        	add    r11d,eax
    10402e8ea2da:	c4 01 7a 6f 4c 18 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x30]
    10402e8ea2e1:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    10402e8ea2e7:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    10402e8ea2ec:	c4 01 7a 6f 54 18 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r11*1+0x20]
    10402e8ea2f3:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    10402e8ea2f9:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    10402e8ea2fe:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    10402e8ea305:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    10402e8ea30b:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    10402e8ea310:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    10402e8ea316:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    10402e8ea31c:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    10402e8ea321:	45 8b d9                                        	mov    r11d,r9d
    10402e8ea324:	41 83 cb 01                                     	or     r11d,0x1
    10402e8ea328:	44 0f af d9                                     	imul   r11d,ecx
    10402e8ea32c:	44 03 db                                        	add    r11d,ebx
    10402e8ea32f:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8ea333:	44 03 d8                                        	add    r11d,eax
    10402e8ea336:	c4 01 7a 6f 6c 18 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r11*1+0x30]
    10402e8ea33d:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    10402e8ea343:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    10402e8ea348:	c4 01 7a 6f 74 18 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r11*1+0x20]
    10402e8ea34f:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    10402e8ea355:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    10402e8ea359:	c4 81 7a 6f 4c 18 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r11*1+0x10]
    10402e8ea360:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    10402e8ea365:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    10402e8ea369:	c4 81 7a 6f 14 18                               	vmovdqu xmm2,XMMWORD PTR [r8+r11*1]
    10402e8ea36f:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    10402e8ea374:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    10402e8ea378:	41 0f af c9                                     	imul   ecx,r9d
    10402e8ea37c:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    10402e8ea380:	41 c1 e3 04                                     	shl    r11d,0x4
    10402e8ea384:	44 03 d8                                        	add    r11d,eax
    10402e8ea387:	c4 81 7a 6f 5c 18 30                            	vmovdqu xmm3,XMMWORD PTR [r8+r11*1+0x30]
    10402e8ea38e:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    10402e8ea393:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8ea397:	c4 81 7a 6f 64 18 20                            	vmovdqu xmm4,XMMWORD PTR [r8+r11*1+0x20]
    10402e8ea39e:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    10402e8ea3a3:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    10402e8ea3a8:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    10402e8ea3ac:	c4 81 7a 6f 6c 18 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r11*1+0x10]
    10402e8ea3b3:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    10402e8ea3b8:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    10402e8ea3bd:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8ea3c1:	c4 81 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+r11*1]
    10402e8ea3c7:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    10402e8ea3cf:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    10402e8ea3d4:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8ea3d8:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    10402e8ea3dd:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    10402e8ea3e2:	c5 78 50 d8                                     	vmovmskps r11d,xmm0
    10402e8ea3e6:	41 83 fb 0f                                     	cmp    r11d,0xf
    10402e8ea3ea:	0f 84 12 00 00 00                               	je     0x10402e8ea402
    10402e8ea3f0:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    10402e8ea3f9:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8ea3fd:	e9 b9 05 00 00                                  	jmp    0x10402e8ea9bb
    10402e8ea402:	4c 8b 15 84 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9784]        # 0x10402e8e3b8d
    10402e8ea409:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ea40e:	4c 8b 15 87 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9787]        # 0x10402e8e3b9c
    10402e8ea415:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ea41b:	4c 8b 15 8a 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff978a]        # 0x10402e8e3bac
    10402e8ea422:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8ea427:	4c 8b 15 8d 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff978d]        # 0x10402e8e3bbb
    10402e8ea42e:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8ea434:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    10402e8ea439:	4c 8b 15 93 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9793]        # 0x10402e8e3bd3
    10402e8ea440:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ea445:	4c 8b 15 96 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9796]        # 0x10402e8e3be2
    10402e8ea44c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ea452:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    10402e8ea45a:	4c 8b 15 99 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9799]        # 0x10402e8e3bfa
    10402e8ea461:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8ea466:	4c 8b 15 9c 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff979c]        # 0x10402e8e3c09
    10402e8ea46d:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8ea473:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    10402e8ea47b:	4c 8b 15 9f 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff979f]        # 0x10402e8e3c21
    10402e8ea482:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ea487:	4c 8b 15 a2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a2]        # 0x10402e8e3c30
    10402e8ea48e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ea494:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    10402e8ea49c:	4c 8b 15 a5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a5]        # 0x10402e8e3c48
    10402e8ea4a3:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8ea4a8:	4c 8b 15 a8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a8]        # 0x10402e8e3c57
    10402e8ea4af:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8ea4b5:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    10402e8ea4bd:	4c 8b 15 ab 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ab]        # 0x10402e8e3c6f
    10402e8ea4c4:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8ea4c9:	4c 8b 15 ae 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ae]        # 0x10402e8e3c7e
    10402e8ea4d0:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8ea4d6:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    10402e8ea4de:	4c 8b 15 b1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b1]        # 0x10402e8e3c96
    10402e8ea4e5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ea4ea:	4c 8b 15 b4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b4]        # 0x10402e8e3ca5
    10402e8ea4f1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ea4f7:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    10402e8ea4ff:	4c 8b 15 b7 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b7]        # 0x10402e8e3cbd
    10402e8ea506:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8ea50b:	4c 8b 15 ba 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ba]        # 0x10402e8e3ccc
    10402e8ea512:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8ea518:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    10402e8ea520:	4c 8b 15 bd 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97bd]        # 0x10402e8e3ce4
    10402e8ea527:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8ea52c:	4c 8b 15 c0 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c0]        # 0x10402e8e3cf3
    10402e8ea533:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    10402e8ea539:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    10402e8ea541:	4c 8b 15 c3 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c3]        # 0x10402e8e3d0b
    10402e8ea548:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8ea54d:	4c 8b 15 c6 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c6]        # 0x10402e8e3d1a
    10402e8ea554:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    10402e8ea55a:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    10402e8ea562:	4c 8b 15 c9 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c9]        # 0x10402e8e3d32
    10402e8ea569:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8ea56e:	4c 8b 15 cc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cc]        # 0x10402e8e3d41
    10402e8ea575:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    10402e8ea57b:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    10402e8ea583:	4c 8b 15 cf 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cf]        # 0x10402e8e3d59
    10402e8ea58a:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8ea58f:	4c 8b 15 d2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d2]        # 0x10402e8e3d68
    10402e8ea596:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8ea59c:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    10402e8ea5a4:	4c 8b 15 d5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d5]        # 0x10402e8e3d80
    10402e8ea5ab:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e8ea5b0:	4c 8b 15 d8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d8]        # 0x10402e8e3d8f
    10402e8ea5b7:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    10402e8ea5bd:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    10402e8ea5c5:	4c 8b 15 db 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97db]        # 0x10402e8e3da7
    10402e8ea5cc:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8ea5d1:	4c 8b 15 de 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97de]        # 0x10402e8e3db6
    10402e8ea5d8:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    10402e8ea5de:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    10402e8ea5e6:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    10402e8ea5eb:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    10402e8ea5f1:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    10402e8ea5f7:	4c 8b 15 e1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e1]        # 0x10402e8e3ddf
    10402e8ea5fe:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8ea604:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    10402e8ea60c:	4c 8b 15 e4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e4]        # 0x10402e8e3df7
    10402e8ea613:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8ea618:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8ea61d:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    10402e8ea625:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    10402e8ea62a:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    10402e8ea630:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    10402e8ea635:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8ea63a:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    10402e8ea63e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8ea643:	4c 8b 15 ad 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ad]        # 0x10402e8e3df7
    10402e8ea64a:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    10402e8ea64f:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    10402e8ea654:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    10402e8ea659:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8ea65d:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8ea662:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    10402e8ea667:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    10402e8ea66c:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    10402e8ea670:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8ea675:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8ea679:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    10402e8ea67d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea682:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    10402e8ea687:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    10402e8ea68c:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8ea690:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea695:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8ea699:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    10402e8ea69d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea6a2:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    10402e8ea6a7:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8ea6ab:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    10402e8ea6af:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea6b4:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8ea6b8:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    10402e8ea6bc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea6c1:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    10402e8ea6c6:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8ea6ca:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    10402e8ea6ce:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea6d3:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8ea6d7:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    10402e8ea6db:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea6e0:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    10402e8ea6e5:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8ea6e9:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    10402e8ea6ed:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea6f2:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8ea6f6:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    10402e8ea6fa:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea6ff:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    10402e8ea705:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    10402e8ea70d:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    10402e8ea711:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    10402e8ea715:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea71a:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    10402e8ea71e:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    10402e8ea722:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea727:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8ea72f:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea734:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8ea73c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea740:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea744:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea749:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea74d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea751:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea756:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    10402e8ea75e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea763:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    10402e8ea76b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea76f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea773:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea778:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea77c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea780:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea785:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    10402e8ea78d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea792:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    10402e8ea79a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea79e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea7a2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea7a7:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea7ab:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea7af:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea7b4:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    10402e8ea7bc:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea7c1:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8ea7c9:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea7cd:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea7d1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea7d6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea7da:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea7de:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea7e3:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    10402e8ea7eb:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea7f0:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    10402e8ea7f8:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea7fc:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea800:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea805:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea809:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea80d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea812:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    10402e8ea81a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea81f:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    10402e8ea827:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea82b:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea82f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea834:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea838:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea83c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea841:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    10402e8ea849:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea84e:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    10402e8ea856:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea85a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea85e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea863:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea867:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea86b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea870:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    10402e8ea875:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea87a:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    10402e8ea882:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea886:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea88a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea88f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea893:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    10402e8ea897:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e8ea89c:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    10402e8ea8a1:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    10402e8ea8a6:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    10402e8ea8ab:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e8ea8af:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    10402e8ea8b3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea8b8:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    10402e8ea8c2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    10402e8ea8c6:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    10402e8ea8ca:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8ea8cf:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    10402e8ea8d9:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    10402e8ea8dd:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    10402e8ea8e1:	45 33 db                                        	xor    r11d,r11d
    10402e8ea8e4:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    10402e8ea8e8:	41 0f 97 c3                                     	seta   r11b
    10402e8ea8ec:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    10402e8ea8f2:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    10402e8ea8fa:	0b d8                                           	or     ebx,eax
    10402e8ea8fc:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    10402e8ea902:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    10402e8ea907:	b9 02 00 00 00                                  	mov    ecx,0x2
    10402e8ea90c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    10402e8ea910:	44 0f 47 d9                                     	cmova  r11d,ecx
    10402e8ea914:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    10402e8ea91c:	0b d8                                           	or     ebx,eax
    10402e8ea91e:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    10402e8ea924:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8ea929:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    10402e8ea92d:	44 0f 47 de                                     	cmova  r11d,esi
    10402e8ea931:	41 c1 e3 02                                     	shl    r11d,0x2
    10402e8ea935:	41 0b c3                                        	or     eax,r11d
    10402e8ea938:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    10402e8ea93e:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    10402e8ea945:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    10402e8ea94b:	44 0b d8                                        	or     r11d,eax
    10402e8ea94e:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    10402e8ea952:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    10402e8ea957:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8ea95b:	e9 5b 00 00 00                                  	jmp    0x10402e8ea9bb
    10402e8ea960:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    10402e8ea966:	51                                              	push   rcx
    10402e8ea967:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8ea96b:	8b c8                                           	mov    ecx,eax
    10402e8ea96d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8ea970:	e8 fb b8 ea ff                                  	call   0x10402e796270
    10402e8ea975:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8ea978:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8ea97c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8ea980:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8ea984:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    10402e8ea98b:	e9 2b 00 00 00                                  	jmp    0x10402e8ea9bb
    10402e8ea990:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    10402e8ea996:	51                                              	push   rcx
    10402e8ea997:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8ea99b:	8b c8                                           	mov    ecx,eax
    10402e8ea99d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8ea9a0:	e8 b3 b8 ea ff                                  	call   0x10402e796258
    10402e8ea9a5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8ea9a8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8ea9ac:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8ea9b0:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    10402e8ea9b4:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    10402e8ea9bb:	41 83 c4 01                                     	add    r12d,0x1
    10402e8ea9bf:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    10402e8ea9c4:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    10402e8ea9c9:	0f 8f 71 e2 ff ff                               	jg     0x10402e8e8c40
    10402e8ea9cf:	44 8b 85 d8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x228]
    10402e8ea9d6:	e9 06 00 00 00                                  	jmp    0x10402e8ea9e1
    10402e8ea9db:	45 33 c0                                        	xor    r8d,r8d
    10402e8ea9de:	41 8b f9                                        	mov    edi,r9d
    10402e8ea9e1:	33 c0                                           	xor    eax,eax
    10402e8ea9e3:	45 85 c0                                        	test   r8d,r8d
    10402e8ea9e6:	0f 94 c0                                        	sete   al
    10402e8ea9e9:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    10402e8ea9ef:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    10402e8ea9f3:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    10402e8ea9f7:	48 8b e5                                        	mov    rsp,rbp
    10402e8ea9fa:	5d                                              	pop    rbp
    10402e8ea9fb:	c2 40 00                                        	ret    0x40
    10402e8ea9fe:	41 b8 10 00 00 00                               	mov    r8d,0x10
    10402e8eaa04:	41 d1 f8                                        	sar    r8d,1
    10402e8eaa07:	4d 63 c0                                        	movsxd r8,r8d
    10402e8eaa0a:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    10402e8eaa11:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    10402e8eaa18:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    10402e8eaa1f:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    10402e8eaa24:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    10402e8eaa2c:	49 8b c0                                        	mov    rax,r8
    10402e8eaa2f:	e8 fc e4 ea ff                                  	call   0x10402e798f30
    10402e8eaa34:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8eaa38:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8eaa3b:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    10402e8eaa42:	8b 95 50 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b0]
    10402e8eaa48:	8b bd 70 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x190]
    10402e8eaa4e:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    10402e8eaa54:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    10402e8eaa59:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    10402e8eaa61:	e9 83 5e ff ff                                  	jmp    0x10402e8e08e9
    10402e8eaa66:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8eaa6a:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    10402e8eaa6f:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    10402e8eaa77:	4c 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r15
    10402e8eaa7e:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    10402e8eaa85:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    10402e8eaa8c:	c5 fb 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm5
    10402e8eaa94:	48 89 85 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rax
    10402e8eaa9b:	4c 89 9d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r11
    10402e8eaaa2:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    10402e8eaaa9:	e8 92 e4 ea ff                                  	call   0x10402e798f40
    10402e8eaaae:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8eaab2:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8eaab6:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    10402e8eaabb:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    10402e8eaac3:	44 8b bd 78 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x188]
    10402e8eaaca:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8eaad0:	8b bd 30 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1d0]
    10402e8eaad6:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    10402e8eaade:	8b 85 68 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x198]
    10402e8eaae4:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    10402e8eaaeb:	44 8b 8d 58 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1a8]
    10402e8eaaf2:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    10402e8eaaf5:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    10402e8eaafb:	e9 57 60 ff ff                                  	jmp    0x10402e8e0b57
    10402e8eab00:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8eab04:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    10402e8eab09:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    10402e8eab11:	4c 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r15
    10402e8eab18:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    10402e8eab1f:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    10402e8eab26:	48 89 95 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],rdx
    10402e8eab2d:	c5 fb 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm5
    10402e8eab35:	48 89 85 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rax
    10402e8eab3c:	4c 89 a5 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r12
    10402e8eab43:	4c 89 9d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r11
    10402e8eab4a:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    10402e8eab51:	e8 ea e3 ea ff                                  	call   0x10402e798f40
    10402e8eab56:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8eab5a:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8eab5e:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    10402e8eab63:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    10402e8eab6b:	44 8b bd 78 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x188]
    10402e8eab72:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    10402e8eab78:	8b bd 30 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1d0]
    10402e8eab7e:	8b 95 38 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c8]
    10402e8eab84:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    10402e8eab8c:	8b 85 68 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x198]
    10402e8eab92:	44 8b a5 20 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1e0]
    10402e8eab99:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    10402e8eaba0:	44 8b 8d 58 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1a8]
    10402e8eaba7:	e9 c4 60 ff ff                                  	jmp    0x10402e8e0c70
    10402e8eabac:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    10402e8eabb0:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    10402e8eabb7:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    10402e8eabbc:	c5 fb 11 ad 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm5
    10402e8eabc4:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    10402e8eabc9:	c5 fb 11 b5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm6
    10402e8eabd1:	e8 6a e3 ea ff                                  	call   0x10402e798f40
    10402e8eabd6:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8eabda:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    10402e8eabdd:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8eabe4:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    10402e8eabe9:	c5 fb 10 ad 30 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x2d0]
    10402e8eabf1:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    10402e8eabf6:	c5 fb 10 b5 48 fb ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x4b8]
    10402e8eabfe:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8eac06:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    10402e8eac0e:	48 8b 85 f0 fa ff ff                            	mov    rax,QWORD PTR [rbp-0x510]
    10402e8eac15:	4c 8b a5 98 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x468]
    10402e8eac1c:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8eac24:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    10402e8eac2c:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8eac34:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    10402e8eac38:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    10402e8eac3c:	44 8b 8d a8 fb ff ff                            	mov    r9d,DWORD PTR [rbp-0x458]
    10402e8eac43:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    10402e8eac49:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    10402e8eac4e:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    10402e8eac54:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    10402e8eac5a:	48 8b 8d d0 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x430]
    10402e8eac61:	e9 7e 75 ff ff                                  	jmp    0x10402e8e21e4
    10402e8eac66:	4c 89 a5 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r12
    10402e8eac6d:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    10402e8eac74:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    10402e8eac7b:	e8 c0 e2 ea ff                                  	call   0x10402e798f40
    10402e8eac80:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8eac84:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    10402e8eac8c:	44 8b a5 70 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x390]
    10402e8eac93:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    10402e8eac9a:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    10402e8eaca1:	4c 8b 85 40 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x3c0]
    10402e8eaca8:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    10402e8eacb0:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    10402e8eacb8:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8eacc0:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    10402e8eacc8:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    10402e8eaccf:	4c 8b 9d 08 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f8]
    10402e8eacd6:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    10402e8eacdd:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    10402e8eace4:	4c 8b 8d f0 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x510]
    10402e8eaceb:	48 8b 85 98 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x468]
    10402e8eacf2:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    10402e8eacfa:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    10402e8ead02:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    10402e8ead0a:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    10402e8ead12:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    10402e8ead1a:	e9 a6 7b ff ff                                  	jmp    0x10402e8e28c5
    10402e8ead1f:	e8 1c e2 ea ff                                  	call   0x10402e798f40
    10402e8ead24:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8ead27:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8ead2b:	44 8b bd 78 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x288]
    10402e8ead32:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    10402e8ead38:	8b 9d 08 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f8]
    10402e8ead3e:	8b 95 00 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x300]
    10402e8ead44:	c5 78 10 a5 60 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x4a0]
    10402e8ead4c:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8ead54:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    10402e8ead5b:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    10402e8ead63:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    10402e8ead6b:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    10402e8ead73:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    10402e8ead7b:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    10402e8ead82:	e9 c3 9f ff ff                                  	jmp    0x10402e8e4d4a
    10402e8ead87:	e8 b4 e1 ea ff                                  	call   0x10402e798f40
    10402e8ead8c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8ead8f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8ead93:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    10402e8ead99:	44 8b a5 b8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x248]
    10402e8eada0:	e9 fa af ff ff                                  	jmp    0x10402e8e5d9f
    10402e8eada5:	e8 96 e1 ea ff                                  	call   0x10402e798f40
    10402e8eadaa:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8eadad:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8eadb1:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8eadb7:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    10402e8eadbe:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    10402e8eadc4:	e9 1d c6 ff ff                                  	jmp    0x10402e8e73e6
    10402e8eadc9:	e8 72 e1 ea ff                                  	call   0x10402e798f40
    10402e8eadce:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8eadd1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8eadd5:	41 bf 02 00 00 00                               	mov    r15d,0x2
    10402e8eaddb:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    10402e8eaddf:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    10402e8eade6:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    10402e8eaded:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    10402e8eadf4:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    10402e8eadfc:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    10402e8eae04:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    10402e8eae0c:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    10402e8eae12:	e9 0b ca ff ff                                  	jmp    0x10402e8e7822
    10402e8eae17:	e8 24 e1 ea ff                                  	call   0x10402e798f40
    10402e8eae1c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8eae1f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8eae23:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    10402e8eae27:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    10402e8eae2b:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    10402e8eae2f:	48 8b 85 70 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x290]
    10402e8eae36:	48 8b 9d 68 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x298]
    10402e8eae3d:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    10402e8eae44:	c5 fb 10 ad f8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x308]
    10402e8eae4c:	8b b5 e8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x318]
    10402e8eae52:	44 8b a5 e0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x320]
    10402e8eae59:	e9 25 de ff ff                                  	jmp    0x10402e8e8c83
    10402e8eae5e:	e8 dd e0 ea ff                                  	call   0x10402e798f40
    10402e8eae63:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8eae66:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8eae6a:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    10402e8eae71:	44 8b bd 40 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c0]
    10402e8eae78:	4c 8b a5 38 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1c8]
    10402e8eae7f:	8b 8d 30 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1d0]
    10402e8eae85:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    10402e8eae8b:	8b 85 08 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f8]
    10402e8eae91:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    10402e8eae98:	e9 64 e0 ff ff                                  	jmp    0x10402e8e8f01
    10402e8eae9d:	e8 be dd ea ff                                  	call   0x10402e798c60
    10402e8eaea2:	e8 b9 dd ea ff                                  	call   0x10402e798c60
    10402e8eaea7:	e8 b4 dd ea ff                                  	call   0x10402e798c60
    10402e8eaeac:	e8 af dd ea ff                                  	call   0x10402e798c60
    10402e8eaeb1:	e8 aa dd ea ff                                  	call   0x10402e798c60
    10402e8eaeb6:	e8 a5 dd ea ff                                  	call   0x10402e798c60
    10402e8eaebb:	e8 a0 dd ea ff                                  	call   0x10402e798c60
    10402e8eaec0:	e8 9b dd ea ff                                  	call   0x10402e798c60
    10402e8eaec5:	e8 96 dd ea ff                                  	call   0x10402e798c60
    10402e8eaeca:	e8 91 dd ea ff                                  	call   0x10402e798c60
    10402e8eaecf:	e8 8c dd ea ff                                  	call   0x10402e798c60
    10402e8eaed4:	e8 87 dd ea ff                                  	call   0x10402e798c60
    10402e8eaed9:	90                                              	nop
    10402e8eaeda:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    10402e8eaee0:	4d 2d 8e 2e 40 10                               	rex.WRB sub rax,0x10402e8e
    10402e8eaee6:	00 00                                           	add    BYTE PTR [rax],al
    10402e8eaee8:	47 2d 8e 2e 40 10                               	rex.RXB sub eax,0x10402e8e
    10402e8eaeee:	00 00                                           	add    BYTE PTR [rax],al
    10402e8eaef0:	3d 2d 8e 2e 40                                  	cmp    eax,0x402e8e2d
    10402e8eaef5:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8eaef7:	00 32                                           	add    BYTE PTR [rdx],dh
    10402e8eaef9:	2d 8e 2e 40 10                                  	sub    eax,0x10402e8e
    10402e8eaefe:	00 00                                           	add    BYTE PTR [rax],al
    10402e8eaf00:	28 2d 8e 2e 40 10                               	sub    BYTE PTR [rip+0x10402e8e],ch        # 0x10403ecedd94
    10402e8eaf06:	00 00                                           	add    BYTE PTR [rax],al
    10402e8eaf08:	1e                                              	(bad)
    10402e8eaf09:	2d 8e 2e 40 10                                  	sub    eax,0x10402e8e
    10402e8eaf0e:	00 00                                           	add    BYTE PTR [rax],al
    10402e8eaf10:	14 2d                                           	adc    al,0x2d
    10402e8eaf12:	8e 2e                                           	mov    gs,WORD PTR [rsi]
    10402e8eaf14:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8eaf17:	00 a6 00 00 00 1c                               	add    BYTE PTR [rsi+0x1c000000],ah
    10402e8eaf1d:	00 00                                           	add    BYTE PTR [rax],al
    10402e8eaf1f:	00 d7                                           	add    bh,dl
    10402e8eaf21:	4e eb 04                                        	rex.WRX jmp 0x10402e8eaf28
    10402e8eaf24:	05 9c f4 01 eb                                  	add    eax,0xeb01f49c
    10402e8eaf29:	04 05                                           	add    al,0x5
    10402e8eaf2b:	7a eb                                           	jp     0x10402e8eaf18
    10402e8eaf2d:	04 05                                           	add    al,0x5
    10402e8eaf2f:	f4                                              	hlt
    10402e8eaf30:	07                                              	(bad)
    10402e8eaf31:	eb 04                                           	jmp    0x10402e8eaf37
    10402e8eaf33:	05 00 00 00 00                                  	add    eax,0x0
	...
