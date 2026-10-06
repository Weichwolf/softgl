
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_raster_triangle_msaa2-turbofan.bin:     file format binary


Disassembly of section .data:

00002989c6296780 <.data>:
    2989c6296780:	55                                              	push   rbp
    2989c6296781:	48 8b ec                                        	mov    rbp,rsp
    2989c6296784:	6a 30                                           	push   0x30
    2989c6296786:	56                                              	push   rsi
    2989c6296787:	48 81 ec 00 04 00 00                            	sub    rsp,0x400
    2989c629678e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c6296792:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    2989c6296796:	8b f9                                           	mov    edi,ecx
    2989c6296798:	4c 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r9
    2989c629679f:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    2989c62967a3:	0f 86 20 87 00 00                               	jbe    0x2989c629eec9
    2989c62967a9:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    2989c62967ad:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    2989c62967b1:	4d 0b de                                        	or     r11,r14
    2989c62967b4:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    2989c62967b8:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    2989c62967bf:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    2989c62967c3:	44 8b f8                                        	mov    r15d,eax
    2989c62967c6:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    2989c62967cb:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    2989c62967cf:	48 89 8d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rcx
    2989c62967d6:	83 f9 02                                        	cmp    ecx,0x2
    2989c62967d9:	0f 84 26 00 00 00                               	je     0x2989c6296805
    2989c62967df:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c62967e3:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    2989c62967e7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c62967eb:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    2989c62967f2:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    2989c62967f9:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    2989c6296800:	e9 e7 03 00 00                                  	jmp    0x2989c6296bec
    2989c6296805:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    2989c629680a:	85 f6                                           	test   esi,esi
    2989c629680c:	74 d1                                           	je     0x2989c62967df
    2989c629680e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    2989c6296811:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    2989c6296815:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    2989c629681a:	74 c3                                           	je     0x2989c62967df
    2989c629681c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    2989c6296821:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    2989c6296827:	74 b6                                           	je     0x2989c62967df
    2989c6296829:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    2989c6296831:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    2989c629683a:	75 a3                                           	jne    0x2989c62967df
    2989c629683c:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    2989c6296841:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    2989c6296848:	33 c9                                           	xor    ecx,ecx
    2989c629684a:	45 85 c9                                        	test   r9d,r9d
    2989c629684d:	0f 94 c1                                        	sete   cl
    2989c6296850:	41 83 f9 02                                     	cmp    r9d,0x2
    2989c6296854:	41 0f 94 c1                                     	sete   r9b
    2989c6296858:	45 0f b6 c9                                     	movzx  r9d,r9b
    2989c629685c:	44 0b c9                                        	or     r9d,ecx
    2989c629685f:	0f 84 7a ff ff ff                               	je     0x2989c62967df
    2989c6296865:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    2989c6296869:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    2989c629686f:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    2989c6296875:	0f 87 64 ff ff ff                               	ja     0x2989c62967df
    2989c629687b:	8b cb                                           	mov    ecx,ebx
    2989c629687d:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    2989c6296884:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c6296888:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    2989c629688d:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    2989c6296892:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296896:	0f 82 43 ff ff ff                               	jb     0x2989c62967df
    2989c629689c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c62968a0:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    2989c62968a4:	0f 83 22 00 00 00                               	jae    0x2989c62968cc
    2989c62968aa:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c62968ae:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    2989c62968b2:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    2989c62968b9:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    2989c62968c0:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    2989c62968c7:	e9 20 03 00 00                                  	jmp    0x2989c6296bec
    2989c62968cc:	8b cf                                           	mov    ecx,edi
    2989c62968ce:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    2989c62968d5:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    2989c62968da:	72 ce                                           	jb     0x2989c62968aa
    2989c62968dc:	8b ca                                           	mov    ecx,edx
    2989c62968de:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    2989c62968e5:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    2989c62968e9:	72 bf                                           	jb     0x2989c62968aa
    2989c62968eb:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    2989c62968f0:	72 b8                                           	jb     0x2989c62968aa
    2989c62968f2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c62968f6:	72 b2                                           	jb     0x2989c62968aa
    2989c62968f8:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    2989c62968fb:	c1 f9 02                                        	sar    ecx,0x2
    2989c62968fe:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    2989c6296902:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    2989c6296906:	41 c1 ff 02                                     	sar    r15d,0x2
    2989c629690a:	44 3b f9                                        	cmp    r15d,ecx
    2989c629690d:	0f 8c c6 02 00 00                               	jl     0x2989c6296bd9
    2989c6296913:	49 ba 50 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b850
    2989c629691d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    2989c6296922:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    2989c6296926:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    2989c629692c:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    2989c6296931:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    2989c6296936:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c629693a:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    2989c629693e:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    2989c6296945:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    2989c629694c:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    2989c6296953:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    2989c6296958:	0f 87 05 00 00 00                               	ja     0x2989c6296963
    2989c629695e:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    2989c6296963:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    2989c6296967:	0f 87 05 00 00 00                               	ja     0x2989c6296972
    2989c629696d:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    2989c6296972:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    2989c6296976:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    2989c629697a:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c629697e:	0f 87 04 00 00 00                               	ja     0x2989c6296988
    2989c6296984:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c6296988:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    2989c629698c:	0f 87 09 00 00 00                               	ja     0x2989c629699b
    2989c6296992:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    2989c6296996:	e9 04 00 00 00                                  	jmp    0x2989c629699f
    2989c629699b:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    2989c629699f:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    2989c62969a3:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    2989c62969a7:	c1 fa 02                                        	sar    edx,0x2
    2989c62969aa:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c62969ae:	41 c1 f9 02                                     	sar    r9d,0x2
    2989c62969b2:	41 8b d9                                        	mov    ebx,r9d
    2989c62969b5:	44 3b ca                                        	cmp    r9d,edx
    2989c62969b8:	0f 4c da                                        	cmovl  ebx,edx
    2989c62969bb:	8d 7e c4                                        	lea    edi,[rsi-0x3c]
    2989c62969be:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    2989c62969c2:	83 ee 40                                        	sub    esi,0x40
    2989c62969c5:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    2989c62969c9:	45 33 db                                        	xor    r11d,r11d
    2989c62969cc:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c62969d1:	41 0f 94 c3                                     	sete   r11b
    2989c62969d5:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c62969d9:	48 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdi
    2989c62969e0:	48 89 b5 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rsi
    2989c62969e7:	4c 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],r11
    2989c62969eb:	e9 1e 00 00 00                                  	jmp    0x2989c6296a0e
    2989c62969f0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62969f9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2989c6296a00:	8b cf                                           	mov    ecx,edi
    2989c6296a02:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    2989c6296a08:	8b bd 38 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc8]
    2989c6296a0e:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6296a13:	0f 85 1e 85 00 00                               	jne    0x2989c629ef37
    2989c6296a19:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    2989c6296a1d:	0f 8f 62 01 00 00                               	jg     0x2989c6296b85
    2989c6296a23:	44 8b e7                                        	mov    r12d,edi
    2989c6296a26:	44 0f af e1                                     	imul   r12d,ecx
    2989c6296a2a:	41 c1 e4 04                                     	shl    r12d,0x4
    2989c6296a2e:	44 03 e6                                        	add    r12d,esi
    2989c6296a31:	41 8b f9                                        	mov    edi,r9d
    2989c6296a34:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6296a3d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    2989c6296a40:	8b d7                                           	mov    edx,edi
    2989c6296a42:	c1 e2 04                                        	shl    edx,0x4
    2989c6296a45:	41 03 d4                                        	add    edx,r12d
    2989c6296a48:	49 8b 34 10                                     	mov    rsi,QWORD PTR [r8+rdx*1]
    2989c6296a4c:	be ff ff ff ff                                  	mov    esi,0xffffffff
    2989c6296a51:	49 39 34 10                                     	cmp    QWORD PTR [r8+rdx*1],rsi
    2989c6296a55:	0f 85 3b 01 00 00                               	jne    0x2989c6296b96
    2989c6296a5b:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    2989c6296a62:	83 7d b8 00                                     	cmp    DWORD PTR [rbp-0x48],0x0
    2989c6296a66:	0f 85 0f 00 00 00                               	jne    0x2989c6296a7b
    2989c6296a6c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296a70:	0f 83 20 01 00 00                               	jae    0x2989c6296b96
    2989c6296a76:	e9 0a 00 00 00                                  	jmp    0x2989c6296a85
    2989c6296a7b:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296a7f:	0f 87 11 01 00 00                               	ja     0x2989c6296b96
    2989c6296a85:	8d 57 01                                        	lea    edx,[rdi+0x1]
    2989c6296a88:	3b fb                                           	cmp    edi,ebx
    2989c6296a8a:	0f 84 f5 00 00 00                               	je     0x2989c6296b85
    2989c6296a90:	8b fa                                           	mov    edi,edx
    2989c6296a92:	c1 e7 04                                        	shl    edi,0x4
    2989c6296a95:	41 03 fc                                        	add    edi,r12d
    2989c6296a98:	4d 8b 1c 38                                     	mov    r11,QWORD PTR [r8+rdi*1]
    2989c6296a9c:	49 39 34 38                                     	cmp    QWORD PTR [r8+rdi*1],rsi
    2989c6296aa0:	0f 85 f0 00 00 00                               	jne    0x2989c6296b96
    2989c6296aa6:	c4 c1 7a 10 74 38 08                            	vmovss xmm6,DWORD PTR [r8+rdi*1+0x8]
    2989c6296aad:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c6296ab2:	0f 84 0f 00 00 00                               	je     0x2989c6296ac7
    2989c6296ab8:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296abc:	0f 83 d4 00 00 00                               	jae    0x2989c6296b96
    2989c6296ac2:	e9 0a 00 00 00                                  	jmp    0x2989c6296ad1
    2989c6296ac7:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296acb:	0f 87 c5 00 00 00                               	ja     0x2989c6296b96
    2989c6296ad1:	8d 7a 01                                        	lea    edi,[rdx+0x1]
    2989c6296ad4:	3b d3                                           	cmp    edx,ebx
    2989c6296ad6:	0f 84 a9 00 00 00                               	je     0x2989c6296b85
    2989c6296adc:	44 8b df                                        	mov    r11d,edi
    2989c6296adf:	41 c1 e3 04                                     	shl    r11d,0x4
    2989c6296ae3:	45 03 dc                                        	add    r11d,r12d
    2989c6296ae6:	4b 8b 14 18                                     	mov    rdx,QWORD PTR [r8+r11*1]
    2989c6296aea:	4b 39 34 18                                     	cmp    QWORD PTR [r8+r11*1],rsi
    2989c6296aee:	0f 85 a2 00 00 00                               	jne    0x2989c6296b96
    2989c6296af4:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    2989c6296afb:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c6296b00:	0f 84 0f 00 00 00                               	je     0x2989c6296b15
    2989c6296b06:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296b0a:	0f 83 86 00 00 00                               	jae    0x2989c6296b96
    2989c6296b10:	e9 0a 00 00 00                                  	jmp    0x2989c6296b1f
    2989c6296b15:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296b19:	0f 87 77 00 00 00                               	ja     0x2989c6296b96
    2989c6296b1f:	44 8d 5f 01                                     	lea    r11d,[rdi+0x1]
    2989c6296b23:	3b fb                                           	cmp    edi,ebx
    2989c6296b25:	0f 84 5a 00 00 00                               	je     0x2989c6296b85
    2989c6296b2b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6296b30:	0f 85 90 84 00 00                               	jne    0x2989c629efc6
    2989c6296b36:	41 8b fb                                        	mov    edi,r11d
    2989c6296b39:	c1 e7 04                                        	shl    edi,0x4
    2989c6296b3c:	41 03 fc                                        	add    edi,r12d
    2989c6296b3f:	49 8b 14 38                                     	mov    rdx,QWORD PTR [r8+rdi*1]
    2989c6296b43:	49 39 34 38                                     	cmp    QWORD PTR [r8+rdi*1],rsi
    2989c6296b47:	0f 85 49 00 00 00                               	jne    0x2989c6296b96
    2989c6296b4d:	c4 c1 7a 10 74 38 08                            	vmovss xmm6,DWORD PTR [r8+rdi*1+0x8]
    2989c6296b54:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c6296b59:	0f 84 0f 00 00 00                               	je     0x2989c6296b6e
    2989c6296b5f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296b63:	0f 83 2d 00 00 00                               	jae    0x2989c6296b96
    2989c6296b69:	e9 0a 00 00 00                                  	jmp    0x2989c6296b78
    2989c6296b6e:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6296b72:	0f 87 1e 00 00 00                               	ja     0x2989c6296b96
    2989c6296b78:	41 8d 7b 01                                     	lea    edi,[r11+0x1]
    2989c6296b7c:	41 3b db                                        	cmp    ebx,r11d
    2989c6296b7f:	0f 85 bb fe ff ff                               	jne    0x2989c6296a40
    2989c6296b85:	8d 79 01                                        	lea    edi,[rcx+0x1]
    2989c6296b88:	44 3b f9                                        	cmp    r15d,ecx
    2989c6296b8b:	0f 85 6f fe ff ff                               	jne    0x2989c6296a00
    2989c6296b91:	e9 23 00 00 00                                  	jmp    0x2989c6296bb9
    2989c6296b96:	8b 9d f0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x310]
    2989c6296b9c:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    2989c6296ba0:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    2989c6296ba4:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    2989c6296ba8:	8b 95 58 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3a8]
    2989c6296bae:	8b bd 98 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x368]
    2989c6296bb4:	e9 33 00 00 00                                  	jmp    0x2989c6296bec
    2989c6296bb9:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    2989c6296bbd:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    2989c6296bc5:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    2989c6296bc9:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    2989c6296bcd:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    2989c6296bd2:	48 8b e5                                        	mov    rsp,rbp
    2989c6296bd5:	5d                                              	pop    rbp
    2989c6296bd6:	c2 40 00                                        	ret    0x40
    2989c6296bd9:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    2989c6296be1:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    2989c6296be5:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    2989c6296bea:	eb e6                                           	jmp    0x2989c6296bd2
    2989c6296bec:	8b c7                                           	mov    eax,edi
    2989c6296bee:	c4 c1 7a 10 6c 00 14                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x14]
    2989c6296bf5:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    2989c6296bfb:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c6296c00:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6296c04:	4c 8b 15 0a fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffd0a]        # 0x2989c6296915
    2989c6296c0b:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6296c10:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c6296c14:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    2989c6296c1b:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    2989c6296c21:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    2989c6296c26:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6296c2b:	0f 87 0d 00 00 00                               	ja     0x2989c6296c3e
    2989c6296c31:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c6296c36:	48 8b f1                                        	mov    rsi,rcx
    2989c6296c39:	e9 21 00 00 00                                  	jmp    0x2989c6296c5f
    2989c6296c3e:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c6296c44:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    2989c6296c48:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    2989c6296c4c:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c6296c51:	0f 8a 22 87 00 00                               	jp     0x2989c629f379
    2989c6296c57:	0f 85 1c 87 00 00                               	jne    0x2989c629f379
    2989c6296c5d:	8b f1                                           	mov    esi,ecx
    2989c6296c5f:	44 8b cb                                        	mov    r9d,ebx
    2989c6296c62:	c4 81 7a 10 6c 08 14                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x14]
    2989c6296c69:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6296c6d:	4c 8b 15 a1 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffca1]        # 0x2989c6296915
    2989c6296c74:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6296c79:	48 89 b5 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rsi
    2989c6296c80:	4c 89 8d f0 fe ff ff                            	mov    QWORD PTR [rbp-0x110],r9
    2989c6296c87:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6296c8c:	0f 87 0a 00 00 00                               	ja     0x2989c6296c9c
    2989c6296c92:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c6296c97:	e9 1f 00 00 00                                  	jmp    0x2989c6296cbb
    2989c6296c9c:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c6296ca2:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    2989c6296ca6:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    2989c6296caa:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c6296caf:	0f 8a bf 86 00 00                               	jp     0x2989c629f374
    2989c6296cb5:	0f 85 b9 86 00 00                               	jne    0x2989c629f374
    2989c6296cbb:	44 8b d9                                        	mov    r11d,ecx
    2989c6296cbe:	44 2b de                                        	sub    r11d,esi
    2989c6296cc1:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    2989c6296cc8:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6296ccc:	4c 8b 15 42 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc42]        # 0x2989c6296915
    2989c6296cd3:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6296cd8:	48 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rcx
    2989c6296cdf:	4c 89 9d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],r11
    2989c6296ce6:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6296ceb:	0f 87 10 00 00 00                               	ja     0x2989c6296d01
    2989c6296cf1:	48 c7 85 50 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xb0],0xffffffff80000000
    2989c6296cfc:	e9 26 00 00 00                                  	jmp    0x2989c6296d27
    2989c6296d01:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c6296d07:	c5 fa 2c c5                                     	vcvttss2si eax,xmm5
    2989c6296d0b:	c5 02 2a c0                                     	vcvtsi2ss xmm8,xmm15,eax
    2989c6296d0f:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c6296d14:	0f 8a 55 86 00 00                               	jp     0x2989c629f36f
    2989c6296d1a:	0f 85 4f 86 00 00                               	jne    0x2989c629f36f
    2989c6296d20:	48 89 85 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rax
    2989c6296d27:	49 63 c3                                        	movsxd rax,r11d
    2989c6296d2a:	c4 81 7a 10 6c 08 10                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x10]
    2989c6296d31:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6296d35:	4c 8b 15 d9 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbd9]        # 0x2989c6296915
    2989c6296d3c:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6296d41:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    2989c6296d45:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6296d4a:	0f 87 10 00 00 00                               	ja     0x2989c6296d60
    2989c6296d50:	48 c7 85 60 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xa0],0xffffffff80000000
    2989c6296d5b:	e9 27 00 00 00                                  	jmp    0x2989c6296d87
    2989c6296d60:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c6296d66:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    2989c6296d6a:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    2989c6296d6f:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c6296d74:	0f 8a f0 85 00 00                               	jp     0x2989c629f36a
    2989c6296d7a:	0f 85 ea 85 00 00                               	jne    0x2989c629f36a
    2989c6296d80:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    2989c6296d87:	44 8b da                                        	mov    r11d,edx
    2989c6296d8a:	c4 81 7a 10 6c 18 10                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x10]
    2989c6296d91:	c4 01 7a 10 44 18 14                            	vmovss xmm8,DWORD PTR [r8+r11*1+0x14]
    2989c6296d98:	4c 89 9d f8 fe ff ff                            	mov    QWORD PTR [rbp-0x108],r11
    2989c6296d9f:	47 8b 9c 38 8c 00 00 00                         	mov    r11d,DWORD PTR [r8+r15*1+0x8c]
    2989c6296da7:	41 b9 c0 00 00 00                               	mov    r9d,0xc0
    2989c6296dad:	ba 80 00 00 00                                  	mov    edx,0x80
    2989c6296db2:	45 85 db                                        	test   r11d,r11d
    2989c6296db5:	49 0f 45 d1                                     	cmovne rdx,r9
    2989c6296db9:	44 8b 8d 60 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xa0]
    2989c6296dc0:	44 2b 8d 50 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xb0]
    2989c6296dc7:	4d 63 c9                                        	movsxd r9,r9d
    2989c6296dca:	49 8b f9                                        	mov    rdi,r9
    2989c6296dcd:	48 2b f8                                        	sub    rdi,rax
    2989c6296dd0:	48 8b da                                        	mov    rbx,rdx
    2989c6296dd3:	48 0f af df                                     	imul   rbx,rdi
    2989c6296dd7:	4b 89 9c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rbx
    2989c6296ddf:	41 bf 07 00 00 00                               	mov    r15d,0x7
    2989c6296de5:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    2989c6296de9:	bf 06 00 00 00                                  	mov    edi,0x6
    2989c6296dee:	45 85 db                                        	test   r11d,r11d
    2989c6296df1:	4c 0f 45 ff                                     	cmovne r15,rdi
    2989c6296df5:	41 8b ff                                        	mov    edi,r15d
    2989c6296df8:	83 e7 3f                                        	and    edi,0x3f
    2989c6296dfb:	4d 8b f9                                        	mov    r15,r9
    2989c6296dfe:	8b cf                                           	mov    ecx,edi
    2989c6296e00:	49 d3 e7                                        	shl    r15,cl
    2989c6296e03:	4c 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r11
    2989c6296e0a:	4c 8b d8                                        	mov    r11,rax
    2989c6296e0d:	8b cf                                           	mov    ecx,edi
    2989c6296e0f:	49 d3 e3                                        	shl    r11,cl
    2989c6296e12:	4d 2b fb                                        	sub    r15,r11
    2989c6296e15:	4f 89 bc 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],r15
    2989c6296e1d:	c5 3a 59 c6                                     	vmulss xmm8,xmm8,xmm6
    2989c6296e21:	4c 8b 15 ed fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaed]        # 0x2989c6296915
    2989c6296e28:	c4 41 38 54 12                                  	vandps xmm10,xmm8,XMMWORD PTR [r10]
    2989c6296e2d:	4c 89 8d d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],r9
    2989c6296e34:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6296e39:	0f 87 0b 00 00 00                               	ja     0x2989c6296e4a
    2989c6296e3f:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    2989c6296e45:	e9 21 00 00 00                                  	jmp    0x2989c6296e6b
    2989c6296e4a:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    2989c6296e50:	c4 41 7a 2c d8                                  	vcvttss2si r11d,xmm8
    2989c6296e55:	c4 41 02 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11d
    2989c6296e5a:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    2989c6296e5f:	0f 8a 00 85 00 00                               	jp     0x2989c629f365
    2989c6296e65:	0f 85 fa 84 00 00                               	jne    0x2989c629f365
    2989c6296e6b:	41 8b cb                                        	mov    ecx,r11d
    2989c6296e6e:	2b 8d 30 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0xd0]
    2989c6296e74:	48 63 c1                                        	movsxd rax,ecx
    2989c6296e77:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6296e7b:	4c 8b 15 93 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffa93]        # 0x2989c6296915
    2989c6296e82:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    2989c6296e87:	4c 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r11
    2989c6296e8e:	48 89 8d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rcx
    2989c6296e95:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    2989c6296e9c:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    2989c6296ea0:	0f 87 10 00 00 00                               	ja     0x2989c6296eb6
    2989c6296ea6:	48 c7 85 78 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x88],0xffffffff80000000
    2989c6296eb1:	e9 26 00 00 00                                  	jmp    0x2989c6296edc
    2989c6296eb6:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c6296ebc:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    2989c6296ec0:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    2989c6296ec5:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c6296ec9:	0f 8a 91 84 00 00                               	jp     0x2989c629f360
    2989c6296ecf:	0f 85 8b 84 00 00                               	jne    0x2989c629f360
    2989c6296ed5:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    2989c6296edc:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    2989c6296ee3:	44 2b 8d 60 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xa0]
    2989c6296eea:	4d 63 c9                                        	movsxd r9,r9d
    2989c6296eed:	49 8b f1                                        	mov    rsi,r9
    2989c6296ef0:	48 2b f0                                        	sub    rsi,rax
    2989c6296ef3:	48 8b c2                                        	mov    rax,rdx
    2989c6296ef6:	48 0f af c6                                     	imul   rax,rsi
    2989c6296efa:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    2989c6296f02:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    2989c6296f06:	49 8b f1                                        	mov    rsi,r9
    2989c6296f09:	8b cf                                           	mov    ecx,edi
    2989c6296f0b:	48 d3 e6                                        	shl    rsi,cl
    2989c6296f0e:	4c 89 8d d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r9
    2989c6296f15:	4c 8b 8d 38 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xc8]
    2989c6296f1c:	8b cf                                           	mov    ecx,edi
    2989c6296f1e:	49 d3 e1                                        	shl    r9,cl
    2989c6296f21:	49 2b f1                                        	sub    rsi,r9
    2989c6296f24:	4b 89 b4 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rsi
    2989c6296f2c:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    2989c6296f32:	2b 8d 78 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0x88]
    2989c6296f38:	4c 63 c9                                        	movsxd r9,ecx
    2989c6296f3b:	8b 8d 90 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x270]
    2989c6296f41:	41 2b cb                                        	sub    ecx,r11d
    2989c6296f44:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    2989c6296f4b:	4c 63 c9                                        	movsxd r9,ecx
    2989c6296f4e:	4c 8b 9d 18 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe8]
    2989c6296f55:	4d 2b d9                                        	sub    r11,r9
    2989c6296f58:	4c 0f af da                                     	imul   r11,rdx
    2989c6296f5c:	4f 89 9c 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],r11
    2989c6296f64:	48 8b 95 18 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe8]
    2989c6296f6b:	48 89 8d 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rcx
    2989c6296f72:	8b cf                                           	mov    ecx,edi
    2989c6296f74:	48 d3 e2                                        	shl    rdx,cl
    2989c6296f77:	8b cf                                           	mov    ecx,edi
    2989c6296f79:	49 8b f9                                        	mov    rdi,r9
    2989c6296f7c:	48 d3 e7                                        	shl    rdi,cl
    2989c6296f7f:	48 2b d7                                        	sub    rdx,rdi
    2989c6296f82:	4b 89 94 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],rdx
    2989c6296f8a:	48 8b fa                                        	mov    rdi,rdx
    2989c6296f8d:	49 3b d3                                        	cmp    rdx,r11
    2989c6296f90:	49 0f 4c fb                                     	cmovl  rdi,r11
    2989c6296f94:	48 8b ca                                        	mov    rcx,rdx
    2989c6296f97:	4c 3b da                                        	cmp    r11,rdx
    2989c6296f9a:	49 0f 4c cb                                     	cmovl  rcx,r11
    2989c6296f9e:	4c 8b e6                                        	mov    r12,rsi
    2989c6296fa1:	48 3b f0                                        	cmp    rsi,rax
    2989c6296fa4:	4c 0f 4c e0                                     	cmovl  r12,rax
    2989c6296fa8:	4c 8b c6                                        	mov    r8,rsi
    2989c6296fab:	48 3b c6                                        	cmp    rax,rsi
    2989c6296fae:	4c 0f 4c c0                                     	cmovl  r8,rax
    2989c6296fb2:	4c 89 9d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r11
    2989c6296fb9:	4d 8b df                                        	mov    r11,r15
    2989c6296fbc:	4c 3b fb                                        	cmp    r15,rbx
    2989c6296fbf:	4c 0f 4c db                                     	cmovl  r11,rbx
    2989c6296fc3:	48 89 95 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdx
    2989c6296fca:	49 8b d7                                        	mov    rdx,r15
    2989c6296fcd:	49 3b df                                        	cmp    rbx,r15
    2989c6296fd0:	48 0f 4c d3                                     	cmovl  rdx,rbx
    2989c6296fd4:	48 89 bd 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rdi
    2989c6296fdb:	48 63 7d 18                                     	movsxd rdi,DWORD PTR [rbp+0x18]
    2989c6296fdf:	48 c1 e7 08                                     	shl    rdi,0x8
    2989c6296fe3:	48 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],rcx
    2989c6296fea:	48 63 8d 20 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xe0]
    2989c6296ff1:	48 89 85 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rax
    2989c6296ff8:	48 8b c7                                        	mov    rax,rdi
    2989c6296ffb:	48 2b c1                                        	sub    rax,rcx
    2989c6296ffe:	48 0f af 85 18 ff ff ff                         	imul   rax,QWORD PTR [rbp-0xe8]
    2989c6297006:	48 63 8d 78 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0x88]
    2989c629700d:	48 89 b5 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rsi
    2989c6297014:	48 63 75 10                                     	movsxd rsi,DWORD PTR [rbp+0x10]
    2989c6297018:	48 c1 e6 08                                     	shl    rsi,0x8
    2989c629701c:	48 2b ce                                        	sub    rcx,rsi
    2989c629701f:	49 0f af c9                                     	imul   rcx,r9
    2989c6297023:	48 03 c1                                        	add    rax,rcx
    2989c6297026:	48 63 8d 30 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xd0]
    2989c629702d:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    2989c6297034:	48 8b c7                                        	mov    rax,rdi
    2989c6297037:	48 2b c1                                        	sub    rax,rcx
    2989c629703a:	48 0f af 85 d8 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x128]
    2989c6297042:	48 63 8d 60 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xa0]
    2989c6297049:	48 2b ce                                        	sub    rcx,rsi
    2989c629704c:	48 0f af 8d 38 ff ff ff                         	imul   rcx,QWORD PTR [rbp-0xc8]
    2989c6297054:	48 03 c1                                        	add    rax,rcx
    2989c6297057:	48 63 8d 90 fd ff ff                            	movsxd rcx,DWORD PTR [rbp-0x270]
    2989c629705e:	48 2b f9                                        	sub    rdi,rcx
    2989c6297061:	48 0f af bd d0 fe ff ff                         	imul   rdi,QWORD PTR [rbp-0x130]
    2989c6297069:	48 63 8d 50 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xb0]
    2989c6297070:	48 2b ce                                        	sub    rcx,rsi
    2989c6297073:	48 0f af 4d d0                                  	imul   rcx,QWORD PTR [rbp-0x30]
    2989c6297078:	48 03 f9                                        	add    rdi,rcx
    2989c629707b:	49 f7 d9                                        	neg    r9
    2989c629707e:	48 8b b5 38 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xc8]
    2989c6297085:	48 f7 de                                        	neg    rsi
    2989c6297088:	48 8b 4d d0                                     	mov    rcx,QWORD PTR [rbp-0x30]
    2989c629708c:	48 f7 d9                                        	neg    rcx
    2989c629708f:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    2989c6297096:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    2989c6297099:	2b 4d 18                                        	sub    ecx,DWORD PTR [rbp+0x18]
    2989c629709c:	4c 89 8d 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],r9
    2989c62970a3:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    2989c62970a7:	44 2b 4d 10                                     	sub    r9d,DWORD PTR [rbp+0x10]
    2989c62970ab:	4c 89 a5 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],r12
    2989c62970b2:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    2989c62970b9:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    2989c62970c0:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    2989c62970c7:	48 89 b5 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rsi
    2989c62970ce:	48 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rcx
    2989c62970d5:	4c 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],r9
    2989c62970d9:	41 81 f9 00 00 01 00                            	cmp    r9d,0x10000
    2989c62970e0:	0f 8f 9d 02 00 00                               	jg     0x2989c6297383
    2989c62970e6:	81 f9 00 00 01 00                               	cmp    ecx,0x10000
    2989c62970ec:	0f 8f 91 02 00 00                               	jg     0x2989c6297383
    2989c62970f2:	49 c7 c4 00 00 00 80                            	mov    r12,0xffffffff80000000
    2989c62970f9:	48 8b f7                                        	mov    rsi,rdi
    2989c62970fc:	49 03 f4                                        	add    rsi,r12
    2989c62970ff:	49 b8 00 00 00 00 ff ff ff ff                   	movabs r8,0xffffffff00000000
    2989c6297109:	49 3b f0                                        	cmp    rsi,r8
    2989c629710c:	0f 82 58 02 00 00                               	jb     0x2989c629736a
    2989c6297112:	48 8d 34 3a                                     	lea    rsi,[rdx+rdi*1]
    2989c6297116:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    2989c629711a:	48 63 d2                                        	movsxd rdx,edx
    2989c629711d:	4c 8b 8d a8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x258]
    2989c6297124:	4c 0f af ca                                     	imul   r9,rdx
    2989c6297128:	49 c1 e1 08                                     	shl    r9,0x8
    2989c629712c:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    2989c6297133:	49 8b d1                                        	mov    rdx,r9
    2989c6297136:	48 c1 fa 3f                                     	sar    rdx,0x3f
    2989c629713a:	49 23 d1                                        	and    rdx,r9
    2989c629713d:	48 03 d6                                        	add    rdx,rsi
    2989c6297140:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    2989c6297143:	48 63 f6                                        	movsxd rsi,esi
    2989c6297146:	48 8b 8d d0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x130]
    2989c629714d:	48 0f af ce                                     	imul   rcx,rsi
    2989c6297151:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6297155:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    2989c629715c:	48 8b f1                                        	mov    rsi,rcx
    2989c629715f:	48 c1 fe 3f                                     	sar    rsi,0x3f
    2989c6297163:	48 23 f1                                        	and    rsi,rcx
    2989c6297166:	48 03 d6                                        	add    rdx,rsi
    2989c6297169:	48 81 fa 01 00 00 80                            	cmp    rdx,0xffffffff80000001
    2989c6297170:	0f 8c f4 01 00 00                               	jl     0x2989c629736a
    2989c6297176:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    2989c629717a:	33 ff                                           	xor    edi,edi
    2989c629717c:	4d 85 c9                                        	test   r9,r9
    2989c629717f:	49 0f 4f f9                                     	cmovg  rdi,r9
    2989c6297183:	48 03 fa                                        	add    rdi,rdx
    2989c6297186:	33 d2                                           	xor    edx,edx
    2989c6297188:	48 85 c9                                        	test   rcx,rcx
    2989c629718b:	48 0f 4f d1                                     	cmovg  rdx,rcx
    2989c629718f:	48 03 fa                                        	add    rdi,rdx
    2989c6297192:	33 f6                                           	xor    esi,esi
    2989c6297194:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    2989c629719b:	0f 8f c9 01 00 00                               	jg     0x2989c629736a
    2989c62971a1:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c62971a5:	8b 7d 38                                        	mov    edi,DWORD PTR [rbp+0x38]
    2989c62971a8:	44 03 ff                                        	add    r15d,edi
    2989c62971ab:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    2989c62971b1:	44 8d 3c 1f                                     	lea    r15d,[rdi+rbx*1]
    2989c62971b5:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    2989c62971bb:	4c 8b f8                                        	mov    r15,rax
    2989c62971be:	4d 03 fc                                        	add    r15,r12
    2989c62971c1:	4d 3b f8                                        	cmp    r15,r8
    2989c62971c4:	0f 82 8b 01 00 00                               	jb     0x2989c6297355
    2989c62971ca:	4c 8b bd a8 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x358]
    2989c62971d1:	49 8d 1c 07                                     	lea    rbx,[r15+rax*1]
    2989c62971d5:	48 8b 95 78 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0x88]
    2989c62971dc:	48 0f af 95 88 fd ff ff                         	imul   rdx,QWORD PTR [rbp-0x278]
    2989c62971e4:	48 c1 e2 08                                     	shl    rdx,0x8
    2989c62971e8:	48 8b ca                                        	mov    rcx,rdx
    2989c62971eb:	48 c1 f9 3f                                     	sar    rcx,0x3f
    2989c62971ef:	48 23 ca                                        	and    rcx,rdx
    2989c62971f2:	48 03 d9                                        	add    rbx,rcx
    2989c62971f5:	4c 8b 8d d8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x128]
    2989c62971fc:	4c 0f af 8d 50 ff ff ff                         	imul   r9,QWORD PTR [rbp-0xb0]
    2989c6297204:	49 c1 e1 08                                     	shl    r9,0x8
    2989c6297208:	49 8b c9                                        	mov    rcx,r9
    2989c629720b:	48 c1 f9 3f                                     	sar    rcx,0x3f
    2989c629720f:	49 23 c9                                        	and    rcx,r9
    2989c6297212:	48 03 d9                                        	add    rbx,rcx
    2989c6297215:	48 81 fb 01 00 00 80                            	cmp    rbx,0xffffffff80000001
    2989c629721c:	0f 8c 33 01 00 00                               	jl     0x2989c6297355
    2989c6297222:	48 8b 9d 48 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b8]
    2989c6297229:	48 8d 0c 03                                     	lea    rcx,[rbx+rax*1]
    2989c629722d:	4c 8b fe                                        	mov    r15,rsi
    2989c6297230:	48 85 d2                                        	test   rdx,rdx
    2989c6297233:	4c 0f 4f fa                                     	cmovg  r15,rdx
    2989c6297237:	4c 03 f9                                        	add    r15,rcx
    2989c629723a:	48 8b d6                                        	mov    rdx,rsi
    2989c629723d:	4d 85 c9                                        	test   r9,r9
    2989c6297240:	49 0f 4f d1                                     	cmovg  rdx,r9
    2989c6297244:	4c 03 fa                                        	add    r15,rdx
    2989c6297247:	49 81 ff fe ff ff 7f                            	cmp    r15,0x7ffffffe
    2989c629724e:	0f 8f 01 01 00 00                               	jg     0x2989c6297355
    2989c6297254:	44 8b 7d 40                                     	mov    r15d,DWORD PTR [rbp+0x40]
    2989c6297258:	48 8b 95 e0 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x120]
    2989c629725f:	41 03 d7                                        	add    edx,r15d
    2989c6297262:	c4 e3 79 22 f2 00                               	vpinsrd xmm6,xmm0,edx,0x0
    2989c6297268:	48 8b 95 70 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0x90]
    2989c629726f:	41 03 d7                                        	add    edx,r15d
    2989c6297272:	c4 e3 49 22 f2 01                               	vpinsrd xmm6,xmm6,edx,0x1
    2989c6297278:	4c 03 a5 48 ff ff ff                            	add    r12,QWORD PTR [rbp-0xb8]
    2989c629727f:	4d 3b e0                                        	cmp    r12,r8
    2989c6297282:	0f 82 c3 00 00 00                               	jb     0x2989c629734b
    2989c6297288:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    2989c629728f:	4c 8b a5 48 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb8]
    2989c6297296:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    2989c629729a:	48 8b 8d 78 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x88]
    2989c62972a1:	48 0f af 8d 58 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x2a8]
    2989c62972a9:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c62972ad:	4c 8b c9                                        	mov    r9,rcx
    2989c62972b0:	49 c1 f9 3f                                     	sar    r9,0x3f
    2989c62972b4:	4c 23 c9                                        	and    r9,rcx
    2989c62972b7:	49 03 d1                                        	add    rdx,r9
    2989c62972ba:	4c 8b 8d 50 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xb0]
    2989c62972c1:	4c 0f af 8d 18 ff ff ff                         	imul   r9,QWORD PTR [rbp-0xe8]
    2989c62972c9:	49 c1 e1 08                                     	shl    r9,0x8
    2989c62972cd:	4d 8b c1                                        	mov    r8,r9
    2989c62972d0:	49 c1 f8 3f                                     	sar    r8,0x3f
    2989c62972d4:	4d 23 c1                                        	and    r8,r9
    2989c62972d7:	4c 03 c2                                        	add    r8,rdx
    2989c62972da:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    2989c62972e1:	0f 8c 64 00 00 00                               	jl     0x2989c629734b
    2989c62972e7:	4c 8b 85 78 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x388]
    2989c62972ee:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    2989c62972f2:	4c 8b c6                                        	mov    r8,rsi
    2989c62972f5:	48 85 c9                                        	test   rcx,rcx
    2989c62972f8:	4c 0f 4f c1                                     	cmovg  r8,rcx
    2989c62972fc:	4c 03 c2                                        	add    r8,rdx
    2989c62972ff:	4d 85 c9                                        	test   r9,r9
    2989c6297302:	49 0f 4f f1                                     	cmovg  rsi,r9
    2989c6297306:	4c 03 c6                                        	add    r8,rsi
    2989c6297309:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    2989c6297310:	0f 8f 2b 00 00 00                               	jg     0x2989c6297341
    2989c6297316:	44 8b 45 48                                     	mov    r8d,DWORD PTR [rbp+0x48]
    2989c629731a:	48 8b 95 28 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xd8]
    2989c6297321:	41 03 d0                                        	add    edx,r8d
    2989c6297324:	c4 e3 79 22 c2 00                               	vpinsrd xmm0,xmm0,edx,0x0
    2989c629732a:	48 8b 95 e8 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x118]
    2989c6297331:	41 03 d0                                        	add    edx,r8d
    2989c6297334:	c4 e3 79 22 c2 01                               	vpinsrd xmm0,xmm0,edx,0x1
    2989c629733a:	33 d2                                           	xor    edx,edx
    2989c629733c:	e9 1d 00 00 00                                  	jmp    0x2989c629735e
    2989c6297341:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6297346:	e9 48 00 00 00                                  	jmp    0x2989c6297393
    2989c629734b:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6297350:	e9 3e 00 00 00                                  	jmp    0x2989c6297393
    2989c6297355:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c629735a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c629735e:	48 8b 9d 48 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b8]
    2989c6297365:	e9 29 00 00 00                                  	jmp    0x2989c6297393
    2989c629736a:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c629736e:	48 8b 9d 48 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b8]
    2989c6297375:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6297379:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c629737e:	e9 10 00 00 00                                  	jmp    0x2989c6297393
    2989c6297383:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6297387:	49 8b dc                                        	mov    rbx,r12
    2989c629738a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c629738e:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6297393:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6297397:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c629739b:	46 8b a4 07 c8 3c 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0x3cc8]
    2989c62973a3:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    2989c62973aa:	42 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3cc8],0x0
    2989c62973b3:	0f 85 72 00 00 00                               	jne    0x2989c629742b
    2989c62973b9:	46 8b a4 07 ec 00 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0xec]
    2989c62973c1:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    2989c62973ca:	0f 85 5b 00 00 00                               	jne    0x2989c629742b
    2989c62973d0:	44 8b a5 08 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xf8]
    2989c62973d7:	46 8b bc 27 30 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x130]
    2989c62973df:	42 83 bc 27 30 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x130],0x0
    2989c62973e8:	0f 85 0b 00 00 00                               	jne    0x2989c62973f9
    2989c62973ee:	41 bc 01 00 00 00                               	mov    r12d,0x1
    2989c62973f4:	e9 35 00 00 00                                  	jmp    0x2989c629742e
    2989c62973f9:	46 8b bc 27 38 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x138]
    2989c6297401:	42 83 bc 27 38 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x138],0x0
    2989c629740a:	75 e2                                           	jne    0x2989c62973ee
    2989c629740c:	46 8b a4 27 34 01 00 00                         	mov    r12d,DWORD PTR [rdi+r12*1+0x134]
    2989c6297414:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c6297418:	74 d4                                           	je     0x2989c62973ee
    2989c629741a:	41 83 fc 02                                     	cmp    r12d,0x2
    2989c629741e:	41 0f 94 c4                                     	sete   r12b
    2989c6297422:	45 0f b6 e4                                     	movzx  r12d,r12b
    2989c6297426:	e9 03 00 00 00                                  	jmp    0x2989c629742e
    2989c629742b:	45 33 e4                                        	xor    r12d,r12d
    2989c629742e:	4c 89 a5 28 fd ff ff                            	mov    QWORD PTR [rbp-0x2d8],r12
    2989c6297435:	83 bd 68 ff ff ff 02                            	cmp    DWORD PTR [rbp-0x98],0x2
    2989c629743c:	0f 84 0b 00 00 00                               	je     0x2989c629744d
    2989c6297442:	41 bf 01 00 00 00                               	mov    r15d,0x1
    2989c6297448:	e9 5b 01 00 00                                  	jmp    0x2989c62975a8
    2989c629744d:	46 8b bc 07 80 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x80]
    2989c6297455:	42 83 bc 07 80 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x80],0x0
    2989c629745e:	75 e2                                           	jne    0x2989c6297442
    2989c6297460:	46 8b bc 07 a4 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0xa4]
    2989c6297468:	42 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xa4],0x0
    2989c6297471:	75 cf                                           	jne    0x2989c6297442
    2989c6297473:	46 8b bc 07 30 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x530]
    2989c629747b:	42 83 bc 07 30 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x530],0x0
    2989c6297484:	75 bc                                           	jne    0x2989c6297442
    2989c6297486:	46 8b bc 07 70 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3770]
    2989c629748e:	42 83 bc 07 70 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3770],0x0
    2989c6297497:	75 a9                                           	jne    0x2989c6297442
    2989c6297499:	46 8b bc 07 74 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3774]
    2989c62974a1:	42 83 bc 07 74 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3774],0x0
    2989c62974aa:	75 96                                           	jne    0x2989c6297442
    2989c62974ac:	46 8b bc 07 20 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x520]
    2989c62974b4:	42 83 bc 07 20 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x520],0x0
    2989c62974bd:	74 83                                           	je     0x2989c6297442
    2989c62974bf:	46 8b bc 07 24 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x524]
    2989c62974c7:	42 83 bc 07 24 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x524],0x0
    2989c62974d0:	0f 84 6c ff ff ff                               	je     0x2989c6297442
    2989c62974d6:	46 8b bc 07 28 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x528]
    2989c62974de:	42 83 bc 07 28 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x528],0x0
    2989c62974e7:	0f 84 55 ff ff ff                               	je     0x2989c6297442
    2989c62974ed:	46 8b bc 07 2c 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x52c]
    2989c62974f5:	42 83 bc 07 2c 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x52c],0x0
    2989c62974fe:	0f 84 3e ff ff ff                               	je     0x2989c6297442
    2989c6297504:	46 8b 7c 07 74                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x74]
    2989c6297509:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    2989c629750f:	0f 84 38 00 00 00                               	je     0x2989c629754d
    2989c6297515:	46 8b 7c 07 78                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x78]
    2989c629751a:	41 81 ff 02 03 00 00                            	cmp    r15d,0x302
    2989c6297521:	0f 84 0a 00 00 00                               	je     0x2989c6297531
    2989c6297527:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c629752b:	0f 85 11 ff ff ff                               	jne    0x2989c6297442
    2989c6297531:	46 8b 7c 07 7c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x7c]
    2989c6297536:	41 81 ff 03 03 00 00                            	cmp    r15d,0x303
    2989c629753d:	0f 84 0a 00 00 00                               	je     0x2989c629754d
    2989c6297543:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c6297547:	0f 85 f5 fe ff ff                               	jne    0x2989c6297442
    2989c629754d:	83 bd 58 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xa8],0x0
    2989c6297554:	0f 85 08 00 00 00                               	jne    0x2989c6297562
    2989c629755a:	45 33 ff                                        	xor    r15d,r15d
    2989c629755d:	e9 46 00 00 00                                  	jmp    0x2989c62975a8
    2989c6297562:	46 8b bc 07 90 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x90]
    2989c629756a:	42 83 bc 07 90 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x90],0x0
    2989c6297573:	0f 85 c9 fe ff ff                               	jne    0x2989c6297442
    2989c6297579:	46 8b bc 07 94 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x94]
    2989c6297581:	42 83 bc 07 94 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x94],0x0
    2989c629758a:	0f 85 b2 fe ff ff                               	jne    0x2989c6297442
    2989c6297590:	46 8b bc 07 98 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x98]
    2989c6297598:	45 33 ff                                        	xor    r15d,r15d
    2989c629759b:	42 83 bc 07 98 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x98],0x0
    2989c62975a4:	41 0f 95 c7                                     	setne  r15b
    2989c62975a8:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    2989c62975ab:	c7 44 37 18 00 00 00 00                         	mov    DWORD PTR [rdi+rsi*1+0x18],0x0
    2989c62975b3:	33 c9                                           	xor    ecx,ecx
    2989c62975b5:	83 7d d0 07                                     	cmp    DWORD PTR [rbp-0x30],0x7
    2989c62975b9:	0f 9f c1                                        	setg   cl
    2989c62975bc:	4c 63 8d 38 ff ff ff                            	movsxd r9,DWORD PTR [rbp-0xc8]
    2989c62975c3:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    2989c62975ca:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    2989c62975ce:	4d 0f af f9                                     	imul   r15,r9
    2989c62975d2:	49 83 ff 3f                                     	cmp    r15,0x3f
    2989c62975d6:	41 0f 9f c7                                     	setg   r15b
    2989c62975da:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c62975de:	44 23 f9                                        	and    r15d,ecx
    2989c62975e1:	0f 85 1d 00 00 00                               	jne    0x2989c6297604
    2989c62975e7:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c62975eb:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    2989c62975ef:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c62975f3:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c62975f7:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    2989c62975fb:	c5 79 28 f7                                     	vmovapd xmm14,xmm7
    2989c62975ff:	e9 02 02 00 00                                  	jmp    0x2989c6297806
    2989c6297604:	44 8b 8d 90 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x270]
    2989c629760b:	44 3b 8d 30 ff ff ff                            	cmp    r9d,DWORD PTR [rbp-0xd0]
    2989c6297612:	0f 84 8a 00 00 00                               	je     0x2989c62976a2
    2989c6297618:	48 8b 8d a8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x258]
    2989c629761f:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6297623:	c4 61 82 2a c1                                  	vcvtsi2ss xmm8,xmm15,rcx
    2989c6297628:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c629762d:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6297633:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6297639:	c4 41 2a 5e c0                                  	vdivss xmm8,xmm10,xmm8
    2989c629763e:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    2989c6297643:	48 8b 8d d0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x130]
    2989c629764a:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c629764e:	c4 61 82 2a d1                                  	vcvtsi2ss xmm10,xmm15,rcx
    2989c6297653:	c4 41 3a 59 d2                                  	vmulss xmm10,xmm8,xmm10
    2989c6297658:	48 63 4d 38                                     	movsxd rcx,DWORD PTR [rbp+0x38]
    2989c629765c:	4c 8b a5 60 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xa0]
    2989c6297663:	4f 8d 04 23                                     	lea    r8,[r11+r12*1]
    2989c6297667:	4c 03 c1                                        	add    r8,rcx
    2989c629766a:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    2989c629766f:	49 ba 60 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b860
    2989c6297679:	c4 41 20 57 1a                                  	vxorps xmm11,xmm11,XMMWORD PTR [r10]
    2989c629767e:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    2989c6297683:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    2989c6297688:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    2989c629768d:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    2989c6297692:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6297696:	44 8b a5 28 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2d8]
    2989c629769d:	e9 08 00 00 00                                  	jmp    0x2989c62976aa
    2989c62976a2:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c62976a6:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c62976aa:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c62976b0:	3b 8d 20 ff ff ff                               	cmp    ecx,DWORD PTR [rbp-0xe0]
    2989c62976b6:	0f 84 80 00 00 00                               	je     0x2989c629773c
    2989c62976bc:	4c 8b a5 88 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x278]
    2989c62976c3:	49 c1 e4 08                                     	shl    r12,0x8
    2989c62976c7:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    2989c62976cc:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    2989c62976d1:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    2989c62976d7:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    2989c62976dd:	c4 41 1a 5e db                                  	vdivss xmm11,xmm12,xmm11
    2989c62976e2:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    2989c62976e7:	4c 8b a5 d8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x128]
    2989c62976ee:	49 c1 e4 08                                     	shl    r12,0x8
    2989c62976f2:	c4 41 82 2a e4                                  	vcvtsi2ss xmm12,xmm15,r12
    2989c62976f7:	c4 41 22 59 e4                                  	vmulss xmm12,xmm11,xmm12
    2989c62976fc:	4c 63 65 40                                     	movsxd r12,DWORD PTR [rbp+0x40]
    2989c6297700:	48 8d 3c 03                                     	lea    rdi,[rbx+rax*1]
    2989c6297704:	49 03 fc                                        	add    rdi,r12
    2989c6297707:	c4 61 82 2a ef                                  	vcvtsi2ss xmm13,xmm15,rdi
    2989c629770c:	4c 8b 15 5e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff5e]        # 0x2989c6297671
    2989c6297713:	c4 41 10 57 2a                                  	vxorps xmm13,xmm13,XMMWORD PTR [r10]
    2989c6297718:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    2989c629771d:	c4 41 79 28 fb                                  	vmovapd xmm15,xmm11
    2989c6297722:	c4 41 79 28 dc                                  	vmovapd xmm11,xmm12
    2989c6297727:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    2989c629772c:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6297730:	44 8b a5 28 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2d8]
    2989c6297737:	e9 08 00 00 00                                  	jmp    0x2989c6297744
    2989c629773c:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    2989c6297740:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c6297744:	44 3b 8d 20 ff ff ff                            	cmp    r9d,DWORD PTR [rbp-0xe0]
    2989c629774b:	0f 84 9e 00 00 00                               	je     0x2989c62977ef
    2989c6297751:	4c 8b a5 58 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2a8]
    2989c6297758:	49 c1 e4 08                                     	shl    r12,0x8
    2989c629775c:	c4 41 82 2a ec                                  	vcvtsi2ss xmm13,xmm15,r12
    2989c6297761:	c4 41 09 76 f6                                  	vpcmpeqd xmm14,xmm14,xmm14
    2989c6297766:	c4 c1 09 72 f6 19                               	vpslld xmm14,xmm14,0x19
    2989c629776c:	c4 c1 09 72 d6 02                               	vpsrld xmm14,xmm14,0x2
    2989c6297772:	c4 41 0a 5e ed                                  	vdivss xmm13,xmm14,xmm13
    2989c6297777:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    2989c629777c:	4c 8b a5 18 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xe8]
    2989c6297783:	49 c1 e4 08                                     	shl    r12,0x8
    2989c6297787:	c4 41 82 2a f4                                  	vcvtsi2ss xmm14,xmm15,r12
    2989c629778c:	c4 41 12 59 f6                                  	vmulss xmm14,xmm13,xmm14
    2989c6297791:	48 63 55 48                                     	movsxd rdx,DWORD PTR [rbp+0x48]
    2989c6297795:	4c 8b a5 48 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb8]
    2989c629779c:	48 8b 8d 78 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x388]
    2989c62977a3:	4e 8d 0c 21                                     	lea    r9,[rcx+r12*1]
    2989c62977a7:	49 03 d1                                        	add    rdx,r9
    2989c62977aa:	c4 e1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,rdx
    2989c62977af:	4c 8b 15 bb fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffebb]        # 0x2989c6297671
    2989c62977b6:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    2989c62977bb:	c5 12 59 ea                                     	vmulss xmm13,xmm13,xmm2
    2989c62977bf:	c4 41 79 28 fc                                  	vmovapd xmm15,xmm12
    2989c62977c4:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    2989c62977c9:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    2989c62977ce:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    2989c62977d3:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    2989c62977d8:	c4 41 79 28 f7                                  	vmovapd xmm14,xmm15
    2989c62977dd:	8b 95 e0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x120]
    2989c62977e3:	44 8b a5 28 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2d8]
    2989c62977ea:	e9 17 00 00 00                                  	jmp    0x2989c6297806
    2989c62977ef:	c4 41 79 28 f4                                  	vmovapd xmm14,xmm12
    2989c62977f4:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c62977f8:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    2989c62977fd:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    2989c6297802:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    2989c6297806:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    2989c6297809:	3b 4d 18                                        	cmp    ecx,DWORD PTR [rbp+0x18]
    2989c629780c:	0f 8e 97 76 00 00                               	jle    0x2989c629eea9
    2989c6297812:	4c 8b 8d 58 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2a8]
    2989c6297819:	49 c1 e1 08                                     	shl    r9,0x8
    2989c629781d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c6297821:	41 8d 54 24 ff                                  	lea    edx,[r12-0x1]
    2989c6297826:	48 63 d2                                        	movsxd rdx,edx
    2989c6297829:	4c 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r9
    2989c6297830:	4c 0f af ca                                     	imul   r9,rdx
    2989c6297834:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    2989c629783b:	4d 8b f9                                        	mov    r15,r9
    2989c629783e:	49 f7 d7                                        	not    r15
    2989c6297841:	48 8b bd 88 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x278]
    2989c6297848:	48 c1 e7 08                                     	shl    rdi,0x8
    2989c629784c:	48 89 bd e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rdi
    2989c6297853:	48 0f af fa                                     	imul   rdi,rdx
    2989c6297857:	48 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdi
    2989c629785e:	48 f7 d7                                        	not    rdi
    2989c6297861:	48 8b 8d a8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x258]
    2989c6297868:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c629786c:	48 0f af d1                                     	imul   rdx,rcx
    2989c6297870:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    2989c6297877:	48 f7 d2                                        	not    rdx
    2989c629787a:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    2989c6297881:	4c 8b 8d 18 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe8]
    2989c6297888:	49 c1 e1 08                                     	shl    r9,0x8
    2989c629788c:	4c 89 8d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r9
    2989c6297893:	4c 8b 8d d8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x128]
    2989c629789a:	49 c1 e1 08                                     	shl    r9,0x8
    2989c629789e:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    2989c62978a5:	4c 8b 8d d0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x130]
    2989c62978ac:	49 c1 e1 08                                     	shl    r9,0x8
    2989c62978b0:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    2989c62978b7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62978ba:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    2989c62978c1:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    2989c62978c7:	48 89 bd e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],rdi
    2989c62978ce:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    2989c62978d4:	48 89 bd d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],rdi
    2989c62978db:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    2989c62978e1:	48 89 bd d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],rdi
    2989c62978e8:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    2989c62978ee:	48 89 bd c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rdi
    2989c62978f5:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    2989c62978fb:	8b 85 f0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x310]
    2989c6297901:	48 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdi
    2989c6297908:	8d 78 50                                        	lea    edi,[rax+0x50]
    2989c629790b:	8b 85 98 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x368]
    2989c6297911:	48 89 bd 90 fe ff ff                            	mov    QWORD PTR [rbp-0x170],rdi
    2989c6297918:	8d 78 50                                        	lea    edi,[rax+0x50]
    2989c629791b:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    2989c6297921:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    2989c6297928:	8d 78 50                                        	lea    edi,[rax+0x50]
    2989c629792b:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    2989c629792e:	83 f0 ff                                        	xor    eax,0xffffffff
    2989c6297931:	48 89 bd 98 fe ff ff                            	mov    QWORD PTR [rbp-0x168],rdi
    2989c6297938:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    2989c629793b:	44 8d 47 02                                     	lea    r8d,[rdi+0x2]
    2989c629793f:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    2989c6297943:	48 c1 e7 07                                     	shl    rdi,0x7
    2989c6297947:	48 89 bd a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rdi
    2989c629794e:	48 8b 7d c0                                     	mov    rdi,QWORD PTR [rbp-0x40]
    2989c6297952:	48 c1 e7 07                                     	shl    rdi,0x7
    2989c6297956:	48 89 bd f8 fb ff ff                            	mov    QWORD PTR [rbp-0x408],rdi
    2989c629795d:	41 8d 7c 24 fe                                  	lea    edi,[r12-0x2]
    2989c6297962:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    2989c6297966:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    2989c629796a:	48 89 bd 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdi
    2989c6297971:	48 63 7d 40                                     	movsxd rdi,DWORD PTR [rbp+0x40]
    2989c6297975:	48 89 bd a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rdi
    2989c629797c:	48 63 7d 38                                     	movsxd rdi,DWORD PTR [rbp+0x38]
    2989c6297980:	c4 e1 82 2a 5d 30                               	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp+0x30]
    2989c6297986:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c629798a:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c629798f:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c6297994:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    2989c6297998:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    2989c629799c:	c5 7b 11 85 48 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b8],xmm8
    2989c62979a4:	c4 62 79 18 c3                                  	vbroadcastss xmm8,xmm3
    2989c62979a9:	48 89 bd 50 fd ff ff                            	mov    QWORD PTR [rbp-0x2b0],rdi
    2989c62979b0:	8d be 90 00 00 00                               	lea    edi,[rsi+0x90]
    2989c62979b6:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    2989c62979bd:	8d 7e 18                                        	lea    edi,[rsi+0x18]
    2989c62979c0:	83 cf 04                                        	or     edi,0x4
    2989c62979c3:	c5 7b 11 95 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm10
    2989c62979cb:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    2989c62979d0:	44 8d a6 60 01 00 00                            	lea    r12d,[rsi+0x160]
    2989c62979d7:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    2989c62979de:	8d be 50 01 00 00                               	lea    edi,[rsi+0x150]
    2989c62979e4:	c5 7b 11 9d 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm11
    2989c62979ec:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    2989c62979f4:	4c 89 9d c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r11
    2989c62979fb:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    2989c6297a03:	c5 f8 11 ad 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm5
    2989c6297a0b:	c5 f8 11 b5 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm6
    2989c6297a13:	4c 89 bd 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r15
    2989c6297a1a:	48 89 8d f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rcx
    2989c6297a21:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    2989c6297a28:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    2989c6297a2f:	48 89 85 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],rax
    2989c6297a36:	4c 89 85 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r8
    2989c6297a3d:	c5 fb 11 95 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm2
    2989c6297a45:	c5 fb 11 9d 88 fe ff ff                         	vmovsd QWORD PTR [rbp-0x178],xmm3
    2989c6297a4d:	c5 78 11 85 20 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3e0],xmm8
    2989c6297a55:	c5 7b 11 95 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm10
    2989c6297a5d:	4c 89 a5 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r12
    2989c6297a64:	48 89 bd 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdi
    2989c6297a6b:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    2989c6297a72:	4d 8b cb                                        	mov    r9,r11
    2989c6297a75:	4c 8b 9d 48 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xb8]
    2989c6297a7c:	41 8b d8                                        	mov    ebx,r8d
    2989c6297a7f:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    2989c6297a86:	48 c7 85 30 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x0
    2989c6297a91:	44 8b 55 18                                     	mov    r10d,DWORD PTR [rbp+0x18]
    2989c6297a95:	4c 89 55 d0                                     	mov    QWORD PTR [rbp-0x30],r10
    2989c6297a99:	4c 8b fa                                        	mov    r15,rdx
    2989c6297a9c:	e9 40 00 00 00                                  	jmp    0x2989c6297ae1
    2989c6297aa1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6297aaa:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6297ab3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6297abc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    2989c6297ac0:	4c 8b d8                                        	mov    r11,rax
    2989c6297ac3:	48 8b c6                                        	mov    rax,rsi
    2989c6297ac6:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    2989c6297aca:	4c 8b c7                                        	mov    r8,rdi
    2989c6297acd:	4c 8b bd 50 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b0]
    2989c6297ad4:	8b 9d 58 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a8]
    2989c6297ada:	4c 8b 8d c0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x140]
    2989c6297ae1:	48 8b 8d 50 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b0]
    2989c6297ae8:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    2989c6297aef:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    2989c6297af5:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6297afa:	0f 85 6a 75 00 00                               	jne    0x2989c629f06a
    2989c6297b00:	83 bd 10 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f0],0x0
    2989c6297b07:	0f 85 28 00 00 00                               	jne    0x2989c6297b35
    2989c6297b0d:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    2989c6297b14:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    2989c6297b1b:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    2989c6297b22:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    2989c6297b26:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    2989c6297b29:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6297b30:	e9 e5 05 00 00                                  	jmp    0x2989c629811a
    2989c6297b35:	4b 8d 14 01                                     	lea    rdx,[r9+r8*1]
    2989c6297b39:	48 03 d1                                        	add    rdx,rcx
    2989c6297b3c:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    2989c6297b43:	0f 8c 1f 01 00 00                               	jl     0x2989c6297c68
    2989c6297b49:	44 3b e6                                        	cmp    r12d,esi
    2989c6297b4c:	0f 84 fe 00 00 00                               	je     0x2989c6297c50
    2989c6297b52:	48 85 d2                                        	test   rdx,rdx
    2989c6297b55:	0f 8c e9 00 00 00                               	jl     0x2989c6297c44
    2989c6297b5b:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    2989c6297b62:	4c 3b fa                                        	cmp    r15,rdx
    2989c6297b65:	0f 8c 7a 00 00 00                               	jl     0x2989c6297be5
    2989c6297b6b:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    2989c6297b70:	0f 87 7b 00 00 00                               	ja     0x2989c6297bf1
    2989c6297b76:	c5 78 2e ad 18 ff ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0xe8]
    2989c6297b7e:	0f 83 61 00 00 00                               	jae    0x2989c6297be5
    2989c6297b84:	4c 8b 15 8a ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffed8a]        # 0x2989c6296915
    2989c6297b8b:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    2989c6297b90:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6297b95:	0f 87 0a 00 00 00                               	ja     0x2989c6297ba5
    2989c6297b9b:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c6297ba0:	e9 2b 00 00 00                                  	jmp    0x2989c6297bd0
    2989c6297ba5:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    2989c6297bab:	c4 41 7a 2c ca                                  	vcvttss2si r9d,xmm10
    2989c6297bb0:	c4 41 02 2a d9                                  	vcvtsi2ss xmm11,xmm15,r9d
    2989c6297bb5:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c6297bba:	0f 8a 9b 77 00 00                               	jp     0x2989c629f35b
    2989c6297bc0:	0f 85 95 77 00 00                               	jne    0x2989c629f35b
    2989c6297bc6:	41 8b c9                                        	mov    ecx,r9d
    2989c6297bc9:	4c 8b 8d c0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x140]
    2989c6297bd0:	03 cb                                           	add    ecx,ebx
    2989c6297bd2:	48 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rcx
    2989c6297bd9:	48 8b 8d 50 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b0]
    2989c6297be0:	e9 17 00 00 00                                  	jmp    0x2989c6297bfc
    2989c6297be5:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    2989c6297be9:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    2989c6297bec:	e9 38 01 00 00                                  	jmp    0x2989c6297d29
    2989c6297bf1:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    2989c6297bf5:	4c 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r10
    2989c6297bfc:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    2989c6297c00:	44 3b bd 58 ff ff ff                            	cmp    r15d,DWORD PTR [rbp-0xa8]
    2989c6297c07:	0f 8e 2f 00 00 00                               	jle    0x2989c6297c3c
    2989c6297c0d:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    2989c6297c13:	2b 4d 10                                        	sub    ecx,DWORD PTR [rbp+0x10]
    2989c6297c16:	48 63 c9                                        	movsxd rcx,ecx
    2989c6297c19:	48 0f af 8d f8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x208]
    2989c6297c21:	48 03 d1                                        	add    rdx,rcx
    2989c6297c24:	41 8b cf                                        	mov    ecx,r15d
    2989c6297c27:	48 85 d2                                        	test   rdx,rdx
    2989c6297c2a:	0f 4c 8d 58 ff ff ff                            	cmovl  ecx,DWORD PTR [rbp-0xa8]
    2989c6297c31:	44 8b f9                                        	mov    r15d,ecx
    2989c6297c34:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    2989c6297c37:	e9 ed 00 00 00                                  	jmp    0x2989c6297d29
    2989c6297c3c:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    2989c6297c3f:	e9 e5 00 00 00                                  	jmp    0x2989c6297d29
    2989c6297c44:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6297c4b:	e9 a8 5a 00 00                                  	jmp    0x2989c629d6f8
    2989c6297c50:	48 85 d2                                        	test   rdx,rdx
    2989c6297c53:	7c ef                                           	jl     0x2989c6297c44
    2989c6297c55:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    2989c6297c5c:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    2989c6297c60:	8b 55 10                                        	mov    edx,DWORD PTR [rbp+0x10]
    2989c6297c63:	e9 c1 00 00 00                                  	jmp    0x2989c6297d29
    2989c6297c68:	4c 8b bd 38 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc8]
    2989c6297c6f:	49 8d 0c 17                                     	lea    rcx,[r15+rdx*1]
    2989c6297c73:	48 85 c9                                        	test   rcx,rcx
    2989c6297c76:	7c cc                                           	jl     0x2989c6297c44
    2989c6297c78:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    2989c6297c7f:	48 85 d2                                        	test   rdx,rdx
    2989c6297c82:	0f 8d 5d ff ff ff                               	jge    0x2989c6297be5
    2989c6297c88:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    2989c6297c8d:	0f 83 52 ff ff ff                               	jae    0x2989c6297be5
    2989c6297c93:	4c 8b 15 7b ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec7b]        # 0x2989c6296915
    2989c6297c9a:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    2989c6297c9f:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6297ca4:	0f 87 0a 00 00 00                               	ja     0x2989c6297cb4
    2989c6297caa:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c6297caf:	e9 20 00 00 00                                  	jmp    0x2989c6297cd4
    2989c6297cb4:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    2989c6297cba:	c4 c1 7a 2c ca                                  	vcvttss2si ecx,xmm10
    2989c6297cbf:	c5 02 2a d9                                     	vcvtsi2ss xmm11,xmm15,ecx
    2989c6297cc3:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c6297cc8:	0f 8a 88 76 00 00                               	jp     0x2989c629f356
    2989c6297cce:	0f 85 82 76 00 00                               	jne    0x2989c629f356
    2989c6297cd4:	44 8b 7d 10                                     	mov    r15d,DWORD PTR [rbp+0x10]
    2989c6297cd8:	41 03 cf                                        	add    ecx,r15d
    2989c6297cdb:	c5 78 2e ad 68 fe ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0x198]
    2989c6297ce3:	0f 43 4d 20                                     	cmovae ecx,DWORD PTR [rbp+0x20]
    2989c6297ce7:	41 3b cf                                        	cmp    ecx,r15d
    2989c6297cea:	0f 8e 32 00 00 00                               	jle    0x2989c6297d22
    2989c6297cf0:	44 8b 8d 98 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x268]
    2989c6297cf7:	45 8d 04 09                                     	lea    r8d,[r9+rcx*1]
    2989c6297cfb:	4d 63 c0                                        	movsxd r8,r8d
    2989c6297cfe:	4c 0f af 85 f8 fd ff ff                         	imul   r8,QWORD PTR [rbp-0x208]
    2989c6297d06:	4c 03 c2                                        	add    r8,rdx
    2989c6297d09:	41 8b d7                                        	mov    edx,r15d
    2989c6297d0c:	4d 85 c0                                        	test   r8,r8
    2989c6297d0f:	0f 4c d1                                        	cmovl  edx,ecx
    2989c6297d12:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    2989c6297d16:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    2989c6297d1d:	e9 07 00 00 00                                  	jmp    0x2989c6297d29
    2989c6297d22:	41 8b d7                                        	mov    edx,r15d
    2989c6297d25:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    2989c6297d29:	48 8b 8d 48 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b8]
    2989c6297d30:	4c 8d 0c 01                                     	lea    r9,[rcx+rax*1]
    2989c6297d34:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6297d3b:	4c 03 c9                                        	add    r9,rcx
    2989c6297d3e:	83 bd b0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x250],0x0
    2989c6297d45:	0f 8d e8 00 00 00                               	jge    0x2989c6297e33
    2989c6297d4b:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    2989c6297d52:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    2989c6297d59:	4a 8d 04 09                                     	lea    rax,[rcx+r9*1]
    2989c6297d5d:	48 85 c0                                        	test   rax,rax
    2989c6297d60:	0f 8c ba 00 00 00                               	jl     0x2989c6297e20
    2989c6297d66:	4d 85 c9                                        	test   r9,r9
    2989c6297d69:	0f 8d 9e 00 00 00                               	jge    0x2989c6297e0d
    2989c6297d6f:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    2989c6297d74:	0f 83 93 00 00 00                               	jae    0x2989c6297e0d
    2989c6297d7a:	4c 8b 15 94 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb94]        # 0x2989c6296915
    2989c6297d81:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    2989c6297d86:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6297d8b:	0f 87 0a 00 00 00                               	ja     0x2989c6297d9b
    2989c6297d91:	b8 00 00 00 80                                  	mov    eax,0x80000000
    2989c6297d96:	e9 20 00 00 00                                  	jmp    0x2989c6297dbb
    2989c6297d9b:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    2989c6297da1:	c4 c1 7a 2c c2                                  	vcvttss2si eax,xmm10
    2989c6297da6:	c5 02 2a d8                                     	vcvtsi2ss xmm11,xmm15,eax
    2989c6297daa:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c6297daf:	0f 8a 9c 75 00 00                               	jp     0x2989c629f351
    2989c6297db5:	0f 85 96 75 00 00                               	jne    0x2989c629f351
    2989c6297dbb:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    2989c6297dbe:	03 c1                                           	add    eax,ecx
    2989c6297dc0:	c5 78 2e b5 68 fe ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0x198]
    2989c6297dc8:	0f 43 45 20                                     	cmovae eax,DWORD PTR [rbp+0x20]
    2989c6297dcc:	3b c2                                           	cmp    eax,edx
    2989c6297dce:	0f 8e 39 00 00 00                               	jle    0x2989c6297e0d
    2989c6297dd4:	44 8b 85 98 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x268]
    2989c6297ddb:	41 8d 3c 00                                     	lea    edi,[r8+rax*1]
    2989c6297ddf:	48 63 ff                                        	movsxd rdi,edi
    2989c6297de2:	48 0f af bd e8 fd ff ff                         	imul   rdi,QWORD PTR [rbp-0x218]
    2989c6297dea:	49 03 f9                                        	add    rdi,r9
    2989c6297ded:	48 85 ff                                        	test   rdi,rdi
    2989c6297df0:	0f 4c d0                                        	cmovl  edx,eax
    2989c6297df3:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6297dfa:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    2989c6297e01:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    2989c6297e08:	e9 10 01 00 00                                  	jmp    0x2989c6297f1d
    2989c6297e0d:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6297e14:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    2989c6297e1b:	e9 fd 00 00 00                                  	jmp    0x2989c6297f1d
    2989c6297e20:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6297e27:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    2989c6297e2e:	e9 c5 58 00 00                                  	jmp    0x2989c629d6f8
    2989c6297e33:	3b b5 20 ff ff ff                               	cmp    esi,DWORD PTR [rbp-0xe0]
    2989c6297e39:	0f 84 ce 00 00 00                               	je     0x2989c6297f0d
    2989c6297e3f:	4d 85 c9                                        	test   r9,r9
    2989c6297e42:	0f 8c b0 58 00 00                               	jl     0x2989c629d6f8
    2989c6297e48:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    2989c6297e4f:	48 8b bd 08 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f8]
    2989c6297e56:	49 3b f9                                        	cmp    rdi,r9
    2989c6297e59:	0f 8c be 00 00 00                               	jl     0x2989c6297f1d
    2989c6297e5f:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    2989c6297e64:	0f 87 64 00 00 00                               	ja     0x2989c6297ece
    2989c6297e6a:	c5 78 2e b5 18 ff ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0xe8]
    2989c6297e72:	0f 83 a5 00 00 00                               	jae    0x2989c6297f1d
    2989c6297e78:	4c 8b 15 96 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea96]        # 0x2989c6296915
    2989c6297e7f:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    2989c6297e84:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6297e89:	0f 87 0a 00 00 00                               	ja     0x2989c6297e99
    2989c6297e8f:	bf 00 00 00 80                                  	mov    edi,0x80000000
    2989c6297e94:	e9 20 00 00 00                                  	jmp    0x2989c6297eb9
    2989c6297e99:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    2989c6297e9f:	c4 c1 7a 2c fa                                  	vcvttss2si edi,xmm10
    2989c6297ea4:	c5 02 2a df                                     	vcvtsi2ss xmm11,xmm15,edi
    2989c6297ea8:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c6297ead:	0f 8a 99 74 00 00                               	jp     0x2989c629f34c
    2989c6297eb3:	0f 85 93 74 00 00                               	jne    0x2989c629f34c
    2989c6297eb9:	03 fb                                           	add    edi,ebx
    2989c6297ebb:	48 89 bd 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdi
    2989c6297ec2:	48 8b bd 08 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f8]
    2989c6297ec9:	e9 0b 00 00 00                                  	jmp    0x2989c6297ed9
    2989c6297ece:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    2989c6297ed2:	4c 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],r10
    2989c6297ed9:	44 3b bd 00 fe ff ff                            	cmp    r15d,DWORD PTR [rbp-0x200]
    2989c6297ee0:	0f 8e 37 00 00 00                               	jle    0x2989c6297f1d
    2989c6297ee6:	8b bd 00 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x200]
    2989c6297eec:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    2989c6297eef:	48 63 ff                                        	movsxd rdi,edi
    2989c6297ef2:	48 0f af bd e8 fd ff ff                         	imul   rdi,QWORD PTR [rbp-0x218]
    2989c6297efa:	49 03 f9                                        	add    rdi,r9
    2989c6297efd:	48 85 ff                                        	test   rdi,rdi
    2989c6297f00:	44 0f 4c bd 00 fe ff ff                         	cmovl  r15d,DWORD PTR [rbp-0x200]
    2989c6297f08:	e9 10 00 00 00                                  	jmp    0x2989c6297f1d
    2989c6297f0d:	4d 85 c9                                        	test   r9,r9
    2989c6297f10:	0f 8c e2 57 00 00                               	jl     0x2989c629d6f8
    2989c6297f16:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    2989c6297f1d:	48 8b bd 78 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x388]
    2989c6297f24:	4e 8d 0c 1f                                     	lea    r9,[rdi+r11*1]
    2989c6297f28:	48 8b b5 30 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3d0]
    2989c6297f2f:	4c 03 ce                                        	add    r9,rsi
    2989c6297f32:	83 bd 10 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xf0],0x0
    2989c6297f39:	0f 8d d6 00 00 00                               	jge    0x2989c6298015
    2989c6297f3f:	48 8b bd 28 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xd8]
    2989c6297f46:	4a 8d 34 0f                                     	lea    rsi,[rdi+r9*1]
    2989c6297f4a:	48 85 f6                                        	test   rsi,rsi
    2989c6297f4d:	0f 8c b7 00 00 00                               	jl     0x2989c629800a
    2989c6297f53:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    2989c6297f5a:	4d 85 c9                                        	test   r9,r9
    2989c6297f5d:	0f 8d b7 01 00 00                               	jge    0x2989c629811a
    2989c6297f63:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    2989c6297f68:	0f 83 68 00 00 00                               	jae    0x2989c6297fd6
    2989c6297f6e:	c5 78 2e a5 68 fe ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0x198]
    2989c6297f76:	0f 83 52 00 00 00                               	jae    0x2989c6297fce
    2989c6297f7c:	4c 8b 15 92 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe992]        # 0x2989c6296915
    2989c6297f83:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    2989c6297f88:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6297f8d:	0f 87 0a 00 00 00                               	ja     0x2989c6297f9d
    2989c6297f93:	be 00 00 00 80                                  	mov    esi,0x80000000
    2989c6297f98:	e9 20 00 00 00                                  	jmp    0x2989c6297fbd
    2989c6297f9d:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    2989c6297fa3:	c4 c1 7a 2c f2                                  	vcvttss2si esi,xmm10
    2989c6297fa8:	c5 02 2a de                                     	vcvtsi2ss xmm11,xmm15,esi
    2989c6297fac:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c6297fb1:	0f 8a 90 73 00 00                               	jp     0x2989c629f347
    2989c6297fb7:	0f 85 8a 73 00 00                               	jne    0x2989c629f347
    2989c6297fbd:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    2989c6297fc0:	03 f7                                           	add    esi,edi
    2989c6297fc2:	48 8b bd 28 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xd8]
    2989c6297fc9:	e9 0b 00 00 00                                  	jmp    0x2989c6297fd9
    2989c6297fce:	8b 75 20                                        	mov    esi,DWORD PTR [rbp+0x20]
    2989c6297fd1:	e9 03 00 00 00                                  	jmp    0x2989c6297fd9
    2989c6297fd6:	8b 75 10                                        	mov    esi,DWORD PTR [rbp+0x10]
    2989c6297fd9:	3b f2                                           	cmp    esi,edx
    2989c6297fdb:	0f 8e 39 01 00 00                               	jle    0x2989c629811a
    2989c6297fe1:	8b bd 98 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x268]
    2989c6297fe7:	8d 0c 37                                        	lea    ecx,[rdi+rsi*1]
    2989c6297fea:	48 63 c9                                        	movsxd rcx,ecx
    2989c6297fed:	48 0f af 8d d8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x228]
    2989c6297ff5:	49 03 c9                                        	add    rcx,r9
    2989c6297ff8:	48 85 c9                                        	test   rcx,rcx
    2989c6297ffb:	0f 4c d6                                        	cmovl  edx,esi
    2989c6297ffe:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6298005:	e9 10 01 00 00                                  	jmp    0x2989c629811a
    2989c629800a:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    2989c6298010:	e9 e3 56 00 00                                  	jmp    0x2989c629d6f8
    2989c6298015:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    2989c629801b:	41 3b fc                                        	cmp    edi,r12d
    2989c629801e:	0f 84 e6 00 00 00                               	je     0x2989c629810a
    2989c6298024:	4d 85 c9                                        	test   r9,r9
    2989c6298027:	7c e1                                           	jl     0x2989c629800a
    2989c6298029:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    2989c6298030:	48 8b bd 60 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1a0]
    2989c6298037:	49 3b f9                                        	cmp    rdi,r9
    2989c629803a:	0f 8c da 00 00 00                               	jl     0x2989c629811a
    2989c6298040:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    2989c6298045:	0f 87 77 00 00 00                               	ja     0x2989c62980c2
    2989c629804b:	c5 78 2e a5 18 ff ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0xe8]
    2989c6298053:	0f 83 59 00 00 00                               	jae    0x2989c62980b2
    2989c6298059:	4c 8b 15 b5 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8b5]        # 0x2989c6296915
    2989c6298060:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    2989c6298065:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c629806a:	0f 87 0b 00 00 00                               	ja     0x2989c629807b
    2989c6298070:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    2989c6298076:	e9 21 00 00 00                                  	jmp    0x2989c629809c
    2989c629807b:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    2989c6298081:	c4 41 7a 2c e2                                  	vcvttss2si r12d,xmm10
    2989c6298086:	c4 41 02 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12d
    2989c629808b:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c6298090:	0f 8a ac 72 00 00                               	jp     0x2989c629f342
    2989c6298096:	0f 85 a6 72 00 00                               	jne    0x2989c629f342
    2989c629809c:	44 03 e3                                        	add    r12d,ebx
    2989c629809f:	4c 89 a5 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r12
    2989c62980a6:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    2989c62980ad:	e9 1b 00 00 00                                  	jmp    0x2989c62980cd
    2989c62980b2:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    2989c62980b6:	4c 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r10
    2989c62980bd:	e9 0b 00 00 00                                  	jmp    0x2989c62980cd
    2989c62980c2:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    2989c62980c6:	4c 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r10
    2989c62980cd:	44 3b bd 58 ff ff ff                            	cmp    r15d,DWORD PTR [rbp-0xa8]
    2989c62980d4:	0f 8e 40 00 00 00                               	jle    0x2989c629811a
    2989c62980da:	44 8b a5 58 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xa8]
    2989c62980e1:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    2989c62980e5:	4d 63 e4                                        	movsxd r12,r12d
    2989c62980e8:	4c 0f af a5 d8 fd ff ff                         	imul   r12,QWORD PTR [rbp-0x228]
    2989c62980f0:	4d 03 e1                                        	add    r12,r9
    2989c62980f3:	4d 85 e4                                        	test   r12,r12
    2989c62980f6:	44 0f 4c bd 58 ff ff ff                         	cmovl  r15d,DWORD PTR [rbp-0xa8]
    2989c62980fe:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    2989c6298105:	e9 10 00 00 00                                  	jmp    0x2989c629811a
    2989c629810a:	4d 85 c9                                        	test   r9,r9
    2989c629810d:	0f 8c f7 fe ff ff                               	jl     0x2989c629800a
    2989c6298113:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    2989c629811a:	41 3b d7                                        	cmp    edx,r15d
    2989c629811d:	0f 8c 1e 00 00 00                               	jl     0x2989c6298141
    2989c6298123:	4c 8b 9d d8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x228]
    2989c629812a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629812e:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    2989c6298135:	4c 8b 85 e8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x218]
    2989c629813c:	e9 72 55 00 00                                  	jmp    0x2989c629d6b3
    2989c6298141:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    2989c6298144:	83 cf 03                                        	or     edi,0x3
    2989c6298147:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    2989c629814a:	81 e6 fc ff ff 1f                               	and    esi,0x1ffffffc
    2989c6298150:	44 8b ce                                        	mov    r9d,esi
    2989c6298153:	41 83 c9 02                                     	or     r9d,0x2
    2989c6298157:	48 89 b5 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rsi
    2989c629815e:	83 ce 01                                        	or     esi,0x1
    2989c6298161:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    2989c6298168:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    2989c629816b:	44 8d 24 bd 00 00 00 00                         	lea    r12d,[rdi*4+0x0]
    2989c6298173:	4c 89 bd 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r15
    2989c629817a:	45 8b fc                                        	mov    r15d,r12d
    2989c629817d:	41 83 e7 0c                                     	and    r15d,0xc
    2989c6298181:	41 83 e4 7c                                     	and    r12d,0x7c
    2989c6298185:	4c 89 a5 f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r12
    2989c629818c:	44 8b e2                                        	mov    r12d,edx
    2989c629818f:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    2989c6298193:	4d 63 e4                                        	movsxd r12,r12d
    2989c6298196:	49 c1 e4 08                                     	shl    r12,0x8
    2989c629819a:	4c 89 8d 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r9
    2989c62981a1:	4c 8b 8d a8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x258]
    2989c62981a8:	4d 0f af cc                                     	imul   r9,r12
    2989c62981ac:	4d 03 c8                                        	add    r9,r8
    2989c62981af:	4c 8b 85 88 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x278]
    2989c62981b6:	4d 0f af c4                                     	imul   r8,r12
    2989c62981ba:	4c 03 c0                                        	add    r8,rax
    2989c62981bd:	48 8b 85 58 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2a8]
    2989c62981c4:	49 0f af c4                                     	imul   rax,r12
    2989c62981c8:	4d 8d 24 03                                     	lea    r12,[r11+rax*1]
    2989c62981cc:	8b c7                                           	mov    eax,edi
    2989c62981ce:	c1 f8 02                                        	sar    eax,0x2
    2989c62981d1:	c1 e0 04                                        	shl    eax,0x4
    2989c62981d4:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    2989c62981d9:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    2989c62981de:	c5 7b 11 b5 68 ff ff ff                         	vmovsd QWORD PTR [rbp-0x98],xmm14
    2989c62981e6:	48 89 b5 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rsi
    2989c62981ed:	4c 89 bd a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],r15
    2989c62981f4:	48 89 85 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],rax
    2989c62981fb:	e9 06 00 00 00                                  	jmp    0x2989c6298206
    2989c6298200:	4d 8b e7                                        	mov    r12,r15
    2989c6298203:	4c 8b c0                                        	mov    r8,rax
    2989c6298206:	48 8b bd 78 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x388]
    2989c629820d:	48 8b 85 30 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x3d0]
    2989c6298214:	4c 8b 9d 48 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x2b8]
    2989c629821b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    2989c6298222:	48 8b 9d 50 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b0]
    2989c6298229:	4c 89 a5 d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r12
    2989c6298230:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6298235:	0f 85 ec 6e 00 00                               	jne    0x2989c629f127
    2989c629823b:	83 bd e0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x120],0x0
    2989c6298242:	0f 85 6b 00 00 00                               	jne    0x2989c62982b3
    2989c6298248:	45 8b f8                                        	mov    r15d,r8d
    2989c629824b:	c4 41 79 6e d7                                  	vmovd  xmm10,r15d
    2989c6298250:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c6298255:	c5 29 fe d6                                     	vpaddd xmm10,xmm10,xmm6
    2989c6298259:	45 8b f9                                        	mov    r15d,r9d
    2989c629825c:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    2989c6298261:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c6298266:	c5 21 fe dd                                     	vpaddd xmm11,xmm11,xmm5
    2989c629826a:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    2989c629826f:	45 8b fc                                        	mov    r15d,r12d
    2989c6298272:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    2989c6298277:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c629827c:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    2989c6298280:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    2989c6298285:	c4 41 78 50 fa                                  	vmovmskps r15d,xmm10
    2989c629828a:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    2989c629828e:	41 83 e7 03                                     	and    r15d,0x3
    2989c6298292:	45 85 ff                                        	test   r15d,r15d
    2989c6298295:	0f 85 0c 00 00 00                               	jne    0x2989c62982a7
    2989c629829b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629829e:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c62982a2:	e9 b6 53 00 00                                  	jmp    0x2989c629d65d
    2989c62982a7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c62982ab:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c62982ae:	e9 42 01 00 00                                  	jmp    0x2989c62983f5
    2989c62982b3:	4e 8d 3c 0b                                     	lea    r15,[rbx+r9*1]
    2989c62982b7:	4a 8d 1c 3e                                     	lea    rbx,[rsi+r15*1]
    2989c62982bb:	48 85 db                                        	test   rbx,rbx
    2989c62982be:	0f 8c 92 53 00 00                               	jl     0x2989c629d656
    2989c62982c4:	4a 8d 1c 01                                     	lea    rbx,[rcx+r8*1]
    2989c62982c8:	49 8d 34 1b                                     	lea    rsi,[r11+rbx*1]
    2989c62982cc:	48 85 f6                                        	test   rsi,rsi
    2989c62982cf:	0f 8c 81 53 00 00                               	jl     0x2989c629d656
    2989c62982d5:	4a 8d 34 20                                     	lea    rsi,[rax+r12*1]
    2989c62982d9:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    2989c62982dd:	4d 85 e4                                        	test   r12,r12
    2989c62982e0:	0f 8c 70 53 00 00                               	jl     0x2989c629d656
    2989c62982e6:	4c 8b a5 60 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x3a0]
    2989c62982ed:	4b 8d 3c 3c                                     	lea    rdi,[r12+r15*1]
    2989c62982f1:	48 85 ff                                        	test   rdi,rdi
    2989c62982f4:	0f 8c 48 00 00 00                               	jl     0x2989c6298342
    2989c62982fa:	48 8b bd a8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x358]
    2989c6298301:	4c 8d 24 1f                                     	lea    r12,[rdi+rbx*1]
    2989c6298305:	4d 85 e4                                        	test   r12,r12
    2989c6298308:	0f 8c 34 00 00 00                               	jl     0x2989c6298342
    2989c629830e:	4c 8b a5 c8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x238]
    2989c6298315:	49 8d 3c 34                                     	lea    rdi,[r12+rsi*1]
    2989c6298319:	48 85 ff                                        	test   rdi,rdi
    2989c629831c:	0f 8c 20 00 00 00                               	jl     0x2989c6298342
    2989c6298322:	4c 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r9
    2989c6298329:	4c 89 85 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r8
    2989c6298330:	41 bf 03 00 00 00                               	mov    r15d,0x3
    2989c6298336:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6298339:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629833d:	e9 e2 00 00 00                                  	jmp    0x2989c6298424
    2989c6298342:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6298345:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c6298349:	49 8b 84 3c d0 00 00 00                         	mov    rax,QWORD PTR [r12+rdi*1+0xd0]
    2989c6298351:	49 03 c7                                        	add    rax,r15
    2989c6298354:	48 85 c0                                        	test   rax,rax
    2989c6298357:	0f 8c 2d 00 00 00                               	jl     0x2989c629838a
    2989c629835d:	49 8b 84 3c d8 00 00 00                         	mov    rax,QWORD PTR [r12+rdi*1+0xd8]
    2989c6298365:	48 03 c3                                        	add    rax,rbx
    2989c6298368:	48 85 c0                                        	test   rax,rax
    2989c629836b:	0f 8c 19 00 00 00                               	jl     0x2989c629838a
    2989c6298371:	49 8b 84 3c e0 00 00 00                         	mov    rax,QWORD PTR [r12+rdi*1+0xe0]
    2989c6298379:	48 03 c6                                        	add    rax,rsi
    2989c629837c:	48 85 c0                                        	test   rax,rax
    2989c629837f:	0f 9d c0                                        	setge  al
    2989c6298382:	0f b6 c0                                        	movzx  eax,al
    2989c6298385:	e9 02 00 00 00                                  	jmp    0x2989c629838c
    2989c629838a:	33 c0                                           	xor    eax,eax
    2989c629838c:	4d 8b 9c 3c e8 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xe8]
    2989c6298394:	4d 03 df                                        	add    r11,r15
    2989c6298397:	4d 85 db                                        	test   r11,r11
    2989c629839a:	0f 8c 4c 00 00 00                               	jl     0x2989c62983ec
    2989c62983a0:	4d 8b 9c 3c f0 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xf0]
    2989c62983a8:	4c 03 db                                        	add    r11,rbx
    2989c62983ab:	4d 85 db                                        	test   r11,r11
    2989c62983ae:	0f 8c 2f 00 00 00                               	jl     0x2989c62983e3
    2989c62983b4:	4d 8b 9c 3c f8 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xf8]
    2989c62983bc:	4c 03 de                                        	add    r11,rsi
    2989c62983bf:	4d 85 db                                        	test   r11,r11
    2989c62983c2:	0f 8c 0b 00 00 00                               	jl     0x2989c62983d3
    2989c62983c8:	83 c8 02                                        	or     eax,0x2
    2989c62983cb:	44 8b f8                                        	mov    r15d,eax
    2989c62983ce:	e9 22 00 00 00                                  	jmp    0x2989c62983f5
    2989c62983d3:	85 c0                                           	test   eax,eax
    2989c62983d5:	0f 84 82 52 00 00                               	je     0x2989c629d65d
    2989c62983db:	44 8b f8                                        	mov    r15d,eax
    2989c62983de:	e9 12 00 00 00                                  	jmp    0x2989c62983f5
    2989c62983e3:	85 c0                                           	test   eax,eax
    2989c62983e5:	75 f4                                           	jne    0x2989c62983db
    2989c62983e7:	e9 71 52 00 00                                  	jmp    0x2989c629d65d
    2989c62983ec:	85 c0                                           	test   eax,eax
    2989c62983ee:	75 eb                                           	jne    0x2989c62983db
    2989c62983f0:	e9 68 52 00 00                                  	jmp    0x2989c629d65d
    2989c62983f5:	4c 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r9
    2989c62983fc:	4c 89 85 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r8
    2989c6298403:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6298407:	0f 85 17 00 00 00                               	jne    0x2989c6298424
    2989c629840d:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    2989c6298414:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    2989c6298418:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    2989c629841f:	e9 7b 01 00 00                                  	jmp    0x2989c629859f
    2989c6298424:	4d 8b 9c 3c d0 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xd0]
    2989c629842c:	4d 03 d9                                        	add    r11,r9
    2989c629842f:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    2989c6298434:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    2989c6298439:	c4 41 5a 5c da                                  	vsubss xmm11,xmm4,xmm10
    2989c629843e:	4d 8b 9c 3c d8 00 00 00                         	mov    r11,QWORD PTR [r12+rdi*1+0xd8]
    2989c6298446:	4d 03 d8                                        	add    r11,r8
    2989c6298449:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    2989c629844e:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    2989c6298452:	c5 22 5c d8                                     	vsubss xmm11,xmm11,xmm0
    2989c6298456:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    2989c629845d:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    2989c6298464:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    2989c629846b:	c4 41 2a 59 54 04 18                            	vmulss xmm10,xmm10,DWORD PTR [r12+rax*1+0x18]
    2989c6298472:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    2989c6298479:	c4 c1 7a 10 6c 1c 18                            	vmovss xmm5,DWORD PTR [r12+rbx*1+0x18]
    2989c6298480:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    2989c6298484:	c5 aa 58 c0                                     	vaddss xmm0,xmm10,xmm0
    2989c6298488:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    2989c629848c:	c5 fa 58 85 40 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x2c0]
    2989c6298494:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    2989c6298498:	0f 87 09 00 00 00                               	ja     0x2989c62984a7
    2989c629849e:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c62984a2:	e9 04 00 00 00                                  	jmp    0x2989c62984ab
    2989c62984a7:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    2989c62984ab:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c62984af:	0f 87 09 00 00 00                               	ja     0x2989c62984be
    2989c62984b5:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    2989c62984b9:	e9 04 00 00 00                                  	jmp    0x2989c62984c2
    2989c62984be:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c62984c2:	c4 c1 7a 11 04 3c                               	vmovss DWORD PTR [r12+rdi*1],xmm0
    2989c62984c8:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    2989c62984cc:	41 8b 4c 34 68                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x68]
    2989c62984d1:	41 83 7c 34 68 00                               	cmp    DWORD PTR [r12+rsi*1+0x68],0x0
    2989c62984d7:	0f 84 c2 00 00 00                               	je     0x2989c629859f
    2989c62984dd:	41 8b 8c 34 a4 00 00 00                         	mov    ecx,DWORD PTR [r12+rsi*1+0xa4]
    2989c62984e5:	41 83 bc 34 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rsi*1+0xa4],0x0
    2989c62984ee:	0f 85 ab 00 00 00                               	jne    0x2989c629859f
    2989c62984f4:	41 8b 4c 34 1c                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x1c]
    2989c62984f9:	41 8b 1c 34                                     	mov    ebx,DWORD PTR [r12+rsi*1]
    2989c62984fd:	0f af 5d d0                                     	imul   ebx,DWORD PTR [rbp-0x30]
    2989c6298501:	03 da                                           	add    ebx,edx
    2989c6298503:	8d 1c d9                                        	lea    ebx,[rcx+rbx*8]
    2989c6298506:	c4 c1 7a 10 2c 1c                               	vmovss xmm5,DWORD PTR [r12+rbx*1]
    2989c629850c:	41 8b 5c 34 6c                                  	mov    ebx,DWORD PTR [r12+rsi*1+0x6c]
    2989c6298511:	81 eb 00 02 00 00                               	sub    ebx,0x200
    2989c6298517:	83 fb 08                                        	cmp    ebx,0x8
    2989c629851a:	0f 83 0b 00 00 00                               	jae    0x2989c629852b
    2989c6298520:	4c 8d 15 99 6e 00 00                            	lea    r10,[rip+0x6e99]        # 0x2989c629f3c0
    2989c6298527:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    2989c629852b:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c629852f:	0f 87 6a 00 00 00                               	ja     0x2989c629859f
    2989c6298535:	e9 61 00 00 00                                  	jmp    0x2989c629859b
    2989c629853a:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629853e:	0f 83 5b 00 00 00                               	jae    0x2989c629859f
    2989c6298544:	e9 52 00 00 00                                  	jmp    0x2989c629859b
    2989c6298549:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c629854d:	0f 8a 4c 00 00 00                               	jp     0x2989c629859f
    2989c6298553:	0f 84 42 00 00 00                               	je     0x2989c629859b
    2989c6298559:	e9 41 00 00 00                                  	jmp    0x2989c629859f
    2989c629855e:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6298562:	0f 87 37 00 00 00                               	ja     0x2989c629859f
    2989c6298568:	e9 2e 00 00 00                                  	jmp    0x2989c629859b
    2989c629856d:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6298571:	0f 83 28 00 00 00                               	jae    0x2989c629859f
    2989c6298577:	e9 1f 00 00 00                                  	jmp    0x2989c629859b
    2989c629857c:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6298580:	0f 8a 15 00 00 00                               	jp     0x2989c629859b
    2989c6298586:	0f 84 13 00 00 00                               	je     0x2989c629859f
    2989c629858c:	e9 0a 00 00 00                                  	jmp    0x2989c629859b
    2989c6298591:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6298595:	0f 87 04 00 00 00                               	ja     0x2989c629859f
    2989c629859b:	41 83 e7 02                                     	and    r15d,0x2
    2989c629859f:	41 f6 c7 02                                     	test   r15b,0x2
    2989c62985a3:	0f 85 23 00 00 00                               	jne    0x2989c62985cc
    2989c62985a9:	45 85 ff                                        	test   r15d,r15d
    2989c62985ac:	0f 85 0e 00 00 00                               	jne    0x2989c62985c0
    2989c62985b2:	44 8b cf                                        	mov    r9d,edi
    2989c62985b5:	49 8b fc                                        	mov    rdi,r12
    2989c62985b8:	4c 8b c6                                        	mov    r8,rsi
    2989c62985bb:	e9 e0 15 00 00                                  	jmp    0x2989c6299ba0
    2989c62985c0:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    2989c62985c7:	e9 75 01 00 00                                  	jmp    0x2989c6298741
    2989c62985cc:	49 8b 9c 3c e8 00 00 00                         	mov    rbx,QWORD PTR [r12+rdi*1+0xe8]
    2989c62985d4:	49 03 d9                                        	add    rbx,r9
    2989c62985d7:	c4 e1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,rbx
    2989c62985dc:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    2989c62985e0:	c5 da 5c e8                                     	vsubss xmm5,xmm4,xmm0
    2989c62985e4:	49 8b 9c 3c f0 00 00 00                         	mov    rbx,QWORD PTR [r12+rdi*1+0xf0]
    2989c62985ec:	49 03 d8                                        	add    rbx,r8
    2989c62985ef:	c4 61 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,rbx
    2989c62985f4:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    2989c62985f9:	c4 c1 52 5c ea                                  	vsubss xmm5,xmm5,xmm10
    2989c62985fe:	c4 81 52 59 6c 1c 18                            	vmulss xmm5,xmm5,DWORD PTR [r12+r11*1+0x18]
    2989c6298605:	c4 c1 7a 59 44 04 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+rax*1+0x18]
    2989c629860c:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    2989c6298613:	c4 41 7a 10 5c 1c 18                            	vmovss xmm11,DWORD PTR [r12+rbx*1+0x18]
    2989c629861a:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    2989c629861f:	c4 c1 7a 58 c2                                  	vaddss xmm0,xmm0,xmm10
    2989c6298624:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    2989c6298628:	c5 fa 58 85 40 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x2c0]
    2989c6298630:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    2989c6298634:	0f 87 09 00 00 00                               	ja     0x2989c6298643
    2989c629863a:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c629863e:	e9 04 00 00 00                                  	jmp    0x2989c6298647
    2989c6298643:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    2989c6298647:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c629864b:	0f 87 09 00 00 00                               	ja     0x2989c629865a
    2989c6298651:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    2989c6298655:	e9 04 00 00 00                                  	jmp    0x2989c629865e
    2989c629865a:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c629865e:	c4 c1 7a 11 44 3c 04                            	vmovss DWORD PTR [r12+rdi*1+0x4],xmm0
    2989c6298665:	41 8b 4c 34 68                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x68]
    2989c629866a:	41 83 7c 34 68 00                               	cmp    DWORD PTR [r12+rsi*1+0x68],0x0
    2989c6298670:	0f 84 cb 00 00 00                               	je     0x2989c6298741
    2989c6298676:	41 8b 8c 34 a4 00 00 00                         	mov    ecx,DWORD PTR [r12+rsi*1+0xa4]
    2989c629867e:	41 83 bc 34 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rsi*1+0xa4],0x0
    2989c6298687:	0f 85 b4 00 00 00                               	jne    0x2989c6298741
    2989c629868d:	41 8b 4c 34 1c                                  	mov    ecx,DWORD PTR [r12+rsi*1+0x1c]
    2989c6298692:	41 8b 04 34                                     	mov    eax,DWORD PTR [r12+rsi*1]
    2989c6298696:	0f af 45 d0                                     	imul   eax,DWORD PTR [rbp-0x30]
    2989c629869a:	03 c2                                           	add    eax,edx
    2989c629869c:	8d 04 c1                                        	lea    eax,[rcx+rax*8]
    2989c629869f:	c4 c1 7a 10 6c 04 04                            	vmovss xmm5,DWORD PTR [r12+rax*1+0x4]
    2989c62986a6:	41 8b 44 34 6c                                  	mov    eax,DWORD PTR [r12+rsi*1+0x6c]
    2989c62986ab:	2d 00 02 00 00                                  	sub    eax,0x200
    2989c62986b0:	83 f8 08                                        	cmp    eax,0x8
    2989c62986b3:	0f 83 0b 00 00 00                               	jae    0x2989c62986c4
    2989c62986b9:	4c 8d 15 c0 6c 00 00                            	lea    r10,[rip+0x6cc0]        # 0x2989c629f380
    2989c62986c0:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    2989c62986c4:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c62986c8:	0f 87 73 00 00 00                               	ja     0x2989c6298741
    2989c62986ce:	e9 61 00 00 00                                  	jmp    0x2989c6298734
    2989c62986d3:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62986d7:	0f 83 64 00 00 00                               	jae    0x2989c6298741
    2989c62986dd:	e9 52 00 00 00                                  	jmp    0x2989c6298734
    2989c62986e2:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c62986e6:	0f 8a 55 00 00 00                               	jp     0x2989c6298741
    2989c62986ec:	0f 84 42 00 00 00                               	je     0x2989c6298734
    2989c62986f2:	e9 4a 00 00 00                                  	jmp    0x2989c6298741
    2989c62986f7:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62986fb:	0f 87 40 00 00 00                               	ja     0x2989c6298741
    2989c6298701:	e9 2e 00 00 00                                  	jmp    0x2989c6298734
    2989c6298706:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c629870a:	0f 83 31 00 00 00                               	jae    0x2989c6298741
    2989c6298710:	e9 1f 00 00 00                                  	jmp    0x2989c6298734
    2989c6298715:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6298719:	0f 8a 15 00 00 00                               	jp     0x2989c6298734
    2989c629871f:	0f 84 1c 00 00 00                               	je     0x2989c6298741
    2989c6298725:	e9 0a 00 00 00                                  	jmp    0x2989c6298734
    2989c629872a:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c629872e:	0f 87 0d 00 00 00                               	ja     0x2989c6298741
    2989c6298734:	41 83 e7 01                                     	and    r15d,0x1
    2989c6298738:	45 85 ff                                        	test   r15d,r15d
    2989c629873b:	0f 84 71 fe ff ff                               	je     0x2989c62985b2
    2989c6298741:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    2989c6298748:	41 83 ff 03                                     	cmp    r15d,0x3
    2989c629874c:	0f 84 1e 00 00 00                               	je     0x2989c6298770
    2989c6298752:	8d 87 d0 00 00 00                               	lea    eax,[rdi+0xd0]
    2989c6298758:	f3 41 0f bc cf                                  	tzcnt  ecx,r15d
    2989c629875d:	6b c9 18                                        	imul   ecx,ecx,0x18
    2989c6298760:	03 c1                                           	add    eax,ecx
    2989c6298762:	49 8b 4c 04 08                                  	mov    rcx,QWORD PTR [r12+rax*1+0x8]
    2989c6298767:	49 8b 04 04                                     	mov    rax,QWORD PTR [r12+rax*1]
    2989c629876b:	e9 0e 00 00 00                                  	jmp    0x2989c629877e
    2989c6298770:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    2989c6298777:	48 8b 85 f8 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x408]
    2989c629877e:	49 03 c8                                        	add    rcx,r8
    2989c6298781:	49 03 c1                                        	add    rax,r9
    2989c6298784:	83 bd 28 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2d8],0x0
    2989c629878b:	0f 85 6c 14 00 00                               	jne    0x2989c6299bfd
    2989c6298791:	c4 81 7a 10 44 1c 1c                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x1c]
    2989c6298798:	c4 c1 7a 10 6c 1c 1c                            	vmovss xmm5,DWORD PTR [r12+rbx*1+0x1c]
    2989c629879f:	4c 8b 85 f8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x108]
    2989c62987a6:	c4 01 7a 10 54 04 1c                            	vmovss xmm10,DWORD PTR [r12+r8*1+0x1c]
    2989c62987ad:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    2989c62987b4:	45 8b bc 34 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+rsi*1+0x3cc8]
    2989c62987bc:	41 83 bc 34 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rsi*1+0x3cc8],0x0
    2989c62987c5:	0f 84 5f 00 00 00                               	je     0x2989c629882a
    2989c62987cb:	44 8b fa                                        	mov    r15d,edx
    2989c62987ce:	41 c1 ef 03                                     	shr    r15d,0x3
    2989c62987d2:	41 83 e7 03                                     	and    r15d,0x3
    2989c62987d6:	8b 95 f8 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x308]
    2989c62987dc:	41 0b d7                                        	or     edx,r15d
    2989c62987df:	44 8b bd 78 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x188]
    2989c62987e6:	41 03 d7                                        	add    edx,r15d
    2989c62987e9:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    2989c62987ee:	44 8b bd 00 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x200]
    2989c62987f5:	41 83 e7 07                                     	and    r15d,0x7
    2989c62987f9:	4c 8b d1                                        	mov    r10,rcx
    2989c62987fc:	41 8b cf                                        	mov    ecx,r15d
    2989c62987ff:	4d 8b fa                                        	mov    r15,r10
    2989c6298802:	d3 e2                                           	shl    edx,cl
    2989c6298804:	f6 c2 80                                        	test   dl,0x80
    2989c6298807:	0f 85 14 00 00 00                               	jne    0x2989c6298821
    2989c629880d:	44 8b cf                                        	mov    r9d,edi
    2989c6298810:	49 8b fc                                        	mov    rdi,r12
    2989c6298813:	4c 8b c6                                        	mov    r8,rsi
    2989c6298816:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c629881c:	e9 7f 13 00 00                                  	jmp    0x2989c6299ba0
    2989c6298821:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c6298827:	49 8b cf                                        	mov    rcx,r15
    2989c629882a:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    2989c629882f:	c4 41 62 59 db                                  	vmulss xmm11,xmm3,xmm11
    2989c6298834:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    2989c6298839:	c4 e1 82 2a f1                                  	vcvtsi2ss xmm6,xmm15,rcx
    2989c629883e:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    2989c6298842:	c5 ca 59 ed                                     	vmulss xmm5,xmm6,xmm5
    2989c6298846:	c5 2a 58 c5                                     	vaddss xmm8,xmm10,xmm5
    2989c629884a:	c4 41 5a 5c db                                  	vsubss xmm11,xmm4,xmm11
    2989c629884f:	c5 a2 5c f6                                     	vsubss xmm6,xmm11,xmm6
    2989c6298853:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c6298857:	c5 ba 58 f0                                     	vaddss xmm6,xmm8,xmm0
    2989c629885b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c629885f:	0f 83 4d fd ff ff                               	jae    0x2989c62985b2
    2989c6298865:	c5 da 5e f6                                     	vdivss xmm6,xmm4,xmm6
    2989c6298869:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    2989c629886d:	c4 62 79 18 c6                                  	vbroadcastss xmm8,xmm6
    2989c6298872:	c4 01 7a 6f 5c 1c 20                            	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x20]
    2989c6298879:	c5 fb 11 b5 c0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x240],xmm6
    2989c6298881:	c4 e2 79 18 f0                                  	vbroadcastss xmm6,xmm0
    2989c6298886:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    2989c629888a:	c4 01 7a 6f 5c 04 20                            	vmovdqu xmm11,XMMWORD PTR [r12+r8*1+0x20]
    2989c6298891:	c5 fb 11 85 20 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2e0],xmm0
    2989c6298899:	c4 c2 79 18 c2                                  	vbroadcastss xmm0,xmm10
    2989c629889e:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    2989c62988a2:	c4 62 79 18 dd                                  	vbroadcastss xmm11,xmm5
    2989c62988a7:	c5 fb 11 ad 40 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3c0],xmm5
    2989c62988af:	c4 c1 7a 6f 6c 1c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+rbx*1+0x20]
    2989c62988b6:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    2989c62988ba:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c62988be:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    2989c62988c2:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c62988c6:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    2989c62988d0:	c4 81 7a 10 ac 1c 98 00 00 00                   	vmovss xmm5,DWORD PTR [r12+r11*1+0x98]
    2989c62988da:	c4 81 7a 10 b4 04 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+r8*1+0x98]
    2989c62988e4:	c4 41 7a 10 84 1c 98 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rbx*1+0x98]
    2989c62988ee:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    2989c62988f8:	44 8b bd 08 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xf8]
    2989c62988ff:	43 8b 84 3c 34 01 00 00                         	mov    eax,DWORD PTR [r12+r15*1+0x134]
    2989c6298907:	8d 48 ff                                        	lea    ecx,[rax-0x1]
    2989c629890a:	c5 7b 11 95 10 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2f0],xmm10
    2989c6298912:	c5 fb 11 ad 80 fd ff ff                         	vmovsd QWORD PTR [rbp-0x280],xmm5
    2989c629891a:	c5 fb 11 b5 90 fc ff ff                         	vmovsd QWORD PTR [rbp-0x370],xmm6
    2989c6298922:	c5 7b 11 85 50 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3b0],xmm8
    2989c629892a:	83 f9 01                                        	cmp    ecx,0x1
    2989c629892d:	0f 86 b3 04 00 00                               	jbe    0x2989c6298de6
    2989c6298933:	43 8b 84 3c 30 01 00 00                         	mov    eax,DWORD PTR [r12+r15*1+0x130]
    2989c629893b:	43 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0x130],0x0
    2989c6298944:	0f 85 0b 00 00 00                               	jne    0x2989c6298955
    2989c629894a:	44 8b cf                                        	mov    r9d,edi
    2989c629894d:	49 8b fc                                        	mov    rdi,r12
    2989c6298950:	e9 3a 05 00 00                                  	jmp    0x2989c6298e8f
    2989c6298955:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    2989c629895b:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    2989c6298961:	51                                              	push   rcx
    2989c6298962:	4c 89 bd b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r15
    2989c6298969:	48 89 85 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rax
    2989c6298970:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298974:	44 8b c8                                        	mov    r9d,eax
    2989c6298977:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    2989c629897d:	8b 95 58 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3a8]
    2989c6298983:	8b 8d 98 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x368]
    2989c6298989:	8b 9d f0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x310]
    2989c629898f:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    2989c6298994:	c5 fb 10 95 40 fc ff ff                         	vmovsd xmm2,QWORD PTR [rbp-0x3c0]
    2989c629899c:	c5 fb 10 9d 20 fd ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x2e0]
    2989c62989a4:	c5 fb 10 a5 c0 fd ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x240]
    2989c62989ac:	e8 67 28 ee ff                                  	call   0x2989c617b218
    2989c62989b1:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c62989b5:	4c 8b 85 b8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x248]
    2989c62989bc:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    2989c62989c4:	45 85 c0                                        	test   r8d,r8d
    2989c62989c7:	0f 85 9a 01 00 00                               	jne    0x2989c6298b67
    2989c62989cd:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c62989d1:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    2989c62989d9:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    2989c62989e2:	0f 84 4b 00 00 00                               	je     0x2989c6298a33
    2989c62989e8:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c62989ef:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c62989f6:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c62989fd:	41 50                                           	push   r8
    2989c62989ff:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298a03:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    2989c6298a09:	33 d2                                           	xor    edx,edx
    2989c6298a0b:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    2989c6298a12:	e8 29 28 ee ff                                  	call   0x2989c617b240
    2989c6298a17:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6298a1b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6298a1f:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c6298a29:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c6298a33:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    2989c6298a3b:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    2989c6298a44:	0f 84 4e 00 00 00                               	je     0x2989c6298a98
    2989c6298a4a:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c6298a51:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c6298a58:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c6298a5f:	41 50                                           	push   r8
    2989c6298a61:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298a65:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    2989c6298a6b:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6298a70:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    2989c6298a77:	e8 c4 27 ee ff                                  	call   0x2989c617b240
    2989c6298a7c:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6298a80:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6298a84:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c6298a8e:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c6298a98:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    2989c6298aa0:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    2989c6298aa9:	0f 84 4e 00 00 00                               	je     0x2989c6298afd
    2989c6298aaf:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c6298ab6:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c6298abd:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c6298ac4:	41 50                                           	push   r8
    2989c6298ac6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298aca:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    2989c6298ad0:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c6298ad5:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    2989c6298adc:	e8 5f 27 ee ff                                  	call   0x2989c617b240
    2989c6298ae1:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6298ae5:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6298ae9:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c6298af3:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c6298afd:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    2989c6298b05:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    2989c6298b0e:	0f 84 7b 03 00 00                               	je     0x2989c6298e8f
    2989c6298b14:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c6298b1b:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c6298b22:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c6298b29:	41 50                                           	push   r8
    2989c6298b2b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298b2f:	8b 85 e8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x118]
    2989c6298b35:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c6298b3a:	44 8b 8d 48 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3b8]
    2989c6298b41:	e8 fa 26 ee ff                                  	call   0x2989c617b240
    2989c6298b46:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6298b4a:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6298b4e:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c6298b58:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c6298b62:	e9 28 03 00 00                                  	jmp    0x2989c6298e8f
    2989c6298b67:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6298b6b:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    2989c6298b75:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c6298b7b:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c6298b80:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6298b84:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    2989c6298b8e:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c6298b92:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c6298b96:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    2989c6298ba0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c6298ba4:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    2989c6298bae:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c6298bb2:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    2989c6298bb6:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    2989c6298bc0:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c6298bc4:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    2989c6298bce:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    2989c6298bd2:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    2989c6298bd6:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    2989c6298bda:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6298bde:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c6298be4:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c6298be9:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    2989c6298bed:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6298bf1:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c6298bf6:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c6298bfb:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6298bff:	0f 87 09 00 00 00                               	ja     0x2989c6298c0e
    2989c6298c05:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6298c09:	e9 04 00 00 00                                  	jmp    0x2989c6298c12
    2989c6298c0e:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c6298c12:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6298c16:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c6298c1a:	0f 87 09 00 00 00                               	ja     0x2989c6298c29
    2989c6298c20:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c6298c24:	e9 04 00 00 00                                  	jmp    0x2989c6298c2d
    2989c6298c29:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c6298c2d:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c6298c32:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c6298c36:	0f 84 a3 00 00 00                               	je     0x2989c6298cdf
    2989c6298c3c:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c6298c40:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    2989c6298c4a:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6298c4e:	0f 87 09 00 00 00                               	ja     0x2989c6298c5d
    2989c6298c54:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c6298c58:	e9 04 00 00 00                                  	jmp    0x2989c6298c61
    2989c6298c5d:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c6298c61:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6298c65:	0f 87 0a 00 00 00                               	ja     0x2989c6298c75
    2989c6298c6b:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c6298c70:	e9 04 00 00 00                                  	jmp    0x2989c6298c79
    2989c6298c75:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6298c79:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c6298c7d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6298c82:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c6298c87:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6298c8b:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    2989c6298c95:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6298c9a:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6298c9f:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c6298ca3:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    2989c6298cad:	41 83 f8 03                                     	cmp    r8d,0x3
    2989c6298cb1:	0f 85 04 00 00 00                               	jne    0x2989c6298cbb
    2989c6298cb7:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    2989c6298cbb:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    2989c6298cc0:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6298cc4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c6298cc8:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    2989c6298cd2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c6298cd7:	4d 8b c4                                        	mov    r8,r12
    2989c6298cda:	e9 cd 00 00 00                                  	jmp    0x2989c6298dac
    2989c6298cdf:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    2989c6298ce9:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6298ced:	0f 87 09 00 00 00                               	ja     0x2989c6298cfc
    2989c6298cf3:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c6298cf7:	e9 04 00 00 00                                  	jmp    0x2989c6298d00
    2989c6298cfc:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c6298d00:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6298d04:	0f 87 0a 00 00 00                               	ja     0x2989c6298d14
    2989c6298d0a:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c6298d0f:	e9 04 00 00 00                                  	jmp    0x2989c6298d18
    2989c6298d14:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6298d18:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    2989c6298d22:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    2989c6298d28:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    2989c6298d2d:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6298d31:	0f 87 09 00 00 00                               	ja     0x2989c6298d40
    2989c6298d37:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c6298d3b:	e9 04 00 00 00                                  	jmp    0x2989c6298d44
    2989c6298d40:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    2989c6298d44:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6298d48:	0f 87 0a 00 00 00                               	ja     0x2989c6298d58
    2989c6298d4e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c6298d53:	e9 04 00 00 00                                  	jmp    0x2989c6298d5c
    2989c6298d58:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6298d5c:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    2989c6298d66:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6298d6b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6298d6f:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    2989c6298d79:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    2989c6298d7e:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c6298d83:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c6298d87:	4c 8b 15 ff fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeff]        # 0x2989c6298c8d
    2989c6298d8e:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6298d93:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6298d98:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6298d9c:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6298da0:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c6298da4:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6298da8:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    2989c6298dac:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c6298db1:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6298db5:	4c 8b 15 d1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed1]        # 0x2989c6298c8d
    2989c6298dbc:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6298dc1:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c6298dc6:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    2989c6298dca:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    2989c6298dd4:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    2989c6298dde:	45 8b cb                                        	mov    r9d,r11d
    2989c6298de1:	e9 a9 00 00 00                                  	jmp    0x2989c6298e8f
    2989c6298de6:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    2989c6298ded:	c5 fa 59 85 20 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e0]
    2989c6298df5:	c4 01 7a 10 4c 04 50                            	vmovss xmm9,DWORD PTR [r12+r8*1+0x50]
    2989c6298dfc:	c4 41 32 59 ca                                  	vmulss xmm9,xmm9,xmm10
    2989c6298e01:	4c 8b fb                                        	mov    r15,rbx
    2989c6298e04:	c5 7b 10 9d 40 fc ff ff                         	vmovsd xmm11,QWORD PTR [rbp-0x3c0]
    2989c6298e0c:	c4 81 22 59 4c 3c 50                            	vmulss xmm1,xmm11,DWORD PTR [r12+r15*1+0x50]
    2989c6298e13:	c5 32 58 c9                                     	vaddss xmm9,xmm9,xmm1
    2989c6298e17:	c4 c1 7a 58 c1                                  	vaddss xmm0,xmm0,xmm9
    2989c6298e1c:	c5 7b 10 8d c0 fd ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x240]
    2989c6298e24:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    2989c6298e28:	c4 81 7a 10 44 1c 54                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x54]
    2989c6298e2f:	c5 fa 59 85 20 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e0]
    2989c6298e37:	c4 81 7a 10 54 04 54                            	vmovss xmm2,DWORD PTR [r12+r8*1+0x54]
    2989c6298e3e:	c4 c1 6a 59 d2                                  	vmulss xmm2,xmm2,xmm10
    2989c6298e43:	c4 81 22 59 6c 3c 54                            	vmulss xmm5,xmm11,DWORD PTR [r12+r15*1+0x54]
    2989c6298e4a:	c5 ea 58 ed                                     	vaddss xmm5,xmm2,xmm5
    2989c6298e4e:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6298e52:	c5 b2 59 d0                                     	vmulss xmm2,xmm9,xmm0
    2989c6298e56:	8d 8f 90 02 00 00                               	lea    ecx,[rdi+0x290]
    2989c6298e5c:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    2989c6298e62:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298e66:	8b d0                                           	mov    edx,eax
    2989c6298e68:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    2989c6298e6e:	e8 bd 26 ee ff                                  	call   0x2989c617b530
    2989c6298e73:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6298e77:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6298e7b:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    2989c6298e85:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c6298e8f:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6298e93:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    2989c6298e9b:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    2989c6298ea4:	0f 84 c5 01 00 00                               	je     0x2989c629906f
    2989c6298eaa:	c5 fb 10 85 80 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x280]
    2989c6298eb2:	c5 fa 59 85 20 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2e0]
    2989c6298eba:	c5 fb 10 ad 90 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x370]
    2989c6298ec2:	c5 d2 59 ad 10 fd ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x2f0]
    2989c6298eca:	c5 fb 10 b5 40 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3c0]
    2989c6298ed2:	c5 ca 59 b5 50 fc ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x3b0]
    2989c6298eda:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c6298ede:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6298ee2:	c5 fb 10 ad c0 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x240]
    2989c6298eea:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    2989c6298eee:	4c 8b 15 7c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77c]        # 0x2989c6297671
    2989c6298ef5:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c6298efa:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c6298efe:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    2989c6298f02:	0f 87 04 00 00 00                               	ja     0x2989c6298f0c
    2989c6298f08:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6298f0c:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    2989c6298f14:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    2989c6298f1b:	0f 85 28 00 00 00                               	jne    0x2989c6298f49
    2989c6298f21:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    2989c6298f2b:	4c 8b 15 3f e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73f]        # 0x2989c6297671
    2989c6298f32:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6298f37:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    2989c6298f3b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298f3f:	e8 74 46 ee ff                                  	call   0x2989c617d5b8
    2989c6298f44:	e9 89 00 00 00                                  	jmp    0x2989c6298fd2
    2989c6298f49:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c6298f4d:	0f 84 5c 00 00 00                               	je     0x2989c6298faf
    2989c6298f53:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    2989c6298f5d:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    2989c6298f67:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    2989c6298f6b:	7a 06                                           	jp     0x2989c6298f73
    2989c6298f6d:	0f 84 29 00 00 00                               	je     0x2989c6298f9c
    2989c6298f73:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    2989c6298f77:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    2989c6298f7b:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c6298f7f:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    2989c6298f83:	0f 86 49 00 00 00                               	jbe    0x2989c6298fd2
    2989c6298f89:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6298f8d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6298f92:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6298f97:	e9 5b 00 00 00                                  	jmp    0x2989c6298ff7
    2989c6298f9c:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6298fa0:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6298fa5:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6298faa:	e9 44 00 00 00                                  	jmp    0x2989c6298ff3
    2989c6298faf:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    2989c6298fb9:	4c 8b 15 b1 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6b1]        # 0x2989c6297671
    2989c6298fc0:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c6298fc5:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    2989c6298fc9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6298fcd:	e8 e6 45 ee ff                                  	call   0x2989c617d5b8
    2989c6298fd2:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6298fd6:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6298fdb:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6298fe0:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c6298fe4:	0f 87 09 00 00 00                               	ja     0x2989c6298ff3
    2989c6298fea:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    2989c6298fee:	e9 04 00 00 00                                  	jmp    0x2989c6298ff7
    2989c6298ff3:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6298ff7:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6298ffb:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6298fff:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    2989c6299009:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    2989c629900d:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6299011:	c4 21 42 59 84 07 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x100]
    2989c629901b:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c6299020:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    2989c629902a:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    2989c6299034:	c4 21 42 59 84 07 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x104]
    2989c629903e:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c6299043:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    2989c629904d:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    2989c6299057:	c4 a1 42 59 b4 07 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [rdi+r8*1+0x108]
    2989c6299061:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c6299065:	c4 a1 7a 11 ac 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm5
    2989c629906f:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    2989c6299079:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    2989c6299083:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c629908a:	0f 85 da 0a 00 00                               	jne    0x2989c6299b6a
    2989c6299090:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    2989c6299095:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    2989c629909b:	0f 85 8e 0a 00 00                               	jne    0x2989c6299b2f
    2989c62990a1:	4c 8b 15 e5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe5]        # 0x2989c6298c8d
    2989c62990a8:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c62990ad:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c62990b1:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c62990b5:	c4 a1 7a 6f b4 0f 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1+0x280]
    2989c62990bf:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    2989c62990c3:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    2989c62990c8:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    2989c62990cc:	4c 8b 15 ba fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbba]        # 0x2989c6298c8d
    2989c62990d3:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c62990d8:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c62990dc:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    2989c62990e1:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    2989c62990e5:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c62990e9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62990ee:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    2989c62990f8:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c62990fd:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6299101:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6299105:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    2989c629910f:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6299114:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6299118:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629911c:	49 ba 40 b9 f4 10 58 57 00 00                   	movabs r10,0x575810f4b940
    2989c6299126:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c629912b:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    2989c6299130:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c6299136:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    2989c629913a:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    2989c629913f:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    2989c6299149:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629914e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6299152:	4c 8b 15 bc d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd7bc]        # 0x2989c6296915
    2989c6299159:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c629915e:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    2989c6299168:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c629916d:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c6299172:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    2989c6299178:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    2989c629917c:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    2989c6299180:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299185:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    2989c629918a:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    2989c629918e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6299193:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    2989c6299197:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    2989c629919c:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c62991a2:	44 03 da                                        	add    r11d,edx
    2989c62991a5:	47 8d 24 1b                                     	lea    r12d,[r11+r11*1]
    2989c62991a9:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    2989c62991ae:	47 8d 1c df                                     	lea    r11d,[r15+r11*8]
    2989c62991b2:	83 bd 30 fe ff ff 03                            	cmp    DWORD PTR [rbp-0x1d0],0x3
    2989c62991b9:	0f 84 8b 00 00 00                               	je     0x2989c629924a
    2989c62991bf:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    2989c62991c6:	41 83 e7 01                                     	and    r15d,0x1
    2989c62991ca:	41 f7 df                                        	neg    r15d
    2989c62991cd:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    2989c62991d3:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    2989c62991da:	41 c1 e7 1e                                     	shl    r15d,0x1e
    2989c62991de:	41 c1 ff 1f                                     	sar    r15d,0x1f
    2989c62991e2:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    2989c62991e8:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    2989c62991ed:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    2989c62991f3:	0f 84 39 00 00 00                               	je     0x2989c6299232
    2989c62991f9:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    2989c62991fe:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    2989c6299204:	0f 84 28 00 00 00                               	je     0x2989c6299232
    2989c629920a:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c629920f:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    2989c6299213:	c4 a1 7b 10 34 0f                               	vmovsd xmm6,QWORD PTR [rdi+r9*1]
    2989c6299219:	c4 a1 7b 10 3c 27                               	vmovsd xmm7,QWORD PTR [rdi+r12*1]
    2989c629921f:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    2989c6299223:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    2989c6299227:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c629922c:	c4 a1 78 13 34 27                               	vmovlps QWORD PTR [rdi+r12*1],xmm6
    2989c6299232:	c4 a1 7b 10 34 1f                               	vmovsd xmm6,QWORD PTR [rdi+r11*1]
    2989c6299238:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    2989c629923c:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c6299240:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299245:	e9 33 00 00 00                                  	jmp    0x2989c629927d
    2989c629924a:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    2989c629924f:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    2989c6299255:	0f 84 22 00 00 00                               	je     0x2989c629927d
    2989c629925b:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    2989c6299260:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    2989c6299266:	0f 84 11 00 00 00                               	je     0x2989c629927d
    2989c629926c:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c6299271:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    2989c6299275:	4e 8b 3c 0f                                     	mov    r15,QWORD PTR [rdi+r9*1]
    2989c6299279:	4e 89 3c 27                                     	mov    QWORD PTR [rdi+r12*1],r15
    2989c629927d:	c4 a1 78 13 04 1f                               	vmovlps QWORD PTR [rdi+r11*1],xmm0
    2989c6299283:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    2989c6299288:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    2989c629928e:	0f 84 0c 09 00 00                               	je     0x2989c6299ba0
    2989c6299294:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    2989c6299299:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    2989c629929f:	0f 84 fb 08 00 00                               	je     0x2989c6299ba0
    2989c62992a5:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    2989c62992aa:	42 83 7c 07 14 02                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x2
    2989c62992b0:	0f 85 ea 08 00 00                               	jne    0x2989c6299ba0
    2989c62992b6:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    2989c62992bb:	45 85 db                                        	test   r11d,r11d
    2989c62992be:	0f 84 dc 08 00 00                               	je     0x2989c6299ba0
    2989c62992c4:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    2989c62992c8:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    2989c62992cc:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    2989c62992d1:	0f 84 c9 08 00 00                               	je     0x2989c6299ba0
    2989c62992d7:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    2989c62992db:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    2989c62992df:	41 83 eb 3c                                     	sub    r11d,0x3c
    2989c62992e3:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    2989c62992e7:	44 8b fa                                        	mov    r15d,edx
    2989c62992ea:	41 c1 ef 02                                     	shr    r15d,0x2
    2989c62992ee:	45 0f af fb                                     	imul   r15d,r11d
    2989c62992f2:	41 c1 e7 04                                     	shl    r15d,0x4
    2989c62992f6:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    2989c62992fa:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    2989c6299301:	45 03 dc                                        	add    r11d,r12d
    2989c6299304:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    2989c6299309:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    2989c6299310:	33 c0                                           	xor    eax,eax
    2989c6299312:	45 85 ff                                        	test   r15d,r15d
    2989c6299315:	0f 94 c0                                        	sete   al
    2989c6299318:	41 83 ff 02                                     	cmp    r15d,0x2
    2989c629931c:	41 0f 94 c7                                     	sete   r15b
    2989c6299320:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c6299324:	44 0b f8                                        	or     r15d,eax
    2989c6299327:	0f 85 0d 00 00 00                               	jne    0x2989c629933a
    2989c629932d:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    2989c6299335:	e9 66 08 00 00                                  	jmp    0x2989c6299ba0
    2989c629933a:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    2989c6299341:	8b c2                                           	mov    eax,edx
    2989c6299343:	83 e0 03                                        	and    eax,0x3
    2989c6299346:	8b 9d a0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x360]
    2989c629934c:	0b d8                                           	or     ebx,eax
    2989c629934e:	8d 04 1b                                        	lea    eax,[rbx+rbx*1]
    2989c6299351:	83 e0 3f                                        	and    eax,0x3f
    2989c6299354:	8b c8                                           	mov    ecx,eax
    2989c6299356:	49 d3 e7                                        	shl    r15,cl
    2989c6299359:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    2989c629935d:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    2989c6299362:	48 3b c3                                        	cmp    rax,rbx
    2989c6299365:	0f 84 e2 03 00 00                               	je     0x2989c629974d
    2989c629936b:	49 0b c7                                        	or     rax,r15
    2989c629936e:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    2989c6299372:	48 3b d8                                        	cmp    rbx,rax
    2989c6299375:	0f 85 25 08 00 00                               	jne    0x2989c6299ba0
    2989c629937b:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c6299380:	8b c2                                           	mov    eax,edx
    2989c6299382:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    2989c6299387:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    2989c629938b:	8b cb                                           	mov    ecx,ebx
    2989c629938d:	0f af 8d 68 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x398]
    2989c6299394:	03 c8                                           	add    ecx,eax
    2989c6299396:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c629939a:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62993a0:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c62993a5:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    2989c62993aa:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c62993af:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c62993b3:	8b cb                                           	mov    ecx,ebx
    2989c62993b5:	0f af 8d 38 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3c8]
    2989c62993bc:	03 c8                                           	add    ecx,eax
    2989c62993be:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c62993c2:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62993c8:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c62993cd:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c62993d2:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    2989c62993d7:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c62993dd:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c62993e2:	8b cb                                           	mov    ecx,ebx
    2989c62993e4:	0f af 8d 10 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3f0]
    2989c62993eb:	03 c8                                           	add    ecx,eax
    2989c62993ed:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c62993f1:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62993f7:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c62993fd:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c6299402:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    2989c6299407:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c629940d:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c6299412:	0f af 9d 70 fc ff ff                            	imul   ebx,DWORD PTR [rbp-0x390]
    2989c6299419:	03 c3                                           	add    eax,ebx
    2989c629941b:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    2989c629941f:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    2989c6299426:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c629942c:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c6299431:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    2989c6299437:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c629943d:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c6299442:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c6299447:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c629944c:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    2989c6299450:	41 83 ff 0f                                     	cmp    r15d,0xf
    2989c6299454:	0f 84 0e 00 00 00                               	je     0x2989c6299468
    2989c629945a:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    2989c6299463:	e9 38 07 00 00                                  	jmp    0x2989c6299ba0
    2989c6299468:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    2989c6299472:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6299477:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    2989c6299481:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6299487:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    2989c6299491:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6299496:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    2989c62994a0:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c62994a6:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    2989c62994b0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c62994b5:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    2989c62994bf:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c62994c5:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    2989c62994cf:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c62994d4:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    2989c62994de:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c62994e4:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    2989c62994ee:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c62994f3:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    2989c62994fd:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c6299503:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    2989c629950d:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6299512:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    2989c629951c:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c6299522:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    2989c629952c:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c6299531:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    2989c629953b:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6299541:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c6299546:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c629954a:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c629954f:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c6299554:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    2989c629955e:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6299564:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c6299569:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    2989c6299573:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6299578:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c629957c:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c6299581:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c6299587:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c629958c:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c6299590:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c6299594:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c6299598:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629959d:	4c 8b 15 c7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc7]        # 0x2989c629956b
    2989c62995a4:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c62995a9:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c62995ae:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c62995b3:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c62995b7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62995bc:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c62995c2:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c62995c6:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c62995cb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62995d0:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c62995d4:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c62995d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62995de:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c62995e4:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c62995e8:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c62995ed:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62995f2:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c62995f6:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c62995fb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299600:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c6299606:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c629960a:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c629960f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299614:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c6299618:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c629961d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299622:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c6299628:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629962c:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c6299631:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299636:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c629963a:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c629963f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299644:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c6299649:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c629964d:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c6299652:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299657:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c629965b:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c6299660:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299665:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c629966a:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c629966f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6299673:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6299677:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629967c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6299680:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6299684:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299689:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c629968e:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6299693:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6299698:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629969c:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c62996a0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62996a5:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    2989c62996af:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c62996b3:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c62996b7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62996bc:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    2989c62996c6:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c62996ca:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c62996ce:	45 33 ff                                        	xor    r15d,r15d
    2989c62996d1:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c62996d5:	41 0f 97 c7                                     	seta   r15b
    2989c62996d9:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    2989c62996e0:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    2989c62996e8:	0b d8                                           	or     ebx,eax
    2989c62996ea:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    2989c62996ef:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c62996f4:	bb 02 00 00 00                                  	mov    ebx,0x2
    2989c62996f9:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62996fd:	44 0f 47 fb                                     	cmova  r15d,ebx
    2989c6299701:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    2989c6299709:	0b c8                                           	or     ecx,eax
    2989c629970b:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    2989c6299710:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c6299715:	be 03 00 00 00                                  	mov    esi,0x3
    2989c629971a:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629971e:	44 0f 47 fe                                     	cmova  r15d,esi
    2989c6299722:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c6299726:	41 0b c7                                        	or     eax,r15d
    2989c6299729:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    2989c629972e:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    2989c6299735:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    2989c629973c:	44 0b f8                                        	or     r15d,eax
    2989c629973f:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    2989c6299743:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    2989c6299748:	e9 53 04 00 00                                  	jmp    0x2989c6299ba0
    2989c629974d:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    2989c6299752:	8b d8                                           	mov    ebx,eax
    2989c6299754:	83 e3 3f                                        	and    ebx,0x3f
    2989c6299757:	8b cb                                           	mov    ecx,ebx
    2989c6299759:	49 d3 ef                                        	shr    r15,cl
    2989c629975c:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6299760:	0f 84 3a 04 00 00                               	je     0x2989c6299ba0
    2989c6299766:	83 e0 01                                        	and    eax,0x1
    2989c6299769:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    2989c6299771:	45 0b f9                                        	or     r15d,r9d
    2989c6299774:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    2989c629977a:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    2989c6299781:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6299785:	0f 86 15 04 00 00                               	jbe    0x2989c6299ba0
    2989c629978b:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c6299790:	8b c2                                           	mov    eax,edx
    2989c6299792:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    2989c6299797:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    2989c629979b:	8b 8d 68 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x398]
    2989c62997a1:	0f af cb                                        	imul   ecx,ebx
    2989c62997a4:	03 c8                                           	add    ecx,eax
    2989c62997a6:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c62997aa:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62997b0:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c62997b5:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    2989c62997ba:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c62997bf:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c62997c3:	8b 8d 38 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3c8]
    2989c62997c9:	0f af cb                                        	imul   ecx,ebx
    2989c62997cc:	03 c8                                           	add    ecx,eax
    2989c62997ce:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c62997d2:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62997d8:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c62997dd:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c62997e2:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    2989c62997e7:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c62997ed:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c62997f2:	8b 8d 10 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3f0]
    2989c62997f8:	0f af cb                                        	imul   ecx,ebx
    2989c62997fb:	03 c8                                           	add    ecx,eax
    2989c62997fd:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c6299801:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c6299807:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c629980d:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c6299812:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    2989c6299817:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c629981d:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c6299822:	8b 8d 70 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x390]
    2989c6299828:	0f af cb                                        	imul   ecx,ebx
    2989c629982b:	03 c1                                           	add    eax,ecx
    2989c629982d:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    2989c6299831:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    2989c6299838:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c629983e:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c6299843:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    2989c6299849:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c629984f:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c6299854:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c6299859:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c629985e:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    2989c6299862:	41 83 ff 0f                                     	cmp    r15d,0xf
    2989c6299866:	0f 84 0e 00 00 00                               	je     0x2989c629987a
    2989c629986c:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    2989c6299875:	e9 26 03 00 00                                  	jmp    0x2989c6299ba0
    2989c629987a:	4c 8b 15 e9 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe9]        # 0x2989c629946a
    2989c6299881:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6299886:	4c 8b 15 ec fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbec]        # 0x2989c6299479
    2989c629988d:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6299893:	4c 8b 15 ef fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbef]        # 0x2989c6299489
    2989c629989a:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629989f:	4c 8b 15 f2 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf2]        # 0x2989c6299498
    2989c62998a6:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c62998ac:	4c 8b 15 f5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf5]        # 0x2989c62994a8
    2989c62998b3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c62998b8:	4c 8b 15 f8 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf8]        # 0x2989c62994b7
    2989c62998bf:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c62998c5:	4c 8b 15 fb fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfb]        # 0x2989c62994c7
    2989c62998cc:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c62998d1:	4c 8b 15 fe fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfe]        # 0x2989c62994d6
    2989c62998d8:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c62998de:	4c 8b 15 01 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc01]        # 0x2989c62994e6
    2989c62998e5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c62998ea:	4c 8b 15 04 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc04]        # 0x2989c62994f5
    2989c62998f1:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c62998f7:	4c 8b 15 07 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc07]        # 0x2989c6299505
    2989c62998fe:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6299903:	4c 8b 15 0a fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0a]        # 0x2989c6299514
    2989c629990a:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c6299910:	4c 8b 15 0d fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0d]        # 0x2989c6299524
    2989c6299917:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c629991c:	4c 8b 15 10 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc10]        # 0x2989c6299533
    2989c6299923:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6299929:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c629992e:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6299932:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c6299937:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c629993c:	4c 8b 15 13 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc13]        # 0x2989c6299556
    2989c6299943:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6299949:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c629994e:	4c 8b 15 16 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc16]        # 0x2989c629956b
    2989c6299955:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c629995a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c629995e:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c6299963:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c6299969:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c629996e:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c6299972:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c6299976:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c629997a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629997f:	4c 8b 15 e5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe5]        # 0x2989c629956b
    2989c6299986:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629998b:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c6299990:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c6299995:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6299999:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629999e:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c62999a4:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c62999a8:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c62999ad:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62999b2:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c62999b6:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c62999bb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62999c0:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c62999c6:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c62999ca:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c62999cf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62999d4:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c62999d8:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c62999dd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62999e2:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c62999e8:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c62999ec:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c62999f1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62999f6:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c62999fa:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c62999ff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299a04:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c6299a0a:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6299a0e:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c6299a13:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299a18:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c6299a1c:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c6299a21:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299a26:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c6299a2b:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c6299a2f:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c6299a34:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299a39:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c6299a3d:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c6299a42:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299a47:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6299a4c:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c6299a51:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6299a55:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6299a59:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299a5e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6299a62:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6299a66:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299a6b:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c6299a70:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6299a75:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6299a7a:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6299a7e:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6299a82:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6299a87:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    2989c6299a91:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6299a95:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6299a99:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6299a9e:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    2989c6299aa8:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c6299aac:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c6299ab0:	45 33 ff                                        	xor    r15d,r15d
    2989c6299ab3:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c6299ab7:	41 0f 97 c7                                     	seta   r15b
    2989c6299abb:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    2989c6299ac2:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    2989c6299aca:	0b d8                                           	or     ebx,eax
    2989c6299acc:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    2989c6299ad1:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c6299ad6:	bb 02 00 00 00                                  	mov    ebx,0x2
    2989c6299adb:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6299adf:	44 0f 47 fb                                     	cmova  r15d,ebx
    2989c6299ae3:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    2989c6299aeb:	0b c8                                           	or     ecx,eax
    2989c6299aed:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    2989c6299af2:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c6299af7:	b9 03 00 00 00                                  	mov    ecx,0x3
    2989c6299afc:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6299b00:	44 0f 47 f9                                     	cmova  r15d,ecx
    2989c6299b04:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c6299b08:	41 0b c7                                        	or     eax,r15d
    2989c6299b0b:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    2989c6299b10:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    2989c6299b17:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    2989c6299b1e:	44 0b f8                                        	or     r15d,eax
    2989c6299b21:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    2989c6299b25:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    2989c6299b2a:	e9 71 00 00 00                                  	jmp    0x2989c6299ba0
    2989c6299b2f:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    2989c6299b36:	41 53                                           	push   r11
    2989c6299b38:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6299b3c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6299b3f:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c6299b45:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6299b48:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    2989c6299b4e:	e8 15 17 ee ff                                  	call   0x2989c617b268
    2989c6299b53:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6299b57:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6299b5b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6299b5f:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c6299b65:	e9 36 00 00 00                                  	jmp    0x2989c6299ba0
    2989c6299b6a:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    2989c6299b71:	41 53                                           	push   r11
    2989c6299b73:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6299b77:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6299b7a:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c6299b80:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6299b83:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    2989c6299b89:	e8 ca 16 ee ff                                  	call   0x2989c617b258
    2989c6299b8e:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6299b92:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6299b96:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6299b9a:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c6299ba0:	48 c7 85 30 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x1
    2989c6299bab:	4c 8b e7                                        	mov    r12,rdi
    2989c6299bae:	41 8b f9                                        	mov    edi,r9d
    2989c6299bb1:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c6299bb5:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c6299bba:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c6299bbf:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6299bc3:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    2989c6299bcb:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    2989c6299bd2:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    2989c6299bd9:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6299be0:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    2989c6299be8:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    2989c6299bf0:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    2989c6299bf8:	e9 60 3a 00 00                                  	jmp    0x2989c629d65d
    2989c6299bfd:	45 8b 44 3c 18                                  	mov    r8d,DWORD PTR [r12+rdi*1+0x18]
    2989c6299c02:	41 8d 70 01                                     	lea    esi,[r8+0x1]
    2989c6299c06:	41 89 74 3c 18                                  	mov    DWORD PTR [r12+rdi*1+0x18],esi
    2989c6299c0b:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c6299c11:	46 8d 0c 86                                     	lea    r9d,[rsi+r8*4]
    2989c6299c15:	43 89 14 0c                                     	mov    DWORD PTR [r12+r9*1],edx
    2989c6299c19:	46 8d 4c 87 2c                                  	lea    r9d,[rdi+r8*4+0x2c]
    2989c6299c1e:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c6299c21:	43 89 14 0c                                     	mov    DWORD PTR [r12+r9*1],edx
    2989c6299c25:	46 8d 4c 87 3c                                  	lea    r9d,[rdi+r8*4+0x3c]
    2989c6299c2a:	47 89 3c 0c                                     	mov    DWORD PTR [r12+r9*1],r15d
    2989c6299c2e:	46 8d 7c c7 50                                  	lea    r15d,[rdi+r8*8+0x50]
    2989c6299c33:	4b 89 04 3c                                     	mov    QWORD PTR [r12+r15*1],rax
    2989c6299c37:	46 8d 7c c7 70                                  	lea    r15d,[rdi+r8*8+0x70]
    2989c6299c3c:	4b 89 0c 3c                                     	mov    QWORD PTR [r12+r15*1],rcx
    2989c6299c40:	41 c1 e0 04                                     	shl    r8d,0x4
    2989c6299c44:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c6299c4b:	45 03 c7                                        	add    r8d,r15d
    2989c6299c4e:	49 8b 04 3c                                     	mov    rax,QWORD PTR [r12+rdi*1]
    2989c6299c52:	4b 89 04 04                                     	mov    QWORD PTR [r12+r8*1],rax
    2989c6299c56:	45 8b 44 3c 18                                  	mov    r8d,DWORD PTR [r12+rdi*1+0x18]
    2989c6299c5b:	41 83 7c 3c 18 04                               	cmp    DWORD PTR [r12+rdi*1+0x18],0x4
    2989c6299c61:	0f 84 3b 00 00 00                               	je     0x2989c6299ca2
    2989c6299c67:	48 c7 85 30 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x1
    2989c6299c72:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c6299c78:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    2989c6299c7f:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    2989c6299c86:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c6299c8d:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    2989c6299c95:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    2989c6299c9d:	e9 bb 39 00 00                                  	jmp    0x2989c629d65d
    2989c6299ca2:	c4 c1 7a 6f 44 3c 50                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x50]
    2989c6299ca9:	c4 c3 f9 16 c0 00                               	vpextrq r8,xmm0,0x0
    2989c6299caf:	c4 c1 82 2a e8                                  	vcvtsi2ss xmm5,xmm15,r8
    2989c6299cb4:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    2989c6299cb9:	c4 c3 f9 16 c0 01                               	vpextrq r8,xmm0,0x1
    2989c6299cbf:	c4 c1 82 2a c0                                  	vcvtsi2ss xmm0,xmm15,r8
    2989c6299cc4:	c4 e3 51 21 e8 10                               	vinsertps xmm5,xmm5,xmm0,0x10
    2989c6299cca:	c4 c1 7a 6f 44 3c 60                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x60]
    2989c6299cd1:	c4 c3 f9 16 c0 00                               	vpextrq r8,xmm0,0x0
    2989c6299cd7:	c4 41 82 2a c0                                  	vcvtsi2ss xmm8,xmm15,r8
    2989c6299cdc:	c4 c3 51 21 e8 20                               	vinsertps xmm5,xmm5,xmm8,0x20
    2989c6299ce2:	c4 c3 f9 16 c0 01                               	vpextrq r8,xmm0,0x1
    2989c6299ce8:	c4 c1 82 2a c0                                  	vcvtsi2ss xmm0,xmm15,r8
    2989c6299ced:	c4 e3 51 21 e8 30                               	vinsertps xmm5,xmm5,xmm0,0x30
    2989c6299cf3:	c5 f8 10 85 20 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3e0]
    2989c6299cfb:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    2989c6299cff:	4d 8d 44 24 1c                                  	lea    r8,[r12+0x1c]
    2989c6299d04:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    2989c6299d0b:	c4 42 79 18 04 00                               	vbroadcastss xmm8,DWORD PTR [r8+rax*1]
    2989c6299d11:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    2989c6299d16:	c4 41 7a 6f 4c 3c 70                            	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x70]
    2989c6299d1d:	c4 63 f9 16 c9 00                               	vpextrq rcx,xmm9,0x0
    2989c6299d23:	c4 61 82 2a d1                                  	vcvtsi2ss xmm10,xmm15,rcx
    2989c6299d28:	c4 42 79 18 d2                                  	vbroadcastss xmm10,xmm10
    2989c6299d2d:	c4 63 f9 16 c9 01                               	vpextrq rcx,xmm9,0x1
    2989c6299d33:	c4 61 82 2a c9                                  	vcvtsi2ss xmm9,xmm15,rcx
    2989c6299d38:	c4 43 29 21 d1 10                               	vinsertps xmm10,xmm10,xmm9,0x10
    2989c6299d3e:	c4 41 7a 6f 8c 3c 80 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x80]
    2989c6299d48:	c4 63 f9 16 c9 00                               	vpextrq rcx,xmm9,0x0
    2989c6299d4e:	c4 61 82 2a d9                                  	vcvtsi2ss xmm11,xmm15,rcx
    2989c6299d53:	c4 43 29 21 d3 20                               	vinsertps xmm10,xmm10,xmm11,0x20
    2989c6299d59:	c4 63 f9 16 c9 01                               	vpextrq rcx,xmm9,0x1
    2989c6299d5f:	c4 61 82 2a c9                                  	vcvtsi2ss xmm9,xmm15,rcx
    2989c6299d64:	c4 43 29 21 d1 30                               	vinsertps xmm10,xmm10,xmm9,0x30
    2989c6299d6a:	c4 41 78 59 ca                                  	vmulps xmm9,xmm0,xmm10
    2989c6299d6f:	c4 42 79 18 14 18                               	vbroadcastss xmm10,DWORD PTR [r8+rbx*1]
    2989c6299d75:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    2989c6299d7a:	c4 41 38 58 da                                  	vaddps xmm11,xmm8,xmm10
    2989c6299d7f:	4c 8b 15 07 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef07]        # 0x2989c6298c8d
    2989c6299d86:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c6299d8b:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c6299d90:	c5 98 5c ed                                     	vsubps xmm5,xmm12,xmm5
    2989c6299d94:	c4 c1 50 5c e9                                  	vsubps xmm5,xmm5,xmm9
    2989c6299d99:	c4 02 79 18 0c 18                               	vbroadcastss xmm9,DWORD PTR [r8+r11*1]
    2989c6299d9f:	c4 c1 50 59 e9                                  	vmulps xmm5,xmm5,xmm9
    2989c6299da4:	c5 20 58 cd                                     	vaddps xmm9,xmm11,xmm5
    2989c6299da8:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c6299dad:	c4 41 30 c2 eb 02                               	vcmpleps xmm13,xmm9,xmm11
    2989c6299db3:	c4 41 78 50 c5                                  	vmovmskps r8d,xmm13
    2989c6299db8:	45 8b c8                                        	mov    r9d,r8d
    2989c6299dbb:	41 83 f1 0f                                     	xor    r9d,0xf
    2989c6299dbf:	c5 78 11 a5 70 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x290],xmm12
    2989c6299dc7:	c5 78 11 9d 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm11
    2989c6299dcf:	4c 89 8d 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r9
    2989c6299dd6:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c6299dda:	0f 84 10 2c 00 00                               	je     0x2989c629c9f0
    2989c6299de0:	c4 41 18 5e c9                                  	vdivps xmm9,xmm12,xmm9
    2989c6299de5:	49 8d 4c 24 2c                                  	lea    rcx,[r12+0x2c]
    2989c6299dea:	c4 62 79 18 2c 01                               	vbroadcastss xmm13,DWORD PTR [rcx+rax*1]
    2989c6299df0:	c4 41 38 59 ed                                  	vmulps xmm13,xmm8,xmm13
    2989c6299df5:	c4 62 79 18 34 19                               	vbroadcastss xmm14,DWORD PTR [rcx+rbx*1]
    2989c6299dfb:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    2989c6299e00:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    2989c6299e05:	c4 22 79 18 34 19                               	vbroadcastss xmm14,DWORD PTR [rcx+r11*1]
    2989c6299e0b:	c4 41 50 59 f6                                  	vmulps xmm14,xmm5,xmm14
    2989c6299e10:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    2989c6299e15:	c4 41 30 59 ed                                  	vmulps xmm13,xmm9,xmm13
    2989c6299e1a:	49 8d 4c 24 28                                  	lea    rcx,[r12+0x28]
    2989c6299e1f:	c4 62 79 18 34 01                               	vbroadcastss xmm14,DWORD PTR [rcx+rax*1]
    2989c6299e25:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    2989c6299e2a:	c4 e2 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [rcx+rbx*1]
    2989c6299e30:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    2989c6299e34:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    2989c6299e38:	c4 a2 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [rcx+r11*1]
    2989c6299e3e:	c5 d0 59 c9                                     	vmulps xmm1,xmm5,xmm1
    2989c6299e42:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    2989c6299e46:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    2989c6299e4b:	49 8d 4c 24 24                                  	lea    rcx,[r12+0x24]
    2989c6299e50:	c4 e2 79 18 0c 01                               	vbroadcastss xmm1,DWORD PTR [rcx+rax*1]
    2989c6299e56:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    2989c6299e5a:	c4 e2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [rcx+rbx*1]
    2989c6299e60:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    2989c6299e64:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c6299e68:	c4 a2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [rcx+r11*1]
    2989c6299e6e:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c6299e72:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c6299e76:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    2989c6299e7a:	49 8d 4c 24 20                                  	lea    rcx,[r12+0x20]
    2989c6299e7f:	c4 e2 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [rcx+rax*1]
    2989c6299e85:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c6299e89:	c4 e2 79 18 04 19                               	vbroadcastss xmm0,DWORD PTR [rcx+rbx*1]
    2989c6299e8f:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    2989c6299e93:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    2989c6299e97:	c4 a2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [rcx+r11*1]
    2989c6299e9d:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c6299ea1:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    2989c6299ea5:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c6299ea9:	8b 8d 08 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf8]
    2989c6299eaf:	45 8b 9c 0c 34 01 00 00                         	mov    r11d,DWORD PTR [r12+rcx*1+0x134]
    2989c6299eb7:	41 83 eb 01                                     	sub    r11d,0x1
    2989c6299ebb:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c6299ebf:	0f 86 ff 16 00 00                               	jbe    0x2989c629b5c4
    2989c6299ec5:	45 8b 9c 0c 38 01 00 00                         	mov    r11d,DWORD PTR [r12+rcx*1+0x138]
    2989c6299ecd:	41 83 bc 0c 38 01 00 00 00                      	cmp    DWORD PTR [r12+rcx*1+0x138],0x0
    2989c6299ed6:	0f 85 12 00 00 00                               	jne    0x2989c6299eee
    2989c6299edc:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    2989c6299ee1:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    2989c6299ee6:	4d 8b c4                                        	mov    r8,r12
    2989c6299ee9:	e9 57 2a 00 00                                  	jmp    0x2989c629c945
    2989c6299eee:	45 8b d9                                        	mov    r11d,r9d
    2989c6299ef1:	41 83 e3 04                                     	and    r11d,0x4
    2989c6299ef5:	45 8b f9                                        	mov    r15d,r9d
    2989c6299ef8:	41 83 e7 02                                     	and    r15d,0x2
    2989c6299efc:	41 8b c1                                        	mov    eax,r9d
    2989c6299eff:	83 e0 01                                        	and    eax,0x1
    2989c6299f02:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    2989c6299f07:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    2989c6299f0c:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    2989c6299f11:	c5 f8 11 85 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm0
    2989c6299f19:	48 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rcx
    2989c6299f20:	c5 78 11 8d e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm9
    2989c6299f28:	c5 f8 11 ad d0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x330],xmm5
    2989c6299f30:	c5 78 11 95 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm10
    2989c6299f38:	c5 78 11 85 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm8
    2989c6299f40:	4c 89 85 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r8
    2989c6299f47:	4c 89 9d f0 fb ff ff                            	mov    QWORD PTR [rbp-0x410],r11
    2989c6299f4e:	4c 89 bd 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],r15
    2989c6299f55:	48 89 85 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rax
    2989c6299f5c:	45 33 ff                                        	xor    r15d,r15d
    2989c6299f5f:	e9 3e 00 00 00                                  	jmp    0x2989c6299fa2
    2989c6299f64:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6299f6d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6299f76:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6299f7f:	90                                              	nop
    2989c6299f80:	c5 f8 10 ad d0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x330]
    2989c6299f88:	4d 8b e0                                        	mov    r12,r8
    2989c6299f8b:	c5 78 10 8d e0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x320]
    2989c6299f93:	48 8b 8d 30 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1d0]
    2989c6299f9a:	c5 78 10 9d 60 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2a0]
    2989c6299fa2:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    2989c6299fa8:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    2989c6299fae:	8b 95 98 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x168]
    2989c6299fb4:	8b b5 90 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x170]
    2989c6299fba:	4c 89 bd c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r15
    2989c6299fc1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6299fc6:	0f 85 f1 51 00 00                               	jne    0x2989c629f1bd
    2989c6299fcc:	45 8b 8c 0c 3c 01 00 00                         	mov    r9d,DWORD PTR [r12+rcx*1+0x13c]
    2989c6299fd4:	41 8b cf                                        	mov    ecx,r15d
    2989c6299fd7:	41 d3 e9                                        	shr    r9d,cl
    2989c6299fda:	41 f6 c1 01                                     	test   r9b,0x1
    2989c6299fde:	0f 85 33 00 00 00                               	jne    0x2989c629a017
    2989c6299fe4:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    2989c6299fea:	45 8b cf                                        	mov    r9d,r15d
    2989c6299fed:	41 c1 e1 06                                     	shl    r9d,0x6
    2989c6299ff1:	41 03 c9                                        	add    ecx,r9d
    2989c6299ff4:	c4 41 7a 7f 64 0c 30                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x30],xmm12
    2989c6299ffb:	c4 41 7a 7f 64 0c 20                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x20],xmm12
    2989c629a002:	c4 41 7a 7f 64 0c 10                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x10],xmm12
    2989c629a009:	c4 41 7a 7f 24 0c                               	vmovdqu XMMWORD PTR [r12+rcx*1],xmm12
    2989c629a00f:	4d 8b c4                                        	mov    r8,r12
    2989c629a012:	e9 67 12 00 00                                  	jmp    0x2989c629b27e
    2989c629a017:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    2989c629a01d:	45 8b cf                                        	mov    r9d,r15d
    2989c629a020:	41 c1 e1 06                                     	shl    r9d,0x6
    2989c629a024:	44 03 c9                                        	add    r9d,ecx
    2989c629a027:	41 6b cf 4c                                     	imul   ecx,r15d,0x4c
    2989c629a02b:	03 c8                                           	add    ecx,eax
    2989c629a02d:	45 8b 7c 0c 38                                  	mov    r15d,DWORD PTR [r12+rcx*1+0x38]
    2989c629a032:	41 83 7c 0c 38 00                               	cmp    DWORD PTR [r12+rcx*1+0x38],0x0
    2989c629a038:	0f 85 f7 11 00 00                               	jne    0x2989c629b235
    2989c629a03e:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    2989c629a045:	41 c1 e7 04                                     	shl    r15d,0x4
    2989c629a049:	41 8d 04 17                                     	lea    eax,[r15+rdx*1]
    2989c629a04d:	49 8d 54 24 04                                  	lea    rdx,[r12+0x4]
    2989c629a052:	c4 e2 79 18 14 02                               	vbroadcastss xmm2,DWORD PTR [rdx+rax*1]
    2989c629a058:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c629a05c:	42 8d 3c 3b                                     	lea    edi,[rbx+r15*1]
    2989c629a060:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    2989c629a066:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    2989c629a06a:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    2989c629a06e:	44 03 fe                                        	add    r15d,esi
    2989c629a071:	c4 a2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+r15*1]
    2989c629a077:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c629a07b:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    2989c629a07f:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    2989c629a083:	c4 c2 79 18 04 04                               	vbroadcastss xmm0,DWORD PTR [r12+rax*1]
    2989c629a089:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c629a08d:	c4 c2 79 18 34 3c                               	vbroadcastss xmm6,DWORD PTR [r12+rdi*1]
    2989c629a093:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    2989c629a097:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629a09b:	c4 82 79 18 34 3c                               	vbroadcastss xmm6,DWORD PTR [r12+r15*1]
    2989c629a0a1:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c629a0a5:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629a0a9:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c629a0ad:	41 8b 14 0c                                     	mov    edx,DWORD PTR [r12+rcx*1]
    2989c629a0b1:	83 fa 01                                        	cmp    edx,0x1
    2989c629a0b4:	0f 85 8b 0e 00 00                               	jne    0x2989c629af45
    2989c629a0ba:	41 8b 5c 0c 28                                  	mov    ebx,DWORD PTR [r12+rcx*1+0x28]
    2989c629a0bf:	85 db                                           	test   ebx,ebx
    2989c629a0c1:	0f 84 7e 0e 00 00                               	je     0x2989c629af45
    2989c629a0c7:	41 8b 74 0c 1c                                  	mov    esi,DWORD PTR [r12+rcx*1+0x1c]
    2989c629a0cc:	85 f6                                           	test   esi,esi
    2989c629a0ce:	0f 8e 71 0e 00 00                               	jle    0x2989c629af45
    2989c629a0d4:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    2989c629a0db:	41 8b 54 0c 20                                  	mov    edx,DWORD PTR [r12+rcx*1+0x20]
    2989c629a0e0:	85 d2                                           	test   edx,edx
    2989c629a0e2:	0f 8e 57 0e 00 00                               	jle    0x2989c629af3f
    2989c629a0e8:	44 8b d6                                        	mov    r10d,esi
    2989c629a0eb:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    2989c629a0f0:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    2989c629a0f5:	41 8b 7c 0c 10                                  	mov    edi,DWORD PTR [r12+rcx*1+0x10]
    2989c629a0fa:	45 33 ff                                        	xor    r15d,r15d
    2989c629a0fd:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    2989c629a103:	41 0f 95 c7                                     	setne  r15b
    2989c629a107:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    2989c629a10d:	40 0f 95 c7                                     	setne  dil
    2989c629a111:	40 0f b6 ff                                     	movzx  edi,dil
    2989c629a115:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    2989c629a11c:	41 23 ff                                        	and    edi,r15d
    2989c629a11f:	0f 85 0d 00 00 00                               	jne    0x2989c629a132
    2989c629a125:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c629a129:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c629a12d:	e9 0a 00 00 00                                  	jmp    0x2989c629a13c
    2989c629a132:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    2989c629a138:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    2989c629a13c:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c629a140:	44 8b d2                                        	mov    r10d,edx
    2989c629a143:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    2989c629a148:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    2989c629a14d:	45 8b 7c 0c 14                                  	mov    r15d,DWORD PTR [r12+rcx*1+0x14]
    2989c629a152:	33 c0                                           	xor    eax,eax
    2989c629a154:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    2989c629a15b:	0f 95 c0                                        	setne  al
    2989c629a15e:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    2989c629a165:	41 0f 95 c7                                     	setne  r15b
    2989c629a169:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c629a16d:	44 23 f8                                        	and    r15d,eax
    2989c629a170:	0f 85 0d 00 00 00                               	jne    0x2989c629a183
    2989c629a176:	c5 a0 5f fa                                     	vmaxps xmm7,xmm11,xmm2
    2989c629a17a:	c5 98 5d ff                                     	vminps xmm7,xmm12,xmm7
    2989c629a17e:	e9 0a 00 00 00                                  	jmp    0x2989c629a18d
    2989c629a183:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    2989c629a189:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    2989c629a18d:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c629a191:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    2989c629a19b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629a1a0:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c629a1a4:	c5 c8 58 d7                                     	vaddps xmm2,xmm6,xmm7
    2989c629a1a8:	41 8b 44 0c 0c                                  	mov    eax,DWORD PTR [r12+rcx*1+0xc]
    2989c629a1ad:	33 c0                                           	xor    eax,eax
    2989c629a1af:	41 81 7c 0c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+rcx*1+0xc],0x2600
    2989c629a1b8:	0f 94 c0                                        	sete   al
    2989c629a1bb:	85 c0                                           	test   eax,eax
    2989c629a1bd:	0f 85 6a 00 00 00                               	jne    0x2989c629a22d
    2989c629a1c3:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    2989c629a1c9:	4c 8b 15 45 c7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc745]        # 0x2989c6296915
    2989c629a1d0:	c4 41 48 54 1a                                  	vandps xmm11,xmm6,XMMWORD PTR [r10]
    2989c629a1d5:	4c 8b 15 84 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef84]        # 0x2989c6299160
    2989c629a1dc:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629a1e1:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c629a1e6:	c4 41 20 c2 dd 01                               	vcmpltps xmm11,xmm11,xmm13
    2989c629a1ec:	4c 8b 15 2b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef2b]        # 0x2989c629911e
    2989c629a1f3:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    2989c629a1f8:	c4 41 48 54 f7                                  	vandps xmm14,xmm6,xmm15
    2989c629a1fd:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    2989c629a203:	c4 41 7a 5b f6                                  	vcvttps2dq xmm14,xmm14
    2989c629a208:	c4 41 09 ef f7                                  	vpxor  xmm14,xmm14,xmm15
    2989c629a20d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    2989c629a211:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c629a215:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    2989c629a219:	c4 c1 79 28 d6                                  	vmovapd xmm2,xmm14
    2989c629a21e:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    2989c629a223:	c4 41 79 28 eb                                  	vmovapd xmm13,xmm11
    2989c629a228:	e9 49 00 00 00                                  	jmp    0x2989c629a276
    2989c629a22d:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    2989c629a233:	4c 8b 15 db c6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc6db]        # 0x2989c6296915
    2989c629a23a:	c4 41 40 54 2a                                  	vandps xmm13,xmm7,XMMWORD PTR [r10]
    2989c629a23f:	4c 8b 15 1a ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef1a]        # 0x2989c6299160
    2989c629a246:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c629a24b:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    2989c629a250:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    2989c629a256:	4c 8b 15 c1 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeec1]        # 0x2989c629911e
    2989c629a25d:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    2989c629a262:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    2989c629a267:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    2989c629a26d:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c629a271:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c629a276:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    2989c629a27c:	4c 8b 15 9b ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee9b]        # 0x2989c629911e
    2989c629a283:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    2989c629a289:	c4 c1 20 54 cf                                  	vandps xmm1,xmm11,xmm15
    2989c629a28e:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    2989c629a294:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    2989c629a298:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    2989c629a29d:	4c 8b 15 9d ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee9d]        # 0x2989c6299141
    2989c629a2a4:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629a2a9:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c629a2ad:	4c 8b 15 61 c6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc661]        # 0x2989c6296915
    2989c629a2b4:	c4 c1 20 54 22                                  	vandps xmm4,xmm11,XMMWORD PTR [r10]
    2989c629a2b9:	c4 41 58 c2 f6 01                               	vcmpltps xmm14,xmm4,xmm14
    2989c629a2bf:	c5 09 df fb                                     	vpandn xmm15,xmm14,xmm3
    2989c629a2c3:	c4 41 71 db f6                                  	vpand  xmm14,xmm1,xmm14
    2989c629a2c8:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    2989c629a2cd:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    2989c629a2d1:	c4 c1 79 6e c9                                  	vmovd  xmm1,r9d
    2989c629a2d6:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c629a2db:	45 8b 4c 0c 2c                                  	mov    r9d,DWORD PTR [r12+rcx*1+0x2c]
    2989c629a2e0:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c629a2e4:	c4 e2 09 3d e4                                  	vpmaxsd xmm4,xmm14,xmm4
    2989c629a2e9:	c4 e2 59 39 e1                                  	vpminsd xmm4,xmm4,xmm1
    2989c629a2ee:	85 ff                                           	test   edi,edi
    2989c629a2f0:	0f 84 5e 00 00 00                               	je     0x2989c629a354
    2989c629a2f6:	c4 c1 79 6e e1                                  	vmovd  xmm4,r9d
    2989c629a2fb:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c629a300:	c5 89 db e4                                     	vpand  xmm4,xmm14,xmm4
    2989c629a304:	45 85 c9                                        	test   r9d,r9d
    2989c629a307:	0f 85 47 00 00 00                               	jne    0x2989c629a354
    2989c629a30d:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    2989c629a311:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c629a316:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c629a31b:	c5 89 66 e9                                     	vpcmpgtd xmm5,xmm14,xmm1
    2989c629a31f:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    2989c629a323:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629a328:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    2989c629a32d:	c4 41 31 66 ce                                  	vpcmpgtd xmm9,xmm9,xmm14
    2989c629a332:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629a336:	c4 c1 59 db e9                                  	vpand  xmm5,xmm4,xmm9
    2989c629a33b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629a340:	c5 89 fe e5                                     	vpaddd xmm4,xmm14,xmm5
    2989c629a344:	c5 f8 10 ad d0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x330]
    2989c629a34c:	c5 78 10 8d e0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x320]
    2989c629a354:	c5 11 df fb                                     	vpandn xmm15,xmm13,xmm3
    2989c629a358:	c4 41 69 db ed                                  	vpand  xmm13,xmm2,xmm13
    2989c629a35d:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    2989c629a362:	44 8d 5a ff                                     	lea    r11d,[rdx-0x1]
    2989c629a366:	c4 c1 79 6e d3                                  	vmovd  xmm2,r11d
    2989c629a36b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c629a370:	45 8b 5c 0c 30                                  	mov    r11d,DWORD PTR [r12+rcx*1+0x30]
    2989c629a375:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    2989c629a379:	c4 e2 11 3d db                                  	vpmaxsd xmm3,xmm13,xmm3
    2989c629a37e:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    2989c629a383:	45 85 ff                                        	test   r15d,r15d
    2989c629a386:	0f 84 4f 00 00 00                               	je     0x2989c629a3db
    2989c629a38c:	c4 c1 79 6e db                                  	vmovd  xmm3,r11d
    2989c629a391:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c629a396:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c629a39b:	45 85 db                                        	test   r11d,r11d
    2989c629a39e:	0f 85 37 00 00 00                               	jne    0x2989c629a3db
    2989c629a3a4:	c5 f9 6e da                                     	vmovd  xmm3,edx
    2989c629a3a8:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c629a3ad:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c629a3b2:	c5 91 66 ea                                     	vpcmpgtd xmm5,xmm13,xmm2
    2989c629a3b6:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    2989c629a3ba:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629a3bf:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    2989c629a3c4:	c4 41 31 66 cd                                  	vpcmpgtd xmm9,xmm9,xmm13
    2989c629a3c9:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629a3cd:	c4 c1 61 db e9                                  	vpand  xmm5,xmm3,xmm9
    2989c629a3d2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629a3d7:	c5 91 fe dd                                     	vpaddd xmm3,xmm13,xmm5
    2989c629a3db:	c5 79 6e ce                                     	vmovd  xmm9,esi
    2989c629a3df:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c629a3e4:	c4 c2 61 40 d9                                  	vpmulld xmm3,xmm3,xmm9
    2989c629a3e9:	c5 e1 fe ec                                     	vpaddd xmm5,xmm3,xmm4
    2989c629a3ed:	c4 e3 79 16 e9 03                               	vpextrd ecx,xmm5,0x3
    2989c629a3f3:	c4 e3 79 16 ee 02                               	vpextrd esi,xmm5,0x2
    2989c629a3f9:	48 89 8d 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rcx
    2989c629a400:	c4 e3 79 16 e9 01                               	vpextrd ecx,xmm5,0x1
    2989c629a406:	48 89 8d 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rcx
    2989c629a40d:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    2989c629a411:	85 c0                                           	test   eax,eax
    2989c629a413:	0f 85 3c 09 00 00                               	jne    0x2989c629ad55
    2989c629a419:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    2989c629a423:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629a428:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629a42c:	c5 09 fe f5                                     	vpaddd xmm14,xmm14,xmm5
    2989c629a430:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c629a435:	c4 42 09 3d d2                                  	vpmaxsd xmm10,xmm14,xmm10
    2989c629a43a:	c4 62 29 39 d1                                  	vpminsd xmm10,xmm10,xmm1
    2989c629a43f:	85 ff                                           	test   edi,edi
    2989c629a441:	0f 84 48 00 00 00                               	je     0x2989c629a48f
    2989c629a447:	c4 41 79 6e d1                                  	vmovd  xmm10,r9d
    2989c629a44c:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c629a451:	c4 41 09 db d2                                  	vpand  xmm10,xmm14,xmm10
    2989c629a456:	45 85 c9                                        	test   r9d,r9d
    2989c629a459:	0f 85 30 00 00 00                               	jne    0x2989c629a48f
    2989c629a45f:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c629a464:	c5 89 66 c9                                     	vpcmpgtd xmm1,xmm14,xmm1
    2989c629a468:	c4 c1 71 db c9                                  	vpand  xmm1,xmm1,xmm9
    2989c629a46d:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629a472:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    2989c629a477:	c4 41 29 66 d6                                  	vpcmpgtd xmm10,xmm10,xmm14
    2989c629a47c:	c5 29 df f9                                     	vpandn xmm15,xmm10,xmm1
    2989c629a480:	c4 41 31 db d2                                  	vpand  xmm10,xmm9,xmm10
    2989c629a485:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    2989c629a48a:	c4 41 09 fe d2                                  	vpaddd xmm10,xmm14,xmm10
    2989c629a48f:	c5 11 fe ed                                     	vpaddd xmm13,xmm13,xmm5
    2989c629a493:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    2989c629a498:	c4 42 11 3d f6                                  	vpmaxsd xmm14,xmm13,xmm14
    2989c629a49d:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    2989c629a4a2:	45 85 ff                                        	test   r15d,r15d
    2989c629a4a5:	0f 84 4f 00 00 00                               	je     0x2989c629a4fa
    2989c629a4ab:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    2989c629a4b0:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629a4b5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    2989c629a4ba:	45 85 db                                        	test   r11d,r11d
    2989c629a4bd:	0f 85 37 00 00 00                               	jne    0x2989c629a4fa
    2989c629a4c3:	c5 79 6e f2                                     	vmovd  xmm14,edx
    2989c629a4c7:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629a4cc:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c629a4d0:	c5 91 66 d2                                     	vpcmpgtd xmm2,xmm13,xmm2
    2989c629a4d4:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    2989c629a4d9:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629a4de:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    2989c629a4e3:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    2989c629a4e8:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    2989c629a4ec:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    2989c629a4f0:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    2989c629a4f5:	c4 41 11 fe f6                                  	vpaddd xmm14,xmm13,xmm14
    2989c629a4fa:	c4 42 09 40 c9                                  	vpmulld xmm9,xmm14,xmm9
    2989c629a4ff:	c5 31 fe ec                                     	vpaddd xmm13,xmm9,xmm4
    2989c629a503:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    2989c629a50a:	0f 85 d7 00 00 00                               	jne    0x2989c629a5e7
    2989c629a510:	c5 d9 fe ed                                     	vpaddd xmm5,xmm4,xmm5
    2989c629a514:	c5 a9 76 ed                                     	vpcmpeqd xmm5,xmm10,xmm5
    2989c629a518:	c5 f8 50 fd                                     	vmovmskps edi,xmm5
    2989c629a51c:	83 ff 0f                                        	cmp    edi,0xf
    2989c629a51f:	0f 84 23 00 00 00                               	je     0x2989c629a548
    2989c629a525:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    2989c629a528:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629a52c:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    2989c629a533:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c629a537:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629a53b:	44 8d 3c 8b                                     	lea    r15d,[rbx+rcx*4]
    2989c629a53f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629a543:	e9 05 01 00 00                                  	jmp    0x2989c629a64d
    2989c629a548:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    2989c629a54b:	c4 c1 7b 10 2c 3c                               	vmovsd xmm5,QWORD PTR [r12+rdi*1]
    2989c629a551:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    2989c629a558:	42 8d 3c 9b                                     	lea    edi,[rbx+r11*4]
    2989c629a55c:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    2989c629a562:	c4 c1 51 6c e9                                  	vpunpcklqdq xmm5,xmm5,xmm9
    2989c629a567:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    2989c629a56a:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    2989c629a570:	8b bd 10 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x2f0]
    2989c629a576:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c629a579:	c4 41 7b 10 14 3c                               	vmovsd xmm10,QWORD PTR [r12+rdi*1]
    2989c629a57f:	c4 41 31 6c ca                                  	vpunpcklqdq xmm9,xmm9,xmm10
    2989c629a584:	c4 41 50 c6 d1 dd                               	vshufps xmm10,xmm5,xmm9,0xdd
    2989c629a58a:	c4 c1 50 c6 e9 88                               	vshufps xmm5,xmm5,xmm9,0x88
    2989c629a590:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    2989c629a596:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c629a59a:	03 fb                                           	add    edi,ebx
    2989c629a59c:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    2989c629a5a2:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c629a5a8:	03 fb                                           	add    edi,ebx
    2989c629a5aa:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    2989c629a5b0:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    2989c629a5b5:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c629a5bb:	03 fb                                           	add    edi,ebx
    2989c629a5bd:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    2989c629a5c3:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c629a5c9:	03 fb                                           	add    edi,ebx
    2989c629a5cb:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    2989c629a5d1:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    2989c629a5d6:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    2989c629a5dc:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    2989c629a5e2:	e9 71 03 00 00                                  	jmp    0x2989c629a958
    2989c629a5e7:	83 bd 40 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3c0],0x0
    2989c629a5ee:	0f 85 08 00 00 00                               	jne    0x2989c629a5fc
    2989c629a5f4:	45 33 ff                                        	xor    r15d,r15d
    2989c629a5f7:	e9 07 00 00 00                                  	jmp    0x2989c629a603
    2989c629a5fc:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    2989c629a5ff:	45 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+rdi*1]
    2989c629a603:	83 bd 18 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3e8],0x0
    2989c629a60a:	0f 85 08 00 00 00                               	jne    0x2989c629a618
    2989c629a610:	45 33 db                                        	xor    r11d,r11d
    2989c629a613:	e9 0d 00 00 00                                  	jmp    0x2989c629a625
    2989c629a618:	8b bd 90 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x370]
    2989c629a61e:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c629a621:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    2989c629a625:	83 bd f0 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x410],0x0
    2989c629a62c:	0f 85 07 00 00 00                               	jne    0x2989c629a639
    2989c629a632:	33 ff                                           	xor    edi,edi
    2989c629a634:	e9 07 00 00 00                                  	jmp    0x2989c629a640
    2989c629a639:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    2989c629a63c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629a640:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629a647:	0f 82 53 00 00 00                               	jb     0x2989c629a6a0
    2989c629a64d:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    2989c629a653:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    2989c629a656:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    2989c629a65a:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    2989c629a65e:	c4 41 79 6e f7                                  	vmovd  xmm14,r15d
    2989c629a663:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629a668:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    2989c629a66f:	0f 85 3b 00 00 00                               	jne    0x2989c629a6b0
    2989c629a675:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    2989c629a67b:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c629a67f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629a683:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    2989c629a687:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    2989c629a68a:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    2989c629a68e:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    2989c629a694:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    2989c629a697:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    2989c629a69b:	e9 89 00 00 00                                  	jmp    0x2989c629a729
    2989c629a6a0:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    2989c629a6a4:	c4 41 79 6e f7                                  	vmovd  xmm14,r15d
    2989c629a6a9:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629a6ae:	33 c0                                           	xor    eax,eax
    2989c629a6b0:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    2989c629a6b7:	0f 85 07 00 00 00                               	jne    0x2989c629a6c4
    2989c629a6bd:	33 d2                                           	xor    edx,edx
    2989c629a6bf:	e9 0d 00 00 00                                  	jmp    0x2989c629a6d1
    2989c629a6c4:	c4 c1 79 7e ef                                  	vmovd  r15d,xmm5
    2989c629a6c9:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c629a6cd:	43 8b 14 3c                                     	mov    edx,DWORD PTR [r12+r15*1]
    2989c629a6d1:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    2989c629a6d8:	0f 85 08 00 00 00                               	jne    0x2989c629a6e6
    2989c629a6de:	45 33 ff                                        	xor    r15d,r15d
    2989c629a6e1:	e9 0e 00 00 00                                  	jmp    0x2989c629a6f4
    2989c629a6e6:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    2989c629a6ec:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c629a6f0:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629a6f4:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    2989c629a6fb:	0f 85 07 00 00 00                               	jne    0x2989c629a708
    2989c629a701:	33 c9                                           	xor    ecx,ecx
    2989c629a703:	e9 0d 00 00 00                                  	jmp    0x2989c629a715
    2989c629a708:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    2989c629a70e:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    2989c629a711:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    2989c629a715:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629a71c:	0f 83 07 00 00 00                               	jae    0x2989c629a729
    2989c629a722:	33 f6                                           	xor    esi,esi
    2989c629a724:	e9 0d 00 00 00                                  	jmp    0x2989c629a736
    2989c629a729:	c4 e3 79 16 ee 03                               	vpextrd esi,xmm5,0x3
    2989c629a72f:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c629a732:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    2989c629a736:	c4 c3 09 22 eb 01                               	vpinsrd xmm5,xmm14,r11d,0x1
    2989c629a73c:	c5 79 6e f2                                     	vmovd  xmm14,edx
    2989c629a740:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629a745:	c4 43 09 22 f7 01                               	vpinsrd xmm14,xmm14,r15d,0x1
    2989c629a74b:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    2989c629a752:	0f 85 2d 00 00 00                               	jne    0x2989c629a785
    2989c629a758:	c4 43 79 16 eb 01                               	vpextrd r11d,xmm13,0x1
    2989c629a75e:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c629a762:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629a766:	c4 41 79 7e ef                                  	vmovd  r15d,xmm13
    2989c629a76b:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c629a76f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629a773:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    2989c629a779:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    2989c629a77c:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    2989c629a780:	e9 a2 00 00 00                                  	jmp    0x2989c629a827
    2989c629a785:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    2989c629a78c:	0f 85 08 00 00 00                               	jne    0x2989c629a79a
    2989c629a792:	45 33 ff                                        	xor    r15d,r15d
    2989c629a795:	e9 0d 00 00 00                                  	jmp    0x2989c629a7a7
    2989c629a79a:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    2989c629a79f:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c629a7a3:	47 8b 3c 1c                                     	mov    r15d,DWORD PTR [r12+r11*1]
    2989c629a7a7:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    2989c629a7ae:	0f 85 08 00 00 00                               	jne    0x2989c629a7bc
    2989c629a7b4:	45 33 db                                        	xor    r11d,r11d
    2989c629a7b7:	e9 0e 00 00 00                                  	jmp    0x2989c629a7ca
    2989c629a7bc:	c4 43 79 16 eb 01                               	vpextrd r11d,xmm13,0x1
    2989c629a7c2:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c629a7c6:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629a7ca:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    2989c629a7d1:	0f 85 07 00 00 00                               	jne    0x2989c629a7de
    2989c629a7d7:	33 d2                                           	xor    edx,edx
    2989c629a7d9:	e9 0d 00 00 00                                  	jmp    0x2989c629a7eb
    2989c629a7de:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    2989c629a7e4:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    2989c629a7e7:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    2989c629a7eb:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629a7f2:	0f 83 2f 00 00 00                               	jae    0x2989c629a827
    2989c629a7f8:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    2989c629a7fe:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    2989c629a804:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    2989c629a809:	c4 41 79 6e d7                                  	vmovd  xmm10,r15d
    2989c629a80e:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c629a813:	c4 43 29 22 d3 01                               	vpinsrd xmm10,xmm10,r11d,0x1
    2989c629a819:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    2989c629a81f:	45 33 c9                                        	xor    r9d,r9d
    2989c629a822:	e9 6f 00 00 00                                  	jmp    0x2989c629a896
    2989c629a827:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    2989c629a82d:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    2989c629a831:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    2989c629a835:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    2989c629a83b:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    2989c629a841:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    2989c629a846:	c4 41 79 6e d7                                  	vmovd  xmm10,r15d
    2989c629a84b:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c629a850:	c4 43 29 22 d3 01                               	vpinsrd xmm10,xmm10,r11d,0x1
    2989c629a856:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    2989c629a85c:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    2989c629a863:	0f 85 2d 00 00 00                               	jne    0x2989c629a896
    2989c629a869:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c629a86f:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c629a872:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629a876:	c4 41 79 7e cb                                  	vmovd  r11d,xmm9
    2989c629a87b:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c629a87f:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629a883:	c4 43 79 16 cf 02                               	vpextrd r15d,xmm9,0x2
    2989c629a889:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c629a88d:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629a891:	e9 78 00 00 00                                  	jmp    0x2989c629a90e
    2989c629a896:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    2989c629a89d:	0f 85 08 00 00 00                               	jne    0x2989c629a8ab
    2989c629a8a3:	45 33 db                                        	xor    r11d,r11d
    2989c629a8a6:	e9 0b 00 00 00                                  	jmp    0x2989c629a8b6
    2989c629a8ab:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c629a8af:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c629a8b2:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    2989c629a8b6:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    2989c629a8bd:	0f 85 07 00 00 00                               	jne    0x2989c629a8ca
    2989c629a8c3:	33 ff                                           	xor    edi,edi
    2989c629a8c5:	e9 0d 00 00 00                                  	jmp    0x2989c629a8d7
    2989c629a8ca:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c629a8d0:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c629a8d3:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629a8d7:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    2989c629a8de:	0f 85 08 00 00 00                               	jne    0x2989c629a8ec
    2989c629a8e4:	45 33 ff                                        	xor    r15d,r15d
    2989c629a8e7:	e9 0e 00 00 00                                  	jmp    0x2989c629a8fa
    2989c629a8ec:	c4 43 79 16 cf 02                               	vpextrd r15d,xmm9,0x2
    2989c629a8f2:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c629a8f6:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629a8fa:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629a901:	0f 83 07 00 00 00                               	jae    0x2989c629a90e
    2989c629a907:	33 db                                           	xor    ebx,ebx
    2989c629a909:	e9 0d 00 00 00                                  	jmp    0x2989c629a91b
    2989c629a90e:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    2989c629a914:	8d 1c 93                                        	lea    ebx,[rbx+rdx*4]
    2989c629a917:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    2989c629a91b:	c4 e3 51 22 e8 03                               	vpinsrd xmm5,xmm5,eax,0x3
    2989c629a921:	c4 63 11 22 ce 03                               	vpinsrd xmm9,xmm13,esi,0x3
    2989c629a927:	c4 41 79 6e eb                                  	vmovd  xmm13,r11d
    2989c629a92c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629a931:	c4 63 11 22 ef 01                               	vpinsrd xmm13,xmm13,edi,0x1
    2989c629a937:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    2989c629a93d:	c4 63 11 22 f3 03                               	vpinsrd xmm14,xmm13,ebx,0x3
    2989c629a943:	c4 43 29 22 d1 03                               	vpinsrd xmm10,xmm10,r9d,0x3
    2989c629a949:	c4 41 79 28 f9                                  	vmovapd xmm15,xmm9
    2989c629a94e:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    2989c629a953:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    2989c629a958:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    2989c629a95c:	c5 98 5c fe                                     	vsubps xmm7,xmm12,xmm6
    2989c629a960:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    2989c629a965:	c5 18 5c d8                                     	vsubps xmm11,xmm12,xmm0
    2989c629a969:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    2989c629a973:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629a978:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c629a97d:	c4 c1 51 db cd                                  	vpand  xmm1,xmm5,xmm13
    2989c629a982:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629a987:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c629a98d:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c629a992:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629a997:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c629a99c:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c629a9a0:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c629a9a4:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c629a9a9:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    2989c629a9ad:	c4 c1 29 db d5                                  	vpand  xmm2,xmm10,xmm13
    2989c629a9b2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629a9b7:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c629a9bd:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c629a9c2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629a9c7:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c629a9cc:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c629a9d0:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c629a9d4:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c629a9d9:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    2989c629a9dd:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c629a9e1:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    2989c629a9e5:	c4 c1 31 db d5                                  	vpand  xmm2,xmm9,xmm13
    2989c629a9ea:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629a9ef:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c629a9f5:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c629a9fa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629a9ff:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c629aa04:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c629aa08:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c629aa0c:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c629aa11:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c629aa15:	c4 c1 09 db dd                                  	vpand  xmm3,xmm14,xmm13
    2989c629aa1a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aa1f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c629aa25:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c629aa2a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629aa2f:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c629aa34:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629aa38:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c629aa3c:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c629aa41:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c629aa45:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    2989c629aa49:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    2989c629aa4d:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c629aa51:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    2989c629aa5b:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c629aa60:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c629aa64:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    2989c629aa68:	44 8b 9d b8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x248]
    2989c629aa6f:	c4 81 7a 7f 0c 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm1
    2989c629aa75:	c5 f1 72 d5 10                                  	vpsrld xmm1,xmm5,0x10
    2989c629aa7a:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    2989c629aa7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aa84:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c629aa8a:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c629aa8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629aa94:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c629aa99:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c629aa9d:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c629aaa1:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c629aaa6:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    2989c629aaaa:	c4 c1 61 72 d2 10                               	vpsrld xmm3,xmm10,0x10
    2989c629aab0:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c629aab5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aaba:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c629aac0:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c629aac5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629aaca:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c629aacf:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629aad3:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c629aad7:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c629aadc:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c629aae0:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c629aae4:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    2989c629aae8:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    2989c629aaee:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c629aaf3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aaf8:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c629aafe:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c629ab03:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ab08:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c629ab0d:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629ab11:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c629ab15:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c629ab1a:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c629ab1e:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    2989c629ab24:	c4 c1 59 db e5                                  	vpand  xmm4,xmm4,xmm13
    2989c629ab29:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ab2e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c629ab34:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c629ab39:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ab3e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c629ab43:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c629ab47:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c629ab4b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c629ab50:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    2989c629ab54:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    2989c629ab58:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    2989c629ab5c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c629ab60:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    2989c629ab64:	c4 81 7a 7f 4c 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm1
    2989c629ab6b:	c5 f1 72 d5 08                                  	vpsrld xmm1,xmm5,0x8
    2989c629ab70:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    2989c629ab75:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ab7a:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c629ab80:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c629ab85:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ab8a:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c629ab8f:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c629ab93:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c629ab97:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c629ab9c:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    2989c629aba0:	c4 c1 61 72 d2 08                               	vpsrld xmm3,xmm10,0x8
    2989c629aba6:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c629abab:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629abb0:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c629abb6:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c629abbb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629abc0:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c629abc5:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629abc9:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c629abcd:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c629abd2:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c629abd6:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c629abda:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    2989c629abde:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    2989c629abe4:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c629abe9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629abee:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c629abf4:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c629abf9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629abfe:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c629ac03:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629ac07:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c629ac0b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c629ac10:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c629ac14:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    2989c629ac1a:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    2989c629ac1f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ac24:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    2989c629ac2a:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    2989c629ac2f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ac34:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    2989c629ac3a:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    2989c629ac3f:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    2989c629ac44:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    2989c629ac49:	c4 41 78 59 ed                                  	vmulps xmm13,xmm0,xmm13
    2989c629ac4e:	c4 41 60 58 ed                                  	vaddps xmm13,xmm3,xmm13
    2989c629ac53:	c4 41 48 59 ed                                  	vmulps xmm13,xmm6,xmm13
    2989c629ac58:	c4 41 70 58 ed                                  	vaddps xmm13,xmm1,xmm13
    2989c629ac5d:	c5 10 59 ea                                     	vmulps xmm13,xmm13,xmm2
    2989c629ac61:	c4 01 7a 7f 6c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm13
    2989c629ac68:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    2989c629ac6d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ac72:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c629ac78:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c629ac7d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ac82:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c629ac87:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c629ac8b:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c629ac8f:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c629ac94:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    2989c629ac98:	c4 c1 29 72 d2 18                               	vpsrld xmm10,xmm10,0x18
    2989c629ac9e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aca3:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    2989c629aca9:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    2989c629acae:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629acb3:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    2989c629acb9:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    2989c629acbe:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    2989c629acc3:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    2989c629acc8:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    2989c629accd:	c4 c1 50 58 ea                                  	vaddps xmm5,xmm5,xmm10
    2989c629acd2:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    2989c629acd6:	c4 c1 41 72 d1 18                               	vpsrld xmm7,xmm9,0x18
    2989c629acdc:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ace1:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c629ace7:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c629acec:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629acf1:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c629acf6:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c629acfa:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c629acfe:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c629ad03:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    2989c629ad07:	c4 c1 31 72 d6 18                               	vpsrld xmm9,xmm14,0x18
    2989c629ad0d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ad12:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    2989c629ad18:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    2989c629ad1d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ad22:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    2989c629ad28:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    2989c629ad2d:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    2989c629ad32:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    2989c629ad37:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c629ad3c:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    2989c629ad40:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c629ad44:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    2989c629ad48:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    2989c629ad50:	e9 c4 01 00 00                                  	jmp    0x2989c629af19
    2989c629ad55:	83 bd 20 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e0],0x0
    2989c629ad5c:	0f 85 23 00 00 00                               	jne    0x2989c629ad85
    2989c629ad62:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    2989c629ad65:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629ad69:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    2989c629ad70:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c629ad74:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629ad78:	44 8d 3c 8b                                     	lea    r15d,[rbx+rcx*4]
    2989c629ad7c:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629ad80:	e9 66 00 00 00                                  	jmp    0x2989c629adeb
    2989c629ad85:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    2989c629ad8c:	0f 85 08 00 00 00                               	jne    0x2989c629ad9a
    2989c629ad92:	45 33 ff                                        	xor    r15d,r15d
    2989c629ad95:	e9 07 00 00 00                                  	jmp    0x2989c629ada1
    2989c629ad9a:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    2989c629ad9d:	45 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+rdi*1]
    2989c629ada1:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    2989c629ada8:	0f 85 08 00 00 00                               	jne    0x2989c629adb6
    2989c629adae:	45 33 db                                        	xor    r11d,r11d
    2989c629adb1:	e9 0d 00 00 00                                  	jmp    0x2989c629adc3
    2989c629adb6:	8b bd 90 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x370]
    2989c629adbc:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c629adbf:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    2989c629adc3:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    2989c629adca:	0f 85 07 00 00 00                               	jne    0x2989c629add7
    2989c629add0:	33 ff                                           	xor    edi,edi
    2989c629add2:	e9 07 00 00 00                                  	jmp    0x2989c629adde
    2989c629add7:	8d 3c b3                                        	lea    edi,[rbx+rsi*4]
    2989c629adda:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629adde:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629ade5:	0f 82 12 00 00 00                               	jb     0x2989c629adfd
    2989c629adeb:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    2989c629adf1:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    2989c629adf4:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    2989c629adf8:	e9 02 00 00 00                                  	jmp    0x2989c629adff
    2989c629adfd:	33 c0                                           	xor    eax,eax
    2989c629adff:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    2989c629ae04:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c629ae09:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    2989c629ae0f:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    2989c629ae15:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    2989c629ae1b:	4c 8b 15 49 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb49]        # 0x2989c629a96b
    2989c629ae22:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629ae27:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629ae2b:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    2989c629ae2f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ae34:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c629ae3a:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c629ae3f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ae44:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c629ae49:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c629ae4d:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c629ae51:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c629ae56:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x2989c629aa53
    2989c629ae5d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629ae62:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c629ae66:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c629ae6a:	44 8b 9d b8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x248]
    2989c629ae71:	c4 81 7a 7f 34 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm6
    2989c629ae77:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    2989c629ae7c:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    2989c629ae80:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629ae85:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c629ae8b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c629ae90:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629ae95:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c629ae9a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c629ae9e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c629aea2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c629aea7:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c629aeab:	c4 81 7a 7f 74 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm6
    2989c629aeb2:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    2989c629aeb7:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    2989c629aebb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aec0:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c629aec6:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c629aecb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629aed0:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c629aed5:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c629aed9:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c629aedd:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c629aee2:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    2989c629aee6:	c4 81 7a 7f 6c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm5
    2989c629aeed:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    2989c629aef2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629aef7:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c629aefd:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c629af02:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629af07:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c629af0c:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c629af10:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c629af14:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c629af19:	4c 8b 15 33 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb33]        # 0x2989c629aa53
    2989c629af20:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629af25:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629af29:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    2989c629af2d:	c4 81 7a 7f 44 1c 30                            	vmovdqu XMMWORD PTR [r12+r11*1+0x30],xmm0
    2989c629af34:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629af37:	4d 8b c4                                        	mov    r8,r12
    2989c629af3a:	e9 3f 03 00 00                                  	jmp    0x2989c629b27e
    2989c629af3f:	8b 95 90 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x370]
    2989c629af45:	4d 8d 5c 24 08                                  	lea    r11,[r12+0x8]
    2989c629af4a:	c4 c2 79 18 34 03                               	vbroadcastss xmm6,DWORD PTR [r11+rax*1]
    2989c629af50:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c629af54:	c4 c2 79 18 3c 3b                               	vbroadcastss xmm7,DWORD PTR [r11+rdi*1]
    2989c629af5a:	c5 a8 59 ff                                     	vmulps xmm7,xmm10,xmm7
    2989c629af5e:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    2989c629af62:	c4 82 79 18 3c 3b                               	vbroadcastss xmm7,DWORD PTR [r11+r15*1]
    2989c629af68:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    2989c629af6c:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    2989c629af70:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c629af75:	c5 c0 59 de                                     	vmulps xmm3,xmm7,xmm6
    2989c629af79:	83 fa 03                                        	cmp    edx,0x3
    2989c629af7c:	0f 84 77 02 00 00                               	je     0x2989c629b1f9
    2989c629af82:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c629af86:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629af89:	c4 c1 7a 7f b4 3c 60 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x260],xmm6
    2989c629af93:	c4 c1 7a 7f b4 3c 50 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x250],xmm6
    2989c629af9d:	c4 c1 7a 7f b4 3c 40 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x240],xmm6
    2989c629afa7:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    2989c629afb1:	c4 c1 7a 7f 94 3c 80 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x280],xmm2
    2989c629afbb:	c4 c1 7a 7f 9c 3c 70 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x270],xmm3
    2989c629afc5:	c4 c1 7a 7f b4 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm6
    2989c629afcf:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    2989c629afd6:	48 89 8d 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rcx
    2989c629afdd:	45 33 db                                        	xor    r11d,r11d
    2989c629afe0:	e9 28 00 00 00                                  	jmp    0x2989c629b00d
    2989c629afe5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629afee:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629aff7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629b000:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    2989c629b006:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629b009:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629b00d:	4c 89 9d 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],r11
    2989c629b014:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c629b019:	0f 85 05 42 00 00                               	jne    0x2989c629f224
    2989c629b01f:	8b d1                                           	mov    edx,ecx
    2989c629b021:	41 8b cb                                        	mov    ecx,r11d
    2989c629b024:	8b 9d 80 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x280]
    2989c629b02a:	d3 eb                                           	shr    ebx,cl
    2989c629b02c:	f6 c3 01                                        	test   bl,0x1
    2989c629b02f:	0f 84 20 01 00 00                               	je     0x2989c629b155
    2989c629b035:	41 8b 4c 14 10                                  	mov    ecx,DWORD PTR [r12+rdx*1+0x10]
    2989c629b03a:	41 8b 5c 14 0c                                  	mov    ebx,DWORD PTR [r12+rdx*1+0xc]
    2989c629b03f:	41 8b 74 14 08                                  	mov    esi,DWORD PTR [r12+rdx*1+0x8]
    2989c629b044:	41 8b 74 14 04                                  	mov    esi,DWORD PTR [r12+rdx*1+0x4]
    2989c629b049:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    2989c629b050:	41 8b 1c 14                                     	mov    ebx,DWORD PTR [r12+rdx*1]
    2989c629b054:	83 fb 02                                        	cmp    ebx,0x2
    2989c629b057:	0f 84 9b 00 00 00                               	je     0x2989c629b0f8
    2989c629b05d:	48 89 8d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rcx
    2989c629b064:	85 db                                           	test   ebx,ebx
    2989c629b066:	0f 85 38 00 00 00                               	jne    0x2989c629b0a4
    2989c629b06c:	42 8d 9c 9f 90 02 00 00                         	lea    ebx,[rdi+r11*4+0x290]
    2989c629b074:	c4 c1 7a 10 0c 1c                               	vmovss xmm1,DWORD PTR [r12+rbx*1]
    2989c629b07a:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    2989c629b080:	41 8b cb                                        	mov    ecx,r11d
    2989c629b083:	c1 e1 04                                        	shl    ecx,0x4
    2989c629b086:	03 d9                                           	add    ebx,ecx
    2989c629b088:	8b c6                                           	mov    eax,esi
    2989c629b08a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629b08e:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    2989c629b094:	8b 8d 48 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3b8]
    2989c629b09a:	e8 81 01 ee ff                                  	call   0x2989c617b220
    2989c629b09f:	e9 b1 00 00 00                                  	jmp    0x2989c629b155
    2989c629b0a4:	4d 8b c4                                        	mov    r8,r12
    2989c629b0a7:	44 8b e2                                        	mov    r12d,edx
    2989c629b0aa:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    2989c629b0af:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    2989c629b0b7:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    2989c629b0bd:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    2989c629b0c5:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    2989c629b0cb:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    2989c629b0d1:	41 8b cb                                        	mov    ecx,r11d
    2989c629b0d4:	c1 e1 04                                        	shl    ecx,0x4
    2989c629b0d7:	03 d1                                           	add    edx,ecx
    2989c629b0d9:	8b c6                                           	mov    eax,esi
    2989c629b0db:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629b0df:	44 8b ca                                        	mov    r9d,edx
    2989c629b0e2:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    2989c629b0e8:	8b 8d 48 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3b8]
    2989c629b0ee:	e8 45 01 ee ff                                  	call   0x2989c617b238
    2989c629b0f3:	e9 5d 00 00 00                                  	jmp    0x2989c629b155
    2989c629b0f8:	4d 8b c4                                        	mov    r8,r12
    2989c629b0fb:	8b c2                                           	mov    eax,edx
    2989c629b0fd:	41 8b 5c 00 14                                  	mov    ebx,DWORD PTR [r8+rax*1+0x14]
    2989c629b102:	45 8b 4c 00 18                                  	mov    r9d,DWORD PTR [r8+rax*1+0x18]
    2989c629b107:	46 8d a4 9f 90 02 00 00                         	lea    r12d,[rdi+r11*4+0x290]
    2989c629b10f:	c4 81 7a 10 0c 20                               	vmovss xmm1,DWORD PTR [r8+r12*1]
    2989c629b115:	46 8d a4 9f 80 02 00 00                         	lea    r12d,[rdi+r11*4+0x280]
    2989c629b11d:	c4 81 7a 10 14 20                               	vmovss xmm2,DWORD PTR [r8+r12*1]
    2989c629b123:	46 8d a4 9f 70 02 00 00                         	lea    r12d,[rdi+r11*4+0x270]
    2989c629b12b:	c4 81 7a 10 1c 20                               	vmovss xmm3,DWORD PTR [r8+r12*1]
    2989c629b131:	44 8d a7 30 02 00 00                            	lea    r12d,[rdi+0x230]
    2989c629b138:	45 8b fb                                        	mov    r15d,r11d
    2989c629b13b:	41 c1 e7 04                                     	shl    r15d,0x4
    2989c629b13f:	45 03 e7                                        	add    r12d,r15d
    2989c629b142:	41 54                                           	push   r12
    2989c629b144:	8b c6                                           	mov    eax,esi
    2989c629b146:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629b14a:	8b 95 50 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b0]
    2989c629b150:	e8 d3 00 ee ff                                  	call   0x2989c617b228
    2989c629b155:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    2989c629b15c:	41 83 c3 01                                     	add    r11d,0x1
    2989c629b160:	41 83 fb 04                                     	cmp    r11d,0x4
    2989c629b164:	0f 85 96 fe ff ff                               	jne    0x2989c629b000
    2989c629b16a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629b16d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629b171:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    2989c629b17b:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    2989c629b185:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    2989c629b189:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    2989c629b193:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    2989c629b19d:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    2989c629b1a2:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    2989c629b1a6:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    2989c629b1ac:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    2989c629b1b3:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    2989c629b1b7:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    2989c629b1be:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    2989c629b1c2:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    2989c629b1c7:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    2989c629b1cb:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    2989c629b1d2:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    2989c629b1d6:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    2989c629b1dc:	c5 78 10 a5 70 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x290]
    2989c629b1e4:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    2989c629b1ec:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    2989c629b1f4:	e9 85 00 00 00                                  	jmp    0x2989c629b27e
    2989c629b1f9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629b1fd:	8b c1                                           	mov    eax,ecx
    2989c629b1ff:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c629b203:	41 8b c9                                        	mov    ecx,r9d
    2989c629b206:	8b 95 80 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x280]
    2989c629b20c:	e8 17 03 ee ff                                  	call   0x2989c617b528
    2989c629b211:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629b214:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629b218:	c5 78 10 a5 70 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x290]
    2989c629b220:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    2989c629b228:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    2989c629b230:	e9 49 00 00 00                                  	jmp    0x2989c629b27e
    2989c629b235:	4d 8b c4                                        	mov    r8,r12
    2989c629b238:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    2989c629b23c:	44 8b e1                                        	mov    r12d,ecx
    2989c629b23f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c629b245:	c4 81 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm0
    2989c629b24b:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    2989c629b24f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c629b255:	c4 81 7a 7f 44 08 10                            	vmovdqu XMMWORD PTR [r8+r9*1+0x10],xmm0
    2989c629b25c:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    2989c629b260:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c629b266:	c4 81 7a 7f 44 08 20                            	vmovdqu XMMWORD PTR [r8+r9*1+0x20],xmm0
    2989c629b26d:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    2989c629b271:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c629b277:	c4 81 7a 7f 44 08 30                            	vmovdqu XMMWORD PTR [r8+r9*1+0x30],xmm0
    2989c629b27e:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    2989c629b285:	41 83 c7 01                                     	add    r15d,0x1
    2989c629b289:	41 83 ff 04                                     	cmp    r15d,0x4
    2989c629b28d:	0f 85 ed ec ff ff                               	jne    0x2989c6299f80
    2989c629b293:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    2989c629b29d:	4c 8b 15 ef ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeeef]        # 0x2989c629a193
    2989c629b2a4:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629b2a9:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629b2ad:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c629b2b1:	c5 f8 10 b5 30 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x2d0]
    2989c629b2b9:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    2989c629b2bd:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c629b2c1:	c4 c1 7a 6f b4 38 40 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x140]
    2989c629b2cb:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    2989c629b2cf:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    2989c629b2d4:	c5 f0 58 fd                                     	vaddps xmm7,xmm1,xmm5
    2989c629b2d8:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c629b2dc:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629b2e0:	c4 c1 7a 6f b4 38 50 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x150]
    2989c629b2ea:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    2989c629b2ee:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    2989c629b2f3:	c5 88 58 ed                                     	vaddps xmm5,xmm14,xmm5
    2989c629b2f7:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    2989c629b2fb:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c629b2ff:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    2989c629b309:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629b30e:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629b312:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    2989c629b316:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629b31e:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b322:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    2989c629b327:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b32b:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    2989c629b32f:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b333:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c629b337:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    2989c629b33e:	47 8b 9c 18 38 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x138]
    2989c629b346:	4d 8b e3                                        	mov    r12,r11
    2989c629b349:	41 83 c4 ff                                     	add    r12d,0xffffffff
    2989c629b34d:	0f 85 eb 00 00 00                               	jne    0x2989c629b43e
    2989c629b353:	c4 c1 7a 6f b4 38 10 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x210]
    2989c629b35d:	c4 41 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1d0]
    2989c629b367:	4d 8d 98 38 36 00 00                            	lea    r11,[r8+0x3638]
    2989c629b36e:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    2989c629b372:	c4 02 79 18 0c 3b                               	vbroadcastss xmm9,DWORD PTR [r11+r15*1]
    2989c629b378:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    2989c629b37d:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    2989c629b382:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    2989c629b387:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c629b38c:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c629b391:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    2989c629b396:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    2989c629b39b:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b39f:	c5 40 5d f6                                     	vminps xmm14,xmm7,xmm6
    2989c629b3a3:	c4 c1 7a 6f b4 38 00 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x200]
    2989c629b3ad:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    2989c629b3b7:	4d 8d 98 34 36 00 00                            	lea    r11,[r8+0x3634]
    2989c629b3be:	c4 02 79 18 0c 3b                               	vbroadcastss xmm9,DWORD PTR [r11+r15*1]
    2989c629b3c4:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    2989c629b3c9:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    2989c629b3ce:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    2989c629b3d3:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c629b3d8:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c629b3dd:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    2989c629b3e2:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    2989c629b3e7:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b3eb:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    2989c629b3ef:	c4 c1 7a 6f b4 38 f0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x1f0]
    2989c629b3f9:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    2989c629b403:	4d 8d 98 30 36 00 00                            	lea    r11,[r8+0x3630]
    2989c629b40a:	c4 02 79 18 0c 3b                               	vbroadcastss xmm9,DWORD PTR [r11+r15*1]
    2989c629b410:	c4 c1 78 58 c1                                  	vaddps xmm0,xmm0,xmm9
    2989c629b415:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b419:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b41d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c629b421:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b425:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b429:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    2989c629b42d:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b431:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b435:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c629b439:	e9 58 01 00 00                                  	jmp    0x2989c629b596
    2989c629b43e:	41 83 fc 02                                     	cmp    r12d,0x2
    2989c629b442:	0f 84 85 00 00 00                               	je     0x2989c629b4cd
    2989c629b448:	c4 c1 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1d0]
    2989c629b452:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c629b456:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b45a:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b45e:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    2989c629b468:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    2989c629b46d:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c629b472:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    2989c629b477:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    2989c629b47e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c629b482:	c4 02 79 18 0c 27                               	vbroadcastss xmm9,DWORD PTR [r15+r12*1]
    2989c629b488:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c629b48d:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c629b492:	c4 c1 40 5d c8                                  	vminps xmm1,xmm7,xmm8
    2989c629b497:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    2989c629b4a1:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    2989c629b4a6:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b4aa:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c629b4ae:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    2989c629b4b5:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    2989c629b4bb:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    2989c629b4c0:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b4c4:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c629b4c8:	e9 42 00 00 00                                  	jmp    0x2989c629b50f
    2989c629b4cd:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    2989c629b4d1:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b4d5:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b4d9:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    2989c629b4e0:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c629b4e4:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    2989c629b4ea:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    2989c629b4ee:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b4f2:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    2989c629b4f6:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    2989c629b4fd:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    2989c629b503:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    2989c629b507:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c629b50b:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c629b50f:	4d 8d b8 20 37 00 00                            	lea    r15,[r8+0x3720]
    2989c629b516:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    2989c629b51c:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c629b521:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b525:	c5 40 5d f0                                     	vminps xmm14,xmm7,xmm0
    2989c629b529:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c629b52d:	0f 84 60 00 00 00                               	je     0x2989c629b593
    2989c629b533:	c4 81 7a 10 84 20 24 37 00 00                   	vmovss xmm0,DWORD PTR [r8+r12*1+0x3724]
    2989c629b53d:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    2989c629b542:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    2989c629b548:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    2989c629b54e:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    2989c629b553:	0f 87 09 00 00 00                               	ja     0x2989c629b562
    2989c629b559:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c629b55d:	e9 05 00 00 00                                  	jmp    0x2989c629b567
    2989c629b562:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    2989c629b567:	c4 41 20 57 db                                  	vxorps xmm11,xmm11,xmm11
    2989c629b56c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c629b570:	0f 87 0a 00 00 00                               	ja     0x2989c629b580
    2989c629b576:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c629b57b:	e9 05 00 00 00                                  	jmp    0x2989c629b585
    2989c629b580:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    2989c629b585:	c4 62 79 18 e8                                  	vbroadcastss xmm13,xmm0
    2989c629b58a:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c629b58e:	e9 b2 13 00 00                                  	jmp    0x2989c629c945
    2989c629b593:	4d 8b fc                                        	mov    r15,r12
    2989c629b596:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    2989c629b59b:	c4 c1 50 5f c5                                  	vmaxps xmm0,xmm5,xmm13
    2989c629b5a0:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c629b5a4:	c4 41 7a 6f 84 38 e0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1e0]
    2989c629b5ae:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c629b5b3:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c629b5b7:	c5 40 5d e8                                     	vminps xmm13,xmm7,xmm0
    2989c629b5bb:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c629b5bf:	e9 81 13 00 00                                  	jmp    0x2989c629c945
    2989c629b5c4:	4c 8b d9                                        	mov    r11,rcx
    2989c629b5c7:	43 8b 4c 1c 38                                  	mov    ecx,DWORD PTR [r12+r11*1+0x38]
    2989c629b5cc:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    2989c629b5d1:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    2989c629b5d6:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    2989c629b5db:	c5 f8 11 85 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm0
    2989c629b5e3:	43 83 7c 1c 38 00                               	cmp    DWORD PTR [r12+r11*1+0x38],0x0
    2989c629b5e9:	0f 85 5a 12 00 00                               	jne    0x2989c629c849
    2989c629b5ef:	49 8d 4c 24 54                                  	lea    rcx,[r12+0x54]
    2989c629b5f4:	c4 e2 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [rcx+rax*1]
    2989c629b5fa:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c629b5fe:	c4 e2 79 18 04 19                               	vbroadcastss xmm0,DWORD PTR [rcx+rbx*1]
    2989c629b604:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    2989c629b608:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    2989c629b60c:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    2989c629b613:	c4 a2 79 18 14 39                               	vbroadcastss xmm2,DWORD PTR [rcx+r15*1]
    2989c629b619:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c629b61d:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    2989c629b621:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    2989c629b625:	49 8d 4c 24 50                                  	lea    rcx,[r12+0x50]
    2989c629b62a:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    2989c629b630:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c629b634:	c4 e2 79 18 34 19                               	vbroadcastss xmm6,DWORD PTR [rcx+rbx*1]
    2989c629b63a:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    2989c629b63e:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629b642:	c4 a2 79 18 34 39                               	vbroadcastss xmm6,DWORD PTR [rcx+r15*1]
    2989c629b648:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c629b64c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629b650:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c629b654:	43 8b 0c 1c                                     	mov    ecx,DWORD PTR [r12+r11*1]
    2989c629b658:	4c 89 9d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r11
    2989c629b65f:	83 f9 01                                        	cmp    ecx,0x1
    2989c629b662:	0f 85 01 0f 00 00                               	jne    0x2989c629c569
    2989c629b668:	43 8b 54 1c 28                                  	mov    edx,DWORD PTR [r12+r11*1+0x28]
    2989c629b66d:	85 d2                                           	test   edx,edx
    2989c629b66f:	0f 84 f4 0e 00 00                               	je     0x2989c629c569
    2989c629b675:	43 8b 74 1c 1c                                  	mov    esi,DWORD PTR [r12+r11*1+0x1c]
    2989c629b67a:	85 f6                                           	test   esi,esi
    2989c629b67c:	0f 8e e7 0e 00 00                               	jle    0x2989c629c569
    2989c629b682:	48 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rcx
    2989c629b689:	43 8b 4c 1c 20                                  	mov    ecx,DWORD PTR [r12+r11*1+0x20]
    2989c629b68e:	85 c9                                           	test   ecx,ecx
    2989c629b690:	0f 8e cd 0e 00 00                               	jle    0x2989c629c563
    2989c629b696:	44 8b d6                                        	mov    r10d,esi
    2989c629b699:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    2989c629b69e:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    2989c629b6a3:	47 8b 7c 1c 10                                  	mov    r15d,DWORD PTR [r12+r11*1+0x10]
    2989c629b6a8:	33 db                                           	xor    ebx,ebx
    2989c629b6aa:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    2989c629b6b1:	0f 95 c3                                        	setne  bl
    2989c629b6b4:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    2989c629b6bb:	41 0f 95 c7                                     	setne  r15b
    2989c629b6bf:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c629b6c3:	44 23 fb                                        	and    r15d,ebx
    2989c629b6c6:	0f 85 0d 00 00 00                               	jne    0x2989c629b6d9
    2989c629b6cc:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c629b6d0:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c629b6d4:	e9 0a 00 00 00                                  	jmp    0x2989c629b6e3
    2989c629b6d9:	c4 e3 79 08 f0 09                               	vroundps xmm6,xmm0,0x9
    2989c629b6df:	c5 f8 5c c6                                     	vsubps xmm0,xmm0,xmm6
    2989c629b6e3:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c629b6e7:	44 8b d1                                        	mov    r10d,ecx
    2989c629b6ea:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    2989c629b6ef:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    2989c629b6f4:	43 8b 5c 1c 14                                  	mov    ebx,DWORD PTR [r12+r11*1+0x14]
    2989c629b6f9:	33 c0                                           	xor    eax,eax
    2989c629b6fb:	81 fb 2f 81 00 00                               	cmp    ebx,0x812f
    2989c629b701:	0f 95 c0                                        	setne  al
    2989c629b704:	81 fb 00 29 00 00                               	cmp    ebx,0x2900
    2989c629b70a:	0f 95 c3                                        	setne  bl
    2989c629b70d:	0f b6 db                                        	movzx  ebx,bl
    2989c629b710:	23 d8                                           	and    ebx,eax
    2989c629b712:	0f 85 0d 00 00 00                               	jne    0x2989c629b725
    2989c629b718:	c5 a0 5f f2                                     	vmaxps xmm6,xmm11,xmm2
    2989c629b71c:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    2989c629b720:	e9 0a 00 00 00                                  	jmp    0x2989c629b72f
    2989c629b725:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    2989c629b72b:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    2989c629b72f:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    2989c629b733:	4c 8b 15 59 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea59]        # 0x2989c629a193
    2989c629b73a:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c629b73f:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c629b743:	c5 50 58 c6                                     	vaddps xmm8,xmm5,xmm6
    2989c629b747:	43 8b 44 1c 0c                                  	mov    eax,DWORD PTR [r12+r11*1+0xc]
    2989c629b74c:	33 c0                                           	xor    eax,eax
    2989c629b74e:	43 81 7c 1c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+r11*1+0xc],0x2600
    2989c629b757:	0f 94 c0                                        	sete   al
    2989c629b75a:	85 c0                                           	test   eax,eax
    2989c629b75c:	0f 85 5b 00 00 00                               	jne    0x2989c629b7bd
    2989c629b762:	c4 c3 79 08 e8 09                               	vroundps xmm5,xmm8,0x9
    2989c629b768:	4c 8b 15 a6 b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb1a6]        # 0x2989c6296915
    2989c629b76f:	c4 41 50 54 0a                                  	vandps xmm9,xmm5,XMMWORD PTR [r10]
    2989c629b774:	4c 8b 15 e5 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd9e5]        # 0x2989c6299160
    2989c629b77b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c629b780:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c629b785:	c4 41 30 c2 ca 01                               	vcmpltps xmm9,xmm9,xmm10
    2989c629b78b:	4c 8b 15 8c d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd98c]        # 0x2989c629911e
    2989c629b792:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    2989c629b797:	c4 c1 50 54 d7                                  	vandps xmm2,xmm5,xmm15
    2989c629b79c:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    2989c629b7a2:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c629b7a6:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c629b7ab:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629b7af:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c629b7b3:	c4 c1 79 28 e8                                  	vmovapd xmm5,xmm8
    2989c629b7b8:	e9 49 00 00 00                                  	jmp    0x2989c629b806
    2989c629b7bd:	c4 e3 79 08 f5 09                               	vroundps xmm6,xmm5,0x9
    2989c629b7c3:	4c 8b 15 4b b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb14b]        # 0x2989c6296915
    2989c629b7ca:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    2989c629b7cf:	4c 8b 15 8a d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd98a]        # 0x2989c6299160
    2989c629b7d6:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c629b7db:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c629b7e0:	c4 41 38 c2 ca 01                               	vcmpltps xmm9,xmm8,xmm10
    2989c629b7e6:	4c 8b 15 31 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd931]        # 0x2989c629911e
    2989c629b7ed:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    2989c629b7f2:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    2989c629b7f7:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    2989c629b7fd:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c629b801:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c629b806:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    2989c629b80c:	4c 8b 15 0b d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd90b]        # 0x2989c629911e
    2989c629b813:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c629b819:	c4 c1 38 54 ff                                  	vandps xmm7,xmm8,xmm15
    2989c629b81e:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c629b824:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    2989c629b828:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    2989c629b82d:	4c 8b 15 0d d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd90d]        # 0x2989c6299141
    2989c629b834:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c629b839:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c629b83e:	4c 8b 15 d0 b0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb0d0]        # 0x2989c6296915
    2989c629b845:	c4 41 38 54 22                                  	vandps xmm12,xmm8,XMMWORD PTR [r10]
    2989c629b84a:	c4 41 18 c2 e2 01                               	vcmpltps xmm12,xmm12,xmm10
    2989c629b850:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    2989c629b855:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    2989c629b85a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c629b85f:	8d 7e ff                                        	lea    edi,[rsi-0x1]
    2989c629b862:	c5 79 6e e7                                     	vmovd  xmm12,edi
    2989c629b866:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    2989c629b86b:	43 8b 7c 1c 2c                                  	mov    edi,DWORD PTR [r12+r11*1+0x2c]
    2989c629b870:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    2989c629b875:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    2989c629b87a:	c4 42 11 39 ec                                  	vpminsd xmm13,xmm13,xmm12
    2989c629b87f:	45 85 ff                                        	test   r15d,r15d
    2989c629b882:	0f 84 54 00 00 00                               	je     0x2989c629b8dc
    2989c629b888:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c629b88c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629b891:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    2989c629b896:	85 ff                                           	test   edi,edi
    2989c629b898:	0f 85 3e 00 00 00                               	jne    0x2989c629b8dc
    2989c629b89e:	c5 79 6e ee                                     	vmovd  xmm13,esi
    2989c629b8a2:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629b8a7:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    2989c629b8ac:	c4 c1 41 66 cc                                  	vpcmpgtd xmm1,xmm7,xmm12
    2989c629b8b1:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    2989c629b8b6:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629b8bb:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    2989c629b8c0:	c5 09 66 f7                                     	vpcmpgtd xmm14,xmm14,xmm7
    2989c629b8c4:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    2989c629b8c8:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    2989c629b8cd:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    2989c629b8d2:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    2989c629b8d7:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    2989c629b8dc:	c4 41 31 df fb                                  	vpandn xmm15,xmm9,xmm11
    2989c629b8e1:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    2989c629b8e6:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c629b8eb:	44 8d 49 ff                                     	lea    r9d,[rcx-0x1]
    2989c629b8ef:	c4 c1 79 6e d1                                  	vmovd  xmm2,r9d
    2989c629b8f4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c629b8f9:	47 8b 4c 1c 30                                  	mov    r9d,DWORD PTR [r12+r11*1+0x30]
    2989c629b8fe:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    2989c629b903:	c4 42 31 3d f6                                  	vpmaxsd xmm14,xmm9,xmm14
    2989c629b908:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    2989c629b90d:	85 db                                           	test   ebx,ebx
    2989c629b90f:	0f 84 4f 00 00 00                               	je     0x2989c629b964
    2989c629b915:	c4 41 79 6e f1                                  	vmovd  xmm14,r9d
    2989c629b91a:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629b91f:	c4 41 09 db f1                                  	vpand  xmm14,xmm14,xmm9
    2989c629b924:	45 85 c9                                        	test   r9d,r9d
    2989c629b927:	0f 85 37 00 00 00                               	jne    0x2989c629b964
    2989c629b92d:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    2989c629b931:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c629b936:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c629b93a:	c5 b1 66 da                                     	vpcmpgtd xmm3,xmm9,xmm2
    2989c629b93e:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    2989c629b943:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629b948:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    2989c629b94d:	c4 c1 71 66 c9                                  	vpcmpgtd xmm1,xmm1,xmm9
    2989c629b952:	c5 71 df fb                                     	vpandn xmm15,xmm1,xmm3
    2989c629b956:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    2989c629b95a:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    2989c629b95f:	c4 41 31 fe f6                                  	vpaddd xmm14,xmm9,xmm14
    2989c629b964:	c5 f9 6e ce                                     	vmovd  xmm1,esi
    2989c629b968:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c629b96d:	c4 62 09 40 f1                                  	vpmulld xmm14,xmm14,xmm1
    2989c629b972:	c4 c1 09 fe dd                                  	vpaddd xmm3,xmm14,xmm13
    2989c629b977:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    2989c629b97d:	c4 c3 79 16 db 02                               	vpextrd r11d,xmm3,0x2
    2989c629b983:	48 89 b5 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rsi
    2989c629b98a:	c4 e3 79 16 de 01                               	vpextrd esi,xmm3,0x1
    2989c629b990:	4c 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r11
    2989c629b997:	c4 c1 79 7e db                                  	vmovd  r11d,xmm3
    2989c629b99c:	85 c0                                           	test   eax,eax
    2989c629b99e:	0f 85 d9 09 00 00                               	jne    0x2989c629c37d
    2989c629b9a4:	4c 8b 15 70 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea70]        # 0x2989c629a41b
    2989c629b9ab:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629b9b0:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c629b9b4:	c5 c1 fe fb                                     	vpaddd xmm7,xmm7,xmm3
    2989c629b9b8:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c629b9bc:	c4 e2 41 3d e4                                  	vpmaxsd xmm4,xmm7,xmm4
    2989c629b9c1:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    2989c629b9c6:	45 85 ff                                        	test   r15d,r15d
    2989c629b9c9:	0f 84 43 00 00 00                               	je     0x2989c629ba12
    2989c629b9cf:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    2989c629b9d3:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c629b9d8:	c5 c1 db e4                                     	vpand  xmm4,xmm7,xmm4
    2989c629b9dc:	85 ff                                           	test   edi,edi
    2989c629b9de:	0f 85 2e 00 00 00                               	jne    0x2989c629ba12
    2989c629b9e4:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c629b9e8:	c4 41 41 66 e4                                  	vpcmpgtd xmm12,xmm7,xmm12
    2989c629b9ed:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    2989c629b9f1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629b9f6:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    2989c629b9fb:	c5 d9 66 e7                                     	vpcmpgtd xmm4,xmm4,xmm7
    2989c629b9ff:	c4 41 59 df fc                                  	vpandn xmm15,xmm4,xmm12
    2989c629ba04:	c5 71 db e4                                     	vpand  xmm12,xmm1,xmm4
    2989c629ba08:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    2989c629ba0d:	c4 c1 41 fe e4                                  	vpaddd xmm4,xmm7,xmm12
    2989c629ba12:	c5 b1 fe fb                                     	vpaddd xmm7,xmm9,xmm3
    2989c629ba16:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c629ba1b:	c4 42 41 3d c9                                  	vpmaxsd xmm9,xmm7,xmm9
    2989c629ba20:	c4 62 31 39 ca                                  	vpminsd xmm9,xmm9,xmm2
    2989c629ba25:	85 db                                           	test   ebx,ebx
    2989c629ba27:	0f 84 4f 00 00 00                               	je     0x2989c629ba7c
    2989c629ba2d:	c4 41 79 6e c9                                  	vmovd  xmm9,r9d
    2989c629ba32:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c629ba37:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    2989c629ba3b:	45 85 c9                                        	test   r9d,r9d
    2989c629ba3e:	0f 85 38 00 00 00                               	jne    0x2989c629ba7c
    2989c629ba44:	c5 79 6e c9                                     	vmovd  xmm9,ecx
    2989c629ba48:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c629ba4d:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    2989c629ba52:	c5 c1 66 d2                                     	vpcmpgtd xmm2,xmm7,xmm2
    2989c629ba56:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    2989c629ba5b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629ba60:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    2989c629ba65:	c5 19 66 e7                                     	vpcmpgtd xmm12,xmm12,xmm7
    2989c629ba69:	c5 19 df fa                                     	vpandn xmm15,xmm12,xmm2
    2989c629ba6d:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    2989c629ba72:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c629ba77:	c4 41 41 fe c9                                  	vpaddd xmm9,xmm7,xmm9
    2989c629ba7c:	c4 e2 31 40 f9                                  	vpmulld xmm7,xmm9,xmm1
    2989c629ba81:	c4 41 41 fe cd                                  	vpaddd xmm9,xmm7,xmm13
    2989c629ba86:	45 85 c0                                        	test   r8d,r8d
    2989c629ba89:	0f 85 fe 00 00 00                               	jne    0x2989c629bb8d
    2989c629ba8f:	c5 11 fe e3                                     	vpaddd xmm12,xmm13,xmm3
    2989c629ba93:	c4 41 59 76 e4                                  	vpcmpeqd xmm12,xmm4,xmm12
    2989c629ba98:	c4 c1 78 50 fc                                  	vmovmskps edi,xmm12
    2989c629ba9d:	83 ff 0f                                        	cmp    edi,0xf
    2989c629baa0:	0f 84 47 00 00 00                               	je     0x2989c629baed
    2989c629baa6:	4c 89 85 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r8
    2989c629baad:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629bab4:	41 83 e1 04                                     	and    r9d,0x4
    2989c629bab8:	8b bd 80 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x280]
    2989c629babe:	83 e7 02                                        	and    edi,0x2
    2989c629bac1:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    2989c629bac8:	41 83 e7 01                                     	and    r15d,0x1
    2989c629bacc:	8d 04 b2                                        	lea    eax,[rdx+rsi*4]
    2989c629bacf:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    2989c629bad3:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bad7:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629badb:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    2989c629bae1:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c629bae4:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    2989c629bae8:	e9 35 01 00 00                                  	jmp    0x2989c629bc22
    2989c629baed:	42 8d 3c 9a                                     	lea    edi,[rdx+r11*4]
    2989c629baf1:	c4 c1 7b 10 3c 3c                               	vmovsd xmm7,QWORD PTR [r12+rdi*1]
    2989c629baf7:	8d 3c b2                                        	lea    edi,[rdx+rsi*4]
    2989c629bafa:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    2989c629bb00:	c4 c1 41 6c fc                                  	vpunpcklqdq xmm7,xmm7,xmm12
    2989c629bb05:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    2989c629bb0b:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629bb0e:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    2989c629bb14:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    2989c629bb1b:	42 8d 3c ba                                     	lea    edi,[rdx+r15*4]
    2989c629bb1f:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    2989c629bb25:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    2989c629bb2a:	c4 41 40 c6 ec dd                               	vshufps xmm13,xmm7,xmm12,0xdd
    2989c629bb30:	c4 c1 40 c6 fc 88                               	vshufps xmm7,xmm7,xmm12,0x88
    2989c629bb36:	c4 c1 31 72 f1 02                               	vpslld xmm9,xmm9,0x2
    2989c629bb3c:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c629bb40:	03 fa                                           	add    edi,edx
    2989c629bb42:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    2989c629bb48:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c629bb4e:	03 fa                                           	add    edi,edx
    2989c629bb50:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    2989c629bb56:	c4 41 19 6c e6                                  	vpunpcklqdq xmm12,xmm12,xmm14
    2989c629bb5b:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c629bb61:	03 fa                                           	add    edi,edx
    2989c629bb63:	c4 41 7b 10 34 3c                               	vmovsd xmm14,QWORD PTR [r12+rdi*1]
    2989c629bb69:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c629bb6f:	03 fa                                           	add    edi,edx
    2989c629bb71:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    2989c629bb77:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    2989c629bb7c:	c4 41 18 c6 f1 dd                               	vshufps xmm14,xmm12,xmm9,0xdd
    2989c629bb82:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    2989c629bb88:	e9 60 04 00 00                                  	jmp    0x2989c629bfed
    2989c629bb8d:	4c 89 85 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r8
    2989c629bb94:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629bb9b:	41 83 e1 04                                     	and    r9d,0x4
    2989c629bb9f:	8b bd 80 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x280]
    2989c629bba5:	83 e7 02                                        	and    edi,0x2
    2989c629bba8:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    2989c629bbaf:	41 83 e7 01                                     	and    r15d,0x1
    2989c629bbb3:	45 85 ff                                        	test   r15d,r15d
    2989c629bbb6:	0f 85 08 00 00 00                               	jne    0x2989c629bbc4
    2989c629bbbc:	45 33 db                                        	xor    r11d,r11d
    2989c629bbbf:	e9 08 00 00 00                                  	jmp    0x2989c629bbcc
    2989c629bbc4:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bbc8:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629bbcc:	85 ff                                           	test   edi,edi
    2989c629bbce:	0f 85 07 00 00 00                               	jne    0x2989c629bbdb
    2989c629bbd4:	33 c0                                           	xor    eax,eax
    2989c629bbd6:	e9 07 00 00 00                                  	jmp    0x2989c629bbe2
    2989c629bbdb:	8d 04 b2                                        	lea    eax,[rdx+rsi*4]
    2989c629bbde:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    2989c629bbe2:	45 85 c9                                        	test   r9d,r9d
    2989c629bbe5:	0f 85 07 00 00 00                               	jne    0x2989c629bbf2
    2989c629bbeb:	33 db                                           	xor    ebx,ebx
    2989c629bbed:	e9 0d 00 00 00                                  	jmp    0x2989c629bbff
    2989c629bbf2:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    2989c629bbf8:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c629bbfb:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    2989c629bbff:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629bc06:	0f 83 16 00 00 00                               	jae    0x2989c629bc22
    2989c629bc0c:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    2989c629bc11:	c4 41 79 6e eb                                  	vmovd  xmm13,r11d
    2989c629bc16:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629bc1b:	33 c9                                           	xor    ecx,ecx
    2989c629bc1d:	e9 5e 00 00 00                                  	jmp    0x2989c629bc80
    2989c629bc22:	8b 8d c0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x240]
    2989c629bc28:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    2989c629bc2b:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    2989c629bc2f:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    2989c629bc34:	c4 41 79 6e eb                                  	vmovd  xmm13,r11d
    2989c629bc39:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629bc3e:	45 85 c0                                        	test   r8d,r8d
    2989c629bc41:	0f 85 39 00 00 00                               	jne    0x2989c629bc80
    2989c629bc47:	c4 43 79 16 e3 01                               	vpextrd r11d,xmm12,0x1
    2989c629bc4d:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bc51:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629bc55:	c5 79 7e e6                                     	vmovd  esi,xmm12
    2989c629bc59:	8d 34 b2                                        	lea    esi,[rdx+rsi*4]
    2989c629bc5c:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    2989c629bc60:	c4 43 79 16 e0 02                               	vpextrd r8d,xmm12,0x2
    2989c629bc66:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c629bc6a:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    2989c629bc6e:	4c 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r9
    2989c629bc75:	44 8b cf                                        	mov    r9d,edi
    2989c629bc78:	41 8b f8                                        	mov    edi,r8d
    2989c629bc7b:	e9 b1 00 00 00                                  	jmp    0x2989c629bd31
    2989c629bc80:	45 85 ff                                        	test   r15d,r15d
    2989c629bc83:	0f 85 07 00 00 00                               	jne    0x2989c629bc90
    2989c629bc89:	33 f6                                           	xor    esi,esi
    2989c629bc8b:	e9 0d 00 00 00                                  	jmp    0x2989c629bc9d
    2989c629bc90:	c4 41 79 7e e3                                  	vmovd  r11d,xmm12
    2989c629bc95:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bc99:	43 8b 34 1c                                     	mov    esi,DWORD PTR [r12+r11*1]
    2989c629bc9d:	85 ff                                           	test   edi,edi
    2989c629bc9f:	0f 85 08 00 00 00                               	jne    0x2989c629bcad
    2989c629bca5:	45 33 db                                        	xor    r11d,r11d
    2989c629bca8:	e9 0e 00 00 00                                  	jmp    0x2989c629bcbb
    2989c629bcad:	c4 43 79 16 e3 01                               	vpextrd r11d,xmm12,0x1
    2989c629bcb3:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bcb7:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629bcbb:	45 85 c9                                        	test   r9d,r9d
    2989c629bcbe:	0f 85 10 00 00 00                               	jne    0x2989c629bcd4
    2989c629bcc4:	48 c7 85 c0 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x240],0x0
    2989c629bccf:	e9 1c 00 00 00                                  	jmp    0x2989c629bcf0
    2989c629bcd4:	c4 43 79 16 e0 02                               	vpextrd r8d,xmm12,0x2
    2989c629bcda:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c629bcde:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    2989c629bce2:	4c 89 85 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r8
    2989c629bce9:	44 8b 85 20 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x2e0]
    2989c629bcf0:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629bcf7:	0f 83 21 00 00 00                               	jae    0x2989c629bd1e
    2989c629bcfd:	48 89 85 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rax
    2989c629bd04:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    2989c629bd0a:	48 89 b5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rsi
    2989c629bd11:	41 8b f3                                        	mov    esi,r11d
    2989c629bd14:	44 8b df                                        	mov    r11d,edi
    2989c629bd17:	33 ff                                           	xor    edi,edi
    2989c629bd19:	e9 48 00 00 00                                  	jmp    0x2989c629bd66
    2989c629bd1e:	44 8b d7                                        	mov    r10d,edi
    2989c629bd21:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    2989c629bd27:	4c 89 8d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r9
    2989c629bd2e:	45 8b ca                                        	mov    r9d,r10d
    2989c629bd31:	c4 43 79 16 e0 03                               	vpextrd r8d,xmm12,0x3
    2989c629bd37:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c629bd3b:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    2989c629bd3f:	48 89 85 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rax
    2989c629bd46:	8b c7                                           	mov    eax,edi
    2989c629bd48:	41 8b f8                                        	mov    edi,r8d
    2989c629bd4b:	48 89 b5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rsi
    2989c629bd52:	41 8b f3                                        	mov    esi,r11d
    2989c629bd55:	44 8b 85 20 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x2e0]
    2989c629bd5c:	45 8b d9                                        	mov    r11d,r9d
    2989c629bd5f:	44 8b 8d c0 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x240]
    2989c629bd66:	c4 63 11 22 a5 90 fc ff ff 01                   	vpinsrd xmm12,xmm13,DWORD PTR [rbp-0x370],0x1
    2989c629bd70:	c5 79 6e ad 10 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x2f0]
    2989c629bd78:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629bd7d:	c4 63 11 22 ee 01                               	vpinsrd xmm13,xmm13,esi,0x1
    2989c629bd83:	48 89 bd c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rdi
    2989c629bd8a:	45 85 c0                                        	test   r8d,r8d
    2989c629bd8d:	0f 85 47 00 00 00                               	jne    0x2989c629bdda
    2989c629bd93:	c4 63 79 16 ce 01                               	vpextrd esi,xmm9,0x1
    2989c629bd99:	8d 34 b2                                        	lea    esi,[rdx+rsi*4]
    2989c629bd9c:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    2989c629bda0:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c629bda4:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629bda7:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629bdab:	48 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rcx
    2989c629bdb2:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    2989c629bdb8:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    2989c629bdbb:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    2989c629bdbf:	48 89 b5 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rsi
    2989c629bdc6:	8b f1                                           	mov    esi,ecx
    2989c629bdc8:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    2989c629bdcf:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    2989c629bdd5:	e9 d4 00 00 00                                  	jmp    0x2989c629beae
    2989c629bdda:	45 85 ff                                        	test   r15d,r15d
    2989c629bddd:	0f 85 07 00 00 00                               	jne    0x2989c629bdea
    2989c629bde3:	33 f6                                           	xor    esi,esi
    2989c629bde5:	e9 0b 00 00 00                                  	jmp    0x2989c629bdf5
    2989c629bdea:	c5 79 7e ce                                     	vmovd  esi,xmm9
    2989c629bdee:	8d 34 b2                                        	lea    esi,[rdx+rsi*4]
    2989c629bdf1:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    2989c629bdf5:	45 85 db                                        	test   r11d,r11d
    2989c629bdf8:	0f 85 10 00 00 00                               	jne    0x2989c629be0e
    2989c629bdfe:	48 c7 85 90 fc ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x370],0x0
    2989c629be09:	e9 1a 00 00 00                                  	jmp    0x2989c629be28
    2989c629be0e:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c629be14:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629be17:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629be1b:	48 89 bd 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdi
    2989c629be22:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    2989c629be28:	45 85 c9                                        	test   r9d,r9d
    2989c629be2b:	0f 85 10 00 00 00                               	jne    0x2989c629be41
    2989c629be31:	48 c7 85 10 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x2f0],0x0
    2989c629be3c:	e9 1a 00 00 00                                  	jmp    0x2989c629be5b
    2989c629be41:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c629be47:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629be4a:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629be4e:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    2989c629be55:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    2989c629be5b:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629be62:	0f 83 35 00 00 00                               	jae    0x2989c629be9d
    2989c629be68:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    2989c629be6e:	c4 63 11 22 e0 02                               	vpinsrd xmm12,xmm13,eax,0x2
    2989c629be74:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    2989c629be78:	c5 79 6e ee                                     	vmovd  xmm13,esi
    2989c629be7c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629be81:	c4 63 11 22 ad 90 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x370],0x1
    2989c629be8b:	c4 63 11 22 ad 10 fd ff ff 02                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x2f0],0x2
    2989c629be95:	45 33 c0                                        	xor    r8d,r8d
    2989c629be98:	e9 9d 00 00 00                                  	jmp    0x2989c629bf3a
    2989c629be9d:	4c 8b d6                                        	mov    r10,rsi
    2989c629bea0:	48 8b b5 10 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x2f0]
    2989c629bea7:	4c 89 95 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r10
    2989c629beae:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c629beb4:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629beb7:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629bebb:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    2989c629bec1:	c4 63 11 22 e0 02                               	vpinsrd xmm12,xmm13,eax,0x2
    2989c629bec7:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    2989c629becb:	c5 79 6e ad 10 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x2f0]
    2989c629bed3:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629bed8:	c4 63 11 22 ad 90 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x370],0x1
    2989c629bee2:	c4 63 11 22 ee 02                               	vpinsrd xmm13,xmm13,esi,0x2
    2989c629bee8:	45 85 c0                                        	test   r8d,r8d
    2989c629beeb:	0f 85 40 00 00 00                               	jne    0x2989c629bf31
    2989c629bef1:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    2989c629bef7:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c629befb:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    2989c629beff:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    2989c629bf04:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bf08:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629bf0c:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    2989c629bf12:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c629bf16:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629bf1a:	41 8b c7                                        	mov    eax,r15d
    2989c629bf1d:	45 8b fb                                        	mov    r15d,r11d
    2989c629bf20:	45 8b d8                                        	mov    r11d,r8d
    2989c629bf23:	44 8b c7                                        	mov    r8d,edi
    2989c629bf26:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    2989c629bf2c:	e9 77 00 00 00                                  	jmp    0x2989c629bfa8
    2989c629bf31:	44 8b c7                                        	mov    r8d,edi
    2989c629bf34:	8b bd c0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x240]
    2989c629bf3a:	45 85 ff                                        	test   r15d,r15d
    2989c629bf3d:	0f 85 08 00 00 00                               	jne    0x2989c629bf4b
    2989c629bf43:	45 33 ff                                        	xor    r15d,r15d
    2989c629bf46:	e9 0d 00 00 00                                  	jmp    0x2989c629bf58
    2989c629bf4b:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    2989c629bf50:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c629bf54:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629bf58:	45 85 db                                        	test   r11d,r11d
    2989c629bf5b:	0f 85 08 00 00 00                               	jne    0x2989c629bf69
    2989c629bf61:	45 33 db                                        	xor    r11d,r11d
    2989c629bf64:	e9 0e 00 00 00                                  	jmp    0x2989c629bf77
    2989c629bf69:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    2989c629bf6f:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629bf73:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629bf77:	45 85 c9                                        	test   r9d,r9d
    2989c629bf7a:	0f 85 07 00 00 00                               	jne    0x2989c629bf87
    2989c629bf80:	33 c0                                           	xor    eax,eax
    2989c629bf82:	e9 0d 00 00 00                                  	jmp    0x2989c629bf94
    2989c629bf87:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    2989c629bf8d:	8d 04 82                                        	lea    eax,[rdx+rax*4]
    2989c629bf90:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    2989c629bf94:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629bf9b:	0f 83 07 00 00 00                               	jae    0x2989c629bfa8
    2989c629bfa1:	33 db                                           	xor    ebx,ebx
    2989c629bfa3:	e9 0d 00 00 00                                  	jmp    0x2989c629bfb5
    2989c629bfa8:	c4 e3 79 16 fb 03                               	vpextrd ebx,xmm7,0x3
    2989c629bfae:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c629bfb1:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    2989c629bfb5:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    2989c629bfbb:	c4 63 19 22 cf 03                               	vpinsrd xmm9,xmm12,edi,0x3
    2989c629bfc1:	c4 41 79 6e e7                                  	vmovd  xmm12,r15d
    2989c629bfc6:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    2989c629bfcb:	c4 43 19 22 e3 01                               	vpinsrd xmm12,xmm12,r11d,0x1
    2989c629bfd1:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    2989c629bfd7:	c4 63 19 22 f3 03                               	vpinsrd xmm14,xmm12,ebx,0x3
    2989c629bfdd:	c4 43 11 22 e0 03                               	vpinsrd xmm12,xmm13,r8d,0x3
    2989c629bfe3:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    2989c629bfe8:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    2989c629bfed:	c5 99 72 d7 18                                  	vpsrld xmm12,xmm7,0x18
    2989c629bff2:	c4 c1 71 72 d5 18                               	vpsrld xmm1,xmm13,0x18
    2989c629bff8:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    2989c629bffc:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c629c000:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    2989c629c006:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    2989c629c00a:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    2989c629c014:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c629c019:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c629c01d:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    2989c629c022:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    2989c629c02c:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c629c031:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c629c036:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c629c03b:	4c 8b 15 c5 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0c5]        # 0x2989c6299107
    2989c629c042:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629c047:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c629c04b:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    2989c629c04f:	4c 8b 15 c8 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0c8]        # 0x2989c629911e
    2989c629c056:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c629c05b:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    2989c629c060:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c629c066:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    2989c629c06a:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    2989c629c06f:	4c 8b 15 9f a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa89f]        # 0x2989c6296915
    2989c629c076:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c629c07b:	c4 c1 78 c2 c2 01                               	vcmpltps xmm0,xmm0,xmm10
    2989c629c081:	c4 41 79 df fb                                  	vpandn xmm15,xmm0,xmm11
    2989c629c086:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    2989c629c08a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629c08f:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    2989c629c093:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    2989c629c097:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    2989c629c09d:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    2989c629c0a1:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    2989c629c0a5:	c5 d0 5c ee                                     	vsubps xmm5,xmm5,xmm6
    2989c629c0a9:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    2989c629c0ae:	c5 d0 58 eb                                     	vaddps xmm5,xmm5,xmm3
    2989c629c0b2:	4c 8b 15 65 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd065]        # 0x2989c629911e
    2989c629c0b9:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    2989c629c0be:	c4 c1 50 54 f7                                  	vandps xmm6,xmm5,xmm15
    2989c629c0c3:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    2989c629c0c9:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    2989c629c0cd:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    2989c629c0d2:	4c 8b 15 3c a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa83c]        # 0x2989c6296915
    2989c629c0d9:	c4 c1 50 54 2a                                  	vandps xmm5,xmm5,XMMWORD PTR [r10]
    2989c629c0de:	c4 c1 50 c2 ea 01                               	vcmpltps xmm5,xmm5,xmm10
    2989c629c0e4:	c4 41 51 df fb                                  	vpandn xmm15,xmm5,xmm11
    2989c629c0e9:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    2989c629c0ed:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629c0f2:	c5 e9 fa f5                                     	vpsubd xmm6,xmm2,xmm5
    2989c629c0f6:	c4 62 19 40 c6                                  	vpmulld xmm8,xmm12,xmm6
    2989c629c0fb:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    2989c629c101:	c4 c1 21 72 d6 18                               	vpsrld xmm11,xmm14,0x18
    2989c629c107:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    2989c629c10c:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    2989c629c112:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    2989c629c117:	c5 29 f5 d0                                     	vpmaddwd xmm10,xmm10,xmm0
    2989c629c11b:	c4 62 29 40 d5                                  	vpmulld xmm10,xmm10,xmm5
    2989c629c120:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c629c125:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    2989c629c12f:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c629c134:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c629c139:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c629c13e:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c629c144:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c149:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c629c14f:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c629c154:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c159:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c629c15f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c629c164:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c629c169:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c629c16e:	4c 8b 15 de e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8de]        # 0x2989c629aa53
    2989c629c175:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c629c17a:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c629c17f:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    2989c629c184:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629c187:	c4 41 7a 7f 84 3c 60 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x260],xmm8
    2989c629c191:	c5 b9 72 d7 10                                  	vpsrld xmm8,xmm7,0x10
    2989c629c196:	4c 8b 15 ce e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7ce]        # 0x2989c629a96b
    2989c629c19d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c629c1a2:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c629c1a7:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    2989c629c1ac:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    2989c629c1b2:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c629c1b7:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    2989c629c1bb:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    2989c629c1c1:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    2989c629c1c5:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    2989c629c1c9:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    2989c629c1ce:	c4 c1 69 72 d1 10                               	vpsrld xmm2,xmm9,0x10
    2989c629c1d4:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c629c1d9:	c4 c1 61 72 d6 10                               	vpsrld xmm3,xmm14,0x10
    2989c629c1df:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    2989c629c1e4:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    2989c629c1e8:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    2989c629c1ee:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    2989c629c1f2:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    2989c629c1f6:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    2989c629c1fb:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    2989c629c1ff:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c629c204:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c629c20a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c20f:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c629c215:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c629c21a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c21f:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c629c225:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c629c22a:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c629c22f:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c629c234:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    2989c629c239:	c4 41 7a 7f 84 3c 50 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x250],xmm8
    2989c629c243:	c5 b9 72 d7 08                                  	vpsrld xmm8,xmm7,0x8
    2989c629c248:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    2989c629c24d:	c4 c1 69 72 d5 08                               	vpsrld xmm2,xmm13,0x8
    2989c629c253:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c629c258:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    2989c629c25c:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    2989c629c262:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    2989c629c266:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    2989c629c26a:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    2989c629c26f:	c4 c1 69 72 d1 08                               	vpsrld xmm2,xmm9,0x8
    2989c629c275:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c629c27a:	c4 c1 61 72 d6 08                               	vpsrld xmm3,xmm14,0x8
    2989c629c280:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    2989c629c285:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    2989c629c289:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    2989c629c28f:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    2989c629c293:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    2989c629c297:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    2989c629c29c:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    2989c629c2a0:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c629c2a5:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c629c2ab:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c2b0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c629c2b6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c629c2bb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c2c0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c629c2c6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c629c2cb:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c629c2d0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c629c2d5:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    2989c629c2da:	c4 41 7a 7f 84 3c 40 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x240],xmm8
    2989c629c2e4:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    2989c629c2e9:	c4 41 11 db c4                                  	vpand  xmm8,xmm13,xmm12
    2989c629c2ee:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    2989c629c2f3:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    2989c629c2f9:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    2989c629c2fe:	c5 c1 f5 f8                                     	vpmaddwd xmm7,xmm7,xmm0
    2989c629c302:	c4 e2 41 40 f6                                  	vpmulld xmm6,xmm7,xmm6
    2989c629c307:	c4 c1 31 db fc                                  	vpand  xmm7,xmm9,xmm12
    2989c629c30c:	c4 41 09 db c4                                  	vpand  xmm8,xmm14,xmm12
    2989c629c311:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    2989c629c316:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    2989c629c31c:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    2989c629c321:	c5 c1 f5 c0                                     	vpmaddwd xmm0,xmm7,xmm0
    2989c629c325:	c4 e2 79 40 c5                                  	vpmulld xmm0,xmm0,xmm5
    2989c629c32a:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    2989c629c32e:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    2989c629c333:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    2989c629c338:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c33d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c629c343:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c629c348:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c34d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c629c352:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c629c356:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c629c35a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c629c35f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    2989c629c364:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    2989c629c36e:	4d 8b c4                                        	mov    r8,r12
    2989c629c371:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    2989c629c378:	e9 1f 05 00 00                                  	jmp    0x2989c629c89c
    2989c629c37d:	45 85 c0                                        	test   r8d,r8d
    2989c629c380:	0f 85 22 00 00 00                               	jne    0x2989c629c3a8
    2989c629c386:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    2989c629c38c:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629c38f:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629c393:	44 8d 04 b2                                     	lea    r8d,[rdx+rsi*4]
    2989c629c397:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    2989c629c39b:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c629c39f:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c629c3a3:	e9 67 00 00 00                                  	jmp    0x2989c629c40f
    2989c629c3a8:	f6 85 80 fd ff ff 01                            	test   BYTE PTR [rbp-0x280],0x1
    2989c629c3af:	0f 85 08 00 00 00                               	jne    0x2989c629c3bd
    2989c629c3b5:	45 33 db                                        	xor    r11d,r11d
    2989c629c3b8:	e9 08 00 00 00                                  	jmp    0x2989c629c3c5
    2989c629c3bd:	42 8d 3c 9a                                     	lea    edi,[rdx+r11*4]
    2989c629c3c1:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    2989c629c3c5:	f6 85 80 fd ff ff 02                            	test   BYTE PTR [rbp-0x280],0x2
    2989c629c3cc:	0f 85 08 00 00 00                               	jne    0x2989c629c3da
    2989c629c3d2:	45 33 c0                                        	xor    r8d,r8d
    2989c629c3d5:	e9 07 00 00 00                                  	jmp    0x2989c629c3e1
    2989c629c3da:	8d 3c b2                                        	lea    edi,[rdx+rsi*4]
    2989c629c3dd:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    2989c629c3e1:	f6 85 80 fd ff ff 04                            	test   BYTE PTR [rbp-0x280],0x4
    2989c629c3e8:	0f 85 07 00 00 00                               	jne    0x2989c629c3f5
    2989c629c3ee:	33 ff                                           	xor    edi,edi
    2989c629c3f0:	e9 0d 00 00 00                                  	jmp    0x2989c629c402
    2989c629c3f5:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    2989c629c3fb:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c629c3fe:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c629c402:	83 bd 80 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x280],0x8
    2989c629c409:	0f 82 14 00 00 00                               	jb     0x2989c629c423
    2989c629c40f:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    2989c629c416:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c629c41a:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629c41e:	e9 03 00 00 00                                  	jmp    0x2989c629c426
    2989c629c423:	45 33 ff                                        	xor    r15d,r15d
    2989c629c426:	c4 c1 79 6e c3                                  	vmovd  xmm0,r11d
    2989c629c42b:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c629c430:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    2989c629c436:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    2989c629c43c:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    2989c629c442:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    2989c629c447:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c44c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c629c452:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c629c457:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c45c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c629c461:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c629c465:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c629c469:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c629c46e:	4c 8b 15 de e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5de]        # 0x2989c629aa53
    2989c629c475:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c629c47a:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c629c47e:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    2989c629c482:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629c485:	c4 c1 7a 7f ac 3c 60 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x260],xmm5
    2989c629c48f:	4c 8b 15 d5 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4d5]        # 0x2989c629a96b
    2989c629c496:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629c49b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629c49f:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    2989c629c4a3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c4a8:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c629c4ae:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c629c4b3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c4b8:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c629c4bd:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c629c4c1:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c629c4c5:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c629c4ca:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    2989c629c4ce:	c4 c1 7a 7f bc 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm7
    2989c629c4d8:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    2989c629c4dd:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    2989c629c4e1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c4e6:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c629c4ec:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c629c4f1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c4f6:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c629c4fb:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c629c4ff:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c629c503:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c629c508:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    2989c629c50c:	c4 c1 7a 7f bc 3c 50 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x250],xmm7
    2989c629c516:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    2989c629c51b:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c629c51f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629c524:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c629c52a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c629c52f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629c534:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c629c539:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c629c53d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c629c541:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c629c546:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c629c54a:	c4 c1 7a 7f 84 3c 40 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x240],xmm0
    2989c629c554:	4d 8b c4                                        	mov    r8,r12
    2989c629c557:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    2989c629c55e:	e9 39 03 00 00                                  	jmp    0x2989c629c89c
    2989c629c563:	8b 8d c0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x240]
    2989c629c569:	4d 8d 44 24 58                                  	lea    r8,[r12+0x58]
    2989c629c56e:	c4 c2 79 18 34 00                               	vbroadcastss xmm6,DWORD PTR [r8+rax*1]
    2989c629c574:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c629c578:	c4 42 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [r8+rbx*1]
    2989c629c57e:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    2989c629c583:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    2989c629c588:	c4 02 79 18 04 38                               	vbroadcastss xmm8,DWORD PTR [r8+r15*1]
    2989c629c58e:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    2989c629c593:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    2989c629c597:	c5 b0 59 ed                                     	vmulps xmm5,xmm9,xmm5
    2989c629c59b:	83 f9 03                                        	cmp    ecx,0x3
    2989c629c59e:	0f 84 72 02 00 00                               	je     0x2989c629c816
    2989c629c5a4:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c629c5a8:	44 8b 85 00 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x300]
    2989c629c5af:	c4 81 7a 7f 34 04                               	vmovdqu XMMWORD PTR [r12+r8*1],xmm6
    2989c629c5b5:	8b 95 08 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2f8]
    2989c629c5bb:	c4 c1 7a 7f 34 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm6
    2989c629c5c1:	c4 c1 7a 7f b4 3c 40 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x140],xmm6
    2989c629c5cb:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    2989c629c5d5:	c4 c1 7a 7f 94 3c 80 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x280],xmm2
    2989c629c5df:	c4 c1 7a 7f ac 3c 70 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x270],xmm5
    2989c629c5e9:	c4 c1 7a 7f b4 3c 30 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x130],xmm6
    2989c629c5f3:	4d 8b fb                                        	mov    r15,r11
    2989c629c5f6:	45 33 db                                        	xor    r11d,r11d
    2989c629c5f9:	e9 17 00 00 00                                  	jmp    0x2989c629c615
    2989c629c5fe:	66 90                                           	xchg   ax,ax
    2989c629c600:	4c 8b bd 30 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1d0]
    2989c629c607:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629c60a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629c60e:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629c615:	4c 89 9d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r11
    2989c629c61c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c629c621:	0f 85 1b 2c 00 00                               	jne    0x2989c629f242
    2989c629c627:	41 8b cb                                        	mov    ecx,r11d
    2989c629c62a:	41 d3 e9                                        	shr    r9d,cl
    2989c629c62d:	41 f6 c1 01                                     	test   r9b,0x1
    2989c629c631:	0f 84 45 01 00 00                               	je     0x2989c629c77c
    2989c629c637:	43 8b 4c 3c 10                                  	mov    ecx,DWORD PTR [r12+r15*1+0x10]
    2989c629c63c:	47 8b 4c 3c 0c                                  	mov    r9d,DWORD PTR [r12+r15*1+0xc]
    2989c629c641:	48 89 8d 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rcx
    2989c629c648:	43 8b 4c 3c 08                                  	mov    ecx,DWORD PTR [r12+r15*1+0x8]
    2989c629c64d:	43 8b 4c 3c 04                                  	mov    ecx,DWORD PTR [r12+r15*1+0x4]
    2989c629c652:	48 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rcx
    2989c629c659:	43 8b 0c 3c                                     	mov    ecx,DWORD PTR [r12+r15*1]
    2989c629c65d:	83 f9 02                                        	cmp    ecx,0x2
    2989c629c660:	0f 84 b2 00 00 00                               	je     0x2989c629c718
    2989c629c666:	85 c9                                           	test   ecx,ecx
    2989c629c668:	0f 85 4b 00 00 00                               	jne    0x2989c629c6b9
    2989c629c66e:	42 8d 8c 9f 90 02 00 00                         	lea    ecx,[rdi+r11*4+0x290]
    2989c629c676:	c4 c1 7a 10 04 0c                               	vmovss xmm0,DWORD PTR [r12+rcx*1]
    2989c629c67c:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    2989c629c682:	4c 89 8d 20 fd ff ff                            	mov    QWORD PTR [rbp-0x2e0],r9
    2989c629c689:	45 8b cb                                        	mov    r9d,r11d
    2989c629c68c:	41 c1 e1 04                                     	shl    r9d,0x4
    2989c629c690:	41 03 c9                                        	add    ecx,r9d
    2989c629c693:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629c697:	8b 85 b8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x248]
    2989c629c69d:	8b 95 20 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2e0]
    2989c629c6a3:	8b d9                                           	mov    ebx,ecx
    2989c629c6a5:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    2989c629c6ab:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c629c6af:	e8 6c eb ed ff                                  	call   0x2989c617b220
    2989c629c6b4:	e9 c3 00 00 00                                  	jmp    0x2989c629c77c
    2989c629c6b9:	4d 8b c4                                        	mov    r8,r12
    2989c629c6bc:	4d 8b e7                                        	mov    r12,r15
    2989c629c6bf:	47 8b 7c 20 14                                  	mov    r15d,DWORD PTR [r8+r12*1+0x14]
    2989c629c6c4:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    2989c629c6cc:	c4 c1 7a 10 04 10                               	vmovss xmm0,DWORD PTR [r8+rdx*1]
    2989c629c6d2:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    2989c629c6da:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    2989c629c6e0:	8d 97 30 01 00 00                               	lea    edx,[rdi+0x130]
    2989c629c6e6:	41 8b cb                                        	mov    ecx,r11d
    2989c629c6e9:	c1 e1 04                                        	shl    ecx,0x4
    2989c629c6ec:	03 d1                                           	add    edx,ecx
    2989c629c6ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629c6f2:	8b 85 b8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x248]
    2989c629c6f8:	44 8b d2                                        	mov    r10d,edx
    2989c629c6fb:	41 8b d1                                        	mov    edx,r9d
    2989c629c6fe:	45 8b ca                                        	mov    r9d,r10d
    2989c629c701:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    2989c629c707:	41 8b df                                        	mov    ebx,r15d
    2989c629c70a:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c629c70e:	e8 25 eb ed ff                                  	call   0x2989c617b238
    2989c629c713:	e9 64 00 00 00                                  	jmp    0x2989c629c77c
    2989c629c718:	4d 8b c4                                        	mov    r8,r12
    2989c629c71b:	4d 8b e7                                        	mov    r12,r15
    2989c629c71e:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    2989c629c723:	47 8b 7c 20 18                                  	mov    r15d,DWORD PTR [r8+r12*1+0x18]
    2989c629c728:	42 8d 84 9f 90 02 00 00                         	lea    eax,[rdi+r11*4+0x290]
    2989c629c730:	c4 c1 7a 10 0c 00                               	vmovss xmm1,DWORD PTR [r8+rax*1]
    2989c629c736:	42 8d 84 9f 80 02 00 00                         	lea    eax,[rdi+r11*4+0x280]
    2989c629c73e:	c4 c1 7a 10 14 00                               	vmovss xmm2,DWORD PTR [r8+rax*1]
    2989c629c744:	42 8d 84 9f 70 02 00 00                         	lea    eax,[rdi+r11*4+0x270]
    2989c629c74c:	c4 c1 7a 10 1c 00                               	vmovss xmm3,DWORD PTR [r8+rax*1]
    2989c629c752:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    2989c629c758:	41 8b d3                                        	mov    edx,r11d
    2989c629c75b:	c1 e2 04                                        	shl    edx,0x4
    2989c629c75e:	03 c2                                           	add    eax,edx
    2989c629c760:	50                                              	push   rax
    2989c629c761:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629c765:	8b 85 b8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x248]
    2989c629c76b:	41 8b d1                                        	mov    edx,r9d
    2989c629c76e:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    2989c629c774:	45 8b cf                                        	mov    r9d,r15d
    2989c629c777:	e8 ac ea ed ff                                  	call   0x2989c617b228
    2989c629c77c:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    2989c629c783:	41 83 c3 01                                     	add    r11d,0x1
    2989c629c787:	41 83 fb 04                                     	cmp    r11d,0x4
    2989c629c78b:	0f 85 6f fe ff ff                               	jne    0x2989c629c600
    2989c629c791:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629c794:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629c798:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    2989c629c7a2:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    2989c629c7ac:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    2989c629c7b0:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    2989c629c7ba:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    2989c629c7c4:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    2989c629c7c9:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    2989c629c7cd:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    2989c629c7d7:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    2989c629c7db:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    2989c629c7e5:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    2989c629c7e9:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    2989c629c7ee:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    2989c629c7f2:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    2989c629c7fc:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    2989c629c800:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c629c80a:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    2989c629c811:	e9 86 00 00 00                                  	jmp    0x2989c629c89c
    2989c629c816:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    2989c629c81c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629c820:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    2989c629c826:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c629c82a:	41 8b d1                                        	mov    edx,r9d
    2989c629c82d:	c5 f9 28 dd                                     	vmovapd xmm3,xmm5
    2989c629c831:	e8 f2 ec ed ff                                  	call   0x2989c617b528
    2989c629c836:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629c839:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629c83d:	4c 8b 9d 30 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1d0]
    2989c629c844:	e9 53 00 00 00                                  	jmp    0x2989c629c89c
    2989c629c849:	4d 8b c4                                        	mov    r8,r12
    2989c629c84c:	4d 8d 60 3c                                     	lea    r12,[r8+0x3c]
    2989c629c850:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    2989c629c856:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    2989c629c860:	4d 8d 60 40                                     	lea    r12,[r8+0x40]
    2989c629c864:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    2989c629c86a:	c4 c1 7a 7f ac 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm5
    2989c629c874:	4d 8d 60 44                                     	lea    r12,[r8+0x44]
    2989c629c878:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    2989c629c87e:	c4 c1 7a 7f ac 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm5
    2989c629c888:	4d 8d 60 48                                     	lea    r12,[r8+0x48]
    2989c629c88c:	c4 82 79 18 2c 1c                               	vbroadcastss xmm5,DWORD PTR [r12+r11*1]
    2989c629c892:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    2989c629c89c:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    2989c629c8a6:	47 8b a4 18 34 01 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0x134]
    2989c629c8ae:	43 83 bc 18 34 01 00 00 02                      	cmp    DWORD PTR [r8+r11*1+0x134],0x2
    2989c629c8b7:	0f 84 5a 00 00 00                               	je     0x2989c629c917
    2989c629c8bd:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    2989c629c8c7:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    2989c629c8cc:	c5 10 59 ed                                     	vmulps xmm13,xmm13,xmm5
    2989c629c8d0:	c4 c1 7a 6f ac 38 50 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x250]
    2989c629c8da:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    2989c629c8df:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    2989c629c8e3:	c4 c1 7a 6f ac 38 40 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x240]
    2989c629c8ed:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    2989c629c8f2:	c5 f0 59 cd                                     	vmulps xmm1,xmm1,xmm5
    2989c629c8f6:	c5 f8 10 ad 30 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2d0]
    2989c629c8fe:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c629c902:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629c90a:	c5 f8 10 bd 70 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x290]
    2989c629c912:	e9 2e 00 00 00                                  	jmp    0x2989c629c945
    2989c629c917:	c4 41 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x260]
    2989c629c921:	c4 41 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm14,XMMWORD PTR [r8+rdi*1+0x250]
    2989c629c92b:	c4 c1 7a 6f 8c 38 40 02 00 00                   	vmovdqu xmm1,XMMWORD PTR [r8+rdi*1+0x240]
    2989c629c935:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629c93d:	c5 f8 10 bd 70 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x290]
    2989c629c945:	c4 c1 09 6a f5                                  	vpunpckhdq xmm6,xmm14,xmm13
    2989c629c94a:	c5 79 6a c1                                     	vpunpckhdq xmm8,xmm0,xmm1
    2989c629c94e:	c5 39 6d ce                                     	vpunpckhqdq xmm9,xmm8,xmm6
    2989c629c952:	c4 41 7a 7f 8c 38 60 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x160],xmm9
    2989c629c95c:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    2989c629c960:	c4 c1 7a 7f b4 38 50 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x150],xmm6
    2989c629c96a:	c4 c1 09 62 f5                                  	vpunpckldq xmm6,xmm14,xmm13
    2989c629c96f:	c5 f9 62 c1                                     	vpunpckldq xmm0,xmm0,xmm1
    2989c629c973:	c5 79 6d c6                                     	vpunpckhqdq xmm8,xmm0,xmm6
    2989c629c977:	c4 41 7a 7f 84 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm8
    2989c629c981:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    2989c629c985:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    2989c629c98f:	4d 8b e0                                        	mov    r12,r8
    2989c629c992:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629c999:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c629c99d:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c629c9a2:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c629c9a7:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c629c9ab:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629c9af:	48 8b 9d 00 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x100]
    2989c629c9b6:	48 8b 85 f8 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x108]
    2989c629c9bd:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    2989c629c9c4:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    2989c629c9cc:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c629c9d2:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c629c9d5:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    2989c629c9d9:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629c9e0:	c5 f8 10 85 20 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3e0]
    2989c629c9e8:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    2989c629c9f0:	45 33 c0                                        	xor    r8d,r8d
    2989c629c9f3:	41 bb 02 00 00 00                               	mov    r11d,0x2
    2989c629c9f9:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    2989c629c9fd:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    2989c629ca02:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    2989c629ca07:	e9 45 00 00 00                                  	jmp    0x2989c629ca51
    2989c629ca0c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629ca15:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629ca1e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629ca27:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629ca30:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629ca39:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2989c629ca40:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629ca47:	48 8b cb                                        	mov    rcx,rbx
    2989c629ca4a:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629ca51:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    2989c629ca58:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c629ca5d:	0f 85 05 28 00 00                               	jne    0x2989c629f268
    2989c629ca63:	48 8b d9                                        	mov    rbx,rcx
    2989c629ca66:	41 8b c8                                        	mov    ecx,r8d
    2989c629ca69:	41 d3 e9                                        	shr    r9d,cl
    2989c629ca6c:	41 f6 c1 01                                     	test   r9b,0x1
    2989c629ca70:	0f 84 5f 0b 00 00                               	je     0x2989c629d5d5
    2989c629ca76:	41 8b c8                                        	mov    ecx,r8d
    2989c629ca79:	c1 e1 04                                        	shl    ecx,0x4
    2989c629ca7c:	46 8d 0c 39                                     	lea    r9d,[rcx+r15*1]
    2989c629ca80:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    2989c629ca87:	44 03 f9                                        	add    r15d,ecx
    2989c629ca8a:	42 8d 4c 87 3c                                  	lea    ecx,[rdi+r8*4+0x3c]
    2989c629ca8f:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    2989c629ca93:	42 8d 54 87 2c                                  	lea    edx,[rdi+r8*4+0x2c]
    2989c629ca98:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    2989c629ca9c:	42 8d 04 86                                     	lea    eax,[rsi+r8*4]
    2989c629caa0:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    2989c629caa4:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c629caab:	0f 85 e9 0a 00 00                               	jne    0x2989c629d59a
    2989c629cab1:	45 8b 44 1c 74                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x74]
    2989c629cab6:	41 83 7c 1c 74 00                               	cmp    DWORD PTR [r12+rbx*1+0x74],0x0
    2989c629cabc:	0f 85 8f 0a 00 00                               	jne    0x2989c629d551
    2989c629cac2:	4c 8b 15 c4 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c4]        # 0x2989c6298c8d
    2989c629cac9:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c629cace:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c629cad3:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c629cad8:	c4 01 7a 6f 1c 3c                               	vmovdqu xmm11,XMMWORD PTR [r12+r15*1]
    2989c629cade:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    2989c629cae3:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    2989c629cae8:	c4 41 38 c2 e3 01                               	vcmpltps xmm12,xmm8,xmm11
    2989c629caee:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    2989c629caf3:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    2989c629caf8:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c629cafd:	4c 8b 15 ec c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ec]        # 0x2989c62990f0
    2989c629cb04:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c629cb09:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c629cb0e:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    2989c629cb13:	4c 8b 15 ed c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ed]        # 0x2989c6299107
    2989c629cb1a:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c629cb1f:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c629cb24:	c4 41 30 58 cb                                  	vaddps xmm9,xmm9,xmm11
    2989c629cb29:	4c 8b 15 ee c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ee]        # 0x2989c629911e
    2989c629cb30:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    2989c629cb36:	c4 41 30 54 df                                  	vandps xmm11,xmm9,xmm15
    2989c629cb3b:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    2989c629cb41:	c4 41 7a 5b db                                  	vcvttps2dq xmm11,xmm11
    2989c629cb46:	c4 41 21 ef df                                  	vpxor  xmm11,xmm11,xmm15
    2989c629cb4b:	4c 8b 15 ef c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ef]        # 0x2989c6299141
    2989c629cb52:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c629cb57:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c629cb5c:	4c 8b 15 b2 9d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9db2]        # 0x2989c6296915
    2989c629cb63:	c4 41 30 54 0a                                  	vandps xmm9,xmm9,XMMWORD PTR [r10]
    2989c629cb68:	4c 8b 15 f1 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f1]        # 0x2989c6299160
    2989c629cb6f:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629cb74:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c629cb79:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    2989c629cb7f:	c4 41 31 df fc                                  	vpandn xmm15,xmm9,xmm12
    2989c629cb84:	c4 41 21 db c9                                  	vpand  xmm9,xmm11,xmm9
    2989c629cb89:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c629cb8e:	c4 42 31 2b c9                                  	vpackusdw xmm9,xmm9,xmm9
    2989c629cb93:	c4 41 31 67 c9                                  	vpackuswb xmm9,xmm9,xmm9
    2989c629cb98:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c629cb9d:	45 8b 04 1c                                     	mov    r8d,DWORD PTR [r12+rbx*1]
    2989c629cba1:	44 0f af c2                                     	imul   r8d,edx
    2989c629cba5:	44 03 c0                                        	add    r8d,eax
    2989c629cba8:	47 8d 3c 00                                     	lea    r15d,[r8+r8*1]
    2989c629cbac:	48 89 85 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rax
    2989c629cbb3:	41 8b 44 1c 18                                  	mov    eax,DWORD PTR [r12+rbx*1+0x18]
    2989c629cbb8:	46 8d 04 c0                                     	lea    r8d,[rax+r8*8]
    2989c629cbbc:	83 f9 03                                        	cmp    ecx,0x3
    2989c629cbbf:	0f 84 81 00 00 00                               	je     0x2989c629cc46
    2989c629cbc5:	8b c1                                           	mov    eax,ecx
    2989c629cbc7:	83 e0 01                                        	and    eax,0x1
    2989c629cbca:	f7 d8                                           	neg    eax
    2989c629cbcc:	c4 63 29 22 d0 00                               	vpinsrd xmm10,xmm10,eax,0x0
    2989c629cbd2:	8b c1                                           	mov    eax,ecx
    2989c629cbd4:	c1 e0 1e                                        	shl    eax,0x1e
    2989c629cbd7:	c1 f8 1f                                        	sar    eax,0x1f
    2989c629cbda:	c4 63 29 22 d0 01                               	vpinsrd xmm10,xmm10,eax,0x1
    2989c629cbe0:	41 8b 44 1c 68                                  	mov    eax,DWORD PTR [r12+rbx*1+0x68]
    2989c629cbe5:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    2989c629cbeb:	0f 84 3b 00 00 00                               	je     0x2989c629cc2c
    2989c629cbf1:	41 8b 44 1c 70                                  	mov    eax,DWORD PTR [r12+rbx*1+0x70]
    2989c629cbf6:	41 83 7c 1c 70 00                               	cmp    DWORD PTR [r12+rbx*1+0x70],0x0
    2989c629cbfc:	0f 84 2a 00 00 00                               	je     0x2989c629cc2c
    2989c629cc02:	41 8b 44 1c 1c                                  	mov    eax,DWORD PTR [r12+rbx*1+0x1c]
    2989c629cc07:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    2989c629cc0b:	c4 01 7b 10 1c 0c                               	vmovsd xmm11,QWORD PTR [r12+r9*1]
    2989c629cc11:	c4 01 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+r15*1]
    2989c629cc17:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    2989c629cc1c:	c4 41 21 db da                                  	vpand  xmm11,xmm11,xmm10
    2989c629cc21:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    2989c629cc26:	c4 01 78 13 1c 3c                               	vmovlps QWORD PTR [r12+r15*1],xmm11
    2989c629cc2c:	c4 01 7b 10 1c 04                               	vmovsd xmm11,QWORD PTR [r12+r8*1]
    2989c629cc32:	c4 41 29 df fb                                  	vpandn xmm15,xmm10,xmm11
    2989c629cc37:	c4 41 31 db ca                                  	vpand  xmm9,xmm9,xmm10
    2989c629cc3c:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c629cc41:	e9 33 00 00 00                                  	jmp    0x2989c629cc79
    2989c629cc46:	41 8b 44 1c 68                                  	mov    eax,DWORD PTR [r12+rbx*1+0x68]
    2989c629cc4b:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    2989c629cc51:	0f 84 22 00 00 00                               	je     0x2989c629cc79
    2989c629cc57:	41 8b 44 1c 70                                  	mov    eax,DWORD PTR [r12+rbx*1+0x70]
    2989c629cc5c:	41 83 7c 1c 70 00                               	cmp    DWORD PTR [r12+rbx*1+0x70],0x0
    2989c629cc62:	0f 84 11 00 00 00                               	je     0x2989c629cc79
    2989c629cc68:	41 8b 44 1c 1c                                  	mov    eax,DWORD PTR [r12+rbx*1+0x1c]
    2989c629cc6d:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    2989c629cc71:	4b 8b 04 0c                                     	mov    rax,QWORD PTR [r12+r9*1]
    2989c629cc75:	4b 89 04 3c                                     	mov    QWORD PTR [r12+r15*1],rax
    2989c629cc79:	c4 01 78 13 0c 04                               	vmovlps QWORD PTR [r12+r8*1],xmm9
    2989c629cc7f:	45 8b 44 1c 68                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x68]
    2989c629cc84:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    2989c629cc8a:	0f 84 45 09 00 00                               	je     0x2989c629d5d5
    2989c629cc90:	45 8b 44 1c 70                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x70]
    2989c629cc95:	41 83 7c 1c 70 00                               	cmp    DWORD PTR [r12+rbx*1+0x70],0x0
    2989c629cc9b:	0f 84 34 09 00 00                               	je     0x2989c629d5d5
    2989c629cca1:	45 8b 44 1c 14                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x14]
    2989c629cca6:	41 83 7c 1c 14 02                               	cmp    DWORD PTR [r12+rbx*1+0x14],0x2
    2989c629ccac:	0f 85 23 09 00 00                               	jne    0x2989c629d5d5
    2989c629ccb2:	45 8b 44 1c 18                                  	mov    r8d,DWORD PTR [r12+rbx*1+0x18]
    2989c629ccb7:	45 85 c0                                        	test   r8d,r8d
    2989c629ccba:	0f 84 15 09 00 00                               	je     0x2989c629d5d5
    2989c629ccc0:	45 8d 78 c8                                     	lea    r15d,[r8-0x38]
    2989c629ccc4:	43 8b 04 3c                                     	mov    eax,DWORD PTR [r12+r15*1]
    2989c629ccc8:	43 83 3c 3c 00                                  	cmp    DWORD PTR [r12+r15*1],0x0
    2989c629cccd:	0f 84 02 09 00 00                               	je     0x2989c629d5d5
    2989c629ccd3:	45 8d 78 c0                                     	lea    r15d,[r8-0x40]
    2989c629ccd7:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629ccdb:	41 83 e8 3c                                     	sub    r8d,0x3c
    2989c629ccdf:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    2989c629cce3:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    2989c629cce9:	c1 e8 02                                        	shr    eax,0x2
    2989c629ccec:	41 0f af c0                                     	imul   eax,r8d
    2989c629ccf0:	c1 e0 04                                        	shl    eax,0x4
    2989c629ccf3:	46 8d 04 38                                     	lea    r8d,[rax+r15*1]
    2989c629ccf7:	44 8d 3c 95 00 00 00 00                         	lea    r15d,[rdx*4+0x0]
    2989c629ccff:	41 8b c7                                        	mov    eax,r15d
    2989c629cd02:	83 e0 f0                                        	and    eax,0xfffffff0
    2989c629cd05:	44 03 c0                                        	add    r8d,eax
    2989c629cd08:	41 8b 44 1c 6c                                  	mov    eax,DWORD PTR [r12+rbx*1+0x6c]
    2989c629cd0d:	2d 01 02 00 00                                  	sub    eax,0x201
    2989c629cd12:	48 89 95 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdx
    2989c629cd19:	33 d2                                           	xor    edx,edx
    2989c629cd1b:	85 c0                                           	test   eax,eax
    2989c629cd1d:	0f 94 c2                                        	sete   dl
    2989c629cd20:	83 f8 02                                        	cmp    eax,0x2
    2989c629cd23:	0f 94 c0                                        	sete   al
    2989c629cd26:	0f b6 c0                                        	movzx  eax,al
    2989c629cd29:	0b c2                                           	or     eax,edx
    2989c629cd2b:	0f 85 0d 00 00 00                               	jne    0x2989c629cd3e
    2989c629cd31:	4b c7 04 04 00 00 00 00                         	mov    QWORD PTR [r12+r8*1],0x0
    2989c629cd39:	e9 97 08 00 00                                  	jmp    0x2989c629d5d5
    2989c629cd3e:	83 e1 03                                        	and    ecx,0x3
    2989c629cd41:	41 83 e7 0c                                     	and    r15d,0xc
    2989c629cd45:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    2989c629cd4b:	83 e0 03                                        	and    eax,0x3
    2989c629cd4e:	41 0b c7                                        	or     eax,r15d
    2989c629cd51:	44 8d 3c 00                                     	lea    r15d,[rax+rax*1]
    2989c629cd55:	41 83 e7 3f                                     	and    r15d,0x3f
    2989c629cd59:	4c 8b d1                                        	mov    r10,rcx
    2989c629cd5c:	41 8b cf                                        	mov    ecx,r15d
    2989c629cd5f:	4d 8b fa                                        	mov    r15,r10
    2989c629cd62:	49 d3 e7                                        	shl    r15,cl
    2989c629cd65:	4b 8b 04 04                                     	mov    rax,QWORD PTR [r12+r8*1]
    2989c629cd69:	ba ff ff ff ff                                  	mov    edx,0xffffffff
    2989c629cd6e:	48 3b c2                                        	cmp    rax,rdx
    2989c629cd71:	0f 84 e0 03 00 00                               	je     0x2989c629d157
    2989c629cd77:	49 0b c7                                        	or     rax,r15
    2989c629cd7a:	4b 89 04 04                                     	mov    QWORD PTR [r12+r8*1],rax
    2989c629cd7e:	48 3b d0                                        	cmp    rdx,rax
    2989c629cd81:	0f 85 4e 08 00 00                               	jne    0x2989c629d5d5
    2989c629cd87:	45 8b 7c 1c 1c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0x1c]
    2989c629cd8c:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    2989c629cd92:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    2989c629cd97:	41 8b 14 1c                                     	mov    edx,DWORD PTR [r12+rbx*1]
    2989c629cd9b:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    2989c629cda1:	83 c9 03                                        	or     ecx,0x3
    2989c629cda4:	0f af ca                                        	imul   ecx,edx
    2989c629cda7:	03 c8                                           	add    ecx,eax
    2989c629cda9:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c629cdad:	c4 41 7a 6f 4c 0c 10                            	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0x10]
    2989c629cdb4:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c629cdba:	c4 41 7a 6f 1c 0c                               	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1]
    2989c629cdc0:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c629cdc6:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    2989c629cdcb:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    2989c629cdd1:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    2989c629cdd7:	44 8b c9                                        	mov    r9d,ecx
    2989c629cdda:	41 83 c9 02                                     	or     r9d,0x2
    2989c629cdde:	44 0f af ca                                     	imul   r9d,edx
    2989c629cde2:	44 03 c8                                        	add    r9d,eax
    2989c629cde5:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    2989c629cde9:	c4 01 7a 6f 64 0c 10                            	vmovdqu xmm12,XMMWORD PTR [r12+r9*1+0x10]
    2989c629cdf0:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c629cdf6:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    2989c629cdfb:	c4 01 7a 6f 2c 0c                               	vmovdqu xmm13,XMMWORD PTR [r12+r9*1]
    2989c629ce01:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    2989c629ce07:	c4 41 29 db d6                                  	vpand  xmm10,xmm10,xmm14
    2989c629ce0c:	44 8b c9                                        	mov    r9d,ecx
    2989c629ce0f:	41 83 c9 01                                     	or     r9d,0x1
    2989c629ce13:	44 0f af ca                                     	imul   r9d,edx
    2989c629ce17:	44 03 c8                                        	add    r9d,eax
    2989c629ce1a:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    2989c629ce1e:	c4 01 7a 6f 74 0c 10                            	vmovdqu xmm14,XMMWORD PTR [r12+r9*1+0x10]
    2989c629ce25:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    2989c629ce2b:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    2989c629ce2f:	c4 81 7a 6f 0c 0c                               	vmovdqu xmm1,XMMWORD PTR [r12+r9*1]
    2989c629ce35:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    2989c629ce3a:	c5 29 db d2                                     	vpand  xmm10,xmm10,xmm2
    2989c629ce3e:	0f af ca                                        	imul   ecx,edx
    2989c629ce41:	03 c1                                           	add    eax,ecx
    2989c629ce43:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    2989c629ce47:	c4 81 7a 6f 54 3c 10                            	vmovdqu xmm2,XMMWORD PTR [r12+r15*1+0x10]
    2989c629ce4e:	c5 e8 c2 c2 00                                  	vcmpeqps xmm0,xmm2,xmm2
    2989c629ce53:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    2989c629ce57:	c4 01 7a 6f 14 3c                               	vmovdqu xmm10,XMMWORD PTR [r12+r15*1]
    2989c629ce5d:	c4 c1 28 c2 ea 00                               	vcmpeqps xmm5,xmm10,xmm10
    2989c629ce63:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c629ce67:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    2989c629ce6c:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    2989c629ce71:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    2989c629ce75:	41 83 ff 0f                                     	cmp    r15d,0xf
    2989c629ce79:	0f 84 16 00 00 00                               	je     0x2989c629ce95
    2989c629ce7f:	4b c7 44 04 08 00 00 80 7f                      	mov    QWORD PTR [r12+r8*1+0x8],0x7f800000
    2989c629ce88:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629ce90:	e9 40 07 00 00                                  	jmp    0x2989c629d5d5
    2989c629ce95:	4c 8b 15 ce c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ce]        # 0x2989c629946a
    2989c629ce9c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c629cea1:	4c 8b 15 d1 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d1]        # 0x2989c6299479
    2989c629cea8:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    2989c629ceae:	4c 8b 15 d4 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d4]        # 0x2989c6299489
    2989c629ceb5:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629ceba:	4c 8b 15 d7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d7]        # 0x2989c6299498
    2989c629cec1:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c629cec7:	4c 8b 15 da c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5da]        # 0x2989c62994a8
    2989c629cece:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c629ced3:	4c 8b 15 dd c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5dd]        # 0x2989c62994b7
    2989c629ceda:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    2989c629cee0:	4c 8b 15 e0 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e0]        # 0x2989c62994c7
    2989c629cee7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629ceec:	4c 8b 15 e3 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e3]        # 0x2989c62994d6
    2989c629cef3:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    2989c629cef9:	4c 8b 15 e6 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e6]        # 0x2989c62994e6
    2989c629cf00:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c629cf05:	4c 8b 15 e9 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e9]        # 0x2989c62994f5
    2989c629cf0c:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    2989c629cf12:	4c 8b 15 ec c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ec]        # 0x2989c6299505
    2989c629cf19:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629cf1e:	4c 8b 15 ef c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ef]        # 0x2989c6299514
    2989c629cf25:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c629cf2b:	4c 8b 15 f2 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f2]        # 0x2989c6299524
    2989c629cf32:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c629cf37:	4c 8b 15 f5 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f5]        # 0x2989c6299533
    2989c629cf3e:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c629cf44:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    2989c629cf49:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c629cf4d:	c5 f9 73 f0 3f                                  	vpsllq xmm0,xmm0,0x3f
    2989c629cf52:	c5 f9 73 d0 1f                                  	vpsrlq xmm0,xmm0,0x1f
    2989c629cf57:	4c 8b 15 f8 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5f8]        # 0x2989c6299556
    2989c629cf5e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    2989c629cf64:	c5 78 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm9
    2989c629cf69:	4c 8b 15 fb c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5fb]        # 0x2989c629956b
    2989c629cf70:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c629cf75:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c629cf7a:	c5 f8 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm5
    2989c629cf7f:	c4 c1 30 c2 ea 01                               	vcmpltps xmm5,xmm9,xmm10
    2989c629cf85:	c4 41 28 c2 c9 01                               	vcmpltps xmm9,xmm10,xmm9
    2989c629cf8b:	c4 c1 51 eb e9                                  	vpor   xmm5,xmm5,xmm9
    2989c629cf90:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    2989c629cf94:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c629cf98:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629cf9d:	4c 8b 15 c7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c7]        # 0x2989c629956b
    2989c629cfa4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c629cfa9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c629cfae:	c4 41 51 df f9                                  	vpandn xmm15,xmm5,xmm9
    2989c629cfb3:	c5 a9 db ed                                     	vpand  xmm5,xmm10,xmm5
    2989c629cfb7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629cfbc:	c5 50 c2 ca 01                                  	vcmpltps xmm9,xmm5,xmm2
    2989c629cfc1:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c629cfc5:	c4 c1 59 db c1                                  	vpand  xmm0,xmm4,xmm9
    2989c629cfca:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629cfcf:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629cfd3:	c4 c1 69 db e9                                  	vpand  xmm5,xmm2,xmm9
    2989c629cfd8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629cfdd:	c5 50 c2 c9 01                                  	vcmpltps xmm9,xmm5,xmm1
    2989c629cfe2:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c629cfe6:	c4 c1 61 db c1                                  	vpand  xmm0,xmm3,xmm9
    2989c629cfeb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629cff0:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629cff4:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c629cff9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629cffe:	c4 41 50 c2 ce 01                               	vcmpltps xmm9,xmm5,xmm14
    2989c629d004:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c629d008:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c629d00d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d012:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629d016:	c4 c1 09 db e9                                  	vpand  xmm5,xmm14,xmm9
    2989c629d01b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d020:	c4 41 50 c2 c5 01                               	vcmpltps xmm8,xmm5,xmm13
    2989c629d026:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c629d02a:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c629d02f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d034:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c629d038:	c4 c1 11 db e8                                  	vpand  xmm5,xmm13,xmm8
    2989c629d03d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d042:	c4 c1 50 c2 fc 01                               	vcmpltps xmm7,xmm5,xmm12
    2989c629d048:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629d04c:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629d050:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d055:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629d059:	c5 99 db ef                                     	vpand  xmm5,xmm12,xmm7
    2989c629d05d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d062:	c4 c1 50 c2 f3 01                               	vcmpltps xmm6,xmm5,xmm11
    2989c629d068:	c5 f8 10 7d 80                                  	vmovups xmm7,XMMWORD PTR [rbp-0x80]
    2989c629d06d:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c629d071:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    2989c629d075:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d07a:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c629d07e:	c5 a1 db ee                                     	vpand  xmm5,xmm11,xmm6
    2989c629d082:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d087:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c629d08c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    2989c629d091:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c629d096:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629d09a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    2989c629d09e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d0a3:	c4 c1 7a 7f 84 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm0
    2989c629d0ad:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629d0b1:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629d0b5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d0ba:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    2989c629d0c4:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c629d0c8:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c629d0cc:	45 33 ff                                        	xor    r15d,r15d
    2989c629d0cf:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c629d0d3:	41 0f 97 c7                                     	seta   r15b
    2989c629d0d7:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    2989c629d0dd:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    2989c629d0e5:	0b d0                                           	or     edx,eax
    2989c629d0e7:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    2989c629d0ed:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c629d0f2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629d0f6:	45 0f 47 fb                                     	cmova  r15d,r11d
    2989c629d0fa:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    2989c629d102:	0b d0                                           	or     edx,eax
    2989c629d104:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    2989c629d10a:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c629d10f:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c629d114:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629d118:	44 0f 47 fa                                     	cmova  r15d,edx
    2989c629d11c:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c629d120:	41 0b c7                                        	or     eax,r15d
    2989c629d123:	c4 c1 7a 10 04 04                               	vmovss xmm0,DWORD PTR [r12+rax*1]
    2989c629d129:	c4 81 7a 11 44 04 08                            	vmovss DWORD PTR [r12+r8*1+0x8],xmm0
    2989c629d130:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    2989c629d136:	44 0b f8                                        	or     r15d,eax
    2989c629d139:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629d13d:	47 89 7c 04 0c                                  	mov    DWORD PTR [r12+r8*1+0xc],r15d
    2989c629d142:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    2989c629d14a:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629d152:	e9 7e 04 00 00                                  	jmp    0x2989c629d5d5
    2989c629d157:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    2989c629d15c:	8b d0                                           	mov    edx,eax
    2989c629d15e:	83 e2 3f                                        	and    edx,0x3f
    2989c629d161:	8b ca                                           	mov    ecx,edx
    2989c629d163:	49 d3 ef                                        	shr    r15,cl
    2989c629d166:	41 f6 c7 01                                     	test   r15b,0x1
    2989c629d16a:	0f 84 65 04 00 00                               	je     0x2989c629d5d5
    2989c629d170:	83 e0 01                                        	and    eax,0x1
    2989c629d173:	45 8d 3c 81                                     	lea    r15d,[r9+rax*4]
    2989c629d177:	c4 81 7a 10 04 3c                               	vmovss xmm0,DWORD PTR [r12+r15*1]
    2989c629d17d:	c4 81 7a 10 74 04 08                            	vmovss xmm6,DWORD PTR [r12+r8*1+0x8]
    2989c629d184:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    2989c629d188:	0f 86 47 04 00 00                               	jbe    0x2989c629d5d5
    2989c629d18e:	45 8b 7c 1c 1c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0x1c]
    2989c629d193:	8b 85 c0 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x240]
    2989c629d199:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    2989c629d19e:	41 8b 14 1c                                     	mov    edx,DWORD PTR [r12+rbx*1]
    2989c629d1a2:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    2989c629d1a8:	83 c9 03                                        	or     ecx,0x3
    2989c629d1ab:	0f af ca                                        	imul   ecx,edx
    2989c629d1ae:	03 c8                                           	add    ecx,eax
    2989c629d1b0:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c629d1b4:	c4 c1 7a 6f 44 0c 10                            	vmovdqu xmm0,XMMWORD PTR [r12+rcx*1+0x10]
    2989c629d1bb:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    2989c629d1c0:	c4 c1 7a 6f 3c 0c                               	vmovdqu xmm7,XMMWORD PTR [r12+rcx*1]
    2989c629d1c6:	c5 40 c2 cf 00                                  	vcmpeqps xmm9,xmm7,xmm7
    2989c629d1cb:	c4 c1 49 db f1                                  	vpand  xmm6,xmm6,xmm9
    2989c629d1d0:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    2989c629d1d6:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    2989c629d1dc:	44 8b c9                                        	mov    r9d,ecx
    2989c629d1df:	41 83 c9 02                                     	or     r9d,0x2
    2989c629d1e3:	44 0f af ca                                     	imul   r9d,edx
    2989c629d1e7:	44 03 c8                                        	add    r9d,eax
    2989c629d1ea:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    2989c629d1ee:	c4 01 7a 6f 4c 0c 10                            	vmovdqu xmm9,XMMWORD PTR [r12+r9*1+0x10]
    2989c629d1f5:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c629d1fb:	c4 c1 49 db f2                                  	vpand  xmm6,xmm6,xmm10
    2989c629d200:	c4 01 7a 6f 14 0c                               	vmovdqu xmm10,XMMWORD PTR [r12+r9*1]
    2989c629d206:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c629d20c:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    2989c629d211:	44 8b c9                                        	mov    r9d,ecx
    2989c629d214:	41 83 c9 01                                     	or     r9d,0x1
    2989c629d218:	44 0f af ca                                     	imul   r9d,edx
    2989c629d21c:	44 03 c8                                        	add    r9d,eax
    2989c629d21f:	47 8d 0c cf                                     	lea    r9d,[r15+r9*8]
    2989c629d223:	c4 01 7a 6f 5c 0c 10                            	vmovdqu xmm11,XMMWORD PTR [r12+r9*1+0x10]
    2989c629d22a:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c629d230:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    2989c629d235:	c4 01 7a 6f 24 0c                               	vmovdqu xmm12,XMMWORD PTR [r12+r9*1]
    2989c629d23b:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c629d241:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    2989c629d246:	0f af ca                                        	imul   ecx,edx
    2989c629d249:	03 c1                                           	add    eax,ecx
    2989c629d24b:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    2989c629d24f:	c4 01 7a 6f 6c 3c 10                            	vmovdqu xmm13,XMMWORD PTR [r12+r15*1+0x10]
    2989c629d256:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    2989c629d25c:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    2989c629d261:	c4 01 7a 6f 34 3c                               	vmovdqu xmm14,XMMWORD PTR [r12+r15*1]
    2989c629d267:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    2989c629d26d:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    2989c629d271:	c5 c9 72 f6 1f                                  	vpslld xmm6,xmm6,0x1f
    2989c629d276:	c5 c9 72 e6 1f                                  	vpsrad xmm6,xmm6,0x1f
    2989c629d27b:	c5 78 50 fe                                     	vmovmskps r15d,xmm6
    2989c629d27f:	41 83 ff 0f                                     	cmp    r15d,0xf
    2989c629d283:	0f 84 0e 00 00 00                               	je     0x2989c629d297
    2989c629d289:	4b c7 44 04 08 00 00 80 7f                      	mov    QWORD PTR [r12+r8*1+0x8],0x7f800000
    2989c629d292:	e9 3e 03 00 00                                  	jmp    0x2989c629d5d5
    2989c629d297:	4c 8b 15 cc c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1cc]        # 0x2989c629946a
    2989c629d29e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c629d2a3:	4c 8b 15 cf c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1cf]        # 0x2989c6299479
    2989c629d2aa:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    2989c629d2b0:	4c 8b 15 d2 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d2]        # 0x2989c6299489
    2989c629d2b7:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c629d2bc:	4c 8b 15 d5 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d5]        # 0x2989c6299498
    2989c629d2c3:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c629d2c9:	4c 8b 15 d8 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d8]        # 0x2989c62994a8
    2989c629d2d0:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c629d2d5:	4c 8b 15 db c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1db]        # 0x2989c62994b7
    2989c629d2dc:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c629d2e2:	4c 8b 15 de c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1de]        # 0x2989c62994c7
    2989c629d2e9:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629d2ee:	4c 8b 15 e1 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e1]        # 0x2989c62994d6
    2989c629d2f5:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c629d2fb:	4c 8b 15 e4 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e4]        # 0x2989c62994e6
    2989c629d302:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c629d307:	4c 8b 15 e7 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e7]        # 0x2989c62994f5
    2989c629d30e:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c629d314:	4c 8b 15 ea c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ea]        # 0x2989c6299505
    2989c629d31b:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629d320:	4c 8b 15 ed c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ed]        # 0x2989c6299514
    2989c629d327:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c629d32d:	4c 8b 15 f0 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f0]        # 0x2989c6299524
    2989c629d334:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c629d339:	4c 8b 15 f3 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f3]        # 0x2989c6299533
    2989c629d340:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    2989c629d346:	c5 f8 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm6
    2989c629d34b:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c629d34f:	c5 c9 73 f6 3f                                  	vpsllq xmm6,xmm6,0x3f
    2989c629d354:	c5 c9 73 d6 1f                                  	vpsrlq xmm6,xmm6,0x1f
    2989c629d359:	4c 8b 15 f6 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f6]        # 0x2989c6299556
    2989c629d360:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    2989c629d366:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c629d36b:	4c 8b 15 f9 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f9]        # 0x2989c629956b
    2989c629d372:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c629d377:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c629d37b:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    2989c629d380:	c4 c1 78 c2 ce 01                               	vcmpltps xmm1,xmm0,xmm14
    2989c629d386:	c5 88 c2 c0 01                                  	vcmpltps xmm0,xmm14,xmm0
    2989c629d38b:	c5 f1 eb c0                                     	vpor   xmm0,xmm1,xmm0
    2989c629d38f:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    2989c629d393:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    2989c629d397:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c629d39c:	4c 8b 15 c8 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c8]        # 0x2989c629956b
    2989c629d3a3:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c629d3a8:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c629d3ac:	c5 79 df f9                                     	vpandn xmm15,xmm0,xmm1
    2989c629d3b0:	c5 89 db c0                                     	vpand  xmm0,xmm14,xmm0
    2989c629d3b4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d3b9:	c4 41 78 c2 f5 01                               	vcmpltps xmm14,xmm0,xmm13
    2989c629d3bf:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    2989c629d3c3:	c4 c1 39 db f6                                  	vpand  xmm6,xmm8,xmm14
    2989c629d3c8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c629d3cd:	c5 09 df f8                                     	vpandn xmm15,xmm14,xmm0
    2989c629d3d1:	c4 c1 11 db c6                                  	vpand  xmm0,xmm13,xmm14
    2989c629d3d6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d3db:	c4 41 78 c2 c4 01                               	vcmpltps xmm8,xmm0,xmm12
    2989c629d3e1:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    2989c629d3e5:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c629d3ea:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d3ef:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c629d3f3:	c4 c1 19 db c0                                  	vpand  xmm0,xmm12,xmm8
    2989c629d3f8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d3fd:	c4 c1 78 c2 f3 01                               	vcmpltps xmm6,xmm0,xmm11
    2989c629d403:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c629d407:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    2989c629d40b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d410:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c629d414:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    2989c629d418:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d41d:	c4 c1 78 c2 f2 01                               	vcmpltps xmm6,xmm0,xmm10
    2989c629d423:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c629d427:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    2989c629d42b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d430:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c629d434:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    2989c629d438:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d43d:	c4 c1 78 c2 f1 01                               	vcmpltps xmm6,xmm0,xmm9
    2989c629d443:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c629d447:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    2989c629d44b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d450:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c629d454:	c5 b1 db c6                                     	vpand  xmm0,xmm9,xmm6
    2989c629d458:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d45d:	c5 f8 c2 f7 01                                  	vcmpltps xmm6,xmm0,xmm7
    2989c629d462:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c629d467:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c629d46b:	c5 b9 db ee                                     	vpand  xmm5,xmm8,xmm6
    2989c629d46f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d474:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c629d478:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    2989c629d47c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d481:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c629d486:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c629d48b:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c629d490:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629d494:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c629d498:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629d49d:	c4 c1 7a 7f ac 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm5
    2989c629d4a7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629d4ab:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629d4af:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629d4b4:	c4 c1 7a 7f 84 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm0
    2989c629d4be:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c629d4c2:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c629d4c6:	45 33 ff                                        	xor    r15d,r15d
    2989c629d4c9:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c629d4cd:	41 0f 97 c7                                     	seta   r15b
    2989c629d4d1:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    2989c629d4d7:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    2989c629d4df:	0b d0                                           	or     edx,eax
    2989c629d4e1:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    2989c629d4e7:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c629d4ec:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629d4f0:	45 0f 47 fb                                     	cmova  r15d,r11d
    2989c629d4f4:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    2989c629d4fc:	0b d0                                           	or     edx,eax
    2989c629d4fe:	c4 c1 7a 10 2c 14                               	vmovss xmm5,DWORD PTR [r12+rdx*1]
    2989c629d504:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c629d509:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c629d50e:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629d512:	44 0f 47 fa                                     	cmova  r15d,edx
    2989c629d516:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c629d51a:	41 0b c7                                        	or     eax,r15d
    2989c629d51d:	c4 c1 7a 10 04 04                               	vmovss xmm0,DWORD PTR [r12+rax*1]
    2989c629d523:	c4 81 7a 11 44 04 08                            	vmovss DWORD PTR [r12+r8*1+0x8],xmm0
    2989c629d52a:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    2989c629d530:	44 0b f8                                        	or     r15d,eax
    2989c629d533:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    2989c629d537:	47 89 7c 04 0c                                  	mov    DWORD PTR [r12+r8*1+0xc],r15d
    2989c629d53c:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    2989c629d544:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629d54c:	e9 84 00 00 00                                  	jmp    0x2989c629d5d5
    2989c629d551:	41 57                                           	push   r15
    2989c629d553:	4c 8b c3                                        	mov    r8,rbx
    2989c629d556:	41 bf 03 00 00 00                               	mov    r15d,0x3
    2989c629d55c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629d560:	8b d9                                           	mov    ebx,ecx
    2989c629d562:	8b ca                                           	mov    ecx,edx
    2989c629d564:	8b d0                                           	mov    edx,eax
    2989c629d566:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629d569:	e8 fa dc ed ff                                  	call   0x2989c617b268
    2989c629d56e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629d571:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629d575:	41 bb 02 00 00 00                               	mov    r11d,0x2
    2989c629d57b:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    2989c629d57f:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c629d585:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    2989c629d58d:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629d595:	e9 3b 00 00 00                                  	jmp    0x2989c629d5d5
    2989c629d59a:	41 57                                           	push   r15
    2989c629d59c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629d5a0:	8b d9                                           	mov    ebx,ecx
    2989c629d5a2:	8b ca                                           	mov    ecx,edx
    2989c629d5a4:	8b d0                                           	mov    edx,eax
    2989c629d5a6:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629d5a9:	e8 aa dc ed ff                                  	call   0x2989c617b258
    2989c629d5ae:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629d5b1:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629d5b5:	41 bb 02 00 00 00                               	mov    r11d,0x2
    2989c629d5bb:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    2989c629d5bf:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c629d5c5:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    2989c629d5cd:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629d5d5:	44 8b 85 30 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1d0]
    2989c629d5dc:	41 83 c0 01                                     	add    r8d,0x1
    2989c629d5e0:	41 83 f8 04                                     	cmp    r8d,0x4
    2989c629d5e4:	0f 85 56 f4 ff ff                               	jne    0x2989c629ca40
    2989c629d5ea:	4d 8b c4                                        	mov    r8,r12
    2989c629d5ed:	41 c7 44 38 18 00 00 00 00                      	mov    DWORD PTR [r8+rdi*1+0x18],0x0
    2989c629d5f6:	48 c7 85 30 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d0],0x1
    2989c629d601:	4d 8b e0                                        	mov    r12,r8
    2989c629d604:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c629d608:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c629d60d:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c629d612:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629d616:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    2989c629d61e:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c629d624:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    2989c629d62b:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    2989c629d632:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c629d639:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    2989c629d641:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    2989c629d649:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    2989c629d651:	e9 07 00 00 00                                  	jmp    0x2989c629d65d
    2989c629d656:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629d65a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629d65d:	4c 8b 9d d8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x228]
    2989c629d664:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    2989c629d66b:	4d 03 fb                                        	add    r15,r11
    2989c629d66e:	49 8b c0                                        	mov    rax,r8
    2989c629d671:	4c 8b 85 e8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x218]
    2989c629d678:	49 03 c0                                        	add    rax,r8
    2989c629d67b:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    2989c629d682:	4c 03 cb                                        	add    r9,rbx
    2989c629d685:	83 c2 01                                        	add    edx,0x1
    2989c629d688:	8b b5 58 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xa8]
    2989c629d68e:	3b f2                                           	cmp    esi,edx
    2989c629d690:	0f 85 6a ab ff ff                               	jne    0x2989c6298200
    2989c629d696:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    2989c629d69c:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    2989c629d6a1:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    2989c629d6a6:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    2989c629d6ab:	c5 7b 10 b5 68 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x98]
    2989c629d6b3:	4c 8b bd 18 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1e8]
    2989c629d6ba:	48 8b 85 48 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xb8]
    2989c629d6c1:	49 03 c7                                        	add    rax,r15
    2989c629d6c4:	48 8b 95 20 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1e0]
    2989c629d6cb:	48 8b b5 40 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xc0]
    2989c629d6d2:	48 03 f2                                        	add    rsi,rdx
    2989c629d6d5:	4c 8b 8d 28 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1d8]
    2989c629d6dc:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    2989c629d6e3:	49 03 f9                                        	add    rdi,r9
    2989c629d6e6:	83 bd 10 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f0],0x0
    2989c629d6ed:	0f 85 4e 00 00 00                               	jne    0x2989c629d741
    2989c629d6f3:	e9 7f 00 00 00                                  	jmp    0x2989c629d777
    2989c629d6f8:	48 8b bd 18 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1e8]
    2989c629d6ff:	4c 03 df                                        	add    r11,rdi
    2989c629d702:	4c 8b bd 20 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1e0]
    2989c629d709:	49 03 c7                                        	add    rax,r15
    2989c629d70c:	48 8b 95 28 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1d8]
    2989c629d713:	4c 03 c2                                        	add    r8,rdx
    2989c629d716:	48 8b f0                                        	mov    rsi,rax
    2989c629d719:	49 8b c3                                        	mov    rax,r11
    2989c629d71c:	4c 8b ca                                        	mov    r9,rdx
    2989c629d71f:	49 8b d7                                        	mov    rdx,r15
    2989c629d722:	4c 8b ff                                        	mov    r15,rdi
    2989c629d725:	49 8b f8                                        	mov    rdi,r8
    2989c629d728:	4c 8b 9d d8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x228]
    2989c629d72f:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629d733:	48 8b 9d f8 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x208]
    2989c629d73a:	4c 8b 85 e8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x218]
    2989c629d741:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    2989c629d746:	c5 3a 5c 85 38 fe ff ff                         	vsubss xmm8,xmm8,DWORD PTR [rbp-0x1c8]
    2989c629d74e:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    2989c629d753:	c5 22 5c 9d 40 fe ff ff                         	vsubss xmm11,xmm11,DWORD PTR [rbp-0x1c0]
    2989c629d75b:	c4 41 79 28 d5                                  	vmovapd xmm10,xmm13
    2989c629d760:	c5 2a 5c 95 48 fe ff ff                         	vsubss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    2989c629d768:	c4 41 79 28 f3                                  	vmovapd xmm14,xmm11
    2989c629d76d:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    2989c629d772:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    2989c629d777:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    2989c629d77b:	41 83 c0 01                                     	add    r8d,0x1
    2989c629d77f:	44 8b 5d 28                                     	mov    r11d,DWORD PTR [rbp+0x28]
    2989c629d783:	45 3b d8                                        	cmp    r11d,r8d
    2989c629d786:	0f 85 34 a3 ff ff                               	jne    0x2989c6297ac0
    2989c629d78c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629d78f:	45 8b 44 3c 18                                  	mov    r8d,DWORD PTR [r12+rdi*1+0x18]
    2989c629d794:	41 83 7c 3c 18 00                               	cmp    DWORD PTR [r12+rdi*1+0x18],0x0
    2989c629d79a:	0f 8e fe 16 00 00                               	jle    0x2989c629ee9e
    2989c629d7a0:	45 33 c0                                        	xor    r8d,r8d
    2989c629d7a3:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    2989c629d7a7:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    2989c629d7ab:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c629d7af:	c5 f9 28 c3                                     	vmovapd xmm0,xmm3
    2989c629d7b3:	e9 2e 00 00 00                                  	jmp    0x2989c629d7e6
    2989c629d7b8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    2989c629d7c0:	4d 8b d0                                        	mov    r10,r8
    2989c629d7c3:	45 8b c4                                        	mov    r8d,r12d
    2989c629d7c6:	4d 8b e2                                        	mov    r12,r10
    2989c629d7c9:	49 8b d3                                        	mov    rdx,r11
    2989c629d7cc:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c629d7d0:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c629d7d5:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c629d7da:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c629d7de:	c5 fb 10 85 88 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x178]
    2989c629d7e6:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    2989c629d7ed:	48 8b 9d f8 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x108]
    2989c629d7f4:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    2989c629d7fb:	8b b5 78 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x188]
    2989c629d801:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    2989c629d808:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    2989c629d80c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c629d811:	0f 85 97 1a 00 00                               	jne    0x2989c629f2ae
    2989c629d817:	46 8d 4c 87 2c                                  	lea    r9d,[rdi+r8*4+0x2c]
    2989c629d81c:	43 8d 0c 83                                     	lea    ecx,[r11+r8*4]
    2989c629d820:	46 8d 5c c7 70                                  	lea    r11d,[rdi+r8*8+0x70]
    2989c629d825:	4f 8b 1c 1c                                     	mov    r11,QWORD PTR [r12+r11*1]
    2989c629d829:	4c 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r11
    2989c629d830:	46 8d 5c c7 50                                  	lea    r11d,[rdi+r8*8+0x50]
    2989c629d835:	4f 8b 1c 1c                                     	mov    r11,QWORD PTR [r12+r11*1]
    2989c629d839:	c4 81 7a 10 7c 3c 1c                            	vmovss xmm7,DWORD PTR [r12+r15*1+0x1c]
    2989c629d840:	c4 41 7a 10 44 04 1c                            	vmovss xmm8,DWORD PTR [r12+rax*1+0x1c]
    2989c629d847:	c4 41 7a 10 4c 1c 1c                            	vmovss xmm9,DWORD PTR [r12+rbx*1+0x1c]
    2989c629d84e:	45 8b 84 14 c8 3c 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x3cc8]
    2989c629d856:	41 83 bc 14 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rdx*1+0x3cc8],0x0
    2989c629d85f:	0f 85 0e 00 00 00                               	jne    0x2989c629d873
    2989c629d865:	8b d1                                           	mov    edx,ecx
    2989c629d867:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    2989c629d86e:	e9 56 00 00 00                                  	jmp    0x2989c629d8c9
    2989c629d873:	45 8b 04 0c                                     	mov    r8d,DWORD PTR [r12+rcx*1]
    2989c629d877:	41 8b d0                                        	mov    edx,r8d
    2989c629d87a:	c1 ea 03                                        	shr    edx,0x3
    2989c629d87d:	83 e2 03                                        	and    edx,0x3
    2989c629d880:	43 8b 3c 0c                                     	mov    edi,DWORD PTR [r12+r9*1]
    2989c629d884:	c1 e7 02                                        	shl    edi,0x2
    2989c629d887:	83 e7 7c                                        	and    edi,0x7c
    2989c629d88a:	0b fa                                           	or     edi,edx
    2989c629d88c:	03 fe                                           	add    edi,esi
    2989c629d88e:	41 0f b6 3c 3c                                  	movzx  edi,BYTE PTR [r12+rdi*1]
    2989c629d893:	41 83 e0 07                                     	and    r8d,0x7
    2989c629d897:	8b d1                                           	mov    edx,ecx
    2989c629d899:	41 8b c8                                        	mov    ecx,r8d
    2989c629d89c:	d3 e7                                           	shl    edi,cl
    2989c629d89e:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    2989c629d8a5:	40 f6 c7 80                                     	test   dil,0x80
    2989c629d8a9:	0f 85 1a 00 00 00                               	jne    0x2989c629d8c9
    2989c629d8af:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629d8b2:	4d 8b c4                                        	mov    r8,r12
    2989c629d8b5:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c629d8b9:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629d8bd:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629d8c4:	e9 c1 15 00 00                                  	jmp    0x2989c629ee8a
    2989c629d8c9:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    2989c629d8ce:	c4 41 7a 59 d2                                  	vmulss xmm10,xmm0,xmm10
    2989c629d8d3:	c4 41 2a 59 c9                                  	vmulss xmm9,xmm10,xmm9
    2989c629d8d8:	c4 61 82 2a 9d 68 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x98]
    2989c629d8e1:	c4 41 7a 59 db                                  	vmulss xmm11,xmm0,xmm11
    2989c629d8e6:	c4 41 22 59 c0                                  	vmulss xmm8,xmm11,xmm8
    2989c629d8eb:	c4 41 32 58 e0                                  	vaddss xmm12,xmm9,xmm8
    2989c629d8f0:	c4 41 52 5c d2                                  	vsubss xmm10,xmm5,xmm10
    2989c629d8f5:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    2989c629d8fa:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    2989c629d8fe:	c5 1a 58 d7                                     	vaddss xmm10,xmm12,xmm7
    2989c629d902:	c4 c1 78 2e f2                                  	vucomiss xmm6,xmm10
    2989c629d907:	73 a6                                           	jae    0x2989c629d8af
    2989c629d909:	c4 41 52 5e d2                                  	vdivss xmm10,xmm5,xmm10
    2989c629d90e:	c4 41 78 28 d2                                  	vmovaps xmm10,xmm10
    2989c629d913:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    2989c629d918:	c4 01 7a 6f 64 3c 20                            	vmovdqu xmm12,XMMWORD PTR [r12+r15*1+0x20]
    2989c629d91f:	c4 62 79 18 ef                                  	vbroadcastss xmm13,xmm7
    2989c629d924:	c4 41 18 59 e5                                  	vmulps xmm12,xmm12,xmm13
    2989c629d929:	c4 41 7a 6f 6c 1c 20                            	vmovdqu xmm13,XMMWORD PTR [r12+rbx*1+0x20]
    2989c629d930:	c4 42 79 18 f1                                  	vbroadcastss xmm14,xmm9
    2989c629d935:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    2989c629d93a:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    2989c629d93f:	c4 c1 7a 6f 4c 04 20                            	vmovdqu xmm1,XMMWORD PTR [r12+rax*1+0x20]
    2989c629d946:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    2989c629d94a:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    2989c629d94f:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    2989c629d954:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    2989c629d959:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629d95c:	c4 41 7a 7f 9c 3c 30 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x230],xmm11
    2989c629d966:	c4 01 7a 10 a4 3c 98 00 00 00                   	vmovss xmm12,DWORD PTR [r12+r15*1+0x98]
    2989c629d970:	c4 41 7a 10 ac 1c 98 00 00 00                   	vmovss xmm13,DWORD PTR [r12+rbx*1+0x98]
    2989c629d97a:	c4 41 7a 10 b4 04 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+rax*1+0x98]
    2989c629d984:	c4 41 7a 7f 9c 3c 90 02 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x290],xmm11
    2989c629d98e:	44 8b 9d 08 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xf8]
    2989c629d995:	43 8b 8c 1c 34 01 00 00                         	mov    ecx,DWORD PTR [r12+r11*1+0x134]
    2989c629d99d:	44 8d 79 ff                                     	lea    r15d,[rcx-0x1]
    2989c629d9a1:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c629d9a5:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    2989c629d9a9:	c5 7b 11 85 60 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa0],xmm8
    2989c629d9b1:	c5 7b 11 8d 48 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb8],xmm9
    2989c629d9b9:	c5 fb 11 bd 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm7
    2989c629d9c1:	c5 7b 11 95 68 ff ff ff                         	vmovsd QWORD PTR [rbp-0x98],xmm10
    2989c629d9c9:	c5 7b 11 a5 40 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc0],xmm12
    2989c629d9d1:	c5 7b 11 ad 50 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb0],xmm13
    2989c629d9d9:	c5 7b 11 b5 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm14
    2989c629d9e1:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c629d9e5:	0f 86 1d 07 00 00                               	jbe    0x2989c629e108
    2989c629d9eb:	47 8b bc 1c 30 01 00 00                         	mov    r15d,DWORD PTR [r12+r11*1+0x130]
    2989c629d9f3:	43 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+r11*1+0x130],0x0
    2989c629d9fc:	0f 85 08 00 00 00                               	jne    0x2989c629da0a
    2989c629da02:	4d 8b c4                                        	mov    r8,r12
    2989c629da05:	e9 9c 07 00 00                                  	jmp    0x2989c629e1a6
    2989c629da0a:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    2989c629da11:	4c 89 9d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r11
    2989c629da18:	4c 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r15
    2989c629da1f:	33 c9                                           	xor    ecx,ecx
    2989c629da21:	e9 36 00 00 00                                  	jmp    0x2989c629da5c
    2989c629da26:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629da2f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629da38:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    2989c629da40:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    2989c629da47:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629da4a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629da4e:	4c 8b 9d 28 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xd8]
    2989c629da55:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    2989c629da5c:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    2989c629da63:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    2989c629da69:	8b 85 98 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x168]
    2989c629da6f:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    2989c629da76:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c629da7b:	0f 85 82 18 00 00                               	jne    0x2989c629f303
    2989c629da81:	8b d1                                           	mov    edx,ecx
    2989c629da83:	c1 e2 04                                        	shl    edx,0x4
    2989c629da86:	42 8d 34 3a                                     	lea    esi,[rdx+r15*1]
    2989c629da8a:	4c 8b 15 fc b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb1fc]        # 0x2989c6298c8d
    2989c629da91:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c629da96:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c629da9b:	c4 41 7a 7f 1c 34                               	vmovdqu XMMWORD PTR [r12+rsi*1],xmm11
    2989c629daa1:	48 89 b5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rsi
    2989c629daa8:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    2989c629daaf:	41 c7 04 34 00 00 00 00                         	mov    DWORD PTR [r12+rsi*1],0x0
    2989c629dab7:	6b f9 4c                                        	imul   edi,ecx,0x4c
    2989c629daba:	41 03 f9                                        	add    edi,r9d
    2989c629dabd:	45 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+rdi*1]
    2989c629dac1:	41 83 3c 3c 00                                  	cmp    DWORD PTR [r12+rdi*1],0x0
    2989c629dac6:	0f 8c cd 01 00 00                               	jl     0x2989c629dc99
    2989c629dacc:	45 8b 7c 3c 04                                  	mov    r15d,DWORD PTR [r12+rdi*1+0x4]
    2989c629dad1:	45 85 ff                                        	test   r15d,r15d
    2989c629dad4:	0f 84 bf 01 00 00                               	je     0x2989c629dc99
    2989c629dada:	41 c7 04 34 01 00 00 00                         	mov    DWORD PTR [r12+rsi*1],0x1
    2989c629dae2:	43 8b b4 1c 3c 01 00 00                         	mov    esi,DWORD PTR [r12+r11*1+0x13c]
    2989c629daea:	d3 ee                                           	shr    esi,cl
    2989c629daec:	40 f6 c6 01                                     	test   sil,0x1
    2989c629daf0:	0f 84 a3 01 00 00                               	je     0x2989c629dc99
    2989c629daf6:	41 8b 4c 3c 38                                  	mov    ecx,DWORD PTR [r12+rdi*1+0x38]
    2989c629dafb:	41 83 7c 3c 38 00                               	cmp    DWORD PTR [r12+rdi*1+0x38],0x0
    2989c629db01:	0f 85 7f 01 00 00                               	jne    0x2989c629dc86
    2989c629db07:	41 8d 0c 10                                     	lea    ecx,[r8+rdx*1]
    2989c629db0b:	c4 41 7a 10 5c 0c 08                            	vmovss xmm11,DWORD PTR [r12+rcx*1+0x8]
    2989c629db12:	c5 22 59 9d 38 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xc8]
    2989c629db1a:	8d 34 10                                        	lea    esi,[rax+rdx*1]
    2989c629db1d:	c4 c1 7a 10 4c 34 08                            	vmovss xmm1,DWORD PTR [r12+rsi*1+0x8]
    2989c629db24:	c5 f2 59 8d 48 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xb8]
    2989c629db2c:	03 d3                                           	add    edx,ebx
    2989c629db2e:	c4 c1 7a 10 54 14 08                            	vmovss xmm2,DWORD PTR [r12+rdx*1+0x8]
    2989c629db35:	c5 ea 59 95 60 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xa0]
    2989c629db3d:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    2989c629db41:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c629db45:	c5 a2 59 9d 68 ff ff ff                         	vmulss xmm3,xmm11,DWORD PTR [rbp-0x98]
    2989c629db4d:	c4 41 7a 10 5c 0c 04                            	vmovss xmm11,DWORD PTR [r12+rcx*1+0x4]
    2989c629db54:	c5 22 59 9d 38 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xc8]
    2989c629db5c:	c4 c1 7a 10 4c 34 04                            	vmovss xmm1,DWORD PTR [r12+rsi*1+0x4]
    2989c629db63:	c5 f2 59 8d 48 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xb8]
    2989c629db6b:	c4 c1 7a 10 54 14 04                            	vmovss xmm2,DWORD PTR [r12+rdx*1+0x4]
    2989c629db72:	c5 ea 59 95 60 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xa0]
    2989c629db7a:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    2989c629db7e:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c629db82:	c5 a2 59 95 68 ff ff ff                         	vmulss xmm2,xmm11,DWORD PTR [rbp-0x98]
    2989c629db8a:	c4 41 7a 10 1c 0c                               	vmovss xmm11,DWORD PTR [r12+rcx*1]
    2989c629db90:	c5 22 59 9d 38 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xc8]
    2989c629db98:	c4 c1 7a 10 0c 34                               	vmovss xmm1,DWORD PTR [r12+rsi*1]
    2989c629db9e:	c5 f2 59 8d 48 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xb8]
    2989c629dba6:	c4 c1 7a 10 24 14                               	vmovss xmm4,DWORD PTR [r12+rdx*1]
    2989c629dbac:	c5 da 59 a5 60 ff ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0xa0]
    2989c629dbb4:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    2989c629dbb8:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c629dbbc:	c5 a2 59 8d 68 ff ff ff                         	vmulss xmm1,xmm11,DWORD PTR [rbp-0x98]
    2989c629dbc4:	41 8b 4c 3c 10                                  	mov    ecx,DWORD PTR [r12+rdi*1+0x10]
    2989c629dbc9:	41 8b 54 3c 0c                                  	mov    edx,DWORD PTR [r12+rdi*1+0xc]
    2989c629dbce:	41 8b 74 3c 08                                  	mov    esi,DWORD PTR [r12+rdi*1+0x8]
    2989c629dbd3:	41 8b 34 3c                                     	mov    esi,DWORD PTR [r12+rdi*1]
    2989c629dbd7:	83 fe 02                                        	cmp    esi,0x2
    2989c629dbda:	0f 8c 14 00 00 00                               	jl     0x2989c629dbf4
    2989c629dbe0:	0f 84 44 00 00 00                               	je     0x2989c629dc2a
    2989c629dbe6:	83 fe 03                                        	cmp    esi,0x3
    2989c629dbe9:	0f 84 1c 00 00 00                               	je     0x2989c629dc0b
    2989c629dbef:	e9 5c 00 00 00                                  	jmp    0x2989c629dc50
    2989c629dbf4:	83 fe 00                                        	cmp    esi,0x0
    2989c629dbf7:	0f 84 72 00 00 00                               	je     0x2989c629dc6f
    2989c629dbfd:	83 fe 01                                        	cmp    esi,0x1
    2989c629dc00:	0f 84 4a 00 00 00                               	je     0x2989c629dc50
    2989c629dc06:	e9 45 00 00 00                                  	jmp    0x2989c629dc50
    2989c629dc0b:	41 8b 7c 3c 14                                  	mov    edi,DWORD PTR [r12+rdi*1+0x14]
    2989c629dc10:	44 8b 8d 18 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe8]
    2989c629dc17:	8b df                                           	mov    ebx,edi
    2989c629dc19:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629dc1d:	41 8b c7                                        	mov    eax,r15d
    2989c629dc20:	e8 0b d6 ed ff                                  	call   0x2989c617b230
    2989c629dc25:	e9 6f 00 00 00                                  	jmp    0x2989c629dc99
    2989c629dc2a:	41 8b 74 3c 14                                  	mov    esi,DWORD PTR [r12+rdi*1+0x14]
    2989c629dc2f:	41 8b 7c 3c 18                                  	mov    edi,DWORD PTR [r12+rdi*1+0x18]
    2989c629dc34:	ff b5 18 ff ff ff                               	push   QWORD PTR [rbp-0xe8]
    2989c629dc3a:	8b de                                           	mov    ebx,esi
    2989c629dc3c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629dc40:	41 8b c7                                        	mov    eax,r15d
    2989c629dc43:	44 8b cf                                        	mov    r9d,edi
    2989c629dc46:	e8 dd d5 ed ff                                  	call   0x2989c617b228
    2989c629dc4b:	e9 49 00 00 00                                  	jmp    0x2989c629dc99
    2989c629dc50:	41 8b 7c 3c 14                                  	mov    edi,DWORD PTR [r12+rdi*1+0x14]
    2989c629dc55:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629dc59:	41 8b c7                                        	mov    eax,r15d
    2989c629dc5c:	44 8b 8d 18 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe8]
    2989c629dc63:	8b df                                           	mov    ebx,edi
    2989c629dc65:	e8 ce d5 ed ff                                  	call   0x2989c617b238
    2989c629dc6a:	e9 2a 00 00 00                                  	jmp    0x2989c629dc99
    2989c629dc6f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629dc73:	41 8b c7                                        	mov    eax,r15d
    2989c629dc76:	8b 9d 18 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xe8]
    2989c629dc7c:	e8 9f d5 ed ff                                  	call   0x2989c617b220
    2989c629dc81:	e9 13 00 00 00                                  	jmp    0x2989c629dc99
    2989c629dc86:	c4 c1 7a 6f 44 3c 3c                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x3c]
    2989c629dc8d:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    2989c629dc93:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    2989c629dc99:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    2989c629dc9f:	83 c1 01                                        	add    ecx,0x1
    2989c629dca2:	83 f9 04                                        	cmp    ecx,0x4
    2989c629dca5:	0f 85 95 fd ff ff                               	jne    0x2989c629da40
    2989c629dcab:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c629dcaf:	4c 8b 85 28 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd8]
    2989c629dcb6:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    2989c629dcbe:	45 85 c0                                        	test   r8d,r8d
    2989c629dcc1:	0f 85 c2 01 00 00                               	jne    0x2989c629de89
    2989c629dcc7:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    2989c629dccb:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    2989c629dcd3:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    2989c629dcdc:	0f 84 53 00 00 00                               	je     0x2989c629dd35
    2989c629dce2:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c629dce9:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c629dcf0:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c629dcf7:	41 53                                           	push   r11
    2989c629dcf9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629dcfd:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    2989c629dd03:	33 d2                                           	xor    edx,edx
    2989c629dd05:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    2989c629dd0c:	e8 2f d5 ed ff                                  	call   0x2989c617b240
    2989c629dd11:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629dd14:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629dd18:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    2989c629dd22:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c629dd2c:	4d 8b d0                                        	mov    r10,r8
    2989c629dd2f:	44 8b c7                                        	mov    r8d,edi
    2989c629dd32:	49 8b fa                                        	mov    rdi,r10
    2989c629dd35:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    2989c629dd3d:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    2989c629dd46:	0f 84 56 00 00 00                               	je     0x2989c629dda2
    2989c629dd4c:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c629dd53:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c629dd5a:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c629dd61:	41 53                                           	push   r11
    2989c629dd63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629dd67:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    2989c629dd6d:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c629dd72:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    2989c629dd79:	e8 c2 d4 ed ff                                  	call   0x2989c617b240
    2989c629dd7e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629dd81:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629dd85:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    2989c629dd8f:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c629dd99:	4d 8b d0                                        	mov    r10,r8
    2989c629dd9c:	44 8b c7                                        	mov    r8d,edi
    2989c629dd9f:	49 8b fa                                        	mov    rdi,r10
    2989c629dda2:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    2989c629ddaa:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    2989c629ddb3:	0f 84 56 00 00 00                               	je     0x2989c629de0f
    2989c629ddb9:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c629ddc0:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c629ddc7:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c629ddce:	41 53                                           	push   r11
    2989c629ddd0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629ddd4:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    2989c629ddda:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c629dddf:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    2989c629dde6:	e8 55 d4 ed ff                                  	call   0x2989c617b240
    2989c629ddeb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629ddee:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629ddf2:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    2989c629ddfc:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c629de06:	4d 8b d0                                        	mov    r10,r8
    2989c629de09:	44 8b c7                                        	mov    r8d,edi
    2989c629de0c:	49 8b fa                                        	mov    rdi,r10
    2989c629de0f:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    2989c629de17:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    2989c629de20:	0f 85 0e 00 00 00                               	jne    0x2989c629de34
    2989c629de26:	4c 8b d7                                        	mov    r10,rdi
    2989c629de29:	41 8b f8                                        	mov    edi,r8d
    2989c629de2c:	4d 8b c2                                        	mov    r8,r10
    2989c629de2f:	e9 72 03 00 00                                  	jmp    0x2989c629e1a6
    2989c629de34:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c629de3b:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c629de42:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c629de49:	41 53                                           	push   r11
    2989c629de4b:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c629de50:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629de54:	8b 85 e8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x118]
    2989c629de5a:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    2989c629de61:	e8 da d3 ed ff                                  	call   0x2989c617b240
    2989c629de66:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629de69:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    2989c629de6d:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    2989c629de77:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    2989c629de81:	4d 8b c3                                        	mov    r8,r11
    2989c629de84:	e9 1d 03 00 00                                  	jmp    0x2989c629e1a6
    2989c629de89:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c629de8d:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    2989c629de97:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c629de9d:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c629dea2:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c629dea6:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    2989c629deb0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c629deb4:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c629deb8:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    2989c629dec2:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c629dec6:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    2989c629ded0:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c629ded4:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    2989c629ded8:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    2989c629dee2:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c629dee6:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    2989c629def0:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    2989c629def4:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    2989c629def8:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    2989c629defc:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c629df00:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c629df06:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c629df0b:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    2989c629df0f:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c629df13:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c629df18:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c629df1d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629df21:	0f 87 09 00 00 00                               	ja     0x2989c629df30
    2989c629df27:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c629df2b:	e9 04 00 00 00                                  	jmp    0x2989c629df34
    2989c629df30:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c629df34:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629df38:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c629df3c:	0f 87 09 00 00 00                               	ja     0x2989c629df4b
    2989c629df42:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c629df46:	e9 04 00 00 00                                  	jmp    0x2989c629df4f
    2989c629df4b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c629df4f:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c629df54:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c629df58:	0f 84 a0 00 00 00                               	je     0x2989c629dffe
    2989c629df5e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c629df62:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    2989c629df6c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629df70:	0f 87 09 00 00 00                               	ja     0x2989c629df7f
    2989c629df76:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c629df7a:	e9 04 00 00 00                                  	jmp    0x2989c629df83
    2989c629df7f:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c629df83:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c629df87:	0f 87 0a 00 00 00                               	ja     0x2989c629df97
    2989c629df8d:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c629df92:	e9 04 00 00 00                                  	jmp    0x2989c629df9b
    2989c629df97:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c629df9b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c629df9f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c629dfa4:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c629dfa9:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c629dfad:	4c 8b 15 d9 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd9]        # 0x2989c6298c8d
    2989c629dfb4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c629dfb9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c629dfbe:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c629dfc2:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    2989c629dfcc:	41 83 f8 03                                     	cmp    r8d,0x3
    2989c629dfd0:	0f 85 04 00 00 00                               	jne    0x2989c629dfda
    2989c629dfd6:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    2989c629dfda:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    2989c629dfdf:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c629dfe3:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c629dfe7:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    2989c629dff1:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c629dff6:	4d 8b c4                                        	mov    r8,r12
    2989c629dff9:	e9 cd 00 00 00                                  	jmp    0x2989c629e0cb
    2989c629dffe:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    2989c629e008:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629e00c:	0f 87 09 00 00 00                               	ja     0x2989c629e01b
    2989c629e012:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c629e016:	e9 04 00 00 00                                  	jmp    0x2989c629e01f
    2989c629e01b:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c629e01f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c629e023:	0f 87 0a 00 00 00                               	ja     0x2989c629e033
    2989c629e029:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c629e02e:	e9 04 00 00 00                                  	jmp    0x2989c629e037
    2989c629e033:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c629e037:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    2989c629e041:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    2989c629e047:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    2989c629e04c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629e050:	0f 87 09 00 00 00                               	ja     0x2989c629e05f
    2989c629e056:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c629e05a:	e9 04 00 00 00                                  	jmp    0x2989c629e063
    2989c629e05f:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    2989c629e063:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c629e067:	0f 87 0a 00 00 00                               	ja     0x2989c629e077
    2989c629e06d:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c629e072:	e9 04 00 00 00                                  	jmp    0x2989c629e07b
    2989c629e077:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c629e07b:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    2989c629e085:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c629e08a:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c629e08e:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    2989c629e098:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    2989c629e09d:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c629e0a2:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c629e0a6:	4c 8b 15 e0 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffabe0]        # 0x2989c6298c8d
    2989c629e0ad:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c629e0b2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c629e0b7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c629e0bb:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c629e0bf:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c629e0c3:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c629e0c7:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    2989c629e0cb:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c629e0d0:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c629e0d4:	4c 8b 15 b2 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffabb2]        # 0x2989c6298c8d
    2989c629e0db:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c629e0e0:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c629e0e5:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    2989c629e0e9:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    2989c629e0f3:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    2989c629e0fd:	4c 8b c7                                        	mov    r8,rdi
    2989c629e100:	41 8b fb                                        	mov    edi,r11d
    2989c629e103:	e9 9e 00 00 00                                  	jmp    0x2989c629e1a6
    2989c629e108:	4c 8b 9d f0 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x110]
    2989c629e10f:	c4 01 7a 10 5c 1c 50                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x50]
    2989c629e116:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    2989c629e11a:	4c 8b fb                                        	mov    r15,rbx
    2989c629e11d:	c4 81 7a 10 4c 3c 50                            	vmovss xmm1,DWORD PTR [r12+r15*1+0x50]
    2989c629e124:	c4 c1 72 59 c9                                  	vmulss xmm1,xmm1,xmm9
    2989c629e129:	c4 c1 3a 59 54 04 50                            	vmulss xmm2,xmm8,DWORD PTR [r12+rax*1+0x50]
    2989c629e130:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    2989c629e134:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c629e138:	c4 c1 2a 59 cb                                  	vmulss xmm1,xmm10,xmm11
    2989c629e13d:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    2989c629e144:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    2989c629e148:	c4 81 7a 10 54 3c 54                            	vmovss xmm2,DWORD PTR [r12+r15*1+0x54]
    2989c629e14f:	c4 c1 6a 59 d1                                  	vmulss xmm2,xmm2,xmm9
    2989c629e154:	c4 c1 3a 59 5c 04 54                            	vmulss xmm3,xmm8,DWORD PTR [r12+rax*1+0x54]
    2989c629e15b:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    2989c629e15f:	c5 22 58 da                                     	vaddss xmm11,xmm11,xmm2
    2989c629e163:	c4 c1 2a 59 d3                                  	vmulss xmm2,xmm10,xmm11
    2989c629e168:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    2989c629e16e:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    2989c629e175:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629e179:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    2989c629e17f:	8b d1                                           	mov    edx,ecx
    2989c629e181:	8b cb                                           	mov    ecx,ebx
    2989c629e183:	41 8b d8                                        	mov    ebx,r8d
    2989c629e186:	e8 a5 d3 ed ff                                  	call   0x2989c617b530
    2989c629e18b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629e18e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629e192:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    2989c629e19c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c629e1a6:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629e1aa:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    2989c629e1b2:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    2989c629e1bb:	0f 84 c4 01 00 00                               	je     0x2989c629e385
    2989c629e1c1:	c5 fb 10 85 40 ff ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0xc0]
    2989c629e1c9:	c5 fa 59 85 38 ff ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0xc8]
    2989c629e1d1:	c5 fb 10 ad 50 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xb0]
    2989c629e1d9:	c5 d2 59 ad 48 ff ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0xb8]
    2989c629e1e1:	c5 fb 10 b5 60 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xa0]
    2989c629e1e9:	c5 ca 59 b5 58 ff ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0xa8]
    2989c629e1f1:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c629e1f5:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c629e1f9:	c5 fb 10 ad 68 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x98]
    2989c629e201:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    2989c629e205:	4c 8b 15 65 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9465]        # 0x2989c6297671
    2989c629e20c:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c629e211:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c629e215:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    2989c629e219:	0f 87 04 00 00 00                               	ja     0x2989c629e223
    2989c629e21f:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c629e223:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    2989c629e22b:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    2989c629e232:	0f 85 28 00 00 00                               	jne    0x2989c629e260
    2989c629e238:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    2989c629e242:	4c 8b 15 28 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9428]        # 0x2989c6297671
    2989c629e249:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c629e24e:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    2989c629e252:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629e256:	e8 5d f3 ed ff                                  	call   0x2989c617d5b8
    2989c629e25b:	e9 89 00 00 00                                  	jmp    0x2989c629e2e9
    2989c629e260:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c629e264:	0f 84 5c 00 00 00                               	je     0x2989c629e2c6
    2989c629e26a:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    2989c629e274:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    2989c629e27e:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    2989c629e282:	7a 06                                           	jp     0x2989c629e28a
    2989c629e284:	0f 84 29 00 00 00                               	je     0x2989c629e2b3
    2989c629e28a:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    2989c629e28e:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    2989c629e292:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c629e296:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    2989c629e29a:	0f 86 49 00 00 00                               	jbe    0x2989c629e2e9
    2989c629e2a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c629e2a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c629e2a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c629e2ae:	e9 5b 00 00 00                                  	jmp    0x2989c629e30e
    2989c629e2b3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c629e2b7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c629e2bc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c629e2c1:	e9 44 00 00 00                                  	jmp    0x2989c629e30a
    2989c629e2c6:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    2989c629e2d0:	4c 8b 15 9a 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff939a]        # 0x2989c6297671
    2989c629e2d7:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c629e2dc:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    2989c629e2e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629e2e4:	e8 cf f2 ed ff                                  	call   0x2989c617d5b8
    2989c629e2e9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c629e2ed:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c629e2f2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c629e2f7:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c629e2fb:	0f 87 09 00 00 00                               	ja     0x2989c629e30a
    2989c629e301:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    2989c629e305:	e9 04 00 00 00                                  	jmp    0x2989c629e30e
    2989c629e30a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c629e30e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629e311:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629e315:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    2989c629e31f:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    2989c629e323:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629e327:	c4 01 42 59 84 18 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x100]
    2989c629e331:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c629e336:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    2989c629e340:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    2989c629e34a:	c4 01 42 59 84 18 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x104]
    2989c629e354:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c629e359:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    2989c629e363:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    2989c629e36d:	c4 81 42 59 b4 18 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+r11*1+0x108]
    2989c629e377:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c629e37b:	c4 c1 7a 11 ac 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm5
    2989c629e385:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    2989c629e38f:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    2989c629e399:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c629e39d:	41 c1 e4 04                                     	shl    r12d,0x4
    2989c629e3a1:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629e3a8:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    2989c629e3ac:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c629e3b0:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    2989c629e3b5:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    2989c629e3b9:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    2989c629e3bc:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    2989c629e3c0:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c629e3c3:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    2989c629e3c7:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c629e3ce:	0f 85 8b 0a 00 00                               	jne    0x2989c629ee5f
    2989c629e3d4:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    2989c629e3d9:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    2989c629e3df:	0f 85 4a 0a 00 00                               	jne    0x2989c629ee2f
    2989c629e3e5:	4c 8b 15 a1 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8a1]        # 0x2989c6298c8d
    2989c629e3ec:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c629e3f1:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c629e3f5:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c629e3f9:	c4 c1 7a 6f b4 38 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x280]
    2989c629e403:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    2989c629e407:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    2989c629e40c:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    2989c629e410:	4c 8b 15 76 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa876]        # 0x2989c6298c8d
    2989c629e417:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629e41c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c629e420:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    2989c629e425:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    2989c629e429:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c629e42d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e432:	4c 8b 15 b7 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacb7]        # 0x2989c62990f0
    2989c629e439:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c629e43e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c629e442:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c629e446:	4c 8b 15 ba ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacba]        # 0x2989c6299107
    2989c629e44d:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c629e452:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c629e456:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c629e45a:	4c 8b 15 bd ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacbd]        # 0x2989c629911e
    2989c629e461:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c629e466:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    2989c629e46b:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c629e471:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    2989c629e475:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    2989c629e47a:	4c 8b 15 c0 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc0]        # 0x2989c6299141
    2989c629e481:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629e486:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c629e48a:	4c 8b 15 84 84 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8484]        # 0x2989c6296915
    2989c629e491:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c629e496:	4c 8b 15 c3 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc3]        # 0x2989c6299160
    2989c629e49d:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c629e4a2:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c629e4a7:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    2989c629e4ad:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    2989c629e4b1:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    2989c629e4b5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e4ba:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    2989c629e4bf:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    2989c629e4c3:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c629e4c8:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    2989c629e4cc:	0f af c8                                        	imul   ecx,eax
    2989c629e4cf:	03 ca                                           	add    ecx,edx
    2989c629e4d1:	8d 34 09                                        	lea    esi,[rcx+rcx*1]
    2989c629e4d4:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c629e4d8:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    2989c629e4dd:	8d 14 ca                                        	lea    edx,[rdx+rcx*8]
    2989c629e4e0:	83 fb 03                                        	cmp    ebx,0x3
    2989c629e4e3:	0f 84 7c 00 00 00                               	je     0x2989c629e565
    2989c629e4e9:	8b cb                                           	mov    ecx,ebx
    2989c629e4eb:	83 e1 01                                        	and    ecx,0x1
    2989c629e4ee:	f7 d9                                           	neg    ecx
    2989c629e4f0:	c4 e3 51 22 e9 00                               	vpinsrd xmm5,xmm5,ecx,0x0
    2989c629e4f6:	8b cb                                           	mov    ecx,ebx
    2989c629e4f8:	c1 e1 1e                                        	shl    ecx,0x1e
    2989c629e4fb:	c1 f9 1f                                        	sar    ecx,0x1f
    2989c629e4fe:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    2989c629e504:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    2989c629e509:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    2989c629e50f:	0f 84 38 00 00 00                               	je     0x2989c629e54d
    2989c629e515:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    2989c629e51a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c629e520:	0f 84 27 00 00 00                               	je     0x2989c629e54d
    2989c629e526:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    2989c629e52b:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    2989c629e52e:	c4 81 7b 10 34 08                               	vmovsd xmm6,QWORD PTR [r8+r9*1]
    2989c629e534:	c4 c1 7b 10 3c 08                               	vmovsd xmm7,QWORD PTR [r8+rcx*1]
    2989c629e53a:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    2989c629e53e:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    2989c629e542:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c629e547:	c4 c1 78 13 34 08                               	vmovlps QWORD PTR [r8+rcx*1],xmm6
    2989c629e54d:	c4 c1 7b 10 34 10                               	vmovsd xmm6,QWORD PTR [r8+rdx*1]
    2989c629e553:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    2989c629e557:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c629e55b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e560:	e9 32 00 00 00                                  	jmp    0x2989c629e597
    2989c629e565:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    2989c629e56a:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    2989c629e570:	0f 84 21 00 00 00                               	je     0x2989c629e597
    2989c629e576:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    2989c629e57b:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c629e581:	0f 84 10 00 00 00                               	je     0x2989c629e597
    2989c629e587:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    2989c629e58c:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    2989c629e58f:	4b 8b 34 08                                     	mov    rsi,QWORD PTR [r8+r9*1]
    2989c629e593:	49 89 34 08                                     	mov    QWORD PTR [r8+rcx*1],rsi
    2989c629e597:	c4 c1 78 13 04 10                               	vmovlps QWORD PTR [r8+rdx*1],xmm0
    2989c629e59d:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    2989c629e5a2:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    2989c629e5a8:	0f 84 dc 08 00 00                               	je     0x2989c629ee8a
    2989c629e5ae:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    2989c629e5b3:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c629e5b9:	0f 84 cb 08 00 00                               	je     0x2989c629ee8a
    2989c629e5bf:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    2989c629e5c4:	43 83 7c 18 14 02                               	cmp    DWORD PTR [r8+r11*1+0x14],0x2
    2989c629e5ca:	0f 85 ba 08 00 00                               	jne    0x2989c629ee8a
    2989c629e5d0:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    2989c629e5d5:	85 d2                                           	test   edx,edx
    2989c629e5d7:	0f 84 ad 08 00 00                               	je     0x2989c629ee8a
    2989c629e5dd:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    2989c629e5e0:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    2989c629e5e4:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    2989c629e5e9:	0f 84 9b 08 00 00                               	je     0x2989c629ee8a
    2989c629e5ef:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    2989c629e5f2:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    2989c629e5f6:	83 ea 3c                                        	sub    edx,0x3c
    2989c629e5f9:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    2989c629e5fd:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    2989c629e600:	c1 ee 02                                        	shr    esi,0x2
    2989c629e603:	0f af f2                                        	imul   esi,edx
    2989c629e606:	c1 e6 04                                        	shl    esi,0x4
    2989c629e609:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    2989c629e60c:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    2989c629e613:	8b f1                                           	mov    esi,ecx
    2989c629e615:	83 e6 f0                                        	and    esi,0xfffffff0
    2989c629e618:	03 d6                                           	add    edx,esi
    2989c629e61a:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    2989c629e61f:	81 ee 01 02 00 00                               	sub    esi,0x201
    2989c629e625:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    2989c629e629:	33 c0                                           	xor    eax,eax
    2989c629e62b:	85 f6                                           	test   esi,esi
    2989c629e62d:	0f 94 c0                                        	sete   al
    2989c629e630:	83 fe 02                                        	cmp    esi,0x2
    2989c629e633:	40 0f 94 c6                                     	sete   sil
    2989c629e637:	40 0f b6 f6                                     	movzx  esi,sil
    2989c629e63b:	0b f0                                           	or     esi,eax
    2989c629e63d:	0f 85 0d 00 00 00                               	jne    0x2989c629e650
    2989c629e643:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    2989c629e64b:	e9 3a 08 00 00                                  	jmp    0x2989c629ee8a
    2989c629e650:	83 e3 03                                        	and    ebx,0x3
    2989c629e653:	83 e1 0c                                        	and    ecx,0xc
    2989c629e656:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    2989c629e659:	83 e0 03                                        	and    eax,0x3
    2989c629e65c:	0b c1                                           	or     eax,ecx
    2989c629e65e:	d1 e0                                           	shl    eax,1
    2989c629e660:	83 e0 3f                                        	and    eax,0x3f
    2989c629e663:	8b c8                                           	mov    ecx,eax
    2989c629e665:	48 d3 e3                                        	shl    rbx,cl
    2989c629e668:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    2989c629e66c:	b9 ff ff ff ff                                  	mov    ecx,0xffffffff
    2989c629e671:	48 3b c1                                        	cmp    rax,rcx
    2989c629e674:	0f 84 ba 03 00 00                               	je     0x2989c629ea34
    2989c629e67a:	48 0b c3                                        	or     rax,rbx
    2989c629e67d:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    2989c629e681:	48 3b c8                                        	cmp    rcx,rax
    2989c629e684:	0f 85 00 08 00 00                               	jne    0x2989c629ee8a
    2989c629e68a:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    2989c629e68f:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    2989c629e692:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    2989c629e698:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    2989c629e69c:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    2989c629e69f:	83 ce 03                                        	or     esi,0x3
    2989c629e6a2:	0f af f1                                        	imul   esi,ecx
    2989c629e6a5:	03 f3                                           	add    esi,ebx
    2989c629e6a7:	8d 34 f0                                        	lea    esi,[rax+rsi*8]
    2989c629e6aa:	c4 c1 7a 6f 44 30 10                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x10]
    2989c629e6b1:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c629e6b6:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    2989c629e6bc:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c629e6c1:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c629e6c5:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    2989c629e6c8:	81 e6 fc ff ff 1f                               	and    esi,0x1ffffffc
    2989c629e6ce:	44 8b ce                                        	mov    r9d,esi
    2989c629e6d1:	41 83 c9 02                                     	or     r9d,0x2
    2989c629e6d5:	44 0f af c9                                     	imul   r9d,ecx
    2989c629e6d9:	44 03 cb                                        	add    r9d,ebx
    2989c629e6dc:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    2989c629e6e0:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    2989c629e6e7:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c629e6ec:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c629e6f1:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    2989c629e6f7:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c629e6fd:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c629e702:	44 8b ce                                        	mov    r9d,esi
    2989c629e705:	41 83 c9 01                                     	or     r9d,0x1
    2989c629e709:	44 0f af c9                                     	imul   r9d,ecx
    2989c629e70d:	44 03 cb                                        	add    r9d,ebx
    2989c629e710:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    2989c629e714:	c4 01 7a 6f 4c 08 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x10]
    2989c629e71b:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c629e721:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c629e726:	c4 01 7a 6f 14 08                               	vmovdqu xmm10,XMMWORD PTR [r8+r9*1]
    2989c629e72c:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c629e732:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c629e737:	0f af ce                                        	imul   ecx,esi
    2989c629e73a:	03 d9                                           	add    ebx,ecx
    2989c629e73c:	8d 04 d8                                        	lea    eax,[rax+rbx*8]
    2989c629e73f:	c4 41 7a 6f 5c 00 10                            	vmovdqu xmm11,XMMWORD PTR [r8+rax*1+0x10]
    2989c629e746:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c629e74c:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c629e751:	c4 41 7a 6f 24 00                               	vmovdqu xmm12,XMMWORD PTR [r8+rax*1]
    2989c629e757:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c629e75d:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c629e762:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c629e767:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c629e76c:	c5 f8 50 c5                                     	vmovmskps eax,xmm5
    2989c629e770:	83 f8 0f                                        	cmp    eax,0xf
    2989c629e773:	0f 84 0e 00 00 00                               	je     0x2989c629e787
    2989c629e779:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    2989c629e782:	e9 03 07 00 00                                  	jmp    0x2989c629ee8a
    2989c629e787:	4c 8b 15 dc ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacdc]        # 0x2989c629946a
    2989c629e78e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629e793:	4c 8b 15 df ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacdf]        # 0x2989c6299479
    2989c629e79a:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c629e7a0:	4c 8b 15 e2 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface2]        # 0x2989c6299489
    2989c629e7a7:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629e7ac:	4c 8b 15 e5 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface5]        # 0x2989c6299498
    2989c629e7b3:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c629e7b9:	4c 8b 15 e8 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface8]        # 0x2989c62994a8
    2989c629e7c0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c629e7c5:	4c 8b 15 eb ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaceb]        # 0x2989c62994b7
    2989c629e7cc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c629e7d2:	4c 8b 15 ee ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacee]        # 0x2989c62994c7
    2989c629e7d9:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c629e7de:	4c 8b 15 f1 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacf1]        # 0x2989c62994d6
    2989c629e7e5:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c629e7eb:	4c 8b 15 f4 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacf4]        # 0x2989c62994e6
    2989c629e7f2:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c629e7f7:	4c 8b 15 f7 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacf7]        # 0x2989c62994f5
    2989c629e7fe:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c629e804:	4c 8b 15 fa ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacfa]        # 0x2989c6299505
    2989c629e80b:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629e810:	4c 8b 15 fd ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacfd]        # 0x2989c6299514
    2989c629e817:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c629e81d:	4c 8b 15 00 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad00]        # 0x2989c6299524
    2989c629e824:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c629e829:	4c 8b 15 03 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad03]        # 0x2989c6299533
    2989c629e830:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c629e836:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c629e83b:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c629e83f:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c629e844:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c629e849:	4c 8b 15 06 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad06]        # 0x2989c6299556
    2989c629e850:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c629e856:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c629e85b:	4c 8b 15 09 ad ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffad09]        # 0x2989c629956b
    2989c629e862:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c629e867:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c629e86b:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c629e870:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c629e876:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c629e87b:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c629e87f:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c629e883:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c629e887:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e88c:	4c 8b 15 d8 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd8]        # 0x2989c629956b
    2989c629e893:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629e898:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c629e89d:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c629e8a2:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c629e8a6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e8ab:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c629e8b1:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c629e8b5:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c629e8ba:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e8bf:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c629e8c3:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c629e8c8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e8cd:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c629e8d3:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c629e8d7:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c629e8dc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e8e1:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c629e8e5:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c629e8ea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e8ef:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c629e8f5:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c629e8f9:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c629e8fe:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e903:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c629e907:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c629e90c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e911:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c629e917:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629e91b:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c629e920:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e925:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c629e929:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c629e92e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e933:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c629e938:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c629e93c:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c629e941:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e946:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c629e94a:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c629e94f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e954:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c629e959:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c629e95e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629e962:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c629e966:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e96b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629e96f:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629e973:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e978:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c629e97d:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c629e982:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c629e987:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629e98b:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c629e98f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629e994:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    2989c629e99e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629e9a2:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629e9a6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629e9ab:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    2989c629e9b5:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c629e9b9:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c629e9bd:	33 c0                                           	xor    eax,eax
    2989c629e9bf:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c629e9c3:	0f 97 c0                                        	seta   al
    2989c629e9c6:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    2989c629e9cc:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    2989c629e9d3:	0b cb                                           	or     ecx,ebx
    2989c629e9d5:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    2989c629e9db:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c629e9e0:	be 02 00 00 00                                  	mov    esi,0x2
    2989c629e9e5:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629e9e9:	0f 47 c6                                        	cmova  eax,esi
    2989c629e9ec:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    2989c629e9f3:	0b cb                                           	or     ecx,ebx
    2989c629e9f5:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    2989c629e9fb:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c629ea00:	b9 03 00 00 00                                  	mov    ecx,0x3
    2989c629ea05:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629ea09:	0f 47 c1                                        	cmova  eax,ecx
    2989c629ea0c:	c1 e0 02                                        	shl    eax,0x2
    2989c629ea0f:	0b d8                                           	or     ebx,eax
    2989c629ea11:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    2989c629ea17:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    2989c629ea1e:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    2989c629ea24:	0b c3                                           	or     eax,ebx
    2989c629ea26:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    2989c629ea2a:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    2989c629ea2f:	e9 56 04 00 00                                  	jmp    0x2989c629ee8a
    2989c629ea34:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    2989c629ea39:	8b c8                                           	mov    ecx,eax
    2989c629ea3b:	83 e1 3f                                        	and    ecx,0x3f
    2989c629ea3e:	48 d3 eb                                        	shr    rbx,cl
    2989c629ea41:	be 03 00 00 00                                  	mov    esi,0x3
    2989c629ea46:	f6 c3 01                                        	test   bl,0x1
    2989c629ea49:	0f 84 3b 04 00 00                               	je     0x2989c629ee8a
    2989c629ea4f:	83 e0 01                                        	and    eax,0x1
    2989c629ea52:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    2989c629ea56:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    2989c629ea5c:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    2989c629ea63:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c629ea67:	0f 86 1d 04 00 00                               	jbe    0x2989c629ee8a
    2989c629ea6d:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    2989c629ea72:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    2989c629ea75:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    2989c629ea7b:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    2989c629ea7f:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    2989c629ea83:	41 83 c9 03                                     	or     r9d,0x3
    2989c629ea87:	44 0f af c9                                     	imul   r9d,ecx
    2989c629ea8b:	44 03 cb                                        	add    r9d,ebx
    2989c629ea8e:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    2989c629ea92:	c4 81 7a 6f 44 08 10                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x10]
    2989c629ea99:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c629ea9e:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    2989c629eaa4:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c629eaa9:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c629eaad:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    2989c629eab1:	41 81 e1 fc ff ff 1f                            	and    r9d,0x1ffffffc
    2989c629eab8:	45 8b d9                                        	mov    r11d,r9d
    2989c629eabb:	41 83 cb 02                                     	or     r11d,0x2
    2989c629eabf:	44 0f af d9                                     	imul   r11d,ecx
    2989c629eac3:	44 03 db                                        	add    r11d,ebx
    2989c629eac6:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    2989c629eaca:	c4 81 7a 6f 7c 18 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x10]
    2989c629ead1:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c629ead6:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c629eadb:	c4 01 7a 6f 04 18                               	vmovdqu xmm8,XMMWORD PTR [r8+r11*1]
    2989c629eae1:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c629eae7:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c629eaec:	45 8b d9                                        	mov    r11d,r9d
    2989c629eaef:	41 83 cb 01                                     	or     r11d,0x1
    2989c629eaf3:	44 0f af d9                                     	imul   r11d,ecx
    2989c629eaf7:	44 03 db                                        	add    r11d,ebx
    2989c629eafa:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    2989c629eafe:	c4 01 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x10]
    2989c629eb05:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c629eb0b:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c629eb10:	c4 01 7a 6f 14 18                               	vmovdqu xmm10,XMMWORD PTR [r8+r11*1]
    2989c629eb16:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c629eb1c:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c629eb21:	41 0f af c9                                     	imul   ecx,r9d
    2989c629eb25:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    2989c629eb29:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    2989c629eb2d:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    2989c629eb34:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c629eb3a:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c629eb3f:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    2989c629eb45:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c629eb4b:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c629eb50:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c629eb55:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c629eb5a:	c5 78 50 dd                                     	vmovmskps r11d,xmm5
    2989c629eb5e:	41 83 fb 0f                                     	cmp    r11d,0xf
    2989c629eb62:	0f 84 12 00 00 00                               	je     0x2989c629eb7a
    2989c629eb68:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    2989c629eb71:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629eb75:	e9 10 03 00 00                                  	jmp    0x2989c629ee8a
    2989c629eb7a:	4c 8b 15 e9 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e9]        # 0x2989c629946a
    2989c629eb81:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c629eb86:	4c 8b 15 ec a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ec]        # 0x2989c6299479
    2989c629eb8d:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c629eb93:	4c 8b 15 ef a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ef]        # 0x2989c6299489
    2989c629eb9a:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629eb9f:	4c 8b 15 f2 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f2]        # 0x2989c6299498
    2989c629eba6:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c629ebac:	4c 8b 15 f5 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f5]        # 0x2989c62994a8
    2989c629ebb3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c629ebb8:	4c 8b 15 f8 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f8]        # 0x2989c62994b7
    2989c629ebbf:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c629ebc5:	4c 8b 15 fb a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8fb]        # 0x2989c62994c7
    2989c629ebcc:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c629ebd1:	4c 8b 15 fe a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8fe]        # 0x2989c62994d6
    2989c629ebd8:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c629ebde:	4c 8b 15 01 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa901]        # 0x2989c62994e6
    2989c629ebe5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c629ebea:	4c 8b 15 04 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa904]        # 0x2989c62994f5
    2989c629ebf1:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c629ebf7:	4c 8b 15 07 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa907]        # 0x2989c6299505
    2989c629ebfe:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c629ec03:	4c 8b 15 0a a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa90a]        # 0x2989c6299514
    2989c629ec0a:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c629ec10:	4c 8b 15 0d a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa90d]        # 0x2989c6299524
    2989c629ec17:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c629ec1c:	4c 8b 15 10 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa910]        # 0x2989c6299533
    2989c629ec23:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c629ec29:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c629ec2e:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c629ec32:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c629ec37:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c629ec3c:	4c 8b 15 13 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa913]        # 0x2989c6299556
    2989c629ec43:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c629ec49:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c629ec4e:	4c 8b 15 16 a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa916]        # 0x2989c629956b
    2989c629ec55:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c629ec5a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c629ec5e:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c629ec63:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c629ec69:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c629ec6e:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c629ec72:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c629ec76:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c629ec7a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ec7f:	4c 8b 15 e5 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e5]        # 0x2989c629956b
    2989c629ec86:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c629ec8b:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c629ec90:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c629ec95:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c629ec99:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ec9e:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c629eca4:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c629eca8:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c629ecad:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ecb2:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c629ecb6:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c629ecbb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ecc0:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c629ecc6:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c629ecca:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c629eccf:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ecd4:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c629ecd8:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c629ecdd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ece2:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c629ece8:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c629ecec:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c629ecf1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ecf6:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c629ecfa:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c629ecff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ed04:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c629ed0a:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c629ed0e:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c629ed13:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ed18:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c629ed1c:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c629ed21:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ed26:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c629ed2b:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c629ed2f:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c629ed34:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ed39:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c629ed3d:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c629ed42:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ed47:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c629ed4c:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c629ed51:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629ed55:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c629ed59:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ed5e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629ed62:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629ed66:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ed6b:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c629ed70:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c629ed75:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c629ed7a:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c629ed7e:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c629ed82:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c629ed87:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    2989c629ed91:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c629ed95:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c629ed99:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629ed9e:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    2989c629eda8:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c629edac:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c629edb0:	45 33 db                                        	xor    r11d,r11d
    2989c629edb3:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c629edb7:	41 0f 97 c3                                     	seta   r11b
    2989c629edbb:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    2989c629edc1:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    2989c629edc9:	0b d8                                           	or     ebx,eax
    2989c629edcb:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    2989c629edd1:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c629edd6:	b9 02 00 00 00                                  	mov    ecx,0x2
    2989c629eddb:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c629eddf:	44 0f 47 d9                                     	cmova  r11d,ecx
    2989c629ede3:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    2989c629edeb:	0b d8                                           	or     ebx,eax
    2989c629eded:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    2989c629edf3:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c629edf8:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c629edfc:	44 0f 47 de                                     	cmova  r11d,esi
    2989c629ee00:	41 c1 e3 02                                     	shl    r11d,0x2
    2989c629ee04:	41 0b c3                                        	or     eax,r11d
    2989c629ee07:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    2989c629ee0d:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    2989c629ee14:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    2989c629ee1a:	44 0b d8                                        	or     r11d,eax
    2989c629ee1d:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    2989c629ee21:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    2989c629ee26:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629ee2a:	e9 5b 00 00 00                                  	jmp    0x2989c629ee8a
    2989c629ee2f:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    2989c629ee35:	51                                              	push   rcx
    2989c629ee36:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629ee3a:	8b c8                                           	mov    ecx,eax
    2989c629ee3c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629ee3f:	e8 24 c4 ed ff                                  	call   0x2989c617b268
    2989c629ee44:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629ee47:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629ee4b:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c629ee4f:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629ee53:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629ee5a:	e9 2b 00 00 00                                  	jmp    0x2989c629ee8a
    2989c629ee5f:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    2989c629ee65:	51                                              	push   rcx
    2989c629ee66:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629ee6a:	8b c8                                           	mov    ecx,eax
    2989c629ee6c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629ee6f:	e8 e4 c3 ed ff                                  	call   0x2989c617b258
    2989c629ee74:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629ee77:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629ee7b:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c629ee7f:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c629ee83:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629ee8a:	41 83 c4 01                                     	add    r12d,0x1
    2989c629ee8e:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    2989c629ee93:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    2989c629ee98:	0f 8f 22 e9 ff ff                               	jg     0x2989c629d7c0
    2989c629ee9e:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    2989c629eea4:	e9 04 00 00 00                                  	jmp    0x2989c629eead
    2989c629eea9:	33 d2                                           	xor    edx,edx
    2989c629eeab:	8b fe                                           	mov    edi,esi
    2989c629eead:	33 c0                                           	xor    eax,eax
    2989c629eeaf:	85 d2                                           	test   edx,edx
    2989c629eeb1:	0f 94 c0                                        	sete   al
    2989c629eeb4:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    2989c629eeba:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    2989c629eebe:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    2989c629eec2:	48 8b e5                                        	mov    rsp,rbp
    2989c629eec5:	5d                                              	pop    rbp
    2989c629eec6:	c2 40 00                                        	ret    0x40
    2989c629eec9:	41 b8 10 00 00 00                               	mov    r8d,0x10
    2989c629eecf:	41 d1 f8                                        	sar    r8d,1
    2989c629eed2:	4d 63 c0                                        	movsxd r8,r8d
    2989c629eed5:	c5 f8 11 85 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm0
    2989c629eedd:	48 89 95 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdx
    2989c629eee4:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    2989c629eeeb:	48 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rbx
    2989c629eef2:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    2989c629eefa:	49 8b c0                                        	mov    rax,r8
    2989c629eefd:	e8 2e f0 ed ff                                  	call   0x2989c617df30
    2989c629ef02:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629ef06:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629ef09:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    2989c629ef10:	8b 95 58 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3a8]
    2989c629ef16:	8b bd 98 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x368]
    2989c629ef1c:	8b 9d f0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x310]
    2989c629ef22:	c5 fb 10 8d 40 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x2c0]
    2989c629ef2a:	c5 f8 10 85 80 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x380]
    2989c629ef32:	e9 72 78 ff ff                                  	jmp    0x2989c62967a9
    2989c629ef37:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c629ef3b:	c5 f8 11 85 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm0
    2989c629ef43:	4c 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],r15
    2989c629ef47:	48 89 8d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rcx
    2989c629ef4e:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    2989c629ef55:	c5 fb 11 ad 60 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa0],xmm5
    2989c629ef5d:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    2989c629ef64:	4c 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r9
    2989c629ef6b:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    2989c629ef73:	e8 c8 ef ed ff                                  	call   0x2989c617df40
    2989c629ef78:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629ef7c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629ef80:	c5 fb 10 8d 40 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x2c0]
    2989c629ef88:	c5 f8 10 85 80 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x380]
    2989c629ef90:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    2989c629ef94:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    2989c629ef9a:	8b 9d 58 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xa8]
    2989c629efa0:	c5 fb 10 ad 60 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa0]
    2989c629efa8:	8b 85 48 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb8]
    2989c629efae:	44 8b 8d 70 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x90]
    2989c629efb5:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    2989c629efbb:	8b bd 38 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc8]
    2989c629efc1:	e9 53 7a ff ff                                  	jmp    0x2989c6296a19
    2989c629efc6:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c629efca:	c5 f8 11 85 80 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x380],xmm0
    2989c629efd2:	4c 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],r15
    2989c629efd6:	48 89 8d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rcx
    2989c629efdd:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    2989c629efe4:	4c 89 9d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r11
    2989c629efeb:	c5 fb 11 ad 60 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa0],xmm5
    2989c629eff3:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    2989c629effa:	4c 89 a5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r12
    2989c629f001:	4c 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r9
    2989c629f008:	c5 fb 11 8d 40 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2c0],xmm1
    2989c629f010:	e8 2b ef ed ff                                  	call   0x2989c617df40
    2989c629f015:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629f019:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629f01d:	c5 fb 10 8d 40 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x2c0]
    2989c629f025:	c5 f8 10 85 80 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x380]
    2989c629f02d:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    2989c629f031:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    2989c629f037:	8b 9d 58 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xa8]
    2989c629f03d:	44 8b 9d 78 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x88]
    2989c629f044:	c5 fb 10 ad 60 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa0]
    2989c629f04c:	8b 85 48 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb8]
    2989c629f052:	be ff ff ff ff                                  	mov    esi,0xffffffff
    2989c629f057:	44 8b a5 50 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xb0]
    2989c629f05e:	44 8b 8d 70 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x90]
    2989c629f065:	e9 cc 7a ff ff                                  	jmp    0x2989c6296b36
    2989c629f06a:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    2989c629f06f:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    2989c629f074:	c5 7b 11 b5 68 ff ff ff                         	vmovsd QWORD PTR [rbp-0x98],xmm14
    2989c629f07c:	4c 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r8
    2989c629f083:	48 89 85 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rax
    2989c629f08a:	4c 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r11
    2989c629f091:	e8 aa ee ed ff                                  	call   0x2989c617df40
    2989c629f096:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c629f09a:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c629f09f:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c629f0a4:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629f0a8:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    2989c629f0b0:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    2989c629f0b5:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    2989c629f0ba:	c5 7b 10 b5 68 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x98]
    2989c629f0c2:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    2989c629f0c9:	48 8b 85 40 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xc0]
    2989c629f0d0:	4c 8b 9d 48 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xb8]
    2989c629f0d7:	4c 8b 8d c0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x140]
    2989c629f0de:	48 8b 8d 50 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2b0]
    2989c629f0e5:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    2989c629f0ed:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    2989c629f0f5:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    2989c629f0fd:	8b 9d 58 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a8]
    2989c629f103:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    2989c629f109:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    2989c629f10e:	44 8b a5 90 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x270]
    2989c629f115:	8b b5 30 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd0]
    2989c629f11b:	4c 8b bd 50 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b0]
    2989c629f122:	e9 d9 89 ff ff                                  	jmp    0x2989c6297b00
    2989c629f127:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    2989c629f12e:	4c 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r9
    2989c629f135:	4c 89 85 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r8
    2989c629f13c:	e8 ff ed ed ff                                  	call   0x2989c617df40
    2989c629f141:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c629f145:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c629f14a:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c629f14f:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c629f153:	c5 fb 10 9d 88 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x178]
    2989c629f15b:	8b 95 00 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x200]
    2989c629f161:	4c 8b 8d f0 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x210]
    2989c629f168:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    2989c629f16f:	4c 8b a5 d0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x230]
    2989c629f176:	48 8b bd 78 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x388]
    2989c629f17d:	48 8b 85 30 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x3d0]
    2989c629f184:	4c 8b 9d 48 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x2b8]
    2989c629f18b:	48 8b 8d a8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x158]
    2989c629f192:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    2989c629f199:	48 8b 9d 50 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2b0]
    2989c629f1a0:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    2989c629f1a8:	c5 f8 10 ad 80 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x380]
    2989c629f1b0:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    2989c629f1b8:	e9 7e 90 ff ff                                  	jmp    0x2989c629823b
    2989c629f1bd:	e8 7e ed ed ff                                  	call   0x2989c617df40
    2989c629f1c2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629f1c5:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629f1c9:	8b 85 08 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xf8]
    2989c629f1cf:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    2989c629f1d5:	8b 95 98 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x168]
    2989c629f1db:	8b b5 90 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x170]
    2989c629f1e1:	c5 78 10 a5 70 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x290]
    2989c629f1e9:	c5 78 10 9d 60 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2a0]
    2989c629f1f1:	48 8b 8d 30 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1d0]
    2989c629f1f8:	c5 78 10 8d e0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x320]
    2989c629f200:	c5 f8 10 ad d0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x330]
    2989c629f208:	c5 78 10 95 c0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x340]
    2989c629f210:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    2989c629f218:	44 8b bd c0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x240]
    2989c629f21f:	e9 a8 ad ff ff                                  	jmp    0x2989c6299fcc
    2989c629f224:	e8 17 ed ed ff                                  	call   0x2989c617df40
    2989c629f229:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629f22c:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629f230:	8b 8d 10 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x2f0]
    2989c629f236:	44 8b 9d 90 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x370]
    2989c629f23d:	e9 dd bd ff ff                                  	jmp    0x2989c629b01f
    2989c629f242:	e8 f9 ec ed ff                                  	call   0x2989c617df40
    2989c629f247:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629f24a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629f24e:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629f255:	4c 8b bd 30 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1d0]
    2989c629f25c:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    2989c629f263:	e9 bf d3 ff ff                                  	jmp    0x2989c629c627
    2989c629f268:	e8 d3 ec ed ff                                  	call   0x2989c617df40
    2989c629f26d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629f270:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629f274:	41 bb 02 00 00 00                               	mov    r11d,0x2
    2989c629f27a:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    2989c629f27e:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c629f285:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c629f28b:	44 8b 85 30 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1d0]
    2989c629f292:	c5 78 10 85 70 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x290]
    2989c629f29a:	c5 f8 10 ad 60 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2a0]
    2989c629f2a2:	44 8b 8d 80 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x280]
    2989c629f2a9:	e9 b5 d7 ff ff                                  	jmp    0x2989c629ca63
    2989c629f2ae:	e8 8d ec ed ff                                  	call   0x2989c617df40
    2989c629f2b3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629f2b6:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629f2ba:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    2989c629f2be:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    2989c629f2c2:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c629f2c6:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c629f2cb:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c629f2d0:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c629f2d4:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    2989c629f2db:	48 8b 9d f8 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x108]
    2989c629f2e2:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    2989c629f2e9:	c5 fb 10 85 88 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x178]
    2989c629f2f1:	8b b5 78 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x188]
    2989c629f2f7:	44 8b 9d 70 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x190]
    2989c629f2fe:	e9 14 e5 ff ff                                  	jmp    0x2989c629d817
    2989c629f303:	e8 38 ec ed ff                                  	call   0x2989c617df40
    2989c629f308:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629f30b:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629f30f:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    2989c629f316:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    2989c629f31d:	4c 8b 9d 28 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xd8]
    2989c629f324:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    2989c629f32a:	8b 9d a0 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x160]
    2989c629f330:	8b 85 98 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x168]
    2989c629f336:	44 8b 85 90 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x170]
    2989c629f33d:	e9 3f e7 ff ff                                  	jmp    0x2989c629da81
    2989c629f342:	e8 19 e9 ed ff                                  	call   0x2989c617dc60
    2989c629f347:	e8 14 e9 ed ff                                  	call   0x2989c617dc60
    2989c629f34c:	e8 0f e9 ed ff                                  	call   0x2989c617dc60
    2989c629f351:	e8 0a e9 ed ff                                  	call   0x2989c617dc60
    2989c629f356:	e8 05 e9 ed ff                                  	call   0x2989c617dc60
    2989c629f35b:	e8 00 e9 ed ff                                  	call   0x2989c617dc60
    2989c629f360:	e8 fb e8 ed ff                                  	call   0x2989c617dc60
    2989c629f365:	e8 f6 e8 ed ff                                  	call   0x2989c617dc60
    2989c629f36a:	e8 f1 e8 ed ff                                  	call   0x2989c617dc60
    2989c629f36f:	e8 ec e8 ed ff                                  	call   0x2989c617dc60
    2989c629f374:	e8 e7 e8 ed ff                                  	call   0x2989c617dc60
    2989c629f379:	e8 e2 e8 ed ff                                  	call   0x2989c617dc60
    2989c629f37e:	90                                              	nop
    2989c629f37f:	90                                              	nop
    2989c629f380:	34 87                                           	xor    al,0x87
    2989c629f382:	29 c6                                           	sub    esi,eax
    2989c629f384:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f386:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f388:	2a 87 29 c6 89 29                               	sub    al,BYTE PTR [rdi+0x2989c629]
    2989c629f38e:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f390:	15 87 29 c6 89                                  	adc    eax,0x89c62987
    2989c629f395:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c629f397:	00 06                                           	add    BYTE PTR [rsi],al
    2989c629f399:	87 29                                           	xchg   DWORD PTR [rcx],ebp
    2989c629f39b:	c6                                              	(bad)
    2989c629f39c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f39e:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3a0:	f7 86 29 c6 89 29 00 00 e2 86                   	test   DWORD PTR [rsi+0x2989c629],0x86e20000
    2989c629f3aa:	29 c6                                           	sub    esi,eax
    2989c629f3ac:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3ae:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3b0:	d3 86 29 c6 89 29                               	rol    DWORD PTR [rsi+0x2989c629],cl
    2989c629f3b6:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3b8:	41 87 29                                        	xchg   DWORD PTR [r9],ebp
    2989c629f3bb:	c6                                              	(bad)
    2989c629f3bc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3be:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3c0:	9b                                              	fwait
    2989c629f3c1:	85 29                                           	test   DWORD PTR [rcx],ebp
    2989c629f3c3:	c6                                              	(bad)
    2989c629f3c4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3c6:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3c8:	91                                              	xchg   ecx,eax
    2989c629f3c9:	85 29                                           	test   DWORD PTR [rcx],ebp
    2989c629f3cb:	c6                                              	(bad)
    2989c629f3cc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3ce:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3d0:	7c 85                                           	jl     0x2989c629f357
    2989c629f3d2:	29 c6                                           	sub    esi,eax
    2989c629f3d4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3d6:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3d8:	6d                                              	ins    DWORD PTR es:[rdi],dx
    2989c629f3d9:	85 29                                           	test   DWORD PTR [rcx],ebp
    2989c629f3db:	c6                                              	(bad)
    2989c629f3dc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3de:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3e0:	5e                                              	pop    rsi
    2989c629f3e1:	85 29                                           	test   DWORD PTR [rcx],ebp
    2989c629f3e3:	c6                                              	(bad)
    2989c629f3e4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3e6:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3e8:	49 85 29                                        	test   QWORD PTR [r9],rbp
    2989c629f3eb:	c6                                              	(bad)
    2989c629f3ec:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3ee:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3f0:	3a 85 29 c6 89 29                               	cmp    al,BYTE PTR [rbp+0x2989c629]
    2989c629f3f6:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f3f8:	9f                                              	lahf
    2989c629f3f9:	85 29                                           	test   DWORD PTR [rcx],ebp
    2989c629f3fb:	c6                                              	(bad)
    2989c629f3fc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629f3fe:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f400:	84 00                                           	test   BYTE PTR [rax],al
    2989c629f402:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f404:	1c 00                                           	sbb    al,0x0
    2989c629f406:	00 00                                           	add    BYTE PTR [rax],al
    2989c629f408:	b0 44                                           	mov    al,0x44
    2989c629f40a:	e3 03                                           	jrcxz  0x2989c629f40f
    2989c629f40c:	05 d1 ca 01 e3                                  	add    eax,0xe301cad1
    2989c629f411:	03 05 76 e3 03 05                               	add    eax,DWORD PTR [rip+0x503e376]        # 0x2989cb2dd78d
    2989c629f417:	cf                                              	iret
    2989c629f418:	07                                              	(bad)
    2989c629f419:	e3 03                                           	jrcxz  0x2989c629f41e
    2989c629f41b:	05 00 00 00 00                                  	add    eax,0x0
	...
