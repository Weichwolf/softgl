In archive build/diagnostics/off-pixel-bound/native-full/libsoftgl/libsoftgl.a:

state.c.o:     file format elf64-x86-64


Disassembly of section .text:

matrix.c.o:     file format elf64-x86-64


Disassembly of section .text:

buffers.c.o:     file format elf64-x86-64


Disassembly of section .text:

texture.c.o:     file format elf64-x86-64


Disassembly of section .text:

pipeline.c.o:     file format elf64-x86-64


Disassembly of section .text:

clip.c.o:     file format elf64-x86-64


Disassembly of section .text:

Disassembly of section .text.unlikely:

fragment_write.c.o:     file format elf64-x86-64


Disassembly of section .text:

multisample.c.o:     file format elf64-x86-64


Disassembly of section .text:

fragment_combine.c.o:     file format elf64-x86-64


Disassembly of section .text:

rasterizer.c.o:     file format elf64-x86-64


Disassembly of section .text:

000000000002e0b0 <sg_raster_triangle_tile_prepared>:
   2e0b0:	41 57                	push   %r15
   2e0b2:	41 56                	push   %r14
   2e0b4:	41 55                	push   %r13
   2e0b6:	41 54                	push   %r12
   2e0b8:	55                   	push   %rbp
   2e0b9:	53                   	push   %rbx
   2e0ba:	48 81 ec a8 04 00 00 	sub    $0x4a8,%rsp
   2e0c1:	44 8b 6f 20          	mov    0x20(%rdi),%r13d
   2e0c5:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
   2e0cc:	00 
   2e0cd:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   2e0d2:	48 89 b4 24 90 00 00 	mov    %rsi,0x90(%rsp)
   2e0d9:	00 
   2e0da:	48 89 94 24 98 00 00 	mov    %rdx,0x98(%rsp)
   2e0e1:	00 
   2e0e2:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
   2e0e9:	00 
   2e0ea:	44 89 8c 24 0c 01 00 	mov    %r9d,0x10c(%rsp)
   2e0f1:	00 
   2e0f2:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
   2e0f9:	00 
   2e0fa:	45 85 ed             	test   %r13d,%r13d
   2e0fd:	75 1d                	jne    2e11c <sg_raster_triangle_tile_prepared+0x6c>
   2e0ff:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2e106 <sg_raster_triangle_tile_prepared+0x56>
   2e106:	64 48 8b 00          	mov    %fs:(%rax),%rax
   2e10a:	48 85 c0             	test   %rax,%rax
   2e10d:	74 0d                	je     2e11c <sg_raster_triangle_tile_prepared+0x6c>
   2e10f:	44 8b 50 2c          	mov    0x2c(%rax),%r10d
   2e113:	45 85 d2             	test   %r10d,%r10d
   2e116:	0f 85 2b 0a 00 00    	jne    2eb47 <sg_raster_triangle_tile_prepared+0xa97>
   2e11c:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2e123:	00 
   2e124:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 2e12c <sg_raster_triangle_tile_prepared+0x7c>
   2e12b:	00 
   2e12c:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 2e134 <sg_raster_triangle_tile_prepared+0x84>
   2e133:	00 
   2e134:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 2e13c <sg_raster_triangle_tile_prepared+0x8c>
   2e13b:	00 
   2e13c:	f3 0f 10 48 10       	movss  0x10(%rax),%xmm1
   2e141:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2e149 <sg_raster_triangle_tile_prepared+0x99>
   2e148:	00 
   2e149:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
   2e14d:	f3 0f 2c f8          	cvttss2si %xmm0,%edi
   2e151:	f3 0f 10 40 14       	movss  0x14(%rax),%xmm0
   2e156:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2e15d:	00 
   2e15e:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2e162:	f3 0f 10 60 10       	movss  0x10(%rax),%xmm4
   2e167:	f3 0f 10 70 14       	movss  0x14(%rax),%xmm6
   2e16c:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2e173:	00 
   2e174:	f3 0f 2c ca          	cvttss2si %xmm2,%ecx
   2e178:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 2e180 <sg_raster_triangle_tile_prepared+0xd0>
   2e17f:	00 
   2e180:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
   2e184:	f3 44 0f 2c da       	cvttss2si %xmm2,%r11d
   2e189:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 2e191 <sg_raster_triangle_tile_prepared+0xe1>
   2e190:	00 
   2e191:	f3 0f 59 d6          	mulss  %xmm6,%xmm2
   2e195:	f3 44 0f 2c d2       	cvttss2si %xmm2,%r10d
   2e19a:	f3 0f 10 50 10       	movss  0x10(%rax),%xmm2
   2e19f:	f3 0f 59 da          	mulss  %xmm2,%xmm3
   2e1a3:	f3 44 0f 2c cb       	cvttss2si %xmm3,%r9d
   2e1a8:	f3 0f 10 58 14       	movss  0x14(%rax),%xmm3
   2e1ad:	44 89 d8             	mov    %r11d,%eax
   2e1b0:	29 f8                	sub    %edi,%eax
   2e1b2:	f3 0f 59 eb          	mulss  %xmm3,%xmm5
   2e1b6:	48 63 d8             	movslq %eax,%rbx
   2e1b9:	89 44 24 18          	mov    %eax,0x18(%rsp)
   2e1bd:	44 89 d0             	mov    %r10d,%eax
   2e1c0:	29 c8                	sub    %ecx,%eax
   2e1c2:	48 89 1c 24          	mov    %rbx,(%rsp)
   2e1c6:	4c 63 f8             	movslq %eax,%r15
   2e1c9:	89 44 24 38          	mov    %eax,0x38(%rsp)
   2e1cd:	44 89 c8             	mov    %r9d,%eax
   2e1d0:	29 f8                	sub    %edi,%eax
   2e1d2:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
   2e1d7:	48 98                	cltq
   2e1d9:	f3 0f 2c f5          	cvttss2si %xmm5,%esi
   2e1dd:	49 0f af c7          	imul   %r15,%rax
   2e1e1:	89 f2                	mov    %esi,%edx
   2e1e3:	29 ca                	sub    %ecx,%edx
   2e1e5:	48 63 d2             	movslq %edx,%rdx
   2e1e8:	48 0f af d3          	imul   %rbx,%rdx
   2e1ec:	48 29 c2             	sub    %rax,%rdx
   2e1ef:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   2e1f4:	48 89 d0             	mov    %rdx,%rax
   2e1f7:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   2e1fc:	44 8b 72 74          	mov    0x74(%rdx),%r14d
   2e200:	48 85 c0             	test   %rax,%rax
   2e203:	0f 8e e7 08 00 00    	jle    2eaf0 <sg_raster_triangle_tile_prepared+0xa40>
   2e209:	45 39 d9             	cmp    %r11d,%r9d
   2e20c:	44 89 db             	mov    %r11d,%ebx
   2e20f:	45 89 d4             	mov    %r10d,%r12d
   2e212:	44 89 d8             	mov    %r11d,%eax
   2e215:	41 0f 4e d9          	cmovle %r9d,%ebx
   2e219:	39 fb                	cmp    %edi,%ebx
   2e21b:	0f 4f df             	cmovg  %edi,%ebx
   2e21e:	44 39 d6             	cmp    %r10d,%esi
   2e221:	44 0f 4e e6          	cmovle %esi,%r12d
   2e225:	41 89 df             	mov    %ebx,%r15d
   2e228:	8d ab 01 ff ff ff    	lea    -0xff(%rbx),%ebp
   2e22e:	41 39 cc             	cmp    %ecx,%r12d
   2e231:	44 0f 4f e1          	cmovg  %ecx,%r12d
   2e235:	45 39 d9             	cmp    %r11d,%r9d
   2e238:	41 0f 4d c1          	cmovge %r9d,%eax
   2e23c:	39 f8                	cmp    %edi,%eax
   2e23e:	0f 4c c7             	cmovl  %edi,%eax
   2e241:	c1 f8 08             	sar    $0x8,%eax
   2e244:	44 39 d6             	cmp    %r10d,%esi
   2e247:	8d 50 01             	lea    0x1(%rax),%edx
   2e24a:	44 89 d0             	mov    %r10d,%eax
   2e24d:	0f 4d c6             	cmovge %esi,%eax
   2e250:	39 c8                	cmp    %ecx,%eax
   2e252:	0f 4c c1             	cmovl  %ecx,%eax
   2e255:	41 c1 ff 08          	sar    $0x8,%r15d
   2e259:	c1 fd 08             	sar    $0x8,%ebp
   2e25c:	c1 f8 08             	sar    $0x8,%eax
   2e25f:	83 c0 01             	add    $0x1,%eax
   2e262:	85 db                	test   %ebx,%ebx
   2e264:	41 8d 9c 24 01 ff ff 	lea    -0xff(%r12),%ebx
   2e26b:	ff 
   2e26c:	41 0f 49 ef          	cmovns %r15d,%ebp
   2e270:	45 89 e7             	mov    %r12d,%r15d
   2e273:	c1 fb 08             	sar    $0x8,%ebx
   2e276:	41 c1 ff 08          	sar    $0x8,%r15d
   2e27a:	45 85 e4             	test   %r12d,%r12d
   2e27d:	41 0f 49 df          	cmovns %r15d,%ebx
   2e281:	44 39 c5             	cmp    %r8d,%ebp
   2e284:	44 0f 4d c5          	cmovge %ebp,%r8d
   2e288:	44 89 84 24 f8 00 00 	mov    %r8d,0xf8(%rsp)
   2e28f:	00 
   2e290:	44 89 c5             	mov    %r8d,%ebp
   2e293:	45 31 c0             	xor    %r8d,%r8d
   2e296:	85 db                	test   %ebx,%ebx
   2e298:	44 0f 49 c3          	cmovns %ebx,%r8d
   2e29c:	8b 9c 24 0c 01 00 00 	mov    0x10c(%rsp),%ebx
   2e2a3:	39 d3                	cmp    %edx,%ebx
   2e2a5:	44 89 84 24 c0 00 00 	mov    %r8d,0xc0(%rsp)
   2e2ac:	00 
   2e2ad:	0f 4e d3             	cmovle %ebx,%edx
   2e2b0:	89 54 24 14          	mov    %edx,0x14(%rsp)
   2e2b4:	89 d3                	mov    %edx,%ebx
   2e2b6:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   2e2bb:	8b 52 04             	mov    0x4(%rdx),%edx
   2e2be:	39 d0                	cmp    %edx,%eax
   2e2c0:	0f 4e d0             	cmovle %eax,%edx
   2e2c3:	41 89 d7             	mov    %edx,%r15d
   2e2c6:	45 85 f6             	test   %r14d,%r14d
   2e2c9:	0f 85 a1 07 00 00    	jne    2ea70 <sg_raster_triangle_tile_prepared+0x9c0>
   2e2cf:	39 dd                	cmp    %ebx,%ebp
   2e2d1:	0f 8d 1e 08 00 00    	jge    2eaf5 <sg_raster_triangle_tile_prepared+0xa45>
   2e2d7:	41 39 d0             	cmp    %edx,%r8d
   2e2da:	0f 8d 15 08 00 00    	jge    2eaf5 <sg_raster_triangle_tile_prepared+0xa45>
   2e2e0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2e2e5:	66 0f ef ff          	pxor   %xmm7,%xmm7
   2e2e9:	f3 0f 11 bc 24 f4 00 	movss  %xmm7,0xf4(%rsp)
   2e2f0:	00 00 
   2e2f2:	8b 90 fc 00 00 00    	mov    0xfc(%rax),%edx
   2e2f8:	85 d2                	test   %edx,%edx
   2e2fa:	0f 84 e0 00 00 00    	je     2e3e0 <sg_raster_triangle_tile_prepared+0x330>
   2e300:	f3 0f 10 a8 f4 00 00 	movss  0xf4(%rax),%xmm5
   2e307:	00 
   2e308:	0f 2f ef             	comiss %xmm7,%xmm5
   2e30b:	0f 84 0e 08 00 00    	je     2eb1f <sg_raster_triangle_tile_prepared+0xa6f>
   2e311:	f3 0f 5c e1          	subss  %xmm1,%xmm4
   2e315:	f3 0f 5c ca          	subss  %xmm2,%xmm1
   2e319:	0f 28 d6             	movaps %xmm6,%xmm2
   2e31c:	f3 0f 5c d8          	subss  %xmm0,%xmm3
   2e320:	f3 0f 5c d0          	subss  %xmm0,%xmm2
   2e324:	0f 28 fc             	movaps %xmm4,%xmm7
   2e327:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
   2e32b:	f3 0f 59 fb          	mulss  %xmm3,%xmm7
   2e32f:	f3 0f 58 d7          	addss  %xmm7,%xmm2
   2e333:	f3 0f 11 94 24 f4 00 	movss  %xmm2,0xf4(%rsp)
   2e33a:	00 00 
   2e33c:	44 0f 28 fa          	movaps %xmm2,%xmm15
   2e340:	66 0f ef d2          	pxor   %xmm2,%xmm2
   2e344:	44 0f 2f fa          	comiss %xmm2,%xmm15
   2e348:	0f 84 92 00 00 00    	je     2e3e0 <sg_raster_triangle_tile_prepared+0x330>
   2e34e:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2e355:	00 
   2e356:	f3 0f 5c c6          	subss  %xmm6,%xmm0
   2e35a:	f3 44 0f 10 40 18    	movss  0x18(%rax),%xmm8
   2e360:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2e367:	00 
   2e368:	f3 0f 10 50 18       	movss  0x18(%rax),%xmm2
   2e36d:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2e374:	00 
   2e375:	f3 0f 10 78 18       	movss  0x18(%rax),%xmm7
   2e37a:	f3 41 0f 5c d0       	subss  %xmm8,%xmm2
   2e37f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2e384:	f3 41 0f 5c f8       	subss  %xmm8,%xmm7
   2e389:	f3 0f 59 da          	mulss  %xmm2,%xmm3
   2e38d:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
   2e391:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2e395:	f3 0f 59 e7          	mulss  %xmm7,%xmm4
   2e399:	f3 0f 58 c3          	addss  %xmm3,%xmm0
   2e39d:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 2e3a5 <sg_raster_triangle_tile_prepared+0x2f5>
   2e3a4:	00 
   2e3a5:	f3 0f 58 e1          	addss  %xmm1,%xmm4
   2e3a9:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 2e3b1 <sg_raster_triangle_tile_prepared+0x301>
   2e3b0:	00 
   2e3b1:	f3 0f 59 88 f8 00 00 	mulss  0xf8(%rax),%xmm1
   2e3b8:	00 
   2e3b9:	f3 41 0f 5e c7       	divss  %xmm15,%xmm0
   2e3be:	f3 41 0f 5e e7       	divss  %xmm15,%xmm4
   2e3c3:	0f 54 c3             	andps  %xmm3,%xmm0
   2e3c6:	0f 54 e3             	andps  %xmm3,%xmm4
   2e3c9:	f3 0f 5f c4          	maxss  %xmm4,%xmm0
   2e3cd:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2e3d1:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   2e3d5:	f3 0f 11 84 24 f4 00 	movss  %xmm0,0xf4(%rsp)
   2e3dc:	00 00 
   2e3de:	66 90                	xchg   %ax,%ax
   2e3e0:	44 89 cd             	mov    %r9d,%ebp
   2e3e3:	41 89 f0             	mov    %esi,%r8d
   2e3e6:	41 89 cc             	mov    %ecx,%r12d
   2e3e9:	44 29 dd             	sub    %r11d,%ebp
   2e3ec:	89 e8                	mov    %ebp,%eax
   2e3ee:	c1 e8 1f             	shr    $0x1f,%eax
   2e3f1:	45 29 d0             	sub    %r10d,%r8d
   2e3f4:	0f 94 c3             	sete   %bl
   2e3f7:	44 89 c2             	mov    %r8d,%edx
   2e3fa:	c1 ea 1f             	shr    $0x1f,%edx
   2e3fd:	21 d8                	and    %ebx,%eax
   2e3ff:	89 fb                	mov    %edi,%ebx
   2e401:	09 d0                	or     %edx,%eax
   2e403:	44 29 cb             	sub    %r9d,%ebx
   2e406:	83 e8 01             	sub    $0x1,%eax
   2e409:	89 84 24 68 02 00 00 	mov    %eax,0x268(%rsp)
   2e410:	89 d8                	mov    %ebx,%eax
   2e412:	c1 e8 1f             	shr    $0x1f,%eax
   2e415:	41 29 f4             	sub    %esi,%r12d
   2e418:	41 0f 94 c6          	sete   %r14b
   2e41c:	44 89 e2             	mov    %r12d,%edx
   2e41f:	c1 ea 1f             	shr    $0x1f,%edx
   2e422:	44 21 f0             	and    %r14d,%eax
   2e425:	09 d0                	or     %edx,%eax
   2e427:	8b 54 24 38          	mov    0x38(%rsp),%edx
   2e42b:	83 e8 01             	sub    $0x1,%eax
   2e42e:	89 84 24 34 01 00 00 	mov    %eax,0x134(%rsp)
   2e435:	8b 44 24 18          	mov    0x18(%rsp),%eax
   2e439:	c1 e8 1f             	shr    $0x1f,%eax
   2e43c:	85 d2                	test   %edx,%edx
   2e43e:	41 0f 94 c6          	sete   %r14b
   2e442:	c1 ea 1f             	shr    $0x1f,%edx
   2e445:	44 21 f0             	and    %r14d,%eax
   2e448:	09 d0                	or     %edx,%eax
   2e44a:	83 e8 01             	sub    $0x1,%eax
   2e44d:	89 84 24 30 01 00 00 	mov    %eax,0x130(%rsp)
   2e454:	45 85 ed             	test   %r13d,%r13d
   2e457:	0f 85 a1 3e 00 00    	jne    322fe <sg_raster_triangle_tile_prepared+0x424e>
   2e45d:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   2e464:	00 00 00 00 00 
   2e469:	4d 63 c0             	movslq %r8d,%r8
   2e46c:	4c 89 c0             	mov    %r8,%rax
   2e46f:	48 f7 d8             	neg    %rax
   2e472:	48 c1 e0 08          	shl    $0x8,%rax
   2e476:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
   2e47d:	00 
   2e47e:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
   2e483:	0f 88 80 06 00 00    	js     2eb09 <sg_raster_triangle_tile_prepared+0xa59>
   2e489:	48 63 ed             	movslq %ebp,%rbp
   2e48c:	48 89 e8             	mov    %rbp,%rax
   2e48f:	48 c1 e0 08          	shl    $0x8,%rax
   2e493:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   2e498:	0f 88 5e 06 00 00    	js     2eafc <sg_raster_triangle_tile_prepared+0xa4c>
   2e49e:	48 01 44 24 40       	add    %rax,0x40(%rsp)
   2e4a3:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   2e4aa:	00 00 00 00 00 
   2e4af:	4d 63 ec             	movslq %r12d,%r13
   2e4b2:	4c 89 e8             	mov    %r13,%rax
   2e4b5:	48 f7 d8             	neg    %rax
   2e4b8:	48 c1 e0 08          	shl    $0x8,%rax
   2e4bc:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
   2e4c3:	00 
   2e4c4:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   2e4c9:	79 11                	jns    2e4dc <sg_raster_triangle_tile_prepared+0x42c>
   2e4cb:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   2e4d2:	00 
   2e4d3:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
   2e4da:	00 00 
   2e4dc:	48 63 db             	movslq %ebx,%rbx
   2e4df:	48 89 d8             	mov    %rbx,%rax
   2e4e2:	48 c1 e0 08          	shl    $0x8,%rax
   2e4e6:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   2e4eb:	0f 88 de 54 00 00    	js     339cf <sg_raster_triangle_tile_prepared+0x591f>
   2e4f1:	48 01 44 24 78       	add    %rax,0x78(%rsp)
   2e4f6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
   2e4fb:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
   2e502:	00 00 00 00 00 
   2e507:	48 f7 d8             	neg    %rax
   2e50a:	48 c1 e0 08          	shl    $0x8,%rax
   2e50e:	48 89 84 24 e8 00 00 	mov    %rax,0xe8(%rsp)
   2e515:	00 
   2e516:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
   2e51d:	00 
   2e51e:	79 14                	jns    2e534 <sg_raster_triangle_tile_prepared+0x484>
   2e520:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   2e527:	00 
   2e528:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   2e52f:	00 00 00 00 00 
   2e534:	48 8b 04 24          	mov    (%rsp),%rax
   2e538:	48 c1 e0 08          	shl    $0x8,%rax
   2e53c:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   2e543:	00 
   2e544:	0f 88 92 54 00 00    	js     339dc <sg_raster_triangle_tile_prepared+0x592c>
   2e54a:	48 01 84 24 a8 00 00 	add    %rax,0xa8(%rsp)
   2e551:	00 
   2e552:	48 8b 94 24 e0 00 00 	mov    0xe0(%rsp),%rdx
   2e559:	00 
   2e55a:	8b 82 68 01 00 00    	mov    0x168(%rdx),%eax
   2e560:	89 84 24 2c 01 00 00 	mov    %eax,0x12c(%rsp)
   2e567:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2e56c:	44 8b b0 c0 00 00 00 	mov    0xc0(%rax),%r14d
   2e573:	45 85 f6             	test   %r14d,%r14d
   2e576:	0f 85 d5 3a 00 00    	jne    32051 <sg_raster_triangle_tile_prepared+0x3fa1>
   2e57c:	44 8b a0 50 05 00 00 	mov    0x550(%rax),%r12d
   2e583:	45 85 e4             	test   %r12d,%r12d
   2e586:	0f 85 c5 3a 00 00    	jne    32051 <sg_raster_triangle_tile_prepared+0x3fa1>
   2e58c:	44 8b b0 c0 3d 00 00 	mov    0x3dc0(%rax),%r14d
   2e593:	45 85 f6             	test   %r14d,%r14d
   2e596:	0f 85 a4 77 00 00    	jne    35d40 <sg_raster_triangle_tile_prepared+0x7c90>
   2e59c:	44 8b a0 a8 37 00 00 	mov    0x37a8(%rax),%r12d
   2e5a3:	c7 84 24 fc 00 00 00 	movl   $0x1,0xfc(%rsp)
   2e5aa:	01 00 00 00 
   2e5ae:	45 85 e4             	test   %r12d,%r12d
   2e5b1:	75 38                	jne    2e5eb <sg_raster_triangle_tile_prepared+0x53b>
   2e5b3:	8b 80 ac 37 00 00    	mov    0x37ac(%rax),%eax
   2e5b9:	85 c0                	test   %eax,%eax
   2e5bb:	75 2e                	jne    2e5eb <sg_raster_triangle_tile_prepared+0x53b>
   2e5bd:	8b 82 60 01 00 00    	mov    0x160(%rdx),%eax
   2e5c3:	89 84 24 fc 00 00 00 	mov    %eax,0xfc(%rsp)
   2e5ca:	85 c0                	test   %eax,%eax
   2e5cc:	74 1d                	je     2e5eb <sg_raster_triangle_tile_prepared+0x53b>
   2e5ce:	8b 82 64 01 00 00    	mov    0x164(%rdx),%eax
   2e5d4:	89 44 24 18          	mov    %eax,0x18(%rsp)
   2e5d8:	83 e8 01             	sub    $0x1,%eax
   2e5db:	83 f8 01             	cmp    $0x1,%eax
   2e5de:	0f 97 c0             	seta   %al
   2e5e1:	0f b6 c0             	movzbl %al,%eax
   2e5e4:	89 84 24 fc 00 00 00 	mov    %eax,0xfc(%rsp)
   2e5eb:	8b 84 24 2c 01 00 00 	mov    0x12c(%rsp),%eax
   2e5f2:	85 c0                	test   %eax,%eax
   2e5f4:	74 1a                	je     2e610 <sg_raster_triangle_tile_prepared+0x560>
   2e5f6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2e5fb:	8b 80 08 01 00 00    	mov    0x108(%rax),%eax
   2e601:	85 c0                	test   %eax,%eax
   2e603:	0f 94 c0             	sete   %al
   2e606:	0f b6 c0             	movzbl %al,%eax
   2e609:	89 84 24 2c 01 00 00 	mov    %eax,0x12c(%rsp)
   2e610:	44 8b b4 24 c0 00 00 	mov    0xc0(%rsp),%r14d
   2e617:	00 
   2e618:	45 39 fe             	cmp    %r15d,%r14d
   2e61b:	0f 8d af 04 00 00    	jge    2ead0 <sg_raster_triangle_tile_prepared+0xa20>
   2e621:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
   2e628:	44 89 f2             	mov    %r14d,%edx
   2e62b:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2e62f:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 2e637 <sg_raster_triangle_tile_prepared+0x587>
   2e636:	00 
   2e637:	c1 e2 08             	shl    $0x8,%edx
   2e63a:	f3 48 0f 2a 44 24 28 	cvtsi2ssq 0x28(%rsp),%xmm0
   2e641:	83 ea 80             	sub    $0xffffff80,%edx
   2e644:	c1 e0 08             	shl    $0x8,%eax
   2e647:	83 e8 80             	sub    $0xffffff80,%eax
   2e64a:	41 89 d4             	mov    %edx,%r12d
   2e64d:	45 29 d4             	sub    %r10d,%r12d
   2e650:	41 89 c2             	mov    %eax,%r10d
   2e653:	f3 0f 5e e0          	divss  %xmm0,%xmm4
   2e657:	45 29 da             	sub    %r11d,%r10d
   2e65a:	4d 63 e4             	movslq %r12d,%r12
   2e65d:	4c 0f af e5          	imul   %rbp,%r12
   2e661:	4d 63 d2             	movslq %r10d,%r10
   2e664:	48 c1 e5 09          	shl    $0x9,%rbp
   2e668:	4d 0f af d0          	imul   %r8,%r10
   2e66c:	48 89 ac 24 38 01 00 	mov    %rbp,0x138(%rsp)
   2e673:	00 
   2e674:	4d 89 e3             	mov    %r12,%r11
   2e677:	4d 29 d3             	sub    %r10,%r11
   2e67a:	41 89 d2             	mov    %edx,%r10d
   2e67d:	29 ca                	sub    %ecx,%edx
   2e67f:	41 29 f2             	sub    %esi,%r10d
   2e682:	89 c6                	mov    %eax,%esi
   2e684:	48 63 d2             	movslq %edx,%rdx
   2e687:	29 f8                	sub    %edi,%eax
   2e689:	44 29 ce             	sub    %r9d,%esi
   2e68c:	4d 63 d2             	movslq %r10d,%r10
   2e68f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
   2e694:	48 98                	cltq
   2e696:	4c 0f af d3          	imul   %rbx,%r10
   2e69a:	48 63 f6             	movslq %esi,%rsi
   2e69d:	48 c1 e3 09          	shl    $0x9,%rbx
   2e6a1:	49 0f af f5          	imul   %r13,%rsi
   2e6a5:	48 89 9c 24 40 01 00 	mov    %rbx,0x140(%rsp)
   2e6ac:	00 
   2e6ad:	48 0f af c7          	imul   %rdi,%rax
   2e6b1:	4d 89 d1             	mov    %r10,%r9
   2e6b4:	49 29 f1             	sub    %rsi,%r9
   2e6b7:	48 8b 34 24          	mov    (%rsp),%rsi
   2e6bb:	48 0f af d6          	imul   %rsi,%rdx
   2e6bf:	48 c1 e6 09          	shl    $0x9,%rsi
   2e6c3:	48 89 b4 24 48 01 00 	mov    %rsi,0x148(%rsp)
   2e6ca:	00 
   2e6cb:	48 89 d1             	mov    %rdx,%rcx
   2e6ce:	f3 0f 11 a4 24 f0 00 	movss  %xmm4,0xf0(%rsp)
   2e6d5:	00 00 
   2e6d7:	48 29 c1             	sub    %rax,%rcx
   2e6da:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2e6e1:	00 
   2e6e2:	48 89 cd             	mov    %rcx,%rbp
   2e6e5:	4c 89 c9             	mov    %r9,%rcx
   2e6e8:	f3 0f 10 60 1c       	movss  0x1c(%rax),%xmm4
   2e6ed:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2e6f4:	00 
   2e6f5:	f3 0f 11 a4 24 00 01 	movss  %xmm4,0x100(%rsp)
   2e6fc:	00 00 
   2e6fe:	f3 0f 10 60 1c       	movss  0x1c(%rax),%xmm4
   2e703:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2e70a:	00 
   2e70b:	f3 0f 11 a4 24 04 01 	movss  %xmm4,0x104(%rsp)
   2e712:	00 00 
   2e714:	f3 0f 10 60 1c       	movss  0x1c(%rax),%xmm4
   2e719:	4c 89 c0             	mov    %r8,%rax
   2e71c:	48 f7 d8             	neg    %rax
   2e71f:	f3 0f 11 a4 24 08 01 	movss  %xmm4,0x108(%rsp)
   2e726:	00 00 
   2e728:	48 c1 e0 09          	shl    $0x9,%rax
   2e72c:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
   2e731:	4c 89 e8             	mov    %r13,%rax
   2e734:	45 89 fd             	mov    %r15d,%r13d
   2e737:	4d 89 df             	mov    %r11,%r15
   2e73a:	48 f7 d8             	neg    %rax
   2e73d:	48 c1 e0 09          	shl    $0x9,%rax
   2e741:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   2e746:	48 89 f8             	mov    %rdi,%rax
   2e749:	48 f7 d8             	neg    %rax
   2e74c:	48 c1 e0 09          	shl    $0x9,%rax
   2e750:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   2e755:	41 8d 46 01          	lea    0x1(%r14),%eax
   2e759:	89 84 24 c4 00 00 00 	mov    %eax,0xc4(%rsp)
   2e760:	b8 00 80 00 00       	mov    $0x8000,%eax
   2e765:	66 0f 6e e0          	movd   %eax,%xmm4
   2e769:	66 0f 70 ec 00       	pshufd $0x0,%xmm4,%xmm5
   2e76e:	0f 29 ac 24 90 01 00 	movaps %xmm5,0x190(%rsp)
   2e775:	00 
   2e776:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   2e77d:	00 00 00 
   2e780:	ba 0f 00 00 00       	mov    $0xf,%edx
   2e785:	44 39 ac 24 c4 00 00 	cmp    %r13d,0xc4(%rsp)
   2e78c:	00 
   2e78d:	b8 03 00 00 00       	mov    $0x3,%eax
   2e792:	0f 4c c2             	cmovl  %edx,%eax
   2e795:	8b 54 24 14          	mov    0x14(%rsp),%edx
   2e799:	89 44 24 28          	mov    %eax,0x28(%rsp)
   2e79d:	39 94 24 f8 00 00 00 	cmp    %edx,0xf8(%rsp)
   2e7a4:	0f 8d 65 0a 00 00    	jge    2f20f <sg_raster_triangle_tile_prepared+0x115f>
   2e7aa:	48 63 84 24 68 02 00 	movslq 0x268(%rsp),%rax
   2e7b1:	00 
   2e7b2:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
   2e7b7:	41 be 00 00 00 80    	mov    $0x80000000,%r14d
   2e7bd:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   2e7c4:	ff ff ff 
   2e7c7:	48 89 8c 24 18 01 00 	mov    %rcx,0x118(%rsp)
   2e7ce:	00 
   2e7cf:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   2e7d4:	48 63 84 24 34 01 00 	movslq 0x134(%rsp),%rax
   2e7db:	00 
   2e7dc:	48 89 ac 24 20 01 00 	mov    %rbp,0x120(%rsp)
   2e7e3:	00 
   2e7e4:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   2e7e9:	48 63 84 24 30 01 00 	movslq 0x130(%rsp),%rax
   2e7f0:	00 
   2e7f1:	44 89 ac 24 28 01 00 	mov    %r13d,0x128(%rsp)
   2e7f8:	00 
   2e7f9:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
   2e800:	00 
   2e801:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
   2e808:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
   2e80d:	89 04 24             	mov    %eax,(%rsp)
   2e810:	8b 44 24 28          	mov    0x28(%rsp),%eax
   2e814:	4c 89 bc 24 10 01 00 	mov    %r15,0x110(%rsp)
   2e81b:	00 
   2e81c:	49 89 ef             	mov    %rbp,%r15
   2e81f:	83 e0 05             	and    $0x5,%eax
   2e822:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   2e826:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   2e82d:	00 00 00 
   2e830:	8b 04 24             	mov    (%rsp),%eax
   2e833:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   2e838:	44 8b 64 24 28       	mov    0x28(%rsp),%r12d
   2e83d:	8d 58 01             	lea    0x1(%rax),%ebx
   2e840:	8b 44 24 14          	mov    0x14(%rsp),%eax
   2e844:	89 5c 24 38          	mov    %ebx,0x38(%rsp)
   2e848:	39 c3                	cmp    %eax,%ebx
   2e84a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
   2e84f:	44 0f 4d 64 24 3c    	cmovge 0x3c(%rsp),%r12d
   2e855:	48 01 c8             	add    %rcx,%rax
   2e858:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   2e85d:	48 01 c1             	add    %rax,%rcx
   2e860:	0f 88 5a 09 00 00    	js     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2e866:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
   2e86b:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
   2e870:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   2e875:	48 8d 14 37          	lea    (%rdi,%rsi,1),%rdx
   2e879:	48 01 d1             	add    %rdx,%rcx
   2e87c:	0f 88 3e 09 00 00    	js     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2e882:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
   2e889:	00 
   2e88a:	49 8d 0c 3f          	lea    (%r15,%rdi,1),%rcx
   2e88e:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
   2e895:	00 
   2e896:	48 01 cf             	add    %rcx,%rdi
   2e899:	0f 88 21 09 00 00    	js     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2e89f:	48 8b b4 24 d8 00 00 	mov    0xd8(%rsp),%rsi
   2e8a6:	00 
   2e8a7:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
   2e8ae:	00 
   2e8af:	48 01 ce             	add    %rcx,%rsi
   2e8b2:	48 01 d7             	add    %rdx,%rdi
   2e8b5:	48 09 fe             	or     %rdi,%rsi
   2e8b8:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
   2e8bf:	00 
   2e8c0:	48 01 c7             	add    %rax,%rdi
   2e8c3:	48 09 fe             	or     %rdi,%rsi
   2e8c6:	0f 88 1c 10 00 00    	js     2f8e8 <sg_raster_triangle_tile_prepared+0x1838>
   2e8cc:	83 bc 24 fc 00 00 00 	cmpl   $0x1,0xfc(%rsp)
   2e8d3:	01 
   2e8d4:	0f 84 b6 34 00 00    	je     31d90 <sg_raster_triangle_tile_prepared+0x3ce0>
   2e8da:	8b 84 24 0c 01 00 00 	mov    0x10c(%rsp),%eax
   2e8e1:	39 c3                	cmp    %eax,%ebx
   2e8e3:	0f 8c e6 11 00 00    	jl     2facf <sg_raster_triangle_tile_prepared+0x1a1f>
   2e8e9:	8b 84 24 2c 01 00 00 	mov    0x12c(%rsp),%eax
   2e8f0:	85 c0                	test   %eax,%eax
   2e8f2:	0f 85 56 1f 00 00    	jne    3084e <sg_raster_triangle_tile_prepared+0x279e>
   2e8f8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   2e8fd:	8b b9 c0 3d 00 00    	mov    0x3dc0(%rcx),%edi
   2e903:	85 ff                	test   %edi,%edi
   2e905:	74 36                	je     2e93d <sg_raster_triangle_tile_prepared+0x88d>
   2e907:	8b 34 24             	mov    (%rsp),%esi
   2e90a:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   2e911:	89 f0                	mov    %esi,%eax
   2e913:	83 e2 1f             	and    $0x1f,%edx
   2e916:	83 e6 07             	and    $0x7,%esi
   2e919:	c1 f8 03             	sar    $0x3,%eax
   2e91c:	83 e0 03             	and    $0x3,%eax
   2e91f:	8d 04 90             	lea    (%rax,%rdx,4),%eax
   2e922:	48 98                	cltq
   2e924:	0f b6 94 01 c4 3d 00 	movzbl 0x3dc4(%rcx,%rax,1),%edx
   2e92b:	00 
   2e92c:	89 f1                	mov    %esi,%ecx
   2e92e:	b8 80 00 00 00       	mov    $0x80,%eax
   2e933:	d3 e8                	shr    %cl,%eax
   2e935:	85 c2                	test   %eax,%edx
   2e937:	0f 84 27 03 00 00    	je     2ec64 <sg_raster_triangle_tile_prepared+0xbb4>
   2e93d:	66 0f ef f6          	pxor   %xmm6,%xmm6
   2e941:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2e945:	f3 0f 10 ac 24 f0 00 	movss  0xf0(%rsp),%xmm5
   2e94c:	00 00 
   2e94e:	f3 0f 10 bc 24 00 01 	movss  0x100(%rsp),%xmm7
   2e955:	00 00 
   2e957:	f3 48 0f 2a 74 24 08 	cvtsi2ssq 0x8(%rsp),%xmm6
   2e95e:	66 0f ef db          	pxor   %xmm3,%xmm3
   2e962:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 2e96a <sg_raster_triangle_tile_prepared+0x8ba>
   2e969:	00 
   2e96a:	f3 44 0f 10 84 24 04 	movss  0x104(%rsp),%xmm8
   2e971:	01 00 00 
   2e974:	f3 48 0f 2a 44 24 18 	cvtsi2ssq 0x18(%rsp),%xmm0
   2e97b:	f3 44 0f 10 8c 24 08 	movss  0x108(%rsp),%xmm9
   2e982:	01 00 00 
   2e985:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
   2e989:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2e98d:	f3 0f 59 fe          	mulss  %xmm6,%xmm7
   2e991:	0f 28 d6             	movaps %xmm6,%xmm2
   2e994:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2e998:	f3 44 0f 59 c0       	mulss  %xmm0,%xmm8
   2e99d:	f3 0f 5c ca          	subss  %xmm2,%xmm1
   2e9a1:	0f 28 d7             	movaps %xmm7,%xmm2
   2e9a4:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
   2e9a9:	f3 44 0f 59 c9       	mulss  %xmm1,%xmm9
   2e9ae:	f3 41 0f 58 d1       	addss  %xmm9,%xmm2
   2e9b3:	0f 2f da             	comiss %xmm2,%xmm3
   2e9b6:	0f 83 a8 02 00 00    	jae    2ec64 <sg_raster_triangle_tile_prepared+0xbb4>
   2e9bc:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2e9c3:	00 
   2e9c4:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   2e9c9:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 2e9d2 <sg_raster_triangle_tile_prepared+0x922>
   2e9d0:	00 00 
   2e9d2:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
   2e9d7:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2e9de:	00 
   2e9df:	8b b7 84 00 00 00    	mov    0x84(%rdi),%esi
   2e9e5:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
   2e9ea:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
   2e9ef:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2e9f6:	00 
   2e9f7:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
   2e9fc:	f3 0f 58 8c 24 f4 00 	addss  0xf4(%rsp),%xmm1
   2ea03:	00 00 
   2ea05:	f3 0f 58 f0          	addss  %xmm0,%xmm6
   2ea09:	f3 0f 58 f1          	addss  %xmm1,%xmm6
   2ea0d:	85 f6                	test   %esi,%esi
   2ea0f:	0f 84 bb 0c 00 00    	je     2f6d0 <sg_raster_triangle_tile_prepared+0x1620>
   2ea15:	8b 8f c0 00 00 00    	mov    0xc0(%rdi),%ecx
   2ea1b:	85 c9                	test   %ecx,%ecx
   2ea1d:	0f 85 ad 0c 00 00    	jne    2f6d0 <sg_raster_triangle_tile_prepared+0x1620>
   2ea23:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
   2ea2a:	0f af 07             	imul   (%rdi),%eax
   2ea2d:	8b 34 24             	mov    (%rsp),%esi
   2ea30:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   2ea34:	01 f0                	add    %esi,%eax
   2ea36:	48 98                	cltq
   2ea38:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
   2ea3d:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
   2ea43:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2ea4a:	2d 00 02 00 00       	sub    $0x200,%eax
   2ea4f:	83 f8 07             	cmp    $0x7,%eax
   2ea52:	0f 87 45 71 00 00    	ja     35b9d <sg_raster_triangle_tile_prepared+0x7aed>
   2ea58:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2ea5f <sg_raster_triangle_tile_prepared+0x9af>
   2ea5f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   2ea63:	48 01 d0             	add    %rdx,%rax
   2ea66:	ff e0                	jmp    *%rax
   2ea68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   2ea6f:	00 
   2ea70:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   2ea75:	41 89 ee             	mov    %ebp,%r14d
   2ea78:	8b 53 64             	mov    0x64(%rbx),%edx
   2ea7b:	8b 43 68             	mov    0x68(%rbx),%eax
   2ea7e:	39 d5                	cmp    %edx,%ebp
   2ea80:	8b 6c 24 14          	mov    0x14(%rsp),%ebp
   2ea84:	44 0f 4c f2          	cmovl  %edx,%r14d
   2ea88:	41 39 c0             	cmp    %eax,%r8d
   2ea8b:	44 0f 4c c0          	cmovl  %eax,%r8d
   2ea8f:	03 53 6c             	add    0x6c(%rbx),%edx
   2ea92:	39 d5                	cmp    %edx,%ebp
   2ea94:	44 89 b4 24 f8 00 00 	mov    %r14d,0xf8(%rsp)
   2ea9b:	00 
   2ea9c:	0f 4e d5             	cmovle %ebp,%edx
   2ea9f:	03 43 70             	add    0x70(%rbx),%eax
   2eaa2:	44 89 84 24 c0 00 00 	mov    %r8d,0xc0(%rsp)
   2eaa9:	00 
   2eaaa:	41 39 c7             	cmp    %eax,%r15d
   2eaad:	89 54 24 14          	mov    %edx,0x14(%rsp)
   2eab1:	44 0f 4f f8          	cmovg  %eax,%r15d
   2eab5:	41 39 d6             	cmp    %edx,%r14d
   2eab8:	7d 16                	jge    2ead0 <sg_raster_triangle_tile_prepared+0xa20>
   2eaba:	45 39 c7             	cmp    %r8d,%r15d
   2eabd:	0f 8f 1d f8 ff ff    	jg     2e2e0 <sg_raster_triangle_tile_prepared+0x230>
   2eac3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   2eaca:	00 00 00 00 
   2eace:	66 90                	xchg   %ax,%ax
   2ead0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   2ead5:	48 81 c4 a8 04 00 00 	add    $0x4a8,%rsp
   2eadc:	5b                   	pop    %rbx
   2eadd:	5d                   	pop    %rbp
   2eade:	41 5c                	pop    %r12
   2eae0:	41 5d                	pop    %r13
   2eae2:	41 5e                	pop    %r14
   2eae4:	41 5f                	pop    %r15
   2eae6:	c3                   	ret
   2eae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   2eaee:	00 00 
   2eaf0:	45 85 f6             	test   %r14d,%r14d
   2eaf3:	75 db                	jne    2ead0 <sg_raster_triangle_tile_prepared+0xa20>
   2eaf5:	b8 01 00 00 00       	mov    $0x1,%eax
   2eafa:	eb d9                	jmp    2ead5 <sg_raster_triangle_tile_prepared+0xa25>
   2eafc:	48 01 84 24 c8 00 00 	add    %rax,0xc8(%rsp)
   2eb03:	00 
   2eb04:	e9 9a f9 ff ff       	jmp    2e4a3 <sg_raster_triangle_tile_prepared+0x3f3>
   2eb09:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
   2eb10:	00 
   2eb11:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   2eb18:	00 00 
   2eb1a:	e9 6a f9 ff ff       	jmp    2e489 <sg_raster_triangle_tile_prepared+0x3d9>
   2eb1f:	f3 0f 10 b8 f8 00 00 	movss  0xf8(%rax),%xmm7
   2eb26:	00 
   2eb27:	f3 0f 11 bc 24 f4 00 	movss  %xmm7,0xf4(%rsp)
   2eb2e:	00 00 
   2eb30:	44 0f 28 ff          	movaps %xmm7,%xmm15
   2eb34:	66 0f ef ff          	pxor   %xmm7,%xmm7
   2eb38:	44 0f 2f ff          	comiss %xmm7,%xmm15
   2eb3c:	0f 84 9e f8 ff ff    	je     2e3e0 <sg_raster_triangle_tile_prepared+0x330>
   2eb42:	e9 ca f7 ff ff       	jmp    2e311 <sg_raster_triangle_tile_prepared+0x261>
   2eb47:	48 81 c4 a8 04 00 00 	add    $0x4a8,%rsp
   2eb4e:	5b                   	pop    %rbx
   2eb4f:	5d                   	pop    %rbp
   2eb50:	41 5c                	pop    %r12
   2eb52:	41 5d                	pop    %r13
   2eb54:	41 5e                	pop    %r14
   2eb56:	41 5f                	pop    %r15
   2eb58:	e9 53 49 fd ff       	jmp    34b0 <sg_raster_triangle_depth_capture>
   2eb5d:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   2eb64:	00 00 
   2eb66:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2eb6b:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   2eb72:	00 00 
   2eb74:	f3 0f 59 b8 10 01 00 	mulss  0x110(%rax),%xmm7
   2eb7b:	00 
   2eb7c:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   2eb83:	00 00 
   2eb85:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   2eb8c:	00 00 
   2eb8e:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   2eb95:	00 00 
   2eb97:	f3 0f 59 ff          	mulss  %xmm7,%xmm7
   2eb9b:	0f 57 3d 00 00 00 00 	xorps  0x0(%rip),%xmm7        # 2eba2 <sg_raster_triangle_tile_prepared+0xaf2>
   2eba2:	0f 28 c7             	movaps %xmm7,%xmm0
   2eba5:	e8 00 00 00 00       	call   2ebaa <sg_raster_triangle_tile_prepared+0xafa>
   2ebaa:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 2ebb2 <sg_raster_triangle_tile_prepared+0xb02>
   2ebb1:	00 
   2ebb2:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
   2ebb9:	00 00 
   2ebbb:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
   2ebc2:	00 00 
   2ebc4:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
   2ebcb:	00 00 
   2ebcd:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2ebd5 <sg_raster_triangle_tile_prepared+0xb25>
   2ebd4:	00 
   2ebd5:	f3 0f 10 b4 24 50 01 	movss  0x150(%rsp),%xmm6
   2ebdc:	00 00 
   2ebde:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
   2ebe5:	00 00 
   2ebe7:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   2ebeb:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2ebef:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   2ebf3:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   2ebf7:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2ebfc:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
   2ec03:	00 
   2ec04:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2ec08:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2ec0c:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
   2ec13:	00 
   2ec14:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2ec18:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
   2ec1f:	00 
   2ec20:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2ec27:	00 00 
   2ec29:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2ec2d:	f3 0f 58 dd          	addss  %xmm5,%xmm3
   2ec31:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2ec38:	00 00 
   2ec3a:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   2ec41:	00 00 
   2ec43:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   2ec4a:	8b 34 24             	mov    (%rsp),%esi
   2ec4d:	0f 28 c6             	movaps %xmm6,%xmm0
   2ec50:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   2ec55:	e8 00 00 00 00       	call   2ec5a <sg_raster_triangle_tile_prepared+0xbaa>
   2ec5a:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   2ec61:	ff ff ff 
   2ec64:	41 f6 c4 02          	test   $0x2,%r12b
   2ec68:	0f 84 9d 02 00 00    	je     2ef0b <sg_raster_triangle_tile_prepared+0xe5b>
   2ec6e:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
   2ec75:	00 
   2ec76:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
   2ec7b:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
   2ec80:	48 8d 14 38          	lea    (%rax,%rdi,1),%rdx
   2ec84:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   2ec89:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   2ec90:	00 
   2ec91:	44 8b 87 c0 3d 00 00 	mov    0x3dc0(%rdi),%r8d
   2ec98:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
   2ec9c:	45 85 c0             	test   %r8d,%r8d
   2ec9f:	74 37                	je     2ecd8 <sg_raster_triangle_tile_prepared+0xc28>
   2eca1:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
   2eca5:	8b 8c 24 c0 00 00 00 	mov    0xc0(%rsp),%ecx
   2ecac:	89 d8                	mov    %ebx,%eax
   2ecae:	83 e1 1f             	and    $0x1f,%ecx
   2ecb1:	c1 f8 03             	sar    $0x3,%eax
   2ecb4:	83 e0 03             	and    $0x3,%eax
   2ecb7:	8d 04 88             	lea    (%rax,%rcx,4),%eax
   2ecba:	89 d9                	mov    %ebx,%ecx
   2ecbc:	48 98                	cltq
   2ecbe:	83 e1 07             	and    $0x7,%ecx
   2ecc1:	0f b6 bc 07 c4 3d 00 	movzbl 0x3dc4(%rdi,%rax,1),%edi
   2ecc8:	00 
   2ecc9:	b8 80 00 00 00       	mov    $0x80,%eax
   2ecce:	d3 e8                	shr    %cl,%eax
   2ecd0:	85 c7                	test   %eax,%edi
   2ecd2:	0f 84 33 02 00 00    	je     2ef0b <sg_raster_triangle_tile_prepared+0xe5b>
   2ecd8:	66 0f ef f6          	pxor   %xmm6,%xmm6
   2ecdc:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2ece0:	f3 0f 10 ac 24 f0 00 	movss  0xf0(%rsp),%xmm5
   2ece7:	00 00 
   2ece9:	f3 44 0f 10 8c 24 00 	movss  0x100(%rsp),%xmm9
   2ecf0:	01 00 00 
   2ecf3:	f3 48 0f 2a f6       	cvtsi2ss %rsi,%xmm6
   2ecf8:	66 0f ef db          	pxor   %xmm3,%xmm3
   2ecfc:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 2ed04 <sg_raster_triangle_tile_prepared+0xc54>
   2ed03:	00 
   2ed04:	f3 0f 10 bc 24 04 01 	movss  0x104(%rsp),%xmm7
   2ed0b:	00 00 
   2ed0d:	f3 44 0f 10 84 24 08 	movss  0x108(%rsp),%xmm8
   2ed14:	01 00 00 
   2ed17:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
   2ed1c:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
   2ed20:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2ed24:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
   2ed29:	0f 28 d6             	movaps %xmm6,%xmm2
   2ed2c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2ed30:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
   2ed34:	f3 0f 5c ca          	subss  %xmm2,%xmm1
   2ed38:	41 0f 28 d1          	movaps %xmm9,%xmm2
   2ed3c:	f3 0f 58 d7          	addss  %xmm7,%xmm2
   2ed40:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
   2ed45:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
   2ed4a:	0f 2f da             	comiss %xmm2,%xmm3
   2ed4d:	0f 83 b8 01 00 00    	jae    2ef0b <sg_raster_triangle_tile_prepared+0xe5b>
   2ed53:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2ed5a:	00 
   2ed5b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   2ed60:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 2ed69 <sg_raster_triangle_tile_prepared+0xcb9>
   2ed67:	00 00 
   2ed69:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
   2ed6e:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2ed75:	00 
   2ed76:	8b b9 84 00 00 00    	mov    0x84(%rcx),%edi
   2ed7c:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
   2ed81:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
   2ed86:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2ed8d:	00 
   2ed8e:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
   2ed93:	f3 0f 58 8c 24 f4 00 	addss  0xf4(%rsp),%xmm1
   2ed9a:	00 00 
   2ed9c:	f3 0f 58 f0          	addss  %xmm0,%xmm6
   2eda0:	f3 0f 58 f1          	addss  %xmm1,%xmm6
   2eda4:	85 ff                	test   %edi,%edi
   2eda6:	0f 84 c4 04 00 00    	je     2f270 <sg_raster_triangle_tile_prepared+0x11c0>
   2edac:	8b b1 c0 00 00 00    	mov    0xc0(%rcx),%esi
   2edb2:	85 f6                	test   %esi,%esi
   2edb4:	0f 85 b6 04 00 00    	jne    2f270 <sg_raster_triangle_tile_prepared+0x11c0>
   2edba:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
   2edc1:	0f af 01             	imul   (%rcx),%eax
   2edc4:	8b 7c 24 38          	mov    0x38(%rsp),%edi
   2edc8:	48 8b 51 10          	mov    0x10(%rcx),%rdx
   2edcc:	01 f8                	add    %edi,%eax
   2edce:	48 98                	cltq
   2edd0:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
   2edd5:	8b 81 88 00 00 00    	mov    0x88(%rcx),%eax
   2eddb:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2ede2:	2d 00 02 00 00       	sub    $0x200,%eax
   2ede7:	83 f8 07             	cmp    $0x7,%eax
   2edea:	0f 87 ba 6d 00 00    	ja     35baa <sg_raster_triangle_tile_prepared+0x7afa>
   2edf0:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2edf7 <sg_raster_triangle_tile_prepared+0xd47>
   2edf7:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   2edfb:	48 01 d0             	add    %rdx,%rax
   2edfe:	ff e0                	jmp    *%rax
   2ee00:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   2ee07:	00 00 
   2ee09:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2ee0e:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   2ee15:	00 00 
   2ee17:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
   2ee1e:	00 00 
   2ee20:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   2ee27:	00 00 
   2ee29:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   2ee30:	00 00 
   2ee32:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   2ee39:	00 00 
   2ee3b:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
   2ee40:	41 0f 28 c2          	movaps %xmm10,%xmm0
   2ee44:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 2ee4b <sg_raster_triangle_tile_prepared+0xd9b>
   2ee4b:	e8 00 00 00 00       	call   2ee50 <sg_raster_triangle_tile_prepared+0xda0>
   2ee50:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 2ee58 <sg_raster_triangle_tile_prepared+0xda8>
   2ee57:	00 
   2ee58:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
   2ee5f:	00 00 
   2ee61:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
   2ee68:	00 00 
   2ee6a:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
   2ee71:	00 00 
   2ee73:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2ee7b <sg_raster_triangle_tile_prepared+0xdcb>
   2ee7a:	00 
   2ee7b:	f3 0f 10 b4 24 50 01 	movss  0x150(%rsp),%xmm6
   2ee82:	00 00 
   2ee84:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
   2ee8b:	00 00 
   2ee8d:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   2ee91:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2ee95:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   2ee99:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   2ee9d:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2eea2:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
   2eea9:	00 
   2eeaa:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2eeae:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2eeb2:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
   2eeb9:	00 
   2eeba:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2eebe:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
   2eec5:	00 
   2eec6:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2eecd:	00 00 
   2eecf:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2eed3:	f3 0f 58 dd          	addss  %xmm5,%xmm3
   2eed7:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2eede:	00 00 
   2eee0:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   2eee7:	00 00 
   2eee9:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   2eef0:	8b 74 24 38          	mov    0x38(%rsp),%esi
   2eef4:	0f 28 c6             	movaps %xmm6,%xmm0
   2eef7:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   2eefc:	e8 00 00 00 00       	call   2ef01 <sg_raster_triangle_tile_prepared+0xe51>
   2ef01:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   2ef08:	ff ff ff 
   2ef0b:	41 f6 c4 04          	test   $0x4,%r12b
   2ef0f:	0f 84 95 02 00 00    	je     2f1aa <sg_raster_triangle_tile_prepared+0x10fa>
   2ef15:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   2ef1a:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
   2ef1f:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   2ef24:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
   2ef29:	48 01 c2             	add    %rax,%rdx
   2ef2c:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
   2ef31:	44 8b 87 c0 3d 00 00 	mov    0x3dc0(%rdi),%r8d
   2ef38:	48 01 c6             	add    %rax,%rsi
   2ef3b:	45 85 c0             	test   %r8d,%r8d
   2ef3e:	74 36                	je     2ef76 <sg_raster_triangle_tile_prepared+0xec6>
   2ef40:	8b 1c 24             	mov    (%rsp),%ebx
   2ef43:	8b 8c 24 c4 00 00 00 	mov    0xc4(%rsp),%ecx
   2ef4a:	89 d8                	mov    %ebx,%eax
   2ef4c:	83 e1 1f             	and    $0x1f,%ecx
   2ef4f:	c1 f8 03             	sar    $0x3,%eax
   2ef52:	83 e0 03             	and    $0x3,%eax
   2ef55:	8d 04 88             	lea    (%rax,%rcx,4),%eax
   2ef58:	89 d9                	mov    %ebx,%ecx
   2ef5a:	48 98                	cltq
   2ef5c:	83 e1 07             	and    $0x7,%ecx
   2ef5f:	0f b6 bc 07 c4 3d 00 	movzbl 0x3dc4(%rdi,%rax,1),%edi
   2ef66:	00 
   2ef67:	b8 80 00 00 00       	mov    $0x80,%eax
   2ef6c:	d3 e8                	shr    %cl,%eax
   2ef6e:	85 c7                	test   %eax,%edi
   2ef70:	0f 84 34 02 00 00    	je     2f1aa <sg_raster_triangle_tile_prepared+0x10fa>
   2ef76:	66 0f ef f6          	pxor   %xmm6,%xmm6
   2ef7a:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2ef7e:	f3 0f 10 ac 24 f0 00 	movss  0xf0(%rsp),%xmm5
   2ef85:	00 00 
   2ef87:	f3 44 0f 10 8c 24 00 	movss  0x100(%rsp),%xmm9
   2ef8e:	01 00 00 
   2ef91:	f3 48 0f 2a f6       	cvtsi2ss %rsi,%xmm6
   2ef96:	66 0f ef db          	pxor   %xmm3,%xmm3
   2ef9a:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 2efa2 <sg_raster_triangle_tile_prepared+0xef2>
   2efa1:	00 
   2efa2:	f3 0f 10 bc 24 04 01 	movss  0x104(%rsp),%xmm7
   2efa9:	00 00 
   2efab:	f3 44 0f 10 84 24 08 	movss  0x108(%rsp),%xmm8
   2efb2:	01 00 00 
   2efb5:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
   2efba:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
   2efbe:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2efc2:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
   2efc7:	0f 28 d6             	movaps %xmm6,%xmm2
   2efca:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2efce:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
   2efd2:	f3 0f 5c ca          	subss  %xmm2,%xmm1
   2efd6:	41 0f 28 d1          	movaps %xmm9,%xmm2
   2efda:	f3 0f 58 d7          	addss  %xmm7,%xmm2
   2efde:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
   2efe3:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
   2efe8:	0f 2f da             	comiss %xmm2,%xmm3
   2efeb:	0f 83 b9 01 00 00    	jae    2f1aa <sg_raster_triangle_tile_prepared+0x10fa>
   2eff1:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2eff8:	00 
   2eff9:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   2effe:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 2f007 <sg_raster_triangle_tile_prepared+0xf57>
   2f005:	00 00 
   2f007:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
   2f00c:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2f013:	00 
   2f014:	8b b2 84 00 00 00    	mov    0x84(%rdx),%esi
   2f01a:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
   2f01f:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
   2f024:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2f02b:	00 
   2f02c:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
   2f031:	f3 0f 58 8c 24 f4 00 	addss  0xf4(%rsp),%xmm1
   2f038:	00 00 
   2f03a:	f3 0f 58 f0          	addss  %xmm0,%xmm6
   2f03e:	f3 0f 58 f1          	addss  %xmm1,%xmm6
   2f042:	85 f6                	test   %esi,%esi
   2f044:	0f 84 56 04 00 00    	je     2f4a0 <sg_raster_triangle_tile_prepared+0x13f0>
   2f04a:	8b 8a c0 00 00 00    	mov    0xc0(%rdx),%ecx
   2f050:	85 c9                	test   %ecx,%ecx
   2f052:	0f 85 48 04 00 00    	jne    2f4a0 <sg_raster_triangle_tile_prepared+0x13f0>
   2f058:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
   2f05f:	0f af 02             	imul   (%rdx),%eax
   2f062:	8b 3c 24             	mov    (%rsp),%edi
   2f065:	01 f8                	add    %edi,%eax
   2f067:	48 89 d7             	mov    %rdx,%rdi
   2f06a:	48 8b 52 10          	mov    0x10(%rdx),%rdx
   2f06e:	48 98                	cltq
   2f070:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
   2f075:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
   2f07b:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2f082:	2d 00 02 00 00       	sub    $0x200,%eax
   2f087:	83 f8 07             	cmp    $0x7,%eax
   2f08a:	0f 87 00 6b 00 00    	ja     35b90 <sg_raster_triangle_tile_prepared+0x7ae0>
   2f090:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2f097 <sg_raster_triangle_tile_prepared+0xfe7>
   2f097:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   2f09b:	48 01 d0             	add    %rdx,%rax
   2f09e:	ff e0                	jmp    *%rax
   2f0a0:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   2f0a7:	00 00 
   2f0a9:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f0ae:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   2f0b5:	00 00 
   2f0b7:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
   2f0be:	00 00 
   2f0c0:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   2f0c7:	00 00 
   2f0c9:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   2f0d0:	00 00 
   2f0d2:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   2f0d9:	00 00 
   2f0db:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
   2f0e0:	41 0f 28 c2          	movaps %xmm10,%xmm0
   2f0e4:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 2f0eb <sg_raster_triangle_tile_prepared+0x103b>
   2f0eb:	e8 00 00 00 00       	call   2f0f0 <sg_raster_triangle_tile_prepared+0x1040>
   2f0f0:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 2f0f8 <sg_raster_triangle_tile_prepared+0x1048>
   2f0f7:	00 
   2f0f8:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
   2f0ff:	00 00 
   2f101:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
   2f108:	00 00 
   2f10a:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
   2f111:	00 00 
   2f113:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2f11b <sg_raster_triangle_tile_prepared+0x106b>
   2f11a:	00 
   2f11b:	f3 0f 10 b4 24 50 01 	movss  0x150(%rsp),%xmm6
   2f122:	00 00 
   2f124:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
   2f12b:	00 00 
   2f12d:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   2f131:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2f135:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   2f139:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   2f13d:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f142:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
   2f149:	00 
   2f14a:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2f14e:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f152:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
   2f159:	00 
   2f15a:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   2f15e:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
   2f165:	00 
   2f166:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2f16d:	00 00 
   2f16f:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f173:	f3 0f 58 dd          	addss  %xmm5,%xmm3
   2f177:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2f17e:	00 00 
   2f180:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   2f187:	00 00 
   2f189:	8b 94 24 c4 00 00 00 	mov    0xc4(%rsp),%edx
   2f190:	8b 34 24             	mov    (%rsp),%esi
   2f193:	0f 28 c6             	movaps %xmm6,%xmm0
   2f196:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   2f19b:	e8 00 00 00 00       	call   2f1a0 <sg_raster_triangle_tile_prepared+0x10f0>
   2f1a0:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   2f1a7:	ff ff ff 
   2f1aa:	41 83 e4 08          	and    $0x8,%r12d
   2f1ae:	0f 85 9f 0b 00 00    	jne    2fd53 <sg_raster_triangle_tile_prepared+0x1ca3>
   2f1b4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   2f1bb:	00 00 00 00 
   2f1bf:	90                   	nop
   2f1c0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   2f1c5:	83 04 24 02          	addl   $0x2,(%rsp)
   2f1c9:	8b 4c 24 14          	mov    0x14(%rsp),%ecx
   2f1cd:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
   2f1d2:	49 01 c7             	add    %rax,%r15
   2f1d5:	8b 04 24             	mov    (%rsp),%eax
   2f1d8:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   2f1dd:	48 01 7c 24 08       	add    %rdi,0x8(%rsp)
   2f1e2:	48 01 74 24 18       	add    %rsi,0x18(%rsp)
   2f1e7:	39 c8                	cmp    %ecx,%eax
   2f1e9:	0f 8c 41 f6 ff ff    	jl     2e830 <sg_raster_triangle_tile_prepared+0x780>
   2f1ef:	4c 8b bc 24 10 01 00 	mov    0x110(%rsp),%r15
   2f1f6:	00 
   2f1f7:	48 8b 8c 24 18 01 00 	mov    0x118(%rsp),%rcx
   2f1fe:	00 
   2f1ff:	48 8b ac 24 20 01 00 	mov    0x120(%rsp),%rbp
   2f206:	00 
   2f207:	44 8b ac 24 28 01 00 	mov    0x128(%rsp),%r13d
   2f20e:	00 
   2f20f:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
   2f216:	00 
   2f217:	83 84 24 c0 00 00 00 	addl   $0x2,0xc0(%rsp)
   2f21e:	02 
   2f21f:	83 84 24 c4 00 00 00 	addl   $0x2,0xc4(%rsp)
   2f226:	02 
   2f227:	49 01 c7             	add    %rax,%r15
   2f22a:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
   2f231:	00 
   2f232:	48 01 c1             	add    %rax,%rcx
   2f235:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
   2f23c:	00 
   2f23d:	48 01 c5             	add    %rax,%rbp
   2f240:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
   2f247:	44 39 e8             	cmp    %r13d,%eax
   2f24a:	0f 8c 30 f5 ff ff    	jl     2e780 <sg_raster_triangle_tile_prepared+0x6d0>
   2f250:	e9 7b f8 ff ff       	jmp    2ead0 <sg_raster_triangle_tile_prepared+0xa20>
   2f255:	31 c0                	xor    %eax,%eax
   2f257:	0f 2f f0             	comiss %xmm0,%xmm6
   2f25a:	0f 93 c0             	setae  %al
   2f25d:	85 c0                	test   %eax,%eax
   2f25f:	0f 84 a6 fc ff ff    	je     2ef0b <sg_raster_triangle_tile_prepared+0xe5b>
   2f265:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   2f26c:	00 00 00 00 
   2f270:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2f277:	00 
   2f278:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
   2f27f:	00 
   2f280:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   2f287:	00 
   2f288:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
   2f28d:	f3 0f 10 43 20       	movss  0x20(%rbx),%xmm0
   2f292:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
   2f297:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
   2f29c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f2a0:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
   2f2a5:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
   2f2ac:	00 00 
   2f2ae:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
   2f2b3:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2f2ba:	00 
   2f2bb:	f3 44 0f 10 9b 98 00 	movss  0x98(%rbx),%xmm11
   2f2c2:	00 00 
   2f2c4:	f3 44 0f 10 a2 98 00 	movss  0x98(%rdx),%xmm12
   2f2cb:	00 00 
   2f2cd:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
   2f2d2:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
   2f2d7:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
   2f2dd:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
   2f2e2:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2f2e9:	83 e8 01             	sub    $0x1,%eax
   2f2ec:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f2f0:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
   2f2f5:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f2fa:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f2fe:	f3 0f 10 43 24       	movss  0x24(%rbx),%xmm0
   2f303:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f307:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
   2f30c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f310:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
   2f315:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2f31c:	00 00 
   2f31e:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
   2f325:	00 00 
   2f327:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f32c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f330:	f3 0f 10 43 28       	movss  0x28(%rbx),%xmm0
   2f335:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f339:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
   2f33e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2f342:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
   2f347:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2f34e:	00 00 
   2f350:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
   2f357:	00 00 
   2f359:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f35e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2f362:	f3 0f 10 43 2c       	movss  0x2c(%rbx),%xmm0
   2f367:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f36b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
   2f370:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   2f374:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
   2f379:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   2f380:	00 00 
   2f382:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
   2f389:	00 00 
   2f38b:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f390:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   2f394:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
   2f399:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   2f3a0:	00 00 
   2f3a2:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
   2f3a9:	00 00 
   2f3ab:	83 f8 01             	cmp    $0x1,%eax
   2f3ae:	0f 86 82 34 00 00    	jbe    32836 <sg_raster_triangle_tile_prepared+0x4786>
   2f3b4:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2f3bb:	00 
   2f3bc:	8b 88 60 01 00 00    	mov    0x160(%rax),%ecx
   2f3c2:	85 c9                	test   %ecx,%ecx
   2f3c4:	0f 85 12 42 00 00    	jne    335dc <sg_raster_triangle_tile_prepared+0x552c>
   2f3ca:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f3cf:	44 8b 88 08 01 00 00 	mov    0x108(%rax),%r9d
   2f3d6:	45 85 c9             	test   %r9d,%r9d
   2f3d9:	0f 84 0a fb ff ff    	je     2eee9 <sg_raster_triangle_tile_prepared+0xe39>
   2f3df:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
   2f3e4:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
   2f3ea:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
   2f3ef:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
   2f3f4:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
   2f3f9:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
   2f3fe:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
   2f403:	41 0f 28 c2          	movaps %xmm10,%xmm0
   2f407:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 2f40e <sg_raster_triangle_tile_prepared+0x135e>
   2f40e:	3d 00 08 00 00       	cmp    $0x800,%eax
   2f413:	0f 84 b5 47 00 00    	je     33bce <sg_raster_triangle_tile_prepared+0x5b1e>
   2f419:	3d 01 08 00 00       	cmp    $0x801,%eax
   2f41e:	0f 84 dc f9 ff ff    	je     2ee00 <sg_raster_triangle_tile_prepared+0xd50>
   2f424:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f429:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   2f42e:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
   2f435:	00 
   2f436:	0f 28 ef             	movaps %xmm7,%xmm5
   2f439:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
   2f440:	00 
   2f441:	41 0f 2f e8          	comiss %xmm8,%xmm5
   2f445:	0f 84 52 fa ff ff    	je     2ee9d <sg_raster_triangle_tile_prepared+0xded>
   2f44b:	f3 0f 5c f8          	subss  %xmm0,%xmm7
   2f44f:	f3 0f 5e fd          	divss  %xmm5,%xmm7
   2f453:	44 0f 2f c7          	comiss %xmm7,%xmm8
   2f457:	0f 87 e2 6b 00 00    	ja     3603f <sg_raster_triangle_tile_prepared+0x7f8f>
   2f45d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 2f465 <sg_raster_triangle_tile_prepared+0x13b5>
   2f464:	00 
   2f465:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2f46d <sg_raster_triangle_tile_prepared+0x13bd>
   2f46c:	00 
   2f46d:	f3 0f 5d c7          	minss  %xmm7,%xmm0
   2f471:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   2f475:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   2f479:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2f47d:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   2f481:	e9 17 fa ff ff       	jmp    2ee9d <sg_raster_triangle_tile_prepared+0xded>
   2f486:	31 c0                	xor    %eax,%eax
   2f488:	0f 2f f0             	comiss %xmm0,%xmm6
   2f48b:	0f 95 c0             	setne  %al
   2f48e:	85 c0                	test   %eax,%eax
   2f490:	0f 84 14 fd ff ff    	je     2f1aa <sg_raster_triangle_tile_prepared+0x10fa>
   2f496:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   2f49d:	00 00 00 
   2f4a0:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2f4a7:	00 
   2f4a8:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
   2f4af:	00 
   2f4b0:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   2f4b7:	00 
   2f4b8:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
   2f4bd:	f3 0f 10 46 20       	movss  0x20(%rsi),%xmm0
   2f4c2:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
   2f4c7:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
   2f4cc:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f4d0:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
   2f4d5:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
   2f4dc:	00 00 
   2f4de:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
   2f4e3:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2f4ea:	00 
   2f4eb:	f3 44 0f 10 9e 98 00 	movss  0x98(%rsi),%xmm11
   2f4f2:	00 00 
   2f4f4:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
   2f4fb:	00 00 
   2f4fd:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
   2f502:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
   2f507:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
   2f50d:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
   2f512:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2f519:	83 e8 01             	sub    $0x1,%eax
   2f51c:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f520:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
   2f525:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f52a:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f52e:	f3 0f 10 46 24       	movss  0x24(%rsi),%xmm0
   2f533:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f537:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
   2f53c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f540:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
   2f545:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2f54c:	00 00 
   2f54e:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
   2f555:	00 00 
   2f557:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f55c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f560:	f3 0f 10 46 28       	movss  0x28(%rsi),%xmm0
   2f565:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f569:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
   2f56e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2f572:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
   2f577:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2f57e:	00 00 
   2f580:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
   2f587:	00 00 
   2f589:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f58e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2f592:	f3 0f 10 46 2c       	movss  0x2c(%rsi),%xmm0
   2f597:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2f59b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
   2f5a0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   2f5a4:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
   2f5a9:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   2f5b0:	00 00 
   2f5b2:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
   2f5b9:	00 00 
   2f5bb:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f5c0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   2f5c4:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
   2f5c9:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   2f5d0:	00 00 
   2f5d2:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
   2f5d9:	00 00 
   2f5db:	83 f8 01             	cmp    $0x1,%eax
   2f5de:	0f 86 6b 36 00 00    	jbe    32c4f <sg_raster_triangle_tile_prepared+0x4b9f>
   2f5e4:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2f5eb:	00 
   2f5ec:	8b 90 60 01 00 00    	mov    0x160(%rax),%edx
   2f5f2:	85 d2                	test   %edx,%edx
   2f5f4:	0f 85 99 3e 00 00    	jne    33493 <sg_raster_triangle_tile_prepared+0x53e3>
   2f5fa:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f5ff:	8b a8 08 01 00 00    	mov    0x108(%rax),%ebp
   2f605:	85 ed                	test   %ebp,%ebp
   2f607:	0f 84 7c fb ff ff    	je     2f189 <sg_raster_triangle_tile_prepared+0x10d9>
   2f60d:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
   2f612:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
   2f618:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
   2f61d:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
   2f622:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
   2f627:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
   2f62c:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
   2f631:	41 0f 28 c2          	movaps %xmm10,%xmm0
   2f635:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 2f63c <sg_raster_triangle_tile_prepared+0x158c>
   2f63c:	3d 00 08 00 00       	cmp    $0x800,%eax
   2f641:	0f 84 f5 45 00 00    	je     33c3c <sg_raster_triangle_tile_prepared+0x5b8c>
   2f647:	3d 01 08 00 00       	cmp    $0x801,%eax
   2f64c:	0f 84 4e fa ff ff    	je     2f0a0 <sg_raster_triangle_tile_prepared+0xff0>
   2f652:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f657:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   2f65c:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
   2f663:	00 
   2f664:	0f 28 ef             	movaps %xmm7,%xmm5
   2f667:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
   2f66e:	00 
   2f66f:	41 0f 2f e8          	comiss %xmm8,%xmm5
   2f673:	0f 84 c4 fa ff ff    	je     2f13d <sg_raster_triangle_tile_prepared+0x108d>
   2f679:	f3 0f 5c f8          	subss  %xmm0,%xmm7
   2f67d:	f3 0f 5e fd          	divss  %xmm5,%xmm7
   2f681:	44 0f 2f c7          	comiss %xmm7,%xmm8
   2f685:	0f 87 f4 69 00 00    	ja     3607f <sg_raster_triangle_tile_prepared+0x7fcf>
   2f68b:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 2f693 <sg_raster_triangle_tile_prepared+0x15e3>
   2f692:	00 
   2f693:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2f69b <sg_raster_triangle_tile_prepared+0x15eb>
   2f69a:	00 
   2f69b:	f3 0f 5d c7          	minss  %xmm7,%xmm0
   2f69f:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   2f6a3:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   2f6a7:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2f6ab:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   2f6af:	e9 89 fa ff ff       	jmp    2f13d <sg_raster_triangle_tile_prepared+0x108d>
   2f6b4:	31 c0                	xor    %eax,%eax
   2f6b6:	0f 2f f0             	comiss %xmm0,%xmm6
   2f6b9:	0f 95 c0             	setne  %al
   2f6bc:	85 c0                	test   %eax,%eax
   2f6be:	0f 84 a0 f5 ff ff    	je     2ec64 <sg_raster_triangle_tile_prepared+0xbb4>
   2f6c4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   2f6cb:	00 00 00 00 
   2f6cf:	90                   	nop
   2f6d0:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2f6d7:	00 
   2f6d8:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
   2f6df:	00 
   2f6e0:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   2f6e7:	00 
   2f6e8:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
   2f6ed:	f3 0f 10 43 20       	movss  0x20(%rbx),%xmm0
   2f6f2:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
   2f6f7:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
   2f6fc:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f701:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
   2f706:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
   2f70d:	00 00 
   2f70f:	f3 0f 59 cf          	mulss  %xmm7,%xmm1
   2f713:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2f71a:	00 
   2f71b:	f3 44 0f 10 9b 98 00 	movss  0x98(%rbx),%xmm11
   2f722:	00 00 
   2f724:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
   2f72b:	00 00 
   2f72d:	f3 0f 59 d7          	mulss  %xmm7,%xmm2
   2f731:	f3 0f 59 df          	mulss  %xmm7,%xmm3
   2f735:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
   2f73b:	f3 0f 59 e7          	mulss  %xmm7,%xmm4
   2f73f:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2f746:	83 e8 01             	sub    $0x1,%eax
   2f749:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f74d:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
   2f752:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   2f757:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2f75b:	f3 0f 10 43 24       	movss  0x24(%rbx),%xmm0
   2f760:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f765:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
   2f76a:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f76e:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
   2f773:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2f77a:	00 00 
   2f77c:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
   2f783:	00 00 
   2f785:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   2f78a:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2f78e:	f3 0f 10 43 28       	movss  0x28(%rbx),%xmm0
   2f793:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f798:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
   2f79d:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2f7a1:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
   2f7a6:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2f7ad:	00 00 
   2f7af:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
   2f7b6:	00 00 
   2f7b8:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   2f7bd:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2f7c1:	f3 0f 10 43 2c       	movss  0x2c(%rbx),%xmm0
   2f7c6:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2f7cb:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
   2f7d0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   2f7d4:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
   2f7d9:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   2f7e0:	00 00 
   2f7e2:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
   2f7e9:	00 00 
   2f7eb:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   2f7f0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   2f7f4:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
   2f7f9:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   2f800:	00 00 
   2f802:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
   2f809:	00 00 
   2f80b:	83 f8 01             	cmp    $0x1,%eax
   2f80e:	0f 86 54 38 00 00    	jbe    33068 <sg_raster_triangle_tile_prepared+0x4fb8>
   2f814:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2f81b:	00 
   2f81c:	8b 90 60 01 00 00    	mov    0x160(%rax),%edx
   2f822:	85 d2                	test   %edx,%edx
   2f824:	0f 85 58 40 00 00    	jne    33882 <sg_raster_triangle_tile_prepared+0x57d2>
   2f82a:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f82f:	44 8b 88 08 01 00 00 	mov    0x108(%rax),%r9d
   2f836:	45 85 c9             	test   %r9d,%r9d
   2f839:	0f 84 04 f4 ff ff    	je     2ec43 <sg_raster_triangle_tile_prepared+0xb93>
   2f83f:	f3 41 0f 59 fa       	mulss  %xmm10,%xmm7
   2f844:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
   2f84a:	f3 45 0f 59 c3       	mulss  %xmm11,%xmm8
   2f84f:	f3 45 0f 59 cc       	mulss  %xmm12,%xmm9
   2f854:	f3 41 0f 58 f8       	addss  %xmm8,%xmm7
   2f859:	f3 41 0f 58 f9       	addss  %xmm9,%xmm7
   2f85e:	f3 41 0f 59 fd       	mulss  %xmm13,%xmm7
   2f863:	0f 28 c7             	movaps %xmm7,%xmm0
   2f866:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 2f86d <sg_raster_triangle_tile_prepared+0x17bd>
   2f86d:	3d 00 08 00 00       	cmp    $0x800,%eax
   2f872:	0f 84 01 45 00 00    	je     33d79 <sg_raster_triangle_tile_prepared+0x5cc9>
   2f878:	3d 01 08 00 00       	cmp    $0x801,%eax
   2f87d:	0f 84 da f2 ff ff    	je     2eb5d <sg_raster_triangle_tile_prepared+0xaad>
   2f883:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2f888:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   2f88d:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
   2f894:	00 
   2f895:	0f 28 ef             	movaps %xmm7,%xmm5
   2f898:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
   2f89f:	00 
   2f8a0:	41 0f 2f e8          	comiss %xmm8,%xmm5
   2f8a4:	0f 84 4d f3 ff ff    	je     2ebf7 <sg_raster_triangle_tile_prepared+0xb47>
   2f8aa:	f3 0f 5c f8          	subss  %xmm0,%xmm7
   2f8ae:	f3 0f 5e fd          	divss  %xmm5,%xmm7
   2f8b2:	44 0f 2f c7          	comiss %xmm7,%xmm8
   2f8b6:	0f 87 6c 67 00 00    	ja     36028 <sg_raster_triangle_tile_prepared+0x7f78>
   2f8bc:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 2f8c4 <sg_raster_triangle_tile_prepared+0x1814>
   2f8c3:	00 
   2f8c4:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2f8cc <sg_raster_triangle_tile_prepared+0x181c>
   2f8cb:	00 
   2f8cc:	f3 0f 5d c7          	minss  %xmm7,%xmm0
   2f8d0:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   2f8d4:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   2f8d8:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   2f8dc:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   2f8e0:	e9 12 f3 ff ff       	jmp    2ebf7 <sg_raster_triangle_tile_prepared+0xb47>
   2f8e5:	0f 1f 00             	nopl   (%rax)
   2f8e8:	48 8b 9c 24 b0 00 00 	mov    0xb0(%rsp),%rbx
   2f8ef:	00 
   2f8f0:	41 b9 ff ff ff 7f    	mov    $0x7fffffff,%r9d
   2f8f6:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
   2f8fa:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   2f8ff:	48 8d 3c 1e          	lea    (%rsi,%rbx,1),%rdi
   2f903:	4c 39 f7             	cmp    %r14,%rdi
   2f906:	7d 0c                	jge    2f914 <sg_raster_triangle_tile_prepared+0x1864>
   2f908:	4c 39 d7             	cmp    %r10,%rdi
   2f90b:	0f 8e a8 4d 00 00    	jle    346b9 <sg_raster_triangle_tile_prepared+0x6609>
   2f911:	41 89 f9             	mov    %edi,%r9d
   2f914:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   2f919:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
   2f91e:	4c 8d 04 03          	lea    (%rbx,%rax,1),%r8
   2f922:	4d 39 f0             	cmp    %r14,%r8
   2f925:	7d 0c                	jge    2f933 <sg_raster_triangle_tile_prepared+0x1883>
   2f927:	4d 39 d0             	cmp    %r10,%r8
   2f92a:	0f 8e 94 4d 00 00    	jle    346c4 <sg_raster_triangle_tile_prepared+0x6614>
   2f930:	44 89 c7             	mov    %r8d,%edi
   2f933:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
   2f939:	4c 39 f6             	cmp    %r14,%rsi
   2f93c:	7d 0c                	jge    2f94a <sg_raster_triangle_tile_prepared+0x189a>
   2f93e:	4c 39 d6             	cmp    %r10,%rsi
   2f941:	0f 8e 87 4d 00 00    	jle    346ce <sg_raster_triangle_tile_prepared+0x661e>
   2f947:	41 89 f0             	mov    %esi,%r8d
   2f94a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
   2f94f:	4c 39 f0             	cmp    %r14,%rax
   2f952:	7d 0b                	jge    2f95f <sg_raster_triangle_tile_prepared+0x18af>
   2f954:	4c 39 d0             	cmp    %r10,%rax
   2f957:	0f 8e 7c 4d 00 00    	jle    346d9 <sg_raster_triangle_tile_prepared+0x6629>
   2f95d:	89 c6                	mov    %eax,%esi
   2f95f:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
   2f966:	00 
   2f967:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
   2f96c:	66 0f 6e ce          	movd   %esi,%xmm1
   2f970:	66 0f 6e c7          	movd   %edi,%xmm0
   2f974:	66 41 0f 3a 22 c8 01 	pinsrd $0x1,%r8d,%xmm1
   2f97b:	66 41 0f 3a 22 c1 01 	pinsrd $0x1,%r9d,%xmm0
   2f982:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
   2f988:	48 01 d0             	add    %rdx,%rax
   2f98b:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
   2f98f:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
   2f993:	4c 39 f6             	cmp    %r14,%rsi
   2f996:	7d 0c                	jge    2f9a4 <sg_raster_triangle_tile_prepared+0x18f4>
   2f998:	4c 39 d6             	cmp    %r10,%rsi
   2f99b:	0f 8e 42 4d 00 00    	jle    346e3 <sg_raster_triangle_tile_prepared+0x6633>
   2f9a1:	41 89 f0             	mov    %esi,%r8d
   2f9a4:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
   2f9a9:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
   2f9ae:	48 8d 3c 13          	lea    (%rbx,%rdx,1),%rdi
   2f9b2:	4c 39 f7             	cmp    %r14,%rdi
   2f9b5:	7d 0b                	jge    2f9c2 <sg_raster_triangle_tile_prepared+0x1912>
   2f9b7:	4c 39 d7             	cmp    %r10,%rdi
   2f9ba:	0f 8e 2e 4d 00 00    	jle    346ee <sg_raster_triangle_tile_prepared+0x663e>
   2f9c0:	89 fe                	mov    %edi,%esi
   2f9c2:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
   2f9c7:	4c 39 f0             	cmp    %r14,%rax
   2f9ca:	7d 0b                	jge    2f9d7 <sg_raster_triangle_tile_prepared+0x1927>
   2f9cc:	4c 39 d0             	cmp    %r10,%rax
   2f9cf:	0f 8e 23 4d 00 00    	jle    346f8 <sg_raster_triangle_tile_prepared+0x6648>
   2f9d5:	89 c7                	mov    %eax,%edi
   2f9d7:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
   2f9dc:	4c 39 f2             	cmp    %r14,%rdx
   2f9df:	7d 0b                	jge    2f9ec <sg_raster_triangle_tile_prepared+0x193c>
   2f9e1:	4c 39 d2             	cmp    %r10,%rdx
   2f9e4:	0f 8e 18 4d 00 00    	jle    34702 <sg_raster_triangle_tile_prepared+0x6652>
   2f9ea:	89 d0                	mov    %edx,%eax
   2f9ec:	66 0f 6e c0          	movd   %eax,%xmm0
   2f9f0:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
   2f9f7:	00 
   2f9f8:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
   2f9ff:	00 
   2fa00:	66 0f 6e d6          	movd   %esi,%xmm2
   2fa04:	66 41 0f 3a 22 d0 01 	pinsrd $0x1,%r8d,%xmm2
   2fa0b:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   2fa11:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
   2fa17:	48 01 c8             	add    %rcx,%rax
   2fa1a:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   2fa1e:	48 01 c2             	add    %rax,%rdx
   2fa21:	4c 39 f2             	cmp    %r14,%rdx
   2fa24:	7d 0c                	jge    2fa32 <sg_raster_triangle_tile_prepared+0x1982>
   2fa26:	4c 39 d2             	cmp    %r10,%rdx
   2fa29:	0f 8e dd 4c 00 00    	jle    3470c <sg_raster_triangle_tile_prepared+0x665c>
   2fa2f:	41 89 d0             	mov    %edx,%r8d
   2fa32:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
   2fa39:	00 
   2fa3a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
   2fa3f:	48 01 ca             	add    %rcx,%rdx
   2fa42:	4c 39 f2             	cmp    %r14,%rdx
   2fa45:	7d 0b                	jge    2fa52 <sg_raster_triangle_tile_prepared+0x19a2>
   2fa47:	4c 39 d2             	cmp    %r10,%rdx
   2fa4a:	0f 8e c7 4c 00 00    	jle    34717 <sg_raster_triangle_tile_prepared+0x6667>
   2fa50:	89 d6                	mov    %edx,%esi
   2fa52:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
   2fa57:	4c 39 f0             	cmp    %r14,%rax
   2fa5a:	7d 0b                	jge    2fa67 <sg_raster_triangle_tile_prepared+0x19b7>
   2fa5c:	4c 39 d0             	cmp    %r10,%rax
   2fa5f:	0f 8e bc 4c 00 00    	jle    34721 <sg_raster_triangle_tile_prepared+0x6671>
   2fa65:	89 c7                	mov    %eax,%edi
   2fa67:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
   2fa6c:	4c 39 f1             	cmp    %r14,%rcx
   2fa6f:	7d 0b                	jge    2fa7c <sg_raster_triangle_tile_prepared+0x19cc>
   2fa71:	4c 39 d1             	cmp    %r10,%rcx
   2fa74:	0f 8e b1 4c 00 00    	jle    3472b <sg_raster_triangle_tile_prepared+0x667b>
   2fa7a:	89 ca                	mov    %ecx,%edx
   2fa7c:	0f 50 c9             	movmskps %xmm1,%ecx
   2fa7f:	0f 50 c0             	movmskps %xmm0,%eax
   2fa82:	66 0f 6e ce          	movd   %esi,%xmm1
   2fa86:	66 0f 6e c2          	movd   %edx,%xmm0
   2fa8a:	66 41 0f 3a 22 c8 01 	pinsrd $0x1,%r8d,%xmm1
   2fa91:	09 c8                	or     %ecx,%eax
   2fa93:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   2fa99:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   2fa9d:	0f 50 d0             	movmskps %xmm0,%edx
   2faa0:	09 d0                	or     %edx,%eax
   2faa2:	f7 d0                	not    %eax
   2faa4:	83 e0 0f             	and    $0xf,%eax
   2faa7:	41 21 c4             	and    %eax,%r12d
   2faaa:	0f 84 10 f7 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2fab0:	83 bc 24 fc 00 00 00 	cmpl   $0x1,0xfc(%rsp)
   2fab7:	01 
   2fab8:	0f 84 62 02 00 00    	je     2fd20 <sg_raster_triangle_tile_prepared+0x1c70>
   2fabe:	8b bc 24 0c 01 00 00 	mov    0x10c(%rsp),%edi
   2fac5:	39 7c 24 38          	cmp    %edi,0x38(%rsp)
   2fac9:	0f 8d 51 02 00 00    	jge    2fd20 <sg_raster_triangle_tile_prepared+0x1c70>
   2facf:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
   2fad4:	66 0f ef c9          	pxor   %xmm1,%xmm1
   2fad8:	66 0f ef f6          	pxor   %xmm6,%xmm6
   2fadc:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2fae0:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   2fae7:	00 
   2fae8:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   2faed:	66 0f ef d2          	pxor   %xmm2,%xmm2
   2faf1:	66 0f ef db          	pxor   %xmm3,%xmm3
   2faf5:	f3 48 0f 2a f3       	cvtsi2ss %rbx,%xmm6
   2fafa:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
   2faff:	66 0f ef e4          	pxor   %xmm4,%xmm4
   2fb03:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 2fb0b <sg_raster_triangle_tile_prepared+0x1a5b>
   2fb0a:	00 
   2fb0b:	48 8d 14 18          	lea    (%rax,%rbx,1),%rdx
   2fb0f:	48 8d 0c 1f          	lea    (%rdi,%rbx,1),%rcx
   2fb13:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
   2fb18:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
   2fb1f:	00 
   2fb20:	f3 48 0f 2a ca       	cvtsi2ss %rdx,%xmm1
   2fb25:	48 01 fa             	add    %rdi,%rdx
   2fb28:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   2fb2c:	44 0f 28 cd          	movaps %xmm5,%xmm9
   2fb30:	f3 48 0f 2a d2       	cvtsi2ss %rdx,%xmm2
   2fb35:	48 01 f0             	add    %rsi,%rax
   2fb38:	f3 48 0f 2a c1       	cvtsi2ss %rcx,%xmm0
   2fb3d:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
   2fb42:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
   2fb47:	0f 14 f1             	unpcklps %xmm1,%xmm6
   2fb4a:	48 8d 14 31          	lea    (%rcx,%rsi,1),%rdx
   2fb4e:	48 01 c8             	add    %rcx,%rax
   2fb51:	f3 0f 10 8c 24 f0 00 	movss  0xf0(%rsp),%xmm1
   2fb58:	00 00 
   2fb5a:	f3 48 0f 2a e0       	cvtsi2ss %rax,%xmm4
   2fb5f:	44 89 e0             	mov    %r12d,%eax
   2fb62:	0f 14 c2             	unpcklps %xmm2,%xmm0
   2fb65:	66 0f ef d2          	pxor   %xmm2,%xmm2
   2fb69:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   2fb6d:	83 e0 04             	and    $0x4,%eax
   2fb70:	0f 16 f0             	movlhps %xmm0,%xmm6
   2fb73:	f3 48 0f 2a d2       	cvtsi2ss %rdx,%xmm2
   2fb78:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2fb7c:	44 89 e2             	mov    %r12d,%edx
   2fb7f:	f3 48 0f 2a c6       	cvtsi2ss %rsi,%xmm0
   2fb84:	0f 59 f1             	mulps  %xmm1,%xmm6
   2fb87:	83 e2 02             	and    $0x2,%edx
   2fb8a:	0f 14 d4             	unpcklps %xmm4,%xmm2
   2fb8d:	f3 0f 10 a4 24 08 01 	movss  0x108(%rsp),%xmm4
   2fb94:	00 00 
   2fb96:	0f 14 c3             	unpcklps %xmm3,%xmm0
   2fb99:	f3 0f 10 9c 24 04 01 	movss  0x104(%rsp),%xmm3
   2fba0:	00 00 
   2fba2:	0f 16 c2             	movlhps %xmm2,%xmm0
   2fba5:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
   2fba9:	f3 0f 10 94 24 00 01 	movss  0x100(%rsp),%xmm2
   2fbb0:	00 00 
   2fbb2:	0f 59 c1             	mulps  %xmm1,%xmm0
   2fbb5:	0f 28 ce             	movaps %xmm6,%xmm1
   2fbb8:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   2fbbc:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   2fbc0:	0f 59 d6             	mulps  %xmm6,%xmm2
   2fbc3:	0f 58 c8             	addps  %xmm0,%xmm1
   2fbc6:	0f 59 d8             	mulps  %xmm0,%xmm3
   2fbc9:	44 0f 28 c2          	movaps %xmm2,%xmm8
   2fbcd:	44 0f 5c c9          	subps  %xmm1,%xmm9
   2fbd1:	44 0f 58 c3          	addps  %xmm3,%xmm8
   2fbd5:	41 0f 59 e1          	mulps  %xmm9,%xmm4
   2fbd9:	44 0f 58 c4          	addps  %xmm4,%xmm8
   2fbdd:	45 0f c2 d0 01       	cmpltps %xmm8,%xmm10
   2fbe2:	41 f6 c4 01          	test   $0x1,%r12b
   2fbe6:	0f 85 3c 0c 00 00    	jne    30828 <sg_raster_triangle_tile_prepared+0x2778>
   2fbec:	85 d2                	test   %edx,%edx
   2fbee:	0f 85 2c 20 00 00    	jne    31c20 <sg_raster_triangle_tile_prepared+0x3b70>
   2fbf4:	85 c0                	test   %eax,%eax
   2fbf6:	0f 85 ee 26 00 00    	jne    322ea <sg_raster_triangle_tile_prepared+0x423a>
   2fbfc:	66 0f ef ff          	pxor   %xmm7,%xmm7
   2fc00:	66 0f ef c9          	pxor   %xmm1,%xmm1
   2fc04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   2fc09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   2fc10:	66 0f 3a 22 f8 01    	pinsrd $0x1,%eax,%xmm7
   2fc16:	66 0f 3a 22 ca 01    	pinsrd $0x1,%edx,%xmm1
   2fc1c:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2fc23:	00 
   2fc24:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   2fc29:	66 0f 6c cf          	punpcklqdq %xmm7,%xmm1
   2fc2d:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   2fc34:	8b b4 24 c4 00 00 00 	mov    0xc4(%rsp),%esi
   2fc3b:	f3 0f 10 78 18       	movss  0x18(%rax),%xmm7
   2fc40:	8b 0c 24             	mov    (%rsp),%ecx
   2fc43:	66 41 0f db ca       	pand   %xmm10,%xmm1
   2fc48:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2fc4f:	00 
   2fc50:	8b 7b 04             	mov    0x4(%rbx),%edi
   2fc53:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
   2fc57:	0f 59 c7             	mulps  %xmm7,%xmm0
   2fc5a:	f3 0f 10 78 18       	movss  0x18(%rax),%xmm7
   2fc5f:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2fc66:	00 
   2fc67:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
   2fc6b:	0f 59 f7             	mulps  %xmm7,%xmm6
   2fc6e:	f3 0f 10 bc 24 f4 00 	movss  0xf4(%rsp),%xmm7
   2fc75:	00 00 
   2fc77:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
   2fc7b:	0f 58 f0             	addps  %xmm0,%xmm6
   2fc7e:	f3 0f 10 40 18       	movss  0x18(%rax),%xmm0
   2fc83:	8b 03                	mov    (%rbx),%eax
   2fc85:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   2fc89:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   2fc8d:	0f af d0             	imul   %eax,%edx
   2fc90:	0f af c6             	imul   %esi,%eax
   2fc93:	44 8d 04 0a          	lea    (%rdx,%rcx,1),%r8d
   2fc97:	44 8d 2c 08          	lea    (%rax,%rcx,1),%r13d
   2fc9b:	48 89 d8             	mov    %rbx,%rax
   2fc9e:	8b 9b 84 00 00 00    	mov    0x84(%rbx),%ebx
   2fca4:	0f 58 c7             	addps  %xmm7,%xmm0
   2fca7:	0f 58 f0             	addps  %xmm0,%xmm6
   2fcaa:	0f 29 b4 24 50 01 00 	movaps %xmm6,0x150(%rsp)
   2fcb1:	00 
   2fcb2:	85 db                	test   %ebx,%ebx
   2fcb4:	0f 84 ae 04 00 00    	je     30168 <sg_raster_triangle_tile_prepared+0x20b8>
   2fcba:	8b a8 9c 00 00 00    	mov    0x9c(%rax),%ebp
   2fcc0:	85 ed                	test   %ebp,%ebp
   2fcc2:	0f 85 a0 04 00 00    	jne    30168 <sg_raster_triangle_tile_prepared+0x20b8>
   2fcc8:	48 8b 40 10          	mov    0x10(%rax),%rax
   2fccc:	49 63 d0             	movslq %r8d,%rdx
   2fccf:	66 0f ef f6          	pxor   %xmm6,%xmm6
   2fcd3:	f3 0f 7e 04 90       	movq   (%rax,%rdx,4),%xmm0
   2fcd8:	39 fe                	cmp    %edi,%esi
   2fcda:	7d 08                	jge    2fce4 <sg_raster_triangle_tile_prepared+0x1c34>
   2fcdc:	49 63 d5             	movslq %r13d,%rdx
   2fcdf:	f3 0f 7e 34 90       	movq   (%rax,%rdx,4),%xmm6
   2fce4:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   2fce9:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
   2fced:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
   2fcf3:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
   2fcfa:	2d 00 02 00 00       	sub    $0x200,%eax
   2fcff:	83 f8 06             	cmp    $0x6,%eax
   2fd02:	0f 87 68 20 00 00    	ja     31d70 <sg_raster_triangle_tile_prepared+0x3cc0>
   2fd08:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2fd0f <sg_raster_triangle_tile_prepared+0x1c5f>
   2fd0f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   2fd13:	48 01 d0             	add    %rdx,%rax
   2fd16:	ff e0                	jmp    *%rax
   2fd18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   2fd1f:	00 
   2fd20:	44 8b 8c 24 2c 01 00 	mov    0x12c(%rsp),%r9d
   2fd27:	00 
   2fd28:	44 89 e7             	mov    %r12d,%edi
   2fd2b:	83 e7 01             	and    $0x1,%edi
   2fd2e:	45 85 c9             	test   %r9d,%r9d
   2fd31:	0f 85 1c 0b 00 00    	jne    30853 <sg_raster_triangle_tile_prepared+0x27a3>
   2fd37:	85 ff                	test   %edi,%edi
   2fd39:	0f 85 b9 eb ff ff    	jne    2e8f8 <sg_raster_triangle_tile_prepared+0x848>
   2fd3f:	41 f6 c4 02          	test   $0x2,%r12b
   2fd43:	0f 85 25 ef ff ff    	jne    2ec6e <sg_raster_triangle_tile_prepared+0xbbe>
   2fd49:	41 f6 c4 04          	test   $0x4,%r12b
   2fd4d:	0f 85 c2 f1 ff ff    	jne    2ef15 <sg_raster_triangle_tile_prepared+0xe65>
   2fd53:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
   2fd58:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
   2fd5f:	00 
   2fd60:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   2fd65:	48 01 f0             	add    %rsi,%rax
   2fd68:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   2fd6d:	48 8d 14 30          	lea    (%rax,%rsi,1),%rdx
   2fd71:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
   2fd76:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   2fd7d:	00 
   2fd7e:	48 01 f0             	add    %rsi,%rax
   2fd81:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   2fd86:	48 01 c8             	add    %rcx,%rax
   2fd89:	44 8b 86 c0 3d 00 00 	mov    0x3dc0(%rsi),%r8d
   2fd90:	45 85 c0             	test   %r8d,%r8d
   2fd93:	74 3b                	je     2fdd0 <sg_raster_triangle_tile_prepared+0x1d20>
   2fd95:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
   2fd99:	48 89 f7             	mov    %rsi,%rdi
   2fd9c:	8b b4 24 c4 00 00 00 	mov    0xc4(%rsp),%esi
   2fda3:	89 d9                	mov    %ebx,%ecx
   2fda5:	83 e6 1f             	and    $0x1f,%esi
   2fda8:	c1 f9 03             	sar    $0x3,%ecx
   2fdab:	83 e1 03             	and    $0x3,%ecx
   2fdae:	8d 0c b1             	lea    (%rcx,%rsi,4),%ecx
   2fdb1:	be 80 00 00 00       	mov    $0x80,%esi
   2fdb6:	48 63 c9             	movslq %ecx,%rcx
   2fdb9:	0f b6 bc 0f c4 3d 00 	movzbl 0x3dc4(%rdi,%rcx,1),%edi
   2fdc0:	00 
   2fdc1:	89 d9                	mov    %ebx,%ecx
   2fdc3:	83 e1 07             	and    $0x7,%ecx
   2fdc6:	d3 ee                	shr    %cl,%esi
   2fdc8:	85 f7                	test   %esi,%edi
   2fdca:	0f 84 f0 f3 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2fdd0:	66 0f ef f6          	pxor   %xmm6,%xmm6
   2fdd4:	66 0f ef c0          	pxor   %xmm0,%xmm0
   2fdd8:	f3 0f 10 a4 24 f0 00 	movss  0xf0(%rsp),%xmm4
   2fddf:	00 00 
   2fde1:	f3 44 0f 10 8c 24 00 	movss  0x100(%rsp),%xmm9
   2fde8:	01 00 00 
   2fdeb:	f3 48 0f 2a f0       	cvtsi2ss %rax,%xmm6
   2fdf0:	66 0f ef db          	pxor   %xmm3,%xmm3
   2fdf4:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 2fdfc <sg_raster_triangle_tile_prepared+0x1d4c>
   2fdfb:	00 
   2fdfc:	f3 0f 10 bc 24 04 01 	movss  0x104(%rsp),%xmm7
   2fe03:	00 00 
   2fe05:	f3 44 0f 10 84 24 08 	movss  0x108(%rsp),%xmm8
   2fe0c:	01 00 00 
   2fe0f:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
   2fe14:	f3 0f 59 f4          	mulss  %xmm4,%xmm6
   2fe18:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
   2fe1c:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
   2fe21:	0f 28 d6             	movaps %xmm6,%xmm2
   2fe24:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2fe28:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
   2fe2c:	f3 0f 5c ca          	subss  %xmm2,%xmm1
   2fe30:	41 0f 28 d1          	movaps %xmm9,%xmm2
   2fe34:	f3 0f 58 d7          	addss  %xmm7,%xmm2
   2fe38:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
   2fe3d:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
   2fe42:	0f 2f da             	comiss %xmm2,%xmm3
   2fe45:	0f 83 75 f3 ff ff    	jae    2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2fe4b:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2fe52:	00 
   2fe53:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   2fe58:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 2fe61 <sg_raster_triangle_tile_prepared+0x1db1>
   2fe5f:	00 00 
   2fe61:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
   2fe66:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   2fe6d:	00 
   2fe6e:	8b 99 84 00 00 00    	mov    0x84(%rcx),%ebx
   2fe74:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
   2fe79:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
   2fe7e:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   2fe85:	00 
   2fe86:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
   2fe8b:	f3 0f 58 8c 24 f4 00 	addss  0xf4(%rsp),%xmm1
   2fe92:	00 00 
   2fe94:	f3 0f 58 f0          	addss  %xmm0,%xmm6
   2fe98:	f3 0f 58 f1          	addss  %xmm1,%xmm6
   2fe9c:	85 db                	test   %ebx,%ebx
   2fe9e:	74 70                	je     2ff10 <sg_raster_triangle_tile_prepared+0x1e60>
   2fea0:	44 8b 99 c0 00 00 00 	mov    0xc0(%rcx),%r11d
   2fea7:	45 85 db             	test   %r11d,%r11d
   2feaa:	75 64                	jne    2ff10 <sg_raster_triangle_tile_prepared+0x1e60>
   2feac:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
   2feb3:	0f af 01             	imul   (%rcx),%eax
   2feb6:	8b 7c 24 38          	mov    0x38(%rsp),%edi
   2feba:	48 8b 51 10          	mov    0x10(%rcx),%rdx
   2febe:	01 f8                	add    %edi,%eax
   2fec0:	48 98                	cltq
   2fec2:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
   2fec7:	8b 81 88 00 00 00    	mov    0x88(%rcx),%eax
   2fecd:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
   2fed4:	2d 00 02 00 00       	sub    $0x200,%eax
   2fed9:	83 f8 07             	cmp    $0x7,%eax
   2fedc:	0f 87 d5 5c 00 00    	ja     35bb7 <sg_raster_triangle_tile_prepared+0x7b07>
   2fee2:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2fee9 <sg_raster_triangle_tile_prepared+0x1e39>
   2fee9:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   2feed:	48 01 d0             	add    %rdx,%rax
   2fef0:	ff e0                	jmp    *%rax
   2fef2:	31 c0                	xor    %eax,%eax
   2fef4:	0f 2f f0             	comiss %xmm0,%xmm6
   2fef7:	0f 93 c0             	setae  %al
   2fefa:	85 c0                	test   %eax,%eax
   2fefc:	0f 84 be f2 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   2ff02:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   2ff09:	00 00 00 00 
   2ff0d:	0f 1f 00             	nopl   (%rax)
   2ff10:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   2ff17:	00 
   2ff18:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
   2ff1f:	00 
   2ff20:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   2ff27:	00 
   2ff28:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
   2ff2d:	f3 0f 10 43 20       	movss  0x20(%rbx),%xmm0
   2ff32:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
   2ff37:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
   2ff3c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2ff40:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
   2ff45:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
   2ff4c:	00 00 
   2ff4e:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
   2ff53:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   2ff5a:	00 
   2ff5b:	f3 44 0f 10 9b 98 00 	movss  0x98(%rbx),%xmm11
   2ff62:	00 00 
   2ff64:	f3 44 0f 10 a2 98 00 	movss  0x98(%rdx),%xmm12
   2ff6b:	00 00 
   2ff6d:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
   2ff72:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
   2ff77:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
   2ff7d:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
   2ff82:	41 89 c2             	mov    %eax,%r10d
   2ff85:	83 e8 01             	sub    $0x1,%eax
   2ff88:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2ff8c:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
   2ff91:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2ff96:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   2ff9a:	f3 0f 10 43 24       	movss  0x24(%rbx),%xmm0
   2ff9f:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2ffa3:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
   2ffa8:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2ffac:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
   2ffb1:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   2ffb8:	00 00 
   2ffba:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
   2ffc1:	00 00 
   2ffc3:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2ffc8:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   2ffcc:	f3 0f 10 43 28       	movss  0x28(%rbx),%xmm0
   2ffd1:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   2ffd5:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
   2ffda:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2ffde:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
   2ffe3:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   2ffea:	00 00 
   2ffec:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
   2fff3:	00 00 
   2fff5:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   2fffa:	f3 0f 58 d8          	addss  %xmm0,%xmm3
   2fffe:	f3 0f 10 43 2c       	movss  0x2c(%rbx),%xmm0
   30003:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   30007:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
   3000c:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   30010:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
   30015:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   3001c:	00 00 
   3001e:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
   30025:	00 00 
   30027:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   3002c:	f3 0f 58 e0          	addss  %xmm0,%xmm4
   30030:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
   30035:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   3003c:	00 00 
   3003e:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
   30045:	00 00 
   30047:	83 f8 01             	cmp    $0x1,%eax
   3004a:	0f 86 d0 23 00 00    	jbe    32420 <sg_raster_triangle_tile_prepared+0x4370>
   30050:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   30057:	00 
   30058:	44 8b 88 60 01 00 00 	mov    0x160(%rax),%r9d
   3005f:	45 85 c9             	test   %r9d,%r9d
   30062:	0f 85 c9 36 00 00    	jne    33731 <sg_raster_triangle_tile_prepared+0x5681>
   30068:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   3006d:	8b 90 08 01 00 00    	mov    0x108(%rax),%edx
   30073:	85 d2                	test   %edx,%edx
   30075:	0f 84 c1 00 00 00    	je     3013c <sg_raster_triangle_tile_prepared+0x208c>
   3007b:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
   30080:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
   30086:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
   3008b:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
   30090:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
   30095:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
   3009a:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
   3009f:	41 0f 28 c2          	movaps %xmm10,%xmm0
   300a3:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 300aa <sg_raster_triangle_tile_prepared+0x1ffa>
   300aa:	3d 00 08 00 00       	cmp    $0x800,%eax
   300af:	0f 84 68 3c 00 00    	je     33d1d <sg_raster_triangle_tile_prepared+0x5c6d>
   300b5:	3d 01 08 00 00       	cmp    $0x801,%eax
   300ba:	0f 84 bb 3b 00 00    	je     33c7b <sg_raster_triangle_tile_prepared+0x5bcb>
   300c0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   300c5:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   300ca:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
   300d1:	00 
   300d2:	0f 28 ef             	movaps %xmm7,%xmm5
   300d5:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
   300dc:	00 
   300dd:	41 0f 2f e8          	comiss %xmm8,%xmm5
   300e1:	0f 85 c1 46 00 00    	jne    347a8 <sg_raster_triangle_tile_prepared+0x66f8>
   300e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   300ee:	00 00 
   300f0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   300f5:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
   300fc:	00 
   300fd:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   30101:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   30105:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
   3010c:	00 
   3010d:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   30111:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
   30118:	00 
   30119:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   30120:	00 00 
   30122:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   30126:	f3 0f 58 dd          	addss  %xmm5,%xmm3
   3012a:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   30131:	00 00 
   30133:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   3013a:	00 00 
   3013c:	0f 28 c6             	movaps %xmm6,%xmm0
   3013f:	8b 94 24 c4 00 00 00 	mov    0xc4(%rsp),%edx
   30146:	8b 74 24 38          	mov    0x38(%rsp),%esi
   3014a:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   3014f:	e8 00 00 00 00       	call   30154 <sg_raster_triangle_tile_prepared+0x20a4>
   30154:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   3015b:	ff ff ff 
   3015e:	e9 5d f0 ff ff       	jmp    2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   30163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   30168:	c7 84 24 70 01 00 00 	movl   $0x0,0x170(%rsp)
   3016f:	00 00 00 00 
   30173:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 3017b <sg_raster_triangle_tile_prepared+0x20cb>
   3017a:	00 
   3017b:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   30182:	00 
   30183:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   3018a:	00 
   3018b:	48 8b ac 24 a0 00 00 	mov    0xa0(%rsp),%rbp
   30192:	00 
   30193:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30197:	41 0f 5f c0          	maxps  %xmm8,%xmm0
   3019b:	f3 0f 10 71 20       	movss  0x20(%rcx),%xmm6
   301a0:	f3 0f 10 79 24       	movss  0x24(%rcx),%xmm7
   301a5:	f3 44 0f 10 41 28    	movss  0x28(%rcx),%xmm8
   301ab:	f3 44 0f 10 51 2c    	movss  0x2c(%rcx),%xmm10
   301b1:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
   301b5:	0f 59 f3             	mulps  %xmm3,%xmm6
   301b8:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
   301bc:	4c 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%r9
   301c3:	00 
   301c4:	44 0f 53 c8          	rcpps  %xmm0,%xmm9
   301c8:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
   301cd:	45 0f c6 d2 00       	shufps $0x0,%xmm10,%xmm10
   301d2:	0f 59 fb             	mulps  %xmm3,%xmm7
   301d5:	41 8b 81 64 01 00 00 	mov    0x164(%r9),%eax
   301dc:	44 0f 59 c3          	mulps  %xmm3,%xmm8
   301e0:	44 0f 59 d3          	mulps  %xmm3,%xmm10
   301e4:	8d 50 ff             	lea    -0x1(%rax),%edx
   301e7:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   301eb:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   301ef:	45 0f 58 c9          	addps  %xmm9,%xmm9
   301f3:	44 0f 5c c8          	subps  %xmm0,%xmm9
   301f7:	f3 0f 10 46 20       	movss  0x20(%rsi),%xmm0
   301fc:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30200:	0f 59 c2             	mulps  %xmm2,%xmm0
   30203:	0f 58 f0             	addps  %xmm0,%xmm6
   30206:	f3 0f 10 45 20       	movss  0x20(%rbp),%xmm0
   3020b:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   3020f:	0f 59 c4             	mulps  %xmm4,%xmm0
   30212:	0f 58 f0             	addps  %xmm0,%xmm6
   30215:	f3 0f 10 46 24       	movss  0x24(%rsi),%xmm0
   3021a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   3021e:	0f 59 c2             	mulps  %xmm2,%xmm0
   30221:	41 0f 59 f1          	mulps  %xmm9,%xmm6
   30225:	0f 58 f8             	addps  %xmm0,%xmm7
   30228:	f3 0f 10 45 24       	movss  0x24(%rbp),%xmm0
   3022d:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30231:	0f 59 c4             	mulps  %xmm4,%xmm0
   30234:	0f 58 f8             	addps  %xmm0,%xmm7
   30237:	f3 0f 10 46 28       	movss  0x28(%rsi),%xmm0
   3023c:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30240:	0f 59 c2             	mulps  %xmm2,%xmm0
   30243:	41 0f 59 f9          	mulps  %xmm9,%xmm7
   30247:	44 0f 58 c0          	addps  %xmm0,%xmm8
   3024b:	f3 0f 10 45 28       	movss  0x28(%rbp),%xmm0
   30250:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30254:	0f 59 c4             	mulps  %xmm4,%xmm0
   30257:	44 0f 58 c0          	addps  %xmm0,%xmm8
   3025b:	f3 0f 10 46 2c       	movss  0x2c(%rsi),%xmm0
   30260:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30264:	0f 59 c2             	mulps  %xmm2,%xmm0
   30267:	45 0f 59 c1          	mulps  %xmm9,%xmm8
   3026b:	44 0f 58 d0          	addps  %xmm0,%xmm10
   3026f:	f3 0f 10 45 2c       	movss  0x2c(%rbp),%xmm0
   30274:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30278:	0f 59 c4             	mulps  %xmm4,%xmm0
   3027b:	44 0f 58 d0          	addps  %xmm0,%xmm10
   3027f:	45 0f 59 d1          	mulps  %xmm9,%xmm10
   30283:	83 fa 01             	cmp    $0x1,%edx
   30286:	0f 86 c4 14 00 00    	jbe    31750 <sg_raster_triangle_tile_prepared+0x36a0>
   3028c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   30291:	44 8b 98 08 01 00 00 	mov    0x108(%rax),%r11d
   30298:	45 85 db             	test   %r11d,%r11d
   3029b:	0f 84 8b 01 00 00    	je     3042c <sg_raster_triangle_tile_prepared+0x237c>
   302a1:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
   302a8:	00 
   302a9:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
   302af:	f3 0f 10 86 98 00 00 	movss  0x98(%rsi),%xmm0
   302b6:	00 
   302b7:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   302be:	00 
   302bf:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   302c3:	0f 59 c3             	mulps  %xmm3,%xmm0
   302c6:	f3 0f 10 9e 98 00 00 	movss  0x98(%rsi),%xmm3
   302cd:	00 
   302ce:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
   302d5:	00 
   302d6:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   302da:	0f 59 d3             	mulps  %xmm3,%xmm2
   302dd:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 302e5 <sg_raster_triangle_tile_prepared+0x2235>
   302e4:	00 
   302e5:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   302e9:	0f 58 c2             	addps  %xmm2,%xmm0
   302ec:	f3 0f 10 96 98 00 00 	movss  0x98(%rsi),%xmm2
   302f3:	00 
   302f4:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   302f8:	0f 59 d4             	mulps  %xmm4,%xmm2
   302fb:	0f 58 c2             	addps  %xmm2,%xmm0
   302fe:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   30302:	0f 28 d0             	movaps %xmm0,%xmm2
   30305:	0f 57 d3             	xorps  %xmm3,%xmm2
   30308:	0f 5f c2             	maxps  %xmm2,%xmm0
   3030b:	3d 01 26 00 00       	cmp    $0x2601,%eax
   30310:	0f 84 f3 1b 00 00    	je     31f09 <sg_raster_triangle_tile_prepared+0x3e59>
   30316:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   3031b:	44 89 84 24 a0 01 00 	mov    %r8d,0x1a0(%rsp)
   30322:	00 
   30323:	89 bc 24 80 01 00 00 	mov    %edi,0x180(%rsp)
   3032a:	f3 0f 10 91 10 01 00 	movss  0x110(%rcx),%xmm2
   30331:	00 
   30332:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
   30339:	00 
   3033a:	44 0f 29 94 24 e0 01 	movaps %xmm10,0x1e0(%rsp)
   30341:	00 00 
   30343:	44 0f 29 84 24 d0 01 	movaps %xmm8,0x1d0(%rsp)
   3034a:	00 00 
   3034c:	0f 29 bc 24 c0 01 00 	movaps %xmm7,0x1c0(%rsp)
   30353:	00 
   30354:	0f 29 b4 24 b0 01 00 	movaps %xmm6,0x1b0(%rsp)
   3035b:	00 
   3035c:	0f 29 8c 24 60 01 00 	movaps %xmm1,0x160(%rsp)
   30363:	00 
   30364:	3d 00 08 00 00       	cmp    $0x800,%eax
   30369:	0f 84 11 31 00 00    	je     33480 <sg_raster_triangle_tile_prepared+0x53d0>
   3036f:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30373:	0f 59 d0             	mulps  %xmm0,%xmm2
   30376:	0f 59 d2             	mulps  %xmm2,%xmm2
   30379:	0f 57 d3             	xorps  %xmm3,%xmm2
   3037c:	0f 28 c2             	movaps %xmm2,%xmm0
   3037f:	e8 00 00 00 00       	call   30384 <sg_raster_triangle_tile_prepared+0x22d4>
   30384:	8b bc 24 80 01 00 00 	mov    0x180(%rsp),%edi
   3038b:	66 0f 6f 8c 24 60 01 	movdqa 0x160(%rsp),%xmm1
   30392:	00 00 
   30394:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   3039b:	ff ff ff 
   3039e:	44 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%r8d
   303a5:	00 
   303a6:	0f 28 d0             	movaps %xmm0,%xmm2
   303a9:	0f 28 b4 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm6
   303b0:	00 
   303b1:	0f 28 bc 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm7
   303b8:	00 
   303b9:	0f 28 ac 24 f0 01 00 	movaps 0x1f0(%rsp),%xmm5
   303c0:	00 
   303c1:	44 0f 28 84 24 d0 01 	movaps 0x1d0(%rsp),%xmm8
   303c8:	00 00 
   303ca:	44 0f 28 94 24 e0 01 	movaps 0x1e0(%rsp),%xmm10
   303d1:	00 00 
   303d3:	0f 5d d5             	minps  %xmm5,%xmm2
   303d6:	66 0f ef c0          	pxor   %xmm0,%xmm0
   303da:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   303df:	0f 28 dd             	movaps %xmm5,%xmm3
   303e2:	0f 5f c2             	maxps  %xmm2,%xmm0
   303e5:	f3 0f 10 90 1c 01 00 	movss  0x11c(%rax),%xmm2
   303ec:	00 
   303ed:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   303f1:	0f 5c d8             	subps  %xmm0,%xmm3
   303f4:	0f 59 f0             	mulps  %xmm0,%xmm6
   303f7:	0f 59 f8             	mulps  %xmm0,%xmm7
   303fa:	41 0f 59 c0          	mulps  %xmm8,%xmm0
   303fe:	0f 59 d3             	mulps  %xmm3,%xmm2
   30401:	0f 58 f2             	addps  %xmm2,%xmm6
   30404:	f3 0f 10 90 20 01 00 	movss  0x120(%rax),%xmm2
   3040b:	00 
   3040c:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30410:	0f 59 d3             	mulps  %xmm3,%xmm2
   30413:	0f 58 fa             	addps  %xmm2,%xmm7
   30416:	f3 0f 10 90 24 01 00 	movss  0x124(%rax),%xmm2
   3041d:	00 
   3041e:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30422:	0f 59 d3             	mulps  %xmm3,%xmm2
   30425:	0f 58 d0             	addps  %xmm0,%xmm2
   30428:	44 0f 28 c2          	movaps %xmm2,%xmm8
   3042c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   30431:	44 8b 88 9c 00 00 00 	mov    0x9c(%rax),%r9d
   30438:	45 85 c9             	test   %r9d,%r9d
   3043b:	0f 84 6f 02 00 00    	je     306b0 <sg_raster_triangle_tile_prepared+0x2600>
   30441:	f3 0f 10 80 a4 00 00 	movss  0xa4(%rax),%xmm0
   30448:	00 
   30449:	8b 80 a0 00 00 00    	mov    0xa0(%rax),%eax
   3044f:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
   30456:	2d 00 02 00 00       	sub    $0x200,%eax
   3045b:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   3045f:	83 f8 06             	cmp    $0x6,%eax
   30462:	0f 87 48 02 00 00    	ja     306b0 <sg_raster_triangle_tile_prepared+0x2600>
   30468:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 3046f <sg_raster_triangle_tile_prepared+0x23bf>
   3046f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   30473:	48 01 d0             	add    %rdx,%rax
   30476:	ff e0                	jmp    *%rax
   30478:	66 0f ef c0          	pxor   %xmm0,%xmm0
   3047c:	66 0f ef c9          	pxor   %xmm1,%xmm1
   30480:	44 0f 50 e0          	movmskps %xmm0,%r12d
   30484:	41 83 e4 0f          	and    $0xf,%r12d
   30488:	0f 84 32 ed ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   3048e:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   30493:	8b 70 74             	mov    0x74(%rax),%esi
   30496:	85 f6                	test   %esi,%esi
   30498:	0f 84 99 00 00 00    	je     30537 <sg_raster_triangle_tile_prepared+0x2487>
   3049e:	48 89 c6             	mov    %rax,%rsi
   304a1:	8b 40 64             	mov    0x64(%rax),%eax
   304a4:	8b 56 68             	mov    0x68(%rsi),%edx
   304a7:	44 8b 5e 70          	mov    0x70(%rsi),%r11d
   304ab:	8b 4e 6c             	mov    0x6c(%rsi),%ecx
   304ae:	41 01 d3             	add    %edx,%r11d
   304b1:	44 89 de             	mov    %r11d,%esi
   304b4:	44 8b 1c 24          	mov    (%rsp),%r11d
   304b8:	01 c1                	add    %eax,%ecx
   304ba:	44 39 d8             	cmp    %r11d,%eax
   304bd:	0f 8f 8d 1a 00 00    	jg     31f50 <sg_raster_triangle_tile_prepared+0x3ea0>
   304c3:	44 39 d9             	cmp    %r11d,%ecx
   304c6:	0f 8e 84 1a 00 00    	jle    31f50 <sg_raster_triangle_tile_prepared+0x3ea0>
   304cc:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
   304d3:	39 c6                	cmp    %eax,%esi
   304d5:	0f 8e bc 36 00 00    	jle    33b97 <sg_raster_triangle_tile_prepared+0x5ae7>
   304db:	39 c2                	cmp    %eax,%edx
   304dd:	0f 8f b4 36 00 00    	jg     33b97 <sg_raster_triangle_tile_prepared+0x5ae7>
   304e3:	31 c0                	xor    %eax,%eax
   304e5:	39 4c 24 38          	cmp    %ecx,0x38(%rsp)
   304e9:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
   304ef:	0f 9c c0             	setl   %al
   304f2:	66 41 0f 6e c1       	movd   %r9d,%xmm0
   304f7:	f7 d8                	neg    %eax
   304f9:	44 8b 8c 24 c4 00 00 	mov    0xc4(%rsp),%r9d
   30500:	00 
   30501:	41 39 d1             	cmp    %edx,%r9d
   30504:	7c 09                	jl     3050f <sg_raster_triangle_tile_prepared+0x245f>
   30506:	41 39 f1             	cmp    %esi,%r9d
   30509:	0f 8c 2f 57 00 00    	jl     35c3e <sg_raster_triangle_tile_prepared+0x7b8e>
   3050f:	66 0f ef d2          	pxor   %xmm2,%xmm2
   30513:	31 d2                	xor    %edx,%edx
   30515:	66 0f 3a 22 d2 01    	pinsrd $0x1,%edx,%xmm2
   3051b:	66 0f 3a 22 c0 01    	pinsrd $0x1,%eax,%xmm0
   30521:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   30525:	66 0f db c8          	pand   %xmm0,%xmm1
   30529:	44 0f 50 e1          	movmskps %xmm1,%r12d
   3052d:	41 83 e4 0f          	and    $0xf,%r12d
   30531:	0f 84 89 ec ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   30537:	85 db                	test   %ebx,%ebx
   30539:	0f 85 71 16 00 00    	jne    31bb0 <sg_raster_triangle_tile_prepared+0x3b00>
   3053f:	44 89 e1             	mov    %r12d,%ecx
   30542:	44 89 e5             	mov    %r12d,%ebp
   30545:	45 89 e3             	mov    %r12d,%r11d
   30548:	83 e1 01             	and    $0x1,%ecx
   3054b:	83 e5 02             	and    $0x2,%ebp
   3054e:	41 83 e3 04          	and    $0x4,%r11d
   30552:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   30557:	8b 98 90 00 00 00    	mov    0x90(%rax),%ebx
   3055d:	85 db                	test   %ebx,%ebx
   3055f:	0f 84 cb 16 00 00    	je     31c30 <sg_raster_triangle_tile_prepared+0x3b80>
   30565:	8b 80 94 00 00 00    	mov    0x94(%rax),%eax
   3056b:	83 f8 01             	cmp    $0x1,%eax
   3056e:	76 0b                	jbe    3057b <sg_raster_triangle_tile_prepared+0x24cb>
   30570:	8d 90 fe fc ff ff    	lea    -0x302(%rax),%edx
   30576:	83 fa 03             	cmp    $0x3,%edx
   30579:	77 23                	ja     3059e <sg_raster_triangle_tile_prepared+0x24ee>
   3057b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   30580:	8b 9e 98 00 00 00    	mov    0x98(%rsi),%ebx
   30586:	83 fb 01             	cmp    $0x1,%ebx
   30589:	0f 86 73 01 00 00    	jbe    30702 <sg_raster_triangle_tile_prepared+0x2652>
   3058f:	8d 93 fe fc ff ff    	lea    -0x302(%rbx),%edx
   30595:	83 fa 03             	cmp    $0x3,%edx
   30598:	0f 86 64 01 00 00    	jbe    30702 <sg_raster_triangle_tile_prepared+0x2652>
   3059e:	48 8b 9c 24 50 01 00 	mov    0x150(%rsp),%rbx
   305a5:	00 
   305a6:	4c 8b ac 24 58 01 00 	mov    0x158(%rsp),%r13
   305ad:	00 
   305ae:	85 c9                	test   %ecx,%ecx
   305b0:	0f 85 33 34 00 00    	jne    339e9 <sg_raster_triangle_tile_prepared+0x5939>
   305b6:	85 ed                	test   %ebp,%ebp
   305b8:	0f 85 b7 34 00 00    	jne    33a75 <sg_raster_triangle_tile_prepared+0x59c5>
   305be:	45 85 db             	test   %r11d,%r11d
   305c1:	0f 84 96 00 00 00    	je     3065d <sg_raster_triangle_tile_prepared+0x25ad>
   305c7:	41 0f 28 e8          	movaps %xmm8,%xmm5
   305cb:	41 0f 28 e2          	movaps %xmm10,%xmm4
   305cf:	8b 34 24             	mov    (%rsp),%esi
   305d2:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   305d7:	41 0f 15 e8          	unpckhps %xmm8,%xmm5
   305db:	8b 94 24 c4 00 00 00 	mov    0xc4(%rsp),%edx
   305e2:	41 0f 15 e2          	unpckhps %xmm10,%xmm4
   305e6:	66 41 0f 6e c5       	movd   %r13d,%xmm0
   305eb:	0f 28 dd             	movaps %xmm5,%xmm3
   305ee:	0f 28 ef             	movaps %xmm7,%xmm5
   305f1:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
   305f8:	00 00 
   305fa:	0f 15 ef             	unpckhps %xmm7,%xmm5
   305fd:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
   30604:	00 
   30605:	0f 28 d5             	movaps %xmm5,%xmm2
   30608:	0f 28 ee             	movaps %xmm6,%xmm5
   3060b:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
   30612:	00 00 
   30614:	0f 15 ee             	unpckhps %xmm6,%xmm5
   30617:	0f 29 b4 24 50 01 00 	movaps %xmm6,0x150(%rsp)
   3061e:	00 
   3061f:	0f 28 cd             	movaps %xmm5,%xmm1
   30622:	e8 00 00 00 00       	call   30627 <sg_raster_triangle_tile_prepared+0x2577>
   30627:	0f 28 b4 24 50 01 00 	movaps 0x150(%rsp),%xmm6
   3062e:	00 
   3062f:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
   30636:	00 
   30637:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   3063e:	ff ff ff 
   30641:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
   30648:	00 00 
   3064a:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
   30651:	00 00 
   30653:	41 83 e4 08          	and    $0x8,%r12d
   30657:	0f 84 63 eb ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   3065d:	66 49 0f 6e e5       	movq   %r13,%xmm4
   30662:	45 0f c6 d2 ff       	shufps $0xff,%xmm10,%xmm10
   30667:	0f c6 ff ff          	shufps $0xff,%xmm7,%xmm7
   3066b:	0f c6 f6 ff          	shufps $0xff,%xmm6,%xmm6
   3066f:	0f c6 e4 55          	shufps $0x55,%xmm4,%xmm4
   30673:	45 0f c6 c0 ff       	shufps $0xff,%xmm8,%xmm8
   30678:	66 0f 6f c4          	movdqa %xmm4,%xmm0
   3067c:	41 0f 28 d8          	movaps %xmm8,%xmm3
   30680:	41 0f 28 e2          	movaps %xmm10,%xmm4
   30684:	0f 28 d7             	movaps %xmm7,%xmm2
   30687:	0f 28 ce             	movaps %xmm6,%xmm1
   3068a:	e9 b0 fa ff ff       	jmp    3013f <sg_raster_triangle_tile_prepared+0x208f>
   3068f:	41 0f c2 c2 02       	cmpleps %xmm10,%xmm0
   30694:	66 0f db c8          	pand   %xmm0,%xmm1
   30698:	0f 28 c1             	movaps %xmm1,%xmm0
   3069b:	e9 e0 fd ff ff       	jmp    30480 <sg_raster_triangle_tile_prepared+0x23d0>
   306a0:	41 0f c2 c2 04       	cmpneqps %xmm10,%xmm0
   306a5:	66 0f db c8          	pand   %xmm0,%xmm1
   306a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   306b0:	0f 28 c1             	movaps %xmm1,%xmm0
   306b3:	e9 c8 fd ff ff       	jmp    30480 <sg_raster_triangle_tile_prepared+0x23d0>
   306b8:	41 0f c2 c2 01       	cmpltps %xmm10,%xmm0
   306bd:	66 0f db c8          	pand   %xmm0,%xmm1
   306c1:	0f 28 c1             	movaps %xmm1,%xmm0
   306c4:	e9 b7 fd ff ff       	jmp    30480 <sg_raster_triangle_tile_prepared+0x23d0>
   306c9:	41 0f 28 d2          	movaps %xmm10,%xmm2
   306cd:	0f c2 d0 02          	cmpleps %xmm0,%xmm2
   306d1:	66 0f db ca          	pand   %xmm2,%xmm1
   306d5:	0f 28 c1             	movaps %xmm1,%xmm0
   306d8:	e9 a3 fd ff ff       	jmp    30480 <sg_raster_triangle_tile_prepared+0x23d0>
   306dd:	41 0f c2 c2 00       	cmpeqps %xmm10,%xmm0
   306e2:	66 0f db c8          	pand   %xmm0,%xmm1
   306e6:	0f 28 c1             	movaps %xmm1,%xmm0
   306e9:	e9 92 fd ff ff       	jmp    30480 <sg_raster_triangle_tile_prepared+0x23d0>
   306ee:	41 0f 28 d2          	movaps %xmm10,%xmm2
   306f2:	0f c2 d0 01          	cmpltps %xmm0,%xmm2
   306f6:	66 0f db ca          	pand   %xmm2,%xmm1
   306fa:	0f 28 c1             	movaps %xmm1,%xmm0
   306fd:	e9 7e fd ff ff       	jmp    30480 <sg_raster_triangle_tile_prepared+0x23d0>
   30702:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   30707:	66 0f ef c9          	pxor   %xmm1,%xmm1
   3070b:	48 8b 56 08          	mov    0x8(%rsi),%rdx
   3070f:	42 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%esi
   30716:	00 
   30717:	48 63 f6             	movslq %esi,%rsi
   3071a:	f3 0f 7e 14 32       	movq   (%rdx,%rsi,1),%xmm2
   3071f:	4c 8d 04 32          	lea    (%rdx,%rsi,1),%r8
   30723:	39 bc 24 c4 00 00 00 	cmp    %edi,0xc4(%rsp)
   3072a:	0f 8c b3 40 00 00    	jl     347e3 <sg_raster_triangle_tile_prepared+0x6733>
   30730:	f3 44 0f 10 0d 00 00 	movss  0x0(%rip),%xmm9        # 30739 <sg_raster_triangle_tile_prepared+0x2689>
   30737:	00 00 
   30739:	66 0f 6f c2          	movdqa %xmm2,%xmm0
   3073d:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   30741:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   30745:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
   3074a:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 30753 <sg_raster_triangle_tile_prepared+0x26a3>
   30751:	00 00 
   30753:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   30756:	0f 28 e1             	movaps %xmm1,%xmm4
   30759:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   3075d:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 30766 <sg_raster_triangle_tile_prepared+0x26b6>
   30764:	00 00 
   30766:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   30769:	41 0f 59 e1          	mulps  %xmm9,%xmm4
   3076d:	0f 28 d9             	movaps %xmm1,%xmm3
   30770:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   30774:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 3077d <sg_raster_triangle_tile_prepared+0x26cd>
   3077b:	00 00 
   3077d:	66 0f 38 00 05 00 00 	pshufb 0x0(%rip),%xmm0        # 30786 <sg_raster_triangle_tile_prepared+0x26d6>
   30784:	00 00 
   30786:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   30789:	41 0f 59 c9          	mulps  %xmm9,%xmm1
   3078d:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
   30790:	41 0f 59 d9          	mulps  %xmm9,%xmm3
   30794:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   30798:	44 0f 28 d9          	movaps %xmm1,%xmm11
   3079c:	3d 03 03 00 00       	cmp    $0x303,%eax
   307a1:	0f 84 22 5a 00 00    	je     361c9 <sg_raster_triangle_tile_prepared+0x8119>
   307a7:	0f 86 15 4e 00 00    	jbe    355c2 <sg_raster_triangle_tile_prepared+0x7512>
   307ad:	3d 04 03 00 00       	cmp    $0x304,%eax
   307b2:	0f 84 87 59 00 00    	je     3613f <sg_raster_triangle_tile_prepared+0x808f>
   307b8:	44 0f 28 e5          	movaps %xmm5,%xmm12
   307bc:	44 0f 5c e0          	subps  %xmm0,%xmm12
   307c0:	41 0f 59 f4          	mulps  %xmm12,%xmm6
   307c4:	41 0f 59 fc          	mulps  %xmm12,%xmm7
   307c8:	45 0f 59 c4          	mulps  %xmm12,%xmm8
   307cc:	45 0f 59 e2          	mulps  %xmm10,%xmm12
   307d0:	81 fb 03 03 00 00    	cmp    $0x303,%ebx
   307d6:	0f 84 30 59 00 00    	je     3610c <sg_raster_triangle_tile_prepared+0x805c>
   307dc:	0f 87 0b 56 00 00    	ja     35ded <sg_raster_triangle_tile_prepared+0x7d3d>
   307e2:	85 db                	test   %ebx,%ebx
   307e4:	0f 84 fc 59 00 00    	je     361e6 <sg_raster_triangle_tile_prepared+0x8136>
   307ea:	81 fb 02 03 00 00    	cmp    $0x302,%ebx
   307f0:	0f 85 ff 58 00 00    	jne    360f5 <sg_raster_triangle_tile_prepared+0x8045>
   307f6:	41 0f 59 c2          	mulps  %xmm10,%xmm0
   307fa:	41 0f 28 cb          	movaps %xmm11,%xmm1
   307fe:	41 0f 59 e2          	mulps  %xmm10,%xmm4
   30802:	41 0f 59 da          	mulps  %xmm10,%xmm3
   30806:	41 0f 59 ca          	mulps  %xmm10,%xmm1
   3080a:	41 0f 58 c4          	addps  %xmm12,%xmm0
   3080e:	0f 58 f4             	addps  %xmm4,%xmm6
   30811:	0f 58 fb             	addps  %xmm3,%xmm7
   30814:	44 0f 58 c1          	addps  %xmm1,%xmm8
   30818:	44 0f 28 d0          	movaps %xmm0,%xmm10
   3081c:	e9 26 14 00 00       	jmp    31c47 <sg_raster_triangle_tile_prepared+0x3b97>
   30821:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   30828:	d1 ea                	shr    $1,%edx
   3082a:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   3082f:	f7 da                	neg    %edx
   30831:	66 0f 6e cf          	movd   %edi,%xmm1
   30835:	c1 e8 02             	shr    $0x2,%eax
   30838:	f7 d8                	neg    %eax
   3083a:	66 0f 6e f8          	movd   %eax,%xmm7
   3083e:	44 89 e0             	mov    %r12d,%eax
   30841:	c1 e8 03             	shr    $0x3,%eax
   30844:	83 e0 01             	and    $0x1,%eax
   30847:	f7 d8                	neg    %eax
   30849:	e9 c2 f3 ff ff       	jmp    2fc10 <sg_raster_triangle_tile_prepared+0x1b60>
   3084e:	bf 01 00 00 00       	mov    $0x1,%edi
   30853:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
   30858:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
   3085f:	00 
   30860:	c7 84 24 50 01 00 00 	movl   $0x0,0x150(%rsp)
   30867:	00 00 00 00 
   3086b:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
   30870:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
   30875:	48 8d 14 06          	lea    (%rsi,%rax,1),%rdx
   30879:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
   3087e:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
   30882:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
   30889:	00 
   3088a:	4c 8d 1c 32          	lea    (%rdx,%rsi,1),%r11
   3088e:	49 8d 34 19          	lea    (%r9,%rbx,1),%rsi
   30892:	48 01 d8             	add    %rbx,%rax
   30895:	49 01 c1             	add    %rax,%r9
   30898:	85 ff                	test   %edi,%edi
   3089a:	0f 84 10 01 00 00    	je     309b0 <sg_raster_triangle_tile_prepared+0x2900>
   308a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
   308a4:	66 0f ef c9          	pxor   %xmm1,%xmm1
   308a8:	f3 0f 10 ac 24 f0 00 	movss  0xf0(%rsp),%xmm5
   308af:	00 00 
   308b1:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
   308b8:	00 
   308b9:	f3 48 0f 2a 44 24 08 	cvtsi2ssq 0x8(%rsp),%xmm0
   308c0:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   308c5:	f3 48 0f 2a 4c 24 18 	cvtsi2ssq 0x18(%rsp),%xmm1
   308cc:	f3 0f 10 57 18       	movss  0x18(%rdi),%xmm2
   308d1:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
   308d8:	00 
   308d9:	44 8b 83 84 00 00 00 	mov    0x84(%rbx),%r8d
   308e0:	f3 0f 10 5f 18       	movss  0x18(%rdi),%xmm3
   308e5:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   308ec:	00 
   308ed:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
   308f1:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
   308f5:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   308f9:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   308fd:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
   30901:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 30909 <sg_raster_triangle_tile_prepared+0x2859>
   30908:	00 
   30909:	f3 0f 5c c8          	subss  %xmm0,%xmm1
   3090d:	f3 0f 59 4f 18       	mulss  0x18(%rdi),%xmm1
   30912:	f3 0f 10 84 24 f4 00 	movss  0xf4(%rsp),%xmm0
   30919:	00 00 
   3091b:	f3 0f 58 d3          	addss  %xmm3,%xmm2
   3091f:	f3 0f 58 c1          	addss  %xmm1,%xmm0
   30923:	f3 0f 58 d0          	addss  %xmm0,%xmm2
   30927:	f3 0f 11 94 24 50 01 	movss  %xmm2,0x150(%rsp)
   3092e:	00 00 
   30930:	45 85 c0             	test   %r8d,%r8d
   30933:	74 7b                	je     309b0 <sg_raster_triangle_tile_prepared+0x2900>
   30935:	8b bb c0 00 00 00    	mov    0xc0(%rbx),%edi
   3093b:	85 ff                	test   %edi,%edi
   3093d:	75 71                	jne    309b0 <sg_raster_triangle_tile_prepared+0x2900>
   3093f:	8b bc 24 c0 00 00 00 	mov    0xc0(%rsp),%edi
   30946:	0f af 3b             	imul   (%rbx),%edi
   30949:	44 8b 04 24          	mov    (%rsp),%r8d
   3094d:	44 01 c7             	add    %r8d,%edi
   30950:	4c 8b 43 10          	mov    0x10(%rbx),%r8
   30954:	48 63 ff             	movslq %edi,%rdi
   30957:	f3 41 0f 10 04 b8    	movss  (%r8,%rdi,4),%xmm0
   3095d:	8b bb 88 00 00 00    	mov    0x88(%rbx),%edi
   30963:	89 bc 24 60 01 00 00 	mov    %edi,0x160(%rsp)
   3096a:	81 ef 00 02 00 00    	sub    $0x200,%edi
   30970:	83 ff 07             	cmp    $0x7,%edi
   30973:	0f 87 5a 52 00 00    	ja     35bd3 <sg_raster_triangle_tile_prepared+0x7b23>
   30979:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 30980 <sg_raster_triangle_tile_prepared+0x28d0>
   30980:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
   30984:	4c 01 c7             	add    %r8,%rdi
   30987:	ff e7                	jmp    *%rdi
   30989:	f3 0f 10 a4 24 50 01 	movss  0x150(%rsp),%xmm4
   30990:	00 00 
   30992:	31 ff                	xor    %edi,%edi
   30994:	0f 2f e0             	comiss %xmm0,%xmm4
   30997:	40 0f 93 c7          	setae  %dil
   3099b:	85 ff                	test   %edi,%edi
   3099d:	75 11                	jne    309b0 <sg_raster_triangle_tile_prepared+0x2900>
   3099f:	41 83 e4 fe          	and    $0xfffffffe,%r12d
   309a3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   309aa:	00 00 00 00 
   309ae:	66 90                	xchg   %ax,%ax
   309b0:	41 f6 c4 02          	test   $0x2,%r12b
   309b4:	0f 84 ee 14 00 00    	je     31ea8 <sg_raster_triangle_tile_prepared+0x3df8>
   309ba:	66 0f ef e4          	pxor   %xmm4,%xmm4
   309be:	66 0f ef db          	pxor   %xmm3,%xmm3
   309c2:	f3 0f 10 ac 24 f0 00 	movss  0xf0(%rsp),%xmm5
   309c9:	00 00 
   309cb:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
   309d2:	00 
   309d3:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
   309d8:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   309dd:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
   309e2:	0f 28 c5             	movaps %xmm5,%xmm0
   309e5:	f3 0f 10 57 18       	movss  0x18(%rdi),%xmm2
   309ea:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
   309f1:	00 
   309f2:	44 8b ab 84 00 00 00 	mov    0x84(%rbx),%r13d
   309f9:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
   309fd:	f3 0f 59 eb          	mulss  %xmm3,%xmm5
   30a01:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   30a05:	0f 28 cd             	movaps %xmm5,%xmm1
   30a08:	f3 0f 59 6f 18       	mulss  0x18(%rdi),%xmm5
   30a0d:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   30a11:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   30a18:	00 
   30a19:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 30a21 <sg_raster_triangle_tile_prepared+0x2971>
   30a20:	00 
   30a21:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   30a25:	f3 0f 59 47 18       	mulss  0x18(%rdi),%xmm0
   30a2a:	f3 0f 58 84 24 f4 00 	addss  0xf4(%rsp),%xmm0
   30a31:	00 00 
   30a33:	f3 0f 58 d5          	addss  %xmm5,%xmm2
   30a37:	0f 28 f2             	movaps %xmm2,%xmm6
   30a3a:	f3 0f 58 f0          	addss  %xmm0,%xmm6
   30a3e:	45 85 ed             	test   %r13d,%r13d
   30a41:	74 6d                	je     30ab0 <sg_raster_triangle_tile_prepared+0x2a00>
   30a43:	8b ab c0 00 00 00    	mov    0xc0(%rbx),%ebp
   30a49:	85 ed                	test   %ebp,%ebp
   30a4b:	75 63                	jne    30ab0 <sg_raster_triangle_tile_prepared+0x2a00>
   30a4d:	8b bc 24 c0 00 00 00 	mov    0xc0(%rsp),%edi
   30a54:	0f af 3b             	imul   (%rbx),%edi
   30a57:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   30a5c:	44 01 c7             	add    %r8d,%edi
   30a5f:	4c 8b 43 10          	mov    0x10(%rbx),%r8
   30a63:	48 63 ff             	movslq %edi,%rdi
   30a66:	f3 41 0f 10 04 b8    	movss  (%r8,%rdi,4),%xmm0
   30a6c:	8b bb 88 00 00 00    	mov    0x88(%rbx),%edi
   30a72:	89 bc 24 60 01 00 00 	mov    %edi,0x160(%rsp)
   30a79:	81 ef 00 02 00 00    	sub    $0x200,%edi
   30a7f:	83 ff 07             	cmp    $0x7,%edi
   30a82:	0f 87 78 51 00 00    	ja     35c00 <sg_raster_triangle_tile_prepared+0x7b50>
   30a88:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 30a8f <sg_raster_triangle_tile_prepared+0x29df>
   30a8f:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
   30a93:	4c 01 c7             	add    %r8,%rdi
   30a96:	ff e7                	jmp    *%rdi
   30a98:	31 ff                	xor    %edi,%edi
   30a9a:	0f 2f f0             	comiss %xmm0,%xmm6
   30a9d:	40 0f 93 c7          	setae  %dil
   30aa1:	85 ff                	test   %edi,%edi
   30aa3:	0f 84 87 0c 00 00    	je     31730 <sg_raster_triangle_tile_prepared+0x3680>
   30aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   30ab0:	41 f6 c4 04          	test   $0x4,%r12b
   30ab4:	0f 84 1d 19 00 00    	je     323d7 <sg_raster_triangle_tile_prepared+0x4327>
   30aba:	66 0f ef d2          	pxor   %xmm2,%xmm2
   30abe:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
   30ac3:	f3 0f 10 a4 24 f0 00 	movss  0xf0(%rsp),%xmm4
   30aca:	00 00 
   30acc:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
   30ad3:	00 
   30ad4:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
   30ad9:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 30ae1 <sg_raster_triangle_tile_prepared+0x2a31>
   30ae0:	00 
   30ae1:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   30ae6:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
   30aeb:	0f 28 c4             	movaps %xmm4,%xmm0
   30aee:	f3 0f 10 5f 18       	movss  0x18(%rdi),%xmm3
   30af3:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
   30afa:	00 
   30afb:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   30aff:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
   30b04:	44 0f 28 c0          	movaps %xmm0,%xmm8
   30b08:	f3 0f 59 c3          	mulss  %xmm3,%xmm0
   30b0c:	0f 28 fc             	movaps %xmm4,%xmm7
   30b0f:	f3 0f 10 67 18       	movss  0x18(%rdi),%xmm4
   30b14:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   30b1b:	00 
   30b1c:	f3 44 0f 58 c7       	addss  %xmm7,%xmm8
   30b21:	f3 0f 59 fc          	mulss  %xmm4,%xmm7
   30b25:	f3 0f 10 6f 18       	movss  0x18(%rdi),%xmm5
   30b2a:	8b bb 84 00 00 00    	mov    0x84(%rbx),%edi
   30b30:	f3 41 0f 5c c8       	subss  %xmm8,%xmm1
   30b35:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
   30b39:	f3 0f 58 c7          	addss  %xmm7,%xmm0
   30b3d:	f3 0f 58 8c 24 f4 00 	addss  0xf4(%rsp),%xmm1
   30b44:	00 00 
   30b46:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   30b4a:	44 0f 28 d1          	movaps %xmm1,%xmm10
   30b4e:	85 ff                	test   %edi,%edi
   30b50:	74 7e                	je     30bd0 <sg_raster_triangle_tile_prepared+0x2b20>
   30b52:	44 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%r8d
   30b59:	45 85 c0             	test   %r8d,%r8d
   30b5c:	75 72                	jne    30bd0 <sg_raster_triangle_tile_prepared+0x2b20>
   30b5e:	44 8b 84 24 c4 00 00 	mov    0xc4(%rsp),%r8d
   30b65:	00 
   30b66:	44 0f af 03          	imul   (%rbx),%r8d
   30b6a:	8b 2c 24             	mov    (%rsp),%ebp
   30b6d:	41 01 e8             	add    %ebp,%r8d
   30b70:	48 89 dd             	mov    %rbx,%rbp
   30b73:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   30b77:	4d 63 c0             	movslq %r8d,%r8
   30b7a:	f3 42 0f 10 04 83    	movss  (%rbx,%r8,4),%xmm0
   30b80:	8b 9d 88 00 00 00    	mov    0x88(%rbp),%ebx
   30b86:	44 8d 83 00 fe ff ff 	lea    -0x200(%rbx),%r8d
   30b8d:	89 9c 24 60 01 00 00 	mov    %ebx,0x160(%rsp)
   30b94:	41 83 f8 07          	cmp    $0x7,%r8d
   30b98:	0f 87 52 50 00 00    	ja     35bf0 <sg_raster_triangle_tile_prepared+0x7b40>
   30b9e:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # 30ba5 <sg_raster_triangle_tile_prepared+0x2af5>
   30ba5:	4e 63 04 83          	movslq (%rbx,%r8,4),%r8
   30ba9:	49 01 d8             	add    %rbx,%r8
   30bac:	41 ff e0             	jmp    *%r8
   30baf:	45 31 c0             	xor    %r8d,%r8d
   30bb2:	0f 2f c8             	comiss %xmm0,%xmm1
   30bb5:	41 0f 93 c0          	setae  %r8b
   30bb9:	45 85 c0             	test   %r8d,%r8d
   30bbc:	0f 84 fc 0a 00 00    	je     316be <sg_raster_triangle_tile_prepared+0x360e>
   30bc2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   30bc9:	00 00 00 00 
   30bcd:	0f 1f 00             	nopl   (%rax)
   30bd0:	41 f6 c4 08          	test   $0x8,%r12b
   30bd4:	0f 84 ce 17 00 00    	je     323a8 <sg_raster_triangle_tile_prepared+0x42f8>
   30bda:	66 0f ef ff          	pxor   %xmm7,%xmm7
   30bde:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   30be3:	f3 0f 10 94 24 f0 00 	movss  0xf0(%rsp),%xmm2
   30bea:	00 00 
   30bec:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 30bf4 <sg_raster_triangle_tile_prepared+0x2b44>
   30bf3:	00 
   30bf4:	f3 49 0f 2a fb       	cvtsi2ss %r11,%xmm7
   30bf9:	f3 4d 0f 2a c1       	cvtsi2ss %r9,%xmm8
   30bfe:	0f 28 c2             	movaps %xmm2,%xmm0
   30c01:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   30c05:	f3 41 0f 59 d0       	mulss  %xmm8,%xmm2
   30c0a:	44 0f 28 c8          	movaps %xmm0,%xmm9
   30c0e:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
   30c13:	f3 0f 59 c3          	mulss  %xmm3,%xmm0
   30c17:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
   30c1b:	f3 41 0f 5c c9       	subss  %xmm9,%xmm1
   30c20:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
   30c24:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   30c28:	f3 0f 58 8c 24 f4 00 	addss  0xf4(%rsp),%xmm1
   30c2f:	00 00 
   30c31:	f3 0f 58 c8          	addss  %xmm0,%xmm1
   30c35:	44 0f 28 d9          	movaps %xmm1,%xmm11
   30c39:	85 ff                	test   %edi,%edi
   30c3b:	74 73                	je     30cb0 <sg_raster_triangle_tile_prepared+0x2c00>
   30c3d:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   30c42:	44 8b af c0 00 00 00 	mov    0xc0(%rdi),%r13d
   30c49:	45 85 ed             	test   %r13d,%r13d
   30c4c:	75 62                	jne    30cb0 <sg_raster_triangle_tile_prepared+0x2c00>
   30c4e:	48 89 fb             	mov    %rdi,%rbx
   30c51:	8b bc 24 c4 00 00 00 	mov    0xc4(%rsp),%edi
   30c58:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
   30c5d:	0f af 3b             	imul   (%rbx),%edi
   30c60:	44 01 c7             	add    %r8d,%edi
   30c63:	4c 8b 43 10          	mov    0x10(%rbx),%r8
   30c67:	48 63 ff             	movslq %edi,%rdi
   30c6a:	f3 41 0f 10 04 b8    	movss  (%r8,%rdi,4),%xmm0
   30c70:	8b bb 88 00 00 00    	mov    0x88(%rbx),%edi
   30c76:	89 bc 24 60 01 00 00 	mov    %edi,0x160(%rsp)
   30c7d:	81 ef 00 02 00 00    	sub    $0x200,%edi
   30c83:	83 ff 07             	cmp    $0x7,%edi
   30c86:	0f 87 38 4f 00 00    	ja     35bc4 <sg_raster_triangle_tile_prepared+0x7b14>
   30c8c:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 30c93 <sg_raster_triangle_tile_prepared+0x2be3>
   30c93:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
   30c97:	4c 01 c7             	add    %r8,%rdi
   30c9a:	ff e7                	jmp    *%rdi
   30c9c:	31 ff                	xor    %edi,%edi
   30c9e:	0f 2f c8             	comiss %xmm0,%xmm1
   30ca1:	40 0f 93 c7          	setae  %dil
   30ca5:	85 ff                	test   %edi,%edi
   30ca7:	0f 84 56 0a 00 00    	je     31703 <sg_raster_triangle_tile_prepared+0x3653>
   30cad:	0f 1f 00             	nopl   (%rax)
   30cb0:	66 0f ef d2          	pxor   %xmm2,%xmm2
   30cb4:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
   30cb9:	66 0f ef e4          	pxor   %xmm4,%xmm4
   30cbd:	66 0f ef db          	pxor   %xmm3,%xmm3
   30cc1:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
   30cc6:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
   30ccb:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
   30cd0:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
   30cd5:	66 0f ef c0          	pxor   %xmm0,%xmm0
   30cd9:	66 0f ef c9          	pxor   %xmm1,%xmm1
   30cdd:	0f 14 d7             	unpcklps %xmm7,%xmm2
   30ce0:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
   30ce7:	00 
   30ce8:	f3 48 0f 2a 44 24 08 	cvtsi2ssq 0x8(%rsp),%xmm0
   30cef:	45 0f 14 c8          	unpcklps %xmm8,%xmm9
   30cf3:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   30cfa:	00 
   30cfb:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 30d03 <sg_raster_triangle_tile_prepared+0x2c53>
   30d02:	00 
   30d03:	f3 48 0f 2a 4c 24 18 	cvtsi2ssq 0x18(%rsp),%xmm1
   30d0a:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   30d11:	00 
   30d12:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   30d16:	0f 14 c4             	unpcklps %xmm4,%xmm0
   30d19:	0f 16 c2             	movlhps %xmm2,%xmm0
   30d1c:	0f 14 cb             	unpcklps %xmm3,%xmm1
   30d1f:	f3 0f 10 94 24 f0 00 	movss  0xf0(%rsp),%xmm2
   30d26:	00 00 
   30d28:	41 0f 16 c9          	movlhps %xmm9,%xmm1
   30d2c:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30d30:	0f 59 ca             	mulps  %xmm2,%xmm1
   30d33:	0f 59 c2             	mulps  %xmm2,%xmm0
   30d36:	f3 0f 10 57 1c       	movss  0x1c(%rdi),%xmm2
   30d3b:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30d3f:	0f 28 e2             	movaps %xmm2,%xmm4
   30d42:	f3 0f 10 51 1c       	movss  0x1c(%rcx),%xmm2
   30d47:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30d4b:	0f 59 d1             	mulps  %xmm1,%xmm2
   30d4e:	0f 59 e0             	mulps  %xmm0,%xmm4
   30d51:	0f 58 c1             	addps  %xmm1,%xmm0
   30d54:	0f 28 cd             	movaps %xmm5,%xmm1
   30d57:	0f 5c c8             	subps  %xmm0,%xmm1
   30d5a:	f3 0f 10 42 1c       	movss  0x1c(%rdx),%xmm0
   30d5f:	44 0f 28 ea          	movaps %xmm2,%xmm13
   30d63:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30d67:	0f 29 a4 24 a0 01 00 	movaps %xmm4,0x1a0(%rsp)
   30d6e:	00 
   30d6f:	0f 28 fc             	movaps %xmm4,%xmm7
   30d72:	0f 59 c8             	mulps  %xmm0,%xmm1
   30d75:	66 0f ef c0          	pxor   %xmm0,%xmm0
   30d79:	44 0f 28 c1          	movaps %xmm1,%xmm8
   30d7d:	0f 28 cc             	movaps %xmm4,%xmm1
   30d80:	0f 58 ca             	addps  %xmm2,%xmm1
   30d83:	41 0f 58 c8          	addps  %xmm8,%xmm1
   30d87:	0f 28 d1             	movaps %xmm1,%xmm2
   30d8a:	0f c2 d0 02          	cmpleps %xmm0,%xmm2
   30d8e:	0f 50 c2             	movmskps %xmm2,%eax
   30d91:	83 e0 0f             	and    $0xf,%eax
   30d94:	f7 d0                	not    %eax
   30d96:	44 21 e0             	and    %r12d,%eax
   30d99:	89 84 24 b0 01 00 00 	mov    %eax,0x1b0(%rsp)
   30da0:	0f 84 1a e4 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   30da6:	0f 53 d1             	rcpps  %xmm1,%xmm2
   30da9:	0f 59 ca             	mulps  %xmm2,%xmm1
   30dac:	0f 59 ca             	mulps  %xmm2,%xmm1
   30daf:	0f 58 d2             	addps  %xmm2,%xmm2
   30db2:	44 0f 28 fa          	movaps %xmm2,%xmm15
   30db6:	f3 0f 10 57 20       	movss  0x20(%rdi),%xmm2
   30dbb:	44 0f 5c f9          	subps  %xmm1,%xmm15
   30dbf:	f3 0f 10 49 20       	movss  0x20(%rcx),%xmm1
   30dc4:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30dc8:	0f 59 d4             	mulps  %xmm4,%xmm2
   30dcb:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   30dcf:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   30dd3:	44 0f 29 bc 24 c0 01 	movaps %xmm15,0x1c0(%rsp)
   30dda:	00 00 
   30ddc:	0f 58 ca             	addps  %xmm2,%xmm1
   30ddf:	f3 0f 10 52 20       	movss  0x20(%rdx),%xmm2
   30de4:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30de8:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   30dec:	0f 58 ca             	addps  %xmm2,%xmm1
   30def:	f3 0f 10 57 24       	movss  0x24(%rdi),%xmm2
   30df4:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30df8:	0f 59 d4             	mulps  %xmm4,%xmm2
   30dfb:	0f 28 d9             	movaps %xmm1,%xmm3
   30dfe:	f3 0f 10 49 24       	movss  0x24(%rcx),%xmm1
   30e03:	41 0f 59 df          	mulps  %xmm15,%xmm3
   30e07:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   30e0b:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   30e0f:	0f 58 ca             	addps  %xmm2,%xmm1
   30e12:	f3 0f 10 52 24       	movss  0x24(%rdx),%xmm2
   30e17:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30e1b:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   30e1f:	0f 58 ca             	addps  %xmm2,%xmm1
   30e22:	f3 0f 10 57 28       	movss  0x28(%rdi),%xmm2
   30e27:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30e2b:	0f 59 d4             	mulps  %xmm4,%xmm2
   30e2e:	41 0f 59 cf          	mulps  %xmm15,%xmm1
   30e32:	44 0f 28 e1          	movaps %xmm1,%xmm12
   30e36:	f3 0f 10 49 28       	movss  0x28(%rcx),%xmm1
   30e3b:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   30e3f:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   30e43:	0f 58 ca             	addps  %xmm2,%xmm1
   30e46:	f3 0f 10 52 28       	movss  0x28(%rdx),%xmm2
   30e4b:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30e4f:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   30e53:	0f 58 ca             	addps  %xmm2,%xmm1
   30e56:	f3 0f 10 57 2c       	movss  0x2c(%rdi),%xmm2
   30e5b:	89 c7                	mov    %eax,%edi
   30e5d:	83 e7 01             	and    $0x1,%edi
   30e60:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30e64:	0f 59 d7             	mulps  %xmm7,%xmm2
   30e67:	89 bc 24 80 01 00 00 	mov    %edi,0x180(%rsp)
   30e6e:	89 c7                	mov    %eax,%edi
   30e70:	0f 28 e1             	movaps %xmm1,%xmm4
   30e73:	f3 0f 10 49 2c       	movss  0x2c(%rcx),%xmm1
   30e78:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   30e7f:	00 
   30e80:	83 e7 08             	and    $0x8,%edi
   30e83:	89 bc 24 60 01 00 00 	mov    %edi,0x160(%rsp)
   30e8a:	41 0f 59 e7          	mulps  %xmm15,%xmm4
   30e8e:	89 c7                	mov    %eax,%edi
   30e90:	83 e0 02             	and    $0x2,%eax
   30e93:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   30e97:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   30e9b:	8b b1 64 01 00 00    	mov    0x164(%rcx),%esi
   30ea1:	83 e7 04             	and    $0x4,%edi
   30ea4:	41 89 c1             	mov    %eax,%r9d
   30ea7:	89 bc 24 70 01 00 00 	mov    %edi,0x170(%rsp)
   30eae:	8d 46 ff             	lea    -0x1(%rsi),%eax
   30eb1:	0f 58 ca             	addps  %xmm2,%xmm1
   30eb4:	f3 0f 10 52 2c       	movss  0x2c(%rdx),%xmm2
   30eb9:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30ebd:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   30ec1:	0f 58 ca             	addps  %xmm2,%xmm1
   30ec4:	0f 28 f9             	movaps %xmm1,%xmm7
   30ec7:	41 0f 59 ff          	mulps  %xmm15,%xmm7
   30ecb:	83 f8 01             	cmp    $0x1,%eax
   30ece:	0f 86 26 35 00 00    	jbe    343fa <sg_raster_triangle_tile_prepared+0x634a>
   30ed4:	8b b9 68 01 00 00    	mov    0x168(%rcx),%edi
   30eda:	49 89 cb             	mov    %rcx,%r11
   30edd:	85 ff                	test   %edi,%edi
   30edf:	0f 84 85 05 00 00    	je     3146a <sg_raster_triangle_tile_prepared+0x33ba>
   30ee5:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   30eec:	00 
   30eed:	48 8d 72 50          	lea    0x50(%rdx),%rsi
   30ef1:	4c 89 db             	mov    %r11,%rbx
   30ef4:	48 8d bc 24 60 03 00 	lea    0x360(%rsp),%rdi
   30efb:	00 
   30efc:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 30f05 <sg_raster_triangle_tile_prepared+0x2e55>
   30f03:	00 00 
   30f05:	48 89 bc 24 d0 01 00 	mov    %rdi,0x1d0(%rsp)
   30f0c:	00 
   30f0d:	4c 8d 84 24 a0 03 00 	lea    0x3a0(%rsp),%r8
   30f14:	00 
   30f15:	45 31 ed             	xor    %r13d,%r13d
   30f18:	48 8d 48 50          	lea    0x50(%rax),%rcx
   30f1c:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   30f23:	00 
   30f24:	44 8b 9c 24 80 01 00 	mov    0x180(%rsp),%r11d
   30f2b:	00 
   30f2c:	4c 89 bc 24 b0 02 00 	mov    %r15,0x2b0(%rsp)
   30f33:	00 
   30f34:	4d 89 c4             	mov    %r8,%r12
   30f37:	49 89 cf             	mov    %rcx,%r15
   30f3a:	49 89 f0             	mov    %rsi,%r8
   30f3d:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   30f42:	48 83 c0 50          	add    $0x50,%rax
   30f46:	0f 29 bc 24 70 02 00 	movaps %xmm7,0x270(%rsp)
   30f4d:	00 
   30f4e:	44 89 c9             	mov    %r9d,%ecx
   30f51:	f3 44 0f 11 94 24 6c 	movss  %xmm10,0x26c(%rsp)
   30f58:	02 00 00 
   30f5b:	f3 44 0f 11 9c 24 b8 	movss  %xmm11,0x2b8(%rsp)
   30f62:	02 00 00 
   30f65:	0f 29 a4 24 80 02 00 	movaps %xmm4,0x280(%rsp)
   30f6c:	00 
   30f6d:	44 0f 29 a4 24 90 02 	movaps %xmm12,0x290(%rsp)
   30f74:	00 00 
   30f76:	44 0f 29 84 24 e0 01 	movaps %xmm8,0x1e0(%rsp)
   30f7d:	00 00 
   30f7f:	0f 29 9c 24 a0 02 00 	movaps %xmm3,0x2a0(%rsp)
   30f86:	00 
   30f87:	f3 0f 11 b4 24 bc 02 	movss  %xmm6,0x2bc(%rsp)
   30f8e:	00 00 
   30f90:	44 0f 29 b4 24 50 02 	movaps %xmm14,0x250(%rsp)
   30f97:	00 00 
   30f99:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
   30fa0:	00 
   30fa1:	8b 97 6c 01 00 00    	mov    0x16c(%rdi),%edx
   30fa7:	44 0f a3 ea          	bt     %r13d,%edx
   30fab:	0f 83 aa 4d 00 00    	jae    35d5b <sg_raster_triangle_tile_prepared+0x7cab>
   30fb1:	44 8b 4b 44          	mov    0x44(%rbx),%r9d
   30fb5:	45 85 c9             	test   %r9d,%r9d
   30fb8:	0f 85 b9 4d 00 00    	jne    35d77 <sg_raster_triangle_tile_prepared+0x7cc7>
   30fbe:	0f 28 a4 24 e0 01 00 	movaps 0x1e0(%rsp),%xmm4
   30fc5:	00 
   30fc6:	f3 41 0f 10 00       	movss  (%r8),%xmm0
   30fcb:	f3 41 0f 10 0f       	movss  (%r15),%xmm1
   30fd0:	0f 28 bc 24 a0 01 00 	movaps 0x1a0(%rsp),%xmm7
   30fd7:	00 
   30fd8:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   30fdc:	0f 59 c4             	mulps  %xmm4,%xmm0
   30fdf:	f3 41 0f 10 57 04    	movss  0x4(%r15),%xmm2
   30fe5:	0f 28 9c 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm3
   30fec:	00 
   30fed:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   30ff1:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   30ff5:	8b 13                	mov    (%rbx),%edx
   30ff7:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   30ffb:	41 0f 59 d5          	mulps  %xmm13,%xmm2
   30fff:	0f 58 c1             	addps  %xmm1,%xmm0
   31002:	f3 0f 10 08          	movss  (%rax),%xmm1
   31006:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   3100a:	0f 59 cf             	mulps  %xmm7,%xmm1
   3100d:	0f 58 c1             	addps  %xmm1,%xmm0
   31010:	f3 41 0f 10 48 04    	movss  0x4(%r8),%xmm1
   31016:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   3101a:	0f 59 cc             	mulps  %xmm4,%xmm1
   3101d:	0f 59 c3             	mulps  %xmm3,%xmm0
   31020:	0f 58 ca             	addps  %xmm2,%xmm1
   31023:	f3 0f 10 50 04       	movss  0x4(%rax),%xmm2
   31028:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   3102c:	0f 59 d7             	mulps  %xmm7,%xmm2
   3102f:	0f 58 ca             	addps  %xmm2,%xmm1
   31032:	0f 59 cb             	mulps  %xmm3,%xmm1
   31035:	83 fa 01             	cmp    $0x1,%edx
   31038:	0f 84 01 4f 00 00    	je     35f3f <sg_raster_triangle_tile_prepared+0x7e8f>
   3103e:	f3 41 0f 10 50 08    	movss  0x8(%r8),%xmm2
   31044:	f3 41 0f 10 5f 08    	movss  0x8(%r15),%xmm3
   3104a:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   3104e:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   31052:	0f 59 94 24 e0 01 00 	mulps  0x1e0(%rsp),%xmm2
   31059:	00 
   3105a:	41 0f 59 dd          	mulps  %xmm13,%xmm3
   3105e:	0f 58 d3             	addps  %xmm3,%xmm2
   31061:	f3 0f 10 58 08       	movss  0x8(%rax),%xmm3
   31066:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   3106a:	0f 59 9c 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm3
   31071:	00 
   31072:	0f 58 d3             	addps  %xmm3,%xmm2
   31075:	0f 59 94 24 c0 01 00 	mulps  0x1c0(%rsp),%xmm2
   3107c:	00 
   3107d:	83 fa 03             	cmp    $0x3,%edx
   31080:	0f 84 68 54 00 00    	je     364ee <sg_raster_triangle_tile_prepared+0x843e>
   31086:	4c 89 84 24 10 02 00 	mov    %r8,0x210(%rsp)
   3108d:	00 
   3108e:	66 0f ef e4          	pxor   %xmm4,%xmm4
   31092:	31 ed                	xor    %ebp,%ebp
   31094:	48 89 84 24 60 02 00 	mov    %rax,0x260(%rsp)
   3109b:	00 
   3109c:	44 89 9c 24 20 02 00 	mov    %r11d,0x220(%rsp)
   310a3:	00 
   310a4:	89 8c 24 30 02 00 00 	mov    %ecx,0x230(%rsp)
   310ab:	4c 89 a4 24 00 02 00 	mov    %r12,0x200(%rsp)
   310b2:	00 
   310b3:	49 89 dc             	mov    %rbx,%r12
   310b6:	8b 9c 24 b0 01 00 00 	mov    0x1b0(%rsp),%ebx
   310bd:	0f 29 a4 24 60 03 00 	movaps %xmm4,0x360(%rsp)
   310c4:	00 
   310c5:	0f 29 a4 24 70 03 00 	movaps %xmm4,0x370(%rsp)
   310cc:	00 
   310cd:	0f 29 a4 24 80 03 00 	movaps %xmm4,0x380(%rsp)
   310d4:	00 
   310d5:	0f 29 a4 24 90 03 00 	movaps %xmm4,0x390(%rsp)
   310dc:	00 
   310dd:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   310e4:	00 
   310e5:	0f 29 8c 24 00 03 00 	movaps %xmm1,0x300(%rsp)
   310ec:	00 
   310ed:	0f 29 94 24 10 03 00 	movaps %xmm2,0x310(%rsp)
   310f4:	00 
   310f5:	44 0f 29 ac 24 f0 01 	movaps %xmm13,0x1f0(%rsp)
   310fc:	00 00 
   310fe:	0f 29 ac 24 40 02 00 	movaps %xmm5,0x240(%rsp)
   31105:	00 
   31106:	0f a3 eb             	bt     %ebp,%ebx
   31109:	73 5c                	jae    31167 <sg_raster_triangle_tile_prepared+0x30b7>
   3110b:	48 8b 84 24 d0 01 00 	mov    0x1d0(%rsp),%rax
   31112:	00 
   31113:	48 89 ea             	mov    %rbp,%rdx
   31116:	45 8b 04 24          	mov    (%r12),%r8d
   3111a:	48 c1 e2 04          	shl    $0x4,%rdx
   3111e:	41 8b 4c 24 18       	mov    0x18(%r12),%ecx
   31123:	41 8b 74 24 10       	mov    0x10(%r12),%esi
   31128:	4c 8d 0c 02          	lea    (%rdx,%rax,1),%r9
   3112c:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
   31131:	41 8b 54 24 14       	mov    0x14(%r12),%edx
   31136:	f3 0f 10 84 ac f0 02 	movss  0x2f0(%rsp,%rbp,4),%xmm0
   3113d:	00 00 
   3113f:	41 83 f8 02          	cmp    $0x2,%r8d
   31143:	0f 84 6e 4c 00 00    	je     35db7 <sg_raster_triangle_tile_prepared+0x7d07>
   31149:	45 85 c0             	test   %r8d,%r8d
   3114c:	0f 85 bc 4a 00 00    	jne    35c0e <sg_raster_triangle_tile_prepared+0x7b5e>
   31152:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   31158:	e8 00 00 00 00       	call   3115d <sg_raster_triangle_tile_prepared+0x30ad>
   3115d:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   31164:	ff ff ff 
   31167:	48 83 c5 01          	add    $0x1,%rbp
   3116b:	48 83 fd 04          	cmp    $0x4,%rbp
   3116f:	75 95                	jne    31106 <sg_raster_triangle_tile_prepared+0x3056>
   31171:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   31178:	00 
   31179:	0f 28 b4 24 70 03 00 	movaps 0x370(%rsp),%xmm6
   31180:	00 
   31181:	4c 89 e3             	mov    %r12,%rbx
   31184:	0f 28 8c 24 80 03 00 	movaps 0x380(%rsp),%xmm1
   3118b:	00 
   3118c:	8b 8c 24 30 02 00 00 	mov    0x230(%rsp),%ecx
   31193:	0f 28 a4 24 90 03 00 	movaps 0x390(%rsp),%xmm4
   3119a:	00 
   3119b:	0f 28 d0             	movaps %xmm0,%xmm2
   3119e:	0f 15 c6             	unpckhps %xmm6,%xmm0
   311a1:	4c 8b a4 24 00 02 00 	mov    0x200(%rsp),%r12
   311a8:	00 
   311a9:	0f 14 d6             	unpcklps %xmm6,%xmm2
   311ac:	0f 28 d9             	movaps %xmm1,%xmm3
   311af:	44 0f 28 ac 24 f0 01 	movaps 0x1f0(%rsp),%xmm13
   311b6:	00 00 
   311b8:	4c 8b 84 24 10 02 00 	mov    0x210(%rsp),%r8
   311bf:	00 
   311c0:	0f 14 dc             	unpcklps %xmm4,%xmm3
   311c3:	0f 15 cc             	unpckhps %xmm4,%xmm1
   311c6:	0f 28 f2             	movaps %xmm2,%xmm6
   311c9:	48 8b 84 24 60 02 00 	mov    0x260(%rsp),%rax
   311d0:	00 
   311d1:	0f 28 e0             	movaps %xmm0,%xmm4
   311d4:	0f 16 f3             	movlhps %xmm3,%xmm6
   311d7:	44 8b 9c 24 20 02 00 	mov    0x220(%rsp),%r11d
   311de:	00 
   311df:	0f 12 da             	movhlps %xmm2,%xmm3
   311e2:	0f 16 e1             	movlhps %xmm1,%xmm4
   311e5:	0f 12 c8             	movhlps %xmm0,%xmm1
   311e8:	0f 28 ac 24 40 02 00 	movaps 0x240(%rsp),%xmm5
   311ef:	00 
   311f0:	41 0f 29 34 24       	movaps %xmm6,(%r12)
   311f5:	41 0f 29 5c 24 10    	movaps %xmm3,0x10(%r12)
   311fb:	41 0f 29 64 24 20    	movaps %xmm4,0x20(%r12)
   31201:	41 0f 29 4c 24 30    	movaps %xmm1,0x30(%r12)
   31207:	41 83 c5 01          	add    $0x1,%r13d
   3120b:	49 83 c4 40          	add    $0x40,%r12
   3120f:	48 83 c3 58          	add    $0x58,%rbx
   31213:	49 83 c0 10          	add    $0x10,%r8
   31217:	49 83 c7 10          	add    $0x10,%r15
   3121b:	48 83 c0 10          	add    $0x10,%rax
   3121f:	41 83 fd 04          	cmp    $0x4,%r13d
   31223:	0f 85 70 fd ff ff    	jne    30f99 <sg_raster_triangle_tile_prepared+0x2ee9>
   31229:	44 0f 28 a4 24 90 02 	movaps 0x290(%rsp),%xmm12
   31230:	00 00 
   31232:	0f 28 9c 24 a0 02 00 	movaps 0x2a0(%rsp),%xmm3
   31239:	00 
   3123a:	41 89 c9             	mov    %ecx,%r9d
   3123d:	0f 28 84 24 a0 03 00 	movaps 0x3a0(%rsp),%xmm0
   31244:	00 
   31245:	0f 28 8c 24 b0 03 00 	movaps 0x3b0(%rsp),%xmm1
   3124c:	00 
   3124d:	44 0f 28 b4 24 50 02 	movaps 0x250(%rsp),%xmm14
   31254:	00 00 
   31256:	41 0f 28 d4          	movaps %xmm12,%xmm2
   3125a:	0f 28 a4 24 80 02 00 	movaps 0x280(%rsp),%xmm4
   31261:	00 
   31262:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   31269:	00 
   3126a:	0f 28 bc 24 70 02 00 	movaps 0x270(%rsp),%xmm7
   31271:	00 
   31272:	41 0f 58 de          	addps  %xmm14,%xmm3
   31276:	41 0f 58 d6          	addps  %xmm14,%xmm2
   3127a:	4c 8b bc 24 b0 02 00 	mov    0x2b0(%rsp),%r15
   31281:	00 
   31282:	f3 44 0f 10 94 24 6c 	movss  0x26c(%rsp),%xmm10
   31289:	02 00 00 
   3128c:	41 0f 58 c6          	addps  %xmm14,%xmm0
   31290:	41 0f 58 ce          	addps  %xmm14,%xmm1
   31294:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
   3129a:	f3 44 0f 10 9c 24 b8 	movss  0x2b8(%rsp),%xmm11
   312a1:	02 00 00 
   312a4:	f3 0f 10 b4 24 bc 02 	movss  0x2bc(%rsp),%xmm6
   312ab:	00 00 
   312ad:	41 0f 58 e6          	addps  %xmm14,%xmm4
   312b1:	0f 59 c3             	mulps  %xmm3,%xmm0
   312b4:	0f 59 ca             	mulps  %xmm2,%xmm1
   312b7:	0f 28 94 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm2
   312be:	00 
   312bf:	41 0f 58 d6          	addps  %xmm14,%xmm2
   312c3:	0f 58 c8             	addps  %xmm0,%xmm1
   312c6:	0f 28 c4             	movaps %xmm4,%xmm0
   312c9:	0f 59 c2             	mulps  %xmm2,%xmm0
   312cc:	66 0f ef d2          	pxor   %xmm2,%xmm2
   312d0:	0f 58 c1             	addps  %xmm1,%xmm0
   312d3:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 312db <sg_raster_triangle_tile_prepared+0x322b>
   312da:	00 
   312db:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   312df:	0f 59 c1             	mulps  %xmm1,%xmm0
   312e2:	66 0f ef c9          	pxor   %xmm1,%xmm1
   312e6:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   312ea:	0f 28 d8             	movaps %xmm0,%xmm3
   312ed:	0f c2 da 01          	cmpltps %xmm2,%xmm3
   312f1:	66 0f 66 e3          	pcmpgtd %xmm3,%xmm4
   312f5:	0f 55 e0             	andnps %xmm0,%xmm4
   312f8:	0f 28 c5             	movaps %xmm5,%xmm0
   312fb:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
   312ff:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   31304:	83 f8 01             	cmp    $0x1,%eax
   31307:	0f 84 83 4f 00 00    	je     36290 <sg_raster_triangle_tile_prepared+0x81e0>
   3130d:	0f 59 e4             	mulps  %xmm4,%xmm4
   31310:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   31314:	0f 28 c4             	movaps %xmm4,%xmm0
   31317:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   3131b:	66 0f 66 d8          	pcmpgtd %xmm0,%xmm3
   3131f:	0f 28 c5             	movaps %xmm5,%xmm0
   31322:	0f 55 dc             	andnps %xmm4,%xmm3
   31325:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   31329:	0f 28 e3             	movaps %xmm3,%xmm4
   3132c:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   31331:	83 f8 03             	cmp    $0x3,%eax
   31334:	0f 84 cb 4e 00 00    	je     36205 <sg_raster_triangle_tile_prepared+0x8155>
   3133a:	0f 28 84 24 20 04 00 	movaps 0x420(%rsp),%xmm0
   31341:	00 
   31342:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   31346:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   3134b:	0f 59 c4             	mulps  %xmm4,%xmm0
   3134e:	0f 28 f8             	movaps %xmm0,%xmm7
   31351:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   31355:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
   31359:	0f 55 d8             	andnps %xmm0,%xmm3
   3135c:	0f 28 c5             	movaps %xmm5,%xmm0
   3135f:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   31363:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   31368:	f3 0f 10 80 38 37 00 	movss  0x3738(%rax),%xmm0
   3136f:	00 
   31370:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   31374:	0f 59 c3             	mulps  %xmm3,%xmm0
   31377:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   3137b:	0f 28 f8             	movaps %xmm0,%xmm7
   3137e:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   31382:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
   31386:	66 0f 6f f9          	movdqa %xmm1,%xmm7
   3138a:	0f 55 d8             	andnps %xmm0,%xmm3
   3138d:	0f 28 c5             	movaps %xmm5,%xmm0
   31390:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   31394:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   31399:	0f 28 84 24 30 04 00 	movaps 0x430(%rsp),%xmm0
   313a0:	00 
   313a1:	0f 59 c4             	mulps  %xmm4,%xmm0
   313a4:	0f 59 a4 24 40 04 00 	mulps  0x440(%rsp),%xmm4
   313ab:	00 
   313ac:	44 0f 28 c0          	movaps %xmm0,%xmm8
   313b0:	44 0f c2 c2 01       	cmpltps %xmm2,%xmm8
   313b5:	66 41 0f 66 f8       	pcmpgtd %xmm8,%xmm7
   313ba:	0f 55 f8             	andnps %xmm0,%xmm7
   313bd:	0f 28 c5             	movaps %xmm5,%xmm0
   313c0:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
   313c4:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
   313c9:	f3 0f 10 80 3c 37 00 	movss  0x373c(%rax),%xmm0
   313d0:	00 
   313d1:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   313d5:	0f 59 c7             	mulps  %xmm7,%xmm0
   313d8:	66 0f 6f f9          	movdqa %xmm1,%xmm7
   313dc:	44 0f 28 c0          	movaps %xmm0,%xmm8
   313e0:	44 0f c2 c2 01       	cmpltps %xmm2,%xmm8
   313e5:	66 41 0f 66 f8       	pcmpgtd %xmm8,%xmm7
   313ea:	0f 55 f8             	andnps %xmm0,%xmm7
   313ed:	0f 28 c5             	movaps %xmm5,%xmm0
   313f0:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
   313f4:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
   313f9:	0f 28 c4             	movaps %xmm4,%xmm0
   313fc:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   31400:	44 0f 28 e7          	movaps %xmm7,%xmm12
   31404:	66 0f 66 c8          	pcmpgtd %xmm0,%xmm1
   31408:	0f 28 c5             	movaps %xmm5,%xmm0
   3140b:	0f 55 cc             	andnps %xmm4,%xmm1
   3140e:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   31412:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   31417:	f3 0f 10 80 40 37 00 	movss  0x3740(%rax),%xmm0
   3141e:	00 
   3141f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   31423:	0f 59 c1             	mulps  %xmm1,%xmm0
   31426:	66 0f ef c9          	pxor   %xmm1,%xmm1
   3142a:	0f 28 d0             	movaps %xmm0,%xmm2
   3142d:	0f c2 d1 01          	cmpltps %xmm1,%xmm2
   31431:	66 0f ef c9          	pxor   %xmm1,%xmm1
   31435:	66 0f 66 ca          	pcmpgtd %xmm2,%xmm1
   31439:	0f 55 c8             	andnps %xmm0,%xmm1
   3143c:	0f 28 c5             	movaps %xmm5,%xmm0
   3143f:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   31443:	0f 28 e1             	movaps %xmm1,%xmm4
   31446:	66 0f ef c9          	pxor   %xmm1,%xmm1
   3144a:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   3144f:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 31457 <sg_raster_triangle_tile_prepared+0x33a7>
   31456:	00 
   31457:	f3 0f 5d 80 44 37 00 	minss  0x3744(%rax),%xmm0
   3145e:	00 
   3145f:	f3 0f 5f c1          	maxss  %xmm1,%xmm0
   31463:	0f 28 f8             	movaps %xmm0,%xmm7
   31466:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
   3146a:	8b 9c 24 80 01 00 00 	mov    0x180(%rsp),%ebx
   31471:	44 0f 28 cc          	movaps %xmm4,%xmm9
   31475:	44 0f 28 c3          	movaps %xmm3,%xmm8
   31479:	0f 28 eb             	movaps %xmm3,%xmm5
   3147c:	0f 15 e7             	unpckhps %xmm7,%xmm4
   3147f:	45 0f 14 c4          	unpcklps %xmm12,%xmm8
   31483:	41 0f 15 ec          	unpckhps %xmm12,%xmm5
   31487:	44 0f 14 cf          	unpcklps %xmm7,%xmm9
   3148b:	44 0f 28 e4          	movaps %xmm4,%xmm12
   3148f:	85 db                	test   %ebx,%ebx
   31491:	0f 84 d3 00 00 00    	je     3156a <sg_raster_triangle_tile_prepared+0x34ba>
   31497:	8b 34 24             	mov    (%rsp),%esi
   3149a:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   3149f:	41 0f 28 d9          	movaps %xmm9,%xmm3
   314a3:	41 0f 28 c8          	movaps %xmm8,%xmm1
   314a7:	0f 29 ac 24 d0 01 00 	movaps %xmm5,0x1d0(%rsp)
   314ae:	00 
   314af:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   314b6:	41 0f 28 e8          	movaps %xmm8,%xmm5
   314ba:	f3 0f 10 84 24 50 01 	movss  0x150(%rsp),%xmm0
   314c1:	00 00 
   314c3:	41 0f c6 e8 55       	shufps $0x55,%xmm8,%xmm5
   314c8:	0f 28 d5             	movaps %xmm5,%xmm2
   314cb:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
   314d2:	00 
   314d3:	41 0f 28 e1          	movaps %xmm9,%xmm4
   314d7:	44 89 8c 24 00 02 00 	mov    %r9d,0x200(%rsp)
   314de:	00 
   314df:	41 0f c6 e1 55       	shufps $0x55,%xmm9,%xmm4
   314e4:	f3 0f 11 b4 24 f0 01 	movss  %xmm6,0x1f0(%rsp)
   314eb:	00 00 
   314ed:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   314f4:	01 00 00 
   314f7:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   314fe:	01 00 00 
   31501:	44 0f 29 8c 24 a0 01 	movaps %xmm9,0x1a0(%rsp)
   31508:	00 00 
   3150a:	44 0f 29 84 24 80 01 	movaps %xmm8,0x180(%rsp)
   31511:	00 00 
   31513:	e8 00 00 00 00       	call   31518 <sg_raster_triangle_tile_prepared+0x3468>
   31518:	44 8b 8c 24 00 02 00 	mov    0x200(%rsp),%r9d
   3151f:	00 
   31520:	f3 0f 10 b4 24 f0 01 	movss  0x1f0(%rsp),%xmm6
   31527:	00 00 
   31529:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   31530:	ff ff ff 
   31533:	44 0f 28 a4 24 e0 01 	movaps 0x1e0(%rsp),%xmm12
   3153a:	00 00 
   3153c:	0f 28 ac 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm5
   31543:	00 
   31544:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   3154b:	01 00 00 
   3154e:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   31555:	01 00 00 
   31558:	44 0f 28 8c 24 a0 01 	movaps 0x1a0(%rsp),%xmm9
   3155f:	00 00 
   31561:	44 0f 28 84 24 80 01 	movaps 0x180(%rsp),%xmm8
   31568:	00 00 
   3156a:	45 85 c9             	test   %r9d,%r9d
   3156d:	0f 84 91 00 00 00    	je     31604 <sg_raster_triangle_tile_prepared+0x3554>
   31573:	41 0f 28 e1          	movaps %xmm9,%xmm4
   31577:	8b 74 24 38          	mov    0x38(%rsp),%esi
   3157b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   31580:	0f 28 c6             	movaps %xmm6,%xmm0
   31583:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
   3158a:	00 
   3158b:	41 0f 28 e8          	movaps %xmm8,%xmm5
   3158f:	41 0f c6 e1 ff       	shufps $0xff,%xmm9,%xmm4
   31594:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   3159b:	41 0f c6 e8 ff       	shufps $0xff,%xmm8,%xmm5
   315a0:	45 0f 15 c9          	unpckhps %xmm9,%xmm9
   315a4:	0f 28 d5             	movaps %xmm5,%xmm2
   315a7:	45 0f 15 c0          	unpckhps %xmm8,%xmm8
   315ab:	41 0f 28 d9          	movaps %xmm9,%xmm3
   315af:	41 0f 28 c8          	movaps %xmm8,%xmm1
   315b3:	44 0f 29 a4 24 b0 01 	movaps %xmm12,0x1b0(%rsp)
   315ba:	00 00 
   315bc:	f3 44 0f 11 9c 24 80 	movss  %xmm11,0x180(%rsp)
   315c3:	01 00 00 
   315c6:	f3 44 0f 11 94 24 50 	movss  %xmm10,0x150(%rsp)
   315cd:	01 00 00 
   315d0:	e8 00 00 00 00       	call   315d5 <sg_raster_triangle_tile_prepared+0x3525>
   315d5:	0f 28 ac 24 a0 01 00 	movaps 0x1a0(%rsp),%xmm5
   315dc:	00 
   315dd:	44 0f 28 a4 24 b0 01 	movaps 0x1b0(%rsp),%xmm12
   315e4:	00 00 
   315e6:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   315ed:	ff ff ff 
   315f0:	f3 44 0f 10 9c 24 80 	movss  0x180(%rsp),%xmm11
   315f7:	01 00 00 
   315fa:	f3 44 0f 10 94 24 50 	movss  0x150(%rsp),%xmm10
   31601:	01 00 00 
   31604:	44 8b 9c 24 70 01 00 	mov    0x170(%rsp),%r11d
   3160b:	00 
   3160c:	45 85 db             	test   %r11d,%r11d
   3160f:	74 72                	je     31683 <sg_raster_triangle_tile_prepared+0x35d3>
   31611:	0f 28 fd             	movaps %xmm5,%xmm7
   31614:	8b 94 24 c4 00 00 00 	mov    0xc4(%rsp),%edx
   3161b:	8b 34 24             	mov    (%rsp),%esi
   3161e:	0f 28 cd             	movaps %xmm5,%xmm1
   31621:	41 0f 28 e4          	movaps %xmm12,%xmm4
   31625:	0f c6 fd 55          	shufps $0x55,%xmm5,%xmm7
   31629:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   3162e:	41 0f 28 dc          	movaps %xmm12,%xmm3
   31632:	0f 28 d7             	movaps %xmm7,%xmm2
   31635:	41 0f 28 c2          	movaps %xmm10,%xmm0
   31639:	f3 44 0f 11 9c 24 80 	movss  %xmm11,0x180(%rsp)
   31640:	01 00 00 
   31643:	41 0f c6 e4 55       	shufps $0x55,%xmm12,%xmm4
   31648:	44 0f 29 a4 24 70 01 	movaps %xmm12,0x170(%rsp)
   3164f:	00 00 
   31651:	0f 29 ac 24 50 01 00 	movaps %xmm5,0x150(%rsp)
   31658:	00 
   31659:	e8 00 00 00 00       	call   3165e <sg_raster_triangle_tile_prepared+0x35ae>
   3165e:	0f 28 ac 24 50 01 00 	movaps 0x150(%rsp),%xmm5
   31665:	00 
   31666:	f3 44 0f 10 9c 24 80 	movss  0x180(%rsp),%xmm11
   3166d:	01 00 00 
   31670:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   31677:	ff ff ff 
   3167a:	44 0f 28 a4 24 70 01 	movaps 0x170(%rsp),%xmm12
   31681:	00 00 
   31683:	44 8b 8c 24 60 01 00 	mov    0x160(%rsp),%r9d
   3168a:	00 
   3168b:	45 85 c9             	test   %r9d,%r9d
   3168e:	0f 84 2c db ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   31694:	41 0f 28 e4          	movaps %xmm12,%xmm4
   31698:	0f 28 fd             	movaps %xmm5,%xmm7
   3169b:	41 0f 28 c3          	movaps %xmm11,%xmm0
   3169f:	0f c6 fd ff          	shufps $0xff,%xmm5,%xmm7
   316a3:	41 0f c6 e4 ff       	shufps $0xff,%xmm12,%xmm4
   316a8:	0f 15 ed             	unpckhps %xmm5,%xmm5
   316ab:	45 0f 15 e4          	unpckhps %xmm12,%xmm12
   316af:	41 0f 28 dc          	movaps %xmm12,%xmm3
   316b3:	0f 28 d7             	movaps %xmm7,%xmm2
   316b6:	0f 28 cd             	movaps %xmm5,%xmm1
   316b9:	e9 81 ea ff ff       	jmp    3013f <sg_raster_triangle_tile_prepared+0x208f>
   316be:	41 83 e4 fb          	and    $0xfffffffb,%r12d
   316c2:	41 f6 c4 08          	test   $0x8,%r12b
   316c6:	0f 84 e3 2f 00 00    	je     346af <sg_raster_triangle_tile_prepared+0x65ff>
   316cc:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
   316d3:	00 
   316d4:	f3 0f 10 5f 18       	movss  0x18(%rdi),%xmm3
   316d9:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
   316e0:	00 
   316e1:	f3 0f 10 67 18       	movss  0x18(%rdi),%xmm4
   316e6:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   316ed:	00 
   316ee:	f3 0f 10 6f 18       	movss  0x18(%rdi),%xmm5
   316f3:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   316f8:	8b bf 84 00 00 00    	mov    0x84(%rdi),%edi
   316fe:	e9 d7 f4 ff ff       	jmp    30bda <sg_raster_triangle_tile_prepared+0x2b2a>
   31703:	41 83 e4 f7          	and    $0xfffffff7,%r12d
   31707:	45 85 e4             	test   %r12d,%r12d
   3170a:	0f 84 b0 da ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   31710:	66 0f ef e4          	pxor   %xmm4,%xmm4
   31714:	66 0f ef db          	pxor   %xmm3,%xmm3
   31718:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
   3171d:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
   31722:	e9 c8 0c 00 00       	jmp    323ef <sg_raster_triangle_tile_prepared+0x433f>
   31727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   3172e:	00 00 
   31730:	41 83 e4 fd          	and    $0xfffffffd,%r12d
   31734:	41 f6 c4 04          	test   $0x4,%r12b
   31738:	0f 85 7c f3 ff ff    	jne    30aba <sg_raster_triangle_tile_prepared+0x2a0a>
   3173e:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
   31743:	e9 7a ff ff ff       	jmp    316c2 <sg_raster_triangle_tile_prepared+0x3612>
   31748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   3174f:	00 
   31750:	f3 0f 10 41 50       	movss  0x50(%rcx),%xmm0
   31755:	4c 89 ca             	mov    %r9,%rdx
   31758:	4d 8b 49 30          	mov    0x30(%r9),%r9
   3175c:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   31761:	f3 44 0f 10 5e 50    	movss  0x50(%rsi),%xmm11
   31767:	f3 44 0f 10 6e 54    	movss  0x54(%rsi),%xmm13
   3176d:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
   31772:	0f 29 bc 24 10 03 00 	movaps %xmm7,0x310(%rsp)
   31779:	00 
   3177a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   3177e:	0f 59 c3             	mulps  %xmm3,%xmm0
   31781:	44 8b 5a 28          	mov    0x28(%rdx),%r11d
   31785:	4c 89 8c 24 a0 01 00 	mov    %r9,0x1a0(%rsp)
   3178c:	00 
   3178d:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
   31792:	44 0f 59 da          	mulps  %xmm2,%xmm11
   31796:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
   3179b:	44 8b 4a 24          	mov    0x24(%rdx),%r9d
   3179f:	44 0f 59 ea          	mulps  %xmm2,%xmm13
   317a3:	f3 45 0f 2a e3       	cvtsi2ss %r11d,%xmm12
   317a8:	8b 72 40             	mov    0x40(%rdx),%esi
   317ab:	44 89 9c 24 60 01 00 	mov    %r11d,0x160(%rsp)
   317b2:	00 
   317b3:	f3 45 0f 2a f1       	cvtsi2ss %r9d,%xmm14
   317b8:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 317c0 <sg_raster_triangle_tile_prepared+0x3710>
   317bf:	00 
   317c0:	0f 29 b4 24 00 03 00 	movaps %xmm6,0x300(%rsp)
   317c7:	00 
   317c8:	89 b4 24 80 01 00 00 	mov    %esi,0x180(%rsp)
   317cf:	31 f6                	xor    %esi,%esi
   317d1:	44 0f 29 84 24 60 03 	movaps %xmm8,0x360(%rsp)
   317d8:	00 00 
   317da:	41 0f 58 c3          	addps  %xmm11,%xmm0
   317de:	f3 44 0f 10 5d 50    	movss  0x50(%rbp),%xmm11
   317e4:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
   317e9:	44 0f 29 94 24 a0 03 	movaps %xmm10,0x3a0(%rsp)
   317f0:	00 00 
   317f2:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   317f7:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
   317fc:	44 0f 59 dc          	mulps  %xmm4,%xmm11
   31800:	41 0f 58 c3          	addps  %xmm11,%xmm0
   31804:	f3 44 0f 10 59 54    	movss  0x54(%rcx),%xmm11
   3180a:	8b 4a 38             	mov    0x38(%rdx),%ecx
   3180d:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
   31812:	44 0f 59 db          	mulps  %xmm3,%xmm11
   31816:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   3181a:	45 0f 58 dd          	addps  %xmm13,%xmm11
   3181e:	f3 44 0f 10 6d 54    	movss  0x54(%rbp),%xmm13
   31824:	8b 6a 3c             	mov    0x3c(%rdx),%ebp
   31827:	66 44 0f 3a 08 f8 01 	roundps $0x1,%xmm0,%xmm15
   3182e:	41 0f 5c c7          	subps  %xmm15,%xmm0
   31832:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
   31837:	44 0f 59 ec          	mulps  %xmm4,%xmm13
   3183b:	41 0f 59 c6          	mulps  %xmm14,%xmm0
   3183f:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 31848 <sg_raster_triangle_tile_prepared+0x3798>
   31846:	00 00 
   31848:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   3184d:	45 0f 58 dd          	addps  %xmm13,%xmm11
   31851:	41 0f 58 c6          	addps  %xmm14,%xmm0
   31855:	45 0f 59 d9          	mulps  %xmm9,%xmm11
   31859:	66 45 0f 3a 08 eb 01 	roundps $0x1,%xmm11,%xmm13
   31860:	45 0f 5c dd          	subps  %xmm13,%xmm11
   31864:	45 0f 59 dc          	mulps  %xmm12,%xmm11
   31868:	66 44 0f 3a 08 e0 01 	roundps $0x1,%xmm0,%xmm12
   3186f:	41 0f 5c c4          	subps  %xmm12,%xmm0
   31873:	f3 45 0f 5b fc       	cvttps2dq %xmm12,%xmm15
   31878:	f3 44 0f 10 25 00 00 	movss  0x0(%rip),%xmm12        # 31881 <sg_raster_triangle_tile_prepared+0x37d1>
   3187f:	00 00 
   31881:	44 0f 29 bc 24 c0 02 	movaps %xmm15,0x2c0(%rsp)
   31888:	00 00 
   3188a:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
   3188f:	45 0f 58 de          	addps  %xmm14,%xmm11
   31893:	66 45 0f 3a 08 eb 01 	roundps $0x1,%xmm11,%xmm13
   3189a:	f3 45 0f 5b f5       	cvttps2dq %xmm13,%xmm14
   3189f:	44 0f 29 b4 24 d0 02 	movaps %xmm14,0x2d0(%rsp)
   318a6:	00 00 
   318a8:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 318b1 <sg_raster_triangle_tile_prepared+0x3801>
   318af:	00 00 
   318b1:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   318b6:	41 0f 59 c6          	mulps  %xmm14,%xmm0
   318ba:	41 0f 58 c4          	addps  %xmm12,%xmm0
   318be:	f3 0f 5b c0          	cvttps2dq %xmm0,%xmm0
   318c2:	0f 29 84 24 e0 02 00 	movaps %xmm0,0x2e0(%rsp)
   318c9:	00 
   318ca:	41 0f 28 c3          	movaps %xmm11,%xmm0
   318ce:	41 0f 5c c5          	subps  %xmm13,%xmm0
   318d2:	41 0f 59 c6          	mulps  %xmm14,%xmm0
   318d6:	41 0f 58 c4          	addps  %xmm12,%xmm0
   318da:	f3 0f 5b c0          	cvttps2dq %xmm0,%xmm0
   318de:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   318e5:	00 
   318e6:	83 f8 02             	cmp    $0x2,%eax
   318e9:	0f 84 9f 07 00 00    	je     3208e <sg_raster_triangle_tile_prepared+0x3fde>
   318ef:	4c 89 bc 24 b0 01 00 	mov    %r15,0x1b0(%rsp)
   318f6:	00 
   318f7:	4c 8b 9c 24 a0 01 00 	mov    0x1a0(%rsp),%r11
   318fe:	00 
   318ff:	89 bc 24 c0 01 00 00 	mov    %edi,0x1c0(%rsp)
   31906:	44 89 84 24 d0 01 00 	mov    %r8d,0x1d0(%rsp)
   3190d:	00 
   3190e:	41 89 c8             	mov    %ecx,%r8d
   31911:	89 9c 24 e0 01 00 00 	mov    %ebx,0x1e0(%rsp)
   31918:	89 eb                	mov    %ebp,%ebx
   3191a:	41 0f a3 f4          	bt     %esi,%r12d
   3191e:	0f 83 f2 01 00 00    	jae    31b16 <sg_raster_triangle_tile_prepared+0x3a66>
   31924:	8b 84 b4 c0 02 00 00 	mov    0x2c0(%rsp,%rsi,4),%eax
   3192b:	8b ac b4 d0 02 00 00 	mov    0x2d0(%rsp,%rsi,4),%ebp
   31932:	44 8d 78 01          	lea    0x1(%rax),%r15d
   31936:	8d 4d 01             	lea    0x1(%rbp),%ecx
   31939:	45 85 c0             	test   %r8d,%r8d
   3193c:	0f 84 2e 02 00 00    	je     31b70 <sg_raster_triangle_tile_prepared+0x3ac0>
   31942:	44 21 c0             	and    %r8d,%eax
   31945:	45 21 c7             	and    %r8d,%r15d
   31948:	89 c7                	mov    %eax,%edi
   3194a:	85 db                	test   %ebx,%ebx
   3194c:	0f 84 5f 05 00 00    	je     31eb1 <sg_raster_triangle_tile_prepared+0x3e01>
   31952:	21 d9                	and    %ebx,%ecx
   31954:	21 dd                	and    %ebx,%ebp
   31956:	89 ca                	mov    %ecx,%edx
   31958:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   3195f:	89 c1                	mov    %eax,%ecx
   31961:	d3 e2                	shl    %cl,%edx
   31963:	d3 e5                	shl    %cl,%ebp
   31965:	89 d1                	mov    %edx,%ecx
   31967:	8d 04 2f             	lea    (%rdi,%rbp,1),%eax
   3196a:	44 01 fd             	add    %r15d,%ebp
   3196d:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 31975 <sg_raster_triangle_tile_prepared+0x38c5>
   31974:	00 
   31975:	66 44 0f 6e 84 b4 e0 	movd   0x2e0(%rsp,%rsi,4),%xmm8
   3197c:	02 00 00 
   3197f:	c1 e0 02             	shl    $0x2,%eax
   31982:	66 0f 6e b4 b4 f0 02 	movd   0x2f0(%rsp,%rsi,4),%xmm6
   31989:	00 00 
   3198b:	48 98                	cltq
   3198d:	66 44 0f 38 39 c0    	pminsd %xmm0,%xmm8
   31993:	66 0f ef c0          	pxor   %xmm0,%xmm0
   31997:	66 45 0f 6e 24 03    	movd   (%r11,%rax,1),%xmm12
   3199d:	8d 04 ad 00 00 00 00 	lea    0x0(,%rbp,4),%eax
   319a4:	66 44 0f 38 3d c0    	pmaxsd %xmm0,%xmm8
   319aa:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 319b2 <sg_raster_triangle_tile_prepared+0x3902>
   319b1:	00 
   319b2:	48 98                	cltq
   319b4:	66 45 0f 38 30 e4    	pmovzxbw %xmm12,%xmm12
   319ba:	66 45 0f 6e 2c 03    	movd   (%r11,%rax,1),%xmm13
   319c0:	8d 04 39             	lea    (%rcx,%rdi,1),%eax
   319c3:	66 0f 38 39 f0       	pminsd %xmm0,%xmm6
   319c8:	c1 e0 02             	shl    $0x2,%eax
   319cb:	66 0f ef c0          	pxor   %xmm0,%xmm0
   319cf:	66 45 0f 38 30 ed    	pmovzxbw %xmm13,%xmm13
   319d5:	48 98                	cltq
   319d7:	66 0f 38 3d f0       	pmaxsd %xmm0,%xmm6
   319dc:	66 0f 6f c7          	movdqa %xmm7,%xmm0
   319e0:	66 45 0f 6e 1c 03    	movd   (%r11,%rax,1),%xmm11
   319e6:	42 8d 04 39          	lea    (%rcx,%r15,1),%eax
   319ea:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
   319ef:	c1 e0 02             	shl    $0x2,%eax
   319f2:	66 0f fa c6          	psubd  %xmm6,%xmm0
   319f6:	66 45 0f 61 e5       	punpcklwd %xmm13,%xmm12
   319fb:	66 45 0f 70 d2 00    	pshufd $0x0,%xmm10,%xmm10
   31a01:	48 98                	cltq
   31a03:	66 45 0f 38 30 db    	pmovzxbw %xmm11,%xmm11
   31a09:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
   31a0e:	66 41 0f 6e 34 03    	movd   (%r11,%rax,1),%xmm6
   31a14:	66 0f 38 30 f6       	pmovzxbw %xmm6,%xmm6
   31a19:	66 44 0f 61 de       	punpcklwd %xmm6,%xmm11
   31a1e:	66 0f 6f f7          	movdqa %xmm7,%xmm6
   31a22:	66 41 0f fa f0       	psubd  %xmm8,%xmm6
   31a27:	66 41 0f 72 f0 10    	pslld  $0x10,%xmm8
   31a2d:	66 41 0f eb f0       	por    %xmm8,%xmm6
   31a32:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
   31a37:	66 44 0f f5 e6       	pmaddwd %xmm6,%xmm12
   31a3c:	66 44 0f f5 de       	pmaddwd %xmm6,%xmm11
   31a41:	66 0f ef f6          	pxor   %xmm6,%xmm6
   31a45:	66 41 0f 38 40 c4    	pmulld %xmm12,%xmm0
   31a4b:	66 45 0f 38 40 d3    	pmulld %xmm11,%xmm10
   31a51:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
   31a56:	66 0f fe 84 24 90 01 	paddd  0x190(%rsp),%xmm0
   31a5d:	00 00 
   31a5f:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
   31a64:	66 0f 38 2b c0       	packusdw %xmm0,%xmm0
   31a69:	66 0f 67 c0          	packuswb %xmm0,%xmm0
   31a6d:	66 0f 7e c0          	movd   %xmm0,%eax
   31a71:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 31a79 <sg_raster_triangle_tile_prepared+0x39c9>
   31a78:	00 
   31a79:	f3 0f 59 84 b4 00 03 	mulss  0x300(%rsp,%rsi,4),%xmm0
   31a80:	00 00 
   31a82:	0f b6 d0             	movzbl %al,%edx
   31a85:	f3 0f 2a f2          	cvtsi2ss %edx,%xmm6
   31a89:	0f b6 d4             	movzbl %ah,%edx
   31a8c:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   31a90:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 31a98 <sg_raster_triangle_tile_prepared+0x39e8>
   31a97:	00 
   31a98:	f3 0f 59 b4 b4 10 03 	mulss  0x310(%rsp,%rsi,4),%xmm6
   31a9f:	00 00 
   31aa1:	f3 0f 11 84 b4 00 03 	movss  %xmm0,0x300(%rsp,%rsi,4)
   31aa8:	00 00 
   31aaa:	66 0f ef c0          	pxor   %xmm0,%xmm0
   31aae:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
   31ab2:	89 c2                	mov    %eax,%edx
   31ab4:	c1 e8 18             	shr    $0x18,%eax
   31ab7:	c1 ea 10             	shr    $0x10,%edx
   31aba:	0f b6 d2             	movzbl %dl,%edx
   31abd:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   31ac1:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 31ac9 <sg_raster_triangle_tile_prepared+0x3a19>
   31ac8:	00 
   31ac9:	f3 0f 59 b4 b4 60 03 	mulss  0x360(%rsp,%rsi,4),%xmm6
   31ad0:	00 00 
   31ad2:	f3 0f 11 84 b4 10 03 	movss  %xmm0,0x310(%rsp,%rsi,4)
   31ad9:	00 00 
   31adb:	66 0f ef c0          	pxor   %xmm0,%xmm0
   31adf:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
   31ae3:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   31ae7:	66 0f ef f6          	pxor   %xmm6,%xmm6
   31aeb:	f3 0f 2a f0          	cvtsi2ss %eax,%xmm6
   31aef:	f3 0f 11 84 b4 60 03 	movss  %xmm0,0x360(%rsp,%rsi,4)
   31af6:	00 00 
   31af8:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 31b00 <sg_raster_triangle_tile_prepared+0x3a50>
   31aff:	00 
   31b00:	f3 0f 59 84 b4 a0 03 	mulss  0x3a0(%rsp,%rsi,4),%xmm0
   31b07:	00 00 
   31b09:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   31b0d:	f3 0f 11 84 b4 a0 03 	movss  %xmm0,0x3a0(%rsp,%rsi,4)
   31b14:	00 00 
   31b16:	48 83 c6 01          	add    $0x1,%rsi
   31b1a:	48 83 fe 04          	cmp    $0x4,%rsi
   31b1e:	0f 85 f6 fd ff ff    	jne    3191a <sg_raster_triangle_tile_prepared+0x386a>
   31b24:	4c 8b bc 24 b0 01 00 	mov    0x1b0(%rsp),%r15
   31b2b:	00 
   31b2c:	8b bc 24 c0 01 00 00 	mov    0x1c0(%rsp),%edi
   31b33:	44 8b 84 24 d0 01 00 	mov    0x1d0(%rsp),%r8d
   31b3a:	00 
   31b3b:	8b 9c 24 e0 01 00 00 	mov    0x1e0(%rsp),%ebx
   31b42:	0f 28 b4 24 00 03 00 	movaps 0x300(%rsp),%xmm6
   31b49:	00 
   31b4a:	0f 28 bc 24 10 03 00 	movaps 0x310(%rsp),%xmm7
   31b51:	00 
   31b52:	44 0f 28 84 24 60 03 	movaps 0x360(%rsp),%xmm8
   31b59:	00 00 
   31b5b:	44 0f 28 94 24 a0 03 	movaps 0x3a0(%rsp),%xmm10
   31b62:	00 00 
   31b64:	e9 23 e7 ff ff       	jmp    3028c <sg_raster_triangle_tile_prepared+0x21dc>
   31b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   31b70:	99                   	cltd
   31b71:	41 f7 f9             	idiv   %r9d
   31b74:	44 89 f8             	mov    %r15d,%eax
   31b77:	85 d2                	test   %edx,%edx
   31b79:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
   31b7d:	0f 49 fa             	cmovns %edx,%edi
   31b80:	99                   	cltd
   31b81:	41 f7 f9             	idiv   %r9d
   31b84:	41 89 d7             	mov    %edx,%r15d
   31b87:	85 d2                	test   %edx,%edx
   31b89:	79 03                	jns    31b8e <sg_raster_triangle_tile_prepared+0x3ade>
   31b8b:	45 01 cf             	add    %r9d,%r15d
   31b8e:	85 db                	test   %ebx,%ebx
   31b90:	0f 84 47 03 00 00    	je     31edd <sg_raster_triangle_tile_prepared+0x3e2d>
   31b96:	21 d9                	and    %ebx,%ecx
   31b98:	21 dd                	and    %ebx,%ebp
   31b9a:	89 ca                	mov    %ecx,%edx
   31b9c:	89 d1                	mov    %edx,%ecx
   31b9e:	41 0f af e9          	imul   %r9d,%ebp
   31ba2:	41 0f af c9          	imul   %r9d,%ecx
   31ba6:	e9 bc fd ff ff       	jmp    31967 <sg_raster_triangle_tile_prepared+0x38b7>
   31bab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   31bb0:	8b 8c 24 70 01 00 00 	mov    0x170(%rsp),%ecx
   31bb7:	85 c9                	test   %ecx,%ecx
   31bb9:	0f 85 42 02 00 00    	jne    31e01 <sg_raster_triangle_tile_prepared+0x3d51>
   31bbf:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   31bc4:	49 63 d0             	movslq %r8d,%rdx
   31bc7:	66 0f ef d2          	pxor   %xmm2,%xmm2
   31bcb:	48 8b 40 10          	mov    0x10(%rax),%rax
   31bcf:	f3 0f 7e 04 90       	movq   (%rax,%rdx,4),%xmm0
   31bd4:	39 bc 24 c4 00 00 00 	cmp    %edi,0xc4(%rsp)
   31bdb:	7d 08                	jge    31be5 <sg_raster_triangle_tile_prepared+0x3b35>
   31bdd:	49 63 d5             	movslq %r13d,%rdx
   31be0:	f3 0f 7e 14 90       	movq   (%rax,%rdx,4),%xmm2
   31be5:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   31bea:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   31bee:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
   31bf4:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
   31bfb:	2d 00 02 00 00       	sub    $0x200,%eax
   31c00:	83 f8 06             	cmp    $0x6,%eax
   31c03:	0f 87 00 00 00 00    	ja     31c09 <sg_raster_triangle_tile_prepared+0x3b59>
   31c09:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 31c10 <sg_raster_triangle_tile_prepared+0x3b60>
   31c10:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   31c14:	48 01 d0             	add    %rdx,%rax
   31c17:	ff e0                	jmp    *%rax
   31c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   31c20:	66 0f ef c9          	pxor   %xmm1,%xmm1
   31c24:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   31c29:	e9 07 ec ff ff       	jmp    30835 <sg_raster_triangle_tile_prepared+0x2785>
   31c2e:	66 90                	xchg   %ax,%ax
   31c30:	48 8b 50 08          	mov    0x8(%rax),%rdx
   31c34:	42 8d 04 85 00 00 00 	lea    0x0(,%r8,4),%eax
   31c3b:	00 
   31c3c:	48 98                	cltq
   31c3e:	f3 0f 7e 14 02       	movq   (%rdx,%rax,1),%xmm2
   31c43:	4c 8d 04 02          	lea    (%rdx,%rax,1),%r8
   31c47:	0f 5d f5             	minps  %xmm5,%xmm6
   31c4a:	66 0f ef c0          	pxor   %xmm0,%xmm0
   31c4e:	0f 5d fd             	minps  %xmm5,%xmm7
   31c51:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   31c56:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 31c5e <sg_raster_triangle_tile_prepared+0x3bae>
   31c5d:	00 
   31c5e:	44 0f 5d d5          	minps  %xmm5,%xmm10
   31c62:	0f 28 ce             	movaps %xmm6,%xmm1
   31c65:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   31c69:	0f 5f c8             	maxps  %xmm0,%xmm1
   31c6c:	0f 59 cb             	mulps  %xmm3,%xmm1
   31c6f:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
   31c73:	66 0f 6b c9          	packssdw %xmm1,%xmm1
   31c77:	66 0f 67 c9          	packuswb %xmm1,%xmm1
   31c7b:	66 0f 7e c8          	movd   %xmm1,%eax
   31c7f:	0f 28 cf             	movaps %xmm7,%xmm1
   31c82:	0f 5f c8             	maxps  %xmm0,%xmm1
   31c85:	0f 59 cb             	mulps  %xmm3,%xmm1
   31c88:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
   31c8c:	66 0f 6b c9          	packssdw %xmm1,%xmm1
   31c90:	66 0f 67 c9          	packuswb %xmm1,%xmm1
   31c94:	66 0f 7e ce          	movd   %xmm1,%esi
   31c98:	41 0f 28 c8          	movaps %xmm8,%xmm1
   31c9c:	0f 5d cd             	minps  %xmm5,%xmm1
   31c9f:	66 0f 6e e6          	movd   %esi,%xmm4
   31ca3:	0f 5f c8             	maxps  %xmm0,%xmm1
   31ca6:	41 0f 5f c2          	maxps  %xmm10,%xmm0
   31caa:	0f 59 cb             	mulps  %xmm3,%xmm1
   31cad:	0f 59 c3             	mulps  %xmm3,%xmm0
   31cb0:	66 0f 6e d8          	movd   %eax,%xmm3
   31cb4:	8b 83 44 05 00 00    	mov    0x544(%rbx),%eax
   31cba:	66 0f 60 dc          	punpcklbw %xmm4,%xmm3
   31cbe:	f7 d8                	neg    %eax
   31cc0:	8b 83 48 05 00 00    	mov    0x548(%rbx),%eax
   31cc6:	40 18 f6             	sbb    %sil,%sil
   31cc9:	40 0f b6 f6          	movzbl %sil,%esi
   31ccd:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
   31cd1:	66 0f 6b c9          	packssdw %xmm1,%xmm1
   31cd5:	c1 e6 08             	shl    $0x8,%esi
   31cd8:	f7 d8                	neg    %eax
   31cda:	66 0f 5b c0          	cvtps2dq %xmm0,%xmm0
   31cde:	66 0f 6b c0          	packssdw %xmm0,%xmm0
   31ce2:	18 c0                	sbb    %al,%al
   31ce4:	66 0f 67 c9          	packuswb %xmm1,%xmm1
   31ce8:	66 0f 67 c0          	packuswb %xmm0,%xmm0
   31cec:	0f b6 c0             	movzbl %al,%eax
   31cef:	66 0f 3a 21 c9 0e    	insertps $0xe,%xmm1,%xmm1
   31cf5:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
   31cfb:	c1 e0 10             	shl    $0x10,%eax
   31cfe:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
   31d02:	09 f0                	or     %esi,%eax
   31d04:	8b b3 40 05 00 00    	mov    0x540(%rbx),%esi
   31d0a:	66 0f 61 d9          	punpcklwd %xmm1,%xmm3
   31d0e:	f7 de                	neg    %esi
   31d10:	40 18 f6             	sbb    %sil,%sil
   31d13:	40 0f b6 f6          	movzbl %sil,%esi
   31d17:	09 f0                	or     %esi,%eax
   31d19:	8b b3 4c 05 00 00    	mov    0x54c(%rbx),%esi
   31d1f:	f7 de                	neg    %esi
   31d21:	40 18 f6             	sbb    %sil,%sil
   31d24:	c1 e6 18             	shl    $0x18,%esi
   31d27:	09 f0                	or     %esi,%eax
   31d29:	85 c9                	test   %ecx,%ecx
   31d2b:	0f 85 76 02 00 00    	jne    31fa7 <sg_raster_triangle_tile_prepared+0x3ef7>
   31d31:	85 ed                	test   %ebp,%ebp
   31d33:	0f 85 87 1e 00 00    	jne    33bc0 <sg_raster_triangle_tile_prepared+0x5b10>
   31d39:	45 85 db             	test   %r11d,%r11d
   31d3c:	0f 84 f3 29 00 00    	je     34735 <sg_raster_triangle_tile_prepared+0x6685>
   31d42:	be ff ff ff ff       	mov    $0xffffffff,%esi
   31d47:	31 c9                	xor    %ecx,%ecx
   31d49:	66 0f ef c0          	pxor   %xmm0,%xmm0
   31d4d:	66 0f 6e ce          	movd   %esi,%xmm1
   31d51:	e9 6c 02 00 00       	jmp    31fc2 <sg_raster_triangle_tile_prepared+0x3f12>
   31d56:	0f c2 84 24 50 01 00 	cmpneqps 0x150(%rsp),%xmm0
   31d5d:	00 04 
   31d5f:	66 0f db c8          	pand   %xmm0,%xmm1
   31d63:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   31d6a:	00 00 00 00 
   31d6e:	66 90                	xchg   %ax,%ax
   31d70:	0f 50 c1             	movmskps %xmm1,%eax
   31d73:	a8 0f                	test   $0xf,%al
   31d75:	0f 84 45 d4 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   31d7b:	c7 84 24 70 01 00 00 	movl   $0x1,0x170(%rsp)
   31d82:	01 00 00 00 
   31d86:	e9 e8 e3 ff ff       	jmp    30173 <sg_raster_triangle_tile_prepared+0x20c3>
   31d8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   31d90:	44 8b ac 24 2c 01 00 	mov    0x12c(%rsp),%r13d
   31d97:	00 
   31d98:	45 85 ed             	test   %r13d,%r13d
   31d9b:	0f 84 57 cb ff ff    	je     2e8f8 <sg_raster_triangle_tile_prepared+0x848>
   31da1:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
   31da6:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
   31dad:	00 
   31dae:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
   31db3:	48 8d 14 06          	lea    (%rsi,%rax,1),%rdx
   31db7:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
   31dbc:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
   31dc0:	4c 8d 1c 16          	lea    (%rsi,%rdx,1),%r11
   31dc4:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
   31dcb:	00 
   31dcc:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
   31dd1:	48 01 f0             	add    %rsi,%rax
   31dd4:	48 01 fe             	add    %rdi,%rsi
   31dd7:	4c 8d 0c 07          	lea    (%rdi,%rax,1),%r9
   31ddb:	e9 c0 ea ff ff       	jmp    308a0 <sg_raster_triangle_tile_prepared+0x27f0>
   31de0:	0f 28 e0             	movaps %xmm0,%xmm4
   31de3:	0f c2 a4 24 50 01 00 	cmpneqps 0x150(%rsp),%xmm4
   31dea:	00 04 
   31dec:	0f 28 d4             	movaps %xmm4,%xmm2
   31def:	66 0f db d1          	pand   %xmm1,%xmm2
   31df3:	44 0f 50 e2          	movmskps %xmm2,%r12d
   31df7:	41 83 e4 0f          	and    $0xf,%r12d
   31dfb:	0f 84 bf d3 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   31e01:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   31e06:	44 89 e1             	mov    %r12d,%ecx
   31e09:	44 89 e5             	mov    %r12d,%ebp
   31e0c:	45 89 e3             	mov    %r12d,%r11d
   31e0f:	83 e1 01             	and    $0x1,%ecx
   31e12:	83 e5 02             	and    $0x2,%ebp
   31e15:	41 83 e3 04          	and    $0x4,%r11d
   31e19:	8b 90 8c 00 00 00    	mov    0x8c(%rax),%edx
   31e1f:	85 d2                	test   %edx,%edx
   31e21:	0f 84 2b e7 ff ff    	je     30552 <sg_raster_triangle_tile_prepared+0x24a2>
   31e27:	85 c9                	test   %ecx,%ecx
   31e29:	0f 85 f5 20 00 00    	jne    33f24 <sg_raster_triangle_tile_prepared+0x5e74>
   31e2f:	85 ed                	test   %ebp,%ebp
   31e31:	0f 84 0a 36 00 00    	je     35441 <sg_raster_triangle_tile_prepared+0x7391>
   31e37:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   31e3c:	0f 28 a4 24 50 01 00 	movaps 0x150(%rsp),%xmm4
   31e43:	00 
   31e44:	41 8d 40 01          	lea    0x1(%r8),%eax
   31e48:	48 98                	cltq
   31e4a:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   31e4e:	66 0f 3a 17 24 82 01 	extractps $0x1,%xmm4,(%rdx,%rax,4)
   31e55:	45 85 db             	test   %r11d,%r11d
   31e58:	74 1b                	je     31e75 <sg_raster_triangle_tile_prepared+0x3dc5>
   31e5a:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   31e5f:	0f 28 a4 24 50 01 00 	movaps 0x150(%rsp),%xmm4
   31e66:	00 
   31e67:	49 63 c5             	movslq %r13d,%rax
   31e6a:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   31e6e:	66 0f 3a 17 24 82 02 	extractps $0x2,%xmm4,(%rdx,%rax,4)
   31e75:	41 f6 c4 08          	test   $0x8,%r12b
   31e79:	0f 84 d3 e6 ff ff    	je     30552 <sg_raster_triangle_tile_prepared+0x24a2>
   31e7f:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   31e84:	0f 28 a4 24 50 01 00 	movaps 0x150(%rsp),%xmm4
   31e8b:	00 
   31e8c:	41 8d 45 01          	lea    0x1(%r13),%eax
   31e90:	48 98                	cltq
   31e92:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   31e96:	66 0f 3a 17 24 82 03 	extractps $0x3,%xmm4,(%rdx,%rax,4)
   31e9d:	e9 b0 e6 ff ff       	jmp    30552 <sg_raster_triangle_tile_prepared+0x24a2>
   31ea2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   31ea8:	66 0f ef f6          	pxor   %xmm6,%xmm6
   31eac:	e9 83 f8 ff ff       	jmp    31734 <sg_raster_triangle_tile_prepared+0x3684>
   31eb1:	89 e8                	mov    %ebp,%eax
   31eb3:	99                   	cltd
   31eb4:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
   31ebb:	89 d5                	mov    %edx,%ebp
   31ebd:	85 d2                	test   %edx,%edx
   31ebf:	0f 88 48 1d 00 00    	js     33c0d <sg_raster_triangle_tile_prepared+0x5b5d>
   31ec5:	89 c8                	mov    %ecx,%eax
   31ec7:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
   31ece:	99                   	cltd
   31ecf:	f7 f9                	idiv   %ecx
   31ed1:	01 d1                	add    %edx,%ecx
   31ed3:	85 d2                	test   %edx,%edx
   31ed5:	0f 48 d1             	cmovs  %ecx,%edx
   31ed8:	e9 7b fa ff ff       	jmp    31958 <sg_raster_triangle_tile_prepared+0x38a8>
   31edd:	89 e8                	mov    %ebp,%eax
   31edf:	99                   	cltd
   31ee0:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
   31ee7:	89 d5                	mov    %edx,%ebp
   31ee9:	85 d2                	test   %edx,%edx
   31eeb:	0f 88 6b 1e 00 00    	js     33d5c <sg_raster_triangle_tile_prepared+0x5cac>
   31ef1:	89 c8                	mov    %ecx,%eax
   31ef3:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
   31efa:	99                   	cltd
   31efb:	f7 f9                	idiv   %ecx
   31efd:	01 d1                	add    %edx,%ecx
   31eff:	85 d2                	test   %edx,%edx
   31f01:	0f 48 d1             	cmovs  %ecx,%edx
   31f04:	e9 93 fc ff ff       	jmp    31b9c <sg_raster_triangle_tile_prepared+0x3aec>
   31f09:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   31f0e:	66 0f ef e4          	pxor   %xmm4,%xmm4
   31f12:	f3 0f 10 90 18 01 00 	movss  0x118(%rax),%xmm2
   31f19:	00 
   31f1a:	0f 28 da             	movaps %xmm2,%xmm3
   31f1d:	f3 0f 5c 98 14 01 00 	subss  0x114(%rax),%xmm3
   31f24:	00 
   31f25:	0f 2f dc             	comiss %xmm4,%xmm3
   31f28:	0f 84 61 1c 00 00    	je     33b8f <sg_raster_triangle_tile_prepared+0x5adf>
   31f2e:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 31f36 <sg_raster_triangle_tile_prepared+0x3e86>
   31f35:	00 
   31f36:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   31f3a:	0f 5c d0             	subps  %xmm0,%xmm2
   31f3d:	f3 0f 5e e3          	divss  %xmm3,%xmm4
   31f41:	0f 28 c4             	movaps %xmm4,%xmm0
   31f44:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   31f48:	0f 59 d0             	mulps  %xmm0,%xmm2
   31f4b:	e9 83 e4 ff ff       	jmp    303d3 <sg_raster_triangle_tile_prepared+0x2323>
   31f50:	44 8b 4c 24 38       	mov    0x38(%rsp),%r9d
   31f55:	41 39 c1             	cmp    %eax,%r9d
   31f58:	0f 8c 62 d2 ff ff    	jl     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   31f5e:	41 39 c9             	cmp    %ecx,%r9d
   31f61:	0f 8d 59 d2 ff ff    	jge    2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   31f67:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
   31f6e:	44 8b 8c 24 c4 00 00 	mov    0xc4(%rsp),%r9d
   31f75:	00 
   31f76:	66 0f ef d2          	pxor   %xmm2,%xmm2
   31f7a:	66 0f ef c0          	pxor   %xmm0,%xmm0
   31f7e:	39 c6                	cmp    %eax,%esi
   31f80:	0f 9f c1             	setg   %cl
   31f83:	39 c2                	cmp    %eax,%edx
   31f85:	0f 9e c0             	setle  %al
   31f88:	0f b6 c0             	movzbl %al,%eax
   31f8b:	21 c8                	and    %ecx,%eax
   31f8d:	f7 d8                	neg    %eax
   31f8f:	41 39 f1             	cmp    %esi,%r9d
   31f92:	0f 9c c1             	setl   %cl
   31f95:	41 39 d1             	cmp    %edx,%r9d
   31f98:	0f 9d c2             	setge  %dl
   31f9b:	0f b6 d2             	movzbl %dl,%edx
   31f9e:	21 ca                	and    %ecx,%edx
   31fa0:	f7 da                	neg    %edx
   31fa2:	e9 6e e5 ff ff       	jmp    30515 <sg_raster_triangle_tile_prepared+0x2465>
   31fa7:	89 e9                	mov    %ebp,%ecx
   31fa9:	be ff ff ff ff       	mov    $0xffffffff,%esi
   31fae:	d1 e9                	shr    $1,%ecx
   31fb0:	66 0f 6e c6          	movd   %esi,%xmm0
   31fb4:	f7 d9                	neg    %ecx
   31fb6:	44 89 de             	mov    %r11d,%esi
   31fb9:	c1 ee 02             	shr    $0x2,%esi
   31fbc:	f7 de                	neg    %esi
   31fbe:	66 0f 6e ce          	movd   %esi,%xmm1
   31fc2:	45 89 e3             	mov    %r12d,%r11d
   31fc5:	41 c1 eb 03          	shr    $0x3,%r11d
   31fc9:	41 f7 db             	neg    %r11d
   31fcc:	66 41 0f 3a 22 cb 01 	pinsrd $0x1,%r11d,%xmm1
   31fd3:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
   31fd9:	66 0f 6e e0          	movd   %eax,%xmm4
   31fdd:	44 89 e0             	mov    %r12d,%eax
   31fe0:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   31fe4:	66 0f 70 cc 00       	pshufd $0x0,%xmm4,%xmm1
   31fe9:	83 e0 03             	and    $0x3,%eax
   31fec:	66 0f db c1          	pand   %xmm1,%xmm0
   31ff0:	66 0f db d8          	pand   %xmm0,%xmm3
   31ff4:	39 bc 24 c4 00 00 00 	cmp    %edi,0xc4(%rsp)
   31ffb:	7d 36                	jge    32033 <sg_raster_triangle_tile_prepared+0x3f83>
   31ffd:	42 8d 0c ad 00 00 00 	lea    0x0(,%r13,4),%ecx
   32004:	00 
   32005:	48 63 f1             	movslq %ecx,%rsi
   32008:	f3 0f 7e 0c 32       	movq   (%rdx,%rsi,1),%xmm1
   3200d:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
   32011:	66 0f df c2          	pandn  %xmm2,%xmm0
   32015:	66 0f eb c3          	por    %xmm3,%xmm0
   32019:	85 c0                	test   %eax,%eax
   3201b:	0f 85 81 1b 00 00    	jne    33ba2 <sg_raster_triangle_tile_prepared+0x5af2>
   32021:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
   32026:	48 63 c9             	movslq %ecx,%rcx
   32029:	66 0f d6 04 0a       	movq   %xmm0,(%rdx,%rcx,1)
   3202e:	e9 8d d1 ff ff       	jmp    2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   32033:	85 c0                	test   %eax,%eax
   32035:	0f 84 85 d1 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   3203b:	f3 0f 7e d2          	movq   %xmm2,%xmm2
   3203f:	66 0f df c2          	pandn  %xmm2,%xmm0
   32043:	66 0f eb c3          	por    %xmm3,%xmm0
   32047:	66 41 0f d6 00       	movq   %xmm0,(%r8)
   3204c:	e9 6f d1 ff ff       	jmp    2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   32051:	8b 84 24 2c 01 00 00 	mov    0x12c(%rsp),%eax
   32058:	c7 84 24 fc 00 00 00 	movl   $0x1,0xfc(%rsp)
   3205f:	01 00 00 00 
   32063:	85 c0                	test   %eax,%eax
   32065:	0f 84 a5 c5 ff ff    	je     2e610 <sg_raster_triangle_tile_prepared+0x560>
   3206b:	c7 84 24 2c 01 00 00 	movl   $0x0,0x12c(%rsp)
   32072:	00 00 00 00 
   32076:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   3207b:	8b 80 c0 3d 00 00    	mov    0x3dc0(%rax),%eax
   32081:	85 c0                	test   %eax,%eax
   32083:	0f 85 87 c5 ff ff    	jne    2e610 <sg_raster_triangle_tile_prepared+0x560>
   32089:	e9 68 c5 ff ff       	jmp    2e5f6 <sg_raster_triangle_tile_prepared+0x546>
   3208e:	4c 89 bc 24 b0 01 00 	mov    %r15,0x1b0(%rsp)
   32095:	00 
   32096:	b8 00 80 00 00       	mov    $0x8000,%eax
   3209b:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 320a3 <sg_raster_triangle_tile_prepared+0x3ff3>
   320a2:	00 
   320a3:	89 bc 24 c0 01 00 00 	mov    %edi,0x1c0(%rsp)
   320aa:	4c 8b 9c 24 a0 01 00 	mov    0x1a0(%rsp),%r11
   320b1:	00 
   320b2:	66 44 0f 6e c0       	movd   %eax,%xmm8
   320b7:	44 89 84 24 d0 01 00 	mov    %r8d,0x1d0(%rsp)
   320be:	00 
   320bf:	41 89 c8             	mov    %ecx,%r8d
   320c2:	66 45 0f 70 c0 00    	pshufd $0x0,%xmm8,%xmm8
   320c8:	89 9c 24 e0 01 00 00 	mov    %ebx,0x1e0(%rsp)
   320cf:	89 eb                	mov    %ebp,%ebx
   320d1:	41 0f a3 f4          	bt     %esi,%r12d
   320d5:	0f 83 bf 01 00 00    	jae    3229a <sg_raster_triangle_tile_prepared+0x41ea>
   320db:	8b 84 b4 c0 02 00 00 	mov    0x2c0(%rsp,%rsi,4),%eax
   320e2:	8b ac b4 d0 02 00 00 	mov    0x2d0(%rsp,%rsi,4),%ebp
   320e9:	44 8d 78 01          	lea    0x1(%rax),%r15d
   320ed:	8d 4d 01             	lea    0x1(%rbp),%ecx
   320f0:	45 85 c0             	test   %r8d,%r8d
   320f3:	0f 84 b7 01 00 00    	je     322b0 <sg_raster_triangle_tile_prepared+0x4200>
   320f9:	44 21 c0             	and    %r8d,%eax
   320fc:	45 21 c7             	and    %r8d,%r15d
   320ff:	89 c7                	mov    %eax,%edi
   32101:	85 db                	test   %ebx,%ebx
   32103:	0f 84 21 1a 00 00    	je     33b2a <sg_raster_triangle_tile_prepared+0x5a7a>
   32109:	21 d9                	and    %ebx,%ecx
   3210b:	21 dd                	and    %ebx,%ebp
   3210d:	89 ca                	mov    %ecx,%edx
   3210f:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   32116:	89 c1                	mov    %eax,%ecx
   32118:	d3 e5                	shl    %cl,%ebp
   3211a:	d3 e2                	shl    %cl,%edx
   3211c:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 32124 <sg_raster_triangle_tile_prepared+0x4074>
   32123:	00 
   32124:	8d 44 3d 00          	lea    0x0(%rbp,%rdi,1),%eax
   32128:	44 01 fd             	add    %r15d,%ebp
   3212b:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
   32130:	66 44 0f 6e b4 b4 e0 	movd   0x2e0(%rsp,%rsi,4),%xmm14
   32137:	02 00 00 
   3213a:	c1 e0 02             	shl    $0x2,%eax
   3213d:	66 44 0f 6f 15 00 00 	movdqa 0x0(%rip),%xmm10        # 32146 <sg_raster_triangle_tile_prepared+0x4096>
   32144:	00 00 
   32146:	66 44 0f 38 39 f0    	pminsd %xmm0,%xmm14
   3214c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32150:	48 98                	cltq
   32152:	66 44 0f 38 3d f0    	pmaxsd %xmm0,%xmm14
   32158:	66 0f 6e 84 b4 f0 02 	movd   0x2f0(%rsp,%rsi,4),%xmm0
   3215f:	00 00 
   32161:	66 41 0f 38 39 c2    	pminsd %xmm10,%xmm0
   32167:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
   3216c:	66 41 0f 38 3d c2    	pmaxsd %xmm10,%xmm0
   32172:	66 45 0f 6e 14 03    	movd   (%r11,%rax,1),%xmm10
   32178:	8d 04 ad 00 00 00 00 	lea    0x0(,%rbp,4),%eax
   3217f:	66 44 0f fa f8       	psubd  %xmm0,%xmm15
   32184:	48 98                	cltq
   32186:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
   3218b:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
   32190:	66 45 0f 6e 3c 03    	movd   (%r11,%rax,1),%xmm15
   32196:	8d 04 3a             	lea    (%rdx,%rdi,1),%eax
   32199:	44 01 fa             	add    %r15d,%edx
   3219c:	c1 e0 02             	shl    $0x2,%eax
   3219f:	66 45 0f 38 30 ff    	pmovzxbw %xmm15,%xmm15
   321a5:	66 45 0f 38 30 d2    	pmovzxbw %xmm10,%xmm10
   321ab:	66 45 0f 70 ed 00    	pshufd $0x0,%xmm13,%xmm13
   321b1:	48 98                	cltq
   321b3:	66 45 0f 61 d7       	punpcklwd %xmm15,%xmm10
   321b8:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
   321bd:	66 45 0f 70 e4 00    	pshufd $0x0,%xmm12,%xmm12
   321c3:	66 41 0f 6e 04 03    	movd   (%r11,%rax,1),%xmm0
   321c9:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
   321d0:	66 45 0f fa fe       	psubd  %xmm14,%xmm15
   321d5:	48 98                	cltq
   321d7:	66 41 0f 72 f6 10    	pslld  $0x10,%xmm14
   321dd:	66 0f 38 30 c0       	pmovzxbw %xmm0,%xmm0
   321e2:	66 45 0f 6e 1c 03    	movd   (%r11,%rax,1),%xmm11
   321e8:	66 45 0f 38 30 db    	pmovzxbw %xmm11,%xmm11
   321ee:	66 41 0f 61 c3       	punpcklwd %xmm11,%xmm0
   321f3:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
   321f8:	66 45 0f eb de       	por    %xmm14,%xmm11
   321fd:	66 45 0f 70 db 00    	pshufd $0x0,%xmm11,%xmm11
   32203:	66 45 0f f5 d3       	pmaddwd %xmm11,%xmm10
   32208:	66 41 0f f5 c3       	pmaddwd %xmm11,%xmm0
   3220d:	66 41 0f 38 40 c5    	pmulld %xmm13,%xmm0
   32213:	66 45 0f 38 40 d4    	pmulld %xmm12,%xmm10
   32219:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
   3221e:	66 41 0f fe c0       	paddd  %xmm8,%xmm0
   32223:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
   32228:	66 0f 38 2b c0       	packusdw %xmm0,%xmm0
   3222d:	66 0f 67 c0          	packuswb %xmm0,%xmm0
   32231:	66 0f 7e c0          	movd   %xmm0,%eax
   32235:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32239:	0f b6 d0             	movzbl %al,%edx
   3223c:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
   32240:	0f b6 d4             	movzbl %ah,%edx
   32243:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   32247:	f3 0f 11 84 b4 00 03 	movss  %xmm0,0x300(%rsp,%rsi,4)
   3224e:	00 00 
   32250:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32254:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
   32258:	89 c2                	mov    %eax,%edx
   3225a:	c1 e8 18             	shr    $0x18,%eax
   3225d:	c1 ea 10             	shr    $0x10,%edx
   32260:	0f b6 d2             	movzbl %dl,%edx
   32263:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   32267:	f3 0f 11 84 b4 10 03 	movss  %xmm0,0x310(%rsp,%rsi,4)
   3226e:	00 00 
   32270:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32274:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
   32278:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   3227c:	f3 0f 11 84 b4 60 03 	movss  %xmm0,0x360(%rsp,%rsi,4)
   32283:	00 00 
   32285:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32289:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
   3228d:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
   32291:	f3 0f 11 84 b4 a0 03 	movss  %xmm0,0x3a0(%rsp,%rsi,4)
   32298:	00 00 
   3229a:	48 83 c6 01          	add    $0x1,%rsi
   3229e:	48 83 fe 04          	cmp    $0x4,%rsi
   322a2:	0f 85 29 fe ff ff    	jne    320d1 <sg_raster_triangle_tile_prepared+0x4021>
   322a8:	e9 77 f8 ff ff       	jmp    31b24 <sg_raster_triangle_tile_prepared+0x3a74>
   322ad:	0f 1f 00             	nopl   (%rax)
   322b0:	99                   	cltd
   322b1:	41 f7 f9             	idiv   %r9d
   322b4:	44 89 f8             	mov    %r15d,%eax
   322b7:	85 d2                	test   %edx,%edx
   322b9:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
   322bd:	0f 49 fa             	cmovns %edx,%edi
   322c0:	99                   	cltd
   322c1:	41 f7 f9             	idiv   %r9d
   322c4:	41 89 d7             	mov    %edx,%r15d
   322c7:	85 d2                	test   %edx,%edx
   322c9:	0f 88 88 18 00 00    	js     33b57 <sg_raster_triangle_tile_prepared+0x5aa7>
   322cf:	85 db                	test   %ebx,%ebx
   322d1:	0f 84 8b 18 00 00    	je     33b62 <sg_raster_triangle_tile_prepared+0x5ab2>
   322d7:	21 d9                	and    %ebx,%ecx
   322d9:	21 dd                	and    %ebx,%ebp
   322db:	89 ca                	mov    %ecx,%edx
   322dd:	41 0f af e9          	imul   %r9d,%ebp
   322e1:	41 0f af d1          	imul   %r9d,%edx
   322e5:	e9 32 fe ff ff       	jmp    3211c <sg_raster_triangle_tile_prepared+0x406c>
   322ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   322ef:	31 d2                	xor    %edx,%edx
   322f1:	66 0f ef c9          	pxor   %xmm1,%xmm1
   322f5:	66 0f 6e f8          	movd   %eax,%xmm7
   322f9:	e9 40 e5 ff ff       	jmp    3083e <sg_raster_triangle_tile_prepared+0x278e>
   322fe:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 32305 <sg_raster_triangle_tile_prepared+0x4255>
   32305:	64 48 8b 00          	mov    %fs:(%rax),%rax
   32309:	41 83 fd 04          	cmp    $0x4,%r13d
   3230d:	0f 84 64 20 00 00    	je     34377 <sg_raster_triangle_tile_prepared+0x62c7>
   32313:	48 85 c0             	test   %rax,%rax
   32316:	74 0b                	je     32323 <sg_raster_triangle_tile_prepared+0x4273>
   32318:	8b 40 2c             	mov    0x2c(%rax),%eax
   3231b:	85 c0                	test   %eax,%eax
   3231d:	0f 85 a9 3b 00 00    	jne    35ecc <sg_raster_triangle_tile_prepared+0x7e1c>
   32323:	48 83 ec 08          	sub    $0x8,%rsp
   32327:	8b 84 24 38 01 00 00 	mov    0x138(%rsp),%eax
   3232e:	50                   	push   %rax
   3232f:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
   32336:	50                   	push   %rax
   32337:	8b 84 24 80 02 00 00 	mov    0x280(%rsp),%eax
   3233e:	50                   	push   %rax
   3233f:	ff 74 24 48          	push   0x48(%rsp)
   32343:	41 57                	push   %r15
   32345:	8b 44 24 44          	mov    0x44(%rsp),%eax
   32349:	50                   	push   %rax
   3234a:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
   32351:	50                   	push   %rax
   32352:	44 8b 8c 24 38 01 00 	mov    0x138(%rsp),%r9d
   32359:	00 
   3235a:	f3 0f 10 84 24 34 01 	movss  0x134(%rsp),%xmm0
   32361:	00 00 
   32363:	4c 8b 84 24 20 01 00 	mov    0x120(%rsp),%r8
   3236a:	00 
   3236b:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   32372:	00 
   32373:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
   3237a:	00 
   3237b:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
   32382:	00 
   32383:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   32388:	e8 e3 4b ff ff       	call   26f70 <sg_raster_triangle_msaa2>
   3238d:	48 83 c4 40          	add    $0x40,%rsp
   32391:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
   32396:	44 8b 7e 74          	mov    0x74(%rsi),%r15d
   3239a:	45 85 ff             	test   %r15d,%r15d
   3239d:	0f 84 32 c7 ff ff    	je     2ead5 <sg_raster_triangle_tile_prepared+0xa25>
   323a3:	e9 28 c7 ff ff       	jmp    2ead0 <sg_raster_triangle_tile_prepared+0xa20>
   323a8:	66 0f ef ff          	pxor   %xmm7,%xmm7
   323ac:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   323b1:	66 0f ef e4          	pxor   %xmm4,%xmm4
   323b5:	66 0f ef db          	pxor   %xmm3,%xmm3
   323b9:	f3 49 0f 2a fb       	cvtsi2ss %r11,%xmm7
   323be:	66 45 0f ef db       	pxor   %xmm11,%xmm11
   323c3:	f3 4d 0f 2a c1       	cvtsi2ss %r9,%xmm8
   323c8:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
   323cd:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
   323d2:	e9 fe e8 ff ff       	jmp    30cd5 <sg_raster_triangle_tile_prepared+0x2c25>
   323d7:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
   323dc:	41 f6 c4 08          	test   $0x8,%r12b
   323e0:	0f 85 e6 f2 ff ff    	jne    316cc <sg_raster_triangle_tile_prepared+0x361c>
   323e6:	66 45 0f ef db       	pxor   %xmm11,%xmm11
   323eb:	45 0f 28 d3          	movaps %xmm11,%xmm10
   323ef:	66 0f ef d2          	pxor   %xmm2,%xmm2
   323f3:	66 0f ef ff          	pxor   %xmm7,%xmm7
   323f7:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
   323fc:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
   32401:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
   32406:	f3 49 0f 2a fb       	cvtsi2ss %r11,%xmm7
   3240b:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
   32410:	f3 4d 0f 2a c1       	cvtsi2ss %r9,%xmm8
   32415:	e9 bb e8 ff ff       	jmp    30cd5 <sg_raster_triangle_tile_prepared+0x2c25>
   3241a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   32420:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   32427:	00 
   32428:	f3 0f 10 43 50       	movss  0x50(%rbx),%xmm0
   3242d:	f3 44 0f 10 73 54    	movss  0x54(%rbx),%xmm14
   32433:	f3 0f 10 68 50       	movss  0x50(%rax),%xmm5
   32438:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   3243c:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
   32441:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
   32446:	f3 0f 58 e8          	addss  %xmm0,%xmm5
   3244a:	f3 0f 10 42 50       	movss  0x50(%rdx),%xmm0
   3244f:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
   32454:	f3 0f 58 e8          	addss  %xmm0,%xmm5
   32458:	f3 0f 10 40 54       	movss  0x54(%rax),%xmm0
   3245d:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   32464:	00 
   32465:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   3246a:	44 8b 60 24          	mov    0x24(%rax),%r12d
   3246e:	44 8b 48 28          	mov    0x28(%rax),%r9d
   32472:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
   32477:	48 8b 48 30          	mov    0x30(%rax),%rcx
   3247b:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
   32480:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
   32486:	31 d2                	xor    %edx,%edx
   32488:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
   3248d:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
   32492:	44 0f 28 f5          	movaps %xmm5,%xmm14
   32496:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
   3249d:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
   324a2:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   324a7:	f3 45 0f 2a f4       	cvtsi2ss %r12d,%xmm14
   324ac:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
   324b1:	f3 41 0f 59 ee       	mulss  %xmm14,%xmm5
   324b6:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 324bf <sg_raster_triangle_tile_prepared+0x440f>
   324bd:	00 00 
   324bf:	44 0f 28 f8          	movaps %xmm0,%xmm15
   324c3:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   324ca:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
   324cf:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   324d4:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
   324d9:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
   324de:	f3 41 0f 59 c7       	mulss  %xmm15,%xmm0
   324e3:	44 0f 28 fd          	movaps %xmm5,%xmm15
   324e7:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   324ee:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
   324f3:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   324f8:	44 0f 28 f8          	movaps %xmm0,%xmm15
   324fc:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   32503:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
   32508:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   3250d:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
   32512:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
   32517:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 3251f <sg_raster_triangle_tile_prepared+0x446f>
   3251e:	00 
   3251f:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   32524:	f3 0f 2c f5          	cvttss2si %xmm5,%esi
   32528:	66 0f ef ed          	pxor   %xmm5,%xmm5
   3252c:	f3 0f 2a ef          	cvtsi2ss %edi,%xmm5
   32530:	85 f6                	test   %esi,%esi
   32532:	f3 0f 5c c5          	subss  %xmm5,%xmm0
   32536:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 3253e <sg_raster_triangle_tile_prepared+0x448e>
   3253d:	00 
   3253e:	0f 48 f2             	cmovs  %edx,%esi
   32541:	ba 00 01 00 00       	mov    $0x100,%edx
   32546:	39 d6                	cmp    %edx,%esi
   32548:	0f 4f f2             	cmovg  %edx,%esi
   3254b:	31 d2                	xor    %edx,%edx
   3254d:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
   32552:	f3 44 0f 2c c0       	cvttss2si %xmm0,%r8d
   32557:	45 85 c0             	test   %r8d,%r8d
   3255a:	44 0f 48 c2          	cmovs  %edx,%r8d
   3255e:	ba 00 01 00 00       	mov    $0x100,%edx
   32563:	41 89 d5             	mov    %edx,%r13d
   32566:	41 39 d0             	cmp    %edx,%r8d
   32569:	44 0f 4f c2          	cmovg  %edx,%r8d
   3256d:	41 29 f5             	sub    %esi,%r13d
   32570:	44 29 c2             	sub    %r8d,%edx
   32573:	89 94 24 50 01 00 00 	mov    %edx,0x150(%rsp)
   3257a:	8d 50 01             	lea    0x1(%rax),%edx
   3257d:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
   32584:	8d 57 01             	lea    0x1(%rdi),%edx
   32587:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
   3258e:	45 85 e4             	test   %r12d,%r12d
   32591:	0f 8e 3e 02 00 00    	jle    327d5 <sg_raster_triangle_tile_prepared+0x4725>
   32597:	45 8d 5c 24 ff       	lea    -0x1(%r12),%r11d
   3259c:	45 85 dc             	test   %r11d,%r12d
   3259f:	0f 85 30 02 00 00    	jne    327d5 <sg_raster_triangle_tile_prepared+0x4725>
   325a5:	45 85 c9             	test   %r9d,%r9d
   325a8:	0f 8e cb 38 00 00    	jle    35e79 <sg_raster_triangle_tile_prepared+0x7dc9>
   325ae:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
   325b2:	41 85 d9             	test   %ebx,%r9d
   325b5:	0f 85 be 38 00 00    	jne    35e79 <sg_raster_triangle_tile_prepared+0x7dc9>
   325bb:	45 85 db             	test   %r11d,%r11d
   325be:	0f 84 ea 53 00 00    	je     379ae <sg_raster_triangle_tile_prepared+0x98fe>
   325c4:	44 21 d8             	and    %r11d,%eax
   325c7:	89 c5                	mov    %eax,%ebp
   325c9:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
   325d0:	41 21 c3             	and    %eax,%r11d
   325d3:	85 db                	test   %ebx,%ebx
   325d5:	0f 84 33 02 00 00    	je     3280e <sg_raster_triangle_tile_prepared+0x475e>
   325db:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   325e2:	21 df                	and    %ebx,%edi
   325e4:	21 d8                	and    %ebx,%eax
   325e6:	41 0f af fc          	imul   %r12d,%edi
   325ea:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   325ef:	66 0f ef c0          	pxor   %xmm0,%xmm0
   325f3:	41 0f af c4          	imul   %r12d,%eax
   325f7:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   325fc:	66 0f ef ed          	pxor   %xmm5,%xmm5
   32600:	44 8d 4c 3d 00       	lea    0x0(%rbp,%rdi,1),%r9d
   32605:	44 01 df             	add    %r11d,%edi
   32608:	41 c1 e1 02          	shl    $0x2,%r9d
   3260c:	c1 e7 02             	shl    $0x2,%edi
   3260f:	8d 54 05 00          	lea    0x0(%rbp,%rax,1),%edx
   32613:	44 01 d8             	add    %r11d,%eax
   32616:	4d 63 c9             	movslq %r9d,%r9
   32619:	48 63 ff             	movslq %edi,%rdi
   3261c:	c1 e2 02             	shl    $0x2,%edx
   3261f:	8b ac 24 50 01 00 00 	mov    0x150(%rsp),%ebp
   32626:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
   3262b:	44 0f b6 24 39       	movzbl (%rcx,%rdi,1),%r12d
   32630:	c1 e0 02             	shl    $0x2,%eax
   32633:	48 63 d2             	movslq %edx,%rdx
   32636:	48 98                	cltq
   32638:	45 0f af dd          	imul   %r13d,%r11d
   3263c:	0f b6 1c 01          	movzbl (%rcx,%rax,1),%ebx
   32640:	44 0f af e6          	imul   %esi,%r12d
   32644:	0f af de             	imul   %esi,%ebx
   32647:	45 01 dc             	add    %r11d,%r12d
   3264a:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
   3264f:	44 0f af e5          	imul   %ebp,%r12d
   32653:	45 0f af dd          	imul   %r13d,%r11d
   32657:	41 01 db             	add    %ebx,%r11d
   3265a:	0f b6 5c 01 01       	movzbl 0x1(%rcx,%rax,1),%ebx
   3265f:	45 0f af d8          	imul   %r8d,%r11d
   32663:	47 8d 9c 1c 00 80 00 	lea    0x8000(%r12,%r11,1),%r11d
   3266a:	00 
   3266b:	41 bc ff 00 00 00    	mov    $0xff,%r12d
   32671:	41 c1 fb 10          	sar    $0x10,%r11d
   32675:	45 39 e3             	cmp    %r12d,%r11d
   32678:	45 0f 4f dc          	cmovg  %r12d,%r11d
   3267c:	44 0f b6 64 39 01    	movzbl 0x1(%rcx,%rdi,1),%r12d
   32682:	0f af de             	imul   %esi,%ebx
   32685:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
   3268a:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
   32690:	44 0f af e6          	imul   %esi,%r12d
   32694:	45 0f af dd          	imul   %r13d,%r11d
   32698:	45 01 dc             	add    %r11d,%r12d
   3269b:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
   326a1:	44 0f af e5          	imul   %ebp,%r12d
   326a5:	45 0f af dd          	imul   %r13d,%r11d
   326a9:	41 01 db             	add    %ebx,%r11d
   326ac:	0f b6 5c 01 02       	movzbl 0x2(%rcx,%rax,1),%ebx
   326b1:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
   326b6:	45 0f af d8          	imul   %r8d,%r11d
   326ba:	47 8d 9c 1c 00 80 00 	lea    0x8000(%r12,%r11,1),%r11d
   326c1:	00 
   326c2:	41 bc ff 00 00 00    	mov    $0xff,%r12d
   326c8:	41 c1 fb 10          	sar    $0x10,%r11d
   326cc:	45 39 e3             	cmp    %r12d,%r11d
   326cf:	45 0f 4f dc          	cmovg  %r12d,%r11d
   326d3:	44 0f b6 64 39 02    	movzbl 0x2(%rcx,%rdi,1),%r12d
   326d9:	0f af de             	imul   %esi,%ebx
   326dc:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
   326e1:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
   326e6:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
   326ec:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
   326f2:	44 0f af e6          	imul   %esi,%r12d
   326f6:	45 0f af dd          	imul   %r13d,%r11d
   326fa:	45 01 dc             	add    %r11d,%r12d
   326fd:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
   32703:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
   32708:	44 0f af e5          	imul   %ebp,%r12d
   3270c:	45 0f af dd          	imul   %r13d,%r11d
   32710:	41 01 db             	add    %ebx,%r11d
   32713:	45 0f af d8          	imul   %r8d,%r11d
   32717:	47 8d 9c 1c 00 80 00 	lea    0x8000(%r12,%r11,1),%r11d
   3271e:	00 
   3271f:	41 bc ff 00 00 00    	mov    $0xff,%r12d
   32725:	41 c1 fb 10          	sar    $0x10,%r11d
   32729:	45 39 e3             	cmp    %r12d,%r11d
   3272c:	45 0f 4f dc          	cmovg  %r12d,%r11d
   32730:	41 0f af d5          	imul   %r13d,%edx
   32734:	45 0f af cd          	imul   %r13d,%r9d
   32738:	0f af fe             	imul   %esi,%edi
   3273b:	0f af c6             	imul   %esi,%eax
   3273e:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   32743:	41 01 f9             	add    %edi,%r9d
   32746:	01 d0                	add    %edx,%eax
   32748:	44 0f af cd          	imul   %ebp,%r9d
   3274c:	ba ff 00 00 00       	mov    $0xff,%edx
   32751:	41 0f af c0          	imul   %r8d,%eax
   32755:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
   3275c:	00 
   3275d:	c1 f8 10             	sar    $0x10,%eax
   32760:	39 d0                	cmp    %edx,%eax
   32762:	0f 4f c2             	cmovg  %edx,%eax
   32765:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
   32769:	41 83 fa 02          	cmp    $0x2,%r10d
   3276d:	0f 84 e4 34 00 00    	je     35c57 <sg_raster_triangle_tile_prepared+0x7ba7>
   32773:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 3277b <sg_raster_triangle_tile_prepared+0x46cb>
   3277a:	00 
   3277b:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 32783 <sg_raster_triangle_tile_prepared+0x46d3>
   32782:	00 
   32783:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 3278b <sg_raster_triangle_tile_prepared+0x46db>
   3278a:	00 
   3278b:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   3278f:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 32797 <sg_raster_triangle_tile_prepared+0x46e7>
   32796:	00 
   32797:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
   3279c:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
   327a0:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
   327a5:	0f 28 e0             	movaps %xmm0,%xmm4
   327a8:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   327ac:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   327b3:	00 00 
   327b5:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   327bc:	00 00 
   327be:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   327c5:	00 00 
   327c7:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   327ce:	00 00 
   327d0:	e9 93 d8 ff ff       	jmp    30068 <sg_raster_triangle_tile_prepared+0x1fb8>
   327d5:	99                   	cltd
   327d6:	41 f7 fc             	idiv   %r12d
   327d9:	41 89 d3             	mov    %edx,%r11d
   327dc:	89 d5                	mov    %edx,%ebp
   327de:	45 85 c9             	test   %r9d,%r9d
   327e1:	7e 0d                	jle    327f0 <sg_raster_triangle_tile_prepared+0x4740>
   327e3:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
   327e7:	41 85 d9             	test   %ebx,%r9d
   327ea:	0f 84 6d 2e 00 00    	je     3565d <sg_raster_triangle_tile_prepared+0x75ad>
   327f0:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
   327f7:	99                   	cltd
   327f8:	41 f7 fc             	idiv   %r12d
   327fb:	45 85 db             	test   %r11d,%r11d
   327fe:	0f 88 fd 37 00 00    	js     36001 <sg_raster_triangle_tile_prepared+0x7f51>
   32804:	46 8d 1c 22          	lea    (%rdx,%r12,1),%r11d
   32808:	85 d2                	test   %edx,%edx
   3280a:	44 0f 49 da          	cmovns %edx,%r11d
   3280e:	89 f8                	mov    %edi,%eax
   32810:	99                   	cltd
   32811:	41 f7 f9             	idiv   %r9d
   32814:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   3281b:	85 d2                	test   %edx,%edx
   3281d:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
   32821:	0f 49 fa             	cmovns %edx,%edi
   32824:	99                   	cltd
   32825:	41 f7 f9             	idiv   %r9d
   32828:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
   3282c:	85 d2                	test   %edx,%edx
   3282e:	0f 49 c2             	cmovns %edx,%eax
   32831:	e9 b0 fd ff ff       	jmp    325e6 <sg_raster_triangle_tile_prepared+0x4536>
   32836:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   3283d:	00 
   3283e:	f3 0f 10 6b 50       	movss  0x50(%rbx),%xmm5
   32843:	f3 44 0f 10 73 54    	movss  0x54(%rbx),%xmm14
   32849:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
   3284e:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
   32852:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
   32857:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   3285c:	f3 0f 58 c5          	addss  %xmm5,%xmm0
   32860:	f3 0f 10 6a 50       	movss  0x50(%rdx),%xmm5
   32865:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
   3286a:	f3 0f 58 c5          	addss  %xmm5,%xmm0
   3286e:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
   32873:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   3287a:	00 
   3287b:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
   32880:	44 8b 58 24          	mov    0x24(%rax),%r11d
   32884:	44 8b 48 28          	mov    0x28(%rax),%r9d
   32888:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
   3288d:	48 8b 48 30          	mov    0x30(%rax),%rcx
   32891:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   32896:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
   3289c:	31 d2                	xor    %edx,%edx
   3289e:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
   328a3:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   328a8:	44 0f 28 f0          	movaps %xmm0,%xmm14
   328ac:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
   328b3:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   328b8:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   328bd:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   328c2:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
   328c7:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
   328cc:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 328d5 <sg_raster_triangle_tile_prepared+0x4825>
   328d3:	00 00 
   328d5:	44 0f 28 fd          	movaps %xmm5,%xmm15
   328d9:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   328e0:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
   328e5:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   328ea:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
   328ef:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   328f4:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
   328f9:	44 0f 28 f8          	movaps %xmm0,%xmm15
   328fd:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   32904:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
   32909:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
   3290e:	44 0f 28 fd          	movaps %xmm5,%xmm15
   32912:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   32919:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
   3291e:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   32923:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
   32928:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
   3292d:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 32935 <sg_raster_triangle_tile_prepared+0x4885>
   32934:	00 
   32935:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
   3293a:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
   3293e:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32942:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
   32946:	85 f6                	test   %esi,%esi
   32948:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   3294c:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 32954 <sg_raster_triangle_tile_prepared+0x48a4>
   32953:	00 
   32954:	0f 48 f2             	cmovs  %edx,%esi
   32957:	ba 00 01 00 00       	mov    $0x100,%edx
   3295c:	39 d6                	cmp    %edx,%esi
   3295e:	0f 4f f2             	cmovg  %edx,%esi
   32961:	31 d2                	xor    %edx,%edx
   32963:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   32968:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
   3296d:	45 85 c0             	test   %r8d,%r8d
   32970:	44 0f 48 c2          	cmovs  %edx,%r8d
   32974:	ba 00 01 00 00       	mov    $0x100,%edx
   32979:	89 d3                	mov    %edx,%ebx
   3297b:	41 39 d0             	cmp    %edx,%r8d
   3297e:	44 0f 4f c2          	cmovg  %edx,%r8d
   32982:	29 f3                	sub    %esi,%ebx
   32984:	41 89 da             	mov    %ebx,%r10d
   32987:	44 29 c2             	sub    %r8d,%edx
   3298a:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
   32991:	8d 50 01             	lea    0x1(%rax),%edx
   32994:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
   3299b:	8d 57 01             	lea    0x1(%rdi),%edx
   3299e:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
   329a5:	45 85 db             	test   %r11d,%r11d
   329a8:	0f 8e 40 02 00 00    	jle    32bee <sg_raster_triangle_tile_prepared+0x4b3e>
   329ae:	41 8d 5b ff          	lea    -0x1(%r11),%ebx
   329b2:	41 85 db             	test   %ebx,%r11d
   329b5:	0f 85 33 02 00 00    	jne    32bee <sg_raster_triangle_tile_prepared+0x4b3e>
   329bb:	45 85 c9             	test   %r9d,%r9d
   329be:	0f 8e ed 34 00 00    	jle    35eb1 <sg_raster_triangle_tile_prepared+0x7e01>
   329c4:	41 8d 69 ff          	lea    -0x1(%r9),%ebp
   329c8:	41 85 e9             	test   %ebp,%r9d
   329cb:	0f 85 e0 34 00 00    	jne    35eb1 <sg_raster_triangle_tile_prepared+0x7e01>
   329d1:	85 db                	test   %ebx,%ebx
   329d3:	0f 84 12 47 00 00    	je     370eb <sg_raster_triangle_tile_prepared+0x903b>
   329d9:	21 d8                	and    %ebx,%eax
   329db:	41 89 c5             	mov    %eax,%r13d
   329de:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   329e5:	21 c3                	and    %eax,%ebx
   329e7:	85 ed                	test   %ebp,%ebp
   329e9:	0f 84 38 02 00 00    	je     32c27 <sg_raster_triangle_tile_prepared+0x4b77>
   329ef:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   329f6:	21 ef                	and    %ebp,%edi
   329f8:	21 e8                	and    %ebp,%eax
   329fa:	41 0f af fb          	imul   %r11d,%edi
   329fe:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   32a03:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32a07:	41 0f af c3          	imul   %r11d,%eax
   32a0b:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   32a10:	66 0f ef ed          	pxor   %xmm5,%xmm5
   32a14:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
   32a18:	01 df                	add    %ebx,%edi
   32a1a:	41 c1 e1 02          	shl    $0x2,%r9d
   32a1e:	c1 e7 02             	shl    $0x2,%edi
   32a21:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
   32a25:	01 d8                	add    %ebx,%eax
   32a27:	4d 63 c9             	movslq %r9d,%r9
   32a2a:	48 63 ff             	movslq %edi,%rdi
   32a2d:	45 89 d5             	mov    %r10d,%r13d
   32a30:	c1 e2 02             	shl    $0x2,%edx
   32a33:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
   32a38:	0f b6 1c 39          	movzbl (%rcx,%rdi,1),%ebx
   32a3c:	c1 e0 02             	shl    $0x2,%eax
   32a3f:	48 63 d2             	movslq %edx,%rdx
   32a42:	48 98                	cltq
   32a44:	45 0f af da          	imul   %r10d,%r11d
   32a48:	44 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10d
   32a4f:	00 
   32a50:	0f af de             	imul   %esi,%ebx
   32a53:	44 89 d5             	mov    %r10d,%ebp
   32a56:	41 01 db             	add    %ebx,%r11d
   32a59:	0f b6 1c 01          	movzbl (%rcx,%rax,1),%ebx
   32a5d:	41 0f af eb          	imul   %r11d,%ebp
   32a61:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
   32a66:	0f af de             	imul   %esi,%ebx
   32a69:	45 0f af dd          	imul   %r13d,%r11d
   32a6d:	41 01 db             	add    %ebx,%r11d
   32a70:	bb ff 00 00 00       	mov    $0xff,%ebx
   32a75:	45 0f af d8          	imul   %r8d,%r11d
   32a79:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   32a80:	00 
   32a81:	44 89 d5             	mov    %r10d,%ebp
   32a84:	41 c1 fb 10          	sar    $0x10,%r11d
   32a88:	41 39 db             	cmp    %ebx,%r11d
   32a8b:	44 0f 4f db          	cmovg  %ebx,%r11d
   32a8f:	0f b6 5c 39 01       	movzbl 0x1(%rcx,%rdi,1),%ebx
   32a94:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
   32a99:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
   32a9f:	0f af de             	imul   %esi,%ebx
   32aa2:	45 0f af dd          	imul   %r13d,%r11d
   32aa6:	41 01 db             	add    %ebx,%r11d
   32aa9:	0f b6 5c 01 01       	movzbl 0x1(%rcx,%rax,1),%ebx
   32aae:	41 0f af eb          	imul   %r11d,%ebp
   32ab2:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
   32ab8:	0f af de             	imul   %esi,%ebx
   32abb:	45 0f af dd          	imul   %r13d,%r11d
   32abf:	41 01 db             	add    %ebx,%r11d
   32ac2:	bb ff 00 00 00       	mov    $0xff,%ebx
   32ac7:	45 0f af d8          	imul   %r8d,%r11d
   32acb:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   32ad2:	00 
   32ad3:	44 89 d5             	mov    %r10d,%ebp
   32ad6:	41 c1 fb 10          	sar    $0x10,%r11d
   32ada:	41 39 db             	cmp    %ebx,%r11d
   32add:	44 0f 4f db          	cmovg  %ebx,%r11d
   32ae1:	0f b6 5c 39 02       	movzbl 0x2(%rcx,%rdi,1),%ebx
   32ae6:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
   32aeb:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
   32af0:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
   32af6:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
   32afc:	0f af de             	imul   %esi,%ebx
   32aff:	45 0f af dd          	imul   %r13d,%r11d
   32b03:	41 01 db             	add    %ebx,%r11d
   32b06:	0f b6 5c 01 02       	movzbl 0x2(%rcx,%rax,1),%ebx
   32b0b:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
   32b10:	41 0f af eb          	imul   %r11d,%ebp
   32b14:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
   32b1a:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
   32b1f:	0f af de             	imul   %esi,%ebx
   32b22:	45 0f af dd          	imul   %r13d,%r11d
   32b26:	41 01 db             	add    %ebx,%r11d
   32b29:	bb ff 00 00 00       	mov    $0xff,%ebx
   32b2e:	45 0f af d8          	imul   %r8d,%r11d
   32b32:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   32b39:	00 
   32b3a:	41 c1 fb 10          	sar    $0x10,%r11d
   32b3e:	41 39 db             	cmp    %ebx,%r11d
   32b41:	44 0f 4f db          	cmovg  %ebx,%r11d
   32b45:	41 0f af d5          	imul   %r13d,%edx
   32b49:	45 0f af cd          	imul   %r13d,%r9d
   32b4d:	0f af fe             	imul   %esi,%edi
   32b50:	0f af c6             	imul   %esi,%eax
   32b53:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   32b58:	41 01 f9             	add    %edi,%r9d
   32b5b:	01 d0                	add    %edx,%eax
   32b5d:	45 0f af ca          	imul   %r10d,%r9d
   32b61:	ba ff 00 00 00       	mov    $0xff,%edx
   32b66:	41 0f af c0          	imul   %r8d,%eax
   32b6a:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
   32b71:	00 
   32b72:	c1 f8 10             	sar    $0x10,%eax
   32b75:	39 d0                	cmp    %edx,%eax
   32b77:	0f 4f c2             	cmovg  %edx,%eax
   32b7a:	83 bc 24 50 01 00 00 	cmpl   $0x2,0x150(%rsp)
   32b81:	02 
   32b82:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
   32b86:	0f 84 3c 31 00 00    	je     35cc8 <sg_raster_triangle_tile_prepared+0x7c18>
   32b8c:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 32b94 <sg_raster_triangle_tile_prepared+0x4ae4>
   32b93:	00 
   32b94:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 32b9c <sg_raster_triangle_tile_prepared+0x4aec>
   32b9b:	00 
   32b9c:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 32ba4 <sg_raster_triangle_tile_prepared+0x4af4>
   32ba3:	00 
   32ba4:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   32ba8:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 32bb0 <sg_raster_triangle_tile_prepared+0x4b00>
   32baf:	00 
   32bb0:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
   32bb5:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
   32bb9:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
   32bbe:	0f 28 e0             	movaps %xmm0,%xmm4
   32bc1:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   32bc5:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   32bcc:	00 00 
   32bce:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   32bd5:	00 00 
   32bd7:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   32bde:	00 00 
   32be0:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   32be7:	00 00 
   32be9:	e9 dc c7 ff ff       	jmp    2f3ca <sg_raster_triangle_tile_prepared+0x131a>
   32bee:	99                   	cltd
   32bef:	41 f7 fb             	idiv   %r11d
   32bf2:	89 d3                	mov    %edx,%ebx
   32bf4:	41 89 d5             	mov    %edx,%r13d
   32bf7:	45 85 c9             	test   %r9d,%r9d
   32bfa:	7e 0d                	jle    32c09 <sg_raster_triangle_tile_prepared+0x4b59>
   32bfc:	41 8d 69 ff          	lea    -0x1(%r9),%ebp
   32c00:	41 85 e9             	test   %ebp,%r9d
   32c03:	0f 84 2f 2a 00 00    	je     35638 <sg_raster_triangle_tile_prepared+0x7588>
   32c09:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   32c10:	99                   	cltd
   32c11:	41 f7 fb             	idiv   %r11d
   32c14:	85 db                	test   %ebx,%ebx
   32c16:	0f 88 f8 33 00 00    	js     36014 <sg_raster_triangle_tile_prepared+0x7f64>
   32c1c:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   32c20:	85 d2                	test   %edx,%edx
   32c22:	0f 48 d0             	cmovs  %eax,%edx
   32c25:	89 d3                	mov    %edx,%ebx
   32c27:	89 f8                	mov    %edi,%eax
   32c29:	99                   	cltd
   32c2a:	41 f7 f9             	idiv   %r9d
   32c2d:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   32c34:	85 d2                	test   %edx,%edx
   32c36:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
   32c3a:	0f 49 fa             	cmovns %edx,%edi
   32c3d:	99                   	cltd
   32c3e:	41 f7 f9             	idiv   %r9d
   32c41:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
   32c45:	85 d2                	test   %edx,%edx
   32c47:	0f 49 c2             	cmovns %edx,%eax
   32c4a:	e9 ab fd ff ff       	jmp    329fa <sg_raster_triangle_tile_prepared+0x494a>
   32c4f:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   32c56:	00 
   32c57:	f3 0f 10 6e 50       	movss  0x50(%rsi),%xmm5
   32c5c:	31 d2                	xor    %edx,%edx
   32c5e:	f3 44 0f 10 76 54    	movss  0x54(%rsi),%xmm14
   32c64:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
   32c69:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
   32c6d:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
   32c72:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
   32c77:	f3 0f 58 c5          	addss  %xmm5,%xmm0
   32c7b:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
   32c80:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
   32c85:	f3 0f 58 c5          	addss  %xmm5,%xmm0
   32c89:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
   32c8e:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   32c95:	00 
   32c96:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
   32c9b:	44 8b 58 24          	mov    0x24(%rax),%r11d
   32c9f:	44 8b 48 28          	mov    0x28(%rax),%r9d
   32ca3:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
   32ca8:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   32cad:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
   32cb3:	48 8b 48 30          	mov    0x30(%rax),%rcx
   32cb7:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
   32cbc:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   32cc1:	44 0f 28 f0          	movaps %xmm0,%xmm14
   32cc5:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
   32ccc:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   32cd1:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   32cd6:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   32cdb:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
   32ce0:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
   32ce5:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 32cee <sg_raster_triangle_tile_prepared+0x4c3e>
   32cec:	00 00 
   32cee:	44 0f 28 fd          	movaps %xmm5,%xmm15
   32cf2:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   32cf9:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
   32cfe:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   32d03:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
   32d08:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   32d0d:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
   32d12:	44 0f 28 f8          	movaps %xmm0,%xmm15
   32d16:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   32d1d:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
   32d22:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
   32d27:	44 0f 28 fd          	movaps %xmm5,%xmm15
   32d2b:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   32d32:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
   32d37:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   32d3c:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
   32d41:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
   32d46:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 32d4e <sg_raster_triangle_tile_prepared+0x4c9e>
   32d4d:	00 
   32d4e:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
   32d53:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
   32d57:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32d5b:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
   32d5f:	85 f6                	test   %esi,%esi
   32d61:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   32d65:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 32d6d <sg_raster_triangle_tile_prepared+0x4cbd>
   32d6c:	00 
   32d6d:	0f 48 f2             	cmovs  %edx,%esi
   32d70:	ba 00 01 00 00       	mov    $0x100,%edx
   32d75:	39 d6                	cmp    %edx,%esi
   32d77:	0f 4f f2             	cmovg  %edx,%esi
   32d7a:	31 d2                	xor    %edx,%edx
   32d7c:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   32d81:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
   32d86:	45 85 c0             	test   %r8d,%r8d
   32d89:	44 0f 48 c2          	cmovs  %edx,%r8d
   32d8d:	ba 00 01 00 00       	mov    $0x100,%edx
   32d92:	89 d3                	mov    %edx,%ebx
   32d94:	41 39 d0             	cmp    %edx,%r8d
   32d97:	44 0f 4f c2          	cmovg  %edx,%r8d
   32d9b:	29 f3                	sub    %esi,%ebx
   32d9d:	41 89 da             	mov    %ebx,%r10d
   32da0:	44 29 c2             	sub    %r8d,%edx
   32da3:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
   32daa:	8d 50 01             	lea    0x1(%rax),%edx
   32dad:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
   32db4:	8d 57 01             	lea    0x1(%rdi),%edx
   32db7:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
   32dbe:	45 85 db             	test   %r11d,%r11d
   32dc1:	0f 8e 40 02 00 00    	jle    33007 <sg_raster_triangle_tile_prepared+0x4f57>
   32dc7:	41 8d 5b ff          	lea    -0x1(%r11),%ebx
   32dcb:	41 85 db             	test   %ebx,%r11d
   32dce:	0f 85 33 02 00 00    	jne    33007 <sg_raster_triangle_tile_prepared+0x4f57>
   32dd4:	45 85 c9             	test   %r9d,%r9d
   32dd7:	0f 8e 81 30 00 00    	jle    35e5e <sg_raster_triangle_tile_prepared+0x7dae>
   32ddd:	41 8d 69 ff          	lea    -0x1(%r9),%ebp
   32de1:	41 85 e9             	test   %ebp,%r9d
   32de4:	0f 85 74 30 00 00    	jne    35e5e <sg_raster_triangle_tile_prepared+0x7dae>
   32dea:	85 db                	test   %ebx,%ebx
   32dec:	0f 84 8a 4b 00 00    	je     3797c <sg_raster_triangle_tile_prepared+0x98cc>
   32df2:	21 d8                	and    %ebx,%eax
   32df4:	41 89 c5             	mov    %eax,%r13d
   32df7:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   32dfe:	21 c3                	and    %eax,%ebx
   32e00:	85 ed                	test   %ebp,%ebp
   32e02:	0f 84 38 02 00 00    	je     33040 <sg_raster_triangle_tile_prepared+0x4f90>
   32e08:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   32e0f:	21 ef                	and    %ebp,%edi
   32e11:	21 e8                	and    %ebp,%eax
   32e13:	41 0f af fb          	imul   %r11d,%edi
   32e17:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   32e1c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   32e20:	41 0f af c3          	imul   %r11d,%eax
   32e24:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   32e29:	66 0f ef ed          	pxor   %xmm5,%xmm5
   32e2d:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
   32e31:	01 df                	add    %ebx,%edi
   32e33:	41 c1 e1 02          	shl    $0x2,%r9d
   32e37:	c1 e7 02             	shl    $0x2,%edi
   32e3a:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
   32e3e:	01 d8                	add    %ebx,%eax
   32e40:	4d 63 c9             	movslq %r9d,%r9
   32e43:	48 63 ff             	movslq %edi,%rdi
   32e46:	45 89 d5             	mov    %r10d,%r13d
   32e49:	c1 e2 02             	shl    $0x2,%edx
   32e4c:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
   32e51:	0f b6 1c 39          	movzbl (%rcx,%rdi,1),%ebx
   32e55:	c1 e0 02             	shl    $0x2,%eax
   32e58:	48 63 d2             	movslq %edx,%rdx
   32e5b:	48 98                	cltq
   32e5d:	45 0f af da          	imul   %r10d,%r11d
   32e61:	44 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10d
   32e68:	00 
   32e69:	0f af de             	imul   %esi,%ebx
   32e6c:	44 89 d5             	mov    %r10d,%ebp
   32e6f:	41 01 db             	add    %ebx,%r11d
   32e72:	0f b6 1c 01          	movzbl (%rcx,%rax,1),%ebx
   32e76:	41 0f af eb          	imul   %r11d,%ebp
   32e7a:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
   32e7f:	0f af de             	imul   %esi,%ebx
   32e82:	45 0f af dd          	imul   %r13d,%r11d
   32e86:	41 01 db             	add    %ebx,%r11d
   32e89:	bb ff 00 00 00       	mov    $0xff,%ebx
   32e8e:	45 0f af d8          	imul   %r8d,%r11d
   32e92:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   32e99:	00 
   32e9a:	44 89 d5             	mov    %r10d,%ebp
   32e9d:	41 c1 fb 10          	sar    $0x10,%r11d
   32ea1:	41 39 db             	cmp    %ebx,%r11d
   32ea4:	44 0f 4f db          	cmovg  %ebx,%r11d
   32ea8:	0f b6 5c 39 01       	movzbl 0x1(%rcx,%rdi,1),%ebx
   32ead:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
   32eb2:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
   32eb8:	0f af de             	imul   %esi,%ebx
   32ebb:	45 0f af dd          	imul   %r13d,%r11d
   32ebf:	41 01 db             	add    %ebx,%r11d
   32ec2:	0f b6 5c 01 01       	movzbl 0x1(%rcx,%rax,1),%ebx
   32ec7:	41 0f af eb          	imul   %r11d,%ebp
   32ecb:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
   32ed1:	0f af de             	imul   %esi,%ebx
   32ed4:	45 0f af dd          	imul   %r13d,%r11d
   32ed8:	41 01 db             	add    %ebx,%r11d
   32edb:	bb ff 00 00 00       	mov    $0xff,%ebx
   32ee0:	45 0f af d8          	imul   %r8d,%r11d
   32ee4:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   32eeb:	00 
   32eec:	44 89 d5             	mov    %r10d,%ebp
   32eef:	41 c1 fb 10          	sar    $0x10,%r11d
   32ef3:	41 39 db             	cmp    %ebx,%r11d
   32ef6:	44 0f 4f db          	cmovg  %ebx,%r11d
   32efa:	0f b6 5c 39 02       	movzbl 0x2(%rcx,%rdi,1),%ebx
   32eff:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
   32f04:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
   32f09:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
   32f0f:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
   32f15:	0f af de             	imul   %esi,%ebx
   32f18:	45 0f af dd          	imul   %r13d,%r11d
   32f1c:	41 01 db             	add    %ebx,%r11d
   32f1f:	0f b6 5c 01 02       	movzbl 0x2(%rcx,%rax,1),%ebx
   32f24:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
   32f29:	41 0f af eb          	imul   %r11d,%ebp
   32f2d:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
   32f33:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
   32f38:	0f af de             	imul   %esi,%ebx
   32f3b:	45 0f af dd          	imul   %r13d,%r11d
   32f3f:	41 01 db             	add    %ebx,%r11d
   32f42:	bb ff 00 00 00       	mov    $0xff,%ebx
   32f47:	45 0f af d8          	imul   %r8d,%r11d
   32f4b:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   32f52:	00 
   32f53:	41 c1 fb 10          	sar    $0x10,%r11d
   32f57:	41 39 db             	cmp    %ebx,%r11d
   32f5a:	44 0f 4f db          	cmovg  %ebx,%r11d
   32f5e:	41 0f af d5          	imul   %r13d,%edx
   32f62:	45 0f af cd          	imul   %r13d,%r9d
   32f66:	0f af fe             	imul   %esi,%edi
   32f69:	0f af c6             	imul   %esi,%eax
   32f6c:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   32f71:	41 01 f9             	add    %edi,%r9d
   32f74:	01 d0                	add    %edx,%eax
   32f76:	45 0f af ca          	imul   %r10d,%r9d
   32f7a:	ba ff 00 00 00       	mov    $0xff,%edx
   32f7f:	41 0f af c0          	imul   %r8d,%eax
   32f83:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
   32f8a:	00 
   32f8b:	c1 f8 10             	sar    $0x10,%eax
   32f8e:	39 d0                	cmp    %edx,%eax
   32f90:	0f 4f c2             	cmovg  %edx,%eax
   32f93:	83 bc 24 50 01 00 00 	cmpl   $0x2,0x150(%rsp)
   32f9a:	02 
   32f9b:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
   32f9f:	0f 84 73 2d 00 00    	je     35d18 <sg_raster_triangle_tile_prepared+0x7c68>
   32fa5:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 32fad <sg_raster_triangle_tile_prepared+0x4efd>
   32fac:	00 
   32fad:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 32fb5 <sg_raster_triangle_tile_prepared+0x4f05>
   32fb4:	00 
   32fb5:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 32fbd <sg_raster_triangle_tile_prepared+0x4f0d>
   32fbc:	00 
   32fbd:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   32fc1:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 32fc9 <sg_raster_triangle_tile_prepared+0x4f19>
   32fc8:	00 
   32fc9:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
   32fce:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
   32fd2:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
   32fd7:	0f 28 e0             	movaps %xmm0,%xmm4
   32fda:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   32fde:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   32fe5:	00 00 
   32fe7:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   32fee:	00 00 
   32ff0:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   32ff7:	00 00 
   32ff9:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   33000:	00 00 
   33002:	e9 f3 c5 ff ff       	jmp    2f5fa <sg_raster_triangle_tile_prepared+0x154a>
   33007:	99                   	cltd
   33008:	41 f7 fb             	idiv   %r11d
   3300b:	89 d3                	mov    %edx,%ebx
   3300d:	41 89 d5             	mov    %edx,%r13d
   33010:	45 85 c9             	test   %r9d,%r9d
   33013:	7e 0d                	jle    33022 <sg_raster_triangle_tile_prepared+0x4f72>
   33015:	41 8d 69 ff          	lea    -0x1(%r9),%ebp
   33019:	41 85 e9             	test   %ebp,%r9d
   3301c:	0f 84 cc 25 00 00    	je     355ee <sg_raster_triangle_tile_prepared+0x753e>
   33022:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   33029:	99                   	cltd
   3302a:	41 f7 fb             	idiv   %r11d
   3302d:	85 db                	test   %ebx,%ebx
   3302f:	0f 88 ab 2f 00 00    	js     35fe0 <sg_raster_triangle_tile_prepared+0x7f30>
   33035:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   33039:	85 d2                	test   %edx,%edx
   3303b:	0f 48 d0             	cmovs  %eax,%edx
   3303e:	89 d3                	mov    %edx,%ebx
   33040:	89 f8                	mov    %edi,%eax
   33042:	99                   	cltd
   33043:	41 f7 f9             	idiv   %r9d
   33046:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   3304d:	85 d2                	test   %edx,%edx
   3304f:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
   33053:	0f 49 fa             	cmovns %edx,%edi
   33056:	99                   	cltd
   33057:	41 f7 f9             	idiv   %r9d
   3305a:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
   3305e:	85 d2                	test   %edx,%edx
   33060:	0f 49 c2             	cmovns %edx,%eax
   33063:	e9 ab fd ff ff       	jmp    32e13 <sg_raster_triangle_tile_prepared+0x4d63>
   33068:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   3306f:	00 
   33070:	f3 0f 10 6b 50       	movss  0x50(%rbx),%xmm5
   33075:	31 d2                	xor    %edx,%edx
   33077:	f3 44 0f 10 73 54    	movss  0x54(%rbx),%xmm14
   3307d:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
   33082:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
   33087:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
   3308c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
   33090:	f3 0f 58 c5          	addss  %xmm5,%xmm0
   33094:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
   33099:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
   3309e:	f3 0f 58 c5          	addss  %xmm5,%xmm0
   330a2:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
   330a7:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   330ae:	00 
   330af:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
   330b3:	44 8b 58 24          	mov    0x24(%rax),%r11d
   330b7:	44 8b 48 28          	mov    0x28(%rax),%r9d
   330bb:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
   330c0:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   330c5:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
   330cb:	48 8b 48 30          	mov    0x30(%rax),%rcx
   330cf:	f3 45 0f 59 f1       	mulss  %xmm9,%xmm14
   330d4:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   330d9:	44 0f 28 f0          	movaps %xmm0,%xmm14
   330dd:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
   330e4:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   330e9:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   330ee:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   330f3:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
   330f8:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
   330fd:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 33106 <sg_raster_triangle_tile_prepared+0x5056>
   33104:	00 00 
   33106:	44 0f 28 fd          	movaps %xmm5,%xmm15
   3310a:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   33111:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
   33116:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   3311b:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
   33120:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
   33125:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
   3312a:	44 0f 28 f8          	movaps %xmm0,%xmm15
   3312e:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   33135:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
   3313a:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
   3313f:	44 0f 28 fd          	movaps %xmm5,%xmm15
   33143:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
   3314a:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
   3314f:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   33154:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
   33159:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
   3315e:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 33166 <sg_raster_triangle_tile_prepared+0x50b6>
   33165:	00 
   33166:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
   3316b:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
   3316f:	66 0f ef c0          	pxor   %xmm0,%xmm0
   33173:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
   33177:	85 f6                	test   %esi,%esi
   33179:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   3317d:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 33185 <sg_raster_triangle_tile_prepared+0x50d5>
   33184:	00 
   33185:	0f 48 f2             	cmovs  %edx,%esi
   33188:	ba 00 01 00 00       	mov    $0x100,%edx
   3318d:	39 d6                	cmp    %edx,%esi
   3318f:	0f 4f f2             	cmovg  %edx,%esi
   33192:	31 d2                	xor    %edx,%edx
   33194:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
   33199:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
   3319e:	45 85 c0             	test   %r8d,%r8d
   331a1:	44 0f 48 c2          	cmovs  %edx,%r8d
   331a5:	ba 00 01 00 00       	mov    $0x100,%edx
   331aa:	89 d3                	mov    %edx,%ebx
   331ac:	41 39 d0             	cmp    %edx,%r8d
   331af:	44 0f 4f c2          	cmovg  %edx,%r8d
   331b3:	29 f3                	sub    %esi,%ebx
   331b5:	41 89 da             	mov    %ebx,%r10d
   331b8:	44 29 c2             	sub    %r8d,%edx
   331bb:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
   331c2:	8d 50 01             	lea    0x1(%rax),%edx
   331c5:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
   331cc:	8d 57 01             	lea    0x1(%rdi),%edx
   331cf:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
   331d6:	45 85 db             	test   %r11d,%r11d
   331d9:	0f 8e 40 02 00 00    	jle    3341f <sg_raster_triangle_tile_prepared+0x536f>
   331df:	41 8d 5b ff          	lea    -0x1(%r11),%ebx
   331e3:	41 85 db             	test   %ebx,%r11d
   331e6:	0f 85 33 02 00 00    	jne    3341f <sg_raster_triangle_tile_prepared+0x536f>
   331ec:	45 85 c9             	test   %r9d,%r9d
   331ef:	0f 8e a1 2c 00 00    	jle    35e96 <sg_raster_triangle_tile_prepared+0x7de6>
   331f5:	41 8d 69 ff          	lea    -0x1(%r9),%ebp
   331f9:	41 85 e9             	test   %ebp,%r9d
   331fc:	0f 85 94 2c 00 00    	jne    35e96 <sg_raster_triangle_tile_prepared+0x7de6>
   33202:	85 db                	test   %ebx,%ebx
   33204:	0f 84 f9 3e 00 00    	je     37103 <sg_raster_triangle_tile_prepared+0x9053>
   3320a:	21 d8                	and    %ebx,%eax
   3320c:	41 89 c5             	mov    %eax,%r13d
   3320f:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   33216:	21 c3                	and    %eax,%ebx
   33218:	85 ed                	test   %ebp,%ebp
   3321a:	0f 84 38 02 00 00    	je     33458 <sg_raster_triangle_tile_prepared+0x53a8>
   33220:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   33227:	21 ef                	and    %ebp,%edi
   33229:	21 e8                	and    %ebp,%eax
   3322b:	41 0f af fb          	imul   %r11d,%edi
   3322f:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
   33234:	66 0f ef c0          	pxor   %xmm0,%xmm0
   33238:	41 0f af c3          	imul   %r11d,%eax
   3323c:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   33241:	66 0f ef ed          	pxor   %xmm5,%xmm5
   33245:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
   33249:	01 df                	add    %ebx,%edi
   3324b:	41 c1 e1 02          	shl    $0x2,%r9d
   3324f:	c1 e7 02             	shl    $0x2,%edi
   33252:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
   33256:	01 d8                	add    %ebx,%eax
   33258:	4d 63 c9             	movslq %r9d,%r9
   3325b:	48 63 ff             	movslq %edi,%rdi
   3325e:	45 89 d5             	mov    %r10d,%r13d
   33261:	c1 e2 02             	shl    $0x2,%edx
   33264:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
   33269:	0f b6 1c 39          	movzbl (%rcx,%rdi,1),%ebx
   3326d:	c1 e0 02             	shl    $0x2,%eax
   33270:	48 63 d2             	movslq %edx,%rdx
   33273:	48 98                	cltq
   33275:	45 0f af da          	imul   %r10d,%r11d
   33279:	44 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10d
   33280:	00 
   33281:	0f af de             	imul   %esi,%ebx
   33284:	44 89 d5             	mov    %r10d,%ebp
   33287:	41 01 db             	add    %ebx,%r11d
   3328a:	0f b6 1c 01          	movzbl (%rcx,%rax,1),%ebx
   3328e:	41 0f af eb          	imul   %r11d,%ebp
   33292:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
   33297:	0f af de             	imul   %esi,%ebx
   3329a:	45 0f af dd          	imul   %r13d,%r11d
   3329e:	41 01 db             	add    %ebx,%r11d
   332a1:	bb ff 00 00 00       	mov    $0xff,%ebx
   332a6:	45 0f af d8          	imul   %r8d,%r11d
   332aa:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   332b1:	00 
   332b2:	44 89 d5             	mov    %r10d,%ebp
   332b5:	41 c1 fb 10          	sar    $0x10,%r11d
   332b9:	41 39 db             	cmp    %ebx,%r11d
   332bc:	44 0f 4f db          	cmovg  %ebx,%r11d
   332c0:	0f b6 5c 39 01       	movzbl 0x1(%rcx,%rdi,1),%ebx
   332c5:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
   332ca:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
   332d0:	0f af de             	imul   %esi,%ebx
   332d3:	45 0f af dd          	imul   %r13d,%r11d
   332d7:	41 01 db             	add    %ebx,%r11d
   332da:	0f b6 5c 01 01       	movzbl 0x1(%rcx,%rax,1),%ebx
   332df:	41 0f af eb          	imul   %r11d,%ebp
   332e3:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
   332e9:	0f af de             	imul   %esi,%ebx
   332ec:	45 0f af dd          	imul   %r13d,%r11d
   332f0:	41 01 db             	add    %ebx,%r11d
   332f3:	bb ff 00 00 00       	mov    $0xff,%ebx
   332f8:	45 0f af d8          	imul   %r8d,%r11d
   332fc:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   33303:	00 
   33304:	44 89 d5             	mov    %r10d,%ebp
   33307:	41 c1 fb 10          	sar    $0x10,%r11d
   3330b:	41 39 db             	cmp    %ebx,%r11d
   3330e:	44 0f 4f db          	cmovg  %ebx,%r11d
   33312:	0f b6 5c 39 02       	movzbl 0x2(%rcx,%rdi,1),%ebx
   33317:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
   3331c:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
   33321:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
   33327:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
   3332d:	0f af de             	imul   %esi,%ebx
   33330:	45 0f af dd          	imul   %r13d,%r11d
   33334:	41 01 db             	add    %ebx,%r11d
   33337:	0f b6 5c 01 02       	movzbl 0x2(%rcx,%rax,1),%ebx
   3333c:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
   33341:	41 0f af eb          	imul   %r11d,%ebp
   33345:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
   3334b:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
   33350:	0f af de             	imul   %esi,%ebx
   33353:	45 0f af dd          	imul   %r13d,%r11d
   33357:	41 01 db             	add    %ebx,%r11d
   3335a:	bb ff 00 00 00       	mov    $0xff,%ebx
   3335f:	45 0f af d8          	imul   %r8d,%r11d
   33363:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
   3336a:	00 
   3336b:	41 c1 fb 10          	sar    $0x10,%r11d
   3336f:	41 39 db             	cmp    %ebx,%r11d
   33372:	44 0f 4f db          	cmovg  %ebx,%r11d
   33376:	41 0f af d5          	imul   %r13d,%edx
   3337a:	45 0f af cd          	imul   %r13d,%r9d
   3337e:	0f af fe             	imul   %esi,%edi
   33381:	0f af c6             	imul   %esi,%eax
   33384:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
   33389:	41 01 f9             	add    %edi,%r9d
   3338c:	01 d0                	add    %edx,%eax
   3338e:	45 0f af ca          	imul   %r10d,%r9d
   33392:	ba ff 00 00 00       	mov    $0xff,%edx
   33397:	41 0f af c0          	imul   %r8d,%eax
   3339b:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
   333a2:	00 
   333a3:	c1 f8 10             	sar    $0x10,%eax
   333a6:	39 d0                	cmp    %edx,%eax
   333a8:	0f 4f c2             	cmovg  %edx,%eax
   333ab:	83 bc 24 50 01 00 00 	cmpl   $0x2,0x150(%rsp)
   333b2:	02 
   333b3:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
   333b7:	0f 84 33 29 00 00    	je     35cf0 <sg_raster_triangle_tile_prepared+0x7c40>
   333bd:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 333c5 <sg_raster_triangle_tile_prepared+0x5315>
   333c4:	00 
   333c5:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 333cd <sg_raster_triangle_tile_prepared+0x531d>
   333cc:	00 
   333cd:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 333d5 <sg_raster_triangle_tile_prepared+0x5325>
   333d4:	00 
   333d5:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   333d9:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 333e1 <sg_raster_triangle_tile_prepared+0x5331>
   333e0:	00 
   333e1:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
   333e6:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
   333ea:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
   333ef:	0f 28 e0             	movaps %xmm0,%xmm4
   333f2:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   333f6:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   333fd:	00 00 
   333ff:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   33406:	00 00 
   33408:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   3340f:	00 00 
   33411:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   33418:	00 00 
   3341a:	e9 0b c4 ff ff       	jmp    2f82a <sg_raster_triangle_tile_prepared+0x177a>
   3341f:	99                   	cltd
   33420:	41 f7 fb             	idiv   %r11d
   33423:	89 d3                	mov    %edx,%ebx
   33425:	41 89 d5             	mov    %edx,%r13d
   33428:	45 85 c9             	test   %r9d,%r9d
   3342b:	7e 0d                	jle    3343a <sg_raster_triangle_tile_prepared+0x538a>
   3342d:	41 8d 69 ff          	lea    -0x1(%r9),%ebp
   33431:	41 85 e9             	test   %ebp,%r9d
   33434:	0f 84 d9 21 00 00    	je     35613 <sg_raster_triangle_tile_prepared+0x7563>
   3343a:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   33441:	99                   	cltd
   33442:	41 f7 fb             	idiv   %r11d
   33445:	85 db                	test   %ebx,%ebx
   33447:	0f 88 58 2b 00 00    	js     35fa5 <sg_raster_triangle_tile_prepared+0x7ef5>
   3344d:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   33451:	85 d2                	test   %edx,%edx
   33453:	0f 48 d0             	cmovs  %eax,%edx
   33456:	89 d3                	mov    %edx,%ebx
   33458:	89 f8                	mov    %edi,%eax
   3345a:	99                   	cltd
   3345b:	41 f7 f9             	idiv   %r9d
   3345e:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
   33465:	85 d2                	test   %edx,%edx
   33467:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
   3346b:	0f 49 fa             	cmovns %edx,%edi
   3346e:	99                   	cltd
   3346f:	41 f7 f9             	idiv   %r9d
   33472:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
   33476:	85 d2                	test   %edx,%edx
   33478:	0f 49 c2             	cmovns %edx,%eax
   3347b:	e9 ab fd ff ff       	jmp    3322b <sg_raster_triangle_tile_prepared+0x517b>
   33480:	0f 57 15 00 00 00 00 	xorps  0x0(%rip),%xmm2        # 33487 <sg_raster_triangle_tile_prepared+0x53d7>
   33487:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   3348b:	0f 59 c2             	mulps  %xmm2,%xmm0
   3348e:	e9 ec ce ff ff       	jmp    3037f <sg_raster_triangle_tile_prepared+0x22cf>
   33493:	48 89 f2             	mov    %rsi,%rdx
   33496:	41 0f 28 dd          	movaps %xmm13,%xmm3
   3349a:	41 0f 28 d0          	movaps %xmm8,%xmm2
   3349e:	48 89 c5             	mov    %rax,%rbp
   334a1:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   334a8:	00 
   334a9:	0f 28 cf             	movaps %xmm7,%xmm1
   334ac:	41 0f 28 c1          	movaps %xmm9,%xmm0
   334b0:	48 89 c7             	mov    %rax,%rdi
   334b3:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
   334ba:	00 
   334bb:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
   334c2:	00 
   334c3:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   334ca:	01 00 00 
   334cd:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   334d4:	01 00 00 
   334d7:	49 89 d8             	mov    %rbx,%r8
   334da:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   334e1:	01 00 00 
   334e4:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   334eb:	00 00 
   334ed:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   334f4:	01 00 00 
   334f7:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   334fe:	01 00 00 
   33501:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   33508:	00 00 
   3350a:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   33511:	01 00 00 
   33514:	e8 00 00 00 00       	call   33519 <sg_raster_triangle_tile_prepared+0x5469>
   33519:	8b 85 68 01 00 00    	mov    0x168(%rbp),%eax
   3351f:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   33526:	01 00 00 
   33529:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   33530:	00 00 
   33532:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   33539:	01 00 00 
   3353c:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   33543:	01 00 00 
   33546:	85 c0                	test   %eax,%eax
   33548:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3354f:	00 00 
   33551:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   33558:	01 00 00 
   3355b:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   33562:	01 00 00 
   33565:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   3356c:	01 00 00 
   3356f:	0f 85 9d 0c 00 00    	jne    34212 <sg_raster_triangle_tile_prepared+0x6162>
   33575:	8b 84 24 10 03 00 00 	mov    0x310(%rsp),%eax
   3357c:	85 c0                	test   %eax,%eax
   3357e:	0f 85 ad 1f 00 00    	jne    35531 <sg_raster_triangle_tile_prepared+0x7481>
   33584:	8b 84 24 14 03 00 00 	mov    0x314(%rsp),%eax
   3358b:	85 c0                	test   %eax,%eax
   3358d:	0f 85 bc 1e 00 00    	jne    3544f <sg_raster_triangle_tile_prepared+0x739f>
   33593:	8b 84 24 18 03 00 00 	mov    0x318(%rsp),%eax
   3359a:	85 c0                	test   %eax,%eax
   3359c:	0f 85 bd 1d 00 00    	jne    3535f <sg_raster_triangle_tile_prepared+0x72af>
   335a2:	44 8b ac 24 1c 03 00 	mov    0x31c(%rsp),%r13d
   335a9:	00 
   335aa:	45 85 ed             	test   %r13d,%r13d
   335ad:	0f 85 92 1c 00 00    	jne    35245 <sg_raster_triangle_tile_prepared+0x7195>
   335b3:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
   335ba:	00 00 
   335bc:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
   335c3:	00 00 
   335c5:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
   335cc:	00 00 
   335ce:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
   335d5:	00 00 
   335d7:	e9 1e c0 ff ff       	jmp    2f5fa <sg_raster_triangle_tile_prepared+0x154a>
   335dc:	48 89 d1             	mov    %rdx,%rcx
   335df:	41 0f 28 dd          	movaps %xmm13,%xmm3
   335e3:	41 0f 28 d0          	movaps %xmm8,%xmm2
   335e7:	48 89 c5             	mov    %rax,%rbp
   335ea:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
   335f1:	00 
   335f2:	0f 28 cf             	movaps %xmm7,%xmm1
   335f5:	41 0f 28 c1          	movaps %xmm9,%xmm0
   335f9:	48 89 c7             	mov    %rax,%rdi
   335fc:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   33603:	00 
   33604:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
   3360b:	00 
   3360c:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
   33613:	00 
   33614:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   3361b:	01 00 00 
   3361e:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   33625:	01 00 00 
   33628:	49 89 d8             	mov    %rbx,%r8
   3362b:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   33632:	01 00 00 
   33635:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   3363c:	00 00 
   3363e:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   33645:	01 00 00 
   33648:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   3364f:	01 00 00 
   33652:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   33659:	00 00 
   3365b:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   33662:	01 00 00 
   33665:	e8 00 00 00 00       	call   3366a <sg_raster_triangle_tile_prepared+0x55ba>
   3366a:	8b 85 68 01 00 00    	mov    0x168(%rbp),%eax
   33670:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   33677:	01 00 00 
   3367a:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   33681:	00 00 
   33683:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   3368a:	01 00 00 
   3368d:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   33694:	01 00 00 
   33697:	85 c0                	test   %eax,%eax
   33699:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   336a0:	00 00 
   336a2:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   336a9:	01 00 00 
   336ac:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   336b3:	01 00 00 
   336b6:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   336bd:	01 00 00 
   336c0:	0f 85 e7 09 00 00    	jne    340ad <sg_raster_triangle_tile_prepared+0x5ffd>
   336c6:	44 8b ac 24 10 03 00 	mov    0x310(%rsp),%r13d
   336cd:	00 
   336ce:	45 85 ed             	test   %r13d,%r13d
   336d1:	0f 85 dd 1a 00 00    	jne    351b4 <sg_raster_triangle_tile_prepared+0x7104>
   336d7:	8b ac 24 14 03 00 00 	mov    0x314(%rsp),%ebp
   336de:	85 ed                	test   %ebp,%ebp
   336e0:	0f 85 ec 19 00 00    	jne    350d2 <sg_raster_triangle_tile_prepared+0x7022>
   336e6:	44 8b 9c 24 18 03 00 	mov    0x318(%rsp),%r11d
   336ed:	00 
   336ee:	45 85 db             	test   %r11d,%r11d
   336f1:	0f 85 f9 18 00 00    	jne    34ff0 <sg_raster_triangle_tile_prepared+0x6f40>
   336f7:	44 8b 94 24 1c 03 00 	mov    0x31c(%rsp),%r10d
   336fe:	00 
   336ff:	45 85 d2             	test   %r10d,%r10d
   33702:	0f 85 ce 17 00 00    	jne    34ed6 <sg_raster_triangle_tile_prepared+0x6e26>
   33708:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
   3370f:	00 00 
   33711:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
   33718:	00 00 
   3371a:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
   33721:	00 00 
   33723:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
   3372a:	00 00 
   3372c:	e9 99 bc ff ff       	jmp    2f3ca <sg_raster_triangle_tile_prepared+0x131a>
   33731:	48 89 d1             	mov    %rdx,%rcx
   33734:	41 0f 28 dd          	movaps %xmm13,%xmm3
   33738:	41 0f 28 d0          	movaps %xmm8,%xmm2
   3373c:	48 89 c5             	mov    %rax,%rbp
   3373f:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
   33746:	00 
   33747:	0f 28 cf             	movaps %xmm7,%xmm1
   3374a:	41 0f 28 c1          	movaps %xmm9,%xmm0
   3374e:	48 89 c7             	mov    %rax,%rdi
   33751:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   33758:	00 
   33759:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
   33760:	00 
   33761:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
   33768:	00 
   33769:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   33770:	01 00 00 
   33773:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   3377a:	01 00 00 
   3377d:	49 89 d8             	mov    %rbx,%r8
   33780:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   33787:	01 00 00 
   3378a:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   33791:	00 00 
   33793:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   3379a:	01 00 00 
   3379d:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   337a4:	01 00 00 
   337a7:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   337ae:	00 00 
   337b0:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   337b7:	01 00 00 
   337ba:	e8 00 00 00 00       	call   337bf <sg_raster_triangle_tile_prepared+0x570f>
   337bf:	8b 85 68 01 00 00    	mov    0x168(%rbp),%eax
   337c5:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   337cc:	01 00 00 
   337cf:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   337d6:	00 00 
   337d8:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   337df:	01 00 00 
   337e2:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   337e9:	01 00 00 
   337ec:	85 c0                	test   %eax,%eax
   337ee:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   337f5:	00 00 
   337f7:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   337fe:	01 00 00 
   33801:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   33808:	01 00 00 
   3380b:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   33812:	01 00 00 
   33815:	0f 85 2d 07 00 00    	jne    33f48 <sg_raster_triangle_tile_prepared+0x5e98>
   3381b:	44 8b 84 24 10 03 00 	mov    0x310(%rsp),%r8d
   33822:	00 
   33823:	45 85 c0             	test   %r8d,%r8d
   33826:	0f 85 19 16 00 00    	jne    34e45 <sg_raster_triangle_tile_prepared+0x6d95>
   3382c:	8b bc 24 14 03 00 00 	mov    0x314(%rsp),%edi
   33833:	85 ff                	test   %edi,%edi
   33835:	0f 85 28 15 00 00    	jne    34d63 <sg_raster_triangle_tile_prepared+0x6cb3>
   3383b:	8b b4 24 18 03 00 00 	mov    0x318(%rsp),%esi
   33842:	85 f6                	test   %esi,%esi
   33844:	0f 85 37 14 00 00    	jne    34c81 <sg_raster_triangle_tile_prepared+0x6bd1>
   3384a:	8b 8c 24 1c 03 00 00 	mov    0x31c(%rsp),%ecx
   33851:	85 c9                	test   %ecx,%ecx
   33853:	0f 85 0e 13 00 00    	jne    34b67 <sg_raster_triangle_tile_prepared+0x6ab7>
   33859:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
   33860:	00 00 
   33862:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
   33869:	00 00 
   3386b:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
   33872:	00 00 
   33874:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
   3387b:	00 00 
   3387d:	e9 e6 c7 ff ff       	jmp    30068 <sg_raster_triangle_tile_prepared+0x1fb8>
   33882:	48 89 da             	mov    %rbx,%rdx
   33885:	41 0f 28 dd          	movaps %xmm13,%xmm3
   33889:	41 0f 28 d1          	movaps %xmm9,%xmm2
   3388d:	48 89 c5             	mov    %rax,%rbp
   33890:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   33897:	00 
   33898:	41 0f 28 c8          	movaps %xmm8,%xmm1
   3389c:	0f 28 c7             	movaps %xmm7,%xmm0
   3389f:	48 89 c7             	mov    %rax,%rdi
   338a2:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
   338a9:	00 
   338aa:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
   338b1:	00 
   338b2:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   338b9:	01 00 00 
   338bc:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   338c3:	01 00 00 
   338c6:	49 89 d8             	mov    %rbx,%r8
   338c9:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   338d0:	01 00 00 
   338d3:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   338da:	00 00 
   338dc:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   338e3:	01 00 00 
   338e6:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
   338ed:	01 00 00 
   338f0:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
   338f7:	01 00 00 
   338fa:	f3 0f 11 bc 24 50 01 	movss  %xmm7,0x150(%rsp)
   33901:	00 00 
   33903:	e8 00 00 00 00       	call   33908 <sg_raster_triangle_tile_prepared+0x5858>
   33908:	8b 85 68 01 00 00    	mov    0x168(%rbp),%eax
   3390e:	f3 0f 10 bc 24 50 01 	movss  0x150(%rsp),%xmm7
   33915:	00 00 
   33917:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
   3391e:	01 00 00 
   33921:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
   33928:	01 00 00 
   3392b:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   33932:	01 00 00 
   33935:	85 c0                	test   %eax,%eax
   33937:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3393e:	00 00 
   33940:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   33947:	01 00 00 
   3394a:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   33951:	01 00 00 
   33954:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   3395b:	01 00 00 
   3395e:	0f 85 5b 04 00 00    	jne    33dbf <sg_raster_triangle_tile_prepared+0x5d0f>
   33964:	44 8b ac 24 10 03 00 	mov    0x310(%rsp),%r13d
   3396b:	00 
   3396c:	45 85 ed             	test   %r13d,%r13d
   3396f:	0f 85 61 11 00 00    	jne    34ad6 <sg_raster_triangle_tile_prepared+0x6a26>
   33975:	8b ac 24 14 03 00 00 	mov    0x314(%rsp),%ebp
   3397c:	85 ed                	test   %ebp,%ebp
   3397e:	0f 85 70 10 00 00    	jne    349f4 <sg_raster_triangle_tile_prepared+0x6944>
   33984:	44 8b 9c 24 18 03 00 	mov    0x318(%rsp),%r11d
   3398b:	00 
   3398c:	45 85 db             	test   %r11d,%r11d
   3398f:	0f 85 7d 0f 00 00    	jne    34912 <sg_raster_triangle_tile_prepared+0x6862>
   33995:	44 8b 94 24 1c 03 00 	mov    0x31c(%rsp),%r10d
   3399c:	00 
   3399d:	45 85 d2             	test   %r10d,%r10d
   339a0:	0f 85 52 0e 00 00    	jne    347f8 <sg_raster_triangle_tile_prepared+0x6748>
   339a6:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
   339ad:	00 00 
   339af:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
   339b6:	00 00 
   339b8:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
   339bf:	00 00 
   339c1:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
   339c8:	00 00 
   339ca:	e9 5b be ff ff       	jmp    2f82a <sg_raster_triangle_tile_prepared+0x177a>
   339cf:	48 01 84 24 d0 00 00 	add    %rax,0xd0(%rsp)
   339d6:	00 
   339d7:	e9 1a ab ff ff       	jmp    2e4f6 <sg_raster_triangle_tile_prepared+0x446>
   339dc:	48 01 84 24 d8 00 00 	add    %rax,0xd8(%rsp)
   339e3:	00 
   339e4:	e9 69 ab ff ff       	jmp    2e552 <sg_raster_triangle_tile_prepared+0x4a2>
   339e9:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   339f0:	8b 34 24             	mov    (%rsp),%esi
   339f3:	0f 28 d7             	movaps %xmm7,%xmm2
   339f6:	0f 28 ce             	movaps %xmm6,%xmm1
   339f9:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   339fe:	41 0f 28 e2          	movaps %xmm10,%xmm4
   33a02:	41 0f 28 d8          	movaps %xmm8,%xmm3
   33a06:	66 0f 6e c3          	movd   %ebx,%xmm0
   33a0a:	44 89 9c 24 a0 01 00 	mov    %r11d,0x1a0(%rsp)
   33a11:	00 
   33a12:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
   33a19:	00 00 
   33a1b:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
   33a22:	00 00 
   33a24:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
   33a2b:	00 
   33a2c:	0f 29 b4 24 50 01 00 	movaps %xmm6,0x150(%rsp)
   33a33:	00 
   33a34:	e8 00 00 00 00       	call   33a39 <sg_raster_triangle_tile_prepared+0x5989>
   33a39:	85 ed                	test   %ebp,%ebp
   33a3b:	0f 28 b4 24 50 01 00 	movaps 0x150(%rsp),%xmm6
   33a42:	00 
   33a43:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
   33a4a:	00 
   33a4b:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
   33a52:	00 00 
   33a54:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
   33a5b:	00 00 
   33a5d:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   33a64:	ff ff ff 
   33a67:	44 8b 9c 24 a0 01 00 	mov    0x1a0(%rsp),%r11d
   33a6e:	00 
   33a6f:	0f 84 a7 00 00 00    	je     33b1c <sg_raster_triangle_tile_prepared+0x5a6c>
   33a75:	41 0f 28 ea          	movaps %xmm10,%xmm5
   33a79:	8b 94 24 c0 00 00 00 	mov    0xc0(%rsp),%edx
   33a80:	8b 74 24 38          	mov    0x38(%rsp),%esi
   33a84:	48 c1 eb 20          	shr    $0x20,%rbx
   33a88:	41 0f c6 ea 55       	shufps $0x55,%xmm10,%xmm5
   33a8d:	0f 28 e5             	movaps %xmm5,%xmm4
   33a90:	41 0f 28 e8          	movaps %xmm8,%xmm5
   33a94:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
   33a99:	41 0f c6 e8 55       	shufps $0x55,%xmm8,%xmm5
   33a9e:	0f 28 dd             	movaps %xmm5,%xmm3
   33aa1:	0f 28 ef             	movaps %xmm7,%xmm5
   33aa4:	66 0f 6e c3          	movd   %ebx,%xmm0
   33aa8:	0f c6 ef 55          	shufps $0x55,%xmm7,%xmm5
   33aac:	0f 28 d5             	movaps %xmm5,%xmm2
   33aaf:	0f 28 ee             	movaps %xmm6,%xmm5
   33ab2:	44 89 9c 24 a0 01 00 	mov    %r11d,0x1a0(%rsp)
   33ab9:	00 
   33aba:	0f c6 ee 55          	shufps $0x55,%xmm6,%xmm5
   33abe:	0f 28 cd             	movaps %xmm5,%xmm1
   33ac1:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
   33ac8:	00 00 
   33aca:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
   33ad1:	00 00 
   33ad3:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
   33ada:	00 
   33adb:	0f 29 b4 24 50 01 00 	movaps %xmm6,0x150(%rsp)
   33ae2:	00 
   33ae3:	e8 00 00 00 00       	call   33ae8 <sg_raster_triangle_tile_prepared+0x5a38>
   33ae8:	0f 28 b4 24 50 01 00 	movaps 0x150(%rsp),%xmm6
   33aef:	00 
   33af0:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
   33af7:	00 
   33af8:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   33aff:	ff ff ff 
   33b02:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
   33b09:	00 00 
   33b0b:	44 8b 9c 24 a0 01 00 	mov    0x1a0(%rsp),%r11d
   33b12:	00 
   33b13:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
   33b1a:	00 00 
   33b1c:	45 85 db             	test   %r11d,%r11d
   33b1f:	0f 85 a2 ca ff ff    	jne    305c7 <sg_raster_triangle_tile_prepared+0x2517>
   33b25:	e9 29 cb ff ff       	jmp    30653 <sg_raster_triangle_tile_prepared+0x25a3>
   33b2a:	89 e8                	mov    %ebp,%eax
   33b2c:	99                   	cltd
   33b2d:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
   33b34:	89 d5                	mov    %edx,%ebp
   33b36:	85 d2                	test   %edx,%edx
   33b38:	0f 88 70 21 00 00    	js     35cae <sg_raster_triangle_tile_prepared+0x7bfe>
   33b3e:	89 c8                	mov    %ecx,%eax
   33b40:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
   33b47:	99                   	cltd
   33b48:	f7 f9                	idiv   %ecx
   33b4a:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
   33b4d:	85 d2                	test   %edx,%edx
   33b4f:	0f 48 d0             	cmovs  %eax,%edx
   33b52:	e9 b8 e5 ff ff       	jmp    3210f <sg_raster_triangle_tile_prepared+0x405f>
   33b57:	45 01 cf             	add    %r9d,%r15d
   33b5a:	85 db                	test   %ebx,%ebx
   33b5c:	0f 85 75 e7 ff ff    	jne    322d7 <sg_raster_triangle_tile_prepared+0x4227>
   33b62:	89 e8                	mov    %ebp,%eax
   33b64:	99                   	cltd
   33b65:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
   33b6c:	89 d5                	mov    %edx,%ebp
   33b6e:	85 d2                	test   %edx,%edx
   33b70:	0f 88 09 21 00 00    	js     35c7f <sg_raster_triangle_tile_prepared+0x7bcf>
   33b76:	89 c8                	mov    %ecx,%eax
   33b78:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
   33b7f:	99                   	cltd
   33b80:	f7 f9                	idiv   %ecx
   33b82:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
   33b85:	85 d2                	test   %edx,%edx
   33b87:	0f 48 d0             	cmovs  %eax,%edx
   33b8a:	e9 4e e7 ff ff       	jmp    322dd <sg_raster_triangle_tile_prepared+0x422d>
   33b8f:	0f 28 d5             	movaps %xmm5,%xmm2
   33b92:	e9 3c c8 ff ff       	jmp    303d3 <sg_raster_triangle_tile_prepared+0x2323>
   33b97:	31 c0                	xor    %eax,%eax
   33b99:	66 0f ef c0          	pxor   %xmm0,%xmm0
   33b9d:	e9 57 c9 ff ff       	jmp    304f9 <sg_raster_triangle_tile_prepared+0x2449>
   33ba2:	41 83 e4 0c          	and    $0xc,%r12d
   33ba6:	66 41 0f d6 00       	movq   %xmm0,(%r8)
   33bab:	0f 84 0f b6 ff ff    	je     2f1c0 <sg_raster_triangle_tile_prepared+0x1110>
   33bb1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33bb6:	48 8b 50 08          	mov    0x8(%rax),%rdx
   33bba:	e9 62 e4 ff ff       	jmp    32021 <sg_raster_triangle_tile_prepared+0x3f71>
   33bbf:	90                   	nop
   33bc0:	66 0f ef c0          	pxor   %xmm0,%xmm0
   33bc4:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   33bc9:	e9 e8 e3 ff ff       	jmp    31fb6 <sg_raster_triangle_tile_prepared+0x3f06>
   33bce:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   33bd5:	00 00 
   33bd7:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33bdc:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   33be3:	00 00 
   33be5:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
   33bec:	00 
   33bed:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   33bf4:	00 00 
   33bf6:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   33bfd:	00 00 
   33bff:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   33c06:	00 00 
   33c08:	e9 37 b2 ff ff       	jmp    2ee44 <sg_raster_triangle_tile_prepared+0xd94>
   33c0d:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
   33c14:	89 c8                	mov    %ecx,%eax
   33c16:	01 d5                	add    %edx,%ebp
   33c18:	89 d1                	mov    %edx,%ecx
   33c1a:	99                   	cltd
   33c1b:	f7 f9                	idiv   %ecx
   33c1d:	85 d2                	test   %edx,%edx
   33c1f:	0f 84 33 dd ff ff    	je     31958 <sg_raster_triangle_tile_prepared+0x38a8>
   33c25:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
   33c2c:	01 c2                	add    %eax,%edx
   33c2e:	45 85 c0             	test   %r8d,%r8d
   33c31:	0f 85 21 dd ff ff    	jne    31958 <sg_raster_triangle_tile_prepared+0x38a8>
   33c37:	e9 60 df ff ff       	jmp    31b9c <sg_raster_triangle_tile_prepared+0x3aec>
   33c3c:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   33c43:	00 00 
   33c45:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33c4a:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   33c51:	00 00 
   33c53:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
   33c5a:	00 
   33c5b:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   33c62:	00 00 
   33c64:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   33c6b:	00 00 
   33c6d:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   33c74:	00 00 
   33c76:	e9 69 b4 ff ff       	jmp    2f0e4 <sg_raster_triangle_tile_prepared+0x1034>
   33c7b:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   33c82:	00 00 
   33c84:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33c89:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   33c90:	00 00 
   33c92:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
   33c99:	00 00 
   33c9b:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   33ca2:	00 00 
   33ca4:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   33cab:	00 00 
   33cad:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   33cb4:	00 00 
   33cb6:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
   33cbb:	41 0f 28 c2          	movaps %xmm10,%xmm0
   33cbf:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 33cc6 <sg_raster_triangle_tile_prepared+0x5c16>
   33cc6:	e8 00 00 00 00       	call   33ccb <sg_raster_triangle_tile_prepared+0x5c1b>
   33ccb:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 33cd3 <sg_raster_triangle_tile_prepared+0x5c23>
   33cd2:	00 
   33cd3:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
   33cda:	00 00 
   33cdc:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 33ce4 <sg_raster_triangle_tile_prepared+0x5c34>
   33ce3:	00 
   33ce4:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
   33ceb:	00 00 
   33ced:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
   33cf4:	00 00 
   33cf6:	f3 0f 10 b4 24 50 01 	movss  0x150(%rsp),%xmm6
   33cfd:	00 00 
   33cff:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   33d03:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   33d07:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
   33d0e:	00 00 
   33d10:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   33d14:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   33d18:	e9 d3 c3 ff ff       	jmp    300f0 <sg_raster_triangle_tile_prepared+0x2040>
   33d1d:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   33d24:	00 00 
   33d26:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33d2b:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   33d32:	00 00 
   33d34:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
   33d3b:	00 
   33d3c:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   33d43:	00 00 
   33d45:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   33d4c:	00 00 
   33d4e:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   33d55:	00 00 
   33d57:	e9 63 ff ff ff       	jmp    33cbf <sg_raster_triangle_tile_prepared+0x5c0f>
   33d5c:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
   33d63:	89 c8                	mov    %ecx,%eax
   33d65:	01 d5                	add    %edx,%ebp
   33d67:	89 d1                	mov    %edx,%ecx
   33d69:	99                   	cltd
   33d6a:	f7 f9                	idiv   %ecx
   33d6c:	85 d2                	test   %edx,%edx
   33d6e:	0f 84 28 de ff ff    	je     31b9c <sg_raster_triangle_tile_prepared+0x3aec>
   33d74:	e9 ac fe ff ff       	jmp    33c25 <sg_raster_triangle_tile_prepared+0x5b75>
   33d79:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
   33d80:	00 00 
   33d82:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33d87:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
   33d8e:	00 00 
   33d90:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
   33d97:	00 
   33d98:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
   33d9f:	00 00 
   33da1:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
   33da8:	00 00 
   33daa:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 33db1 <sg_raster_triangle_tile_prepared+0x5d01>
   33db1:	f3 0f 11 b4 24 50 01 	movss  %xmm6,0x150(%rsp)
   33db8:	00 00 
   33dba:	e9 e6 ad ff ff       	jmp    2eba5 <sg_raster_triangle_tile_prepared+0xaf5>
   33dbf:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 33dc7 <sg_raster_triangle_tile_prepared+0x5d17>
   33dc6:	00 
   33dc7:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
   33dce:	00 00 
   33dd0:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
   33dd7:	00 00 
   33dd9:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
   33de0:	00 00 
   33de2:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   33de6:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   33dea:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   33dee:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   33df2:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
   33df9:	00 00 
   33dfb:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   33dff:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   33e03:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
   33e0a:	00 00 
   33e0c:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   33e10:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   33e14:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
   33e1b:	00 00 
   33e1d:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   33e21:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   33e25:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   33e29:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 33e31 <sg_raster_triangle_tile_prepared+0x5d81>
   33e30:	00 
   33e31:	66 0f ef d2          	pxor   %xmm2,%xmm2
   33e35:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 33e3d <sg_raster_triangle_tile_prepared+0x5d8d>
   33e3c:	00 
   33e3d:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
   33e41:	83 f8 01             	cmp    $0x1,%eax
   33e44:	0f 84 3a 1a 00 00    	je     35884 <sg_raster_triangle_tile_prepared+0x77d4>
   33e4a:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
   33e4e:	66 0f ef db          	pxor   %xmm3,%xmm3
   33e52:	66 0f ef d2          	pxor   %xmm2,%xmm2
   33e56:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 33e5e <sg_raster_triangle_tile_prepared+0x5dae>
   33e5d:	00 
   33e5e:	66 0f 6f ca          	movdqa %xmm2,%xmm1
   33e62:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   33e66:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   33e6a:	0f 28 e0             	movaps %xmm0,%xmm4
   33e6d:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
   33e71:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
   33e75:	0f 55 c8             	andnps %xmm0,%xmm1
   33e78:	0f 28 c5             	movaps %xmm5,%xmm0
   33e7b:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   33e7f:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   33e84:	83 f8 03             	cmp    $0x3,%eax
   33e87:	0f 85 39 21 00 00    	jne    35fc6 <sg_raster_triangle_tile_prepared+0x7f16>
   33e8d:	0f 59 c9             	mulps  %xmm1,%xmm1
   33e90:	0f 28 c1             	movaps %xmm1,%xmm0
   33e93:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   33e98:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 33ea0 <sg_raster_triangle_tile_prepared+0x5df0>
   33e9f:	00 
   33ea0:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   33ea4:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
   33eab:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
   33eb2:	00 
   33eb3:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
   33eb7:	0f 28 c5             	movaps %xmm5,%xmm0
   33eba:	0f 29 9c 24 50 01 00 	movaps %xmm3,0x150(%rsp)
   33ec1:	00 
   33ec2:	0f 55 d1             	andnps %xmm1,%xmm2
   33ec5:	66 0f ef c9          	pxor   %xmm1,%xmm1
   33ec9:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   33ecd:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
   33ed1:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   33ed6:	0f 28 c2             	movaps %xmm2,%xmm0
   33ed9:	0f 59 c3             	mulps  %xmm3,%xmm0
   33edc:	66 0f ef d2          	pxor   %xmm2,%xmm2
   33ee0:	0f 28 c8             	movaps %xmm0,%xmm1
   33ee3:	66 0f ef db          	pxor   %xmm3,%xmm3
   33ee7:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
   33eeb:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
   33eef:	0f 55 d8             	andnps %xmm0,%xmm3
   33ef2:	0f 28 c5             	movaps %xmm5,%xmm0
   33ef5:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   33ef9:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   33efe:	0f 28 eb             	movaps %xmm3,%xmm5
   33f01:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
   33f08:	00 
   33f09:	0f 28 cb             	movaps %xmm3,%xmm1
   33f0c:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   33f13:	00 00 
   33f15:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
   33f19:	0f 15 db             	unpckhps %xmm3,%xmm3
   33f1c:	0f 28 d5             	movaps %xmm5,%xmm2
   33f1f:	e9 06 b9 ff ff       	jmp    2f82a <sg_raster_triangle_tile_prepared+0x177a>
   33f24:	48 89 c6             	mov    %rax,%rsi
   33f27:	0f 28 a4 24 50 01 00 	movaps 0x150(%rsp),%xmm4
   33f2e:	00 
   33f2f:	49 63 c0             	movslq %r8d,%rax
   33f32:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   33f36:	f3 0f 11 24 82       	movss  %xmm4,(%rdx,%rax,4)
   33f3b:	85 ed                	test   %ebp,%ebp
   33f3d:	0f 85 f4 de ff ff    	jne    31e37 <sg_raster_triangle_tile_prepared+0x3d87>
   33f43:	e9 0d df ff ff       	jmp    31e55 <sg_raster_triangle_tile_prepared+0x3da5>
   33f48:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 33f50 <sg_raster_triangle_tile_prepared+0x5ea0>
   33f4f:	00 
   33f50:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
   33f57:	00 00 
   33f59:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
   33f60:	00 00 
   33f62:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
   33f69:	00 00 
   33f6b:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   33f6f:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   33f73:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   33f77:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   33f7b:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
   33f82:	00 00 
   33f84:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   33f88:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   33f8c:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
   33f93:	00 00 
   33f95:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   33f99:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   33f9d:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
   33fa4:	00 00 
   33fa6:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   33faa:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   33fae:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   33fb2:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 33fba <sg_raster_triangle_tile_prepared+0x5f0a>
   33fb9:	00 
   33fba:	66 0f ef d2          	pxor   %xmm2,%xmm2
   33fbe:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 33fc6 <sg_raster_triangle_tile_prepared+0x5f16>
   33fc5:	00 
   33fc6:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
   33fca:	83 f8 01             	cmp    $0x1,%eax
   33fcd:	0f 84 05 18 00 00    	je     357d8 <sg_raster_triangle_tile_prepared+0x7728>
   33fd3:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
   33fd7:	66 0f ef db          	pxor   %xmm3,%xmm3
   33fdb:	66 0f ef d2          	pxor   %xmm2,%xmm2
   33fdf:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 33fe7 <sg_raster_triangle_tile_prepared+0x5f37>
   33fe6:	00 
   33fe7:	66 0f 6f ca          	movdqa %xmm2,%xmm1
   33feb:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   33fef:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   33ff3:	0f 28 e0             	movaps %xmm0,%xmm4
   33ff6:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
   33ffa:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
   33ffe:	0f 55 c8             	andnps %xmm0,%xmm1
   34001:	0f 28 c5             	movaps %xmm5,%xmm0
   34004:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   34008:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   3400d:	83 f8 03             	cmp    $0x3,%eax
   34010:	0f 85 a3 1f 00 00    	jne    35fb9 <sg_raster_triangle_tile_prepared+0x7f09>
   34016:	0f 59 c9             	mulps  %xmm1,%xmm1
   34019:	0f 28 c1             	movaps %xmm1,%xmm0
   3401c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34021:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 34029 <sg_raster_triangle_tile_prepared+0x5f79>
   34028:	00 
   34029:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   3402d:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
   34034:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
   3403b:	00 
   3403c:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
   34040:	0f 28 c5             	movaps %xmm5,%xmm0
   34043:	0f 29 9c 24 50 01 00 	movaps %xmm3,0x150(%rsp)
   3404a:	00 
   3404b:	0f 55 d1             	andnps %xmm1,%xmm2
   3404e:	66 0f ef c9          	pxor   %xmm1,%xmm1
   34052:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   34056:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
   3405a:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   3405f:	0f 28 c2             	movaps %xmm2,%xmm0
   34062:	0f 59 c3             	mulps  %xmm3,%xmm0
   34065:	66 0f ef d2          	pxor   %xmm2,%xmm2
   34069:	0f 28 c8             	movaps %xmm0,%xmm1
   3406c:	66 0f ef db          	pxor   %xmm3,%xmm3
   34070:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
   34074:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
   34078:	0f 55 d8             	andnps %xmm0,%xmm3
   3407b:	0f 28 c5             	movaps %xmm5,%xmm0
   3407e:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   34082:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   34087:	0f 28 eb             	movaps %xmm3,%xmm5
   3408a:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
   34091:	00 
   34092:	0f 28 cb             	movaps %xmm3,%xmm1
   34095:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   3409c:	00 00 
   3409e:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
   340a2:	0f 15 db             	unpckhps %xmm3,%xmm3
   340a5:	0f 28 d5             	movaps %xmm5,%xmm2
   340a8:	e9 bb bf ff ff       	jmp    30068 <sg_raster_triangle_tile_prepared+0x1fb8>
   340ad:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 340b5 <sg_raster_triangle_tile_prepared+0x6005>
   340b4:	00 
   340b5:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
   340bc:	00 00 
   340be:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
   340c5:	00 00 
   340c7:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
   340ce:	00 00 
   340d0:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   340d4:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   340d8:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   340dc:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   340e0:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
   340e7:	00 00 
   340e9:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   340ed:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   340f1:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
   340f8:	00 00 
   340fa:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   340fe:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   34102:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
   34109:	00 00 
   3410b:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   3410f:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   34113:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   34117:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 3411f <sg_raster_triangle_tile_prepared+0x606f>
   3411e:	00 
   3411f:	66 0f ef d2          	pxor   %xmm2,%xmm2
   34123:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 3412b <sg_raster_triangle_tile_prepared+0x607b>
   3412a:	00 
   3412b:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
   3412f:	83 f8 01             	cmp    $0x1,%eax
   34132:	0f 84 f4 15 00 00    	je     3572c <sg_raster_triangle_tile_prepared+0x767c>
   34138:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
   3413c:	66 0f ef db          	pxor   %xmm3,%xmm3
   34140:	66 0f ef d2          	pxor   %xmm2,%xmm2
   34144:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 3414c <sg_raster_triangle_tile_prepared+0x609c>
   3414b:	00 
   3414c:	66 0f 6f ca          	movdqa %xmm2,%xmm1
   34150:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   34154:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   34158:	0f 28 e0             	movaps %xmm0,%xmm4
   3415b:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
   3415f:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
   34163:	0f 55 c8             	andnps %xmm0,%xmm1
   34166:	0f 28 c5             	movaps %xmm5,%xmm0
   34169:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   3416d:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   34172:	83 f8 03             	cmp    $0x3,%eax
   34175:	0f 85 79 1e 00 00    	jne    35ff4 <sg_raster_triangle_tile_prepared+0x7f44>
   3417b:	0f 59 c9             	mulps  %xmm1,%xmm1
   3417e:	0f 28 c1             	movaps %xmm1,%xmm0
   34181:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34186:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 3418e <sg_raster_triangle_tile_prepared+0x60de>
   3418d:	00 
   3418e:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   34192:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
   34199:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
   341a0:	00 
   341a1:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
   341a5:	0f 28 c5             	movaps %xmm5,%xmm0
   341a8:	0f 29 9c 24 50 01 00 	movaps %xmm3,0x150(%rsp)
   341af:	00 
   341b0:	0f 55 d1             	andnps %xmm1,%xmm2
   341b3:	66 0f ef c9          	pxor   %xmm1,%xmm1
   341b7:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   341bb:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
   341bf:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   341c4:	0f 28 c2             	movaps %xmm2,%xmm0
   341c7:	0f 59 c3             	mulps  %xmm3,%xmm0
   341ca:	66 0f ef d2          	pxor   %xmm2,%xmm2
   341ce:	0f 28 c8             	movaps %xmm0,%xmm1
   341d1:	66 0f ef db          	pxor   %xmm3,%xmm3
   341d5:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
   341d9:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
   341dd:	0f 55 d8             	andnps %xmm0,%xmm3
   341e0:	0f 28 c5             	movaps %xmm5,%xmm0
   341e3:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   341e7:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   341ec:	0f 28 eb             	movaps %xmm3,%xmm5
   341ef:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
   341f6:	00 
   341f7:	0f 28 cb             	movaps %xmm3,%xmm1
   341fa:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   34201:	00 00 
   34203:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
   34207:	0f 15 db             	unpckhps %xmm3,%xmm3
   3420a:	0f 28 d5             	movaps %xmm5,%xmm2
   3420d:	e9 b8 b1 ff ff       	jmp    2f3ca <sg_raster_triangle_tile_prepared+0x131a>
   34212:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 3421a <sg_raster_triangle_tile_prepared+0x616a>
   34219:	00 
   3421a:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
   34221:	00 00 
   34223:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
   3422a:	00 00 
   3422c:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
   34233:	00 00 
   34235:	f3 0f 5c c1          	subss  %xmm1,%xmm0
   34239:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   3423d:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   34241:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
   34245:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
   3424c:	00 00 
   3424e:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   34252:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   34256:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
   3425d:	00 00 
   3425f:	f3 0f 5c d9          	subss  %xmm1,%xmm3
   34263:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   34267:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
   3426e:	00 00 
   34270:	f3 0f 5c d1          	subss  %xmm1,%xmm2
   34274:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
   34278:	f3 0f 58 c2          	addss  %xmm2,%xmm0
   3427c:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 34284 <sg_raster_triangle_tile_prepared+0x61d4>
   34283:	00 
   34284:	66 0f ef d2          	pxor   %xmm2,%xmm2
   34288:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 34290 <sg_raster_triangle_tile_prepared+0x61e0>
   3428f:	00 
   34290:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
   34294:	83 f8 01             	cmp    $0x1,%eax
   34297:	0f 84 e3 13 00 00    	je     35680 <sg_raster_triangle_tile_prepared+0x75d0>
   3429d:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
   342a1:	66 0f ef db          	pxor   %xmm3,%xmm3
   342a5:	66 0f ef d2          	pxor   %xmm2,%xmm2
   342a9:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 342b1 <sg_raster_triangle_tile_prepared+0x6201>
   342b0:	00 
   342b1:	66 0f 6f ca          	movdqa %xmm2,%xmm1
   342b5:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   342b9:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   342bd:	0f 28 e0             	movaps %xmm0,%xmm4
   342c0:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
   342c4:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
   342c8:	0f 55 c8             	andnps %xmm0,%xmm1
   342cb:	0f 28 c5             	movaps %xmm5,%xmm0
   342ce:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   342d2:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   342d7:	83 f8 03             	cmp    $0x3,%eax
   342da:	0f 85 f3 1c 00 00    	jne    35fd3 <sg_raster_triangle_tile_prepared+0x7f23>
   342e0:	0f 59 c9             	mulps  %xmm1,%xmm1
   342e3:	0f 28 c1             	movaps %xmm1,%xmm0
   342e6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   342eb:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 342f3 <sg_raster_triangle_tile_prepared+0x6243>
   342f2:	00 
   342f3:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   342f7:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
   342fe:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
   34305:	00 
   34306:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
   3430a:	0f 28 c5             	movaps %xmm5,%xmm0
   3430d:	0f 29 9c 24 50 01 00 	movaps %xmm3,0x150(%rsp)
   34314:	00 
   34315:	0f 55 d1             	andnps %xmm1,%xmm2
   34318:	66 0f ef c9          	pxor   %xmm1,%xmm1
   3431c:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   34320:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
   34324:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   34329:	0f 28 c2             	movaps %xmm2,%xmm0
   3432c:	0f 59 c3             	mulps  %xmm3,%xmm0
   3432f:	66 0f ef d2          	pxor   %xmm2,%xmm2
   34333:	0f 28 c8             	movaps %xmm0,%xmm1
   34336:	66 0f ef db          	pxor   %xmm3,%xmm3
   3433a:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
   3433e:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
   34342:	0f 55 d8             	andnps %xmm0,%xmm3
   34345:	0f 28 c5             	movaps %xmm5,%xmm0
   34348:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   3434c:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   34351:	0f 28 eb             	movaps %xmm3,%xmm5
   34354:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
   3435b:	00 
   3435c:	0f 28 cb             	movaps %xmm3,%xmm1
   3435f:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   34366:	00 00 
   34368:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
   3436c:	0f 15 db             	unpckhps %xmm3,%xmm3
   3436f:	0f 28 d5             	movaps %xmm5,%xmm2
   34372:	e9 83 b2 ff ff       	jmp    2f5fa <sg_raster_triangle_tile_prepared+0x154a>
   34377:	48 85 c0             	test   %rax,%rax
   3437a:	74 0b                	je     34387 <sg_raster_triangle_tile_prepared+0x62d7>
   3437c:	8b 40 2c             	mov    0x2c(%rax),%eax
   3437f:	85 c0                	test   %eax,%eax
   34381:	0f 85 cf 1d 00 00    	jne    36156 <sg_raster_triangle_tile_prepared+0x80a6>
   34387:	48 83 ec 08          	sub    $0x8,%rsp
   3438b:	8b 84 24 38 01 00 00 	mov    0x138(%rsp),%eax
   34392:	50                   	push   %rax
   34393:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
   3439a:	50                   	push   %rax
   3439b:	8b 84 24 80 02 00 00 	mov    0x280(%rsp),%eax
   343a2:	50                   	push   %rax
   343a3:	ff 74 24 48          	push   0x48(%rsp)
   343a7:	41 57                	push   %r15
   343a9:	8b 44 24 44          	mov    0x44(%rsp),%eax
   343ad:	50                   	push   %rax
   343ae:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
   343b5:	50                   	push   %rax
   343b6:	44 8b 8c 24 38 01 00 	mov    0x138(%rsp),%r9d
   343bd:	00 
   343be:	f3 0f 10 84 24 34 01 	movss  0x134(%rsp),%xmm0
   343c5:	00 00 
   343c7:	4c 8b 84 24 20 01 00 	mov    0x120(%rsp),%r8
   343ce:	00 
   343cf:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   343d6:	00 
   343d7:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
   343de:	00 
   343df:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
   343e6:	00 
   343e7:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   343ec:	e8 5f 2a fe ff       	call   16e50 <sg_raster_triangle_msaa4>
   343f1:	48 83 c4 40          	add    $0x40,%rsp
   343f5:	e9 97 df ff ff       	jmp    32391 <sg_raster_triangle_tile_prepared+0x42e1>
   343fa:	8b 69 44             	mov    0x44(%rcx),%ebp
   343fd:	85 ed                	test   %ebp,%ebp
   343ff:	0f 85 8b 15 00 00    	jne    35990 <sg_raster_triangle_tile_prepared+0x78e0>
   34405:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   3440c:	00 
   3440d:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
   34414:	00 
   34415:	45 0f 28 f7          	movaps %xmm15,%xmm14
   34419:	44 0f 28 bc 24 a0 01 	movaps 0x1a0(%rsp),%xmm15
   34420:	00 00 
   34422:	f3 0f 10 48 50       	movss  0x50(%rax),%xmm1
   34427:	f3 0f 10 57 50       	movss  0x50(%rdi),%xmm2
   3442c:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   34430:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   34434:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   34438:	41 0f 59 d7          	mulps  %xmm15,%xmm2
   3443c:	0f 58 ca             	addps  %xmm2,%xmm1
   3443f:	f3 0f 10 52 50       	movss  0x50(%rdx),%xmm2
   34444:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   34448:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   3444c:	0f 58 ca             	addps  %xmm2,%xmm1
   3444f:	f3 0f 10 57 54       	movss  0x54(%rdi),%xmm2
   34454:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   34458:	41 0f 59 d7          	mulps  %xmm15,%xmm2
   3445c:	41 0f 59 ce          	mulps  %xmm14,%xmm1
   34460:	44 0f 28 c9          	movaps %xmm1,%xmm9
   34464:	f3 0f 10 48 54       	movss  0x54(%rax),%xmm1
   34469:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   34470:	00 
   34471:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   34475:	41 0f 59 cd          	mulps  %xmm13,%xmm1
   34479:	8b 00                	mov    (%rax),%eax
   3447b:	0f 58 ca             	addps  %xmm2,%xmm1
   3447e:	f3 0f 10 52 54       	movss  0x54(%rdx),%xmm2
   34483:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   34487:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   3448b:	0f 58 ca             	addps  %xmm2,%xmm1
   3448e:	41 0f 59 ce          	mulps  %xmm14,%xmm1
   34492:	83 f8 01             	cmp    $0x1,%eax
   34495:	0f 84 d5 1f 00 00    	je     36470 <sg_raster_triangle_tile_prepared+0x83c0>
   3449b:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
   344a2:	00 
   344a3:	f3 0f 10 46 58       	movss  0x58(%rsi),%xmm0
   344a8:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
   344af:	00 
   344b0:	f3 0f 10 56 58       	movss  0x58(%rsi),%xmm2
   344b5:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   344b9:	41 0f 59 c5          	mulps  %xmm13,%xmm0
   344bd:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
   344c4:	00 
   344c5:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   344c9:	0f 59 94 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm2
   344d0:	00 
   344d1:	0f 58 c2             	addps  %xmm2,%xmm0
   344d4:	f3 0f 10 56 58       	movss  0x58(%rsi),%xmm2
   344d9:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   344dd:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   344e1:	0f 58 c2             	addps  %xmm2,%xmm0
   344e4:	0f 28 94 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm2
   344eb:	00 
   344ec:	0f 59 d0             	mulps  %xmm0,%xmm2
   344ef:	83 f8 03             	cmp    $0x3,%eax
   344f2:	0f 84 77 20 00 00    	je     3656f <sg_raster_triangle_tile_prepared+0x84bf>
   344f8:	44 89 8c 24 10 02 00 	mov    %r9d,0x210(%rsp)
   344ff:	00 
   34500:	66 0f ef c0          	pxor   %xmm0,%xmm0
   34504:	45 31 e4             	xor    %r12d,%r12d
   34507:	4c 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%r13
   3450e:	00 
   3450f:	8b ac 24 b0 01 00 00 	mov    0x1b0(%rsp),%ebp
   34516:	0f 29 84 24 a0 03 00 	movaps %xmm0,0x3a0(%rsp)
   3451d:	00 
   3451e:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
   34525:	00 
   34526:	0f 29 84 24 b0 03 00 	movaps %xmm0,0x3b0(%rsp)
   3452d:	00 
   3452e:	0f 29 84 24 c0 03 00 	movaps %xmm0,0x3c0(%rsp)
   34535:	00 
   34536:	0f 29 84 24 d0 03 00 	movaps %xmm0,0x3d0(%rsp)
   3453d:	00 
   3453e:	44 0f 29 8c 24 00 03 	movaps %xmm9,0x300(%rsp)
   34545:	00 00 
   34547:	0f 29 8c 24 10 03 00 	movaps %xmm1,0x310(%rsp)
   3454e:	00 
   3454f:	0f 29 94 24 60 03 00 	movaps %xmm2,0x360(%rsp)
   34556:	00 
   34557:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
   3455e:	01 00 00 
   34561:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34568:	01 00 00 
   3456b:	0f 29 bc 24 d0 01 00 	movaps %xmm7,0x1d0(%rsp)
   34572:	00 
   34573:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
   3457a:	00 
   3457b:	44 0f 29 a4 24 f0 01 	movaps %xmm12,0x1f0(%rsp)
   34582:	00 00 
   34584:	0f 29 9c 24 b0 01 00 	movaps %xmm3,0x1b0(%rsp)
   3458b:	00 
   3458c:	f3 0f 11 b4 24 00 02 	movss  %xmm6,0x200(%rsp)
   34593:	00 00 
   34595:	44 0f a3 e5          	bt     %r12d,%ebp
   34599:	73 50                	jae    345eb <sg_raster_triangle_tile_prepared+0x653b>
   3459b:	4d 89 e1             	mov    %r12,%r9
   3459e:	45 8b 45 00          	mov    0x0(%r13),%r8d
   345a2:	41 8b 4d 18          	mov    0x18(%r13),%ecx
   345a6:	49 c1 e1 04          	shl    $0x4,%r9
   345aa:	41 8b 55 14          	mov    0x14(%r13),%edx
   345ae:	41 8b 75 10          	mov    0x10(%r13),%esi
   345b2:	f3 42 0f 10 84 a4 00 	movss  0x300(%rsp,%r12,4),%xmm0
   345b9:	03 00 00 
   345bc:	49 8b 7d 08          	mov    0x8(%r13),%rdi
   345c0:	49 01 d9             	add    %rbx,%r9
   345c3:	41 83 f8 02          	cmp    $0x2,%r8d
   345c7:	0f 84 c9 1a 00 00    	je     36096 <sg_raster_triangle_tile_prepared+0x7fe6>
   345cd:	45 85 c0             	test   %r8d,%r8d
   345d0:	0f 85 56 18 00 00    	jne    35e2c <sg_raster_triangle_tile_prepared+0x7d7c>
   345d6:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   345dc:	e8 00 00 00 00       	call   345e1 <sg_raster_triangle_tile_prepared+0x6531>
   345e1:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   345e8:	ff ff ff 
   345eb:	49 83 c4 01          	add    $0x1,%r12
   345ef:	49 83 fc 04          	cmp    $0x4,%r12
   345f3:	75 a0                	jne    34595 <sg_raster_triangle_tile_prepared+0x64e5>
   345f5:	0f 28 94 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm2
   345fc:	00 
   345fd:	0f 28 8c 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm1
   34604:	00 
   34605:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   3460c:	00 
   3460d:	44 0f 28 84 24 a0 03 	movaps 0x3a0(%rsp),%xmm8
   34614:	00 00 
   34616:	44 0f 28 8c 24 b0 03 	movaps 0x3b0(%rsp),%xmm9
   3461d:	00 00 
   3461f:	0f 28 c2             	movaps %xmm2,%xmm0
   34622:	0f 15 d1             	unpckhps %xmm1,%xmm2
   34625:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
   3462c:	01 00 00 
   3462f:	41 0f 28 e8          	movaps %xmm8,%xmm5
   34633:	0f 14 c1             	unpcklps %xmm1,%xmm0
   34636:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   3463d:	01 00 00 
   34640:	0f 28 bc 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm7
   34647:	00 
   34648:	41 0f 14 e9          	unpcklps %xmm9,%xmm5
   3464c:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
   34650:	0f 28 a4 24 e0 01 00 	movaps 0x1e0(%rsp),%xmm4
   34657:	00 
   34658:	44 0f 28 a4 24 f0 01 	movaps 0x1f0(%rsp),%xmm12
   3465f:	00 00 
   34661:	0f 28 cd             	movaps %xmm5,%xmm1
   34664:	0f 28 9c 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm3
   3466b:	00 
   3466c:	f3 0f 10 b4 24 00 02 	movss  0x200(%rsp),%xmm6
   34673:	00 00 
   34675:	0f 16 c8             	movlhps %xmm0,%xmm1
   34678:	8b b0 64 01 00 00    	mov    0x164(%rax),%esi
   3467e:	0f 12 c5             	movhlps %xmm5,%xmm0
   34681:	41 0f 28 e8          	movaps %xmm8,%xmm5
   34685:	44 8b 8c 24 10 02 00 	mov    0x210(%rsp),%r9d
   3468c:	00 
   3468d:	0f 16 ea             	movlhps %xmm2,%xmm5
   34690:	41 0f 12 d0          	movhlps %xmm8,%xmm2
   34694:	83 fe 02             	cmp    $0x2,%esi
   34697:	0f 84 b9 19 00 00    	je     36056 <sg_raster_triangle_tile_prepared+0x7fa6>
   3469d:	0f 59 d9             	mulps  %xmm1,%xmm3
   346a0:	44 0f 59 e0          	mulps  %xmm0,%xmm12
   346a4:	0f 59 e5             	mulps  %xmm5,%xmm4
   346a7:	0f 59 fa             	mulps  %xmm2,%xmm7
   346aa:	e9 bb cd ff ff       	jmp    3146a <sg_raster_triangle_tile_prepared+0x33ba>
   346af:	66 45 0f ef db       	pxor   %xmm11,%xmm11
   346b4:	e9 4e d0 ff ff       	jmp    31707 <sg_raster_triangle_tile_prepared+0x3657>
   346b9:	41 b9 00 00 00 80    	mov    $0x80000000,%r9d
   346bf:	e9 50 b2 ff ff       	jmp    2f914 <sg_raster_triangle_tile_prepared+0x1864>
   346c4:	bf 00 00 00 80       	mov    $0x80000000,%edi
   346c9:	e9 65 b2 ff ff       	jmp    2f933 <sg_raster_triangle_tile_prepared+0x1883>
   346ce:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
   346d4:	e9 71 b2 ff ff       	jmp    2f94a <sg_raster_triangle_tile_prepared+0x189a>
   346d9:	be 00 00 00 80       	mov    $0x80000000,%esi
   346de:	e9 7c b2 ff ff       	jmp    2f95f <sg_raster_triangle_tile_prepared+0x18af>
   346e3:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
   346e9:	e9 b6 b2 ff ff       	jmp    2f9a4 <sg_raster_triangle_tile_prepared+0x18f4>
   346ee:	be 00 00 00 80       	mov    $0x80000000,%esi
   346f3:	e9 ca b2 ff ff       	jmp    2f9c2 <sg_raster_triangle_tile_prepared+0x1912>
   346f8:	bf 00 00 00 80       	mov    $0x80000000,%edi
   346fd:	e9 d5 b2 ff ff       	jmp    2f9d7 <sg_raster_triangle_tile_prepared+0x1927>
   34702:	b8 00 00 00 80       	mov    $0x80000000,%eax
   34707:	e9 e0 b2 ff ff       	jmp    2f9ec <sg_raster_triangle_tile_prepared+0x193c>
   3470c:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
   34712:	e9 1b b3 ff ff       	jmp    2fa32 <sg_raster_triangle_tile_prepared+0x1982>
   34717:	be 00 00 00 80       	mov    $0x80000000,%esi
   3471c:	e9 31 b3 ff ff       	jmp    2fa52 <sg_raster_triangle_tile_prepared+0x19a2>
   34721:	bf 00 00 00 80       	mov    $0x80000000,%edi
   34726:	e9 3c b3 ff ff       	jmp    2fa67 <sg_raster_triangle_tile_prepared+0x19b7>
   3472b:	ba 00 00 00 80       	mov    $0x80000000,%edx
   34730:	e9 47 b3 ff ff       	jmp    2fa7c <sg_raster_triangle_tile_prepared+0x19cc>
   34735:	66 0f ef c9          	pxor   %xmm1,%xmm1
   34739:	66 0f ef c0          	pxor   %xmm0,%xmm0
   3473d:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
   34743:	e9 84 d8 ff ff       	jmp    31fcc <sg_raster_triangle_tile_prepared+0x3f1c>
   34748:	0f c2 84 24 50 01 00 	cmpltps 0x150(%rsp),%xmm0
   3474f:	00 01 
   34751:	66 0f db c8          	pand   %xmm0,%xmm1
   34755:	e9 16 d6 ff ff       	jmp    31d70 <sg_raster_triangle_tile_prepared+0x3cc0>
   3475a:	0f 28 b4 24 50 01 00 	movaps 0x150(%rsp),%xmm6
   34761:	00 
   34762:	0f c2 f0 02          	cmpleps %xmm0,%xmm6
   34766:	66 0f db ce          	pand   %xmm6,%xmm1
   3476a:	e9 01 d6 ff ff       	jmp    31d70 <sg_raster_triangle_tile_prepared+0x3cc0>
   3476f:	0f c2 84 24 50 01 00 	cmpeqps 0x150(%rsp),%xmm0
   34776:	00 00 
   34778:	66 0f db c8          	pand   %xmm0,%xmm1
   3477c:	e9 ef d5 ff ff       	jmp    31d70 <sg_raster_triangle_tile_prepared+0x3cc0>
   34781:	0f 28 b4 24 50 01 00 	movaps 0x150(%rsp),%xmm6
   34788:	00 
   34789:	0f c2 f0 01          	cmpltps %xmm0,%xmm6
   3478d:	66 0f db ce          	pand   %xmm6,%xmm1
   34791:	e9 da d5 ff ff       	jmp    31d70 <sg_raster_triangle_tile_prepared+0x3cc0>
   34796:	0f c2 84 24 50 01 00 	cmpleps 0x150(%rsp),%xmm0
   3479d:	00 02 
   3479f:	66 0f db c8          	pand   %xmm0,%xmm1
   347a3:	e9 c8 d5 ff ff       	jmp    31d70 <sg_raster_triangle_tile_prepared+0x3cc0>
   347a8:	f3 0f 5c f8          	subss  %xmm0,%xmm7
   347ac:	f3 0f 5e fd          	divss  %xmm5,%xmm7
   347b0:	44 0f 2f c7          	comiss %xmm7,%xmm8
   347b4:	0f 87 ae 18 00 00    	ja     36068 <sg_raster_triangle_tile_prepared+0x7fb8>
   347ba:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 347c2 <sg_raster_triangle_tile_prepared+0x6712>
   347c1:	00 
   347c2:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 347ca <sg_raster_triangle_tile_prepared+0x671a>
   347c9:	00 
   347ca:	f3 0f 5d c7          	minss  %xmm7,%xmm0
   347ce:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
   347d2:	f3 0f 5c e8          	subss  %xmm0,%xmm5
   347d6:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
   347da:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
   347de:	e9 0d b9 ff ff       	jmp    300f0 <sg_raster_triangle_tile_prepared+0x2040>
   347e3:	42 8d 34 ad 00 00 00 	lea    0x0(,%r13,4),%esi
   347ea:	00 
   347eb:	48 63 f6             	movslq %esi,%rsi
   347ee:	f3 0f 7e 0c 32       	movq   (%rdx,%rsi,1),%xmm1
   347f3:	e9 38 bf ff ff       	jmp    30730 <sg_raster_triangle_tile_prepared+0x2680>
   347f8:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   347fd:	49 89 d8             	mov    %rbx,%r8
   34800:	be 03 00 00 00       	mov    $0x3,%esi
   34805:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   3480c:	00 
   3480d:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34814:	00 
   34815:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   3481c:	00 
   3481d:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   34824:	01 00 00 
   34827:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   3482e:	00 00 
   34830:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
   34837:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   3483e:	01 00 00 
   34841:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34848:	01 00 00 
   3484b:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   34852:	01 00 00 
   34855:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
   3485c:	01 00 00 
   3485f:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
   34866:	01 00 00 
   34869:	f3 0f 11 bc 24 50 01 	movss  %xmm7,0x150(%rsp)
   34870:	00 00 
   34872:	e8 00 00 00 00       	call   34877 <sg_raster_triangle_tile_prepared+0x67c7>
   34877:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
   3487e:	00 00 
   34880:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
   34887:	00 00 
   34889:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
   34890:	00 00 
   34892:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
   34899:	00 00 
   3489b:	f3 0f 10 bc 24 50 01 	movss  0x150(%rsp),%xmm7
   348a2:	00 00 
   348a4:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
   348ab:	01 00 00 
   348ae:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   348b5:	00 00 
   348b7:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
   348be:	01 00 00 
   348c1:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   348c8:	01 00 00 
   348cb:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   348d2:	00 00 
   348d4:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   348db:	00 00 
   348dd:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   348e4:	01 00 00 
   348e7:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   348ee:	00 00 
   348f0:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   348f7:	01 00 00 
   348fa:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34901:	01 00 00 
   34904:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   3490b:	00 00 
   3490d:	e9 18 af ff ff       	jmp    2f82a <sg_raster_triangle_tile_prepared+0x177a>
   34912:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34917:	49 89 d8             	mov    %rbx,%r8
   3491a:	be 02 00 00 00       	mov    $0x2,%esi
   3491f:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34926:	00 
   34927:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   3492e:	00 
   3492f:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34936:	00 
   34937:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   3493e:	01 00 00 
   34941:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   34948:	00 00 
   3494a:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
   34951:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34958:	01 00 00 
   3495b:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34962:	01 00 00 
   34965:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   3496c:	01 00 00 
   3496f:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
   34976:	01 00 00 
   34979:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
   34980:	01 00 00 
   34983:	f3 0f 11 bc 24 50 01 	movss  %xmm7,0x150(%rsp)
   3498a:	00 00 
   3498c:	e8 00 00 00 00       	call   34991 <sg_raster_triangle_tile_prepared+0x68e1>
   34991:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   34998:	00 
   34999:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   349a0:	01 00 00 
   349a3:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   349aa:	01 00 00 
   349ad:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   349b4:	01 00 00 
   349b7:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   349be:	00 00 
   349c0:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   349c7:	01 00 00 
   349ca:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   349d1:	00 
   349d2:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
   349d9:	01 00 00 
   349dc:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
   349e3:	01 00 00 
   349e6:	f3 0f 10 bc 24 50 01 	movss  0x150(%rsp),%xmm7
   349ed:	00 00 
   349ef:	e9 a1 ef ff ff       	jmp    33995 <sg_raster_triangle_tile_prepared+0x58e5>
   349f4:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   349f9:	49 89 d8             	mov    %rbx,%r8
   349fc:	be 01 00 00 00       	mov    $0x1,%esi
   34a01:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34a08:	00 
   34a09:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34a10:	00 
   34a11:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34a18:	00 
   34a19:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   34a20:	01 00 00 
   34a23:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   34a2a:	00 00 
   34a2c:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
   34a33:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34a3a:	01 00 00 
   34a3d:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34a44:	01 00 00 
   34a47:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   34a4e:	01 00 00 
   34a51:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
   34a58:	01 00 00 
   34a5b:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
   34a62:	01 00 00 
   34a65:	f3 0f 11 bc 24 50 01 	movss  %xmm7,0x150(%rsp)
   34a6c:	00 00 
   34a6e:	e8 00 00 00 00       	call   34a73 <sg_raster_triangle_tile_prepared+0x69c3>
   34a73:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   34a7a:	00 
   34a7b:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34a82:	01 00 00 
   34a85:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34a8c:	01 00 00 
   34a8f:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34a96:	01 00 00 
   34a99:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34aa0:	00 00 
   34aa2:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34aa9:	01 00 00 
   34aac:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   34ab3:	00 
   34ab4:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
   34abb:	01 00 00 
   34abe:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
   34ac5:	01 00 00 
   34ac8:	f3 0f 10 bc 24 50 01 	movss  0x150(%rsp),%xmm7
   34acf:	00 00 
   34ad1:	e9 ae ee ff ff       	jmp    33984 <sg_raster_triangle_tile_prepared+0x58d4>
   34ad6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34adb:	49 89 d8             	mov    %rbx,%r8
   34ade:	31 f6                	xor    %esi,%esi
   34ae0:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34ae7:	00 
   34ae8:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34aef:	00 
   34af0:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34af7:	00 
   34af8:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
   34aff:	e8 00 00 00 00       	call   34b04 <sg_raster_triangle_tile_prepared+0x6a54>
   34b04:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   34b0b:	00 
   34b0c:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34b13:	01 00 00 
   34b16:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34b1d:	01 00 00 
   34b20:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34b27:	01 00 00 
   34b2a:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34b31:	00 00 
   34b33:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34b3a:	01 00 00 
   34b3d:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   34b44:	00 
   34b45:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
   34b4c:	01 00 00 
   34b4f:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
   34b56:	01 00 00 
   34b59:	f3 0f 10 bc 24 50 01 	movss  0x150(%rsp),%xmm7
   34b60:	00 00 
   34b62:	e9 0e ee ff ff       	jmp    33975 <sg_raster_triangle_tile_prepared+0x58c5>
   34b67:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34b6c:	49 89 d8             	mov    %rbx,%r8
   34b6f:	be 03 00 00 00       	mov    $0x3,%esi
   34b74:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34b7b:	00 
   34b7c:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34b83:	00 
   34b84:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34b8b:	00 
   34b8c:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   34b93:	01 00 00 
   34b96:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   34b9d:	00 00 
   34b9f:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
   34ba6:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34bad:	01 00 00 
   34bb0:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34bb7:	01 00 00 
   34bba:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   34bc1:	01 00 00 
   34bc4:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   34bcb:	01 00 00 
   34bce:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   34bd5:	00 00 
   34bd7:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   34bde:	01 00 00 
   34be1:	e8 00 00 00 00       	call   34be6 <sg_raster_triangle_tile_prepared+0x6b36>
   34be6:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
   34bed:	00 00 
   34bef:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
   34bf6:	00 00 
   34bf8:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
   34bff:	00 00 
   34c01:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
   34c08:	00 00 
   34c0a:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   34c11:	01 00 00 
   34c14:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   34c1b:	00 00 
   34c1d:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   34c24:	00 00 
   34c26:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   34c2d:	01 00 00 
   34c30:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34c37:	01 00 00 
   34c3a:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   34c41:	00 00 
   34c43:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34c4a:	00 00 
   34c4c:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34c53:	01 00 00 
   34c56:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   34c5d:	00 00 
   34c5f:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34c66:	01 00 00 
   34c69:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34c70:	01 00 00 
   34c73:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   34c7a:	00 00 
   34c7c:	e9 e7 b3 ff ff       	jmp    30068 <sg_raster_triangle_tile_prepared+0x1fb8>
   34c81:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34c86:	49 89 d8             	mov    %rbx,%r8
   34c89:	be 02 00 00 00       	mov    $0x2,%esi
   34c8e:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34c95:	00 
   34c96:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34c9d:	00 
   34c9e:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34ca5:	00 
   34ca6:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   34cad:	01 00 00 
   34cb0:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   34cb7:	00 00 
   34cb9:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
   34cc0:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34cc7:	01 00 00 
   34cca:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34cd1:	01 00 00 
   34cd4:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   34cdb:	01 00 00 
   34cde:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   34ce5:	01 00 00 
   34ce8:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   34cef:	00 00 
   34cf1:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   34cf8:	01 00 00 
   34cfb:	e8 00 00 00 00       	call   34d00 <sg_raster_triangle_tile_prepared+0x6c50>
   34d00:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   34d07:	00 
   34d08:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34d0f:	01 00 00 
   34d12:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34d19:	01 00 00 
   34d1c:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34d23:	01 00 00 
   34d26:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34d2d:	00 00 
   34d2f:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34d36:	01 00 00 
   34d39:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   34d40:	00 
   34d41:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   34d48:	01 00 00 
   34d4b:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   34d52:	00 00 
   34d54:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   34d5b:	01 00 00 
   34d5e:	e9 e7 ea ff ff       	jmp    3384a <sg_raster_triangle_tile_prepared+0x579a>
   34d63:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34d68:	49 89 d8             	mov    %rbx,%r8
   34d6b:	be 01 00 00 00       	mov    $0x1,%esi
   34d70:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34d77:	00 
   34d78:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34d7f:	00 
   34d80:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34d87:	00 
   34d88:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   34d8f:	01 00 00 
   34d92:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   34d99:	00 00 
   34d9b:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
   34da2:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34da9:	01 00 00 
   34dac:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34db3:	01 00 00 
   34db6:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   34dbd:	01 00 00 
   34dc0:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   34dc7:	01 00 00 
   34dca:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   34dd1:	00 00 
   34dd3:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   34dda:	01 00 00 
   34ddd:	e8 00 00 00 00       	call   34de2 <sg_raster_triangle_tile_prepared+0x6d32>
   34de2:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   34de9:	00 
   34dea:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34df1:	01 00 00 
   34df4:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34dfb:	01 00 00 
   34dfe:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34e05:	01 00 00 
   34e08:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34e0f:	00 00 
   34e11:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34e18:	01 00 00 
   34e1b:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   34e22:	00 
   34e23:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   34e2a:	01 00 00 
   34e2d:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   34e34:	00 00 
   34e36:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   34e3d:	01 00 00 
   34e40:	e9 f6 e9 ff ff       	jmp    3383b <sg_raster_triangle_tile_prepared+0x578b>
   34e45:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34e4a:	49 89 d8             	mov    %rbx,%r8
   34e4d:	31 f6                	xor    %esi,%esi
   34e4f:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34e56:	00 
   34e57:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34e5e:	00 
   34e5f:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34e66:	00 
   34e67:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
   34e6e:	e8 00 00 00 00       	call   34e73 <sg_raster_triangle_tile_prepared+0x6dc3>
   34e73:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   34e7a:	00 
   34e7b:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34e82:	01 00 00 
   34e85:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34e8c:	01 00 00 
   34e8f:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34e96:	01 00 00 
   34e99:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34ea0:	00 00 
   34ea2:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34ea9:	01 00 00 
   34eac:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   34eb3:	00 
   34eb4:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   34ebb:	01 00 00 
   34ebe:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   34ec5:	00 00 
   34ec7:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   34ece:	01 00 00 
   34ed1:	e9 56 e9 ff ff       	jmp    3382c <sg_raster_triangle_tile_prepared+0x577c>
   34ed6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34edb:	49 89 d8             	mov    %rbx,%r8
   34ede:	be 03 00 00 00       	mov    $0x3,%esi
   34ee3:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   34eea:	00 
   34eeb:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   34ef2:	00 
   34ef3:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   34efa:	00 
   34efb:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   34f02:	01 00 00 
   34f05:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   34f0c:	00 00 
   34f0e:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
   34f15:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   34f1c:	01 00 00 
   34f1f:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   34f26:	01 00 00 
   34f29:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   34f30:	01 00 00 
   34f33:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   34f3a:	01 00 00 
   34f3d:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   34f44:	00 00 
   34f46:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   34f4d:	01 00 00 
   34f50:	e8 00 00 00 00       	call   34f55 <sg_raster_triangle_tile_prepared+0x6ea5>
   34f55:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
   34f5c:	00 00 
   34f5e:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
   34f65:	00 00 
   34f67:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
   34f6e:	00 00 
   34f70:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
   34f77:	00 00 
   34f79:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   34f80:	01 00 00 
   34f83:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   34f8a:	00 00 
   34f8c:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   34f93:	00 00 
   34f95:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   34f9c:	01 00 00 
   34f9f:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   34fa6:	01 00 00 
   34fa9:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   34fb0:	00 00 
   34fb2:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   34fb9:	00 00 
   34fbb:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   34fc2:	01 00 00 
   34fc5:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   34fcc:	00 00 
   34fce:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   34fd5:	01 00 00 
   34fd8:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   34fdf:	01 00 00 
   34fe2:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   34fe9:	00 00 
   34feb:	e9 da a3 ff ff       	jmp    2f3ca <sg_raster_triangle_tile_prepared+0x131a>
   34ff0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   34ff5:	49 89 d8             	mov    %rbx,%r8
   34ff8:	be 02 00 00 00       	mov    $0x2,%esi
   34ffd:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   35004:	00 
   35005:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   3500c:	00 
   3500d:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   35014:	00 
   35015:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   3501c:	01 00 00 
   3501f:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   35026:	00 00 
   35028:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
   3502f:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   35036:	01 00 00 
   35039:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   35040:	01 00 00 
   35043:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   3504a:	01 00 00 
   3504d:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   35054:	01 00 00 
   35057:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   3505e:	00 00 
   35060:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   35067:	01 00 00 
   3506a:	e8 00 00 00 00       	call   3506f <sg_raster_triangle_tile_prepared+0x6fbf>
   3506f:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   35076:	00 
   35077:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   3507e:	01 00 00 
   35081:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   35088:	01 00 00 
   3508b:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   35092:	01 00 00 
   35095:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3509c:	00 00 
   3509e:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   350a5:	01 00 00 
   350a8:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   350af:	00 
   350b0:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   350b7:	01 00 00 
   350ba:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   350c1:	00 00 
   350c3:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   350ca:	01 00 00 
   350cd:	e9 25 e6 ff ff       	jmp    336f7 <sg_raster_triangle_tile_prepared+0x5647>
   350d2:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   350d7:	49 89 d8             	mov    %rbx,%r8
   350da:	be 01 00 00 00       	mov    $0x1,%esi
   350df:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   350e6:	00 
   350e7:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   350ee:	00 
   350ef:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   350f6:	00 
   350f7:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   350fe:	01 00 00 
   35101:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   35108:	00 00 
   3510a:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
   35111:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   35118:	01 00 00 
   3511b:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   35122:	01 00 00 
   35125:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   3512c:	01 00 00 
   3512f:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   35136:	01 00 00 
   35139:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   35140:	00 00 
   35142:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   35149:	01 00 00 
   3514c:	e8 00 00 00 00       	call   35151 <sg_raster_triangle_tile_prepared+0x70a1>
   35151:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   35158:	00 
   35159:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   35160:	01 00 00 
   35163:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   3516a:	01 00 00 
   3516d:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   35174:	01 00 00 
   35177:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3517e:	00 00 
   35180:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   35187:	01 00 00 
   3518a:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   35191:	00 
   35192:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   35199:	01 00 00 
   3519c:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   351a3:	00 00 
   351a5:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   351ac:	01 00 00 
   351af:	e9 32 e5 ff ff       	jmp    336e6 <sg_raster_triangle_tile_prepared+0x5636>
   351b4:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   351b9:	49 89 d8             	mov    %rbx,%r8
   351bc:	31 f6                	xor    %esi,%esi
   351be:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   351c5:	00 
   351c6:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   351cd:	00 
   351ce:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   351d5:	00 
   351d6:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
   351dd:	e8 00 00 00 00       	call   351e2 <sg_raster_triangle_tile_prepared+0x7132>
   351e2:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   351e9:	00 
   351ea:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   351f1:	01 00 00 
   351f4:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   351fb:	01 00 00 
   351fe:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   35205:	01 00 00 
   35208:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3520f:	00 00 
   35211:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   35218:	01 00 00 
   3521b:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   35222:	00 
   35223:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   3522a:	01 00 00 
   3522d:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   35234:	00 00 
   35236:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   3523d:	01 00 00 
   35240:	e9 92 e4 ff ff       	jmp    336d7 <sg_raster_triangle_tile_prepared+0x5627>
   35245:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   3524a:	49 89 d8             	mov    %rbx,%r8
   3524d:	be 03 00 00 00       	mov    $0x3,%esi
   35252:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   35259:	00 
   3525a:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   35261:	00 
   35262:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   35269:	00 
   3526a:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   35271:	01 00 00 
   35274:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   3527b:	00 00 
   3527d:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
   35284:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   3528b:	01 00 00 
   3528e:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   35295:	01 00 00 
   35298:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   3529f:	01 00 00 
   352a2:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   352a9:	01 00 00 
   352ac:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   352b3:	00 00 
   352b5:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   352bc:	01 00 00 
   352bf:	e8 00 00 00 00       	call   352c4 <sg_raster_triangle_tile_prepared+0x7214>
   352c4:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
   352cb:	00 00 
   352cd:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
   352d4:	00 00 
   352d6:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
   352dd:	00 00 
   352df:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
   352e6:	00 00 
   352e8:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   352ef:	01 00 00 
   352f2:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   352f9:	00 00 
   352fb:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
   35302:	00 00 
   35304:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   3530b:	01 00 00 
   3530e:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   35315:	01 00 00 
   35318:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
   3531f:	00 00 
   35321:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   35328:	00 00 
   3532a:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   35331:	01 00 00 
   35334:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
   3533b:	00 00 
   3533d:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   35344:	01 00 00 
   35347:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   3534e:	01 00 00 
   35351:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
   35358:	00 00 
   3535a:	e9 9b a2 ff ff       	jmp    2f5fa <sg_raster_triangle_tile_prepared+0x154a>
   3535f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   35364:	49 89 d8             	mov    %rbx,%r8
   35367:	be 02 00 00 00       	mov    $0x2,%esi
   3536c:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   35373:	00 
   35374:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   3537b:	00 
   3537c:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   35383:	00 
   35384:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   3538b:	01 00 00 
   3538e:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   35395:	00 00 
   35397:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
   3539e:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   353a5:	01 00 00 
   353a8:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   353af:	01 00 00 
   353b2:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   353b9:	01 00 00 
   353bc:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   353c3:	01 00 00 
   353c6:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   353cd:	00 00 
   353cf:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   353d6:	01 00 00 
   353d9:	e8 00 00 00 00       	call   353de <sg_raster_triangle_tile_prepared+0x732e>
   353de:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   353e5:	00 
   353e6:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   353ed:	01 00 00 
   353f0:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   353f7:	01 00 00 
   353fa:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   35401:	01 00 00 
   35404:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3540b:	00 00 
   3540d:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   35414:	01 00 00 
   35417:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   3541e:	00 
   3541f:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   35426:	01 00 00 
   35429:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   35430:	00 00 
   35432:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   35439:	01 00 00 
   3543c:	e9 61 e1 ff ff       	jmp    335a2 <sg_raster_triangle_tile_prepared+0x54f2>
   35441:	45 85 db             	test   %r11d,%r11d
   35444:	0f 85 10 ca ff ff    	jne    31e5a <sg_raster_triangle_tile_prepared+0x3daa>
   3544a:	e9 30 ca ff ff       	jmp    31e7f <sg_raster_triangle_tile_prepared+0x3dcf>
   3544f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   35454:	49 89 d8             	mov    %rbx,%r8
   35457:	be 01 00 00 00       	mov    $0x1,%esi
   3545c:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   35463:	00 
   35464:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   3546b:	00 
   3546c:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   35473:	00 
   35474:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
   3547b:	01 00 00 
   3547e:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
   35485:	00 00 
   35487:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
   3548e:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   35495:	01 00 00 
   35498:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
   3549f:	01 00 00 
   354a2:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
   354a9:	01 00 00 
   354ac:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
   354b3:	01 00 00 
   354b6:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
   354bd:	00 00 
   354bf:	f3 44 0f 11 8c 24 50 	movss  %xmm9,0x150(%rsp)
   354c6:	01 00 00 
   354c9:	e8 00 00 00 00       	call   354ce <sg_raster_triangle_tile_prepared+0x741e>
   354ce:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   354d5:	00 
   354d6:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   354dd:	01 00 00 
   354e0:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   354e7:	01 00 00 
   354ea:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   354f1:	01 00 00 
   354f4:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   354fb:	00 00 
   354fd:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   35504:	01 00 00 
   35507:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   3550e:	00 
   3550f:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   35516:	01 00 00 
   35519:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   35520:	00 00 
   35522:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   35529:	01 00 00 
   3552c:	e9 62 e0 ff ff       	jmp    33593 <sg_raster_triangle_tile_prepared+0x54e3>
   35531:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   35536:	49 89 d8             	mov    %rbx,%r8
   35539:	31 f6                	xor    %esi,%esi
   3553b:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
   35542:	00 
   35543:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
   3554a:	00 
   3554b:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
   35552:	00 
   35553:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
   3555a:	e8 00 00 00 00       	call   3555f <sg_raster_triangle_tile_prepared+0x74af>
   3555f:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
   35566:	00 
   35567:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
   3556e:	01 00 00 
   35571:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   35578:	01 00 00 
   3557b:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
   35582:	01 00 00 
   35585:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
   3558c:	00 00 
   3558e:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
   35595:	01 00 00 
   35598:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
   3559f:	00 
   355a0:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
   355a7:	01 00 00 
   355aa:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
   355b1:	00 00 
   355b3:	f3 44 0f 10 8c 24 50 	movss  0x150(%rsp),%xmm9
   355ba:	01 00 00 
   355bd:	e9 c2 df ff ff       	jmp    33584 <sg_raster_triangle_tile_prepared+0x54d4>
   355c2:	85 c0                	test   %eax,%eax
   355c4:	0f 84 25 0c 00 00    	je     361ef <sg_raster_triangle_tile_prepared+0x813f>
   355ca:	45 0f 28 e2          	movaps %xmm10,%xmm12
   355ce:	3d 02 03 00 00       	cmp    $0x302,%eax
   355d3:	0f 85 f7 b1 ff ff    	jne    307d0 <sg_raster_triangle_tile_prepared+0x2720>
   355d9:	41 0f 59 f2          	mulps  %xmm10,%xmm6
   355dd:	41 0f 59 fa          	mulps  %xmm10,%xmm7
   355e1:	45 0f 59 c2          	mulps  %xmm10,%xmm8
   355e5:	45 0f 59 e2          	mulps  %xmm10,%xmm12
   355e9:	e9 e2 b1 ff ff       	jmp    307d0 <sg_raster_triangle_tile_prepared+0x2720>
   355ee:	85 d2                	test   %edx,%edx
   355f0:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   355f4:	44 0f 48 e8          	cmovs  %eax,%r13d
   355f8:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   355ff:	99                   	cltd
   35600:	41 f7 fb             	idiv   %r11d
   35603:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   35607:	85 d2                	test   %edx,%edx
   35609:	0f 48 d0             	cmovs  %eax,%edx
   3560c:	89 d3                	mov    %edx,%ebx
   3560e:	e9 ed d7 ff ff       	jmp    32e00 <sg_raster_triangle_tile_prepared+0x4d50>
   35613:	85 d2                	test   %edx,%edx
   35615:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   35619:	44 0f 48 e8          	cmovs  %eax,%r13d
   3561d:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   35624:	99                   	cltd
   35625:	41 f7 fb             	idiv   %r11d
   35628:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   3562c:	85 d2                	test   %edx,%edx
   3562e:	0f 48 d0             	cmovs  %eax,%edx
   35631:	89 d3                	mov    %edx,%ebx
   35633:	e9 e0 db ff ff       	jmp    33218 <sg_raster_triangle_tile_prepared+0x5168>
   35638:	85 d2                	test   %edx,%edx
   3563a:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   3563e:	44 0f 48 e8          	cmovs  %eax,%r13d
   35642:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   35649:	99                   	cltd
   3564a:	41 f7 fb             	idiv   %r11d
   3564d:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   35651:	85 d2                	test   %edx,%edx
   35653:	0f 48 d0             	cmovs  %eax,%edx
   35656:	89 d3                	mov    %edx,%ebx
   35658:	e9 8a d3 ff ff       	jmp    329e7 <sg_raster_triangle_tile_prepared+0x4937>
   3565d:	85 d2                	test   %edx,%edx
   3565f:	42 8d 04 22          	lea    (%rdx,%r12,1),%eax
   35663:	0f 48 e8             	cmovs  %eax,%ebp
   35666:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
   3566d:	99                   	cltd
   3566e:	41 f7 fc             	idiv   %r12d
   35671:	46 8d 1c 22          	lea    (%rdx,%r12,1),%r11d
   35675:	85 d2                	test   %edx,%edx
   35677:	44 0f 49 da          	cmovns %edx,%r11d
   3567b:	e9 53 cf ff ff       	jmp    325d3 <sg_raster_triangle_tile_prepared+0x4523>
   35680:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   35685:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   35689:	66 0f ef c9          	pxor   %xmm1,%xmm1
   3568d:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   35691:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
   35698:	0f 58 c4             	addps  %xmm4,%xmm0
   3569b:	0f 29 a4 24 50 01 00 	movaps %xmm4,0x150(%rsp)
   356a2:	00 
   356a3:	66 0f ef e4          	pxor   %xmm4,%xmm4
   356a7:	0f 28 e8             	movaps %xmm0,%xmm5
   356aa:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
   356ae:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
   356b2:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 356ba <sg_raster_triangle_tile_prepared+0x760a>
   356b9:	00 
   356ba:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   356be:	0f 55 d8             	andnps %xmm0,%xmm3
   356c1:	0f 28 c5             	movaps %xmm5,%xmm0
   356c4:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   356c8:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   356cd:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
   356d4:	00 
   356d5:	0f 59 c3             	mulps  %xmm3,%xmm0
   356d8:	0f 28 d8             	movaps %xmm0,%xmm3
   356db:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
   356df:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 356e7 <sg_raster_triangle_tile_prepared+0x7637>
   356e6:	00 
   356e7:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
   356ee:	00 00 
   356f0:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
   356f4:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   356f8:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
   356ff:	00 00 
   35701:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # 35709 <sg_raster_triangle_tile_prepared+0x7659>
   35708:	00 
   35709:	0f 55 c8             	andnps %xmm0,%xmm1
   3570c:	0f 28 c5             	movaps %xmm5,%xmm0
   3570f:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   35713:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   35717:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   3571c:	0f 28 c1             	movaps %xmm1,%xmm0
   3571f:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
   35726:	00 
   35727:	e9 03 ec ff ff       	jmp    3432f <sg_raster_triangle_tile_prepared+0x627f>
   3572c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   35731:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   35735:	66 0f ef c9          	pxor   %xmm1,%xmm1
   35739:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   3573d:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
   35744:	0f 58 c4             	addps  %xmm4,%xmm0
   35747:	0f 29 a4 24 50 01 00 	movaps %xmm4,0x150(%rsp)
   3574e:	00 
   3574f:	66 0f ef e4          	pxor   %xmm4,%xmm4
   35753:	0f 28 e8             	movaps %xmm0,%xmm5
   35756:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
   3575a:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
   3575e:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 35766 <sg_raster_triangle_tile_prepared+0x76b6>
   35765:	00 
   35766:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   3576a:	0f 55 d8             	andnps %xmm0,%xmm3
   3576d:	0f 28 c5             	movaps %xmm5,%xmm0
   35770:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   35774:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   35779:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
   35780:	00 
   35781:	0f 59 c3             	mulps  %xmm3,%xmm0
   35784:	0f 28 d8             	movaps %xmm0,%xmm3
   35787:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
   3578b:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 35793 <sg_raster_triangle_tile_prepared+0x76e3>
   35792:	00 
   35793:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
   3579a:	00 00 
   3579c:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
   357a0:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   357a4:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
   357ab:	00 00 
   357ad:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # 357b5 <sg_raster_triangle_tile_prepared+0x7705>
   357b4:	00 
   357b5:	0f 55 c8             	andnps %xmm0,%xmm1
   357b8:	0f 28 c5             	movaps %xmm5,%xmm0
   357bb:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   357bf:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   357c3:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   357c8:	0f 28 c1             	movaps %xmm1,%xmm0
   357cb:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
   357d2:	00 
   357d3:	e9 f2 e9 ff ff       	jmp    341ca <sg_raster_triangle_tile_prepared+0x611a>
   357d8:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   357dd:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   357e1:	66 0f ef c9          	pxor   %xmm1,%xmm1
   357e5:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   357e9:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
   357f0:	0f 58 c4             	addps  %xmm4,%xmm0
   357f3:	0f 29 a4 24 50 01 00 	movaps %xmm4,0x150(%rsp)
   357fa:	00 
   357fb:	66 0f ef e4          	pxor   %xmm4,%xmm4
   357ff:	0f 28 e8             	movaps %xmm0,%xmm5
   35802:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
   35806:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
   3580a:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 35812 <sg_raster_triangle_tile_prepared+0x7762>
   35811:	00 
   35812:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   35816:	0f 55 d8             	andnps %xmm0,%xmm3
   35819:	0f 28 c5             	movaps %xmm5,%xmm0
   3581c:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   35820:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   35825:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
   3582c:	00 
   3582d:	0f 59 c3             	mulps  %xmm3,%xmm0
   35830:	0f 28 d8             	movaps %xmm0,%xmm3
   35833:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
   35837:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 3583f <sg_raster_triangle_tile_prepared+0x778f>
   3583e:	00 
   3583f:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
   35846:	00 00 
   35848:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
   3584c:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   35850:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
   35857:	00 00 
   35859:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # 35861 <sg_raster_triangle_tile_prepared+0x77b1>
   35860:	00 
   35861:	0f 55 c8             	andnps %xmm0,%xmm1
   35864:	0f 28 c5             	movaps %xmm5,%xmm0
   35867:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   3586b:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   3586f:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   35874:	0f 28 c1             	movaps %xmm1,%xmm0
   35877:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
   3587e:	00 
   3587f:	e9 e1 e7 ff ff       	jmp    34065 <sg_raster_triangle_tile_prepared+0x5fb5>
   35884:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   35889:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   3588d:	66 0f ef c9          	pxor   %xmm1,%xmm1
   35891:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   35895:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
   3589c:	0f 58 c4             	addps  %xmm4,%xmm0
   3589f:	0f 29 a4 24 50 01 00 	movaps %xmm4,0x150(%rsp)
   358a6:	00 
   358a7:	66 0f ef e4          	pxor   %xmm4,%xmm4
   358ab:	0f 28 e8             	movaps %xmm0,%xmm5
   358ae:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
   358b2:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
   358b6:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 358be <sg_raster_triangle_tile_prepared+0x780e>
   358bd:	00 
   358be:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   358c2:	0f 55 d8             	andnps %xmm0,%xmm3
   358c5:	0f 28 c5             	movaps %xmm5,%xmm0
   358c8:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   358cc:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   358d1:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
   358d8:	00 
   358d9:	0f 59 c3             	mulps  %xmm3,%xmm0
   358dc:	0f 28 d8             	movaps %xmm0,%xmm3
   358df:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
   358e3:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 358eb <sg_raster_triangle_tile_prepared+0x783b>
   358ea:	00 
   358eb:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
   358f2:	00 00 
   358f4:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
   358f8:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   358fc:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
   35903:	00 00 
   35905:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # 3590d <sg_raster_triangle_tile_prepared+0x785d>
   3590c:	00 
   3590d:	0f 55 c8             	andnps %xmm0,%xmm1
   35910:	0f 28 c5             	movaps %xmm5,%xmm0
   35913:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   35917:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
   3591b:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   35920:	0f 28 c1             	movaps %xmm1,%xmm0
   35923:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
   3592a:	00 
   3592b:	e9 ac e5 ff ff       	jmp    33edc <sg_raster_triangle_tile_prepared+0x5e2c>
   35930:	0f c2 84 24 50 01 00 	cmpltps 0x150(%rsp),%xmm0
   35937:	00 01 
   35939:	66 0f 6f d0          	movdqa %xmm0,%xmm2
   3593d:	e9 ad c4 ff ff       	jmp    31def <sg_raster_triangle_tile_prepared+0x3d3f>
   35942:	0f 28 a4 24 50 01 00 	movaps 0x150(%rsp),%xmm4
   35949:	00 
   3594a:	0f c2 e0 02          	cmpleps %xmm0,%xmm4
   3594e:	0f 28 d4             	movaps %xmm4,%xmm2
   35951:	e9 99 c4 ff ff       	jmp    31def <sg_raster_triangle_tile_prepared+0x3d3f>
   35956:	0f 28 e0             	movaps %xmm0,%xmm4
   35959:	0f c2 a4 24 50 01 00 	cmpeqps 0x150(%rsp),%xmm4
   35960:	00 00 
   35962:	0f 28 d4             	movaps %xmm4,%xmm2
   35965:	e9 85 c4 ff ff       	jmp    31def <sg_raster_triangle_tile_prepared+0x3d3f>
   3596a:	0f 28 a4 24 50 01 00 	movaps 0x150(%rsp),%xmm4
   35971:	00 
   35972:	0f c2 e0 01          	cmpltps %xmm0,%xmm4
   35976:	0f 28 d4             	movaps %xmm4,%xmm2
   35979:	e9 71 c4 ff ff       	jmp    31def <sg_raster_triangle_tile_prepared+0x3d3f>
   3597e:	0f c2 84 24 50 01 00 	cmpleps 0x150(%rsp),%xmm0
   35985:	00 02 
   35987:	66 0f 6f d0          	movdqa %xmm0,%xmm2
   3598b:	e9 5f c4 ff ff       	jmp    31def <sg_raster_triangle_tile_prepared+0x3d3f>
   35990:	f3 0f 10 49 48       	movss  0x48(%rcx),%xmm1
   35995:	f3 0f 10 41 4c       	movss  0x4c(%rcx),%xmm0
   3599a:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
   3599f:	f3 0f 10 51 54       	movss  0x54(%rcx),%xmm2
   359a4:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
   359a8:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   359ac:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
   359b0:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   359b4:	e9 db ec ff ff       	jmp    34694 <sg_raster_triangle_tile_prepared+0x65e4>
   359b9:	31 c0                	xor    %eax,%eax
   359bb:	0f 2f f0             	comiss %xmm0,%xmm6
   359be:	0f 95 c0             	setne  %al
   359c1:	e9 34 a5 ff ff       	jmp    2fefa <sg_raster_triangle_tile_prepared+0x1e4a>
   359c6:	31 c0                	xor    %eax,%eax
   359c8:	0f 2f f0             	comiss %xmm0,%xmm6
   359cb:	0f 97 c0             	seta   %al
   359ce:	e9 27 a5 ff ff       	jmp    2fefa <sg_raster_triangle_tile_prepared+0x1e4a>
   359d3:	31 c0                	xor    %eax,%eax
   359d5:	0f 2f c6             	comiss %xmm6,%xmm0
   359d8:	0f 93 c0             	setae  %al
   359db:	e9 1a a5 ff ff       	jmp    2fefa <sg_raster_triangle_tile_prepared+0x1e4a>
   359e0:	31 c0                	xor    %eax,%eax
   359e2:	0f 2f f0             	comiss %xmm0,%xmm6
   359e5:	0f 97 c0             	seta   %al
   359e8:	e9 cf 9c ff ff       	jmp    2f6bc <sg_raster_triangle_tile_prepared+0x160c>
   359ed:	31 c0                	xor    %eax,%eax
   359ef:	0f 2f c6             	comiss %xmm6,%xmm0
   359f2:	0f 93 c0             	setae  %al
   359f5:	e9 c2 9c ff ff       	jmp    2f6bc <sg_raster_triangle_tile_prepared+0x160c>
   359fa:	31 c0                	xor    %eax,%eax
   359fc:	0f 2f f0             	comiss %xmm0,%xmm6
   359ff:	0f 94 c0             	sete   %al
   35a02:	e9 b5 9c ff ff       	jmp    2f6bc <sg_raster_triangle_tile_prepared+0x160c>
   35a07:	31 c0                	xor    %eax,%eax
   35a09:	0f 2f f0             	comiss %xmm0,%xmm6
   35a0c:	0f 95 c0             	setne  %al
   35a0f:	e9 49 98 ff ff       	jmp    2f25d <sg_raster_triangle_tile_prepared+0x11ad>
   35a14:	31 c0                	xor    %eax,%eax
   35a16:	0f 2f f0             	comiss %xmm0,%xmm6
   35a19:	0f 97 c0             	seta   %al
   35a1c:	e9 3c 98 ff ff       	jmp    2f25d <sg_raster_triangle_tile_prepared+0x11ad>
   35a21:	31 c0                	xor    %eax,%eax
   35a23:	0f 2f c6             	comiss %xmm6,%xmm0
   35a26:	0f 93 c0             	setae  %al
   35a29:	e9 2f 98 ff ff       	jmp    2f25d <sg_raster_triangle_tile_prepared+0x11ad>
   35a2e:	31 c0                	xor    %eax,%eax
   35a30:	0f 2f f0             	comiss %xmm0,%xmm6
   35a33:	0f 94 c0             	sete   %al
   35a36:	e9 22 98 ff ff       	jmp    2f25d <sg_raster_triangle_tile_prepared+0x11ad>
   35a3b:	31 c0                	xor    %eax,%eax
   35a3d:	0f 2f f0             	comiss %xmm0,%xmm6
   35a40:	0f 93 c0             	setae  %al
   35a43:	e9 74 9c ff ff       	jmp    2f6bc <sg_raster_triangle_tile_prepared+0x160c>
   35a48:	31 c0                	xor    %eax,%eax
   35a4a:	0f 2f f0             	comiss %xmm0,%xmm6
   35a4d:	0f 94 c0             	sete   %al
   35a50:	e9 a5 a4 ff ff       	jmp    2fefa <sg_raster_triangle_tile_prepared+0x1e4a>
   35a55:	31 c0                	xor    %eax,%eax
   35a57:	0f 2f f0             	comiss %xmm0,%xmm6
   35a5a:	0f 97 c0             	seta   %al
   35a5d:	e9 2c 9a ff ff       	jmp    2f48e <sg_raster_triangle_tile_prepared+0x13de>
   35a62:	31 c0                	xor    %eax,%eax
   35a64:	0f 2f c6             	comiss %xmm6,%xmm0
   35a67:	0f 93 c0             	setae  %al
   35a6a:	e9 1f 9a ff ff       	jmp    2f48e <sg_raster_triangle_tile_prepared+0x13de>
   35a6f:	31 c0                	xor    %eax,%eax
   35a71:	0f 2f f0             	comiss %xmm0,%xmm6
   35a74:	0f 94 c0             	sete   %al
   35a77:	e9 12 9a ff ff       	jmp    2f48e <sg_raster_triangle_tile_prepared+0x13de>
   35a7c:	31 c0                	xor    %eax,%eax
   35a7e:	0f 2f f0             	comiss %xmm0,%xmm6
   35a81:	0f 93 c0             	setae  %al
   35a84:	e9 05 9a ff ff       	jmp    2f48e <sg_raster_triangle_tile_prepared+0x13de>
   35a89:	31 ff                	xor    %edi,%edi
   35a8b:	0f 2f c8             	comiss %xmm0,%xmm1
   35a8e:	40 0f 95 c7          	setne  %dil
   35a92:	e9 0e b2 ff ff       	jmp    30ca5 <sg_raster_triangle_tile_prepared+0x2bf5>
   35a97:	f3 0f 10 a4 24 50 01 	movss  0x150(%rsp),%xmm4
   35a9e:	00 00 
   35aa0:	31 ff                	xor    %edi,%edi
   35aa2:	0f 2f e0             	comiss %xmm0,%xmm4
   35aa5:	40 0f 95 c7          	setne  %dil
   35aa9:	e9 ed ae ff ff       	jmp    3099b <sg_raster_triangle_tile_prepared+0x28eb>
   35aae:	f3 0f 10 a4 24 50 01 	movss  0x150(%rsp),%xmm4
   35ab5:	00 00 
   35ab7:	31 ff                	xor    %edi,%edi
   35ab9:	0f 2f e0             	comiss %xmm0,%xmm4
   35abc:	40 0f 97 c7          	seta   %dil
   35ac0:	e9 d6 ae ff ff       	jmp    3099b <sg_raster_triangle_tile_prepared+0x28eb>
   35ac5:	31 ff                	xor    %edi,%edi
   35ac7:	0f 2f 84 24 50 01 00 	comiss 0x150(%rsp),%xmm0
   35ace:	00 
   35acf:	40 0f 93 c7          	setae  %dil
   35ad3:	e9 c3 ae ff ff       	jmp    3099b <sg_raster_triangle_tile_prepared+0x28eb>
   35ad8:	31 ff                	xor    %edi,%edi
   35ada:	0f 2f c8             	comiss %xmm0,%xmm1
   35add:	40 0f 97 c7          	seta   %dil
   35ae1:	e9 bf b1 ff ff       	jmp    30ca5 <sg_raster_triangle_tile_prepared+0x2bf5>
   35ae6:	31 ff                	xor    %edi,%edi
   35ae8:	0f 2f c1             	comiss %xmm1,%xmm0
   35aeb:	40 0f 93 c7          	setae  %dil
   35aef:	e9 b1 b1 ff ff       	jmp    30ca5 <sg_raster_triangle_tile_prepared+0x2bf5>
   35af4:	31 ff                	xor    %edi,%edi
   35af6:	0f 2f c8             	comiss %xmm0,%xmm1
   35af9:	40 0f 94 c7          	sete   %dil
   35afd:	e9 a3 b1 ff ff       	jmp    30ca5 <sg_raster_triangle_tile_prepared+0x2bf5>
   35b02:	45 31 c0             	xor    %r8d,%r8d
   35b05:	0f 2f c8             	comiss %xmm0,%xmm1
   35b08:	41 0f 95 c0          	setne  %r8b
   35b0c:	e9 a8 b0 ff ff       	jmp    30bb9 <sg_raster_triangle_tile_prepared+0x2b09>
   35b11:	45 31 c0             	xor    %r8d,%r8d
   35b14:	0f 2f c8             	comiss %xmm0,%xmm1
   35b17:	41 0f 97 c0          	seta   %r8b
   35b1b:	e9 99 b0 ff ff       	jmp    30bb9 <sg_raster_triangle_tile_prepared+0x2b09>
   35b20:	45 31 c0             	xor    %r8d,%r8d
   35b23:	0f 2f c1             	comiss %xmm1,%xmm0
   35b26:	41 0f 93 c0          	setae  %r8b
   35b2a:	e9 8a b0 ff ff       	jmp    30bb9 <sg_raster_triangle_tile_prepared+0x2b09>
   35b2f:	45 31 c0             	xor    %r8d,%r8d
   35b32:	0f 2f c8             	comiss %xmm0,%xmm1
   35b35:	41 0f 94 c0          	sete   %r8b
   35b39:	e9 7b b0 ff ff       	jmp    30bb9 <sg_raster_triangle_tile_prepared+0x2b09>
   35b3e:	31 ff                	xor    %edi,%edi
   35b40:	0f 2f f0             	comiss %xmm0,%xmm6
   35b43:	40 0f 95 c7          	setne  %dil
   35b47:	e9 55 af ff ff       	jmp    30aa1 <sg_raster_triangle_tile_prepared+0x29f1>
   35b4c:	31 ff                	xor    %edi,%edi
   35b4e:	0f 2f f0             	comiss %xmm0,%xmm6
   35b51:	40 0f 97 c7          	seta   %dil
   35b55:	e9 47 af ff ff       	jmp    30aa1 <sg_raster_triangle_tile_prepared+0x29f1>
   35b5a:	31 ff                	xor    %edi,%edi
   35b5c:	0f 2f c6             	comiss %xmm6,%xmm0
   35b5f:	40 0f 93 c7          	setae  %dil
   35b63:	e9 39 af ff ff       	jmp    30aa1 <sg_raster_triangle_tile_prepared+0x29f1>
   35b68:	31 ff                	xor    %edi,%edi
   35b6a:	0f 2f f0             	comiss %xmm0,%xmm6
   35b6d:	40 0f 94 c7          	sete   %dil
   35b71:	e9 2b af ff ff       	jmp    30aa1 <sg_raster_triangle_tile_prepared+0x29f1>
   35b76:	f3 0f 10 a4 24 50 01 	movss  0x150(%rsp),%xmm4
   35b7d:	00 00 
   35b7f:	0f 2f e0             	comiss %xmm0,%xmm4
   35b82:	0f 84 28 ae ff ff    	je     309b0 <sg_raster_triangle_tile_prepared+0x2900>
   35b88:	e9 12 ae ff ff       	jmp    3099f <sg_raster_triangle_tile_prepared+0x28ef>
   35b8d:	0f 1f 00             	nopl   (%rax)
   35b90:	31 c0                	xor    %eax,%eax
   35b92:	0f 2f c6             	comiss %xmm6,%xmm0
   35b95:	0f 97 c0             	seta   %al
   35b98:	e9 f1 98 ff ff       	jmp    2f48e <sg_raster_triangle_tile_prepared+0x13de>
   35b9d:	31 c0                	xor    %eax,%eax
   35b9f:	0f 2f c6             	comiss %xmm6,%xmm0
   35ba2:	0f 97 c0             	seta   %al
   35ba5:	e9 12 9b ff ff       	jmp    2f6bc <sg_raster_triangle_tile_prepared+0x160c>
   35baa:	31 c0                	xor    %eax,%eax
   35bac:	0f 2f c6             	comiss %xmm6,%xmm0
   35baf:	0f 97 c0             	seta   %al
   35bb2:	e9 a6 96 ff ff       	jmp    2f25d <sg_raster_triangle_tile_prepared+0x11ad>
   35bb7:	31 c0                	xor    %eax,%eax
   35bb9:	0f 2f c6             	comiss %xmm6,%xmm0
   35bbc:	0f 97 c0             	seta   %al
   35bbf:	e9 36 a3 ff ff       	jmp    2fefa <sg_raster_triangle_tile_prepared+0x1e4a>
   35bc4:	31 ff                	xor    %edi,%edi
   35bc6:	41 0f 2f c3          	comiss %xmm11,%xmm0
   35bca:	40 0f 97 c7          	seta   %dil
   35bce:	e9 d2 b0 ff ff       	jmp    30ca5 <sg_raster_triangle_tile_prepared+0x2bf5>
   35bd3:	f3 0f 10 a4 24 50 01 	movss  0x150(%rsp),%xmm4
   35bda:	00 00 
   35bdc:	0f 2f e0             	comiss %xmm0,%xmm4
   35bdf:	0f 82 cb ad ff ff    	jb     309b0 <sg_raster_triangle_tile_prepared+0x2900>
   35be5:	e9 b5 ad ff ff       	jmp    3099f <sg_raster_triangle_tile_prepared+0x28ef>
   35bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   35bf0:	45 31 c0             	xor    %r8d,%r8d
   35bf3:	41 0f 2f c2          	comiss %xmm10,%xmm0
   35bf7:	41 0f 97 c0          	seta   %r8b
   35bfb:	e9 b9 af ff ff       	jmp    30bb9 <sg_raster_triangle_tile_prepared+0x2b09>
   35c00:	31 ff                	xor    %edi,%edi
   35c02:	0f 2f c6             	comiss %xmm6,%xmm0
   35c05:	40 0f 97 c7          	seta   %dil
   35c09:	e9 93 ae ff ff       	jmp    30aa1 <sg_raster_triangle_tile_prepared+0x29f1>
   35c0e:	f3 0f 10 8c ac 00 03 	movss  0x300(%rsp,%rbp,4),%xmm1
   35c15:	00 00 
   35c17:	48 83 ec 08          	sub    $0x8,%rsp
   35c1b:	41 51                	push   %r9
   35c1d:	45 8b 44 24 1c       	mov    0x1c(%r12),%r8d
   35c22:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   35c28:	e8 00 00 00 00       	call   35c2d <sg_raster_triangle_tile_prepared+0x7b7d>
   35c2d:	58                   	pop    %rax
   35c2e:	5a                   	pop    %rdx
   35c2f:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   35c36:	ff ff ff 
   35c39:	e9 29 b5 ff ff       	jmp    31167 <sg_raster_triangle_tile_prepared+0x30b7>
   35c3e:	31 d2                	xor    %edx,%edx
   35c40:	39 4c 24 38          	cmp    %ecx,0x38(%rsp)
   35c44:	be ff ff ff ff       	mov    $0xffffffff,%esi
   35c49:	0f 9c c2             	setl   %dl
   35c4c:	66 0f 6e d6          	movd   %esi,%xmm2
   35c50:	f7 da                	neg    %edx
   35c52:	e9 be a8 ff ff       	jmp    30515 <sg_raster_triangle_tile_prepared+0x2465>
   35c57:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 35c5f <sg_raster_triangle_tile_prepared+0x7baf>
   35c5e:	00 
   35c5f:	41 0f 28 cf          	movaps %xmm15,%xmm1
   35c63:	0f 28 d0             	movaps %xmm0,%xmm2
   35c66:	41 0f 28 de          	movaps %xmm14,%xmm3
   35c6a:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
   35c6e:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
   35c72:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
   35c76:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   35c7a:	e9 2d cb ff ff       	jmp    327ac <sg_raster_triangle_tile_prepared+0x46fc>
   35c7f:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
   35c86:	89 c8                	mov    %ecx,%eax
   35c88:	01 d5                	add    %edx,%ebp
   35c8a:	89 d1                	mov    %edx,%ecx
   35c8c:	99                   	cltd
   35c8d:	f7 f9                	idiv   %ecx
   35c8f:	85 d2                	test   %edx,%edx
   35c91:	0f 84 46 c6 ff ff    	je     322dd <sg_raster_triangle_tile_prepared+0x422d>
   35c97:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
   35c9e:	01 c2                	add    %eax,%edx
   35ca0:	45 85 c0             	test   %r8d,%r8d
   35ca3:	0f 85 66 c4 ff ff    	jne    3210f <sg_raster_triangle_tile_prepared+0x405f>
   35ca9:	e9 2f c6 ff ff       	jmp    322dd <sg_raster_triangle_tile_prepared+0x422d>
   35cae:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
   35cb5:	89 c8                	mov    %ecx,%eax
   35cb7:	01 d5                	add    %edx,%ebp
   35cb9:	89 d1                	mov    %edx,%ecx
   35cbb:	99                   	cltd
   35cbc:	f7 f9                	idiv   %ecx
   35cbe:	85 d2                	test   %edx,%edx
   35cc0:	0f 84 49 c4 ff ff    	je     3210f <sg_raster_triangle_tile_prepared+0x405f>
   35cc6:	eb cf                	jmp    35c97 <sg_raster_triangle_tile_prepared+0x7be7>
   35cc8:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 35cd0 <sg_raster_triangle_tile_prepared+0x7c20>
   35ccf:	00 
   35cd0:	41 0f 28 cf          	movaps %xmm15,%xmm1
   35cd4:	0f 28 d0             	movaps %xmm0,%xmm2
   35cd7:	41 0f 28 de          	movaps %xmm14,%xmm3
   35cdb:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
   35cdf:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
   35ce3:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
   35ce7:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   35ceb:	e9 d5 ce ff ff       	jmp    32bc5 <sg_raster_triangle_tile_prepared+0x4b15>
   35cf0:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 35cf8 <sg_raster_triangle_tile_prepared+0x7c48>
   35cf7:	00 
   35cf8:	41 0f 28 cf          	movaps %xmm15,%xmm1
   35cfc:	0f 28 d0             	movaps %xmm0,%xmm2
   35cff:	41 0f 28 de          	movaps %xmm14,%xmm3
   35d03:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
   35d07:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
   35d0b:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
   35d0f:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   35d13:	e9 de d6 ff ff       	jmp    333f6 <sg_raster_triangle_tile_prepared+0x5346>
   35d18:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 35d20 <sg_raster_triangle_tile_prepared+0x7c70>
   35d1f:	00 
   35d20:	41 0f 28 cf          	movaps %xmm15,%xmm1
   35d24:	0f 28 d0             	movaps %xmm0,%xmm2
   35d27:	41 0f 28 de          	movaps %xmm14,%xmm3
   35d2b:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
   35d2f:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
   35d33:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
   35d37:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
   35d3b:	e9 9e d2 ff ff       	jmp    32fde <sg_raster_triangle_tile_prepared+0x4f2e>
   35d40:	c7 84 24 2c 01 00 00 	movl   $0x0,0x12c(%rsp)
   35d47:	00 00 00 00 
   35d4b:	c7 84 24 fc 00 00 00 	movl   $0x1,0xfc(%rsp)
   35d52:	01 00 00 00 
   35d56:	e9 b5 88 ff ff       	jmp    2e610 <sg_raster_triangle_tile_prepared+0x560>
   35d5b:	41 0f 29 2c 24       	movaps %xmm5,(%r12)
   35d60:	41 0f 29 6c 24 10    	movaps %xmm5,0x10(%r12)
   35d66:	41 0f 29 6c 24 20    	movaps %xmm5,0x20(%r12)
   35d6c:	41 0f 29 6c 24 30    	movaps %xmm5,0x30(%r12)
   35d72:	e9 90 b4 ff ff       	jmp    31207 <sg_raster_triangle_tile_prepared+0x3157>
   35d77:	f3 0f 10 43 48       	movss  0x48(%rbx),%xmm0
   35d7c:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   35d80:	41 0f 29 04 24       	movaps %xmm0,(%r12)
   35d85:	f3 0f 10 43 4c       	movss  0x4c(%rbx),%xmm0
   35d8a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   35d8e:	41 0f 29 44 24 10    	movaps %xmm0,0x10(%r12)
   35d94:	f3 0f 10 43 50       	movss  0x50(%rbx),%xmm0
   35d99:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   35d9d:	41 0f 29 44 24 20    	movaps %xmm0,0x20(%r12)
   35da3:	f3 0f 10 43 54       	movss  0x54(%rbx),%xmm0
   35da8:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   35dac:	41 0f 29 44 24 30    	movaps %xmm0,0x30(%r12)
   35db2:	e9 50 b4 ff ff       	jmp    31207 <sg_raster_triangle_tile_prepared+0x3157>
   35db7:	f3 0f 10 94 ac 10 03 	movss  0x310(%rsp,%rbp,4),%xmm2
   35dbe:	00 00 
   35dc0:	f3 0f 10 8c ac 00 03 	movss  0x300(%rsp,%rbp,4),%xmm1
   35dc7:	00 00 
   35dc9:	41 51                	push   %r9
   35dcb:	6a 01                	push   $0x1
   35dcd:	45 8b 4c 24 20       	mov    0x20(%r12),%r9d
   35dd2:	45 8b 44 24 1c       	mov    0x1c(%r12),%r8d
   35dd7:	e8 00 00 00 00       	call   35ddc <sg_raster_triangle_tile_prepared+0x7d2c>
   35ddc:	59                   	pop    %rcx
   35ddd:	5e                   	pop    %rsi
   35dde:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   35de5:	ff ff ff 
   35de8:	e9 7a b3 ff ff       	jmp    31167 <sg_raster_triangle_tile_prepared+0x30b7>
   35ded:	81 fb 04 03 00 00    	cmp    $0x304,%ebx
   35df3:	0f 84 d5 02 00 00    	je     360ce <sg_raster_triangle_tile_prepared+0x801e>
   35df9:	44 0f 28 cd          	movaps %xmm5,%xmm9
   35dfd:	41 0f 28 cb          	movaps %xmm11,%xmm1
   35e01:	44 0f 5c c8          	subps  %xmm0,%xmm9
   35e05:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   35e09:	41 0f 59 e1          	mulps  %xmm9,%xmm4
   35e0d:	41 0f 59 d9          	mulps  %xmm9,%xmm3
   35e11:	41 0f 59 c9          	mulps  %xmm9,%xmm1
   35e15:	41 0f 58 c4          	addps  %xmm12,%xmm0
   35e19:	0f 58 f4             	addps  %xmm4,%xmm6
   35e1c:	0f 58 fb             	addps  %xmm3,%xmm7
   35e1f:	44 0f 58 c1          	addps  %xmm1,%xmm8
   35e23:	44 0f 28 d0          	movaps %xmm0,%xmm10
   35e27:	e9 1b be ff ff       	jmp    31c47 <sg_raster_triangle_tile_prepared+0x3b97>
   35e2c:	f3 42 0f 10 8c a4 10 	movss  0x310(%rsp,%r12,4),%xmm1
   35e33:	03 00 00 
   35e36:	48 83 ec 08          	sub    $0x8,%rsp
   35e3a:	41 51                	push   %r9
   35e3c:	45 8b 45 1c          	mov    0x1c(%r13),%r8d
   35e40:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   35e46:	e8 00 00 00 00       	call   35e4b <sg_raster_triangle_tile_prepared+0x7d9b>
   35e4b:	41 58                	pop    %r8
   35e4d:	41 59                	pop    %r9
   35e4f:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   35e56:	ff ff ff 
   35e59:	e9 8d e7 ff ff       	jmp    345eb <sg_raster_triangle_tile_prepared+0x653b>
   35e5e:	85 db                	test   %ebx,%ebx
   35e60:	0f 84 4f 1b 00 00    	je     379b5 <sg_raster_triangle_tile_prepared+0x9905>
   35e66:	21 d8                	and    %ebx,%eax
   35e68:	41 89 c5             	mov    %eax,%r13d
   35e6b:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   35e72:	21 c3                	and    %eax,%ebx
   35e74:	e9 c7 d1 ff ff       	jmp    33040 <sg_raster_triangle_tile_prepared+0x4f90>
   35e79:	45 85 db             	test   %r11d,%r11d
   35e7c:	0f 84 89 12 00 00    	je     3710b <sg_raster_triangle_tile_prepared+0x905b>
   35e82:	44 21 d8             	and    %r11d,%eax
   35e85:	89 c5                	mov    %eax,%ebp
   35e87:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
   35e8e:	41 21 c3             	and    %eax,%r11d
   35e91:	e9 78 c9 ff ff       	jmp    3280e <sg_raster_triangle_tile_prepared+0x475e>
   35e96:	85 db                	test   %ebx,%ebx
   35e98:	0f 84 55 12 00 00    	je     370f3 <sg_raster_triangle_tile_prepared+0x9043>
   35e9e:	21 d8                	and    %ebx,%eax
   35ea0:	41 89 c5             	mov    %eax,%r13d
   35ea3:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   35eaa:	21 c3                	and    %eax,%ebx
   35eac:	e9 a7 d5 ff ff       	jmp    33458 <sg_raster_triangle_tile_prepared+0x53a8>
   35eb1:	85 db                	test   %ebx,%ebx
   35eb3:	0f 84 42 12 00 00    	je     370fb <sg_raster_triangle_tile_prepared+0x904b>
   35eb9:	21 d8                	and    %ebx,%eax
   35ebb:	41 89 c5             	mov    %eax,%r13d
   35ebe:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
   35ec5:	21 c3                	and    %eax,%ebx
   35ec7:	e9 5b cd ff ff       	jmp    32c27 <sg_raster_triangle_tile_prepared+0x4b77>
   35ecc:	48 83 ec 08          	sub    $0x8,%rsp
   35ed0:	8b 84 24 38 01 00 00 	mov    0x138(%rsp),%eax
   35ed7:	50                   	push   %rax
   35ed8:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
   35edf:	50                   	push   %rax
   35ee0:	8b 84 24 80 02 00 00 	mov    0x280(%rsp),%eax
   35ee7:	50                   	push   %rax
   35ee8:	ff 74 24 48          	push   0x48(%rsp)
   35eec:	41 57                	push   %r15
   35eee:	8b 44 24 44          	mov    0x44(%rsp),%eax
   35ef2:	50                   	push   %rax
   35ef3:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
   35efa:	50                   	push   %rax
   35efb:	44 8b 8c 24 38 01 00 	mov    0x138(%rsp),%r9d
   35f02:	00 
   35f03:	f3 0f 10 84 24 34 01 	movss  0x134(%rsp),%xmm0
   35f0a:	00 00 
   35f0c:	4c 8b 84 24 20 01 00 	mov    0x120(%rsp),%r8
   35f13:	00 
   35f14:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   35f1b:	00 
   35f1c:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
   35f23:	00 
   35f24:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
   35f2b:	00 
   35f2c:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   35f31:	e8 ea 9d fe ff       	call   1fd20 <sg_raster_triangle_msaa2_capture>
   35f36:	48 83 c4 40          	add    $0x40,%rsp
   35f3a:	e9 52 c4 ff ff       	jmp    32391 <sg_raster_triangle_tile_prepared+0x42e1>
   35f3f:	48 8b 53 30          	mov    0x30(%rbx),%rdx
   35f43:	48 85 d2             	test   %rdx,%rdx
   35f46:	74 19                	je     35f61 <sg_raster_triangle_tile_prepared+0x7eb1>
   35f48:	8b 6b 24             	mov    0x24(%rbx),%ebp
   35f4b:	85 ed                	test   %ebp,%ebp
   35f4d:	7e 12                	jle    35f61 <sg_raster_triangle_tile_prepared+0x7eb1>
   35f4f:	8b 7b 28             	mov    0x28(%rbx),%edi
   35f52:	89 bc 24 f0 01 00 00 	mov    %edi,0x1f0(%rsp)
   35f59:	85 ff                	test   %edi,%edi
   35f5b:	0f 8f 16 07 00 00    	jg     36677 <sg_raster_triangle_tile_prepared+0x85c7>
   35f61:	f3 41 0f 10 57 08    	movss  0x8(%r15),%xmm2
   35f67:	f3 41 0f 10 58 08    	movss  0x8(%r8),%xmm3
   35f6d:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   35f71:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   35f75:	41 0f 59 d5          	mulps  %xmm13,%xmm2
   35f79:	0f 59 9c 24 e0 01 00 	mulps  0x1e0(%rsp),%xmm3
   35f80:	00 
   35f81:	0f 58 d3             	addps  %xmm3,%xmm2
   35f84:	f3 0f 10 58 08       	movss  0x8(%rax),%xmm3
   35f89:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   35f8d:	0f 59 9c 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm3
   35f94:	00 
   35f95:	0f 58 d3             	addps  %xmm3,%xmm2
   35f98:	0f 59 94 24 c0 01 00 	mulps  0x1c0(%rsp),%xmm2
   35f9f:	00 
   35fa0:	e9 e1 b0 ff ff       	jmp    31086 <sg_raster_triangle_tile_prepared+0x2fd6>
   35fa5:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   35fa9:	85 d2                	test   %edx,%edx
   35fab:	46 8d 2c 1b          	lea    (%rbx,%r11,1),%r13d
   35faf:	0f 45 d0             	cmovne %eax,%edx
   35fb2:	89 d3                	mov    %edx,%ebx
   35fb4:	e9 9f d4 ff ff       	jmp    33458 <sg_raster_triangle_tile_prepared+0x53a8>
   35fb9:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
   35fc0:	00 
   35fc1:	e9 53 e0 ff ff       	jmp    34019 <sg_raster_triangle_tile_prepared+0x5f69>
   35fc6:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
   35fcd:	00 
   35fce:	e9 bd de ff ff       	jmp    33e90 <sg_raster_triangle_tile_prepared+0x5de0>
   35fd3:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
   35fda:	00 
   35fdb:	e9 03 e3 ff ff       	jmp    342e3 <sg_raster_triangle_tile_prepared+0x6233>
   35fe0:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   35fe4:	85 d2                	test   %edx,%edx
   35fe6:	46 8d 2c 1b          	lea    (%rbx,%r11,1),%r13d
   35fea:	0f 45 d0             	cmovne %eax,%edx
   35fed:	89 d3                	mov    %edx,%ebx
   35fef:	e9 4c d0 ff ff       	jmp    33040 <sg_raster_triangle_tile_prepared+0x4f90>
   35ff4:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
   35ffb:	00 
   35ffc:	e9 7d e1 ff ff       	jmp    3417e <sg_raster_triangle_tile_prepared+0x60ce>
   36001:	43 8d 2c 23          	lea    (%r11,%r12,1),%ebp
   36005:	85 d2                	test   %edx,%edx
   36007:	46 8d 1c 22          	lea    (%rdx,%r12,1),%r11d
   3600b:	44 0f 44 da          	cmove  %edx,%r11d
   3600f:	e9 fa c7 ff ff       	jmp    3280e <sg_raster_triangle_tile_prepared+0x475e>
   36014:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
   36018:	85 d2                	test   %edx,%edx
   3601a:	46 8d 2c 1b          	lea    (%rbx,%r11,1),%r13d
   3601e:	0f 45 d0             	cmovne %eax,%edx
   36021:	89 d3                	mov    %edx,%ebx
   36023:	e9 ff cb ff ff       	jmp    32c27 <sg_raster_triangle_tile_prepared+0x4b77>
   36028:	66 0f ef db          	pxor   %xmm3,%xmm3
   3602c:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 36034 <sg_raster_triangle_tile_prepared+0x7f84>
   36033:	00 
   36034:	0f 28 d3             	movaps %xmm3,%xmm2
   36037:	0f 28 cb             	movaps %xmm3,%xmm1
   3603a:	e9 b8 8b ff ff       	jmp    2ebf7 <sg_raster_triangle_tile_prepared+0xb47>
   3603f:	66 0f ef db          	pxor   %xmm3,%xmm3
   36043:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 3604b <sg_raster_triangle_tile_prepared+0x7f9b>
   3604a:	00 
   3604b:	0f 28 d3             	movaps %xmm3,%xmm2
   3604e:	0f 28 cb             	movaps %xmm3,%xmm1
   36051:	e9 47 8e ff ff       	jmp    2ee9d <sg_raster_triangle_tile_prepared+0xded>
   36056:	0f 28 e5             	movaps %xmm5,%xmm4
   36059:	44 0f 28 e0          	movaps %xmm0,%xmm12
   3605d:	0f 28 d9             	movaps %xmm1,%xmm3
   36060:	0f 28 fa             	movaps %xmm2,%xmm7
   36063:	e9 02 b4 ff ff       	jmp    3146a <sg_raster_triangle_tile_prepared+0x33ba>
   36068:	66 0f ef db          	pxor   %xmm3,%xmm3
   3606c:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 36074 <sg_raster_triangle_tile_prepared+0x7fc4>
   36073:	00 
   36074:	0f 28 d3             	movaps %xmm3,%xmm2
   36077:	0f 28 cb             	movaps %xmm3,%xmm1
   3607a:	e9 71 a0 ff ff       	jmp    300f0 <sg_raster_triangle_tile_prepared+0x2040>
   3607f:	66 0f ef db          	pxor   %xmm3,%xmm3
   36083:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 3608b <sg_raster_triangle_tile_prepared+0x7fdb>
   3608a:	00 
   3608b:	0f 28 d3             	movaps %xmm3,%xmm2
   3608e:	0f 28 cb             	movaps %xmm3,%xmm1
   36091:	e9 a7 90 ff ff       	jmp    2f13d <sg_raster_triangle_tile_prepared+0x108d>
   36096:	f3 42 0f 10 94 a4 60 	movss  0x360(%rsp,%r12,4),%xmm2
   3609d:	03 00 00 
   360a0:	f3 42 0f 10 8c a4 10 	movss  0x310(%rsp,%r12,4),%xmm1
   360a7:	03 00 00 
   360aa:	41 51                	push   %r9
   360ac:	6a 01                	push   $0x1
   360ae:	45 8b 4d 20          	mov    0x20(%r13),%r9d
   360b2:	45 8b 45 1c          	mov    0x1c(%r13),%r8d
   360b6:	e8 00 00 00 00       	call   360bb <sg_raster_triangle_tile_prepared+0x800b>
   360bb:	41 5a                	pop    %r10
   360bd:	41 5b                	pop    %r11
   360bf:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   360c6:	ff ff ff 
   360c9:	e9 1d e5 ff ff       	jmp    345eb <sg_raster_triangle_tile_prepared+0x653b>
   360ce:	0f 59 e0             	mulps  %xmm0,%xmm4
   360d1:	41 0f 28 cb          	movaps %xmm11,%xmm1
   360d5:	0f 59 d8             	mulps  %xmm0,%xmm3
   360d8:	0f 59 c8             	mulps  %xmm0,%xmm1
   360db:	0f 59 c0             	mulps  %xmm0,%xmm0
   360de:	0f 58 f4             	addps  %xmm4,%xmm6
   360e1:	0f 58 fb             	addps  %xmm3,%xmm7
   360e4:	44 0f 58 c1          	addps  %xmm1,%xmm8
   360e8:	41 0f 58 c4          	addps  %xmm12,%xmm0
   360ec:	44 0f 28 d0          	movaps %xmm0,%xmm10
   360f0:	e9 52 bb ff ff       	jmp    31c47 <sg_raster_triangle_tile_prepared+0x3b97>
   360f5:	41 0f 58 c4          	addps  %xmm12,%xmm0
   360f9:	0f 58 f4             	addps  %xmm4,%xmm6
   360fc:	0f 58 fb             	addps  %xmm3,%xmm7
   360ff:	45 0f 58 c3          	addps  %xmm11,%xmm8
   36103:	44 0f 28 d0          	movaps %xmm0,%xmm10
   36107:	e9 3b bb ff ff       	jmp    31c47 <sg_raster_triangle_tile_prepared+0x3b97>
   3610c:	44 0f 28 cd          	movaps %xmm5,%xmm9
   36110:	41 0f 28 cb          	movaps %xmm11,%xmm1
   36114:	45 0f 5c ca          	subps  %xmm10,%xmm9
   36118:	41 0f 59 e1          	mulps  %xmm9,%xmm4
   3611c:	41 0f 59 d9          	mulps  %xmm9,%xmm3
   36120:	41 0f 59 c9          	mulps  %xmm9,%xmm1
   36124:	44 0f 59 c8          	mulps  %xmm0,%xmm9
   36128:	0f 58 f4             	addps  %xmm4,%xmm6
   3612b:	0f 58 fb             	addps  %xmm3,%xmm7
   3612e:	44 0f 58 c1          	addps  %xmm1,%xmm8
   36132:	45 0f 28 d1          	movaps %xmm9,%xmm10
   36136:	45 0f 58 d4          	addps  %xmm12,%xmm10
   3613a:	e9 08 bb ff ff       	jmp    31c47 <sg_raster_triangle_tile_prepared+0x3b97>
   3613f:	0f 59 f0             	mulps  %xmm0,%xmm6
   36142:	45 0f 28 e2          	movaps %xmm10,%xmm12
   36146:	0f 59 f8             	mulps  %xmm0,%xmm7
   36149:	44 0f 59 c0          	mulps  %xmm0,%xmm8
   3614d:	44 0f 59 e0          	mulps  %xmm0,%xmm12
   36151:	e9 7a a6 ff ff       	jmp    307d0 <sg_raster_triangle_tile_prepared+0x2720>
   36156:	48 83 ec 08          	sub    $0x8,%rsp
   3615a:	8b 84 24 38 01 00 00 	mov    0x138(%rsp),%eax
   36161:	50                   	push   %rax
   36162:	8b 84 24 44 01 00 00 	mov    0x144(%rsp),%eax
   36169:	50                   	push   %rax
   3616a:	8b 84 24 80 02 00 00 	mov    0x280(%rsp),%eax
   36171:	50                   	push   %rax
   36172:	ff 74 24 48          	push   0x48(%rsp)
   36176:	41 57                	push   %r15
   36178:	8b 44 24 44          	mov    0x44(%rsp),%eax
   3617c:	50                   	push   %rax
   3617d:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
   36184:	50                   	push   %rax
   36185:	44 8b 8c 24 38 01 00 	mov    0x138(%rsp),%r9d
   3618c:	00 
   3618d:	f3 0f 10 84 24 34 01 	movss  0x134(%rsp),%xmm0
   36194:	00 00 
   36196:	4c 8b 84 24 20 01 00 	mov    0x120(%rsp),%r8
   3619d:	00 
   3619e:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   361a5:	00 
   361a6:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
   361ad:	00 
   361ae:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
   361b5:	00 
   361b6:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   361bb:	e8 d0 7a fd ff       	call   dc90 <sg_raster_triangle_msaa4_capture>
   361c0:	48 83 c4 40          	add    $0x40,%rsp
   361c4:	e9 c8 c1 ff ff       	jmp    32391 <sg_raster_triangle_tile_prepared+0x42e1>
   361c9:	44 0f 28 e5          	movaps %xmm5,%xmm12
   361cd:	45 0f 5c e2          	subps  %xmm10,%xmm12
   361d1:	41 0f 59 f4          	mulps  %xmm12,%xmm6
   361d5:	41 0f 59 fc          	mulps  %xmm12,%xmm7
   361d9:	45 0f 59 c4          	mulps  %xmm12,%xmm8
   361dd:	45 0f 59 e2          	mulps  %xmm10,%xmm12
   361e1:	e9 ea a5 ff ff       	jmp    307d0 <sg_raster_triangle_tile_prepared+0x2720>
   361e6:	45 0f 28 d4          	movaps %xmm12,%xmm10
   361ea:	e9 58 ba ff ff       	jmp    31c47 <sg_raster_triangle_tile_prepared+0x3b97>
   361ef:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
   361f4:	45 0f 28 c4          	movaps %xmm12,%xmm8
   361f8:	41 0f 28 fc          	movaps %xmm12,%xmm7
   361fc:	41 0f 28 f4          	movaps %xmm12,%xmm6
   36200:	e9 cb a5 ff ff       	jmp    307d0 <sg_raster_triangle_tile_prepared+0x2720>
   36205:	0f 59 e4             	mulps  %xmm4,%xmm4
   36208:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   3620c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   36211:	0f 28 c4             	movaps %xmm4,%xmm0
   36214:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   36218:	66 0f 66 d8          	pcmpgtd %xmm0,%xmm3
   3621c:	0f 28 c5             	movaps %xmm5,%xmm0
   3621f:	0f 55 dc             	andnps %xmm4,%xmm3
   36222:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   36226:	0f 28 e3             	movaps %xmm3,%xmm4
   36229:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   3622d:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   36232:	f3 0f 10 80 38 37 00 	movss  0x3738(%rax),%xmm0
   36239:	00 
   3623a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   3623e:	0f 59 c4             	mulps  %xmm4,%xmm0
   36241:	0f 28 f8             	movaps %xmm0,%xmm7
   36244:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   36248:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
   3624c:	0f 55 d8             	andnps %xmm0,%xmm3
   3624f:	0f 28 c5             	movaps %xmm5,%xmm0
   36252:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   36256:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   3625b:	f3 0f 10 80 3c 37 00 	movss  0x373c(%rax),%xmm0
   36262:	00 
   36263:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   36267:	0f 59 c4             	mulps  %xmm4,%xmm0
   3626a:	0f 28 f8             	movaps %xmm0,%xmm7
   3626d:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   36271:	66 0f 66 cf          	pcmpgtd %xmm7,%xmm1
   36275:	0f 55 c8             	andnps %xmm0,%xmm1
   36278:	0f 28 c5             	movaps %xmm5,%xmm0
   3627b:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   3627f:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
   36284:	44 0f 28 e1          	movaps %xmm1,%xmm12
   36288:	0f 28 cc             	movaps %xmm4,%xmm1
   3628b:	e9 87 b1 ff ff       	jmp    31417 <sg_raster_triangle_tile_prepared+0x3367>
   36290:	0f 28 c7             	movaps %xmm7,%xmm0
   36293:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   36298:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
   3629d:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   362a1:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   362a5:	66 44 0f 66 c0       	pcmpgtd %xmm0,%xmm8
   362aa:	f3 0f 10 80 50 36 00 	movss  0x3650(%rax),%xmm0
   362b1:	00 
   362b2:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   362b6:	0f 58 c4             	addps  %xmm4,%xmm0
   362b9:	44 0f 55 c7          	andnps %xmm7,%xmm8
   362bd:	0f 28 f8             	movaps %xmm0,%xmm7
   362c0:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   362c4:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
   362c8:	0f 55 d8             	andnps %xmm0,%xmm3
   362cb:	0f 28 c5             	movaps %xmm5,%xmm0
   362ce:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   362d2:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   362d7:	0f 28 84 24 20 04 00 	movaps 0x420(%rsp),%xmm0
   362de:	00 
   362df:	0f 59 c3             	mulps  %xmm3,%xmm0
   362e2:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   362e6:	0f 28 f8             	movaps %xmm0,%xmm7
   362e9:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   362ed:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
   362f1:	0f 55 d8             	andnps %xmm0,%xmm3
   362f4:	0f 28 c5             	movaps %xmm5,%xmm0
   362f7:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   362fb:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   36300:	0f 28 84 24 60 04 00 	movaps 0x460(%rsp),%xmm0
   36307:	00 
   36308:	0f 58 c3             	addps  %xmm3,%xmm0
   3630b:	66 0f 6f d9          	movdqa %xmm1,%xmm3
   3630f:	0f 28 f8             	movaps %xmm0,%xmm7
   36312:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   36316:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
   3631a:	66 0f 6f f9          	movdqa %xmm1,%xmm7
   3631e:	0f 55 d8             	andnps %xmm0,%xmm3
   36321:	0f 28 c5             	movaps %xmm5,%xmm0
   36324:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
   36328:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
   3632d:	f3 0f 10 80 54 36 00 	movss  0x3654(%rax),%xmm0
   36334:	00 
   36335:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   36339:	0f 58 c4             	addps  %xmm4,%xmm0
   3633c:	44 0f 28 c8          	movaps %xmm0,%xmm9
   36340:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
   36345:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
   3634a:	0f 55 f8             	andnps %xmm0,%xmm7
   3634d:	0f 28 c5             	movaps %xmm5,%xmm0
   36350:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
   36354:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
   36359:	0f 28 84 24 30 04 00 	movaps 0x430(%rsp),%xmm0
   36360:	00 
   36361:	0f 59 c7             	mulps  %xmm7,%xmm0
   36364:	66 0f 6f f9          	movdqa %xmm1,%xmm7
   36368:	44 0f 28 c8          	movaps %xmm0,%xmm9
   3636c:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
   36371:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
   36376:	0f 55 f8             	andnps %xmm0,%xmm7
   36379:	0f 28 c5             	movaps %xmm5,%xmm0
   3637c:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
   36380:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
   36385:	0f 28 84 24 70 04 00 	movaps 0x470(%rsp),%xmm0
   3638c:	00 
   3638d:	0f 58 c7             	addps  %xmm7,%xmm0
   36390:	66 0f 6f f9          	movdqa %xmm1,%xmm7
   36394:	44 0f 28 c8          	movaps %xmm0,%xmm9
   36398:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
   3639d:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
   363a2:	0f 55 f8             	andnps %xmm0,%xmm7
   363a5:	0f 28 c5             	movaps %xmm5,%xmm0
   363a8:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
   363ac:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
   363b1:	f3 0f 10 80 58 36 00 	movss  0x3658(%rax),%xmm0
   363b8:	00 
   363b9:	44 0f 28 e7          	movaps %xmm7,%xmm12
   363bd:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   363c1:	0f 58 c4             	addps  %xmm4,%xmm0
   363c4:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   363c8:	0f 28 f8             	movaps %xmm0,%xmm7
   363cb:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   363cf:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
   363d3:	0f 55 e0             	andnps %xmm0,%xmm4
   363d6:	0f 28 c5             	movaps %xmm5,%xmm0
   363d9:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
   363dd:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   363e2:	0f 28 84 24 40 04 00 	movaps 0x440(%rsp),%xmm0
   363e9:	00 
   363ea:	0f 59 c4             	mulps  %xmm4,%xmm0
   363ed:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   363f1:	0f 28 f8             	movaps %xmm0,%xmm7
   363f4:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   363f8:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
   363fc:	0f 55 e0             	andnps %xmm0,%xmm4
   363ff:	0f 28 c5             	movaps %xmm5,%xmm0
   36402:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
   36406:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   3640b:	0f 28 84 24 80 04 00 	movaps 0x480(%rsp),%xmm0
   36412:	00 
   36413:	0f 58 c4             	addps  %xmm4,%xmm0
   36416:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   3641a:	0f 28 f8             	movaps %xmm0,%xmm7
   3641d:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   36421:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
   36425:	0f 55 e0             	andnps %xmm0,%xmm4
   36428:	0f 28 c5             	movaps %xmm5,%xmm0
   3642b:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
   3642f:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
   36434:	0f 28 c5             	movaps %xmm5,%xmm0
   36437:	41 0f c2 c0 01       	cmpltps %xmm8,%xmm0
   3643c:	66 44 0f 38 14 c5    	blendvps %xmm0,%xmm5,%xmm8
   36442:	0f 28 84 24 50 04 00 	movaps 0x450(%rsp),%xmm0
   36449:	00 
   3644a:	41 0f 59 c0          	mulps  %xmm8,%xmm0
   3644e:	0f 28 f8             	movaps %xmm0,%xmm7
   36451:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
   36455:	66 0f 66 cf          	pcmpgtd %xmm7,%xmm1
   36459:	0f 55 c8             	andnps %xmm0,%xmm1
   3645c:	0f 28 c5             	movaps %xmm5,%xmm0
   3645f:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
   36463:	0f 28 f9             	movaps %xmm1,%xmm7
   36466:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
   3646b:	e9 fa af ff ff       	jmp    3146a <sg_raster_triangle_tile_prepared+0x33ba>
   36470:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   36477:	00 
   36478:	48 8b 41 30          	mov    0x30(%rcx),%rax
   3647c:	48 85 c0             	test   %rax,%rax
   3647f:	74 14                	je     36495 <sg_raster_triangle_tile_prepared+0x83e5>
   36481:	8b 79 24             	mov    0x24(%rcx),%edi
   36484:	85 ff                	test   %edi,%edi
   36486:	7e 0d                	jle    36495 <sg_raster_triangle_tile_prepared+0x83e5>
   36488:	44 8b 41 28          	mov    0x28(%rcx),%r8d
   3648c:	45 85 c0             	test   %r8d,%r8d
   3648f:	0f 8f 7d 0c 00 00    	jg     37112 <sg_raster_triangle_tile_prepared+0x9062>
   36495:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
   3649c:	00 
   3649d:	f3 0f 10 40 58       	movss  0x58(%rax),%xmm0
   364a2:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   364a9:	00 
   364aa:	f3 0f 10 50 58       	movss  0x58(%rax),%xmm2
   364af:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
   364b3:	41 0f 59 c5          	mulps  %xmm13,%xmm0
   364b7:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   364be:	00 
   364bf:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   364c3:	0f 59 94 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm2
   364ca:	00 
   364cb:	0f 58 c2             	addps  %xmm2,%xmm0
   364ce:	f3 0f 10 50 58       	movss  0x58(%rax),%xmm2
   364d3:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
   364d7:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   364db:	0f 58 c2             	addps  %xmm2,%xmm0
   364de:	0f 28 94 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm2
   364e5:	00 
   364e6:	0f 59 d0             	mulps  %xmm0,%xmm2
   364e9:	e9 0a e0 ff ff       	jmp    344f8 <sg_raster_triangle_tile_prepared+0x6448>
   364ee:	8b b4 24 b0 01 00 00 	mov    0x1b0(%rsp),%esi
   364f5:	4c 89 e2             	mov    %r12,%rdx
   364f8:	48 89 df             	mov    %rbx,%rdi
   364fb:	89 8c 24 20 02 00 00 	mov    %ecx,0x220(%rsp)
   36502:	44 89 9c 24 60 02 00 	mov    %r11d,0x260(%rsp)
   36509:	00 
   3650a:	48 89 84 24 10 02 00 	mov    %rax,0x210(%rsp)
   36511:	00 
   36512:	4c 89 84 24 00 02 00 	mov    %r8,0x200(%rsp)
   36519:	00 
   3651a:	0f 29 ac 24 30 02 00 	movaps %xmm5,0x230(%rsp)
   36521:	00 
   36522:	44 0f 29 ac 24 f0 01 	movaps %xmm13,0x1f0(%rsp)
   36529:	00 00 
   3652b:	e8 00 00 00 00       	call   36530 <sg_raster_triangle_tile_prepared+0x8480>
   36530:	4c 8b 84 24 00 02 00 	mov    0x200(%rsp),%r8
   36537:	00 
   36538:	44 0f 28 ac 24 f0 01 	movaps 0x1f0(%rsp),%xmm13
   3653f:	00 00 
   36541:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   36548:	ff ff ff 
   3654b:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
   36552:	00 
   36553:	44 8b 9c 24 60 02 00 	mov    0x260(%rsp),%r11d
   3655a:	00 
   3655b:	8b 8c 24 20 02 00 00 	mov    0x220(%rsp),%ecx
   36562:	0f 28 ac 24 30 02 00 	movaps 0x230(%rsp),%xmm5
   36569:	00 
   3656a:	e9 98 ac ff ff       	jmp    31207 <sg_raster_triangle_tile_prepared+0x3157>
   3656f:	48 8b 9c 24 e0 00 00 	mov    0xe0(%rsp),%rbx
   36576:	00 
   36577:	66 0f ef c0          	pxor   %xmm0,%xmm0
   3657b:	8b b4 24 b0 01 00 00 	mov    0x1b0(%rsp),%esi
   36582:	48 8d 94 24 20 03 00 	lea    0x320(%rsp),%rdx
   36589:	00 
   3658a:	0f 29 84 24 20 03 00 	movaps %xmm0,0x320(%rsp)
   36591:	00 
   36592:	0f 29 84 24 30 03 00 	movaps %xmm0,0x330(%rsp)
   36599:	00 
   3659a:	48 89 df             	mov    %rbx,%rdi
   3659d:	0f 29 84 24 40 03 00 	movaps %xmm0,0x340(%rsp)
   365a4:	00 
   365a5:	0f 29 84 24 50 03 00 	movaps %xmm0,0x350(%rsp)
   365ac:	00 
   365ad:	41 0f 28 c1          	movaps %xmm9,%xmm0
   365b1:	44 89 8c 24 60 02 00 	mov    %r9d,0x260(%rsp)
   365b8:	00 
   365b9:	f3 0f 11 b4 24 10 02 	movss  %xmm6,0x210(%rsp)
   365c0:	00 00 
   365c2:	0f 29 9c 24 00 02 00 	movaps %xmm3,0x200(%rsp)
   365c9:	00 
   365ca:	44 0f 29 a4 24 f0 01 	movaps %xmm12,0x1f0(%rsp)
   365d1:	00 00 
   365d3:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
   365da:	00 
   365db:	0f 29 bc 24 d0 01 00 	movaps %xmm7,0x1d0(%rsp)
   365e2:	00 
   365e3:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
   365ea:	01 00 00 
   365ed:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
   365f4:	01 00 00 
   365f7:	e8 00 00 00 00       	call   365fc <sg_raster_triangle_tile_prepared+0x854c>
   365fc:	0f 28 8c 24 20 03 00 	movaps 0x320(%rsp),%xmm1
   36603:	00 
   36604:	0f 28 84 24 30 03 00 	movaps 0x330(%rsp),%xmm0
   3660b:	00 
   3660c:	49 ba ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r10
   36613:	ff ff ff 
   36616:	0f 28 ac 24 40 03 00 	movaps 0x340(%rsp),%xmm5
   3661d:	00 
   3661e:	8b b3 64 01 00 00    	mov    0x164(%rbx),%esi
   36624:	0f 28 94 24 50 03 00 	movaps 0x350(%rsp),%xmm2
   3662b:	00 
   3662c:	0f 28 bc 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm7
   36633:	00 
   36634:	0f 28 a4 24 e0 01 00 	movaps 0x1e0(%rsp),%xmm4
   3663b:	00 
   3663c:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
   36643:	01 00 00 
   36646:	0f 28 9c 24 00 02 00 	movaps 0x200(%rsp),%xmm3
   3664d:	00 
   3664e:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
   36655:	01 00 00 
   36658:	44 0f 28 a4 24 f0 01 	movaps 0x1f0(%rsp),%xmm12
   3665f:	00 00 
   36661:	44 8b 8c 24 60 02 00 	mov    0x260(%rsp),%r9d
   36668:	00 
   36669:	f3 0f 10 b4 24 10 02 	movss  0x210(%rsp),%xmm6
   36670:	00 00 
   36672:	e9 1d e0 ff ff       	jmp    34694 <sg_raster_triangle_tile_prepared+0x65e4>
   36677:	8b 73 18             	mov    0x18(%rbx),%esi
   3667a:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   3667f:	f3 44 0f 2a f5       	cvtsi2ss %ebp,%xmm14
   36684:	81 fe 00 29 00 00    	cmp    $0x2900,%esi
   3668a:	40 0f 94 c7          	sete   %dil
   3668e:	81 fe 2f 81 00 00    	cmp    $0x812f,%esi
   36694:	40 0f 94 c6          	sete   %sil
   36698:	40 08 f7             	or     %sil,%dil
   3669b:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   366a0:	40 88 bc 24 00 02 00 	mov    %dil,0x200(%rsp)
   366a7:	00 
   366a8:	0f 85 ea 05 00 00    	jne    36c98 <sg_raster_triangle_tile_prepared+0x8be8>
   366ae:	0f 28 d0             	movaps %xmm0,%xmm2
   366b1:	66 0f 3a 08 d8 01    	roundps $0x1,%xmm0,%xmm3
   366b7:	0f 5c d3             	subps  %xmm3,%xmm2
   366ba:	8b 73 1c             	mov    0x1c(%rbx),%esi
   366bd:	44 0f 59 f2          	mulps  %xmm2,%xmm14
   366c1:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
   366c6:	f3 44 0f 2a a4 24 f0 	cvtsi2ssl 0x1f0(%rsp),%xmm12
   366cd:	01 00 00 
   366d0:	81 fe 00 29 00 00    	cmp    $0x2900,%esi
   366d6:	40 0f 94 c7          	sete   %dil
   366da:	81 fe 2f 81 00 00    	cmp    $0x812f,%esi
   366e0:	40 0f 94 c6          	sete   %sil
   366e4:	40 08 fe             	or     %dil,%sil
   366e7:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
   366ec:	40 88 b4 24 10 02 00 	mov    %sil,0x210(%rsp)
   366f3:	00 
   366f4:	0f 85 77 05 00 00    	jne    36c71 <sg_raster_triangle_tile_prepared+0x8bc1>
   366fa:	0f 28 d1             	movaps %xmm1,%xmm2
   366fd:	66 0f 3a 08 c1 01    	roundps $0x1,%xmm1,%xmm0
   36703:	0f 5c d0             	subps  %xmm0,%xmm2
   36706:	8b 7b 14             	mov    0x14(%rbx),%edi
   36709:	44 0f 59 e2          	mulps  %xmm2,%xmm12
   3670d:	89 bc 24 60 02 00 00 	mov    %edi,0x260(%rsp)
   36714:	81 ff 00 26 00 00    	cmp    $0x2600,%edi
   3671a:	74 10                	je     3672c <sg_raster_triangle_tile_prepared+0x867c>
   3671c:	0f 28 a4 24 50 02 00 	movaps 0x250(%rsp),%xmm4
   36723:	00 
   36724:	44 0f 58 f4          	addps  %xmm4,%xmm14
   36728:	44 0f 58 e4          	addps  %xmm4,%xmm12
   3672c:	8d 75 ff             	lea    -0x1(%rbp),%esi
   3672f:	66 0f 6e f5          	movd   %ebp,%xmm6
   36733:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
   3673a:	00 
   3673b:	66 41 0f 3a 08 fe 01 	roundps $0x1,%xmm14,%xmm7
   36742:	66 44 0f 6e ce       	movd   %esi,%xmm9
   36747:	66 45 0f 3a 08 c4 01 	roundps $0x1,%xmm12,%xmm8
   3674e:	8b 7b 38             	mov    0x38(%rbx),%edi
   36751:	f3 0f 5b e7          	cvttps2dq %xmm7,%xmm4
   36755:	f3 41 0f 5b d8       	cvttps2dq %xmm8,%xmm3
   3675a:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
   36760:	66 0f 70 ce 00       	pshufd $0x0,%xmm6,%xmm1
   36765:	0f 85 2f 12 00 00    	jne    3799a <sg_raster_triangle_tile_prepared+0x98ea>
   3676b:	85 ff                	test   %edi,%edi
   3676d:	0f 85 4a 12 00 00    	jne    379bd <sg_raster_triangle_tile_prepared+0x990d>
   36773:	66 0f 6f f4          	movdqa %xmm4,%xmm6
   36777:	66 0f ef d2          	pxor   %xmm2,%xmm2
   3677b:	66 0f 6f c4          	movdqa %xmm4,%xmm0
   3677f:	66 41 0f 66 f1       	pcmpgtd %xmm9,%xmm6
   36784:	66 0f 66 d4          	pcmpgtd %xmm4,%xmm2
   36788:	66 0f fa c1          	psubd  %xmm1,%xmm0
   3678c:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
   36791:	66 0f db c6          	pand   %xmm6,%xmm0
   36795:	66 0f 6f f2          	movdqa %xmm2,%xmm6
   36799:	66 44 0f df d4       	pandn  %xmm4,%xmm10
   3679e:	66 41 0f eb c2       	por    %xmm10,%xmm0
   367a3:	66 0f df f0          	pandn  %xmm0,%xmm6
   367a7:	66 0f 6f c4          	movdqa %xmm4,%xmm0
   367ab:	66 0f fe c1          	paddd  %xmm1,%xmm0
   367af:	66 0f db d0          	pand   %xmm0,%xmm2
   367b3:	66 0f eb d6          	por    %xmm6,%xmm2
   367b7:	8b b4 24 f0 01 00 00 	mov    0x1f0(%rsp),%esi
   367be:	8b 6b 3c             	mov    0x3c(%rbx),%ebp
   367c1:	83 ee 01             	sub    $0x1,%esi
   367c4:	80 bc 24 10 02 00 00 	cmpb   $0x0,0x210(%rsp)
   367cb:	00 
   367cc:	66 0f 6e f6          	movd   %esi,%xmm6
   367d0:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
   367d5:	0f 85 25 06 00 00    	jne    36e00 <sg_raster_triangle_tile_prepared+0x8d50>
   367db:	85 ed                	test   %ebp,%ebp
   367dd:	0f 85 6d 14 00 00    	jne    37c50 <sg_raster_triangle_tile_prepared+0x9ba0>
   367e3:	66 0f ef c0          	pxor   %xmm0,%xmm0
   367e7:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   367ec:	66 44 0f 6e 94 24 f0 	movd   0x1f0(%rsp),%xmm10
   367f3:	01 00 00 
   367f6:	66 44 0f 66 de       	pcmpgtd %xmm6,%xmm11
   367fb:	66 0f 66 c3          	pcmpgtd %xmm3,%xmm0
   367ff:	66 44 0f 6f f8       	movdqa %xmm0,%xmm15
   36804:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
   36809:	66 0f df c3          	pandn  %xmm3,%xmm0
   3680d:	0f 29 84 24 20 02 00 	movaps %xmm0,0x220(%rsp)
   36814:	00 
   36815:	66 41 0f 70 c2 00    	pshufd $0x0,%xmm10,%xmm0
   3681b:	66 44 0f 6f d3       	movdqa %xmm3,%xmm10
   36820:	66 44 0f fa d0       	psubd  %xmm0,%xmm10
   36825:	66 0f fe c3          	paddd  %xmm3,%xmm0
   36829:	66 45 0f db d3       	pand   %xmm11,%xmm10
   3682e:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
   36833:	66 41 0f db c7       	pand   %xmm15,%xmm0
   36838:	66 44 0f eb 94 24 20 	por    0x220(%rsp),%xmm10
   3683f:	02 00 00 
   36842:	66 45 0f df da       	pandn  %xmm10,%xmm11
   36847:	66 41 0f eb c3       	por    %xmm11,%xmm0
   3684c:	66 0f 38 40 c1       	pmulld %xmm1,%xmm0
   36851:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
   36856:	81 bc 24 60 02 00 00 	cmpl   $0x2600,0x260(%rsp)
   3685d:	00 26 00 00 
   36861:	66 0f fe d0          	paddd  %xmm0,%xmm2
   36865:	0f 29 94 24 60 03 00 	movaps %xmm2,0x360(%rsp)
   3686c:	00 
   3686d:	0f 84 7c 14 00 00    	je     37cef <sg_raster_triangle_tile_prepared+0x9c3f>
   36873:	be 01 00 00 00       	mov    $0x1,%esi
   36878:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
   3687f:	00 
   36880:	66 44 0f 6e d6       	movd   %esi,%xmm10
   36885:	66 45 0f 70 d2 00    	pshufd $0x0,%xmm10,%xmm10
   3688b:	66 41 0f fe e2       	paddd  %xmm10,%xmm4
   36890:	0f 85 ee 10 00 00    	jne    37984 <sg_raster_triangle_tile_prepared+0x98d4>
   36896:	85 ff                	test   %edi,%edi
   36898:	0f 85 8b 15 00 00    	jne    37e29 <sg_raster_triangle_tile_prepared+0x9d79>
   3689e:	66 44 0f 6f dc       	movdqa %xmm4,%xmm11
   368a3:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
   368a8:	66 45 0f 66 d9       	pcmpgtd %xmm9,%xmm11
   368ad:	66 44 0f 66 d4       	pcmpgtd %xmm4,%xmm10
   368b2:	66 45 0f 6f cb       	movdqa %xmm11,%xmm9
   368b7:	66 44 0f df cc       	pandn  %xmm4,%xmm9
   368bc:	44 0f 29 8c 24 00 02 	movaps %xmm9,0x200(%rsp)
   368c3:	00 00 
   368c5:	66 44 0f 6f cc       	movdqa %xmm4,%xmm9
   368ca:	66 0f fe e1          	paddd  %xmm1,%xmm4
   368ce:	66 44 0f fa c9       	psubd  %xmm1,%xmm9
   368d3:	66 41 0f db e2       	pand   %xmm10,%xmm4
   368d8:	66 45 0f db cb       	pand   %xmm11,%xmm9
   368dd:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
   368e2:	66 44 0f eb 8c 24 00 	por    0x200(%rsp),%xmm9
   368e9:	02 00 00 
   368ec:	66 45 0f df d9       	pandn  %xmm9,%xmm11
   368f1:	66 41 0f eb e3       	por    %xmm11,%xmm4
   368f6:	be 01 00 00 00       	mov    $0x1,%esi
   368fb:	80 bc 24 10 02 00 00 	cmpb   $0x0,0x210(%rsp)
   36902:	00 
   36903:	66 44 0f 6e ce       	movd   %esi,%xmm9
   36908:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
   3690e:	66 41 0f fe d9       	paddd  %xmm9,%xmm3
   36913:	0f 85 bd 07 00 00    	jne    370d6 <sg_raster_triangle_tile_prepared+0x9026>
   36919:	85 ed                	test   %ebp,%ebp
   3691b:	0f 85 d9 15 00 00    	jne    37efa <sg_raster_triangle_tile_prepared+0x9e4a>
   36921:	66 44 0f 6f d3       	movdqa %xmm3,%xmm10
   36926:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
   3692b:	66 44 0f 66 d6       	pcmpgtd %xmm6,%xmm10
   36930:	66 44 0f 66 cb       	pcmpgtd %xmm3,%xmm9
   36935:	66 0f 6e b4 24 f0 01 	movd   0x1f0(%rsp),%xmm6
   3693c:	00 00 
   3693e:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
   36943:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
   36948:	66 44 0f df db       	pandn  %xmm3,%xmm11
   3694d:	44 0f 29 9c 24 f0 01 	movaps %xmm11,0x1f0(%rsp)
   36954:	00 00 
   36956:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   3695b:	66 0f fe de          	paddd  %xmm6,%xmm3
   3695f:	66 44 0f fa de       	psubd  %xmm6,%xmm11
   36964:	66 41 0f db d9       	pand   %xmm9,%xmm3
   36969:	66 45 0f db da       	pand   %xmm10,%xmm11
   3696e:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
   36973:	66 44 0f eb 9c 24 f0 	por    0x1f0(%rsp),%xmm11
   3697a:	01 00 00 
   3697d:	66 45 0f df d3       	pandn  %xmm11,%xmm10
   36982:	66 41 0f eb da       	por    %xmm10,%xmm3
   36987:	66 0f 38 40 cb       	pmulld %xmm3,%xmm1
   3698c:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
   36991:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
   36998:	0f 
   36999:	66 0f fe c4          	paddd  %xmm4,%xmm0
   3699d:	66 0f 6f f1          	movdqa %xmm1,%xmm6
   369a1:	66 44 0f fe c9       	paddd  %xmm1,%xmm9
   369a6:	66 0f fe f4          	paddd  %xmm4,%xmm6
   369aa:	0f 84 74 05 00 00    	je     36f24 <sg_raster_triangle_tile_prepared+0x8e74>
   369b0:	45 85 db             	test   %r11d,%r11d
   369b3:	0f 84 5a 04 00 00    	je     36e13 <sg_raster_triangle_tile_prepared+0x8d63>
   369b9:	48 63 b4 24 60 03 00 	movslq 0x360(%rsp),%rsi
   369c0:	00 
   369c1:	66 0f 6e 1c b2       	movd   (%rdx,%rsi,4),%xmm3
   369c6:	85 c9                	test   %ecx,%ecx
   369c8:	0f 85 4c 03 00 00    	jne    36d1a <sg_raster_triangle_tile_prepared+0x8c6a>
   369ce:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   369d5:	00 
   369d6:	0f 85 5b 15 00 00    	jne    37f37 <sg_raster_triangle_tile_prepared+0x9e87>
   369dc:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   369e3:	00 
   369e4:	0f 85 44 15 00 00    	jne    37f2e <sg_raster_triangle_tile_prepared+0x9e7e>
   369ea:	66 0f 3a 21 db 0e    	insertps $0xe,%xmm3,%xmm3
   369f0:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   369f5:	66 0f 7e c6          	movd   %xmm0,%esi
   369f9:	48 63 f6             	movslq %esi,%rsi
   369fc:	66 0f 6e 0c b2       	movd   (%rdx,%rsi,4),%xmm1
   36a01:	85 c9                	test   %ecx,%ecx
   36a03:	0f 85 55 03 00 00    	jne    36d5e <sg_raster_triangle_tile_prepared+0x8cae>
   36a09:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   36a10:	00 
   36a11:	0f 85 f1 11 00 00    	jne    37c08 <sg_raster_triangle_tile_prepared+0x9b58>
   36a17:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   36a1e:	00 
   36a1f:	0f 85 9b 14 00 00    	jne    37ec0 <sg_raster_triangle_tile_prepared+0x9e10>
   36a25:	66 0f 3a 21 c9 0e    	insertps $0xe,%xmm1,%xmm1
   36a2b:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   36a2f:	45 85 db             	test   %r11d,%r11d
   36a32:	0f 85 87 02 00 00    	jne    36cbf <sg_raster_triangle_tile_prepared+0x8c0f>
   36a38:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
   36a3f:	66 0f ef c0          	pxor   %xmm0,%xmm0
   36a43:	31 ed                	xor    %ebp,%ebp
   36a45:	31 ff                	xor    %edi,%edi
   36a47:	48 63 f6             	movslq %esi,%rsi
   36a4a:	66 0f 3a 22 04 b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm0
   36a51:	31 f6                	xor    %esi,%esi
   36a53:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   36a58:	66 41 0f 3a 16 f1 03 	pextrd $0x3,%xmm6,%r9d
   36a5f:	4d 63 c9             	movslq %r9d,%r9
   36a62:	46 8b 0c 8a          	mov    (%rdx,%r9,4),%r9d
   36a66:	66 0f 6e f5          	movd   %ebp,%xmm6
   36a6a:	66 0f 6e d6          	movd   %esi,%xmm2
   36a6e:	66 41 0f 3a 22 f1 01 	pinsrd $0x1,%r9d,%xmm6
   36a75:	66 0f 3a 22 d7 01    	pinsrd $0x1,%edi,%xmm2
   36a7b:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
   36a7f:	66 0f 6f f2          	movdqa %xmm2,%xmm6
   36a83:	45 0f 28 ce          	movaps %xmm14,%xmm9
   36a87:	be ff 00 00 00       	mov    $0xff,%esi
   36a8c:	45 0f 28 fc          	movaps %xmm12,%xmm15
   36a90:	44 0f 5c cf          	subps  %xmm7,%xmm9
   36a94:	0f 58 fd             	addps  %xmm5,%xmm7
   36a97:	66 0f 72 d3 08       	psrld  $0x8,%xmm3
   36a9c:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
   36aa1:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   36aa6:	45 0f 5c f8          	subps  %xmm8,%xmm15
   36aaa:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   36aaf:	41 0f 5c fe          	subps  %xmm14,%xmm7
   36ab3:	45 0f 28 f0          	movaps %xmm8,%xmm14
   36ab7:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
   36abc:	44 0f 58 f5          	addps  %xmm5,%xmm14
   36ac0:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
   36ac6:	45 0f 5c f4          	subps  %xmm12,%xmm14
   36aca:	66 44 0f 6e e6       	movd   %esi,%xmm12
   36acf:	66 45 0f 70 e4 00    	pshufd $0x0,%xmm12,%xmm12
   36ad5:	66 41 0f db e4       	pand   %xmm12,%xmm4
   36ada:	66 45 0f db dc       	pand   %xmm12,%xmm11
   36adf:	66 41 0f db f4       	pand   %xmm12,%xmm6
   36ae4:	66 45 0f db d4       	pand   %xmm12,%xmm10
   36ae9:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
   36aec:	45 0f 5b db          	cvtdq2ps %xmm11,%xmm11
   36af0:	0f 5b f6             	cvtdq2ps %xmm6,%xmm6
   36af3:	44 0f 59 df          	mulps  %xmm7,%xmm11
   36af7:	45 0f 5b d2          	cvtdq2ps %xmm10,%xmm10
   36afb:	66 41 0f db cc       	pand   %xmm12,%xmm1
   36b00:	44 0f 59 d7          	mulps  %xmm7,%xmm10
   36b04:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   36b07:	41 0f 59 f1          	mulps  %xmm9,%xmm6
   36b0b:	41 0f 59 e1          	mulps  %xmm9,%xmm4
   36b0f:	41 0f 59 c9          	mulps  %xmm9,%xmm1
   36b13:	41 0f 58 f2          	addps  %xmm10,%xmm6
   36b17:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   36b1c:	66 41 0f db c4       	pand   %xmm12,%xmm0
   36b21:	41 0f 58 e3          	addps  %xmm11,%xmm4
   36b25:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
   36b28:	0f 59 c7             	mulps  %xmm7,%xmm0
   36b2b:	f3 44 0f 10 1d 00 00 	movss  0x0(%rip),%xmm11        # 36b34 <sg_raster_triangle_tile_prepared+0x8a84>
   36b32:	00 00 
   36b34:	66 41 0f 72 d2 08    	psrld  $0x8,%xmm10
   36b3a:	41 0f 59 f7          	mulps  %xmm15,%xmm6
   36b3e:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
   36b43:	41 0f 59 e6          	mulps  %xmm14,%xmm4
   36b47:	0f 58 e6             	addps  %xmm6,%xmm4
   36b4a:	66 0f 6f f3          	movdqa %xmm3,%xmm6
   36b4e:	66 41 0f db dc       	pand   %xmm12,%xmm3
   36b53:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
   36b56:	0f 59 df             	mulps  %xmm7,%xmm3
   36b59:	66 0f 72 d6 08       	psrld  $0x8,%xmm6
   36b5e:	41 0f 59 e3          	mulps  %xmm11,%xmm4
   36b62:	0f 58 cb             	addps  %xmm3,%xmm1
   36b65:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
   36b6a:	66 45 0f db d4       	pand   %xmm12,%xmm10
   36b6f:	66 0f 72 d3 08       	psrld  $0x8,%xmm3
   36b74:	45 0f 5b d2          	cvtdq2ps %xmm10,%xmm10
   36b78:	41 0f 29 24 24       	movaps %xmm4,(%r12)
   36b7d:	44 0f 59 d7          	mulps  %xmm7,%xmm10
   36b81:	66 0f 6f e2          	movdqa %xmm2,%xmm4
   36b85:	66 41 0f db d4       	pand   %xmm12,%xmm2
   36b8a:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
   36b8d:	41 0f 59 d1          	mulps  %xmm9,%xmm2
   36b91:	66 0f 72 d4 08       	psrld  $0x8,%xmm4
   36b96:	0f 29 9c 24 f0 01 00 	movaps %xmm3,0x1f0(%rsp)
   36b9d:	00 
   36b9e:	41 0f 59 ce          	mulps  %xmm14,%xmm1
   36ba2:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
   36ba7:	66 41 0f db dc       	pand   %xmm12,%xmm3
   36bac:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
   36baf:	41 0f 59 d9          	mulps  %xmm9,%xmm3
   36bb3:	0f 58 c2             	addps  %xmm2,%xmm0
   36bb6:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
   36bbb:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   36bc0:	66 41 0f db d4       	pand   %xmm12,%xmm2
   36bc5:	41 0f 59 c7          	mulps  %xmm15,%xmm0
   36bc9:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
   36bcc:	0f 58 c1             	addps  %xmm1,%xmm0
   36bcf:	66 0f 6f ce          	movdqa %xmm6,%xmm1
   36bd3:	66 41 0f db f4       	pand   %xmm12,%xmm6
   36bd8:	0f 5b f6             	cvtdq2ps %xmm6,%xmm6
   36bdb:	0f 59 f7             	mulps  %xmm7,%xmm6
   36bde:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
   36be3:	66 41 0f db cc       	pand   %xmm12,%xmm1
   36be8:	41 0f 59 c3          	mulps  %xmm11,%xmm0
   36bec:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   36bef:	0f 58 de             	addps  %xmm6,%xmm3
   36bf2:	41 0f 29 44 24 10    	movaps %xmm0,0x10(%r12)
   36bf8:	66 0f 6f c4          	movdqa %xmm4,%xmm0
   36bfc:	66 41 0f db e4       	pand   %xmm12,%xmm4
   36c01:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
   36c04:	41 0f 59 e1          	mulps  %xmm9,%xmm4
   36c08:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   36c0d:	41 0f 59 de          	mulps  %xmm14,%xmm3
   36c11:	66 41 0f db c4       	pand   %xmm12,%xmm0
   36c16:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
   36c19:	41 0f 59 c1          	mulps  %xmm9,%xmm0
   36c1d:	44 0f 59 ca          	mulps  %xmm2,%xmm9
   36c21:	41 0f 58 e2          	addps  %xmm10,%xmm4
   36c25:	41 0f 59 e7          	mulps  %xmm15,%xmm4
   36c29:	0f 58 dc             	addps  %xmm4,%xmm3
   36c2c:	41 0f 59 db          	mulps  %xmm11,%xmm3
   36c30:	41 0f 29 5c 24 20    	movaps %xmm3,0x20(%r12)
   36c36:	66 0f 6f 9c 24 f0 01 	movdqa 0x1f0(%rsp),%xmm3
   36c3d:	00 00 
   36c3f:	66 41 0f db dc       	pand   %xmm12,%xmm3
   36c44:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
   36c47:	0f 59 df             	mulps  %xmm7,%xmm3
   36c4a:	0f 59 f9             	mulps  %xmm1,%xmm7
   36c4d:	41 0f 28 c9          	movaps %xmm9,%xmm1
   36c51:	0f 58 c3             	addps  %xmm3,%xmm0
   36c54:	0f 58 cf             	addps  %xmm7,%xmm1
   36c57:	41 0f 59 c7          	mulps  %xmm15,%xmm0
   36c5b:	41 0f 59 ce          	mulps  %xmm14,%xmm1
   36c5f:	0f 58 c1             	addps  %xmm1,%xmm0
   36c62:	41 0f 59 c3          	mulps  %xmm11,%xmm0
   36c66:	41 0f 29 44 24 30    	movaps %xmm0,0x30(%r12)
   36c6c:	e9 96 a5 ff ff       	jmp    31207 <sg_raster_triangle_tile_prepared+0x3157>
   36c71:	66 0f ef d2          	pxor   %xmm2,%xmm2
   36c75:	0f 28 c1             	movaps %xmm1,%xmm0
   36c78:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   36c7c:	66 0f ef d2          	pxor   %xmm2,%xmm2
   36c80:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
   36c84:	0f 28 c5             	movaps %xmm5,%xmm0
   36c87:	0f 55 d1             	andnps %xmm1,%xmm2
   36c8a:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   36c8e:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   36c93:	e9 6e fa ff ff       	jmp    36706 <sg_raster_triangle_tile_prepared+0x8656>
   36c98:	66 0f ef d2          	pxor   %xmm2,%xmm2
   36c9c:	0f 28 d8             	movaps %xmm0,%xmm3
   36c9f:	0f c2 da 01          	cmpltps %xmm2,%xmm3
   36ca3:	66 0f ef d2          	pxor   %xmm2,%xmm2
   36ca7:	66 0f 66 d3          	pcmpgtd %xmm3,%xmm2
   36cab:	0f 55 d0             	andnps %xmm0,%xmm2
   36cae:	0f 28 c5             	movaps %xmm5,%xmm0
   36cb1:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   36cb5:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   36cba:	e9 fb f9 ff ff       	jmp    366ba <sg_raster_triangle_tile_prepared+0x860a>
   36cbf:	66 44 0f 7e ce       	movd   %xmm9,%esi
   36cc4:	48 63 f6             	movslq %esi,%rsi
   36cc7:	66 0f 6e 04 b2       	movd   (%rdx,%rsi,4),%xmm0
   36ccc:	85 c9                	test   %ecx,%ecx
   36cce:	0f 85 ce 00 00 00    	jne    36da2 <sg_raster_triangle_tile_prepared+0x8cf2>
   36cd4:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   36cdb:	00 
   36cdc:	0f 85 67 0f 00 00    	jne    37c49 <sg_raster_triangle_tile_prepared+0x9b99>
   36ce2:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   36ce9:	00 
   36cea:	0f 85 1f 0f 00 00    	jne    37c0f <sg_raster_triangle_tile_prepared+0x9b5f>
   36cf0:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
   36cf6:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   36cfb:	66 0f 7e f6          	movd   %xmm6,%esi
   36cff:	48 63 f6             	movslq %esi,%rsi
   36d02:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
   36d05:	85 c9                	test   %ecx,%ecx
   36d07:	0f 85 88 0f 00 00    	jne    37c95 <sg_raster_triangle_tile_prepared+0x9be5>
   36d0d:	31 ed                	xor    %ebp,%ebp
   36d0f:	31 ff                	xor    %edi,%edi
   36d11:	e9 50 fd ff ff       	jmp    36a66 <sg_raster_triangle_tile_prepared+0x89b6>
   36d16:	66 0f ef db          	pxor   %xmm3,%xmm3
   36d1a:	48 63 b4 24 64 03 00 	movslq 0x364(%rsp),%rsi
   36d21:	00 
   36d22:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
   36d25:	8b b4 24 70 01 00 00 	mov    0x170(%rsp),%esi
   36d2c:	85 f6                	test   %esi,%esi
   36d2e:	0f 85 fb 00 00 00    	jne    36e2f <sg_raster_triangle_tile_prepared+0x8d7f>
   36d34:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   36d3b:	00 
   36d3c:	0f 85 83 0e 00 00    	jne    37bc5 <sg_raster_triangle_tile_prepared+0x9b15>
   36d42:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
   36d48:	f3 0f 7e db          	movq   %xmm3,%xmm3
   36d4c:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   36d51:	45 85 db             	test   %r11d,%r11d
   36d54:	0f 85 9b fc ff ff    	jne    369f5 <sg_raster_triangle_tile_prepared+0x8945>
   36d5a:	66 0f ef c9          	pxor   %xmm1,%xmm1
   36d5e:	66 0f 3a 16 c6 01    	pextrd $0x1,%xmm0,%esi
   36d64:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
   36d6b:	48 63 f6             	movslq %esi,%rsi
   36d6e:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
   36d71:	85 ed                	test   %ebp,%ebp
   36d73:	0f 85 fa 00 00 00    	jne    36e73 <sg_raster_triangle_tile_prepared+0x8dc3>
   36d79:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   36d80:	00 
   36d81:	0f 85 3b 11 00 00    	jne    37ec2 <sg_raster_triangle_tile_prepared+0x9e12>
   36d87:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
   36d8d:	f3 0f 7e c9          	movq   %xmm1,%xmm1
   36d91:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   36d95:	45 85 db             	test   %r11d,%r11d
   36d98:	0f 85 21 ff ff ff    	jne    36cbf <sg_raster_triangle_tile_prepared+0x8c0f>
   36d9e:	66 0f ef c0          	pxor   %xmm0,%xmm0
   36da2:	66 44 0f 3a 16 ce 01 	pextrd $0x1,%xmm9,%esi
   36da9:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
   36db0:	48 63 f6             	movslq %esi,%rsi
   36db3:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
   36db6:	85 ed                	test   %ebp,%ebp
   36db8:	0f 85 f9 00 00 00    	jne    36eb7 <sg_raster_triangle_tile_prepared+0x8e07>
   36dbe:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   36dc5:	00 
   36dc6:	0f 85 45 0e 00 00    	jne    37c11 <sg_raster_triangle_tile_prepared+0x9b61>
   36dcc:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   36dd2:	f3 0f 7e c0          	movq   %xmm0,%xmm0
   36dd6:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   36ddb:	45 85 db             	test   %r11d,%r11d
   36dde:	0f 85 17 ff ff ff    	jne    36cfb <sg_raster_triangle_tile_prepared+0x8c4b>
   36de4:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
   36dea:	31 ed                	xor    %ebp,%ebp
   36dec:	48 63 f6             	movslq %esi,%rsi
   36def:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
   36df2:	31 f6                	xor    %esi,%esi
   36df4:	e9 6d fc ff ff       	jmp    36a66 <sg_raster_triangle_tile_prepared+0x89b6>
   36df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   36e00:	66 0f ef c0          	pxor   %xmm0,%xmm0
   36e04:	66 0f 38 3d c3       	pmaxsd %xmm3,%xmm0
   36e09:	66 0f 38 39 c6       	pminsd %xmm6,%xmm0
   36e0e:	e9 39 fa ff ff       	jmp    3684c <sg_raster_triangle_tile_prepared+0x879c>
   36e13:	85 c9                	test   %ecx,%ecx
   36e15:	0f 85 fb fe ff ff    	jne    36d16 <sg_raster_triangle_tile_prepared+0x8c66>
   36e1b:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   36e22:	00 
   36e23:	0f 84 67 0d 00 00    	je     37b90 <sg_raster_triangle_tile_prepared+0x9ae0>
   36e29:	31 ed                	xor    %ebp,%ebp
   36e2b:	66 0f ef db          	pxor   %xmm3,%xmm3
   36e2f:	48 63 b4 24 68 03 00 	movslq 0x368(%rsp),%rsi
   36e36:	00 
   36e37:	8b bc 24 60 01 00 00 	mov    0x160(%rsp),%edi
   36e3e:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
   36e41:	85 ff                	test   %edi,%edi
   36e43:	0f 85 7e 0d 00 00    	jne    37bc7 <sg_raster_triangle_tile_prepared+0x9b17>
   36e49:	66 0f 6e ce          	movd   %esi,%xmm1
   36e4d:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
   36e53:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
   36e57:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   36e5c:	45 85 db             	test   %r11d,%r11d
   36e5f:	0f 85 90 fb ff ff    	jne    369f5 <sg_raster_triangle_tile_prepared+0x8945>
   36e65:	85 c9                	test   %ecx,%ecx
   36e67:	0f 85 ed fe ff ff    	jne    36d5a <sg_raster_triangle_tile_prepared+0x8caa>
   36e6d:	31 ff                	xor    %edi,%edi
   36e6f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   36e73:	66 0f 3a 16 c6 02    	pextrd $0x2,%xmm0,%esi
   36e79:	48 63 f6             	movslq %esi,%rsi
   36e7c:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
   36e7f:	8b b4 24 60 01 00 00 	mov    0x160(%rsp),%esi
   36e86:	85 f6                	test   %esi,%esi
   36e88:	0f 85 41 0b 00 00    	jne    379cf <sg_raster_triangle_tile_prepared+0x991f>
   36e8e:	66 0f 6e c5          	movd   %ebp,%xmm0
   36e92:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
   36e98:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
   36e9c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   36ea0:	45 85 db             	test   %r11d,%r11d
   36ea3:	0f 85 16 fe ff ff    	jne    36cbf <sg_raster_triangle_tile_prepared+0x8c0f>
   36ea9:	85 c9                	test   %ecx,%ecx
   36eab:	0f 85 ed fe ff ff    	jne    36d9e <sg_raster_triangle_tile_prepared+0x8cee>
   36eb1:	31 ff                	xor    %edi,%edi
   36eb3:	66 0f ef c0          	pxor   %xmm0,%xmm0
   36eb7:	66 44 0f 3a 16 ce 02 	pextrd $0x2,%xmm9,%esi
   36ebe:	48 63 f6             	movslq %esi,%rsi
   36ec1:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
   36ec4:	8b b4 24 60 01 00 00 	mov    0x160(%rsp),%esi
   36ecb:	85 f6                	test   %esi,%esi
   36ecd:	0f 85 8f 0d 00 00    	jne    37c62 <sg_raster_triangle_tile_prepared+0x9bb2>
   36ed3:	66 0f 6e d5          	movd   %ebp,%xmm2
   36ed7:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   36edd:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   36ee1:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   36ee6:	45 85 db             	test   %r11d,%r11d
   36ee9:	0f 85 26 10 00 00    	jne    37f15 <sg_raster_triangle_tile_prepared+0x9e65>
   36eef:	85 c9                	test   %ecx,%ecx
   36ef1:	0f 84 15 10 00 00    	je     37f0c <sg_raster_triangle_tile_prepared+0x9e5c>
   36ef7:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
   36efd:	48 63 f6             	movslq %esi,%rsi
   36f00:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
   36f03:	31 f6                	xor    %esi,%esi
   36f05:	66 0f 3a 16 f5 02    	pextrd $0x2,%xmm6,%ebp
   36f0b:	48 63 ed             	movslq %ebp,%rbp
   36f0e:	8b 2c aa             	mov    (%rdx,%rbp,4),%ebp
   36f11:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   36f18:	00 
   36f19:	0f 84 47 fb ff ff    	je     36a66 <sg_raster_triangle_tile_prepared+0x89b6>
   36f1f:	e9 34 fb ff ff       	jmp    36a58 <sg_raster_triangle_tile_prepared+0x89a8>
   36f24:	be 01 00 00 00       	mov    $0x1,%esi
   36f29:	66 0f 6e ce          	movd   %esi,%xmm1
   36f2d:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
   36f32:	66 41 0f fe cf       	paddd  %xmm15,%xmm1
   36f37:	66 0f 76 cc          	pcmpeqd %xmm4,%xmm1
   36f3b:	0f 50 f1             	movmskps %xmm1,%esi
   36f3e:	89 b4 24 30 02 00 00 	mov    %esi,0x230(%rsp)
   36f45:	66 0f 7e d6          	movd   %xmm2,%esi
   36f49:	48 63 f6             	movslq %esi,%rsi
   36f4c:	48 8d 3c b2          	lea    (%rdx,%rsi,4),%rdi
   36f50:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
   36f56:	48 63 f6             	movslq %esi,%rsi
   36f59:	4c 8d 0c b2          	lea    (%rdx,%rsi,4),%r9
   36f5d:	66 0f 3a 16 d6 02    	pextrd $0x2,%xmm2,%esi
   36f63:	48 63 f6             	movslq %esi,%rsi
   36f66:	48 8d 2c b2          	lea    (%rdx,%rsi,4),%rbp
   36f6a:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
   36f70:	48 63 f6             	movslq %esi,%rsi
   36f73:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
   36f77:	48 89 b4 24 f0 01 00 	mov    %rsi,0x1f0(%rsp)
   36f7e:	00 
   36f7f:	66 44 0f 7e ce       	movd   %xmm9,%esi
   36f84:	48 63 f6             	movslq %esi,%rsi
   36f87:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
   36f8b:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
   36f92:	00 
   36f93:	66 44 0f 3a 16 ce 01 	pextrd $0x1,%xmm9,%esi
   36f9a:	48 63 f6             	movslq %esi,%rsi
   36f9d:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
   36fa1:	48 89 b4 24 10 02 00 	mov    %rsi,0x210(%rsp)
   36fa8:	00 
   36fa9:	66 44 0f 3a 16 ce 02 	pextrd $0x2,%xmm9,%esi
   36fb0:	48 63 f6             	movslq %esi,%rsi
   36fb3:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
   36fb7:	48 89 b4 24 60 02 00 	mov    %rsi,0x260(%rsp)
   36fbe:	00 
   36fbf:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
   36fc6:	48 63 f6             	movslq %esi,%rsi
   36fc9:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
   36fcd:	48 89 b4 24 20 02 00 	mov    %rsi,0x220(%rsp)
   36fd4:	00 
   36fd5:	8b b4 24 30 02 00 00 	mov    0x230(%rsp),%esi
   36fdc:	f7 d6                	not    %esi
   36fde:	83 e6 0f             	and    $0xf,%esi
   36fe1:	0f 84 57 0e 00 00    	je     37e3e <sg_raster_triangle_tile_prepared+0x9d8e>
   36fe7:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
   36fee:	00 
   36fef:	66 0f 6e 4d 00       	movd   0x0(%rbp),%xmm1
   36ff4:	66 0f 6e 1f          	movd   (%rdi),%xmm3
   36ff8:	66 41 0f 3a 22 19 01 	pinsrd $0x1,(%r9),%xmm3
   36fff:	66 0f 3a 16 c7 02    	pextrd $0x2,%xmm0,%edi
   37005:	66 0f 3a 22 0e 01    	pinsrd $0x1,(%rsi),%xmm1
   3700b:	66 0f 7e c6          	movd   %xmm0,%esi
   3700f:	48 63 ff             	movslq %edi,%rdi
   37012:	4c 63 ce             	movslq %esi,%r9
   37015:	66 0f 3a 16 c6 01    	pextrd $0x1,%xmm0,%esi
   3701b:	48 63 ee             	movslq %esi,%rbp
   3701e:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
   37024:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
   37028:	66 0f 6e 04 ba       	movd   (%rdx,%rdi,4),%xmm0
   3702d:	48 63 f6             	movslq %esi,%rsi
   37030:	66 42 0f 6e 0c 8a    	movd   (%rdx,%r9,4),%xmm1
   37036:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   3703b:	66 0f 3a 22 0c aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm1
   37042:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
   37049:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
   37050:	00 
   37051:	48 8b bc 24 60 02 00 	mov    0x260(%rsp),%rdi
   37058:	00 
   37059:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
   3705d:	66 0f 6e 06          	movd   (%rsi),%xmm0
   37061:	48 8b b4 24 10 02 00 	mov    0x210(%rsp),%rsi
   37068:	00 
   37069:	66 0f 6e 17          	movd   (%rdi),%xmm2
   3706d:	48 8b bc 24 20 02 00 	mov    0x220(%rsp),%rdi
   37074:	00 
   37075:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   37079:	66 0f 3a 22 06 01    	pinsrd $0x1,(%rsi),%xmm0
   3707f:	66 0f 7e f6          	movd   %xmm6,%esi
   37083:	4c 63 ce             	movslq %esi,%r9
   37086:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
   3708c:	66 0f 3a 22 17 01    	pinsrd $0x1,(%rdi),%xmm2
   37092:	48 63 ee             	movslq %esi,%rbp
   37095:	66 0f 3a 16 f7 02    	pextrd $0x2,%xmm6,%edi
   3709b:	66 0f 3a 16 f6 03    	pextrd $0x3,%xmm6,%esi
   370a1:	48 63 ff             	movslq %edi,%rdi
   370a4:	48 63 f6             	movslq %esi,%rsi
   370a7:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   370ab:	66 42 0f 6e 14 8a    	movd   (%rdx,%r9,4),%xmm2
   370b1:	66 0f 6e 34 ba       	movd   (%rdx,%rdi,4),%xmm6
   370b6:	66 0f 3a 22 14 aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm2
   370bd:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   370c2:	66 0f 3a 22 34 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm6
   370c9:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
   370cd:	66 0f 6f f2          	movdqa %xmm2,%xmm6
   370d1:	e9 ad f9 ff ff       	jmp    36a83 <sg_raster_triangle_tile_prepared+0x89d3>
   370d6:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
   370db:	66 41 0f 38 3d d9    	pmaxsd %xmm9,%xmm3
   370e1:	66 0f 38 39 de       	pminsd %xmm6,%xmm3
   370e6:	e9 9c f8 ff ff       	jmp    36987 <sg_raster_triangle_tile_prepared+0x88d7>
   370eb:	45 31 ed             	xor    %r13d,%r13d
   370ee:	e9 f4 b8 ff ff       	jmp    329e7 <sg_raster_triangle_tile_prepared+0x4937>
   370f3:	45 31 ed             	xor    %r13d,%r13d
   370f6:	e9 5d c3 ff ff       	jmp    33458 <sg_raster_triangle_tile_prepared+0x53a8>
   370fb:	45 31 ed             	xor    %r13d,%r13d
   370fe:	e9 24 bb ff ff       	jmp    32c27 <sg_raster_triangle_tile_prepared+0x4b77>
   37103:	45 31 ed             	xor    %r13d,%r13d
   37106:	e9 0d c1 ff ff       	jmp    33218 <sg_raster_triangle_tile_prepared+0x5168>
   3710b:	31 ed                	xor    %ebp,%ebp
   3710d:	e9 fc b6 ff ff       	jmp    3280e <sg_raster_triangle_tile_prepared+0x475e>
   37112:	8b 51 18             	mov    0x18(%rcx),%edx
   37115:	66 0f ef d2          	pxor   %xmm2,%xmm2
   37119:	f3 0f 2a d7          	cvtsi2ss %edi,%xmm2
   3711d:	81 fa 00 29 00 00    	cmp    $0x2900,%edx
   37123:	0f 94 c1             	sete   %cl
   37126:	81 fa 2f 81 00 00    	cmp    $0x812f,%edx
   3712c:	0f 94 c2             	sete   %dl
   3712f:	44 0f 28 c2          	movaps %xmm2,%xmm8
   37133:	08 d1                	or     %dl,%cl
   37135:	89 cd                	mov    %ecx,%ebp
   37137:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
   3713c:	0f 85 a6 08 00 00    	jne    379e8 <sg_raster_triangle_tile_prepared+0x9938>
   37142:	41 0f 28 d1          	movaps %xmm9,%xmm2
   37146:	66 41 0f 3a 08 c1 01 	roundps $0x1,%xmm9,%xmm0
   3714d:	0f 5c d0             	subps  %xmm0,%xmm2
   37150:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   37157:	00 
   37158:	44 0f 59 c2          	mulps  %xmm2,%xmm8
   3715c:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
   37161:	f3 45 0f 2a c8       	cvtsi2ss %r8d,%xmm9
   37166:	8b 51 1c             	mov    0x1c(%rcx),%edx
   37169:	81 fa 00 29 00 00    	cmp    $0x2900,%edx
   3716f:	0f 94 c1             	sete   %cl
   37172:	81 fa 2f 81 00 00    	cmp    $0x812f,%edx
   37178:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
   3717d:	0f 94 c2             	sete   %dl
   37180:	08 d1                	or     %dl,%cl
   37182:	41 89 cb             	mov    %ecx,%r11d
   37185:	0f 85 3d 0b 00 00    	jne    37cc8 <sg_raster_triangle_tile_prepared+0x9c18>
   3718b:	0f 28 d1             	movaps %xmm1,%xmm2
   3718e:	66 0f 3a 08 c1 01    	roundps $0x1,%xmm1,%xmm0
   37194:	0f 5c d0             	subps  %xmm0,%xmm2
   37197:	41 0f 28 e9          	movaps %xmm9,%xmm5
   3719b:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   371a2:	00 
   371a3:	0f 59 ea             	mulps  %xmm2,%xmm5
   371a6:	8b 59 14             	mov    0x14(%rcx),%ebx
   371a9:	0f 29 ac 24 c0 01 00 	movaps %xmm5,0x1c0(%rsp)
   371b0:	00 
   371b1:	81 fb 00 26 00 00    	cmp    $0x2600,%ebx
   371b7:	74 1f                	je     371d8 <sg_raster_triangle_tile_prepared+0x9128>
   371b9:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 371c2 <sg_raster_triangle_tile_prepared+0x9112>
   371c0:	00 00 
   371c2:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   371c7:	45 0f 58 c6          	addps  %xmm14,%xmm8
   371cb:	44 0f 58 f5          	addps  %xmm5,%xmm14
   371cf:	44 0f 29 b4 24 c0 01 	movaps %xmm14,0x1c0(%rsp)
   371d6:	00 00 
   371d8:	8d 57 ff             	lea    -0x1(%rdi),%edx
   371db:	66 41 0f 3a 08 e8 01 	roundps $0x1,%xmm8,%xmm5
   371e2:	f3 0f 5b cd          	cvttps2dq %xmm5,%xmm1
   371e6:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   371ed:	00 
   371ee:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
   371f5:	00 
   371f6:	66 0f 6e ea          	movd   %edx,%xmm5
   371fa:	66 0f 3a 08 94 24 c0 	roundps $0x1,0x1c0(%rsp),%xmm2
   37201:	01 00 00 01 
   37205:	f3 0f 5b c2          	cvttps2dq %xmm2,%xmm0
   37209:	66 44 0f 70 f5 00    	pshufd $0x0,%xmm5,%xmm14
   3720f:	66 0f 6e ef          	movd   %edi,%xmm5
   37213:	8b 49 38             	mov    0x38(%rcx),%ecx
   37216:	0f 29 94 24 00 02 00 	movaps %xmm2,0x200(%rsp)
   3721d:	00 
   3721e:	66 44 0f 70 cd 00    	pshufd $0x0,%xmm5,%xmm9
   37224:	40 84 ed             	test   %bpl,%bpl
   37227:	0f 85 2f 12 00 00    	jne    3845c <sg_raster_triangle_tile_prepared+0xa3ac>
   3722d:	85 c9                	test   %ecx,%ecx
   3722f:	0f 85 15 12 00 00    	jne    3844a <sg_raster_triangle_tile_prepared+0xa39a>
   37235:	66 0f ef d2          	pxor   %xmm2,%xmm2
   37239:	66 0f 6f e9          	movdqa %xmm1,%xmm5
   3723d:	66 0f 66 d1          	pcmpgtd %xmm1,%xmm2
   37241:	66 41 0f 66 ee       	pcmpgtd %xmm14,%xmm5
   37246:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
   3724b:	66 0f 6f d1          	movdqa %xmm1,%xmm2
   3724f:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
   37254:	66 41 0f fa d1       	psubd  %xmm9,%xmm2
   37259:	66 44 0f df f9       	pandn  %xmm1,%xmm15
   3725e:	66 0f db d5          	pand   %xmm5,%xmm2
   37262:	66 41 0f 6f ed       	movdqa %xmm13,%xmm5
   37267:	66 41 0f eb d7       	por    %xmm15,%xmm2
   3726c:	66 0f df ea          	pandn  %xmm2,%xmm5
   37270:	66 0f 6f d1          	movdqa %xmm1,%xmm2
   37274:	66 41 0f fe d1       	paddd  %xmm9,%xmm2
   37279:	66 41 0f db d5       	pand   %xmm13,%xmm2
   3727e:	66 0f eb d5          	por    %xmm5,%xmm2
   37282:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
   37289:	00 
   3728a:	8b 57 3c             	mov    0x3c(%rdi),%edx
   3728d:	41 8d 78 ff          	lea    -0x1(%r8),%edi
   37291:	66 0f 6e ef          	movd   %edi,%xmm5
   37295:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
   3729a:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
   372a1:	00 
   372a2:	45 84 db             	test   %r11b,%r11b
   372a5:	0f 85 87 11 00 00    	jne    38432 <sg_raster_triangle_tile_prepared+0xa382>
   372ab:	85 d2                	test   %edx,%edx
   372ad:	0f 85 6d 11 00 00    	jne    38420 <sg_raster_triangle_tile_prepared+0xa370>
   372b3:	66 0f ef ed          	pxor   %xmm5,%xmm5
   372b7:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
   372bc:	66 45 0f 6e f8       	movd   %r8d,%xmm15
   372c1:	66 44 0f 66 ac 24 a0 	pcmpgtd 0x1a0(%rsp),%xmm13
   372c8:	01 00 00 
   372cb:	66 0f 66 e8          	pcmpgtd %xmm0,%xmm5
   372cf:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
   372d6:	00 
   372d7:	66 41 0f 6f ed       	movdqa %xmm13,%xmm5
   372dc:	66 0f df e8          	pandn  %xmm0,%xmm5
   372e0:	0f 29 ac 24 10 02 00 	movaps %xmm5,0x210(%rsp)
   372e7:	00 
   372e8:	66 41 0f 70 ef 00    	pshufd $0x0,%xmm15,%xmm5
   372ee:	66 44 0f 6f f8       	movdqa %xmm0,%xmm15
   372f3:	66 44 0f fa fd       	psubd  %xmm5,%xmm15
   372f8:	0f 29 ac 24 d0 01 00 	movaps %xmm5,0x1d0(%rsp)
   372ff:	00 
   37300:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
   37305:	66 44 0f 6f bc 24 e0 	movdqa 0x1e0(%rsp),%xmm15
   3730c:	01 00 00 
   3730f:	66 41 0f db ed       	pand   %xmm13,%xmm5
   37314:	66 0f eb ac 24 10 02 	por    0x210(%rsp),%xmm5
   3731b:	00 00 
   3731d:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
   37322:	66 44 0f df ed       	pandn  %xmm5,%xmm13
   37327:	66 0f 6f ac 24 d0 01 	movdqa 0x1d0(%rsp),%xmm5
   3732e:	00 00 
   37330:	66 0f fe e8          	paddd  %xmm0,%xmm5
   37334:	66 41 0f db ef       	pand   %xmm15,%xmm5
   37339:	66 41 0f eb ed       	por    %xmm13,%xmm5
   3733e:	66 41 0f 38 40 e9    	pmulld %xmm9,%xmm5
   37344:	0f 29 94 24 d0 01 00 	movaps %xmm2,0x1d0(%rsp)
   3734b:	00 
   3734c:	66 0f fe d5          	paddd  %xmm5,%xmm2
   37350:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
   37357:	00 
   37358:	0f 29 94 24 a0 03 00 	movaps %xmm2,0x3a0(%rsp)
   3735f:	00 
   37360:	81 fb 00 26 00 00    	cmp    $0x2600,%ebx
   37366:	0f 84 7b 0f 00 00    	je     382e7 <sg_raster_triangle_tile_prepared+0xa237>
   3736c:	bf 01 00 00 00       	mov    $0x1,%edi
   37371:	66 0f 6e ef          	movd   %edi,%xmm5
   37375:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
   3737a:	66 0f fe e9          	paddd  %xmm1,%xmm5
   3737e:	40 84 ed             	test   %bpl,%bpl
   37381:	0f 85 48 0f 00 00    	jne    382cf <sg_raster_triangle_tile_prepared+0xa21f>
   37387:	85 c9                	test   %ecx,%ecx
   37389:	0f 85 2e 0f 00 00    	jne    382bd <sg_raster_triangle_tile_prepared+0xa20d>
   3738f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37393:	66 44 0f 6f ed       	movdqa %xmm5,%xmm13
   37398:	66 0f 66 cd          	pcmpgtd %xmm5,%xmm1
   3739c:	66 45 0f 66 ee       	pcmpgtd %xmm14,%xmm13
   373a1:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
   373a6:	66 0f 6f cd          	movdqa %xmm5,%xmm1
   373aa:	66 45 0f 6f f5       	movdqa %xmm13,%xmm14
   373af:	66 41 0f fa c9       	psubd  %xmm9,%xmm1
   373b4:	66 44 0f df f5       	pandn  %xmm5,%xmm14
   373b9:	66 41 0f fe e9       	paddd  %xmm9,%xmm5
   373be:	66 41 0f db cd       	pand   %xmm13,%xmm1
   373c3:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
   373c8:	66 41 0f db ef       	pand   %xmm15,%xmm5
   373cd:	66 41 0f eb ce       	por    %xmm14,%xmm1
   373d2:	66 44 0f df e9       	pandn  %xmm1,%xmm13
   373d7:	66 41 0f eb ed       	por    %xmm13,%xmm5
   373dc:	bf 01 00 00 00       	mov    $0x1,%edi
   373e1:	66 0f 6e cf          	movd   %edi,%xmm1
   373e5:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
   373ea:	66 0f fe c1          	paddd  %xmm1,%xmm0
   373ee:	45 84 db             	test   %r11b,%r11b
   373f1:	0f 85 ae 0e 00 00    	jne    382a5 <sg_raster_triangle_tile_prepared+0xa1f5>
   373f7:	85 d2                	test   %edx,%edx
   373f9:	0f 85 04 0e 00 00    	jne    38203 <sg_raster_triangle_tile_prepared+0xa153>
   373ff:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37403:	66 45 0f 6e f8       	movd   %r8d,%xmm15
   37408:	66 0f 66 c8          	pcmpgtd %xmm0,%xmm1
   3740c:	66 45 0f 70 ff 00    	pshufd $0x0,%xmm15,%xmm15
   37412:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
   37417:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   3741b:	66 0f 66 8c 24 a0 01 	pcmpgtd 0x1a0(%rsp),%xmm1
   37422:	00 00 
   37424:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
   37429:	66 44 0f df e8       	pandn  %xmm0,%xmm13
   3742e:	44 0f 29 ac 24 a0 01 	movaps %xmm13,0x1a0(%rsp)
   37435:	00 00 
   37437:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
   3743c:	66 41 0f fe c7       	paddd  %xmm15,%xmm0
   37441:	66 45 0f fa ef       	psubd  %xmm15,%xmm13
   37446:	66 41 0f db c6       	pand   %xmm14,%xmm0
   3744b:	66 41 0f db cd       	pand   %xmm13,%xmm1
   37450:	66 45 0f 6f ee       	movdqa %xmm14,%xmm13
   37455:	66 0f eb 8c 24 a0 01 	por    0x1a0(%rsp),%xmm1
   3745c:	00 00 
   3745e:	66 44 0f df e9       	pandn  %xmm1,%xmm13
   37463:	66 41 0f eb c5       	por    %xmm13,%xmm0
   37468:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
   3746d:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
   37474:	0f 
   37475:	66 0f 6f 8c 24 e0 01 	movdqa 0x1e0(%rsp),%xmm1
   3747c:	00 00 
   3747e:	66 44 0f 38 40 e8    	pmulld %xmm0,%xmm13
   37484:	66 0f 6f 84 24 d0 01 	movdqa 0x1d0(%rsp),%xmm0
   3748b:	00 00 
   3748d:	66 0f fe cd          	paddd  %xmm5,%xmm1
   37491:	66 41 0f fe c5       	paddd  %xmm13,%xmm0
   37496:	66 44 0f fe ed       	paddd  %xmm5,%xmm13
   3749b:	0f 84 d8 0b 00 00    	je     38079 <sg_raster_triangle_tile_prepared+0x9fc9>
   374a1:	8b 9c 24 80 01 00 00 	mov    0x180(%rsp),%ebx
   374a8:	85 db                	test   %ebx,%ebx
   374aa:	0f 84 a5 0b 00 00    	je     38055 <sg_raster_triangle_tile_prepared+0x9fa5>
   374b0:	48 63 94 24 a0 03 00 	movslq 0x3a0(%rsp),%rdx
   374b7:	00 
   374b8:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
   374bd:	45 85 c9             	test   %r9d,%r9d
   374c0:	0f 85 a0 0a 00 00    	jne    37f66 <sg_raster_triangle_tile_prepared+0x9eb6>
   374c6:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   374cd:	00 
   374ce:	0f 85 63 0b 00 00    	jne    38037 <sg_raster_triangle_tile_prepared+0x9f87>
   374d4:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   374db:	00 
   374dc:	0f 85 e5 0a 00 00    	jne    37fc7 <sg_raster_triangle_tile_prepared+0x9f17>
   374e2:	66 0f 3a 21 ed 0e    	insertps $0xe,%xmm5,%xmm5
   374e8:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
   374ed:	66 0f 7e ca          	movd   %xmm1,%edx
   374f1:	31 c9                	xor    %ecx,%ecx
   374f3:	48 63 d2             	movslq %edx,%rdx
   374f6:	66 0f 6e 14 90       	movd   (%rax,%rdx,4),%xmm2
   374fb:	45 85 c9             	test   %r9d,%r9d
   374fe:	0f 85 b2 0a 00 00    	jne    37fb6 <sg_raster_triangle_tile_prepared+0x9f06>
   37504:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   3750b:	00 
   3750c:	0f 85 2c 0a 00 00    	jne    37f3e <sg_raster_triangle_tile_prepared+0x9e8e>
   37512:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37519:	00 
   3751a:	0f 85 61 05 00 00    	jne    37a81 <sg_raster_triangle_tile_prepared+0x99d1>
   37520:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
   37526:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   3752d:	00 
   3752e:	f3 0f 7e d2          	movq   %xmm2,%xmm2
   37532:	0f 29 94 24 a0 01 00 	movaps %xmm2,0x1a0(%rsp)
   37539:	00 
   3753a:	0f 85 2c 05 00 00    	jne    37a6c <sg_raster_triangle_tile_prepared+0x99bc>
   37540:	45 85 c9             	test   %r9d,%r9d
   37543:	0f 85 c6 04 00 00    	jne    37a0f <sg_raster_triangle_tile_prepared+0x995f>
   37549:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
   3754f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37553:	45 31 c0             	xor    %r8d,%r8d
   37556:	31 ff                	xor    %edi,%edi
   37558:	48 63 d2             	movslq %edx,%rdx
   3755b:	31 c9                	xor    %ecx,%ecx
   3755d:	66 0f 3a 22 0c 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm1
   37564:	66 0f 6f c1          	movdqa %xmm1,%xmm0
   37568:	66 44 0f 3a 16 ea 03 	pextrd $0x3,%xmm13,%edx
   3756f:	48 63 d2             	movslq %edx,%rdx
   37572:	8b 14 90             	mov    (%rax,%rdx,4),%edx
   37575:	66 44 0f 6e f1       	movd   %ecx,%xmm14
   3757a:	66 45 0f 6e e8       	movd   %r8d,%xmm13
   3757f:	66 44 0f 3a 22 f7 01 	pinsrd $0x1,%edi,%xmm14
   37586:	66 44 0f 3a 22 ea 01 	pinsrd $0x1,%edx,%xmm13
   3758d:	66 45 0f 6f fe       	movdqa %xmm14,%xmm15
   37592:	66 45 0f 6c fd       	punpcklqdq %xmm13,%xmm15
   37597:	44 0f 29 bc 24 e0 01 	movaps %xmm15,0x1e0(%rsp)
   3759e:	00 00 
   375a0:	44 0f 29 bc 24 d0 01 	movaps %xmm15,0x1d0(%rsp)
   375a7:	00 00 
   375a9:	44 0f 5c 84 24 f0 01 	subps  0x1f0(%rsp),%xmm8
   375b0:	00 00 
   375b2:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   375b7:	b8 00 01 00 00       	mov    $0x100,%eax
   375bc:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 375c5 <sg_raster_triangle_tile_prepared+0x9515>
   375c3:	00 00 
   375c5:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 375ce <sg_raster_triangle_tile_prepared+0x951e>
   375cc:	00 00 
   375ce:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
   375d3:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
   375d8:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
   375dd:	45 0f 59 c6          	mulps  %xmm14,%xmm8
   375e1:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
   375e6:	45 0f 58 c5          	addps  %xmm13,%xmm8
   375ea:	f3 45 0f 5b f8       	cvttps2dq %xmm8,%xmm15
   375ef:	44 0f 28 84 24 c0 01 	movaps 0x1c0(%rsp),%xmm8
   375f6:	00 00 
   375f8:	0f 29 8c 24 c0 01 00 	movaps %xmm1,0x1c0(%rsp)
   375ff:	00 
   37600:	44 0f 5c 84 24 00 02 	subps  0x200(%rsp),%xmm8
   37607:	00 00 
   37609:	44 0f 29 bc 24 b0 01 	movaps %xmm15,0x1b0(%rsp)
   37610:	00 00 
   37612:	66 0f 6f 8c 24 a0 01 	movdqa 0x1a0(%rsp),%xmm1
   37619:	00 00 
   3761b:	45 0f 59 c6          	mulps  %xmm14,%xmm8
   3761f:	66 44 0f 6f b4 24 b0 	movdqa 0x1b0(%rsp),%xmm14
   37626:	01 00 00 
   37629:	45 0f 58 c5          	addps  %xmm13,%xmm8
   3762d:	66 44 0f 6e e8       	movd   %eax,%xmm13
   37632:	b8 ff 00 00 00       	mov    $0xff,%eax
   37637:	66 45 0f 70 ed 00    	pshufd $0x0,%xmm13,%xmm13
   3763d:	f3 45 0f 5b f8       	cvttps2dq %xmm8,%xmm15
   37642:	66 45 0f 6f c5       	movdqa %xmm13,%xmm8
   37647:	66 45 0f fa ef       	psubd  %xmm15,%xmm13
   3764c:	44 0f 29 bc 24 a0 01 	movaps %xmm15,0x1a0(%rsp)
   37653:	00 00 
   37655:	44 0f 29 ac 24 b0 01 	movaps %xmm13,0x1b0(%rsp)
   3765c:	00 00 
   3765e:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
   37663:	66 0f 6f 94 24 e0 01 	movdqa 0x1e0(%rsp),%xmm2
   3766a:	00 00 
   3766c:	66 45 0f fa c6       	psubd  %xmm14,%xmm8
   37671:	66 45 0f 6b c6       	packssdw %xmm14,%xmm8
   37676:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   3767b:	66 45 0f 6f f0       	movdqa %xmm8,%xmm14
   37680:	0f 29 94 24 e0 01 00 	movaps %xmm2,0x1e0(%rsp)
   37687:	00 
   37688:	66 0f 6e d0          	movd   %eax,%xmm2
   3768c:	66 41 0f 73 de 08    	psrldq $0x8,%xmm14
   37692:	b8 00 80 00 00       	mov    $0x8000,%eax
   37697:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
   3769c:	66 0f db ca          	pand   %xmm2,%xmm1
   376a0:	66 44 0f db ca       	pand   %xmm2,%xmm9
   376a5:	66 0f db c2          	pand   %xmm2,%xmm0
   376a9:	66 44 0f 6b c9       	packssdw %xmm1,%xmm9
   376ae:	66 45 0f 61 c6       	punpcklwd %xmm14,%xmm8
   376b3:	66 44 0f 6e f0       	movd   %eax,%xmm14
   376b8:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
   376bd:	66 45 0f 70 f6 00    	pshufd $0x0,%xmm14,%xmm14
   376c3:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
   376c8:	66 44 0f 61 c9       	punpcklwd %xmm1,%xmm9
   376cd:	66 0f 6f 8c 24 d0 01 	movdqa 0x1d0(%rsp),%xmm1
   376d4:	00 00 
   376d6:	66 45 0f f5 c8       	pmaddwd %xmm8,%xmm9
   376db:	66 0f db ca          	pand   %xmm2,%xmm1
   376df:	66 0f 6b c1          	packssdw %xmm1,%xmm0
   376e3:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   376e7:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
   376ec:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
   376f0:	66 0f 6f 8c 24 b0 01 	movdqa 0x1b0(%rsp),%xmm1
   376f7:	00 00 
   376f9:	66 41 0f f5 c0       	pmaddwd %xmm8,%xmm0
   376fe:	66 41 0f 38 40 c7    	pmulld %xmm15,%xmm0
   37704:	66 41 0f 38 40 c9    	pmulld %xmm9,%xmm1
   3770a:	66 41 0f fe c6       	paddd  %xmm14,%xmm0
   3770f:	66 0f fe c8          	paddd  %xmm0,%xmm1
   37713:	66 0f 6f c5          	movdqa %xmm5,%xmm0
   37717:	66 0f db ea          	pand   %xmm2,%xmm5
   3771b:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   37720:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
   37725:	66 44 0f 6f f8       	movdqa %xmm0,%xmm15
   3772a:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
   3772f:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   37732:	0f 59 0d 00 00 00 00 	mulps  0x0(%rip),%xmm1        # 37739 <sg_raster_triangle_tile_prepared+0x9689>
   37739:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   3773e:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
   37743:	66 0f 6f 84 24 c0 01 	movdqa 0x1c0(%rsp),%xmm0
   3774a:	00 00 
   3774c:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   37751:	0f 29 84 24 d0 01 00 	movaps %xmm0,0x1d0(%rsp)
   37758:	00 
   37759:	66 0f 6f 84 24 e0 01 	movdqa 0x1e0(%rsp),%xmm0
   37760:	00 00 
   37762:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   37767:	0f 29 84 24 f0 01 00 	movaps %xmm0,0x1f0(%rsp)
   3776e:	00 
   3776f:	66 0f 6f c5          	movdqa %xmm5,%xmm0
   37773:	66 41 0f 6f ed       	movdqa %xmm13,%xmm5
   37778:	66 0f db ea          	pand   %xmm2,%xmm5
   3777c:	66 0f 6b c5          	packssdw %xmm5,%xmm0
   37780:	66 0f 6f e8          	movdqa %xmm0,%xmm5
   37784:	66 0f 73 dd 08       	psrldq $0x8,%xmm5
   37789:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
   3778d:	66 0f 6f e8          	movdqa %xmm0,%xmm5
   37791:	66 41 0f f5 e8       	pmaddwd %xmm8,%xmm5
   37796:	66 44 0f 6f ed       	movdqa %xmm5,%xmm13
   3779b:	66 0f 6f ac 24 c0 01 	movdqa 0x1c0(%rsp),%xmm5
   377a2:	00 00 
   377a4:	66 0f db ea          	pand   %xmm2,%xmm5
   377a8:	66 0f 6f c5          	movdqa %xmm5,%xmm0
   377ac:	66 0f 6f ac 24 e0 01 	movdqa 0x1e0(%rsp),%xmm5
   377b3:	00 00 
   377b5:	66 0f db ea          	pand   %xmm2,%xmm5
   377b9:	66 0f 6b c5          	packssdw %xmm5,%xmm0
   377bd:	66 0f 6f e8          	movdqa %xmm0,%xmm5
   377c1:	66 0f 73 dd 08       	psrldq $0x8,%xmm5
   377c6:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
   377ca:	66 0f 6f ac 24 b0 01 	movdqa 0x1b0(%rsp),%xmm5
   377d1:	00 00 
   377d3:	66 41 0f f5 c0       	pmaddwd %xmm8,%xmm0
   377d8:	66 0f 38 40 84 24 a0 	pmulld 0x1a0(%rsp),%xmm0
   377df:	01 00 00 
   377e2:	66 41 0f fe c6       	paddd  %xmm14,%xmm0
   377e7:	66 41 0f 38 40 ed    	pmulld %xmm13,%xmm5
   377ed:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
   377f2:	66 44 0f db ca       	pand   %xmm2,%xmm9
   377f7:	66 41 0f 72 d5 08    	psrld  $0x8,%xmm13
   377fd:	66 44 0f db ea       	pand   %xmm2,%xmm13
   37802:	66 0f fe c5          	paddd  %xmm5,%xmm0
   37806:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
   3780b:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
   37810:	66 0f 72 d0 10       	psrld  $0x10,%xmm0
   37815:	0f 29 ac 24 c0 01 00 	movaps %xmm5,0x1c0(%rsp)
   3781c:	00 
   3781d:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
   37820:	66 0f 6f ac 24 d0 01 	movdqa 0x1d0(%rsp),%xmm5
   37827:	00 00 
   37829:	0f 59 05 00 00 00 00 	mulps  0x0(%rip),%xmm0        # 37830 <sg_raster_triangle_tile_prepared+0x9780>
   37830:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
   37835:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
   3783c:	00 
   3783d:	66 0f 6f ac 24 f0 01 	movdqa 0x1f0(%rsp),%xmm5
   37844:	00 00 
   37846:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
   3784b:	0f 29 ac 24 00 02 00 	movaps %xmm5,0x200(%rsp)
   37852:	00 
   37853:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
   37858:	66 0f db ea          	pand   %xmm2,%xmm5
   3785c:	66 41 0f 6b e9       	packssdw %xmm9,%xmm5
   37861:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
   37866:	66 41 0f 73 d9 08    	psrldq $0x8,%xmm9
   3786c:	66 41 0f 61 e9       	punpcklwd %xmm9,%xmm5
   37871:	66 44 0f 6f 8c 24 f0 	movdqa 0x1f0(%rsp),%xmm9
   37878:	01 00 00 
   3787b:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
   37880:	66 0f 6f ac 24 d0 01 	movdqa 0x1d0(%rsp),%xmm5
   37887:	00 00 
   37889:	66 44 0f db ca       	pand   %xmm2,%xmm9
   3788e:	66 45 0f f5 f8       	pmaddwd %xmm8,%xmm15
   37893:	66 0f db ea          	pand   %xmm2,%xmm5
   37897:	66 41 0f 6b e9       	packssdw %xmm9,%xmm5
   3789c:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
   378a1:	66 41 0f 73 d9 08    	psrldq $0x8,%xmm9
   378a7:	66 41 0f 61 e9       	punpcklwd %xmm9,%xmm5
   378ac:	66 41 0f f5 e8       	pmaddwd %xmm8,%xmm5
   378b1:	66 0f 38 40 ac 24 a0 	pmulld 0x1a0(%rsp),%xmm5
   378b8:	01 00 00 
   378bb:	66 41 0f fe ee       	paddd  %xmm14,%xmm5
   378c0:	66 44 0f 6f 8c 24 c0 	movdqa 0x1c0(%rsp),%xmm9
   378c7:	01 00 00 
   378ca:	66 44 0f 38 40 bc 24 	pmulld 0x1b0(%rsp),%xmm15
   378d1:	b0 01 00 00 
   378d5:	66 41 0f fe ef       	paddd  %xmm15,%xmm5
   378da:	66 44 0f 6f bc 24 a0 	movdqa 0x1a0(%rsp),%xmm15
   378e1:	01 00 00 
   378e4:	66 44 0f db ca       	pand   %xmm2,%xmm9
   378e9:	66 0f 72 d5 10       	psrld  $0x10,%xmm5
   378ee:	66 45 0f 6b cd       	packssdw %xmm13,%xmm9
   378f3:	0f 5b ed             	cvtdq2ps %xmm5,%xmm5
   378f6:	0f 59 2d 00 00 00 00 	mulps  0x0(%rip),%xmm5        # 378fd <sg_raster_triangle_tile_prepared+0x984d>
   378fd:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
   37902:	66 41 0f 73 dd 08    	psrldq $0x8,%xmm13
   37908:	66 45 0f 61 cd       	punpcklwd %xmm13,%xmm9
   3790d:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
   37912:	66 44 0f 6f 8c 24 e0 	movdqa 0x1e0(%rsp),%xmm9
   37919:	01 00 00 
   3791c:	66 45 0f f5 e8       	pmaddwd %xmm8,%xmm13
   37921:	66 44 0f 38 40 ac 24 	pmulld 0x1b0(%rsp),%xmm13
   37928:	b0 01 00 00 
   3792c:	66 44 0f db ca       	pand   %xmm2,%xmm9
   37931:	66 0f db 94 24 00 02 	pand   0x200(%rsp),%xmm2
   37938:	00 00 
   3793a:	66 44 0f 6b ca       	packssdw %xmm2,%xmm9
   3793f:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
   37944:	66 0f 73 da 08       	psrldq $0x8,%xmm2
   37949:	66 44 0f 61 ca       	punpcklwd %xmm2,%xmm9
   3794e:	66 45 0f f5 c8       	pmaddwd %xmm8,%xmm9
   37953:	66 45 0f 38 40 f9    	pmulld %xmm9,%xmm15
   37959:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
   3795e:	66 41 0f fe d6       	paddd  %xmm14,%xmm2
   37963:	66 41 0f fe d5       	paddd  %xmm13,%xmm2
   37968:	66 0f 72 d2 10       	psrld  $0x10,%xmm2
   3796d:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
   37970:	0f 59 15 00 00 00 00 	mulps  0x0(%rip),%xmm2        # 37977 <sg_raster_triangle_tile_prepared+0x98c7>
   37977:	e9 18 cd ff ff       	jmp    34694 <sg_raster_triangle_tile_prepared+0x65e4>
   3797c:	45 31 ed             	xor    %r13d,%r13d
   3797f:	e9 7c b4 ff ff       	jmp    32e00 <sg_raster_triangle_tile_prepared+0x4d50>
   37984:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
   37989:	66 41 0f 38 3d e2    	pmaxsd %xmm10,%xmm4
   3798f:	66 41 0f 38 39 e1    	pminsd %xmm9,%xmm4
   37995:	e9 5c ef ff ff       	jmp    368f6 <sg_raster_triangle_tile_prepared+0x8846>
   3799a:	66 0f ef d2          	pxor   %xmm2,%xmm2
   3799e:	66 0f 38 3d d4       	pmaxsd %xmm4,%xmm2
   379a3:	66 41 0f 38 39 d1    	pminsd %xmm9,%xmm2
   379a9:	e9 09 ee ff ff       	jmp    367b7 <sg_raster_triangle_tile_prepared+0x8707>
   379ae:	31 ed                	xor    %ebp,%ebp
   379b0:	e9 1e ac ff ff       	jmp    325d3 <sg_raster_triangle_tile_prepared+0x4523>
   379b5:	45 31 ed             	xor    %r13d,%r13d
   379b8:	e9 83 b6 ff ff       	jmp    33040 <sg_raster_triangle_tile_prepared+0x4f90>
   379bd:	66 0f 6e f7          	movd   %edi,%xmm6
   379c1:	66 0f 70 d6 00       	pshufd $0x0,%xmm6,%xmm2
   379c6:	66 0f db d4          	pand   %xmm4,%xmm2
   379ca:	e9 e8 ed ff ff       	jmp    367b7 <sg_raster_triangle_tile_prepared+0x8707>
   379cf:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
   379d5:	66 0f 6e c5          	movd   %ebp,%xmm0
   379d9:	48 63 f6             	movslq %esi,%rsi
   379dc:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
   379e3:	e9 aa f4 ff ff       	jmp    36e92 <sg_raster_triangle_tile_prepared+0x8de2>
   379e8:	45 0f 28 e9          	movaps %xmm9,%xmm13
   379ec:	66 0f ef d2          	pxor   %xmm2,%xmm2
   379f0:	44 0f c2 e8 01       	cmpltps %xmm0,%xmm13
   379f5:	0f 28 c5             	movaps %xmm5,%xmm0
   379f8:	66 41 0f 66 d5       	pcmpgtd %xmm13,%xmm2
   379fd:	41 0f 55 d1          	andnps %xmm9,%xmm2
   37a01:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   37a05:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   37a0a:	e9 41 f7 ff ff       	jmp    37150 <sg_raster_triangle_tile_prepared+0x90a0>
   37a0f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37a13:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
   37a19:	48 63 d2             	movslq %edx,%rdx
   37a1c:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
   37a1f:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37a26:	00 
   37a27:	0f 85 a6 00 00 00    	jne    37ad3 <sg_raster_triangle_tile_prepared+0x9a23>
   37a2d:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37a34:	00 
   37a35:	0f 85 2b 01 00 00    	jne    37b66 <sg_raster_triangle_tile_prepared+0x9ab6>
   37a3b:	66 0f 3a 22 c9 01    	pinsrd $0x1,%ecx,%xmm1
   37a41:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   37a48:	00 
   37a49:	f3 0f 7e c9          	movq   %xmm1,%xmm1
   37a4d:	66 0f 6f c1          	movdqa %xmm1,%xmm0
   37a51:	0f 85 25 01 00 00    	jne    37b7c <sg_raster_triangle_tile_prepared+0x9acc>
   37a57:	45 85 c9             	test   %r9d,%r9d
   37a5a:	0f 85 e8 00 00 00    	jne    37b48 <sg_raster_triangle_tile_prepared+0x9a98>
   37a60:	45 31 c0             	xor    %r8d,%r8d
   37a63:	31 ff                	xor    %edi,%edi
   37a65:	31 c9                	xor    %ecx,%ecx
   37a67:	e9 fc fa ff ff       	jmp    37568 <sg_raster_triangle_tile_prepared+0x94b8>
   37a6c:	66 0f 7e c2          	movd   %xmm0,%edx
   37a70:	31 c9                	xor    %ecx,%ecx
   37a72:	48 63 d2             	movslq %edx,%rdx
   37a75:	66 0f 6e 0c 90       	movd   (%rax,%rdx,4),%xmm1
   37a7a:	45 85 c9             	test   %r9d,%r9d
   37a7d:	74 a0                	je     37a1f <sg_raster_triangle_tile_prepared+0x996f>
   37a7f:	eb 92                	jmp    37a13 <sg_raster_triangle_tile_prepared+0x9963>
   37a81:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   37a86:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
   37a8c:	48 63 d2             	movslq %edx,%rdx
   37a8f:	8b 14 90             	mov    (%rax,%rdx,4),%edx
   37a92:	66 44 0f 3a 22 f2 01 	pinsrd $0x1,%edx,%xmm14
   37a99:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
   37a9f:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   37aa6:	00 
   37aa7:	66 41 0f 6c d6       	punpcklqdq %xmm14,%xmm2
   37aac:	0f 29 94 24 a0 01 00 	movaps %xmm2,0x1a0(%rsp)
   37ab3:	00 
   37ab4:	75 b6                	jne    37a6c <sg_raster_triangle_tile_prepared+0x99bc>
   37ab6:	45 85 c9             	test   %r9d,%r9d
   37ab9:	0f 85 50 ff ff ff    	jne    37a0f <sg_raster_triangle_tile_prepared+0x995f>
   37abf:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37ac6:	00 
   37ac7:	0f 84 7c fa ff ff    	je     37549 <sg_raster_triangle_tile_prepared+0x9499>
   37acd:	31 c9                	xor    %ecx,%ecx
   37acf:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37ad3:	66 0f 3a 16 c2 02    	pextrd $0x2,%xmm0,%edx
   37ad9:	48 63 d2             	movslq %edx,%rdx
   37adc:	66 44 0f 6e 34 90    	movd   (%rax,%rdx,4),%xmm14
   37ae2:	31 d2                	xor    %edx,%edx
   37ae4:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37aeb:	00 
   37aec:	75 7d                	jne    37b6b <sg_raster_triangle_tile_prepared+0x9abb>
   37aee:	66 44 0f 3a 22 f2 01 	pinsrd $0x1,%edx,%xmm14
   37af5:	66 0f 3a 22 c9 01    	pinsrd $0x1,%ecx,%xmm1
   37afb:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   37b02:	00 
   37b03:	66 41 0f 6c ce       	punpcklqdq %xmm14,%xmm1
   37b08:	66 0f 6f c1          	movdqa %xmm1,%xmm0
   37b0c:	75 6e                	jne    37b7c <sg_raster_triangle_tile_prepared+0x9acc>
   37b0e:	45 85 c9             	test   %r9d,%r9d
   37b11:	75 35                	jne    37b48 <sg_raster_triangle_tile_prepared+0x9a98>
   37b13:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37b1a:	00 
   37b1b:	0f 84 3f ff ff ff    	je     37a60 <sg_raster_triangle_tile_prepared+0x99b0>
   37b21:	31 ff                	xor    %edi,%edi
   37b23:	31 c9                	xor    %ecx,%ecx
   37b25:	66 44 0f 3a 16 ea 02 	pextrd $0x2,%xmm13,%edx
   37b2c:	48 63 d2             	movslq %edx,%rdx
   37b2f:	44 8b 04 90          	mov    (%rax,%rdx,4),%r8d
   37b33:	31 d2                	xor    %edx,%edx
   37b35:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37b3c:	00 
   37b3d:	0f 84 32 fa ff ff    	je     37575 <sg_raster_triangle_tile_prepared+0x94c5>
   37b43:	e9 20 fa ff ff       	jmp    37568 <sg_raster_triangle_tile_prepared+0x94b8>
   37b48:	31 c9                	xor    %ecx,%ecx
   37b4a:	66 44 0f 3a 16 ea 01 	pextrd $0x1,%xmm13,%edx
   37b51:	48 63 d2             	movslq %edx,%rdx
   37b54:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
   37b57:	45 31 c0             	xor    %r8d,%r8d
   37b5a:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37b61:	00 
   37b62:	74 cf                	je     37b33 <sg_raster_triangle_tile_prepared+0x9a83>
   37b64:	eb bf                	jmp    37b25 <sg_raster_triangle_tile_prepared+0x9a75>
   37b66:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
   37b6b:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
   37b71:	48 63 d2             	movslq %edx,%rdx
   37b74:	8b 14 90             	mov    (%rax,%rdx,4),%edx
   37b77:	e9 72 ff ff ff       	jmp    37aee <sg_raster_triangle_tile_prepared+0x9a3e>
   37b7c:	66 44 0f 7e ea       	movd   %xmm13,%edx
   37b81:	31 ff                	xor    %edi,%edi
   37b83:	48 63 d2             	movslq %edx,%rdx
   37b86:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
   37b89:	45 85 c9             	test   %r9d,%r9d
   37b8c:	74 c9                	je     37b57 <sg_raster_triangle_tile_prepared+0x9aa7>
   37b8e:	eb ba                	jmp    37b4a <sg_raster_triangle_tile_prepared+0x9a9a>
   37b90:	48 63 b4 24 6c 03 00 	movslq 0x36c(%rsp),%rsi
   37b97:	00 
   37b98:	66 0f ef db          	pxor   %xmm3,%xmm3
   37b9c:	66 0f 3a 22 1c b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm3
   37ba3:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   37ba8:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
   37bae:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37bb2:	48 63 f6             	movslq %esi,%rsi
   37bb5:	66 0f 3a 22 0c b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm1
   37bbc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   37bc0:	e9 73 ee ff ff       	jmp    36a38 <sg_raster_triangle_tile_prepared+0x8988>
   37bc5:	31 f6                	xor    %esi,%esi
   37bc7:	48 63 bc 24 6c 03 00 	movslq 0x36c(%rsp),%rdi
   37bce:	00 
   37bcf:	66 0f 6e ce          	movd   %esi,%xmm1
   37bd3:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
   37bd9:	66 0f 3a 22 0c ba 01 	pinsrd $0x1,(%rdx,%rdi,4),%xmm1
   37be0:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
   37be4:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   37be9:	45 85 db             	test   %r11d,%r11d
   37bec:	0f 85 03 ee ff ff    	jne    369f5 <sg_raster_triangle_tile_prepared+0x8945>
   37bf2:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37bf6:	85 c9                	test   %ecx,%ecx
   37bf8:	0f 85 60 f1 ff ff    	jne    36d5e <sg_raster_triangle_tile_prepared+0x8cae>
   37bfe:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37c05:	00 
   37c06:	74 a0                	je     37ba8 <sg_raster_triangle_tile_prepared+0x9af8>
   37c08:	31 ff                	xor    %edi,%edi
   37c0a:	e9 64 f2 ff ff       	jmp    36e73 <sg_raster_triangle_tile_prepared+0x8dc3>
   37c0f:	31 ff                	xor    %edi,%edi
   37c11:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
   37c18:	66 0f ef d2          	pxor   %xmm2,%xmm2
   37c1c:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   37c22:	48 63 f6             	movslq %esi,%rsi
   37c25:	66 0f 3a 22 14 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm2
   37c2c:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   37c30:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   37c35:	45 85 db             	test   %r11d,%r11d
   37c38:	75 7c                	jne    37cb6 <sg_raster_triangle_tile_prepared+0x9c06>
   37c3a:	85 c9                	test   %ecx,%ecx
   37c3c:	75 55                	jne    37c93 <sg_raster_triangle_tile_prepared+0x9be3>
   37c3e:	31 ed                	xor    %ebp,%ebp
   37c40:	31 ff                	xor    %edi,%edi
   37c42:	31 f6                	xor    %esi,%esi
   37c44:	e9 0f ee ff ff       	jmp    36a58 <sg_raster_triangle_tile_prepared+0x89a8>
   37c49:	31 ff                	xor    %edi,%edi
   37c4b:	e9 67 f2 ff ff       	jmp    36eb7 <sg_raster_triangle_tile_prepared+0x8e07>
   37c50:	66 0f 6e c5          	movd   %ebp,%xmm0
   37c54:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
   37c59:	66 0f db c3          	pand   %xmm3,%xmm0
   37c5d:	e9 ea eb ff ff       	jmp    3684c <sg_raster_triangle_tile_prepared+0x879c>
   37c62:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
   37c69:	66 0f 6e d5          	movd   %ebp,%xmm2
   37c6d:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   37c73:	48 63 f6             	movslq %esi,%rsi
   37c76:	66 0f 3a 22 14 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm2
   37c7d:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
   37c81:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   37c86:	45 85 db             	test   %r11d,%r11d
   37c89:	75 2b                	jne    37cb6 <sg_raster_triangle_tile_prepared+0x9c06>
   37c8b:	85 c9                	test   %ecx,%ecx
   37c8d:	0f 84 79 02 00 00    	je     37f0c <sg_raster_triangle_tile_prepared+0x9e5c>
   37c93:	31 f6                	xor    %esi,%esi
   37c95:	66 0f 3a 16 f7 01    	pextrd $0x1,%xmm6,%edi
   37c9b:	48 63 ff             	movslq %edi,%rdi
   37c9e:	8b 3c ba             	mov    (%rdx,%rdi,4),%edi
   37ca1:	31 ed                	xor    %ebp,%ebp
   37ca3:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37caa:	00 
   37cab:	0f 84 60 f2 ff ff    	je     36f11 <sg_raster_triangle_tile_prepared+0x8e61>
   37cb1:	e9 4f f2 ff ff       	jmp    36f05 <sg_raster_triangle_tile_prepared+0x8e55>
   37cb6:	66 0f 7e f6          	movd   %xmm6,%esi
   37cba:	31 ff                	xor    %edi,%edi
   37cbc:	48 63 f6             	movslq %esi,%rsi
   37cbf:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
   37cc2:	85 c9                	test   %ecx,%ecx
   37cc4:	74 db                	je     37ca1 <sg_raster_triangle_tile_prepared+0x9bf1>
   37cc6:	eb cd                	jmp    37c95 <sg_raster_triangle_tile_prepared+0x9be5>
   37cc8:	66 0f ef d2          	pxor   %xmm2,%xmm2
   37ccc:	0f 28 c1             	movaps %xmm1,%xmm0
   37ccf:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   37cd3:	66 0f ef d2          	pxor   %xmm2,%xmm2
   37cd7:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
   37cdb:	0f 28 c5             	movaps %xmm5,%xmm0
   37cde:	0f 55 d1             	andnps %xmm1,%xmm2
   37ce1:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
   37ce5:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
   37cea:	e9 a8 f4 ff ff       	jmp    37197 <sg_raster_triangle_tile_prepared+0x90e7>
   37cef:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
   37cf6:	0f 
   37cf7:	0f 84 e4 00 00 00    	je     37de1 <sg_raster_triangle_tile_prepared+0x9d31>
   37cfd:	66 0f ef c0          	pxor   %xmm0,%xmm0
   37d01:	45 85 db             	test   %r11d,%r11d
   37d04:	74 0c                	je     37d12 <sg_raster_triangle_tile_prepared+0x9c62>
   37d06:	66 0f 7e d6          	movd   %xmm2,%esi
   37d0a:	48 63 f6             	movslq %esi,%rsi
   37d0d:	66 0f 6e 04 b2       	movd   (%rdx,%rsi,4),%xmm0
   37d12:	31 ff                	xor    %edi,%edi
   37d14:	85 c9                	test   %ecx,%ecx
   37d16:	74 0c                	je     37d24 <sg_raster_triangle_tile_prepared+0x9c74>
   37d18:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
   37d1e:	48 63 f6             	movslq %esi,%rsi
   37d21:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
   37d24:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37d2b:	00 
   37d2c:	66 0f ef c9          	pxor   %xmm1,%xmm1
   37d30:	74 0e                	je     37d40 <sg_raster_triangle_tile_prepared+0x9c90>
   37d32:	66 0f 3a 16 d6 02    	pextrd $0x2,%xmm2,%esi
   37d38:	48 63 f6             	movslq %esi,%rsi
   37d3b:	66 0f 6e 0c b2       	movd   (%rdx,%rsi,4),%xmm1
   37d40:	31 f6                	xor    %esi,%esi
   37d42:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37d49:	00 
   37d4a:	74 0c                	je     37d58 <sg_raster_triangle_tile_prepared+0x9ca8>
   37d4c:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
   37d52:	48 63 f6             	movslq %esi,%rsi
   37d55:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
   37d58:	66 0f 3a 22 ce 01    	pinsrd $0x1,%esi,%xmm1
   37d5e:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
   37d64:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   37d68:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   37d6c:	bf ff 00 00 00       	mov    $0xff,%edi
   37d71:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 37d79 <sg_raster_triangle_tile_prepared+0x9cc9>
   37d78:	00 
   37d79:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   37d7e:	66 0f 6e d7          	movd   %edi,%xmm2
   37d82:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
   37d87:	66 0f db ca          	pand   %xmm2,%xmm1
   37d8b:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
   37d8f:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   37d92:	0f 59 cb             	mulps  %xmm3,%xmm1
   37d95:	41 0f 29 0c 24       	movaps %xmm1,(%r12)
   37d9a:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   37d9e:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   37da3:	66 0f db ca          	pand   %xmm2,%xmm1
   37da7:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   37daa:	0f 59 cb             	mulps  %xmm3,%xmm1
   37dad:	41 0f 29 4c 24 10    	movaps %xmm1,0x10(%r12)
   37db3:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   37db7:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
   37dbc:	66 0f db ca          	pand   %xmm2,%xmm1
   37dc0:	66 0f db c2          	pand   %xmm2,%xmm0
   37dc4:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   37dc7:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
   37dca:	0f 59 cb             	mulps  %xmm3,%xmm1
   37dcd:	0f 59 c3             	mulps  %xmm3,%xmm0
   37dd0:	41 0f 29 4c 24 20    	movaps %xmm1,0x20(%r12)
   37dd6:	41 0f 29 44 24 30    	movaps %xmm0,0x30(%r12)
   37ddc:	e9 26 94 ff ff       	jmp    31207 <sg_raster_triangle_tile_prepared+0x3157>
   37de1:	66 0f 7e d6          	movd   %xmm2,%esi
   37de5:	66 0f 3a 16 d7 02    	pextrd $0x2,%xmm2,%edi
   37deb:	4c 63 ce             	movslq %esi,%r9
   37dee:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
   37df4:	48 63 ff             	movslq %edi,%rdi
   37df7:	48 63 ee             	movslq %esi,%rbp
   37dfa:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
   37e00:	66 0f 6e 0c ba       	movd   (%rdx,%rdi,4),%xmm1
   37e05:	66 42 0f 6e 04 8a    	movd   (%rdx,%r9,4),%xmm0
   37e0b:	48 63 f6             	movslq %esi,%rsi
   37e0e:	66 0f 3a 22 04 aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm0
   37e15:	66 0f 3a 22 0c b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm1
   37e1c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   37e20:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   37e24:	e9 43 ff ff ff       	jmp    37d6c <sg_raster_triangle_tile_prepared+0x9cbc>
   37e29:	66 44 0f 6e df       	movd   %edi,%xmm11
   37e2e:	66 45 0f 70 cb 00    	pshufd $0x0,%xmm11,%xmm9
   37e34:	66 41 0f db e1       	pand   %xmm9,%xmm4
   37e39:	e9 b8 ea ff ff       	jmp    368f6 <sg_raster_triangle_tile_prepared+0x8846>
   37e3e:	f3 0f 7e 0f          	movq   (%rdi),%xmm1
   37e42:	48 8b bc 24 f0 01 00 	mov    0x1f0(%rsp),%rdi
   37e49:	00 
   37e4a:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
   37e51:	00 
   37e52:	f3 0f 7e 45 00       	movq   0x0(%rbp),%xmm0
   37e57:	66 48 0f 3a 22 07 01 	pinsrq $0x1,(%rdi),%xmm0
   37e5e:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
   37e65:	00 
   37e66:	66 49 0f 3a 22 09 01 	pinsrq $0x1,(%r9),%xmm1
   37e6d:	f3 0f 7e 16          	movq   (%rsi),%xmm2
   37e71:	48 8b b4 24 60 02 00 	mov    0x260(%rsp),%rsi
   37e78:	00 
   37e79:	66 48 0f 3a 22 17 01 	pinsrq $0x1,(%rdi),%xmm2
   37e80:	48 8b bc 24 20 02 00 	mov    0x220(%rsp),%rdi
   37e87:	00 
   37e88:	0f 28 d9             	movaps %xmm1,%xmm3
   37e8b:	0f c6 c8 dd          	shufps $0xdd,%xmm0,%xmm1
   37e8f:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   37e93:	f3 0f 7e 36          	movq   (%rsi),%xmm6
   37e97:	0f c6 d8 88          	shufps $0x88,%xmm0,%xmm3
   37e9b:	0f 28 c2             	movaps %xmm2,%xmm0
   37e9e:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
   37ea3:	66 48 0f 3a 22 37 01 	pinsrq $0x1,(%rdi),%xmm6
   37eaa:	0f c6 c6 88          	shufps $0x88,%xmm6,%xmm0
   37eae:	0f c6 d6 dd          	shufps $0xdd,%xmm6,%xmm2
   37eb2:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
   37eb7:	66 0f 6f f2          	movdqa %xmm2,%xmm6
   37ebb:	e9 c3 eb ff ff       	jmp    36a83 <sg_raster_triangle_tile_prepared+0x89d3>
   37ec0:	31 ff                	xor    %edi,%edi
   37ec2:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
   37ec8:	66 0f ef c0          	pxor   %xmm0,%xmm0
   37ecc:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
   37ed2:	48 63 f6             	movslq %esi,%rsi
   37ed5:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
   37edc:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
   37ee0:	66 0f 6f e1          	movdqa %xmm1,%xmm4
   37ee4:	45 85 db             	test   %r11d,%r11d
   37ee7:	0f 85 d2 ed ff ff    	jne    36cbf <sg_raster_triangle_tile_prepared+0x8c0f>
   37eed:	85 c9                	test   %ecx,%ecx
   37eef:	0f 85 a9 ee ff ff    	jne    36d9e <sg_raster_triangle_tile_prepared+0x8cee>
   37ef5:	e9 3e eb ff ff       	jmp    36a38 <sg_raster_triangle_tile_prepared+0x8988>
   37efa:	66 0f 6e f5          	movd   %ebp,%xmm6
   37efe:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
   37f03:	66 0f db de          	pand   %xmm6,%xmm3
   37f07:	e9 7b ea ff ff       	jmp    36987 <sg_raster_triangle_tile_prepared+0x88d7>
   37f0c:	31 ff                	xor    %edi,%edi
   37f0e:	31 f6                	xor    %esi,%esi
   37f10:	e9 f0 ef ff ff       	jmp    36f05 <sg_raster_triangle_tile_prepared+0x8e55>
   37f15:	66 0f 7e f6          	movd   %xmm6,%esi
   37f19:	31 ff                	xor    %edi,%edi
   37f1b:	48 63 f6             	movslq %esi,%rsi
   37f1e:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
   37f21:	85 c9                	test   %ecx,%ecx
   37f23:	0f 84 dc ef ff ff    	je     36f05 <sg_raster_triangle_tile_prepared+0x8e55>
   37f29:	e9 67 fd ff ff       	jmp    37c95 <sg_raster_triangle_tile_prepared+0x9be5>
   37f2e:	31 f6                	xor    %esi,%esi
   37f30:	31 ed                	xor    %ebp,%ebp
   37f32:	e9 90 fc ff ff       	jmp    37bc7 <sg_raster_triangle_tile_prepared+0x9b17>
   37f37:	31 ed                	xor    %ebp,%ebp
   37f39:	e9 f1 ee ff ff       	jmp    36e2f <sg_raster_triangle_tile_prepared+0x8d7f>
   37f3e:	66 0f 3a 16 ca 02    	pextrd $0x2,%xmm1,%edx
   37f44:	48 63 d2             	movslq %edx,%rdx
   37f47:	66 44 0f 6e 34 90    	movd   (%rax,%rdx,4),%xmm14
   37f4d:	31 d2                	xor    %edx,%edx
   37f4f:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37f56:	00 
   37f57:	0f 84 35 fb ff ff    	je     37a92 <sg_raster_triangle_tile_prepared+0x99e2>
   37f5d:	e9 24 fb ff ff       	jmp    37a86 <sg_raster_triangle_tile_prepared+0x99d6>
   37f62:	66 0f ef ed          	pxor   %xmm5,%xmm5
   37f66:	48 63 94 24 a4 03 00 	movslq 0x3a4(%rsp),%rdx
   37f6d:	00 
   37f6e:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   37f75:	00 
   37f76:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
   37f79:	0f 85 ba 00 00 00    	jne    38039 <sg_raster_triangle_tile_prepared+0x9f89>
   37f7f:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   37f86:	00 
   37f87:	0f 85 06 03 00 00    	jne    38293 <sg_raster_triangle_tile_prepared+0xa1e3>
   37f8d:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
   37f93:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   37f9a:	00 
   37f9b:	66 0f ef d2          	pxor   %xmm2,%xmm2
   37f9f:	f3 0f 7e ed          	movq   %xmm5,%xmm5
   37fa3:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
   37fa8:	74 0c                	je     37fb6 <sg_raster_triangle_tile_prepared+0x9f06>
   37faa:	66 0f 7e ca          	movd   %xmm1,%edx
   37fae:	48 63 d2             	movslq %edx,%rdx
   37fb1:	66 0f 6e 14 90       	movd   (%rax,%rdx,4),%xmm2
   37fb6:	66 0f 3a 16 ca 01    	pextrd $0x1,%xmm1,%edx
   37fbc:	48 63 d2             	movslq %edx,%rdx
   37fbf:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
   37fc2:	e9 3d f5 ff ff       	jmp    37504 <sg_raster_triangle_tile_prepared+0x9454>
   37fc7:	31 ff                	xor    %edi,%edi
   37fc9:	31 c9                	xor    %ecx,%ecx
   37fcb:	48 63 94 24 ac 03 00 	movslq 0x3ac(%rsp),%rdx
   37fd2:	00 
   37fd3:	8b 14 90             	mov    (%rax,%rdx,4),%edx
   37fd6:	66 0f 6e d7          	movd   %edi,%xmm2
   37fda:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
   37fe0:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   37fe7:	00 
   37fe8:	66 0f 3a 22 d2 01    	pinsrd $0x1,%edx,%xmm2
   37fee:	66 0f 6c ea          	punpcklqdq %xmm2,%xmm5
   37ff2:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
   37ff7:	0f 85 f0 f4 ff ff    	jne    374ed <sg_raster_triangle_tile_prepared+0x943d>
   37ffd:	66 0f ef d2          	pxor   %xmm2,%xmm2
   38001:	45 85 c9             	test   %r9d,%r9d
   38004:	75 b0                	jne    37fb6 <sg_raster_triangle_tile_prepared+0x9f06>
   38006:	31 c9                	xor    %ecx,%ecx
   38008:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   3800f:	00 
   38010:	0f 85 28 ff ff ff    	jne    37f3e <sg_raster_triangle_tile_prepared+0x9e8e>
   38016:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
   3801c:	66 0f ef d2          	pxor   %xmm2,%xmm2
   38020:	48 63 d2             	movslq %edx,%rdx
   38023:	66 0f 3a 22 14 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm2
   3802a:	0f 29 94 24 a0 01 00 	movaps %xmm2,0x1a0(%rsp)
   38031:	00 
   38032:	e9 12 f5 ff ff       	jmp    37549 <sg_raster_triangle_tile_prepared+0x9499>
   38037:	31 c9                	xor    %ecx,%ecx
   38039:	48 63 94 24 a8 03 00 	movslq 0x3a8(%rsp),%rdx
   38040:	00 
   38041:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
   38044:	31 d2                	xor    %edx,%edx
   38046:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   3804d:	00 
   3804e:	74 86                	je     37fd6 <sg_raster_triangle_tile_prepared+0x9f26>
   38050:	e9 76 ff ff ff       	jmp    37fcb <sg_raster_triangle_tile_prepared+0x9f1b>
   38055:	45 85 c9             	test   %r9d,%r9d
   38058:	0f 85 04 ff ff ff    	jne    37f62 <sg_raster_triangle_tile_prepared+0x9eb2>
   3805e:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   38065:	00 
   38066:	0f 85 2e 02 00 00    	jne    3829a <sg_raster_triangle_tile_prepared+0xa1ea>
   3806c:	31 ff                	xor    %edi,%edi
   3806e:	31 c9                	xor    %ecx,%ecx
   38070:	66 0f ef ed          	pxor   %xmm5,%xmm5
   38074:	e9 52 ff ff ff       	jmp    37fcb <sg_raster_triangle_tile_prepared+0x9f1b>
   38079:	bf 01 00 00 00       	mov    $0x1,%edi
   3807e:	66 0f 7e d2          	movd   %xmm2,%edx
   38082:	66 44 0f 6e cf       	movd   %edi,%xmm9
   38087:	48 63 d2             	movslq %edx,%rdx
   3808a:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
   38090:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
   38094:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
   3809a:	66 44 0f fe 8c 24 d0 	paddd  0x1d0(%rsp),%xmm9
   380a1:	01 00 00 
   380a4:	48 63 d2             	movslq %edx,%rdx
   380a7:	66 44 0f 76 cd       	pcmpeqd %xmm5,%xmm9
   380ac:	41 0f 50 f9          	movmskps %xmm9,%edi
   380b0:	89 bc 24 a0 01 00 00 	mov    %edi,0x1a0(%rsp)
   380b7:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   380bb:	66 0f 3a 16 d2 02    	pextrd $0x2,%xmm2,%edx
   380c1:	48 63 d2             	movslq %edx,%rdx
   380c4:	4c 8d 04 90          	lea    (%rax,%rdx,4),%r8
   380c8:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
   380ce:	48 63 d2             	movslq %edx,%rdx
   380d1:	4c 8d 2c 90          	lea    (%rax,%rdx,4),%r13
   380d5:	66 0f 7e c2          	movd   %xmm0,%edx
   380d9:	48 63 d2             	movslq %edx,%rdx
   380dc:	48 8d 2c 90          	lea    (%rax,%rdx,4),%rbp
   380e0:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
   380e6:	48 63 d2             	movslq %edx,%rdx
   380e9:	4c 8d 24 90          	lea    (%rax,%rdx,4),%r12
   380ed:	66 0f 3a 16 c2 02    	pextrd $0x2,%xmm0,%edx
   380f3:	48 63 d2             	movslq %edx,%rdx
   380f6:	48 8d 1c 90          	lea    (%rax,%rdx,4),%rbx
   380fa:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
   38100:	48 63 d2             	movslq %edx,%rdx
   38103:	4c 8d 1c 90          	lea    (%rax,%rdx,4),%r11
   38107:	8b 94 24 a0 01 00 00 	mov    0x1a0(%rsp),%edx
   3810e:	f7 d2                	not    %edx
   38110:	80 e2 0f             	and    $0xf,%dl
   38113:	0f 84 fc 00 00 00    	je     38215 <sg_raster_triangle_tile_prepared+0xa165>
   38119:	66 0f 7e ca          	movd   %xmm1,%edx
   3811d:	66 0f 6e 29          	movd   (%rcx),%xmm5
   38121:	66 0f 3a 22 2f 01    	pinsrd $0x1,(%rdi),%xmm5
   38127:	66 0f 3a 16 c9 02    	pextrd $0x2,%xmm1,%ecx
   3812d:	48 63 fa             	movslq %edx,%rdi
   38130:	66 0f 3a 16 ca 01    	pextrd $0x1,%xmm1,%edx
   38136:	66 41 0f 6e 00       	movd   (%r8),%xmm0
   3813b:	48 63 c9             	movslq %ecx,%rcx
   3813e:	4c 63 c2             	movslq %edx,%r8
   38141:	66 41 0f 3a 22 45 00 	pinsrd $0x1,0x0(%r13),%xmm0
   38148:	01 
   38149:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
   3814f:	66 0f 6e 14 b8       	movd   (%rax,%rdi,4),%xmm2
   38154:	48 63 d2             	movslq %edx,%rdx
   38157:	66 42 0f 3a 22 14 80 	pinsrd $0x1,(%rax,%r8,4),%xmm2
   3815e:	01 
   3815f:	66 0f 6e 4d 00       	movd   0x0(%rbp),%xmm1
   38164:	66 0f 6c e8          	punpcklqdq %xmm0,%xmm5
   38168:	66 0f 6e 04 88       	movd   (%rax,%rcx,4),%xmm0
   3816d:	66 0f 3a 22 04 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm0
   38174:	66 44 0f 7e ea       	movd   %xmm13,%edx
   38179:	48 63 fa             	movslq %edx,%rdi
   3817c:	66 44 0f 3a 16 ea 01 	pextrd $0x1,%xmm13,%edx
   38183:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
   38188:	4c 63 c2             	movslq %edx,%r8
   3818b:	66 44 0f 3a 16 e9 02 	pextrd $0x2,%xmm13,%ecx
   38192:	66 44 0f 3a 16 ea 03 	pextrd $0x3,%xmm13,%edx
   38199:	66 44 0f 6e 34 b8    	movd   (%rax,%rdi,4),%xmm14
   3819f:	48 63 c9             	movslq %ecx,%rcx
   381a2:	66 46 0f 3a 22 34 80 	pinsrd $0x1,(%rax,%r8,4),%xmm14
   381a9:	01 
   381aa:	48 63 d2             	movslq %edx,%rdx
   381ad:	66 0f 6c d0          	punpcklqdq %xmm0,%xmm2
   381b1:	66 44 0f 6e 2c 88    	movd   (%rax,%rcx,4),%xmm13
   381b7:	66 0f 6e 03          	movd   (%rbx),%xmm0
   381bb:	66 41 0f 3a 22 0c 24 	pinsrd $0x1,(%r12),%xmm1
   381c2:	01 
   381c3:	66 41 0f 3a 22 03 01 	pinsrd $0x1,(%r11),%xmm0
   381ca:	66 45 0f 6f fe       	movdqa %xmm14,%xmm15
   381cf:	0f 29 94 24 a0 01 00 	movaps %xmm2,0x1a0(%rsp)
   381d6:	00 
   381d7:	66 44 0f 3a 22 2c 90 	pinsrd $0x1,(%rax,%rdx,4),%xmm13
   381de:	01 
   381df:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
   381e3:	66 45 0f 6c fd       	punpcklqdq %xmm13,%xmm15
   381e8:	66 0f 6f c1          	movdqa %xmm1,%xmm0
   381ec:	44 0f 29 bc 24 e0 01 	movaps %xmm15,0x1e0(%rsp)
   381f3:	00 00 
   381f5:	44 0f 29 bc 24 d0 01 	movaps %xmm15,0x1d0(%rsp)
   381fc:	00 00 
   381fe:	e9 a6 f3 ff ff       	jmp    375a9 <sg_raster_triangle_tile_prepared+0x94f9>
   38203:	66 0f 6e ca          	movd   %edx,%xmm1
   38207:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
   3820c:	66 0f db c1          	pand   %xmm1,%xmm0
   38210:	e9 53 f2 ff ff       	jmp    37468 <sg_raster_triangle_tile_prepared+0x93b8>
   38215:	f3 0f 7e 09          	movq   (%rcx),%xmm1
   38219:	f3 0f 7e 55 00       	movq   0x0(%rbp),%xmm2
   3821e:	66 48 0f 3a 22 0f 01 	pinsrq $0x1,(%rdi),%xmm1
   38225:	66 49 0f 3a 22 14 24 	pinsrq $0x1,(%r12),%xmm2
   3822c:	01 
   3822d:	f3 41 0f 7e 00       	movq   (%r8),%xmm0
   38232:	f3 0f 7e 2b          	movq   (%rbx),%xmm5
   38236:	66 49 0f 3a 22 45 00 	pinsrq $0x1,0x0(%r13),%xmm0
   3823d:	01 
   3823e:	66 49 0f 3a 22 2b 01 	pinsrq $0x1,(%r11),%xmm5
   38245:	44 0f 28 e9          	movaps %xmm1,%xmm13
   38249:	44 0f 28 f1          	movaps %xmm1,%xmm14
   3824d:	0f 28 ca             	movaps %xmm2,%xmm1
   38250:	44 0f c6 e8 88       	shufps $0x88,%xmm0,%xmm13
   38255:	0f c6 d5 dd          	shufps $0xdd,%xmm5,%xmm2
   38259:	44 0f c6 f0 dd       	shufps $0xdd,%xmm0,%xmm14
   3825e:	0f c6 cd 88          	shufps $0x88,%xmm5,%xmm1
   38262:	66 45 0f 6f cd       	movdqa %xmm13,%xmm9
   38267:	66 0f 6f c1          	movdqa %xmm1,%xmm0
   3826b:	0f 29 94 24 d0 01 00 	movaps %xmm2,0x1d0(%rsp)
   38272:	00 
   38273:	66 41 0f 6f ed       	movdqa %xmm13,%xmm5
   38278:	0f 29 94 24 e0 01 00 	movaps %xmm2,0x1e0(%rsp)
   3827f:	00 
   38280:	66 41 0f 6f d6       	movdqa %xmm14,%xmm2
   38285:	44 0f 29 b4 24 a0 01 	movaps %xmm14,0x1a0(%rsp)
   3828c:	00 00 
   3828e:	e9 16 f3 ff ff       	jmp    375a9 <sg_raster_triangle_tile_prepared+0x94f9>
   38293:	31 ff                	xor    %edi,%edi
   38295:	e9 31 fd ff ff       	jmp    37fcb <sg_raster_triangle_tile_prepared+0x9f1b>
   3829a:	31 c9                	xor    %ecx,%ecx
   3829c:	66 0f ef ed          	pxor   %xmm5,%xmm5
   382a0:	e9 94 fd ff ff       	jmp    38039 <sg_raster_triangle_tile_prepared+0x9f89>
   382a5:	66 0f ef c9          	pxor   %xmm1,%xmm1
   382a9:	66 0f 38 3d c1       	pmaxsd %xmm1,%xmm0
   382ae:	66 0f 38 39 84 24 a0 	pminsd 0x1a0(%rsp),%xmm0
   382b5:	01 00 00 
   382b8:	e9 ab f1 ff ff       	jmp    37468 <sg_raster_triangle_tile_prepared+0x93b8>
   382bd:	66 0f 6e c9          	movd   %ecx,%xmm1
   382c1:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
   382c6:	66 0f db e9          	pand   %xmm1,%xmm5
   382ca:	e9 0d f1 ff ff       	jmp    373dc <sg_raster_triangle_tile_prepared+0x932c>
   382cf:	66 0f ef c9          	pxor   %xmm1,%xmm1
   382d3:	66 0f 38 3d cd       	pmaxsd %xmm5,%xmm1
   382d8:	66 41 0f 38 39 ce    	pminsd %xmm14,%xmm1
   382de:	66 0f 6f e9          	movdqa %xmm1,%xmm5
   382e2:	e9 f5 f0 ff ff       	jmp    373dc <sg_raster_triangle_tile_prepared+0x932c>
   382e7:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
   382ee:	0f 
   382ef:	0f 84 e3 00 00 00    	je     383d8 <sg_raster_triangle_tile_prepared+0xa328>
   382f5:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
   382fc:	00 
   382fd:	66 0f ef c0          	pxor   %xmm0,%xmm0
   38301:	74 0c                	je     3830f <sg_raster_triangle_tile_prepared+0xa25f>
   38303:	66 0f 7e d2          	movd   %xmm2,%edx
   38307:	48 63 d2             	movslq %edx,%rdx
   3830a:	66 0f 6e 04 90       	movd   (%rax,%rdx,4),%xmm0
   3830f:	31 c9                	xor    %ecx,%ecx
   38311:	45 85 c9             	test   %r9d,%r9d
   38314:	74 0c                	je     38322 <sg_raster_triangle_tile_prepared+0xa272>
   38316:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
   3831c:	48 63 d2             	movslq %edx,%rdx
   3831f:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
   38322:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
   38329:	00 
   3832a:	66 0f ef c9          	pxor   %xmm1,%xmm1
   3832e:	74 0e                	je     3833e <sg_raster_triangle_tile_prepared+0xa28e>
   38330:	66 0f 3a 16 d2 02    	pextrd $0x2,%xmm2,%edx
   38336:	48 63 d2             	movslq %edx,%rdx
   38339:	66 0f 6e 0c 90       	movd   (%rax,%rdx,4),%xmm1
   3833e:	31 d2                	xor    %edx,%edx
   38340:	83 bc 24 60 01 00 00 	cmpl   $0x0,0x160(%rsp)
   38347:	00 
   38348:	74 0c                	je     38356 <sg_raster_triangle_tile_prepared+0xa2a6>
   3834a:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
   38350:	48 63 d2             	movslq %edx,%rdx
   38353:	8b 14 90             	mov    (%rax,%rdx,4),%edx
   38356:	66 0f 3a 22 ca 01    	pinsrd $0x1,%edx,%xmm1
   3835c:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
   38362:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   38366:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   3836a:	66 0f 6f d0          	movdqa %xmm0,%xmm2
   3836e:	b8 ff 00 00 00       	mov    $0xff,%eax
   38373:	f3 44 0f 10 05 00 00 	movss  0x0(%rip),%xmm8        # 3837c <sg_raster_triangle_tile_prepared+0xa2cc>
   3837a:	00 00 
   3837c:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   38381:	66 44 0f 6e c8       	movd   %eax,%xmm9
   38386:	66 0f 6f c2          	movdqa %xmm2,%xmm0
   3838a:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   3838f:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
   38395:	66 41 0f db c9       	pand   %xmm9,%xmm1
   3839a:	66 0f 6f ea          	movdqa %xmm2,%xmm5
   3839e:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
   383a3:	66 41 0f db c1       	pand   %xmm9,%xmm0
   383a8:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
   383ad:	66 41 0f db e9       	pand   %xmm9,%xmm5
   383b2:	66 41 0f db d1       	pand   %xmm9,%xmm2
   383b7:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
   383ba:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
   383bd:	0f 5b ed             	cvtdq2ps %xmm5,%xmm5
   383c0:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
   383c3:	41 0f 59 c8          	mulps  %xmm8,%xmm1
   383c7:	41 0f 59 c0          	mulps  %xmm8,%xmm0
   383cb:	41 0f 59 e8          	mulps  %xmm8,%xmm5
   383cf:	41 0f 59 d0          	mulps  %xmm8,%xmm2
   383d3:	e9 bc c2 ff ff       	jmp    34694 <sg_raster_triangle_tile_prepared+0x65e4>
   383d8:	66 0f 7e d2          	movd   %xmm2,%edx
   383dc:	66 0f 3a 16 d1 02    	pextrd $0x2,%xmm2,%ecx
   383e2:	48 63 fa             	movslq %edx,%rdi
   383e5:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
   383eb:	48 63 c9             	movslq %ecx,%rcx
   383ee:	4c 63 c2             	movslq %edx,%r8
   383f1:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
   383f7:	66 0f 6e 0c 88       	movd   (%rax,%rcx,4),%xmm1
   383fc:	66 0f 6e 04 b8       	movd   (%rax,%rdi,4),%xmm0
   38401:	48 63 d2             	movslq %edx,%rdx
   38404:	66 42 0f 3a 22 04 80 	pinsrd $0x1,(%rax,%r8,4),%xmm0
   3840b:	01 
   3840c:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
   38413:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
   38417:	66 0f 6f c8          	movdqa %xmm0,%xmm1
   3841b:	e9 4a ff ff ff       	jmp    3836a <sg_raster_triangle_tile_prepared+0xa2ba>
   38420:	66 0f 6e ea          	movd   %edx,%xmm5
   38424:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
   38429:	66 0f db e8          	pand   %xmm0,%xmm5
   3842d:	e9 0c ef ff ff       	jmp    3733e <sg_raster_triangle_tile_prepared+0x928e>
   38432:	66 0f ef ed          	pxor   %xmm5,%xmm5
   38436:	66 0f 38 3d e8       	pmaxsd %xmm0,%xmm5
   3843b:	66 0f 38 39 ac 24 a0 	pminsd 0x1a0(%rsp),%xmm5
   38442:	01 00 00 
   38445:	e9 f4 ee ff ff       	jmp    3733e <sg_raster_triangle_tile_prepared+0x928e>
   3844a:	66 0f 6e e9          	movd   %ecx,%xmm5
   3844e:	66 0f 70 d5 00       	pshufd $0x0,%xmm5,%xmm2
   38453:	66 0f db d1          	pand   %xmm1,%xmm2
   38457:	e9 26 ee ff ff       	jmp    37282 <sg_raster_triangle_tile_prepared+0x91d2>
   3845c:	66 0f ef d2          	pxor   %xmm2,%xmm2
   38460:	66 0f 38 3d d1       	pmaxsd %xmm1,%xmm2
   38465:	66 41 0f 38 39 d6    	pminsd %xmm14,%xmm2
   3846b:	e9 12 ee ff ff       	jmp    37282 <sg_raster_triangle_tile_prepared+0x91d2>

Disassembly of section .text.unlikely:

lines.c.o:     file format elf64-x86-64


Disassembly of section .text:

fragment.c.o:     file format elf64-x86-64


Disassembly of section .text:

framebuffer.c.o:     file format elf64-x86-64


Disassembly of section .text:

lighting.c.o:     file format elf64-x86-64


Disassembly of section .text:

api.c.o:     file format elf64-x86-64


Disassembly of section .text:

immediate.c.o:     file format elf64-x86-64


Disassembly of section .text:

dlist.c.o:     file format elf64-x86-64


Disassembly of section .text:

Disassembly of section .text.unlikely:

pixels.c.o:     file format elf64-x86-64


Disassembly of section .text:

evaluators.c.o:     file format elf64-x86-64


Disassembly of section .text:

workers.c.o:     file format elf64-x86-64


Disassembly of section .text:
