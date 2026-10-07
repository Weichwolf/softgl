
/home/cosmo/Git/softgl/build/diagnostics/cube-vector-core/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_vectors-turbofan.bin:     file format binary


Disassembly of section .data:

00003691cc6a2f40 <.data>:
    3691cc6a2f40:	55                                              	push   rbp
    3691cc6a2f41:	48 8b ec                                        	mov    rbp,rsp
    3691cc6a2f44:	6a 30                                           	push   0x30
    3691cc6a2f46:	56                                              	push   rsi
    3691cc6a2f47:	48 83 ec 20                                     	sub    rsp,0x20
    3691cc6a2f4b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc6a2f4f:	48 8b 5e 17                                     	mov    rbx,QWORD PTR [rsi+0x17]
    3691cc6a2f53:	85 d2                                           	test   edx,edx
    3691cc6a2f55:	0f 85 07 00 00 00                               	jne    0x3691cc6a2f62
    3691cc6a2f5b:	33 c0                                           	xor    eax,eax
    3691cc6a2f5d:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a2f60:	5d                                              	pop    rbp
    3691cc6a2f61:	c3                                              	ret
    3691cc6a2f62:	8b f0                                           	mov    esi,eax
    3691cc6a2f64:	8b 7c 33 04                                     	mov    edi,DWORD PTR [rbx+rsi*1+0x4]
    3691cc6a2f68:	85 ff                                           	test   edi,edi
    3691cc6a2f6a:	0f 85 04 00 00 00                               	jne    0x3691cc6a2f74
    3691cc6a2f70:	33 c0                                           	xor    eax,eax
    3691cc6a2f72:	eb e9                                           	jmp    0x3691cc6a2f5d
    3691cc6a2f74:	44 8b c2                                        	mov    r8d,edx
    3691cc6a2f77:	41 83 e0 0f                                     	and    r8d,0xf
    3691cc6a2f7b:	49 ba 50 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c850
    3691cc6a2f85:	c4 c1 68 54 22                                  	vandps xmm4,xmm2,XMMWORD PTR [r10]
    3691cc6a2f8a:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    3691cc6a2f94:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6a2f99:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc6a2f9d:	c5 d8 c2 f5 02                                  	vcmpleps xmm6,xmm4,xmm5
    3691cc6a2fa2:	4c 8b 15 d4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffd4]        # 0x3691cc6a2f7d
    3691cc6a2fa9:	c4 c1 70 54 3a                                  	vandps xmm7,xmm1,XMMWORD PTR [r10]
    3691cc6a2fae:	c5 40 c2 c5 02                                  	vcmpleps xmm8,xmm7,xmm5
    3691cc6a2fb3:	c4 c1 49 db f0                                  	vpand  xmm6,xmm6,xmm8
    3691cc6a2fb8:	4c 8b 15 be ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffbe]        # 0x3691cc6a2f7d
    3691cc6a2fbf:	c4 41 60 54 02                                  	vandps xmm8,xmm3,XMMWORD PTR [r10]
    3691cc6a2fc4:	c5 b8 c2 ed 02                                  	vcmpleps xmm5,xmm8,xmm5
    3691cc6a2fc9:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    3691cc6a2fcd:	c5 78 50 cd                                     	vmovmskps r9d,xmm5
    3691cc6a2fd1:	45 23 c8                                        	and    r9d,r8d
    3691cc6a2fd4:	44 3b ca                                        	cmp    r9d,edx
    3691cc6a2fd7:	0f 84 07 00 00 00                               	je     0x3691cc6a2fe4
    3691cc6a2fdd:	33 c0                                           	xor    eax,eax
    3691cc6a2fdf:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a2fe2:	5d                                              	pop    rbp
    3691cc6a2fe3:	c3                                              	ret
    3691cc6a2fe4:	c5 b8 c2 ef 02                                  	vcmpleps xmm5,xmm8,xmm7
    3691cc6a2fe9:	c5 d8 c2 f7 02                                  	vcmpleps xmm6,xmm4,xmm7
    3691cc6a2fee:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    3691cc6a2ff2:	c5 78 50 cd                                     	vmovmskps r9d,xmm5
    3691cc6a2ff6:	45 8b d9                                        	mov    r11d,r9d
    3691cc6a2ff9:	44 23 da                                        	and    r11d,edx
    3691cc6a2ffc:	41 3b d3                                        	cmp    edx,r11d
    3691cc6a2fff:	0f 84 99 00 00 00                               	je     0x3691cc6a309e
    3691cc6a3005:	c5 b8 c2 ec 02                                  	vcmpleps xmm5,xmm8,xmm4
    3691cc6a300a:	c5 c0 c2 f4 02                                  	vcmpleps xmm6,xmm7,xmm4
    3691cc6a300f:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    3691cc6a3013:	c5 78 50 e5                                     	vmovmskps r12d,xmm5
    3691cc6a3017:	45 8b f9                                        	mov    r15d,r9d
    3691cc6a301a:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    3691cc6a301e:	44 23 fa                                        	and    r15d,edx
    3691cc6a3021:	45 23 fc                                        	and    r15d,r12d
    3691cc6a3024:	44 3b fa                                        	cmp    r15d,edx
    3691cc6a3027:	0f 84 48 00 00 00                               	je     0x3691cc6a3075
    3691cc6a302d:	45 0b cc                                        	or     r9d,r12d
    3691cc6a3030:	44 85 ca                                        	test   edx,r9d
    3691cc6a3033:	0f 85 35 00 00 00                               	jne    0x3691cc6a306e
    3691cc6a3039:	49 ba 60 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c860
    3691cc6a3043:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    3691cc6a3048:	41 b9 04 00 00 00                               	mov    r9d,0x4
    3691cc6a304e:	c5 79 28 f9                                     	vmovapd xmm15,xmm1
    3691cc6a3052:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    3691cc6a3056:	c4 c1 79 28 df                                  	vmovapd xmm3,xmm15
    3691cc6a305b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a3060:	45 33 e4                                        	xor    r12d,r12d
    3691cc6a3063:	41 bf 01 00 00 00                               	mov    r15d,0x1
    3691cc6a3069:	e9 51 00 00 00                                  	jmp    0x3691cc6a30bf
    3691cc6a306e:	33 c0                                           	xor    eax,eax
    3691cc6a3070:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a3073:	5d                                              	pop    rbp
    3691cc6a3074:	c3                                              	ret
    3691cc6a3075:	c5 79 28 f9                                     	vmovapd xmm15,xmm1
    3691cc6a3079:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    3691cc6a307d:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    3691cc6a3081:	c4 c1 79 28 df                                  	vmovapd xmm3,xmm15
    3691cc6a3086:	45 33 ff                                        	xor    r15d,r15d
    3691cc6a3089:	c5 f9 28 fc                                     	vmovapd xmm7,xmm4
    3691cc6a308d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    3691cc6a3093:	41 b9 02 00 00 00                               	mov    r9d,0x2
    3691cc6a3099:	e9 21 00 00 00                                  	jmp    0x3691cc6a30bf
    3691cc6a309e:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x3691cc6a303b
    3691cc6a30a5:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    3691cc6a30aa:	4c 8b 15 8a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8a]        # 0x3691cc6a303b
    3691cc6a30b1:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    3691cc6a30b6:	45 33 c9                                        	xor    r9d,r9d
    3691cc6a30b9:	45 8b e1                                        	mov    r12d,r9d
    3691cc6a30bc:	45 8b f9                                        	mov    r15d,r9d
    3691cc6a30bf:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    3691cc6a30c3:	c5 d8 c2 c9 02                                  	vcmpleps xmm1,xmm4,xmm1
    3691cc6a30c8:	c5 f8 50 c1                                     	vmovmskps eax,xmm1
    3691cc6a30cc:	41 23 c0                                        	and    eax,r8d
    3691cc6a30cf:	0f 85 5d 00 00 00                               	jne    0x3691cc6a3132
    3691cc6a30d5:	4c 8b 15 5f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff5f]        # 0x3691cc6a303b
    3691cc6a30dc:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    3691cc6a30e1:	45 85 e4                                        	test   r12d,r12d
    3691cc6a30e4:	0f 85 04 00 00 00                               	jne    0x3691cc6a30ee
    3691cc6a30ea:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    3691cc6a30ee:	4c 8b 15 46 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff46]        # 0x3691cc6a303b
    3691cc6a30f5:	c4 c1 60 57 12                                  	vxorps xmm2,xmm3,XMMWORD PTR [r10]
    3691cc6a30fa:	45 85 ff                                        	test   r15d,r15d
    3691cc6a30fd:	0f 84 04 00 00 00                               	je     0x3691cc6a3107
    3691cc6a3103:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    3691cc6a3107:	44 3b da                                        	cmp    r11d,edx
    3691cc6a310a:	0f 84 04 00 00 00                               	je     0x3691cc6a3114
    3691cc6a3110:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    3691cc6a3114:	41 83 c9 01                                     	or     r9d,0x1
    3691cc6a3118:	41 b8 03 00 00 00                               	mov    r8d,0x3
    3691cc6a311e:	45 85 e4                                        	test   r12d,r12d
    3691cc6a3121:	45 0f 45 c8                                     	cmovne r9d,r8d
    3691cc6a3125:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    3691cc6a3129:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    3691cc6a312d:	e9 0f 00 00 00                                  	jmp    0x3691cc6a3141
    3691cc6a3132:	3b c2                                           	cmp    eax,edx
    3691cc6a3134:	0f 84 07 00 00 00                               	je     0x3691cc6a3141
    3691cc6a313a:	33 c0                                           	xor    eax,eax
    3691cc6a313c:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a313f:	5d                                              	pop    rbp
    3691cc6a3140:	c3                                              	ret
    3691cc6a3141:	41 c1 e1 06                                     	shl    r9d,0x6
    3691cc6a3145:	41 03 f9                                        	add    edi,r9d
    3691cc6a3148:	44 8b 84 3b 24 01 00 00                         	mov    r8d,DWORD PTR [rbx+rdi*1+0x124]
    3691cc6a3150:	45 85 c0                                        	test   r8d,r8d
    3691cc6a3153:	0f 85 07 00 00 00                               	jne    0x3691cc6a3160
    3691cc6a3159:	33 c0                                           	xor    eax,eax
    3691cc6a315b:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a315e:	5d                                              	pop    rbp
    3691cc6a315f:	c3                                              	ret
    3691cc6a3160:	44 8b 8c 3b a4 02 00 00                         	mov    r9d,DWORD PTR [rbx+rdi*1+0x2a4]
    3691cc6a3168:	45 85 c9                                        	test   r9d,r9d
    3691cc6a316b:	0f 8e b2 0e 00 00                               	jle    0x3691cc6a4023
    3691cc6a3171:	81 c7 24 04 00 00                               	add    edi,0x424
    3691cc6a3177:	8b 3c 3b                                        	mov    edi,DWORD PTR [rbx+rdi*1]
    3691cc6a317a:	85 ff                                           	test   edi,edi
    3691cc6a317c:	0f 8e 9a 0e 00 00                               	jle    0x3691cc6a401c
    3691cc6a3182:	45 8d 59 ff                                     	lea    r11d,[r9-0x1]
    3691cc6a3186:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    3691cc6a3190:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6a3195:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6a3199:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x3691cc6a3188
    3691cc6a31a0:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6a31a5:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc6a31a9:	c5 c0 c2 ed 01                                  	vcmpltps xmm5,xmm7,xmm5
    3691cc6a31ae:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    3691cc6a31b2:	c5 f1 db cd                                     	vpand  xmm1,xmm1,xmm5
    3691cc6a31b6:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc6a31bb:	c5 e8 5e d1                                     	vdivps xmm2,xmm2,xmm1
    3691cc6a31bf:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    3691cc6a31c9:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6a31ce:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc6a31d2:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    3691cc6a31d6:	c5 e0 5e c9                                     	vdivps xmm1,xmm3,xmm1
    3691cc6a31da:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    3691cc6a31de:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    3691cc6a31e8:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6a31ed:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6a31f1:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    3691cc6a31f5:	44 8b 64 33 14                                  	mov    r12d,DWORD PTR [rbx+rsi*1+0x14]
    3691cc6a31fa:	44 8b 7c 33 10                                  	mov    r15d,DWORD PTR [rbx+rsi*1+0x10]
    3691cc6a31ff:	33 c0                                           	xor    eax,eax
    3691cc6a3201:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    3691cc6a3208:	0f 95 c0                                        	setne  al
    3691cc6a320b:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    3691cc6a3212:	41 0f 95 c7                                     	setne  r15b
    3691cc6a3216:	45 0f b6 ff                                     	movzx  r15d,r15b
    3691cc6a321a:	48 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],rbx
    3691cc6a321e:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    3691cc6a3222:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    3691cc6a3226:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    3691cc6a322a:	44 23 f8                                        	and    r15d,eax
    3691cc6a322d:	0f 85 0d 00 00 00                               	jne    0x3691cc6a3240
    3691cc6a3233:	c5 d8 5f c9                                     	vmaxps xmm1,xmm4,xmm1
    3691cc6a3237:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    3691cc6a323b:	e9 0a 00 00 00                                  	jmp    0x3691cc6a324a
    3691cc6a3240:	c4 e3 79 08 f1 09                               	vroundps xmm6,xmm1,0x9
    3691cc6a3246:	c5 f0 5c ce                                     	vsubps xmm1,xmm1,xmm6
    3691cc6a324a:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    3691cc6a324e:	8b 74 33 0c                                     	mov    esi,DWORD PTR [rbx+rsi*1+0xc]
    3691cc6a3252:	45 8b d1                                        	mov    r10d,r9d
    3691cc6a3255:	c4 c1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,r10
    3691cc6a325a:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    3691cc6a325f:	c5 e0 59 c9                                     	vmulps xmm1,xmm3,xmm1
    3691cc6a3263:	8d 47 ff                                        	lea    eax,[rdi-0x1]
    3691cc6a3266:	8b d8                                           	mov    ebx,eax
    3691cc6a3268:	23 df                                           	and    ebx,edi
    3691cc6a326a:	33 c9                                           	xor    ecx,ecx
    3691cc6a326c:	45 8b c3                                        	mov    r8d,r11d
    3691cc6a326f:	45 85 d9                                        	test   r9d,r11d
    3691cc6a3272:	44 0f 45 c1                                     	cmovne r8d,ecx
    3691cc6a3276:	44 8b d7                                        	mov    r10d,edi
    3691cc6a3279:	c4 c1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,r10
    3691cc6a327e:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    3691cc6a3283:	33 d2                                           	xor    edx,edx
    3691cc6a3285:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    3691cc6a328c:	0f 95 c2                                        	setne  dl
    3691cc6a328f:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    3691cc6a3296:	41 0f 95 c4                                     	setne  r12b
    3691cc6a329a:	45 0f b6 e4                                     	movzx  r12d,r12b
    3691cc6a329e:	44 23 e2                                        	and    r12d,edx
    3691cc6a32a1:	0f 85 0d 00 00 00                               	jne    0x3691cc6a32b4
    3691cc6a32a7:	c5 d8 5f d2                                     	vmaxps xmm2,xmm4,xmm2
    3691cc6a32ab:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    3691cc6a32af:	e9 0a 00 00 00                                  	jmp    0x3691cc6a32be
    3691cc6a32b4:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    3691cc6a32ba:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    3691cc6a32be:	c5 e0 59 d2                                     	vmulps xmm2,xmm3,xmm2
    3691cc6a32c2:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    3691cc6a32cc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6a32d1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6a32d5:	c5 e8 58 e3                                     	vaddps xmm4,xmm2,xmm3
    3691cc6a32d9:	81 fe 00 26 00 00                               	cmp    esi,0x2600
    3691cc6a32df:	0f 84 5f 00 00 00                               	je     0x3691cc6a3344
    3691cc6a32e5:	c4 e3 79 08 d4 09                               	vroundps xmm2,xmm4,0x9
    3691cc6a32eb:	4c 8b 15 8b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc8b]        # 0x3691cc6a2f7d
    3691cc6a32f2:	c4 c1 68 54 32                                  	vandps xmm6,xmm2,XMMWORD PTR [r10]
    3691cc6a32f7:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    3691cc6a3301:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6a3306:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6a330a:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    3691cc6a330f:	49 ba 40 c9 35 7d 08 61 00 00                   	movabs r10,0x61087d35c940
    3691cc6a3319:	c5 68 c2 fa 00                                  	vcmpeqps xmm15,xmm2,xmm2
    3691cc6a331e:	c4 41 68 54 c7                                  	vandps xmm8,xmm2,xmm15
    3691cc6a3323:	c4 41 68 c2 3a 0d                               	vcmpgeps xmm15,xmm2,XMMWORD PTR [r10]
    3691cc6a3329:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc6a332e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc6a3333:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    3691cc6a3337:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    3691cc6a333b:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    3691cc6a333f:	e9 48 00 00 00                                  	jmp    0x3691cc6a338c
    3691cc6a3344:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    3691cc6a334a:	4c 8b 15 2c fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc2c]        # 0x3691cc6a2f7d
    3691cc6a3351:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    3691cc6a3356:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x3691cc6a32f9
    3691cc6a335d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6a3362:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6a3366:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    3691cc6a336b:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x3691cc6a3311
    3691cc6a3372:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    3691cc6a3377:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    3691cc6a337c:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    3691cc6a3382:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc6a3387:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc6a338c:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    3691cc6a3392:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x3691cc6a3311
    3691cc6a3399:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    3691cc6a339e:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    3691cc6a33a3:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    3691cc6a33a9:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    3691cc6a33ae:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    3691cc6a33b3:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    3691cc6a33bd:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6a33c2:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6a33c7:	4c 8b 15 af fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbaf]        # 0x3691cc6a2f7d
    3691cc6a33ce:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    3691cc6a33d3:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    3691cc6a33d8:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    3691cc6a33dd:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    3691cc6a33e1:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6a33e6:	c4 41 79 6e cb                                  	vmovd  xmm9,r11d
    3691cc6a33eb:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc6a33f0:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6a33f5:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    3691cc6a33fa:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    3691cc6a33ff:	45 85 ff                                        	test   r15d,r15d
    3691cc6a3402:	0f 84 4e 00 00 00                               	je     0x3691cc6a3456
    3691cc6a3408:	c4 41 79 6e d8                                  	vmovd  xmm11,r8d
    3691cc6a340d:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc6a3412:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    3691cc6a3417:	45 85 c0                                        	test   r8d,r8d
    3691cc6a341a:	0f 85 36 00 00 00                               	jne    0x3691cc6a3456
    3691cc6a3420:	c4 41 79 6e d9                                  	vmovd  xmm11,r9d
    3691cc6a3425:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc6a342a:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    3691cc6a342f:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    3691cc6a3434:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6a3439:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    3691cc6a343e:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    3691cc6a3442:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    3691cc6a3447:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    3691cc6a344c:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    3691cc6a3451:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    3691cc6a3456:	8b d0                                           	mov    edx,eax
    3691cc6a3458:	85 db                                           	test   ebx,ebx
    3691cc6a345a:	0f 45 d1                                        	cmovne edx,ecx
    3691cc6a345d:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    3691cc6a3462:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    3691cc6a3466:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6a346b:	c5 79 6e c0                                     	vmovd  xmm8,eax
    3691cc6a346f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6a3474:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    3691cc6a3479:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    3691cc6a347e:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    3691cc6a3483:	45 85 e4                                        	test   r12d,r12d
    3691cc6a3486:	0f 84 49 00 00 00                               	je     0x3691cc6a34d5
    3691cc6a348c:	c5 79 6e d2                                     	vmovd  xmm10,edx
    3691cc6a3490:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    3691cc6a3495:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    3691cc6a349a:	85 d2                                           	test   edx,edx
    3691cc6a349c:	0f 85 33 00 00 00                               	jne    0x3691cc6a34d5
    3691cc6a34a2:	c5 79 6e d7                                     	vmovd  xmm10,edi
    3691cc6a34a6:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    3691cc6a34ab:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    3691cc6a34b0:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    3691cc6a34b5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6a34ba:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    3691cc6a34bf:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    3691cc6a34c3:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    3691cc6a34c8:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    3691cc6a34cc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a34d1:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    3691cc6a34d5:	c4 c1 79 6e c1                                  	vmovd  xmm0,r9d
    3691cc6a34da:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6a34df:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    3691cc6a34e4:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    3691cc6a34e9:	c4 63 79 16 e3 03                               	vpextrd ebx,xmm12,0x3
    3691cc6a34ef:	c4 43 79 16 e1 02                               	vpextrd r9d,xmm12,0x2
    3691cc6a34f5:	c4 43 79 16 e3 01                               	vpextrd r11d,xmm12,0x1
    3691cc6a34fb:	c5 79 7e e0                                     	vmovd  eax,xmm12
    3691cc6a34ff:	81 fe 00 26 00 00                               	cmp    esi,0x2600
    3691cc6a3505:	0f 84 e8 08 00 00                               	je     0x3691cc6a3df3
    3691cc6a350b:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    3691cc6a3515:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6a351a:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6a351f:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    3691cc6a3524:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    3691cc6a3529:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    3691cc6a352e:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    3691cc6a3533:	45 85 ff                                        	test   r15d,r15d
    3691cc6a3536:	0f 84 48 00 00 00                               	je     0x3691cc6a3584
    3691cc6a353c:	c4 41 79 6e e8                                  	vmovd  xmm13,r8d
    3691cc6a3541:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6a3546:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    3691cc6a354b:	45 85 c0                                        	test   r8d,r8d
    3691cc6a354e:	0f 85 30 00 00 00                               	jne    0x3691cc6a3584
    3691cc6a3554:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    3691cc6a3559:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    3691cc6a355e:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    3691cc6a3562:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6a3567:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    3691cc6a356c:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    3691cc6a3570:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    3691cc6a3575:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    3691cc6a357a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc6a357f:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    3691cc6a3584:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    3691cc6a3589:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    3691cc6a358d:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    3691cc6a3592:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    3691cc6a3597:	45 85 e4                                        	test   r12d,r12d
    3691cc6a359a:	0f 84 4d 00 00 00                               	je     0x3691cc6a35ed
    3691cc6a35a0:	c5 f9 6e fa                                     	vmovd  xmm7,edx
    3691cc6a35a4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6a35a9:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    3691cc6a35ad:	85 d2                                           	test   edx,edx
    3691cc6a35af:	0f 85 38 00 00 00                               	jne    0x3691cc6a35ed
    3691cc6a35b5:	c5 f9 6e ff                                     	vmovd  xmm7,edi
    3691cc6a35b9:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6a35be:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6a35c3:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    3691cc6a35c8:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    3691cc6a35cc:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6a35d1:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    3691cc6a35d6:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    3691cc6a35da:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    3691cc6a35df:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    3691cc6a35e4:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6a35e9:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    3691cc6a35ed:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    3691cc6a35f2:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    3691cc6a35f7:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    3691cc6a35fb:	0f 85 16 00 00 00                               	jne    0x3691cc6a3617
    3691cc6a3601:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    3691cc6a3606:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    3691cc6a360a:	c5 f8 50 d7                                     	vmovmskps edx,xmm7
    3691cc6a360e:	83 fa 0f                                        	cmp    edx,0xf
    3691cc6a3611:	0f 84 85 03 00 00                               	je     0x3691cc6a399c
    3691cc6a3617:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    3691cc6a361a:	83 e2 08                                        	and    edx,0x8
    3691cc6a361d:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    3691cc6a3620:	83 e6 04                                        	and    esi,0x4
    3691cc6a3623:	8b 7d d8                                        	mov    edi,DWORD PTR [rbp-0x28]
    3691cc6a3626:	83 e7 02                                        	and    edi,0x2
    3691cc6a3629:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    3691cc6a362d:	41 83 e0 01                                     	and    r8d,0x1
    3691cc6a3631:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    3691cc6a3635:	0f 84 84 00 00 00                               	je     0x3691cc6a36bf
    3691cc6a363b:	45 85 c0                                        	test   r8d,r8d
    3691cc6a363e:	0f 85 10 00 00 00                               	jne    0x3691cc6a3654
    3691cc6a3644:	4c 8b e1                                        	mov    r12,rcx
    3691cc6a3647:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    3691cc6a364b:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    3691cc6a364f:	e9 10 00 00 00                                  	jmp    0x3691cc6a3664
    3691cc6a3654:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    3691cc6a3658:	45 8d 24 80                                     	lea    r12d,[r8+rax*4]
    3691cc6a365c:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    3691cc6a3660:	47 8b 24 27                                     	mov    r12d,DWORD PTR [r15+r12*1]
    3691cc6a3664:	85 ff                                           	test   edi,edi
    3691cc6a3666:	0f 85 08 00 00 00                               	jne    0x3691cc6a3674
    3691cc6a366c:	48 8b f9                                        	mov    rdi,rcx
    3691cc6a366f:	e9 08 00 00 00                                  	jmp    0x3691cc6a367c
    3691cc6a3674:	43 8d 3c 98                                     	lea    edi,[r8+r11*4]
    3691cc6a3678:	41 8b 3c 3f                                     	mov    edi,DWORD PTR [r15+rdi*1]
    3691cc6a367c:	85 f6                                           	test   esi,esi
    3691cc6a367e:	0f 85 08 00 00 00                               	jne    0x3691cc6a368c
    3691cc6a3684:	48 8b f1                                        	mov    rsi,rcx
    3691cc6a3687:	e9 08 00 00 00                                  	jmp    0x3691cc6a3694
    3691cc6a368c:	43 8d 34 88                                     	lea    esi,[r8+r9*4]
    3691cc6a3690:	41 8b 34 37                                     	mov    esi,DWORD PTR [r15+rsi*1]
    3691cc6a3694:	85 d2                                           	test   edx,edx
    3691cc6a3696:	0f 85 13 00 00 00                               	jne    0x3691cc6a36af
    3691cc6a369c:	41 8b d0                                        	mov    edx,r8d
    3691cc6a369f:	44 8b c7                                        	mov    r8d,edi
    3691cc6a36a2:	8b fe                                           	mov    edi,esi
    3691cc6a36a4:	48 8b d9                                        	mov    rbx,rcx
    3691cc6a36a7:	49 8b f7                                        	mov    rsi,r15
    3691cc6a36aa:	e9 3d 00 00 00                                  	jmp    0x3691cc6a36ec
    3691cc6a36af:	41 8b d0                                        	mov    edx,r8d
    3691cc6a36b2:	44 8b c7                                        	mov    r8d,edi
    3691cc6a36b5:	8b fe                                           	mov    edi,esi
    3691cc6a36b7:	49 8b f7                                        	mov    rsi,r15
    3691cc6a36ba:	e9 27 00 00 00                                  	jmp    0x3691cc6a36e6
    3691cc6a36bf:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    3691cc6a36c2:	42 8d 3c 9a                                     	lea    edi,[rdx+r11*4]
    3691cc6a36c6:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    3691cc6a36ca:	8b 3c 3e                                        	mov    edi,DWORD PTR [rsi+rdi*1]
    3691cc6a36cd:	44 8d 04 82                                     	lea    r8d,[rdx+rax*4]
    3691cc6a36d1:	46 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+r8*1]
    3691cc6a36d5:	46 8d 04 8a                                     	lea    r8d,[rdx+r9*4]
    3691cc6a36d9:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    3691cc6a36dd:	44 8b d7                                        	mov    r10d,edi
    3691cc6a36e0:	41 8b f8                                        	mov    edi,r8d
    3691cc6a36e3:	45 8b c2                                        	mov    r8d,r10d
    3691cc6a36e6:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    3691cc6a36e9:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    3691cc6a36ec:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    3691cc6a36f1:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    3691cc6a36f6:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6a36fb:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    3691cc6a36ff:	0f 84 74 00 00 00                               	je     0x3691cc6a3779
    3691cc6a3705:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    3691cc6a3709:	0f 85 08 00 00 00                               	jne    0x3691cc6a3717
    3691cc6a370f:	4c 8b c9                                        	mov    r9,rcx
    3691cc6a3712:	e9 0d 00 00 00                                  	jmp    0x3691cc6a3724
    3691cc6a3717:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    3691cc6a371c:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    3691cc6a3720:	46 8b 0c 0e                                     	mov    r9d,DWORD PTR [rsi+r9*1]
    3691cc6a3724:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    3691cc6a3728:	0f 85 08 00 00 00                               	jne    0x3691cc6a3736
    3691cc6a372e:	4c 8b d9                                        	mov    r11,rcx
    3691cc6a3731:	e9 0e 00 00 00                                  	jmp    0x3691cc6a3744
    3691cc6a3736:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    3691cc6a373c:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    3691cc6a3740:	46 8b 1c 1e                                     	mov    r11d,DWORD PTR [rsi+r11*1]
    3691cc6a3744:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    3691cc6a3748:	0f 85 08 00 00 00                               	jne    0x3691cc6a3756
    3691cc6a374e:	4c 8b e1                                        	mov    r12,rcx
    3691cc6a3751:	e9 0e 00 00 00                                  	jmp    0x3691cc6a3764
    3691cc6a3756:	c4 c3 79 16 fc 02                               	vpextrd r12d,xmm7,0x2
    3691cc6a375c:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    3691cc6a3760:	46 8b 24 26                                     	mov    r12d,DWORD PTR [rsi+r12*1]
    3691cc6a3764:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    3691cc6a3768:	0f 85 34 00 00 00                               	jne    0x3691cc6a37a2
    3691cc6a376e:	45 8b f9                                        	mov    r15d,r9d
    3691cc6a3771:	4c 8b c9                                        	mov    r9,rcx
    3691cc6a3774:	e9 40 00 00 00                                  	jmp    0x3691cc6a37b9
    3691cc6a3779:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    3691cc6a377f:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    3691cc6a3783:	46 8b 1c 0e                                     	mov    r11d,DWORD PTR [rsi+r9*1]
    3691cc6a3787:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    3691cc6a378c:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    3691cc6a3790:	46 8b 0c 0e                                     	mov    r9d,DWORD PTR [rsi+r9*1]
    3691cc6a3794:	c4 c3 79 16 fc 02                               	vpextrd r12d,xmm7,0x2
    3691cc6a379a:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    3691cc6a379e:	46 8b 24 26                                     	mov    r12d,DWORD PTR [rsi+r12*1]
    3691cc6a37a2:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    3691cc6a37a8:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    3691cc6a37ac:	46 8b 3c 3e                                     	mov    r15d,DWORD PTR [rsi+r15*1]
    3691cc6a37b0:	45 8b d1                                        	mov    r10d,r9d
    3691cc6a37b3:	45 8b cf                                        	mov    r9d,r15d
    3691cc6a37b6:	45 8b fa                                        	mov    r15d,r10d
    3691cc6a37b9:	c4 c3 39 22 f8 01                               	vpinsrd xmm7,xmm8,r8d,0x1
    3691cc6a37bf:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    3691cc6a37c4:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6a37c9:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    3691cc6a37cf:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    3691cc6a37d3:	0f 84 74 00 00 00                               	je     0x3691cc6a384d
    3691cc6a37d9:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    3691cc6a37dd:	0f 85 08 00 00 00                               	jne    0x3691cc6a37eb
    3691cc6a37e3:	4c 8b c1                                        	mov    r8,rcx
    3691cc6a37e6:	e9 0d 00 00 00                                  	jmp    0x3691cc6a37f8
    3691cc6a37eb:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    3691cc6a37f0:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    3691cc6a37f4:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    3691cc6a37f8:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    3691cc6a37fc:	0f 85 08 00 00 00                               	jne    0x3691cc6a380a
    3691cc6a3802:	4c 8b d9                                        	mov    r11,rcx
    3691cc6a3805:	e9 0e 00 00 00                                  	jmp    0x3691cc6a3818
    3691cc6a380a:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    3691cc6a3810:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    3691cc6a3814:	46 8b 1c 1e                                     	mov    r11d,DWORD PTR [rsi+r11*1]
    3691cc6a3818:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    3691cc6a381c:	0f 85 08 00 00 00                               	jne    0x3691cc6a382a
    3691cc6a3822:	4c 8b f9                                        	mov    r15,rcx
    3691cc6a3825:	e9 0e 00 00 00                                  	jmp    0x3691cc6a3838
    3691cc6a382a:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    3691cc6a3830:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    3691cc6a3834:	46 8b 3c 3e                                     	mov    r15d,DWORD PTR [rsi+r15*1]
    3691cc6a3838:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    3691cc6a383c:	0f 85 34 00 00 00                               	jne    0x3691cc6a3876
    3691cc6a3842:	41 8b c0                                        	mov    eax,r8d
    3691cc6a3845:	4c 8b c1                                        	mov    r8,rcx
    3691cc6a3848:	e9 3e 00 00 00                                  	jmp    0x3691cc6a388b
    3691cc6a384d:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    3691cc6a3853:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    3691cc6a3857:	46 8b 1c 06                                     	mov    r11d,DWORD PTR [rsi+r8*1]
    3691cc6a385b:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    3691cc6a3860:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    3691cc6a3864:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    3691cc6a3868:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    3691cc6a386e:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    3691cc6a3872:	46 8b 3c 3e                                     	mov    r15d,DWORD PTR [rsi+r15*1]
    3691cc6a3876:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    3691cc6a387c:	8d 04 82                                        	lea    eax,[rdx+rax*4]
    3691cc6a387f:	8b 04 06                                        	mov    eax,DWORD PTR [rsi+rax*1]
    3691cc6a3882:	44 8b d0                                        	mov    r10d,eax
    3691cc6a3885:	41 8b c0                                        	mov    eax,r8d
    3691cc6a3888:	45 8b c2                                        	mov    r8d,r10d
    3691cc6a388b:	c4 e3 41 22 f7 02                               	vpinsrd xmm6,xmm7,edi,0x2
    3691cc6a3891:	c4 c3 39 22 fc 02                               	vpinsrd xmm7,xmm8,r12d,0x2
    3691cc6a3897:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    3691cc6a389c:	c5 79 6e c0                                     	vmovd  xmm8,eax
    3691cc6a38a0:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6a38a5:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    3691cc6a38ab:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    3691cc6a38b1:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    3691cc6a38b5:	0f 84 6b 00 00 00                               	je     0x3691cc6a3926
    3691cc6a38bb:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    3691cc6a38bf:	0f 85 08 00 00 00                               	jne    0x3691cc6a38cd
    3691cc6a38c5:	48 8b f9                                        	mov    rdi,rcx
    3691cc6a38c8:	e9 0a 00 00 00                                  	jmp    0x3691cc6a38d7
    3691cc6a38cd:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    3691cc6a38d1:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    3691cc6a38d4:	8b 3c 3e                                        	mov    edi,DWORD PTR [rsi+rdi*1]
    3691cc6a38d7:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    3691cc6a38db:	0f 85 08 00 00 00                               	jne    0x3691cc6a38e9
    3691cc6a38e1:	4c 8b d9                                        	mov    r11,rcx
    3691cc6a38e4:	e9 0e 00 00 00                                  	jmp    0x3691cc6a38f7
    3691cc6a38e9:	c4 c3 79 16 c3 01                               	vpextrd r11d,xmm0,0x1
    3691cc6a38ef:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    3691cc6a38f3:	46 8b 1c 1e                                     	mov    r11d,DWORD PTR [rsi+r11*1]
    3691cc6a38f7:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    3691cc6a38fb:	0f 85 08 00 00 00                               	jne    0x3691cc6a3909
    3691cc6a3901:	4c 8b e1                                        	mov    r12,rcx
    3691cc6a3904:	e9 0e 00 00 00                                  	jmp    0x3691cc6a3917
    3691cc6a3909:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    3691cc6a390f:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    3691cc6a3913:	46 8b 24 26                                     	mov    r12d,DWORD PTR [rsi+r12*1]
    3691cc6a3917:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    3691cc6a391b:	0f 85 29 00 00 00                               	jne    0x3691cc6a394a
    3691cc6a3921:	e9 32 00 00 00                                  	jmp    0x3691cc6a3958
    3691cc6a3926:	c4 e3 79 16 c1 01                               	vpextrd ecx,xmm0,0x1
    3691cc6a392c:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    3691cc6a392f:	44 8b 1c 0e                                     	mov    r11d,DWORD PTR [rsi+rcx*1]
    3691cc6a3933:	c5 f9 7e c1                                     	vmovd  ecx,xmm0
    3691cc6a3937:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    3691cc6a393a:	8b 3c 0e                                        	mov    edi,DWORD PTR [rsi+rcx*1]
    3691cc6a393d:	c4 e3 79 16 c1 02                               	vpextrd ecx,xmm0,0x2
    3691cc6a3943:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    3691cc6a3946:	44 8b 24 0e                                     	mov    r12d,DWORD PTR [rsi+rcx*1]
    3691cc6a394a:	c4 e3 79 16 c1 03                               	vpextrd ecx,xmm0,0x3
    3691cc6a3950:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    3691cc6a3953:	8b 14 16                                        	mov    edx,DWORD PTR [rsi+rdx*1]
    3691cc6a3956:	8b ca                                           	mov    ecx,edx
    3691cc6a3958:	c4 e3 49 22 c3 03                               	vpinsrd xmm0,xmm6,ebx,0x3
    3691cc6a395e:	c4 c3 41 22 f1 03                               	vpinsrd xmm6,xmm7,r9d,0x3
    3691cc6a3964:	c5 f9 6e ff                                     	vmovd  xmm7,edi
    3691cc6a3968:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6a396d:	c4 c3 41 22 fb 01                               	vpinsrd xmm7,xmm7,r11d,0x1
    3691cc6a3973:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    3691cc6a3979:	c4 e3 41 22 f9 03                               	vpinsrd xmm7,xmm7,ecx,0x3
    3691cc6a397f:	c4 43 39 22 c0 03                               	vpinsrd xmm8,xmm8,r8d,0x3
    3691cc6a3985:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    3691cc6a3989:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    3691cc6a398e:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    3691cc6a3993:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a3997:	e9 86 00 00 00                                  	jmp    0x3691cc6a3a22
    3691cc6a399c:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    3691cc6a399f:	8d 0c 82                                        	lea    ecx,[rdx+rax*4]
    3691cc6a39a2:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    3691cc6a39a6:	c5 fb 10 04 0e                                  	vmovsd xmm0,QWORD PTR [rsi+rcx*1]
    3691cc6a39ab:	42 8d 0c 9a                                     	lea    ecx,[rdx+r11*4]
    3691cc6a39af:	c5 fb 10 3c 0e                                  	vmovsd xmm7,QWORD PTR [rsi+rcx*1]
    3691cc6a39b4:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    3691cc6a39b8:	42 8d 0c 8a                                     	lea    ecx,[rdx+r9*4]
    3691cc6a39bc:	c5 fb 10 3c 0e                                  	vmovsd xmm7,QWORD PTR [rsi+rcx*1]
    3691cc6a39c1:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    3691cc6a39c4:	c5 7b 10 04 1e                                  	vmovsd xmm8,QWORD PTR [rsi+rbx*1]
    3691cc6a39c9:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    3691cc6a39ce:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    3691cc6a39d3:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    3691cc6a39d8:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    3691cc6a39dd:	c5 f9 7e f3                                     	vmovd  ebx,xmm6
    3691cc6a39e1:	03 da                                           	add    ebx,edx
    3691cc6a39e3:	c5 fb 10 3c 1e                                  	vmovsd xmm7,QWORD PTR [rsi+rbx*1]
    3691cc6a39e8:	c4 e3 79 16 f3 01                               	vpextrd ebx,xmm6,0x1
    3691cc6a39ee:	03 da                                           	add    ebx,edx
    3691cc6a39f0:	c5 7b 10 0c 1e                                  	vmovsd xmm9,QWORD PTR [rsi+rbx*1]
    3691cc6a39f5:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    3691cc6a39fa:	c4 e3 79 16 f3 02                               	vpextrd ebx,xmm6,0x2
    3691cc6a3a00:	03 da                                           	add    ebx,edx
    3691cc6a3a02:	c5 7b 10 0c 1e                                  	vmovsd xmm9,QWORD PTR [rsi+rbx*1]
    3691cc6a3a07:	c4 e3 79 16 f3 03                               	vpextrd ebx,xmm6,0x3
    3691cc6a3a0d:	03 da                                           	add    ebx,edx
    3691cc6a3a0f:	c5 fb 10 34 1e                                  	vmovsd xmm6,QWORD PTR [rsi+rbx*1]
    3691cc6a3a14:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    3691cc6a3a18:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    3691cc6a3a1d:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    3691cc6a3a22:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    3691cc6a3a26:	c5 d0 5c da                                     	vsubps xmm3,xmm5,xmm2
    3691cc6a3a2a:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    3691cc6a3a2e:	c5 d0 5c e1                                     	vsubps xmm4,xmm5,xmm1
    3691cc6a3a32:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    3691cc6a3a37:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3a3c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    3691cc6a3a42:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    3691cc6a3a47:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3a4c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    3691cc6a3a51:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    3691cc6a3a55:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    3691cc6a3a59:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    3691cc6a3a5e:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    3691cc6a3a62:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    3691cc6a3a68:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3a6d:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc6a3a73:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc6a3a78:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3a7d:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc6a3a82:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc6a3a86:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc6a3a8a:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc6a3a8f:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    3691cc6a3a93:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    3691cc6a3a97:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    3691cc6a3a9b:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    3691cc6a3aa0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3aa5:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    3691cc6a3aab:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    3691cc6a3ab0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3ab5:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    3691cc6a3aba:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    3691cc6a3abe:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    3691cc6a3ac2:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    3691cc6a3ac7:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    3691cc6a3acb:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    3691cc6a3ad1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3ad6:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    3691cc6a3adc:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    3691cc6a3ae1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3ae6:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    3691cc6a3aec:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    3691cc6a3af1:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    3691cc6a3af6:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    3691cc6a3afb:	c4 41 70 59 d2                                  	vmulps xmm10,xmm1,xmm10
    3691cc6a3b00:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    3691cc6a3b05:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    3691cc6a3b09:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    3691cc6a3b0d:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    3691cc6a3b17:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6a3b1c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6a3b20:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    3691cc6a3b24:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3b29:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    3691cc6a3b2f:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    3691cc6a3b34:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3b39:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    3691cc6a3b3f:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    3691cc6a3b44:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    3691cc6a3b49:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    3691cc6a3b4e:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    3691cc6a3b53:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    3691cc6a3b57:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3b5c:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    3691cc6a3b62:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    3691cc6a3b67:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3b6c:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    3691cc6a3b72:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    3691cc6a3b77:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    3691cc6a3b7c:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    3691cc6a3b81:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    3691cc6a3b86:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    3691cc6a3b8b:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    3691cc6a3b90:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    3691cc6a3b94:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3b99:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    3691cc6a3b9f:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    3691cc6a3ba4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3ba9:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    3691cc6a3baf:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    3691cc6a3bb4:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    3691cc6a3bb9:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    3691cc6a3bbe:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    3691cc6a3bc3:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    3691cc6a3bc7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3bcc:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    3691cc6a3bd2:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    3691cc6a3bd7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3bdc:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    3691cc6a3be2:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    3691cc6a3be7:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    3691cc6a3bec:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    3691cc6a3bf1:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    3691cc6a3bf6:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    3691cc6a3bfb:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    3691cc6a3c00:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    3691cc6a3c05:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    3691cc6a3c0a:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    3691cc6a3c0e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3c13:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    3691cc6a3c19:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    3691cc6a3c1e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3c23:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    3691cc6a3c29:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    3691cc6a3c2e:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    3691cc6a3c33:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    3691cc6a3c38:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    3691cc6a3c3d:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    3691cc6a3c43:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    3691cc6a3c47:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3c4c:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    3691cc6a3c52:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    3691cc6a3c57:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3c5c:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    3691cc6a3c62:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    3691cc6a3c67:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    3691cc6a3c6c:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    3691cc6a3c71:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    3691cc6a3c76:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    3691cc6a3c7b:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    3691cc6a3c80:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    3691cc6a3c85:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    3691cc6a3c89:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3c8e:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    3691cc6a3c94:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    3691cc6a3c99:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3c9e:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    3691cc6a3ca4:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    3691cc6a3ca9:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    3691cc6a3cae:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    3691cc6a3cb3:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    3691cc6a3cb8:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    3691cc6a3cbe:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    3691cc6a3cc2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3cc7:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    3691cc6a3ccd:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    3691cc6a3cd2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3cd7:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    3691cc6a3cdd:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    3691cc6a3ce2:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    3691cc6a3ce7:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    3691cc6a3cec:	c4 41 70 59 ed                                  	vmulps xmm13,xmm1,xmm13
    3691cc6a3cf1:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    3691cc6a3cf6:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    3691cc6a3cfb:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    3691cc6a3d00:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    3691cc6a3d05:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    3691cc6a3d09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3d0e:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc6a3d14:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc6a3d19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3d1e:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc6a3d23:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc6a3d27:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc6a3d2b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc6a3d30:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    3691cc6a3d34:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    3691cc6a3d3a:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    3691cc6a3d3e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3d43:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6a3d49:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6a3d4e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3d53:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6a3d59:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6a3d5e:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6a3d63:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6a3d68:	c4 41 70 59 c0                                  	vmulps xmm8,xmm1,xmm8
    3691cc6a3d6d:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    3691cc6a3d72:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    3691cc6a3d76:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    3691cc6a3d7b:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    3691cc6a3d7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3d84:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc6a3d8a:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc6a3d8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3d94:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc6a3d99:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc6a3d9d:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc6a3da1:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc6a3da6:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    3691cc6a3daa:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    3691cc6a3db0:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    3691cc6a3db4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3db9:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc6a3dbf:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc6a3dc4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3dc9:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc6a3dce:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc6a3dd2:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc6a3dd6:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc6a3ddb:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    3691cc6a3ddf:	c5 e0 58 c9                                     	vaddps xmm1,xmm3,xmm1
    3691cc6a3de3:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    3691cc6a3de7:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    3691cc6a3deb:	48 8b ce                                        	mov    rcx,rsi
    3691cc6a3dee:	e9 94 01 00 00                                  	jmp    0x3691cc6a3f87
    3691cc6a3df3:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    3691cc6a3df7:	0f 84 77 00 00 00                               	je     0x3691cc6a3e74
    3691cc6a3dfd:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    3691cc6a3e01:	0f 85 0f 00 00 00                               	jne    0x3691cc6a3e16
    3691cc6a3e07:	48 8b f9                                        	mov    rdi,rcx
    3691cc6a3e0a:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    3691cc6a3e0e:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    3691cc6a3e11:	e9 0d 00 00 00                                  	jmp    0x3691cc6a3e23
    3691cc6a3e16:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    3691cc6a3e19:	8d 3c 82                                        	lea    edi,[rdx+rax*4]
    3691cc6a3e1c:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    3691cc6a3e20:	8b 3c 3e                                        	mov    edi,DWORD PTR [rsi+rdi*1]
    3691cc6a3e23:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    3691cc6a3e27:	0f 85 08 00 00 00                               	jne    0x3691cc6a3e35
    3691cc6a3e2d:	4c 8b c1                                        	mov    r8,rcx
    3691cc6a3e30:	e9 08 00 00 00                                  	jmp    0x3691cc6a3e3d
    3691cc6a3e35:	46 8d 04 9a                                     	lea    r8d,[rdx+r11*4]
    3691cc6a3e39:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    3691cc6a3e3d:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    3691cc6a3e41:	0f 85 08 00 00 00                               	jne    0x3691cc6a3e4f
    3691cc6a3e47:	4c 8b c9                                        	mov    r9,rcx
    3691cc6a3e4a:	e9 08 00 00 00                                  	jmp    0x3691cc6a3e57
    3691cc6a3e4f:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    3691cc6a3e53:	46 8b 0c 0e                                     	mov    r9d,DWORD PTR [rsi+r9*1]
    3691cc6a3e57:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    3691cc6a3e5b:	0f 85 0b 00 00 00                               	jne    0x3691cc6a3e6c
    3691cc6a3e61:	48 8b d9                                        	mov    rbx,rcx
    3691cc6a3e64:	48 8b ce                                        	mov    rcx,rsi
    3691cc6a3e67:	e9 2d 00 00 00                                  	jmp    0x3691cc6a3e99
    3691cc6a3e6c:	48 8b ce                                        	mov    rcx,rsi
    3691cc6a3e6f:	e9 1d 00 00 00                                  	jmp    0x3691cc6a3e91
    3691cc6a3e74:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    3691cc6a3e77:	42 8d 34 8a                                     	lea    esi,[rdx+r9*4]
    3691cc6a3e7b:	48 8b 4d e8                                     	mov    rcx,QWORD PTR [rbp-0x18]
    3691cc6a3e7f:	44 8b 0c 31                                     	mov    r9d,DWORD PTR [rcx+rsi*1]
    3691cc6a3e83:	42 8d 34 9a                                     	lea    esi,[rdx+r11*4]
    3691cc6a3e87:	44 8b 04 31                                     	mov    r8d,DWORD PTR [rcx+rsi*1]
    3691cc6a3e8b:	8d 34 82                                        	lea    esi,[rdx+rax*4]
    3691cc6a3e8e:	8b 3c 31                                        	mov    edi,DWORD PTR [rcx+rsi*1]
    3691cc6a3e91:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    3691cc6a3e94:	8b 34 19                                        	mov    esi,DWORD PTR [rcx+rbx*1]
    3691cc6a3e97:	8b de                                           	mov    ebx,esi
    3691cc6a3e99:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    3691cc6a3e9d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6a3ea2:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    3691cc6a3ea8:	c4 c3 79 22 c1 02                               	vpinsrd xmm0,xmm0,r9d,0x2
    3691cc6a3eae:	c4 e3 79 22 c3 03                               	vpinsrd xmm0,xmm0,ebx,0x3
    3691cc6a3eb4:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    3691cc6a3eb9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3ebe:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc6a3ec4:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc6a3ec9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3ece:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc6a3ed3:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc6a3ed7:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc6a3edb:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc6a3ee0:	4c 8b 15 28 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc28]        # 0x3691cc6a3b0f
    3691cc6a3ee7:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc6a3eec:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc6a3ef0:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    3691cc6a3ef4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3ef9:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc6a3eff:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc6a3f04:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3f09:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc6a3f0e:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc6a3f12:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc6a3f16:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc6a3f1b:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    3691cc6a3f20:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    3691cc6a3f24:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3f29:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc6a3f2f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc6a3f34:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3f39:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc6a3f3e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc6a3f42:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc6a3f46:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc6a3f4b:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    3691cc6a3f50:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    3691cc6a3f54:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6a3f59:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc6a3f5f:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc6a3f64:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6a3f69:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc6a3f6e:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc6a3f72:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc6a3f76:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc6a3f7b:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    3691cc6a3f7f:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    3691cc6a3f83:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    3691cc6a3f87:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    3691cc6a3f91:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6a3f96:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6a3f9a:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    3691cc6a3f9e:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    3691cc6a3fa1:	83 e2 01                                        	and    edx,0x1
    3691cc6a3fa4:	f7 da                                           	neg    edx
    3691cc6a3fa6:	c5 f9 6e da                                     	vmovd  xmm3,edx
    3691cc6a3faa:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    3691cc6a3faf:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    3691cc6a3fb2:	c1 e2 1e                                        	shl    edx,0x1e
    3691cc6a3fb5:	c1 fa 1f                                        	sar    edx,0x1f
    3691cc6a3fb8:	c4 e3 61 22 da 01                               	vpinsrd xmm3,xmm3,edx,0x1
    3691cc6a3fbe:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    3691cc6a3fc1:	c1 e2 1d                                        	shl    edx,0x1d
    3691cc6a3fc4:	c1 fa 1f                                        	sar    edx,0x1f
    3691cc6a3fc7:	c4 e3 61 22 da 02                               	vpinsrd xmm3,xmm3,edx,0x2
    3691cc6a3fcd:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    3691cc6a3fd0:	c1 e2 1c                                        	shl    edx,0x1c
    3691cc6a3fd3:	c1 fa 1f                                        	sar    edx,0x1f
    3691cc6a3fd6:	c4 e3 61 22 da 03                               	vpinsrd xmm3,xmm3,edx,0x3
    3691cc6a3fdc:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    3691cc6a3fe0:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc6a3fe3:	c5 fa 7f 54 19 30                               	vmovdqu XMMWORD PTR [rcx+rbx*1+0x30],xmm2
    3691cc6a3fe9:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    3691cc6a3fed:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    3691cc6a3ff1:	c5 fa 7f 54 19 20                               	vmovdqu XMMWORD PTR [rcx+rbx*1+0x20],xmm2
    3691cc6a3ff7:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    3691cc6a3ffb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    3691cc6a3fff:	c5 fa 7f 44 19 10                               	vmovdqu XMMWORD PTR [rcx+rbx*1+0x10],xmm0
    3691cc6a4005:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    3691cc6a4009:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    3691cc6a400d:	c5 fa 7f 04 19                                  	vmovdqu XMMWORD PTR [rcx+rbx*1],xmm0
    3691cc6a4012:	b8 01 00 00 00                                  	mov    eax,0x1
    3691cc6a4017:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a401a:	5d                                              	pop    rbp
    3691cc6a401b:	c3                                              	ret
    3691cc6a401c:	33 c0                                           	xor    eax,eax
    3691cc6a401e:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a4021:	5d                                              	pop    rbp
    3691cc6a4022:	c3                                              	ret
    3691cc6a4023:	33 c0                                           	xor    eax,eax
    3691cc6a4025:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a4028:	5d                                              	pop    rbp
    3691cc6a4029:	c3                                              	ret
    3691cc6a402a:	90                                              	nop
    3691cc6a402b:	90                                              	nop
    3691cc6a402c:	08 00                                           	or     BYTE PTR [rax],al
    3691cc6a402e:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6a4030:	08 00                                           	or     BYTE PTR [rax],al
	...
