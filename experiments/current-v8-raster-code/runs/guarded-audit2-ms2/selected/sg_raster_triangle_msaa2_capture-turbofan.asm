
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_raster_triangle_msaa2_capture-turbofan.bin:     file format binary


Disassembly of section .data:

00002989c6281000 <.data>:
    2989c6281000:	55                                              	push   rbp
    2989c6281001:	48 8b ec                                        	mov    rbp,rsp
    2989c6281004:	6a 30                                           	push   0x30
    2989c6281006:	56                                              	push   rsi
    2989c6281007:	48 81 ec 08 04 00 00                            	sub    rsp,0x408
    2989c628100e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c6281012:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    2989c6281016:	8b f9                                           	mov    edi,ecx
    2989c6281018:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    2989c628101f:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    2989c6281023:	0f 86 bc 89 00 00                               	jbe    0x2989c62899e5
    2989c6281029:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    2989c628102d:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    2989c6281031:	4d 0b de                                        	or     r11,r14
    2989c6281034:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    2989c6281038:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    2989c628103f:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    2989c6281043:	44 8b f8                                        	mov    r15d,eax
    2989c6281046:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    2989c628104b:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    2989c628104f:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    2989c6281056:	83 f9 02                                        	cmp    ecx,0x2
    2989c6281059:	0f 84 26 00 00 00                               	je     0x2989c6281085
    2989c628105f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c6281063:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    2989c6281067:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c628106b:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    2989c6281072:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    2989c6281079:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    2989c6281080:	e9 7f 04 00 00                                  	jmp    0x2989c6281504
    2989c6281085:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    2989c628108a:	85 f6                                           	test   esi,esi
    2989c628108c:	74 d1                                           	je     0x2989c628105f
    2989c628108e:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    2989c6281091:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    2989c6281095:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    2989c628109a:	74 c3                                           	je     0x2989c628105f
    2989c628109c:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    2989c62810a1:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    2989c62810a7:	74 b6                                           	je     0x2989c628105f
    2989c62810a9:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    2989c62810b1:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    2989c62810ba:	75 a3                                           	jne    0x2989c628105f
    2989c62810bc:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    2989c62810c1:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    2989c62810c8:	33 c9                                           	xor    ecx,ecx
    2989c62810ca:	45 85 c9                                        	test   r9d,r9d
    2989c62810cd:	0f 94 c1                                        	sete   cl
    2989c62810d0:	41 83 f9 02                                     	cmp    r9d,0x2
    2989c62810d4:	41 0f 94 c1                                     	sete   r9b
    2989c62810d8:	45 0f b6 c9                                     	movzx  r9d,r9b
    2989c62810dc:	44 0b c9                                        	or     r9d,ecx
    2989c62810df:	0f 84 7a ff ff ff                               	je     0x2989c628105f
    2989c62810e5:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    2989c62810e9:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    2989c62810ef:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    2989c62810f5:	0f 87 64 ff ff ff                               	ja     0x2989c628105f
    2989c62810fb:	8b cb                                           	mov    ecx,ebx
    2989c62810fd:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    2989c6281104:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c6281108:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    2989c628110d:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    2989c6281112:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281116:	0f 82 43 ff ff ff                               	jb     0x2989c628105f
    2989c628111c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6281120:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    2989c6281124:	0f 83 22 00 00 00                               	jae    0x2989c628114c
    2989c628112a:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c628112e:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    2989c6281132:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    2989c6281139:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    2989c6281140:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    2989c6281147:	e9 b8 03 00 00                                  	jmp    0x2989c6281504
    2989c628114c:	8b cf                                           	mov    ecx,edi
    2989c628114e:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    2989c6281155:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    2989c628115a:	72 ce                                           	jb     0x2989c628112a
    2989c628115c:	8b ca                                           	mov    ecx,edx
    2989c628115e:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    2989c6281165:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    2989c6281169:	72 bf                                           	jb     0x2989c628112a
    2989c628116b:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    2989c6281170:	72 b8                                           	jb     0x2989c628112a
    2989c6281172:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6281176:	72 b2                                           	jb     0x2989c628112a
    2989c6281178:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    2989c628117b:	c1 f9 02                                        	sar    ecx,0x2
    2989c628117e:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    2989c6281182:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    2989c6281186:	41 c1 ff 02                                     	sar    r15d,0x2
    2989c628118a:	44 3b f9                                        	cmp    r15d,ecx
    2989c628118d:	0f 8c 5e 03 00 00                               	jl     0x2989c62814f1
    2989c6281193:	49 ba 50 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b850
    2989c628119d:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    2989c62811a2:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    2989c62811a6:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    2989c62811ac:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    2989c62811b1:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    2989c62811b6:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c62811ba:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    2989c62811be:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    2989c62811c5:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    2989c62811cc:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    2989c62811d3:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    2989c62811da:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    2989c62811df:	0f 87 05 00 00 00                               	ja     0x2989c62811ea
    2989c62811e5:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    2989c62811ea:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    2989c62811ee:	0f 87 05 00 00 00                               	ja     0x2989c62811f9
    2989c62811f4:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    2989c62811f9:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    2989c62811fd:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    2989c6281201:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c6281205:	0f 87 04 00 00 00                               	ja     0x2989c628120f
    2989c628120b:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c628120f:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    2989c6281213:	0f 87 09 00 00 00                               	ja     0x2989c6281222
    2989c6281219:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    2989c628121d:	e9 04 00 00 00                                  	jmp    0x2989c6281226
    2989c6281222:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    2989c6281226:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    2989c628122a:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    2989c628122e:	c1 fa 02                                        	sar    edx,0x2
    2989c6281231:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c6281235:	41 c1 f9 02                                     	sar    r9d,0x2
    2989c6281239:	41 8b d9                                        	mov    ebx,r9d
    2989c628123c:	44 3b ca                                        	cmp    r9d,edx
    2989c628123f:	0f 4c da                                        	cmovl  ebx,edx
    2989c6281242:	8d 7e c4                                        	lea    edi,[rsi-0x3c]
    2989c6281245:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    2989c6281249:	83 ee 40                                        	sub    esi,0x40
    2989c628124c:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    2989c6281250:	45 33 db                                        	xor    r11d,r11d
    2989c6281253:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c6281258:	41 0f 94 c3                                     	sete   r11b
    2989c628125c:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c6281260:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    2989c6281267:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    2989c628126e:	48 89 b5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rsi
    2989c6281275:	4c 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],r11
    2989c6281279:	48 c7 85 28 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xd8],0x1
    2989c6281284:	45 33 e4                                        	xor    r12d,r12d
    2989c6281287:	e9 3e 00 00 00                                  	jmp    0x2989c62812ca
    2989c628128c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6281295:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628129e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62812a7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62812b0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62812b9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2989c62812c0:	41 8b cf                                        	mov    ecx,r15d
    2989c62812c3:	4c 89 9d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r11
    2989c62812ca:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c62812cf:	0f 85 7e 87 00 00                               	jne    0x2989c6289a53
    2989c62812d5:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    2989c62812d9:	0f 8e 0c 00 00 00                               	jle    0x2989c62812eb
    2989c62812df:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    2989c62812e6:	e9 a2 01 00 00                                  	jmp    0x2989c628148d
    2989c62812eb:	0f af f9                                        	imul   edi,ecx
    2989c62812ee:	c1 e7 04                                        	shl    edi,0x4
    2989c62812f1:	03 fe                                           	add    edi,esi
    2989c62812f3:	41 8b d1                                        	mov    edx,r9d
    2989c62812f6:	e9 0c 00 00 00                                  	jmp    0x2989c6281307
    2989c62812fb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    2989c6281300:	48 89 b5 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rsi
    2989c6281307:	8b f2                                           	mov    esi,edx
    2989c6281309:	c1 e6 04                                        	shl    esi,0x4
    2989c628130c:	03 f7                                           	add    esi,edi
    2989c628130e:	4d 8b 0c 30                                     	mov    r9,QWORD PTR [r8+rsi*1]
    2989c6281312:	41 b9 ff ff ff ff                               	mov    r9d,0xffffffff
    2989c6281318:	4d 39 0c 30                                     	cmp    QWORD PTR [r8+rsi*1],r9
    2989c628131c:	0f 85 80 01 00 00                               	jne    0x2989c62814a2
    2989c6281322:	c4 c1 7a 10 74 30 08                            	vmovss xmm6,DWORD PTR [r8+rsi*1+0x8]
    2989c6281329:	83 7d b8 00                                     	cmp    DWORD PTR [rbp-0x48],0x0
    2989c628132d:	0f 85 0f 00 00 00                               	jne    0x2989c6281342
    2989c6281333:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281337:	0f 83 65 01 00 00                               	jae    0x2989c62814a2
    2989c628133d:	e9 0a 00 00 00                                  	jmp    0x2989c628134c
    2989c6281342:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281346:	0f 87 56 01 00 00                               	ja     0x2989c62814a2
    2989c628134c:	8b b5 28 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd8]
    2989c6281352:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281356:	41 0f 43 f4                                     	cmovae esi,r12d
    2989c628135a:	44 8d 5a 01                                     	lea    r11d,[rdx+0x1]
    2989c628135e:	3b d3                                           	cmp    edx,ebx
    2989c6281360:	0f 84 11 01 00 00                               	je     0x2989c6281477
    2989c6281366:	41 8b d3                                        	mov    edx,r11d
    2989c6281369:	c1 e2 04                                        	shl    edx,0x4
    2989c628136c:	03 d7                                           	add    edx,edi
    2989c628136e:	4d 8b 3c 10                                     	mov    r15,QWORD PTR [r8+rdx*1]
    2989c6281372:	4d 39 0c 10                                     	cmp    QWORD PTR [r8+rdx*1],r9
    2989c6281376:	0f 85 26 01 00 00                               	jne    0x2989c62814a2
    2989c628137c:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    2989c6281383:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c6281388:	0f 84 0f 00 00 00                               	je     0x2989c628139d
    2989c628138e:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281392:	0f 83 0a 01 00 00                               	jae    0x2989c62814a2
    2989c6281398:	e9 0a 00 00 00                                  	jmp    0x2989c62813a7
    2989c628139d:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62813a1:	0f 87 fb 00 00 00                               	ja     0x2989c62814a2
    2989c62813a7:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62813ab:	41 0f 43 f4                                     	cmovae esi,r12d
    2989c62813af:	45 8d 7b 01                                     	lea    r15d,[r11+0x1]
    2989c62813b3:	44 3b db                                        	cmp    r11d,ebx
    2989c62813b6:	0f 84 bb 00 00 00                               	je     0x2989c6281477
    2989c62813bc:	45 8b df                                        	mov    r11d,r15d
    2989c62813bf:	41 c1 e3 04                                     	shl    r11d,0x4
    2989c62813c3:	44 03 df                                        	add    r11d,edi
    2989c62813c6:	4b 8b 14 18                                     	mov    rdx,QWORD PTR [r8+r11*1]
    2989c62813ca:	4f 39 0c 18                                     	cmp    QWORD PTR [r8+r11*1],r9
    2989c62813ce:	0f 85 ce 00 00 00                               	jne    0x2989c62814a2
    2989c62813d4:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    2989c62813db:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c62813e0:	0f 84 0f 00 00 00                               	je     0x2989c62813f5
    2989c62813e6:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62813ea:	0f 83 b2 00 00 00                               	jae    0x2989c62814a2
    2989c62813f0:	e9 0a 00 00 00                                  	jmp    0x2989c62813ff
    2989c62813f5:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62813f9:	0f 87 a3 00 00 00                               	ja     0x2989c62814a2
    2989c62813ff:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281403:	41 0f 43 f4                                     	cmovae esi,r12d
    2989c6281407:	45 8d 5f 01                                     	lea    r11d,[r15+0x1]
    2989c628140b:	44 3b fb                                        	cmp    r15d,ebx
    2989c628140e:	0f 84 63 00 00 00                               	je     0x2989c6281477
    2989c6281414:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6281419:	0f 85 b1 86 00 00                               	jne    0x2989c6289ad0
    2989c628141f:	45 8b fb                                        	mov    r15d,r11d
    2989c6281422:	41 c1 e7 04                                     	shl    r15d,0x4
    2989c6281426:	44 03 ff                                        	add    r15d,edi
    2989c6281429:	4b 8b 14 38                                     	mov    rdx,QWORD PTR [r8+r15*1]
    2989c628142d:	4f 39 0c 38                                     	cmp    QWORD PTR [r8+r15*1],r9
    2989c6281431:	0f 85 6b 00 00 00                               	jne    0x2989c62814a2
    2989c6281437:	c4 81 7a 10 74 38 08                            	vmovss xmm6,DWORD PTR [r8+r15*1+0x8]
    2989c628143e:	3d 01 02 00 00                                  	cmp    eax,0x201
    2989c6281443:	0f 84 0f 00 00 00                               	je     0x2989c6281458
    2989c6281449:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c628144d:	0f 83 4f 00 00 00                               	jae    0x2989c62814a2
    2989c6281453:	e9 0a 00 00 00                                  	jmp    0x2989c6281462
    2989c6281458:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c628145c:	0f 87 40 00 00 00                               	ja     0x2989c62814a2
    2989c6281462:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6281466:	41 0f 43 f4                                     	cmovae esi,r12d
    2989c628146a:	41 8d 53 01                                     	lea    edx,[r11+0x1]
    2989c628146e:	41 3b db                                        	cmp    ebx,r11d
    2989c6281471:	0f 85 89 fe ff ff                               	jne    0x2989c6281300
    2989c6281477:	44 8b de                                        	mov    r11d,esi
    2989c628147a:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    2989c6281481:	8b b5 18 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe8]
    2989c6281487:	8b bd 40 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc0]
    2989c628148d:	44 8d 79 01                                     	lea    r15d,[rcx+0x1]
    2989c6281491:	3b 8d 70 ff ff ff                               	cmp    ecx,DWORD PTR [rbp-0x90]
    2989c6281497:	0f 85 23 fe ff ff                               	jne    0x2989c62812c0
    2989c628149d:	e9 23 00 00 00                                  	jmp    0x2989c62814c5
    2989c62814a2:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    2989c62814a8:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    2989c62814ac:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    2989c62814b0:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    2989c62814b4:	8b 95 48 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b8]
    2989c62814ba:	8b bd 88 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x378]
    2989c62814c0:	e9 3f 00 00 00                                  	jmp    0x2989c6281504
    2989c62814c5:	b8 02 00 00 00                                  	mov    eax,0x2
    2989c62814ca:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    2989c62814cf:	45 85 db                                        	test   r11d,r11d
    2989c62814d2:	0f 45 f8                                        	cmovne edi,eax
    2989c62814d5:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c62814d9:	45 8d 83 a0 02 00 00                            	lea    r8d,[r11+0x2a0]
    2989c62814e0:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    2989c62814e4:	45 89 47 07                                     	mov    DWORD PTR [r15+0x7],r8d
    2989c62814e8:	8b c7                                           	mov    eax,edi
    2989c62814ea:	48 8b e5                                        	mov    rsp,rbp
    2989c62814ed:	5d                                              	pop    rbp
    2989c62814ee:	c2 40 00                                        	ret    0x40
    2989c62814f1:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    2989c62814f9:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    2989c62814fd:	b8 02 00 00 00                                  	mov    eax,0x2
    2989c6281502:	eb e6                                           	jmp    0x2989c62814ea
    2989c6281504:	8b c7                                           	mov    eax,edi
    2989c6281506:	c4 c1 7a 10 6c 00 14                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x14]
    2989c628150d:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    2989c6281513:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c6281518:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c628151c:	4c 8b 15 72 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc72]        # 0x2989c6281195
    2989c6281523:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6281528:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c628152c:	48 89 85 f8 fe ff ff                            	mov    QWORD PTR [rbp-0x108],rax
    2989c6281533:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    2989c6281539:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    2989c628153e:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6281543:	0f 87 0d 00 00 00                               	ja     0x2989c6281556
    2989c6281549:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c628154e:	48 8b f1                                        	mov    rsi,rcx
    2989c6281551:	e9 21 00 00 00                                  	jmp    0x2989c6281577
    2989c6281556:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c628155c:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    2989c6281560:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    2989c6281564:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c6281569:	0f 8a 0d 89 00 00                               	jp     0x2989c6289e7c
    2989c628156f:	0f 85 07 89 00 00                               	jne    0x2989c6289e7c
    2989c6281575:	8b f1                                           	mov    esi,ecx
    2989c6281577:	44 8b cb                                        	mov    r9d,ebx
    2989c628157a:	c4 81 7a 10 6c 08 14                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x14]
    2989c6281581:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6281585:	4c 8b 15 09 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc09]        # 0x2989c6281195
    2989c628158c:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6281591:	48 89 b5 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rsi
    2989c6281598:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    2989c628159f:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c62815a4:	0f 87 0a 00 00 00                               	ja     0x2989c62815b4
    2989c62815aa:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c62815af:	e9 1f 00 00 00                                  	jmp    0x2989c62815d3
    2989c62815b4:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c62815ba:	c5 fa 2c cd                                     	vcvttss2si ecx,xmm5
    2989c62815be:	c5 02 2a c1                                     	vcvtsi2ss xmm8,xmm15,ecx
    2989c62815c2:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c62815c7:	0f 8a aa 88 00 00                               	jp     0x2989c6289e77
    2989c62815cd:	0f 85 a4 88 00 00                               	jne    0x2989c6289e77
    2989c62815d3:	44 8b d9                                        	mov    r11d,ecx
    2989c62815d6:	44 2b de                                        	sub    r11d,esi
    2989c62815d9:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    2989c62815e0:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c62815e4:	4c 8b 15 aa fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbaa]        # 0x2989c6281195
    2989c62815eb:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c62815f0:	48 89 8d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rcx
    2989c62815f7:	4c 89 9d a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r11
    2989c62815fe:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6281603:	0f 87 10 00 00 00                               	ja     0x2989c6281619
    2989c6281609:	48 c7 85 18 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xe8],0xffffffff80000000
    2989c6281614:	e9 26 00 00 00                                  	jmp    0x2989c628163f
    2989c6281619:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c628161f:	c5 fa 2c c5                                     	vcvttss2si eax,xmm5
    2989c6281623:	c5 02 2a c0                                     	vcvtsi2ss xmm8,xmm15,eax
    2989c6281627:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c628162c:	0f 8a 40 88 00 00                               	jp     0x2989c6289e72
    2989c6281632:	0f 85 3a 88 00 00                               	jne    0x2989c6289e72
    2989c6281638:	48 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rax
    2989c628163f:	49 63 c3                                        	movsxd rax,r11d
    2989c6281642:	c4 81 7a 10 6c 08 10                            	vmovss xmm5,DWORD PTR [r8+r9*1+0x10]
    2989c6281649:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c628164d:	4c 8b 15 41 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb41]        # 0x2989c6281195
    2989c6281654:	c4 41 50 54 02                                  	vandps xmm8,xmm5,XMMWORD PTR [r10]
    2989c6281659:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    2989c628165d:	c4 41 78 2e c8                                  	vucomiss xmm9,xmm8
    2989c6281662:	0f 87 10 00 00 00                               	ja     0x2989c6281678
    2989c6281668:	48 c7 85 50 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xb0],0xffffffff80000000
    2989c6281673:	e9 27 00 00 00                                  	jmp    0x2989c628169f
    2989c6281678:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c628167e:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    2989c6281682:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    2989c6281687:	c4 c1 78 2e e8                                  	vucomiss xmm5,xmm8
    2989c628168c:	0f 8a db 87 00 00                               	jp     0x2989c6289e6d
    2989c6281692:	0f 85 d5 87 00 00                               	jne    0x2989c6289e6d
    2989c6281698:	4c 89 8d 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r9
    2989c628169f:	44 8b da                                        	mov    r11d,edx
    2989c62816a2:	c4 81 7a 10 6c 18 10                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x10]
    2989c62816a9:	c4 01 7a 10 44 18 14                            	vmovss xmm8,DWORD PTR [r8+r11*1+0x14]
    2989c62816b0:	4c 89 9d f0 fe ff ff                            	mov    QWORD PTR [rbp-0x110],r11
    2989c62816b7:	47 8b 9c 38 8c 00 00 00                         	mov    r11d,DWORD PTR [r8+r15*1+0x8c]
    2989c62816bf:	41 b9 c0 00 00 00                               	mov    r9d,0xc0
    2989c62816c5:	ba 80 00 00 00                                  	mov    edx,0x80
    2989c62816ca:	45 85 db                                        	test   r11d,r11d
    2989c62816cd:	49 0f 45 d1                                     	cmovne rdx,r9
    2989c62816d1:	44 8b 8d 50 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xb0]
    2989c62816d8:	44 2b 8d 18 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xe8]
    2989c62816df:	4d 63 c9                                        	movsxd r9,r9d
    2989c62816e2:	49 8b f9                                        	mov    rdi,r9
    2989c62816e5:	48 2b f8                                        	sub    rdi,rax
    2989c62816e8:	48 8b da                                        	mov    rbx,rdx
    2989c62816eb:	48 0f af df                                     	imul   rbx,rdi
    2989c62816ef:	4b 89 9c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rbx
    2989c62816f7:	41 bf 07 00 00 00                               	mov    r15d,0x7
    2989c62816fd:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    2989c6281701:	bf 06 00 00 00                                  	mov    edi,0x6
    2989c6281706:	45 85 db                                        	test   r11d,r11d
    2989c6281709:	4c 0f 45 ff                                     	cmovne r15,rdi
    2989c628170d:	41 8b ff                                        	mov    edi,r15d
    2989c6281710:	83 e7 3f                                        	and    edi,0x3f
    2989c6281713:	4d 8b f9                                        	mov    r15,r9
    2989c6281716:	8b cf                                           	mov    ecx,edi
    2989c6281718:	49 d3 e7                                        	shl    r15,cl
    2989c628171b:	4c 89 9d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r11
    2989c6281722:	4c 8b d8                                        	mov    r11,rax
    2989c6281725:	8b cf                                           	mov    ecx,edi
    2989c6281727:	49 d3 e3                                        	shl    r11,cl
    2989c628172a:	4d 2b fb                                        	sub    r15,r11
    2989c628172d:	4f 89 bc 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],r15
    2989c6281735:	c5 3a 59 c6                                     	vmulss xmm8,xmm8,xmm6
    2989c6281739:	4c 8b 15 55 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffa55]        # 0x2989c6281195
    2989c6281740:	c4 41 38 54 12                                  	vandps xmm10,xmm8,XMMWORD PTR [r10]
    2989c6281745:	4c 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r9
    2989c628174c:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6281751:	0f 87 0b 00 00 00                               	ja     0x2989c6281762
    2989c6281757:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    2989c628175d:	e9 21 00 00 00                                  	jmp    0x2989c6281783
    2989c6281762:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    2989c6281768:	c4 41 7a 2c d8                                  	vcvttss2si r11d,xmm8
    2989c628176d:	c4 41 02 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11d
    2989c6281772:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    2989c6281777:	0f 8a eb 86 00 00                               	jp     0x2989c6289e68
    2989c628177d:	0f 85 e5 86 00 00                               	jne    0x2989c6289e68
    2989c6281783:	41 8b cb                                        	mov    ecx,r11d
    2989c6281786:	2b 8d 40 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0xc0]
    2989c628178c:	48 63 c1                                        	movsxd rax,ecx
    2989c628178f:	c5 d2 59 ee                                     	vmulss xmm5,xmm5,xmm6
    2989c6281793:	4c 8b 15 fb f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff9fb]        # 0x2989c6281195
    2989c628179a:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    2989c628179f:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    2989c62817a6:	48 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rcx
    2989c62817ad:	48 89 85 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rax
    2989c62817b4:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    2989c62817b8:	0f 87 10 00 00 00                               	ja     0x2989c62817ce
    2989c62817be:	48 c7 85 58 ff ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0xa8],0xffffffff80000000
    2989c62817c9:	e9 26 00 00 00                                  	jmp    0x2989c62817f4
    2989c62817ce:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    2989c62817d4:	c5 7a 2c cd                                     	vcvttss2si r9d,xmm5
    2989c62817d8:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    2989c62817dd:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c62817e1:	0f 8a 7c 86 00 00                               	jp     0x2989c6289e63
    2989c62817e7:	0f 85 76 86 00 00                               	jne    0x2989c6289e63
    2989c62817ed:	4c 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r9
    2989c62817f4:	44 8b 8d 58 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xa8]
    2989c62817fb:	44 2b 8d 50 ff ff ff                            	sub    r9d,DWORD PTR [rbp-0xb0]
    2989c6281802:	4d 63 c9                                        	movsxd r9,r9d
    2989c6281805:	49 8b f1                                        	mov    rsi,r9
    2989c6281808:	48 2b f0                                        	sub    rsi,rax
    2989c628180b:	48 8b c2                                        	mov    rax,rdx
    2989c628180e:	48 0f af c6                                     	imul   rax,rsi
    2989c6281812:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    2989c628181a:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    2989c628181e:	49 8b f1                                        	mov    rsi,r9
    2989c6281821:	8b cf                                           	mov    ecx,edi
    2989c6281823:	48 d3 e6                                        	shl    rsi,cl
    2989c6281826:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    2989c628182d:	4c 8b 8d 08 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xf8]
    2989c6281834:	8b cf                                           	mov    ecx,edi
    2989c6281836:	49 d3 e1                                        	shl    r9,cl
    2989c6281839:	49 2b f1                                        	sub    rsi,r9
    2989c628183c:	4b 89 b4 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rsi
    2989c6281844:	8b 8d 18 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe8]
    2989c628184a:	2b 8d 58 ff ff ff                               	sub    ecx,DWORD PTR [rbp-0xa8]
    2989c6281850:	4c 63 c9                                        	movsxd r9,ecx
    2989c6281853:	8b 8d 10 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf0]
    2989c6281859:	41 2b cb                                        	sub    ecx,r11d
    2989c628185c:	4c 89 8d d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r9
    2989c6281863:	4c 63 c9                                        	movsxd r9,ecx
    2989c6281866:	4c 8b 9d d8 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x128]
    2989c628186d:	4d 2b d9                                        	sub    r11,r9
    2989c6281870:	4c 0f af da                                     	imul   r11,rdx
    2989c6281874:	4f 89 9c 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],r11
    2989c628187c:	48 8b 95 d8 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x128]
    2989c6281883:	48 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rcx
    2989c628188a:	8b cf                                           	mov    ecx,edi
    2989c628188c:	48 d3 e2                                        	shl    rdx,cl
    2989c628188f:	8b cf                                           	mov    ecx,edi
    2989c6281891:	49 8b f9                                        	mov    rdi,r9
    2989c6281894:	48 d3 e7                                        	shl    rdi,cl
    2989c6281897:	48 2b d7                                        	sub    rdx,rdi
    2989c628189a:	4b 89 94 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],rdx
    2989c62818a2:	48 8b fa                                        	mov    rdi,rdx
    2989c62818a5:	49 3b d3                                        	cmp    rdx,r11
    2989c62818a8:	49 0f 4c fb                                     	cmovl  rdi,r11
    2989c62818ac:	48 8b ca                                        	mov    rcx,rdx
    2989c62818af:	4c 3b da                                        	cmp    r11,rdx
    2989c62818b2:	49 0f 4c cb                                     	cmovl  rcx,r11
    2989c62818b6:	4c 8b e6                                        	mov    r12,rsi
    2989c62818b9:	48 3b f0                                        	cmp    rsi,rax
    2989c62818bc:	4c 0f 4c e0                                     	cmovl  r12,rax
    2989c62818c0:	4c 8b c6                                        	mov    r8,rsi
    2989c62818c3:	48 3b c6                                        	cmp    rax,rsi
    2989c62818c6:	4c 0f 4c c0                                     	cmovl  r8,rax
    2989c62818ca:	4c 89 9d d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],r11
    2989c62818d1:	4d 8b df                                        	mov    r11,r15
    2989c62818d4:	4c 3b fb                                        	cmp    r15,rbx
    2989c62818d7:	4c 0f 4c db                                     	cmovl  r11,rbx
    2989c62818db:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    2989c62818e2:	49 8b d7                                        	mov    rdx,r15
    2989c62818e5:	49 3b df                                        	cmp    rbx,r15
    2989c62818e8:	48 0f 4c d3                                     	cmovl  rdx,rbx
    2989c62818ec:	48 89 bd 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],rdi
    2989c62818f3:	48 63 7d 18                                     	movsxd rdi,DWORD PTR [rbp+0x18]
    2989c62818f7:	48 c1 e7 08                                     	shl    rdi,0x8
    2989c62818fb:	48 89 8d 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rcx
    2989c6281902:	48 63 8d 58 fe ff ff                            	movsxd rcx,DWORD PTR [rbp-0x1a8]
    2989c6281909:	48 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rax
    2989c6281910:	48 8b c7                                        	mov    rax,rdi
    2989c6281913:	48 2b c1                                        	sub    rax,rcx
    2989c6281916:	48 0f af 85 d8 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x128]
    2989c628191e:	48 63 8d 58 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xa8]
    2989c6281925:	48 89 b5 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rsi
    2989c628192c:	48 63 75 10                                     	movsxd rsi,DWORD PTR [rbp+0x10]
    2989c6281930:	48 c1 e6 08                                     	shl    rsi,0x8
    2989c6281934:	48 2b ce                                        	sub    rcx,rsi
    2989c6281937:	49 0f af c9                                     	imul   rcx,r9
    2989c628193b:	48 03 c1                                        	add    rax,rcx
    2989c628193e:	48 63 8d 40 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xc0]
    2989c6281945:	48 89 85 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rax
    2989c628194c:	48 8b c7                                        	mov    rax,rdi
    2989c628194f:	48 2b c1                                        	sub    rax,rcx
    2989c6281952:	48 0f af 85 c8 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x138]
    2989c628195a:	48 63 8d 50 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xb0]
    2989c6281961:	48 2b ce                                        	sub    rcx,rsi
    2989c6281964:	48 0f af 8d 08 ff ff ff                         	imul   rcx,QWORD PTR [rbp-0xf8]
    2989c628196c:	48 03 c1                                        	add    rax,rcx
    2989c628196f:	48 63 8d 10 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xf0]
    2989c6281976:	48 2b f9                                        	sub    rdi,rcx
    2989c6281979:	48 0f af bd 70 ff ff ff                         	imul   rdi,QWORD PTR [rbp-0x90]
    2989c6281981:	48 63 8d 18 ff ff ff                            	movsxd rcx,DWORD PTR [rbp-0xe8]
    2989c6281988:	48 2b ce                                        	sub    rcx,rsi
    2989c628198b:	48 0f af 4d d0                                  	imul   rcx,QWORD PTR [rbp-0x30]
    2989c6281990:	48 03 f9                                        	add    rdi,rcx
    2989c6281993:	49 f7 d9                                        	neg    r9
    2989c6281996:	48 8b b5 08 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xf8]
    2989c628199d:	48 f7 de                                        	neg    rsi
    2989c62819a0:	48 8b 4d d0                                     	mov    rcx,QWORD PTR [rbp-0x30]
    2989c62819a4:	48 f7 d9                                        	neg    rcx
    2989c62819a7:	48 89 8d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rcx
    2989c62819ae:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    2989c62819b1:	2b 4d 18                                        	sub    ecx,DWORD PTR [rbp+0x18]
    2989c62819b4:	4c 89 8d 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],r9
    2989c62819bb:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    2989c62819bf:	44 2b 4d 10                                     	sub    r9d,DWORD PTR [rbp+0x10]
    2989c62819c3:	4c 89 a5 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r12
    2989c62819ca:	4c 89 85 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],r8
    2989c62819d1:	48 89 95 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rdx
    2989c62819d8:	48 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdi
    2989c62819df:	48 89 b5 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rsi
    2989c62819e6:	48 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rcx
    2989c62819ed:	4c 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],r9
    2989c62819f1:	41 81 f9 00 00 01 00                            	cmp    r9d,0x10000
    2989c62819f8:	0f 8f 9d 02 00 00                               	jg     0x2989c6281c9b
    2989c62819fe:	81 f9 00 00 01 00                               	cmp    ecx,0x10000
    2989c6281a04:	0f 8f 91 02 00 00                               	jg     0x2989c6281c9b
    2989c6281a0a:	49 c7 c4 00 00 00 80                            	mov    r12,0xffffffff80000000
    2989c6281a11:	48 8b f7                                        	mov    rsi,rdi
    2989c6281a14:	49 03 f4                                        	add    rsi,r12
    2989c6281a17:	49 b8 00 00 00 00 ff ff ff ff                   	movabs r8,0xffffffff00000000
    2989c6281a21:	49 3b f0                                        	cmp    rsi,r8
    2989c6281a24:	0f 82 58 02 00 00                               	jb     0x2989c6281c82
    2989c6281a2a:	48 8d 34 3a                                     	lea    rsi,[rdx+rdi*1]
    2989c6281a2e:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    2989c6281a32:	48 63 d2                                        	movsxd rdx,edx
    2989c6281a35:	4c 8b 8d 90 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x270]
    2989c6281a3c:	4c 0f af ca                                     	imul   r9,rdx
    2989c6281a40:	49 c1 e1 08                                     	shl    r9,0x8
    2989c6281a44:	48 89 95 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rdx
    2989c6281a4b:	49 8b d1                                        	mov    rdx,r9
    2989c6281a4e:	48 c1 fa 3f                                     	sar    rdx,0x3f
    2989c6281a52:	49 23 d1                                        	and    rdx,r9
    2989c6281a55:	48 03 d6                                        	add    rdx,rsi
    2989c6281a58:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    2989c6281a5b:	48 63 f6                                        	movsxd rsi,esi
    2989c6281a5e:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    2989c6281a65:	48 0f af ce                                     	imul   rcx,rsi
    2989c6281a69:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6281a6d:	48 89 b5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rsi
    2989c6281a74:	48 8b f1                                        	mov    rsi,rcx
    2989c6281a77:	48 c1 fe 3f                                     	sar    rsi,0x3f
    2989c6281a7b:	48 23 f1                                        	and    rsi,rcx
    2989c6281a7e:	48 03 d6                                        	add    rdx,rsi
    2989c6281a81:	48 81 fa 01 00 00 80                            	cmp    rdx,0xffffffff80000001
    2989c6281a88:	0f 8c f4 01 00 00                               	jl     0x2989c6281c82
    2989c6281a8e:	49 8d 14 3b                                     	lea    rdx,[r11+rdi*1]
    2989c6281a92:	33 ff                                           	xor    edi,edi
    2989c6281a94:	4d 85 c9                                        	test   r9,r9
    2989c6281a97:	49 0f 4f f9                                     	cmovg  rdi,r9
    2989c6281a9b:	48 03 fa                                        	add    rdi,rdx
    2989c6281a9e:	33 d2                                           	xor    edx,edx
    2989c6281aa0:	48 85 c9                                        	test   rcx,rcx
    2989c6281aa3:	48 0f 4f d1                                     	cmovg  rdx,rcx
    2989c6281aa7:	48 03 fa                                        	add    rdi,rdx
    2989c6281aaa:	33 f6                                           	xor    esi,esi
    2989c6281aac:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    2989c6281ab3:	0f 8f c9 01 00 00                               	jg     0x2989c6281c82
    2989c6281ab9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c6281abd:	8b 7d 38                                        	mov    edi,DWORD PTR [rbp+0x38]
    2989c6281ac0:	44 03 ff                                        	add    r15d,edi
    2989c6281ac3:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    2989c6281ac9:	44 8d 3c 1f                                     	lea    r15d,[rdi+rbx*1]
    2989c6281acd:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    2989c6281ad3:	4c 8b f8                                        	mov    r15,rax
    2989c6281ad6:	4d 03 fc                                        	add    r15,r12
    2989c6281ad9:	4d 3b f8                                        	cmp    r15,r8
    2989c6281adc:	0f 82 8b 01 00 00                               	jb     0x2989c6281c6d
    2989c6281ae2:	4c 8b bd 78 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x388]
    2989c6281ae9:	49 8d 1c 07                                     	lea    rbx,[r15+rax*1]
    2989c6281aed:	48 8b 95 58 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa8]
    2989c6281af4:	48 0f af 95 b8 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x148]
    2989c6281afc:	48 c1 e2 08                                     	shl    rdx,0x8
    2989c6281b00:	48 8b ca                                        	mov    rcx,rdx
    2989c6281b03:	48 c1 f9 3f                                     	sar    rcx,0x3f
    2989c6281b07:	48 23 ca                                        	and    rcx,rdx
    2989c6281b0a:	48 03 d9                                        	add    rbx,rcx
    2989c6281b0d:	4c 8b 8d c8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x138]
    2989c6281b14:	4c 0f af 8d 18 ff ff ff                         	imul   r9,QWORD PTR [rbp-0xe8]
    2989c6281b1c:	49 c1 e1 08                                     	shl    r9,0x8
    2989c6281b20:	49 8b c9                                        	mov    rcx,r9
    2989c6281b23:	48 c1 f9 3f                                     	sar    rcx,0x3f
    2989c6281b27:	49 23 c9                                        	and    rcx,r9
    2989c6281b2a:	48 03 d9                                        	add    rbx,rcx
    2989c6281b2d:	48 81 fb 01 00 00 80                            	cmp    rbx,0xffffffff80000001
    2989c6281b34:	0f 8c 33 01 00 00                               	jl     0x2989c6281c6d
    2989c6281b3a:	48 8b 9d 20 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3e0]
    2989c6281b41:	48 8d 0c 03                                     	lea    rcx,[rbx+rax*1]
    2989c6281b45:	4c 8b fe                                        	mov    r15,rsi
    2989c6281b48:	48 85 d2                                        	test   rdx,rdx
    2989c6281b4b:	4c 0f 4f fa                                     	cmovg  r15,rdx
    2989c6281b4f:	4c 03 f9                                        	add    r15,rcx
    2989c6281b52:	48 8b d6                                        	mov    rdx,rsi
    2989c6281b55:	4d 85 c9                                        	test   r9,r9
    2989c6281b58:	49 0f 4f d1                                     	cmovg  rdx,r9
    2989c6281b5c:	4c 03 fa                                        	add    r15,rdx
    2989c6281b5f:	49 81 ff fe ff ff 7f                            	cmp    r15,0x7ffffffe
    2989c6281b66:	0f 8f 01 01 00 00                               	jg     0x2989c6281c6d
    2989c6281b6c:	44 8b 7d 40                                     	mov    r15d,DWORD PTR [rbp+0x40]
    2989c6281b70:	48 8b 95 78 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0x88]
    2989c6281b77:	41 03 d7                                        	add    edx,r15d
    2989c6281b7a:	c4 e3 79 22 f2 00                               	vpinsrd xmm6,xmm0,edx,0x0
    2989c6281b80:	48 8b 95 48 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb8]
    2989c6281b87:	41 03 d7                                        	add    edx,r15d
    2989c6281b8a:	c4 e3 49 22 f2 01                               	vpinsrd xmm6,xmm6,edx,0x1
    2989c6281b90:	4c 03 a5 78 fe ff ff                            	add    r12,QWORD PTR [rbp-0x188]
    2989c6281b97:	4d 3b e0                                        	cmp    r12,r8
    2989c6281b9a:	0f 82 c3 00 00 00                               	jb     0x2989c6281c63
    2989c6281ba0:	4c 8b 85 98 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x368]
    2989c6281ba7:	4c 8b a5 78 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x188]
    2989c6281bae:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    2989c6281bb2:	48 8b 8d 58 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xa8]
    2989c6281bb9:	48 0f af 8d 48 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x2b8]
    2989c6281bc1:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6281bc5:	4c 8b c9                                        	mov    r9,rcx
    2989c6281bc8:	49 c1 f9 3f                                     	sar    r9,0x3f
    2989c6281bcc:	4c 23 c9                                        	and    r9,rcx
    2989c6281bcf:	49 03 d1                                        	add    rdx,r9
    2989c6281bd2:	4c 8b 8d 18 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe8]
    2989c6281bd9:	4c 0f af 8d d8 fe ff ff                         	imul   r9,QWORD PTR [rbp-0x128]
    2989c6281be1:	49 c1 e1 08                                     	shl    r9,0x8
    2989c6281be5:	4d 8b c1                                        	mov    r8,r9
    2989c6281be8:	49 c1 f8 3f                                     	sar    r8,0x3f
    2989c6281bec:	4d 23 c1                                        	and    r8,r9
    2989c6281bef:	4c 03 c2                                        	add    r8,rdx
    2989c6281bf2:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    2989c6281bf9:	0f 8c 64 00 00 00                               	jl     0x2989c6281c63
    2989c6281bff:	4c 8b 85 98 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x268]
    2989c6281c06:	4b 8d 14 20                                     	lea    rdx,[r8+r12*1]
    2989c6281c0a:	4c 8b c6                                        	mov    r8,rsi
    2989c6281c0d:	48 85 c9                                        	test   rcx,rcx
    2989c6281c10:	4c 0f 4f c1                                     	cmovg  r8,rcx
    2989c6281c14:	4c 03 c2                                        	add    r8,rdx
    2989c6281c17:	4d 85 c9                                        	test   r9,r9
    2989c6281c1a:	49 0f 4f f1                                     	cmovg  rsi,r9
    2989c6281c1e:	4c 03 c6                                        	add    r8,rsi
    2989c6281c21:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    2989c6281c28:	0f 8f 2b 00 00 00                               	jg     0x2989c6281c59
    2989c6281c2e:	44 8b 45 48                                     	mov    r8d,DWORD PTR [rbp+0x48]
    2989c6281c32:	48 8b 95 e0 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x120]
    2989c6281c39:	41 03 d0                                        	add    edx,r8d
    2989c6281c3c:	c4 e3 79 22 c2 00                               	vpinsrd xmm0,xmm0,edx,0x0
    2989c6281c42:	48 8b 95 d0 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x130]
    2989c6281c49:	41 03 d0                                        	add    edx,r8d
    2989c6281c4c:	c4 e3 79 22 c2 01                               	vpinsrd xmm0,xmm0,edx,0x1
    2989c6281c52:	33 d2                                           	xor    edx,edx
    2989c6281c54:	e9 1d 00 00 00                                  	jmp    0x2989c6281c76
    2989c6281c59:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6281c5e:	e9 48 00 00 00                                  	jmp    0x2989c6281cab
    2989c6281c63:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6281c68:	e9 3e 00 00 00                                  	jmp    0x2989c6281cab
    2989c6281c6d:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6281c72:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6281c76:	48 8b 9d 20 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3e0]
    2989c6281c7d:	e9 29 00 00 00                                  	jmp    0x2989c6281cab
    2989c6281c82:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6281c86:	48 8b 9d 20 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3e0]
    2989c6281c8d:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6281c91:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6281c96:	e9 10 00 00 00                                  	jmp    0x2989c6281cab
    2989c6281c9b:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6281c9f:	49 8b dc                                        	mov    rbx,r12
    2989c6281ca2:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6281ca6:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6281cab:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6281caf:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6281cb3:	46 8b a4 07 c8 3c 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0x3cc8]
    2989c6281cbb:	48 89 95 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdx
    2989c6281cc2:	42 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3cc8],0x0
    2989c6281ccb:	0f 85 72 00 00 00                               	jne    0x2989c6281d43
    2989c6281cd1:	46 8b a4 07 ec 00 00 00                         	mov    r12d,DWORD PTR [rdi+r8*1+0xec]
    2989c6281cd9:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    2989c6281ce2:	0f 85 5b 00 00 00                               	jne    0x2989c6281d43
    2989c6281ce8:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    2989c6281cef:	46 8b bc 27 30 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x130]
    2989c6281cf7:	42 83 bc 27 30 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x130],0x0
    2989c6281d00:	0f 85 0b 00 00 00                               	jne    0x2989c6281d11
    2989c6281d06:	41 bc 01 00 00 00                               	mov    r12d,0x1
    2989c6281d0c:	e9 35 00 00 00                                  	jmp    0x2989c6281d46
    2989c6281d11:	46 8b bc 27 38 01 00 00                         	mov    r15d,DWORD PTR [rdi+r12*1+0x138]
    2989c6281d19:	42 83 bc 27 38 01 00 00 00                      	cmp    DWORD PTR [rdi+r12*1+0x138],0x0
    2989c6281d22:	75 e2                                           	jne    0x2989c6281d06
    2989c6281d24:	46 8b a4 27 34 01 00 00                         	mov    r12d,DWORD PTR [rdi+r12*1+0x134]
    2989c6281d2c:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c6281d30:	74 d4                                           	je     0x2989c6281d06
    2989c6281d32:	41 83 fc 02                                     	cmp    r12d,0x2
    2989c6281d36:	41 0f 94 c4                                     	sete   r12b
    2989c6281d3a:	45 0f b6 e4                                     	movzx  r12d,r12b
    2989c6281d3e:	e9 03 00 00 00                                  	jmp    0x2989c6281d46
    2989c6281d43:	45 33 e4                                        	xor    r12d,r12d
    2989c6281d46:	4c 89 a5 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r12
    2989c6281d4d:	83 bd 20 ff ff ff 02                            	cmp    DWORD PTR [rbp-0xe0],0x2
    2989c6281d54:	0f 84 0b 00 00 00                               	je     0x2989c6281d65
    2989c6281d5a:	41 bf 01 00 00 00                               	mov    r15d,0x1
    2989c6281d60:	e9 5b 01 00 00                                  	jmp    0x2989c6281ec0
    2989c6281d65:	46 8b bc 07 80 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x80]
    2989c6281d6d:	42 83 bc 07 80 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x80],0x0
    2989c6281d76:	75 e2                                           	jne    0x2989c6281d5a
    2989c6281d78:	46 8b bc 07 a4 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0xa4]
    2989c6281d80:	42 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xa4],0x0
    2989c6281d89:	75 cf                                           	jne    0x2989c6281d5a
    2989c6281d8b:	46 8b bc 07 30 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x530]
    2989c6281d93:	42 83 bc 07 30 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x530],0x0
    2989c6281d9c:	75 bc                                           	jne    0x2989c6281d5a
    2989c6281d9e:	46 8b bc 07 70 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3770]
    2989c6281da6:	42 83 bc 07 70 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3770],0x0
    2989c6281daf:	75 a9                                           	jne    0x2989c6281d5a
    2989c6281db1:	46 8b bc 07 74 37 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x3774]
    2989c6281db9:	42 83 bc 07 74 37 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x3774],0x0
    2989c6281dc2:	75 96                                           	jne    0x2989c6281d5a
    2989c6281dc4:	46 8b bc 07 20 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x520]
    2989c6281dcc:	42 83 bc 07 20 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x520],0x0
    2989c6281dd5:	74 83                                           	je     0x2989c6281d5a
    2989c6281dd7:	46 8b bc 07 24 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x524]
    2989c6281ddf:	42 83 bc 07 24 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x524],0x0
    2989c6281de8:	0f 84 6c ff ff ff                               	je     0x2989c6281d5a
    2989c6281dee:	46 8b bc 07 28 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x528]
    2989c6281df6:	42 83 bc 07 28 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x528],0x0
    2989c6281dff:	0f 84 55 ff ff ff                               	je     0x2989c6281d5a
    2989c6281e05:	46 8b bc 07 2c 05 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x52c]
    2989c6281e0d:	42 83 bc 07 2c 05 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x52c],0x0
    2989c6281e16:	0f 84 3e ff ff ff                               	je     0x2989c6281d5a
    2989c6281e1c:	46 8b 7c 07 74                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x74]
    2989c6281e21:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    2989c6281e27:	0f 84 38 00 00 00                               	je     0x2989c6281e65
    2989c6281e2d:	46 8b 7c 07 78                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x78]
    2989c6281e32:	41 81 ff 02 03 00 00                            	cmp    r15d,0x302
    2989c6281e39:	0f 84 0a 00 00 00                               	je     0x2989c6281e49
    2989c6281e3f:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c6281e43:	0f 85 11 ff ff ff                               	jne    0x2989c6281d5a
    2989c6281e49:	46 8b 7c 07 7c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x7c]
    2989c6281e4e:	41 81 ff 03 03 00 00                            	cmp    r15d,0x303
    2989c6281e55:	0f 84 0a 00 00 00                               	je     0x2989c6281e65
    2989c6281e5b:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c6281e5f:	0f 85 f5 fe ff ff                               	jne    0x2989c6281d5a
    2989c6281e65:	83 bd 28 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd8],0x0
    2989c6281e6c:	0f 85 08 00 00 00                               	jne    0x2989c6281e7a
    2989c6281e72:	45 33 ff                                        	xor    r15d,r15d
    2989c6281e75:	e9 46 00 00 00                                  	jmp    0x2989c6281ec0
    2989c6281e7a:	46 8b bc 07 90 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x90]
    2989c6281e82:	42 83 bc 07 90 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x90],0x0
    2989c6281e8b:	0f 85 c9 fe ff ff                               	jne    0x2989c6281d5a
    2989c6281e91:	46 8b bc 07 94 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x94]
    2989c6281e99:	42 83 bc 07 94 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x94],0x0
    2989c6281ea2:	0f 85 b2 fe ff ff                               	jne    0x2989c6281d5a
    2989c6281ea8:	46 8b bc 07 98 00 00 00                         	mov    r15d,DWORD PTR [rdi+r8*1+0x98]
    2989c6281eb0:	45 33 ff                                        	xor    r15d,r15d
    2989c6281eb3:	42 83 bc 07 98 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x98],0x0
    2989c6281ebc:	41 0f 95 c7                                     	setne  r15b
    2989c6281ec0:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    2989c6281ec3:	c7 44 37 18 00 00 00 00                         	mov    DWORD PTR [rdi+rsi*1+0x18],0x0
    2989c6281ecb:	33 c9                                           	xor    ecx,ecx
    2989c6281ecd:	83 7d d0 07                                     	cmp    DWORD PTR [rbp-0x30],0x7
    2989c6281ed1:	0f 9f c1                                        	setg   cl
    2989c6281ed4:	4c 63 8d 08 ff ff ff                            	movsxd r9,DWORD PTR [rbp-0xf8]
    2989c6281edb:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    2989c6281ee2:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    2989c6281ee6:	4d 0f af f9                                     	imul   r15,r9
    2989c6281eea:	49 83 ff 3f                                     	cmp    r15,0x3f
    2989c6281eee:	41 0f 9f c7                                     	setg   r15b
    2989c6281ef2:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c6281ef6:	44 23 f9                                        	and    r15d,ecx
    2989c6281ef9:	0f 85 1d 00 00 00                               	jne    0x2989c6281f1c
    2989c6281eff:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c6281f03:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    2989c6281f07:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c6281f0b:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c6281f0f:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    2989c6281f13:	c5 79 28 f7                                     	vmovapd xmm14,xmm7
    2989c6281f17:	e9 02 02 00 00                                  	jmp    0x2989c628211e
    2989c6281f1c:	44 8b 8d 10 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf0]
    2989c6281f23:	44 3b 8d 40 ff ff ff                            	cmp    r9d,DWORD PTR [rbp-0xc0]
    2989c6281f2a:	0f 84 8a 00 00 00                               	je     0x2989c6281fba
    2989c6281f30:	48 8b 8d 90 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x270]
    2989c6281f37:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6281f3b:	c4 61 82 2a c1                                  	vcvtsi2ss xmm8,xmm15,rcx
    2989c6281f40:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6281f45:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6281f4b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6281f51:	c4 41 2a 5e c0                                  	vdivss xmm8,xmm10,xmm8
    2989c6281f56:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    2989c6281f5b:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    2989c6281f62:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6281f66:	c4 61 82 2a d1                                  	vcvtsi2ss xmm10,xmm15,rcx
    2989c6281f6b:	c4 41 3a 59 d2                                  	vmulss xmm10,xmm8,xmm10
    2989c6281f70:	48 63 4d 38                                     	movsxd rcx,DWORD PTR [rbp+0x38]
    2989c6281f74:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    2989c6281f7b:	4f 8d 04 23                                     	lea    r8,[r11+r12*1]
    2989c6281f7f:	4c 03 c1                                        	add    r8,rcx
    2989c6281f82:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    2989c6281f87:	49 ba 60 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b860
    2989c6281f91:	c4 41 20 57 1a                                  	vxorps xmm11,xmm11,XMMWORD PTR [r10]
    2989c6281f96:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    2989c6281f9b:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    2989c6281fa0:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    2989c6281fa5:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    2989c6281faa:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6281fae:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    2989c6281fb5:	e9 08 00 00 00                                  	jmp    0x2989c6281fc2
    2989c6281fba:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c6281fbe:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c6281fc2:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    2989c6281fc8:	3b 8d 58 fe ff ff                               	cmp    ecx,DWORD PTR [rbp-0x1a8]
    2989c6281fce:	0f 84 80 00 00 00                               	je     0x2989c6282054
    2989c6281fd4:	4c 8b a5 b8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x148]
    2989c6281fdb:	49 c1 e4 08                                     	shl    r12,0x8
    2989c6281fdf:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    2989c6281fe4:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    2989c6281fe9:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    2989c6281fef:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    2989c6281ff5:	c4 41 1a 5e db                                  	vdivss xmm11,xmm12,xmm11
    2989c6281ffa:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    2989c6281fff:	4c 8b a5 c8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x138]
    2989c6282006:	49 c1 e4 08                                     	shl    r12,0x8
    2989c628200a:	c4 41 82 2a e4                                  	vcvtsi2ss xmm12,xmm15,r12
    2989c628200f:	c4 41 22 59 e4                                  	vmulss xmm12,xmm11,xmm12
    2989c6282014:	4c 63 65 40                                     	movsxd r12,DWORD PTR [rbp+0x40]
    2989c6282018:	48 8d 3c 03                                     	lea    rdi,[rbx+rax*1]
    2989c628201c:	49 03 fc                                        	add    rdi,r12
    2989c628201f:	c4 61 82 2a ef                                  	vcvtsi2ss xmm13,xmm15,rdi
    2989c6282024:	4c 8b 15 5e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff5e]        # 0x2989c6281f89
    2989c628202b:	c4 41 10 57 2a                                  	vxorps xmm13,xmm13,XMMWORD PTR [r10]
    2989c6282030:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    2989c6282035:	c4 41 79 28 fb                                  	vmovapd xmm15,xmm11
    2989c628203a:	c4 41 79 28 dc                                  	vmovapd xmm11,xmm12
    2989c628203f:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    2989c6282044:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6282048:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    2989c628204f:	e9 08 00 00 00                                  	jmp    0x2989c628205c
    2989c6282054:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    2989c6282058:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c628205c:	44 3b 8d 58 fe ff ff                            	cmp    r9d,DWORD PTR [rbp-0x1a8]
    2989c6282063:	0f 84 9e 00 00 00                               	je     0x2989c6282107
    2989c6282069:	4c 8b a5 48 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2b8]
    2989c6282070:	49 c1 e4 08                                     	shl    r12,0x8
    2989c6282074:	c4 41 82 2a ec                                  	vcvtsi2ss xmm13,xmm15,r12
    2989c6282079:	c4 41 09 76 f6                                  	vpcmpeqd xmm14,xmm14,xmm14
    2989c628207e:	c4 c1 09 72 f6 19                               	vpslld xmm14,xmm14,0x19
    2989c6282084:	c4 c1 09 72 d6 02                               	vpsrld xmm14,xmm14,0x2
    2989c628208a:	c4 41 0a 5e ed                                  	vdivss xmm13,xmm14,xmm13
    2989c628208f:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    2989c6282094:	4c 8b a5 d8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x128]
    2989c628209b:	49 c1 e4 08                                     	shl    r12,0x8
    2989c628209f:	c4 41 82 2a f4                                  	vcvtsi2ss xmm14,xmm15,r12
    2989c62820a4:	c4 41 12 59 f6                                  	vmulss xmm14,xmm13,xmm14
    2989c62820a9:	48 63 55 48                                     	movsxd rdx,DWORD PTR [rbp+0x48]
    2989c62820ad:	4c 8b a5 78 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x188]
    2989c62820b4:	48 8b 8d 98 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x268]
    2989c62820bb:	4e 8d 0c 21                                     	lea    r9,[rcx+r12*1]
    2989c62820bf:	49 03 d1                                        	add    rdx,r9
    2989c62820c2:	c4 e1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,rdx
    2989c62820c7:	4c 8b 15 bb fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffebb]        # 0x2989c6281f89
    2989c62820ce:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    2989c62820d3:	c5 12 59 ea                                     	vmulss xmm13,xmm13,xmm2
    2989c62820d7:	c4 41 79 28 fc                                  	vmovapd xmm15,xmm12
    2989c62820dc:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    2989c62820e1:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    2989c62820e6:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    2989c62820eb:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    2989c62820f0:	c4 41 79 28 f7                                  	vmovapd xmm14,xmm15
    2989c62820f5:	8b 95 40 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2c0]
    2989c62820fb:	44 8b a5 18 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2e8]
    2989c6282102:	e9 17 00 00 00                                  	jmp    0x2989c628211e
    2989c6282107:	c4 41 79 28 f4                                  	vmovapd xmm14,xmm12
    2989c628210c:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c6282110:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    2989c6282115:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    2989c628211a:	c5 79 28 df                                     	vmovapd xmm11,xmm7
    2989c628211e:	8b 4d 28                                        	mov    ecx,DWORD PTR [rbp+0x28]
    2989c6282121:	3b 4d 18                                        	cmp    ecx,DWORD PTR [rbp+0x18]
    2989c6282124:	0f 8e a0 78 00 00                               	jle    0x2989c62899ca
    2989c628212a:	4c 8b 8d 48 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2b8]
    2989c6282131:	49 c1 e1 08                                     	shl    r9,0x8
    2989c6282135:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c6282139:	41 8d 54 24 ff                                  	lea    edx,[r12-0x1]
    2989c628213e:	48 63 d2                                        	movsxd rdx,edx
    2989c6282141:	4c 89 8d c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r9
    2989c6282148:	4c 0f af ca                                     	imul   r9,rdx
    2989c628214c:	4c 89 bd 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],r15
    2989c6282153:	4d 8b f9                                        	mov    r15,r9
    2989c6282156:	49 f7 d7                                        	not    r15
    2989c6282159:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    2989c6282160:	48 c1 e7 08                                     	shl    rdi,0x8
    2989c6282164:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    2989c628216b:	48 0f af fa                                     	imul   rdi,rdx
    2989c628216f:	48 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rdi
    2989c6282176:	48 f7 d7                                        	not    rdi
    2989c6282179:	48 8b 8d 90 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x270]
    2989c6282180:	48 c1 e1 08                                     	shl    rcx,0x8
    2989c6282184:	48 0f af d1                                     	imul   rdx,rcx
    2989c6282188:	48 89 95 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rdx
    2989c628218f:	48 f7 d2                                        	not    rdx
    2989c6282192:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    2989c6282199:	4c 8b 8d d8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x128]
    2989c62821a0:	49 c1 e1 08                                     	shl    r9,0x8
    2989c62821a4:	4c 89 8d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r9
    2989c62821ab:	4c 8b 8d c8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x138]
    2989c62821b2:	49 c1 e1 08                                     	shl    r9,0x8
    2989c62821b6:	4c 89 8d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r9
    2989c62821bd:	4c 8b 8d 70 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x90]
    2989c62821c4:	49 c1 e1 08                                     	shl    r9,0x8
    2989c62821c8:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    2989c62821cf:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62821d2:	48 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdi
    2989c62821d9:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    2989c62821df:	48 89 bd e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdi
    2989c62821e6:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    2989c62821ec:	48 89 bd d0 fe ff ff                            	mov    QWORD PTR [rbp-0x130],rdi
    2989c62821f3:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    2989c62821f9:	48 89 bd c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rdi
    2989c6282200:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    2989c6282206:	48 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rdi
    2989c628220d:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    2989c6282213:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    2989c6282219:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    2989c6282220:	8d 78 50                                        	lea    edi,[rax+0x50]
    2989c6282223:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    2989c6282229:	48 89 bd 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],rdi
    2989c6282230:	8d 78 50                                        	lea    edi,[rax+0x50]
    2989c6282233:	8b 85 48 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3b8]
    2989c6282239:	48 89 bd 98 fe ff ff                            	mov    QWORD PTR [rbp-0x168],rdi
    2989c6282240:	8d 78 50                                        	lea    edi,[rax+0x50]
    2989c6282243:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    2989c6282246:	83 f0 ff                                        	xor    eax,0xffffffff
    2989c6282249:	48 89 bd 90 fe ff ff                            	mov    QWORD PTR [rbp-0x170],rdi
    2989c6282250:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    2989c6282253:	44 8d 47 02                                     	lea    r8d,[rdi+0x2]
    2989c6282257:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    2989c628225b:	48 c1 e7 07                                     	shl    rdi,0x7
    2989c628225f:	48 89 bd f0 fb ff ff                            	mov    QWORD PTR [rbp-0x410],rdi
    2989c6282266:	48 8b 7d c0                                     	mov    rdi,QWORD PTR [rbp-0x40]
    2989c628226a:	48 c1 e7 07                                     	shl    rdi,0x7
    2989c628226e:	48 89 bd 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rdi
    2989c6282275:	41 8d 7c 24 fe                                  	lea    edi,[r12-0x2]
    2989c628227a:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    2989c628227e:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    2989c6282282:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    2989c6282289:	48 63 7d 40                                     	movsxd rdi,DWORD PTR [rbp+0x40]
    2989c628228d:	48 89 bd 00 fc ff ff                            	mov    QWORD PTR [rbp-0x400],rdi
    2989c6282294:	48 63 7d 38                                     	movsxd rdi,DWORD PTR [rbp+0x38]
    2989c6282298:	c4 e1 82 2a 5d 30                               	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp+0x30]
    2989c628229e:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c62822a2:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c62822a7:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c62822ac:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    2989c62822b0:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    2989c62822b4:	c5 7b 11 85 40 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c0],xmm8
    2989c62822bc:	c4 62 79 18 c3                                  	vbroadcastss xmm8,xmm3
    2989c62822c1:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    2989c62822c8:	8d be 90 00 00 00                               	lea    edi,[rsi+0x90]
    2989c62822ce:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    2989c62822d5:	8d 7e 18                                        	lea    edi,[rsi+0x18]
    2989c62822d8:	83 cf 04                                        	or     edi,0x4
    2989c62822db:	c5 7b 11 95 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm10
    2989c62822e3:	c4 41 02 2a d4                                  	vcvtsi2ss xmm10,xmm15,r12d
    2989c62822e8:	44 8d a6 60 01 00 00                            	lea    r12d,[rsi+0x160]
    2989c62822ef:	48 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdi
    2989c62822f6:	8d be 50 01 00 00                               	lea    edi,[rsi+0x150]
    2989c62822fc:	c5 7b 11 9d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm11
    2989c6282304:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    2989c628230c:	4c 89 9d 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r11
    2989c6282313:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    2989c628231b:	c5 f8 11 ad 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm5
    2989c6282323:	c5 f8 11 b5 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm6
    2989c628232b:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    2989c6282332:	48 89 8d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rcx
    2989c6282339:	48 89 95 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rdx
    2989c6282340:	4c 89 8d 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],r9
    2989c6282347:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    2989c628234e:	4c 89 85 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r8
    2989c6282355:	c5 fb 11 95 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm2
    2989c628235d:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    2989c6282365:	c5 78 11 85 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm8
    2989c628236d:	c5 7b 11 95 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm10
    2989c6282375:	4c 89 a5 f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r12
    2989c628237c:	48 89 bd f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],rdi
    2989c6282383:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    2989c628238a:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    2989c6282391:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    2989c6282398:	48 c7 85 28 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x0
    2989c62823a3:	48 c7 85 20 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1e0],0x0
    2989c62823ae:	8b 7d 18                                        	mov    edi,DWORD PTR [rbp+0x18]
    2989c62823b1:	49 8b cb                                        	mov    rcx,r11
    2989c62823b4:	45 8b c8                                        	mov    r9d,r8d
    2989c62823b7:	e9 24 00 00 00                                  	jmp    0x2989c62823e0
    2989c62823bc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    2989c62823c0:	48 8b c6                                        	mov    rax,rsi
    2989c62823c3:	49 8b dc                                        	mov    rbx,r12
    2989c62823c6:	4c 8b ff                                        	mov    r15,rdi
    2989c62823c9:	8b fa                                           	mov    edi,edx
    2989c62823cb:	48 8b 95 80 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x280]
    2989c62823d2:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    2989c62823d9:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    2989c62823e0:	4c 8b a5 b0 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x150]
    2989c62823e7:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    2989c62823ed:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    2989c62823f1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c62823f6:	0f 85 6c 77 00 00                               	jne    0x2989c6289b68
    2989c62823fc:	83 bd 00 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x200],0x0
    2989c6282403:	0f 85 22 00 00 00                               	jne    0x2989c628242b
    2989c6282409:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    2989c6282410:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    2989c6282417:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    2989c628241e:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    2989c6282422:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    2989c6282426:	e9 a5 05 00 00                                  	jmp    0x2989c62829d0
    2989c628242b:	4e 8d 04 39                                     	lea    r8,[rcx+r15*1]
    2989c628242f:	4d 03 c4                                        	add    r8,r12
    2989c6282432:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    2989c6282439:	0f 8c ef 00 00 00                               	jl     0x2989c628252e
    2989c628243f:	3b b5 40 ff ff ff                               	cmp    esi,DWORD PTR [rbp-0xc0]
    2989c6282445:	0f 84 d8 00 00 00                               	je     0x2989c6282523
    2989c628244b:	4d 85 c0                                        	test   r8,r8
    2989c628244e:	0f 8c 85 5d 00 00                               	jl     0x2989c62881d9
    2989c6282454:	49 3b d0                                        	cmp    rdx,r8
    2989c6282457:	0f 8c 64 00 00 00                               	jl     0x2989c62824c1
    2989c628245d:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    2989c6282462:	0f 87 66 00 00 00                               	ja     0x2989c62824ce
    2989c6282468:	c5 78 2e ad 50 fe ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0x1b0]
    2989c6282470:	0f 83 4b 00 00 00                               	jae    0x2989c62824c1
    2989c6282476:	4c 8b 15 18 ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffed18]        # 0x2989c6281195
    2989c628247d:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    2989c6282482:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6282487:	0f 87 0b 00 00 00                               	ja     0x2989c6282498
    2989c628248d:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    2989c6282493:	e9 21 00 00 00                                  	jmp    0x2989c62824b9
    2989c6282498:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    2989c628249e:	c4 41 7a 2c da                                  	vcvttss2si r11d,xmm10
    2989c62824a3:	c4 41 02 2a db                                  	vcvtsi2ss xmm11,xmm15,r11d
    2989c62824a8:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c62824ad:	0f 8a ab 79 00 00                               	jp     0x2989c6289e5e
    2989c62824b3:	0f 85 a5 79 00 00                               	jne    0x2989c6289e5e
    2989c62824b9:	45 03 d9                                        	add    r11d,r9d
    2989c62824bc:	e9 11 00 00 00                                  	jmp    0x2989c62824d2
    2989c62824c1:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    2989c62824c5:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    2989c62824c9:	e9 21 01 00 00                                  	jmp    0x2989c62825ef
    2989c62824ce:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    2989c62824d2:	8b 4d 20                                        	mov    ecx,DWORD PTR [rbp+0x20]
    2989c62824d5:	41 3b cb                                        	cmp    ecx,r11d
    2989c62824d8:	0f 8e 32 00 00 00                               	jle    0x2989c6282510
    2989c62824de:	45 8b e3                                        	mov    r12d,r11d
    2989c62824e1:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    2989c62824e5:	4d 63 e4                                        	movsxd r12,r12d
    2989c62824e8:	4c 0f af a5 e8 fd ff ff                         	imul   r12,QWORD PTR [rbp-0x218]
    2989c62824f0:	4d 03 c4                                        	add    r8,r12
    2989c62824f3:	44 8b e1                                        	mov    r12d,ecx
    2989c62824f6:	4d 85 c0                                        	test   r8,r8
    2989c62824f9:	45 0f 4c e3                                     	cmovl  r12d,r11d
    2989c62824fd:	45 8b c4                                        	mov    r8d,r12d
    2989c6282500:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    2989c6282504:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    2989c628250b:	e9 df 00 00 00                                  	jmp    0x2989c62825ef
    2989c6282510:	44 8b c1                                        	mov    r8d,ecx
    2989c6282513:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    2989c6282517:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    2989c628251e:	e9 cc 00 00 00                                  	jmp    0x2989c62825ef
    2989c6282523:	4d 85 c0                                        	test   r8,r8
    2989c6282526:	0f 8c ad 5c 00 00                               	jl     0x2989c62881d9
    2989c628252c:	eb 93                                           	jmp    0x2989c62824c1
    2989c628252e:	4c 8b 9d 48 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xb8]
    2989c6282535:	4f 8d 24 03                                     	lea    r12,[r11+r8*1]
    2989c6282539:	4d 85 e4                                        	test   r12,r12
    2989c628253c:	0f 8c 97 5c 00 00                               	jl     0x2989c62881d9
    2989c6282542:	4d 85 c0                                        	test   r8,r8
    2989c6282545:	0f 8d 76 ff ff ff                               	jge    0x2989c62824c1
    2989c628254b:	c4 c1 78 2e fd                                  	vucomiss xmm7,xmm13
    2989c6282550:	0f 83 6b ff ff ff                               	jae    0x2989c62824c1
    2989c6282556:	4c 8b 15 38 ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec38]        # 0x2989c6281195
    2989c628255d:	c4 41 10 54 12                                  	vandps xmm10,xmm13,XMMWORD PTR [r10]
    2989c6282562:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6282567:	0f 87 0b 00 00 00                               	ja     0x2989c6282578
    2989c628256d:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    2989c6282573:	e9 21 00 00 00                                  	jmp    0x2989c6282599
    2989c6282578:	c4 43 29 0a d5 0b                               	vroundss xmm10,xmm10,xmm13,0xb
    2989c628257e:	c4 41 7a 2c e2                                  	vcvttss2si r12d,xmm10
    2989c6282583:	c4 41 02 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12d
    2989c6282588:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c628258d:	0f 8a c6 78 00 00                               	jp     0x2989c6289e59
    2989c6282593:	0f 85 c0 78 00 00                               	jne    0x2989c6289e59
    2989c6282599:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    2989c628259d:	45 03 e3                                        	add    r12d,r11d
    2989c62825a0:	c5 78 2e ad 18 ff ff ff                         	vucomiss xmm13,DWORD PTR [rbp-0xe8]
    2989c62825a8:	44 0f 43 65 20                                  	cmovae r12d,DWORD PTR [rbp+0x20]
    2989c62825ad:	45 3b e3                                        	cmp    r12d,r11d
    2989c62825b0:	0f 8e 35 00 00 00                               	jle    0x2989c62825eb
    2989c62825b6:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    2989c62825bc:	42 8d 0c 22                                     	lea    ecx,[rdx+r12*1]
    2989c62825c0:	48 63 c9                                        	movsxd rcx,ecx
    2989c62825c3:	48 0f af 8d e8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x218]
    2989c62825cb:	4c 03 c1                                        	add    r8,rcx
    2989c62825ce:	41 8b cb                                        	mov    ecx,r11d
    2989c62825d1:	4d 85 c0                                        	test   r8,r8
    2989c62825d4:	41 0f 4c cc                                     	cmovl  ecx,r12d
    2989c62825d8:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    2989c62825dc:	44 8b d9                                        	mov    r11d,ecx
    2989c62825df:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    2989c62825e6:	e9 04 00 00 00                                  	jmp    0x2989c62825ef
    2989c62825eb:	44 8b 45 20                                     	mov    r8d,DWORD PTR [rbp+0x20]
    2989c62825ef:	4c 8b a5 20 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x3e0]
    2989c62825f6:	49 8d 14 04                                     	lea    rdx,[r12+rax*1]
    2989c62825fa:	4c 8b a5 00 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x400]
    2989c6282601:	49 03 d4                                        	add    rdx,r12
    2989c6282604:	83 bd 30 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd0],0x0
    2989c628260b:	0f 8d c5 00 00 00                               	jge    0x2989c62826d6
    2989c6282611:	4c 8b a5 88 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x278]
    2989c6282618:	49 8d 0c 14                                     	lea    rcx,[r12+rdx*1]
    2989c628261c:	48 85 c9                                        	test   rcx,rcx
    2989c628261f:	0f 8c b4 5b 00 00                               	jl     0x2989c62881d9
    2989c6282625:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    2989c628262c:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    2989c6282633:	48 85 d2                                        	test   rdx,rdx
    2989c6282636:	0f 8d 9d 01 00 00                               	jge    0x2989c62827d9
    2989c628263c:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    2989c6282641:	0f 83 92 01 00 00                               	jae    0x2989c62827d9
    2989c6282647:	4c 8b 15 47 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb47]        # 0x2989c6281195
    2989c628264e:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    2989c6282653:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6282658:	0f 87 0a 00 00 00                               	ja     0x2989c6282668
    2989c628265e:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c6282663:	e9 20 00 00 00                                  	jmp    0x2989c6282688
    2989c6282668:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    2989c628266e:	c4 c1 7a 2c ca                                  	vcvttss2si ecx,xmm10
    2989c6282673:	c5 02 2a d9                                     	vcvtsi2ss xmm11,xmm15,ecx
    2989c6282677:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c628267c:	0f 8a d2 77 00 00                               	jp     0x2989c6289e54
    2989c6282682:	0f 85 cc 77 00 00                               	jne    0x2989c6289e54
    2989c6282688:	44 8b 65 10                                     	mov    r12d,DWORD PTR [rbp+0x10]
    2989c628268c:	41 03 cc                                        	add    ecx,r12d
    2989c628268f:	c5 78 2e b5 18 ff ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0xe8]
    2989c6282697:	0f 43 4d 20                                     	cmovae ecx,DWORD PTR [rbp+0x20]
    2989c628269b:	41 3b cb                                        	cmp    ecx,r11d
    2989c628269e:	0f 8e 35 01 00 00                               	jle    0x2989c62827d9
    2989c62826a4:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    2989c62826aa:	44 8d 3c 08                                     	lea    r15d,[rax+rcx*1]
    2989c62826ae:	4d 63 ff                                        	movsxd r15,r15d
    2989c62826b1:	4c 0f af bd d8 fd ff ff                         	imul   r15,QWORD PTR [rbp-0x228]
    2989c62826b9:	4c 03 fa                                        	add    r15,rdx
    2989c62826bc:	4d 85 ff                                        	test   r15,r15
    2989c62826bf:	44 0f 4c d9                                     	cmovl  r11d,ecx
    2989c62826c3:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    2989c62826ca:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    2989c62826d1:	e9 03 01 00 00                                  	jmp    0x2989c62827d9
    2989c62826d6:	8b 8d 40 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xc0]
    2989c62826dc:	3b 8d 58 fe ff ff                               	cmp    ecx,DWORD PTR [rbp-0x1a8]
    2989c62826e2:	0f 84 da 00 00 00                               	je     0x2989c62827c2
    2989c62826e8:	48 85 d2                                        	test   rdx,rdx
    2989c62826eb:	0f 8c e8 5a 00 00                               	jl     0x2989c62881d9
    2989c62826f1:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    2989c62826f8:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    2989c62826ff:	48 8b 8d 28 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xd8]
    2989c6282706:	48 3b ca                                        	cmp    rcx,rdx
    2989c6282709:	0f 8c ca 00 00 00                               	jl     0x2989c62827d9
    2989c628270f:	c4 c1 78 2e fe                                  	vucomiss xmm7,xmm14
    2989c6282714:	0f 87 67 00 00 00                               	ja     0x2989c6282781
    2989c628271a:	c5 78 2e b5 50 fe ff ff                         	vucomiss xmm14,DWORD PTR [rbp-0x1b0]
    2989c6282722:	0f 83 b1 00 00 00                               	jae    0x2989c62827d9
    2989c6282728:	4c 8b 15 66 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea66]        # 0x2989c6281195
    2989c628272f:	c4 41 08 54 12                                  	vandps xmm10,xmm14,XMMWORD PTR [r10]
    2989c6282734:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6282739:	0f 87 0b 00 00 00                               	ja     0x2989c628274a
    2989c628273f:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    2989c6282745:	e9 21 00 00 00                                  	jmp    0x2989c628276b
    2989c628274a:	c4 43 29 0a d6 0b                               	vroundss xmm10,xmm10,xmm14,0xb
    2989c6282750:	c4 41 7a 2c e2                                  	vcvttss2si r12d,xmm10
    2989c6282755:	c4 41 02 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12d
    2989c628275a:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c628275f:	0f 8a ea 76 00 00                               	jp     0x2989c6289e4f
    2989c6282765:	0f 85 e4 76 00 00                               	jne    0x2989c6289e4f
    2989c628276b:	45 03 e1                                        	add    r12d,r9d
    2989c628276e:	4c 89 a5 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r12
    2989c6282775:	4c 8b a5 00 fc ff ff                            	mov    r12,QWORD PTR [rbp-0x400]
    2989c628277c:	e9 0b 00 00 00                                  	jmp    0x2989c628278c
    2989c6282781:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    2989c6282785:	4c 89 95 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r10
    2989c628278c:	44 3b 85 d8 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x128]
    2989c6282793:	0f 8e 40 00 00 00                               	jle    0x2989c62827d9
    2989c6282799:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    2989c62827a0:	44 2b 65 10                                     	sub    r12d,DWORD PTR [rbp+0x10]
    2989c62827a4:	4d 63 e4                                        	movsxd r12,r12d
    2989c62827a7:	4c 0f af a5 d8 fd ff ff                         	imul   r12,QWORD PTR [rbp-0x228]
    2989c62827af:	4c 03 e2                                        	add    r12,rdx
    2989c62827b2:	4d 85 e4                                        	test   r12,r12
    2989c62827b5:	44 0f 4c 85 d8 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x128]
    2989c62827bd:	e9 17 00 00 00                                  	jmp    0x2989c62827d9
    2989c62827c2:	48 85 d2                                        	test   rdx,rdx
    2989c62827c5:	0f 8c 0e 5a 00 00                               	jl     0x2989c62881d9
    2989c62827cb:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    2989c62827d2:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    2989c62827d9:	4c 8b a5 98 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x268]
    2989c62827e0:	49 8d 14 1c                                     	lea    rdx,[r12+rbx*1]
    2989c62827e4:	48 8b 8d f8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x208]
    2989c62827eb:	48 03 d1                                        	add    rdx,rcx
    2989c62827ee:	83 bd 38 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xc8],0x0
    2989c62827f5:	0f 8d d1 00 00 00                               	jge    0x2989c62828cc
    2989c62827fb:	4c 8b a5 20 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xe0]
    2989c6282802:	49 8d 0c 14                                     	lea    rcx,[r12+rdx*1]
    2989c6282806:	48 85 c9                                        	test   rcx,rcx
    2989c6282809:	0f 8c ca 59 00 00                               	jl     0x2989c62881d9
    2989c628280f:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    2989c6282816:	48 85 d2                                        	test   rdx,rdx
    2989c6282819:	0f 8d b1 01 00 00                               	jge    0x2989c62829d0
    2989c628281f:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    2989c6282824:	0f 83 6a 00 00 00                               	jae    0x2989c6282894
    2989c628282a:	c5 78 2e a5 18 ff ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0xe8]
    2989c6282832:	0f 83 54 00 00 00                               	jae    0x2989c628288c
    2989c6282838:	4c 8b 15 56 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe956]        # 0x2989c6281195
    2989c628283f:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    2989c6282844:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6282849:	0f 87 0a 00 00 00                               	ja     0x2989c6282859
    2989c628284f:	b9 00 00 00 80                                  	mov    ecx,0x80000000
    2989c6282854:	e9 20 00 00 00                                  	jmp    0x2989c6282879
    2989c6282859:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    2989c628285f:	c4 c1 7a 2c ca                                  	vcvttss2si ecx,xmm10
    2989c6282864:	c5 02 2a d9                                     	vcvtsi2ss xmm11,xmm15,ecx
    2989c6282868:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c628286d:	0f 8a d7 75 00 00                               	jp     0x2989c6289e4a
    2989c6282873:	0f 85 d1 75 00 00                               	jne    0x2989c6289e4a
    2989c6282879:	44 8b 65 10                                     	mov    r12d,DWORD PTR [rbp+0x10]
    2989c628287d:	41 03 cc                                        	add    ecx,r12d
    2989c6282880:	4c 8b a5 20 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xe0]
    2989c6282887:	e9 0b 00 00 00                                  	jmp    0x2989c6282897
    2989c628288c:	8b 4d 20                                        	mov    ecx,DWORD PTR [rbp+0x20]
    2989c628288f:	e9 03 00 00 00                                  	jmp    0x2989c6282897
    2989c6282894:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    2989c6282897:	41 3b cb                                        	cmp    ecx,r11d
    2989c628289a:	0f 8e 30 01 00 00                               	jle    0x2989c62829d0
    2989c62828a0:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    2989c62828a7:	41 8d 1c 0c                                     	lea    ebx,[r12+rcx*1]
    2989c62828ab:	48 63 db                                        	movsxd rbx,ebx
    2989c62828ae:	48 0f af 9d c8 fd ff ff                         	imul   rbx,QWORD PTR [rbp-0x238]
    2989c62828b6:	48 03 da                                        	add    rbx,rdx
    2989c62828b9:	48 85 db                                        	test   rbx,rbx
    2989c62828bc:	44 0f 4c d9                                     	cmovl  r11d,ecx
    2989c62828c0:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    2989c62828c7:	e9 04 01 00 00                                  	jmp    0x2989c62829d0
    2989c62828cc:	44 8b a5 58 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a8]
    2989c62828d3:	44 3b e6                                        	cmp    r12d,esi
    2989c62828d6:	0f 84 e4 00 00 00                               	je     0x2989c62829c0
    2989c62828dc:	48 85 d2                                        	test   rdx,rdx
    2989c62828df:	0f 8c f4 58 00 00                               	jl     0x2989c62881d9
    2989c62828e5:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    2989c62828ec:	4c 8b a5 08 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xf8]
    2989c62828f3:	4c 3b e2                                        	cmp    r12,rdx
    2989c62828f6:	0f 8c d4 00 00 00                               	jl     0x2989c62829d0
    2989c62828fc:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    2989c6282901:	0f 87 74 00 00 00                               	ja     0x2989c628297b
    2989c6282907:	c5 78 2e a5 50 fe ff ff                         	vucomiss xmm12,DWORD PTR [rbp-0x1b0]
    2989c628290f:	0f 83 56 00 00 00                               	jae    0x2989c628296b
    2989c6282915:	4c 8b 15 79 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe879]        # 0x2989c6281195
    2989c628291c:	c4 41 18 54 12                                  	vandps xmm10,xmm12,XMMWORD PTR [r10]
    2989c6282921:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c6282926:	0f 87 0a 00 00 00                               	ja     0x2989c6282936
    2989c628292c:	be 00 00 00 80                                  	mov    esi,0x80000000
    2989c6282931:	e9 20 00 00 00                                  	jmp    0x2989c6282956
    2989c6282936:	c4 43 29 0a d4 0b                               	vroundss xmm10,xmm10,xmm12,0xb
    2989c628293c:	c4 c1 7a 2c f2                                  	vcvttss2si esi,xmm10
    2989c6282941:	c5 02 2a de                                     	vcvtsi2ss xmm11,xmm15,esi
    2989c6282945:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    2989c628294a:	0f 8a f5 74 00 00                               	jp     0x2989c6289e45
    2989c6282950:	0f 85 ef 74 00 00                               	jne    0x2989c6289e45
    2989c6282956:	41 03 f1                                        	add    esi,r9d
    2989c6282959:	48 89 b5 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],rsi
    2989c6282960:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    2989c6282966:	e9 1b 00 00 00                                  	jmp    0x2989c6282986
    2989c628296b:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    2989c628296f:	4c 89 95 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r10
    2989c6282976:	e9 0b 00 00 00                                  	jmp    0x2989c6282986
    2989c628297b:	44 8b 55 10                                     	mov    r10d,DWORD PTR [rbp+0x10]
    2989c628297f:	4c 89 95 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r10
    2989c6282986:	44 3b 85 d8 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x128]
    2989c628298d:	0f 8e 3d 00 00 00                               	jle    0x2989c62829d0
    2989c6282993:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    2989c6282999:	2b 75 10                                        	sub    esi,DWORD PTR [rbp+0x10]
    2989c628299c:	48 63 f6                                        	movsxd rsi,esi
    2989c628299f:	48 0f af b5 c8 fd ff ff                         	imul   rsi,QWORD PTR [rbp-0x238]
    2989c62829a7:	48 03 d6                                        	add    rdx,rsi
    2989c62829aa:	48 85 d2                                        	test   rdx,rdx
    2989c62829ad:	44 0f 4c 85 d8 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x128]
    2989c62829b5:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    2989c62829bb:	e9 10 00 00 00                                  	jmp    0x2989c62829d0
    2989c62829c0:	48 85 d2                                        	test   rdx,rdx
    2989c62829c3:	0f 8c 10 58 00 00                               	jl     0x2989c62881d9
    2989c62829c9:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    2989c62829d0:	45 3b d8                                        	cmp    r11d,r8d
    2989c62829d3:	0f 8c 24 00 00 00                               	jl     0x2989c62829fd
    2989c62829d9:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    2989c62829e0:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c62829e6:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c62829ea:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c62829f1:	4c 8b bd d8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x228]
    2989c62829f8:	e9 97 57 00 00                                  	jmp    0x2989c6288194
    2989c62829fd:	44 8b e7                                        	mov    r12d,edi
    2989c6282a00:	41 83 cc 03                                     	or     r12d,0x3
    2989c6282a04:	8b d7                                           	mov    edx,edi
    2989c6282a06:	81 e2 fc ff ff 1f                               	and    edx,0x1ffffffc
    2989c6282a0c:	8b ca                                           	mov    ecx,edx
    2989c6282a0e:	83 c9 02                                        	or     ecx,0x2
    2989c6282a11:	48 89 95 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rdx
    2989c6282a18:	83 ca 01                                        	or     edx,0x1
    2989c6282a1b:	4c 89 85 d8 fe ff ff                            	mov    QWORD PTR [rbp-0x128],r8
    2989c6282a22:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
    2989c6282a2a:	4c 89 a5 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r12
    2989c6282a31:	45 8b e0                                        	mov    r12d,r8d
    2989c6282a34:	41 83 e4 0c                                     	and    r12d,0xc
    2989c6282a38:	41 83 e0 7c                                     	and    r8d,0x7c
    2989c6282a3c:	4c 89 85 e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],r8
    2989c6282a43:	45 8b c3                                        	mov    r8d,r11d
    2989c6282a46:	44 2b 45 10                                     	sub    r8d,DWORD PTR [rbp+0x10]
    2989c6282a4a:	4d 63 c0                                        	movsxd r8,r8d
    2989c6282a4d:	49 c1 e0 08                                     	shl    r8,0x8
    2989c6282a51:	48 8b b5 90 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x270]
    2989c6282a58:	49 0f af f0                                     	imul   rsi,r8
    2989c6282a5c:	49 03 f7                                        	add    rsi,r15
    2989c6282a5f:	4c 8b bd b8 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x148]
    2989c6282a66:	4d 0f af f8                                     	imul   r15,r8
    2989c6282a6a:	4c 03 f8                                        	add    r15,rax
    2989c6282a6d:	48 8b 85 48 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2b8]
    2989c6282a74:	49 0f af c0                                     	imul   rax,r8
    2989c6282a78:	4c 8b c3                                        	mov    r8,rbx
    2989c6282a7b:	49 03 c0                                        	add    rax,r8
    2989c6282a7e:	8b df                                           	mov    ebx,edi
    2989c6282a80:	c1 fb 02                                        	sar    ebx,0x2
    2989c6282a83:	c1 e3 04                                        	shl    ebx,0x4
    2989c6282a86:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    2989c6282a8b:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    2989c6282a90:	c5 7b 11 b5 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm14
    2989c6282a98:	48 89 8d 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],rcx
    2989c6282a9f:	48 89 95 f8 fb ff ff                            	mov    QWORD PTR [rbp-0x408],rdx
    2989c6282aa6:	4c 89 a5 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],r12
    2989c6282aad:	48 89 9d 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rbx
    2989c6282ab4:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c6282aba:	e9 07 00 00 00                                  	jmp    0x2989c6282ac6
    2989c6282abf:	90                                              	nop
    2989c6282ac0:	49 8b c4                                        	mov    rax,r12
    2989c6282ac3:	4c 8b fb                                        	mov    r15,rbx
    2989c6282ac6:	48 8b bd f8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x208]
    2989c6282acd:	48 8b 8d 20 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3e0]
    2989c6282ad4:	48 8b 9d 00 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x400]
    2989c6282adb:	4c 8b 85 38 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x2c8]
    2989c6282ae2:	4c 8b 8d b0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x150]
    2989c6282ae9:	48 89 85 c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],rax
    2989c6282af0:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6282af5:	0f 85 27 71 00 00                               	jne    0x2989c6289c22
    2989c6282afb:	83 bd 40 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2c0],0x0
    2989c6282b02:	0f 85 6b 00 00 00                               	jne    0x2989c6282b73
    2989c6282b08:	45 8b e7                                        	mov    r12d,r15d
    2989c6282b0b:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    2989c6282b10:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c6282b15:	c5 29 fe d6                                     	vpaddd xmm10,xmm10,xmm6
    2989c6282b19:	44 8b e6                                        	mov    r12d,esi
    2989c6282b1c:	c4 41 79 6e dc                                  	vmovd  xmm11,r12d
    2989c6282b21:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c6282b26:	c5 21 fe dd                                     	vpaddd xmm11,xmm11,xmm5
    2989c6282b2a:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    2989c6282b2f:	44 8b e0                                        	mov    r12d,eax
    2989c6282b32:	c4 41 79 6e dc                                  	vmovd  xmm11,r12d
    2989c6282b37:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c6282b3c:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    2989c6282b40:	c4 41 29 eb d3                                  	vpor   xmm10,xmm10,xmm11
    2989c6282b45:	c4 41 78 50 e2                                  	vmovmskps r12d,xmm10
    2989c6282b4a:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    2989c6282b4e:	41 83 e4 03                                     	and    r12d,0x3
    2989c6282b52:	45 85 e4                                        	test   r12d,r12d
    2989c6282b55:	0f 85 0c 00 00 00                               	jne    0x2989c6282b67
    2989c6282b5b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6282b5e:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6282b62:	e9 d4 55 00 00                                  	jmp    0x2989c628813b
    2989c6282b67:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6282b6b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6282b6e:	e9 50 01 00 00                                  	jmp    0x2989c6282cc3
    2989c6282b73:	4d 8d 24 31                                     	lea    r12,[r9+rsi*1]
    2989c6282b77:	4f 8d 0c 20                                     	lea    r9,[r8+r12*1]
    2989c6282b7b:	4d 85 c9                                        	test   r9,r9
    2989c6282b7e:	0f 8c b0 55 00 00                               	jl     0x2989c6288134
    2989c6282b84:	4e 8d 0c 3b                                     	lea    r9,[rbx+r15*1]
    2989c6282b88:	4a 8d 1c 09                                     	lea    rbx,[rcx+r9*1]
    2989c6282b8c:	48 85 db                                        	test   rbx,rbx
    2989c6282b8f:	0f 8c 9f 55 00 00                               	jl     0x2989c6288134
    2989c6282b95:	48 8d 1c 07                                     	lea    rbx,[rdi+rax*1]
    2989c6282b99:	48 8b 85 98 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x268]
    2989c6282ba0:	48 8d 3c 18                                     	lea    rdi,[rax+rbx*1]
    2989c6282ba4:	48 85 ff                                        	test   rdi,rdi
    2989c6282ba7:	0f 8c 87 55 00 00                               	jl     0x2989c6288134
    2989c6282bad:	48 8b bd 50 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x3b0]
    2989c6282bb4:	4a 8d 04 27                                     	lea    rax,[rdi+r12*1]
    2989c6282bb8:	48 85 c0                                        	test   rax,rax
    2989c6282bbb:	0f 8c 48 00 00 00                               	jl     0x2989c6282c09
    2989c6282bc1:	48 8b 85 78 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x388]
    2989c6282bc8:	4a 8d 3c 08                                     	lea    rdi,[rax+r9*1]
    2989c6282bcc:	48 85 ff                                        	test   rdi,rdi
    2989c6282bcf:	0f 8c 34 00 00 00                               	jl     0x2989c6282c09
    2989c6282bd5:	48 8b bd 98 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x368]
    2989c6282bdc:	48 8d 04 1f                                     	lea    rax,[rdi+rbx*1]
    2989c6282be0:	48 85 c0                                        	test   rax,rax
    2989c6282be3:	0f 8c 20 00 00 00                               	jl     0x2989c6282c09
    2989c6282be9:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    2989c6282bf0:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    2989c6282bf7:	41 bc 03 00 00 00                               	mov    r12d,0x3
    2989c6282bfd:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6282c00:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6282c04:	e9 e2 00 00 00                                  	jmp    0x2989c6282ceb
    2989c6282c09:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6282c0c:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6282c10:	4c 8b 84 38 d0 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd0]
    2989c6282c18:	4d 03 c4                                        	add    r8,r12
    2989c6282c1b:	4d 85 c0                                        	test   r8,r8
    2989c6282c1e:	0f 8c 2f 00 00 00                               	jl     0x2989c6282c53
    2989c6282c24:	4c 8b 84 38 d8 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd8]
    2989c6282c2c:	4d 03 c1                                        	add    r8,r9
    2989c6282c2f:	4d 85 c0                                        	test   r8,r8
    2989c6282c32:	0f 8c 1b 00 00 00                               	jl     0x2989c6282c53
    2989c6282c38:	4c 8b 84 38 e0 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xe0]
    2989c6282c40:	4c 03 c3                                        	add    r8,rbx
    2989c6282c43:	4d 85 c0                                        	test   r8,r8
    2989c6282c46:	41 0f 9d c0                                     	setge  r8b
    2989c6282c4a:	45 0f b6 c0                                     	movzx  r8d,r8b
    2989c6282c4e:	e9 03 00 00 00                                  	jmp    0x2989c6282c56
    2989c6282c53:	45 33 c0                                        	xor    r8d,r8d
    2989c6282c56:	48 8b 8c 38 e8 00 00 00                         	mov    rcx,QWORD PTR [rax+rdi*1+0xe8]
    2989c6282c5e:	4c 03 e1                                        	add    r12,rcx
    2989c6282c61:	4d 85 e4                                        	test   r12,r12
    2989c6282c64:	0f 8c 4f 00 00 00                               	jl     0x2989c6282cb9
    2989c6282c6a:	4c 8b a4 38 f0 00 00 00                         	mov    r12,QWORD PTR [rax+rdi*1+0xf0]
    2989c6282c72:	4d 03 e1                                        	add    r12,r9
    2989c6282c75:	4d 85 e4                                        	test   r12,r12
    2989c6282c78:	0f 8c 31 00 00 00                               	jl     0x2989c6282caf
    2989c6282c7e:	4c 8b a4 38 f8 00 00 00                         	mov    r12,QWORD PTR [rax+rdi*1+0xf8]
    2989c6282c86:	4c 03 e3                                        	add    r12,rbx
    2989c6282c89:	4d 85 e4                                        	test   r12,r12
    2989c6282c8c:	0f 8c 0c 00 00 00                               	jl     0x2989c6282c9e
    2989c6282c92:	41 83 c8 02                                     	or     r8d,0x2
    2989c6282c96:	45 8b e0                                        	mov    r12d,r8d
    2989c6282c99:	e9 25 00 00 00                                  	jmp    0x2989c6282cc3
    2989c6282c9e:	45 85 c0                                        	test   r8d,r8d
    2989c6282ca1:	0f 84 94 54 00 00                               	je     0x2989c628813b
    2989c6282ca7:	45 8b e0                                        	mov    r12d,r8d
    2989c6282caa:	e9 14 00 00 00                                  	jmp    0x2989c6282cc3
    2989c6282caf:	45 85 c0                                        	test   r8d,r8d
    2989c6282cb2:	75 f3                                           	jne    0x2989c6282ca7
    2989c6282cb4:	e9 82 54 00 00                                  	jmp    0x2989c628813b
    2989c6282cb9:	45 85 c0                                        	test   r8d,r8d
    2989c6282cbc:	75 e9                                           	jne    0x2989c6282ca7
    2989c6282cbe:	e9 78 54 00 00                                  	jmp    0x2989c628813b
    2989c6282cc3:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    2989c6282cca:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    2989c6282cd1:	41 f6 c4 01                                     	test   r12b,0x1
    2989c6282cd5:	0f 85 10 00 00 00                               	jne    0x2989c6282ceb
    2989c6282cdb:	4c 8b 85 e8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x118]
    2989c6282ce2:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    2989c6282ce6:	e9 5a 02 00 00                                  	jmp    0x2989c6282f45
    2989c6282ceb:	4c 8b 84 38 d0 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd0]
    2989c6282cf3:	4c 03 c6                                        	add    r8,rsi
    2989c6282cf6:	c4 41 82 2a d0                                  	vcvtsi2ss xmm10,xmm15,r8
    2989c6282cfb:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    2989c6282d00:	c4 41 5a 5c da                                  	vsubss xmm11,xmm4,xmm10
    2989c6282d05:	4c 8b 84 38 d8 00 00 00                         	mov    r8,QWORD PTR [rax+rdi*1+0xd8]
    2989c6282d0d:	4d 03 c7                                        	add    r8,r15
    2989c6282d10:	c4 c1 82 2a c0                                  	vcvtsi2ss xmm0,xmm15,r8
    2989c6282d15:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    2989c6282d19:	c5 22 5c d8                                     	vsubss xmm11,xmm11,xmm0
    2989c6282d1d:	4c 8b 85 e8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x118]
    2989c6282d24:	c4 21 22 59 5c 00 18                            	vmulss xmm11,xmm11,DWORD PTR [rax+r8*1+0x18]
    2989c6282d2b:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    2989c6282d32:	c5 2a 59 54 18 18                               	vmulss xmm10,xmm10,DWORD PTR [rax+rbx*1+0x18]
    2989c6282d38:	4c 8b 8d f8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x108]
    2989c6282d3f:	c4 a1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [rax+r9*1+0x18]
    2989c6282d46:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    2989c6282d4a:	c5 aa 58 c0                                     	vaddss xmm0,xmm10,xmm0
    2989c6282d4e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    2989c6282d52:	c5 fa 58 85 b8 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x248]
    2989c6282d5a:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    2989c6282d5e:	0f 87 09 00 00 00                               	ja     0x2989c6282d6d
    2989c6282d64:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6282d68:	e9 04 00 00 00                                  	jmp    0x2989c6282d71
    2989c6282d6d:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    2989c6282d71:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c6282d75:	0f 87 09 00 00 00                               	ja     0x2989c6282d84
    2989c6282d7b:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    2989c6282d7f:	e9 04 00 00 00                                  	jmp    0x2989c6282d88
    2989c6282d84:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c6282d88:	c5 fa 11 04 38                                  	vmovss DWORD PTR [rax+rdi*1],xmm0
    2989c6282d8d:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    2989c6282d91:	44 8b 4c 08 68                                  	mov    r9d,DWORD PTR [rax+rcx*1+0x68]
    2989c6282d96:	83 7c 08 68 00                                  	cmp    DWORD PTR [rax+rcx*1+0x68],0x0
    2989c6282d9b:	0f 84 a4 01 00 00                               	je     0x2989c6282f45
    2989c6282da1:	44 8b 8c 08 a4 00 00 00                         	mov    r9d,DWORD PTR [rax+rcx*1+0xa4]
    2989c6282da9:	83 bc 08 a4 00 00 00 00                         	cmp    DWORD PTR [rax+rcx*1+0xa4],0x0
    2989c6282db1:	0f 85 8e 01 00 00                               	jne    0x2989c6282f45
    2989c6282db7:	44 8b 4c 08 1c                                  	mov    r9d,DWORD PTR [rax+rcx*1+0x1c]
    2989c6282dbc:	8b 1c 08                                        	mov    ebx,DWORD PTR [rax+rcx*1]
    2989c6282dbf:	0f af 5d d0                                     	imul   ebx,DWORD PTR [rbp-0x30]
    2989c6282dc3:	41 03 db                                        	add    ebx,r11d
    2989c6282dc6:	41 8d 1c d9                                     	lea    ebx,[r9+rbx*8]
    2989c6282dca:	c5 fa 10 2c 18                                  	vmovss xmm5,DWORD PTR [rax+rbx*1]
    2989c6282dcf:	8b 5c 08 6c                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x6c]
    2989c6282dd3:	81 eb 00 02 00 00                               	sub    ebx,0x200
    2989c6282dd9:	83 fb 08                                        	cmp    ebx,0x8
    2989c6282ddc:	0f 83 0b 00 00 00                               	jae    0x2989c6282ded
    2989c6282de2:	4c 8d 15 df 70 00 00                            	lea    r10,[rip+0x70df]        # 0x2989c6289ec8
    2989c6282de9:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    2989c6282ded:	33 db                                           	xor    ebx,ebx
    2989c6282def:	85 d2                                           	test   edx,edx
    2989c6282df1:	0f 95 c3                                        	setne  bl
    2989c6282df4:	33 d2                                           	xor    edx,edx
    2989c6282df6:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282dfa:	0f 93 c2                                        	setae  dl
    2989c6282dfd:	0b d3                                           	or     edx,ebx
    2989c6282dff:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282e03:	0f 87 15 01 00 00                               	ja     0x2989c6282f1e
    2989c6282e09:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    2989c6282e0e:	e9 2c 01 00 00                                  	jmp    0x2989c6282f3f
    2989c6282e13:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6282e18:	e9 01 01 00 00                                  	jmp    0x2989c6282f1e
    2989c6282e1d:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    2989c6282e21:	7b 04                                           	jnp    0x2989c6282e27
    2989c6282e23:	33 db                                           	xor    ebx,ebx
    2989c6282e25:	eb 06                                           	jmp    0x2989c6282e2d
    2989c6282e27:	0f 94 c3                                        	sete   bl
    2989c6282e2a:	0f b6 db                                        	movzx  ebx,bl
    2989c6282e2d:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    2989c6282e31:	7b 05                                           	jnp    0x2989c6282e38
    2989c6282e33:	45 33 c9                                        	xor    r9d,r9d
    2989c6282e36:	eb 08                                           	jmp    0x2989c6282e40
    2989c6282e38:	41 0f 94 c1                                     	sete   r9b
    2989c6282e3c:	45 0f b6 c9                                     	movzx  r9d,r9b
    2989c6282e40:	44 23 cb                                        	and    r9d,ebx
    2989c6282e43:	33 db                                           	xor    ebx,ebx
    2989c6282e45:	85 d2                                           	test   edx,edx
    2989c6282e47:	0f 95 c3                                        	setne  bl
    2989c6282e4a:	41 0b d9                                        	or     ebx,r9d
    2989c6282e4d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6282e51:	0f 83 0c 00 00 00                               	jae    0x2989c6282e63
    2989c6282e57:	8b d3                                           	mov    edx,ebx
    2989c6282e59:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    2989c6282e5e:	e9 dc 00 00 00                                  	jmp    0x2989c6282f3f
    2989c6282e63:	8b d3                                           	mov    edx,ebx
    2989c6282e65:	e9 b4 00 00 00                                  	jmp    0x2989c6282f1e
    2989c6282e6a:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282e6e:	7a a3                                           	jp     0x2989c6282e13
    2989c6282e70:	75 a1                                           	jne    0x2989c6282e13
    2989c6282e72:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    2989c6282e77:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6282e7c:	e9 be 00 00 00                                  	jmp    0x2989c6282f3f
    2989c6282e81:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    2989c6282e85:	7b 04                                           	jnp    0x2989c6282e8b
    2989c6282e87:	33 db                                           	xor    ebx,ebx
    2989c6282e89:	eb 06                                           	jmp    0x2989c6282e91
    2989c6282e8b:	0f 94 c3                                        	sete   bl
    2989c6282e8e:	0f b6 db                                        	movzx  ebx,bl
    2989c6282e91:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    2989c6282e95:	7b 05                                           	jnp    0x2989c6282e9c
    2989c6282e97:	45 33 c9                                        	xor    r9d,r9d
    2989c6282e9a:	eb 08                                           	jmp    0x2989c6282ea4
    2989c6282e9c:	41 0f 94 c1                                     	sete   r9b
    2989c6282ea0:	45 0f b6 c9                                     	movzx  r9d,r9b
    2989c6282ea4:	44 23 cb                                        	and    r9d,ebx
    2989c6282ea7:	33 db                                           	xor    ebx,ebx
    2989c6282ea9:	85 d2                                           	test   edx,edx
    2989c6282eab:	0f 95 c3                                        	setne  bl
    2989c6282eae:	41 0b d9                                        	or     ebx,r9d
    2989c6282eb1:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6282eb5:	77 ac                                           	ja     0x2989c6282e63
    2989c6282eb7:	eb 9e                                           	jmp    0x2989c6282e57
    2989c6282eb9:	33 db                                           	xor    ebx,ebx
    2989c6282ebb:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282ebf:	0f 93 c3                                        	setae  bl
    2989c6282ec2:	85 d2                                           	test   edx,edx
    2989c6282ec4:	0f 95 c2                                        	setne  dl
    2989c6282ec7:	0f b6 d2                                        	movzx  edx,dl
    2989c6282eca:	0b d3                                           	or     edx,ebx
    2989c6282ecc:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282ed0:	0f 83 48 00 00 00                               	jae    0x2989c6282f1e
    2989c6282ed6:	e9 2e ff ff ff                                  	jmp    0x2989c6282e09
    2989c6282edb:	33 db                                           	xor    ebx,ebx
    2989c6282edd:	85 d2                                           	test   edx,edx
    2989c6282edf:	0f 95 c3                                        	setne  bl
    2989c6282ee2:	33 d2                                           	xor    edx,edx
    2989c6282ee4:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282ee8:	0f 93 c2                                        	setae  dl
    2989c6282eeb:	0b d3                                           	or     edx,ebx
    2989c6282eed:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282ef1:	0f 8a 12 ff ff ff                               	jp     0x2989c6282e09
    2989c6282ef7:	0f 84 21 00 00 00                               	je     0x2989c6282f1e
    2989c6282efd:	e9 07 ff ff ff                                  	jmp    0x2989c6282e09
    2989c6282f02:	33 db                                           	xor    ebx,ebx
    2989c6282f04:	85 d2                                           	test   edx,edx
    2989c6282f06:	0f 95 c3                                        	setne  bl
    2989c6282f09:	33 d2                                           	xor    edx,edx
    2989c6282f0b:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282f0f:	0f 93 c2                                        	setae  dl
    2989c6282f12:	0b d3                                           	or     edx,ebx
    2989c6282f14:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282f18:	0f 86 eb fe ff ff                               	jbe    0x2989c6282e09
    2989c6282f1e:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    2989c6282f23:	e9 17 00 00 00                                  	jmp    0x2989c6282f3f
    2989c6282f28:	33 db                                           	xor    ebx,ebx
    2989c6282f2a:	85 d2                                           	test   edx,edx
    2989c6282f2c:	0f 95 c3                                        	setne  bl
    2989c6282f2f:	33 d2                                           	xor    edx,edx
    2989c6282f31:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6282f35:	0f 93 c2                                        	setae  dl
    2989c6282f38:	0b d3                                           	or     edx,ebx
    2989c6282f3a:	bb fe ff ff ff                                  	mov    ebx,0xfffffffe
    2989c6282f3f:	41 23 dc                                        	and    ebx,r12d
    2989c6282f42:	44 8b e3                                        	mov    r12d,ebx
    2989c6282f45:	41 f6 c4 02                                     	test   r12b,0x2
    2989c6282f49:	0f 85 0e 00 00 00                               	jne    0x2989c6282f5d
    2989c6282f4f:	45 85 e4                                        	test   r12d,r12d
    2989c6282f52:	0f 85 90 02 00 00                               	jne    0x2989c62831e8
    2989c6282f58:	e9 70 02 00 00                                  	jmp    0x2989c62831cd
    2989c6282f5d:	48 8b 9c 38 e8 00 00 00                         	mov    rbx,QWORD PTR [rax+rdi*1+0xe8]
    2989c6282f65:	48 03 de                                        	add    rbx,rsi
    2989c6282f68:	c4 e1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,rbx
    2989c6282f6d:	c5 e2 59 c0                                     	vmulss xmm0,xmm3,xmm0
    2989c6282f71:	c5 da 5c e8                                     	vsubss xmm5,xmm4,xmm0
    2989c6282f75:	48 8b 9c 38 f0 00 00 00                         	mov    rbx,QWORD PTR [rax+rdi*1+0xf0]
    2989c6282f7d:	49 03 df                                        	add    rbx,r15
    2989c6282f80:	c4 61 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,rbx
    2989c6282f85:	c4 41 62 59 d2                                  	vmulss xmm10,xmm3,xmm10
    2989c6282f8a:	c4 c1 52 5c ea                                  	vsubss xmm5,xmm5,xmm10
    2989c6282f8f:	c4 a1 52 59 6c 00 18                            	vmulss xmm5,xmm5,DWORD PTR [rax+r8*1+0x18]
    2989c6282f96:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    2989c6282f9d:	c5 fa 59 44 18 18                               	vmulss xmm0,xmm0,DWORD PTR [rax+rbx*1+0x18]
    2989c6282fa3:	4c 8b 8d f8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x108]
    2989c6282faa:	c4 21 7a 10 5c 08 18                            	vmovss xmm11,DWORD PTR [rax+r9*1+0x18]
    2989c6282fb1:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    2989c6282fb6:	c4 c1 7a 58 c2                                  	vaddss xmm0,xmm0,xmm10
    2989c6282fbb:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    2989c6282fbf:	c5 fa 58 85 b8 fd ff ff                         	vaddss xmm0,xmm0,DWORD PTR [rbp-0x248]
    2989c6282fc7:	c5 f8 2e c4                                     	vucomiss xmm0,xmm4
    2989c6282fcb:	0f 87 09 00 00 00                               	ja     0x2989c6282fda
    2989c6282fd1:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6282fd5:	e9 04 00 00 00                                  	jmp    0x2989c6282fde
    2989c6282fda:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    2989c6282fde:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c6282fe2:	0f 87 09 00 00 00                               	ja     0x2989c6282ff1
    2989c6282fe8:	c5 f9 28 c5                                     	vmovapd xmm0,xmm5
    2989c6282fec:	e9 04 00 00 00                                  	jmp    0x2989c6282ff5
    2989c6282ff1:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c6282ff5:	c5 fa 11 44 38 04                               	vmovss DWORD PTR [rax+rdi*1+0x4],xmm0
    2989c6282ffb:	8b 5c 08 68                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x68]
    2989c6282fff:	83 7c 08 68 00                                  	cmp    DWORD PTR [rax+rcx*1+0x68],0x0
    2989c6283004:	0f 84 e5 01 00 00                               	je     0x2989c62831ef
    2989c628300a:	8b 9c 08 a4 00 00 00                            	mov    ebx,DWORD PTR [rax+rcx*1+0xa4]
    2989c6283011:	83 bc 08 a4 00 00 00 00                         	cmp    DWORD PTR [rax+rcx*1+0xa4],0x0
    2989c6283019:	0f 85 d0 01 00 00                               	jne    0x2989c62831ef
    2989c628301f:	8b 5c 08 1c                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x1c]
    2989c6283023:	44 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+rcx*1]
    2989c6283027:	44 0f af 4d d0                                  	imul   r9d,DWORD PTR [rbp-0x30]
    2989c628302c:	45 03 cb                                        	add    r9d,r11d
    2989c628302f:	42 8d 1c cb                                     	lea    ebx,[rbx+r9*8]
    2989c6283033:	c5 fa 10 6c 18 04                               	vmovss xmm5,DWORD PTR [rax+rbx*1+0x4]
    2989c6283039:	8b 5c 08 6c                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x6c]
    2989c628303d:	81 eb 00 02 00 00                               	sub    ebx,0x200
    2989c6283043:	83 fb 08                                        	cmp    ebx,0x8
    2989c6283046:	0f 83 0b 00 00 00                               	jae    0x2989c6283057
    2989c628304c:	4c 8d 15 35 6e 00 00                            	lea    r10,[rip+0x6e35]        # 0x2989c6289e88
    2989c6283053:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    2989c6283057:	33 db                                           	xor    ebx,ebx
    2989c6283059:	85 d2                                           	test   edx,edx
    2989c628305b:	0f 95 c3                                        	setne  bl
    2989c628305e:	33 d2                                           	xor    edx,edx
    2989c6283060:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6283064:	0f 93 c2                                        	setae  dl
    2989c6283067:	0b d3                                           	or     edx,ebx
    2989c6283069:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c628306d:	0f 87 2e 01 00 00                               	ja     0x2989c62831a1
    2989c6283073:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c6283078:	e9 45 01 00 00                                  	jmp    0x2989c62831c2
    2989c628307d:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6283082:	e9 1a 01 00 00                                  	jmp    0x2989c62831a1
    2989c6283087:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    2989c628308b:	7b 04                                           	jnp    0x2989c6283091
    2989c628308d:	33 db                                           	xor    ebx,ebx
    2989c628308f:	eb 06                                           	jmp    0x2989c6283097
    2989c6283091:	0f 94 c3                                        	sete   bl
    2989c6283094:	0f b6 db                                        	movzx  ebx,bl
    2989c6283097:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    2989c628309b:	7b 05                                           	jnp    0x2989c62830a2
    2989c628309d:	45 33 c9                                        	xor    r9d,r9d
    2989c62830a0:	eb 08                                           	jmp    0x2989c62830aa
    2989c62830a2:	41 0f 94 c1                                     	sete   r9b
    2989c62830a6:	45 0f b6 c9                                     	movzx  r9d,r9b
    2989c62830aa:	44 23 cb                                        	and    r9d,ebx
    2989c62830ad:	33 db                                           	xor    ebx,ebx
    2989c62830af:	85 d2                                           	test   edx,edx
    2989c62830b1:	0f 95 c3                                        	setne  bl
    2989c62830b4:	41 0b d9                                        	or     ebx,r9d
    2989c62830b7:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62830bb:	0f 83 0c 00 00 00                               	jae    0x2989c62830cd
    2989c62830c1:	8b d3                                           	mov    edx,ebx
    2989c62830c3:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c62830c8:	e9 f5 00 00 00                                  	jmp    0x2989c62831c2
    2989c62830cd:	8b d3                                           	mov    edx,ebx
    2989c62830cf:	e9 cd 00 00 00                                  	jmp    0x2989c62831a1
    2989c62830d4:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c62830d8:	7a a3                                           	jp     0x2989c628307d
    2989c62830da:	75 a1                                           	jne    0x2989c628307d
    2989c62830dc:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c62830e1:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c62830e6:	e9 d7 00 00 00                                  	jmp    0x2989c62831c2
    2989c62830eb:	c5 f8 2e c0                                     	vucomiss xmm0,xmm0
    2989c62830ef:	7b 04                                           	jnp    0x2989c62830f5
    2989c62830f1:	33 db                                           	xor    ebx,ebx
    2989c62830f3:	eb 06                                           	jmp    0x2989c62830fb
    2989c62830f5:	0f 94 c3                                        	sete   bl
    2989c62830f8:	0f b6 db                                        	movzx  ebx,bl
    2989c62830fb:	c5 f8 2e ed                                     	vucomiss xmm5,xmm5
    2989c62830ff:	7b 05                                           	jnp    0x2989c6283106
    2989c6283101:	45 33 c9                                        	xor    r9d,r9d
    2989c6283104:	eb 08                                           	jmp    0x2989c628310e
    2989c6283106:	41 0f 94 c1                                     	sete   r9b
    2989c628310a:	45 0f b6 c9                                     	movzx  r9d,r9b
    2989c628310e:	44 23 cb                                        	and    r9d,ebx
    2989c6283111:	33 db                                           	xor    ebx,ebx
    2989c6283113:	85 d2                                           	test   edx,edx
    2989c6283115:	0f 95 c3                                        	setne  bl
    2989c6283118:	41 0b d9                                        	or     ebx,r9d
    2989c628311b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c628311f:	77 ac                                           	ja     0x2989c62830cd
    2989c6283121:	8b d3                                           	mov    edx,ebx
    2989c6283123:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c6283128:	e9 95 00 00 00                                  	jmp    0x2989c62831c2
    2989c628312d:	33 db                                           	xor    ebx,ebx
    2989c628312f:	85 d2                                           	test   edx,edx
    2989c6283131:	0f 95 c3                                        	setne  bl
    2989c6283134:	33 d2                                           	xor    edx,edx
    2989c6283136:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c628313a:	0f 93 c2                                        	setae  dl
    2989c628313d:	0b d3                                           	or     edx,ebx
    2989c628313f:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6283143:	0f 83 58 00 00 00                               	jae    0x2989c62831a1
    2989c6283149:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c628314e:	e9 6f 00 00 00                                  	jmp    0x2989c62831c2
    2989c6283153:	33 db                                           	xor    ebx,ebx
    2989c6283155:	85 d2                                           	test   edx,edx
    2989c6283157:	0f 95 c3                                        	setne  bl
    2989c628315a:	33 d2                                           	xor    edx,edx
    2989c628315c:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6283160:	0f 93 c2                                        	setae  dl
    2989c6283163:	0b d3                                           	or     edx,ebx
    2989c6283165:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6283169:	7a 06                                           	jp     0x2989c6283171
    2989c628316b:	0f 84 30 00 00 00                               	je     0x2989c62831a1
    2989c6283171:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c6283176:	e9 47 00 00 00                                  	jmp    0x2989c62831c2
    2989c628317b:	33 db                                           	xor    ebx,ebx
    2989c628317d:	85 d2                                           	test   edx,edx
    2989c628317f:	0f 95 c3                                        	setne  bl
    2989c6283182:	33 d2                                           	xor    edx,edx
    2989c6283184:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6283188:	0f 93 c2                                        	setae  dl
    2989c628318b:	0b d3                                           	or     edx,ebx
    2989c628318d:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6283191:	0f 87 0a 00 00 00                               	ja     0x2989c62831a1
    2989c6283197:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c628319c:	e9 21 00 00 00                                  	jmp    0x2989c62831c2
    2989c62831a1:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    2989c62831a6:	e9 17 00 00 00                                  	jmp    0x2989c62831c2
    2989c62831ab:	33 db                                           	xor    ebx,ebx
    2989c62831ad:	85 d2                                           	test   edx,edx
    2989c62831af:	0f 95 c3                                        	setne  bl
    2989c62831b2:	33 d2                                           	xor    edx,edx
    2989c62831b4:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c62831b8:	0f 93 c2                                        	setae  dl
    2989c62831bb:	0b d3                                           	or     edx,ebx
    2989c62831bd:	bb fd ff ff ff                                  	mov    ebx,0xfffffffd
    2989c62831c2:	41 23 dc                                        	and    ebx,r12d
    2989c62831c5:	85 db                                           	test   ebx,ebx
    2989c62831c7:	0f 85 18 00 00 00                               	jne    0x2989c62831e5
    2989c62831cd:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    2989c62831d4:	44 8b cf                                        	mov    r9d,edi
    2989c62831d7:	48 8b f8                                        	mov    rdi,rax
    2989c62831da:	4c 8b c1                                        	mov    r8,rcx
    2989c62831dd:	41 8b d3                                        	mov    edx,r11d
    2989c62831e0:	e9 a5 14 00 00                                  	jmp    0x2989c628468a
    2989c62831e5:	44 8b e3                                        	mov    r12d,ebx
    2989c62831e8:	4c 8b 8d f8 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x108]
    2989c62831ef:	4c 89 9d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r11
    2989c62831f6:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    2989c62831fd:	41 83 fc 03                                     	cmp    r12d,0x3
    2989c6283201:	0f 84 29 00 00 00                               	je     0x2989c6283230
    2989c6283207:	8d 9f d0 00 00 00                               	lea    ebx,[rdi+0xd0]
    2989c628320d:	f3 45 0f bc dc                                  	tzcnt  r11d,r12d
    2989c6283212:	45 6b db 18                                     	imul   r11d,r11d,0x18
    2989c6283216:	44 03 db                                        	add    r11d,ebx
    2989c6283219:	4a 8b 5c 18 08                                  	mov    rbx,QWORD PTR [rax+r11*1+0x8]
    2989c628321e:	4e 8b 1c 18                                     	mov    r11,QWORD PTR [rax+r11*1]
    2989c6283222:	4d 8b d3                                        	mov    r10,r11
    2989c6283225:	4c 8b db                                        	mov    r11,rbx
    2989c6283228:	49 8b da                                        	mov    rbx,r10
    2989c628322b:	e9 0e 00 00 00                                  	jmp    0x2989c628323e
    2989c6283230:	4c 8b 9d f0 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x410]
    2989c6283237:	48 8b 9d 30 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2d0]
    2989c628323e:	4d 03 df                                        	add    r11,r15
    2989c6283241:	48 03 de                                        	add    rbx,rsi
    2989c6283244:	83 bd 18 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2e8],0x0
    2989c628324b:	0f 85 98 14 00 00                               	jne    0x2989c62846e9
    2989c6283251:	c4 a1 7a 10 44 00 1c                            	vmovss xmm0,DWORD PTR [rax+r8*1+0x1c]
    2989c6283258:	c4 a1 7a 10 6c 08 1c                            	vmovss xmm5,DWORD PTR [rax+r9*1+0x1c]
    2989c628325f:	4c 89 a5 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r12
    2989c6283266:	4c 8b a5 f0 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x110]
    2989c628326d:	c4 21 7a 10 54 20 1c                            	vmovss xmm10,DWORD PTR [rax+r12*1+0x1c]
    2989c6283274:	44 8b bc 08 c8 3c 00 00                         	mov    r15d,DWORD PTR [rax+rcx*1+0x3cc8]
    2989c628327c:	83 bc 08 c8 3c 00 00 00                         	cmp    DWORD PTR [rax+rcx*1+0x3cc8],0x0
    2989c6283284:	0f 84 65 00 00 00                               	je     0x2989c62832ef
    2989c628328a:	44 8b bd f0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x210]
    2989c6283291:	41 c1 ef 03                                     	shr    r15d,0x3
    2989c6283295:	41 83 e7 03                                     	and    r15d,0x3
    2989c6283299:	8b 95 e8 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x318]
    2989c628329f:	41 0b d7                                        	or     edx,r15d
    2989c62832a2:	44 8b bd 70 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x190]
    2989c62832a9:	41 03 d7                                        	add    edx,r15d
    2989c62832ac:	0f b6 14 10                                     	movzx  edx,BYTE PTR [rax+rdx*1]
    2989c62832b0:	44 8b bd f0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x210]
    2989c62832b7:	41 83 e7 07                                     	and    r15d,0x7
    2989c62832bb:	41 8b cf                                        	mov    ecx,r15d
    2989c62832be:	d3 e2                                           	shl    edx,cl
    2989c62832c0:	44 8b bd 28 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3d8]
    2989c62832c7:	f6 c2 80                                        	test   dl,0x80
    2989c62832ca:	0f 85 15 00 00 00                               	jne    0x2989c62832e5
    2989c62832d0:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c62832d6:	44 8b cf                                        	mov    r9d,edi
    2989c62832d9:	48 8b f8                                        	mov    rdi,rax
    2989c62832dc:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c62832e0:	e9 a5 13 00 00                                  	jmp    0x2989c628468a
    2989c62832e5:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    2989c62832e9:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c62832ef:	c4 61 82 2a db                                  	vcvtsi2ss xmm11,xmm15,rbx
    2989c62832f4:	c4 41 62 59 db                                  	vmulss xmm11,xmm3,xmm11
    2989c62832f9:	c4 41 22 59 d2                                  	vmulss xmm10,xmm11,xmm10
    2989c62832fe:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    2989c6283303:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    2989c6283307:	c5 ca 59 ed                                     	vmulss xmm5,xmm6,xmm5
    2989c628330b:	c5 2a 58 c5                                     	vaddss xmm8,xmm10,xmm5
    2989c628330f:	c4 41 5a 5c db                                  	vsubss xmm11,xmm4,xmm11
    2989c6283314:	c5 a2 5c f6                                     	vsubss xmm6,xmm11,xmm6
    2989c6283318:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628331c:	c5 ba 58 f0                                     	vaddss xmm6,xmm8,xmm0
    2989c6283320:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6283324:	0f 83 4a 13 00 00                               	jae    0x2989c6284674
    2989c628332a:	c5 da 5e f6                                     	vdivss xmm6,xmm4,xmm6
    2989c628332e:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    2989c6283332:	c4 62 79 18 c6                                  	vbroadcastss xmm8,xmm6
    2989c6283337:	c4 21 7a 6f 5c 00 20                            	vmovdqu xmm11,XMMWORD PTR [rax+r8*1+0x20]
    2989c628333e:	c5 fb 11 b5 b0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x250],xmm6
    2989c6283346:	c4 e2 79 18 f0                                  	vbroadcastss xmm6,xmm0
    2989c628334b:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    2989c628334f:	c4 21 7a 6f 5c 20 20                            	vmovdqu xmm11,XMMWORD PTR [rax+r12*1+0x20]
    2989c6283356:	c5 fb 11 85 10 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2f0],xmm0
    2989c628335e:	c4 c2 79 18 c2                                  	vbroadcastss xmm0,xmm10
    2989c6283363:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    2989c6283367:	c4 62 79 18 dd                                  	vbroadcastss xmm11,xmm5
    2989c628336c:	c5 fb 11 ad 30 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3d0],xmm5
    2989c6283374:	c4 a1 7a 6f 6c 08 20                            	vmovdqu xmm5,XMMWORD PTR [rax+r9*1+0x20]
    2989c628337b:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    2989c628337f:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c6283383:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    2989c6283387:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c628338b:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    2989c6283394:	c4 a1 7a 10 ac 00 98 00 00 00                   	vmovss xmm5,DWORD PTR [rax+r8*1+0x98]
    2989c628339e:	c4 a1 7a 10 b4 20 98 00 00 00                   	vmovss xmm6,DWORD PTR [rax+r12*1+0x98]
    2989c62833a8:	c4 21 7a 10 84 08 98 00 00 00                   	vmovss xmm8,DWORD PTR [rax+r9*1+0x98]
    2989c62833b2:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    2989c62833bb:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    2989c62833c2:	46 8b bc 18 34 01 00 00                         	mov    r15d,DWORD PTR [rax+r11*1+0x134]
    2989c62833ca:	41 8d 5f ff                                     	lea    ebx,[r15-0x1]
    2989c62833ce:	c5 7b 11 95 00 fd ff ff                         	vmovsd QWORD PTR [rbp-0x300],xmm10
    2989c62833d6:	c5 fb 11 ad 70 fd ff ff                         	vmovsd QWORD PTR [rbp-0x290],xmm5
    2989c62833de:	c5 fb 11 b5 80 fc ff ff                         	vmovsd QWORD PTR [rbp-0x380],xmm6
    2989c62833e6:	c5 7b 11 85 40 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3c0],xmm8
    2989c62833ee:	83 fb 01                                        	cmp    ebx,0x1
    2989c62833f1:	0f 86 b4 04 00 00                               	jbe    0x2989c62838ab
    2989c62833f7:	46 8b bc 18 30 01 00 00                         	mov    r15d,DWORD PTR [rax+r11*1+0x130]
    2989c62833ff:	42 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [rax+r11*1+0x130],0x0
    2989c6283408:	0f 85 0b 00 00 00                               	jne    0x2989c6283419
    2989c628340e:	44 8b cf                                        	mov    r9d,edi
    2989c6283411:	48 8b f8                                        	mov    rdi,rax
    2989c6283414:	e9 45 05 00 00                                  	jmp    0x2989c628395e
    2989c6283419:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    2989c6283420:	8d 9f 80 02 00 00                               	lea    ebx,[rdi+0x280]
    2989c6283426:	53                                              	push   rbx
    2989c6283427:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    2989c628342e:	4c 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r15
    2989c6283435:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6283439:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c628343f:	8b 95 48 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b8]
    2989c6283445:	8b 8d 88 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x378]
    2989c628344b:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    2989c6283451:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    2989c6283456:	c5 fb 10 95 30 fc ff ff                         	vmovsd xmm2,QWORD PTR [rbp-0x3d0]
    2989c628345e:	c5 fb 10 9d 10 fd ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x2f0]
    2989c6283466:	c5 fb 10 a5 b0 fd ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x250]
    2989c628346e:	45 8b cf                                        	mov    r9d,r15d
    2989c6283471:	e8 a2 7d ef ff                                  	call   0x2989c617b218
    2989c6283476:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c628347a:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    2989c6283481:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    2989c6283489:	45 85 c0                                        	test   r8d,r8d
    2989c628348c:	0f 85 9a 01 00 00                               	jne    0x2989c628362c
    2989c6283492:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6283496:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    2989c628349e:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    2989c62834a7:	0f 84 4b 00 00 00                               	je     0x2989c62834f8
    2989c62834ad:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c62834b4:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c62834bb:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c62834c2:	41 50                                           	push   r8
    2989c62834c4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62834c8:	8b 85 c0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x140]
    2989c62834ce:	33 d2                                           	xor    edx,edx
    2989c62834d0:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    2989c62834d7:	e8 64 7d ef ff                                  	call   0x2989c617b240
    2989c62834dc:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c62834e0:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c62834e4:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c62834ee:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c62834f8:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    2989c6283500:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    2989c6283509:	0f 84 4e 00 00 00                               	je     0x2989c628355d
    2989c628350f:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c6283516:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c628351d:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c6283524:	41 50                                           	push   r8
    2989c6283526:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628352a:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    2989c6283530:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6283535:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    2989c628353c:	e8 ff 7c ef ff                                  	call   0x2989c617b240
    2989c6283541:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6283545:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6283549:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c6283553:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c628355d:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    2989c6283565:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    2989c628356e:	0f 84 4e 00 00 00                               	je     0x2989c62835c2
    2989c6283574:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c628357b:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c6283582:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c6283589:	41 50                                           	push   r8
    2989c628358b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628358f:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    2989c6283595:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c628359a:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    2989c62835a1:	e8 9a 7c ef ff                                  	call   0x2989c617b240
    2989c62835a6:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c62835aa:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c62835ae:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c62835b8:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c62835c2:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    2989c62835ca:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    2989c62835d3:	0f 84 85 03 00 00                               	je     0x2989c628395e
    2989c62835d9:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    2989c62835e0:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    2989c62835e7:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    2989c62835ee:	41 50                                           	push   r8
    2989c62835f0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62835f4:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    2989c62835fa:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c62835ff:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    2989c6283606:	e8 35 7c ef ff                                  	call   0x2989c617b240
    2989c628360b:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c628360f:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6283613:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    2989c628361d:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c6283627:	e9 32 03 00 00                                  	jmp    0x2989c628395e
    2989c628362c:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6283630:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    2989c628363a:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c6283640:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c6283645:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6283649:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    2989c6283653:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c6283657:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c628365b:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    2989c6283665:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c6283669:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    2989c6283673:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c6283677:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    2989c628367b:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    2989c6283685:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c6283689:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    2989c6283693:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    2989c6283697:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    2989c628369b:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    2989c628369f:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c62836a3:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c62836a9:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c62836ae:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    2989c62836b2:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c62836b6:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c62836bb:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c62836c0:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62836c4:	0f 87 09 00 00 00                               	ja     0x2989c62836d3
    2989c62836ca:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c62836ce:	e9 04 00 00 00                                  	jmp    0x2989c62836d7
    2989c62836d3:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c62836d7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c62836db:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c62836df:	0f 87 09 00 00 00                               	ja     0x2989c62836ee
    2989c62836e5:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c62836e9:	e9 04 00 00 00                                  	jmp    0x2989c62836f2
    2989c62836ee:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c62836f2:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c62836f7:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c62836fb:	0f 84 a3 00 00 00                               	je     0x2989c62837a4
    2989c6283701:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c6283705:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    2989c628370f:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6283713:	0f 87 09 00 00 00                               	ja     0x2989c6283722
    2989c6283719:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c628371d:	e9 04 00 00 00                                  	jmp    0x2989c6283726
    2989c6283722:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c6283726:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628372a:	0f 87 0a 00 00 00                               	ja     0x2989c628373a
    2989c6283730:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c6283735:	e9 04 00 00 00                                  	jmp    0x2989c628373e
    2989c628373a:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c628373e:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c6283742:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6283747:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c628374c:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6283750:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    2989c628375a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c628375f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6283764:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c6283768:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    2989c6283772:	41 83 f8 03                                     	cmp    r8d,0x3
    2989c6283776:	0f 85 04 00 00 00                               	jne    0x2989c6283780
    2989c628377c:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    2989c6283780:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    2989c6283785:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6283789:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c628378d:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    2989c6283797:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c628379c:	4d 8b c4                                        	mov    r8,r12
    2989c628379f:	e9 cd 00 00 00                                  	jmp    0x2989c6283871
    2989c62837a4:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    2989c62837ae:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62837b2:	0f 87 09 00 00 00                               	ja     0x2989c62837c1
    2989c62837b8:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c62837bc:	e9 04 00 00 00                                  	jmp    0x2989c62837c5
    2989c62837c1:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c62837c5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c62837c9:	0f 87 0a 00 00 00                               	ja     0x2989c62837d9
    2989c62837cf:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c62837d4:	e9 04 00 00 00                                  	jmp    0x2989c62837dd
    2989c62837d9:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c62837dd:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    2989c62837e7:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    2989c62837ed:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    2989c62837f2:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62837f6:	0f 87 09 00 00 00                               	ja     0x2989c6283805
    2989c62837fc:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c6283800:	e9 04 00 00 00                                  	jmp    0x2989c6283809
    2989c6283805:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    2989c6283809:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628380d:	0f 87 0a 00 00 00                               	ja     0x2989c628381d
    2989c6283813:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c6283818:	e9 04 00 00 00                                  	jmp    0x2989c6283821
    2989c628381d:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6283821:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    2989c628382b:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6283830:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6283834:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    2989c628383e:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    2989c6283843:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c6283848:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c628384c:	4c 8b 15 ff fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeff]        # 0x2989c6283752
    2989c6283853:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6283858:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c628385d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6283861:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6283865:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c6283869:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c628386d:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    2989c6283871:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c6283876:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c628387a:	4c 8b 15 d1 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed1]        # 0x2989c6283752
    2989c6283881:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6283886:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c628388b:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    2989c628388f:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    2989c6283899:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    2989c62838a3:	45 8b cb                                        	mov    r9d,r11d
    2989c62838a6:	e9 b3 00 00 00                                  	jmp    0x2989c628395e
    2989c62838ab:	c4 a1 7a 10 44 00 50                            	vmovss xmm0,DWORD PTR [rax+r8*1+0x50]
    2989c62838b2:	c5 fa 59 85 10 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2f0]
    2989c62838ba:	4d 8b dc                                        	mov    r11,r12
    2989c62838bd:	c4 21 7a 10 4c 18 50                            	vmovss xmm9,DWORD PTR [rax+r11*1+0x50]
    2989c62838c4:	c4 41 32 59 ca                                  	vmulss xmm9,xmm9,xmm10
    2989c62838c9:	4d 8b e1                                        	mov    r12,r9
    2989c62838cc:	c5 7b 10 9d 30 fc ff ff                         	vmovsd xmm11,QWORD PTR [rbp-0x3d0]
    2989c62838d4:	c4 a1 22 59 4c 20 50                            	vmulss xmm1,xmm11,DWORD PTR [rax+r12*1+0x50]
    2989c62838db:	c5 32 58 c9                                     	vaddss xmm9,xmm9,xmm1
    2989c62838df:	c4 c1 7a 58 c1                                  	vaddss xmm0,xmm0,xmm9
    2989c62838e4:	c5 7b 10 8d b0 fd ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x250]
    2989c62838ec:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    2989c62838f0:	c4 a1 7a 10 44 00 54                            	vmovss xmm0,DWORD PTR [rax+r8*1+0x54]
    2989c62838f7:	c5 fa 59 85 10 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2f0]
    2989c62838ff:	c4 a1 7a 10 54 18 54                            	vmovss xmm2,DWORD PTR [rax+r11*1+0x54]
    2989c6283906:	c4 c1 6a 59 d2                                  	vmulss xmm2,xmm2,xmm10
    2989c628390b:	c4 a1 22 59 6c 20 54                            	vmulss xmm5,xmm11,DWORD PTR [rax+r12*1+0x54]
    2989c6283912:	c5 ea 58 ed                                     	vaddss xmm5,xmm2,xmm5
    2989c6283916:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c628391a:	c5 b2 59 d0                                     	vmulss xmm2,xmm9,xmm0
    2989c628391e:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    2989c6283924:	44 8d 8f 30 01 00 00                            	lea    r9d,[rdi+0x130]
    2989c628392b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628392f:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c6283935:	41 8b d7                                        	mov    edx,r15d
    2989c6283938:	8b cb                                           	mov    ecx,ebx
    2989c628393a:	41 8b d9                                        	mov    ebx,r9d
    2989c628393d:	e8 ee 7b ef ff                                  	call   0x2989c617b530
    2989c6283942:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6283946:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c628394a:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    2989c6283954:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    2989c628395e:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6283962:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    2989c628396a:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    2989c6283973:	0f 84 c5 01 00 00                               	je     0x2989c6283b3e
    2989c6283979:	c5 fb 10 85 70 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x290]
    2989c6283981:	c5 fa 59 85 10 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x2f0]
    2989c6283989:	c5 fb 10 ad 80 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x380]
    2989c6283991:	c5 d2 59 ad 00 fd ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x300]
    2989c6283999:	c5 fb 10 b5 30 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3d0]
    2989c62839a1:	c5 ca 59 b5 40 fc ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x3c0]
    2989c62839a9:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c62839ad:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c62839b1:	c5 fb 10 ad b0 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x250]
    2989c62839b9:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    2989c62839bd:	4c 8b 15 c5 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5c5]        # 0x2989c6281f89
    2989c62839c4:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c62839c9:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c62839cd:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    2989c62839d1:	0f 87 04 00 00 00                               	ja     0x2989c62839db
    2989c62839d7:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c62839db:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    2989c62839e3:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    2989c62839ea:	0f 85 28 00 00 00                               	jne    0x2989c6283a18
    2989c62839f0:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    2989c62839fa:	4c 8b 15 88 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe588]        # 0x2989c6281f89
    2989c6283a01:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6283a06:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    2989c6283a0a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6283a0e:	e8 a5 9b ef ff                                  	call   0x2989c617d5b8
    2989c6283a13:	e9 89 00 00 00                                  	jmp    0x2989c6283aa1
    2989c6283a18:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c6283a1c:	0f 84 5c 00 00 00                               	je     0x2989c6283a7e
    2989c6283a22:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    2989c6283a2c:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    2989c6283a36:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    2989c6283a3a:	7a 06                                           	jp     0x2989c6283a42
    2989c6283a3c:	0f 84 29 00 00 00                               	je     0x2989c6283a6b
    2989c6283a42:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    2989c6283a46:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    2989c6283a4a:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c6283a4e:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    2989c6283a52:	0f 86 49 00 00 00                               	jbe    0x2989c6283aa1
    2989c6283a58:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6283a5c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6283a61:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6283a66:	e9 5b 00 00 00                                  	jmp    0x2989c6283ac6
    2989c6283a6b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6283a6f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6283a74:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6283a79:	e9 44 00 00 00                                  	jmp    0x2989c6283ac2
    2989c6283a7e:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    2989c6283a88:	4c 8b 15 fa e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4fa]        # 0x2989c6281f89
    2989c6283a8f:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c6283a94:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    2989c6283a98:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6283a9c:	e8 17 9b ef ff                                  	call   0x2989c617d5b8
    2989c6283aa1:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6283aa5:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6283aaa:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6283aaf:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c6283ab3:	0f 87 09 00 00 00                               	ja     0x2989c6283ac2
    2989c6283ab9:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    2989c6283abd:	e9 04 00 00 00                                  	jmp    0x2989c6283ac6
    2989c6283ac2:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6283ac6:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6283aca:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6283ace:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    2989c6283ad8:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    2989c6283adc:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6283ae0:	c4 21 42 59 84 07 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x100]
    2989c6283aea:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c6283aef:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    2989c6283af9:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    2989c6283b03:	c4 21 42 59 84 07 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [rdi+r8*1+0x104]
    2989c6283b0d:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c6283b12:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    2989c6283b1c:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    2989c6283b26:	c4 a1 42 59 b4 07 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [rdi+r8*1+0x108]
    2989c6283b30:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c6283b34:	c4 a1 7a 11 ac 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm5
    2989c6283b3e:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    2989c6283b48:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    2989c6283b52:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c6283b59:	0f 85 da 0a 00 00                               	jne    0x2989c6284639
    2989c6283b5f:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    2989c6283b64:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    2989c6283b6a:	0f 85 8e 0a 00 00                               	jne    0x2989c62845fe
    2989c6283b70:	4c 8b 15 db fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbdb]        # 0x2989c6283752
    2989c6283b77:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6283b7c:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c6283b80:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c6283b84:	c4 a1 7a 6f b4 0f 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1+0x280]
    2989c6283b8e:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    2989c6283b92:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    2989c6283b97:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    2989c6283b9b:	4c 8b 15 b0 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb0]        # 0x2989c6283752
    2989c6283ba2:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6283ba7:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6283bab:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    2989c6283bb0:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    2989c6283bb4:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c6283bb8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6283bbd:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    2989c6283bc7:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6283bcc:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6283bd0:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6283bd4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    2989c6283bde:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6283be3:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6283be7:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6283beb:	49 ba 40 b9 f4 10 58 57 00 00                   	movabs r10,0x575810f4b940
    2989c6283bf5:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c6283bfa:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    2989c6283bff:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c6283c05:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    2989c6283c09:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    2989c6283c0e:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    2989c6283c18:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6283c1d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6283c21:	4c 8b 15 6d d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd56d]        # 0x2989c6281195
    2989c6283c28:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6283c2d:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    2989c6283c37:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6283c3c:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c6283c41:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    2989c6283c47:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    2989c6283c4b:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    2989c6283c4f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6283c54:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    2989c6283c59:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    2989c6283c5d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6283c62:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    2989c6283c66:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    2989c6283c6b:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c6283c71:	44 03 da                                        	add    r11d,edx
    2989c6283c74:	47 8d 24 1b                                     	lea    r12d,[r11+r11*1]
    2989c6283c78:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    2989c6283c7d:	47 8d 1c df                                     	lea    r11d,[r15+r11*8]
    2989c6283c81:	83 bd 28 fe ff ff 03                            	cmp    DWORD PTR [rbp-0x1d8],0x3
    2989c6283c88:	0f 84 8b 00 00 00                               	je     0x2989c6283d19
    2989c6283c8e:	44 8b bd 28 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d8]
    2989c6283c95:	41 83 e7 01                                     	and    r15d,0x1
    2989c6283c99:	41 f7 df                                        	neg    r15d
    2989c6283c9c:	c4 c3 51 22 ef 00                               	vpinsrd xmm5,xmm5,r15d,0x0
    2989c6283ca2:	44 8b bd 28 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d8]
    2989c6283ca9:	41 c1 e7 1e                                     	shl    r15d,0x1e
    2989c6283cad:	41 c1 ff 1f                                     	sar    r15d,0x1f
    2989c6283cb1:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    2989c6283cb7:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    2989c6283cbc:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    2989c6283cc2:	0f 84 39 00 00 00                               	je     0x2989c6283d01
    2989c6283cc8:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    2989c6283ccd:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    2989c6283cd3:	0f 84 28 00 00 00                               	je     0x2989c6283d01
    2989c6283cd9:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c6283cde:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    2989c6283ce2:	c4 a1 7b 10 34 0f                               	vmovsd xmm6,QWORD PTR [rdi+r9*1]
    2989c6283ce8:	c4 a1 7b 10 3c 27                               	vmovsd xmm7,QWORD PTR [rdi+r12*1]
    2989c6283cee:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    2989c6283cf2:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    2989c6283cf6:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6283cfb:	c4 a1 78 13 34 27                               	vmovlps QWORD PTR [rdi+r12*1],xmm6
    2989c6283d01:	c4 a1 7b 10 34 1f                               	vmovsd xmm6,QWORD PTR [rdi+r11*1]
    2989c6283d07:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    2989c6283d0b:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c6283d0f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6283d14:	e9 33 00 00 00                                  	jmp    0x2989c6283d4c
    2989c6283d19:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    2989c6283d1e:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    2989c6283d24:	0f 84 22 00 00 00                               	je     0x2989c6283d4c
    2989c6283d2a:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    2989c6283d2f:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    2989c6283d35:	0f 84 11 00 00 00                               	je     0x2989c6283d4c
    2989c6283d3b:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c6283d40:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    2989c6283d44:	4e 8b 3c 0f                                     	mov    r15,QWORD PTR [rdi+r9*1]
    2989c6283d48:	4e 89 3c 27                                     	mov    QWORD PTR [rdi+r12*1],r15
    2989c6283d4c:	c4 a1 78 13 04 1f                               	vmovlps QWORD PTR [rdi+r11*1],xmm0
    2989c6283d52:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    2989c6283d57:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    2989c6283d5d:	0f 84 27 09 00 00                               	je     0x2989c628468a
    2989c6283d63:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    2989c6283d68:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    2989c6283d6e:	0f 84 16 09 00 00                               	je     0x2989c628468a
    2989c6283d74:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    2989c6283d79:	42 83 7c 07 14 02                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x2
    2989c6283d7f:	0f 85 05 09 00 00                               	jne    0x2989c628468a
    2989c6283d85:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    2989c6283d8a:	45 85 db                                        	test   r11d,r11d
    2989c6283d8d:	0f 84 f7 08 00 00                               	je     0x2989c628468a
    2989c6283d93:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    2989c6283d97:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    2989c6283d9b:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    2989c6283da0:	0f 84 e4 08 00 00                               	je     0x2989c628468a
    2989c6283da6:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    2989c6283daa:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    2989c6283dae:	41 83 eb 3c                                     	sub    r11d,0x3c
    2989c6283db2:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    2989c6283db6:	44 8b fa                                        	mov    r15d,edx
    2989c6283db9:	41 c1 ef 02                                     	shr    r15d,0x2
    2989c6283dbd:	45 0f af fb                                     	imul   r15d,r11d
    2989c6283dc1:	41 c1 e7 04                                     	shl    r15d,0x4
    2989c6283dc5:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    2989c6283dc9:	44 8b a5 08 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2f8]
    2989c6283dd0:	45 03 dc                                        	add    r11d,r12d
    2989c6283dd3:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    2989c6283dd8:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    2989c6283ddf:	33 c0                                           	xor    eax,eax
    2989c6283de1:	45 85 ff                                        	test   r15d,r15d
    2989c6283de4:	0f 94 c0                                        	sete   al
    2989c6283de7:	41 83 ff 02                                     	cmp    r15d,0x2
    2989c6283deb:	41 0f 94 c7                                     	sete   r15b
    2989c6283def:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c6283df3:	44 0b f8                                        	or     r15d,eax
    2989c6283df6:	0f 85 0d 00 00 00                               	jne    0x2989c6283e09
    2989c6283dfc:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    2989c6283e04:	e9 81 08 00 00                                  	jmp    0x2989c628468a
    2989c6283e09:	44 8b bd 28 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d8]
    2989c6283e10:	8b c2                                           	mov    eax,edx
    2989c6283e12:	83 e0 03                                        	and    eax,0x3
    2989c6283e15:	8b 9d 90 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x370]
    2989c6283e1b:	0b d8                                           	or     ebx,eax
    2989c6283e1d:	8d 04 1b                                        	lea    eax,[rbx+rbx*1]
    2989c6283e20:	83 e0 3f                                        	and    eax,0x3f
    2989c6283e23:	8b c8                                           	mov    ecx,eax
    2989c6283e25:	49 d3 e7                                        	shl    r15,cl
    2989c6283e28:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    2989c6283e2c:	bb ff ff ff ff                                  	mov    ebx,0xffffffff
    2989c6283e31:	48 3b c3                                        	cmp    rax,rbx
    2989c6283e34:	0f 84 e2 03 00 00                               	je     0x2989c628421c
    2989c6283e3a:	49 0b c7                                        	or     rax,r15
    2989c6283e3d:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    2989c6283e41:	48 3b d8                                        	cmp    rbx,rax
    2989c6283e44:	0f 85 40 08 00 00                               	jne    0x2989c628468a
    2989c6283e4a:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c6283e4f:	8b c2                                           	mov    eax,edx
    2989c6283e51:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    2989c6283e56:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    2989c6283e5a:	8b cb                                           	mov    ecx,ebx
    2989c6283e5c:	0f af 8d 58 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3a8]
    2989c6283e63:	03 c8                                           	add    ecx,eax
    2989c6283e65:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c6283e69:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c6283e6f:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c6283e74:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    2989c6283e79:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c6283e7e:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c6283e82:	8b cb                                           	mov    ecx,ebx
    2989c6283e84:	0f af 8d 28 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x3d8]
    2989c6283e8b:	03 c8                                           	add    ecx,eax
    2989c6283e8d:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c6283e91:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c6283e97:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c6283e9c:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c6283ea1:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    2989c6283ea6:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c6283eac:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c6283eb1:	8b cb                                           	mov    ecx,ebx
    2989c6283eb3:	0f af 8d f8 fb ff ff                            	imul   ecx,DWORD PTR [rbp-0x408]
    2989c6283eba:	03 c8                                           	add    ecx,eax
    2989c6283ebc:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c6283ec0:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c6283ec6:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c6283ecc:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c6283ed1:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    2989c6283ed6:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c6283edc:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c6283ee1:	0f af 9d 70 fc ff ff                            	imul   ebx,DWORD PTR [rbp-0x390]
    2989c6283ee8:	03 c3                                           	add    eax,ebx
    2989c6283eea:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    2989c6283eee:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    2989c6283ef5:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c6283efb:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c6283f00:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    2989c6283f06:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c6283f0c:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c6283f11:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c6283f16:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c6283f1b:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    2989c6283f1f:	41 83 ff 0f                                     	cmp    r15d,0xf
    2989c6283f23:	0f 84 0e 00 00 00                               	je     0x2989c6283f37
    2989c6283f29:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    2989c6283f32:	e9 53 07 00 00                                  	jmp    0x2989c628468a
    2989c6283f37:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    2989c6283f41:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6283f46:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    2989c6283f50:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6283f56:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    2989c6283f60:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6283f65:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    2989c6283f6f:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c6283f75:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    2989c6283f7f:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c6283f84:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    2989c6283f8e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c6283f94:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    2989c6283f9e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6283fa3:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    2989c6283fad:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c6283fb3:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    2989c6283fbd:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c6283fc2:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    2989c6283fcc:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c6283fd2:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    2989c6283fdc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6283fe1:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    2989c6283feb:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c6283ff1:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    2989c6283ffb:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c6284000:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    2989c628400a:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6284010:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c6284015:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6284019:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c628401e:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c6284023:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    2989c628402d:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6284033:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c6284038:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    2989c6284042:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6284047:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c628404b:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c6284050:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c6284056:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c628405b:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c628405f:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c6284063:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c6284067:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628406c:	4c 8b 15 c7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc7]        # 0x2989c628403a
    2989c6284073:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6284078:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c628407d:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c6284082:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6284086:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628408b:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c6284091:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c6284095:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c628409a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628409f:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c62840a3:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c62840a8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62840ad:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c62840b3:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c62840b7:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c62840bc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62840c1:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c62840c5:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c62840ca:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62840cf:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c62840d5:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c62840d9:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c62840de:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62840e3:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c62840e7:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c62840ec:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62840f1:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c62840f7:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c62840fb:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c6284100:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284105:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c6284109:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c628410e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6284113:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c6284118:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c628411c:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c6284121:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284126:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c628412a:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c628412f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6284134:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6284139:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c628413e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6284142:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6284146:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628414b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c628414f:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6284153:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6284158:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c628415d:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6284162:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6284167:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c628416b:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c628416f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284174:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    2989c628417e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6284182:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6284186:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628418b:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    2989c6284195:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c6284199:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c628419d:	45 33 ff                                        	xor    r15d,r15d
    2989c62841a0:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c62841a4:	41 0f 97 c7                                     	seta   r15b
    2989c62841a8:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    2989c62841af:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    2989c62841b7:	0b d8                                           	or     ebx,eax
    2989c62841b9:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    2989c62841be:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c62841c3:	bb 02 00 00 00                                  	mov    ebx,0x2
    2989c62841c8:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62841cc:	44 0f 47 fb                                     	cmova  r15d,ebx
    2989c62841d0:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    2989c62841d8:	0b c8                                           	or     ecx,eax
    2989c62841da:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    2989c62841df:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c62841e4:	be 03 00 00 00                                  	mov    esi,0x3
    2989c62841e9:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62841ed:	44 0f 47 fe                                     	cmova  r15d,esi
    2989c62841f1:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c62841f5:	41 0b c7                                        	or     eax,r15d
    2989c62841f8:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    2989c62841fd:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    2989c6284204:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    2989c628420b:	44 0b f8                                        	or     r15d,eax
    2989c628420e:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    2989c6284212:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    2989c6284217:	e9 6e 04 00 00                                  	jmp    0x2989c628468a
    2989c628421c:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    2989c6284221:	8b d8                                           	mov    ebx,eax
    2989c6284223:	83 e3 3f                                        	and    ebx,0x3f
    2989c6284226:	8b cb                                           	mov    ecx,ebx
    2989c6284228:	49 d3 ef                                        	shr    r15,cl
    2989c628422b:	41 f6 c7 01                                     	test   r15b,0x1
    2989c628422f:	0f 84 55 04 00 00                               	je     0x2989c628468a
    2989c6284235:	83 e0 01                                        	and    eax,0x1
    2989c6284238:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    2989c6284240:	45 0b f9                                        	or     r15d,r9d
    2989c6284243:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    2989c6284249:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    2989c6284250:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6284254:	0f 86 30 04 00 00                               	jbe    0x2989c628468a
    2989c628425a:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    2989c628425f:	8b c2                                           	mov    eax,edx
    2989c6284261:	25 fc ff ff 1f                                  	and    eax,0x1ffffffc
    2989c6284266:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    2989c628426a:	8b 8d 58 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3a8]
    2989c6284270:	0f af cb                                        	imul   ecx,ebx
    2989c6284273:	03 c8                                           	add    ecx,eax
    2989c6284275:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c6284279:	c5 fa 6f 44 0f 10                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c628427f:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c6284284:	c5 fa 6f 34 0f                                  	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1]
    2989c6284289:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c628428e:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c6284292:	8b 8d 28 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3d8]
    2989c6284298:	0f af cb                                        	imul   ecx,ebx
    2989c628429b:	03 c8                                           	add    ecx,eax
    2989c628429d:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c62842a1:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62842a7:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c62842ac:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c62842b1:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    2989c62842b6:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c62842bc:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c62842c1:	8b 8d f8 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x408]
    2989c62842c7:	0f af cb                                        	imul   ecx,ebx
    2989c62842ca:	03 c8                                           	add    ecx,eax
    2989c62842cc:	41 8d 0c cf                                     	lea    ecx,[r15+rcx*8]
    2989c62842d0:	c5 7a 6f 4c 0f 10                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x10]
    2989c62842d6:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c62842dc:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c62842e1:	c5 7a 6f 14 0f                                  	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1]
    2989c62842e6:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c62842ec:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c62842f1:	8b 8d 70 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x390]
    2989c62842f7:	0f af cb                                        	imul   ecx,ebx
    2989c62842fa:	03 c1                                           	add    eax,ecx
    2989c62842fc:	45 8d 3c c7                                     	lea    r15d,[r15+rax*8]
    2989c6284300:	c4 21 7a 6f 5c 3f 10                            	vmovdqu xmm11,XMMWORD PTR [rdi+r15*1+0x10]
    2989c6284307:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c628430d:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c6284312:	c4 21 7a 6f 24 3f                               	vmovdqu xmm12,XMMWORD PTR [rdi+r15*1]
    2989c6284318:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c628431e:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c6284323:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c6284328:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c628432d:	c5 78 50 fd                                     	vmovmskps r15d,xmm5
    2989c6284331:	41 83 ff 0f                                     	cmp    r15d,0xf
    2989c6284335:	0f 84 0e 00 00 00                               	je     0x2989c6284349
    2989c628433b:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    2989c6284344:	e9 41 03 00 00                                  	jmp    0x2989c628468a
    2989c6284349:	4c 8b 15 e9 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe9]        # 0x2989c6283f39
    2989c6284350:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6284355:	4c 8b 15 ec fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbec]        # 0x2989c6283f48
    2989c628435c:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6284362:	4c 8b 15 ef fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbef]        # 0x2989c6283f58
    2989c6284369:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c628436e:	4c 8b 15 f2 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf2]        # 0x2989c6283f67
    2989c6284375:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c628437b:	4c 8b 15 f5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf5]        # 0x2989c6283f77
    2989c6284382:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c6284387:	4c 8b 15 f8 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf8]        # 0x2989c6283f86
    2989c628438e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c6284394:	4c 8b 15 fb fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfb]        # 0x2989c6283f96
    2989c628439b:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c62843a0:	4c 8b 15 fe fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbfe]        # 0x2989c6283fa5
    2989c62843a7:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c62843ad:	4c 8b 15 01 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc01]        # 0x2989c6283fb5
    2989c62843b4:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c62843b9:	4c 8b 15 04 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc04]        # 0x2989c6283fc4
    2989c62843c0:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c62843c6:	4c 8b 15 07 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc07]        # 0x2989c6283fd4
    2989c62843cd:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62843d2:	4c 8b 15 0a fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0a]        # 0x2989c6283fe3
    2989c62843d9:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c62843df:	4c 8b 15 0d fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc0d]        # 0x2989c6283ff3
    2989c62843e6:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c62843eb:	4c 8b 15 10 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc10]        # 0x2989c6284002
    2989c62843f2:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c62843f8:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c62843fd:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6284401:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c6284406:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c628440b:	4c 8b 15 13 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc13]        # 0x2989c6284025
    2989c6284412:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6284418:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c628441d:	4c 8b 15 16 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc16]        # 0x2989c628403a
    2989c6284424:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6284429:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c628442d:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c6284432:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c6284438:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c628443d:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c6284441:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c6284445:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c6284449:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628444e:	4c 8b 15 e5 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe5]        # 0x2989c628403a
    2989c6284455:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c628445a:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c628445f:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c6284464:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6284468:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628446d:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c6284473:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c6284477:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c628447c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284481:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c6284485:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c628448a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628448f:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c6284495:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c6284499:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c628449e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62844a3:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c62844a7:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c62844ac:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62844b1:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c62844b7:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c62844bb:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c62844c0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62844c5:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c62844c9:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c62844ce:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62844d3:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c62844d9:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c62844dd:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c62844e2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62844e7:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c62844eb:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c62844f0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62844f5:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c62844fa:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c62844fe:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c6284503:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284508:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c628450c:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c6284511:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6284516:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c628451b:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c6284520:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6284524:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6284528:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628452d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6284531:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6284535:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628453a:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c628453f:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6284544:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6284549:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c628454d:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6284551:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284556:	c4 a1 7a 7f ac 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm5
    2989c6284560:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6284564:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6284568:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628456d:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    2989c6284577:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c628457b:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c628457f:	45 33 ff                                        	xor    r15d,r15d
    2989c6284582:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c6284586:	41 0f 97 c7                                     	seta   r15b
    2989c628458a:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    2989c6284591:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    2989c6284599:	0b d8                                           	or     ebx,eax
    2989c628459b:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    2989c62845a0:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c62845a5:	bb 02 00 00 00                                  	mov    ebx,0x2
    2989c62845aa:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62845ae:	44 0f 47 fb                                     	cmova  r15d,ebx
    2989c62845b2:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    2989c62845ba:	0b c8                                           	or     ecx,eax
    2989c62845bc:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    2989c62845c1:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c62845c6:	b9 03 00 00 00                                  	mov    ecx,0x3
    2989c62845cb:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62845cf:	44 0f 47 f9                                     	cmova  r15d,ecx
    2989c62845d3:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c62845d7:	41 0b c7                                        	or     eax,r15d
    2989c62845da:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    2989c62845df:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    2989c62845e6:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    2989c62845ed:	44 0b f8                                        	or     r15d,eax
    2989c62845f0:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    2989c62845f4:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    2989c62845f9:	e9 8c 00 00 00                                  	jmp    0x2989c628468a
    2989c62845fe:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    2989c6284605:	41 53                                           	push   r11
    2989c6284607:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628460b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c628460e:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c6284614:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6284617:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    2989c628461d:	e8 46 6c ef ff                                  	call   0x2989c617b268
    2989c6284622:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c6284628:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c628462c:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6284630:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6284634:	e9 51 00 00 00                                  	jmp    0x2989c628468a
    2989c6284639:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    2989c6284640:	41 53                                           	push   r11
    2989c6284642:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6284646:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6284649:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c628464f:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6284652:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    2989c6284658:	e8 fb 6b ef ff                                  	call   0x2989c617b258
    2989c628465d:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c6284663:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6284667:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c628466b:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c628466f:	e9 16 00 00 00                                  	jmp    0x2989c628468a
    2989c6284674:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    2989c628467b:	44 8b cf                                        	mov    r9d,edi
    2989c628467e:	48 8b f8                                        	mov    rdi,rax
    2989c6284681:	4c 8b c1                                        	mov    r8,rcx
    2989c6284684:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c628468a:	48 c7 85 28 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x1
    2989c6284695:	44 8b da                                        	mov    r11d,edx
    2989c6284698:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c628469e:	48 8b c7                                        	mov    rax,rdi
    2989c62846a1:	41 8b f9                                        	mov    edi,r9d
    2989c62846a4:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c62846a8:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c62846ad:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c62846b2:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c62846b6:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    2989c62846be:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    2989c62846c5:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    2989c62846cc:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    2989c62846d4:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    2989c62846dc:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    2989c62846e4:	e9 52 3a 00 00                                  	jmp    0x2989c628813b
    2989c62846e9:	44 8b 7c 38 18                                  	mov    r15d,DWORD PTR [rax+rdi*1+0x18]
    2989c62846ee:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    2989c62846f2:	89 54 38 18                                     	mov    DWORD PTR [rax+rdi*1+0x18],edx
    2989c62846f6:	8b 95 68 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x198]
    2989c62846fc:	42 8d 34 ba                                     	lea    esi,[rdx+r15*4]
    2989c6284700:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c6284706:	89 14 30                                        	mov    DWORD PTR [rax+rsi*1],edx
    2989c6284709:	42 8d 74 bf 2c                                  	lea    esi,[rdi+r15*4+0x2c]
    2989c628470e:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6284711:	89 0c 30                                        	mov    DWORD PTR [rax+rsi*1],ecx
    2989c6284714:	42 8d 74 bf 3c                                  	lea    esi,[rdi+r15*4+0x3c]
    2989c6284719:	44 89 24 30                                     	mov    DWORD PTR [rax+rsi*1],r12d
    2989c628471d:	46 8d 64 ff 50                                  	lea    r12d,[rdi+r15*8+0x50]
    2989c6284722:	4a 89 1c 20                                     	mov    QWORD PTR [rax+r12*1],rbx
    2989c6284726:	46 8d 64 ff 70                                  	lea    r12d,[rdi+r15*8+0x70]
    2989c628472b:	4e 89 1c 20                                     	mov    QWORD PTR [rax+r12*1],r11
    2989c628472f:	41 c1 e7 04                                     	shl    r15d,0x4
    2989c6284733:	44 8b 9d 70 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x90]
    2989c628473a:	47 8d 24 1f                                     	lea    r12d,[r15+r11*1]
    2989c628473e:	4c 8b 3c 38                                     	mov    r15,QWORD PTR [rax+rdi*1]
    2989c6284742:	4e 89 3c 20                                     	mov    QWORD PTR [rax+r12*1],r15
    2989c6284746:	44 8b 64 38 18                                  	mov    r12d,DWORD PTR [rax+rdi*1+0x18]
    2989c628474b:	83 7c 38 18 04                                  	cmp    DWORD PTR [rax+rdi*1+0x18],0x4
    2989c6284750:	0f 84 37 00 00 00                               	je     0x2989c628478d
    2989c6284756:	48 c7 85 28 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x1
    2989c6284761:	44 8b da                                        	mov    r11d,edx
    2989c6284764:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c628476a:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    2989c6284771:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    2989c6284778:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    2989c6284780:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    2989c6284788:	e9 ae 39 00 00                                  	jmp    0x2989c628813b
    2989c628478d:	c5 fa 6f 44 38 50                               	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x50]
    2989c6284793:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    2989c6284799:	c4 c1 82 2a ec                                  	vcvtsi2ss xmm5,xmm15,r12
    2989c628479e:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    2989c62847a3:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    2989c62847a9:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    2989c62847ae:	c4 e3 51 21 e8 10                               	vinsertps xmm5,xmm5,xmm0,0x10
    2989c62847b4:	c5 fa 6f 44 38 60                               	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x60]
    2989c62847ba:	c4 c3 f9 16 c4 00                               	vpextrq r12,xmm0,0x0
    2989c62847c0:	c4 41 82 2a c4                                  	vcvtsi2ss xmm8,xmm15,r12
    2989c62847c5:	c4 c3 51 21 e8 20                               	vinsertps xmm5,xmm5,xmm8,0x20
    2989c62847cb:	c4 c3 f9 16 c4 01                               	vpextrq r12,xmm0,0x1
    2989c62847d1:	c4 c1 82 2a c4                                  	vcvtsi2ss xmm0,xmm15,r12
    2989c62847d6:	c4 e3 51 21 e8 30                               	vinsertps xmm5,xmm5,xmm0,0x30
    2989c62847dc:	c5 f8 10 85 10 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3f0]
    2989c62847e4:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    2989c62847e8:	4c 8d 60 1c                                     	lea    r12,[rax+0x1c]
    2989c62847ec:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    2989c62847f3:	c4 02 79 18 04 3c                               	vbroadcastss xmm8,DWORD PTR [r12+r15*1]
    2989c62847f9:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    2989c62847fe:	c5 7a 6f 4c 38 70                               	vmovdqu xmm9,XMMWORD PTR [rax+rdi*1+0x70]
    2989c6284804:	c4 63 f9 16 cb 00                               	vpextrq rbx,xmm9,0x0
    2989c628480a:	c4 61 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,rbx
    2989c628480f:	c4 42 79 18 d2                                  	vbroadcastss xmm10,xmm10
    2989c6284814:	c4 63 f9 16 cb 01                               	vpextrq rbx,xmm9,0x1
    2989c628481a:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    2989c628481f:	c4 43 29 21 d1 10                               	vinsertps xmm10,xmm10,xmm9,0x10
    2989c6284825:	c5 7a 6f 8c 38 80 00 00 00                      	vmovdqu xmm9,XMMWORD PTR [rax+rdi*1+0x80]
    2989c628482e:	c4 63 f9 16 cb 00                               	vpextrq rbx,xmm9,0x0
    2989c6284834:	c4 61 82 2a db                                  	vcvtsi2ss xmm11,xmm15,rbx
    2989c6284839:	c4 43 29 21 d3 20                               	vinsertps xmm10,xmm10,xmm11,0x20
    2989c628483f:	c4 63 f9 16 cb 01                               	vpextrq rbx,xmm9,0x1
    2989c6284845:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    2989c628484a:	c4 43 29 21 d1 30                               	vinsertps xmm10,xmm10,xmm9,0x30
    2989c6284850:	c4 41 78 59 ca                                  	vmulps xmm9,xmm0,xmm10
    2989c6284855:	49 8b d9                                        	mov    rbx,r9
    2989c6284858:	c4 42 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+rbx*1]
    2989c628485e:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    2989c6284863:	c4 41 38 58 da                                  	vaddps xmm11,xmm8,xmm10
    2989c6284868:	4c 8b 15 e3 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeee3]        # 0x2989c6283752
    2989c628486f:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c6284874:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c6284879:	c5 98 5c ed                                     	vsubps xmm5,xmm12,xmm5
    2989c628487d:	c4 c1 50 5c e9                                  	vsubps xmm5,xmm5,xmm9
    2989c6284882:	c4 02 79 18 0c 04                               	vbroadcastss xmm9,DWORD PTR [r12+r8*1]
    2989c6284888:	c4 c1 50 59 e9                                  	vmulps xmm5,xmm5,xmm9
    2989c628488d:	c5 20 58 cd                                     	vaddps xmm9,xmm11,xmm5
    2989c6284891:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c6284896:	c4 41 30 c2 eb 02                               	vcmpleps xmm13,xmm9,xmm11
    2989c628489c:	c4 41 78 50 e5                                  	vmovmskps r12d,xmm13
    2989c62848a1:	41 8b f4                                        	mov    esi,r12d
    2989c62848a4:	83 f6 0f                                        	xor    esi,0xf
    2989c62848a7:	c5 78 11 a5 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm12
    2989c62848af:	c5 78 11 9d 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm11
    2989c62848b7:	48 89 b5 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rsi
    2989c62848be:	41 83 fc 0f                                     	cmp    r12d,0xf
    2989c62848c2:	0f 84 17 2c 00 00                               	je     0x2989c62874df
    2989c62848c8:	c4 41 18 5e c9                                  	vdivps xmm9,xmm12,xmm9
    2989c62848cd:	4c 8d 48 2c                                     	lea    r9,[rax+0x2c]
    2989c62848d1:	c4 02 79 18 2c 39                               	vbroadcastss xmm13,DWORD PTR [r9+r15*1]
    2989c62848d7:	c4 41 38 59 ed                                  	vmulps xmm13,xmm8,xmm13
    2989c62848dc:	c4 42 79 18 34 19                               	vbroadcastss xmm14,DWORD PTR [r9+rbx*1]
    2989c62848e2:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    2989c62848e7:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    2989c62848ec:	c4 02 79 18 34 01                               	vbroadcastss xmm14,DWORD PTR [r9+r8*1]
    2989c62848f2:	c4 41 50 59 f6                                  	vmulps xmm14,xmm5,xmm14
    2989c62848f7:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    2989c62848fc:	c4 41 30 59 ed                                  	vmulps xmm13,xmm9,xmm13
    2989c6284901:	4c 8d 48 28                                     	lea    r9,[rax+0x28]
    2989c6284905:	c4 02 79 18 34 39                               	vbroadcastss xmm14,DWORD PTR [r9+r15*1]
    2989c628490b:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    2989c6284910:	c4 c2 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+rbx*1]
    2989c6284916:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    2989c628491a:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    2989c628491e:	c4 82 79 18 0c 01                               	vbroadcastss xmm1,DWORD PTR [r9+r8*1]
    2989c6284924:	c5 d0 59 c9                                     	vmulps xmm1,xmm5,xmm1
    2989c6284928:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    2989c628492c:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    2989c6284931:	4c 8d 48 24                                     	lea    r9,[rax+0x24]
    2989c6284935:	c4 82 79 18 0c 39                               	vbroadcastss xmm1,DWORD PTR [r9+r15*1]
    2989c628493b:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    2989c628493f:	c4 c2 79 18 14 19                               	vbroadcastss xmm2,DWORD PTR [r9+rbx*1]
    2989c6284945:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    2989c6284949:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c628494d:	c4 82 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [r9+r8*1]
    2989c6284953:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c6284957:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c628495b:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    2989c628495f:	4c 8d 48 20                                     	lea    r9,[rax+0x20]
    2989c6284963:	c4 82 79 18 14 39                               	vbroadcastss xmm2,DWORD PTR [r9+r15*1]
    2989c6284969:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c628496d:	c4 c2 79 18 04 19                               	vbroadcastss xmm0,DWORD PTR [r9+rbx*1]
    2989c6284973:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    2989c6284977:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    2989c628497b:	c4 82 79 18 14 01                               	vbroadcastss xmm2,DWORD PTR [r9+r8*1]
    2989c6284981:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c6284985:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    2989c6284989:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c628498d:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    2989c6284994:	46 8b 84 08 34 01 00 00                         	mov    r8d,DWORD PTR [rax+r9*1+0x134]
    2989c628499c:	41 83 e8 01                                     	sub    r8d,0x1
    2989c62849a0:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c62849a4:	0f 86 12 17 00 00                               	jbe    0x2989c62860bc
    2989c62849aa:	46 8b 84 08 38 01 00 00                         	mov    r8d,DWORD PTR [rax+r9*1+0x138]
    2989c62849b2:	42 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [rax+r9*1+0x138],0x0
    2989c62849bb:	0f 85 0f 00 00 00                               	jne    0x2989c62849d0
    2989c62849c1:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    2989c62849c6:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    2989c62849cb:	e9 6c 2a 00 00                                  	jmp    0x2989c628743c
    2989c62849d0:	44 8b c6                                        	mov    r8d,esi
    2989c62849d3:	41 83 e0 04                                     	and    r8d,0x4
    2989c62849d7:	44 8b de                                        	mov    r11d,esi
    2989c62849da:	41 83 e3 02                                     	and    r11d,0x2
    2989c62849de:	44 8b fe                                        	mov    r15d,esi
    2989c62849e1:	41 83 e7 01                                     	and    r15d,0x1
    2989c62849e5:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    2989c62849ea:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    2989c62849ef:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    2989c62849f4:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    2989c62849fc:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    2989c6284a03:	c5 78 11 8d d0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x330],xmm9
    2989c6284a0b:	c5 f8 11 ad c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm5
    2989c6284a13:	c5 78 11 95 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm10
    2989c6284a1b:	c5 78 11 85 a0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x360],xmm8
    2989c6284a23:	4c 89 a5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r12
    2989c6284a2a:	4c 89 85 e8 fb ff ff                            	mov    QWORD PTR [rbp-0x418],r8
    2989c6284a31:	4c 89 9d 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],r11
    2989c6284a38:	4c 89 bd 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],r15
    2989c6284a3f:	45 33 db                                        	xor    r11d,r11d
    2989c6284a42:	e9 58 00 00 00                                  	jmp    0x2989c6284a9f
    2989c6284a47:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6284a50:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6284a59:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6284a62:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6284a6b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6284a74:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6284a7d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    2989c6284a80:	c5 f8 10 ad c0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x340]
    2989c6284a88:	c5 78 10 8d d0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x330]
    2989c6284a90:	4c 8b 8d 28 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1d8]
    2989c6284a97:	c5 78 10 9d 50 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2b0]
    2989c6284a9f:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    2989c6284aa6:	8b 8d 98 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x168]
    2989c6284aac:	8b 95 90 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x170]
    2989c6284ab2:	8b 9d 88 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x178]
    2989c6284ab8:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    2989c6284abf:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6284ac4:	0f 85 f5 51 00 00                               	jne    0x2989c6289cbf
    2989c6284aca:	42 8b b4 08 3c 01 00 00                         	mov    esi,DWORD PTR [rax+r9*1+0x13c]
    2989c6284ad2:	44 8b c9                                        	mov    r9d,ecx
    2989c6284ad5:	41 8b cb                                        	mov    ecx,r11d
    2989c6284ad8:	d3 ee                                           	shr    esi,cl
    2989c6284ada:	40 f6 c6 01                                     	test   sil,0x1
    2989c6284ade:	0f 85 2a 00 00 00                               	jne    0x2989c6284b0e
    2989c6284ae4:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    2989c6284aea:	41 8b f3                                        	mov    esi,r11d
    2989c6284aed:	c1 e6 06                                        	shl    esi,0x6
    2989c6284af0:	03 ce                                           	add    ecx,esi
    2989c6284af2:	c5 7a 7f 64 08 30                               	vmovdqu XMMWORD PTR [rax+rcx*1+0x30],xmm12
    2989c6284af8:	c5 7a 7f 64 08 20                               	vmovdqu XMMWORD PTR [rax+rcx*1+0x20],xmm12
    2989c6284afe:	c5 7a 7f 64 08 10                               	vmovdqu XMMWORD PTR [rax+rcx*1+0x10],xmm12
    2989c6284b04:	c5 7a 7f 24 08                                  	vmovdqu XMMWORD PTR [rax+rcx*1],xmm12
    2989c6284b09:	e9 75 12 00 00                                  	jmp    0x2989c6285d83
    2989c6284b0e:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    2989c6284b14:	41 8b f3                                        	mov    esi,r11d
    2989c6284b17:	c1 e6 06                                        	shl    esi,0x6
    2989c6284b1a:	03 f1                                           	add    esi,ecx
    2989c6284b1c:	41 6b cb 4c                                     	imul   ecx,r11d,0x4c
    2989c6284b20:	41 03 cf                                        	add    ecx,r15d
    2989c6284b23:	44 8b 5c 08 38                                  	mov    r11d,DWORD PTR [rax+rcx*1+0x38]
    2989c6284b28:	83 7c 08 38 00                                  	cmp    DWORD PTR [rax+rcx*1+0x38],0x0
    2989c6284b2d:	0f 85 04 12 00 00                               	jne    0x2989c6285d37
    2989c6284b33:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    2989c6284b3a:	41 c1 e3 04                                     	shl    r11d,0x4
    2989c6284b3e:	45 8d 3c 13                                     	lea    r15d,[r11+rdx*1]
    2989c6284b42:	48 8d 50 04                                     	lea    rdx,[rax+0x4]
    2989c6284b46:	c4 a2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+r15*1]
    2989c6284b4c:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c6284b50:	43 8d 3c 19                                     	lea    edi,[r9+r11*1]
    2989c6284b54:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    2989c6284b5a:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    2989c6284b5e:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    2989c6284b62:	44 03 db                                        	add    r11d,ebx
    2989c6284b65:	c4 a2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+r11*1]
    2989c6284b6b:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c6284b6f:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    2989c6284b73:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    2989c6284b77:	c4 a2 79 18 04 38                               	vbroadcastss xmm0,DWORD PTR [rax+r15*1]
    2989c6284b7d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6284b81:	c4 e2 79 18 34 38                               	vbroadcastss xmm6,DWORD PTR [rax+rdi*1]
    2989c6284b87:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    2989c6284b8b:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6284b8f:	c4 a2 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [rax+r11*1]
    2989c6284b95:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c6284b99:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6284b9d:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c6284ba1:	8b 14 08                                        	mov    edx,DWORD PTR [rax+rcx*1]
    2989c6284ba4:	83 fa 01                                        	cmp    edx,0x1
    2989c6284ba7:	0f 85 7d 0e 00 00                               	jne    0x2989c6285a2a
    2989c6284bad:	8b 5c 08 28                                     	mov    ebx,DWORD PTR [rax+rcx*1+0x28]
    2989c6284bb1:	85 db                                           	test   ebx,ebx
    2989c6284bb3:	0f 84 71 0e 00 00                               	je     0x2989c6285a2a
    2989c6284bb9:	44 8b 4c 08 1c                                  	mov    r9d,DWORD PTR [rax+rcx*1+0x1c]
    2989c6284bbe:	45 85 c9                                        	test   r9d,r9d
    2989c6284bc1:	0f 8e 63 0e 00 00                               	jle    0x2989c6285a2a
    2989c6284bc7:	48 89 95 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rdx
    2989c6284bce:	8b 54 08 20                                     	mov    edx,DWORD PTR [rax+rcx*1+0x20]
    2989c6284bd2:	85 d2                                           	test   edx,edx
    2989c6284bd4:	0f 8e 4a 0e 00 00                               	jle    0x2989c6285a24
    2989c6284bda:	45 8b d1                                        	mov    r10d,r9d
    2989c6284bdd:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    2989c6284be2:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    2989c6284be7:	8b 7c 08 10                                     	mov    edi,DWORD PTR [rax+rcx*1+0x10]
    2989c6284beb:	45 33 db                                        	xor    r11d,r11d
    2989c6284bee:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    2989c6284bf4:	41 0f 95 c3                                     	setne  r11b
    2989c6284bf8:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    2989c6284bfe:	40 0f 95 c7                                     	setne  dil
    2989c6284c02:	40 0f b6 ff                                     	movzx  edi,dil
    2989c6284c06:	48 89 b5 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rsi
    2989c6284c0d:	41 23 fb                                        	and    edi,r11d
    2989c6284c10:	0f 85 0d 00 00 00                               	jne    0x2989c6284c23
    2989c6284c16:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c6284c1a:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c6284c1e:	e9 0a 00 00 00                                  	jmp    0x2989c6284c2d
    2989c6284c23:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    2989c6284c29:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    2989c6284c2d:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c6284c31:	44 8b d2                                        	mov    r10d,edx
    2989c6284c34:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    2989c6284c39:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    2989c6284c3e:	44 8b 5c 08 14                                  	mov    r11d,DWORD PTR [rax+rcx*1+0x14]
    2989c6284c43:	45 33 ff                                        	xor    r15d,r15d
    2989c6284c46:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    2989c6284c4d:	41 0f 95 c7                                     	setne  r15b
    2989c6284c51:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    2989c6284c58:	41 0f 95 c3                                     	setne  r11b
    2989c6284c5c:	45 0f b6 db                                     	movzx  r11d,r11b
    2989c6284c60:	45 23 df                                        	and    r11d,r15d
    2989c6284c63:	0f 85 0d 00 00 00                               	jne    0x2989c6284c76
    2989c6284c69:	c5 a0 5f fa                                     	vmaxps xmm7,xmm11,xmm2
    2989c6284c6d:	c5 98 5d ff                                     	vminps xmm7,xmm12,xmm7
    2989c6284c71:	e9 0a 00 00 00                                  	jmp    0x2989c6284c80
    2989c6284c76:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    2989c6284c7c:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    2989c6284c80:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6284c84:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    2989c6284c8e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6284c93:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6284c97:	c5 c8 58 d7                                     	vaddps xmm2,xmm6,xmm7
    2989c6284c9b:	44 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [rax+rcx*1+0xc]
    2989c6284ca0:	45 33 ff                                        	xor    r15d,r15d
    2989c6284ca3:	81 7c 08 0c 00 26 00 00                         	cmp    DWORD PTR [rax+rcx*1+0xc],0x2600
    2989c6284cab:	41 0f 94 c7                                     	sete   r15b
    2989c6284caf:	45 85 ff                                        	test   r15d,r15d
    2989c6284cb2:	0f 85 6a 00 00 00                               	jne    0x2989c6284d22
    2989c6284cb8:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    2989c6284cbe:	4c 8b 15 d0 c4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc4d0]        # 0x2989c6281195
    2989c6284cc5:	c4 41 48 54 1a                                  	vandps xmm11,xmm6,XMMWORD PTR [r10]
    2989c6284cca:	4c 8b 15 5e ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef5e]        # 0x2989c6283c2f
    2989c6284cd1:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6284cd6:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c6284cdb:	c4 41 20 c2 dd 01                               	vcmpltps xmm11,xmm11,xmm13
    2989c6284ce1:	4c 8b 15 05 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef05]        # 0x2989c6283bed
    2989c6284ce8:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    2989c6284ced:	c4 41 48 54 f7                                  	vandps xmm14,xmm6,xmm15
    2989c6284cf2:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    2989c6284cf8:	c4 41 7a 5b f6                                  	vcvttps2dq xmm14,xmm14
    2989c6284cfd:	c4 41 09 ef f7                                  	vpxor  xmm14,xmm14,xmm15
    2989c6284d02:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    2989c6284d06:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c6284d0a:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    2989c6284d0e:	c4 c1 79 28 d6                                  	vmovapd xmm2,xmm14
    2989c6284d13:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    2989c6284d18:	c4 41 79 28 eb                                  	vmovapd xmm13,xmm11
    2989c6284d1d:	e9 49 00 00 00                                  	jmp    0x2989c6284d6b
    2989c6284d22:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    2989c6284d28:	4c 8b 15 66 c4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc466]        # 0x2989c6281195
    2989c6284d2f:	c4 41 40 54 2a                                  	vandps xmm13,xmm7,XMMWORD PTR [r10]
    2989c6284d34:	4c 8b 15 f4 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeef4]        # 0x2989c6283c2f
    2989c6284d3b:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c6284d40:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    2989c6284d45:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    2989c6284d4b:	4c 8b 15 9b ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee9b]        # 0x2989c6283bed
    2989c6284d52:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    2989c6284d57:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    2989c6284d5c:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    2989c6284d62:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c6284d66:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c6284d6b:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    2989c6284d71:	4c 8b 15 75 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee75]        # 0x2989c6283bed
    2989c6284d78:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    2989c6284d7e:	c4 c1 20 54 cf                                  	vandps xmm1,xmm11,xmm15
    2989c6284d83:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    2989c6284d89:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    2989c6284d8d:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    2989c6284d92:	4c 8b 15 77 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffee77]        # 0x2989c6283c10
    2989c6284d99:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6284d9e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c6284da2:	4c 8b 15 ec c3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc3ec]        # 0x2989c6281195
    2989c6284da9:	c4 c1 20 54 22                                  	vandps xmm4,xmm11,XMMWORD PTR [r10]
    2989c6284dae:	c4 41 58 c2 f6 01                               	vcmpltps xmm14,xmm4,xmm14
    2989c6284db4:	c5 09 df fb                                     	vpandn xmm15,xmm14,xmm3
    2989c6284db8:	c4 41 71 db f6                                  	vpand  xmm14,xmm1,xmm14
    2989c6284dbd:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    2989c6284dc2:	41 8d 71 ff                                     	lea    esi,[r9-0x1]
    2989c6284dc6:	c5 f9 6e ce                                     	vmovd  xmm1,esi
    2989c6284dca:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c6284dcf:	8b 74 08 2c                                     	mov    esi,DWORD PTR [rax+rcx*1+0x2c]
    2989c6284dd3:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c6284dd7:	c4 e2 09 3d e4                                  	vpmaxsd xmm4,xmm14,xmm4
    2989c6284ddc:	c4 e2 59 39 e1                                  	vpminsd xmm4,xmm4,xmm1
    2989c6284de1:	85 ff                                           	test   edi,edi
    2989c6284de3:	0f 84 5d 00 00 00                               	je     0x2989c6284e46
    2989c6284de9:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    2989c6284ded:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c6284df2:	c5 89 db e4                                     	vpand  xmm4,xmm14,xmm4
    2989c6284df6:	85 f6                                           	test   esi,esi
    2989c6284df8:	0f 85 48 00 00 00                               	jne    0x2989c6284e46
    2989c6284dfe:	c4 c1 79 6e e1                                  	vmovd  xmm4,r9d
    2989c6284e03:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c6284e08:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c6284e0d:	c5 89 66 e9                                     	vpcmpgtd xmm5,xmm14,xmm1
    2989c6284e11:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    2989c6284e15:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6284e1a:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    2989c6284e1f:	c4 41 31 66 ce                                  	vpcmpgtd xmm9,xmm9,xmm14
    2989c6284e24:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6284e28:	c4 c1 59 db e9                                  	vpand  xmm5,xmm4,xmm9
    2989c6284e2d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284e32:	c5 89 fe e5                                     	vpaddd xmm4,xmm14,xmm5
    2989c6284e36:	c5 f8 10 ad c0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x340]
    2989c6284e3e:	c5 78 10 8d d0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x330]
    2989c6284e46:	c5 11 df fb                                     	vpandn xmm15,xmm13,xmm3
    2989c6284e4a:	c4 41 69 db ed                                  	vpand  xmm13,xmm2,xmm13
    2989c6284e4f:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    2989c6284e54:	44 8d 42 ff                                     	lea    r8d,[rdx-0x1]
    2989c6284e58:	c4 c1 79 6e d0                                  	vmovd  xmm2,r8d
    2989c6284e5d:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c6284e62:	44 8b 44 08 30                                  	mov    r8d,DWORD PTR [rax+rcx*1+0x30]
    2989c6284e67:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    2989c6284e6b:	c4 e2 11 3d db                                  	vpmaxsd xmm3,xmm13,xmm3
    2989c6284e70:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    2989c6284e75:	45 85 db                                        	test   r11d,r11d
    2989c6284e78:	0f 84 4f 00 00 00                               	je     0x2989c6284ecd
    2989c6284e7e:	c4 c1 79 6e d8                                  	vmovd  xmm3,r8d
    2989c6284e83:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c6284e88:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c6284e8d:	45 85 c0                                        	test   r8d,r8d
    2989c6284e90:	0f 85 37 00 00 00                               	jne    0x2989c6284ecd
    2989c6284e96:	c5 f9 6e da                                     	vmovd  xmm3,edx
    2989c6284e9a:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c6284e9f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c6284ea4:	c5 91 66 ea                                     	vpcmpgtd xmm5,xmm13,xmm2
    2989c6284ea8:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    2989c6284eac:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6284eb1:	c4 c2 51 0a ef                                  	vpsignd xmm5,xmm5,xmm15
    2989c6284eb6:	c4 41 31 66 cd                                  	vpcmpgtd xmm9,xmm9,xmm13
    2989c6284ebb:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6284ebf:	c4 c1 61 db e9                                  	vpand  xmm5,xmm3,xmm9
    2989c6284ec4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6284ec9:	c5 91 fe dd                                     	vpaddd xmm3,xmm13,xmm5
    2989c6284ecd:	c4 41 79 6e c9                                  	vmovd  xmm9,r9d
    2989c6284ed2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c6284ed7:	c4 c2 61 40 d9                                  	vpmulld xmm3,xmm3,xmm9
    2989c6284edc:	c5 e1 fe ec                                     	vpaddd xmm5,xmm3,xmm4
    2989c6284ee0:	c4 e3 79 16 e9 03                               	vpextrd ecx,xmm5,0x3
    2989c6284ee6:	c4 c3 79 16 e9 02                               	vpextrd r9d,xmm5,0x2
    2989c6284eec:	48 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rcx
    2989c6284ef3:	c4 e3 79 16 e9 01                               	vpextrd ecx,xmm5,0x1
    2989c6284ef9:	48 89 8d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rcx
    2989c6284f00:	c5 f9 7e e9                                     	vmovd  ecx,xmm5
    2989c6284f04:	45 85 ff                                        	test   r15d,r15d
    2989c6284f07:	0f 85 2d 09 00 00                               	jne    0x2989c628583a
    2989c6284f0d:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    2989c6284f17:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6284f1c:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c6284f20:	c5 09 fe f5                                     	vpaddd xmm14,xmm14,xmm5
    2989c6284f24:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c6284f29:	c4 42 09 3d d2                                  	vpmaxsd xmm10,xmm14,xmm10
    2989c6284f2e:	c4 62 29 39 d1                                  	vpminsd xmm10,xmm10,xmm1
    2989c6284f33:	85 ff                                           	test   edi,edi
    2989c6284f35:	0f 84 46 00 00 00                               	je     0x2989c6284f81
    2989c6284f3b:	c5 79 6e d6                                     	vmovd  xmm10,esi
    2989c6284f3f:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c6284f44:	c4 41 09 db d2                                  	vpand  xmm10,xmm14,xmm10
    2989c6284f49:	85 f6                                           	test   esi,esi
    2989c6284f4b:	0f 85 30 00 00 00                               	jne    0x2989c6284f81
    2989c6284f51:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c6284f56:	c5 89 66 c9                                     	vpcmpgtd xmm1,xmm14,xmm1
    2989c6284f5a:	c4 c1 71 db c9                                  	vpand  xmm1,xmm1,xmm9
    2989c6284f5f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6284f64:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    2989c6284f69:	c4 41 29 66 d6                                  	vpcmpgtd xmm10,xmm10,xmm14
    2989c6284f6e:	c5 29 df f9                                     	vpandn xmm15,xmm10,xmm1
    2989c6284f72:	c4 41 31 db d2                                  	vpand  xmm10,xmm9,xmm10
    2989c6284f77:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    2989c6284f7c:	c4 41 09 fe d2                                  	vpaddd xmm10,xmm14,xmm10
    2989c6284f81:	c5 11 fe ed                                     	vpaddd xmm13,xmm13,xmm5
    2989c6284f85:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    2989c6284f8a:	c4 42 11 3d f6                                  	vpmaxsd xmm14,xmm13,xmm14
    2989c6284f8f:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    2989c6284f94:	45 85 db                                        	test   r11d,r11d
    2989c6284f97:	0f 84 4f 00 00 00                               	je     0x2989c6284fec
    2989c6284f9d:	c4 41 79 6e f0                                  	vmovd  xmm14,r8d
    2989c6284fa2:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6284fa7:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    2989c6284fac:	45 85 c0                                        	test   r8d,r8d
    2989c6284faf:	0f 85 37 00 00 00                               	jne    0x2989c6284fec
    2989c6284fb5:	c5 79 6e f2                                     	vmovd  xmm14,edx
    2989c6284fb9:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6284fbe:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c6284fc2:	c5 91 66 d2                                     	vpcmpgtd xmm2,xmm13,xmm2
    2989c6284fc6:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    2989c6284fcb:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6284fd0:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    2989c6284fd5:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    2989c6284fda:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    2989c6284fde:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    2989c6284fe2:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    2989c6284fe7:	c4 41 11 fe f6                                  	vpaddd xmm14,xmm13,xmm14
    2989c6284fec:	c4 42 09 40 c9                                  	vpmulld xmm9,xmm14,xmm9
    2989c6284ff1:	c5 31 fe ec                                     	vpaddd xmm13,xmm9,xmm4
    2989c6284ff5:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    2989c6284ffc:	0f 85 d0 00 00 00                               	jne    0x2989c62850d2
    2989c6285002:	c5 d9 fe ed                                     	vpaddd xmm5,xmm4,xmm5
    2989c6285006:	c5 a9 76 ed                                     	vpcmpeqd xmm5,xmm10,xmm5
    2989c628500a:	c5 f8 50 fd                                     	vmovmskps edi,xmm5
    2989c628500e:	83 ff 0f                                        	cmp    edi,0xf
    2989c6285011:	0f 84 23 00 00 00                               	je     0x2989c628503a
    2989c6285017:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c628501b:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c628501e:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    2989c6285025:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c6285029:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c628502d:	44 8d 1c 8b                                     	lea    r11d,[rbx+rcx*4]
    2989c6285031:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6285035:	e9 fe 00 00 00                                  	jmp    0x2989c6285138
    2989c628503a:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    2989c628503d:	c5 fb 10 2c 38                                  	vmovsd xmm5,QWORD PTR [rax+rdi*1]
    2989c6285042:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    2989c6285049:	42 8d 3c 83                                     	lea    edi,[rbx+r8*4]
    2989c628504d:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    2989c6285052:	c4 c1 51 6c e9                                  	vpunpcklqdq xmm5,xmm5,xmm9
    2989c6285057:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c628505b:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    2989c6285060:	8b bd 00 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x300]
    2989c6285066:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c6285069:	c5 7b 10 14 38                                  	vmovsd xmm10,QWORD PTR [rax+rdi*1]
    2989c628506e:	c4 41 31 6c ca                                  	vpunpcklqdq xmm9,xmm9,xmm10
    2989c6285073:	c4 41 50 c6 d1 dd                               	vshufps xmm10,xmm5,xmm9,0xdd
    2989c6285079:	c4 c1 50 c6 e9 88                               	vshufps xmm5,xmm5,xmm9,0x88
    2989c628507f:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    2989c6285085:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c6285089:	03 fb                                           	add    edi,ebx
    2989c628508b:	c5 7b 10 2c 38                                  	vmovsd xmm13,QWORD PTR [rax+rdi*1]
    2989c6285090:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c6285096:	03 fb                                           	add    edi,ebx
    2989c6285098:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    2989c628509d:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    2989c62850a2:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c62850a8:	03 fb                                           	add    edi,ebx
    2989c62850aa:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    2989c62850af:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c62850b5:	03 fb                                           	add    edi,ebx
    2989c62850b7:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    2989c62850bc:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    2989c62850c1:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    2989c62850c7:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    2989c62850cd:	e9 6b 03 00 00                                  	jmp    0x2989c628543d
    2989c62850d2:	83 bd 30 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3d0],0x0
    2989c62850d9:	0f 85 08 00 00 00                               	jne    0x2989c62850e7
    2989c62850df:	45 33 db                                        	xor    r11d,r11d
    2989c62850e2:	e9 07 00 00 00                                  	jmp    0x2989c62850ee
    2989c62850e7:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    2989c62850ea:	44 8b 1c 38                                     	mov    r11d,DWORD PTR [rax+rdi*1]
    2989c62850ee:	83 bd 08 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3f8],0x0
    2989c62850f5:	0f 85 08 00 00 00                               	jne    0x2989c6285103
    2989c62850fb:	45 33 c0                                        	xor    r8d,r8d
    2989c62850fe:	e9 0d 00 00 00                                  	jmp    0x2989c6285110
    2989c6285103:	8b bd 80 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x380]
    2989c6285109:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c628510c:	44 8b 04 38                                     	mov    r8d,DWORD PTR [rax+rdi*1]
    2989c6285110:	83 bd e8 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x418],0x0
    2989c6285117:	0f 85 07 00 00 00                               	jne    0x2989c6285124
    2989c628511d:	33 ff                                           	xor    edi,edi
    2989c628511f:	e9 07 00 00 00                                  	jmp    0x2989c628512b
    2989c6285124:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c6285128:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c628512b:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c6285132:	0f 82 53 00 00 00                               	jb     0x2989c628518b
    2989c6285138:	44 8b bd 00 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x300]
    2989c628513f:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c6285143:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    2989c6285147:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    2989c628514b:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    2989c6285150:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6285155:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    2989c628515c:	0f 85 3a 00 00 00                               	jne    0x2989c628519c
    2989c6285162:	c4 c3 79 16 eb 01                               	vpextrd r11d,xmm5,0x1
    2989c6285168:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c628516c:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6285170:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    2989c6285174:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    2989c6285177:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    2989c628517a:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    2989c6285180:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    2989c6285183:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    2989c6285186:	e9 89 00 00 00                                  	jmp    0x2989c6285214
    2989c628518b:	c5 a9 fe eb                                     	vpaddd xmm5,xmm10,xmm3
    2989c628518f:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    2989c6285194:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6285199:	45 33 ff                                        	xor    r15d,r15d
    2989c628519c:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    2989c62851a3:	0f 85 07 00 00 00                               	jne    0x2989c62851b0
    2989c62851a9:	33 d2                                           	xor    edx,edx
    2989c62851ab:	e9 0d 00 00 00                                  	jmp    0x2989c62851bd
    2989c62851b0:	c4 c1 79 7e eb                                  	vmovd  r11d,xmm5
    2989c62851b5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c62851b9:	42 8b 14 18                                     	mov    edx,DWORD PTR [rax+r11*1]
    2989c62851bd:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    2989c62851c4:	0f 85 08 00 00 00                               	jne    0x2989c62851d2
    2989c62851ca:	45 33 db                                        	xor    r11d,r11d
    2989c62851cd:	e9 0e 00 00 00                                  	jmp    0x2989c62851e0
    2989c62851d2:	c4 c3 79 16 eb 01                               	vpextrd r11d,xmm5,0x1
    2989c62851d8:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c62851dc:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c62851e0:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    2989c62851e7:	0f 85 07 00 00 00                               	jne    0x2989c62851f4
    2989c62851ed:	33 c9                                           	xor    ecx,ecx
    2989c62851ef:	e9 0c 00 00 00                                  	jmp    0x2989c6285200
    2989c62851f4:	c4 e3 79 16 e9 02                               	vpextrd ecx,xmm5,0x2
    2989c62851fa:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    2989c62851fd:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    2989c6285200:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c6285207:	0f 83 07 00 00 00                               	jae    0x2989c6285214
    2989c628520d:	33 f6                                           	xor    esi,esi
    2989c628520f:	e9 0c 00 00 00                                  	jmp    0x2989c6285220
    2989c6285214:	c4 e3 79 16 ee 03                               	vpextrd esi,xmm5,0x3
    2989c628521a:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c628521d:	8b 34 30                                        	mov    esi,DWORD PTR [rax+rsi*1]
    2989c6285220:	c4 c3 09 22 e8 01                               	vpinsrd xmm5,xmm14,r8d,0x1
    2989c6285226:	c5 79 6e f2                                     	vmovd  xmm14,edx
    2989c628522a:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c628522f:	c4 43 09 22 f3 01                               	vpinsrd xmm14,xmm14,r11d,0x1
    2989c6285235:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    2989c628523c:	0f 85 2c 00 00 00                               	jne    0x2989c628526e
    2989c6285242:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    2989c6285248:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c628524c:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c6285250:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    2989c6285255:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c6285259:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c628525d:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    2989c6285263:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    2989c6285266:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    2989c6285269:	e9 a1 00 00 00                                  	jmp    0x2989c628530f
    2989c628526e:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    2989c6285275:	0f 85 08 00 00 00                               	jne    0x2989c6285283
    2989c628527b:	45 33 db                                        	xor    r11d,r11d
    2989c628527e:	e9 0d 00 00 00                                  	jmp    0x2989c6285290
    2989c6285283:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    2989c6285288:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c628528c:	46 8b 1c 00                                     	mov    r11d,DWORD PTR [rax+r8*1]
    2989c6285290:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    2989c6285297:	0f 85 08 00 00 00                               	jne    0x2989c62852a5
    2989c628529d:	45 33 c0                                        	xor    r8d,r8d
    2989c62852a0:	e9 0e 00 00 00                                  	jmp    0x2989c62852b3
    2989c62852a5:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    2989c62852ab:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c62852af:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c62852b3:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    2989c62852ba:	0f 85 07 00 00 00                               	jne    0x2989c62852c7
    2989c62852c0:	33 d2                                           	xor    edx,edx
    2989c62852c2:	e9 0c 00 00 00                                  	jmp    0x2989c62852d3
    2989c62852c7:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    2989c62852cd:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    2989c62852d0:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    2989c62852d3:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c62852da:	0f 83 2f 00 00 00                               	jae    0x2989c628530f
    2989c62852e0:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    2989c62852e6:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    2989c62852ec:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    2989c62852f1:	c4 41 79 6e d3                                  	vmovd  xmm10,r11d
    2989c62852f6:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c62852fb:	c4 43 29 22 d0 01                               	vpinsrd xmm10,xmm10,r8d,0x1
    2989c6285301:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    2989c6285307:	45 33 c9                                        	xor    r9d,r9d
    2989c628530a:	e9 6e 00 00 00                                  	jmp    0x2989c628537d
    2989c628530f:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    2989c6285315:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    2989c6285319:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    2989c628531d:	c4 e3 51 22 ef 02                               	vpinsrd xmm5,xmm5,edi,0x2
    2989c6285323:	c4 63 09 22 e9 02                               	vpinsrd xmm13,xmm14,ecx,0x2
    2989c6285329:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    2989c628532e:	c4 41 79 6e d3                                  	vmovd  xmm10,r11d
    2989c6285333:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c6285338:	c4 43 29 22 d0 01                               	vpinsrd xmm10,xmm10,r8d,0x1
    2989c628533e:	c4 63 29 22 d2 02                               	vpinsrd xmm10,xmm10,edx,0x2
    2989c6285344:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    2989c628534b:	0f 85 2c 00 00 00                               	jne    0x2989c628537d
    2989c6285351:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c6285357:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c628535a:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c628535d:	c4 41 79 7e c8                                  	vmovd  r8d,xmm9
    2989c6285362:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c6285366:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c628536a:	c4 43 79 16 cb 02                               	vpextrd r11d,xmm9,0x2
    2989c6285370:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c6285374:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6285378:	e9 77 00 00 00                                  	jmp    0x2989c62853f4
    2989c628537d:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    2989c6285384:	0f 85 08 00 00 00                               	jne    0x2989c6285392
    2989c628538a:	45 33 c0                                        	xor    r8d,r8d
    2989c628538d:	e9 0b 00 00 00                                  	jmp    0x2989c628539d
    2989c6285392:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c6285396:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c6285399:	44 8b 04 38                                     	mov    r8d,DWORD PTR [rax+rdi*1]
    2989c628539d:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    2989c62853a4:	0f 85 07 00 00 00                               	jne    0x2989c62853b1
    2989c62853aa:	33 ff                                           	xor    edi,edi
    2989c62853ac:	e9 0c 00 00 00                                  	jmp    0x2989c62853bd
    2989c62853b1:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c62853b7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c62853ba:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c62853bd:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    2989c62853c4:	0f 85 08 00 00 00                               	jne    0x2989c62853d2
    2989c62853ca:	45 33 db                                        	xor    r11d,r11d
    2989c62853cd:	e9 0e 00 00 00                                  	jmp    0x2989c62853e0
    2989c62853d2:	c4 43 79 16 cb 02                               	vpextrd r11d,xmm9,0x2
    2989c62853d8:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c62853dc:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c62853e0:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c62853e7:	0f 83 07 00 00 00                               	jae    0x2989c62853f4
    2989c62853ed:	33 db                                           	xor    ebx,ebx
    2989c62853ef:	e9 0c 00 00 00                                  	jmp    0x2989c6285400
    2989c62853f4:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    2989c62853fa:	8d 1c 93                                        	lea    ebx,[rbx+rdx*4]
    2989c62853fd:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    2989c6285400:	c4 c3 51 22 ef 03                               	vpinsrd xmm5,xmm5,r15d,0x3
    2989c6285406:	c4 63 11 22 ce 03                               	vpinsrd xmm9,xmm13,esi,0x3
    2989c628540c:	c4 41 79 6e e8                                  	vmovd  xmm13,r8d
    2989c6285411:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6285416:	c4 63 11 22 ef 01                               	vpinsrd xmm13,xmm13,edi,0x1
    2989c628541c:	c4 43 11 22 eb 02                               	vpinsrd xmm13,xmm13,r11d,0x2
    2989c6285422:	c4 63 11 22 f3 03                               	vpinsrd xmm14,xmm13,ebx,0x3
    2989c6285428:	c4 43 29 22 d1 03                               	vpinsrd xmm10,xmm10,r9d,0x3
    2989c628542e:	c4 41 79 28 f9                                  	vmovapd xmm15,xmm9
    2989c6285433:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    2989c6285438:	c4 41 79 28 d7                                  	vmovapd xmm10,xmm15
    2989c628543d:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    2989c6285441:	c5 98 5c fe                                     	vsubps xmm7,xmm12,xmm6
    2989c6285445:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    2989c628544a:	c5 18 5c d8                                     	vsubps xmm11,xmm12,xmm0
    2989c628544e:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    2989c6285458:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c628545d:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c6285462:	c4 c1 51 db cd                                  	vpand  xmm1,xmm5,xmm13
    2989c6285467:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628546c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c6285472:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c6285477:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628547c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c6285481:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c6285485:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c6285489:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c628548e:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    2989c6285492:	c4 c1 29 db d5                                  	vpand  xmm2,xmm10,xmm13
    2989c6285497:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628549c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c62854a2:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c62854a7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62854ac:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c62854b1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c62854b5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c62854b9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c62854be:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    2989c62854c2:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c62854c6:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    2989c62854ca:	c4 c1 31 db d5                                  	vpand  xmm2,xmm9,xmm13
    2989c62854cf:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62854d4:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c62854da:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c62854df:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62854e4:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c62854e9:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c62854ed:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c62854f1:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c62854f6:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c62854fa:	c4 c1 09 db dd                                  	vpand  xmm3,xmm14,xmm13
    2989c62854ff:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285504:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c628550a:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c628550f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285514:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c6285519:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c628551d:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c6285521:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c6285526:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c628552a:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    2989c628552e:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    2989c6285532:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c6285536:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    2989c6285540:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c6285545:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c6285549:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    2989c628554d:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    2989c6285554:	c4 a1 7a 7f 0c 00                               	vmovdqu XMMWORD PTR [rax+r8*1],xmm1
    2989c628555a:	c5 f1 72 d5 10                                  	vpsrld xmm1,xmm5,0x10
    2989c628555f:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    2989c6285564:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285569:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c628556f:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c6285574:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285579:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c628557e:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c6285582:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c6285586:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c628558b:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    2989c628558f:	c4 c1 61 72 d2 10                               	vpsrld xmm3,xmm10,0x10
    2989c6285595:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c628559a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628559f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c62855a5:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c62855aa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62855af:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c62855b4:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c62855b8:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c62855bc:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c62855c1:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c62855c5:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c62855c9:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    2989c62855cd:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    2989c62855d3:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c62855d8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62855dd:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c62855e3:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c62855e8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62855ed:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c62855f2:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c62855f6:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c62855fa:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c62855ff:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c6285603:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    2989c6285609:	c4 c1 59 db e5                                  	vpand  xmm4,xmm4,xmm13
    2989c628560e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285613:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c6285619:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c628561e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285623:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c6285628:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c628562c:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c6285630:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c6285635:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    2989c6285639:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    2989c628563d:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    2989c6285641:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c6285645:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    2989c6285649:	c4 a1 7a 7f 4c 00 20                            	vmovdqu XMMWORD PTR [rax+r8*1+0x20],xmm1
    2989c6285650:	c5 f1 72 d5 08                                  	vpsrld xmm1,xmm5,0x8
    2989c6285655:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    2989c628565a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628565f:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c6285665:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c628566a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628566f:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c6285674:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c6285678:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c628567c:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c6285681:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    2989c6285685:	c4 c1 61 72 d2 08                               	vpsrld xmm3,xmm10,0x8
    2989c628568b:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c6285690:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285695:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c628569b:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c62856a0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62856a5:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c62856aa:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c62856ae:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c62856b2:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c62856b7:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c62856bb:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c62856bf:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    2989c62856c3:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    2989c62856c9:	c4 c1 61 db dd                                  	vpand  xmm3,xmm3,xmm13
    2989c62856ce:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62856d3:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c62856d9:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c62856de:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62856e3:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c62856e8:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c62856ec:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c62856f0:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c62856f5:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c62856f9:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    2989c62856ff:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    2989c6285704:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285709:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    2989c628570f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    2989c6285714:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285719:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    2989c628571f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    2989c6285724:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    2989c6285729:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    2989c628572e:	c4 41 78 59 ed                                  	vmulps xmm13,xmm0,xmm13
    2989c6285733:	c4 41 60 58 ed                                  	vaddps xmm13,xmm3,xmm13
    2989c6285738:	c4 41 48 59 ed                                  	vmulps xmm13,xmm6,xmm13
    2989c628573d:	c4 41 70 58 ed                                  	vaddps xmm13,xmm1,xmm13
    2989c6285742:	c5 10 59 ea                                     	vmulps xmm13,xmm13,xmm2
    2989c6285746:	c4 21 7a 7f 6c 00 10                            	vmovdqu XMMWORD PTR [rax+r8*1+0x10],xmm13
    2989c628574d:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    2989c6285752:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285757:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c628575d:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c6285762:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285767:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c628576c:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c6285770:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c6285774:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c6285779:	c5 a0 59 ed                                     	vmulps xmm5,xmm11,xmm5
    2989c628577d:	c4 c1 29 72 d2 18                               	vpsrld xmm10,xmm10,0x18
    2989c6285783:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6285788:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    2989c628578e:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    2989c6285793:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285798:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    2989c628579e:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    2989c62857a3:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    2989c62857a8:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    2989c62857ad:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    2989c62857b2:	c4 c1 50 58 ea                                  	vaddps xmm5,xmm5,xmm10
    2989c62857b7:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    2989c62857bb:	c4 c1 41 72 d1 18                               	vpsrld xmm7,xmm9,0x18
    2989c62857c1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62857c6:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c62857cc:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c62857d1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62857d6:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c62857db:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c62857df:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c62857e3:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c62857e8:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    2989c62857ec:	c4 c1 31 72 d6 18                               	vpsrld xmm9,xmm14,0x18
    2989c62857f2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62857f7:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    2989c62857fd:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    2989c6285802:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6285807:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    2989c628580d:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    2989c6285812:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    2989c6285817:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    2989c628581c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c6285821:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    2989c6285825:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c6285829:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    2989c628582d:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    2989c6285835:	e9 c7 01 00 00                                  	jmp    0x2989c6285a01
    2989c628583a:	83 bd 10 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f0],0x0
    2989c6285841:	0f 85 23 00 00 00                               	jne    0x2989c628586a
    2989c6285847:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c628584b:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c628584e:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    2989c6285855:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c6285859:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c628585d:	44 8d 1c 8b                                     	lea    r11d,[rbx+rcx*4]
    2989c6285861:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6285865:	e9 66 00 00 00                                  	jmp    0x2989c62858d0
    2989c628586a:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    2989c6285871:	0f 85 08 00 00 00                               	jne    0x2989c628587f
    2989c6285877:	45 33 db                                        	xor    r11d,r11d
    2989c628587a:	e9 07 00 00 00                                  	jmp    0x2989c6285886
    2989c628587f:	8d 3c 8b                                        	lea    edi,[rbx+rcx*4]
    2989c6285882:	44 8b 1c 38                                     	mov    r11d,DWORD PTR [rax+rdi*1]
    2989c6285886:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    2989c628588d:	0f 85 08 00 00 00                               	jne    0x2989c628589b
    2989c6285893:	45 33 c0                                        	xor    r8d,r8d
    2989c6285896:	e9 0d 00 00 00                                  	jmp    0x2989c62858a8
    2989c628589b:	8b bd 80 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x380]
    2989c62858a1:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c62858a4:	44 8b 04 38                                     	mov    r8d,DWORD PTR [rax+rdi*1]
    2989c62858a8:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    2989c62858af:	0f 85 07 00 00 00                               	jne    0x2989c62858bc
    2989c62858b5:	33 ff                                           	xor    edi,edi
    2989c62858b7:	e9 07 00 00 00                                  	jmp    0x2989c62858c3
    2989c62858bc:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c62858c0:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c62858c3:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c62858ca:	0f 82 14 00 00 00                               	jb     0x2989c62858e4
    2989c62858d0:	44 8b bd 00 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x300]
    2989c62858d7:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c62858db:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    2989c62858df:	e9 03 00 00 00                                  	jmp    0x2989c62858e7
    2989c62858e4:	45 33 ff                                        	xor    r15d,r15d
    2989c62858e7:	c4 c1 79 6e c3                                  	vmovd  xmm0,r11d
    2989c62858ec:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c62858f1:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    2989c62858f7:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    2989c62858fd:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    2989c6285903:	4c 8b 15 46 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb46]        # 0x2989c6285450
    2989c628590a:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c628590f:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c6285913:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    2989c6285917:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628591c:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c6285922:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c6285927:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628592c:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c6285931:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c6285935:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c6285939:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c628593e:	4c 8b 15 f3 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf3]        # 0x2989c6285538
    2989c6285945:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c628594a:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c628594e:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6285952:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    2989c6285959:	c4 a1 7a 7f 34 00                               	vmovdqu XMMWORD PTR [rax+r8*1],xmm6
    2989c628595f:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    2989c6285964:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    2989c6285968:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628596d:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c6285973:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c6285978:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628597d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c6285982:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c6285986:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c628598a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c628598f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6285993:	c4 a1 7a 7f 74 00 20                            	vmovdqu XMMWORD PTR [rax+r8*1+0x20],xmm6
    2989c628599a:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    2989c628599f:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    2989c62859a3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62859a8:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c62859ae:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c62859b3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62859b8:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c62859bd:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c62859c1:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c62859c5:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c62859ca:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    2989c62859ce:	c4 a1 7a 7f 6c 00 10                            	vmovdqu XMMWORD PTR [rax+r8*1+0x10],xmm5
    2989c62859d5:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    2989c62859da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62859df:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c62859e5:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c62859ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62859ef:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c62859f4:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c62859f8:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c62859fc:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6285a01:	4c 8b 15 30 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb30]        # 0x2989c6285538
    2989c6285a08:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6285a0d:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c6285a11:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    2989c6285a15:	c4 a1 7a 7f 44 00 30                            	vmovdqu XMMWORD PTR [rax+r8*1+0x30],xmm0
    2989c6285a1c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6285a1f:	e9 5f 03 00 00                                  	jmp    0x2989c6285d83
    2989c6285a24:	8b 95 80 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x380]
    2989c6285a2a:	4c 8d 40 08                                     	lea    r8,[rax+0x8]
    2989c6285a2e:	c4 82 79 18 34 38                               	vbroadcastss xmm6,DWORD PTR [r8+r15*1]
    2989c6285a34:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c6285a38:	c4 c2 79 18 3c 38                               	vbroadcastss xmm7,DWORD PTR [r8+rdi*1]
    2989c6285a3e:	c5 a8 59 ff                                     	vmulps xmm7,xmm10,xmm7
    2989c6285a42:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    2989c6285a46:	c4 82 79 18 3c 18                               	vbroadcastss xmm7,DWORD PTR [r8+r11*1]
    2989c6285a4c:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    2989c6285a50:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    2989c6285a54:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c6285a59:	c5 c0 59 de                                     	vmulps xmm3,xmm7,xmm6
    2989c6285a5d:	83 fa 03                                        	cmp    edx,0x3
    2989c6285a60:	0f 84 96 02 00 00                               	je     0x2989c6285cfc
    2989c6285a66:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c6285a6a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6285a6d:	c5 fa 7f b4 38 60 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x260],xmm6
    2989c6285a76:	c5 fa 7f b4 38 50 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x250],xmm6
    2989c6285a7f:	c5 fa 7f b4 38 40 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x240],xmm6
    2989c6285a88:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    2989c6285a91:	c5 fa 7f 94 38 80 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x280],xmm2
    2989c6285a9a:	c5 fa 7f 9c 38 70 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x270],xmm3
    2989c6285aa3:	c5 fa 7f b4 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm6
    2989c6285aac:	48 89 b5 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rsi
    2989c6285ab3:	48 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rcx
    2989c6285aba:	45 33 c0                                        	xor    r8d,r8d
    2989c6285abd:	e9 4b 00 00 00                                  	jmp    0x2989c6285b0d
    2989c6285ac2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6285acb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6285ad4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6285add:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6285ae6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6285aef:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6285af8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    2989c6285b00:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    2989c6285b06:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6285b09:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6285b0d:	4c 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r8
    2989c6285b14:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6285b19:	0f 85 08 42 00 00                               	jne    0x2989c6289d27
    2989c6285b1f:	8b d1                                           	mov    edx,ecx
    2989c6285b21:	41 8b c8                                        	mov    ecx,r8d
    2989c6285b24:	8b 9d 70 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x290]
    2989c6285b2a:	d3 eb                                           	shr    ebx,cl
    2989c6285b2c:	f6 c3 01                                        	test   bl,0x1
    2989c6285b2f:	0f 84 20 01 00 00                               	je     0x2989c6285c55
    2989c6285b35:	8b 4c 10 10                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x10]
    2989c6285b39:	8b 5c 10 0c                                     	mov    ebx,DWORD PTR [rax+rdx*1+0xc]
    2989c6285b3d:	44 8b 4c 10 08                                  	mov    r9d,DWORD PTR [rax+rdx*1+0x8]
    2989c6285b42:	44 8b 4c 10 04                                  	mov    r9d,DWORD PTR [rax+rdx*1+0x4]
    2989c6285b47:	48 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],rbx
    2989c6285b4e:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    2989c6285b51:	83 fb 02                                        	cmp    ebx,0x2
    2989c6285b54:	0f 84 9b 00 00 00                               	je     0x2989c6285bf5
    2989c6285b5a:	48 89 8d 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rcx
    2989c6285b61:	85 db                                           	test   ebx,ebx
    2989c6285b63:	0f 85 38 00 00 00                               	jne    0x2989c6285ba1
    2989c6285b69:	42 8d 9c 87 90 02 00 00                         	lea    ebx,[rdi+r8*4+0x290]
    2989c6285b71:	c5 fa 10 0c 18                                  	vmovss xmm1,DWORD PTR [rax+rbx*1]
    2989c6285b76:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    2989c6285b7c:	41 8b c8                                        	mov    ecx,r8d
    2989c6285b7f:	c1 e1 04                                        	shl    ecx,0x4
    2989c6285b82:	03 d9                                           	add    ebx,ecx
    2989c6285b84:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6285b88:	41 8b c1                                        	mov    eax,r9d
    2989c6285b8b:	8b 95 40 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c0]
    2989c6285b91:	8b 8d 38 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3c8]
    2989c6285b97:	e8 84 56 ef ff                                  	call   0x2989c617b220
    2989c6285b9c:	e9 b4 00 00 00                                  	jmp    0x2989c6285c55
    2989c6285ba1:	4c 8b e0                                        	mov    r12,rax
    2989c6285ba4:	8b c2                                           	mov    eax,edx
    2989c6285ba6:	41 8b 5c 04 14                                  	mov    ebx,DWORD PTR [r12+rax*1+0x14]
    2989c6285bab:	42 8d 94 87 90 02 00 00                         	lea    edx,[rdi+r8*4+0x290]
    2989c6285bb3:	c4 c1 7a 10 0c 14                               	vmovss xmm1,DWORD PTR [r12+rdx*1]
    2989c6285bb9:	42 8d 94 87 80 02 00 00                         	lea    edx,[rdi+r8*4+0x280]
    2989c6285bc1:	c4 c1 7a 10 14 14                               	vmovss xmm2,DWORD PTR [r12+rdx*1]
    2989c6285bc7:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    2989c6285bcd:	41 8b c8                                        	mov    ecx,r8d
    2989c6285bd0:	c1 e1 04                                        	shl    ecx,0x4
    2989c6285bd3:	03 d1                                           	add    edx,ecx
    2989c6285bd5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6285bd9:	41 8b c1                                        	mov    eax,r9d
    2989c6285bdc:	44 8b ca                                        	mov    r9d,edx
    2989c6285bdf:	8b 95 40 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c0]
    2989c6285be5:	8b 8d 38 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x3c8]
    2989c6285beb:	e8 48 56 ef ff                                  	call   0x2989c617b238
    2989c6285bf0:	e9 60 00 00 00                                  	jmp    0x2989c6285c55
    2989c6285bf5:	4c 8b d8                                        	mov    r11,rax
    2989c6285bf8:	8b c2                                           	mov    eax,edx
    2989c6285bfa:	41 8b 5c 03 14                                  	mov    ebx,DWORD PTR [r11+rax*1+0x14]
    2989c6285bff:	45 8b 64 03 18                                  	mov    r12d,DWORD PTR [r11+rax*1+0x18]
    2989c6285c04:	46 8d bc 87 90 02 00 00                         	lea    r15d,[rdi+r8*4+0x290]
    2989c6285c0c:	c4 81 7a 10 0c 3b                               	vmovss xmm1,DWORD PTR [r11+r15*1]
    2989c6285c12:	46 8d bc 87 80 02 00 00                         	lea    r15d,[rdi+r8*4+0x280]
    2989c6285c1a:	c4 81 7a 10 14 3b                               	vmovss xmm2,DWORD PTR [r11+r15*1]
    2989c6285c20:	46 8d bc 87 70 02 00 00                         	lea    r15d,[rdi+r8*4+0x270]
    2989c6285c28:	c4 81 7a 10 1c 3b                               	vmovss xmm3,DWORD PTR [r11+r15*1]
    2989c6285c2e:	44 8d bf 30 02 00 00                            	lea    r15d,[rdi+0x230]
    2989c6285c35:	41 8b d0                                        	mov    edx,r8d
    2989c6285c38:	c1 e2 04                                        	shl    edx,0x4
    2989c6285c3b:	44 03 fa                                        	add    r15d,edx
    2989c6285c3e:	41 57                                           	push   r15
    2989c6285c40:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6285c44:	41 8b c1                                        	mov    eax,r9d
    2989c6285c47:	8b 95 40 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c0]
    2989c6285c4d:	45 8b cc                                        	mov    r9d,r12d
    2989c6285c50:	e8 d3 55 ef ff                                  	call   0x2989c617b228
    2989c6285c55:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    2989c6285c5c:	41 83 c0 01                                     	add    r8d,0x1
    2989c6285c60:	41 83 f8 04                                     	cmp    r8d,0x4
    2989c6285c64:	0f 85 96 fe ff ff                               	jne    0x2989c6285b00
    2989c6285c6a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6285c6d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6285c71:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    2989c6285c7b:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    2989c6285c85:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    2989c6285c89:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    2989c6285c93:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    2989c6285c9d:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    2989c6285ca2:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    2989c6285ca6:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    2989c6285cac:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    2989c6285cb3:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    2989c6285cb7:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    2989c6285cbe:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    2989c6285cc2:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    2989c6285cc7:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    2989c6285ccb:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    2989c6285cd2:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    2989c6285cd6:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    2989c6285cdc:	49 8b c0                                        	mov    rax,r8
    2989c6285cdf:	c5 78 10 a5 60 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2a0]
    2989c6285ce7:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    2989c6285cef:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    2989c6285cf7:	e9 87 00 00 00                                  	jmp    0x2989c6285d83
    2989c6285cfc:	8b c1                                           	mov    eax,ecx
    2989c6285cfe:	8b ce                                           	mov    ecx,esi
    2989c6285d00:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6285d04:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c6285d08:	8b 95 70 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x290]
    2989c6285d0e:	e8 15 58 ef ff                                  	call   0x2989c617b528
    2989c6285d13:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6285d16:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6285d1a:	c5 78 10 a5 60 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2a0]
    2989c6285d22:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    2989c6285d2a:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    2989c6285d32:	e9 4c 00 00 00                                  	jmp    0x2989c6285d83
    2989c6285d37:	4c 8b c0                                        	mov    r8,rax
    2989c6285d3a:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    2989c6285d3e:	44 8b e1                                        	mov    r12d,ecx
    2989c6285d41:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c6285d47:	c4 c1 7a 7f 04 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm0
    2989c6285d4d:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    2989c6285d51:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c6285d57:	c4 c1 7a 7f 44 30 10                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x10],xmm0
    2989c6285d5e:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    2989c6285d62:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c6285d68:	c4 c1 7a 7f 44 30 20                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x20],xmm0
    2989c6285d6f:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    2989c6285d73:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    2989c6285d79:	c4 c1 7a 7f 44 30 30                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x30],xmm0
    2989c6285d80:	49 8b c0                                        	mov    rax,r8
    2989c6285d83:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    2989c6285d8a:	41 83 c3 01                                     	add    r11d,0x1
    2989c6285d8e:	41 83 fb 04                                     	cmp    r11d,0x4
    2989c6285d92:	0f 85 e8 ec ff ff                               	jne    0x2989c6284a80
    2989c6285d98:	c5 fa 6f 84 38 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x130]
    2989c6285da1:	4c 8b 15 de ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeede]        # 0x2989c6284c86
    2989c6285da8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6285dad:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c6285db1:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c6285db5:	c5 f8 10 b5 20 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x2e0]
    2989c6285dbd:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    2989c6285dc1:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6285dc5:	c5 fa 6f b4 38 40 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x140]
    2989c6285dce:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    2989c6285dd2:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    2989c6285dd7:	c5 f0 58 fd                                     	vaddps xmm7,xmm1,xmm5
    2989c6285ddb:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6285ddf:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6285de3:	c5 fa 6f b4 38 50 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x150]
    2989c6285dec:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    2989c6285df0:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    2989c6285df5:	c5 88 58 ed                                     	vaddps xmm5,xmm14,xmm5
    2989c6285df9:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    2989c6285dfd:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c6285e01:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    2989c6285e0b:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6285e10:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c6285e14:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    2989c6285e18:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c6285e20:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c6285e24:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    2989c6285e29:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c6285e2d:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    2989c6285e31:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6285e35:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c6285e39:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    2989c6285e40:	46 8b 84 00 38 01 00 00                         	mov    r8d,DWORD PTR [rax+r8*1+0x138]
    2989c6285e48:	4d 8b d8                                        	mov    r11,r8
    2989c6285e4b:	41 83 c3 ff                                     	add    r11d,0xffffffff
    2989c6285e4f:	0f 85 e5 00 00 00                               	jne    0x2989c6285f3a
    2989c6285e55:	c5 fa 6f b4 38 10 02 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x210]
    2989c6285e5e:	c5 7a 6f 84 38 d0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1d0]
    2989c6285e67:	4c 8d 80 38 36 00 00                            	lea    r8,[rax+0x3638]
    2989c6285e6e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c6285e72:	c4 02 79 18 0c 20                               	vbroadcastss xmm9,DWORD PTR [r8+r12*1]
    2989c6285e78:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    2989c6285e7d:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    2989c6285e82:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    2989c6285e87:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c6285e8c:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c6285e91:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    2989c6285e96:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    2989c6285e9b:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6285e9f:	c5 40 5d f6                                     	vminps xmm14,xmm7,xmm6
    2989c6285ea3:	c5 fa 6f b4 38 00 02 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x200]
    2989c6285eac:	c5 7a 6f 84 38 c0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1c0]
    2989c6285eb5:	4c 8d 80 34 36 00 00                            	lea    r8,[rax+0x3634]
    2989c6285ebc:	c4 02 79 18 0c 20                               	vbroadcastss xmm9,DWORD PTR [r8+r12*1]
    2989c6285ec2:	c4 41 78 58 c9                                  	vaddps xmm9,xmm0,xmm9
    2989c6285ec7:	c4 41 50 5f c9                                  	vmaxps xmm9,xmm5,xmm9
    2989c6285ecc:	c4 41 40 5d c9                                  	vminps xmm9,xmm7,xmm9
    2989c6285ed1:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c6285ed6:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c6285edb:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    2989c6285ee0:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    2989c6285ee5:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6285ee9:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    2989c6285eed:	c5 fa 6f b4 38 f0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rax+rdi*1+0x1f0]
    2989c6285ef6:	c5 7a 6f 84 38 b0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1b0]
    2989c6285eff:	4c 8d 80 30 36 00 00                            	lea    r8,[rax+0x3630]
    2989c6285f06:	c4 02 79 18 0c 20                               	vbroadcastss xmm9,DWORD PTR [r8+r12*1]
    2989c6285f0c:	c4 c1 78 58 c1                                  	vaddps xmm0,xmm0,xmm9
    2989c6285f11:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c6285f15:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c6285f19:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6285f1d:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c6285f21:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c6285f25:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    2989c6285f29:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c6285f2d:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c6285f31:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6285f35:	e9 55 01 00 00                                  	jmp    0x2989c628608f
    2989c6285f3a:	41 83 fb 02                                     	cmp    r11d,0x2
    2989c6285f3e:	0f 84 82 00 00 00                               	je     0x2989c6285fc6
    2989c6285f44:	c5 fa 6f 84 38 d0 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x1d0]
    2989c6285f4d:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c6285f51:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c6285f55:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c6285f59:	c5 7a 6f 84 38 c0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1c0]
    2989c6285f62:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    2989c6285f67:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c6285f6c:	c4 41 40 5d c0                                  	vminps xmm8,xmm7,xmm8
    2989c6285f71:	4c 8d a0 1c 37 00 00                            	lea    r12,[rax+0x371c]
    2989c6285f78:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6285f7c:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    2989c6285f82:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c6285f87:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    2989c6285f8c:	c4 c1 40 5d c8                                  	vminps xmm1,xmm7,xmm8
    2989c6285f91:	c5 7a 6f 84 38 b0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1b0]
    2989c6285f9a:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    2989c6285f9f:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6285fa3:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c6285fa7:	4c 8d a0 18 37 00 00                            	lea    r12,[rax+0x3718]
    2989c6285fae:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    2989c6285fb4:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    2989c6285fb9:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6285fbd:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c6285fc1:	e9 42 00 00 00                                  	jmp    0x2989c6286008
    2989c6285fc6:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    2989c6285fca:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c6285fce:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c6285fd2:	4c 8d a0 1c 37 00 00                            	lea    r12,[rax+0x371c]
    2989c6285fd9:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6285fdd:	c4 82 79 18 34 1c                               	vbroadcastss xmm6,DWORD PTR [r12+r11*1]
    2989c6285fe3:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    2989c6285fe7:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6285feb:	c5 c0 5d ce                                     	vminps xmm1,xmm7,xmm6
    2989c6285fef:	4c 8d a0 18 37 00 00                            	lea    r12,[rax+0x3718]
    2989c6285ff6:	c4 82 79 18 34 1c                               	vbroadcastss xmm6,DWORD PTR [r12+r11*1]
    2989c6285ffc:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    2989c6286000:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    2989c6286004:	c5 c0 5d f6                                     	vminps xmm6,xmm7,xmm6
    2989c6286008:	4c 8d a0 20 37 00 00                            	lea    r12,[rax+0x3720]
    2989c628600f:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    2989c6286015:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c628601a:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c628601e:	c5 40 5d f0                                     	vminps xmm14,xmm7,xmm0
    2989c6286022:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c6286026:	0f 84 60 00 00 00                               	je     0x2989c628608c
    2989c628602c:	c4 a1 7a 10 84 18 24 37 00 00                   	vmovss xmm0,DWORD PTR [rax+r11*1+0x3724]
    2989c6286036:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    2989c628603b:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    2989c6286041:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    2989c6286047:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    2989c628604c:	0f 87 09 00 00 00                               	ja     0x2989c628605b
    2989c6286052:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c6286056:	e9 05 00 00 00                                  	jmp    0x2989c6286060
    2989c628605b:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    2989c6286060:	c4 41 20 57 db                                  	vxorps xmm11,xmm11,xmm11
    2989c6286065:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c6286069:	0f 87 0a 00 00 00                               	ja     0x2989c6286079
    2989c628606f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c6286074:	e9 05 00 00 00                                  	jmp    0x2989c628607e
    2989c6286079:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    2989c628607e:	c4 62 79 18 e8                                  	vbroadcastss xmm13,xmm0
    2989c6286083:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c6286087:	e9 b0 13 00 00                                  	jmp    0x2989c628743c
    2989c628608c:	4d 8b e3                                        	mov    r12,r11
    2989c628608f:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    2989c6286094:	c4 c1 50 5f c5                                  	vmaxps xmm0,xmm5,xmm13
    2989c6286099:	c5 c0 5d c0                                     	vminps xmm0,xmm7,xmm0
    2989c628609d:	c5 7a 6f 84 38 e0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rax+rdi*1+0x1e0]
    2989c62860a6:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c62860ab:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    2989c62860af:	c5 40 5d e8                                     	vminps xmm13,xmm7,xmm0
    2989c62860b3:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c62860b7:	e9 80 13 00 00                                  	jmp    0x2989c628743c
    2989c62860bc:	46 8b 44 08 38                                  	mov    r8d,DWORD PTR [rax+r9*1+0x38]
    2989c62860c1:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    2989c62860c6:	c5 78 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm14
    2989c62860cb:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    2989c62860d0:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    2989c62860d8:	42 83 7c 08 38 00                               	cmp    DWORD PTR [rax+r9*1+0x38],0x0
    2989c62860de:	0f 85 57 12 00 00                               	jne    0x2989c628733b
    2989c62860e4:	4c 8d 40 54                                     	lea    r8,[rax+0x54]
    2989c62860e8:	c4 82 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+r15*1]
    2989c62860ee:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c62860f2:	c4 c2 79 18 04 18                               	vbroadcastss xmm0,DWORD PTR [r8+rbx*1]
    2989c62860f8:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    2989c62860fc:	c5 e8 58 c0                                     	vaddps xmm0,xmm2,xmm0
    2989c6286100:	4c 8b 9d e8 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x118]
    2989c6286107:	c4 82 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+r11*1]
    2989c628610d:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    2989c6286111:	c5 f8 58 c2                                     	vaddps xmm0,xmm0,xmm2
    2989c6286115:	c5 b0 59 d0                                     	vmulps xmm2,xmm9,xmm0
    2989c6286119:	4c 8d 40 50                                     	lea    r8,[rax+0x50]
    2989c628611d:	c4 82 79 18 04 38                               	vbroadcastss xmm0,DWORD PTR [r8+r15*1]
    2989c6286123:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6286127:	c4 c2 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+rbx*1]
    2989c628612d:	c5 a8 59 f6                                     	vmulps xmm6,xmm10,xmm6
    2989c6286131:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6286135:	c4 82 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+r11*1]
    2989c628613b:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c628613f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6286143:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c6286147:	46 8b 04 08                                     	mov    r8d,DWORD PTR [rax+r9*1]
    2989c628614b:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    2989c6286152:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c6286156:	0f 85 f0 0e 00 00                               	jne    0x2989c628704c
    2989c628615c:	42 8b 54 08 28                                  	mov    edx,DWORD PTR [rax+r9*1+0x28]
    2989c6286161:	85 d2                                           	test   edx,edx
    2989c6286163:	0f 84 e3 0e 00 00                               	je     0x2989c628704c
    2989c6286169:	42 8b 4c 08 1c                                  	mov    ecx,DWORD PTR [rax+r9*1+0x1c]
    2989c628616e:	85 c9                                           	test   ecx,ecx
    2989c6286170:	0f 8e d6 0e 00 00                               	jle    0x2989c628704c
    2989c6286176:	4c 89 85 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r8
    2989c628617d:	46 8b 44 08 20                                  	mov    r8d,DWORD PTR [rax+r9*1+0x20]
    2989c6286182:	45 85 c0                                        	test   r8d,r8d
    2989c6286185:	0f 8e ba 0e 00 00                               	jle    0x2989c6287045
    2989c628618b:	44 8b d1                                        	mov    r10d,ecx
    2989c628618e:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    2989c6286193:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    2989c6286198:	46 8b 5c 08 10                                  	mov    r11d,DWORD PTR [rax+r9*1+0x10]
    2989c628619d:	33 db                                           	xor    ebx,ebx
    2989c628619f:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    2989c62861a6:	0f 95 c3                                        	setne  bl
    2989c62861a9:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    2989c62861b0:	41 0f 95 c3                                     	setne  r11b
    2989c62861b4:	45 0f b6 db                                     	movzx  r11d,r11b
    2989c62861b8:	44 23 db                                        	and    r11d,ebx
    2989c62861bb:	0f 85 0d 00 00 00                               	jne    0x2989c62861ce
    2989c62861c1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c62861c5:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c62861c9:	e9 0a 00 00 00                                  	jmp    0x2989c62861d8
    2989c62861ce:	c4 e3 79 08 f0 09                               	vroundps xmm6,xmm0,0x9
    2989c62861d4:	c5 f8 5c c6                                     	vsubps xmm0,xmm0,xmm6
    2989c62861d8:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c62861dc:	45 8b d0                                        	mov    r10d,r8d
    2989c62861df:	c4 c1 82 2a ea                                  	vcvtsi2ss xmm5,xmm15,r10
    2989c62861e4:	c4 e2 79 18 ed                                  	vbroadcastss xmm5,xmm5
    2989c62861e9:	42 8b 5c 08 14                                  	mov    ebx,DWORD PTR [rax+r9*1+0x14]
    2989c62861ee:	45 33 ff                                        	xor    r15d,r15d
    2989c62861f1:	81 fb 2f 81 00 00                               	cmp    ebx,0x812f
    2989c62861f7:	41 0f 95 c7                                     	setne  r15b
    2989c62861fb:	81 fb 00 29 00 00                               	cmp    ebx,0x2900
    2989c6286201:	0f 95 c3                                        	setne  bl
    2989c6286204:	0f b6 db                                        	movzx  ebx,bl
    2989c6286207:	41 23 df                                        	and    ebx,r15d
    2989c628620a:	0f 85 0d 00 00 00                               	jne    0x2989c628621d
    2989c6286210:	c5 a0 5f f2                                     	vmaxps xmm6,xmm11,xmm2
    2989c6286214:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    2989c6286218:	e9 0a 00 00 00                                  	jmp    0x2989c6286227
    2989c628621d:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    2989c6286223:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    2989c6286227:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    2989c628622b:	4c 8b 15 54 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea54]        # 0x2989c6284c86
    2989c6286232:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6286237:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c628623b:	c5 50 58 c6                                     	vaddps xmm8,xmm5,xmm6
    2989c628623f:	46 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [rax+r9*1+0xc]
    2989c6286244:	45 33 ff                                        	xor    r15d,r15d
    2989c6286247:	42 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [rax+r9*1+0xc],0x2600
    2989c6286250:	41 0f 94 c7                                     	sete   r15b
    2989c6286254:	45 85 ff                                        	test   r15d,r15d
    2989c6286257:	0f 85 5b 00 00 00                               	jne    0x2989c62862b8
    2989c628625d:	c4 c3 79 08 e8 09                               	vroundps xmm5,xmm8,0x9
    2989c6286263:	4c 8b 15 2b af ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaf2b]        # 0x2989c6281195
    2989c628626a:	c4 41 50 54 0a                                  	vandps xmm9,xmm5,XMMWORD PTR [r10]
    2989c628626f:	4c 8b 15 b9 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd9b9]        # 0x2989c6283c2f
    2989c6286276:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c628627b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c6286280:	c4 41 30 c2 ca 01                               	vcmpltps xmm9,xmm9,xmm10
    2989c6286286:	4c 8b 15 60 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd960]        # 0x2989c6283bed
    2989c628628d:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    2989c6286292:	c4 c1 50 54 d7                                  	vandps xmm2,xmm5,xmm15
    2989c6286297:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    2989c628629d:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c62862a1:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c62862a6:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c62862aa:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c62862ae:	c4 c1 79 28 e8                                  	vmovapd xmm5,xmm8
    2989c62862b3:	e9 49 00 00 00                                  	jmp    0x2989c6286301
    2989c62862b8:	c4 e3 79 08 f5 09                               	vroundps xmm6,xmm5,0x9
    2989c62862be:	4c 8b 15 d0 ae ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaed0]        # 0x2989c6281195
    2989c62862c5:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    2989c62862ca:	4c 8b 15 5e d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd95e]        # 0x2989c6283c2f
    2989c62862d1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c62862d6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c62862db:	c4 41 38 c2 ca 01                               	vcmpltps xmm9,xmm8,xmm10
    2989c62862e1:	4c 8b 15 05 d9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd905]        # 0x2989c6283bed
    2989c62862e8:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    2989c62862ed:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    2989c62862f2:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    2989c62862f8:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c62862fc:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c6286301:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    2989c6286307:	4c 8b 15 df d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd8df]        # 0x2989c6283bed
    2989c628630e:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c6286314:	c4 c1 38 54 ff                                  	vandps xmm7,xmm8,xmm15
    2989c6286319:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c628631f:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    2989c6286323:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    2989c6286328:	4c 8b 15 e1 d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd8e1]        # 0x2989c6283c10
    2989c628632f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6286334:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6286339:	4c 8b 15 55 ae ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffae55]        # 0x2989c6281195
    2989c6286340:	c4 41 38 54 22                                  	vandps xmm12,xmm8,XMMWORD PTR [r10]
    2989c6286345:	c4 41 18 c2 e2 01                               	vcmpltps xmm12,xmm12,xmm10
    2989c628634b:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    2989c6286350:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    2989c6286355:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c628635a:	8d 79 ff                                        	lea    edi,[rcx-0x1]
    2989c628635d:	c5 79 6e e7                                     	vmovd  xmm12,edi
    2989c6286361:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    2989c6286366:	42 8b 7c 08 2c                                  	mov    edi,DWORD PTR [rax+r9*1+0x2c]
    2989c628636b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    2989c6286370:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    2989c6286375:	c4 42 11 39 ec                                  	vpminsd xmm13,xmm13,xmm12
    2989c628637a:	45 85 db                                        	test   r11d,r11d
    2989c628637d:	0f 84 54 00 00 00                               	je     0x2989c62863d7
    2989c6286383:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c6286387:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c628638c:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    2989c6286391:	85 ff                                           	test   edi,edi
    2989c6286393:	0f 85 3e 00 00 00                               	jne    0x2989c62863d7
    2989c6286399:	c5 79 6e e9                                     	vmovd  xmm13,ecx
    2989c628639d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c62863a2:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    2989c62863a7:	c4 c1 41 66 cc                                  	vpcmpgtd xmm1,xmm7,xmm12
    2989c62863ac:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    2989c62863b1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c62863b6:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    2989c62863bb:	c5 09 66 f7                                     	vpcmpgtd xmm14,xmm14,xmm7
    2989c62863bf:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    2989c62863c3:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    2989c62863c8:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    2989c62863cd:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    2989c62863d2:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    2989c62863d7:	c4 41 31 df fb                                  	vpandn xmm15,xmm9,xmm11
    2989c62863dc:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    2989c62863e1:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c62863e6:	41 8d 70 ff                                     	lea    esi,[r8-0x1]
    2989c62863ea:	c5 f9 6e d6                                     	vmovd  xmm2,esi
    2989c62863ee:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c62863f3:	42 8b 74 08 30                                  	mov    esi,DWORD PTR [rax+r9*1+0x30]
    2989c62863f8:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    2989c62863fd:	c4 42 31 3d f6                                  	vpmaxsd xmm14,xmm9,xmm14
    2989c6286402:	c4 62 09 39 f2                                  	vpminsd xmm14,xmm14,xmm2
    2989c6286407:	85 db                                           	test   ebx,ebx
    2989c6286409:	0f 84 4e 00 00 00                               	je     0x2989c628645d
    2989c628640f:	c5 79 6e f6                                     	vmovd  xmm14,esi
    2989c6286413:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6286418:	c4 41 09 db f1                                  	vpand  xmm14,xmm14,xmm9
    2989c628641d:	85 f6                                           	test   esi,esi
    2989c628641f:	0f 85 38 00 00 00                               	jne    0x2989c628645d
    2989c6286425:	c4 41 79 6e f0                                  	vmovd  xmm14,r8d
    2989c628642a:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c628642f:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c6286433:	c5 b1 66 da                                     	vpcmpgtd xmm3,xmm9,xmm2
    2989c6286437:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    2989c628643c:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6286441:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    2989c6286446:	c4 c1 71 66 c9                                  	vpcmpgtd xmm1,xmm1,xmm9
    2989c628644b:	c5 71 df fb                                     	vpandn xmm15,xmm1,xmm3
    2989c628644f:	c5 09 db f1                                     	vpand  xmm14,xmm14,xmm1
    2989c6286453:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    2989c6286458:	c4 41 31 fe f6                                  	vpaddd xmm14,xmm9,xmm14
    2989c628645d:	c5 f9 6e c9                                     	vmovd  xmm1,ecx
    2989c6286461:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c6286466:	c4 62 09 40 f1                                  	vpmulld xmm14,xmm14,xmm1
    2989c628646b:	c4 c1 09 fe dd                                  	vpaddd xmm3,xmm14,xmm13
    2989c6286470:	c4 e3 79 16 d9 03                               	vpextrd ecx,xmm3,0x3
    2989c6286476:	c4 c3 79 16 d9 02                               	vpextrd r9d,xmm3,0x2
    2989c628647c:	48 89 8d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rcx
    2989c6286483:	c4 e3 79 16 d9 01                               	vpextrd ecx,xmm3,0x1
    2989c6286489:	4c 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r9
    2989c6286490:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    2989c6286495:	45 85 ff                                        	test   r15d,r15d
    2989c6286498:	0f 85 c6 09 00 00                               	jne    0x2989c6286e64
    2989c628649e:	4c 8b 15 6a ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea6a]        # 0x2989c6284f0f
    2989c62864a5:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62864aa:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c62864ae:	c5 c1 fe fb                                     	vpaddd xmm7,xmm7,xmm3
    2989c62864b2:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c62864b6:	c4 e2 41 3d e4                                  	vpmaxsd xmm4,xmm7,xmm4
    2989c62864bb:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    2989c62864c0:	45 85 db                                        	test   r11d,r11d
    2989c62864c3:	0f 84 43 00 00 00                               	je     0x2989c628650c
    2989c62864c9:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    2989c62864cd:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c62864d2:	c5 c1 db e4                                     	vpand  xmm4,xmm7,xmm4
    2989c62864d6:	85 ff                                           	test   edi,edi
    2989c62864d8:	0f 85 2e 00 00 00                               	jne    0x2989c628650c
    2989c62864de:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c62864e2:	c4 41 41 66 e4                                  	vpcmpgtd xmm12,xmm7,xmm12
    2989c62864e7:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    2989c62864eb:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c62864f0:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    2989c62864f5:	c5 d9 66 e7                                     	vpcmpgtd xmm4,xmm4,xmm7
    2989c62864f9:	c4 41 59 df fc                                  	vpandn xmm15,xmm4,xmm12
    2989c62864fe:	c5 71 db e4                                     	vpand  xmm12,xmm1,xmm4
    2989c6286502:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    2989c6286507:	c4 c1 41 fe e4                                  	vpaddd xmm4,xmm7,xmm12
    2989c628650c:	c5 b1 fe fb                                     	vpaddd xmm7,xmm9,xmm3
    2989c6286510:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c6286515:	c4 42 41 3d c9                                  	vpmaxsd xmm9,xmm7,xmm9
    2989c628651a:	c4 62 31 39 ca                                  	vpminsd xmm9,xmm9,xmm2
    2989c628651f:	85 db                                           	test   ebx,ebx
    2989c6286521:	0f 84 4e 00 00 00                               	je     0x2989c6286575
    2989c6286527:	c5 79 6e ce                                     	vmovd  xmm9,esi
    2989c628652b:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c6286530:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    2989c6286534:	85 f6                                           	test   esi,esi
    2989c6286536:	0f 85 39 00 00 00                               	jne    0x2989c6286575
    2989c628653c:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    2989c6286541:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c6286546:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    2989c628654b:	c5 c1 66 d2                                     	vpcmpgtd xmm2,xmm7,xmm2
    2989c628654f:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    2989c6286554:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6286559:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    2989c628655e:	c5 19 66 e7                                     	vpcmpgtd xmm12,xmm12,xmm7
    2989c6286562:	c5 19 df fa                                     	vpandn xmm15,xmm12,xmm2
    2989c6286566:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    2989c628656b:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c6286570:	c4 41 41 fe c9                                  	vpaddd xmm9,xmm7,xmm9
    2989c6286575:	c4 e2 31 40 f9                                  	vpmulld xmm7,xmm9,xmm1
    2989c628657a:	c4 41 41 fe cd                                  	vpaddd xmm9,xmm7,xmm13
    2989c628657f:	45 85 e4                                        	test   r12d,r12d
    2989c6286582:	0f 85 f4 00 00 00                               	jne    0x2989c628667c
    2989c6286588:	c5 11 fe e3                                     	vpaddd xmm12,xmm13,xmm3
    2989c628658c:	c4 41 59 76 e4                                  	vpcmpeqd xmm12,xmm4,xmm12
    2989c6286591:	c4 c1 78 50 fc                                  	vmovmskps edi,xmm12
    2989c6286596:	83 ff 0f                                        	cmp    edi,0xf
    2989c6286599:	0f 84 45 00 00 00                               	je     0x2989c62865e4
    2989c628659f:	4c 89 a5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r12
    2989c62865a6:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c62865ac:	83 e6 04                                        	and    esi,0x4
    2989c62865af:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    2989c62865b5:	83 e7 02                                        	and    edi,0x2
    2989c62865b8:	44 8b 85 70 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x290]
    2989c62865bf:	41 83 e0 01                                     	and    r8d,0x1
    2989c62865c3:	44 8d 1c 8a                                     	lea    r11d,[rdx+rcx*4]
    2989c62865c7:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c62865cb:	46 8d 3c 8a                                     	lea    r15d,[rdx+r9*4]
    2989c62865cf:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    2989c62865d3:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    2989c62865d9:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c62865dc:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    2989c62865df:	e9 2b 01 00 00                                  	jmp    0x2989c628670f
    2989c62865e4:	42 8d 3c 8a                                     	lea    edi,[rdx+r9*4]
    2989c62865e8:	c5 fb 10 3c 38                                  	vmovsd xmm7,QWORD PTR [rax+rdi*1]
    2989c62865ed:	8d 3c 8a                                        	lea    edi,[rdx+rcx*4]
    2989c62865f0:	c5 7b 10 24 38                                  	vmovsd xmm12,QWORD PTR [rax+rdi*1]
    2989c62865f5:	c4 c1 41 6c fc                                  	vpunpcklqdq xmm7,xmm7,xmm12
    2989c62865fa:	8b bd a8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x258]
    2989c6286600:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c6286603:	c5 7b 10 24 38                                  	vmovsd xmm12,QWORD PTR [rax+rdi*1]
    2989c6286608:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    2989c628660f:	42 8d 3c 82                                     	lea    edi,[rdx+r8*4]
    2989c6286613:	c5 7b 10 2c 38                                  	vmovsd xmm13,QWORD PTR [rax+rdi*1]
    2989c6286618:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    2989c628661d:	c4 41 40 c6 ec dd                               	vshufps xmm13,xmm7,xmm12,0xdd
    2989c6286623:	c4 c1 40 c6 fc 88                               	vshufps xmm7,xmm7,xmm12,0x88
    2989c6286629:	c4 c1 31 72 f1 02                               	vpslld xmm9,xmm9,0x2
    2989c628662f:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c6286633:	03 fa                                           	add    edi,edx
    2989c6286635:	c5 7b 10 24 38                                  	vmovsd xmm12,QWORD PTR [rax+rdi*1]
    2989c628663a:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c6286640:	03 fa                                           	add    edi,edx
    2989c6286642:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    2989c6286647:	c4 41 19 6c e6                                  	vpunpcklqdq xmm12,xmm12,xmm14
    2989c628664c:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c6286652:	03 fa                                           	add    edi,edx
    2989c6286654:	c5 7b 10 34 38                                  	vmovsd xmm14,QWORD PTR [rax+rdi*1]
    2989c6286659:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c628665f:	03 fa                                           	add    edi,edx
    2989c6286661:	c5 7b 10 0c 38                                  	vmovsd xmm9,QWORD PTR [rax+rdi*1]
    2989c6286666:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    2989c628666b:	c4 41 18 c6 f1 dd                               	vshufps xmm14,xmm12,xmm9,0xdd
    2989c6286671:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    2989c6286677:	e9 5f 04 00 00                                  	jmp    0x2989c6286adb
    2989c628667c:	4c 89 a5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],r12
    2989c6286683:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c6286689:	83 e6 04                                        	and    esi,0x4
    2989c628668c:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    2989c6286692:	83 e7 02                                        	and    edi,0x2
    2989c6286695:	44 8b 85 70 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x290]
    2989c628669c:	41 83 e0 01                                     	and    r8d,0x1
    2989c62866a0:	45 85 c0                                        	test   r8d,r8d
    2989c62866a3:	0f 85 08 00 00 00                               	jne    0x2989c62866b1
    2989c62866a9:	45 33 ff                                        	xor    r15d,r15d
    2989c62866ac:	e9 08 00 00 00                                  	jmp    0x2989c62866b9
    2989c62866b1:	46 8d 1c 8a                                     	lea    r11d,[rdx+r9*4]
    2989c62866b5:	46 8b 3c 18                                     	mov    r15d,DWORD PTR [rax+r11*1]
    2989c62866b9:	85 ff                                           	test   edi,edi
    2989c62866bb:	0f 85 08 00 00 00                               	jne    0x2989c62866c9
    2989c62866c1:	45 33 db                                        	xor    r11d,r11d
    2989c62866c4:	e9 08 00 00 00                                  	jmp    0x2989c62866d1
    2989c62866c9:	44 8d 1c 8a                                     	lea    r11d,[rdx+rcx*4]
    2989c62866cd:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c62866d1:	85 f6                                           	test   esi,esi
    2989c62866d3:	0f 85 07 00 00 00                               	jne    0x2989c62866e0
    2989c62866d9:	33 db                                           	xor    ebx,ebx
    2989c62866db:	e9 0c 00 00 00                                  	jmp    0x2989c62866ec
    2989c62866e0:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    2989c62866e6:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c62866e9:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    2989c62866ec:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c62866f3:	0f 83 16 00 00 00                               	jae    0x2989c628670f
    2989c62866f9:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    2989c62866fe:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    2989c6286703:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6286708:	33 c9                                           	xor    ecx,ecx
    2989c628670a:	e9 5e 00 00 00                                  	jmp    0x2989c628676d
    2989c628670f:	8b 8d b0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x250]
    2989c6286715:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    2989c6286718:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    2989c628671b:	c4 41 59 fe e6                                  	vpaddd xmm12,xmm4,xmm14
    2989c6286720:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    2989c6286725:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c628672a:	45 85 e4                                        	test   r12d,r12d
    2989c628672d:	0f 85 3a 00 00 00                               	jne    0x2989c628676d
    2989c6286733:	c4 43 79 16 e7 01                               	vpextrd r15d,xmm12,0x1
    2989c6286739:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c628673d:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    2989c6286741:	c4 41 79 7e e1                                  	vmovd  r9d,xmm12
    2989c6286746:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    2989c628674a:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    2989c628674e:	c4 43 79 16 e4 02                               	vpextrd r12d,xmm12,0x2
    2989c6286754:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    2989c6286758:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c628675c:	48 89 b5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rsi
    2989c6286763:	8b f7                                           	mov    esi,edi
    2989c6286765:	41 8b fc                                        	mov    edi,r12d
    2989c6286768:	e9 b5 00 00 00                                  	jmp    0x2989c6286822
    2989c628676d:	45 85 c0                                        	test   r8d,r8d
    2989c6286770:	0f 85 08 00 00 00                               	jne    0x2989c628677e
    2989c6286776:	45 33 c9                                        	xor    r9d,r9d
    2989c6286779:	e9 0d 00 00 00                                  	jmp    0x2989c628678b
    2989c628677e:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    2989c6286783:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c6286787:	46 8b 0c 38                                     	mov    r9d,DWORD PTR [rax+r15*1]
    2989c628678b:	85 ff                                           	test   edi,edi
    2989c628678d:	0f 85 08 00 00 00                               	jne    0x2989c628679b
    2989c6286793:	45 33 ff                                        	xor    r15d,r15d
    2989c6286796:	e9 0e 00 00 00                                  	jmp    0x2989c62867a9
    2989c628679b:	c4 43 79 16 e7 01                               	vpextrd r15d,xmm12,0x1
    2989c62867a1:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c62867a5:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    2989c62867a9:	85 f6                                           	test   esi,esi
    2989c62867ab:	0f 85 10 00 00 00                               	jne    0x2989c62867c1
    2989c62867b1:	48 c7 85 b0 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x250],0x0
    2989c62867bc:	e9 1c 00 00 00                                  	jmp    0x2989c62867dd
    2989c62867c1:	c4 43 79 16 e4 02                               	vpextrd r12d,xmm12,0x2
    2989c62867c7:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    2989c62867cb:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c62867cf:	4c 89 a5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r12
    2989c62867d6:	44 8b a5 10 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2f0]
    2989c62867dd:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c62867e4:	0f 83 25 00 00 00                               	jae    0x2989c628680f
    2989c62867ea:	4c 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r9
    2989c62867f1:	45 8b cf                                        	mov    r9d,r15d
    2989c62867f4:	44 8b bd b0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x250]
    2989c62867fb:	4c 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r11
    2989c6286802:	45 8b d8                                        	mov    r11d,r8d
    2989c6286805:	44 8b c7                                        	mov    r8d,edi
    2989c6286808:	33 ff                                           	xor    edi,edi
    2989c628680a:	e9 4b 00 00 00                                  	jmp    0x2989c628685a
    2989c628680f:	44 8b d7                                        	mov    r10d,edi
    2989c6286812:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    2989c6286818:	48 89 b5 b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rsi
    2989c628681f:	41 8b f2                                        	mov    esi,r10d
    2989c6286822:	c4 43 79 16 e4 03                               	vpextrd r12d,xmm12,0x3
    2989c6286828:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    2989c628682c:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c6286830:	4c 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r9
    2989c6286837:	45 8b cf                                        	mov    r9d,r15d
    2989c628683a:	44 8b ff                                        	mov    r15d,edi
    2989c628683d:	41 8b fc                                        	mov    edi,r12d
    2989c6286840:	44 8b a5 10 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x2f0]
    2989c6286847:	4c 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r11
    2989c628684e:	45 8b d8                                        	mov    r11d,r8d
    2989c6286851:	44 8b c6                                        	mov    r8d,esi
    2989c6286854:	8b b5 b0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x250]
    2989c628685a:	c4 63 11 22 a5 80 fc ff ff 01                   	vpinsrd xmm12,xmm13,DWORD PTR [rbp-0x380],0x1
    2989c6286864:	c5 79 6e ad 00 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x300]
    2989c628686c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6286871:	c4 43 11 22 e9 01                               	vpinsrd xmm13,xmm13,r9d,0x1
    2989c6286877:	48 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rdi
    2989c628687e:	45 85 e4                                        	test   r12d,r12d
    2989c6286881:	0f 85 47 00 00 00                               	jne    0x2989c62868ce
    2989c6286887:	c4 43 79 16 c9 01                               	vpextrd r9d,xmm9,0x1
    2989c628688d:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    2989c6286891:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    2989c6286895:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c6286899:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c628689c:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c628689f:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    2989c62868a6:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    2989c62868ac:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    2989c62868af:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    2989c62868b2:	4c 89 8d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r9
    2989c62868b9:	44 8b c9                                        	mov    r9d,ecx
    2989c62868bc:	48 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rdi
    2989c62868c3:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    2989c62868c9:	e9 d5 00 00 00                                  	jmp    0x2989c62869a3
    2989c62868ce:	45 85 db                                        	test   r11d,r11d
    2989c62868d1:	0f 85 08 00 00 00                               	jne    0x2989c62868df
    2989c62868d7:	45 33 c9                                        	xor    r9d,r9d
    2989c62868da:	e9 0d 00 00 00                                  	jmp    0x2989c62868ec
    2989c62868df:	c4 41 79 7e c9                                  	vmovd  r9d,xmm9
    2989c62868e4:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    2989c62868e8:	46 8b 0c 08                                     	mov    r9d,DWORD PTR [rax+r9*1]
    2989c62868ec:	45 85 c0                                        	test   r8d,r8d
    2989c62868ef:	0f 85 10 00 00 00                               	jne    0x2989c6286905
    2989c62868f5:	48 c7 85 80 fc ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x380],0x0
    2989c6286900:	e9 19 00 00 00                                  	jmp    0x2989c628691e
    2989c6286905:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c628690b:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c628690e:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c6286911:	48 89 bd 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rdi
    2989c6286918:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    2989c628691e:	85 f6                                           	test   esi,esi
    2989c6286920:	0f 85 10 00 00 00                               	jne    0x2989c6286936
    2989c6286926:	48 c7 85 00 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x300],0x0
    2989c6286931:	e9 19 00 00 00                                  	jmp    0x2989c628694f
    2989c6286936:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c628693c:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c628693f:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c6286942:	48 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rdi
    2989c6286949:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    2989c628694f:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c6286956:	0f 83 36 00 00 00                               	jae    0x2989c6286992
    2989c628695c:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    2989c6286962:	c4 43 11 22 e7 02                               	vpinsrd xmm12,xmm13,r15d,0x2
    2989c6286968:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    2989c628696c:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    2989c6286971:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6286976:	c4 63 11 22 ad 80 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x380],0x1
    2989c6286980:	c4 63 11 22 ad 00 fd ff ff 02                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x300],0x2
    2989c628698a:	45 33 e4                                        	xor    r12d,r12d
    2989c628698d:	e9 96 00 00 00                                  	jmp    0x2989c6286a28
    2989c6286992:	4d 8b d1                                        	mov    r10,r9
    2989c6286995:	4c 8b 8d 00 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x300]
    2989c628699c:	4c 89 95 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r10
    2989c62869a3:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c62869a9:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c62869ac:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c62869af:	c4 63 19 22 cb 02                               	vpinsrd xmm9,xmm12,ebx,0x2
    2989c62869b5:	c4 43 11 22 e7 02                               	vpinsrd xmm12,xmm13,r15d,0x2
    2989c62869bb:	c5 c1 fe fc                                     	vpaddd xmm7,xmm7,xmm4
    2989c62869bf:	c5 79 6e ad 00 fd ff ff                         	vmovd  xmm13,DWORD PTR [rbp-0x300]
    2989c62869c7:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c62869cc:	c4 63 11 22 ad 80 fc ff ff 01                   	vpinsrd xmm13,xmm13,DWORD PTR [rbp-0x380],0x1
    2989c62869d6:	c4 43 11 22 e9 02                               	vpinsrd xmm13,xmm13,r9d,0x2
    2989c62869dc:	45 85 e4                                        	test   r12d,r12d
    2989c62869df:	0f 85 3a 00 00 00                               	jne    0x2989c6286a1f
    2989c62869e5:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    2989c62869eb:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c62869ef:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c62869f3:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    2989c62869f8:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c62869fc:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6286a00:	c4 c3 79 16 fc 02                               	vpextrd r12d,xmm7,0x2
    2989c6286a06:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    2989c6286a0a:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c6286a0e:	45 8b fc                                        	mov    r15d,r12d
    2989c6286a11:	44 8b e7                                        	mov    r12d,edi
    2989c6286a14:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    2989c6286a1a:	e9 78 00 00 00                                  	jmp    0x2989c6286a97
    2989c6286a1f:	44 8b e7                                        	mov    r12d,edi
    2989c6286a22:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    2989c6286a28:	45 85 db                                        	test   r11d,r11d
    2989c6286a2b:	0f 85 08 00 00 00                               	jne    0x2989c6286a39
    2989c6286a31:	45 33 db                                        	xor    r11d,r11d
    2989c6286a34:	e9 0d 00 00 00                                  	jmp    0x2989c6286a46
    2989c6286a39:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    2989c6286a3e:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    2989c6286a42:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6286a46:	45 85 c0                                        	test   r8d,r8d
    2989c6286a49:	0f 85 08 00 00 00                               	jne    0x2989c6286a57
    2989c6286a4f:	45 33 c0                                        	xor    r8d,r8d
    2989c6286a52:	e9 0e 00 00 00                                  	jmp    0x2989c6286a65
    2989c6286a57:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    2989c6286a5d:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c6286a61:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c6286a65:	85 f6                                           	test   esi,esi
    2989c6286a67:	0f 85 08 00 00 00                               	jne    0x2989c6286a75
    2989c6286a6d:	45 33 ff                                        	xor    r15d,r15d
    2989c6286a70:	e9 0e 00 00 00                                  	jmp    0x2989c6286a83
    2989c6286a75:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    2989c6286a7b:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    2989c6286a7f:	46 8b 3c 38                                     	mov    r15d,DWORD PTR [rax+r15*1]
    2989c6286a83:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c6286a8a:	0f 83 07 00 00 00                               	jae    0x2989c6286a97
    2989c6286a90:	33 db                                           	xor    ebx,ebx
    2989c6286a92:	e9 0c 00 00 00                                  	jmp    0x2989c6286aa3
    2989c6286a97:	c4 e3 79 16 fb 03                               	vpextrd ebx,xmm7,0x3
    2989c6286a9d:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c6286aa0:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    2989c6286aa3:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    2989c6286aa9:	c4 63 19 22 cf 03                               	vpinsrd xmm9,xmm12,edi,0x3
    2989c6286aaf:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    2989c6286ab4:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    2989c6286ab9:	c4 43 19 22 e0 01                               	vpinsrd xmm12,xmm12,r8d,0x1
    2989c6286abf:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    2989c6286ac5:	c4 63 19 22 f3 03                               	vpinsrd xmm14,xmm12,ebx,0x3
    2989c6286acb:	c4 43 11 22 e4 03                               	vpinsrd xmm12,xmm13,r12d,0x3
    2989c6286ad1:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    2989c6286ad6:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    2989c6286adb:	c5 99 72 d7 18                                  	vpsrld xmm12,xmm7,0x18
    2989c6286ae0:	c4 c1 71 72 d5 18                               	vpsrld xmm1,xmm13,0x18
    2989c6286ae6:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    2989c6286aea:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c6286aee:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    2989c6286af4:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    2989c6286af8:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    2989c6286b02:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c6286b07:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c6286b0b:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    2989c6286b10:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    2989c6286b1a:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6286b1f:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c6286b24:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c6286b29:	4c 8b 15 a6 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0a6]        # 0x2989c6283bd6
    2989c6286b30:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6286b35:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c6286b39:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    2989c6286b3d:	4c 8b 15 a9 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0a9]        # 0x2989c6283bed
    2989c6286b44:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c6286b49:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    2989c6286b4e:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c6286b54:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    2989c6286b58:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    2989c6286b5d:	4c 8b 15 31 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa631]        # 0x2989c6281195
    2989c6286b64:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6286b69:	c4 c1 78 c2 c2 01                               	vcmpltps xmm0,xmm0,xmm10
    2989c6286b6f:	c4 41 79 df fb                                  	vpandn xmm15,xmm0,xmm11
    2989c6286b74:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    2989c6286b78:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6286b7d:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    2989c6286b81:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    2989c6286b85:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    2989c6286b8b:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    2989c6286b8f:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    2989c6286b93:	c5 d0 5c ee                                     	vsubps xmm5,xmm5,xmm6
    2989c6286b97:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    2989c6286b9c:	c5 d0 58 eb                                     	vaddps xmm5,xmm5,xmm3
    2989c6286ba0:	4c 8b 15 46 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd046]        # 0x2989c6283bed
    2989c6286ba7:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    2989c6286bac:	c4 c1 50 54 f7                                  	vandps xmm6,xmm5,xmm15
    2989c6286bb1:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    2989c6286bb7:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    2989c6286bbb:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    2989c6286bc0:	4c 8b 15 ce a5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa5ce]        # 0x2989c6281195
    2989c6286bc7:	c4 c1 50 54 2a                                  	vandps xmm5,xmm5,XMMWORD PTR [r10]
    2989c6286bcc:	c4 c1 50 c2 ea 01                               	vcmpltps xmm5,xmm5,xmm10
    2989c6286bd2:	c4 41 51 df fb                                  	vpandn xmm15,xmm5,xmm11
    2989c6286bd7:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    2989c6286bdb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6286be0:	c5 e9 fa f5                                     	vpsubd xmm6,xmm2,xmm5
    2989c6286be4:	c4 62 19 40 c6                                  	vpmulld xmm8,xmm12,xmm6
    2989c6286be9:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    2989c6286bef:	c4 c1 21 72 d6 18                               	vpsrld xmm11,xmm14,0x18
    2989c6286bf5:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    2989c6286bfa:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    2989c6286c00:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    2989c6286c05:	c5 29 f5 d0                                     	vpmaddwd xmm10,xmm10,xmm0
    2989c6286c09:	c4 62 29 40 d5                                  	vpmulld xmm10,xmm10,xmm5
    2989c6286c0e:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c6286c13:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    2989c6286c1d:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c6286c22:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c6286c27:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c6286c2c:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c6286c32:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286c37:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c6286c3d:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6286c42:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286c47:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c6286c4d:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6286c52:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6286c57:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c6286c5c:	4c 8b 15 d5 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8d5]        # 0x2989c6285538
    2989c6286c63:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6286c68:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6286c6d:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    2989c6286c72:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6286c75:	c5 7a 7f 84 38 60 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x260],xmm8
    2989c6286c7e:	c5 b9 72 d7 10                                  	vpsrld xmm8,xmm7,0x10
    2989c6286c83:	4c 8b 15 c6 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7c6]        # 0x2989c6285450
    2989c6286c8a:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c6286c8f:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c6286c94:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    2989c6286c99:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    2989c6286c9f:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c6286ca4:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    2989c6286ca8:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    2989c6286cae:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    2989c6286cb2:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    2989c6286cb6:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    2989c6286cbb:	c4 c1 69 72 d1 10                               	vpsrld xmm2,xmm9,0x10
    2989c6286cc1:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c6286cc6:	c4 c1 61 72 d6 10                               	vpsrld xmm3,xmm14,0x10
    2989c6286ccc:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    2989c6286cd1:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    2989c6286cd5:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    2989c6286cdb:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    2989c6286cdf:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    2989c6286ce3:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    2989c6286ce8:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    2989c6286cec:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c6286cf1:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c6286cf7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286cfc:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c6286d02:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6286d07:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286d0c:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c6286d12:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6286d17:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6286d1c:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c6286d21:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    2989c6286d26:	c5 7a 7f 84 38 50 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x250],xmm8
    2989c6286d2f:	c5 b9 72 d7 08                                  	vpsrld xmm8,xmm7,0x8
    2989c6286d34:	c4 41 39 db c4                                  	vpand  xmm8,xmm8,xmm12
    2989c6286d39:	c4 c1 69 72 d5 08                               	vpsrld xmm2,xmm13,0x8
    2989c6286d3f:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c6286d44:	c5 39 6b c2                                     	vpackssdw xmm8,xmm8,xmm2
    2989c6286d48:	c4 c3 71 0f d0 08                               	vpalignr xmm2,xmm1,xmm8,0x8
    2989c6286d4e:	c5 39 61 c2                                     	vpunpcklwd xmm8,xmm8,xmm2
    2989c6286d52:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    2989c6286d56:	c4 62 39 40 c6                                  	vpmulld xmm8,xmm8,xmm6
    2989c6286d5b:	c4 c1 69 72 d1 08                               	vpsrld xmm2,xmm9,0x8
    2989c6286d61:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    2989c6286d66:	c4 c1 61 72 d6 08                               	vpsrld xmm3,xmm14,0x8
    2989c6286d6c:	c4 c1 61 db dc                                  	vpand  xmm3,xmm3,xmm12
    2989c6286d71:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    2989c6286d75:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    2989c6286d7b:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    2989c6286d7f:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    2989c6286d83:	c4 e2 69 40 d5                                  	vpmulld xmm2,xmm2,xmm5
    2989c6286d88:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    2989c6286d8c:	c4 41 39 fe c2                                  	vpaddd xmm8,xmm8,xmm10
    2989c6286d91:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c6286d97:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286d9c:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c6286da2:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6286da7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286dac:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c6286db2:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6286db7:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6286dbc:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c6286dc1:	c4 41 38 59 c3                                  	vmulps xmm8,xmm8,xmm11
    2989c6286dc6:	c5 7a 7f 84 38 40 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x240],xmm8
    2989c6286dcf:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    2989c6286dd4:	c4 41 11 db c4                                  	vpand  xmm8,xmm13,xmm12
    2989c6286dd9:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    2989c6286dde:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    2989c6286de4:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    2989c6286de9:	c5 c1 f5 f8                                     	vpmaddwd xmm7,xmm7,xmm0
    2989c6286ded:	c4 e2 41 40 f6                                  	vpmulld xmm6,xmm7,xmm6
    2989c6286df2:	c4 c1 31 db fc                                  	vpand  xmm7,xmm9,xmm12
    2989c6286df7:	c4 41 09 db c4                                  	vpand  xmm8,xmm14,xmm12
    2989c6286dfc:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    2989c6286e01:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    2989c6286e07:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    2989c6286e0c:	c5 c1 f5 c0                                     	vpmaddwd xmm0,xmm7,xmm0
    2989c6286e10:	c4 e2 79 40 c5                                  	vpmulld xmm0,xmm0,xmm5
    2989c6286e15:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    2989c6286e19:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    2989c6286e1e:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    2989c6286e23:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286e28:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6286e2e:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c6286e33:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286e38:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6286e3d:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6286e41:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6286e45:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6286e4a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    2989c6286e4f:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    2989c6286e58:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    2989c6286e5f:	e9 36 05 00 00                                  	jmp    0x2989c628739a
    2989c6286e64:	8b bd b0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x250]
    2989c6286e6a:	45 85 e4                                        	test   r12d,r12d
    2989c6286e6d:	0f 85 24 00 00 00                               	jne    0x2989c6286e97
    2989c6286e73:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    2989c6286e7a:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c6286e7e:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c6286e82:	44 8d 1c 8a                                     	lea    r11d,[rdx+rcx*4]
    2989c6286e86:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c6286e8a:	46 8d 24 8a                                     	lea    r12d,[rdx+r9*4]
    2989c6286e8e:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c6286e92:	e9 6b 00 00 00                                  	jmp    0x2989c6286f02
    2989c6286e97:	f6 85 70 fd ff ff 01                            	test   BYTE PTR [rbp-0x290],0x1
    2989c6286e9e:	0f 85 08 00 00 00                               	jne    0x2989c6286eac
    2989c6286ea4:	45 33 e4                                        	xor    r12d,r12d
    2989c6286ea7:	e9 08 00 00 00                                  	jmp    0x2989c6286eb4
    2989c6286eac:	46 8d 04 8a                                     	lea    r8d,[rdx+r9*4]
    2989c6286eb0:	46 8b 24 00                                     	mov    r12d,DWORD PTR [rax+r8*1]
    2989c6286eb4:	f6 85 70 fd ff ff 02                            	test   BYTE PTR [rbp-0x290],0x2
    2989c6286ebb:	0f 85 08 00 00 00                               	jne    0x2989c6286ec9
    2989c6286ec1:	45 33 db                                        	xor    r11d,r11d
    2989c6286ec4:	e9 08 00 00 00                                  	jmp    0x2989c6286ed1
    2989c6286ec9:	44 8d 04 8a                                     	lea    r8d,[rdx+rcx*4]
    2989c6286ecd:	46 8b 1c 00                                     	mov    r11d,DWORD PTR [rax+r8*1]
    2989c6286ed1:	f6 85 70 fd ff ff 04                            	test   BYTE PTR [rbp-0x290],0x4
    2989c6286ed8:	0f 85 08 00 00 00                               	jne    0x2989c6286ee6
    2989c6286ede:	45 33 c0                                        	xor    r8d,r8d
    2989c6286ee1:	e9 0f 00 00 00                                  	jmp    0x2989c6286ef5
    2989c6286ee6:	44 8b 85 a8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x258]
    2989c6286eed:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    2989c6286ef1:	46 8b 04 00                                     	mov    r8d,DWORD PTR [rax+r8*1]
    2989c6286ef5:	83 bd 70 fd ff ff 08                            	cmp    DWORD PTR [rbp-0x290],0x8
    2989c6286efc:	0f 82 0b 00 00 00                               	jb     0x2989c6286f0d
    2989c6286f02:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    2989c6286f05:	8b 3c 38                                        	mov    edi,DWORD PTR [rax+rdi*1]
    2989c6286f08:	e9 02 00 00 00                                  	jmp    0x2989c6286f0f
    2989c6286f0d:	33 ff                                           	xor    edi,edi
    2989c6286f0f:	c4 c1 79 6e c4                                  	vmovd  xmm0,r12d
    2989c6286f14:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6286f19:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    2989c6286f1f:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    2989c6286f25:	c4 e3 79 22 c7 03                               	vpinsrd xmm0,xmm0,edi,0x3
    2989c6286f2b:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    2989c6286f30:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286f35:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c6286f3b:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c6286f40:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286f45:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c6286f4a:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c6286f4e:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c6286f52:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c6286f57:	4c 8b 15 da e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5da]        # 0x2989c6285538
    2989c6286f5e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6286f63:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6286f67:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    2989c6286f6b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6286f6e:	c5 fa 7f ac 38 60 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x260],xmm5
    2989c6286f77:	4c 8b 15 d2 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4d2]        # 0x2989c6285450
    2989c6286f7e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6286f83:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c6286f87:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    2989c6286f8b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286f90:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c6286f96:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c6286f9b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286fa0:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c6286fa5:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c6286fa9:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c6286fad:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c6286fb2:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    2989c6286fb6:	c5 fa 7f bc 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm7
    2989c6286fbf:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    2989c6286fc4:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    2989c6286fc8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6286fcd:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c6286fd3:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c6286fd8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6286fdd:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c6286fe2:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c6286fe6:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c6286fea:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c6286fef:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    2989c6286ff3:	c5 fa 7f bc 38 50 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x250],xmm7
    2989c6286ffc:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    2989c6287001:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c6287005:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628700a:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6287010:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c6287015:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628701a:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c628701f:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6287023:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6287027:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c628702c:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6287030:	c5 fa 7f 84 38 40 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x240],xmm0
    2989c6287039:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    2989c6287040:	e9 55 03 00 00                                  	jmp    0x2989c628739a
    2989c6287045:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    2989c628704c:	4c 8d 60 58                                     	lea    r12,[rax+0x58]
    2989c6287050:	c4 82 79 18 34 3c                               	vbroadcastss xmm6,DWORD PTR [r12+r15*1]
    2989c6287056:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c628705a:	c4 42 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+rbx*1]
    2989c6287060:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    2989c6287065:	c4 c1 48 58 f0                                  	vaddps xmm6,xmm6,xmm8
    2989c628706a:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    2989c6287070:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    2989c6287075:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    2989c6287079:	c5 b0 59 ed                                     	vmulps xmm5,xmm9,xmm5
    2989c628707d:	41 83 f8 03                                     	cmp    r8d,0x3
    2989c6287081:	0f 84 82 02 00 00                               	je     0x2989c6287309
    2989c6287087:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c628708b:	44 8b 85 f0 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x310]
    2989c6287092:	c4 a1 7a 7f 34 00                               	vmovdqu XMMWORD PTR [rax+r8*1],xmm6
    2989c6287098:	44 8b a5 f8 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x308]
    2989c628709f:	c4 a1 7a 7f 34 20                               	vmovdqu XMMWORD PTR [rax+r12*1],xmm6
    2989c62870a5:	c5 fa 7f b4 38 40 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x140],xmm6
    2989c62870ae:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    2989c62870b7:	c5 fa 7f 94 38 80 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x280],xmm2
    2989c62870c0:	c5 fa 7f ac 38 70 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x270],xmm5
    2989c62870c9:	c5 fa 7f b4 38 30 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x130],xmm6
    2989c62870d2:	45 33 db                                        	xor    r11d,r11d
    2989c62870d5:	49 8b d1                                        	mov    rdx,r9
    2989c62870d8:	e9 37 00 00 00                                  	jmp    0x2989c6287114
    2989c62870dd:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62870e6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62870ef:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62870f8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    2989c6287100:	48 8b 95 28 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1d8]
    2989c6287107:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628710a:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c628710e:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c6287114:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    2989c628711b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6287120:	0f 85 1f 2c 00 00                               	jne    0x2989c6289d45
    2989c6287126:	41 8b cb                                        	mov    ecx,r11d
    2989c6287129:	d3 ee                                           	shr    esi,cl
    2989c628712b:	40 f6 c6 01                                     	test   sil,0x1
    2989c628712f:	0f 84 37 01 00 00                               	je     0x2989c628726c
    2989c6287135:	8b 4c 10 10                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x10]
    2989c6287139:	8b 74 10 0c                                     	mov    esi,DWORD PTR [rax+rdx*1+0xc]
    2989c628713d:	48 89 8d 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rcx
    2989c6287144:	8b 4c 10 08                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x8]
    2989c6287148:	8b 4c 10 04                                     	mov    ecx,DWORD PTR [rax+rdx*1+0x4]
    2989c628714c:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    2989c6287153:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    2989c6287156:	83 f9 02                                        	cmp    ecx,0x2
    2989c6287159:	0f 84 aa 00 00 00                               	je     0x2989c6287209
    2989c628715f:	85 c9                                           	test   ecx,ecx
    2989c6287161:	0f 85 48 00 00 00                               	jne    0x2989c62871af
    2989c6287167:	42 8d 8c 9f 90 02 00 00                         	lea    ecx,[rdi+r11*4+0x290]
    2989c628716f:	c5 fa 10 04 08                                  	vmovss xmm0,DWORD PTR [rax+rcx*1]
    2989c6287174:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    2989c628717a:	48 89 b5 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rsi
    2989c6287181:	41 8b f3                                        	mov    esi,r11d
    2989c6287184:	c1 e6 04                                        	shl    esi,0x4
    2989c6287187:	03 ce                                           	add    ecx,esi
    2989c6287189:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628718d:	8b 85 a8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x258]
    2989c6287193:	8b 95 10 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2f0]
    2989c6287199:	8b d9                                           	mov    ebx,ecx
    2989c628719b:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    2989c62871a1:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c62871a5:	e8 76 40 ef ff                                  	call   0x2989c617b220
    2989c62871aa:	e9 bd 00 00 00                                  	jmp    0x2989c628726c
    2989c62871af:	4c 8b c0                                        	mov    r8,rax
    2989c62871b2:	4c 8b e2                                        	mov    r12,rdx
    2989c62871b5:	43 8b 44 20 14                                  	mov    eax,DWORD PTR [r8+r12*1+0x14]
    2989c62871ba:	42 8d 94 9f 90 02 00 00                         	lea    edx,[rdi+r11*4+0x290]
    2989c62871c2:	c4 c1 7a 10 04 10                               	vmovss xmm0,DWORD PTR [r8+rdx*1]
    2989c62871c8:	42 8d 94 9f 80 02 00 00                         	lea    edx,[rdi+r11*4+0x280]
    2989c62871d0:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    2989c62871d6:	8d 97 30 01 00 00                               	lea    edx,[rdi+0x130]
    2989c62871dc:	41 8b cb                                        	mov    ecx,r11d
    2989c62871df:	c1 e1 04                                        	shl    ecx,0x4
    2989c62871e2:	03 d1                                           	add    edx,ecx
    2989c62871e4:	44 8b ca                                        	mov    r9d,edx
    2989c62871e7:	8b d6                                           	mov    edx,esi
    2989c62871e9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62871ed:	8b d8                                           	mov    ebx,eax
    2989c62871ef:	8b 85 a8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x258]
    2989c62871f5:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    2989c62871fb:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c62871ff:	e8 34 40 ef ff                                  	call   0x2989c617b238
    2989c6287204:	e9 63 00 00 00                                  	jmp    0x2989c628726c
    2989c6287209:	4c 8b c0                                        	mov    r8,rax
    2989c628720c:	4c 8b e2                                        	mov    r12,rdx
    2989c628720f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    2989c6287214:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    2989c6287219:	46 8d bc 9f 90 02 00 00                         	lea    r15d,[rdi+r11*4+0x290]
    2989c6287221:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    2989c6287227:	46 8d bc 9f 80 02 00 00                         	lea    r15d,[rdi+r11*4+0x280]
    2989c628722f:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    2989c6287235:	46 8d bc 9f 70 02 00 00                         	lea    r15d,[rdi+r11*4+0x270]
    2989c628723d:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    2989c6287243:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    2989c628724a:	41 8b c3                                        	mov    eax,r11d
    2989c628724d:	c1 e0 04                                        	shl    eax,0x4
    2989c6287250:	44 03 f8                                        	add    r15d,eax
    2989c6287253:	41 57                                           	push   r15
    2989c6287255:	8b d6                                           	mov    edx,esi
    2989c6287257:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628725b:	8b 85 a8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x258]
    2989c6287261:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    2989c6287267:	e8 bc 3f ef ff                                  	call   0x2989c617b228
    2989c628726c:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    2989c6287273:	41 83 c3 01                                     	add    r11d,0x1
    2989c6287277:	41 83 fb 04                                     	cmp    r11d,0x4
    2989c628727b:	0f 85 7f fe ff ff                               	jne    0x2989c6287100
    2989c6287281:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6287284:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6287288:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    2989c6287292:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    2989c628729c:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    2989c62872a0:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    2989c62872aa:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    2989c62872b4:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    2989c62872b9:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    2989c62872bd:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    2989c62872c7:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    2989c62872cb:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    2989c62872d5:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    2989c62872d9:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    2989c62872de:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    2989c62872e2:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    2989c62872ec:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    2989c62872f0:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c62872fa:	49 8b c0                                        	mov    rax,r8
    2989c62872fd:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    2989c6287304:	e9 91 00 00 00                                  	jmp    0x2989c628739a
    2989c6287309:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    2989c628730f:	8b d6                                           	mov    edx,esi
    2989c6287311:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6287315:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c628731b:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c628731f:	c5 f9 28 dd                                     	vmovapd xmm3,xmm5
    2989c6287323:	e8 00 42 ef ff                                  	call   0x2989c617b528
    2989c6287328:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628732b:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c628732f:	4c 8b 85 28 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1d8]
    2989c6287336:	e9 5f 00 00 00                                  	jmp    0x2989c628739a
    2989c628733b:	4c 8b c0                                        	mov    r8,rax
    2989c628733e:	4d 8d 60 3c                                     	lea    r12,[r8+0x3c]
    2989c6287342:	49 8b c1                                        	mov    rax,r9
    2989c6287345:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    2989c628734b:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    2989c6287355:	4d 8d 60 40                                     	lea    r12,[r8+0x40]
    2989c6287359:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    2989c628735f:	c4 c1 7a 7f ac 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm5
    2989c6287369:	4d 8d 60 44                                     	lea    r12,[r8+0x44]
    2989c628736d:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    2989c6287373:	c4 c1 7a 7f ac 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm5
    2989c628737d:	4d 8d 60 48                                     	lea    r12,[r8+0x48]
    2989c6287381:	c4 c2 79 18 2c 04                               	vbroadcastss xmm5,DWORD PTR [r12+rax*1]
    2989c6287387:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    2989c6287391:	4c 8b d0                                        	mov    r10,rax
    2989c6287394:	49 8b c0                                        	mov    rax,r8
    2989c6287397:	4d 8b c2                                        	mov    r8,r10
    2989c628739a:	c5 fa 6f 84 38 30 02 00 00                      	vmovdqu xmm0,XMMWORD PTR [rax+rdi*1+0x230]
    2989c62873a3:	46 8b 9c 00 34 01 00 00                         	mov    r11d,DWORD PTR [rax+r8*1+0x134]
    2989c62873ab:	42 83 bc 00 34 01 00 00 02                      	cmp    DWORD PTR [rax+r8*1+0x134],0x2
    2989c62873b4:	0f 84 57 00 00 00                               	je     0x2989c6287411
    2989c62873ba:	c5 fa 6f ac 38 60 02 00 00                      	vmovdqu xmm5,XMMWORD PTR [rax+rdi*1+0x260]
    2989c62873c3:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    2989c62873c8:	c5 10 59 ed                                     	vmulps xmm13,xmm13,xmm5
    2989c62873cc:	c5 fa 6f ac 38 50 02 00 00                      	vmovdqu xmm5,XMMWORD PTR [rax+rdi*1+0x250]
    2989c62873d5:	c5 78 10 75 90                                  	vmovups xmm14,XMMWORD PTR [rbp-0x70]
    2989c62873da:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    2989c62873de:	c5 fa 6f ac 38 40 02 00 00                      	vmovdqu xmm5,XMMWORD PTR [rax+rdi*1+0x240]
    2989c62873e7:	c5 f8 10 4d 80                                  	vmovups xmm1,XMMWORD PTR [rbp-0x80]
    2989c62873ec:	c5 f0 59 cd                                     	vmulps xmm1,xmm1,xmm5
    2989c62873f0:	c5 f8 10 ad 20 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2e0]
    2989c62873f8:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c62873fc:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c6287404:	c5 f8 10 bd 60 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2a0]
    2989c628740c:	e9 2b 00 00 00                                  	jmp    0x2989c628743c
    2989c6287411:	c5 7a 6f ac 38 60 02 00 00                      	vmovdqu xmm13,XMMWORD PTR [rax+rdi*1+0x260]
    2989c628741a:	c5 7a 6f b4 38 50 02 00 00                      	vmovdqu xmm14,XMMWORD PTR [rax+rdi*1+0x250]
    2989c6287423:	c5 fa 6f 8c 38 40 02 00 00                      	vmovdqu xmm1,XMMWORD PTR [rax+rdi*1+0x240]
    2989c628742c:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c6287434:	c5 f8 10 bd 60 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2a0]
    2989c628743c:	c4 c1 09 6a f5                                  	vpunpckhdq xmm6,xmm14,xmm13
    2989c6287441:	c5 79 6a c1                                     	vpunpckhdq xmm8,xmm0,xmm1
    2989c6287445:	c5 39 6d ce                                     	vpunpckhqdq xmm9,xmm8,xmm6
    2989c6287449:	c5 7a 7f 8c 38 60 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x160],xmm9
    2989c6287452:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    2989c6287456:	c5 fa 7f b4 38 50 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x150],xmm6
    2989c628745f:	c4 c1 09 62 f5                                  	vpunpckldq xmm6,xmm14,xmm13
    2989c6287464:	c5 f9 62 c1                                     	vpunpckldq xmm0,xmm0,xmm1
    2989c6287468:	c5 79 6d c6                                     	vpunpckhqdq xmm8,xmm0,xmm6
    2989c628746c:	c5 7a 7f 84 38 40 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x140],xmm8
    2989c6287475:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    2989c6287479:	c5 fa 7f 84 38 30 01 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x130],xmm0
    2989c6287482:	44 8b 9d 70 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x90]
    2989c6287489:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c628748d:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c6287492:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c6287497:	c5 79 28 e7                                     	vmovapd xmm12,xmm7
    2989c628749b:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c628749f:	48 8b 9d f8 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x108]
    2989c62874a6:	4c 8b bd f0 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x110]
    2989c62874ad:	4c 8b 85 e8 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x118]
    2989c62874b4:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    2989c62874bc:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c62874bf:	8b 95 f0 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x210]
    2989c62874c5:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    2989c62874c9:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c62874cf:	c5 f8 10 85 10 fc ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x3f0]
    2989c62874d7:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    2989c62874df:	45 8b e3                                        	mov    r12d,r11d
    2989c62874e2:	45 33 db                                        	xor    r11d,r11d
    2989c62874e5:	41 bf 02 00 00 00                               	mov    r15d,0x2
    2989c62874eb:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c62874ef:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    2989c62874f6:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    2989c62874fb:	c4 c1 79 28 eb                                  	vmovapd xmm5,xmm11
    2989c6287500:	e9 48 00 00 00                                  	jmp    0x2989c628754d
    2989c6287505:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628750e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6287517:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6287520:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6287529:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6287532:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628753b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    2989c6287540:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c6287546:	44 8b a5 70 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x90]
    2989c628754d:	4c 89 9d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r11
    2989c6287554:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6287559:	0f 85 0b 28 00 00                               	jne    0x2989c6289d6a
    2989c628755f:	41 8b cb                                        	mov    ecx,r11d
    2989c6287562:	d3 ee                                           	shr    esi,cl
    2989c6287564:	40 f6 c6 01                                     	test   sil,0x1
    2989c6287568:	0f 84 45 0b 00 00                               	je     0x2989c62880b3
    2989c628756e:	41 8b cb                                        	mov    ecx,r11d
    2989c6287571:	c1 e1 04                                        	shl    ecx,0x4
    2989c6287574:	42 8d 34 21                                     	lea    esi,[rcx+r12*1]
    2989c6287578:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    2989c628757f:	44 03 e1                                        	add    r12d,ecx
    2989c6287582:	42 8d 4c 9f 3c                                  	lea    ecx,[rdi+r11*4+0x3c]
    2989c6287587:	8b 0c 08                                        	mov    ecx,DWORD PTR [rax+rcx*1]
    2989c628758a:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    2989c628758f:	8b 14 10                                        	mov    edx,DWORD PTR [rax+rdx*1]
    2989c6287592:	43 8d 1c 99                                     	lea    ebx,[r9+r11*4]
    2989c6287596:	8b 1c 18                                        	mov    ebx,DWORD PTR [rax+rbx*1]
    2989c6287599:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c62875a0:	0f 85 ca 0a 00 00                               	jne    0x2989c6288070
    2989c62875a6:	46 8b 5c 00 74                                  	mov    r11d,DWORD PTR [rax+r8*1+0x74]
    2989c62875ab:	42 83 7c 00 74 00                               	cmp    DWORD PTR [rax+r8*1+0x74],0x0
    2989c62875b1:	0f 85 6b 0a 00 00                               	jne    0x2989c6288022
    2989c62875b7:	4c 8b 15 94 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc194]        # 0x2989c6283752
    2989c62875be:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c62875c3:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c62875c8:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c62875cd:	c4 21 7a 6f 1c 20                               	vmovdqu xmm11,XMMWORD PTR [rax+r12*1]
    2989c62875d3:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    2989c62875d8:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    2989c62875dd:	c4 41 38 c2 e3 01                               	vcmpltps xmm12,xmm8,xmm11
    2989c62875e3:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    2989c62875e8:	c4 41 31 db cc                                  	vpand  xmm9,xmm9,xmm12
    2989c62875ed:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c62875f2:	4c 8b 15 c6 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c6]        # 0x2989c6283bbf
    2989c62875f9:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c62875fe:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6287603:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    2989c6287608:	4c 8b 15 c7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c7]        # 0x2989c6283bd6
    2989c628760f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6287614:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6287619:	c4 41 30 58 cb                                  	vaddps xmm9,xmm9,xmm11
    2989c628761e:	4c 8b 15 c8 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c8]        # 0x2989c6283bed
    2989c6287625:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    2989c628762b:	c4 41 30 54 df                                  	vandps xmm11,xmm9,xmm15
    2989c6287630:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    2989c6287636:	c4 41 7a 5b db                                  	vcvttps2dq xmm11,xmm11
    2989c628763b:	c4 41 21 ef df                                  	vpxor  xmm11,xmm11,xmm15
    2989c6287640:	4c 8b 15 c9 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c9]        # 0x2989c6283c10
    2989c6287647:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c628764c:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c6287651:	4c 8b 15 3d 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9b3d]        # 0x2989c6281195
    2989c6287658:	c4 41 30 54 0a                                  	vandps xmm9,xmm9,XMMWORD PTR [r10]
    2989c628765d:	4c 8b 15 cb c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5cb]        # 0x2989c6283c2f
    2989c6287664:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6287669:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c628766e:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    2989c6287674:	c4 41 31 df fc                                  	vpandn xmm15,xmm9,xmm12
    2989c6287679:	c4 41 21 db c9                                  	vpand  xmm9,xmm11,xmm9
    2989c628767e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c6287683:	c4 42 31 2b c9                                  	vpackusdw xmm9,xmm9,xmm9
    2989c6287688:	c4 41 31 67 c9                                  	vpackuswb xmm9,xmm9,xmm9
    2989c628768d:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c6287692:	46 8b 1c 00                                     	mov    r11d,DWORD PTR [rax+r8*1]
    2989c6287696:	44 0f af da                                     	imul   r11d,edx
    2989c628769a:	44 03 db                                        	add    r11d,ebx
    2989c628769d:	47 8d 24 1b                                     	lea    r12d,[r11+r11*1]
    2989c62876a1:	48 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rbx
    2989c62876a8:	42 8b 5c 00 18                                  	mov    ebx,DWORD PTR [rax+r8*1+0x18]
    2989c62876ad:	46 8d 1c db                                     	lea    r11d,[rbx+r11*8]
    2989c62876b1:	83 f9 03                                        	cmp    ecx,0x3
    2989c62876b4:	0f 84 80 00 00 00                               	je     0x2989c628773a
    2989c62876ba:	8b d9                                           	mov    ebx,ecx
    2989c62876bc:	83 e3 01                                        	and    ebx,0x1
    2989c62876bf:	f7 db                                           	neg    ebx
    2989c62876c1:	c4 63 29 22 d3 00                               	vpinsrd xmm10,xmm10,ebx,0x0
    2989c62876c7:	8b d9                                           	mov    ebx,ecx
    2989c62876c9:	c1 e3 1e                                        	shl    ebx,0x1e
    2989c62876cc:	c1 fb 1f                                        	sar    ebx,0x1f
    2989c62876cf:	c4 63 29 22 d3 01                               	vpinsrd xmm10,xmm10,ebx,0x1
    2989c62876d5:	42 8b 5c 00 68                                  	mov    ebx,DWORD PTR [rax+r8*1+0x68]
    2989c62876da:	42 83 7c 00 68 00                               	cmp    DWORD PTR [rax+r8*1+0x68],0x0
    2989c62876e0:	0f 84 3a 00 00 00                               	je     0x2989c6287720
    2989c62876e6:	42 8b 5c 00 70                                  	mov    ebx,DWORD PTR [rax+r8*1+0x70]
    2989c62876eb:	42 83 7c 00 70 00                               	cmp    DWORD PTR [rax+r8*1+0x70],0x0
    2989c62876f1:	0f 84 29 00 00 00                               	je     0x2989c6287720
    2989c62876f7:	42 8b 5c 00 1c                                  	mov    ebx,DWORD PTR [rax+r8*1+0x1c]
    2989c62876fc:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    2989c6287700:	c5 7b 10 1c 30                                  	vmovsd xmm11,QWORD PTR [rax+rsi*1]
    2989c6287705:	c4 21 7b 10 24 20                               	vmovsd xmm12,QWORD PTR [rax+r12*1]
    2989c628770b:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    2989c6287710:	c4 41 21 db da                                  	vpand  xmm11,xmm11,xmm10
    2989c6287715:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    2989c628771a:	c4 21 78 13 1c 20                               	vmovlps QWORD PTR [rax+r12*1],xmm11
    2989c6287720:	c4 21 7b 10 1c 18                               	vmovsd xmm11,QWORD PTR [rax+r11*1]
    2989c6287726:	c4 41 29 df fb                                  	vpandn xmm15,xmm10,xmm11
    2989c628772b:	c4 41 31 db ca                                  	vpand  xmm9,xmm9,xmm10
    2989c6287730:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c6287735:	e9 33 00 00 00                                  	jmp    0x2989c628776d
    2989c628773a:	42 8b 5c 00 68                                  	mov    ebx,DWORD PTR [rax+r8*1+0x68]
    2989c628773f:	42 83 7c 00 68 00                               	cmp    DWORD PTR [rax+r8*1+0x68],0x0
    2989c6287745:	0f 84 22 00 00 00                               	je     0x2989c628776d
    2989c628774b:	42 8b 5c 00 70                                  	mov    ebx,DWORD PTR [rax+r8*1+0x70]
    2989c6287750:	42 83 7c 00 70 00                               	cmp    DWORD PTR [rax+r8*1+0x70],0x0
    2989c6287756:	0f 84 11 00 00 00                               	je     0x2989c628776d
    2989c628775c:	42 8b 5c 00 1c                                  	mov    ebx,DWORD PTR [rax+r8*1+0x1c]
    2989c6287761:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    2989c6287765:	48 8b 1c 30                                     	mov    rbx,QWORD PTR [rax+rsi*1]
    2989c6287769:	4a 89 1c 20                                     	mov    QWORD PTR [rax+r12*1],rbx
    2989c628776d:	c4 21 78 13 0c 18                               	vmovlps QWORD PTR [rax+r11*1],xmm9
    2989c6287773:	46 8b 5c 00 68                                  	mov    r11d,DWORD PTR [rax+r8*1+0x68]
    2989c6287778:	42 83 7c 00 68 00                               	cmp    DWORD PTR [rax+r8*1+0x68],0x0
    2989c628777e:	0f 84 2f 09 00 00                               	je     0x2989c62880b3
    2989c6287784:	46 8b 5c 00 70                                  	mov    r11d,DWORD PTR [rax+r8*1+0x70]
    2989c6287789:	42 83 7c 00 70 00                               	cmp    DWORD PTR [rax+r8*1+0x70],0x0
    2989c628778f:	0f 84 1e 09 00 00                               	je     0x2989c62880b3
    2989c6287795:	46 8b 5c 00 14                                  	mov    r11d,DWORD PTR [rax+r8*1+0x14]
    2989c628779a:	42 83 7c 00 14 02                               	cmp    DWORD PTR [rax+r8*1+0x14],0x2
    2989c62877a0:	0f 85 0d 09 00 00                               	jne    0x2989c62880b3
    2989c62877a6:	46 8b 5c 00 18                                  	mov    r11d,DWORD PTR [rax+r8*1+0x18]
    2989c62877ab:	45 85 db                                        	test   r11d,r11d
    2989c62877ae:	0f 84 ff 08 00 00                               	je     0x2989c62880b3
    2989c62877b4:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    2989c62877b8:	42 8b 1c 20                                     	mov    ebx,DWORD PTR [rax+r12*1]
    2989c62877bc:	42 83 3c 20 00                                  	cmp    DWORD PTR [rax+r12*1],0x0
    2989c62877c1:	0f 84 ec 08 00 00                               	je     0x2989c62880b3
    2989c62877c7:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    2989c62877cb:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c62877cf:	41 83 eb 3c                                     	sub    r11d,0x3c
    2989c62877d3:	46 8b 1c 18                                     	mov    r11d,DWORD PTR [rax+r11*1]
    2989c62877d7:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    2989c62877dd:	c1 eb 02                                        	shr    ebx,0x2
    2989c62877e0:	41 0f af db                                     	imul   ebx,r11d
    2989c62877e4:	c1 e3 04                                        	shl    ebx,0x4
    2989c62877e7:	46 8d 1c 23                                     	lea    r11d,[rbx+r12*1]
    2989c62877eb:	44 8d 24 95 00 00 00 00                         	lea    r12d,[rdx*4+0x0]
    2989c62877f3:	41 8b dc                                        	mov    ebx,r12d
    2989c62877f6:	83 e3 f0                                        	and    ebx,0xfffffff0
    2989c62877f9:	44 03 db                                        	add    r11d,ebx
    2989c62877fc:	42 8b 5c 00 6c                                  	mov    ebx,DWORD PTR [rax+r8*1+0x6c]
    2989c6287801:	81 eb 01 02 00 00                               	sub    ebx,0x201
    2989c6287807:	48 89 95 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rdx
    2989c628780e:	33 d2                                           	xor    edx,edx
    2989c6287810:	85 db                                           	test   ebx,ebx
    2989c6287812:	0f 94 c2                                        	sete   dl
    2989c6287815:	83 fb 02                                        	cmp    ebx,0x2
    2989c6287818:	0f 94 c3                                        	sete   bl
    2989c628781b:	0f b6 db                                        	movzx  ebx,bl
    2989c628781e:	0b da                                           	or     ebx,edx
    2989c6287820:	0f 85 0d 00 00 00                               	jne    0x2989c6287833
    2989c6287826:	4a c7 04 18 00 00 00 00                         	mov    QWORD PTR [rax+r11*1],0x0
    2989c628782e:	e9 80 08 00 00                                  	jmp    0x2989c62880b3
    2989c6287833:	83 e1 03                                        	and    ecx,0x3
    2989c6287836:	41 83 e4 0c                                     	and    r12d,0xc
    2989c628783a:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    2989c6287840:	83 e3 03                                        	and    ebx,0x3
    2989c6287843:	41 0b dc                                        	or     ebx,r12d
    2989c6287846:	44 8d 24 1b                                     	lea    r12d,[rbx+rbx*1]
    2989c628784a:	41 83 e4 3f                                     	and    r12d,0x3f
    2989c628784e:	4c 8b d1                                        	mov    r10,rcx
    2989c6287851:	41 8b cc                                        	mov    ecx,r12d
    2989c6287854:	4d 8b e2                                        	mov    r12,r10
    2989c6287857:	49 d3 e4                                        	shl    r12,cl
    2989c628785a:	4a 8b 1c 18                                     	mov    rbx,QWORD PTR [rax+r11*1]
    2989c628785e:	ba ff ff ff ff                                  	mov    edx,0xffffffff
    2989c6287863:	48 3b da                                        	cmp    rbx,rdx
    2989c6287866:	0f 84 ce 03 00 00                               	je     0x2989c6287c3a
    2989c628786c:	49 0b dc                                        	or     rbx,r12
    2989c628786f:	4a 89 1c 18                                     	mov    QWORD PTR [rax+r11*1],rbx
    2989c6287873:	48 3b d3                                        	cmp    rdx,rbx
    2989c6287876:	0f 85 37 08 00 00                               	jne    0x2989c62880b3
    2989c628787c:	46 8b 64 00 1c                                  	mov    r12d,DWORD PTR [rax+r8*1+0x1c]
    2989c6287881:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    2989c6287887:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    2989c628788d:	42 8b 14 00                                     	mov    edx,DWORD PTR [rax+r8*1]
    2989c6287891:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    2989c6287897:	83 c9 03                                        	or     ecx,0x3
    2989c628789a:	0f af ca                                        	imul   ecx,edx
    2989c628789d:	03 cb                                           	add    ecx,ebx
    2989c628789f:	41 8d 0c cc                                     	lea    ecx,[r12+rcx*8]
    2989c62878a3:	c5 7a 6f 4c 08 10                               	vmovdqu xmm9,XMMWORD PTR [rax+rcx*1+0x10]
    2989c62878a9:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c62878af:	c5 7a 6f 1c 08                                  	vmovdqu xmm11,XMMWORD PTR [rax+rcx*1]
    2989c62878b4:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c62878ba:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    2989c62878bf:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    2989c62878c5:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    2989c62878cb:	8b f1                                           	mov    esi,ecx
    2989c62878cd:	83 ce 02                                        	or     esi,0x2
    2989c62878d0:	0f af f2                                        	imul   esi,edx
    2989c62878d3:	03 f3                                           	add    esi,ebx
    2989c62878d5:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    2989c62878d9:	c5 7a 6f 64 30 10                               	vmovdqu xmm12,XMMWORD PTR [rax+rsi*1+0x10]
    2989c62878df:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c62878e5:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    2989c62878ea:	c5 7a 6f 2c 30                                  	vmovdqu xmm13,XMMWORD PTR [rax+rsi*1]
    2989c62878ef:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    2989c62878f5:	c4 41 29 db d6                                  	vpand  xmm10,xmm10,xmm14
    2989c62878fa:	8b f1                                           	mov    esi,ecx
    2989c62878fc:	83 ce 01                                        	or     esi,0x1
    2989c62878ff:	0f af f2                                        	imul   esi,edx
    2989c6287902:	03 f3                                           	add    esi,ebx
    2989c6287904:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    2989c6287908:	c5 7a 6f 74 30 10                               	vmovdqu xmm14,XMMWORD PTR [rax+rsi*1+0x10]
    2989c628790e:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    2989c6287914:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    2989c6287918:	c5 fa 6f 0c 30                                  	vmovdqu xmm1,XMMWORD PTR [rax+rsi*1]
    2989c628791d:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    2989c6287922:	c5 29 db d2                                     	vpand  xmm10,xmm10,xmm2
    2989c6287926:	0f af ca                                        	imul   ecx,edx
    2989c6287929:	03 d9                                           	add    ebx,ecx
    2989c628792b:	45 8d 24 dc                                     	lea    r12d,[r12+rbx*8]
    2989c628792f:	c4 a1 7a 6f 54 20 10                            	vmovdqu xmm2,XMMWORD PTR [rax+r12*1+0x10]
    2989c6287936:	c5 e8 c2 c2 00                                  	vcmpeqps xmm0,xmm2,xmm2
    2989c628793b:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    2989c628793f:	c4 21 7a 6f 14 20                               	vmovdqu xmm10,XMMWORD PTR [rax+r12*1]
    2989c6287945:	c4 c1 28 c2 ea 00                               	vcmpeqps xmm5,xmm10,xmm10
    2989c628794b:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c628794f:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    2989c6287954:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    2989c6287959:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    2989c628795d:	41 83 fc 0f                                     	cmp    r12d,0xf
    2989c6287961:	0f 84 16 00 00 00                               	je     0x2989c628797d
    2989c6287967:	4a c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [rax+r11*1+0x8],0x7f800000
    2989c6287970:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c6287978:	e9 36 07 00 00                                  	jmp    0x2989c62880b3
    2989c628797d:	4c 8b 15 b5 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5b5]        # 0x2989c6283f39
    2989c6287984:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6287989:	4c 8b 15 b8 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5b8]        # 0x2989c6283f48
    2989c6287990:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    2989c6287996:	4c 8b 15 bb c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5bb]        # 0x2989c6283f58
    2989c628799d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c62879a2:	4c 8b 15 be c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5be]        # 0x2989c6283f67
    2989c62879a9:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c62879af:	4c 8b 15 c1 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c1]        # 0x2989c6283f77
    2989c62879b6:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c62879bb:	4c 8b 15 c4 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c4]        # 0x2989c6283f86
    2989c62879c2:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    2989c62879c8:	4c 8b 15 c7 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5c7]        # 0x2989c6283f96
    2989c62879cf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c62879d4:	4c 8b 15 ca c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ca]        # 0x2989c6283fa5
    2989c62879db:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    2989c62879e1:	4c 8b 15 cd c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5cd]        # 0x2989c6283fb5
    2989c62879e8:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c62879ed:	4c 8b 15 d0 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d0]        # 0x2989c6283fc4
    2989c62879f4:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    2989c62879fa:	4c 8b 15 d3 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d3]        # 0x2989c6283fd4
    2989c6287a01:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6287a06:	4c 8b 15 d6 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d6]        # 0x2989c6283fe3
    2989c6287a0d:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c6287a13:	4c 8b 15 d9 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5d9]        # 0x2989c6283ff3
    2989c6287a1a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c6287a1f:	4c 8b 15 dc c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5dc]        # 0x2989c6284002
    2989c6287a26:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6287a2c:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    2989c6287a31:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6287a35:	c5 f9 73 f0 3f                                  	vpsllq xmm0,xmm0,0x3f
    2989c6287a3a:	c5 f9 73 d0 1f                                  	vpsrlq xmm0,xmm0,0x1f
    2989c6287a3f:	4c 8b 15 df c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5df]        # 0x2989c6284025
    2989c6287a46:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    2989c6287a4c:	c5 78 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm9
    2989c6287a51:	4c 8b 15 e2 c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5e2]        # 0x2989c628403a
    2989c6287a58:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6287a5d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6287a62:	c5 f8 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm5
    2989c6287a67:	c4 c1 30 c2 ea 01                               	vcmpltps xmm5,xmm9,xmm10
    2989c6287a6d:	c4 41 28 c2 c9 01                               	vcmpltps xmm9,xmm10,xmm9
    2989c6287a73:	c4 c1 51 eb e9                                  	vpor   xmm5,xmm5,xmm9
    2989c6287a78:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    2989c6287a7c:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c6287a80:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287a85:	4c 8b 15 ae c5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc5ae]        # 0x2989c628403a
    2989c6287a8c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6287a91:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6287a96:	c4 41 51 df f9                                  	vpandn xmm15,xmm5,xmm9
    2989c6287a9b:	c5 a9 db ed                                     	vpand  xmm5,xmm10,xmm5
    2989c6287a9f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287aa4:	c5 50 c2 ca 01                                  	vcmpltps xmm9,xmm5,xmm2
    2989c6287aa9:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c6287aad:	c4 c1 59 db c1                                  	vpand  xmm0,xmm4,xmm9
    2989c6287ab2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287ab7:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6287abb:	c4 c1 69 db e9                                  	vpand  xmm5,xmm2,xmm9
    2989c6287ac0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287ac5:	c5 50 c2 c9 01                                  	vcmpltps xmm9,xmm5,xmm1
    2989c6287aca:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c6287ace:	c4 c1 61 db c1                                  	vpand  xmm0,xmm3,xmm9
    2989c6287ad3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287ad8:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6287adc:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c6287ae1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287ae6:	c4 41 50 c2 ce 01                               	vcmpltps xmm9,xmm5,xmm14
    2989c6287aec:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c6287af0:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c6287af5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287afa:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6287afe:	c4 c1 09 db e9                                  	vpand  xmm5,xmm14,xmm9
    2989c6287b03:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287b08:	c4 41 50 c2 c5 01                               	vcmpltps xmm8,xmm5,xmm13
    2989c6287b0e:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c6287b12:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c6287b17:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287b1c:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c6287b20:	c4 c1 11 db e8                                  	vpand  xmm5,xmm13,xmm8
    2989c6287b25:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287b2a:	c4 c1 50 c2 fc 01                               	vcmpltps xmm7,xmm5,xmm12
    2989c6287b30:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6287b34:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6287b38:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287b3d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6287b41:	c5 99 db ef                                     	vpand  xmm5,xmm12,xmm7
    2989c6287b45:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287b4a:	c4 c1 50 c2 f3 01                               	vcmpltps xmm6,xmm5,xmm11
    2989c6287b50:	c5 f8 10 7d 80                                  	vmovups xmm7,XMMWORD PTR [rbp-0x80]
    2989c6287b55:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c6287b59:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    2989c6287b5d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287b62:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c6287b66:	c5 a1 db ee                                     	vpand  xmm5,xmm11,xmm6
    2989c6287b6a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287b6f:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c6287b74:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    2989c6287b79:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6287b7e:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6287b82:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    2989c6287b86:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287b8b:	c5 fa 7f 84 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm0
    2989c6287b94:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6287b98:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6287b9c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287ba1:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    2989c6287baa:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c6287bae:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c6287bb2:	45 33 e4                                        	xor    r12d,r12d
    2989c6287bb5:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c6287bb9:	41 0f 97 c4                                     	seta   r12b
    2989c6287bbd:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    2989c6287bc3:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    2989c6287bcb:	0b d3                                           	or     edx,ebx
    2989c6287bcd:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    2989c6287bd2:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c6287bd7:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6287bdb:	45 0f 47 e7                                     	cmova  r12d,r15d
    2989c6287bdf:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    2989c6287be7:	0b d3                                           	or     edx,ebx
    2989c6287be9:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    2989c6287bee:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c6287bf3:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c6287bf8:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6287bfc:	44 0f 47 e2                                     	cmova  r12d,edx
    2989c6287c00:	41 c1 e4 02                                     	shl    r12d,0x2
    2989c6287c04:	41 0b dc                                        	or     ebx,r12d
    2989c6287c07:	c5 fa 10 04 18                                  	vmovss xmm0,DWORD PTR [rax+rbx*1]
    2989c6287c0c:	c4 a1 7a 11 44 18 08                            	vmovss DWORD PTR [rax+r11*1+0x8],xmm0
    2989c6287c13:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    2989c6287c19:	44 0b e3                                        	or     r12d,ebx
    2989c6287c1c:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c6287c20:	46 89 64 18 0c                                  	mov    DWORD PTR [rax+r11*1+0xc],r12d
    2989c6287c25:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    2989c6287c2d:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c6287c35:	e9 79 04 00 00                                  	jmp    0x2989c62880b3
    2989c6287c3a:	42 8b 5c 18 0c                                  	mov    ebx,DWORD PTR [rax+r11*1+0xc]
    2989c6287c3f:	8b d3                                           	mov    edx,ebx
    2989c6287c41:	83 e2 3f                                        	and    edx,0x3f
    2989c6287c44:	8b ca                                           	mov    ecx,edx
    2989c6287c46:	49 d3 ec                                        	shr    r12,cl
    2989c6287c49:	41 f6 c4 01                                     	test   r12b,0x1
    2989c6287c4d:	0f 84 60 04 00 00                               	je     0x2989c62880b3
    2989c6287c53:	83 e3 01                                        	and    ebx,0x1
    2989c6287c56:	44 8d 24 9e                                     	lea    r12d,[rsi+rbx*4]
    2989c6287c5a:	c4 a1 7a 10 04 20                               	vmovss xmm0,DWORD PTR [rax+r12*1]
    2989c6287c60:	c4 a1 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [rax+r11*1+0x8]
    2989c6287c67:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    2989c6287c6b:	0f 86 42 04 00 00                               	jbe    0x2989c62880b3
    2989c6287c71:	46 8b 64 00 1c                                  	mov    r12d,DWORD PTR [rax+r8*1+0x1c]
    2989c6287c76:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    2989c6287c7c:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    2989c6287c82:	42 8b 14 00                                     	mov    edx,DWORD PTR [rax+r8*1]
    2989c6287c86:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    2989c6287c8c:	83 c9 03                                        	or     ecx,0x3
    2989c6287c8f:	0f af ca                                        	imul   ecx,edx
    2989c6287c92:	03 cb                                           	add    ecx,ebx
    2989c6287c94:	41 8d 0c cc                                     	lea    ecx,[r12+rcx*8]
    2989c6287c98:	c5 fa 6f 44 08 10                               	vmovdqu xmm0,XMMWORD PTR [rax+rcx*1+0x10]
    2989c6287c9e:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    2989c6287ca3:	c5 fa 6f 3c 08                                  	vmovdqu xmm7,XMMWORD PTR [rax+rcx*1]
    2989c6287ca8:	c5 40 c2 cf 00                                  	vcmpeqps xmm9,xmm7,xmm7
    2989c6287cad:	c4 c1 49 db f1                                  	vpand  xmm6,xmm6,xmm9
    2989c6287cb2:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    2989c6287cb8:	81 e1 fc ff ff 1f                               	and    ecx,0x1ffffffc
    2989c6287cbe:	8b f1                                           	mov    esi,ecx
    2989c6287cc0:	83 ce 02                                        	or     esi,0x2
    2989c6287cc3:	0f af f2                                        	imul   esi,edx
    2989c6287cc6:	03 f3                                           	add    esi,ebx
    2989c6287cc8:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    2989c6287ccc:	c5 7a 6f 4c 30 10                               	vmovdqu xmm9,XMMWORD PTR [rax+rsi*1+0x10]
    2989c6287cd2:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c6287cd8:	c4 c1 49 db f2                                  	vpand  xmm6,xmm6,xmm10
    2989c6287cdd:	c5 7a 6f 14 30                                  	vmovdqu xmm10,XMMWORD PTR [rax+rsi*1]
    2989c6287ce2:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c6287ce8:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    2989c6287ced:	8b f1                                           	mov    esi,ecx
    2989c6287cef:	83 ce 01                                        	or     esi,0x1
    2989c6287cf2:	0f af f2                                        	imul   esi,edx
    2989c6287cf5:	03 f3                                           	add    esi,ebx
    2989c6287cf7:	41 8d 34 f4                                     	lea    esi,[r12+rsi*8]
    2989c6287cfb:	c5 7a 6f 5c 30 10                               	vmovdqu xmm11,XMMWORD PTR [rax+rsi*1+0x10]
    2989c6287d01:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c6287d07:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    2989c6287d0c:	c5 7a 6f 24 30                                  	vmovdqu xmm12,XMMWORD PTR [rax+rsi*1]
    2989c6287d11:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c6287d17:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    2989c6287d1c:	0f af ca                                        	imul   ecx,edx
    2989c6287d1f:	03 d9                                           	add    ebx,ecx
    2989c6287d21:	45 8d 24 dc                                     	lea    r12d,[r12+rbx*8]
    2989c6287d25:	c4 21 7a 6f 6c 20 10                            	vmovdqu xmm13,XMMWORD PTR [rax+r12*1+0x10]
    2989c6287d2c:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    2989c6287d32:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    2989c6287d37:	c4 21 7a 6f 34 20                               	vmovdqu xmm14,XMMWORD PTR [rax+r12*1]
    2989c6287d3d:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    2989c6287d43:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    2989c6287d47:	c5 c9 72 f6 1f                                  	vpslld xmm6,xmm6,0x1f
    2989c6287d4c:	c5 c9 72 e6 1f                                  	vpsrad xmm6,xmm6,0x1f
    2989c6287d51:	c5 78 50 e6                                     	vmovmskps r12d,xmm6
    2989c6287d55:	41 83 fc 0f                                     	cmp    r12d,0xf
    2989c6287d59:	0f 84 0e 00 00 00                               	je     0x2989c6287d6d
    2989c6287d5f:	4a c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [rax+r11*1+0x8],0x7f800000
    2989c6287d68:	e9 46 03 00 00                                  	jmp    0x2989c62880b3
    2989c6287d6d:	4c 8b 15 c5 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c5]        # 0x2989c6283f39
    2989c6287d74:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6287d79:	4c 8b 15 c8 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c8]        # 0x2989c6283f48
    2989c6287d80:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    2989c6287d86:	4c 8b 15 cb c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1cb]        # 0x2989c6283f58
    2989c6287d8d:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6287d92:	4c 8b 15 ce c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ce]        # 0x2989c6283f67
    2989c6287d99:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c6287d9f:	4c 8b 15 d1 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d1]        # 0x2989c6283f77
    2989c6287da6:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c6287dab:	4c 8b 15 d4 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d4]        # 0x2989c6283f86
    2989c6287db2:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c6287db8:	4c 8b 15 d7 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1d7]        # 0x2989c6283f96
    2989c6287dbf:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6287dc4:	4c 8b 15 da c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1da]        # 0x2989c6283fa5
    2989c6287dcb:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c6287dd1:	4c 8b 15 dd c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1dd]        # 0x2989c6283fb5
    2989c6287dd8:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c6287ddd:	4c 8b 15 e0 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e0]        # 0x2989c6283fc4
    2989c6287de4:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6287dea:	4c 8b 15 e3 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e3]        # 0x2989c6283fd4
    2989c6287df1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6287df6:	4c 8b 15 e6 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e6]        # 0x2989c6283fe3
    2989c6287dfd:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6287e03:	4c 8b 15 e9 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1e9]        # 0x2989c6283ff3
    2989c6287e0a:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6287e0f:	4c 8b 15 ec c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ec]        # 0x2989c6284002
    2989c6287e16:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    2989c6287e1c:	c5 f8 11 75 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm6
    2989c6287e21:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c6287e25:	c5 c9 73 f6 3f                                  	vpsllq xmm6,xmm6,0x3f
    2989c6287e2a:	c5 c9 73 d6 1f                                  	vpsrlq xmm6,xmm6,0x1f
    2989c6287e2f:	4c 8b 15 ef c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1ef]        # 0x2989c6284025
    2989c6287e36:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    2989c6287e3c:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c6287e41:	4c 8b 15 f2 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1f2]        # 0x2989c628403a
    2989c6287e48:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6287e4d:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c6287e51:	c5 f8 11 4d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm1
    2989c6287e56:	c4 c1 78 c2 ce 01                               	vcmpltps xmm1,xmm0,xmm14
    2989c6287e5c:	c5 88 c2 c0 01                                  	vcmpltps xmm0,xmm14,xmm0
    2989c6287e61:	c5 f1 eb c0                                     	vpor   xmm0,xmm1,xmm0
    2989c6287e65:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    2989c6287e69:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    2989c6287e6d:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6287e72:	4c 8b 15 c1 c1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc1c1]        # 0x2989c628403a
    2989c6287e79:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6287e7e:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c6287e82:	c5 79 df f9                                     	vpandn xmm15,xmm0,xmm1
    2989c6287e86:	c5 89 db c0                                     	vpand  xmm0,xmm14,xmm0
    2989c6287e8a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287e8f:	c4 41 78 c2 f5 01                               	vcmpltps xmm14,xmm0,xmm13
    2989c6287e95:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    2989c6287e99:	c4 c1 39 db f6                                  	vpand  xmm6,xmm8,xmm14
    2989c6287e9e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6287ea3:	c5 09 df f8                                     	vpandn xmm15,xmm14,xmm0
    2989c6287ea7:	c4 c1 11 db c6                                  	vpand  xmm0,xmm13,xmm14
    2989c6287eac:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287eb1:	c4 41 78 c2 c4 01                               	vcmpltps xmm8,xmm0,xmm12
    2989c6287eb7:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    2989c6287ebb:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c6287ec0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287ec5:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c6287ec9:	c4 c1 19 db c0                                  	vpand  xmm0,xmm12,xmm8
    2989c6287ece:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287ed3:	c4 c1 78 c2 f3 01                               	vcmpltps xmm6,xmm0,xmm11
    2989c6287ed9:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c6287edd:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    2989c6287ee1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287ee6:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c6287eea:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    2989c6287eee:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287ef3:	c4 c1 78 c2 f2 01                               	vcmpltps xmm6,xmm0,xmm10
    2989c6287ef9:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c6287efd:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    2989c6287f01:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287f06:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c6287f0a:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    2989c6287f0e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287f13:	c4 c1 78 c2 f1 01                               	vcmpltps xmm6,xmm0,xmm9
    2989c6287f19:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c6287f1d:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    2989c6287f21:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287f26:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c6287f2a:	c5 b1 db c6                                     	vpand  xmm0,xmm9,xmm6
    2989c6287f2e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287f33:	c5 f8 c2 f7 01                                  	vcmpltps xmm6,xmm0,xmm7
    2989c6287f38:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c6287f3d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    2989c6287f41:	c5 b9 db ee                                     	vpand  xmm5,xmm8,xmm6
    2989c6287f45:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287f4a:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    2989c6287f4e:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    2989c6287f52:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287f57:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c6287f5c:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6287f61:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6287f66:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6287f6a:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6287f6e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6287f73:	c5 fa 7f ac 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm5
    2989c6287f7c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6287f80:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6287f84:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6287f89:	c5 fa 7f 84 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm0
    2989c6287f92:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c6287f96:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c6287f9a:	45 33 e4                                        	xor    r12d,r12d
    2989c6287f9d:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c6287fa1:	41 0f 97 c4                                     	seta   r12b
    2989c6287fa5:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    2989c6287fab:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    2989c6287fb3:	0b d3                                           	or     edx,ebx
    2989c6287fb5:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    2989c6287fba:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c6287fbf:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6287fc3:	45 0f 47 e7                                     	cmova  r12d,r15d
    2989c6287fc7:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    2989c6287fcf:	0b d3                                           	or     edx,ebx
    2989c6287fd1:	c5 fa 10 2c 10                                  	vmovss xmm5,DWORD PTR [rax+rdx*1]
    2989c6287fd6:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c6287fdb:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c6287fe0:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6287fe4:	44 0f 47 e2                                     	cmova  r12d,edx
    2989c6287fe8:	41 c1 e4 02                                     	shl    r12d,0x2
    2989c6287fec:	41 0b dc                                        	or     ebx,r12d
    2989c6287fef:	c5 fa 10 04 18                                  	vmovss xmm0,DWORD PTR [rax+rbx*1]
    2989c6287ff4:	c4 a1 7a 11 44 18 08                            	vmovss DWORD PTR [rax+r11*1+0x8],xmm0
    2989c6287ffb:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    2989c6288001:	44 0b e3                                        	or     r12d,ebx
    2989c6288004:	46 8b 24 20                                     	mov    r12d,DWORD PTR [rax+r12*1]
    2989c6288008:	46 89 64 18 0c                                  	mov    DWORD PTR [rax+r11*1+0xc],r12d
    2989c628800d:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    2989c6288015:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c628801d:	e9 91 00 00 00                                  	jmp    0x2989c62880b3
    2989c6288022:	41 54                                           	push   r12
    2989c6288024:	41 bb 03 00 00 00                               	mov    r11d,0x3
    2989c628802a:	44 8b ce                                        	mov    r9d,esi
    2989c628802d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288031:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6288034:	44 8b d2                                        	mov    r10d,edx
    2989c6288037:	8b d3                                           	mov    edx,ebx
    2989c6288039:	8b d9                                           	mov    ebx,ecx
    2989c628803b:	41 8b ca                                        	mov    ecx,r10d
    2989c628803e:	e8 25 32 ef ff                                  	call   0x2989c617b268
    2989c6288043:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288046:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c628804a:	41 bf 02 00 00 00                               	mov    r15d,0x2
    2989c6288050:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6288054:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    2989c628805b:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    2989c6288063:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c628806b:	e9 43 00 00 00                                  	jmp    0x2989c62880b3
    2989c6288070:	41 54                                           	push   r12
    2989c6288072:	44 8b ce                                        	mov    r9d,esi
    2989c6288075:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288079:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c628807c:	44 8b d2                                        	mov    r10d,edx
    2989c628807f:	8b d3                                           	mov    edx,ebx
    2989c6288081:	8b d9                                           	mov    ebx,ecx
    2989c6288083:	41 8b ca                                        	mov    ecx,r10d
    2989c6288086:	e8 cd 31 ef ff                                  	call   0x2989c617b258
    2989c628808b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628808e:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6288092:	41 bf 02 00 00 00                               	mov    r15d,0x2
    2989c6288098:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c628809c:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    2989c62880a3:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    2989c62880ab:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c62880b3:	44 8b 9d 28 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1d8]
    2989c62880ba:	41 83 c3 01                                     	add    r11d,0x1
    2989c62880be:	41 83 fb 04                                     	cmp    r11d,0x4
    2989c62880c2:	0f 85 78 f4 ff ff                               	jne    0x2989c6287540
    2989c62880c8:	4c 8b d8                                        	mov    r11,rax
    2989c62880cb:	41 c7 44 3b 18 00 00 00 00                      	mov    DWORD PTR [r11+rdi*1+0x18],0x0
    2989c62880d4:	48 c7 85 28 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x1d8],0x1
    2989c62880df:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c62880e5:	49 8b c3                                        	mov    rax,r11
    2989c62880e8:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c62880ec:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c62880f1:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c62880f6:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c62880fa:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    2989c6288102:	44 8b 9d f0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x210]
    2989c6288109:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    2989c6288110:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    2989c6288117:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    2989c628811f:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    2989c6288127:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    2989c628812f:	e9 07 00 00 00                                  	jmp    0x2989c628813b
    2989c6288134:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6288138:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628813b:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    2989c6288142:	4c 8b a5 c0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x240]
    2989c6288149:	4d 03 e0                                        	add    r12,r8
    2989c628814c:	49 8b df                                        	mov    rbx,r15
    2989c628814f:	4c 8b bd d8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x228]
    2989c6288156:	49 03 df                                        	add    rbx,r15
    2989c6288159:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c6288160:	48 03 f1                                        	add    rsi,rcx
    2989c6288163:	41 83 c3 01                                     	add    r11d,0x1
    2989c6288167:	44 8b 8d d8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x128]
    2989c628816e:	45 3b cb                                        	cmp    r9d,r11d
    2989c6288171:	0f 85 49 a9 ff ff                               	jne    0x2989c6282ac0
    2989c6288177:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    2989c628817d:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    2989c6288182:	c5 7b 10 b5 58 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0xa8]
    2989c628818a:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    2989c628818f:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    2989c6288194:	4c 8b 9d 08 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f8]
    2989c628819b:	4c 8b a5 78 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x188]
    2989c62881a2:	4d 03 e3                                        	add    r12,r11
    2989c62881a5:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    2989c62881ac:	48 8b b5 48 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1b8]
    2989c62881b3:	48 03 f3                                        	add    rsi,rbx
    2989c62881b6:	4c 8b 8d 18 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1e8]
    2989c62881bd:	48 8b bd 50 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xb0]
    2989c62881c4:	49 03 f9                                        	add    rdi,r9
    2989c62881c7:	83 bd 00 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x200],0x0
    2989c62881ce:	0f 85 52 00 00 00                               	jne    0x2989c6288226
    2989c62881d4:	e9 83 00 00 00                                  	jmp    0x2989c628825c
    2989c62881d9:	4c 8b 85 08 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f8]
    2989c62881e0:	4d 8d 24 18                                     	lea    r12,[r8+rbx*1]
    2989c62881e4:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    2989c62881eb:	49 03 c3                                        	add    rax,r11
    2989c62881ee:	48 8b 9d 18 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1e8]
    2989c62881f5:	4c 03 fb                                        	add    r15,rbx
    2989c62881f8:	48 8b f0                                        	mov    rsi,rax
    2989c62881fb:	4c 8b cb                                        	mov    r9,rbx
    2989c62881fe:	49 8b db                                        	mov    rbx,r11
    2989c6288201:	4d 8b d8                                        	mov    r11,r8
    2989c6288204:	4c 8b 85 c8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x238]
    2989c628820b:	49 8b ff                                        	mov    rdi,r15
    2989c628820e:	4c 8b bd d8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x228]
    2989c6288215:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c628821b:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c628821f:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c6288226:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    2989c628822b:	c5 3a 5c 85 30 fe ff ff                         	vsubss xmm8,xmm8,DWORD PTR [rbp-0x1d0]
    2989c6288233:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    2989c6288238:	c5 22 5c 9d 38 fe ff ff                         	vsubss xmm11,xmm11,DWORD PTR [rbp-0x1c8]
    2989c6288240:	c4 41 79 28 d5                                  	vmovapd xmm10,xmm13
    2989c6288245:	c5 2a 5c 95 40 fe ff ff                         	vsubss xmm10,xmm10,DWORD PTR [rbp-0x1c0]
    2989c628824d:	c4 41 79 28 f3                                  	vmovapd xmm14,xmm11
    2989c6288252:	c4 41 79 28 ea                                  	vmovapd xmm13,xmm10
    2989c6288257:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    2989c628825c:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    2989c6288263:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c6288266:	83 c2 01                                        	add    edx,0x1
    2989c6288269:	44 8b 45 28                                     	mov    r8d,DWORD PTR [rbp+0x28]
    2989c628826d:	44 3b c2                                        	cmp    r8d,edx
    2989c6288270:	0f 85 4a a1 ff ff                               	jne    0x2989c62823c0
    2989c6288276:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288279:	44 8b 44 38 18                                  	mov    r8d,DWORD PTR [rax+rdi*1+0x18]
    2989c628827e:	83 7c 38 18 00                                  	cmp    DWORD PTR [rax+rdi*1+0x18],0x0
    2989c6288283:	0f 8e 03 17 00 00                               	jle    0x2989c628998c
    2989c6288289:	45 33 c0                                        	xor    r8d,r8d
    2989c628828c:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    2989c6288290:	c5 f9 28 ec                                     	vmovapd xmm5,xmm4
    2989c6288294:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6288298:	c5 f9 28 c3                                     	vmovapd xmm0,xmm3
    2989c628829c:	e9 42 00 00 00                                  	jmp    0x2989c62882e3
    2989c62882a1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62882aa:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62882b3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62882bc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    2989c62882c0:	49 8b c0                                        	mov    rax,r8
    2989c62882c3:	45 8b c4                                        	mov    r8d,r12d
    2989c62882c6:	49 8b d3                                        	mov    rdx,r11
    2989c62882c9:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c62882cd:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c62882d2:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c62882d7:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c62882db:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    2989c62882e3:	4c 8b bd f8 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x108]
    2989c62882ea:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    2989c62882f1:	4c 8b a5 e8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x118]
    2989c62882f8:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c62882fe:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    2989c6288305:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    2989c6288309:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c628830e:	0f 85 9c 1a 00 00                               	jne    0x2989c6289db0
    2989c6288314:	46 8d 4c 87 2c                                  	lea    r9d,[rdi+r8*4+0x2c]
    2989c6288319:	43 8d 0c 83                                     	lea    ecx,[r11+r8*4]
    2989c628831d:	46 8d 5c c7 70                                  	lea    r11d,[rdi+r8*8+0x70]
    2989c6288322:	4e 8b 1c 18                                     	mov    r11,QWORD PTR [rax+r11*1]
    2989c6288326:	4c 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],r11
    2989c628832d:	46 8d 5c c7 50                                  	lea    r11d,[rdi+r8*8+0x50]
    2989c6288332:	4e 8b 1c 18                                     	mov    r11,QWORD PTR [rax+r11*1]
    2989c6288336:	c4 a1 7a 10 7c 20 1c                            	vmovss xmm7,DWORD PTR [rax+r12*1+0x1c]
    2989c628833d:	c4 21 7a 10 44 38 1c                            	vmovss xmm8,DWORD PTR [rax+r15*1+0x1c]
    2989c6288344:	c5 7a 10 4c 18 1c                               	vmovss xmm9,DWORD PTR [rax+rbx*1+0x1c]
    2989c628834a:	44 8b 84 10 c8 3c 00 00                         	mov    r8d,DWORD PTR [rax+rdx*1+0x3cc8]
    2989c6288352:	83 bc 10 c8 3c 00 00 00                         	cmp    DWORD PTR [rax+rdx*1+0x3cc8],0x0
    2989c628835a:	0f 85 0e 00 00 00                               	jne    0x2989c628836e
    2989c6288360:	8b d1                                           	mov    edx,ecx
    2989c6288362:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    2989c6288369:	e9 55 00 00 00                                  	jmp    0x2989c62883c3
    2989c628836e:	44 8b 04 08                                     	mov    r8d,DWORD PTR [rax+rcx*1]
    2989c6288372:	41 8b d0                                        	mov    edx,r8d
    2989c6288375:	c1 ea 03                                        	shr    edx,0x3
    2989c6288378:	83 e2 03                                        	and    edx,0x3
    2989c628837b:	42 8b 3c 08                                     	mov    edi,DWORD PTR [rax+r9*1]
    2989c628837f:	c1 e7 02                                        	shl    edi,0x2
    2989c6288382:	83 e7 7c                                        	and    edi,0x7c
    2989c6288385:	0b fa                                           	or     edi,edx
    2989c6288387:	03 fe                                           	add    edi,esi
    2989c6288389:	0f b6 3c 38                                     	movzx  edi,BYTE PTR [rax+rdi*1]
    2989c628838d:	41 83 e0 07                                     	and    r8d,0x7
    2989c6288391:	8b d1                                           	mov    edx,ecx
    2989c6288393:	41 8b c8                                        	mov    ecx,r8d
    2989c6288396:	d3 e7                                           	shl    edi,cl
    2989c6288398:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    2989c628839f:	40 f6 c7 80                                     	test   dil,0x80
    2989c62883a3:	0f 85 1a 00 00 00                               	jne    0x2989c62883c3
    2989c62883a9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c62883ac:	4c 8b c0                                        	mov    r8,rax
    2989c62883af:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c62883b3:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c62883b7:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c62883be:	e9 b5 15 00 00                                  	jmp    0x2989c6289978
    2989c62883c3:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    2989c62883c8:	c4 41 7a 59 d2                                  	vmulss xmm10,xmm0,xmm10
    2989c62883cd:	c4 41 2a 59 c9                                  	vmulss xmm9,xmm10,xmm9
    2989c62883d2:	c4 61 82 2a 9d 58 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0xa8]
    2989c62883db:	c4 41 7a 59 db                                  	vmulss xmm11,xmm0,xmm11
    2989c62883e0:	c4 41 22 59 c0                                  	vmulss xmm8,xmm11,xmm8
    2989c62883e5:	c4 41 32 58 e0                                  	vaddss xmm12,xmm9,xmm8
    2989c62883ea:	c4 41 52 5c d2                                  	vsubss xmm10,xmm5,xmm10
    2989c62883ef:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    2989c62883f4:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    2989c62883f8:	c5 1a 58 d7                                     	vaddss xmm10,xmm12,xmm7
    2989c62883fc:	c4 c1 78 2e f2                                  	vucomiss xmm6,xmm10
    2989c6288401:	73 a6                                           	jae    0x2989c62883a9
    2989c6288403:	c4 41 52 5e d2                                  	vdivss xmm10,xmm5,xmm10
    2989c6288408:	c4 41 78 28 d2                                  	vmovaps xmm10,xmm10
    2989c628840d:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    2989c6288412:	c4 21 7a 6f 64 20 20                            	vmovdqu xmm12,XMMWORD PTR [rax+r12*1+0x20]
    2989c6288419:	c4 62 79 18 ef                                  	vbroadcastss xmm13,xmm7
    2989c628841e:	c4 41 18 59 e5                                  	vmulps xmm12,xmm12,xmm13
    2989c6288423:	c5 7a 6f 6c 18 20                               	vmovdqu xmm13,XMMWORD PTR [rax+rbx*1+0x20]
    2989c6288429:	c4 42 79 18 f1                                  	vbroadcastss xmm14,xmm9
    2989c628842e:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    2989c6288433:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    2989c6288438:	c4 a1 7a 6f 4c 38 20                            	vmovdqu xmm1,XMMWORD PTR [rax+r15*1+0x20]
    2989c628843f:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    2989c6288443:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    2989c6288448:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    2989c628844d:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    2989c6288452:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288455:	c5 7a 7f 9c 38 30 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x230],xmm11
    2989c628845e:	c4 21 7a 10 a4 20 98 00 00 00                   	vmovss xmm12,DWORD PTR [rax+r12*1+0x98]
    2989c6288468:	c5 7a 10 ac 18 98 00 00 00                      	vmovss xmm13,DWORD PTR [rax+rbx*1+0x98]
    2989c6288471:	c4 21 7a 10 b4 38 98 00 00 00                   	vmovss xmm14,DWORD PTR [rax+r15*1+0x98]
    2989c628847b:	c5 7a 7f 9c 38 90 02 00 00                      	vmovdqu XMMWORD PTR [rax+rdi*1+0x290],xmm11
    2989c6288484:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    2989c628848b:	42 8b 8c 18 34 01 00 00                         	mov    ecx,DWORD PTR [rax+r11*1+0x134]
    2989c6288493:	44 8d 61 ff                                     	lea    r12d,[rcx-0x1]
    2989c6288497:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c628849b:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    2989c628849f:	c5 7b 11 85 50 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb0],xmm8
    2989c62884a7:	c5 7b 11 8d 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm9
    2989c62884af:	c5 fb 11 bd 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm7
    2989c62884b7:	c5 7b 11 95 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm10
    2989c62884bf:	c5 7b 11 a5 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm12
    2989c62884c7:	c5 7b 11 ad 40 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc0],xmm13
    2989c62884cf:	c5 7b 11 b5 48 ff ff ff                         	vmovsd QWORD PTR [rbp-0xb8],xmm14
    2989c62884d7:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c62884db:	0f 86 15 07 00 00                               	jbe    0x2989c6288bf6
    2989c62884e1:	46 8b a4 18 30 01 00 00                         	mov    r12d,DWORD PTR [rax+r11*1+0x130]
    2989c62884e9:	42 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [rax+r11*1+0x130],0x0
    2989c62884f2:	0f 85 08 00 00 00                               	jne    0x2989c6288500
    2989c62884f8:	4c 8b c0                                        	mov    r8,rax
    2989c62884fb:	e9 94 07 00 00                                  	jmp    0x2989c6288c94
    2989c6288500:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    2989c6288507:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    2989c628850e:	4c 89 a5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r12
    2989c6288515:	33 c9                                           	xor    ecx,ecx
    2989c6288517:	e9 40 00 00 00                                  	jmp    0x2989c628855c
    2989c628851c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6288525:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628852e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6288537:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6288540:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    2989c6288547:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628854a:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c628854e:	4c 8b 9d 18 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe8]
    2989c6288555:	44 8b a5 20 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xe0]
    2989c628855c:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    2989c6288563:	8b 9d 98 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x168]
    2989c6288569:	44 8b bd 90 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x170]
    2989c6288570:	48 89 8d 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rcx
    2989c6288577:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c628857c:	0f 85 83 18 00 00                               	jne    0x2989c6289e05
    2989c6288582:	8b d1                                           	mov    edx,ecx
    2989c6288584:	c1 e2 04                                        	shl    edx,0x4
    2989c6288587:	42 8d 34 22                                     	lea    esi,[rdx+r12*1]
    2989c628858b:	4c 8b 15 c0 b1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb1c0]        # 0x2989c6283752
    2989c6288592:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6288597:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c628859c:	c5 7a 7f 1c 30                                  	vmovdqu XMMWORD PTR [rax+rsi*1],xmm11
    2989c62885a1:	48 89 b5 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rsi
    2989c62885a8:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    2989c62885af:	c7 04 30 00 00 00 00                            	mov    DWORD PTR [rax+rsi*1],0x0
    2989c62885b6:	6b f9 4c                                        	imul   edi,ecx,0x4c
    2989c62885b9:	41 03 f9                                        	add    edi,r9d
    2989c62885bc:	44 8b 24 38                                     	mov    r12d,DWORD PTR [rax+rdi*1]
    2989c62885c0:	83 3c 38 00                                     	cmp    DWORD PTR [rax+rdi*1],0x0
    2989c62885c4:	0f 8c bd 01 00 00                               	jl     0x2989c6288787
    2989c62885ca:	44 8b 64 38 04                                  	mov    r12d,DWORD PTR [rax+rdi*1+0x4]
    2989c62885cf:	45 85 e4                                        	test   r12d,r12d
    2989c62885d2:	0f 84 af 01 00 00                               	je     0x2989c6288787
    2989c62885d8:	c7 04 30 01 00 00 00                            	mov    DWORD PTR [rax+rsi*1],0x1
    2989c62885df:	42 8b b4 18 3c 01 00 00                         	mov    esi,DWORD PTR [rax+r11*1+0x13c]
    2989c62885e7:	d3 ee                                           	shr    esi,cl
    2989c62885e9:	40 f6 c6 01                                     	test   sil,0x1
    2989c62885ed:	0f 84 94 01 00 00                               	je     0x2989c6288787
    2989c62885f3:	8b 4c 38 38                                     	mov    ecx,DWORD PTR [rax+rdi*1+0x38]
    2989c62885f7:	83 7c 38 38 00                                  	cmp    DWORD PTR [rax+rdi*1+0x38],0x0
    2989c62885fc:	0f 85 6f 01 00 00                               	jne    0x2989c6288771
    2989c6288602:	41 8d 0c 10                                     	lea    ecx,[r8+rdx*1]
    2989c6288606:	c5 7a 10 5c 08 08                               	vmovss xmm11,DWORD PTR [rax+rcx*1+0x8]
    2989c628860c:	c5 22 59 9d 28 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xd8]
    2989c6288614:	41 8d 34 17                                     	lea    esi,[r15+rdx*1]
    2989c6288618:	c5 fa 10 4c 30 08                               	vmovss xmm1,DWORD PTR [rax+rsi*1+0x8]
    2989c628861e:	c5 f2 59 8d 38 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xc8]
    2989c6288626:	03 d3                                           	add    edx,ebx
    2989c6288628:	c5 fa 10 54 10 08                               	vmovss xmm2,DWORD PTR [rax+rdx*1+0x8]
    2989c628862e:	c5 ea 59 95 50 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xb0]
    2989c6288636:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    2989c628863a:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c628863e:	c5 a2 59 9d 58 ff ff ff                         	vmulss xmm3,xmm11,DWORD PTR [rbp-0xa8]
    2989c6288646:	c5 7a 10 5c 08 04                               	vmovss xmm11,DWORD PTR [rax+rcx*1+0x4]
    2989c628864c:	c5 22 59 9d 28 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xd8]
    2989c6288654:	c5 fa 10 4c 30 04                               	vmovss xmm1,DWORD PTR [rax+rsi*1+0x4]
    2989c628865a:	c5 f2 59 8d 38 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xc8]
    2989c6288662:	c5 fa 10 54 10 04                               	vmovss xmm2,DWORD PTR [rax+rdx*1+0x4]
    2989c6288668:	c5 ea 59 95 50 ff ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0xb0]
    2989c6288670:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    2989c6288674:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c6288678:	c5 a2 59 95 58 ff ff ff                         	vmulss xmm2,xmm11,DWORD PTR [rbp-0xa8]
    2989c6288680:	c5 7a 10 1c 08                                  	vmovss xmm11,DWORD PTR [rax+rcx*1]
    2989c6288685:	c5 22 59 9d 28 ff ff ff                         	vmulss xmm11,xmm11,DWORD PTR [rbp-0xd8]
    2989c628868d:	c5 fa 10 0c 30                                  	vmovss xmm1,DWORD PTR [rax+rsi*1]
    2989c6288692:	c5 f2 59 8d 38 ff ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0xc8]
    2989c628869a:	c5 fa 10 24 10                                  	vmovss xmm4,DWORD PTR [rax+rdx*1]
    2989c628869f:	c5 da 59 a5 50 ff ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0xb0]
    2989c62886a7:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    2989c62886ab:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c62886af:	c5 a2 59 8d 58 ff ff ff                         	vmulss xmm1,xmm11,DWORD PTR [rbp-0xa8]
    2989c62886b7:	8b 4c 38 10                                     	mov    ecx,DWORD PTR [rax+rdi*1+0x10]
    2989c62886bb:	8b 54 38 0c                                     	mov    edx,DWORD PTR [rax+rdi*1+0xc]
    2989c62886bf:	8b 74 38 08                                     	mov    esi,DWORD PTR [rax+rdi*1+0x8]
    2989c62886c3:	8b 34 38                                        	mov    esi,DWORD PTR [rax+rdi*1]
    2989c62886c6:	83 fe 02                                        	cmp    esi,0x2
    2989c62886c9:	0f 8c 14 00 00 00                               	jl     0x2989c62886e3
    2989c62886cf:	0f 84 43 00 00 00                               	je     0x2989c6288718
    2989c62886d5:	83 fe 03                                        	cmp    esi,0x3
    2989c62886d8:	0f 84 1c 00 00 00                               	je     0x2989c62886fa
    2989c62886de:	e9 59 00 00 00                                  	jmp    0x2989c628873c
    2989c62886e3:	83 fe 00                                        	cmp    esi,0x0
    2989c62886e6:	0f 84 6e 00 00 00                               	je     0x2989c628875a
    2989c62886ec:	83 fe 01                                        	cmp    esi,0x1
    2989c62886ef:	0f 84 47 00 00 00                               	je     0x2989c628873c
    2989c62886f5:	e9 42 00 00 00                                  	jmp    0x2989c628873c
    2989c62886fa:	8b 7c 38 14                                     	mov    edi,DWORD PTR [rax+rdi*1+0x14]
    2989c62886fe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288702:	41 8b c4                                        	mov    eax,r12d
    2989c6288705:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    2989c628870c:	8b df                                           	mov    ebx,edi
    2989c628870e:	e8 1d 2b ef ff                                  	call   0x2989c617b230
    2989c6288713:	e9 6f 00 00 00                                  	jmp    0x2989c6288787
    2989c6288718:	8b 74 38 14                                     	mov    esi,DWORD PTR [rax+rdi*1+0x14]
    2989c628871c:	8b 7c 38 18                                     	mov    edi,DWORD PTR [rax+rdi*1+0x18]
    2989c6288720:	ff b5 08 ff ff ff                               	push   QWORD PTR [rbp-0xf8]
    2989c6288726:	8b de                                           	mov    ebx,esi
    2989c6288728:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628872c:	41 8b c4                                        	mov    eax,r12d
    2989c628872f:	44 8b cf                                        	mov    r9d,edi
    2989c6288732:	e8 f1 2a ef ff                                  	call   0x2989c617b228
    2989c6288737:	e9 4b 00 00 00                                  	jmp    0x2989c6288787
    2989c628873c:	8b 7c 38 14                                     	mov    edi,DWORD PTR [rax+rdi*1+0x14]
    2989c6288740:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288744:	41 8b c4                                        	mov    eax,r12d
    2989c6288747:	44 8b 8d 08 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xf8]
    2989c628874e:	8b df                                           	mov    ebx,edi
    2989c6288750:	e8 e3 2a ef ff                                  	call   0x2989c617b238
    2989c6288755:	e9 2d 00 00 00                                  	jmp    0x2989c6288787
    2989c628875a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628875e:	41 8b c4                                        	mov    eax,r12d
    2989c6288761:	8b 9d 08 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xf8]
    2989c6288767:	e8 b4 2a ef ff                                  	call   0x2989c617b220
    2989c628876c:	e9 16 00 00 00                                  	jmp    0x2989c6288787
    2989c6288771:	4c 8b e0                                        	mov    r12,rax
    2989c6288774:	c4 c1 7a 6f 44 3c 3c                            	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x3c]
    2989c628877b:	8b bd 08 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xf8]
    2989c6288781:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    2989c6288787:	8b 8d 10 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf0]
    2989c628878d:	83 c1 01                                        	add    ecx,0x1
    2989c6288790:	83 f9 04                                        	cmp    ecx,0x4
    2989c6288793:	0f 85 a7 fd ff ff                               	jne    0x2989c6288540
    2989c6288799:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c628879d:	4c 8b 85 18 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe8]
    2989c62887a4:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    2989c62887ac:	45 85 c0                                        	test   r8d,r8d
    2989c62887af:	0f 85 c2 01 00 00                               	jne    0x2989c6288977
    2989c62887b5:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    2989c62887b9:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    2989c62887c1:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    2989c62887ca:	0f 84 53 00 00 00                               	je     0x2989c6288823
    2989c62887d0:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c62887d7:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c62887de:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c62887e5:	41 53                                           	push   r11
    2989c62887e7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62887eb:	8b 85 c0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x140]
    2989c62887f1:	33 d2                                           	xor    edx,edx
    2989c62887f3:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    2989c62887fa:	e8 41 2a ef ff                                  	call   0x2989c617b240
    2989c62887ff:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288802:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6288806:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    2989c6288810:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c628881a:	4d 8b d0                                        	mov    r10,r8
    2989c628881d:	44 8b c7                                        	mov    r8d,edi
    2989c6288820:	49 8b fa                                        	mov    rdi,r10
    2989c6288823:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    2989c628882b:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    2989c6288834:	0f 84 56 00 00 00                               	je     0x2989c6288890
    2989c628883a:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c6288841:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c6288848:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c628884f:	41 53                                           	push   r11
    2989c6288851:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288855:	8b 85 c8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x138]
    2989c628885b:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6288860:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    2989c6288867:	e8 d4 29 ef ff                                  	call   0x2989c617b240
    2989c628886c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628886f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6288873:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    2989c628887d:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c6288887:	4d 8b d0                                        	mov    r10,r8
    2989c628888a:	44 8b c7                                        	mov    r8d,edi
    2989c628888d:	49 8b fa                                        	mov    rdi,r10
    2989c6288890:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    2989c6288898:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    2989c62888a1:	0f 84 56 00 00 00                               	je     0x2989c62888fd
    2989c62888a7:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c62888ae:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c62888b5:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c62888bc:	41 53                                           	push   r11
    2989c62888be:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62888c2:	8b 85 d0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x130]
    2989c62888c8:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c62888cd:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    2989c62888d4:	e8 67 29 ef ff                                  	call   0x2989c617b240
    2989c62888d9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c62888dc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62888e0:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    2989c62888ea:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c62888f4:	4d 8b d0                                        	mov    r10,r8
    2989c62888f7:	44 8b c7                                        	mov    r8d,edi
    2989c62888fa:	49 8b fa                                        	mov    rdi,r10
    2989c62888fd:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    2989c6288905:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    2989c628890e:	0f 85 0e 00 00 00                               	jne    0x2989c6288922
    2989c6288914:	4c 8b d7                                        	mov    r10,rdi
    2989c6288917:	41 8b f8                                        	mov    edi,r8d
    2989c628891a:	4d 8b c2                                        	mov    r8,r10
    2989c628891d:	e9 72 03 00 00                                  	jmp    0x2989c6288c94
    2989c6288922:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    2989c6288929:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    2989c6288930:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    2989c6288937:	41 53                                           	push   r11
    2989c6288939:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c628893e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288942:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    2989c6288948:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    2989c628894f:	e8 ec 28 ef ff                                  	call   0x2989c617b240
    2989c6288954:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288957:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    2989c628895b:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    2989c6288965:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    2989c628896f:	4d 8b c3                                        	mov    r8,r11
    2989c6288972:	e9 1d 03 00 00                                  	jmp    0x2989c6288c94
    2989c6288977:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c628897b:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    2989c6288985:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c628898b:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c6288990:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6288994:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    2989c628899e:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c62889a2:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c62889a6:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    2989c62889b0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    2989c62889b4:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    2989c62889be:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c62889c2:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    2989c62889c6:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    2989c62889d0:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    2989c62889d4:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    2989c62889de:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    2989c62889e2:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    2989c62889e6:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    2989c62889ea:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c62889ee:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c62889f4:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    2989c62889f9:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    2989c62889fd:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6288a01:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c6288a06:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c6288a0b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c6288a0f:	0f 87 09 00 00 00                               	ja     0x2989c6288a1e
    2989c6288a15:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6288a19:	e9 04 00 00 00                                  	jmp    0x2989c6288a22
    2989c6288a1e:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    2989c6288a22:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6288a26:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c6288a2a:	0f 87 09 00 00 00                               	ja     0x2989c6288a39
    2989c6288a30:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c6288a34:	e9 04 00 00 00                                  	jmp    0x2989c6288a3d
    2989c6288a39:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c6288a3d:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c6288a42:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c6288a46:	0f 84 a0 00 00 00                               	je     0x2989c6288aec
    2989c6288a4c:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    2989c6288a50:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    2989c6288a5a:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6288a5e:	0f 87 09 00 00 00                               	ja     0x2989c6288a6d
    2989c6288a64:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c6288a68:	e9 04 00 00 00                                  	jmp    0x2989c6288a71
    2989c6288a6d:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c6288a71:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6288a75:	0f 87 0a 00 00 00                               	ja     0x2989c6288a85
    2989c6288a7b:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c6288a80:	e9 04 00 00 00                                  	jmp    0x2989c6288a89
    2989c6288a85:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6288a89:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c6288a8d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6288a92:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c6288a97:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6288a9b:	4c 8b 15 b0 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacb0]        # 0x2989c6283752
    2989c6288aa2:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6288aa7:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6288aac:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c6288ab0:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    2989c6288aba:	41 83 f8 03                                     	cmp    r8d,0x3
    2989c6288abe:	0f 85 04 00 00 00                               	jne    0x2989c6288ac8
    2989c6288ac4:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    2989c6288ac8:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    2989c6288acd:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6288ad1:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c6288ad5:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    2989c6288adf:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c6288ae4:	4d 8b c4                                        	mov    r8,r12
    2989c6288ae7:	e9 cd 00 00 00                                  	jmp    0x2989c6288bb9
    2989c6288aec:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    2989c6288af6:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6288afa:	0f 87 09 00 00 00                               	ja     0x2989c6288b09
    2989c6288b00:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c6288b04:	e9 04 00 00 00                                  	jmp    0x2989c6288b0d
    2989c6288b09:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    2989c6288b0d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6288b11:	0f 87 0a 00 00 00                               	ja     0x2989c6288b21
    2989c6288b17:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c6288b1c:	e9 04 00 00 00                                  	jmp    0x2989c6288b25
    2989c6288b21:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6288b25:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    2989c6288b2f:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    2989c6288b35:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    2989c6288b3a:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c6288b3e:	0f 87 09 00 00 00                               	ja     0x2989c6288b4d
    2989c6288b44:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c6288b48:	e9 04 00 00 00                                  	jmp    0x2989c6288b51
    2989c6288b4d:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    2989c6288b51:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6288b55:	0f 87 0a 00 00 00                               	ja     0x2989c6288b65
    2989c6288b5b:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c6288b60:	e9 04 00 00 00                                  	jmp    0x2989c6288b69
    2989c6288b65:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c6288b69:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    2989c6288b73:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6288b78:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6288b7c:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    2989c6288b86:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    2989c6288b8b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c6288b90:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c6288b94:	4c 8b 15 b7 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffabb7]        # 0x2989c6283752
    2989c6288b9b:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6288ba0:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6288ba5:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6288ba9:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6288bad:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    2989c6288bb1:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6288bb5:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    2989c6288bb9:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    2989c6288bbe:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    2989c6288bc2:	4c 8b 15 89 ab ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffab89]        # 0x2989c6283752
    2989c6288bc9:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6288bce:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c6288bd3:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    2989c6288bd7:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    2989c6288be1:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    2989c6288beb:	4c 8b c7                                        	mov    r8,rdi
    2989c6288bee:	41 8b fb                                        	mov    edi,r11d
    2989c6288bf1:	e9 9e 00 00 00                                  	jmp    0x2989c6288c94
    2989c6288bf6:	4c 8b 9d e8 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x118]
    2989c6288bfd:	c4 21 7a 10 5c 18 50                            	vmovss xmm11,DWORD PTR [rax+r11*1+0x50]
    2989c6288c04:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    2989c6288c08:	4c 8b e3                                        	mov    r12,rbx
    2989c6288c0b:	c4 a1 7a 10 4c 20 50                            	vmovss xmm1,DWORD PTR [rax+r12*1+0x50]
    2989c6288c12:	c4 c1 72 59 c9                                  	vmulss xmm1,xmm1,xmm9
    2989c6288c17:	c4 a1 3a 59 54 38 50                            	vmulss xmm2,xmm8,DWORD PTR [rax+r15*1+0x50]
    2989c6288c1e:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    2989c6288c22:	c5 22 58 d9                                     	vaddss xmm11,xmm11,xmm1
    2989c6288c26:	c4 c1 2a 59 cb                                  	vmulss xmm1,xmm10,xmm11
    2989c6288c2b:	c4 21 7a 10 5c 18 54                            	vmovss xmm11,DWORD PTR [rax+r11*1+0x54]
    2989c6288c32:	c5 22 59 df                                     	vmulss xmm11,xmm11,xmm7
    2989c6288c36:	c4 a1 7a 10 54 20 54                            	vmovss xmm2,DWORD PTR [rax+r12*1+0x54]
    2989c6288c3d:	c4 c1 6a 59 d1                                  	vmulss xmm2,xmm2,xmm9
    2989c6288c42:	c4 a1 3a 59 5c 38 54                            	vmulss xmm3,xmm8,DWORD PTR [rax+r15*1+0x54]
    2989c6288c49:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    2989c6288c4d:	c5 22 58 da                                     	vaddss xmm11,xmm11,xmm2
    2989c6288c51:	c4 c1 2a 59 d3                                  	vmulss xmm2,xmm10,xmm11
    2989c6288c56:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    2989c6288c5c:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    2989c6288c63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288c67:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c6288c6d:	8b d1                                           	mov    edx,ecx
    2989c6288c6f:	8b cb                                           	mov    ecx,ebx
    2989c6288c71:	41 8b d8                                        	mov    ebx,r8d
    2989c6288c74:	e8 b7 28 ef ff                                  	call   0x2989c617b530
    2989c6288c79:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288c7c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6288c80:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    2989c6288c8a:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    2989c6288c94:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6288c98:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    2989c6288ca0:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    2989c6288ca9:	0f 84 c4 01 00 00                               	je     0x2989c6288e73
    2989c6288caf:	c5 fb 10 85 30 ff ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0xd0]
    2989c6288cb7:	c5 fa 59 85 28 ff ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0xd8]
    2989c6288cbf:	c5 fb 10 ad 40 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xc0]
    2989c6288cc7:	c5 d2 59 ad 38 ff ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0xc8]
    2989c6288ccf:	c5 fb 10 b5 50 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xb0]
    2989c6288cd7:	c5 ca 59 b5 48 ff ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0xb8]
    2989c6288cdf:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c6288ce3:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    2989c6288ce7:	c5 fb 10 ad 58 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa8]
    2989c6288cef:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    2989c6288cf3:	4c 8b 15 8f 92 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff928f]        # 0x2989c6281f89
    2989c6288cfa:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c6288cff:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c6288d03:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    2989c6288d07:	0f 87 04 00 00 00                               	ja     0x2989c6288d11
    2989c6288d0d:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    2989c6288d11:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    2989c6288d19:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    2989c6288d20:	0f 85 28 00 00 00                               	jne    0x2989c6288d4e
    2989c6288d26:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    2989c6288d30:	4c 8b 15 52 92 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9252]        # 0x2989c6281f89
    2989c6288d37:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6288d3c:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    2989c6288d40:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288d44:	e8 6f 48 ef ff                                  	call   0x2989c617d5b8
    2989c6288d49:	e9 89 00 00 00                                  	jmp    0x2989c6288dd7
    2989c6288d4e:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c6288d52:	0f 84 5c 00 00 00                               	je     0x2989c6288db4
    2989c6288d58:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    2989c6288d62:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    2989c6288d6c:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    2989c6288d70:	7a 06                                           	jp     0x2989c6288d78
    2989c6288d72:	0f 84 29 00 00 00                               	je     0x2989c6288da1
    2989c6288d78:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    2989c6288d7c:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    2989c6288d80:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c6288d84:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    2989c6288d88:	0f 86 49 00 00 00                               	jbe    0x2989c6288dd7
    2989c6288d8e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6288d92:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6288d97:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6288d9c:	e9 5b 00 00 00                                  	jmp    0x2989c6288dfc
    2989c6288da1:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6288da5:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6288daa:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6288daf:	e9 44 00 00 00                                  	jmp    0x2989c6288df8
    2989c6288db4:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    2989c6288dbe:	4c 8b 15 c4 91 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff91c4]        # 0x2989c6281f89
    2989c6288dc5:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    2989c6288dca:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    2989c6288dce:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6288dd2:	e8 e1 47 ef ff                                  	call   0x2989c617d5b8
    2989c6288dd7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6288ddb:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6288de0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6288de5:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c6288de9:	0f 87 09 00 00 00                               	ja     0x2989c6288df8
    2989c6288def:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    2989c6288df3:	e9 04 00 00 00                                  	jmp    0x2989c6288dfc
    2989c6288df8:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6288dfc:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6288dff:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6288e03:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    2989c6288e0d:	c5 fa 5c fe                                     	vsubss xmm7,xmm0,xmm6
    2989c6288e11:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6288e15:	c4 01 42 59 84 18 00 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x100]
    2989c6288e1f:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c6288e24:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    2989c6288e2e:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    2989c6288e38:	c4 01 42 59 84 18 04 01 00 00                   	vmulss xmm8,xmm7,DWORD PTR [r8+r11*1+0x104]
    2989c6288e42:	c4 c1 52 58 e8                                  	vaddss xmm5,xmm5,xmm8
    2989c6288e47:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    2989c6288e51:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    2989c6288e5b:	c4 81 42 59 b4 18 08 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+r11*1+0x108]
    2989c6288e65:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    2989c6288e69:	c4 c1 7a 11 ac 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm5
    2989c6288e73:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    2989c6288e7d:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    2989c6288e87:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c6288e8b:	41 c1 e4 04                                     	shl    r12d,0x4
    2989c6288e8f:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c6288e96:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    2989c6288e9a:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c6288e9e:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    2989c6288ea3:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    2989c6288ea7:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    2989c6288eaa:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    2989c6288eae:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c6288eb1:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    2989c6288eb5:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c6288ebc:	0f 85 8b 0a 00 00                               	jne    0x2989c628994d
    2989c6288ec2:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    2989c6288ec7:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    2989c6288ecd:	0f 85 4a 0a 00 00                               	jne    0x2989c628991d
    2989c6288ed3:	4c 8b 15 78 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa878]        # 0x2989c6283752
    2989c6288eda:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6288edf:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c6288ee3:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c6288ee7:	c4 c1 7a 6f b4 38 80 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x280]
    2989c6288ef1:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    2989c6288ef5:	c5 c8 c2 ff 01                                  	vcmpltps xmm7,xmm6,xmm7
    2989c6288efa:	c5 c0 55 f6                                     	vandnps xmm6,xmm7,xmm6
    2989c6288efe:	4c 8b 15 4d a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa84d]        # 0x2989c6283752
    2989c6288f05:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6288f0a:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6288f0e:	c5 c0 c2 fe 01                                  	vcmpltps xmm7,xmm7,xmm6
    2989c6288f13:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    2989c6288f17:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c6288f1b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6288f20:	4c 8b 15 98 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffac98]        # 0x2989c6283bbf
    2989c6288f27:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6288f2c:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6288f30:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6288f34:	4c 8b 15 9b ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffac9b]        # 0x2989c6283bd6
    2989c6288f3b:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6288f40:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6288f44:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6288f48:	4c 8b 15 9e ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffac9e]        # 0x2989c6283bed
    2989c6288f4f:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c6288f54:	c4 c1 78 54 f7                                  	vandps xmm6,xmm0,xmm15
    2989c6288f59:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c6288f5f:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    2989c6288f63:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    2989c6288f68:	4c 8b 15 a1 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaca1]        # 0x2989c6283c10
    2989c6288f6f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6288f74:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6288f78:	4c 8b 15 16 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8216]        # 0x2989c6281195
    2989c6288f7f:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6288f84:	4c 8b 15 a4 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaca4]        # 0x2989c6283c2f
    2989c6288f8b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c6288f90:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c6288f95:	c4 c1 78 c2 c0 01                               	vcmpltps xmm0,xmm0,xmm8
    2989c6288f9b:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    2989c6288f9f:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    2989c6288fa3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6288fa8:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    2989c6288fad:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    2989c6288fb1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6288fb6:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    2989c6288fba:	0f af c8                                        	imul   ecx,eax
    2989c6288fbd:	03 ca                                           	add    ecx,edx
    2989c6288fbf:	8d 34 09                                        	lea    esi,[rcx+rcx*1]
    2989c6288fc2:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c6288fc6:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    2989c6288fcb:	8d 14 ca                                        	lea    edx,[rdx+rcx*8]
    2989c6288fce:	83 fb 03                                        	cmp    ebx,0x3
    2989c6288fd1:	0f 84 7c 00 00 00                               	je     0x2989c6289053
    2989c6288fd7:	8b cb                                           	mov    ecx,ebx
    2989c6288fd9:	83 e1 01                                        	and    ecx,0x1
    2989c6288fdc:	f7 d9                                           	neg    ecx
    2989c6288fde:	c4 e3 51 22 e9 00                               	vpinsrd xmm5,xmm5,ecx,0x0
    2989c6288fe4:	8b cb                                           	mov    ecx,ebx
    2989c6288fe6:	c1 e1 1e                                        	shl    ecx,0x1e
    2989c6288fe9:	c1 f9 1f                                        	sar    ecx,0x1f
    2989c6288fec:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    2989c6288ff2:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    2989c6288ff7:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    2989c6288ffd:	0f 84 38 00 00 00                               	je     0x2989c628903b
    2989c6289003:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    2989c6289008:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c628900e:	0f 84 27 00 00 00                               	je     0x2989c628903b
    2989c6289014:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    2989c6289019:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    2989c628901c:	c4 81 7b 10 34 08                               	vmovsd xmm6,QWORD PTR [r8+r9*1]
    2989c6289022:	c4 c1 7b 10 3c 08                               	vmovsd xmm7,QWORD PTR [r8+rcx*1]
    2989c6289028:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    2989c628902c:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    2989c6289030:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6289035:	c4 c1 78 13 34 08                               	vmovlps QWORD PTR [r8+rcx*1],xmm6
    2989c628903b:	c4 c1 7b 10 34 10                               	vmovsd xmm6,QWORD PTR [r8+rdx*1]
    2989c6289041:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    2989c6289045:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    2989c6289049:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628904e:	e9 32 00 00 00                                  	jmp    0x2989c6289085
    2989c6289053:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    2989c6289058:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    2989c628905e:	0f 84 21 00 00 00                               	je     0x2989c6289085
    2989c6289064:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    2989c6289069:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c628906f:	0f 84 10 00 00 00                               	je     0x2989c6289085
    2989c6289075:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    2989c628907a:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    2989c628907d:	4b 8b 34 08                                     	mov    rsi,QWORD PTR [r8+r9*1]
    2989c6289081:	49 89 34 08                                     	mov    QWORD PTR [r8+rcx*1],rsi
    2989c6289085:	c4 c1 78 13 04 10                               	vmovlps QWORD PTR [r8+rdx*1],xmm0
    2989c628908b:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    2989c6289090:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    2989c6289096:	0f 84 dc 08 00 00                               	je     0x2989c6289978
    2989c628909c:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    2989c62890a1:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c62890a7:	0f 84 cb 08 00 00                               	je     0x2989c6289978
    2989c62890ad:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    2989c62890b2:	43 83 7c 18 14 02                               	cmp    DWORD PTR [r8+r11*1+0x14],0x2
    2989c62890b8:	0f 85 ba 08 00 00                               	jne    0x2989c6289978
    2989c62890be:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    2989c62890c3:	85 d2                                           	test   edx,edx
    2989c62890c5:	0f 84 ad 08 00 00                               	je     0x2989c6289978
    2989c62890cb:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    2989c62890ce:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    2989c62890d2:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    2989c62890d7:	0f 84 9b 08 00 00                               	je     0x2989c6289978
    2989c62890dd:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    2989c62890e0:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    2989c62890e4:	83 ea 3c                                        	sub    edx,0x3c
    2989c62890e7:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    2989c62890eb:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    2989c62890ee:	c1 ee 02                                        	shr    esi,0x2
    2989c62890f1:	0f af f2                                        	imul   esi,edx
    2989c62890f4:	c1 e6 04                                        	shl    esi,0x4
    2989c62890f7:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    2989c62890fa:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    2989c6289101:	8b f1                                           	mov    esi,ecx
    2989c6289103:	83 e6 f0                                        	and    esi,0xfffffff0
    2989c6289106:	03 d6                                           	add    edx,esi
    2989c6289108:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    2989c628910d:	81 ee 01 02 00 00                               	sub    esi,0x201
    2989c6289113:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    2989c6289117:	33 c0                                           	xor    eax,eax
    2989c6289119:	85 f6                                           	test   esi,esi
    2989c628911b:	0f 94 c0                                        	sete   al
    2989c628911e:	83 fe 02                                        	cmp    esi,0x2
    2989c6289121:	40 0f 94 c6                                     	sete   sil
    2989c6289125:	40 0f b6 f6                                     	movzx  esi,sil
    2989c6289129:	0b f0                                           	or     esi,eax
    2989c628912b:	0f 85 0d 00 00 00                               	jne    0x2989c628913e
    2989c6289131:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    2989c6289139:	e9 3a 08 00 00                                  	jmp    0x2989c6289978
    2989c628913e:	83 e3 03                                        	and    ebx,0x3
    2989c6289141:	83 e1 0c                                        	and    ecx,0xc
    2989c6289144:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    2989c6289147:	83 e0 03                                        	and    eax,0x3
    2989c628914a:	0b c1                                           	or     eax,ecx
    2989c628914c:	d1 e0                                           	shl    eax,1
    2989c628914e:	83 e0 3f                                        	and    eax,0x3f
    2989c6289151:	8b c8                                           	mov    ecx,eax
    2989c6289153:	48 d3 e3                                        	shl    rbx,cl
    2989c6289156:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    2989c628915a:	b9 ff ff ff ff                                  	mov    ecx,0xffffffff
    2989c628915f:	48 3b c1                                        	cmp    rax,rcx
    2989c6289162:	0f 84 ba 03 00 00                               	je     0x2989c6289522
    2989c6289168:	48 0b c3                                        	or     rax,rbx
    2989c628916b:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    2989c628916f:	48 3b c8                                        	cmp    rcx,rax
    2989c6289172:	0f 85 00 08 00 00                               	jne    0x2989c6289978
    2989c6289178:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    2989c628917d:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    2989c6289180:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    2989c6289186:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    2989c628918a:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    2989c628918d:	83 ce 03                                        	or     esi,0x3
    2989c6289190:	0f af f1                                        	imul   esi,ecx
    2989c6289193:	03 f3                                           	add    esi,ebx
    2989c6289195:	8d 34 f0                                        	lea    esi,[rax+rsi*8]
    2989c6289198:	c4 c1 7a 6f 44 30 10                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x10]
    2989c628919f:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c62891a4:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    2989c62891aa:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c62891af:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c62891b3:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    2989c62891b6:	81 e6 fc ff ff 1f                               	and    esi,0x1ffffffc
    2989c62891bc:	44 8b ce                                        	mov    r9d,esi
    2989c62891bf:	41 83 c9 02                                     	or     r9d,0x2
    2989c62891c3:	44 0f af c9                                     	imul   r9d,ecx
    2989c62891c7:	44 03 cb                                        	add    r9d,ebx
    2989c62891ca:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    2989c62891ce:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    2989c62891d5:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c62891da:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c62891df:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    2989c62891e5:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c62891eb:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c62891f0:	44 8b ce                                        	mov    r9d,esi
    2989c62891f3:	41 83 c9 01                                     	or     r9d,0x1
    2989c62891f7:	44 0f af c9                                     	imul   r9d,ecx
    2989c62891fb:	44 03 cb                                        	add    r9d,ebx
    2989c62891fe:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    2989c6289202:	c4 01 7a 6f 4c 08 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x10]
    2989c6289209:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c628920f:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c6289214:	c4 01 7a 6f 14 08                               	vmovdqu xmm10,XMMWORD PTR [r8+r9*1]
    2989c628921a:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c6289220:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c6289225:	0f af ce                                        	imul   ecx,esi
    2989c6289228:	03 d9                                           	add    ebx,ecx
    2989c628922a:	8d 04 d8                                        	lea    eax,[rax+rbx*8]
    2989c628922d:	c4 41 7a 6f 5c 00 10                            	vmovdqu xmm11,XMMWORD PTR [r8+rax*1+0x10]
    2989c6289234:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c628923a:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c628923f:	c4 41 7a 6f 24 00                               	vmovdqu xmm12,XMMWORD PTR [r8+rax*1]
    2989c6289245:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c628924b:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c6289250:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c6289255:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c628925a:	c5 f8 50 c5                                     	vmovmskps eax,xmm5
    2989c628925e:	83 f8 0f                                        	cmp    eax,0xf
    2989c6289261:	0f 84 0e 00 00 00                               	je     0x2989c6289275
    2989c6289267:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    2989c6289270:	e9 03 07 00 00                                  	jmp    0x2989c6289978
    2989c6289275:	4c 8b 15 bd ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacbd]        # 0x2989c6283f39
    2989c628927c:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6289281:	4c 8b 15 c0 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc0]        # 0x2989c6283f48
    2989c6289288:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c628928e:	4c 8b 15 c3 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc3]        # 0x2989c6283f58
    2989c6289295:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c628929a:	4c 8b 15 c6 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc6]        # 0x2989c6283f67
    2989c62892a1:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c62892a7:	4c 8b 15 c9 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacc9]        # 0x2989c6283f77
    2989c62892ae:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c62892b3:	4c 8b 15 cc ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaccc]        # 0x2989c6283f86
    2989c62892ba:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c62892c0:	4c 8b 15 cf ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffaccf]        # 0x2989c6283f96
    2989c62892c7:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c62892cc:	4c 8b 15 d2 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd2]        # 0x2989c6283fa5
    2989c62892d3:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c62892d9:	4c 8b 15 d5 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd5]        # 0x2989c6283fb5
    2989c62892e0:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c62892e5:	4c 8b 15 d8 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacd8]        # 0x2989c6283fc4
    2989c62892ec:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c62892f2:	4c 8b 15 db ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacdb]        # 0x2989c6283fd4
    2989c62892f9:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62892fe:	4c 8b 15 de ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacde]        # 0x2989c6283fe3
    2989c6289305:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c628930b:	4c 8b 15 e1 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface1]        # 0x2989c6283ff3
    2989c6289312:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c6289317:	4c 8b 15 e4 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface4]        # 0x2989c6284002
    2989c628931e:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6289324:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c6289329:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c628932d:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c6289332:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c6289337:	4c 8b 15 e7 ac ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffface7]        # 0x2989c6284025
    2989c628933e:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6289344:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c6289349:	4c 8b 15 ea ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacea]        # 0x2989c628403a
    2989c6289350:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6289355:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c6289359:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c628935e:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c6289364:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c6289369:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c628936d:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c6289371:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c6289375:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628937a:	4c 8b 15 b9 ac ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffacb9]        # 0x2989c628403a
    2989c6289381:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6289386:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c628938b:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c6289390:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6289394:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289399:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c628939f:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c62893a3:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c62893a8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62893ad:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c62893b1:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c62893b6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62893bb:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c62893c1:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c62893c5:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c62893ca:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62893cf:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c62893d3:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c62893d8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62893dd:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c62893e3:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c62893e7:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c62893ec:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62893f1:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c62893f5:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c62893fa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62893ff:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c6289405:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c6289409:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c628940e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289413:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c6289417:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c628941c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289421:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c6289426:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c628942a:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c628942f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289434:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c6289438:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c628943d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289442:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6289447:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c628944c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6289450:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6289454:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289459:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c628945d:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6289461:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289466:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c628946b:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6289470:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6289475:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6289479:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c628947d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289482:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    2989c628948c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6289490:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6289494:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289499:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    2989c62894a3:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c62894a7:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c62894ab:	33 c0                                           	xor    eax,eax
    2989c62894ad:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c62894b1:	0f 97 c0                                        	seta   al
    2989c62894b4:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    2989c62894ba:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    2989c62894c1:	0b cb                                           	or     ecx,ebx
    2989c62894c3:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    2989c62894c9:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c62894ce:	be 02 00 00 00                                  	mov    esi,0x2
    2989c62894d3:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62894d7:	0f 47 c6                                        	cmova  eax,esi
    2989c62894da:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    2989c62894e1:	0b cb                                           	or     ecx,ebx
    2989c62894e3:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    2989c62894e9:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c62894ee:	b9 03 00 00 00                                  	mov    ecx,0x3
    2989c62894f3:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62894f7:	0f 47 c1                                        	cmova  eax,ecx
    2989c62894fa:	c1 e0 02                                        	shl    eax,0x2
    2989c62894fd:	0b d8                                           	or     ebx,eax
    2989c62894ff:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    2989c6289505:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    2989c628950c:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    2989c6289512:	0b c3                                           	or     eax,ebx
    2989c6289514:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    2989c6289518:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    2989c628951d:	e9 56 04 00 00                                  	jmp    0x2989c6289978
    2989c6289522:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    2989c6289527:	8b c8                                           	mov    ecx,eax
    2989c6289529:	83 e1 3f                                        	and    ecx,0x3f
    2989c628952c:	48 d3 eb                                        	shr    rbx,cl
    2989c628952f:	be 03 00 00 00                                  	mov    esi,0x3
    2989c6289534:	f6 c3 01                                        	test   bl,0x1
    2989c6289537:	0f 84 3b 04 00 00                               	je     0x2989c6289978
    2989c628953d:	83 e0 01                                        	and    eax,0x1
    2989c6289540:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    2989c6289544:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    2989c628954a:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    2989c6289551:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    2989c6289555:	0f 86 1d 04 00 00                               	jbe    0x2989c6289978
    2989c628955b:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    2989c6289560:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    2989c6289563:	81 e3 fc ff ff 1f                               	and    ebx,0x1ffffffc
    2989c6289569:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    2989c628956d:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    2989c6289571:	41 83 c9 03                                     	or     r9d,0x3
    2989c6289575:	44 0f af c9                                     	imul   r9d,ecx
    2989c6289579:	44 03 cb                                        	add    r9d,ebx
    2989c628957c:	46 8d 0c c8                                     	lea    r9d,[rax+r9*8]
    2989c6289580:	c4 81 7a 6f 44 08 10                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x10]
    2989c6289587:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    2989c628958c:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    2989c6289592:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    2989c6289597:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    2989c628959b:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    2989c628959f:	41 81 e1 fc ff ff 1f                            	and    r9d,0x1ffffffc
    2989c62895a6:	45 8b d9                                        	mov    r11d,r9d
    2989c62895a9:	41 83 cb 02                                     	or     r11d,0x2
    2989c62895ad:	44 0f af d9                                     	imul   r11d,ecx
    2989c62895b1:	44 03 db                                        	add    r11d,ebx
    2989c62895b4:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    2989c62895b8:	c4 81 7a 6f 7c 18 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x10]
    2989c62895bf:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    2989c62895c4:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    2989c62895c9:	c4 01 7a 6f 04 18                               	vmovdqu xmm8,XMMWORD PTR [r8+r11*1]
    2989c62895cf:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    2989c62895d5:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    2989c62895da:	45 8b d9                                        	mov    r11d,r9d
    2989c62895dd:	41 83 cb 01                                     	or     r11d,0x1
    2989c62895e1:	44 0f af d9                                     	imul   r11d,ecx
    2989c62895e5:	44 03 db                                        	add    r11d,ebx
    2989c62895e8:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    2989c62895ec:	c4 01 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x10]
    2989c62895f3:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    2989c62895f9:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    2989c62895fe:	c4 01 7a 6f 14 18                               	vmovdqu xmm10,XMMWORD PTR [r8+r11*1]
    2989c6289604:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    2989c628960a:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    2989c628960f:	41 0f af c9                                     	imul   ecx,r9d
    2989c6289613:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    2989c6289617:	46 8d 1c d8                                     	lea    r11d,[rax+r11*8]
    2989c628961b:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    2989c6289622:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    2989c6289628:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    2989c628962d:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    2989c6289633:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    2989c6289639:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    2989c628963e:	c5 d1 72 f5 1f                                  	vpslld xmm5,xmm5,0x1f
    2989c6289643:	c5 d1 72 e5 1f                                  	vpsrad xmm5,xmm5,0x1f
    2989c6289648:	c5 78 50 dd                                     	vmovmskps r11d,xmm5
    2989c628964c:	41 83 fb 0f                                     	cmp    r11d,0xf
    2989c6289650:	0f 84 12 00 00 00                               	je     0x2989c6289668
    2989c6289656:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    2989c628965f:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6289663:	e9 10 03 00 00                                  	jmp    0x2989c6289978
    2989c6289668:	4c 8b 15 ca a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ca]        # 0x2989c6283f39
    2989c628966f:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6289674:	4c 8b 15 cd a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8cd]        # 0x2989c6283f48
    2989c628967b:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6289681:	4c 8b 15 d0 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d0]        # 0x2989c6283f58
    2989c6289688:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c628968d:	4c 8b 15 d3 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d3]        # 0x2989c6283f67
    2989c6289694:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    2989c628969a:	4c 8b 15 d6 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d6]        # 0x2989c6283f77
    2989c62896a1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c62896a6:	4c 8b 15 d9 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d9]        # 0x2989c6283f86
    2989c62896ad:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c62896b3:	4c 8b 15 dc a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8dc]        # 0x2989c6283f96
    2989c62896ba:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c62896bf:	4c 8b 15 df a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8df]        # 0x2989c6283fa5
    2989c62896c6:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    2989c62896cc:	4c 8b 15 e2 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e2]        # 0x2989c6283fb5
    2989c62896d3:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c62896d8:	4c 8b 15 e5 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e5]        # 0x2989c6283fc4
    2989c62896df:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    2989c62896e5:	4c 8b 15 e8 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8e8]        # 0x2989c6283fd4
    2989c62896ec:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62896f1:	4c 8b 15 eb a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8eb]        # 0x2989c6283fe3
    2989c62896f8:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c62896fe:	4c 8b 15 ee a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ee]        # 0x2989c6283ff3
    2989c6289705:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c628970a:	4c 8b 15 f1 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f1]        # 0x2989c6284002
    2989c6289711:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    2989c6289717:	c5 f8 11 6d 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm5
    2989c628971c:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6289720:	c5 d1 73 f5 3f                                  	vpsllq xmm5,xmm5,0x3f
    2989c6289725:	c5 d1 73 d5 1f                                  	vpsrlq xmm5,xmm5,0x1f
    2989c628972a:	4c 8b 15 f4 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f4]        # 0x2989c6284025
    2989c6289731:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6289737:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    2989c628973c:	4c 8b 15 f7 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8f7]        # 0x2989c628403a
    2989c6289743:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c6289748:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c628974c:	c5 78 11 6d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm13
    2989c6289751:	c4 41 78 c2 ec 01                               	vcmpltps xmm13,xmm0,xmm12
    2989c6289757:	c5 98 c2 c0 01                                  	vcmpltps xmm0,xmm12,xmm0
    2989c628975c:	c5 91 eb c0                                     	vpor   xmm0,xmm13,xmm0
    2989c6289760:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c6289764:	c5 d1 db e8                                     	vpand  xmm5,xmm5,xmm0
    2989c6289768:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628976d:	4c 8b 15 c6 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8c6]        # 0x2989c628403a
    2989c6289774:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    2989c6289779:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    2989c628977e:	c4 41 79 df fd                                  	vpandn xmm15,xmm0,xmm13
    2989c6289783:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6289787:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628978c:	c4 41 78 c2 e3 01                               	vcmpltps xmm12,xmm0,xmm11
    2989c6289792:	c5 19 df fd                                     	vpandn xmm15,xmm12,xmm5
    2989c6289796:	c4 c1 59 db ec                                  	vpand  xmm5,xmm4,xmm12
    2989c628979b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62897a0:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    2989c62897a4:	c4 c1 21 db c4                                  	vpand  xmm0,xmm11,xmm12
    2989c62897a9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62897ae:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    2989c62897b4:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    2989c62897b8:	c4 c1 61 db eb                                  	vpand  xmm5,xmm3,xmm11
    2989c62897bd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62897c2:	c5 21 df f8                                     	vpandn xmm15,xmm11,xmm0
    2989c62897c6:	c4 c1 29 db c3                                  	vpand  xmm0,xmm10,xmm11
    2989c62897cb:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62897d0:	c4 41 78 c2 d1 01                               	vcmpltps xmm10,xmm0,xmm9
    2989c62897d6:	c5 29 df fd                                     	vpandn xmm15,xmm10,xmm5
    2989c62897da:	c4 c1 69 db ea                                  	vpand  xmm5,xmm2,xmm10
    2989c62897df:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c62897e4:	c5 29 df f8                                     	vpandn xmm15,xmm10,xmm0
    2989c62897e8:	c4 c1 31 db c2                                  	vpand  xmm0,xmm9,xmm10
    2989c62897ed:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62897f2:	c4 41 78 c2 c8 01                               	vcmpltps xmm9,xmm0,xmm8
    2989c62897f8:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    2989c62897fc:	c4 c1 71 db e9                                  	vpand  xmm5,xmm1,xmm9
    2989c6289801:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289806:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    2989c628980a:	c4 c1 39 db c1                                  	vpand  xmm0,xmm8,xmm9
    2989c628980f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289814:	c5 78 c2 c7 01                                  	vcmpltps xmm8,xmm0,xmm7
    2989c6289819:	c5 39 df fd                                     	vpandn xmm15,xmm8,xmm5
    2989c628981d:	c4 c1 09 db e8                                  	vpand  xmm5,xmm14,xmm8
    2989c6289822:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289827:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c628982b:	c4 c1 41 db c0                                  	vpand  xmm0,xmm7,xmm8
    2989c6289830:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289835:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c628983a:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    2989c628983f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c6289843:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6289847:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c628984c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6289850:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6289854:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6289859:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    2989c628985e:	c5 f8 c2 fe 01                                  	vcmpltps xmm7,xmm0,xmm6
    2989c6289863:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    2989c6289868:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    2989c628986c:	c5 b9 db ef                                     	vpand  xmm5,xmm8,xmm7
    2989c6289870:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c6289875:	c4 c1 7a 7f ac 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm5
    2989c628987f:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c6289883:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    2989c6289887:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628988c:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    2989c6289896:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    2989c628989a:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    2989c628989e:	45 33 db                                        	xor    r11d,r11d
    2989c62898a1:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    2989c62898a5:	41 0f 97 c3                                     	seta   r11b
    2989c62898a9:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    2989c62898af:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    2989c62898b7:	0b d8                                           	or     ebx,eax
    2989c62898b9:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    2989c62898bf:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    2989c62898c4:	b9 02 00 00 00                                  	mov    ecx,0x2
    2989c62898c9:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    2989c62898cd:	44 0f 47 d9                                     	cmova  r11d,ecx
    2989c62898d1:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    2989c62898d9:	0b d8                                           	or     ebx,eax
    2989c62898db:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    2989c62898e1:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c62898e6:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    2989c62898ea:	44 0f 47 de                                     	cmova  r11d,esi
    2989c62898ee:	41 c1 e3 02                                     	shl    r11d,0x2
    2989c62898f2:	41 0b c3                                        	or     eax,r11d
    2989c62898f5:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    2989c62898fb:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    2989c6289902:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    2989c6289908:	44 0b d8                                        	or     r11d,eax
    2989c628990b:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    2989c628990f:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    2989c6289914:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6289918:	e9 5b 00 00 00                                  	jmp    0x2989c6289978
    2989c628991d:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    2989c6289923:	51                                              	push   rcx
    2989c6289924:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6289928:	8b c8                                           	mov    ecx,eax
    2989c628992a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c628992d:	e8 36 19 ef ff                                  	call   0x2989c617b268
    2989c6289932:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289935:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6289939:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c628993d:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6289941:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c6289948:	e9 2b 00 00 00                                  	jmp    0x2989c6289978
    2989c628994d:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    2989c6289953:	51                                              	push   rcx
    2989c6289954:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6289958:	8b c8                                           	mov    ecx,eax
    2989c628995a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c628995d:	e8 f6 18 ef ff                                  	call   0x2989c617b258
    2989c6289962:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289965:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6289969:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c628996d:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    2989c6289971:	44 8b bd 70 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x90]
    2989c6289978:	41 83 c4 01                                     	add    r12d,0x1
    2989c628997c:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    2989c6289981:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    2989c6289986:	0f 8f 34 e9 ff ff                               	jg     0x2989c62882c0
    2989c628998c:	44 8b 85 28 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1d8]
    2989c6289993:	45 85 c0                                        	test   r8d,r8d
    2989c6289996:	0f 85 07 00 00 00                               	jne    0x2989c62899a3
    2989c628999c:	8b f7                                           	mov    esi,edi
    2989c628999e:	e9 27 00 00 00                                  	jmp    0x2989c62899ca
    2989c62899a3:	45 33 c0                                        	xor    r8d,r8d
    2989c62899a6:	83 bd 20 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e0],0x0
    2989c62899ad:	41 0f 94 c0                                     	sete   r8b
    2989c62899b1:	43 8d 04 00                                     	lea    eax,[r8+r8*1]
    2989c62899b5:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    2989c62899bb:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    2989c62899bf:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    2989c62899c3:	48 8b e5                                        	mov    rsp,rbp
    2989c62899c6:	5d                                              	pop    rbp
    2989c62899c7:	c2 40 00                                        	ret    0x40
    2989c62899ca:	44 8d 86 a0 02 00 00                            	lea    r8d,[rsi+0x2a0]
    2989c62899d1:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    2989c62899d5:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    2989c62899d9:	b8 01 00 00 00                                  	mov    eax,0x1
    2989c62899de:	48 8b e5                                        	mov    rsp,rbp
    2989c62899e1:	5d                                              	pop    rbp
    2989c62899e2:	c2 40 00                                        	ret    0x40
    2989c62899e5:	41 b8 10 00 00 00                               	mov    r8d,0x10
    2989c62899eb:	41 d1 f8                                        	sar    r8d,1
    2989c62899ee:	4d 63 c0                                        	movsxd r8,r8d
    2989c62899f1:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    2989c62899f9:	48 89 95 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rdx
    2989c6289a00:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    2989c6289a07:	48 89 9d e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],rbx
    2989c6289a0e:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    2989c6289a16:	49 8b c0                                        	mov    rax,r8
    2989c6289a19:	e8 12 45 ef ff                                  	call   0x2989c617df30
    2989c6289a1e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6289a22:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6289a25:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    2989c6289a2c:	8b 95 48 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3b8]
    2989c6289a32:	8b bd 88 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x378]
    2989c6289a38:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    2989c6289a3e:	c5 fb 10 8d b8 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x248]
    2989c6289a46:	c5 f8 10 85 60 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xa0]
    2989c6289a4e:	e9 d6 75 ff ff                                  	jmp    0x2989c6281029
    2989c6289a53:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c6289a57:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    2989c6289a5f:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    2989c6289a63:	48 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rbx
    2989c6289a6a:	c5 fb 11 ad 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm5
    2989c6289a72:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    2989c6289a79:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    2989c6289a81:	e8 ba 44 ef ff                                  	call   0x2989c617df40
    2989c6289a86:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6289a8a:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6289a8e:	45 33 e4                                        	xor    r12d,r12d
    2989c6289a91:	c5 fb 10 8d b8 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x248]
    2989c6289a99:	c5 f8 10 85 60 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xa0]
    2989c6289aa1:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6289aa4:	8b 9d 48 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xb8]
    2989c6289aaa:	c5 fb 10 ad 58 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa8]
    2989c6289ab2:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    2989c6289ab8:	44 8b 8d 78 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x88]
    2989c6289abf:	8b b5 18 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe8]
    2989c6289ac5:	8b bd 40 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc0]
    2989c6289acb:	e9 05 78 ff ff                                  	jmp    0x2989c62812d5
    2989c6289ad0:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c6289ad4:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    2989c6289adc:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    2989c6289ae0:	48 89 b5 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rsi
    2989c6289ae7:	48 89 9d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],rbx
    2989c6289aee:	4c 89 9d 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r11
    2989c6289af5:	c5 fb 11 ad 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm5
    2989c6289afd:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    2989c6289b04:	48 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdi
    2989c6289b0b:	c5 fb 11 8d b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm1
    2989c6289b13:	e8 28 44 ef ff                                  	call   0x2989c617df40
    2989c6289b18:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6289b1c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6289b20:	45 33 e4                                        	xor    r12d,r12d
    2989c6289b23:	c5 fb 10 8d b8 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x248]
    2989c6289b2b:	c5 f8 10 85 60 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xa0]
    2989c6289b33:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c6289b36:	8b b5 28 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xd8]
    2989c6289b3c:	8b 9d 48 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xb8]
    2989c6289b42:	44 8b 9d 50 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xb0]
    2989c6289b49:	c5 fb 10 ad 58 ff ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0xa8]
    2989c6289b51:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    2989c6289b57:	41 b9 ff ff ff ff                               	mov    r9d,0xffffffff
    2989c6289b5d:	8b bd 38 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xc8]
    2989c6289b63:	e9 b7 78 ff ff                                  	jmp    0x2989c628141f
    2989c6289b68:	c5 7b 11 65 c0                                  	vmovsd QWORD PTR [rbp-0x40],xmm12
    2989c6289b6d:	c5 7b 11 6d b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm13
    2989c6289b72:	c5 7b 11 b5 58 ff ff ff                         	vmovsd QWORD PTR [rbp-0xa8],xmm14
    2989c6289b7a:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    2989c6289b81:	48 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rax
    2989c6289b88:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    2989c6289b8f:	e8 ac 43 ef ff                                  	call   0x2989c617df40
    2989c6289b94:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c6289b98:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c6289b9d:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c6289ba2:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6289ba6:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    2989c6289bae:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    2989c6289bb1:	c5 7b 10 65 c0                                  	vmovsd xmm12,QWORD PTR [rbp-0x40]
    2989c6289bb6:	c5 7b 10 6d b8                                  	vmovsd xmm13,QWORD PTR [rbp-0x48]
    2989c6289bbb:	c5 7b 10 b5 58 ff ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0xa8]
    2989c6289bc3:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    2989c6289bca:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    2989c6289bd1:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    2989c6289bd8:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    2989c6289bdf:	4c 8b a5 b0 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x150]
    2989c6289be6:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    2989c6289bee:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    2989c6289bf6:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    2989c6289bfe:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    2989c6289c05:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    2989c6289c0b:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    2989c6289c10:	8b b5 10 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xf0]
    2989c6289c16:	48 8b 95 80 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x280]
    2989c6289c1d:	e9 da 87 ff ff                                  	jmp    0x2989c62823fc
    2989c6289c22:	48 89 95 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rdx
    2989c6289c29:	4c 89 9d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r11
    2989c6289c30:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    2989c6289c37:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    2989c6289c3e:	e8 fd 42 ef ff                                  	call   0x2989c617df40
    2989c6289c43:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    2989c6289c47:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    2989c6289c4c:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    2989c6289c51:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6289c55:	c5 fb 10 9d 80 fe ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x180]
    2989c6289c5d:	44 8b 9d f0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x210]
    2989c6289c64:	48 8b b5 e0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x220]
    2989c6289c6b:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    2989c6289c72:	48 8b 85 c0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x240]
    2989c6289c79:	8b 95 20 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1e0]
    2989c6289c7f:	48 8b bd f8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x208]
    2989c6289c86:	48 8b 8d 20 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3e0]
    2989c6289c8d:	48 8b 9d 00 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x400]
    2989c6289c94:	4c 8b 85 38 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x2c8]
    2989c6289c9b:	4c 8b 8d b0 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x150]
    2989c6289ca2:	c5 f8 10 85 a0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x160]
    2989c6289caa:	c5 f8 10 ad 60 ff ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0xa0]
    2989c6289cb2:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    2989c6289cba:	e9 3c 8e ff ff                                  	jmp    0x2989c6282afb
    2989c6289cbf:	e8 7c 42 ef ff                                  	call   0x2989c617df40
    2989c6289cc4:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289cc7:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6289ccb:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    2989c6289cd2:	8b 8d 98 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x168]
    2989c6289cd8:	8b 95 90 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x170]
    2989c6289cde:	8b 9d 88 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x178]
    2989c6289ce4:	c5 78 10 a5 60 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2a0]
    2989c6289cec:	c5 78 10 9d 50 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2b0]
    2989c6289cf4:	4c 8b 8d 28 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1d8]
    2989c6289cfb:	c5 78 10 8d d0 fc ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x330]
    2989c6289d03:	c5 f8 10 ad c0 fc ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x340]
    2989c6289d0b:	c5 78 10 95 b0 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x350]
    2989c6289d13:	c5 78 10 85 a0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x360]
    2989c6289d1b:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    2989c6289d22:	e9 a3 ad ff ff                                  	jmp    0x2989c6284aca
    2989c6289d27:	e8 14 42 ef ff                                  	call   0x2989c617df40
    2989c6289d2c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289d2f:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6289d33:	8b 8d 00 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x300]
    2989c6289d39:	44 8b 85 80 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x380]
    2989c6289d40:	e9 da bd ff ff                                  	jmp    0x2989c6285b1f
    2989c6289d45:	e8 f6 41 ef ff                                  	call   0x2989c617df40
    2989c6289d4a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289d4d:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6289d51:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c6289d57:	48 8b 95 28 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1d8]
    2989c6289d5e:	44 8b 9d b0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x250]
    2989c6289d65:	e9 bc d3 ff ff                                  	jmp    0x2989c6287126
    2989c6289d6a:	e8 d1 41 ef ff                                  	call   0x2989c617df40
    2989c6289d6f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289d72:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6289d76:	41 bf 02 00 00 00                               	mov    r15d,0x2
    2989c6289d7c:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    2989c6289d80:	44 8b a5 70 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x90]
    2989c6289d87:	44 8b 8d 68 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x198]
    2989c6289d8e:	44 8b 9d 28 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1d8]
    2989c6289d95:	c5 78 10 85 60 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2a0]
    2989c6289d9d:	c5 f8 10 ad 50 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x2b0]
    2989c6289da5:	8b b5 70 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x290]
    2989c6289dab:	e9 af d7 ff ff                                  	jmp    0x2989c628755f
    2989c6289db0:	e8 8b 41 ef ff                                  	call   0x2989c617df40
    2989c6289db5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289db8:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6289dbc:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    2989c6289dc0:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    2989c6289dc4:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    2989c6289dc8:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    2989c6289dcd:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    2989c6289dd2:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c6289dd6:	4c 8b bd f8 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x108]
    2989c6289ddd:	48 8b 9d f0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x110]
    2989c6289de4:	4c 8b a5 e8 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x118]
    2989c6289deb:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    2989c6289df3:	8b b5 70 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x190]
    2989c6289df9:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    2989c6289e00:	e9 0f e5 ff ff                                  	jmp    0x2989c6288314
    2989c6289e05:	e8 36 41 ef ff                                  	call   0x2989c617df40
    2989c6289e0a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6289e0d:	48 8b 45 d8                                     	mov    rax,QWORD PTR [rbp-0x28]
    2989c6289e11:	44 8b 8d 00 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x100]
    2989c6289e18:	44 8b a5 20 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xe0]
    2989c6289e1f:	4c 8b 9d 18 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe8]
    2989c6289e26:	8b 8d 10 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xf0]
    2989c6289e2c:	8b 9d 98 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x168]
    2989c6289e32:	44 8b bd 90 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x170]
    2989c6289e39:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    2989c6289e40:	e9 3d e7 ff ff                                  	jmp    0x2989c6288582
    2989c6289e45:	e8 16 3e ef ff                                  	call   0x2989c617dc60
    2989c6289e4a:	e8 11 3e ef ff                                  	call   0x2989c617dc60
    2989c6289e4f:	e8 0c 3e ef ff                                  	call   0x2989c617dc60
    2989c6289e54:	e8 07 3e ef ff                                  	call   0x2989c617dc60
    2989c6289e59:	e8 02 3e ef ff                                  	call   0x2989c617dc60
    2989c6289e5e:	e8 fd 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e63:	e8 f8 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e68:	e8 f3 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e6d:	e8 ee 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e72:	e8 e9 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e77:	e8 e4 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e7c:	e8 df 3d ef ff                                  	call   0x2989c617dc60
    2989c6289e81:	90                                              	nop
    2989c6289e82:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    2989c6289e88:	ab                                              	stos   DWORD PTR es:[rdi],eax
    2989c6289e89:	31 28                                           	xor    DWORD PTR [rax],ebp
    2989c6289e8b:	c6                                              	(bad)
    2989c6289e8c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289e8e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289e90:	7b 31                                           	jnp    0x2989c6289ec3
    2989c6289e92:	28 c6                                           	sub    dh,al
    2989c6289e94:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289e96:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289e98:	53                                              	push   rbx
    2989c6289e99:	31 28                                           	xor    DWORD PTR [rax],ebp
    2989c6289e9b:	c6                                              	(bad)
    2989c6289e9c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289e9e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ea0:	2d 31 28 c6 89                                  	sub    eax,0x89c62831
    2989c6289ea5:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c6289ea7:	00 eb                                           	add    bl,ch
    2989c6289ea9:	30 28                                           	xor    BYTE PTR [rax],ch
    2989c6289eab:	c6                                              	(bad)
    2989c6289eac:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289eae:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289eb0:	d4                                              	(bad)
    2989c6289eb1:	30 28                                           	xor    BYTE PTR [rax],ch
    2989c6289eb3:	c6                                              	(bad)
    2989c6289eb4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289eb6:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289eb8:	87 30                                           	xchg   DWORD PTR [rax],esi
    2989c6289eba:	28 c6                                           	sub    dh,al
    2989c6289ebc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289ebe:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ec0:	7d 30                                           	jge    0x2989c6289ef2
    2989c6289ec2:	28 c6                                           	sub    dh,al
    2989c6289ec4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289ec6:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ec8:	28 2f                                           	sub    BYTE PTR [rdi],ch
    2989c6289eca:	28 c6                                           	sub    dh,al
    2989c6289ecc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289ece:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ed0:	02 2f                                           	add    ch,BYTE PTR [rdi]
    2989c6289ed2:	28 c6                                           	sub    dh,al
    2989c6289ed4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289ed6:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ed8:	db 2e                                           	fld    TBYTE PTR [rsi]
    2989c6289eda:	28 c6                                           	sub    dh,al
    2989c6289edc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289ede:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ee0:	b9 2e 28 c6 89                                  	mov    ecx,0x89c6282e
    2989c6289ee5:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c6289ee7:	00 81 2e 28 c6 89                               	add    BYTE PTR [rcx-0x7639d7d2],al
    2989c6289eed:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c6289eef:	00 6a 2e                                        	add    BYTE PTR [rdx+0x2e],ch
    2989c6289ef2:	28 c6                                           	sub    dh,al
    2989c6289ef4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289ef6:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289ef8:	1d 2e 28 c6 89                                  	sbb    eax,0x89c6282e
    2989c6289efd:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c6289eff:	00 13                                           	add    BYTE PTR [rbx],dl
    2989c6289f01:	2e 28 c6                                        	cs sub dh,al
    2989c6289f04:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6289f06:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289f08:	85 00                                           	test   DWORD PTR [rax],eax
    2989c6289f0a:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289f0c:	1c 00                                           	sbb    al,0x0
    2989c6289f0e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6289f10:	f5                                              	cmc
    2989c6289f11:	48 e7 03                                        	rex.W out 0x3,eax
    2989c6289f14:	05 a8 cb 01 e7                                  	add    eax,0xe701cba8
    2989c6289f19:	03 05 68 e7 03 05                               	add    eax,DWORD PTR [rip+0x503e768]        # 0x2989cb2c8687
    2989c6289f1f:	c4 07 e7 03                                     	(bad)
    2989c6289f23:	05 00 00 00 00                                  	add    eax,0x0
	...
