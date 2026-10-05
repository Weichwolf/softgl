In archive build/native/libsoftgl/libsoftgl.a:

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

00000000000034b0 <sg_raster_triangle_depth_capture>:
    34b0:	41 57                	push   %r15
    34b2:	48 89 f0             	mov    %rsi,%rax
    34b5:	49 89 ff             	mov    %rdi,%r15
    34b8:	41 56                	push   %r14
    34ba:	41 55                	push   %r13
    34bc:	41 54                	push   %r12
    34be:	55                   	push   %rbp
    34bf:	53                   	push   %rbx
    34c0:	48 81 ec a8 04 00 00 	sub    $0x4a8,%rsp
    34c7:	f3 0f 10 6e 10       	movss  0x10(%rsi),%xmm5
    34cc:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 34d4 <sg_raster_triangle_depth_capture+0x24>
    34d3:	00 
    34d4:	48 89 b4 24 98 00 00 	mov    %rsi,0x98(%rsp)
    34db:	00 
    34dc:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 34e4 <sg_raster_triangle_depth_capture+0x34>
    34e3:	00 
    34e4:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    34e8:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    34ed:	f3 0f 10 71 10       	movss  0x10(%rcx),%xmm6
    34f2:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 34fa <sg_raster_triangle_depth_capture+0x4a>
    34f9:	00 
    34fa:	f3 44 0f 10 5a 14    	movss  0x14(%rdx),%xmm11
    3500:	44 89 8c 24 30 01 00 	mov    %r9d,0x130(%rsp)
    3507:	00 
    3508:	f3 44 0f 10 51 14    	movss  0x14(%rcx),%xmm10
    350e:	48 89 94 24 a0 00 00 	mov    %rdx,0xa0(%rsp)
    3515:	00 
    3516:	48 89 8c 24 a8 00 00 	mov    %rcx,0xa8(%rsp)
    351d:	00 
    351e:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    3522:	f3 0f 10 40 14       	movss  0x14(%rax),%xmm0
    3527:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    352b:	f3 0f 2c f9          	cvttss2si %xmm1,%edi
    352f:	f3 0f 10 4a 10       	movss  0x10(%rdx),%xmm1
    3534:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    3538:	f3 44 0f 2c f2       	cvttss2si %xmm2,%r14d
    353d:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 3545 <sg_raster_triangle_depth_capture+0x95>
    3544:	00 
    3545:	f3 41 0f 59 d3       	mulss  %xmm11,%xmm2
    354a:	44 89 f0             	mov    %r14d,%eax
    354d:	29 f0                	sub    %esi,%eax
    354f:	48 63 d0             	movslq %eax,%rdx
    3552:	89 44 24 20          	mov    %eax,0x20(%rsp)
    3556:	f3 0f 2c da          	cvttss2si %xmm2,%ebx
    355a:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 3562 <sg_raster_triangle_depth_capture+0xb2>
    3561:	00 
    3562:	f3 0f 59 d6          	mulss  %xmm6,%xmm2
    3566:	89 d8                	mov    %ebx,%eax
    3568:	29 f8                	sub    %edi,%eax
    356a:	48 63 c8             	movslq %eax,%rcx
    356d:	f3 44 0f 2c ca       	cvttss2si %xmm2,%r9d
    3572:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 357a <sg_raster_triangle_depth_capture+0xca>
    3579:	00 
    357a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    357f:	89 44 24 30          	mov    %eax,0x30(%rsp)
    3583:	f3 41 0f 59 d2       	mulss  %xmm10,%xmm2
    3588:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    358d:	f3 44 0f 2c d2       	cvttss2si %xmm2,%r10d
    3592:	44 89 d0             	mov    %r10d,%eax
    3595:	29 f8                	sub    %edi,%eax
    3597:	48 98                	cltq
    3599:	48 0f af c2          	imul   %rdx,%rax
    359d:	44 89 ca             	mov    %r9d,%edx
    35a0:	29 f2                	sub    %esi,%edx
    35a2:	48 63 d2             	movslq %edx,%rdx
    35a5:	48 0f af d1          	imul   %rcx,%rdx
    35a9:	48 29 d0             	sub    %rdx,%rax
    35ac:	41 8b 57 74          	mov    0x74(%r15),%edx
    35b0:	89 54 24 10          	mov    %edx,0x10(%rsp)
    35b4:	48 85 c0             	test   %rax,%rax
    35b7:	0f 8e 92 03 00 00    	jle    394f <sg_raster_triangle_depth_capture+0x49f>
    35bd:	45 39 f1             	cmp    %r14d,%r9d
    35c0:	44 89 f5             	mov    %r14d,%ebp
    35c3:	41 89 dd             	mov    %ebx,%r13d
    35c6:	44 89 f2             	mov    %r14d,%edx
    35c9:	41 0f 4e e9          	cmovle %r9d,%ebp
    35cd:	44 8b bc 24 30 01 00 	mov    0x130(%rsp),%r15d
    35d4:	00 
    35d5:	39 f5                	cmp    %esi,%ebp
    35d7:	0f 4f ee             	cmovg  %esi,%ebp
    35da:	41 39 da             	cmp    %ebx,%r10d
    35dd:	45 0f 4e ea          	cmovle %r10d,%r13d
    35e1:	41 89 eb             	mov    %ebp,%r11d
    35e4:	44 8d a5 01 ff ff ff 	lea    -0xff(%rbp),%r12d
    35eb:	41 39 fd             	cmp    %edi,%r13d
    35ee:	44 0f 4f ef          	cmovg  %edi,%r13d
    35f2:	45 39 f1             	cmp    %r14d,%r9d
    35f5:	41 0f 4d d1          	cmovge %r9d,%edx
    35f9:	39 f2                	cmp    %esi,%edx
    35fb:	0f 4c d6             	cmovl  %esi,%edx
    35fe:	c1 fa 08             	sar    $0x8,%edx
    3601:	41 39 da             	cmp    %ebx,%r10d
    3604:	8d 4a 01             	lea    0x1(%rdx),%ecx
    3607:	89 da                	mov    %ebx,%edx
    3609:	41 0f 4d d2          	cmovge %r10d,%edx
    360d:	39 fa                	cmp    %edi,%edx
    360f:	0f 4c d7             	cmovl  %edi,%edx
    3612:	41 c1 fb 08          	sar    $0x8,%r11d
    3616:	41 c1 fc 08          	sar    $0x8,%r12d
    361a:	c1 fa 08             	sar    $0x8,%edx
    361d:	83 c2 01             	add    $0x1,%edx
    3620:	85 ed                	test   %ebp,%ebp
    3622:	41 8d ad 01 ff ff ff 	lea    -0xff(%r13),%ebp
    3629:	45 0f 49 e3          	cmovns %r11d,%r12d
    362d:	45 89 eb             	mov    %r13d,%r11d
    3630:	c1 fd 08             	sar    $0x8,%ebp
    3633:	41 c1 fb 08          	sar    $0x8,%r11d
    3637:	45 85 ed             	test   %r13d,%r13d
    363a:	41 0f 49 eb          	cmovns %r11d,%ebp
    363e:	45 39 c4             	cmp    %r8d,%r12d
    3641:	45 89 c3             	mov    %r8d,%r11d
    3644:	45 0f 4d dc          	cmovge %r12d,%r11d
    3648:	45 31 c0             	xor    %r8d,%r8d
    364b:	44 8b 64 24 10       	mov    0x10(%rsp),%r12d
    3650:	85 ed                	test   %ebp,%ebp
    3652:	44 0f 49 c5          	cmovns %ebp,%r8d
    3656:	44 39 f9             	cmp    %r15d,%ecx
    3659:	44 89 9c 24 34 01 00 	mov    %r11d,0x134(%rsp)
    3660:	00 
    3661:	41 0f 4f cf          	cmovg  %r15d,%ecx
    3665:	44 89 84 24 8c 00 00 	mov    %r8d,0x8c(%rsp)
    366c:	00 
    366d:	44 89 c5             	mov    %r8d,%ebp
    3670:	89 4c 24 14          	mov    %ecx,0x14(%rsp)
    3674:	41 89 c8             	mov    %ecx,%r8d
    3677:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    367c:	8b 49 04             	mov    0x4(%rcx),%ecx
    367f:	39 ca                	cmp    %ecx,%edx
    3681:	0f 4e ca             	cmovle %edx,%ecx
    3684:	41 89 cf             	mov    %ecx,%r15d
    3687:	45 85 e4             	test   %r12d,%r12d
    368a:	0f 85 50 02 00 00    	jne    38e0 <sg_raster_triangle_depth_capture+0x430>
    3690:	45 39 c3             	cmp    %r8d,%r11d
    3693:	0f 8d ba 02 00 00    	jge    3953 <sg_raster_triangle_depth_capture+0x4a3>
    3699:	39 cd                	cmp    %ecx,%ebp
    369b:	0f 8d b2 02 00 00    	jge    3953 <sg_raster_triangle_depth_capture+0x4a3>
    36a1:	89 f9                	mov    %edi,%ecx
    36a3:	45 89 c8             	mov    %r9d,%r8d
    36a6:	8b 94 24 34 01 00 00 	mov    0x134(%rsp),%edx
    36ad:	45 89 d3             	mov    %r10d,%r11d
    36b0:	44 29 d1             	sub    %r10d,%ecx
    36b3:	45 29 f0             	sub    %r14d,%r8d
    36b6:	41 29 db             	sub    %ebx,%r11d
    36b9:	41 89 f5             	mov    %esi,%r13d
    36bc:	89 4c 24 34          	mov    %ecx,0x34(%rsp)
    36c0:	49 63 e8             	movslq %r8d,%rbp
    36c3:	c1 e2 08             	shl    $0x8,%edx
    36c6:	4d 63 e3             	movslq %r11d,%r12
    36c9:	44 89 44 24 48       	mov    %r8d,0x48(%rsp)
    36ce:	83 ea 80             	sub    $0xffffff80,%edx
    36d1:	66 0f ef d2          	pxor   %xmm2,%xmm2
    36d5:	45 29 cd             	sub    %r9d,%r13d
    36d8:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    36df:	f3 48 0f 2a d0       	cvtsi2ss %rax,%xmm2
    36e4:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 36ec <sg_raster_triangle_depth_capture+0x23c>
    36eb:	00 
    36ec:	44 89 ac 24 88 00 00 	mov    %r13d,0x88(%rsp)
    36f3:	00 
    36f4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    36f9:	c1 e1 08             	shl    $0x8,%ecx
    36fc:	83 e9 80             	sub    $0xffffff80,%ecx
    36ff:	f3 0f 5e e2          	divss  %xmm2,%xmm4
    3703:	41 89 c8             	mov    %ecx,%r8d
    3706:	41 29 d8             	sub    %ebx,%r8d
    3709:	49 63 d8             	movslq %r8d,%rbx
    370c:	41 89 d0             	mov    %edx,%r8d
    370f:	45 29 f0             	sub    %r14d,%r8d
    3712:	48 0f af dd          	imul   %rbp,%rbx
    3716:	4d 63 c0             	movslq %r8d,%r8
    3719:	4d 0f af c4          	imul   %r12,%r8
    371d:	4c 29 c3             	sub    %r8,%rbx
    3720:	41 89 c8             	mov    %ecx,%r8d
    3723:	29 f9                	sub    %edi,%ecx
    3725:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    372a:	45 29 d0             	sub    %r10d,%r8d
    372d:	48 63 c9             	movslq %ecx,%rcx
    3730:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    3735:	49 63 dd             	movslq %r13d,%rbx
    3738:	4d 63 d0             	movslq %r8d,%r10
    373b:	48 0f af cf          	imul   %rdi,%rcx
    373f:	41 89 d0             	mov    %edx,%r8d
    3742:	29 f2                	sub    %esi,%edx
    3744:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    3749:	48 63 d2             	movslq %edx,%rdx
    374c:	4c 63 6c 24 34       	movslq 0x34(%rsp),%r13
    3751:	45 29 c8             	sub    %r9d,%r8d
    3754:	4d 63 c0             	movslq %r8d,%r8
    3757:	4c 0f af d3          	imul   %rbx,%r10
    375b:	48 c1 e7 08          	shl    $0x8,%rdi
    375f:	48 0f af d6          	imul   %rsi,%rdx
    3763:	48 f7 de             	neg    %rsi
    3766:	48 89 bc 24 80 00 00 	mov    %rdi,0x80(%rsp)
    376d:	00 
    376e:	4d 0f af c5          	imul   %r13,%r8
    3772:	48 29 d1             	sub    %rdx,%rcx
    3775:	4c 89 e2             	mov    %r12,%rdx
    3778:	48 f7 da             	neg    %rdx
    377b:	4d 29 c2             	sub    %r8,%r10
    377e:	49 89 c8             	mov    %rcx,%r8
    3781:	f3 0f 11 a4 24 ec 00 	movss  %xmm4,0xec(%rsp)
    3788:	00 00 
    378a:	48 c1 e2 08          	shl    $0x8,%rdx
    378e:	4d 89 d1             	mov    %r10,%r9
    3791:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
    3798:	00 
    3799:	48 89 ea             	mov    %rbp,%rdx
    379c:	48 c1 e2 08          	shl    $0x8,%rdx
    37a0:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
    37a5:	4c 89 ea             	mov    %r13,%rdx
    37a8:	48 f7 da             	neg    %rdx
    37ab:	48 c1 e2 08          	shl    $0x8,%rdx
    37af:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
    37b6:	00 
    37b7:	48 89 da             	mov    %rbx,%rdx
    37ba:	48 c1 e2 08          	shl    $0x8,%rdx
    37be:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
    37c3:	48 89 f2             	mov    %rsi,%rdx
    37c6:	48 c1 e2 08          	shl    $0x8,%rdx
    37ca:	48 89 94 24 e0 00 00 	mov    %rdx,0xe0(%rsp)
    37d1:	00 
    37d2:	8b 90 fc 00 00 00    	mov    0xfc(%rax),%edx
    37d8:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    37df:	00 
    37e0:	f3 0f 10 58 18       	movss  0x18(%rax),%xmm3
    37e5:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    37ec:	00 
    37ed:	f3 0f 10 60 18       	movss  0x18(%rax),%xmm4
    37f2:	85 d2                	test   %edx,%edx
    37f4:	0f 84 76 01 00 00    	je     3970 <sg_raster_triangle_depth_capture+0x4c0>
    37fa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    37ff:	66 0f ef d2          	pxor   %xmm2,%xmm2
    3803:	f3 0f 10 b8 f4 00 00 	movss  0xf4(%rax),%xmm7
    380a:	00 
    380b:	0f 2f fa             	comiss %xmm2,%xmm7
    380e:	0f 84 46 01 00 00    	je     395a <sg_raster_triangle_depth_capture+0x4aa>
    3814:	f3 0f 5c cd          	subss  %xmm5,%xmm1
    3818:	f3 0f 5c ee          	subss  %xmm6,%xmm5
    381c:	41 0f 28 f3          	movaps %xmm11,%xmm6
    3820:	f3 44 0f 5c d0       	subss  %xmm0,%xmm10
    3825:	f3 0f 5c f0          	subss  %xmm0,%xmm6
    3829:	0f 28 d1             	movaps %xmm1,%xmm2
    382c:	f3 41 0f 59 d2       	mulss  %xmm10,%xmm2
    3831:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    3835:	f3 0f 58 f2          	addss  %xmm2,%xmm6
    3839:	66 0f ef d2          	pxor   %xmm2,%xmm2
    383d:	0f 2f f2             	comiss %xmm2,%xmm6
    3840:	0f 84 2a 01 00 00    	je     3970 <sg_raster_triangle_depth_capture+0x4c0>
    3846:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    384d:	00 
    384e:	44 0f 28 c3          	movaps %xmm3,%xmm8
    3852:	44 0f 28 cc          	movaps %xmm4,%xmm9
    3856:	f3 41 0f 5c c3       	subss  %xmm11,%xmm0
    385b:	f3 0f 10 50 18       	movss  0x18(%rax),%xmm2
    3860:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3865:	f3 44 0f 5c c2       	subss  %xmm2,%xmm8
    386a:	f3 44 0f 5c ca       	subss  %xmm2,%xmm9
    386f:	f3 45 0f 59 d0       	mulss  %xmm8,%xmm10
    3874:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    3879:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    387e:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    3883:	f3 41 0f 58 c2       	addss  %xmm10,%xmm0
    3888:	f3 44 0f 10 15 00 00 	movss  0x0(%rip),%xmm10        # 3891 <sg_raster_triangle_depth_capture+0x3e1>
    388f:	00 00 
    3891:	f3 0f 58 cd          	addss  %xmm5,%xmm1
    3895:	f3 0f 5e c6          	divss  %xmm6,%xmm0
    3899:	f3 0f 5e ce          	divss  %xmm6,%xmm1
    389d:	41 0f 54 c2          	andps  %xmm10,%xmm0
    38a1:	41 0f 54 ca          	andps  %xmm10,%xmm1
    38a5:	f3 0f 5f c1          	maxss  %xmm1,%xmm0
    38a9:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 38b1 <sg_raster_triangle_depth_capture+0x401>
    38b0:	00 
    38b1:	f3 0f 59 88 f8 00 00 	mulss  0xf8(%rax),%xmm1
    38b8:	00 
    38b9:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    38c0:	00 
    38c1:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    38c5:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    38c9:	f3 0f 11 84 24 f0 00 	movss  %xmm0,0xf0(%rsp)
    38d0:	00 00 
    38d2:	e9 b1 00 00 00       	jmp    3988 <sg_raster_triangle_depth_capture+0x4d8>
    38d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    38de:	00 00 
    38e0:	45 89 d8             	mov    %r11d,%r8d
    38e3:	4c 8b 5c 24 28       	mov    0x28(%rsp),%r11
    38e8:	44 8b 6c 24 14       	mov    0x14(%rsp),%r13d
    38ed:	41 8b 4b 64          	mov    0x64(%r11),%ecx
    38f1:	41 8b 53 68          	mov    0x68(%r11),%edx
    38f5:	41 39 c8             	cmp    %ecx,%r8d
    38f8:	44 0f 4c c1          	cmovl  %ecx,%r8d
    38fc:	39 d5                	cmp    %edx,%ebp
    38fe:	0f 4c ea             	cmovl  %edx,%ebp
    3901:	41 03 4b 6c          	add    0x6c(%r11),%ecx
    3905:	41 39 cd             	cmp    %ecx,%r13d
    3908:	44 89 84 24 34 01 00 	mov    %r8d,0x134(%rsp)
    390f:	00 
    3910:	41 0f 4e cd          	cmovle %r13d,%ecx
    3914:	41 03 53 70          	add    0x70(%r11),%edx
    3918:	89 ac 24 8c 00 00 00 	mov    %ebp,0x8c(%rsp)
    391f:	41 39 d7             	cmp    %edx,%r15d
    3922:	89 4c 24 14          	mov    %ecx,0x14(%rsp)
    3926:	44 0f 4f fa          	cmovg  %edx,%r15d
    392a:	41 39 c8             	cmp    %ecx,%r8d
    392d:	7d 09                	jge    3938 <sg_raster_triangle_depth_capture+0x488>
    392f:	44 39 fd             	cmp    %r15d,%ebp
    3932:	0f 8c 69 fd ff ff    	jl     36a1 <sg_raster_triangle_depth_capture+0x1f1>
    3938:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    393d:	48 81 c4 a8 04 00 00 	add    $0x4a8,%rsp
    3944:	5b                   	pop    %rbx
    3945:	5d                   	pop    %rbp
    3946:	41 5c                	pop    %r12
    3948:	41 5d                	pop    %r13
    394a:	41 5e                	pop    %r14
    394c:	41 5f                	pop    %r15
    394e:	c3                   	ret
    394f:	85 d2                	test   %edx,%edx
    3951:	75 e5                	jne    3938 <sg_raster_triangle_depth_capture+0x488>
    3953:	b8 01 00 00 00       	mov    $0x1,%eax
    3958:	eb e3                	jmp    393d <sg_raster_triangle_depth_capture+0x48d>
    395a:	0f 2f 90 f8 00 00 00 	comiss 0xf8(%rax),%xmm2
    3961:	0f 85 ad fe ff ff    	jne    3814 <sg_raster_triangle_depth_capture+0x364>
    3967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    396e:	00 00 
    3970:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    3977:	00 
    3978:	c7 84 24 f0 00 00 00 	movl   $0x0,0xf0(%rsp)
    397f:	00 00 00 00 
    3983:	f3 0f 10 50 18       	movss  0x18(%rax),%xmm2
    3988:	f3 0f 10 78 1c       	movss  0x1c(%rax),%xmm7
    398d:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    3994:	00 
    3995:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    399c:	00 00 00 00 00 
    39a1:	f3 0f 11 bc 24 f8 00 	movss  %xmm7,0xf8(%rsp)
    39a8:	00 00 
    39aa:	f3 0f 10 68 1c       	movss  0x1c(%rax),%xmm5
    39af:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    39b6:	00 
    39b7:	f3 0f 11 ac 24 fc 00 	movss  %xmm5,0xfc(%rsp)
    39be:	00 00 
    39c0:	f3 0f 10 78 1c       	movss  0x1c(%rax),%xmm7
    39c5:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    39cc:	00 
    39cd:	f3 0f 11 bc 24 00 01 	movss  %xmm7,0x100(%rsp)
    39d4:	00 00 
    39d6:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    39db:	48 85 c0             	test   %rax,%rax
    39de:	79 11                	jns    39f1 <sg_raster_triangle_depth_capture+0x541>
    39e0:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
    39e7:	00 
    39e8:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    39ef:	00 00 
    39f1:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    39f6:	48 85 c0             	test   %rax,%rax
    39f9:	0f 88 54 57 00 00    	js     9153 <sg_raster_triangle_depth_capture+0x5ca3>
    39ff:	48 01 44 24 40       	add    %rax,0x40(%rsp)
    3a04:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    3a0b:	00 
    3a0c:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
    3a13:	00 00 00 00 00 
    3a18:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    3a1d:	48 85 c0             	test   %rax,%rax
    3a20:	79 11                	jns    3a33 <sg_raster_triangle_depth_capture+0x583>
    3a22:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
    3a29:	00 
    3a2a:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    3a31:	00 00 
    3a33:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    3a38:	48 85 c0             	test   %rax,%rax
    3a3b:	0f 88 05 57 00 00    	js     9146 <sg_raster_triangle_depth_capture+0x5c96>
    3a41:	48 01 44 24 78       	add    %rax,0x78(%rsp)
    3a46:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
    3a4d:	00 
    3a4e:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    3a55:	00 00 00 00 00 
    3a5a:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
    3a61:	00 
    3a62:	48 85 c0             	test   %rax,%rax
    3a65:	79 14                	jns    3a7b <sg_raster_triangle_depth_capture+0x5cb>
    3a67:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
    3a6e:	00 
    3a6f:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    3a76:	00 00 00 00 00 
    3a7b:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    3a82:	00 
    3a83:	48 85 c0             	test   %rax,%rax
    3a86:	0f 88 ad 56 00 00    	js     9139 <sg_raster_triangle_depth_capture+0x5c89>
    3a8c:	48 01 84 24 b0 00 00 	add    %rax,0xb0(%rsp)
    3a93:	00 
    3a94:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    3a9b:	00 
    3a9c:	0f 28 c3             	movaps %xmm3,%xmm0
    3a9f:	f3 0f 5d c4          	minss  %xmm4,%xmm0
    3aa3:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    3aa9:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
    3ab0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3ab5:	f3 0f 5d c2          	minss  %xmm2,%xmm0
    3ab9:	f3 0f 5c 05 00 00 00 	subss  0x0(%rip),%xmm0        # 3ac1 <sg_raster_triangle_depth_capture+0x611>
    3ac0:	00 
    3ac1:	44 8b 90 c0 00 00 00 	mov    0xc0(%rax),%r10d
    3ac8:	f3 0f 11 84 24 24 02 	movss  %xmm0,0x224(%rsp)
    3acf:	00 00 
    3ad1:	45 85 d2             	test   %r10d,%r10d
    3ad4:	0f 85 26 58 00 00    	jne    9300 <sg_raster_triangle_depth_capture+0x5e50>
    3ada:	8b b8 50 05 00 00    	mov    0x550(%rax),%edi
    3ae0:	85 ff                	test   %edi,%edi
    3ae2:	0f 85 04 65 00 00    	jne    9fec <sg_raster_triangle_depth_capture+0x6b3c>
    3ae8:	8b b0 c0 3d 00 00    	mov    0x3dc0(%rax),%esi
    3aee:	85 f6                	test   %esi,%esi
    3af0:	75 64                	jne    3b56 <sg_raster_triangle_depth_capture+0x6a6>
    3af2:	8b 88 a8 37 00 00    	mov    0x37a8(%rax),%ecx
    3af8:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    3aff:	01 00 00 00 
    3b03:	85 c9                	test   %ecx,%ecx
    3b05:	75 29                	jne    3b30 <sg_raster_triangle_depth_capture+0x680>
    3b07:	44 8b b0 ac 37 00 00 	mov    0x37ac(%rax),%r14d
    3b0e:	45 85 f6             	test   %r14d,%r14d
    3b11:	75 1d                	jne    3b30 <sg_raster_triangle_depth_capture+0x680>
    3b13:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    3b1a:	00 
    3b1b:	8b 80 60 01 00 00    	mov    0x160(%rax),%eax
    3b21:	89 84 24 f4 00 00 00 	mov    %eax,0xf4(%rsp)
    3b28:	85 c0                	test   %eax,%eax
    3b2a:	0f 85 c1 70 00 00    	jne    abf1 <sg_raster_triangle_depth_capture+0x7741>
    3b30:	8b 8c 24 50 01 00 00 	mov    0x150(%rsp),%ecx
    3b37:	85 c9                	test   %ecx,%ecx
    3b39:	74 31                	je     3b6c <sg_raster_triangle_depth_capture+0x6bc>
    3b3b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3b40:	8b b0 08 01 00 00    	mov    0x108(%rax),%esi
    3b46:	31 c0                	xor    %eax,%eax
    3b48:	85 f6                	test   %esi,%esi
    3b4a:	0f 94 c0             	sete   %al
    3b4d:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
    3b54:	eb 16                	jmp    3b6c <sg_raster_triangle_depth_capture+0x6bc>
    3b56:	c7 84 24 50 01 00 00 	movl   $0x0,0x150(%rsp)
    3b5d:	00 00 00 00 
    3b61:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    3b68:	01 00 00 00 
    3b6c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3b71:	8b 88 84 00 00 00    	mov    0x84(%rax),%ecx
    3b77:	85 c9                	test   %ecx,%ecx
    3b79:	74 08                	je     3b83 <sg_raster_triangle_depth_capture+0x6d3>
    3b7b:	85 d2                	test   %edx,%edx
    3b7d:	0f 84 cb 6e 00 00    	je     aa4e <sg_raster_triangle_depth_capture+0x759e>
    3b83:	b9 01 00 00 00       	mov    $0x1,%ecx
    3b88:	66 0f 7e d0          	movd   %xmm2,%eax
    3b8c:	ba 01 00 00 00       	mov    $0x1,%edx
    3b91:	f7 d0                	not    %eax
    3b93:	a9 00 00 80 7f       	test   $0x7f800000,%eax
    3b98:	74 1b                	je     3bb5 <sg_raster_triangle_depth_capture+0x705>
    3b9a:	0f 2f 15 00 00 00 00 	comiss 0x0(%rip),%xmm2        # 3ba1 <sg_raster_triangle_depth_capture+0x6f1>
    3ba1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3ba5:	0f 97 c0             	seta   %al
    3ba8:	0f 2f c2             	comiss %xmm2,%xmm0
    3bab:	0f 97 c2             	seta   %dl
    3bae:	09 d0                	or     %edx,%eax
    3bb0:	0f b6 d0             	movzbl %al,%edx
    3bb3:	09 ca                	or     %ecx,%edx
    3bb5:	66 0f 7e d9          	movd   %xmm3,%ecx
    3bb9:	b8 01 00 00 00       	mov    $0x1,%eax
    3bbe:	f7 d1                	not    %ecx
    3bc0:	81 e1 00 00 80 7f    	and    $0x7f800000,%ecx
    3bc6:	74 1b                	je     3be3 <sg_raster_triangle_depth_capture+0x733>
    3bc8:	0f 2f 1d 00 00 00 00 	comiss 0x0(%rip),%xmm3        # 3bcf <sg_raster_triangle_depth_capture+0x71f>
    3bcf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3bd3:	0f 97 c0             	seta   %al
    3bd6:	0f 2f c3             	comiss %xmm3,%xmm0
    3bd9:	0f 97 c1             	seta   %cl
    3bdc:	09 c8                	or     %ecx,%eax
    3bde:	0f b6 c0             	movzbl %al,%eax
    3be1:	09 d0                	or     %edx,%eax
    3be3:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    3bea:	01 00 00 00 
    3bee:	66 0f 7e e2          	movd   %xmm4,%edx
    3bf2:	f7 d2                	not    %edx
    3bf4:	81 e2 00 00 80 7f    	and    $0x7f800000,%edx
    3bfa:	74 22                	je     3c1e <sg_raster_triangle_depth_capture+0x76e>
    3bfc:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3c00:	0f 2f c4             	comiss %xmm4,%xmm0
    3c03:	0f 97 c2             	seta   %dl
    3c06:	0f 2f 25 00 00 00 00 	comiss 0x0(%rip),%xmm4        # 3c0d <sg_raster_triangle_depth_capture+0x75d>
    3c0d:	0f 97 c1             	seta   %cl
    3c10:	09 ca                	or     %ecx,%edx
    3c12:	0f b6 d2             	movzbl %dl,%edx
    3c15:	09 c2                	or     %eax,%edx
    3c17:	89 94 24 20 01 00 00 	mov    %edx,0x120(%rsp)
    3c1e:	8b b4 24 8c 00 00 00 	mov    0x8c(%rsp),%esi
    3c25:	44 39 fe             	cmp    %r15d,%esi
    3c28:	0f 8d b8 6e 00 00    	jge    aae6 <sg_raster_triangle_depth_capture+0x7636>
    3c2e:	8b 44 24 48          	mov    0x48(%rsp),%eax
    3c32:	44 89 da             	mov    %r11d,%edx
    3c35:	8b 7c 24 34          	mov    0x34(%rsp),%edi
    3c39:	c1 e8 1f             	shr    $0x1f,%eax
    3c3c:	45 85 db             	test   %r11d,%r11d
    3c3f:	0f 94 c1             	sete   %cl
    3c42:	c1 ea 1f             	shr    $0x1f,%edx
    3c45:	21 c8                	and    %ecx,%eax
    3c47:	09 d0                	or     %edx,%eax
    3c49:	83 e8 01             	sub    $0x1,%eax
    3c4c:	89 84 24 58 01 00 00 	mov    %eax,0x158(%rsp)
    3c53:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
    3c5a:	c1 e8 1f             	shr    $0x1f,%eax
    3c5d:	85 ff                	test   %edi,%edi
    3c5f:	0f 94 c1             	sete   %cl
    3c62:	c1 ef 1f             	shr    $0x1f,%edi
    3c65:	21 c8                	and    %ecx,%eax
    3c67:	09 f8                	or     %edi,%eax
    3c69:	8b 7c 24 30          	mov    0x30(%rsp),%edi
    3c6d:	83 e8 01             	sub    $0x1,%eax
    3c70:	89 84 24 5c 01 00 00 	mov    %eax,0x15c(%rsp)
    3c77:	8b 44 24 20          	mov    0x20(%rsp),%eax
    3c7b:	c1 e8 1f             	shr    $0x1f,%eax
    3c7e:	85 ff                	test   %edi,%edi
    3c80:	0f 94 c1             	sete   %cl
    3c83:	c1 ef 1f             	shr    $0x1f,%edi
    3c86:	45 31 d2             	xor    %r10d,%r10d
    3c89:	48 c1 e3 09          	shl    $0x9,%rbx
    3c8d:	21 c8                	and    %ecx,%eax
    3c8f:	48 c1 e5 09          	shl    $0x9,%rbp
    3c93:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    3c98:	09 f8                	or     %edi,%eax
    3c9a:	48 89 9c 24 40 01 00 	mov    %rbx,0x140(%rsp)
    3ca1:	00 
    3ca2:	45 89 d3             	mov    %r10d,%r11d
    3ca5:	83 e8 01             	sub    $0x1,%eax
    3ca8:	48 89 ac 24 38 01 00 	mov    %rbp,0x138(%rsp)
    3caf:	00 
    3cb0:	4c 89 cd             	mov    %r9,%rbp
    3cb3:	89 84 24 54 01 00 00 	mov    %eax,0x154(%rsp)
    3cba:	4c 89 e0             	mov    %r12,%rax
    3cbd:	48 f7 d8             	neg    %rax
    3cc0:	48 c1 e0 09          	shl    $0x9,%rax
    3cc4:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    3cc9:	4c 89 e8             	mov    %r13,%rax
    3ccc:	48 f7 d8             	neg    %rax
    3ccf:	48 c1 e0 09          	shl    $0x9,%rax
    3cd3:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    3cd8:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3cdd:	48 f7 d8             	neg    %rax
    3ce0:	48 c1 e0 09          	shl    $0x9,%rax
    3ce4:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    3ce9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3cee:	48 c1 e0 09          	shl    $0x9,%rax
    3cf2:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
    3cf9:	00 
    3cfa:	8d 46 01             	lea    0x1(%rsi),%eax
    3cfd:	4c 89 c6             	mov    %r8,%rsi
    3d00:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
    3d07:	b8 00 80 00 00       	mov    $0x8000,%eax
    3d0c:	66 0f 6e e0          	movd   %eax,%xmm4
    3d10:	66 0f 70 e4 00       	pshufd $0x0,%xmm4,%xmm4
    3d15:	0f 29 a4 24 90 01 00 	movaps %xmm4,0x190(%rsp)
    3d1c:	00 
    3d1d:	0f 1f 00             	nopl   (%rax)
    3d20:	ba 0f 00 00 00       	mov    $0xf,%edx
    3d25:	44 39 bc 24 e8 00 00 	cmp    %r15d,0xe8(%rsp)
    3d2c:	00 
    3d2d:	b8 03 00 00 00       	mov    $0x3,%eax
    3d32:	8b 5c 24 14          	mov    0x14(%rsp),%ebx
    3d36:	0f 4c c2             	cmovl  %edx,%eax
    3d39:	8b 94 24 34 01 00 00 	mov    0x134(%rsp),%edx
    3d40:	89 44 24 34          	mov    %eax,0x34(%rsp)
    3d44:	39 da                	cmp    %ebx,%edx
    3d46:	0f 8d 77 09 00 00    	jge    46c3 <sg_raster_triangle_depth_capture+0x1213>
    3d4c:	48 63 9c 24 58 01 00 	movslq 0x158(%rsp),%rbx
    3d53:	00 
    3d54:	83 e0 05             	and    $0x5,%eax
    3d57:	89 54 24 10          	mov    %edx,0x10(%rsp)
    3d5b:	41 be 00 00 00 80    	mov    $0x80000000,%r14d
    3d61:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    3d66:	49 bc ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r12
    3d6d:	ff ff ff 
    3d70:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    3d75:	48 63 9c 24 5c 01 00 	movslq 0x15c(%rsp),%rbx
    3d7c:	00 
    3d7d:	48 89 6c 24 18       	mov    %rbp,0x18(%rsp)
    3d82:	48 89 5c 24 70       	mov    %rbx,0x70(%rsp)
    3d87:	48 63 9c 24 54 01 00 	movslq 0x154(%rsp),%rbx
    3d8e:	00 
    3d8f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    3d94:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    3d9b:	00 
    3d9c:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
    3da3:	44 89 bc 24 04 01 00 	mov    %r15d,0x104(%rsp)
    3daa:	00 
    3dab:	48 89 8c 24 08 01 00 	mov    %rcx,0x108(%rsp)
    3db2:	00 
    3db3:	48 89 ac 24 10 01 00 	mov    %rbp,0x110(%rsp)
    3dba:	00 
    3dbb:	48 89 b4 24 18 01 00 	mov    %rsi,0x118(%rsp)
    3dc2:	00 
    3dc3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3dca:	00 00 00 00 
    3dce:	66 90                	xchg   %ax,%ax
    3dd0:	8b 44 24 10          	mov    0x10(%rsp),%eax
    3dd4:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    3dd9:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    3dde:	8b 6c 24 34          	mov    0x34(%rsp),%ebp
    3de2:	8d 58 01             	lea    0x1(%rax),%ebx
    3de5:	8b 44 24 14          	mov    0x14(%rsp),%eax
    3de9:	89 5c 24 30          	mov    %ebx,0x30(%rsp)
    3ded:	39 c3                	cmp    %eax,%ebx
    3def:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3df4:	0f 4d ac 24 88 00 00 	cmovge 0x88(%rsp),%ebp
    3dfb:	00 
    3dfc:	48 01 c8             	add    %rcx,%rax
    3dff:	48 01 c7             	add    %rax,%rdi
    3e02:	0f 88 68 08 00 00    	js     4670 <sg_raster_triangle_depth_capture+0x11c0>
    3e08:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    3e0d:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
    3e12:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
    3e17:	48 8d 14 39          	lea    (%rcx,%rdi,1),%rdx
    3e1b:	48 01 d6             	add    %rdx,%rsi
    3e1e:	0f 88 4c 08 00 00    	js     4670 <sg_raster_triangle_depth_capture+0x11c0>
    3e24:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    3e29:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
    3e30:	00 
    3e31:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
    3e38:	00 
    3e39:	48 01 f9             	add    %rdi,%rcx
    3e3c:	48 01 ce             	add    %rcx,%rsi
    3e3f:	0f 88 2b 08 00 00    	js     4670 <sg_raster_triangle_depth_capture+0x11c0>
    3e45:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
    3e4c:	00 
    3e4d:	48 8d 34 0f          	lea    (%rdi,%rcx,1),%rsi
    3e51:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
    3e58:	00 
    3e59:	48 01 d7             	add    %rdx,%rdi
    3e5c:	48 09 fe             	or     %rdi,%rsi
    3e5f:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
    3e66:	00 
    3e67:	48 01 c7             	add    %rax,%rdi
    3e6a:	48 09 fe             	or     %rdi,%rsi
    3e6d:	0f 88 4d 0f 00 00    	js     4dc0 <sg_raster_triangle_depth_capture+0x1910>
    3e73:	83 bc 24 f4 00 00 00 	cmpl   $0x1,0xf4(%rsp)
    3e7a:	01 
    3e7b:	0f 84 1f 33 00 00    	je     71a0 <sg_raster_triangle_depth_capture+0x3cf0>
    3e81:	8b 84 24 30 01 00 00 	mov    0x130(%rsp),%eax
    3e88:	39 c3                	cmp    %eax,%ebx
    3e8a:	0f 8c 16 11 00 00    	jl     4fa6 <sg_raster_triangle_depth_capture+0x1af6>
    3e90:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
    3e97:	85 c0                	test   %eax,%eax
    3e99:	0f 85 36 1e 00 00    	jne    5cd5 <sg_raster_triangle_depth_capture+0x2825>
    3e9f:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    3ea4:	44 8b 97 c0 3d 00 00 	mov    0x3dc0(%rdi),%r10d
    3eab:	45 85 d2             	test   %r10d,%r10d
    3eae:	74 37                	je     3ee7 <sg_raster_triangle_depth_capture+0xa37>
    3eb0:	8b 74 24 10          	mov    0x10(%rsp),%esi
    3eb4:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    3ebb:	89 f0                	mov    %esi,%eax
    3ebd:	83 e2 1f             	and    $0x1f,%edx
    3ec0:	83 e6 07             	and    $0x7,%esi
    3ec3:	c1 f8 03             	sar    $0x3,%eax
    3ec6:	89 f1                	mov    %esi,%ecx
    3ec8:	83 e0 03             	and    $0x3,%eax
    3ecb:	8d 04 90             	lea    (%rax,%rdx,4),%eax
    3ece:	48 98                	cltq
    3ed0:	0f b6 94 07 c4 3d 00 	movzbl 0x3dc4(%rdi,%rax,1),%edx
    3ed7:	00 
    3ed8:	b8 80 00 00 00       	mov    $0x80,%eax
    3edd:	d3 e8                	shr    %cl,%eax
    3edf:	85 c2                	test   %eax,%edx
    3ee1:	0f 84 27 02 00 00    	je     410e <sg_raster_triangle_depth_capture+0xc5e>
    3ee7:	66 0f ef f6          	pxor   %xmm6,%xmm6
    3eeb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3eef:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    3ef6:	00 00 
    3ef8:	f3 0f 10 bc 24 f8 00 	movss  0xf8(%rsp),%xmm7
    3eff:	00 00 
    3f01:	f3 48 0f 2a 74 24 08 	cvtsi2ssq 0x8(%rsp),%xmm6
    3f08:	66 0f ef db          	pxor   %xmm3,%xmm3
    3f0c:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 3f14 <sg_raster_triangle_depth_capture+0xa64>
    3f13:	00 
    3f14:	f3 44 0f 10 84 24 fc 	movss  0xfc(%rsp),%xmm8
    3f1b:	00 00 00 
    3f1e:	f3 48 0f 2a 44 24 18 	cvtsi2ssq 0x18(%rsp),%xmm0
    3f25:	f3 44 0f 10 8c 24 00 	movss  0x100(%rsp),%xmm9
    3f2c:	01 00 00 
    3f2f:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    3f33:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    3f37:	f3 0f 59 fe          	mulss  %xmm6,%xmm7
    3f3b:	0f 28 d6             	movaps %xmm6,%xmm2
    3f3e:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    3f42:	f3 44 0f 59 c0       	mulss  %xmm0,%xmm8
    3f47:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    3f4b:	0f 28 d7             	movaps %xmm7,%xmm2
    3f4e:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    3f53:	f3 44 0f 59 c9       	mulss  %xmm1,%xmm9
    3f58:	f3 41 0f 58 d1       	addss  %xmm9,%xmm2
    3f5d:	0f 2f da             	comiss %xmm2,%xmm3
    3f60:	0f 83 a8 01 00 00    	jae    410e <sg_raster_triangle_depth_capture+0xc5e>
    3f66:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    3f6d:	00 
    3f6e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    3f73:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 3f7c <sg_raster_triangle_depth_capture+0xacc>
    3f7a:	00 00 
    3f7c:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    3f81:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    3f88:	00 
    3f89:	44 8b 8f 84 00 00 00 	mov    0x84(%rdi),%r9d
    3f90:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    3f95:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    3f9a:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    3fa1:	00 
    3fa2:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    3fa7:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    3fae:	00 00 
    3fb0:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    3fb4:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    3fb8:	45 85 c9             	test   %r9d,%r9d
    3fbb:	0f 84 7f 07 00 00    	je     4740 <sg_raster_triangle_depth_capture+0x1290>
    3fc1:	44 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%r8d
    3fc8:	45 85 c0             	test   %r8d,%r8d
    3fcb:	0f 85 6f 07 00 00    	jne    4740 <sg_raster_triangle_depth_capture+0x1290>
    3fd1:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    3fd8:	0f af 07             	imul   (%rdi),%eax
    3fdb:	8b 74 24 10          	mov    0x10(%rsp),%esi
    3fdf:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    3fe3:	01 f0                	add    %esi,%eax
    3fe5:	48 98                	cltq
    3fe7:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    3fec:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
    3ff2:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    3ff9:	2d 00 02 00 00       	sub    $0x200,%eax
    3ffe:	83 f8 07             	cmp    $0x7,%eax
    4001:	0f 87 27 07 00 00    	ja     472e <sg_raster_triangle_depth_capture+0x127e>
    4007:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 400e <sg_raster_triangle_depth_capture+0xb5e>
    400e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    4012:	48 01 d0             	add    %rdx,%rax
    4015:	ff e0                	jmp    *%rax
    4017:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    401e:	00 00 
    4020:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4025:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    402c:	00 00 
    402e:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    4035:	00 
    4036:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    403d:	00 00 
    403f:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    4046:	00 00 
    4048:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 404f <sg_raster_triangle_depth_capture+0xb9f>
    404f:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    4056:	00 00 
    4058:	e8 00 00 00 00       	call   405d <sg_raster_triangle_depth_capture+0xbad>
    405d:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 4065 <sg_raster_triangle_depth_capture+0xbb5>
    4064:	00 
    4065:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    406c:	00 00 
    406e:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    4075:	00 00 
    4077:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    407e:	00 00 
    4080:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4088 <sg_raster_triangle_depth_capture+0xbd8>
    4087:	00 
    4088:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    408f:	00 00 
    4091:	f3 0f 10 a4 24 20 02 	movss  0x220(%rsp),%xmm4
    4098:	00 00 
    409a:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    409e:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    40a2:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    40a6:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    40aa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    40af:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    40b6:	00 
    40b7:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    40bb:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    40bf:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    40c6:	00 
    40c7:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    40cb:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    40d2:	00 
    40d3:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    40da:	00 00 
    40dc:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    40e0:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    40e4:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    40eb:	00 00 
    40ed:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    40f4:	00 00 
    40f6:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    40fd:	8b 74 24 10          	mov    0x10(%rsp),%esi
    4101:	0f 28 c6             	movaps %xmm6,%xmm0
    4104:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    4109:	e8 00 00 00 00       	call   410e <sg_raster_triangle_depth_capture+0xc5e>
    410e:	40 f6 c5 02          	test   $0x2,%bpl
    4112:	0f 84 97 02 00 00    	je     43af <sg_raster_triangle_depth_capture+0xeff>
    4118:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    411f:	00 
    4120:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    4125:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    412a:	48 01 c2             	add    %rax,%rdx
    412d:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    4134:	00 
    4135:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
    4139:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    413e:	44 8b 8b c0 3d 00 00 	mov    0x3dc0(%rbx),%r9d
    4145:	45 85 c9             	test   %r9d,%r9d
    4148:	74 3a                	je     4184 <sg_raster_triangle_depth_capture+0xcd4>
    414a:	44 8b 54 24 30       	mov    0x30(%rsp),%r10d
    414f:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    4156:	44 89 d0             	mov    %r10d,%eax
    4159:	83 e1 1f             	and    $0x1f,%ecx
    415c:	c1 f8 03             	sar    $0x3,%eax
    415f:	83 e0 03             	and    $0x3,%eax
    4162:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    4165:	44 89 d1             	mov    %r10d,%ecx
    4168:	48 98                	cltq
    416a:	83 e1 07             	and    $0x7,%ecx
    416d:	0f b6 bc 03 c4 3d 00 	movzbl 0x3dc4(%rbx,%rax,1),%edi
    4174:	00 
    4175:	b8 80 00 00 00       	mov    $0x80,%eax
    417a:	d3 e8                	shr    %cl,%eax
    417c:	85 c7                	test   %eax,%edi
    417e:	0f 84 2b 02 00 00    	je     43af <sg_raster_triangle_depth_capture+0xeff>
    4184:	66 0f ef f6          	pxor   %xmm6,%xmm6
    4188:	66 0f ef c0          	pxor   %xmm0,%xmm0
    418c:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    4193:	00 00 
    4195:	f3 44 0f 10 8c 24 f8 	movss  0xf8(%rsp),%xmm9
    419c:	00 00 00 
    419f:	f3 48 0f 2a f6       	cvtsi2ss %rsi,%xmm6
    41a4:	66 0f ef db          	pxor   %xmm3,%xmm3
    41a8:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 41b0 <sg_raster_triangle_depth_capture+0xd00>
    41af:	00 
    41b0:	f3 0f 10 bc 24 fc 00 	movss  0xfc(%rsp),%xmm7
    41b7:	00 00 
    41b9:	f3 44 0f 10 84 24 00 	movss  0x100(%rsp),%xmm8
    41c0:	01 00 00 
    41c3:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    41c8:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    41cc:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    41d0:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
    41d5:	0f 28 d6             	movaps %xmm6,%xmm2
    41d8:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    41dc:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
    41e0:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    41e4:	41 0f 28 d1          	movaps %xmm9,%xmm2
    41e8:	f3 0f 58 d7          	addss  %xmm7,%xmm2
    41ec:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    41f1:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    41f6:	0f 2f da             	comiss %xmm2,%xmm3
    41f9:	0f 83 b0 01 00 00    	jae    43af <sg_raster_triangle_depth_capture+0xeff>
    41ff:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    4206:	00 
    4207:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    420c:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 4215 <sg_raster_triangle_depth_capture+0xd65>
    4213:	00 00 
    4215:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    421a:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    4221:	00 
    4222:	44 8b 81 84 00 00 00 	mov    0x84(%rcx),%r8d
    4229:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    422e:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    4233:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    423a:	00 
    423b:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    4240:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    4247:	00 00 
    4249:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    424d:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    4251:	45 85 c0             	test   %r8d,%r8d
    4254:	0f 84 46 09 00 00    	je     4ba0 <sg_raster_triangle_depth_capture+0x16f0>
    425a:	8b b9 c0 00 00 00    	mov    0xc0(%rcx),%edi
    4260:	85 ff                	test   %edi,%edi
    4262:	0f 85 38 09 00 00    	jne    4ba0 <sg_raster_triangle_depth_capture+0x16f0>
    4268:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    426f:	0f af 01             	imul   (%rcx),%eax
    4272:	8b 7c 24 30          	mov    0x30(%rsp),%edi
    4276:	48 8b 51 10          	mov    0x10(%rcx),%rdx
    427a:	01 f8                	add    %edi,%eax
    427c:	48 98                	cltq
    427e:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    4283:	8b 81 88 00 00 00    	mov    0x88(%rcx),%eax
    4289:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    4290:	2d 00 02 00 00       	sub    $0x200,%eax
    4295:	83 f8 07             	cmp    $0x7,%eax
    4298:	0f 87 e8 08 00 00    	ja     4b86 <sg_raster_triangle_depth_capture+0x16d6>
    429e:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 42a5 <sg_raster_triangle_depth_capture+0xdf5>
    42a5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    42a9:	48 01 d0             	add    %rdx,%rax
    42ac:	ff e0                	jmp    *%rax
    42ae:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    42b5:	00 00 
    42b7:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    42bc:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    42c3:	00 00 
    42c5:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
    42cc:	00 00 
    42ce:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    42d5:	00 00 
    42d7:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    42de:	00 00 
    42e0:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    42e7:	00 00 
    42e9:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
    42ee:	41 0f 28 c2          	movaps %xmm10,%xmm0
    42f2:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 42f9 <sg_raster_triangle_depth_capture+0xe49>
    42f9:	e8 00 00 00 00       	call   42fe <sg_raster_triangle_depth_capture+0xe4e>
    42fe:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 4306 <sg_raster_triangle_depth_capture+0xe56>
    4305:	00 
    4306:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    430d:	00 00 
    430f:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    4316:	00 00 
    4318:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    431f:	00 00 
    4321:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4329 <sg_raster_triangle_depth_capture+0xe79>
    4328:	00 
    4329:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    4330:	00 00 
    4332:	f3 0f 10 a4 24 20 02 	movss  0x220(%rsp),%xmm4
    4339:	00 00 
    433b:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    433f:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    4343:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4347:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    434b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4350:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    4357:	00 
    4358:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    435c:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4360:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    4367:	00 
    4368:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    436c:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    4373:	00 
    4374:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    437b:	00 00 
    437d:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4381:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    4385:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    438c:	00 00 
    438e:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    4395:	00 00 
    4397:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    439e:	8b 74 24 30          	mov    0x30(%rsp),%esi
    43a2:	0f 28 c6             	movaps %xmm6,%xmm0
    43a5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    43aa:	e8 00 00 00 00       	call   43af <sg_raster_triangle_depth_capture+0xeff>
    43af:	40 f6 c5 04          	test   $0x4,%bpl
    43b3:	0f 84 91 02 00 00    	je     464a <sg_raster_triangle_depth_capture+0x119a>
    43b9:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    43be:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    43c3:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    43c8:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    43cd:	48 01 c2             	add    %rax,%rdx
    43d0:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    43d5:	8b 9f c0 3d 00 00    	mov    0x3dc0(%rdi),%ebx
    43db:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
    43df:	85 db                	test   %ebx,%ebx
    43e1:	74 37                	je     441a <sg_raster_triangle_depth_capture+0xf6a>
    43e3:	8b 5c 24 10          	mov    0x10(%rsp),%ebx
    43e7:	8b 8c 24 e8 00 00 00 	mov    0xe8(%rsp),%ecx
    43ee:	89 d8                	mov    %ebx,%eax
    43f0:	83 e1 1f             	and    $0x1f,%ecx
    43f3:	83 e3 07             	and    $0x7,%ebx
    43f6:	c1 f8 03             	sar    $0x3,%eax
    43f9:	83 e0 03             	and    $0x3,%eax
    43fc:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    43ff:	89 d9                	mov    %ebx,%ecx
    4401:	48 98                	cltq
    4403:	0f b6 bc 07 c4 3d 00 	movzbl 0x3dc4(%rdi,%rax,1),%edi
    440a:	00 
    440b:	b8 80 00 00 00       	mov    $0x80,%eax
    4410:	d3 e8                	shr    %cl,%eax
    4412:	85 c7                	test   %eax,%edi
    4414:	0f 84 30 02 00 00    	je     464a <sg_raster_triangle_depth_capture+0x119a>
    441a:	66 0f ef f6          	pxor   %xmm6,%xmm6
    441e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    4422:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    4429:	00 00 
    442b:	f3 44 0f 10 8c 24 f8 	movss  0xf8(%rsp),%xmm9
    4432:	00 00 00 
    4435:	f3 48 0f 2a f6       	cvtsi2ss %rsi,%xmm6
    443a:	66 0f ef db          	pxor   %xmm3,%xmm3
    443e:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 4446 <sg_raster_triangle_depth_capture+0xf96>
    4445:	00 
    4446:	f3 0f 10 bc 24 fc 00 	movss  0xfc(%rsp),%xmm7
    444d:	00 00 
    444f:	f3 44 0f 10 84 24 00 	movss  0x100(%rsp),%xmm8
    4456:	01 00 00 
    4459:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    445e:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    4462:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4466:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
    446b:	0f 28 d6             	movaps %xmm6,%xmm2
    446e:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4472:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
    4476:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    447a:	41 0f 28 d1          	movaps %xmm9,%xmm2
    447e:	f3 0f 58 d7          	addss  %xmm7,%xmm2
    4482:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    4487:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    448c:	0f 2f da             	comiss %xmm2,%xmm3
    448f:	0f 83 b5 01 00 00    	jae    464a <sg_raster_triangle_depth_capture+0x119a>
    4495:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    449c:	00 
    449d:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    44a2:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 44ab <sg_raster_triangle_depth_capture+0xffb>
    44a9:	00 00 
    44ab:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    44b0:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    44b7:	00 
    44b8:	44 8b 9a 84 00 00 00 	mov    0x84(%rdx),%r11d
    44bf:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    44c4:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    44c9:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    44d0:	00 
    44d1:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    44d6:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    44dd:	00 00 
    44df:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    44e3:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    44e7:	45 85 db             	test   %r11d,%r11d
    44ea:	0f 84 80 04 00 00    	je     4970 <sg_raster_triangle_depth_capture+0x14c0>
    44f0:	44 8b 92 c0 00 00 00 	mov    0xc0(%rdx),%r10d
    44f7:	45 85 d2             	test   %r10d,%r10d
    44fa:	0f 85 70 04 00 00    	jne    4970 <sg_raster_triangle_depth_capture+0x14c0>
    4500:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
    4507:	0f af 02             	imul   (%rdx),%eax
    450a:	8b 7c 24 10          	mov    0x10(%rsp),%edi
    450e:	01 f8                	add    %edi,%eax
    4510:	48 89 d7             	mov    %rdx,%rdi
    4513:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    4517:	48 98                	cltq
    4519:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    451e:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
    4524:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    452b:	2d 00 02 00 00       	sub    $0x200,%eax
    4530:	83 f8 07             	cmp    $0x7,%eax
    4533:	0f 87 1c 04 00 00    	ja     4955 <sg_raster_triangle_depth_capture+0x14a5>
    4539:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 4540 <sg_raster_triangle_depth_capture+0x1090>
    4540:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    4544:	48 01 d0             	add    %rdx,%rax
    4547:	ff e0                	jmp    *%rax
    4549:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    4550:	00 00 
    4552:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4557:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    455e:	00 00 
    4560:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
    4567:	00 00 
    4569:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    4570:	00 00 
    4572:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    4579:	00 00 
    457b:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    4582:	00 00 
    4584:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
    4589:	41 0f 28 c2          	movaps %xmm10,%xmm0
    458d:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 4594 <sg_raster_triangle_depth_capture+0x10e4>
    4594:	e8 00 00 00 00       	call   4599 <sg_raster_triangle_depth_capture+0x10e9>
    4599:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 45a1 <sg_raster_triangle_depth_capture+0x10f1>
    45a0:	00 
    45a1:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    45a8:	00 00 
    45aa:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    45b1:	00 00 
    45b3:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    45ba:	00 00 
    45bc:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 45c4 <sg_raster_triangle_depth_capture+0x1114>
    45c3:	00 
    45c4:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    45cb:	00 00 
    45cd:	f3 0f 10 a4 24 20 02 	movss  0x220(%rsp),%xmm4
    45d4:	00 00 
    45d6:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    45da:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    45de:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    45e2:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    45e6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    45eb:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    45f2:	00 
    45f3:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    45f7:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    45fb:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    4602:	00 
    4603:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4607:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    460e:	00 
    460f:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    4616:	00 00 
    4618:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    461c:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    4620:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    4627:	00 00 
    4629:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    4630:	00 00 
    4632:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    4639:	8b 74 24 10          	mov    0x10(%rsp),%esi
    463d:	0f 28 c6             	movaps %xmm6,%xmm0
    4640:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    4645:	e8 00 00 00 00       	call   464a <sg_raster_triangle_depth_capture+0x119a>
    464a:	83 e5 08             	and    $0x8,%ebp
    464d:	0f 85 25 12 00 00    	jne    5878 <sg_raster_triangle_depth_capture+0x23c8>
    4653:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    465a:	01 00 00 00 
    465e:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    4664:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    466b:	00 00 00 00 
    466f:	90                   	nop
    4670:	83 44 24 10 02       	addl   $0x2,0x10(%rsp)
    4675:	8b 74 24 14          	mov    0x14(%rsp),%esi
    4679:	8b 44 24 10          	mov    0x10(%rsp),%eax
    467d:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
    4682:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
    4687:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    468c:	48 01 4c 24 08       	add    %rcx,0x8(%rsp)
    4691:	48 01 5c 24 18       	add    %rbx,0x18(%rsp)
    4696:	48 01 7c 24 20       	add    %rdi,0x20(%rsp)
    469b:	39 f0                	cmp    %esi,%eax
    469d:	0f 8c 2d f7 ff ff    	jl     3dd0 <sg_raster_triangle_depth_capture+0x920>
    46a3:	44 8b bc 24 04 01 00 	mov    0x104(%rsp),%r15d
    46aa:	00 
    46ab:	48 8b 8c 24 08 01 00 	mov    0x108(%rsp),%rcx
    46b2:	00 
    46b3:	48 8b ac 24 10 01 00 	mov    0x110(%rsp),%rbp
    46ba:	00 
    46bb:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
    46c2:	00 
    46c3:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
    46ca:	00 
    46cb:	83 84 24 8c 00 00 00 	addl   $0x2,0x8c(%rsp)
    46d2:	02 
    46d3:	83 84 24 e8 00 00 00 	addl   $0x2,0xe8(%rsp)
    46da:	02 
    46db:	48 01 c1             	add    %rax,%rcx
    46de:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
    46e5:	00 
    46e6:	48 01 c5             	add    %rax,%rbp
    46e9:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
    46f0:	00 
    46f1:	48 01 c6             	add    %rax,%rsi
    46f4:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    46fb:	44 39 f8             	cmp    %r15d,%eax
    46fe:	0f 8c 1c f6 ff ff    	jl     3d20 <sg_raster_triangle_depth_capture+0x870>
    4704:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4709:	8b 78 74             	mov    0x74(%rax),%edi
    470c:	85 ff                	test   %edi,%edi
    470e:	0f 85 24 f2 ff ff    	jne    3938 <sg_raster_triangle_depth_capture+0x488>
    4714:	45 85 db             	test   %r11d,%r11d
    4717:	0f 84 36 f2 ff ff    	je     3953 <sg_raster_triangle_depth_capture+0x4a3>
    471d:	8b 84 24 20 01 00 00 	mov    0x120(%rsp),%eax
    4724:	01 c0                	add    %eax,%eax
    4726:	83 f0 02             	xor    $0x2,%eax
    4729:	e9 0f f2 ff ff       	jmp    393d <sg_raster_triangle_depth_capture+0x48d>
    472e:	31 c0                	xor    %eax,%eax
    4730:	0f 2f c6             	comiss %xmm6,%xmm0
    4733:	0f 97 c0             	seta   %al
    4736:	85 c0                	test   %eax,%eax
    4738:	0f 84 d0 f9 ff ff    	je     410e <sg_raster_triangle_depth_capture+0xc5e>
    473e:	66 90                	xchg   %ax,%ax
    4740:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    4747:	00 
    4748:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    474f:	00 
    4750:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    4757:	00 
    4758:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    475d:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
    4762:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    4767:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    476c:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4771:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    4776:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    477d:	00 00 
    477f:	f3 0f 59 cf          	mulss  %xmm7,%xmm1
    4783:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    478a:	00 
    478b:	f3 44 0f 10 9a 98 00 	movss  0x98(%rdx),%xmm11
    4792:	00 00 
    4794:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
    479b:	00 00 
    479d:	f3 0f 59 d7          	mulss  %xmm7,%xmm2
    47a1:	f3 0f 59 df          	mulss  %xmm7,%xmm3
    47a5:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    47ab:	f3 0f 59 e7          	mulss  %xmm7,%xmm4
    47af:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    47b6:	83 e8 01             	sub    $0x1,%eax
    47b9:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    47bd:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
    47c2:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    47c7:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    47cb:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
    47d0:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    47d5:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    47da:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    47de:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
    47e3:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    47ea:	00 00 
    47ec:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    47f3:	00 00 
    47f5:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    47fa:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    47fe:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
    4803:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4808:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    480d:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4811:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
    4816:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    481d:	00 00 
    481f:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4826:	00 00 
    4828:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    482d:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4831:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
    4836:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    483b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    4840:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4844:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
    4849:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    4850:	00 00 
    4852:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    4859:	00 00 
    485b:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    4860:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4864:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    4869:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    4870:	00 00 
    4872:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    4879:	00 00 
    487b:	83 f8 01             	cmp    $0x1,%eax
    487e:	0f 86 7b 32 00 00    	jbe    7aff <sg_raster_triangle_depth_capture+0x464f>
    4884:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    488b:	00 
    488c:	8b b0 60 01 00 00    	mov    0x160(%rax),%esi
    4892:	85 f6                	test   %esi,%esi
    4894:	0f 85 81 36 00 00    	jne    7f1b <sg_raster_triangle_depth_capture+0x4a6b>
    489a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    489f:	44 8b 90 08 01 00 00 	mov    0x108(%rax),%r10d
    48a6:	45 85 d2             	test   %r10d,%r10d
    48a9:	0f 84 47 f8 ff ff    	je     40f6 <sg_raster_triangle_depth_capture+0xc46>
    48af:	f3 41 0f 59 fa       	mulss  %xmm10,%xmm7
    48b4:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    48ba:	f3 45 0f 59 c3       	mulss  %xmm11,%xmm8
    48bf:	f3 45 0f 59 cc       	mulss  %xmm12,%xmm9
    48c4:	f3 41 0f 58 f8       	addss  %xmm8,%xmm7
    48c9:	f3 41 0f 58 f9       	addss  %xmm9,%xmm7
    48ce:	f3 41 0f 59 fd       	mulss  %xmm13,%xmm7
    48d3:	0f 28 c7             	movaps %xmm7,%xmm0
    48d6:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 48dd <sg_raster_triangle_depth_capture+0x142d>
    48dd:	3d 00 08 00 00       	cmp    $0x800,%eax
    48e2:	0f 84 2f f7 ff ff    	je     4017 <sg_raster_triangle_depth_capture+0xb67>
    48e8:	3d 01 08 00 00       	cmp    $0x801,%eax
    48ed:	0f 84 82 56 00 00    	je     9f75 <sg_raster_triangle_depth_capture+0x6ac5>
    48f3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    48f8:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    48fd:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    4904:	00 
    4905:	0f 28 ef             	movaps %xmm7,%xmm5
    4908:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    490f:	00 
    4910:	41 0f 2f e8          	comiss %xmm8,%xmm5
    4914:	0f 84 90 f7 ff ff    	je     40aa <sg_raster_triangle_depth_capture+0xbfa>
    491a:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    491e:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    4922:	44 0f 2f c7          	comiss %xmm7,%xmm8
    4926:	0f 87 a5 63 00 00    	ja     acd1 <sg_raster_triangle_depth_capture+0x7821>
    492c:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 4934 <sg_raster_triangle_depth_capture+0x1484>
    4933:	00 
    4934:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 493c <sg_raster_triangle_depth_capture+0x148c>
    493b:	00 
    493c:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    4940:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4944:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4948:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    494c:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4950:	e9 55 f7 ff ff       	jmp    40aa <sg_raster_triangle_depth_capture+0xbfa>
    4955:	31 c0                	xor    %eax,%eax
    4957:	0f 2f c6             	comiss %xmm6,%xmm0
    495a:	0f 97 c0             	seta   %al
    495d:	85 c0                	test   %eax,%eax
    495f:	0f 84 e5 fc ff ff    	je     464a <sg_raster_triangle_depth_capture+0x119a>
    4965:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    496c:	00 00 00 00 
    4970:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    4977:	00 
    4978:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    497f:	00 
    4980:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    4987:	00 
    4988:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    498d:	f3 0f 10 46 20       	movss  0x20(%rsi),%xmm0
    4992:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    4997:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    499c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    49a0:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    49a5:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    49ac:	00 00 
    49ae:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    49b3:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    49ba:	00 
    49bb:	f3 44 0f 10 9e 98 00 	movss  0x98(%rsi),%xmm11
    49c2:	00 00 
    49c4:	f3 44 0f 10 a2 98 00 	movss  0x98(%rdx),%xmm12
    49cb:	00 00 
    49cd:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
    49d2:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
    49d7:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    49dd:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
    49e2:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    49e9:	83 e8 01             	sub    $0x1,%eax
    49ec:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    49f0:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
    49f5:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    49fa:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    49fe:	f3 0f 10 46 24       	movss  0x24(%rsi),%xmm0
    4a03:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4a07:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    4a0c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4a10:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
    4a15:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    4a1c:	00 00 
    4a1e:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    4a25:	00 00 
    4a27:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4a2c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4a30:	f3 0f 10 46 28       	movss  0x28(%rsi),%xmm0
    4a35:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4a39:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    4a3e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4a42:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
    4a47:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    4a4e:	00 00 
    4a50:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4a57:	00 00 
    4a59:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4a5e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4a62:	f3 0f 10 46 2c       	movss  0x2c(%rsi),%xmm0
    4a67:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4a6b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    4a70:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4a74:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
    4a79:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    4a80:	00 00 
    4a82:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    4a89:	00 00 
    4a8b:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4a90:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4a94:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    4a99:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    4aa0:	00 00 
    4aa2:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    4aa9:	00 00 
    4aab:	83 f8 01             	cmp    $0x1,%eax
    4aae:	0f 86 03 32 00 00    	jbe    7cb7 <sg_raster_triangle_depth_capture+0x4807>
    4ab4:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    4abb:	00 
    4abc:	44 8b 88 60 01 00 00 	mov    0x160(%rax),%r9d
    4ac3:	45 85 c9             	test   %r9d,%r9d
    4ac6:	0f 85 e0 41 00 00    	jne    8cac <sg_raster_triangle_depth_capture+0x57fc>
    4acc:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4ad1:	8b 90 08 01 00 00    	mov    0x108(%rax),%edx
    4ad7:	85 d2                	test   %edx,%edx
    4ad9:	0f 84 53 fb ff ff    	je     4632 <sg_raster_triangle_depth_capture+0x1182>
    4adf:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
    4ae4:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    4aea:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
    4aef:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
    4af4:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
    4af9:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
    4afe:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
    4b03:	41 0f 28 c2          	movaps %xmm10,%xmm0
    4b07:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 4b0e <sg_raster_triangle_depth_capture+0x165e>
    4b0e:	3d 00 08 00 00       	cmp    $0x800,%eax
    4b13:	0f 84 de 53 00 00    	je     9ef7 <sg_raster_triangle_depth_capture+0x6a47>
    4b19:	3d 01 08 00 00       	cmp    $0x801,%eax
    4b1e:	0f 84 25 fa ff ff    	je     4549 <sg_raster_triangle_depth_capture+0x1099>
    4b24:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4b29:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    4b2e:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    4b35:	00 
    4b36:	0f 28 ef             	movaps %xmm7,%xmm5
    4b39:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    4b40:	00 
    4b41:	41 0f 2f e8          	comiss %xmm8,%xmm5
    4b45:	0f 84 9b fa ff ff    	je     45e6 <sg_raster_triangle_depth_capture+0x1136>
    4b4b:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    4b4f:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    4b53:	44 0f 2f c7          	comiss %xmm7,%xmm8
    4b57:	0f 87 5d 61 00 00    	ja     acba <sg_raster_triangle_depth_capture+0x780a>
    4b5d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 4b65 <sg_raster_triangle_depth_capture+0x16b5>
    4b64:	00 
    4b65:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4b6d <sg_raster_triangle_depth_capture+0x16bd>
    4b6c:	00 
    4b6d:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    4b71:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4b75:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4b79:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    4b7d:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4b81:	e9 60 fa ff ff       	jmp    45e6 <sg_raster_triangle_depth_capture+0x1136>
    4b86:	31 c0                	xor    %eax,%eax
    4b88:	0f 2f c6             	comiss %xmm6,%xmm0
    4b8b:	0f 97 c0             	seta   %al
    4b8e:	85 c0                	test   %eax,%eax
    4b90:	0f 84 19 f8 ff ff    	je     43af <sg_raster_triangle_depth_capture+0xeff>
    4b96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4b9d:	00 00 00 
    4ba0:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    4ba7:	00 
    4ba8:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    4baf:	00 
    4bb0:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    4bb7:	00 
    4bb8:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    4bbd:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
    4bc2:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    4bc7:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    4bcc:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4bd0:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    4bd5:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    4bdc:	00 00 
    4bde:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    4be3:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    4bea:	00 
    4beb:	f3 44 0f 10 9a 98 00 	movss  0x98(%rdx),%xmm11
    4bf2:	00 00 
    4bf4:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
    4bfb:	00 00 
    4bfd:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
    4c02:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
    4c07:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    4c0d:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
    4c12:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    4c19:	83 e8 01             	sub    $0x1,%eax
    4c1c:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4c20:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
    4c25:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4c2a:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4c2e:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
    4c33:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4c37:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    4c3c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4c40:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
    4c45:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    4c4c:	00 00 
    4c4e:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    4c55:	00 00 
    4c57:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4c5c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4c60:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
    4c65:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4c69:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    4c6e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4c72:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
    4c77:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    4c7e:	00 00 
    4c80:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4c87:	00 00 
    4c89:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4c8e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4c92:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
    4c97:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4c9b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    4ca0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4ca4:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
    4ca9:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    4cb0:	00 00 
    4cb2:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    4cb9:	00 00 
    4cbb:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4cc0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4cc4:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    4cc9:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    4cd0:	00 00 
    4cd2:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    4cd9:	00 00 
    4cdb:	83 f8 01             	cmp    $0x1,%eax
    4cde:	0f 86 ac 2a 00 00    	jbe    7790 <sg_raster_triangle_depth_capture+0x42e0>
    4ce4:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    4ceb:	00 
    4cec:	8b b0 60 01 00 00    	mov    0x160(%rax),%esi
    4cf2:	85 f6                	test   %esi,%esi
    4cf4:	0f 85 a7 36 00 00    	jne    83a1 <sg_raster_triangle_depth_capture+0x4ef1>
    4cfa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4cff:	44 8b a8 08 01 00 00 	mov    0x108(%rax),%r13d
    4d06:	45 85 ed             	test   %r13d,%r13d
    4d09:	0f 84 88 f6 ff ff    	je     4397 <sg_raster_triangle_depth_capture+0xee7>
    4d0f:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
    4d14:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    4d1a:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
    4d1f:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
    4d24:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
    4d29:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
    4d2e:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
    4d33:	41 0f 28 c2          	movaps %xmm10,%xmm0
    4d37:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 4d3e <sg_raster_triangle_depth_capture+0x188e>
    4d3e:	3d 00 08 00 00       	cmp    $0x800,%eax
    4d43:	0f 84 ed 51 00 00    	je     9f36 <sg_raster_triangle_depth_capture+0x6a86>
    4d49:	3d 01 08 00 00       	cmp    $0x801,%eax
    4d4e:	0f 84 5a f5 ff ff    	je     42ae <sg_raster_triangle_depth_capture+0xdfe>
    4d54:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4d59:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    4d5e:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    4d65:	00 
    4d66:	0f 28 ef             	movaps %xmm7,%xmm5
    4d69:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    4d70:	00 
    4d71:	41 0f 2f e8          	comiss %xmm8,%xmm5
    4d75:	0f 84 d0 f5 ff ff    	je     434b <sg_raster_triangle_depth_capture+0xe9b>
    4d7b:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    4d7f:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    4d83:	44 0f 2f c7          	comiss %xmm7,%xmm8
    4d87:	0f 87 16 5f 00 00    	ja     aca3 <sg_raster_triangle_depth_capture+0x77f3>
    4d8d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 4d95 <sg_raster_triangle_depth_capture+0x18e5>
    4d94:	00 
    4d95:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4d9d <sg_raster_triangle_depth_capture+0x18ed>
    4d9c:	00 
    4d9d:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    4da1:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4da5:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4da9:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    4dad:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4db1:	e9 95 f5 ff ff       	jmp    434b <sg_raster_triangle_depth_capture+0xe9b>
    4db6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4dbd:	00 00 00 
    4dc0:	48 8b 9c 24 b8 00 00 	mov    0xb8(%rsp),%rbx
    4dc7:	00 
    4dc8:	41 b9 ff ff ff 7f    	mov    $0x7fffffff,%r9d
    4dce:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
    4dd2:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    4dd7:	48 8d 3c 1e          	lea    (%rsi,%rbx,1),%rdi
    4ddb:	4c 39 f7             	cmp    %r14,%rdi
    4dde:	7d 0c                	jge    4dec <sg_raster_triangle_depth_capture+0x193c>
    4de0:	4c 39 e7             	cmp    %r12,%rdi
    4de3:	0f 8e 7c 58 00 00    	jle    a665 <sg_raster_triangle_depth_capture+0x71b5>
    4de9:	41 89 f9             	mov    %edi,%r9d
    4dec:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    4df1:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    4df6:	4c 8d 04 03          	lea    (%rbx,%rax,1),%r8
    4dfa:	4d 39 f0             	cmp    %r14,%r8
    4dfd:	7d 0c                	jge    4e0b <sg_raster_triangle_depth_capture+0x195b>
    4dff:	4d 39 e0             	cmp    %r12,%r8
    4e02:	0f 8e 48 58 00 00    	jle    a650 <sg_raster_triangle_depth_capture+0x71a0>
    4e08:	44 89 c7             	mov    %r8d,%edi
    4e0b:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
    4e11:	4c 39 f6             	cmp    %r14,%rsi
    4e14:	7d 0c                	jge    4e22 <sg_raster_triangle_depth_capture+0x1972>
    4e16:	4c 39 e6             	cmp    %r12,%rsi
    4e19:	0f 8e 3b 58 00 00    	jle    a65a <sg_raster_triangle_depth_capture+0x71aa>
    4e1f:	41 89 f0             	mov    %esi,%r8d
    4e22:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
    4e27:	4c 39 f0             	cmp    %r14,%rax
    4e2a:	7d 0b                	jge    4e37 <sg_raster_triangle_depth_capture+0x1987>
    4e2c:	4c 39 e0             	cmp    %r12,%rax
    4e2f:	0f 8e 3b 58 00 00    	jle    a670 <sg_raster_triangle_depth_capture+0x71c0>
    4e35:	89 c6                	mov    %eax,%esi
    4e37:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    4e3e:	00 
    4e3f:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    4e44:	66 0f 6e ce          	movd   %esi,%xmm1
    4e48:	66 0f 6e c7          	movd   %edi,%xmm0
    4e4c:	66 41 0f 3a 22 c8 01 	pinsrd $0x1,%r8d,%xmm1
    4e53:	66 41 0f 3a 22 c1 01 	pinsrd $0x1,%r9d,%xmm0
    4e5a:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
    4e60:	48 01 d0             	add    %rdx,%rax
    4e63:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    4e67:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
    4e6b:	4c 39 f6             	cmp    %r14,%rsi
    4e6e:	7d 0c                	jge    4e7c <sg_raster_triangle_depth_capture+0x19cc>
    4e70:	4c 39 e6             	cmp    %r12,%rsi
    4e73:	0f 8e 01 58 00 00    	jle    a67a <sg_raster_triangle_depth_capture+0x71ca>
    4e79:	41 89 f0             	mov    %esi,%r8d
    4e7c:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    4e81:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
    4e86:	48 8d 3c 13          	lea    (%rbx,%rdx,1),%rdi
    4e8a:	4c 39 f7             	cmp    %r14,%rdi
    4e8d:	7d 0b                	jge    4e9a <sg_raster_triangle_depth_capture+0x19ea>
    4e8f:	4c 39 e7             	cmp    %r12,%rdi
    4e92:	0f 8e ed 57 00 00    	jle    a685 <sg_raster_triangle_depth_capture+0x71d5>
    4e98:	89 fe                	mov    %edi,%esi
    4e9a:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    4e9f:	4c 39 f0             	cmp    %r14,%rax
    4ea2:	7d 0b                	jge    4eaf <sg_raster_triangle_depth_capture+0x19ff>
    4ea4:	4c 39 e0             	cmp    %r12,%rax
    4ea7:	0f 8e e2 57 00 00    	jle    a68f <sg_raster_triangle_depth_capture+0x71df>
    4ead:	89 c7                	mov    %eax,%edi
    4eaf:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
    4eb4:	4c 39 f2             	cmp    %r14,%rdx
    4eb7:	7d 0b                	jge    4ec4 <sg_raster_triangle_depth_capture+0x1a14>
    4eb9:	4c 39 e2             	cmp    %r12,%rdx
    4ebc:	0f 8e d7 57 00 00    	jle    a699 <sg_raster_triangle_depth_capture+0x71e9>
    4ec2:	89 d0                	mov    %edx,%eax
    4ec4:	66 0f 6e c0          	movd   %eax,%xmm0
    4ec8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
    4ecf:	00 
    4ed0:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    4ed7:	00 
    4ed8:	66 0f 6e d6          	movd   %esi,%xmm2
    4edc:	66 41 0f 3a 22 d0 01 	pinsrd $0x1,%r8d,%xmm2
    4ee3:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    4ee9:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
    4eef:	48 01 c8             	add    %rcx,%rax
    4ef2:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    4ef6:	48 01 c2             	add    %rax,%rdx
    4ef9:	4c 39 f2             	cmp    %r14,%rdx
    4efc:	7d 0c                	jge    4f0a <sg_raster_triangle_depth_capture+0x1a5a>
    4efe:	4c 39 e2             	cmp    %r12,%rdx
    4f01:	0f 8e 9c 57 00 00    	jle    a6a3 <sg_raster_triangle_depth_capture+0x71f3>
    4f07:	41 89 d0             	mov    %edx,%r8d
    4f0a:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    4f11:	00 
    4f12:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
    4f17:	48 01 ca             	add    %rcx,%rdx
    4f1a:	4c 39 f2             	cmp    %r14,%rdx
    4f1d:	7d 0b                	jge    4f2a <sg_raster_triangle_depth_capture+0x1a7a>
    4f1f:	4c 39 e2             	cmp    %r12,%rdx
    4f22:	0f 8e 86 57 00 00    	jle    a6ae <sg_raster_triangle_depth_capture+0x71fe>
    4f28:	89 d6                	mov    %edx,%esi
    4f2a:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    4f2f:	4c 39 f0             	cmp    %r14,%rax
    4f32:	7d 0b                	jge    4f3f <sg_raster_triangle_depth_capture+0x1a8f>
    4f34:	4c 39 e0             	cmp    %r12,%rax
    4f37:	0f 8e 7b 57 00 00    	jle    a6b8 <sg_raster_triangle_depth_capture+0x7208>
    4f3d:	89 c7                	mov    %eax,%edi
    4f3f:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
    4f44:	4c 39 f1             	cmp    %r14,%rcx
    4f47:	7d 0b                	jge    4f54 <sg_raster_triangle_depth_capture+0x1aa4>
    4f49:	4c 39 e1             	cmp    %r12,%rcx
    4f4c:	0f 8e 24 5a 00 00    	jle    a976 <sg_raster_triangle_depth_capture+0x74c6>
    4f52:	89 ca                	mov    %ecx,%edx
    4f54:	0f 50 c9             	movmskps %xmm1,%ecx
    4f57:	0f 50 c0             	movmskps %xmm0,%eax
    4f5a:	66 0f 6e ce          	movd   %esi,%xmm1
    4f5e:	66 0f 6e c2          	movd   %edx,%xmm0
    4f62:	66 41 0f 3a 22 c8 01 	pinsrd $0x1,%r8d,%xmm1
    4f69:	09 c8                	or     %ecx,%eax
    4f6b:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    4f71:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    4f75:	0f 50 d0             	movmskps %xmm0,%edx
    4f78:	09 d0                	or     %edx,%eax
    4f7a:	f7 d0                	not    %eax
    4f7c:	83 e0 0f             	and    $0xf,%eax
    4f7f:	21 c5                	and    %eax,%ebp
    4f81:	0f 84 e9 f6 ff ff    	je     4670 <sg_raster_triangle_depth_capture+0x11c0>
    4f87:	83 bc 24 f4 00 00 00 	cmpl   $0x1,0xf4(%rsp)
    4f8e:	01 
    4f8f:	0f 84 b3 08 00 00    	je     5848 <sg_raster_triangle_depth_capture+0x2398>
    4f95:	8b b4 24 30 01 00 00 	mov    0x130(%rsp),%esi
    4f9c:	39 74 24 30          	cmp    %esi,0x30(%rsp)
    4fa0:	0f 8d a2 08 00 00    	jge    5848 <sg_raster_triangle_depth_capture+0x2398>
    4fa6:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    4fab:	66 0f ef c0          	pxor   %xmm0,%xmm0
    4faf:	66 0f ef d2          	pxor   %xmm2,%xmm2
    4fb3:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4fb7:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    4fbe:	00 
    4fbf:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    4fc4:	66 0f ef db          	pxor   %xmm3,%xmm3
    4fc8:	66 0f ef e4          	pxor   %xmm4,%xmm4
    4fcc:	f3 48 0f 2a c1       	cvtsi2ss %rcx,%xmm0
    4fd1:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    4fd6:	66 0f ef ed          	pxor   %xmm5,%xmm5
    4fda:	f3 44 0f 10 8c 24 00 	movss  0x100(%rsp),%xmm9
    4fe1:	01 00 00 
    4fe4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    4fe8:	48 01 d9             	add    %rbx,%rcx
    4feb:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    4ff0:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    4ff7:	00 
    4ff8:	f3 48 0f 2a d2       	cvtsi2ss %rdx,%xmm2
    4ffd:	48 01 da             	add    %rbx,%rdx
    5000:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
    5005:	f3 48 0f 2a da       	cvtsi2ss %rdx,%xmm3
    500a:	48 01 f0             	add    %rsi,%rax
    500d:	f3 48 0f 2a c9       	cvtsi2ss %rcx,%xmm1
    5012:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
    5017:	f3 48 0f 2a e0       	cvtsi2ss %rax,%xmm4
    501c:	0f 14 c2             	unpcklps %xmm2,%xmm0
    501f:	48 8d 14 31          	lea    (%rcx,%rsi,1),%rdx
    5023:	48 01 c8             	add    %rcx,%rax
    5026:	f3 0f 10 94 24 ec 00 	movss  0xec(%rsp),%xmm2
    502d:	00 00 
    502f:	f3 48 0f 2a e8       	cvtsi2ss %rax,%xmm5
    5034:	89 e8                	mov    %ebp,%eax
    5036:	0f 14 cb             	unpcklps %xmm3,%xmm1
    5039:	66 0f ef db          	pxor   %xmm3,%xmm3
    503d:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    5041:	83 e0 04             	and    $0x4,%eax
    5044:	0f 16 c1             	movlhps %xmm1,%xmm0
    5047:	f3 48 0f 2a da       	cvtsi2ss %rdx,%xmm3
    504c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5050:	89 ea                	mov    %ebp,%edx
    5052:	f3 48 0f 2a ce       	cvtsi2ss %rsi,%xmm1
    5057:	0f 59 c2             	mulps  %xmm2,%xmm0
    505a:	83 e2 02             	and    $0x2,%edx
    505d:	0f 14 dd             	unpcklps %xmm5,%xmm3
    5060:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 5068 <sg_raster_triangle_depth_capture+0x1bb8>
    5067:	00 
    5068:	0f 14 cc             	unpcklps %xmm4,%xmm1
    506b:	f3 0f 10 a4 24 fc 00 	movss  0xfc(%rsp),%xmm4
    5072:	00 00 
    5074:	0f 16 cb             	movlhps %xmm3,%xmm1
    5077:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    507b:	44 0f 28 c5          	movaps %xmm5,%xmm8
    507f:	f3 0f 10 9c 24 f8 00 	movss  0xf8(%rsp),%xmm3
    5086:	00 00 
    5088:	0f 59 ca             	mulps  %xmm2,%xmm1
    508b:	0f 28 d0             	movaps %xmm0,%xmm2
    508e:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    5092:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    5096:	0f 59 d8             	mulps  %xmm0,%xmm3
    5099:	0f 58 d1             	addps  %xmm1,%xmm2
    509c:	0f 59 e1             	mulps  %xmm1,%xmm4
    509f:	0f 28 fb             	movaps %xmm3,%xmm7
    50a2:	44 0f 5c c2          	subps  %xmm2,%xmm8
    50a6:	0f 58 fc             	addps  %xmm4,%xmm7
    50a9:	45 0f 59 c8          	mulps  %xmm8,%xmm9
    50ad:	41 0f 58 f9          	addps  %xmm9,%xmm7
    50b1:	44 0f c2 d7 01       	cmpltps %xmm7,%xmm10
    50b6:	40 f6 c5 01          	test   $0x1,%bpl
    50ba:	0f 85 f0 0b 00 00    	jne    5cb0 <sg_raster_triangle_depth_capture+0x2800>
    50c0:	85 d2                	test   %edx,%edx
    50c2:	0f 85 b8 1e 00 00    	jne    6f80 <sg_raster_triangle_depth_capture+0x3ad0>
    50c8:	85 c0                	test   %eax,%eax
    50ca:	0f 85 ac 26 00 00    	jne    777c <sg_raster_triangle_depth_capture+0x42cc>
    50d0:	66 0f ef f6          	pxor   %xmm6,%xmm6
    50d4:	66 0f ef d2          	pxor   %xmm2,%xmm2
    50d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    50dd:	0f 1f 00             	nopl   (%rax)
    50e0:	66 0f 3a 22 f0 01    	pinsrd $0x1,%eax,%xmm6
    50e6:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    50eb:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    50f2:	00 
    50f3:	66 0f 3a 22 d2 01    	pinsrd $0x1,%edx,%xmm2
    50f9:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
    50fd:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    5104:	8b 9c 24 e8 00 00 00 	mov    0xe8(%rsp),%ebx
    510b:	f3 0f 10 70 18       	movss  0x18(%rax),%xmm6
    5110:	8b 74 24 10          	mov    0x10(%rsp),%esi
    5114:	66 41 0f db d2       	pand   %xmm10,%xmm2
    5119:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    5120:	00 
    5121:	8b b9 84 00 00 00    	mov    0x84(%rcx),%edi
    5127:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    512b:	0f 59 ce             	mulps  %xmm6,%xmm1
    512e:	44 8b 41 04          	mov    0x4(%rcx),%r8d
    5132:	f3 0f 10 70 18       	movss  0x18(%rax),%xmm6
    5137:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    513e:	00 
    513f:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    5143:	0f 59 c6             	mulps  %xmm6,%xmm0
    5146:	f3 0f 10 b4 24 f0 00 	movss  0xf0(%rsp),%xmm6
    514d:	00 00 
    514f:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    5153:	0f 58 c8             	addps  %xmm0,%xmm1
    5156:	f3 0f 10 40 18       	movss  0x18(%rax),%xmm0
    515b:	8b 01                	mov    (%rcx),%eax
    515d:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5161:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    5165:	0f af d0             	imul   %eax,%edx
    5168:	0f af c3             	imul   %ebx,%eax
    516b:	01 f2                	add    %esi,%edx
    516d:	01 c6                	add    %eax,%esi
    516f:	0f 58 c6             	addps  %xmm6,%xmm0
    5172:	89 b4 24 70 01 00 00 	mov    %esi,0x170(%rsp)
    5179:	0f 58 c8             	addps  %xmm0,%xmm1
    517c:	0f 29 8c 24 20 01 00 	movaps %xmm1,0x120(%rsp)
    5183:	00 
    5184:	85 ff                	test   %edi,%edi
    5186:	0f 84 14 0b 00 00    	je     5ca0 <sg_raster_triangle_depth_capture+0x27f0>
    518c:	44 8b a9 9c 00 00 00 	mov    0x9c(%rcx),%r13d
    5193:	45 85 ed             	test   %r13d,%r13d
    5196:	0f 85 04 0b 00 00    	jne    5ca0 <sg_raster_triangle_depth_capture+0x27f0>
    519c:	48 8b 41 10          	mov    0x10(%rcx),%rax
    51a0:	48 63 ca             	movslq %edx,%rcx
    51a3:	66 0f ef c9          	pxor   %xmm1,%xmm1
    51a7:	f3 0f 7e 04 88       	movq   (%rax,%rcx,4),%xmm0
    51ac:	44 39 c3             	cmp    %r8d,%ebx
    51af:	7d 08                	jge    51b9 <sg_raster_triangle_depth_capture+0x1d09>
    51b1:	48 63 ce             	movslq %esi,%rcx
    51b4:	f3 0f 7e 0c 88       	movq   (%rax,%rcx,4),%xmm1
    51b9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    51be:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    51c2:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
    51c8:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
    51cf:	2d 00 02 00 00       	sub    $0x200,%eax
    51d4:	83 f8 06             	cmp    $0x6,%eax
    51d7:	77 27                	ja     5200 <sg_raster_triangle_depth_capture+0x1d50>
    51d9:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 51e0 <sg_raster_triangle_depth_capture+0x1d30>
    51e0:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    51e4:	48 01 c8             	add    %rcx,%rax
    51e7:	ff e0                	jmp    *%rax
    51e9:	0f c2 84 24 20 01 00 	cmpneqps 0x120(%rsp),%xmm0
    51f0:	00 04 
    51f2:	66 0f db d0          	pand   %xmm0,%xmm2
    51f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    51fd:	00 00 00 
    5200:	c7 84 24 80 01 00 00 	movl   $0x1,0x180(%rsp)
    5207:	01 00 00 00 
    520b:	0f 50 c2             	movmskps %xmm2,%eax
    520e:	a8 0f                	test   $0xf,%al
    5210:	0f 84 3d f4 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    5216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    521d:	00 00 00 
    5220:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 5228 <sg_raster_triangle_depth_capture+0x1d78>
    5227:	00 
    5228:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    522f:	00 
    5230:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
    5237:	00 
    5238:	4c 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%r15
    523f:	00 
    5240:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5244:	0f 5f c7             	maxps  %xmm7,%xmm0
    5247:	f3 0f 10 76 20       	movss  0x20(%rsi),%xmm6
    524c:	f3 0f 10 7e 24       	movss  0x24(%rsi),%xmm7
    5251:	f3 44 0f 10 46 28    	movss  0x28(%rsi),%xmm8
    5257:	f3 44 0f 10 56 2c    	movss  0x2c(%rsi),%xmm10
    525d:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    5261:	0f 59 f4             	mulps  %xmm4,%xmm6
    5264:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
    5268:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    526f:	00 
    5270:	0f 59 fc             	mulps  %xmm4,%xmm7
    5273:	0f 53 c8             	rcpps  %xmm0,%xmm1
    5276:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    527b:	45 0f c6 d2 00       	shufps $0x0,%xmm10,%xmm10
    5280:	44 0f 59 c4          	mulps  %xmm4,%xmm8
    5284:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    528a:	44 0f 59 d4          	mulps  %xmm4,%xmm10
    528e:	8d 48 ff             	lea    -0x1(%rax),%ecx
    5291:	0f 59 c1             	mulps  %xmm1,%xmm0
    5294:	0f 59 c1             	mulps  %xmm1,%xmm0
    5297:	0f 58 c9             	addps  %xmm1,%xmm1
    529a:	0f 5c c8             	subps  %xmm0,%xmm1
    529d:	f3 0f 10 43 20       	movss  0x20(%rbx),%xmm0
    52a2:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52a6:	0f 59 c3             	mulps  %xmm3,%xmm0
    52a9:	0f 58 f0             	addps  %xmm0,%xmm6
    52ac:	f3 41 0f 10 47 20    	movss  0x20(%r15),%xmm0
    52b2:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52b6:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    52ba:	0f 58 f0             	addps  %xmm0,%xmm6
    52bd:	f3 0f 10 43 24       	movss  0x24(%rbx),%xmm0
    52c2:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52c6:	0f 59 c3             	mulps  %xmm3,%xmm0
    52c9:	0f 59 f1             	mulps  %xmm1,%xmm6
    52cc:	0f 58 f8             	addps  %xmm0,%xmm7
    52cf:	f3 41 0f 10 47 24    	movss  0x24(%r15),%xmm0
    52d5:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52d9:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    52dd:	0f 58 f8             	addps  %xmm0,%xmm7
    52e0:	f3 0f 10 43 28       	movss  0x28(%rbx),%xmm0
    52e5:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52e9:	0f 59 c3             	mulps  %xmm3,%xmm0
    52ec:	0f 59 f9             	mulps  %xmm1,%xmm7
    52ef:	44 0f 58 c0          	addps  %xmm0,%xmm8
    52f3:	f3 41 0f 10 47 28    	movss  0x28(%r15),%xmm0
    52f9:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52fd:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    5301:	44 0f 58 c0          	addps  %xmm0,%xmm8
    5305:	f3 0f 10 43 2c       	movss  0x2c(%rbx),%xmm0
    530a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    530e:	0f 59 c3             	mulps  %xmm3,%xmm0
    5311:	44 0f 59 c1          	mulps  %xmm1,%xmm8
    5315:	44 0f 58 d0          	addps  %xmm0,%xmm10
    5319:	f3 41 0f 10 47 2c    	movss  0x2c(%r15),%xmm0
    531f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5323:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    5327:	44 0f 58 d0          	addps  %xmm0,%xmm10
    532b:	44 0f 59 d1          	mulps  %xmm1,%xmm10
    532f:	83 f9 01             	cmp    $0x1,%ecx
    5332:	0f 86 20 0c 00 00    	jbe    5f58 <sg_raster_triangle_depth_capture+0x2aa8>
    5338:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    533d:	8b 98 08 01 00 00    	mov    0x108(%rax),%ebx
    5343:	85 db                	test   %ebx,%ebx
    5345:	0f 84 8f 01 00 00    	je     54da <sg_raster_triangle_depth_capture+0x202a>
    534b:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    5352:	00 
    5353:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    5359:	f3 0f 10 86 98 00 00 	movss  0x98(%rsi),%xmm0
    5360:	00 
    5361:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    5368:	00 
    5369:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    536d:	0f 59 c4             	mulps  %xmm4,%xmm0
    5370:	f3 0f 10 a6 98 00 00 	movss  0x98(%rsi),%xmm4
    5377:	00 
    5378:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
    537f:	00 
    5380:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    5384:	0f 59 dc             	mulps  %xmm4,%xmm3
    5387:	0f 58 c3             	addps  %xmm3,%xmm0
    538a:	f3 0f 10 9e 98 00 00 	movss  0x98(%rsi),%xmm3
    5391:	00 
    5392:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    5396:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    539a:	0f 58 c3             	addps  %xmm3,%xmm0
    539d:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 53a5 <sg_raster_triangle_depth_capture+0x1ef5>
    53a4:	00 
    53a5:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    53a9:	0f 59 c1             	mulps  %xmm1,%xmm0
    53ac:	0f 28 c8             	movaps %xmm0,%xmm1
    53af:	0f 57 cb             	xorps  %xmm3,%xmm1
    53b2:	0f 5f c1             	maxps  %xmm1,%xmm0
    53b5:	3d 01 26 00 00       	cmp    $0x2601,%eax
    53ba:	0f 84 8d 20 00 00    	je     744d <sg_raster_triangle_depth_capture+0x3f9d>
    53c0:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    53c5:	89 bc 24 b0 01 00 00 	mov    %edi,0x1b0(%rsp)
    53cc:	89 94 24 a0 01 00 00 	mov    %edx,0x1a0(%rsp)
    53d3:	44 89 84 24 20 02 00 	mov    %r8d,0x220(%rsp)
    53da:	00 
    53db:	f3 0f 10 8e 10 01 00 	movss  0x110(%rsi),%xmm1
    53e2:	00 
    53e3:	0f 29 ac 24 00 02 00 	movaps %xmm5,0x200(%rsp)
    53ea:	00 
    53eb:	44 0f 29 94 24 f0 01 	movaps %xmm10,0x1f0(%rsp)
    53f2:	00 00 
    53f4:	44 0f 29 84 24 e0 01 	movaps %xmm8,0x1e0(%rsp)
    53fb:	00 00 
    53fd:	0f 29 bc 24 d0 01 00 	movaps %xmm7,0x1d0(%rsp)
    5404:	00 
    5405:	0f 29 b4 24 c0 01 00 	movaps %xmm6,0x1c0(%rsp)
    540c:	00 
    540d:	0f 29 94 24 60 01 00 	movaps %xmm2,0x160(%rsp)
    5414:	00 
    5415:	3d 00 08 00 00       	cmp    $0x800,%eax
    541a:	0f 84 e8 2a 00 00    	je     7f08 <sg_raster_triangle_depth_capture+0x4a58>
    5420:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    5424:	0f 59 c8             	mulps  %xmm0,%xmm1
    5427:	0f 59 c9             	mulps  %xmm1,%xmm1
    542a:	0f 57 cb             	xorps  %xmm3,%xmm1
    542d:	0f 28 c1             	movaps %xmm1,%xmm0
    5430:	e8 00 00 00 00       	call   5435 <sg_raster_triangle_depth_capture+0x1f85>
    5435:	44 8b 84 24 20 02 00 	mov    0x220(%rsp),%r8d
    543c:	00 
    543d:	66 0f 6f 94 24 60 01 	movdqa 0x160(%rsp),%xmm2
    5444:	00 00 
    5446:	8b 94 24 a0 01 00 00 	mov    0x1a0(%rsp),%edx
    544d:	8b bc 24 b0 01 00 00 	mov    0x1b0(%rsp),%edi
    5454:	0f 28 c8             	movaps %xmm0,%xmm1
    5457:	0f 28 b4 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm6
    545e:	00 
    545f:	0f 28 bc 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm7
    5466:	00 
    5467:	44 0f 28 84 24 e0 01 	movaps 0x1e0(%rsp),%xmm8
    546e:	00 00 
    5470:	0f 28 ac 24 00 02 00 	movaps 0x200(%rsp),%xmm5
    5477:	00 
    5478:	44 0f 28 94 24 f0 01 	movaps 0x1f0(%rsp),%xmm10
    547f:	00 00 
    5481:	0f 5d cd             	minps  %xmm5,%xmm1
    5484:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5488:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    548d:	0f 28 dd             	movaps %xmm5,%xmm3
    5490:	0f 5f c1             	maxps  %xmm1,%xmm0
    5493:	f3 0f 10 88 1c 01 00 	movss  0x11c(%rax),%xmm1
    549a:	00 
    549b:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    549f:	0f 5c d8             	subps  %xmm0,%xmm3
    54a2:	0f 59 f0             	mulps  %xmm0,%xmm6
    54a5:	0f 59 f8             	mulps  %xmm0,%xmm7
    54a8:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    54ac:	0f 59 cb             	mulps  %xmm3,%xmm1
    54af:	0f 58 f1             	addps  %xmm1,%xmm6
    54b2:	f3 0f 10 88 20 01 00 	movss  0x120(%rax),%xmm1
    54b9:	00 
    54ba:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    54be:	0f 59 cb             	mulps  %xmm3,%xmm1
    54c1:	0f 58 f9             	addps  %xmm1,%xmm7
    54c4:	f3 0f 10 88 24 01 00 	movss  0x124(%rax),%xmm1
    54cb:	00 
    54cc:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    54d0:	0f 59 cb             	mulps  %xmm3,%xmm1
    54d3:	0f 58 c8             	addps  %xmm0,%xmm1
    54d6:	44 0f 28 c1          	movaps %xmm1,%xmm8
    54da:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    54df:	44 8b 98 9c 00 00 00 	mov    0x9c(%rax),%r11d
    54e6:	45 85 db             	test   %r11d,%r11d
    54e9:	0f 84 a1 02 00 00    	je     5790 <sg_raster_triangle_depth_capture+0x22e0>
    54ef:	f3 0f 10 80 a4 00 00 	movss  0xa4(%rax),%xmm0
    54f6:	00 
    54f7:	8b 80 a0 00 00 00    	mov    0xa0(%rax),%eax
    54fd:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
    5504:	2d 00 02 00 00       	sub    $0x200,%eax
    5509:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    550d:	83 f8 06             	cmp    $0x6,%eax
    5510:	0f 87 7a 02 00 00    	ja     5790 <sg_raster_triangle_depth_capture+0x22e0>
    5516:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 551d <sg_raster_triangle_depth_capture+0x206d>
    551d:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    5521:	48 01 c8             	add    %rcx,%rax
    5524:	ff e0                	jmp    *%rax
    5526:	66 0f ef c0          	pxor   %xmm0,%xmm0
    552a:	66 0f ef d2          	pxor   %xmm2,%xmm2
    552e:	66 90                	xchg   %ax,%ax
    5530:	0f 50 e8             	movmskps %xmm0,%ebp
    5533:	83 e5 0f             	and    $0xf,%ebp
    5536:	0f 84 17 f1 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    553c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5541:	44 8b 50 74          	mov    0x74(%rax),%r10d
    5545:	45 85 d2             	test   %r10d,%r10d
    5548:	0f 84 8f 00 00 00    	je     55dd <sg_raster_triangle_depth_capture+0x212d>
    554e:	48 89 c3             	mov    %rax,%rbx
    5551:	8b 40 64             	mov    0x64(%rax),%eax
    5554:	8b 4b 68             	mov    0x68(%rbx),%ecx
    5557:	8b 73 6c             	mov    0x6c(%rbx),%esi
    555a:	44 8b 4b 70          	mov    0x70(%rbx),%r9d
    555e:	8b 5c 24 10          	mov    0x10(%rsp),%ebx
    5562:	01 c6                	add    %eax,%esi
    5564:	41 01 c9             	add    %ecx,%r9d
    5567:	39 d8                	cmp    %ebx,%eax
    5569:	0f 8f 25 1f 00 00    	jg     7494 <sg_raster_triangle_depth_capture+0x3fe4>
    556f:	39 de                	cmp    %ebx,%esi
    5571:	0f 8e 1d 1f 00 00    	jle    7494 <sg_raster_triangle_depth_capture+0x3fe4>
    5577:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    557e:	41 39 c1             	cmp    %eax,%r9d
    5581:	0f 8e b1 3d 00 00    	jle    9338 <sg_raster_triangle_depth_capture+0x5e88>
    5587:	39 c1                	cmp    %eax,%ecx
    5589:	0f 8f a9 3d 00 00    	jg     9338 <sg_raster_triangle_depth_capture+0x5e88>
    558f:	31 c0                	xor    %eax,%eax
    5591:	39 74 24 30          	cmp    %esi,0x30(%rsp)
    5595:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    559a:	0f 9c c0             	setl   %al
    559d:	66 0f 6e c3          	movd   %ebx,%xmm0
    55a1:	f7 d8                	neg    %eax
    55a3:	8b 9c 24 e8 00 00 00 	mov    0xe8(%rsp),%ebx
    55aa:	39 cb                	cmp    %ecx,%ebx
    55ac:	7c 09                	jl     55b7 <sg_raster_triangle_depth_capture+0x2107>
    55ae:	44 39 cb             	cmp    %r9d,%ebx
    55b1:	0f 8c c9 53 00 00    	jl     a980 <sg_raster_triangle_depth_capture+0x74d0>
    55b7:	66 0f ef c9          	pxor   %xmm1,%xmm1
    55bb:	31 c9                	xor    %ecx,%ecx
    55bd:	66 0f 3a 22 c9 01    	pinsrd $0x1,%ecx,%xmm1
    55c3:	66 0f 3a 22 c0 01    	pinsrd $0x1,%eax,%xmm0
    55c9:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    55cd:	66 0f db d0          	pand   %xmm0,%xmm2
    55d1:	0f 50 ea             	movmskps %xmm2,%ebp
    55d4:	83 e5 0f             	and    $0xf,%ebp
    55d7:	0f 84 76 f0 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    55dd:	85 ff                	test   %edi,%edi
    55df:	0f 85 ab 19 00 00    	jne    6f90 <sg_raster_triangle_depth_capture+0x3ae0>
    55e5:	89 ee                	mov    %ebp,%esi
    55e7:	41 89 ed             	mov    %ebp,%r13d
    55ea:	41 89 e9             	mov    %ebp,%r9d
    55ed:	83 e6 01             	and    $0x1,%esi
    55f0:	41 83 e5 02          	and    $0x2,%r13d
    55f4:	41 83 e1 04          	and    $0x4,%r9d
    55f8:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    55fd:	8b 88 90 00 00 00    	mov    0x90(%rax),%ecx
    5603:	85 c9                	test   %ecx,%ecx
    5605:	0f 84 fd 19 00 00    	je     7008 <sg_raster_triangle_depth_capture+0x3b58>
    560b:	8b 80 94 00 00 00    	mov    0x94(%rax),%eax
    5611:	83 f8 01             	cmp    $0x1,%eax
    5614:	76 0f                	jbe    5625 <sg_raster_triangle_depth_capture+0x2175>
    5616:	8d 88 fe fc ff ff    	lea    -0x302(%rax),%ecx
    561c:	83 f9 03             	cmp    $0x3,%ecx
    561f:	0f 87 cf 1c 00 00    	ja     72f4 <sg_raster_triangle_depth_capture+0x3e44>
    5625:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    562a:	44 8b 97 98 00 00 00 	mov    0x98(%rdi),%r10d
    5631:	41 83 fa 01          	cmp    $0x1,%r10d
    5635:	76 10                	jbe    5647 <sg_raster_triangle_depth_capture+0x2197>
    5637:	41 8d 8a fe fc ff ff 	lea    -0x302(%r10),%ecx
    563e:	83 f9 03             	cmp    $0x3,%ecx
    5641:	0f 87 ad 1c 00 00    	ja     72f4 <sg_raster_triangle_depth_capture+0x3e44>
    5647:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    564c:	c1 e2 02             	shl    $0x2,%edx
    564f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5653:	48 63 d2             	movslq %edx,%rdx
    5656:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
    565a:	f3 0f 7e 14 11       	movq   (%rcx,%rdx,1),%xmm2
    565f:	48 8d 3c 11          	lea    (%rcx,%rdx,1),%rdi
    5663:	44 39 84 24 e8 00 00 	cmp    %r8d,0xe8(%rsp)
    566a:	00 
    566b:	7d 12                	jge    567f <sg_raster_triangle_depth_capture+0x21cf>
    566d:	8b 94 24 70 01 00 00 	mov    0x170(%rsp),%edx
    5674:	c1 e2 02             	shl    $0x2,%edx
    5677:	48 63 d2             	movslq %edx,%rdx
    567a:	f3 0f 7e 0c 11       	movq   (%rcx,%rdx,1),%xmm1
    567f:	f3 44 0f 10 0d 00 00 	movss  0x0(%rip),%xmm9        # 5688 <sg_raster_triangle_depth_capture+0x21d8>
    5686:	00 00 
    5688:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    568c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    5690:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    5694:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
    5699:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 56a2 <sg_raster_triangle_depth_capture+0x21f2>
    56a0:	00 00 
    56a2:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    56a5:	0f 28 e1             	movaps %xmm1,%xmm4
    56a8:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    56ac:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 56b5 <sg_raster_triangle_depth_capture+0x2205>
    56b3:	00 00 
    56b5:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    56b8:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    56bc:	0f 28 d9             	movaps %xmm1,%xmm3
    56bf:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    56c3:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 56cc <sg_raster_triangle_depth_capture+0x221c>
    56ca:	00 00 
    56cc:	66 0f 38 00 05 00 00 	pshufb 0x0(%rip),%xmm0        # 56d5 <sg_raster_triangle_depth_capture+0x2225>
    56d3:	00 00 
    56d5:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    56d8:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    56dc:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    56df:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    56e3:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    56e7:	44 0f 28 d9          	movaps %xmm1,%xmm11
    56eb:	3d 03 03 00 00       	cmp    $0x303,%eax
    56f0:	0f 84 13 63 00 00    	je     ba09 <sg_raster_triangle_depth_capture+0x8559>
    56f6:	0f 87 56 54 00 00    	ja     ab52 <sg_raster_triangle_depth_capture+0x76a2>
    56fc:	85 c0                	test   %eax,%eax
    56fe:	0f 84 22 5c 00 00    	je     b326 <sg_raster_triangle_depth_capture+0x7e76>
    5704:	45 0f 28 e2          	movaps %xmm10,%xmm12
    5708:	3d 02 03 00 00       	cmp    $0x302,%eax
    570d:	75 10                	jne    571f <sg_raster_triangle_depth_capture+0x226f>
    570f:	41 0f 59 f2          	mulps  %xmm10,%xmm6
    5713:	41 0f 59 fa          	mulps  %xmm10,%xmm7
    5717:	45 0f 59 c2          	mulps  %xmm10,%xmm8
    571b:	45 0f 59 e2          	mulps  %xmm10,%xmm12
    571f:	41 81 fa 03 03 00 00 	cmp    $0x303,%r10d
    5726:	0f 84 d8 61 00 00    	je     b904 <sg_raster_triangle_depth_capture+0x8454>
    572c:	0f 87 14 5e 00 00    	ja     b546 <sg_raster_triangle_depth_capture+0x8096>
    5732:	45 85 d2             	test   %r10d,%r10d
    5735:	0f 84 c5 62 00 00    	je     ba00 <sg_raster_triangle_depth_capture+0x8550>
    573b:	41 81 fa 02 03 00 00 	cmp    $0x302,%r10d
    5742:	0f 85 a1 62 00 00    	jne    b9e9 <sg_raster_triangle_depth_capture+0x8539>
    5748:	41 0f 59 c2          	mulps  %xmm10,%xmm0
    574c:	41 0f 28 cb          	movaps %xmm11,%xmm1
    5750:	41 0f 59 e2          	mulps  %xmm10,%xmm4
    5754:	41 0f 59 da          	mulps  %xmm10,%xmm3
    5758:	41 0f 59 ca          	mulps  %xmm10,%xmm1
    575c:	41 0f 58 c4          	addps  %xmm12,%xmm0
    5760:	0f 58 f4             	addps  %xmm4,%xmm6
    5763:	0f 58 fb             	addps  %xmm3,%xmm7
    5766:	44 0f 58 c1          	addps  %xmm1,%xmm8
    576a:	44 0f 28 d0          	movaps %xmm0,%xmm10
    576e:	e9 ab 18 00 00       	jmp    701e <sg_raster_triangle_depth_capture+0x3b6e>
    5773:	41 0f c2 c2 02       	cmpleps %xmm10,%xmm0
    5778:	66 0f db d0          	pand   %xmm0,%xmm2
    577c:	0f 28 c2             	movaps %xmm2,%xmm0
    577f:	e9 ac fd ff ff       	jmp    5530 <sg_raster_triangle_depth_capture+0x2080>
    5784:	41 0f c2 c2 04       	cmpneqps %xmm10,%xmm0
    5789:	66 0f db d0          	pand   %xmm0,%xmm2
    578d:	0f 1f 00             	nopl   (%rax)
    5790:	0f 28 c2             	movaps %xmm2,%xmm0
    5793:	e9 98 fd ff ff       	jmp    5530 <sg_raster_triangle_depth_capture+0x2080>
    5798:	41 0f c2 c2 01       	cmpltps %xmm10,%xmm0
    579d:	66 0f db d0          	pand   %xmm0,%xmm2
    57a1:	0f 28 c2             	movaps %xmm2,%xmm0
    57a4:	e9 87 fd ff ff       	jmp    5530 <sg_raster_triangle_depth_capture+0x2080>
    57a9:	41 0f 28 ca          	movaps %xmm10,%xmm1
    57ad:	0f c2 c8 02          	cmpleps %xmm0,%xmm1
    57b1:	66 0f db d1          	pand   %xmm1,%xmm2
    57b5:	0f 28 c2             	movaps %xmm2,%xmm0
    57b8:	e9 73 fd ff ff       	jmp    5530 <sg_raster_triangle_depth_capture+0x2080>
    57bd:	41 0f c2 c2 00       	cmpeqps %xmm10,%xmm0
    57c2:	66 0f db d0          	pand   %xmm0,%xmm2
    57c6:	0f 28 c2             	movaps %xmm2,%xmm0
    57c9:	e9 62 fd ff ff       	jmp    5530 <sg_raster_triangle_depth_capture+0x2080>
    57ce:	41 0f 28 ca          	movaps %xmm10,%xmm1
    57d2:	0f c2 c8 01          	cmpltps %xmm0,%xmm1
    57d6:	66 0f db d1          	pand   %xmm1,%xmm2
    57da:	0f 28 c2             	movaps %xmm2,%xmm0
    57dd:	e9 4e fd ff ff       	jmp    5530 <sg_raster_triangle_depth_capture+0x2080>
    57e2:	0f c2 84 24 20 01 00 	cmpltps 0x120(%rsp),%xmm0
    57e9:	00 01 
    57eb:	66 0f db d0          	pand   %xmm0,%xmm2
    57ef:	e9 0c fa ff ff       	jmp    5200 <sg_raster_triangle_depth_capture+0x1d50>
    57f4:	0f 28 8c 24 20 01 00 	movaps 0x120(%rsp),%xmm1
    57fb:	00 
    57fc:	0f c2 c8 02          	cmpleps %xmm0,%xmm1
    5800:	66 0f db d1          	pand   %xmm1,%xmm2
    5804:	e9 f7 f9 ff ff       	jmp    5200 <sg_raster_triangle_depth_capture+0x1d50>
    5809:	0f c2 84 24 20 01 00 	cmpeqps 0x120(%rsp),%xmm0
    5810:	00 00 
    5812:	66 0f db d0          	pand   %xmm0,%xmm2
    5816:	e9 e5 f9 ff ff       	jmp    5200 <sg_raster_triangle_depth_capture+0x1d50>
    581b:	0f 28 8c 24 20 01 00 	movaps 0x120(%rsp),%xmm1
    5822:	00 
    5823:	0f c2 c8 01          	cmpltps %xmm0,%xmm1
    5827:	66 0f db d1          	pand   %xmm1,%xmm2
    582b:	e9 d0 f9 ff ff       	jmp    5200 <sg_raster_triangle_depth_capture+0x1d50>
    5830:	0f c2 84 24 20 01 00 	cmpleps 0x120(%rsp),%xmm0
    5837:	00 02 
    5839:	66 0f db d0          	pand   %xmm0,%xmm2
    583d:	e9 be f9 ff ff       	jmp    5200 <sg_raster_triangle_depth_capture+0x1d50>
    5842:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5848:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
    584f:	89 e9                	mov    %ebp,%ecx
    5851:	83 e1 01             	and    $0x1,%ecx
    5854:	85 c0                	test   %eax,%eax
    5856:	0f 85 7e 04 00 00    	jne    5cda <sg_raster_triangle_depth_capture+0x282a>
    585c:	85 c9                	test   %ecx,%ecx
    585e:	0f 85 3b e6 ff ff    	jne    3e9f <sg_raster_triangle_depth_capture+0x9ef>
    5864:	40 f6 c5 02          	test   $0x2,%bpl
    5868:	0f 85 aa e8 ff ff    	jne    4118 <sg_raster_triangle_depth_capture+0xc68>
    586e:	40 f6 c5 04          	test   $0x4,%bpl
    5872:	0f 85 41 eb ff ff    	jne    43b9 <sg_raster_triangle_depth_capture+0xf09>
    5878:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    587d:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    5884:	00 
    5885:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    588a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    588f:	48 01 d0             	add    %rdx,%rax
    5892:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    5897:	44 8b 9f c0 3d 00 00 	mov    0x3dc0(%rdi),%r11d
    589e:	48 01 c2             	add    %rax,%rdx
    58a1:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    58a8:	00 
    58a9:	48 01 f0             	add    %rsi,%rax
    58ac:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
    58b1:	48 01 f0             	add    %rsi,%rax
    58b4:	45 85 db             	test   %r11d,%r11d
    58b7:	74 38                	je     58f1 <sg_raster_triangle_depth_capture+0x2441>
    58b9:	8b 5c 24 30          	mov    0x30(%rsp),%ebx
    58bd:	8b b4 24 e8 00 00 00 	mov    0xe8(%rsp),%esi
    58c4:	89 d9                	mov    %ebx,%ecx
    58c6:	83 e6 1f             	and    $0x1f,%esi
    58c9:	c1 f9 03             	sar    $0x3,%ecx
    58cc:	83 e1 03             	and    $0x3,%ecx
    58cf:	8d 0c b1             	lea    (%rcx,%rsi,4),%ecx
    58d2:	be 80 00 00 00       	mov    $0x80,%esi
    58d7:	48 63 c9             	movslq %ecx,%rcx
    58da:	0f b6 bc 0f c4 3d 00 	movzbl 0x3dc4(%rdi,%rcx,1),%edi
    58e1:	00 
    58e2:	89 d9                	mov    %ebx,%ecx
    58e4:	83 e1 07             	and    $0x7,%ecx
    58e7:	d3 ee                	shr    %cl,%esi
    58e9:	85 f7                	test   %esi,%edi
    58eb:	0f 84 62 ed ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    58f1:	66 0f ef f6          	pxor   %xmm6,%xmm6
    58f5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    58f9:	f3 0f 10 a4 24 ec 00 	movss  0xec(%rsp),%xmm4
    5900:	00 00 
    5902:	f3 44 0f 10 8c 24 f8 	movss  0xf8(%rsp),%xmm9
    5909:	00 00 00 
    590c:	f3 48 0f 2a f0       	cvtsi2ss %rax,%xmm6
    5911:	66 0f ef db          	pxor   %xmm3,%xmm3
    5915:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 591d <sg_raster_triangle_depth_capture+0x246d>
    591c:	00 
    591d:	f3 0f 10 bc 24 fc 00 	movss  0xfc(%rsp),%xmm7
    5924:	00 00 
    5926:	f3 44 0f 10 84 24 00 	movss  0x100(%rsp),%xmm8
    592d:	01 00 00 
    5930:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    5935:	f3 0f 59 f4          	mulss  %xmm4,%xmm6
    5939:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    593d:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
    5942:	0f 28 d6             	movaps %xmm6,%xmm2
    5945:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5949:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
    594d:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    5951:	41 0f 28 d1          	movaps %xmm9,%xmm2
    5955:	f3 0f 58 d7          	addss  %xmm7,%xmm2
    5959:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    595e:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    5963:	0f 2f da             	comiss %xmm2,%xmm3
    5966:	0f 83 e7 ec ff ff    	jae    4653 <sg_raster_triangle_depth_capture+0x11a3>
    596c:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    5973:	00 
    5974:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    5979:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 5982 <sg_raster_triangle_depth_capture+0x24d2>
    5980:	00 00 
    5982:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    5987:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    598e:	00 
    598f:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    5994:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    5999:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    59a0:	00 
    59a1:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    59a6:	8b 87 84 00 00 00    	mov    0x84(%rdi),%eax
    59ac:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    59b3:	00 00 
    59b5:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    59b9:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    59bd:	85 c0                	test   %eax,%eax
    59bf:	74 5f                	je     5a20 <sg_raster_triangle_depth_capture+0x2570>
    59c1:	8b 87 c0 00 00 00    	mov    0xc0(%rdi),%eax
    59c7:	85 c0                	test   %eax,%eax
    59c9:	75 55                	jne    5a20 <sg_raster_triangle_depth_capture+0x2570>
    59cb:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
    59d2:	0f af 07             	imul   (%rdi),%eax
    59d5:	8b 74 24 30          	mov    0x30(%rsp),%esi
    59d9:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    59dd:	01 f0                	add    %esi,%eax
    59df:	48 98                	cltq
    59e1:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    59e6:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
    59ec:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    59f3:	2d 00 02 00 00       	sub    $0x200,%eax
    59f8:	83 f8 07             	cmp    $0x7,%eax
    59fb:	77 10                	ja     5a0d <sg_raster_triangle_depth_capture+0x255d>
    59fd:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5a04 <sg_raster_triangle_depth_capture+0x2554>
    5a04:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    5a08:	48 01 d0             	add    %rdx,%rax
    5a0b:	ff e0                	jmp    *%rax
    5a0d:	31 c0                	xor    %eax,%eax
    5a0f:	0f 2f c6             	comiss %xmm6,%xmm0
    5a12:	0f 97 c0             	seta   %al
    5a15:	85 c0                	test   %eax,%eax
    5a17:	0f 84 36 ec ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    5a1d:	0f 1f 00             	nopl   (%rax)
    5a20:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    5a27:	00 
    5a28:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
    5a2f:	00 
    5a30:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    5a37:	00 
    5a38:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    5a3d:	f3 0f 10 47 20       	movss  0x20(%rdi),%xmm0
    5a42:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    5a47:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    5a4c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5a50:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    5a55:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    5a5c:	00 00 
    5a5e:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    5a63:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    5a6a:	00 
    5a6b:	f3 44 0f 10 9f 98 00 	movss  0x98(%rdi),%xmm11
    5a72:	00 00 
    5a74:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
    5a7b:	00 00 
    5a7d:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
    5a82:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
    5a87:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    5a8d:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
    5a92:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    5a99:	83 e8 01             	sub    $0x1,%eax
    5a9c:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5aa0:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
    5aa5:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5aaa:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5aae:	f3 0f 10 47 24       	movss  0x24(%rdi),%xmm0
    5ab3:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5ab7:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    5abc:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5ac0:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
    5ac5:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    5acc:	00 00 
    5ace:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    5ad5:	00 00 
    5ad7:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5adc:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5ae0:	f3 0f 10 47 28       	movss  0x28(%rdi),%xmm0
    5ae5:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5ae9:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    5aee:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    5af2:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
    5af7:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    5afe:	00 00 
    5b00:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    5b07:	00 00 
    5b09:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5b0e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    5b12:	f3 0f 10 47 2c       	movss  0x2c(%rdi),%xmm0
    5b17:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5b1b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    5b20:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    5b24:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
    5b29:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    5b30:	00 00 
    5b32:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    5b39:	00 00 
    5b3b:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5b40:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    5b44:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    5b49:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    5b50:	00 00 
    5b52:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    5b59:	00 00 
    5b5b:	83 f8 01             	cmp    $0x1,%eax
    5b5e:	0f 86 e5 1d 00 00    	jbe    7949 <sg_raster_triangle_depth_capture+0x4499>
    5b64:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    5b6b:	00 
    5b6c:	44 8b b8 60 01 00 00 	mov    0x160(%rax),%r15d
    5b73:	45 85 ff             	test   %r15d,%r15d
    5b76:	0f 85 a7 2c 00 00    	jne    8823 <sg_raster_triangle_depth_capture+0x5373>
    5b7c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5b81:	44 8b 88 08 01 00 00 	mov    0x108(%rax),%r9d
    5b88:	45 85 c9             	test   %r9d,%r9d
    5b8b:	0f 84 eb 00 00 00    	je     5c7c <sg_raster_triangle_depth_capture+0x27cc>
    5b91:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
    5b96:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    5b9c:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
    5ba1:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
    5ba6:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
    5bab:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
    5bb0:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
    5bb5:	41 0f 28 c2          	movaps %xmm10,%xmm0
    5bb9:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 5bc0 <sg_raster_triangle_depth_capture+0x2710>
    5bc0:	3d 00 08 00 00       	cmp    $0x800,%eax
    5bc5:	0f 84 2d 42 00 00    	je     9df8 <sg_raster_triangle_depth_capture+0x6948>
    5bcb:	3d 01 08 00 00       	cmp    $0x801,%eax
    5bd0:	0f 84 ba 42 00 00    	je     9e90 <sg_raster_triangle_depth_capture+0x69e0>
    5bd6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5bdb:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    5be0:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    5be7:	00 
    5be8:	0f 28 ef             	movaps %xmm7,%xmm5
    5beb:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    5bf2:	00 
    5bf3:	41 0f 2f e8          	comiss %xmm8,%xmm5
    5bf7:	74 37                	je     5c30 <sg_raster_triangle_depth_capture+0x2780>
    5bf9:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    5bfd:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    5c01:	44 0f 2f c7          	comiss %xmm7,%xmm8
    5c05:	0f 87 81 50 00 00    	ja     ac8c <sg_raster_triangle_depth_capture+0x77dc>
    5c0b:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 5c13 <sg_raster_triangle_depth_capture+0x2763>
    5c12:	00 
    5c13:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 5c1b <sg_raster_triangle_depth_capture+0x276b>
    5c1a:	00 
    5c1b:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    5c1f:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    5c23:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    5c27:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    5c2b:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    5c2f:	90                   	nop
    5c30:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5c35:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    5c3c:	00 
    5c3d:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    5c41:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5c45:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    5c4c:	00 
    5c4d:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    5c51:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    5c58:	00 
    5c59:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    5c60:	00 00 
    5c62:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5c66:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    5c6a:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    5c71:	00 00 
    5c73:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    5c7a:	00 00 
    5c7c:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    5c83:	8b 74 24 30          	mov    0x30(%rsp),%esi
    5c87:	0f 28 c6             	movaps %xmm6,%xmm0
    5c8a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    5c8f:	e8 00 00 00 00       	call   5c94 <sg_raster_triangle_depth_capture+0x27e4>
    5c94:	e9 ba e9 ff ff       	jmp    4653 <sg_raster_triangle_depth_capture+0x11a3>
    5c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5ca0:	c7 84 24 80 01 00 00 	movl   $0x0,0x180(%rsp)
    5ca7:	00 00 00 00 
    5cab:	e9 70 f5 ff ff       	jmp    5220 <sg_raster_triangle_depth_capture+0x1d70>
    5cb0:	d1 ea                	shr    $1,%edx
    5cb2:	be ff ff ff ff       	mov    $0xffffffff,%esi
    5cb7:	f7 da                	neg    %edx
    5cb9:	66 0f 6e d6          	movd   %esi,%xmm2
    5cbd:	c1 e8 02             	shr    $0x2,%eax
    5cc0:	f7 d8                	neg    %eax
    5cc2:	66 0f 6e f0          	movd   %eax,%xmm6
    5cc6:	89 e8                	mov    %ebp,%eax
    5cc8:	c1 e8 03             	shr    $0x3,%eax
    5ccb:	83 e0 01             	and    $0x1,%eax
    5cce:	f7 d8                	neg    %eax
    5cd0:	e9 0b f4 ff ff       	jmp    50e0 <sg_raster_triangle_depth_capture+0x1c30>
    5cd5:	b9 01 00 00 00       	mov    $0x1,%ecx
    5cda:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    5cdf:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    5ce4:	c7 84 24 60 01 00 00 	movl   $0x0,0x160(%rsp)
    5ceb:	00 00 00 00 
    5cef:	48 8b b4 24 b8 00 00 	mov    0xb8(%rsp),%rsi
    5cf6:	00 
    5cf7:	48 8d 14 06          	lea    (%rsi,%rax,1),%rdx
    5cfb:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
    5d00:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
    5d04:	4c 8d 1c 32          	lea    (%rdx,%rsi,1),%r11
    5d08:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    5d0f:	00 
    5d10:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    5d15:	48 01 f0             	add    %rsi,%rax
    5d18:	48 01 de             	add    %rbx,%rsi
    5d1b:	4c 8d 0c 18          	lea    (%rax,%rbx,1),%r9
    5d1f:	85 c9                	test   %ecx,%ecx
    5d21:	0f 84 39 01 00 00    	je     5e60 <sg_raster_triangle_depth_capture+0x29b0>
    5d27:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5d2b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5d2f:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    5d36:	00 00 
    5d38:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
    5d3f:	00 
    5d40:	f3 48 0f 2a 44 24 08 	cvtsi2ssq 0x8(%rsp),%xmm0
    5d47:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    5d4c:	f3 48 0f 2a 4c 24 18 	cvtsi2ssq 0x18(%rsp),%xmm1
    5d53:	f3 0f 10 51 18       	movss  0x18(%rcx),%xmm2
    5d58:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    5d5f:	00 
    5d60:	44 8b bb 84 00 00 00 	mov    0x84(%rbx),%r15d
    5d67:	f3 0f 10 59 18       	movss  0x18(%rcx),%xmm3
    5d6c:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    5d73:	00 
    5d74:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    5d78:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    5d7c:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    5d80:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    5d84:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
    5d88:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 5d90 <sg_raster_triangle_depth_capture+0x28e0>
    5d8f:	00 
    5d90:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    5d94:	f3 0f 59 49 18       	mulss  0x18(%rcx),%xmm1
    5d99:	f3 0f 10 84 24 f0 00 	movss  0xf0(%rsp),%xmm0
    5da0:	00 00 
    5da2:	f3 0f 58 d3          	addss  %xmm3,%xmm2
    5da6:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    5daa:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5dae:	f3 0f 11 94 24 60 01 	movss  %xmm2,0x160(%rsp)
    5db5:	00 00 
    5db7:	45 85 ff             	test   %r15d,%r15d
    5dba:	0f 84 a0 00 00 00    	je     5e60 <sg_raster_triangle_depth_capture+0x29b0>
    5dc0:	44 8b ab c0 00 00 00 	mov    0xc0(%rbx),%r13d
    5dc7:	45 85 ed             	test   %r13d,%r13d
    5dca:	0f 85 90 00 00 00    	jne    5e60 <sg_raster_triangle_depth_capture+0x29b0>
    5dd0:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    5dd7:	0f af 0b             	imul   (%rbx),%ecx
    5dda:	44 8b 54 24 10       	mov    0x10(%rsp),%r10d
    5ddf:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    5de3:	44 01 d1             	add    %r10d,%ecx
    5de6:	48 63 c9             	movslq %ecx,%rcx
    5de9:	f3 41 0f 10 04 88    	movss  (%r8,%rcx,4),%xmm0
    5def:	8b 8b 88 00 00 00    	mov    0x88(%rbx),%ecx
    5df5:	89 8c 24 70 01 00 00 	mov    %ecx,0x170(%rsp)
    5dfc:	81 e9 00 02 00 00    	sub    $0x200,%ecx
    5e02:	83 f9 07             	cmp    $0x7,%ecx
    5e05:	0f 87 f9 55 00 00    	ja     b404 <sg_raster_triangle_depth_capture+0x7f54>
    5e0b:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 5e12 <sg_raster_triangle_depth_capture+0x2962>
    5e12:	49 63 0c 88          	movslq (%r8,%rcx,4),%rcx
    5e16:	4c 01 c1             	add    %r8,%rcx
    5e19:	ff e1                	jmp    *%rcx
    5e1b:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    5e22:	00 00 
    5e24:	0f 2f f8             	comiss %xmm0,%xmm7
    5e27:	0f 93 c1             	setae  %cl
    5e2a:	41 0f 93 c0          	setae  %r8b
    5e2e:	0f b6 c9             	movzbl %cl,%ecx
    5e31:	44 8b 94 24 20 01 00 	mov    0x120(%rsp),%r10d
    5e38:	00 
    5e39:	45 85 d2             	test   %r10d,%r10d
    5e3c:	0f 85 1d 56 00 00    	jne    b45f <sg_raster_triangle_depth_capture+0x7faf>
    5e42:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    5e49:	00 
    5e4a:	0f 83 0f 56 00 00    	jae    b45f <sg_raster_triangle_depth_capture+0x7faf>
    5e50:	45 84 c0             	test   %r8b,%r8b
    5e53:	0f 85 06 56 00 00    	jne    b45f <sg_raster_triangle_depth_capture+0x7faf>
    5e59:	83 e5 fe             	and    $0xfffffffe,%ebp
    5e5c:	0f 1f 40 00          	nopl   0x0(%rax)
    5e60:	40 f6 c5 02          	test   $0x2,%bpl
    5e64:	0f 84 36 14 00 00    	je     72a0 <sg_raster_triangle_depth_capture+0x3df0>
    5e6a:	66 0f ef e4          	pxor   %xmm4,%xmm4
    5e6e:	66 0f ef db          	pxor   %xmm3,%xmm3
    5e72:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    5e79:	00 00 
    5e7b:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
    5e82:	00 
    5e83:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    5e88:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    5e8d:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    5e92:	0f 28 c5             	movaps %xmm5,%xmm0
    5e95:	f3 0f 10 51 18       	movss  0x18(%rcx),%xmm2
    5e9a:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    5ea1:	00 
    5ea2:	44 8b bb 84 00 00 00 	mov    0x84(%rbx),%r15d
    5ea9:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    5ead:	f3 0f 59 eb          	mulss  %xmm3,%xmm5
    5eb1:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    5eb5:	0f 28 cd             	movaps %xmm5,%xmm1
    5eb8:	f3 0f 59 69 18       	mulss  0x18(%rcx),%xmm5
    5ebd:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5ec1:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    5ec8:	00 
    5ec9:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 5ed1 <sg_raster_triangle_depth_capture+0x2a21>
    5ed0:	00 
    5ed1:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    5ed5:	f3 0f 59 41 18       	mulss  0x18(%rcx),%xmm0
    5eda:	f3 0f 58 84 24 f0 00 	addss  0xf0(%rsp),%xmm0
    5ee1:	00 00 
    5ee3:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    5ee7:	0f 28 f2             	movaps %xmm2,%xmm6
    5eea:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    5eee:	45 85 ff             	test   %r15d,%r15d
    5ef1:	0f 84 a9 04 00 00    	je     63a0 <sg_raster_triangle_depth_capture+0x2ef0>
    5ef7:	44 8b ab c0 00 00 00 	mov    0xc0(%rbx),%r13d
    5efe:	45 85 ed             	test   %r13d,%r13d
    5f01:	0f 85 99 04 00 00    	jne    63a0 <sg_raster_triangle_depth_capture+0x2ef0>
    5f07:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    5f0e:	0f af 0b             	imul   (%rbx),%ecx
    5f11:	44 8b 54 24 30       	mov    0x30(%rsp),%r10d
    5f16:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    5f1a:	44 01 d1             	add    %r10d,%ecx
    5f1d:	48 63 c9             	movslq %ecx,%rcx
    5f20:	f3 41 0f 10 04 88    	movss  (%r8,%rcx,4),%xmm0
    5f26:	8b 8b 88 00 00 00    	mov    0x88(%rbx),%ecx
    5f2c:	89 8c 24 70 01 00 00 	mov    %ecx,0x170(%rsp)
    5f33:	81 e9 00 02 00 00    	sub    $0x200,%ecx
    5f39:	83 f9 07             	cmp    $0x7,%ecx
    5f3c:	0f 87 88 54 00 00    	ja     b3ca <sg_raster_triangle_depth_capture+0x7f1a>
    5f42:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 5f49 <sg_raster_triangle_depth_capture+0x2a99>
    5f49:	49 63 0c 88          	movslq (%r8,%rcx,4),%rcx
    5f4d:	4c 01 c1             	add    %r8,%rcx
    5f50:	ff e1                	jmp    *%rcx
    5f52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5f58:	f3 0f 10 46 50       	movss  0x50(%rsi),%xmm0
    5f5d:	f3 44 0f 10 5b 50    	movss  0x50(%rbx),%xmm11
    5f63:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    5f68:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    5f6d:	f3 44 0f 10 6b 54    	movss  0x54(%rbx),%xmm13
    5f73:	48 8b 8c 24 e0 04 00 	mov    0x4e0(%rsp),%rcx
    5f7a:	00 
    5f7b:	0f 29 bc 24 10 03 00 	movaps %xmm7,0x310(%rsp)
    5f82:	00 
    5f83:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5f87:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    5f8c:	0f 59 c4             	mulps  %xmm4,%xmm0
    5f8f:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 5f97 <sg_raster_triangle_depth_capture+0x2ae7>
    5f96:	00 
    5f97:	44 0f 59 db          	mulps  %xmm3,%xmm11
    5f9b:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
    5fa0:	44 8b 59 24          	mov    0x24(%rcx),%r11d
    5fa4:	4c 8b 49 30          	mov    0x30(%rcx),%r9
    5fa8:	44 0f 59 eb          	mulps  %xmm3,%xmm13
    5fac:	8b 49 28             	mov    0x28(%rcx),%ecx
    5faf:	0f 29 b4 24 00 03 00 	movaps %xmm6,0x300(%rsp)
    5fb6:	00 
    5fb7:	44 0f 29 84 24 60 03 	movaps %xmm8,0x360(%rsp)
    5fbe:	00 00 
    5fc0:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    5fc5:	f3 44 0f 2a e1       	cvtsi2ss %ecx,%xmm12
    5fca:	89 8c 24 60 01 00 00 	mov    %ecx,0x160(%rsp)
    5fd1:	44 0f 29 94 24 a0 03 	movaps %xmm10,0x3a0(%rsp)
    5fd8:	00 00 
    5fda:	41 0f 58 c3          	addps  %xmm11,%xmm0
    5fde:	f3 45 0f 10 5f 50    	movss  0x50(%r15),%xmm11
    5fe4:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    5fe9:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    5fee:	45 0f 59 d9          	mulps  %xmm9,%xmm11
    5ff2:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
    5ff7:	41 0f 58 c3          	addps  %xmm11,%xmm0
    5ffb:	f3 44 0f 10 5e 54    	movss  0x54(%rsi),%xmm11
    6001:	48 8b b4 24 e0 04 00 	mov    0x4e0(%rsp),%rsi
    6008:	00 
    6009:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    600e:	44 0f 59 dc          	mulps  %xmm4,%xmm11
    6012:	44 8b 6e 38          	mov    0x38(%rsi),%r13d
    6016:	8b 5e 3c             	mov    0x3c(%rsi),%ebx
    6019:	0f 59 c1             	mulps  %xmm1,%xmm0
    601c:	8b 76 40             	mov    0x40(%rsi),%esi
    601f:	89 b4 24 20 02 00 00 	mov    %esi,0x220(%rsp)
    6026:	31 f6                	xor    %esi,%esi
    6028:	45 0f 58 dd          	addps  %xmm13,%xmm11
    602c:	f3 45 0f 10 6f 54    	movss  0x54(%r15),%xmm13
    6032:	66 44 0f 3a 08 f8 01 	roundps $0x1,%xmm0,%xmm15
    6039:	41 0f 5c c7          	subps  %xmm15,%xmm0
    603d:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
    6042:	45 0f 59 e9          	mulps  %xmm9,%xmm13
    6046:	41 0f 59 c6          	mulps  %xmm14,%xmm0
    604a:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 6053 <sg_raster_triangle_depth_capture+0x2ba3>
    6051:	00 00 
    6053:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    6058:	45 0f 58 dd          	addps  %xmm13,%xmm11
    605c:	41 0f 58 c6          	addps  %xmm14,%xmm0
    6060:	44 0f 59 d9          	mulps  %xmm1,%xmm11
    6064:	66 45 0f 3a 08 eb 01 	roundps $0x1,%xmm11,%xmm13
    606b:	45 0f 5c dd          	subps  %xmm13,%xmm11
    606f:	45 0f 59 dc          	mulps  %xmm12,%xmm11
    6073:	66 44 0f 3a 08 e0 01 	roundps $0x1,%xmm0,%xmm12
    607a:	41 0f 5c c4          	subps  %xmm12,%xmm0
    607e:	f3 45 0f 5b fc       	cvttps2dq %xmm12,%xmm15
    6083:	f3 44 0f 10 25 00 00 	movss  0x0(%rip),%xmm12        # 608c <sg_raster_triangle_depth_capture+0x2bdc>
    608a:	00 00 
    608c:	44 0f 29 bc 24 c0 02 	movaps %xmm15,0x2c0(%rsp)
    6093:	00 00 
    6095:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
    609a:	45 0f 58 de          	addps  %xmm14,%xmm11
    609e:	66 45 0f 3a 08 eb 01 	roundps $0x1,%xmm11,%xmm13
    60a5:	f3 45 0f 5b f5       	cvttps2dq %xmm13,%xmm14
    60aa:	44 0f 29 b4 24 d0 02 	movaps %xmm14,0x2d0(%rsp)
    60b1:	00 00 
    60b3:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 60bc <sg_raster_triangle_depth_capture+0x2c0c>
    60ba:	00 00 
    60bc:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    60c1:	41 0f 59 c6          	mulps  %xmm14,%xmm0
    60c5:	41 0f 58 c4          	addps  %xmm12,%xmm0
    60c9:	f3 0f 5b c0          	cvttps2dq %xmm0,%xmm0
    60cd:	0f 29 84 24 e0 02 00 	movaps %xmm0,0x2e0(%rsp)
    60d4:	00 
    60d5:	41 0f 28 c3          	movaps %xmm11,%xmm0
    60d9:	41 0f 5c c5          	subps  %xmm13,%xmm0
    60dd:	41 0f 59 c6          	mulps  %xmm14,%xmm0
    60e1:	41 0f 58 c4          	addps  %xmm12,%xmm0
    60e5:	f3 0f 5b c0          	cvttps2dq %xmm0,%xmm0
    60e9:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    60f0:	00 
    60f1:	83 f8 02             	cmp    $0x2,%eax
    60f4:	0f 84 37 14 00 00    	je     7531 <sg_raster_triangle_depth_capture+0x4081>
    60fa:	44 89 84 24 a0 01 00 	mov    %r8d,0x1a0(%rsp)
    6101:	00 
    6102:	89 94 24 b0 01 00 00 	mov    %edx,0x1b0(%rsp)
    6109:	0f a3 f5             	bt     %esi,%ebp
    610c:	0f 83 ff 01 00 00    	jae    6311 <sg_raster_triangle_depth_capture+0x2e61>
    6112:	8b 84 b4 c0 02 00 00 	mov    0x2c0(%rsp,%rsi,4),%eax
    6119:	44 8b 94 b4 d0 02 00 	mov    0x2d0(%rsp,%rsi,4),%r10d
    6120:	00 
    6121:	44 8d 78 01          	lea    0x1(%rax),%r15d
    6125:	41 8d 4a 01          	lea    0x1(%r10),%ecx
    6129:	45 85 ed             	test   %r13d,%r13d
    612c:	0f 84 26 02 00 00    	je     6358 <sg_raster_triangle_depth_capture+0x2ea8>
    6132:	44 21 e8             	and    %r13d,%eax
    6135:	45 21 ef             	and    %r13d,%r15d
    6138:	41 89 c0             	mov    %eax,%r8d
    613b:	85 db                	test   %ebx,%ebx
    613d:	0f 84 ae 12 00 00    	je     73f1 <sg_raster_triangle_depth_capture+0x3f41>
    6143:	89 ca                	mov    %ecx,%edx
    6145:	41 21 da             	and    %ebx,%r10d
    6148:	21 da                	and    %ebx,%edx
    614a:	8b 84 24 20 02 00 00 	mov    0x220(%rsp),%eax
    6151:	89 c1                	mov    %eax,%ecx
    6153:	d3 e2                	shl    %cl,%edx
    6155:	41 d3 e2             	shl    %cl,%r10d
    6158:	89 d1                	mov    %edx,%ecx
    615a:	43 8d 04 10          	lea    (%r8,%r10,1),%eax
    615e:	45 01 fa             	add    %r15d,%r10d
    6161:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 6169 <sg_raster_triangle_depth_capture+0x2cb9>
    6168:	00 
    6169:	66 44 0f 6e a4 b4 e0 	movd   0x2e0(%rsp,%rsi,4),%xmm12
    6170:	02 00 00 
    6173:	c1 e0 02             	shl    $0x2,%eax
    6176:	66 0f 6e b4 b4 f0 02 	movd   0x2f0(%rsp,%rsi,4),%xmm6
    617d:	00 00 
    617f:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
    6184:	48 98                	cltq
    6186:	66 44 0f 38 39 e0    	pminsd %xmm0,%xmm12
    618c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6190:	66 45 0f 6e 04 01    	movd   (%r9,%rax,1),%xmm8
    6196:	42 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%eax
    619d:	00 
    619e:	66 44 0f 38 3d e0    	pmaxsd %xmm0,%xmm12
    61a4:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 61ac <sg_raster_triangle_depth_capture+0x2cfc>
    61ab:	00 
    61ac:	48 98                	cltq
    61ae:	66 45 0f 38 30 c0    	pmovzxbw %xmm8,%xmm8
    61b4:	66 45 0f fa fc       	psubd  %xmm12,%xmm15
    61b9:	66 45 0f 6e 2c 01    	movd   (%r9,%rax,1),%xmm13
    61bf:	42 8d 04 01          	lea    (%rcx,%r8,1),%eax
    61c3:	66 0f 38 39 f0       	pminsd %xmm0,%xmm6
    61c8:	c1 e0 02             	shl    $0x2,%eax
    61cb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    61cf:	66 45 0f 38 30 ed    	pmovzxbw %xmm13,%xmm13
    61d5:	48 98                	cltq
    61d7:	66 0f 38 3d f0       	pmaxsd %xmm0,%xmm6
    61dc:	66 0f 6f c7          	movdqa %xmm7,%xmm0
    61e0:	66 45 0f 6e 1c 01    	movd   (%r9,%rax,1),%xmm11
    61e6:	42 8d 04 39          	lea    (%rcx,%r15,1),%eax
    61ea:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
    61ef:	c1 e0 02             	shl    $0x2,%eax
    61f2:	66 0f fa c6          	psubd  %xmm6,%xmm0
    61f6:	66 45 0f 61 c5       	punpcklwd %xmm13,%xmm8
    61fb:	66 45 0f 70 d2 00    	pshufd $0x0,%xmm10,%xmm10
    6201:	48 98                	cltq
    6203:	66 45 0f 38 30 db    	pmovzxbw %xmm11,%xmm11
    6209:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
    620e:	66 41 0f 6e 34 01    	movd   (%r9,%rax,1),%xmm6
    6214:	66 0f 38 30 f6       	pmovzxbw %xmm6,%xmm6
    6219:	66 44 0f 61 de       	punpcklwd %xmm6,%xmm11
    621e:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    6223:	66 0f 72 f6 10       	pslld  $0x10,%xmm6
    6228:	66 41 0f eb f7       	por    %xmm15,%xmm6
    622d:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    6232:	66 44 0f f5 c6       	pmaddwd %xmm6,%xmm8
    6237:	66 44 0f f5 de       	pmaddwd %xmm6,%xmm11
    623c:	66 0f ef f6          	pxor   %xmm6,%xmm6
    6240:	66 41 0f 38 40 c0    	pmulld %xmm8,%xmm0
    6246:	66 45 0f 38 40 d3    	pmulld %xmm11,%xmm10
    624c:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
    6251:	66 0f fe 84 24 90 01 	paddd  0x190(%rsp),%xmm0
    6258:	00 00 
    625a:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
    625f:	66 0f 38 2b c0       	packusdw %xmm0,%xmm0
    6264:	66 0f 67 c0          	packuswb %xmm0,%xmm0
    6268:	66 0f 7e c0          	movd   %xmm0,%eax
    626c:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 6274 <sg_raster_triangle_depth_capture+0x2dc4>
    6273:	00 
    6274:	f3 0f 59 84 b4 00 03 	mulss  0x300(%rsp,%rsi,4),%xmm0
    627b:	00 00 
    627d:	0f b6 d0             	movzbl %al,%edx
    6280:	f3 0f 2a f2          	cvtsi2ss %edx,%xmm6
    6284:	0f b6 d4             	movzbl %ah,%edx
    6287:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    628b:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 6293 <sg_raster_triangle_depth_capture+0x2de3>
    6292:	00 
    6293:	f3 0f 59 b4 b4 10 03 	mulss  0x310(%rsp,%rsi,4),%xmm6
    629a:	00 00 
    629c:	f3 0f 11 84 b4 00 03 	movss  %xmm0,0x300(%rsp,%rsi,4)
    62a3:	00 00 
    62a5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    62a9:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    62ad:	89 c2                	mov    %eax,%edx
    62af:	c1 e8 18             	shr    $0x18,%eax
    62b2:	c1 ea 10             	shr    $0x10,%edx
    62b5:	0f b6 d2             	movzbl %dl,%edx
    62b8:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    62bc:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 62c4 <sg_raster_triangle_depth_capture+0x2e14>
    62c3:	00 
    62c4:	f3 0f 59 b4 b4 60 03 	mulss  0x360(%rsp,%rsi,4),%xmm6
    62cb:	00 00 
    62cd:	f3 0f 11 84 b4 10 03 	movss  %xmm0,0x310(%rsp,%rsi,4)
    62d4:	00 00 
    62d6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    62da:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    62de:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    62e2:	66 0f ef f6          	pxor   %xmm6,%xmm6
    62e6:	f3 0f 2a f0          	cvtsi2ss %eax,%xmm6
    62ea:	f3 0f 11 84 b4 60 03 	movss  %xmm0,0x360(%rsp,%rsi,4)
    62f1:	00 00 
    62f3:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 62fb <sg_raster_triangle_depth_capture+0x2e4b>
    62fa:	00 
    62fb:	f3 0f 59 84 b4 a0 03 	mulss  0x3a0(%rsp,%rsi,4),%xmm0
    6302:	00 00 
    6304:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    6308:	f3 0f 11 84 b4 a0 03 	movss  %xmm0,0x3a0(%rsp,%rsi,4)
    630f:	00 00 
    6311:	48 83 c6 01          	add    $0x1,%rsi
    6315:	48 83 fe 04          	cmp    $0x4,%rsi
    6319:	0f 85 ea fd ff ff    	jne    6109 <sg_raster_triangle_depth_capture+0x2c59>
    631f:	44 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%r8d
    6326:	00 
    6327:	8b 94 24 b0 01 00 00 	mov    0x1b0(%rsp),%edx
    632e:	0f 28 b4 24 00 03 00 	movaps 0x300(%rsp),%xmm6
    6335:	00 
    6336:	0f 28 bc 24 10 03 00 	movaps 0x310(%rsp),%xmm7
    633d:	00 
    633e:	44 0f 28 84 24 60 03 	movaps 0x360(%rsp),%xmm8
    6345:	00 00 
    6347:	44 0f 28 94 24 a0 03 	movaps 0x3a0(%rsp),%xmm10
    634e:	00 00 
    6350:	e9 e3 ef ff ff       	jmp    5338 <sg_raster_triangle_depth_capture+0x1e88>
    6355:	0f 1f 00             	nopl   (%rax)
    6358:	99                   	cltd
    6359:	41 f7 fb             	idiv   %r11d
    635c:	44 89 f8             	mov    %r15d,%eax
    635f:	85 d2                	test   %edx,%edx
    6361:	46 8d 04 1a          	lea    (%rdx,%r11,1),%r8d
    6365:	44 0f 49 c2          	cmovns %edx,%r8d
    6369:	99                   	cltd
    636a:	41 f7 fb             	idiv   %r11d
    636d:	41 89 d7             	mov    %edx,%r15d
    6370:	85 d2                	test   %edx,%edx
    6372:	79 03                	jns    6377 <sg_raster_triangle_depth_capture+0x2ec7>
    6374:	45 01 df             	add    %r11d,%r15d
    6377:	85 db                	test   %ebx,%ebx
    6379:	0f 84 a0 10 00 00    	je     741f <sg_raster_triangle_depth_capture+0x3f6f>
    637f:	89 ca                	mov    %ecx,%edx
    6381:	41 21 da             	and    %ebx,%r10d
    6384:	21 da                	and    %ebx,%edx
    6386:	41 0f af d3          	imul   %r11d,%edx
    638a:	45 0f af d3          	imul   %r11d,%r10d
    638e:	89 d1                	mov    %edx,%ecx
    6390:	e9 c5 fd ff ff       	jmp    615a <sg_raster_triangle_depth_capture+0x2caa>
    6395:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    639c:	01 00 00 00 
    63a0:	40 f6 c5 04          	test   $0x4,%bpl
    63a4:	0f 84 19 1b 00 00    	je     7ec3 <sg_raster_triangle_depth_capture+0x4a13>
    63aa:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    63af:	66 0f ef d2          	pxor   %xmm2,%xmm2
    63b3:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    63ba:	00 00 
    63bc:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
    63c3:	00 
    63c4:	f3 4c 0f 2a cf       	cvtsi2ss %rdi,%xmm9
    63c9:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 63d1 <sg_raster_triangle_depth_capture+0x2f21>
    63d0:	00 
    63d1:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    63d6:	f3 48 0f 2a d6       	cvtsi2ss %rsi,%xmm2
    63db:	0f 28 c5             	movaps %xmm5,%xmm0
    63de:	f3 0f 10 61 18       	movss  0x18(%rcx),%xmm4
    63e3:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    63ea:	00 
    63eb:	f3 0f 10 59 18       	movss  0x18(%rcx),%xmm3
    63f0:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    63f7:	00 
    63f8:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    63fd:	f3 0f 59 ea          	mulss  %xmm2,%xmm5
    6401:	44 0f 28 c0          	movaps %xmm0,%xmm8
    6405:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    6409:	0f 28 fd             	movaps %xmm5,%xmm7
    640c:	f3 0f 10 69 18       	movss  0x18(%rcx),%xmm5
    6411:	8b 8b 84 00 00 00    	mov    0x84(%rbx),%ecx
    6417:	f3 44 0f 58 c7       	addss  %xmm7,%xmm8
    641c:	f3 0f 59 fb          	mulss  %xmm3,%xmm7
    6420:	f3 41 0f 5c c8       	subss  %xmm8,%xmm1
    6425:	f3 0f 58 c7          	addss  %xmm7,%xmm0
    6429:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    642d:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    6434:	00 00 
    6436:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    643a:	44 0f 28 d1          	movaps %xmm1,%xmm10
    643e:	85 c9                	test   %ecx,%ecx
    6440:	74 7e                	je     64c0 <sg_raster_triangle_depth_capture+0x3010>
    6442:	44 8b bb c0 00 00 00 	mov    0xc0(%rbx),%r15d
    6449:	45 85 ff             	test   %r15d,%r15d
    644c:	75 72                	jne    64c0 <sg_raster_triangle_depth_capture+0x3010>
    644e:	44 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%r8d
    6455:	00 
    6456:	44 0f af 03          	imul   (%rbx),%r8d
    645a:	44 8b 54 24 10       	mov    0x10(%rsp),%r10d
    645f:	45 01 d0             	add    %r10d,%r8d
    6462:	4c 8b 53 10          	mov    0x10(%rbx),%r10
    6466:	8b 9b 88 00 00 00    	mov    0x88(%rbx),%ebx
    646c:	4d 63 c0             	movslq %r8d,%r8
    646f:	f3 43 0f 10 04 82    	movss  (%r10,%r8,4),%xmm0
    6475:	44 8d 83 00 fe ff ff 	lea    -0x200(%rbx),%r8d
    647c:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%rsp)
    6483:	41 83 f8 07          	cmp    $0x7,%r8d
    6487:	0f 87 62 4f 00 00    	ja     b3ef <sg_raster_triangle_depth_capture+0x7f3f>
    648d:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 6494 <sg_raster_triangle_depth_capture+0x2fe4>
    6494:	4f 63 04 82          	movslq (%r10,%r8,4),%r8
    6498:	4d 01 d0             	add    %r10,%r8
    649b:	41 ff e0             	jmp    *%r8
    649e:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    64a5:	01 00 00 00 
    64a9:	45 85 c0             	test   %r8d,%r8d
    64ac:	0f 84 47 4b 00 00    	je     aff9 <sg_raster_triangle_depth_capture+0x7b49>
    64b2:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    64b9:	01 00 00 00 
    64bd:	0f 1f 00             	nopl   (%rax)
    64c0:	40 f6 c5 08          	test   $0x8,%bpl
    64c4:	0f 84 a6 19 00 00    	je     7e70 <sg_raster_triangle_depth_capture+0x49c0>
    64ca:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    64cf:	66 0f ef ff          	pxor   %xmm7,%xmm7
    64d3:	f3 0f 10 94 24 ec 00 	movss  0xec(%rsp),%xmm2
    64da:	00 00 
    64dc:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 64e4 <sg_raster_triangle_depth_capture+0x3034>
    64e3:	00 
    64e4:	f3 4d 0f 2a c3       	cvtsi2ss %r11,%xmm8
    64e9:	f3 49 0f 2a f9       	cvtsi2ss %r9,%xmm7
    64ee:	0f 28 c2             	movaps %xmm2,%xmm0
    64f1:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    64f6:	f3 0f 59 d7          	mulss  %xmm7,%xmm2
    64fa:	44 0f 28 c8          	movaps %xmm0,%xmm9
    64fe:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    6503:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    6507:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    650b:	f3 41 0f 5c c9       	subss  %xmm9,%xmm1
    6510:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    6514:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    6518:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    651f:	00 00 
    6521:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    6525:	44 0f 28 d9          	movaps %xmm1,%xmm11
    6529:	85 c9                	test   %ecx,%ecx
    652b:	74 63                	je     6590 <sg_raster_triangle_depth_capture+0x30e0>
    652d:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    6532:	44 8b b9 c0 00 00 00 	mov    0xc0(%rcx),%r15d
    6539:	45 85 ff             	test   %r15d,%r15d
    653c:	75 52                	jne    6590 <sg_raster_triangle_depth_capture+0x30e0>
    653e:	48 89 cb             	mov    %rcx,%rbx
    6541:	8b 8c 24 e8 00 00 00 	mov    0xe8(%rsp),%ecx
    6548:	44 8b 54 24 30       	mov    0x30(%rsp),%r10d
    654d:	0f af 0b             	imul   (%rbx),%ecx
    6550:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    6554:	44 01 d1             	add    %r10d,%ecx
    6557:	48 63 c9             	movslq %ecx,%rcx
    655a:	f3 41 0f 10 04 88    	movss  (%r8,%rcx,4),%xmm0
    6560:	8b 8b 88 00 00 00    	mov    0x88(%rbx),%ecx
    6566:	89 8c 24 70 01 00 00 	mov    %ecx,0x170(%rsp)
    656d:	81 e9 00 02 00 00    	sub    $0x200,%ecx
    6573:	83 f9 07             	cmp    $0x7,%ecx
    6576:	0f 87 60 4e 00 00    	ja     b3dc <sg_raster_triangle_depth_capture+0x7f2c>
    657c:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 6583 <sg_raster_triangle_depth_capture+0x30d3>
    6583:	49 63 0c 88          	movslq (%r8,%rcx,4),%rcx
    6587:	4c 01 c1             	add    %r8,%rcx
    658a:	ff e1                	jmp    *%rcx
    658c:	0f 1f 40 00          	nopl   0x0(%rax)
    6590:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    6595:	66 0f ef d2          	pxor   %xmm2,%xmm2
    6599:	66 0f ef e4          	pxor   %xmm4,%xmm4
    659d:	66 0f ef db          	pxor   %xmm3,%xmm3
    65a1:	f3 4c 0f 2a cf       	cvtsi2ss %rdi,%xmm9
    65a6:	f3 48 0f 2a d6       	cvtsi2ss %rsi,%xmm2
    65ab:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    65b0:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    65b5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    65b9:	45 0f 14 c8          	unpcklps %xmm8,%xmm9
    65bd:	0f 14 d7             	unpcklps %xmm7,%xmm2
    65c0:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    65c7:	00 
    65c8:	f3 48 0f 2a 44 24 08 	cvtsi2ssq 0x8(%rsp),%xmm0
    65cf:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    65d6:	00 
    65d7:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 65df <sg_raster_triangle_depth_capture+0x312f>
    65de:	00 
    65df:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    65e6:	00 
    65e7:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    65eb:	0f 14 c4             	unpcklps %xmm4,%xmm0
    65ee:	f3 0f 10 a4 24 ec 00 	movss  0xec(%rsp),%xmm4
    65f5:	00 00 
    65f7:	41 0f 16 c1          	movlhps %xmm9,%xmm0
    65fb:	0f 28 c8             	movaps %xmm0,%xmm1
    65fe:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6602:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    6606:	f3 48 0f 2a 44 24 18 	cvtsi2ssq 0x18(%rsp),%xmm0
    660d:	0f 59 cc             	mulps  %xmm4,%xmm1
    6610:	0f 14 c3             	unpcklps %xmm3,%xmm0
    6613:	0f 16 c2             	movlhps %xmm2,%xmm0
    6616:	f3 0f 10 57 1c       	movss  0x1c(%rdi),%xmm2
    661b:	0f 59 c4             	mulps  %xmm4,%xmm0
    661e:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6622:	0f 28 fa             	movaps %xmm2,%xmm7
    6625:	f3 0f 10 56 1c       	movss  0x1c(%rsi),%xmm2
    662a:	0f 59 f9             	mulps  %xmm1,%xmm7
    662d:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6631:	0f 59 d0             	mulps  %xmm0,%xmm2
    6634:	0f 58 c1             	addps  %xmm1,%xmm0
    6637:	0f 28 cd             	movaps %xmm5,%xmm1
    663a:	0f 29 bc 24 a0 01 00 	movaps %xmm7,0x1a0(%rsp)
    6641:	00 
    6642:	0f 5c c8             	subps  %xmm0,%xmm1
    6645:	f3 0f 10 42 1c       	movss  0x1c(%rdx),%xmm0
    664a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    664e:	44 0f 28 ea          	movaps %xmm2,%xmm13
    6652:	0f 59 c8             	mulps  %xmm0,%xmm1
    6655:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6659:	44 0f 28 c1          	movaps %xmm1,%xmm8
    665d:	0f 28 cf             	movaps %xmm7,%xmm1
    6660:	0f 58 ca             	addps  %xmm2,%xmm1
    6663:	41 0f 58 c8          	addps  %xmm8,%xmm1
    6667:	0f 28 d1             	movaps %xmm1,%xmm2
    666a:	0f c2 d0 02          	cmpleps %xmm0,%xmm2
    666e:	0f 50 c2             	movmskps %xmm2,%eax
    6671:	83 e0 0f             	and    $0xf,%eax
    6674:	f7 d0                	not    %eax
    6676:	21 e8                	and    %ebp,%eax
    6678:	89 84 24 b0 01 00 00 	mov    %eax,0x1b0(%rsp)
    667f:	0f 84 d9 df ff ff    	je     465e <sg_raster_triangle_depth_capture+0x11ae>
    6685:	0f 53 d1             	rcpps  %xmm1,%xmm2
    6688:	41 89 c1             	mov    %eax,%r9d
    668b:	41 83 e1 01          	and    $0x1,%r9d
    668f:	0f 59 ca             	mulps  %xmm2,%xmm1
    6692:	0f 59 ca             	mulps  %xmm2,%xmm1
    6695:	0f 58 d2             	addps  %xmm2,%xmm2
    6698:	44 0f 28 fa          	movaps %xmm2,%xmm15
    669c:	f3 0f 10 57 20       	movss  0x20(%rdi),%xmm2
    66a1:	44 0f 5c f9          	subps  %xmm1,%xmm15
    66a5:	f3 0f 10 4e 20       	movss  0x20(%rsi),%xmm1
    66aa:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    66ae:	0f 59 d7             	mulps  %xmm7,%xmm2
    66b1:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    66b5:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    66b9:	44 0f 29 bc 24 c0 01 	movaps %xmm15,0x1c0(%rsp)
    66c0:	00 00 
    66c2:	0f 58 ca             	addps  %xmm2,%xmm1
    66c5:	f3 0f 10 52 20       	movss  0x20(%rdx),%xmm2
    66ca:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    66ce:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    66d2:	0f 58 ca             	addps  %xmm2,%xmm1
    66d5:	f3 0f 10 57 24       	movss  0x24(%rdi),%xmm2
    66da:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    66de:	0f 59 d7             	mulps  %xmm7,%xmm2
    66e1:	0f 28 d9             	movaps %xmm1,%xmm3
    66e4:	f3 0f 10 4e 24       	movss  0x24(%rsi),%xmm1
    66e9:	41 0f 59 df          	mulps  %xmm15,%xmm3
    66ed:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    66f1:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    66f5:	0f 58 ca             	addps  %xmm2,%xmm1
    66f8:	f3 0f 10 52 24       	movss  0x24(%rdx),%xmm2
    66fd:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6701:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    6705:	0f 58 ca             	addps  %xmm2,%xmm1
    6708:	f3 0f 10 57 28       	movss  0x28(%rdi),%xmm2
    670d:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6711:	0f 59 d7             	mulps  %xmm7,%xmm2
    6714:	41 0f 59 cf          	mulps  %xmm15,%xmm1
    6718:	44 0f 28 e1          	movaps %xmm1,%xmm12
    671c:	f3 0f 10 4e 28       	movss  0x28(%rsi),%xmm1
    6721:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6725:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    6729:	0f 58 ca             	addps  %xmm2,%xmm1
    672c:	f3 0f 10 52 28       	movss  0x28(%rdx),%xmm2
    6731:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6735:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    6739:	0f 58 ca             	addps  %xmm2,%xmm1
    673c:	f3 0f 10 57 2c       	movss  0x2c(%rdi),%xmm2
    6741:	48 8b bc 24 e0 04 00 	mov    0x4e0(%rsp),%rdi
    6748:	00 
    6749:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    674d:	0f 59 d7             	mulps  %xmm7,%xmm2
    6750:	0f 28 e1             	movaps %xmm1,%xmm4
    6753:	f3 0f 10 4e 2c       	movss  0x2c(%rsi),%xmm1
    6758:	8b b7 64 01 00 00    	mov    0x164(%rdi),%esi
    675e:	41 0f 59 e7          	mulps  %xmm15,%xmm4
    6762:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6766:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    676a:	0f 58 ca             	addps  %xmm2,%xmm1
    676d:	f3 0f 10 52 2c       	movss  0x2c(%rdx),%xmm2
    6772:	89 c2                	mov    %eax,%edx
    6774:	83 e2 02             	and    $0x2,%edx
    6777:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    677b:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    677f:	89 94 24 20 02 00 00 	mov    %edx,0x220(%rsp)
    6786:	89 c2                	mov    %eax,%edx
    6788:	83 e0 08             	and    $0x8,%eax
    678b:	83 e2 04             	and    $0x4,%edx
    678e:	89 84 24 80 01 00 00 	mov    %eax,0x180(%rsp)
    6795:	8d 46 ff             	lea    -0x1(%rsi),%eax
    6798:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
    679f:	0f 58 ca             	addps  %xmm2,%xmm1
    67a2:	0f 28 f9             	movaps %xmm1,%xmm7
    67a5:	41 0f 59 ff          	mulps  %xmm15,%xmm7
    67a9:	83 f8 01             	cmp    $0x1,%eax
    67ac:	0f 86 10 3f 00 00    	jbe    a6c2 <sg_raster_triangle_depth_capture+0x7212>
    67b2:	8b 97 68 01 00 00    	mov    0x168(%rdi),%edx
    67b8:	85 d2                	test   %edx,%edx
    67ba:	0f 84 78 05 00 00    	je     6d38 <sg_raster_triangle_depth_capture+0x3888>
    67c0:	49 89 fb             	mov    %rdi,%r11
    67c3:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    67ca:	00 
    67cb:	45 31 ff             	xor    %r15d,%r15d
    67ce:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    67d5:	00 
    67d6:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 67df <sg_raster_triangle_depth_capture+0x332f>
    67dd:	00 00 
    67df:	4c 8d 84 24 a0 03 00 	lea    0x3a0(%rsp),%r8
    67e6:	00 
    67e7:	4c 89 db             	mov    %r11,%rbx
    67ea:	44 8b 9c 24 20 02 00 	mov    0x220(%rsp),%r11d
    67f1:	00 
    67f2:	48 8d 4f 50          	lea    0x50(%rdi),%rcx
    67f6:	4c 8d 50 50          	lea    0x50(%rax),%r10
    67fa:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    6801:	00 
    6802:	4d 89 c5             	mov    %r8,%r13
    6805:	48 8d bc 24 60 03 00 	lea    0x360(%rsp),%rdi
    680c:	00 
    680d:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    6812:	45 89 c8             	mov    %r9d,%r8d
    6815:	0f 29 9c 24 70 02 00 	movaps %xmm3,0x270(%rsp)
    681c:	00 
    681d:	48 89 bc 24 d0 01 00 	mov    %rdi,0x1d0(%rsp)
    6824:	00 
    6825:	48 83 c0 50          	add    $0x50,%rax
    6829:	f3 44 0f 11 9c 24 b4 	movss  %xmm11,0x2b4(%rsp)
    6830:	02 00 00 
    6833:	f3 44 0f 11 94 24 b8 	movss  %xmm10,0x2b8(%rsp)
    683a:	02 00 00 
    683d:	44 0f 29 84 24 e0 01 	movaps %xmm8,0x1e0(%rsp)
    6844:	00 00 
    6846:	44 0f 29 a4 24 80 02 	movaps %xmm12,0x280(%rsp)
    684d:	00 00 
    684f:	0f 29 a4 24 90 02 00 	movaps %xmm4,0x290(%rsp)
    6856:	00 
    6857:	0f 29 bc 24 a0 02 00 	movaps %xmm7,0x2a0(%rsp)
    685e:	00 
    685f:	f3 0f 11 b4 24 bc 02 	movss  %xmm6,0x2bc(%rsp)
    6866:	00 00 
    6868:	44 0f 29 b4 24 60 02 	movaps %xmm14,0x260(%rsp)
    686f:	00 00 
    6871:	48 8b bc 24 e0 04 00 	mov    0x4e0(%rsp),%rdi
    6878:	00 
    6879:	8b 97 6c 01 00 00    	mov    0x16c(%rdi),%edx
    687f:	44 0f a3 fa          	bt     %r15d,%edx
    6883:	0f 83 6f 41 00 00    	jae    a9f8 <sg_raster_triangle_depth_capture+0x7548>
    6889:	44 8b 4b 44          	mov    0x44(%rbx),%r9d
    688d:	45 85 c9             	test   %r9d,%r9d
    6890:	0f 85 7b 41 00 00    	jne    aa11 <sg_raster_triangle_depth_capture+0x7561>
    6896:	0f 28 bc 24 e0 01 00 	movaps 0x1e0(%rsp),%xmm7
    689d:	00 
    689e:	f3 41 0f 10 02       	movss  (%r10),%xmm0
    68a3:	f3 0f 10 08          	movss  (%rax),%xmm1
    68a7:	0f 28 a4 24 a0 01 00 	movaps 0x1a0(%rsp),%xmm4
    68ae:	00 
    68af:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    68b3:	0f 59 c7             	mulps  %xmm7,%xmm0
    68b6:	f3 0f 10 50 04       	movss  0x4(%rax),%xmm2
    68bb:	0f 28 9c 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm3
    68c2:	00 
    68c3:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    68c7:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    68cb:	8b 13                	mov    (%rbx),%edx
    68cd:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    68d1:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    68d5:	0f 58 c1             	addps  %xmm1,%xmm0
    68d8:	f3 0f 10 09          	movss  (%rcx),%xmm1
    68dc:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    68e0:	0f 59 cc             	mulps  %xmm4,%xmm1
    68e3:	0f 58 c1             	addps  %xmm1,%xmm0
    68e6:	f3 41 0f 10 4a 04    	movss  0x4(%r10),%xmm1
    68ec:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    68f0:	0f 59 cf             	mulps  %xmm7,%xmm1
    68f3:	0f 59 c3             	mulps  %xmm3,%xmm0
    68f6:	0f 58 ca             	addps  %xmm2,%xmm1
    68f9:	f3 0f 10 51 04       	movss  0x4(%rcx),%xmm2
    68fe:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6902:	0f 59 d4             	mulps  %xmm4,%xmm2
    6905:	0f 58 ca             	addps  %xmm2,%xmm1
    6908:	0f 59 cb             	mulps  %xmm3,%xmm1
    690b:	83 fa 01             	cmp    $0x1,%edx
    690e:	0f 84 72 4c 00 00    	je     b586 <sg_raster_triangle_depth_capture+0x80d6>
    6914:	f3 41 0f 10 52 08    	movss  0x8(%r10),%xmm2
    691a:	f3 0f 10 58 08       	movss  0x8(%rax),%xmm3
    691f:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6923:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    6927:	0f 59 94 24 e0 01 00 	mulps  0x1e0(%rsp),%xmm2
    692e:	00 
    692f:	41 0f 59 dd          	mulps  %xmm13,%xmm3
    6933:	0f 58 d3             	addps  %xmm3,%xmm2
    6936:	f3 0f 10 59 08       	movss  0x8(%rcx),%xmm3
    693b:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    693f:	0f 59 9c 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm3
    6946:	00 
    6947:	0f 58 d3             	addps  %xmm3,%xmm2
    694a:	0f 59 94 24 c0 01 00 	mulps  0x1c0(%rsp),%xmm2
    6951:	00 
    6952:	83 fa 03             	cmp    $0x3,%edx
    6955:	0f 84 cb 50 00 00    	je     ba26 <sg_raster_triangle_depth_capture+0x8576>
    695b:	4c 89 94 24 10 02 00 	mov    %r10,0x210(%rsp)
    6962:	00 
    6963:	66 0f ef ff          	pxor   %xmm7,%xmm7
    6967:	31 ed                	xor    %ebp,%ebp
    6969:	48 89 84 24 28 02 00 	mov    %rax,0x228(%rsp)
    6970:	00 
    6971:	48 89 8c 24 30 02 00 	mov    %rcx,0x230(%rsp)
    6978:	00 
    6979:	44 89 9c 24 b0 02 00 	mov    %r11d,0x2b0(%rsp)
    6980:	00 
    6981:	44 89 84 24 40 02 00 	mov    %r8d,0x240(%rsp)
    6988:	00 
    6989:	4c 89 ac 24 00 02 00 	mov    %r13,0x200(%rsp)
    6990:	00 
    6991:	49 89 dd             	mov    %rbx,%r13
    6994:	8b 9c 24 b0 01 00 00 	mov    0x1b0(%rsp),%ebx
    699b:	0f 29 bc 24 60 03 00 	movaps %xmm7,0x360(%rsp)
    69a2:	00 
    69a3:	0f 29 bc 24 70 03 00 	movaps %xmm7,0x370(%rsp)
    69aa:	00 
    69ab:	0f 29 bc 24 80 03 00 	movaps %xmm7,0x380(%rsp)
    69b2:	00 
    69b3:	0f 29 bc 24 90 03 00 	movaps %xmm7,0x390(%rsp)
    69ba:	00 
    69bb:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    69c2:	00 
    69c3:	0f 29 8c 24 00 03 00 	movaps %xmm1,0x300(%rsp)
    69ca:	00 
    69cb:	0f 29 94 24 10 03 00 	movaps %xmm2,0x310(%rsp)
    69d2:	00 
    69d3:	44 0f 29 ac 24 f0 01 	movaps %xmm13,0x1f0(%rsp)
    69da:	00 00 
    69dc:	0f 29 ac 24 50 02 00 	movaps %xmm5,0x250(%rsp)
    69e3:	00 
    69e4:	0f a3 eb             	bt     %ebp,%ebx
    69e7:	73 4e                	jae    6a37 <sg_raster_triangle_depth_capture+0x3587>
    69e9:	48 8b 84 24 d0 01 00 	mov    0x1d0(%rsp),%rax
    69f0:	00 
    69f1:	48 89 ea             	mov    %rbp,%rdx
    69f4:	45 8b 45 00          	mov    0x0(%r13),%r8d
    69f8:	48 c1 e2 04          	shl    $0x4,%rdx
    69fc:	41 8b 4d 18          	mov    0x18(%r13),%ecx
    6a00:	41 8b 75 10          	mov    0x10(%r13),%esi
    6a04:	4c 8d 0c 02          	lea    (%rdx,%rax,1),%r9
    6a08:	49 8b 7d 08          	mov    0x8(%r13),%rdi
    6a0c:	41 8b 55 14          	mov    0x14(%r13),%edx
    6a10:	f3 0f 10 84 ac f0 02 	movss  0x2f0(%rsp,%rbp,4),%xmm0
    6a17:	00 00 
    6a19:	41 83 f8 02          	cmp    $0x2,%r8d
    6a1d:	0f 84 99 40 00 00    	je     aabc <sg_raster_triangle_depth_capture+0x760c>
    6a23:	45 85 c0             	test   %r8d,%r8d
    6a26:	0f 85 d5 3b 00 00    	jne    a601 <sg_raster_triangle_depth_capture+0x7151>
    6a2c:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    6a32:	e8 00 00 00 00       	call   6a37 <sg_raster_triangle_depth_capture+0x3587>
    6a37:	48 83 c5 01          	add    $0x1,%rbp
    6a3b:	48 83 fd 04          	cmp    $0x4,%rbp
    6a3f:	75 a3                	jne    69e4 <sg_raster_triangle_depth_capture+0x3534>
    6a41:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    6a48:	00 
    6a49:	0f 28 b4 24 70 03 00 	movaps 0x370(%rsp),%xmm6
    6a50:	00 
    6a51:	4c 89 eb             	mov    %r13,%rbx
    6a54:	0f 28 8c 24 80 03 00 	movaps 0x380(%rsp),%xmm1
    6a5b:	00 
    6a5c:	0f 28 a4 24 90 03 00 	movaps 0x390(%rsp),%xmm4
    6a63:	00 
    6a64:	0f 28 d0             	movaps %xmm0,%xmm2
    6a67:	0f 15 c6             	unpckhps %xmm6,%xmm0
    6a6a:	4c 8b ac 24 00 02 00 	mov    0x200(%rsp),%r13
    6a71:	00 
    6a72:	44 0f 28 ac 24 f0 01 	movaps 0x1f0(%rsp),%xmm13
    6a79:	00 00 
    6a7b:	0f 14 d6             	unpcklps %xmm6,%xmm2
    6a7e:	0f 28 d9             	movaps %xmm1,%xmm3
    6a81:	0f 15 cc             	unpckhps %xmm4,%xmm1
    6a84:	4c 8b 94 24 10 02 00 	mov    0x210(%rsp),%r10
    6a8b:	00 
    6a8c:	0f 14 dc             	unpcklps %xmm4,%xmm3
    6a8f:	0f 28 f2             	movaps %xmm2,%xmm6
    6a92:	0f 28 e0             	movaps %xmm0,%xmm4
    6a95:	48 8b 84 24 28 02 00 	mov    0x228(%rsp),%rax
    6a9c:	00 
    6a9d:	0f 16 f3             	movlhps %xmm3,%xmm6
    6aa0:	0f 16 e1             	movlhps %xmm1,%xmm4
    6aa3:	0f 12 da             	movhlps %xmm2,%xmm3
    6aa6:	48 8b 8c 24 30 02 00 	mov    0x230(%rsp),%rcx
    6aad:	00 
    6aae:	0f 12 c8             	movhlps %xmm0,%xmm1
    6ab1:	44 8b 9c 24 b0 02 00 	mov    0x2b0(%rsp),%r11d
    6ab8:	00 
    6ab9:	44 8b 84 24 40 02 00 	mov    0x240(%rsp),%r8d
    6ac0:	00 
    6ac1:	41 0f 29 75 00       	movaps %xmm6,0x0(%r13)
    6ac6:	0f 28 ac 24 50 02 00 	movaps 0x250(%rsp),%xmm5
    6acd:	00 
    6ace:	41 0f 29 5d 10       	movaps %xmm3,0x10(%r13)
    6ad3:	41 0f 29 65 20       	movaps %xmm4,0x20(%r13)
    6ad8:	41 0f 29 4d 30       	movaps %xmm1,0x30(%r13)
    6add:	41 83 c7 01          	add    $0x1,%r15d
    6ae1:	49 83 c5 40          	add    $0x40,%r13
    6ae5:	48 83 c3 58          	add    $0x58,%rbx
    6ae9:	49 83 c2 10          	add    $0x10,%r10
    6aed:	48 83 c0 10          	add    $0x10,%rax
    6af1:	48 83 c1 10          	add    $0x10,%rcx
    6af5:	41 83 ff 04          	cmp    $0x4,%r15d
    6af9:	0f 85 72 fd ff ff    	jne    6871 <sg_raster_triangle_depth_capture+0x33c1>
    6aff:	44 0f 28 a4 24 80 02 	movaps 0x280(%rsp),%xmm12
    6b06:	00 00 
    6b08:	0f 28 9c 24 70 02 00 	movaps 0x270(%rsp),%xmm3
    6b0f:	00 
    6b10:	45 89 c1             	mov    %r8d,%r9d
    6b13:	0f 28 84 24 a0 03 00 	movaps 0x3a0(%rsp),%xmm0
    6b1a:	00 
    6b1b:	0f 28 8c 24 b0 03 00 	movaps 0x3b0(%rsp),%xmm1
    6b22:	00 
    6b23:	44 0f 28 b4 24 60 02 	movaps 0x260(%rsp),%xmm14
    6b2a:	00 00 
    6b2c:	41 0f 28 d4          	movaps %xmm12,%xmm2
    6b30:	0f 28 a4 24 90 02 00 	movaps 0x290(%rsp),%xmm4
    6b37:	00 
    6b38:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    6b3f:	00 
    6b40:	0f 28 bc 24 a0 02 00 	movaps 0x2a0(%rsp),%xmm7
    6b47:	00 
    6b48:	41 0f 58 de          	addps  %xmm14,%xmm3
    6b4c:	41 0f 58 d6          	addps  %xmm14,%xmm2
    6b50:	f3 44 0f 10 9c 24 b4 	movss  0x2b4(%rsp),%xmm11
    6b57:	02 00 00 
    6b5a:	f3 44 0f 10 94 24 b8 	movss  0x2b8(%rsp),%xmm10
    6b61:	02 00 00 
    6b64:	41 0f 58 c6          	addps  %xmm14,%xmm0
    6b68:	41 0f 58 ce          	addps  %xmm14,%xmm1
    6b6c:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    6b72:	f3 0f 10 b4 24 bc 02 	movss  0x2bc(%rsp),%xmm6
    6b79:	00 00 
    6b7b:	41 0f 58 e6          	addps  %xmm14,%xmm4
    6b7f:	0f 59 c3             	mulps  %xmm3,%xmm0
    6b82:	0f 59 ca             	mulps  %xmm2,%xmm1
    6b85:	0f 28 94 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm2
    6b8c:	00 
    6b8d:	41 0f 58 d6          	addps  %xmm14,%xmm2
    6b91:	0f 58 c8             	addps  %xmm0,%xmm1
    6b94:	0f 28 c4             	movaps %xmm4,%xmm0
    6b97:	0f 59 c2             	mulps  %xmm2,%xmm0
    6b9a:	66 0f ef d2          	pxor   %xmm2,%xmm2
    6b9e:	0f 58 c1             	addps  %xmm1,%xmm0
    6ba1:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 6ba9 <sg_raster_triangle_depth_capture+0x36f9>
    6ba8:	00 
    6ba9:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6bad:	0f 59 c1             	mulps  %xmm1,%xmm0
    6bb0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6bb4:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    6bb8:	0f 28 d8             	movaps %xmm0,%xmm3
    6bbb:	0f c2 da 01          	cmpltps %xmm2,%xmm3
    6bbf:	66 0f 66 e3          	pcmpgtd %xmm3,%xmm4
    6bc3:	0f 55 e0             	andnps %xmm0,%xmm4
    6bc6:	0f 28 c5             	movaps %xmm5,%xmm0
    6bc9:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    6bcd:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    6bd2:	83 f8 01             	cmp    $0x1,%eax
    6bd5:	0f 84 54 45 00 00    	je     b12f <sg_raster_triangle_depth_capture+0x7c7f>
    6bdb:	0f 59 e4             	mulps  %xmm4,%xmm4
    6bde:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    6be2:	0f 28 c4             	movaps %xmm4,%xmm0
    6be5:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    6be9:	66 0f 66 d8          	pcmpgtd %xmm0,%xmm3
    6bed:	0f 28 c5             	movaps %xmm5,%xmm0
    6bf0:	0f 55 dc             	andnps %xmm4,%xmm3
    6bf3:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    6bf7:	0f 28 e3             	movaps %xmm3,%xmm4
    6bfa:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    6bff:	83 f8 03             	cmp    $0x3,%eax
    6c02:	0f 84 56 4d 00 00    	je     b95e <sg_raster_triangle_depth_capture+0x84ae>
    6c08:	0f 28 84 24 20 04 00 	movaps 0x420(%rsp),%xmm0
    6c0f:	00 
    6c10:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    6c14:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    6c19:	0f 59 c4             	mulps  %xmm4,%xmm0
    6c1c:	0f 28 f8             	movaps %xmm0,%xmm7
    6c1f:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    6c23:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    6c27:	0f 55 d8             	andnps %xmm0,%xmm3
    6c2a:	0f 28 c5             	movaps %xmm5,%xmm0
    6c2d:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    6c31:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    6c36:	f3 0f 10 80 38 37 00 	movss  0x3738(%rax),%xmm0
    6c3d:	00 
    6c3e:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    6c42:	0f 59 c3             	mulps  %xmm3,%xmm0
    6c45:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    6c49:	0f 28 f8             	movaps %xmm0,%xmm7
    6c4c:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    6c50:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    6c54:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    6c58:	0f 55 d8             	andnps %xmm0,%xmm3
    6c5b:	0f 28 c5             	movaps %xmm5,%xmm0
    6c5e:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    6c62:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    6c67:	0f 28 84 24 30 04 00 	movaps 0x430(%rsp),%xmm0
    6c6e:	00 
    6c6f:	0f 59 c4             	mulps  %xmm4,%xmm0
    6c72:	0f 59 a4 24 40 04 00 	mulps  0x440(%rsp),%xmm4
    6c79:	00 
    6c7a:	44 0f 28 c0          	movaps %xmm0,%xmm8
    6c7e:	44 0f c2 c2 01       	cmpltps %xmm2,%xmm8
    6c83:	66 41 0f 66 f8       	pcmpgtd %xmm8,%xmm7
    6c88:	0f 55 f8             	andnps %xmm0,%xmm7
    6c8b:	0f 28 c5             	movaps %xmm5,%xmm0
    6c8e:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    6c92:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    6c97:	f3 0f 10 80 3c 37 00 	movss  0x373c(%rax),%xmm0
    6c9e:	00 
    6c9f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    6ca3:	0f 59 c7             	mulps  %xmm7,%xmm0
    6ca6:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    6caa:	44 0f 28 c0          	movaps %xmm0,%xmm8
    6cae:	44 0f c2 c2 01       	cmpltps %xmm2,%xmm8
    6cb3:	66 41 0f 66 f8       	pcmpgtd %xmm8,%xmm7
    6cb8:	0f 55 f8             	andnps %xmm0,%xmm7
    6cbb:	0f 28 c5             	movaps %xmm5,%xmm0
    6cbe:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    6cc2:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    6cc7:	0f 28 c4             	movaps %xmm4,%xmm0
    6cca:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    6cce:	44 0f 28 e7          	movaps %xmm7,%xmm12
    6cd2:	66 0f 66 c8          	pcmpgtd %xmm0,%xmm1
    6cd6:	0f 28 c5             	movaps %xmm5,%xmm0
    6cd9:	0f 55 cc             	andnps %xmm4,%xmm1
    6cdc:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    6ce0:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    6ce5:	f3 0f 10 80 40 37 00 	movss  0x3740(%rax),%xmm0
    6cec:	00 
    6ced:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    6cf1:	0f 59 c1             	mulps  %xmm1,%xmm0
    6cf4:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6cf8:	0f 28 d0             	movaps %xmm0,%xmm2
    6cfb:	0f c2 d1 01          	cmpltps %xmm1,%xmm2
    6cff:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6d03:	66 0f 66 ca          	pcmpgtd %xmm2,%xmm1
    6d07:	0f 55 c8             	andnps %xmm0,%xmm1
    6d0a:	0f 28 c5             	movaps %xmm5,%xmm0
    6d0d:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    6d11:	0f 28 e1             	movaps %xmm1,%xmm4
    6d14:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6d18:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    6d1d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 6d25 <sg_raster_triangle_depth_capture+0x3875>
    6d24:	00 
    6d25:	f3 0f 5d 80 44 37 00 	minss  0x3744(%rax),%xmm0
    6d2c:	00 
    6d2d:	f3 0f 5f c1          	maxss  %xmm1,%xmm0
    6d31:	0f 28 f8             	movaps %xmm0,%xmm7
    6d34:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
    6d38:	44 0f 28 cc          	movaps %xmm4,%xmm9
    6d3c:	44 0f 28 c3          	movaps %xmm3,%xmm8
    6d40:	0f 28 eb             	movaps %xmm3,%xmm5
    6d43:	0f 15 e7             	unpckhps %xmm7,%xmm4
    6d46:	45 0f 14 c4          	unpcklps %xmm12,%xmm8
    6d4a:	41 0f 15 ec          	unpckhps %xmm12,%xmm5
    6d4e:	44 0f 14 cf          	unpcklps %xmm7,%xmm9
    6d52:	44 0f 28 e4          	movaps %xmm4,%xmm12
    6d56:	45 85 c9             	test   %r9d,%r9d
    6d59:	0f 84 bd 00 00 00    	je     6e1c <sg_raster_triangle_depth_capture+0x396c>
    6d5f:	41 0f 28 f9          	movaps %xmm9,%xmm7
    6d63:	8b 74 24 10          	mov    0x10(%rsp),%esi
    6d67:	41 0f 28 d9          	movaps %xmm9,%xmm3
    6d6b:	41 0f 28 c8          	movaps %xmm8,%xmm1
    6d6f:	41 0f c6 f9 55       	shufps $0x55,%xmm9,%xmm7
    6d74:	0f 29 a4 24 f0 01 00 	movaps %xmm4,0x1f0(%rsp)
    6d7b:	00 
    6d7c:	f3 0f 10 84 24 60 01 	movss  0x160(%rsp),%xmm0
    6d83:	00 00 
    6d85:	0f 28 e7             	movaps %xmm7,%xmm4
    6d88:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    6d8f:	41 0f 28 f8          	movaps %xmm8,%xmm7
    6d93:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6d98:	f3 0f 11 b4 24 00 02 	movss  %xmm6,0x200(%rsp)
    6d9f:	00 00 
    6da1:	41 0f c6 f8 55       	shufps $0x55,%xmm8,%xmm7
    6da6:	0f 28 d7             	movaps %xmm7,%xmm2
    6da9:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
    6db0:	00 
    6db1:	f3 44 0f 11 94 24 d0 	movss  %xmm10,0x1d0(%rsp)
    6db8:	01 00 00 
    6dbb:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    6dc2:	01 00 00 
    6dc5:	44 0f 29 8c 24 b0 01 	movaps %xmm9,0x1b0(%rsp)
    6dcc:	00 00 
    6dce:	44 0f 29 84 24 a0 01 	movaps %xmm8,0x1a0(%rsp)
    6dd5:	00 00 
    6dd7:	e8 00 00 00 00       	call   6ddc <sg_raster_triangle_depth_capture+0x392c>
    6ddc:	0f 28 ac 24 e0 01 00 	movaps 0x1e0(%rsp),%xmm5
    6de3:	00 
    6de4:	f3 0f 10 b4 24 00 02 	movss  0x200(%rsp),%xmm6
    6deb:	00 00 
    6ded:	44 0f 28 a4 24 f0 01 	movaps 0x1f0(%rsp),%xmm12
    6df4:	00 00 
    6df6:	f3 44 0f 10 94 24 d0 	movss  0x1d0(%rsp),%xmm10
    6dfd:	01 00 00 
    6e00:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    6e07:	01 00 00 
    6e0a:	44 0f 28 8c 24 b0 01 	movaps 0x1b0(%rsp),%xmm9
    6e11:	00 00 
    6e13:	44 0f 28 84 24 a0 01 	movaps 0x1a0(%rsp),%xmm8
    6e1a:	00 00 
    6e1c:	44 8b ac 24 20 02 00 	mov    0x220(%rsp),%r13d
    6e23:	00 
    6e24:	45 85 ed             	test   %r13d,%r13d
    6e27:	0f 84 87 00 00 00    	je     6eb4 <sg_raster_triangle_depth_capture+0x3a04>
    6e2d:	41 0f 28 e1          	movaps %xmm9,%xmm4
    6e31:	41 0f 28 f8          	movaps %xmm8,%xmm7
    6e35:	8b 74 24 30          	mov    0x30(%rsp),%esi
    6e39:	0f 28 c6             	movaps %xmm6,%xmm0
    6e3c:	41 0f c6 f8 ff       	shufps $0xff,%xmm8,%xmm7
    6e41:	41 0f c6 e1 ff       	shufps $0xff,%xmm9,%xmm4
    6e46:	45 0f 15 c0          	unpckhps %xmm8,%xmm8
    6e4a:	0f 28 d7             	movaps %xmm7,%xmm2
    6e4d:	45 0f 15 c9          	unpckhps %xmm9,%xmm9
    6e51:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    6e58:	41 0f 28 c8          	movaps %xmm8,%xmm1
    6e5c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6e61:	41 0f 28 d9          	movaps %xmm9,%xmm3
    6e65:	44 0f 29 a4 24 b0 01 	movaps %xmm12,0x1b0(%rsp)
    6e6c:	00 00 
    6e6e:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    6e75:	00 
    6e76:	f3 44 0f 11 94 24 20 	movss  %xmm10,0x220(%rsp)
    6e7d:	02 00 00 
    6e80:	f3 44 0f 11 9c 24 60 	movss  %xmm11,0x160(%rsp)
    6e87:	01 00 00 
    6e8a:	e8 00 00 00 00       	call   6e8f <sg_raster_triangle_depth_capture+0x39df>
    6e8f:	0f 28 ac 24 a0 01 00 	movaps 0x1a0(%rsp),%xmm5
    6e96:	00 
    6e97:	44 0f 28 a4 24 b0 01 	movaps 0x1b0(%rsp),%xmm12
    6e9e:	00 00 
    6ea0:	f3 44 0f 10 94 24 20 	movss  0x220(%rsp),%xmm10
    6ea7:	02 00 00 
    6eaa:	f3 44 0f 10 9c 24 60 	movss  0x160(%rsp),%xmm11
    6eb1:	01 00 00 
    6eb4:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    6ebb:	85 ed                	test   %ebp,%ebp
    6ebd:	74 69                	je     6f28 <sg_raster_triangle_depth_capture+0x3a78>
    6ebf:	0f 28 fd             	movaps %xmm5,%xmm7
    6ec2:	8b 74 24 10          	mov    0x10(%rsp),%esi
    6ec6:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6ecb:	41 0f 28 e4          	movaps %xmm12,%xmm4
    6ecf:	0f c6 fd 55          	shufps $0x55,%xmm5,%xmm7
    6ed3:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    6eda:	41 0f 28 dc          	movaps %xmm12,%xmm3
    6ede:	0f 28 cd             	movaps %xmm5,%xmm1
    6ee1:	0f 28 d7             	movaps %xmm7,%xmm2
    6ee4:	41 0f 28 c2          	movaps %xmm10,%xmm0
    6ee8:	f3 44 0f 11 9c 24 20 	movss  %xmm11,0x220(%rsp)
    6eef:	02 00 00 
    6ef2:	41 0f c6 e4 55       	shufps $0x55,%xmm12,%xmm4
    6ef7:	44 0f 29 a4 24 70 01 	movaps %xmm12,0x170(%rsp)
    6efe:	00 00 
    6f00:	0f 29 ac 24 60 01 00 	movaps %xmm5,0x160(%rsp)
    6f07:	00 
    6f08:	e8 00 00 00 00       	call   6f0d <sg_raster_triangle_depth_capture+0x3a5d>
    6f0d:	0f 28 ac 24 60 01 00 	movaps 0x160(%rsp),%xmm5
    6f14:	00 
    6f15:	f3 44 0f 10 9c 24 20 	movss  0x220(%rsp),%xmm11
    6f1c:	02 00 00 
    6f1f:	44 0f 28 a4 24 70 01 	movaps 0x170(%rsp),%xmm12
    6f26:	00 00 
    6f28:	8b 9c 24 80 01 00 00 	mov    0x180(%rsp),%ebx
    6f2f:	85 db                	test   %ebx,%ebx
    6f31:	0f 84 27 d7 ff ff    	je     465e <sg_raster_triangle_depth_capture+0x11ae>
    6f37:	41 0f 28 e4          	movaps %xmm12,%xmm4
    6f3b:	0f 28 fd             	movaps %xmm5,%xmm7
    6f3e:	8b 74 24 30          	mov    0x30(%rsp),%esi
    6f42:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6f47:	0f c6 fd ff          	shufps $0xff,%xmm5,%xmm7
    6f4b:	41 0f c6 e4 ff       	shufps $0xff,%xmm12,%xmm4
    6f50:	0f 15 ed             	unpckhps %xmm5,%xmm5
    6f53:	45 0f 15 e4          	unpckhps %xmm12,%xmm12
    6f57:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    6f5e:	41 0f 28 dc          	movaps %xmm12,%xmm3
    6f62:	0f 28 d7             	movaps %xmm7,%xmm2
    6f65:	0f 28 cd             	movaps %xmm5,%xmm1
    6f68:	41 0f 28 c3          	movaps %xmm11,%xmm0
    6f6c:	e8 00 00 00 00       	call   6f71 <sg_raster_triangle_depth_capture+0x3ac1>
    6f71:	e9 e8 d6 ff ff       	jmp    465e <sg_raster_triangle_depth_capture+0x11ae>
    6f76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6f7d:	00 00 00 
    6f80:	66 0f ef d2          	pxor   %xmm2,%xmm2
    6f84:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    6f89:	e9 2f ed ff ff       	jmp    5cbd <sg_raster_triangle_depth_capture+0x280d>
    6f8e:	66 90                	xchg   %ax,%ax
    6f90:	44 8b 8c 24 80 01 00 	mov    0x180(%rsp),%r9d
    6f97:	00 
    6f98:	45 85 c9             	test   %r9d,%r9d
    6f9b:	0f 85 6c 02 00 00    	jne    720d <sg_raster_triangle_depth_capture+0x3d5d>
    6fa1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    6fa6:	48 63 ca             	movslq %edx,%rcx
    6fa9:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6fad:	48 8b 40 10          	mov    0x10(%rax),%rax
    6fb1:	f3 0f 7e 04 88       	movq   (%rax,%rcx,4),%xmm0
    6fb6:	44 39 84 24 e8 00 00 	cmp    %r8d,0xe8(%rsp)
    6fbd:	00 
    6fbe:	7d 0d                	jge    6fcd <sg_raster_triangle_depth_capture+0x3b1d>
    6fc0:	48 63 8c 24 70 01 00 	movslq 0x170(%rsp),%rcx
    6fc7:	00 
    6fc8:	f3 0f 7e 0c 88       	movq   (%rax,%rcx,4),%xmm1
    6fcd:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    6fd2:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    6fd6:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
    6fdc:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
    6fe3:	2d 00 02 00 00       	sub    $0x200,%eax
    6fe8:	83 f8 06             	cmp    $0x6,%eax
    6feb:	0f 87 00 00 00 00    	ja     6ff1 <sg_raster_triangle_depth_capture+0x3b41>
    6ff1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 6ff8 <sg_raster_triangle_depth_capture+0x3b48>
    6ff8:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    6ffc:	48 01 c8             	add    %rcx,%rax
    6fff:	ff e0                	jmp    *%rax
    7001:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7008:	48 8b 48 08          	mov    0x8(%rax),%rcx
    700c:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
    7013:	48 98                	cltq
    7015:	f3 0f 7e 14 01       	movq   (%rcx,%rax,1),%xmm2
    701a:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
    701e:	0f 5d f5             	minps  %xmm5,%xmm6
    7021:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7025:	0f 5d fd             	minps  %xmm5,%xmm7
    7028:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    702d:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 7035 <sg_raster_triangle_depth_capture+0x3b85>
    7034:	00 
    7035:	44 0f 5d d5          	minps  %xmm5,%xmm10
    7039:	0f 28 ce             	movaps %xmm6,%xmm1
    703c:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    7040:	0f 5f c8             	maxps  %xmm0,%xmm1
    7043:	0f 59 cb             	mulps  %xmm3,%xmm1
    7046:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
    704a:	66 0f 6b c9          	packssdw %xmm1,%xmm1
    704e:	66 0f 67 c9          	packuswb %xmm1,%xmm1
    7052:	66 0f 7e c8          	movd   %xmm1,%eax
    7056:	0f 28 cf             	movaps %xmm7,%xmm1
    7059:	0f 5f c8             	maxps  %xmm0,%xmm1
    705c:	0f 59 cb             	mulps  %xmm3,%xmm1
    705f:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
    7063:	66 0f 6b c9          	packssdw %xmm1,%xmm1
    7067:	66 0f 67 c9          	packuswb %xmm1,%xmm1
    706b:	66 0f 7e ca          	movd   %xmm1,%edx
    706f:	41 0f 28 c8          	movaps %xmm8,%xmm1
    7073:	0f 5d cd             	minps  %xmm5,%xmm1
    7076:	66 0f 6e e2          	movd   %edx,%xmm4
    707a:	0f 5f c8             	maxps  %xmm0,%xmm1
    707d:	41 0f 5f c2          	maxps  %xmm10,%xmm0
    7081:	0f 59 cb             	mulps  %xmm3,%xmm1
    7084:	0f 59 c3             	mulps  %xmm3,%xmm0
    7087:	66 0f 6e d8          	movd   %eax,%xmm3
    708b:	8b 83 44 05 00 00    	mov    0x544(%rbx),%eax
    7091:	66 0f 60 dc          	punpcklbw %xmm4,%xmm3
    7095:	f7 d8                	neg    %eax
    7097:	8b 83 48 05 00 00    	mov    0x548(%rbx),%eax
    709d:	18 d2                	sbb    %dl,%dl
    709f:	0f b6 d2             	movzbl %dl,%edx
    70a2:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
    70a6:	66 0f 6b c9          	packssdw %xmm1,%xmm1
    70aa:	c1 e2 08             	shl    $0x8,%edx
    70ad:	f7 d8                	neg    %eax
    70af:	66 0f 5b c0          	cvtps2dq %xmm0,%xmm0
    70b3:	66 0f 6b c0          	packssdw %xmm0,%xmm0
    70b7:	18 c0                	sbb    %al,%al
    70b9:	66 0f 67 c9          	packuswb %xmm1,%xmm1
    70bd:	66 0f 67 c0          	packuswb %xmm0,%xmm0
    70c1:	0f b6 c0             	movzbl %al,%eax
    70c4:	66 0f 3a 21 c9 0e    	insertps $0xe,%xmm1,%xmm1
    70ca:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
    70d0:	c1 e0 10             	shl    $0x10,%eax
    70d3:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
    70d7:	09 d0                	or     %edx,%eax
    70d9:	8b 93 40 05 00 00    	mov    0x540(%rbx),%edx
    70df:	66 0f 61 d9          	punpcklwd %xmm1,%xmm3
    70e3:	f7 da                	neg    %edx
    70e5:	18 d2                	sbb    %dl,%dl
    70e7:	0f b6 d2             	movzbl %dl,%edx
    70ea:	09 d0                	or     %edx,%eax
    70ec:	8b 93 4c 05 00 00    	mov    0x54c(%rbx),%edx
    70f2:	f7 da                	neg    %edx
    70f4:	18 d2                	sbb    %dl,%dl
    70f6:	c1 e2 18             	shl    $0x18,%edx
    70f9:	09 d0                	or     %edx,%eax
    70fb:	85 f6                	test   %esi,%esi
    70fd:	0f 85 03 04 00 00    	jne    7506 <sg_raster_triangle_depth_capture+0x4056>
    7103:	45 85 ed             	test   %r13d,%r13d
    7106:	0f 85 8f 2c 00 00    	jne    9d9b <sg_raster_triangle_depth_capture+0x68eb>
    710c:	45 85 c9             	test   %r9d,%r9d
    710f:	0f 85 84 38 00 00    	jne    a999 <sg_raster_triangle_depth_capture+0x74e9>
    7115:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7119:	31 d2                	xor    %edx,%edx
    711b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    711f:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
    7125:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    712c:	00 00 00 00 
    7130:	66 41 0f 3a 22 c9 01 	pinsrd $0x1,%r9d,%xmm1
    7137:	66 0f 3a 22 c2 01    	pinsrd $0x1,%edx,%xmm0
    713d:	66 0f 6e f8          	movd   %eax,%xmm7
    7141:	89 e8                	mov    %ebp,%eax
    7143:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    7147:	66 0f 70 cf 00       	pshufd $0x0,%xmm7,%xmm1
    714c:	83 e0 03             	and    $0x3,%eax
    714f:	66 0f db c1          	pand   %xmm1,%xmm0
    7153:	66 0f db d8          	pand   %xmm0,%xmm3
    7157:	44 39 84 24 e8 00 00 	cmp    %r8d,0xe8(%rsp)
    715e:	00 
    715f:	0f 8d 84 03 00 00    	jge    74e9 <sg_raster_triangle_depth_capture+0x4039>
    7165:	8b 94 24 70 01 00 00 	mov    0x170(%rsp),%edx
    716c:	c1 e2 02             	shl    $0x2,%edx
    716f:	48 63 f2             	movslq %edx,%rsi
    7172:	f3 0f 7e 0c 31       	movq   (%rcx,%rsi,1),%xmm1
    7177:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    717b:	66 0f df c2          	pandn  %xmm2,%xmm0
    717f:	66 0f eb c3          	por    %xmm3,%xmm0
    7183:	85 c0                	test   %eax,%eax
    7185:	0f 85 1e 2c 00 00    	jne    9da9 <sg_raster_triangle_depth_capture+0x68f9>
    718b:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
    7190:	48 63 d2             	movslq %edx,%rdx
    7193:	66 0f d6 04 11       	movq   %xmm0,(%rcx,%rdx,1)
    7198:	e9 b6 d4 ff ff       	jmp    4653 <sg_raster_triangle_depth_capture+0x11a3>
    719d:	0f 1f 00             	nopl   (%rax)
    71a0:	44 8b bc 24 50 01 00 	mov    0x150(%rsp),%r15d
    71a7:	00 
    71a8:	45 85 ff             	test   %r15d,%r15d
    71ab:	0f 84 ee cc ff ff    	je     3e9f <sg_raster_triangle_depth_capture+0x9ef>
    71b1:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    71b6:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
    71bd:	00 
    71be:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
    71c3:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
    71c8:	48 8d 14 07          	lea    (%rdi,%rax,1),%rdx
    71cc:	4c 8d 1c 16          	lea    (%rsi,%rdx,1),%r11
    71d0:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
    71d4:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    71d9:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    71e0:	00 
    71e1:	48 01 f0             	add    %rsi,%rax
    71e4:	48 01 ce             	add    %rcx,%rsi
    71e7:	4c 8d 0c 01          	lea    (%rcx,%rax,1),%r9
    71eb:	e9 37 eb ff ff       	jmp    5d27 <sg_raster_triangle_depth_capture+0x2877>
    71f0:	0f c2 84 24 20 01 00 	cmpltps 0x120(%rsp),%xmm0
    71f7:	00 01 
    71f9:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    71fd:	66 0f db ca          	pand   %xmm2,%xmm1
    7201:	0f 50 e9             	movmskps %xmm1,%ebp
    7204:	83 e5 0f             	and    $0xf,%ebp
    7207:	0f 84 46 d4 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    720d:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    7212:	89 ee                	mov    %ebp,%esi
    7214:	41 89 ed             	mov    %ebp,%r13d
    7217:	41 89 e9             	mov    %ebp,%r9d
    721a:	83 e6 01             	and    $0x1,%esi
    721d:	41 83 e5 02          	and    $0x2,%r13d
    7221:	41 83 e1 04          	and    $0x4,%r9d
    7225:	8b b8 8c 00 00 00    	mov    0x8c(%rax),%edi
    722b:	85 ff                	test   %edi,%edi
    722d:	0f 84 c5 e3 ff ff    	je     55f8 <sg_raster_triangle_depth_capture+0x2148>
    7233:	85 f6                	test   %esi,%esi
    7235:	0f 85 b5 30 00 00    	jne    a2f0 <sg_raster_triangle_depth_capture+0x6e40>
    723b:	45 85 ed             	test   %r13d,%r13d
    723e:	0f 85 c8 30 00 00    	jne    a30c <sg_raster_triangle_depth_capture+0x6e5c>
    7244:	45 85 c9             	test   %r9d,%r9d
    7247:	74 2a                	je     7273 <sg_raster_triangle_depth_capture+0x3dc3>
    7249:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    724e:	48 63 84 24 70 01 00 	movslq 0x170(%rsp),%rax
    7255:	00 
    7256:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    725d:	00 
    725e:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    7262:	66 0f 3a 17 24 81 02 	extractps $0x2,%xmm4,(%rcx,%rax,4)
    7269:	40 f6 c5 08          	test   $0x8,%bpl
    726d:	0f 84 85 e3 ff ff    	je     55f8 <sg_raster_triangle_depth_capture+0x2148>
    7273:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    727a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    727f:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    7286:	00 
    7287:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    728b:	83 c0 01             	add    $0x1,%eax
    728e:	48 98                	cltq
    7290:	66 0f 3a 17 24 81 03 	extractps $0x3,%xmm4,(%rcx,%rax,4)
    7297:	e9 5c e3 ff ff       	jmp    55f8 <sg_raster_triangle_depth_capture+0x2148>
    729c:	0f 1f 40 00          	nopl   0x0(%rax)
    72a0:	66 0f ef f6          	pxor   %xmm6,%xmm6
    72a4:	40 f6 c5 04          	test   $0x4,%bpl
    72a8:	0f 85 fc f0 ff ff    	jne    63aa <sg_raster_triangle_depth_capture+0x2efa>
    72ae:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    72b3:	40 f6 c5 08          	test   $0x8,%bpl
    72b7:	0f 84 69 33 00 00    	je     a626 <sg_raster_triangle_depth_capture+0x7176>
    72bd:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
    72c4:	00 
    72c5:	f3 0f 10 61 18       	movss  0x18(%rcx),%xmm4
    72ca:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    72d1:	00 
    72d2:	f3 0f 10 59 18       	movss  0x18(%rcx),%xmm3
    72d7:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    72de:	00 
    72df:	f3 0f 10 69 18       	movss  0x18(%rcx),%xmm5
    72e4:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    72e9:	8b 89 84 00 00 00    	mov    0x84(%rcx),%ecx
    72ef:	e9 d6 f1 ff ff       	jmp    64ca <sg_raster_triangle_depth_capture+0x301a>
    72f4:	48 8b 9c 24 20 01 00 	mov    0x120(%rsp),%rbx
    72fb:	00 
    72fc:	4c 8b bc 24 28 01 00 	mov    0x128(%rsp),%r15
    7303:	00 
    7304:	85 f6                	test   %esi,%esi
    7306:	0f 85 83 1e 00 00    	jne    918f <sg_raster_triangle_depth_capture+0x5cdf>
    730c:	45 85 ed             	test   %r13d,%r13d
    730f:	0f 85 fe 1e 00 00    	jne    9213 <sg_raster_triangle_depth_capture+0x5d63>
    7315:	45 85 c9             	test   %r9d,%r9d
    7318:	0f 84 8c 00 00 00    	je     73aa <sg_raster_triangle_depth_capture+0x3efa>
    731e:	41 0f 28 e8          	movaps %xmm8,%xmm5
    7322:	41 0f 28 e2          	movaps %xmm10,%xmm4
    7326:	8b 74 24 10          	mov    0x10(%rsp),%esi
    732a:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
    7331:	00 
    7332:	41 0f 15 e8          	unpckhps %xmm8,%xmm5
    7336:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    733d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7342:	41 0f 15 e2          	unpckhps %xmm10,%xmm4
    7346:	0f 28 dd             	movaps %xmm5,%xmm3
    7349:	0f 28 ef             	movaps %xmm7,%xmm5
    734c:	66 41 0f 6e c7       	movd   %r15d,%xmm0
    7351:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
    7358:	00 00 
    735a:	0f 15 ef             	unpckhps %xmm7,%xmm5
    735d:	0f 28 fe             	movaps %xmm6,%xmm7
    7360:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
    7367:	00 00 
    7369:	0f 15 fe             	unpckhps %xmm6,%xmm7
    736c:	0f 28 d5             	movaps %xmm5,%xmm2
    736f:	0f 29 b4 24 20 01 00 	movaps %xmm6,0x120(%rsp)
    7376:	00 
    7377:	0f 28 cf             	movaps %xmm7,%xmm1
    737a:	e8 00 00 00 00       	call   737f <sg_raster_triangle_depth_capture+0x3ecf>
    737f:	0f 28 b4 24 20 01 00 	movaps 0x120(%rsp),%xmm6
    7386:	00 
    7387:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
    738e:	00 
    738f:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
    7396:	00 00 
    7398:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
    739f:	00 00 
    73a1:	83 e5 08             	and    $0x8,%ebp
    73a4:	0f 84 a9 d2 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    73aa:	66 49 0f 6e e7       	movq   %r15,%xmm4
    73af:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    73b6:	8b 74 24 30          	mov    0x30(%rsp),%esi
    73ba:	45 0f c6 d2 ff       	shufps $0xff,%xmm10,%xmm10
    73bf:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    73c4:	0f c6 e4 55          	shufps $0x55,%xmm4,%xmm4
    73c8:	0f c6 ff ff          	shufps $0xff,%xmm7,%xmm7
    73cc:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    73d0:	45 0f c6 c0 ff       	shufps $0xff,%xmm8,%xmm8
    73d5:	0f c6 f6 ff          	shufps $0xff,%xmm6,%xmm6
    73d9:	41 0f 28 e2          	movaps %xmm10,%xmm4
    73dd:	41 0f 28 d8          	movaps %xmm8,%xmm3
    73e1:	0f 28 d7             	movaps %xmm7,%xmm2
    73e4:	0f 28 ce             	movaps %xmm6,%xmm1
    73e7:	e8 00 00 00 00       	call   73ec <sg_raster_triangle_depth_capture+0x3f3c>
    73ec:	e9 62 d2 ff ff       	jmp    4653 <sg_raster_triangle_depth_capture+0x11a3>
    73f1:	44 89 d0             	mov    %r10d,%eax
    73f4:	99                   	cltd
    73f5:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    73fc:	41 89 d2             	mov    %edx,%r10d
    73ff:	85 d2                	test   %edx,%edx
    7401:	0f 88 d2 2a 00 00    	js     9ed9 <sg_raster_triangle_depth_capture+0x6a29>
    7407:	89 c8                	mov    %ecx,%eax
    7409:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    7410:	99                   	cltd
    7411:	f7 f9                	idiv   %ecx
    7413:	01 d1                	add    %edx,%ecx
    7415:	85 d2                	test   %edx,%edx
    7417:	0f 48 d1             	cmovs  %ecx,%edx
    741a:	e9 2b ed ff ff       	jmp    614a <sg_raster_triangle_depth_capture+0x2c9a>
    741f:	44 89 d0             	mov    %r10d,%eax
    7422:	99                   	cltd
    7423:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    742a:	41 89 d2             	mov    %edx,%r10d
    742d:	85 d2                	test   %edx,%edx
    742f:	0f 88 93 29 00 00    	js     9dc8 <sg_raster_triangle_depth_capture+0x6918>
    7435:	89 c8                	mov    %ecx,%eax
    7437:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    743e:	99                   	cltd
    743f:	f7 f9                	idiv   %ecx
    7441:	01 d1                	add    %edx,%ecx
    7443:	85 d2                	test   %edx,%edx
    7445:	0f 48 d1             	cmovs  %ecx,%edx
    7448:	e9 39 ef ff ff       	jmp    6386 <sg_raster_triangle_depth_capture+0x2ed6>
    744d:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    7452:	66 0f ef e4          	pxor   %xmm4,%xmm4
    7456:	f3 0f 10 88 18 01 00 	movss  0x118(%rax),%xmm1
    745d:	00 
    745e:	0f 28 d9             	movaps %xmm1,%xmm3
    7461:	f3 0f 5c 98 14 01 00 	subss  0x114(%rax),%xmm3
    7468:	00 
    7469:	0f 2f dc             	comiss %xmm4,%xmm3
    746c:	0f 84 86 1e 00 00    	je     92f8 <sg_raster_triangle_depth_capture+0x5e48>
    7472:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 747a <sg_raster_triangle_depth_capture+0x3fca>
    7479:	00 
    747a:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    747e:	0f 5c c8             	subps  %xmm0,%xmm1
    7481:	f3 0f 5e e3          	divss  %xmm3,%xmm4
    7485:	0f 28 c4             	movaps %xmm4,%xmm0
    7488:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    748c:	0f 59 c8             	mulps  %xmm0,%xmm1
    748f:	e9 ed df ff ff       	jmp    5481 <sg_raster_triangle_depth_capture+0x1fd1>
    7494:	8b 5c 24 30          	mov    0x30(%rsp),%ebx
    7498:	39 c3                	cmp    %eax,%ebx
    749a:	0f 8c b3 d1 ff ff    	jl     4653 <sg_raster_triangle_depth_capture+0x11a3>
    74a0:	39 f3                	cmp    %esi,%ebx
    74a2:	0f 8d ab d1 ff ff    	jge    4653 <sg_raster_triangle_depth_capture+0x11a3>
    74a8:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    74af:	8b 9c 24 e8 00 00 00 	mov    0xe8(%rsp),%ebx
    74b6:	66 0f ef c9          	pxor   %xmm1,%xmm1
    74ba:	66 0f ef c0          	pxor   %xmm0,%xmm0
    74be:	41 39 c1             	cmp    %eax,%r9d
    74c1:	40 0f 9f c6          	setg   %sil
    74c5:	39 c1                	cmp    %eax,%ecx
    74c7:	0f 9e c0             	setle  %al
    74ca:	0f b6 c0             	movzbl %al,%eax
    74cd:	21 f0                	and    %esi,%eax
    74cf:	f7 d8                	neg    %eax
    74d1:	44 39 cb             	cmp    %r9d,%ebx
    74d4:	40 0f 9c c6          	setl   %sil
    74d8:	39 cb                	cmp    %ecx,%ebx
    74da:	0f 9d c1             	setge  %cl
    74dd:	0f b6 c9             	movzbl %cl,%ecx
    74e0:	21 f1                	and    %esi,%ecx
    74e2:	f7 d9                	neg    %ecx
    74e4:	e9 d4 e0 ff ff       	jmp    55bd <sg_raster_triangle_depth_capture+0x210d>
    74e9:	85 c0                	test   %eax,%eax
    74eb:	0f 84 62 d1 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    74f1:	f3 0f 7e d2          	movq   %xmm2,%xmm2
    74f5:	66 0f df c2          	pandn  %xmm2,%xmm0
    74f9:	66 0f eb c3          	por    %xmm3,%xmm0
    74fd:	66 0f d6 07          	movq   %xmm0,(%rdi)
    7501:	e9 4d d1 ff ff       	jmp    4653 <sg_raster_triangle_depth_capture+0x11a3>
    7506:	44 89 ea             	mov    %r13d,%edx
    7509:	be ff ff ff ff       	mov    $0xffffffff,%esi
    750e:	d1 ea                	shr    $1,%edx
    7510:	66 0f 6e c6          	movd   %esi,%xmm0
    7514:	f7 da                	neg    %edx
    7516:	44 89 ce             	mov    %r9d,%esi
    7519:	c1 ee 02             	shr    $0x2,%esi
    751c:	f7 de                	neg    %esi
    751e:	66 0f 6e ce          	movd   %esi,%xmm1
    7522:	41 89 e9             	mov    %ebp,%r9d
    7525:	41 c1 e9 03          	shr    $0x3,%r9d
    7529:	41 f7 d9             	neg    %r9d
    752c:	e9 ff fb ff ff       	jmp    7130 <sg_raster_triangle_depth_capture+0x3c80>
    7531:	44 89 84 24 a0 01 00 	mov    %r8d,0x1a0(%rsp)
    7538:	00 
    7539:	b8 00 80 00 00       	mov    $0x8000,%eax
    753e:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 7546 <sg_raster_triangle_depth_capture+0x4096>
    7545:	00 
    7546:	89 94 24 b0 01 00 00 	mov    %edx,0x1b0(%rsp)
    754d:	66 44 0f 6e c0       	movd   %eax,%xmm8
    7552:	66 45 0f 70 c0 00    	pshufd $0x0,%xmm8,%xmm8
    7558:	0f a3 f5             	bt     %esi,%ebp
    755b:	0f 83 c6 01 00 00    	jae    7727 <sg_raster_triangle_depth_capture+0x4277>
    7561:	8b 84 b4 c0 02 00 00 	mov    0x2c0(%rsp,%rsi,4),%eax
    7568:	44 8b 94 b4 d0 02 00 	mov    0x2d0(%rsp,%rsi,4),%r10d
    756f:	00 
    7570:	44 8d 78 01          	lea    0x1(%rax),%r15d
    7574:	41 8d 4a 01          	lea    0x1(%r10),%ecx
    7578:	45 85 ed             	test   %r13d,%r13d
    757b:	0f 84 bf 01 00 00    	je     7740 <sg_raster_triangle_depth_capture+0x4290>
    7581:	44 21 e8             	and    %r13d,%eax
    7584:	45 21 ef             	and    %r13d,%r15d
    7587:	41 89 c0             	mov    %eax,%r8d
    758a:	85 db                	test   %ebx,%ebx
    758c:	0f 84 ce 1b 00 00    	je     9160 <sg_raster_triangle_depth_capture+0x5cb0>
    7592:	89 ca                	mov    %ecx,%edx
    7594:	41 21 da             	and    %ebx,%r10d
    7597:	21 da                	and    %ebx,%edx
    7599:	8b 84 24 20 02 00 00 	mov    0x220(%rsp),%eax
    75a0:	89 c1                	mov    %eax,%ecx
    75a2:	41 d3 e2             	shl    %cl,%r10d
    75a5:	d3 e2                	shl    %cl,%edx
    75a7:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 75af <sg_raster_triangle_depth_capture+0x40ff>
    75ae:	00 
    75af:	43 8d 04 02          	lea    (%r10,%r8,1),%eax
    75b3:	45 01 fa             	add    %r15d,%r10d
    75b6:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
    75bb:	66 44 0f 6e b4 b4 e0 	movd   0x2e0(%rsp,%rsi,4),%xmm14
    75c2:	02 00 00 
    75c5:	c1 e0 02             	shl    $0x2,%eax
    75c8:	66 44 0f 6f 15 00 00 	movdqa 0x0(%rip),%xmm10        # 75d1 <sg_raster_triangle_depth_capture+0x4121>
    75cf:	00 00 
    75d1:	66 44 0f 38 39 f0    	pminsd %xmm0,%xmm14
    75d7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    75db:	48 98                	cltq
    75dd:	66 44 0f 38 3d f0    	pmaxsd %xmm0,%xmm14
    75e3:	66 0f 6e 84 b4 f0 02 	movd   0x2f0(%rsp,%rsi,4),%xmm0
    75ea:	00 00 
    75ec:	66 41 0f 38 39 c2    	pminsd %xmm10,%xmm0
    75f2:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    75f7:	66 41 0f 38 3d c2    	pmaxsd %xmm10,%xmm0
    75fd:	66 45 0f 6e 14 01    	movd   (%r9,%rax,1),%xmm10
    7603:	42 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%eax
    760a:	00 
    760b:	66 44 0f fa f8       	psubd  %xmm0,%xmm15
    7610:	48 98                	cltq
    7612:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
    7617:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
    761c:	66 45 0f 6e 3c 01    	movd   (%r9,%rax,1),%xmm15
    7622:	42 8d 04 02          	lea    (%rdx,%r8,1),%eax
    7626:	44 01 fa             	add    %r15d,%edx
    7629:	c1 e0 02             	shl    $0x2,%eax
    762c:	66 45 0f 38 30 ff    	pmovzxbw %xmm15,%xmm15
    7632:	66 45 0f 38 30 d2    	pmovzxbw %xmm10,%xmm10
    7638:	66 45 0f 70 ed 00    	pshufd $0x0,%xmm13,%xmm13
    763e:	48 98                	cltq
    7640:	66 45 0f 61 d7       	punpcklwd %xmm15,%xmm10
    7645:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
    764a:	66 45 0f 70 e4 00    	pshufd $0x0,%xmm12,%xmm12
    7650:	66 41 0f 6e 04 01    	movd   (%r9,%rax,1),%xmm0
    7656:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
    765d:	66 45 0f fa fe       	psubd  %xmm14,%xmm15
    7662:	48 98                	cltq
    7664:	66 41 0f 72 f6 10    	pslld  $0x10,%xmm14
    766a:	66 0f 38 30 c0       	pmovzxbw %xmm0,%xmm0
    766f:	66 45 0f 6e 1c 01    	movd   (%r9,%rax,1),%xmm11
    7675:	66 45 0f 38 30 db    	pmovzxbw %xmm11,%xmm11
    767b:	66 41 0f 61 c3       	punpcklwd %xmm11,%xmm0
    7680:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
    7685:	66 45 0f eb de       	por    %xmm14,%xmm11
    768a:	66 45 0f 70 db 00    	pshufd $0x0,%xmm11,%xmm11
    7690:	66 45 0f f5 d3       	pmaddwd %xmm11,%xmm10
    7695:	66 41 0f f5 c3       	pmaddwd %xmm11,%xmm0
    769a:	66 41 0f 38 40 c5    	pmulld %xmm13,%xmm0
    76a0:	66 45 0f 38 40 d4    	pmulld %xmm12,%xmm10
    76a6:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
    76ab:	66 41 0f fe c0       	paddd  %xmm8,%xmm0
    76b0:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
    76b5:	66 0f 38 2b c0       	packusdw %xmm0,%xmm0
    76ba:	66 0f 67 c0          	packuswb %xmm0,%xmm0
    76be:	66 0f 7e c0          	movd   %xmm0,%eax
    76c2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    76c6:	0f b6 d0             	movzbl %al,%edx
    76c9:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    76cd:	0f b6 d4             	movzbl %ah,%edx
    76d0:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    76d4:	f3 0f 11 84 b4 00 03 	movss  %xmm0,0x300(%rsp,%rsi,4)
    76db:	00 00 
    76dd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    76e1:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    76e5:	89 c2                	mov    %eax,%edx
    76e7:	c1 e8 18             	shr    $0x18,%eax
    76ea:	c1 ea 10             	shr    $0x10,%edx
    76ed:	0f b6 d2             	movzbl %dl,%edx
    76f0:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    76f4:	f3 0f 11 84 b4 10 03 	movss  %xmm0,0x310(%rsp,%rsi,4)
    76fb:	00 00 
    76fd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7701:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    7705:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    7709:	f3 0f 11 84 b4 60 03 	movss  %xmm0,0x360(%rsp,%rsi,4)
    7710:	00 00 
    7712:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7716:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    771a:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    771e:	f3 0f 11 84 b4 a0 03 	movss  %xmm0,0x3a0(%rsp,%rsi,4)
    7725:	00 00 
    7727:	48 83 c6 01          	add    $0x1,%rsi
    772b:	48 83 fe 04          	cmp    $0x4,%rsi
    772f:	0f 85 23 fe ff ff    	jne    7558 <sg_raster_triangle_depth_capture+0x40a8>
    7735:	e9 e5 eb ff ff       	jmp    631f <sg_raster_triangle_depth_capture+0x2e6f>
    773a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7740:	99                   	cltd
    7741:	41 f7 fb             	idiv   %r11d
    7744:	44 89 f8             	mov    %r15d,%eax
    7747:	85 d2                	test   %edx,%edx
    7749:	46 8d 04 1a          	lea    (%rdx,%r11,1),%r8d
    774d:	44 0f 49 c2          	cmovns %edx,%r8d
    7751:	99                   	cltd
    7752:	41 f7 fb             	idiv   %r11d
    7755:	41 89 d7             	mov    %edx,%r15d
    7758:	85 d2                	test   %edx,%edx
    775a:	0f 88 5e 1b 00 00    	js     92be <sg_raster_triangle_depth_capture+0x5e0e>
    7760:	85 db                	test   %ebx,%ebx
    7762:	0f 84 61 1b 00 00    	je     92c9 <sg_raster_triangle_depth_capture+0x5e19>
    7768:	89 ca                	mov    %ecx,%edx
    776a:	41 21 da             	and    %ebx,%r10d
    776d:	21 da                	and    %ebx,%edx
    776f:	45 0f af d3          	imul   %r11d,%r10d
    7773:	41 0f af d3          	imul   %r11d,%edx
    7777:	e9 2b fe ff ff       	jmp    75a7 <sg_raster_triangle_depth_capture+0x40f7>
    777c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7781:	31 d2                	xor    %edx,%edx
    7783:	66 0f ef d2          	pxor   %xmm2,%xmm2
    7787:	66 0f 6e f0          	movd   %eax,%xmm6
    778b:	e9 36 e5 ff ff       	jmp    5cc6 <sg_raster_triangle_depth_capture+0x2816>
    7790:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7797:	00 
    7798:	f3 0f 10 6a 50       	movss  0x50(%rdx),%xmm5
    779d:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
    77a3:	31 d2                	xor    %edx,%edx
    77a5:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
    77aa:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
    77ae:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
    77b3:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    77b8:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    77bc:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
    77c1:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    77c6:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    77ca:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
    77cf:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    77d6:	00 
    77d7:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    77dc:	44 8b 58 24          	mov    0x24(%rax),%r11d
    77e0:	44 8b 48 28          	mov    0x28(%rax),%r9d
    77e4:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    77e9:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    77ee:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
    77f4:	48 8b 48 30          	mov    0x30(%rax),%rcx
    77f8:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    77fd:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7802:	44 0f 28 f0          	movaps %xmm0,%xmm14
    7806:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    780d:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7812:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    7817:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    781c:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7821:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
    7826:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 782f <sg_raster_triangle_depth_capture+0x437f>
    782d:	00 00 
    782f:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7833:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    783a:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    783f:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7844:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7849:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    784e:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
    7853:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7857:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    785e:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7863:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7868:	44 0f 28 fd          	movaps %xmm5,%xmm15
    786c:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7873:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7878:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    787d:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7882:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7887:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 788f <sg_raster_triangle_depth_capture+0x43df>
    788e:	00 
    788f:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7894:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    7898:	66 0f ef c0          	pxor   %xmm0,%xmm0
    789c:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    78a0:	85 f6                	test   %esi,%esi
    78a2:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    78a6:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 78ae <sg_raster_triangle_depth_capture+0x43fe>
    78ad:	00 
    78ae:	0f 48 f2             	cmovs  %edx,%esi
    78b1:	ba 00 01 00 00       	mov    $0x100,%edx
    78b6:	39 d6                	cmp    %edx,%esi
    78b8:	0f 4f f2             	cmovg  %edx,%esi
    78bb:	31 d2                	xor    %edx,%edx
    78bd:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    78c2:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
    78c7:	45 85 c0             	test   %r8d,%r8d
    78ca:	44 0f 48 c2          	cmovs  %edx,%r8d
    78ce:	ba 00 01 00 00       	mov    $0x100,%edx
    78d3:	89 d3                	mov    %edx,%ebx
    78d5:	41 39 d0             	cmp    %edx,%r8d
    78d8:	44 0f 4f c2          	cmovg  %edx,%r8d
    78dc:	29 f3                	sub    %esi,%ebx
    78de:	41 89 df             	mov    %ebx,%r15d
    78e1:	44 29 c2             	sub    %r8d,%edx
    78e4:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    78eb:	8d 50 01             	lea    0x1(%rax),%edx
    78ee:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
    78f5:	8d 57 01             	lea    0x1(%rdi),%edx
    78f8:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
    78ff:	45 85 db             	test   %r11d,%r11d
    7902:	0f 8e d9 1c 00 00    	jle    95e1 <sg_raster_triangle_depth_capture+0x6131>
    7908:	45 8d 53 ff          	lea    -0x1(%r11),%r10d
    790c:	45 85 d3             	test   %r10d,%r11d
    790f:	0f 85 cc 1c 00 00    	jne    95e1 <sg_raster_triangle_depth_capture+0x6131>
    7915:	45 85 c9             	test   %r9d,%r9d
    7918:	0f 8e 30 35 00 00    	jle    ae4e <sg_raster_triangle_depth_capture+0x799e>
    791e:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7922:	41 85 d9             	test   %ebx,%r9d
    7925:	0f 85 23 35 00 00    	jne    ae4e <sg_raster_triangle_depth_capture+0x799e>
    792b:	45 85 d2             	test   %r10d,%r10d
    792e:	0f 84 97 48 00 00    	je     c1cb <sg_raster_triangle_depth_capture+0x8d1b>
    7934:	44 21 d0             	and    %r10d,%eax
    7937:	41 89 c5             	mov    %eax,%r13d
    793a:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    7941:	41 21 c2             	and    %eax,%r10d
    7944:	e9 d9 1c 00 00       	jmp    9622 <sg_raster_triangle_depth_capture+0x6172>
    7949:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7950:	00 
    7951:	f3 0f 10 47 50       	movss  0x50(%rdi),%xmm0
    7956:	31 d2                	xor    %edx,%edx
    7958:	f3 44 0f 10 77 54    	movss  0x54(%rdi),%xmm14
    795e:	f3 0f 10 68 50       	movss  0x50(%rax),%xmm5
    7963:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    7967:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
    796c:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    7971:	f3 0f 58 e8          	addss  %xmm0,%xmm5
    7975:	f3 0f 10 41 50       	movss  0x50(%rcx),%xmm0
    797a:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    797f:	f3 0f 58 e8          	addss  %xmm0,%xmm5
    7983:	f3 0f 10 40 54       	movss  0x54(%rax),%xmm0
    7988:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    798f:	00 
    7990:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    7995:	8b 68 24             	mov    0x24(%rax),%ebp
    7998:	44 8b 48 28          	mov    0x28(%rax),%r9d
    799c:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    79a1:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    79a6:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
    79ac:	48 8b 48 30          	mov    0x30(%rax),%rcx
    79b0:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    79b5:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    79ba:	44 0f 28 f5          	movaps %xmm5,%xmm14
    79be:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    79c5:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    79ca:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    79cf:	f3 44 0f 2a f5       	cvtsi2ss %ebp,%xmm14
    79d4:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    79d9:	f3 41 0f 59 ee       	mulss  %xmm14,%xmm5
    79de:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 79e7 <sg_raster_triangle_depth_capture+0x4537>
    79e5:	00 00 
    79e7:	44 0f 28 f8          	movaps %xmm0,%xmm15
    79eb:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    79f2:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    79f7:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    79fc:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7a01:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7a06:	f3 41 0f 59 c7       	mulss  %xmm15,%xmm0
    7a0b:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7a0f:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7a16:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7a1b:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7a20:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7a24:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7a2b:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7a30:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7a35:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7a3a:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    7a3f:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 7a47 <sg_raster_triangle_depth_capture+0x4597>
    7a46:	00 
    7a47:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7a4c:	f3 0f 2c f5          	cvttss2si %xmm5,%esi
    7a50:	66 0f ef ed          	pxor   %xmm5,%xmm5
    7a54:	f3 0f 2a ef          	cvtsi2ss %edi,%xmm5
    7a58:	85 f6                	test   %esi,%esi
    7a5a:	f3 0f 5c c5          	subss  %xmm5,%xmm0
    7a5e:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7a66 <sg_raster_triangle_depth_capture+0x45b6>
    7a65:	00 
    7a66:	0f 48 f2             	cmovs  %edx,%esi
    7a69:	ba 00 01 00 00       	mov    $0x100,%edx
    7a6e:	39 d6                	cmp    %edx,%esi
    7a70:	0f 4f f2             	cmovg  %edx,%esi
    7a73:	31 d2                	xor    %edx,%edx
    7a75:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7a7a:	f3 44 0f 2c c0       	cvttss2si %xmm0,%r8d
    7a7f:	45 85 c0             	test   %r8d,%r8d
    7a82:	44 0f 48 c2          	cmovs  %edx,%r8d
    7a86:	ba 00 01 00 00       	mov    $0x100,%edx
    7a8b:	41 89 d7             	mov    %edx,%r15d
    7a8e:	41 39 d0             	cmp    %edx,%r8d
    7a91:	44 0f 4f c2          	cmovg  %edx,%r8d
    7a95:	41 29 f7             	sub    %esi,%r15d
    7a98:	44 29 c2             	sub    %r8d,%edx
    7a9b:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7aa2:	8d 50 01             	lea    0x1(%rax),%edx
    7aa5:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
    7aac:	8d 57 01             	lea    0x1(%rdi),%edx
    7aaf:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
    7ab6:	85 ed                	test   %ebp,%ebp
    7ab8:	0f 8e c1 1d 00 00    	jle    987f <sg_raster_triangle_depth_capture+0x63cf>
    7abe:	44 8d 5d ff          	lea    -0x1(%rbp),%r11d
    7ac2:	44 85 dd             	test   %r11d,%ebp
    7ac5:	0f 85 b4 1d 00 00    	jne    987f <sg_raster_triangle_depth_capture+0x63cf>
    7acb:	45 85 c9             	test   %r9d,%r9d
    7ace:	0f 8e 5c 33 00 00    	jle    ae30 <sg_raster_triangle_depth_capture+0x7980>
    7ad4:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7ad8:	41 85 d9             	test   %ebx,%r9d
    7adb:	0f 85 4f 33 00 00    	jne    ae30 <sg_raster_triangle_depth_capture+0x7980>
    7ae1:	45 85 db             	test   %r11d,%r11d
    7ae4:	0f 84 37 47 00 00    	je     c221 <sg_raster_triangle_depth_capture+0x8d71>
    7aea:	44 21 d8             	and    %r11d,%eax
    7aed:	41 89 c5             	mov    %eax,%r13d
    7af0:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    7af7:	41 21 c3             	and    %eax,%r11d
    7afa:	e9 bc 1d 00 00       	jmp    98bb <sg_raster_triangle_depth_capture+0x640b>
    7aff:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7b06:	00 
    7b07:	f3 0f 10 6a 50       	movss  0x50(%rdx),%xmm5
    7b0c:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
    7b12:	31 d2                	xor    %edx,%edx
    7b14:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
    7b19:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    7b1e:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    7b23:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    7b27:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7b2b:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
    7b30:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    7b35:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7b39:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
    7b3e:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    7b45:	00 
    7b46:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
    7b4a:	44 8b 58 24          	mov    0x24(%rax),%r11d
    7b4e:	44 8b 48 28          	mov    0x28(%rax),%r9d
    7b52:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    7b57:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7b5c:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
    7b62:	48 8b 48 30          	mov    0x30(%rax),%rcx
    7b66:	f3 45 0f 59 f1       	mulss  %xmm9,%xmm14
    7b6b:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7b70:	44 0f 28 f0          	movaps %xmm0,%xmm14
    7b74:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    7b7b:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7b80:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    7b85:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    7b8a:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7b8f:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
    7b94:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 7b9d <sg_raster_triangle_depth_capture+0x46ed>
    7b9b:	00 00 
    7b9d:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7ba1:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7ba8:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    7bad:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7bb2:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7bb7:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7bbc:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
    7bc1:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7bc5:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7bcc:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7bd1:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7bd6:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7bda:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7be1:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7be6:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7beb:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7bf0:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7bf5:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7bfd <sg_raster_triangle_depth_capture+0x474d>
    7bfc:	00 
    7bfd:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7c02:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    7c06:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7c0a:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    7c0e:	85 f6                	test   %esi,%esi
    7c10:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    7c14:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 7c1c <sg_raster_triangle_depth_capture+0x476c>
    7c1b:	00 
    7c1c:	0f 48 f2             	cmovs  %edx,%esi
    7c1f:	ba 00 01 00 00       	mov    $0x100,%edx
    7c24:	39 d6                	cmp    %edx,%esi
    7c26:	0f 4f f2             	cmovg  %edx,%esi
    7c29:	31 d2                	xor    %edx,%edx
    7c2b:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7c30:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
    7c35:	45 85 c0             	test   %r8d,%r8d
    7c38:	44 0f 48 c2          	cmovs  %edx,%r8d
    7c3c:	ba 00 01 00 00       	mov    $0x100,%edx
    7c41:	89 d3                	mov    %edx,%ebx
    7c43:	41 39 d0             	cmp    %edx,%r8d
    7c46:	44 0f 4f c2          	cmovg  %edx,%r8d
    7c4a:	29 f3                	sub    %esi,%ebx
    7c4c:	41 89 df             	mov    %ebx,%r15d
    7c4f:	44 29 c2             	sub    %r8d,%edx
    7c52:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7c59:	8d 50 01             	lea    0x1(%rax),%edx
    7c5c:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
    7c63:	8d 57 01             	lea    0x1(%rdi),%edx
    7c66:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
    7c6d:	45 85 db             	test   %r11d,%r11d
    7c70:	0f 8e 87 1e 00 00    	jle    9afd <sg_raster_triangle_depth_capture+0x664d>
    7c76:	45 8d 53 ff          	lea    -0x1(%r11),%r10d
    7c7a:	45 85 d3             	test   %r10d,%r11d
    7c7d:	0f 85 7a 1e 00 00    	jne    9afd <sg_raster_triangle_depth_capture+0x664d>
    7c83:	45 85 c9             	test   %r9d,%r9d
    7c86:	0f 8e 86 31 00 00    	jle    ae12 <sg_raster_triangle_depth_capture+0x7962>
    7c8c:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7c90:	41 85 d9             	test   %ebx,%r9d
    7c93:	0f 85 79 31 00 00    	jne    ae12 <sg_raster_triangle_depth_capture+0x7962>
    7c99:	45 85 d2             	test   %r10d,%r10d
    7c9c:	0f 84 97 45 00 00    	je     c239 <sg_raster_triangle_depth_capture+0x8d89>
    7ca2:	44 21 d0             	and    %r10d,%eax
    7ca5:	41 89 c5             	mov    %eax,%r13d
    7ca8:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    7caf:	41 21 c2             	and    %eax,%r10d
    7cb2:	e9 87 1e 00 00       	jmp    9b3e <sg_raster_triangle_depth_capture+0x668e>
    7cb7:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7cbe:	00 
    7cbf:	f3 0f 10 6e 50       	movss  0x50(%rsi),%xmm5
    7cc4:	f3 44 0f 10 76 54    	movss  0x54(%rsi),%xmm14
    7cca:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
    7ccf:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
    7cd3:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
    7cd8:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    7cdd:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7ce1:	f3 0f 10 6a 50       	movss  0x50(%rdx),%xmm5
    7ce6:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    7ceb:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7cef:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
    7cf4:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    7cfb:	00 
    7cfc:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    7d01:	44 8b 58 24          	mov    0x24(%rax),%r11d
    7d05:	44 8b 48 28          	mov    0x28(%rax),%r9d
    7d09:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    7d0e:	48 8b 48 30          	mov    0x30(%rax),%rcx
    7d12:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7d17:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
    7d1d:	31 d2                	xor    %edx,%edx
    7d1f:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    7d24:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7d29:	44 0f 28 f0          	movaps %xmm0,%xmm14
    7d2d:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    7d34:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7d39:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    7d3e:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    7d43:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7d48:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
    7d4d:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 7d56 <sg_raster_triangle_depth_capture+0x48a6>
    7d54:	00 00 
    7d56:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7d5a:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7d61:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    7d66:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7d6b:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7d70:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7d75:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
    7d7a:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7d7e:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7d85:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7d8a:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7d8f:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7d93:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7d9a:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7d9f:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7da4:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7da9:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7dae:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7db6 <sg_raster_triangle_depth_capture+0x4906>
    7db5:	00 
    7db6:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7dbb:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    7dbf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7dc3:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    7dc7:	85 f6                	test   %esi,%esi
    7dc9:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    7dcd:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 7dd5 <sg_raster_triangle_depth_capture+0x4925>
    7dd4:	00 
    7dd5:	0f 48 f2             	cmovs  %edx,%esi
    7dd8:	ba 00 01 00 00       	mov    $0x100,%edx
    7ddd:	39 d6                	cmp    %edx,%esi
    7ddf:	0f 4f f2             	cmovg  %edx,%esi
    7de2:	31 d2                	xor    %edx,%edx
    7de4:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7de9:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
    7dee:	45 85 c0             	test   %r8d,%r8d
    7df1:	44 0f 48 c2          	cmovs  %edx,%r8d
    7df5:	ba 00 01 00 00       	mov    $0x100,%edx
    7dfa:	89 d3                	mov    %edx,%ebx
    7dfc:	41 39 d0             	cmp    %edx,%r8d
    7dff:	44 0f 4f c2          	cmovg  %edx,%r8d
    7e03:	29 f3                	sub    %esi,%ebx
    7e05:	41 89 df             	mov    %ebx,%r15d
    7e08:	44 29 c2             	sub    %r8d,%edx
    7e0b:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7e12:	8d 50 01             	lea    0x1(%rax),%edx
    7e15:	89 94 24 70 01 00 00 	mov    %edx,0x170(%rsp)
    7e1c:	8d 57 01             	lea    0x1(%rdi),%edx
    7e1f:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
    7e26:	45 85 db             	test   %r11d,%r11d
    7e29:	0f 8e 14 15 00 00    	jle    9343 <sg_raster_triangle_depth_capture+0x5e93>
    7e2f:	45 8d 53 ff          	lea    -0x1(%r11),%r10d
    7e33:	45 85 d3             	test   %r10d,%r11d
    7e36:	0f 85 07 15 00 00    	jne    9343 <sg_raster_triangle_depth_capture+0x5e93>
    7e3c:	45 85 c9             	test   %r9d,%r9d
    7e3f:	0f 8e af 2f 00 00    	jle    adf4 <sg_raster_triangle_depth_capture+0x7944>
    7e45:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7e49:	41 85 d9             	test   %ebx,%r9d
    7e4c:	0f 85 a2 2f 00 00    	jne    adf4 <sg_raster_triangle_depth_capture+0x7944>
    7e52:	45 85 d2             	test   %r10d,%r10d
    7e55:	0f 84 ce 43 00 00    	je     c229 <sg_raster_triangle_depth_capture+0x8d79>
    7e5b:	44 21 d0             	and    %r10d,%eax
    7e5e:	41 89 c5             	mov    %eax,%r13d
    7e61:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    7e68:	41 21 c2             	and    %eax,%r10d
    7e6b:	e9 14 15 00 00       	jmp    9384 <sg_raster_triangle_depth_capture+0x5ed4>
    7e70:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    7e75:	66 0f ef ff          	pxor   %xmm7,%xmm7
    7e79:	66 0f ef e4          	pxor   %xmm4,%xmm4
    7e7d:	66 0f ef db          	pxor   %xmm3,%xmm3
    7e81:	f3 4d 0f 2a c3       	cvtsi2ss %r11,%xmm8
    7e86:	66 45 0f ef db       	pxor   %xmm11,%xmm11
    7e8b:	f3 49 0f 2a f9       	cvtsi2ss %r9,%xmm7
    7e90:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    7e95:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    7e9a:	e9 16 e7 ff ff       	jmp    65b5 <sg_raster_triangle_depth_capture+0x3105>
    7e9f:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    7ea6:	01 00 00 00 
    7eaa:	85 c9                	test   %ecx,%ecx
    7eac:	0f 84 ff 2f 00 00    	je     aeb1 <sg_raster_triangle_depth_capture+0x7a01>
    7eb2:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    7eb9:	40 f6 c5 04          	test   $0x4,%bpl
    7ebd:	0f 85 e7 e4 ff ff    	jne    63aa <sg_raster_triangle_depth_capture+0x2efa>
    7ec3:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    7ec8:	40 f6 c5 08          	test   $0x8,%bpl
    7ecc:	0f 85 eb f3 ff ff    	jne    72bd <sg_raster_triangle_depth_capture+0x3e0d>
    7ed2:	45 0f 28 da          	movaps %xmm10,%xmm11
    7ed6:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    7edb:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    7ee0:	66 0f ef d2          	pxor   %xmm2,%xmm2
    7ee4:	66 0f ef ff          	pxor   %xmm7,%xmm7
    7ee8:	f3 4c 0f 2a cf       	cvtsi2ss %rdi,%xmm9
    7eed:	f3 4d 0f 2a c3       	cvtsi2ss %r11,%xmm8
    7ef2:	f3 48 0f 2a d6       	cvtsi2ss %rsi,%xmm2
    7ef7:	f3 49 0f 2a f9       	cvtsi2ss %r9,%xmm7
    7efc:	e9 b4 e6 ff ff       	jmp    65b5 <sg_raster_triangle_depth_capture+0x3105>
    7f01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7f08:	0f 57 0d 00 00 00 00 	xorps  0x0(%rip),%xmm1        # 7f0f <sg_raster_triangle_depth_capture+0x4a5f>
    7f0f:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    7f13:	0f 59 c1             	mulps  %xmm1,%xmm0
    7f16:	e9 15 d5 ff ff       	jmp    5430 <sg_raster_triangle_depth_capture+0x1f80>
    7f1b:	41 0f 28 dd          	movaps %xmm13,%xmm3
    7f1f:	41 0f 28 d1          	movaps %xmm9,%xmm2
    7f23:	41 0f 28 c8          	movaps %xmm8,%xmm1
    7f27:	48 89 c7             	mov    %rax,%rdi
    7f2a:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    7f31:	00 
    7f32:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
    7f39:	00 
    7f3a:	0f 28 c7             	movaps %xmm7,%xmm0
    7f3d:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
    7f44:	00 
    7f45:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    7f4c:	01 00 00 
    7f4f:	49 89 d8             	mov    %rbx,%r8
    7f52:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    7f59:	01 00 00 
    7f5c:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    7f63:	01 00 00 
    7f66:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    7f6d:	00 00 
    7f6f:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    7f76:	01 00 00 
    7f79:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    7f80:	01 00 00 
    7f83:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    7f8a:	01 00 00 
    7f8d:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    7f94:	00 00 
    7f96:	e8 00 00 00 00       	call   7f9b <sg_raster_triangle_depth_capture+0x4aeb>
    7f9b:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    7fa2:	00 
    7fa3:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    7faa:	00 00 
    7fac:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    7fb3:	01 00 00 
    7fb6:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    7fbd:	01 00 00 
    7fc0:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    7fc7:	01 00 00 
    7fca:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    7fd0:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    7fd7:	00 00 
    7fd9:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    7fe0:	01 00 00 
    7fe3:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    7fea:	01 00 00 
    7fed:	85 c0                	test   %eax,%eax
    7fef:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    7ff6:	01 00 00 
    7ff9:	0f 85 8c 21 00 00    	jne    a18b <sg_raster_triangle_depth_capture+0x6cdb>
    7fff:	8b 84 24 10 03 00 00 	mov    0x310(%rsp),%eax
    8006:	85 c0                	test   %eax,%eax
    8008:	0f 84 8c 00 00 00    	je     809a <sg_raster_triangle_depth_capture+0x4bea>
    800e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8013:	49 89 d8             	mov    %rbx,%r8
    8016:	31 f6                	xor    %esi,%esi
    8018:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    801f:	00 
    8020:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8027:	00 
    8028:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    802f:	00 
    8030:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    8037:	e8 00 00 00 00       	call   803c <sg_raster_triangle_depth_capture+0x4b8c>
    803c:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8043:	00 
    8044:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    804b:	01 00 00 
    804e:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8055:	01 00 00 
    8058:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    805f:	01 00 00 
    8062:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8069:	00 00 
    806b:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8072:	01 00 00 
    8075:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    807c:	00 
    807d:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    8084:	01 00 00 
    8087:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    808e:	01 00 00 
    8091:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    8098:	00 00 
    809a:	44 8b bc 24 14 03 00 	mov    0x314(%rsp),%r15d
    80a1:	00 
    80a2:	45 85 ff             	test   %r15d,%r15d
    80a5:	0f 84 dd 00 00 00    	je     8188 <sg_raster_triangle_depth_capture+0x4cd8>
    80ab:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    80b0:	49 89 d8             	mov    %rbx,%r8
    80b3:	be 01 00 00 00       	mov    $0x1,%esi
    80b8:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    80bf:	00 
    80c0:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    80c7:	00 
    80c8:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    80cf:	00 
    80d0:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    80d7:	01 00 00 
    80da:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    80e1:	00 00 
    80e3:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    80ea:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    80f1:	01 00 00 
    80f4:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    80fb:	01 00 00 
    80fe:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8105:	01 00 00 
    8108:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    810f:	01 00 00 
    8112:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    8119:	01 00 00 
    811c:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    8123:	00 00 
    8125:	e8 00 00 00 00       	call   812a <sg_raster_triangle_depth_capture+0x4c7a>
    812a:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8131:	00 
    8132:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8139:	01 00 00 
    813c:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8143:	01 00 00 
    8146:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    814d:	01 00 00 
    8150:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8157:	00 00 
    8159:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8160:	01 00 00 
    8163:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    816a:	00 
    816b:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    8172:	01 00 00 
    8175:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    817c:	01 00 00 
    817f:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    8186:	00 00 
    8188:	44 8b ac 24 18 03 00 	mov    0x318(%rsp),%r13d
    818f:	00 
    8190:	45 85 ed             	test   %r13d,%r13d
    8193:	0f 84 dd 00 00 00    	je     8276 <sg_raster_triangle_depth_capture+0x4dc6>
    8199:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    819e:	49 89 d8             	mov    %rbx,%r8
    81a1:	be 02 00 00 00       	mov    $0x2,%esi
    81a6:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    81ad:	00 
    81ae:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    81b5:	00 
    81b6:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    81bd:	00 
    81be:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    81c5:	01 00 00 
    81c8:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    81cf:	00 00 
    81d1:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    81d8:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    81df:	01 00 00 
    81e2:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    81e9:	01 00 00 
    81ec:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    81f3:	01 00 00 
    81f6:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    81fd:	01 00 00 
    8200:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    8207:	01 00 00 
    820a:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    8211:	00 00 
    8213:	e8 00 00 00 00       	call   8218 <sg_raster_triangle_depth_capture+0x4d68>
    8218:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    821f:	00 
    8220:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8227:	01 00 00 
    822a:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8231:	01 00 00 
    8234:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    823b:	01 00 00 
    823e:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8245:	00 00 
    8247:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    824e:	01 00 00 
    8251:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8258:	00 
    8259:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    8260:	01 00 00 
    8263:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    826a:	01 00 00 
    826d:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    8274:	00 00 
    8276:	44 8b 9c 24 1c 03 00 	mov    0x31c(%rsp),%r11d
    827d:	00 
    827e:	45 85 db             	test   %r11d,%r11d
    8281:	0f 84 e3 27 00 00    	je     aa6a <sg_raster_triangle_depth_capture+0x75ba>
    8287:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    828c:	49 89 d8             	mov    %rbx,%r8
    828f:	be 03 00 00 00       	mov    $0x3,%esi
    8294:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    829b:	00 
    829c:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    82a3:	00 
    82a4:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    82ab:	00 
    82ac:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    82b3:	01 00 00 
    82b6:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    82bd:	00 00 
    82bf:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    82c6:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    82cd:	01 00 00 
    82d0:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    82d7:	01 00 00 
    82da:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    82e1:	01 00 00 
    82e4:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    82eb:	01 00 00 
    82ee:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    82f5:	01 00 00 
    82f8:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    82ff:	00 00 
    8301:	e8 00 00 00 00       	call   8306 <sg_raster_triangle_depth_capture+0x4e56>
    8306:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
    830d:	00 00 
    830f:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
    8316:	00 00 
    8318:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
    831f:	00 00 
    8321:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
    8328:	00 00 
    832a:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    8331:	00 00 
    8333:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    833a:	01 00 00 
    833d:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    8344:	00 00 
    8346:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    834d:	01 00 00 
    8350:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8357:	01 00 00 
    835a:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    8361:	00 00 
    8363:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    836a:	00 00 
    836c:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8373:	01 00 00 
    8376:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    837d:	00 00 
    837f:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8386:	01 00 00 
    8389:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8390:	01 00 00 
    8393:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    839a:	00 00 
    839c:	e9 f9 c4 ff ff       	jmp    489a <sg_raster_triangle_depth_capture+0x13ea>
    83a1:	41 0f 28 dd          	movaps %xmm13,%xmm3
    83a5:	41 0f 28 d0          	movaps %xmm8,%xmm2
    83a9:	0f 28 cf             	movaps %xmm7,%xmm1
    83ac:	48 89 c7             	mov    %rax,%rdi
    83af:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    83b6:	00 
    83b7:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
    83be:	00 
    83bf:	41 0f 28 c1          	movaps %xmm9,%xmm0
    83c3:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
    83ca:	00 
    83cb:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    83d2:	01 00 00 
    83d5:	49 89 d8             	mov    %rbx,%r8
    83d8:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    83df:	01 00 00 
    83e2:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    83e9:	01 00 00 
    83ec:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    83f3:	00 00 
    83f5:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    83fc:	01 00 00 
    83ff:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8406:	01 00 00 
    8409:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8410:	00 00 
    8412:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8419:	01 00 00 
    841c:	e8 00 00 00 00       	call   8421 <sg_raster_triangle_depth_capture+0x4f71>
    8421:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    8428:	00 
    8429:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8430:	01 00 00 
    8433:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    843a:	00 00 
    843c:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8443:	01 00 00 
    8446:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    844d:	01 00 00 
    8450:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    8456:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    845d:	00 00 
    845f:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8466:	01 00 00 
    8469:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8470:	01 00 00 
    8473:	85 c0                	test   %eax,%eax
    8475:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    847c:	01 00 00 
    847f:	0f 85 17 20 00 00    	jne    a49c <sg_raster_triangle_depth_capture+0x6fec>
    8485:	8b 84 24 10 03 00 00 	mov    0x310(%rsp),%eax
    848c:	85 c0                	test   %eax,%eax
    848e:	0f 84 8c 00 00 00    	je     8520 <sg_raster_triangle_depth_capture+0x5070>
    8494:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8499:	49 89 d8             	mov    %rbx,%r8
    849c:	31 f6                	xor    %esi,%esi
    849e:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    84a5:	00 
    84a6:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    84ad:	00 
    84ae:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    84b5:	00 
    84b6:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    84bd:	e8 00 00 00 00       	call   84c2 <sg_raster_triangle_depth_capture+0x5012>
    84c2:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    84c9:	00 
    84ca:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    84d1:	01 00 00 
    84d4:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    84db:	01 00 00 
    84de:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    84e5:	01 00 00 
    84e8:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    84ef:	00 00 
    84f1:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    84f8:	01 00 00 
    84fb:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8502:	00 
    8503:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    850a:	01 00 00 
    850d:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8514:	00 00 
    8516:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    851d:	01 00 00 
    8520:	8b 84 24 14 03 00 00 	mov    0x314(%rsp),%eax
    8527:	85 c0                	test   %eax,%eax
    8529:	0f 84 dd 00 00 00    	je     860c <sg_raster_triangle_depth_capture+0x515c>
    852f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8534:	49 89 d8             	mov    %rbx,%r8
    8537:	be 01 00 00 00       	mov    $0x1,%esi
    853c:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    8543:	00 
    8544:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    854b:	00 
    854c:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    8553:	00 
    8554:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    855b:	01 00 00 
    855e:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8565:	00 00 
    8567:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    856e:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8575:	01 00 00 
    8578:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    857f:	01 00 00 
    8582:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8589:	01 00 00 
    858c:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8593:	01 00 00 
    8596:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    859d:	00 00 
    859f:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    85a6:	01 00 00 
    85a9:	e8 00 00 00 00       	call   85ae <sg_raster_triangle_depth_capture+0x50fe>
    85ae:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    85b5:	00 
    85b6:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    85bd:	01 00 00 
    85c0:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    85c7:	01 00 00 
    85ca:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    85d1:	01 00 00 
    85d4:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    85db:	00 00 
    85dd:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    85e4:	01 00 00 
    85e7:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    85ee:	00 
    85ef:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    85f6:	01 00 00 
    85f9:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8600:	00 00 
    8602:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8609:	01 00 00 
    860c:	8b 84 24 18 03 00 00 	mov    0x318(%rsp),%eax
    8613:	85 c0                	test   %eax,%eax
    8615:	0f 84 dd 00 00 00    	je     86f8 <sg_raster_triangle_depth_capture+0x5248>
    861b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8620:	49 89 d8             	mov    %rbx,%r8
    8623:	be 02 00 00 00       	mov    $0x2,%esi
    8628:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    862f:	00 
    8630:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8637:	00 
    8638:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    863f:	00 
    8640:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8647:	01 00 00 
    864a:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8651:	00 00 
    8653:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    865a:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8661:	01 00 00 
    8664:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    866b:	01 00 00 
    866e:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8675:	01 00 00 
    8678:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    867f:	01 00 00 
    8682:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8689:	00 00 
    868b:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8692:	01 00 00 
    8695:	e8 00 00 00 00       	call   869a <sg_raster_triangle_depth_capture+0x51ea>
    869a:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    86a1:	00 
    86a2:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    86a9:	01 00 00 
    86ac:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    86b3:	01 00 00 
    86b6:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    86bd:	01 00 00 
    86c0:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    86c7:	00 00 
    86c9:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    86d0:	01 00 00 
    86d3:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    86da:	00 
    86db:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    86e2:	01 00 00 
    86e5:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    86ec:	00 00 
    86ee:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    86f5:	01 00 00 
    86f8:	44 8b bc 24 1c 03 00 	mov    0x31c(%rsp),%r15d
    86ff:	00 
    8700:	45 85 ff             	test   %r15d,%r15d
    8703:	0f 84 f7 23 00 00    	je     ab00 <sg_raster_triangle_depth_capture+0x7650>
    8709:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    870e:	49 89 d8             	mov    %rbx,%r8
    8711:	be 03 00 00 00       	mov    $0x3,%esi
    8716:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    871d:	00 
    871e:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8725:	00 
    8726:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    872d:	00 
    872e:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8735:	01 00 00 
    8738:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    873f:	00 00 
    8741:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    8748:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    874f:	01 00 00 
    8752:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8759:	01 00 00 
    875c:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8763:	01 00 00 
    8766:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    876d:	01 00 00 
    8770:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8777:	00 00 
    8779:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8780:	01 00 00 
    8783:	e8 00 00 00 00       	call   8788 <sg_raster_triangle_depth_capture+0x52d8>
    8788:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
    878f:	00 00 
    8791:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
    8798:	00 00 
    879a:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
    87a1:	00 00 
    87a3:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
    87aa:	00 00 
    87ac:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    87b3:	01 00 00 
    87b6:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    87bd:	00 00 
    87bf:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    87c6:	00 00 
    87c8:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    87cf:	01 00 00 
    87d2:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    87d9:	01 00 00 
    87dc:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    87e3:	00 00 
    87e5:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    87ec:	00 00 
    87ee:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    87f5:	01 00 00 
    87f8:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    87ff:	00 00 
    8801:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8808:	01 00 00 
    880b:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8812:	01 00 00 
    8815:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    881c:	00 00 
    881e:	e9 d7 c4 ff ff       	jmp    4cfa <sg_raster_triangle_depth_capture+0x184a>
    8823:	41 0f 28 dd          	movaps %xmm13,%xmm3
    8827:	41 0f 28 d0          	movaps %xmm8,%xmm2
    882b:	0f 28 cf             	movaps %xmm7,%xmm1
    882e:	48 89 fa             	mov    %rdi,%rdx
    8831:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    8838:	00 
    8839:	41 0f 28 c1          	movaps %xmm9,%xmm0
    883d:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
    8844:	00 
    8845:	48 89 c7             	mov    %rax,%rdi
    8848:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
    884f:	00 
    8850:	49 89 d8             	mov    %rbx,%r8
    8853:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    885a:	01 00 00 
    885d:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8864:	01 00 00 
    8867:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    886e:	01 00 00 
    8871:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8878:	00 00 
    887a:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8881:	01 00 00 
    8884:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    888b:	01 00 00 
    888e:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8895:	00 00 
    8897:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    889e:	01 00 00 
    88a1:	e8 00 00 00 00       	call   88a6 <sg_raster_triangle_depth_capture+0x53f6>
    88a6:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    88ad:	00 
    88ae:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    88b5:	01 00 00 
    88b8:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    88bf:	00 00 
    88c1:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    88c8:	01 00 00 
    88cb:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    88d2:	01 00 00 
    88d5:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    88db:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    88e2:	00 00 
    88e4:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    88eb:	01 00 00 
    88ee:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    88f5:	01 00 00 
    88f8:	85 c0                	test   %eax,%eax
    88fa:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8901:	01 00 00 
    8904:	0f 85 2d 1a 00 00    	jne    a337 <sg_raster_triangle_depth_capture+0x6e87>
    890a:	44 8b ac 24 10 03 00 	mov    0x310(%rsp),%r13d
    8911:	00 
    8912:	45 85 ed             	test   %r13d,%r13d
    8915:	0f 84 8c 00 00 00    	je     89a7 <sg_raster_triangle_depth_capture+0x54f7>
    891b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8920:	49 89 d8             	mov    %rbx,%r8
    8923:	31 f6                	xor    %esi,%esi
    8925:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    892c:	00 
    892d:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8934:	00 
    8935:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    893c:	00 
    893d:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    8944:	e8 00 00 00 00       	call   8949 <sg_raster_triangle_depth_capture+0x5499>
    8949:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8950:	00 
    8951:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8958:	01 00 00 
    895b:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8962:	01 00 00 
    8965:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    896c:	01 00 00 
    896f:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8976:	00 00 
    8978:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    897f:	01 00 00 
    8982:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8989:	00 
    898a:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8991:	01 00 00 
    8994:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    899b:	00 00 
    899d:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    89a4:	01 00 00 
    89a7:	8b ac 24 14 03 00 00 	mov    0x314(%rsp),%ebp
    89ae:	85 ed                	test   %ebp,%ebp
    89b0:	0f 84 dd 00 00 00    	je     8a93 <sg_raster_triangle_depth_capture+0x55e3>
    89b6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    89bb:	49 89 d8             	mov    %rbx,%r8
    89be:	be 01 00 00 00       	mov    $0x1,%esi
    89c3:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    89ca:	00 
    89cb:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    89d2:	00 
    89d3:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    89da:	00 
    89db:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    89e2:	01 00 00 
    89e5:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    89ec:	00 00 
    89ee:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    89f5:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    89fc:	01 00 00 
    89ff:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8a06:	01 00 00 
    8a09:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8a10:	01 00 00 
    8a13:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8a1a:	01 00 00 
    8a1d:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8a24:	00 00 
    8a26:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8a2d:	01 00 00 
    8a30:	e8 00 00 00 00       	call   8a35 <sg_raster_triangle_depth_capture+0x5585>
    8a35:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8a3c:	00 
    8a3d:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8a44:	01 00 00 
    8a47:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8a4e:	01 00 00 
    8a51:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8a58:	01 00 00 
    8a5b:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8a62:	00 00 
    8a64:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8a6b:	01 00 00 
    8a6e:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8a75:	00 
    8a76:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8a7d:	01 00 00 
    8a80:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8a87:	00 00 
    8a89:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8a90:	01 00 00 
    8a93:	44 8b 9c 24 18 03 00 	mov    0x318(%rsp),%r11d
    8a9a:	00 
    8a9b:	45 85 db             	test   %r11d,%r11d
    8a9e:	0f 84 dd 00 00 00    	je     8b81 <sg_raster_triangle_depth_capture+0x56d1>
    8aa4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8aa9:	49 89 d8             	mov    %rbx,%r8
    8aac:	be 02 00 00 00       	mov    $0x2,%esi
    8ab1:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    8ab8:	00 
    8ab9:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8ac0:	00 
    8ac1:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    8ac8:	00 
    8ac9:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8ad0:	01 00 00 
    8ad3:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8ada:	00 00 
    8adc:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    8ae3:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8aea:	01 00 00 
    8aed:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8af4:	01 00 00 
    8af7:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8afe:	01 00 00 
    8b01:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8b08:	01 00 00 
    8b0b:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8b12:	00 00 
    8b14:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8b1b:	01 00 00 
    8b1e:	e8 00 00 00 00       	call   8b23 <sg_raster_triangle_depth_capture+0x5673>
    8b23:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8b2a:	00 
    8b2b:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8b32:	01 00 00 
    8b35:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8b3c:	01 00 00 
    8b3f:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8b46:	01 00 00 
    8b49:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8b50:	00 00 
    8b52:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8b59:	01 00 00 
    8b5c:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8b63:	00 
    8b64:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8b6b:	01 00 00 
    8b6e:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8b75:	00 00 
    8b77:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8b7e:	01 00 00 
    8b81:	44 8b 94 24 1c 03 00 	mov    0x31c(%rsp),%r10d
    8b88:	00 
    8b89:	45 85 d2             	test   %r10d,%r10d
    8b8c:	0f 84 01 1f 00 00    	je     aa93 <sg_raster_triangle_depth_capture+0x75e3>
    8b92:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8b97:	49 89 d8             	mov    %rbx,%r8
    8b9a:	be 03 00 00 00       	mov    $0x3,%esi
    8b9f:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    8ba6:	00 
    8ba7:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8bae:	00 
    8baf:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    8bb6:	00 
    8bb7:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8bbe:	01 00 00 
    8bc1:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8bc8:	00 00 
    8bca:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    8bd1:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8bd8:	01 00 00 
    8bdb:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8be2:	01 00 00 
    8be5:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8bec:	01 00 00 
    8bef:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8bf6:	01 00 00 
    8bf9:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8c00:	00 00 
    8c02:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8c09:	01 00 00 
    8c0c:	e8 00 00 00 00       	call   8c11 <sg_raster_triangle_depth_capture+0x5761>
    8c11:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
    8c18:	00 00 
    8c1a:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
    8c21:	00 00 
    8c23:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
    8c2a:	00 00 
    8c2c:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
    8c33:	00 00 
    8c35:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8c3c:	01 00 00 
    8c3f:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8c46:	00 00 
    8c48:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    8c4f:	00 00 
    8c51:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8c58:	01 00 00 
    8c5b:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8c62:	01 00 00 
    8c65:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    8c6c:	00 00 
    8c6e:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8c75:	00 00 
    8c77:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8c7e:	01 00 00 
    8c81:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    8c88:	00 00 
    8c8a:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8c91:	01 00 00 
    8c94:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8c9b:	01 00 00 
    8c9e:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    8ca5:	00 00 
    8ca7:	e9 d0 ce ff ff       	jmp    5b7c <sg_raster_triangle_depth_capture+0x26cc>
    8cac:	48 89 d1             	mov    %rdx,%rcx
    8caf:	41 0f 28 dd          	movaps %xmm13,%xmm3
    8cb3:	41 0f 28 d0          	movaps %xmm8,%xmm2
    8cb7:	48 89 c7             	mov    %rax,%rdi
    8cba:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    8cc1:	00 
    8cc2:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    8cc9:	00 
    8cca:	0f 28 cf             	movaps %xmm7,%xmm1
    8ccd:	41 0f 28 c1          	movaps %xmm9,%xmm0
    8cd1:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
    8cd8:	00 
    8cd9:	4c 8d 8c 24 10 03 00 	lea    0x310(%rsp),%r9
    8ce0:	00 
    8ce1:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8ce8:	01 00 00 
    8ceb:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8cf2:	01 00 00 
    8cf5:	49 89 d8             	mov    %rbx,%r8
    8cf8:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8cff:	01 00 00 
    8d02:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8d09:	00 00 
    8d0b:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8d12:	01 00 00 
    8d15:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8d1c:	01 00 00 
    8d1f:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8d26:	00 00 
    8d28:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8d2f:	01 00 00 
    8d32:	e8 00 00 00 00       	call   8d37 <sg_raster_triangle_depth_capture+0x5887>
    8d37:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    8d3e:	00 
    8d3f:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8d46:	01 00 00 
    8d49:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8d50:	00 00 
    8d52:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8d59:	01 00 00 
    8d5c:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8d63:	01 00 00 
    8d66:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    8d6c:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8d73:	00 00 
    8d75:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8d7c:	01 00 00 
    8d7f:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8d86:	01 00 00 
    8d89:	85 c0                	test   %eax,%eax
    8d8b:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8d92:	01 00 00 
    8d95:	0f 85 8b 12 00 00    	jne    a026 <sg_raster_triangle_depth_capture+0x6b76>
    8d9b:	44 8b 84 24 10 03 00 	mov    0x310(%rsp),%r8d
    8da2:	00 
    8da3:	45 85 c0             	test   %r8d,%r8d
    8da6:	0f 84 8c 00 00 00    	je     8e38 <sg_raster_triangle_depth_capture+0x5988>
    8dac:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8db1:	49 89 d8             	mov    %rbx,%r8
    8db4:	31 f6                	xor    %esi,%esi
    8db6:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    8dbd:	00 
    8dbe:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8dc5:	00 
    8dc6:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    8dcd:	00 
    8dce:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    8dd5:	e8 00 00 00 00       	call   8dda <sg_raster_triangle_depth_capture+0x592a>
    8dda:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8de1:	00 
    8de2:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8de9:	01 00 00 
    8dec:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8df3:	01 00 00 
    8df6:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8dfd:	01 00 00 
    8e00:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8e07:	00 00 
    8e09:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8e10:	01 00 00 
    8e13:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8e1a:	00 
    8e1b:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8e22:	01 00 00 
    8e25:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8e2c:	00 00 
    8e2e:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8e35:	01 00 00 
    8e38:	8b bc 24 14 03 00 00 	mov    0x314(%rsp),%edi
    8e3f:	85 ff                	test   %edi,%edi
    8e41:	0f 84 dd 00 00 00    	je     8f24 <sg_raster_triangle_depth_capture+0x5a74>
    8e47:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8e4c:	49 89 d8             	mov    %rbx,%r8
    8e4f:	be 01 00 00 00       	mov    $0x1,%esi
    8e54:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    8e5b:	00 
    8e5c:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8e63:	00 
    8e64:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    8e6b:	00 
    8e6c:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8e73:	01 00 00 
    8e76:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8e7d:	00 00 
    8e7f:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    8e86:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8e8d:	01 00 00 
    8e90:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8e97:	01 00 00 
    8e9a:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8ea1:	01 00 00 
    8ea4:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8eab:	01 00 00 
    8eae:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8eb5:	00 00 
    8eb7:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8ebe:	01 00 00 
    8ec1:	e8 00 00 00 00       	call   8ec6 <sg_raster_triangle_depth_capture+0x5a16>
    8ec6:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8ecd:	00 
    8ece:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8ed5:	01 00 00 
    8ed8:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8edf:	01 00 00 
    8ee2:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8ee9:	01 00 00 
    8eec:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8ef3:	00 00 
    8ef5:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8efc:	01 00 00 
    8eff:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8f06:	00 
    8f07:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8f0e:	01 00 00 
    8f11:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8f18:	00 00 
    8f1a:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8f21:	01 00 00 
    8f24:	8b b4 24 18 03 00 00 	mov    0x318(%rsp),%esi
    8f2b:	85 f6                	test   %esi,%esi
    8f2d:	0f 84 dd 00 00 00    	je     9010 <sg_raster_triangle_depth_capture+0x5b60>
    8f33:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8f38:	49 89 d8             	mov    %rbx,%r8
    8f3b:	be 02 00 00 00       	mov    $0x2,%esi
    8f40:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    8f47:	00 
    8f48:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    8f4f:	00 
    8f50:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    8f57:	00 
    8f58:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    8f5f:	01 00 00 
    8f62:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    8f69:	00 00 
    8f6b:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    8f72:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    8f79:	01 00 00 
    8f7c:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    8f83:	01 00 00 
    8f86:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8f8d:	01 00 00 
    8f90:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8f97:	01 00 00 
    8f9a:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8fa1:	00 00 
    8fa3:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8faa:	01 00 00 
    8fad:	e8 00 00 00 00       	call   8fb2 <sg_raster_triangle_depth_capture+0x5b02>
    8fb2:	0f 28 84 24 60 03 00 	movaps 0x360(%rsp),%xmm0
    8fb9:	00 
    8fba:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    8fc1:	01 00 00 
    8fc4:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    8fcb:	01 00 00 
    8fce:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    8fd5:	01 00 00 
    8fd8:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    8fdf:	00 00 
    8fe1:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8fe8:	01 00 00 
    8feb:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    8ff2:	00 
    8ff3:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8ffa:	01 00 00 
    8ffd:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    9004:	00 00 
    9006:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    900d:	01 00 00 
    9010:	8b 8c 24 1c 03 00 00 	mov    0x31c(%rsp),%ecx
    9017:	85 c9                	test   %ecx,%ecx
    9019:	0f 84 0a 1b 00 00    	je     ab29 <sg_raster_triangle_depth_capture+0x7679>
    901f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9024:	49 89 d8             	mov    %rbx,%r8
    9027:	be 03 00 00 00       	mov    $0x3,%esi
    902c:	48 8d 8c 24 f0 02 00 	lea    0x2f0(%rsp),%rcx
    9033:	00 
    9034:	48 8d 94 24 00 03 00 	lea    0x300(%rsp),%rdx
    903b:	00 
    903c:	4c 8d 8c 24 60 03 00 	lea    0x360(%rsp),%r9
    9043:	00 
    9044:	f3 44 0f 11 a4 24 c0 	movss  %xmm12,0x1c0(%rsp)
    904b:	01 00 00 
    904e:	f3 0f 11 b4 24 20 02 	movss  %xmm6,0x220(%rsp)
    9055:	00 00 
    9057:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    905e:	f3 44 0f 11 9c 24 b0 	movss  %xmm11,0x1b0(%rsp)
    9065:	01 00 00 
    9068:	f3 44 0f 11 94 24 a0 	movss  %xmm10,0x1a0(%rsp)
    906f:	01 00 00 
    9072:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    9079:	01 00 00 
    907c:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    9083:	01 00 00 
    9086:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    908d:	00 00 
    908f:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    9096:	01 00 00 
    9099:	e8 00 00 00 00       	call   909e <sg_raster_triangle_depth_capture+0x5bee>
    909e:	f3 0f 10 8c 24 60 03 	movss  0x360(%rsp),%xmm1
    90a5:	00 00 
    90a7:	f3 0f 10 94 24 64 03 	movss  0x364(%rsp),%xmm2
    90ae:	00 00 
    90b0:	f3 0f 10 9c 24 68 03 	movss  0x368(%rsp),%xmm3
    90b7:	00 00 
    90b9:	f3 0f 10 a4 24 6c 03 	movss  0x36c(%rsp),%xmm4
    90c0:	00 00 
    90c2:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    90c9:	01 00 00 
    90cc:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    90d3:	00 00 
    90d5:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    90dc:	00 00 
    90de:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    90e5:	01 00 00 
    90e8:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    90ef:	01 00 00 
    90f2:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    90f9:	00 00 
    90fb:	f3 0f 10 b4 24 20 02 	movss  0x220(%rsp),%xmm6
    9102:	00 00 
    9104:	f3 44 0f 10 94 24 a0 	movss  0x1a0(%rsp),%xmm10
    910b:	01 00 00 
    910e:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    9115:	00 00 
    9117:	f3 44 0f 10 9c 24 b0 	movss  0x1b0(%rsp),%xmm11
    911e:	01 00 00 
    9121:	f3 44 0f 10 a4 24 c0 	movss  0x1c0(%rsp),%xmm12
    9128:	01 00 00 
    912b:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    9132:	00 00 
    9134:	e9 93 b9 ff ff       	jmp    4acc <sg_raster_triangle_depth_capture+0x161c>
    9139:	48 01 84 24 d8 00 00 	add    %rax,0xd8(%rsp)
    9140:	00 
    9141:	e9 4e a9 ff ff       	jmp    3a94 <sg_raster_triangle_depth_capture+0x5e4>
    9146:	48 01 84 24 d0 00 00 	add    %rax,0xd0(%rsp)
    914d:	00 
    914e:	e9 f3 a8 ff ff       	jmp    3a46 <sg_raster_triangle_depth_capture+0x596>
    9153:	48 01 84 24 c8 00 00 	add    %rax,0xc8(%rsp)
    915a:	00 
    915b:	e9 a4 a8 ff ff       	jmp    3a04 <sg_raster_triangle_depth_capture+0x554>
    9160:	44 89 d0             	mov    %r10d,%eax
    9163:	99                   	cltd
    9164:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    916b:	41 89 d2             	mov    %edx,%r10d
    916e:	85 d2                	test   %edx,%edx
    9170:	0f 88 37 18 00 00    	js     a9ad <sg_raster_triangle_depth_capture+0x74fd>
    9176:	89 c8                	mov    %ecx,%eax
    9178:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    917f:	99                   	cltd
    9180:	f7 f9                	idiv   %ecx
    9182:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    9185:	85 d2                	test   %edx,%edx
    9187:	0f 48 d0             	cmovs  %eax,%edx
    918a:	e9 0a e4 ff ff       	jmp    7599 <sg_raster_triangle_depth_capture+0x40e9>
    918f:	8b 74 24 10          	mov    0x10(%rsp),%esi
    9193:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    9198:	41 0f 28 e2          	movaps %xmm10,%xmm4
    919c:	0f 28 d7             	movaps %xmm7,%xmm2
    919f:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    91a6:	41 0f 28 d8          	movaps %xmm8,%xmm3
    91aa:	0f 28 ce             	movaps %xmm6,%xmm1
    91ad:	66 0f 6e c3          	movd   %ebx,%xmm0
    91b1:	44 89 8c 24 20 02 00 	mov    %r9d,0x220(%rsp)
    91b8:	00 
    91b9:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
    91c0:	00 00 
    91c2:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
    91c9:	00 00 
    91cb:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
    91d2:	00 
    91d3:	0f 29 b4 24 20 01 00 	movaps %xmm6,0x120(%rsp)
    91da:	00 
    91db:	e8 00 00 00 00       	call   91e0 <sg_raster_triangle_depth_capture+0x5d30>
    91e0:	45 85 ed             	test   %r13d,%r13d
    91e3:	0f 28 b4 24 20 01 00 	movaps 0x120(%rsp),%xmm6
    91ea:	00 
    91eb:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
    91f2:	00 
    91f3:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
    91fa:	00 00 
    91fc:	44 8b 8c 24 20 02 00 	mov    0x220(%rsp),%r9d
    9203:	00 
    9204:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
    920b:	00 00 
    920d:	0f 84 9d 00 00 00    	je     92b0 <sg_raster_triangle_depth_capture+0x5e00>
    9213:	41 0f 28 ea          	movaps %xmm10,%xmm5
    9217:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
    921e:	00 
    921f:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    9226:	8b 74 24 30          	mov    0x30(%rsp),%esi
    922a:	41 0f c6 ea 55       	shufps $0x55,%xmm10,%xmm5
    922f:	0f 28 e5             	movaps %xmm5,%xmm4
    9232:	41 0f 28 e8          	movaps %xmm8,%xmm5
    9236:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    923b:	41 0f c6 e8 55       	shufps $0x55,%xmm8,%xmm5
    9240:	0f 28 dd             	movaps %xmm5,%xmm3
    9243:	0f 28 ef             	movaps %xmm7,%xmm5
    9246:	48 c1 eb 20          	shr    $0x20,%rbx
    924a:	0f c6 ef 55          	shufps $0x55,%xmm7,%xmm5
    924e:	0f 28 fe             	movaps %xmm6,%xmm7
    9251:	0f 28 d5             	movaps %xmm5,%xmm2
    9254:	66 0f 6e c3          	movd   %ebx,%xmm0
    9258:	0f c6 fe 55          	shufps $0x55,%xmm6,%xmm7
    925c:	0f 28 cf             	movaps %xmm7,%xmm1
    925f:	44 89 8c 24 20 02 00 	mov    %r9d,0x220(%rsp)
    9266:	00 
    9267:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
    926e:	00 00 
    9270:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
    9277:	00 00 
    9279:	0f 29 b4 24 20 01 00 	movaps %xmm6,0x120(%rsp)
    9280:	00 
    9281:	e8 00 00 00 00       	call   9286 <sg_raster_triangle_depth_capture+0x5dd6>
    9286:	0f 28 b4 24 20 01 00 	movaps 0x120(%rsp),%xmm6
    928d:	00 
    928e:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
    9295:	00 
    9296:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
    929d:	00 00 
    929f:	44 8b 8c 24 20 02 00 	mov    0x220(%rsp),%r9d
    92a6:	00 
    92a7:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
    92ae:	00 00 
    92b0:	45 85 c9             	test   %r9d,%r9d
    92b3:	0f 85 65 e0 ff ff    	jne    731e <sg_raster_triangle_depth_capture+0x3e6e>
    92b9:	e9 e3 e0 ff ff       	jmp    73a1 <sg_raster_triangle_depth_capture+0x3ef1>
    92be:	45 01 df             	add    %r11d,%r15d
    92c1:	85 db                	test   %ebx,%ebx
    92c3:	0f 85 9f e4 ff ff    	jne    7768 <sg_raster_triangle_depth_capture+0x42b8>
    92c9:	44 89 d0             	mov    %r10d,%eax
    92cc:	99                   	cltd
    92cd:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    92d4:	41 89 d2             	mov    %edx,%r10d
    92d7:	85 d2                	test   %edx,%edx
    92d9:	0f 88 fe 16 00 00    	js     a9dd <sg_raster_triangle_depth_capture+0x752d>
    92df:	89 c8                	mov    %ecx,%eax
    92e1:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    92e8:	99                   	cltd
    92e9:	f7 f9                	idiv   %ecx
    92eb:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    92ee:	85 d2                	test   %edx,%edx
    92f0:	0f 48 d0             	cmovs  %eax,%edx
    92f3:	e9 77 e4 ff ff       	jmp    776f <sg_raster_triangle_depth_capture+0x42bf>
    92f8:	0f 28 cd             	movaps %xmm5,%xmm1
    92fb:	e9 81 c1 ff ff       	jmp    5481 <sg_raster_triangle_depth_capture+0x1fd1>
    9300:	8b b4 24 50 01 00 00 	mov    0x150(%rsp),%esi
    9307:	85 f6                	test   %esi,%esi
    9309:	0f 84 c8 0c 00 00    	je     9fd7 <sg_raster_triangle_depth_capture+0x6b27>
    930f:	8b 90 c0 3d 00 00    	mov    0x3dc0(%rax),%edx
    9315:	85 d2                	test   %edx,%edx
    9317:	0f 84 a5 0c 00 00    	je     9fc2 <sg_raster_triangle_depth_capture+0x6b12>
    931d:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    9324:	01 00 00 00 
    9328:	c7 84 24 50 01 00 00 	movl   $0x0,0x150(%rsp)
    932f:	00 00 00 00 
    9333:	e9 4b a8 ff ff       	jmp    3b83 <sg_raster_triangle_depth_capture+0x6d3>
    9338:	31 c0                	xor    %eax,%eax
    933a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    933e:	e9 60 c2 ff ff       	jmp    55a3 <sg_raster_triangle_depth_capture+0x20f3>
    9343:	99                   	cltd
    9344:	41 f7 fb             	idiv   %r11d
    9347:	41 89 d2             	mov    %edx,%r10d
    934a:	41 89 d5             	mov    %edx,%r13d
    934d:	45 85 c9             	test   %r9d,%r9d
    9350:	0f 8e 43 02 00 00    	jle    9599 <sg_raster_triangle_depth_capture+0x60e9>
    9356:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    935a:	41 85 d9             	test   %ebx,%r9d
    935d:	0f 85 36 02 00 00    	jne    9599 <sg_raster_triangle_depth_capture+0x60e9>
    9363:	85 d2                	test   %edx,%edx
    9365:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    9369:	44 0f 48 e8          	cmovs  %eax,%r13d
    936d:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    9374:	99                   	cltd
    9375:	41 f7 fb             	idiv   %r11d
    9378:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    937c:	85 d2                	test   %edx,%edx
    937e:	0f 48 d0             	cmovs  %eax,%edx
    9381:	41 89 d2             	mov    %edx,%r10d
    9384:	85 db                	test   %ebx,%ebx
    9386:	0f 84 2d 02 00 00    	je     95b9 <sg_raster_triangle_depth_capture+0x6109>
    938c:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9393:	21 df                	and    %ebx,%edi
    9395:	21 d8                	and    %ebx,%eax
    9397:	41 0f af fb          	imul   %r11d,%edi
    939b:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    93a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    93a4:	41 0f af c3          	imul   %r11d,%eax
    93a8:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    93ad:	66 0f ef ed          	pxor   %xmm5,%xmm5
    93b1:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
    93b5:	44 01 d7             	add    %r10d,%edi
    93b8:	41 c1 e1 02          	shl    $0x2,%r9d
    93bc:	c1 e7 02             	shl    $0x2,%edi
    93bf:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
    93c3:	44 01 d0             	add    %r10d,%eax
    93c6:	c1 e2 02             	shl    $0x2,%edx
    93c9:	4d 63 c9             	movslq %r9d,%r9
    93cc:	48 63 ff             	movslq %edi,%rdi
    93cf:	c1 e0 02             	shl    $0x2,%eax
    93d2:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
    93d7:	44 0f b6 14 39       	movzbl (%rcx,%rdi,1),%r10d
    93dc:	48 63 d2             	movslq %edx,%rdx
    93df:	48 98                	cltq
    93e1:	44 8b ac 24 60 01 00 	mov    0x160(%rsp),%r13d
    93e8:	00 
    93e9:	45 0f af df          	imul   %r15d,%r11d
    93ed:	44 0f af d6          	imul   %esi,%r10d
    93f1:	44 89 eb             	mov    %r13d,%ebx
    93f4:	45 01 da             	add    %r11d,%r10d
    93f7:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
    93fc:	41 0f af da          	imul   %r10d,%ebx
    9400:	44 0f b6 14 01       	movzbl (%rcx,%rax,1),%r10d
    9405:	45 0f af df          	imul   %r15d,%r11d
    9409:	44 0f af d6          	imul   %esi,%r10d
    940d:	45 01 d3             	add    %r10d,%r11d
    9410:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    9416:	45 0f af d8          	imul   %r8d,%r11d
    941a:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9421:	00 
    9422:	44 89 eb             	mov    %r13d,%ebx
    9425:	41 c1 fb 10          	sar    $0x10,%r11d
    9429:	45 39 d3             	cmp    %r10d,%r11d
    942c:	45 0f 4f da          	cmovg  %r10d,%r11d
    9430:	44 0f b6 54 39 01    	movzbl 0x1(%rcx,%rdi,1),%r10d
    9436:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
    943b:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
    9441:	44 0f af d6          	imul   %esi,%r10d
    9445:	45 0f af df          	imul   %r15d,%r11d
    9449:	45 01 da             	add    %r11d,%r10d
    944c:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
    9452:	41 0f af da          	imul   %r10d,%ebx
    9456:	44 0f b6 54 01 01    	movzbl 0x1(%rcx,%rax,1),%r10d
    945c:	45 0f af df          	imul   %r15d,%r11d
    9460:	44 0f af d6          	imul   %esi,%r10d
    9464:	45 01 d3             	add    %r10d,%r11d
    9467:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    946d:	45 0f af d8          	imul   %r8d,%r11d
    9471:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9478:	00 
    9479:	44 89 eb             	mov    %r13d,%ebx
    947c:	41 c1 fb 10          	sar    $0x10,%r11d
    9480:	45 39 d3             	cmp    %r10d,%r11d
    9483:	45 0f 4f da          	cmovg  %r10d,%r11d
    9487:	44 0f b6 54 39 02    	movzbl 0x2(%rcx,%rdi,1),%r10d
    948d:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    9492:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
    9497:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
    949d:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    94a3:	44 0f af d6          	imul   %esi,%r10d
    94a7:	45 0f af df          	imul   %r15d,%r11d
    94ab:	45 01 da             	add    %r11d,%r10d
    94ae:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
    94b4:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    94b9:	41 0f af da          	imul   %r10d,%ebx
    94bd:	44 0f b6 54 01 02    	movzbl 0x2(%rcx,%rax,1),%r10d
    94c3:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    94c8:	45 0f af df          	imul   %r15d,%r11d
    94cc:	44 0f af d6          	imul   %esi,%r10d
    94d0:	45 01 d3             	add    %r10d,%r11d
    94d3:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    94d9:	45 0f af d8          	imul   %r8d,%r11d
    94dd:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    94e4:	00 
    94e5:	41 c1 fb 10          	sar    $0x10,%r11d
    94e9:	45 39 d3             	cmp    %r10d,%r11d
    94ec:	45 0f 4f da          	cmovg  %r10d,%r11d
    94f0:	41 0f af d7          	imul   %r15d,%edx
    94f4:	45 0f af cf          	imul   %r15d,%r9d
    94f8:	0f af fe             	imul   %esi,%edi
    94fb:	0f af c6             	imul   %esi,%eax
    94fe:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    9503:	41 01 f9             	add    %edi,%r9d
    9506:	01 d0                	add    %edx,%eax
    9508:	45 0f af cd          	imul   %r13d,%r9d
    950c:	ba ff 00 00 00       	mov    $0xff,%edx
    9511:	41 0f af c0          	imul   %r8d,%eax
    9515:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    951c:	00 
    951d:	c1 f8 10             	sar    $0x10,%eax
    9520:	39 d0                	cmp    %edx,%eax
    9522:	0f 4f c2             	cmovg  %edx,%eax
    9525:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    952c:	02 
    952d:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    9531:	0f 84 47 1f 00 00    	je     b47e <sg_raster_triangle_depth_capture+0x7fce>
    9537:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 953f <sg_raster_triangle_depth_capture+0x608f>
    953e:	00 
    953f:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 9547 <sg_raster_triangle_depth_capture+0x6097>
    9546:	00 
    9547:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 954f <sg_raster_triangle_depth_capture+0x609f>
    954e:	00 
    954f:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9553:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 955b <sg_raster_triangle_depth_capture+0x60ab>
    955a:	00 
    955b:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    9560:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9564:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    9569:	0f 28 e0             	movaps %xmm0,%xmm4
    956c:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    9570:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    9577:	00 00 
    9579:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    9580:	00 00 
    9582:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    9589:	00 00 
    958b:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    9592:	00 00 
    9594:	e9 33 b5 ff ff       	jmp    4acc <sg_raster_triangle_depth_capture+0x161c>
    9599:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    95a0:	99                   	cltd
    95a1:	41 f7 fb             	idiv   %r11d
    95a4:	45 85 d2             	test   %r10d,%r10d
    95a7:	0f 88 a2 16 00 00    	js     ac4f <sg_raster_triangle_depth_capture+0x779f>
    95ad:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    95b1:	85 d2                	test   %edx,%edx
    95b3:	0f 48 d0             	cmovs  %eax,%edx
    95b6:	41 89 d2             	mov    %edx,%r10d
    95b9:	89 f8                	mov    %edi,%eax
    95bb:	99                   	cltd
    95bc:	41 f7 f9             	idiv   %r9d
    95bf:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    95c6:	85 d2                	test   %edx,%edx
    95c8:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    95cc:	0f 49 fa             	cmovns %edx,%edi
    95cf:	99                   	cltd
    95d0:	41 f7 f9             	idiv   %r9d
    95d3:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    95d7:	85 d2                	test   %edx,%edx
    95d9:	0f 49 c2             	cmovns %edx,%eax
    95dc:	e9 b6 fd ff ff       	jmp    9397 <sg_raster_triangle_depth_capture+0x5ee7>
    95e1:	99                   	cltd
    95e2:	41 f7 fb             	idiv   %r11d
    95e5:	41 89 d2             	mov    %edx,%r10d
    95e8:	41 89 d5             	mov    %edx,%r13d
    95eb:	45 85 c9             	test   %r9d,%r9d
    95ee:	0f 8e 43 02 00 00    	jle    9837 <sg_raster_triangle_depth_capture+0x6387>
    95f4:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    95f8:	41 85 d9             	test   %ebx,%r9d
    95fb:	0f 85 36 02 00 00    	jne    9837 <sg_raster_triangle_depth_capture+0x6387>
    9601:	85 d2                	test   %edx,%edx
    9603:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    9607:	44 0f 48 e8          	cmovs  %eax,%r13d
    960b:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    9612:	99                   	cltd
    9613:	41 f7 fb             	idiv   %r11d
    9616:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    961a:	85 d2                	test   %edx,%edx
    961c:	0f 48 d0             	cmovs  %eax,%edx
    961f:	41 89 d2             	mov    %edx,%r10d
    9622:	85 db                	test   %ebx,%ebx
    9624:	0f 84 2d 02 00 00    	je     9857 <sg_raster_triangle_depth_capture+0x63a7>
    962a:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9631:	21 df                	and    %ebx,%edi
    9633:	21 d8                	and    %ebx,%eax
    9635:	41 0f af fb          	imul   %r11d,%edi
    9639:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    963e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9642:	41 0f af c3          	imul   %r11d,%eax
    9646:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    964b:	66 0f ef ed          	pxor   %xmm5,%xmm5
    964f:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
    9653:	44 01 d7             	add    %r10d,%edi
    9656:	41 c1 e1 02          	shl    $0x2,%r9d
    965a:	c1 e7 02             	shl    $0x2,%edi
    965d:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
    9661:	44 01 d0             	add    %r10d,%eax
    9664:	c1 e2 02             	shl    $0x2,%edx
    9667:	4d 63 c9             	movslq %r9d,%r9
    966a:	48 63 ff             	movslq %edi,%rdi
    966d:	c1 e0 02             	shl    $0x2,%eax
    9670:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
    9675:	44 0f b6 14 39       	movzbl (%rcx,%rdi,1),%r10d
    967a:	48 63 d2             	movslq %edx,%rdx
    967d:	48 98                	cltq
    967f:	44 8b ac 24 60 01 00 	mov    0x160(%rsp),%r13d
    9686:	00 
    9687:	45 0f af df          	imul   %r15d,%r11d
    968b:	44 0f af d6          	imul   %esi,%r10d
    968f:	44 89 eb             	mov    %r13d,%ebx
    9692:	45 01 da             	add    %r11d,%r10d
    9695:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
    969a:	41 0f af da          	imul   %r10d,%ebx
    969e:	44 0f b6 14 01       	movzbl (%rcx,%rax,1),%r10d
    96a3:	45 0f af df          	imul   %r15d,%r11d
    96a7:	44 0f af d6          	imul   %esi,%r10d
    96ab:	45 01 d3             	add    %r10d,%r11d
    96ae:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    96b4:	45 0f af d8          	imul   %r8d,%r11d
    96b8:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    96bf:	00 
    96c0:	44 89 eb             	mov    %r13d,%ebx
    96c3:	41 c1 fb 10          	sar    $0x10,%r11d
    96c7:	45 39 d3             	cmp    %r10d,%r11d
    96ca:	45 0f 4f da          	cmovg  %r10d,%r11d
    96ce:	44 0f b6 54 39 01    	movzbl 0x1(%rcx,%rdi,1),%r10d
    96d4:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
    96d9:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
    96df:	44 0f af d6          	imul   %esi,%r10d
    96e3:	45 0f af df          	imul   %r15d,%r11d
    96e7:	45 01 da             	add    %r11d,%r10d
    96ea:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
    96f0:	41 0f af da          	imul   %r10d,%ebx
    96f4:	44 0f b6 54 01 01    	movzbl 0x1(%rcx,%rax,1),%r10d
    96fa:	45 0f af df          	imul   %r15d,%r11d
    96fe:	44 0f af d6          	imul   %esi,%r10d
    9702:	45 01 d3             	add    %r10d,%r11d
    9705:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    970b:	45 0f af d8          	imul   %r8d,%r11d
    970f:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9716:	00 
    9717:	44 89 eb             	mov    %r13d,%ebx
    971a:	41 c1 fb 10          	sar    $0x10,%r11d
    971e:	45 39 d3             	cmp    %r10d,%r11d
    9721:	45 0f 4f da          	cmovg  %r10d,%r11d
    9725:	44 0f b6 54 39 02    	movzbl 0x2(%rcx,%rdi,1),%r10d
    972b:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    9730:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
    9735:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
    973b:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    9741:	44 0f af d6          	imul   %esi,%r10d
    9745:	45 0f af df          	imul   %r15d,%r11d
    9749:	45 01 da             	add    %r11d,%r10d
    974c:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
    9752:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    9757:	41 0f af da          	imul   %r10d,%ebx
    975b:	44 0f b6 54 01 02    	movzbl 0x2(%rcx,%rax,1),%r10d
    9761:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    9766:	45 0f af df          	imul   %r15d,%r11d
    976a:	44 0f af d6          	imul   %esi,%r10d
    976e:	45 01 d3             	add    %r10d,%r11d
    9771:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    9777:	45 0f af d8          	imul   %r8d,%r11d
    977b:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9782:	00 
    9783:	41 c1 fb 10          	sar    $0x10,%r11d
    9787:	45 39 d3             	cmp    %r10d,%r11d
    978a:	45 0f 4f da          	cmovg  %r10d,%r11d
    978e:	41 0f af d7          	imul   %r15d,%edx
    9792:	45 0f af cf          	imul   %r15d,%r9d
    9796:	0f af fe             	imul   %esi,%edi
    9799:	0f af c6             	imul   %esi,%eax
    979c:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    97a1:	41 01 f9             	add    %edi,%r9d
    97a4:	01 d0                	add    %edx,%eax
    97a6:	45 0f af cd          	imul   %r13d,%r9d
    97aa:	ba ff 00 00 00       	mov    $0xff,%edx
    97af:	41 0f af c0          	imul   %r8d,%eax
    97b3:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    97ba:	00 
    97bb:	c1 f8 10             	sar    $0x10,%eax
    97be:	39 d0                	cmp    %edx,%eax
    97c0:	0f 4f c2             	cmovg  %edx,%eax
    97c3:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    97ca:	02 
    97cb:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    97cf:	0f 84 d1 1c 00 00    	je     b4a6 <sg_raster_triangle_depth_capture+0x7ff6>
    97d5:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 97dd <sg_raster_triangle_depth_capture+0x632d>
    97dc:	00 
    97dd:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 97e5 <sg_raster_triangle_depth_capture+0x6335>
    97e4:	00 
    97e5:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 97ed <sg_raster_triangle_depth_capture+0x633d>
    97ec:	00 
    97ed:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    97f1:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 97f9 <sg_raster_triangle_depth_capture+0x6349>
    97f8:	00 
    97f9:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    97fe:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9802:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    9807:	0f 28 e0             	movaps %xmm0,%xmm4
    980a:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    980e:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    9815:	00 00 
    9817:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    981e:	00 00 
    9820:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    9827:	00 00 
    9829:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    9830:	00 00 
    9832:	e9 c3 b4 ff ff       	jmp    4cfa <sg_raster_triangle_depth_capture+0x184a>
    9837:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    983e:	99                   	cltd
    983f:	41 f7 fb             	idiv   %r11d
    9842:	45 85 d2             	test   %r10d,%r10d
    9845:	0f 88 19 14 00 00    	js     ac64 <sg_raster_triangle_depth_capture+0x77b4>
    984b:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    984f:	85 d2                	test   %edx,%edx
    9851:	0f 48 d0             	cmovs  %eax,%edx
    9854:	41 89 d2             	mov    %edx,%r10d
    9857:	89 f8                	mov    %edi,%eax
    9859:	99                   	cltd
    985a:	41 f7 f9             	idiv   %r9d
    985d:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9864:	85 d2                	test   %edx,%edx
    9866:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    986a:	0f 49 fa             	cmovns %edx,%edi
    986d:	99                   	cltd
    986e:	41 f7 f9             	idiv   %r9d
    9871:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    9875:	85 d2                	test   %edx,%edx
    9877:	0f 49 c2             	cmovns %edx,%eax
    987a:	e9 b6 fd ff ff       	jmp    9635 <sg_raster_triangle_depth_capture+0x6185>
    987f:	99                   	cltd
    9880:	f7 fd                	idiv   %ebp
    9882:	41 89 d2             	mov    %edx,%r10d
    9885:	41 89 d5             	mov    %edx,%r13d
    9888:	45 85 c9             	test   %r9d,%r9d
    988b:	0f 8e 27 02 00 00    	jle    9ab8 <sg_raster_triangle_depth_capture+0x6608>
    9891:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    9895:	41 85 d9             	test   %ebx,%r9d
    9898:	0f 85 1a 02 00 00    	jne    9ab8 <sg_raster_triangle_depth_capture+0x6608>
    989e:	85 d2                	test   %edx,%edx
    98a0:	8d 04 2a             	lea    (%rdx,%rbp,1),%eax
    98a3:	44 0f 48 e8          	cmovs  %eax,%r13d
    98a7:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    98ae:	99                   	cltd
    98af:	f7 fd                	idiv   %ebp
    98b1:	44 8d 1c 2a          	lea    (%rdx,%rbp,1),%r11d
    98b5:	85 d2                	test   %edx,%edx
    98b7:	44 0f 49 da          	cmovns %edx,%r11d
    98bb:	85 db                	test   %ebx,%ebx
    98bd:	0f 84 12 02 00 00    	je     9ad5 <sg_raster_triangle_depth_capture+0x6625>
    98c3:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    98ca:	21 df                	and    %ebx,%edi
    98cc:	21 d8                	and    %ebx,%eax
    98ce:	0f af fd             	imul   %ebp,%edi
    98d1:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    98d8:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    98dd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    98e1:	0f af c5             	imul   %ebp,%eax
    98e4:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    98e9:	66 0f ef ed          	pxor   %xmm5,%xmm5
    98ed:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
    98f1:	44 01 df             	add    %r11d,%edi
    98f4:	41 c1 e1 02          	shl    $0x2,%r9d
    98f8:	c1 e7 02             	shl    $0x2,%edi
    98fb:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
    98ff:	44 01 d8             	add    %r11d,%eax
    9902:	c1 e2 02             	shl    $0x2,%edx
    9905:	4d 63 c9             	movslq %r9d,%r9
    9908:	48 63 ff             	movslq %edi,%rdi
    990b:	c1 e0 02             	shl    $0x2,%eax
    990e:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
    9913:	0f b6 2c 39          	movzbl (%rcx,%rdi,1),%ebp
    9917:	48 63 d2             	movslq %edx,%rdx
    991a:	48 98                	cltq
    991c:	44 0f b6 14 01       	movzbl (%rcx,%rax,1),%r10d
    9921:	45 0f af df          	imul   %r15d,%r11d
    9925:	0f af ee             	imul   %esi,%ebp
    9928:	44 0f af d6          	imul   %esi,%r10d
    992c:	44 01 dd             	add    %r11d,%ebp
    992f:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
    9934:	0f af eb             	imul   %ebx,%ebp
    9937:	45 0f af df          	imul   %r15d,%r11d
    993b:	45 01 d3             	add    %r10d,%r11d
    993e:	44 0f b6 54 01 01    	movzbl 0x1(%rcx,%rax,1),%r10d
    9944:	45 0f af d8          	imul   %r8d,%r11d
    9948:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
    994f:	00 
    9950:	bd ff 00 00 00       	mov    $0xff,%ebp
    9955:	41 c1 fb 10          	sar    $0x10,%r11d
    9959:	41 39 eb             	cmp    %ebp,%r11d
    995c:	44 0f 4f dd          	cmovg  %ebp,%r11d
    9960:	0f b6 6c 39 01       	movzbl 0x1(%rcx,%rdi,1),%ebp
    9965:	44 0f af d6          	imul   %esi,%r10d
    9969:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
    996e:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
    9974:	0f af ee             	imul   %esi,%ebp
    9977:	45 0f af df          	imul   %r15d,%r11d
    997b:	44 01 dd             	add    %r11d,%ebp
    997e:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
    9984:	0f af eb             	imul   %ebx,%ebp
    9987:	45 0f af df          	imul   %r15d,%r11d
    998b:	45 01 d3             	add    %r10d,%r11d
    998e:	44 0f b6 54 01 02    	movzbl 0x2(%rcx,%rax,1),%r10d
    9994:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    9999:	45 0f af d8          	imul   %r8d,%r11d
    999d:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
    99a4:	00 
    99a5:	bd ff 00 00 00       	mov    $0xff,%ebp
    99aa:	41 c1 fb 10          	sar    $0x10,%r11d
    99ae:	41 39 eb             	cmp    %ebp,%r11d
    99b1:	44 0f 4f dd          	cmovg  %ebp,%r11d
    99b5:	0f b6 6c 39 02       	movzbl 0x2(%rcx,%rdi,1),%ebp
    99ba:	44 0f af d6          	imul   %esi,%r10d
    99be:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    99c3:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
    99c8:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
    99ce:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    99d4:	0f af ee             	imul   %esi,%ebp
    99d7:	45 0f af df          	imul   %r15d,%r11d
    99db:	44 01 dd             	add    %r11d,%ebp
    99de:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
    99e4:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    99e9:	0f af eb             	imul   %ebx,%ebp
    99ec:	45 0f af df          	imul   %r15d,%r11d
    99f0:	45 01 d3             	add    %r10d,%r11d
    99f3:	45 0f af d8          	imul   %r8d,%r11d
    99f7:	46 8d 9c 1d 00 80 00 	lea    0x8000(%rbp,%r11,1),%r11d
    99fe:	00 
    99ff:	bd ff 00 00 00       	mov    $0xff,%ebp
    9a04:	41 c1 fb 10          	sar    $0x10,%r11d
    9a08:	41 39 eb             	cmp    %ebp,%r11d
    9a0b:	44 0f 4f dd          	cmovg  %ebp,%r11d
    9a0f:	41 0f af d7          	imul   %r15d,%edx
    9a13:	45 0f af cf          	imul   %r15d,%r9d
    9a17:	0f af fe             	imul   %esi,%edi
    9a1a:	0f af c6             	imul   %esi,%eax
    9a1d:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    9a22:	41 01 f9             	add    %edi,%r9d
    9a25:	01 d0                	add    %edx,%eax
    9a27:	44 0f af cb          	imul   %ebx,%r9d
    9a2b:	ba ff 00 00 00       	mov    $0xff,%edx
    9a30:	41 0f af c0          	imul   %r8d,%eax
    9a34:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    9a3b:	00 
    9a3c:	c1 f8 10             	sar    $0x10,%eax
    9a3f:	39 d0                	cmp    %edx,%eax
    9a41:	0f 4f c2             	cmovg  %edx,%eax
    9a44:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    9a4b:	02 
    9a4c:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    9a50:	0f 84 78 1a 00 00    	je     b4ce <sg_raster_triangle_depth_capture+0x801e>
    9a56:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 9a5e <sg_raster_triangle_depth_capture+0x65ae>
    9a5d:	00 
    9a5e:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 9a66 <sg_raster_triangle_depth_capture+0x65b6>
    9a65:	00 
    9a66:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 9a6e <sg_raster_triangle_depth_capture+0x65be>
    9a6d:	00 
    9a6e:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9a72:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 9a7a <sg_raster_triangle_depth_capture+0x65ca>
    9a79:	00 
    9a7a:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    9a7f:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9a83:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    9a88:	0f 28 e0             	movaps %xmm0,%xmm4
    9a8b:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    9a8f:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    9a96:	00 00 
    9a98:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    9a9f:	00 00 
    9aa1:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    9aa8:	00 00 
    9aaa:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    9ab1:	00 00 
    9ab3:	e9 c4 c0 ff ff       	jmp    5b7c <sg_raster_triangle_depth_capture+0x26cc>
    9ab8:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    9abf:	99                   	cltd
    9ac0:	f7 fd                	idiv   %ebp
    9ac2:	45 85 d2             	test   %r10d,%r10d
    9ac5:	0f 88 ae 11 00 00    	js     ac79 <sg_raster_triangle_depth_capture+0x77c9>
    9acb:	44 8d 1c 2a          	lea    (%rdx,%rbp,1),%r11d
    9acf:	85 d2                	test   %edx,%edx
    9ad1:	44 0f 49 da          	cmovns %edx,%r11d
    9ad5:	89 f8                	mov    %edi,%eax
    9ad7:	99                   	cltd
    9ad8:	41 f7 f9             	idiv   %r9d
    9adb:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9ae2:	85 d2                	test   %edx,%edx
    9ae4:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    9ae8:	0f 49 fa             	cmovns %edx,%edi
    9aeb:	99                   	cltd
    9aec:	41 f7 f9             	idiv   %r9d
    9aef:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    9af3:	85 d2                	test   %edx,%edx
    9af5:	0f 49 c2             	cmovns %edx,%eax
    9af8:	e9 d1 fd ff ff       	jmp    98ce <sg_raster_triangle_depth_capture+0x641e>
    9afd:	99                   	cltd
    9afe:	41 f7 fb             	idiv   %r11d
    9b01:	41 89 d2             	mov    %edx,%r10d
    9b04:	41 89 d5             	mov    %edx,%r13d
    9b07:	45 85 c9             	test   %r9d,%r9d
    9b0a:	0f 8e 43 02 00 00    	jle    9d53 <sg_raster_triangle_depth_capture+0x68a3>
    9b10:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    9b14:	41 85 d9             	test   %ebx,%r9d
    9b17:	0f 85 36 02 00 00    	jne    9d53 <sg_raster_triangle_depth_capture+0x68a3>
    9b1d:	85 d2                	test   %edx,%edx
    9b1f:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    9b23:	44 0f 48 e8          	cmovs  %eax,%r13d
    9b27:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    9b2e:	99                   	cltd
    9b2f:	41 f7 fb             	idiv   %r11d
    9b32:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    9b36:	85 d2                	test   %edx,%edx
    9b38:	0f 48 d0             	cmovs  %eax,%edx
    9b3b:	41 89 d2             	mov    %edx,%r10d
    9b3e:	85 db                	test   %ebx,%ebx
    9b40:	0f 84 2d 02 00 00    	je     9d73 <sg_raster_triangle_depth_capture+0x68c3>
    9b46:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9b4d:	21 df                	and    %ebx,%edi
    9b4f:	21 d8                	and    %ebx,%eax
    9b51:	41 0f af fb          	imul   %r11d,%edi
    9b55:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    9b5a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9b5e:	41 0f af c3          	imul   %r11d,%eax
    9b62:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    9b67:	66 0f ef ed          	pxor   %xmm5,%xmm5
    9b6b:	46 8d 0c 2f          	lea    (%rdi,%r13,1),%r9d
    9b6f:	44 01 d7             	add    %r10d,%edi
    9b72:	41 c1 e1 02          	shl    $0x2,%r9d
    9b76:	c1 e7 02             	shl    $0x2,%edi
    9b79:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
    9b7d:	44 01 d0             	add    %r10d,%eax
    9b80:	c1 e2 02             	shl    $0x2,%edx
    9b83:	4d 63 c9             	movslq %r9d,%r9
    9b86:	48 63 ff             	movslq %edi,%rdi
    9b89:	c1 e0 02             	shl    $0x2,%eax
    9b8c:	46 0f b6 1c 09       	movzbl (%rcx,%r9,1),%r11d
    9b91:	44 0f b6 14 39       	movzbl (%rcx,%rdi,1),%r10d
    9b96:	48 63 d2             	movslq %edx,%rdx
    9b99:	48 98                	cltq
    9b9b:	44 8b ac 24 60 01 00 	mov    0x160(%rsp),%r13d
    9ba2:	00 
    9ba3:	45 0f af df          	imul   %r15d,%r11d
    9ba7:	44 0f af d6          	imul   %esi,%r10d
    9bab:	44 89 eb             	mov    %r13d,%ebx
    9bae:	45 01 da             	add    %r11d,%r10d
    9bb1:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
    9bb6:	41 0f af da          	imul   %r10d,%ebx
    9bba:	44 0f b6 14 01       	movzbl (%rcx,%rax,1),%r10d
    9bbf:	45 0f af df          	imul   %r15d,%r11d
    9bc3:	44 0f af d6          	imul   %esi,%r10d
    9bc7:	45 01 d3             	add    %r10d,%r11d
    9bca:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    9bd0:	45 0f af d8          	imul   %r8d,%r11d
    9bd4:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9bdb:	00 
    9bdc:	44 89 eb             	mov    %r13d,%ebx
    9bdf:	41 c1 fb 10          	sar    $0x10,%r11d
    9be3:	45 39 d3             	cmp    %r10d,%r11d
    9be6:	45 0f 4f da          	cmovg  %r10d,%r11d
    9bea:	44 0f b6 54 39 01    	movzbl 0x1(%rcx,%rdi,1),%r10d
    9bf0:	f3 45 0f 2a fb       	cvtsi2ss %r11d,%xmm15
    9bf5:	46 0f b6 5c 09 01    	movzbl 0x1(%rcx,%r9,1),%r11d
    9bfb:	44 0f af d6          	imul   %esi,%r10d
    9bff:	45 0f af df          	imul   %r15d,%r11d
    9c03:	45 01 da             	add    %r11d,%r10d
    9c06:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
    9c0c:	41 0f af da          	imul   %r10d,%ebx
    9c10:	44 0f b6 54 01 01    	movzbl 0x1(%rcx,%rax,1),%r10d
    9c16:	45 0f af df          	imul   %r15d,%r11d
    9c1a:	44 0f af d6          	imul   %esi,%r10d
    9c1e:	45 01 d3             	add    %r10d,%r11d
    9c21:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    9c27:	45 0f af d8          	imul   %r8d,%r11d
    9c2b:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9c32:	00 
    9c33:	44 89 eb             	mov    %r13d,%ebx
    9c36:	41 c1 fb 10          	sar    $0x10,%r11d
    9c3a:	45 39 d3             	cmp    %r10d,%r11d
    9c3d:	45 0f 4f da          	cmovg  %r10d,%r11d
    9c41:	44 0f b6 54 39 02    	movzbl 0x2(%rcx,%rdi,1),%r10d
    9c47:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    9c4c:	f3 41 0f 2a c3       	cvtsi2ss %r11d,%xmm0
    9c51:	46 0f b6 5c 09 02    	movzbl 0x2(%rcx,%r9,1),%r11d
    9c57:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    9c5d:	44 0f af d6          	imul   %esi,%r10d
    9c61:	45 0f af df          	imul   %r15d,%r11d
    9c65:	45 01 da             	add    %r11d,%r10d
    9c68:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
    9c6e:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    9c73:	41 0f af da          	imul   %r10d,%ebx
    9c77:	44 0f b6 54 01 02    	movzbl 0x2(%rcx,%rax,1),%r10d
    9c7d:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    9c82:	45 0f af df          	imul   %r15d,%r11d
    9c86:	44 0f af d6          	imul   %esi,%r10d
    9c8a:	45 01 d3             	add    %r10d,%r11d
    9c8d:	41 ba ff 00 00 00    	mov    $0xff,%r10d
    9c93:	45 0f af d8          	imul   %r8d,%r11d
    9c97:	46 8d 9c 1b 00 80 00 	lea    0x8000(%rbx,%r11,1),%r11d
    9c9e:	00 
    9c9f:	41 c1 fb 10          	sar    $0x10,%r11d
    9ca3:	45 39 d3             	cmp    %r10d,%r11d
    9ca6:	45 0f 4f da          	cmovg  %r10d,%r11d
    9caa:	41 0f af d7          	imul   %r15d,%edx
    9cae:	45 0f af cf          	imul   %r15d,%r9d
    9cb2:	0f af fe             	imul   %esi,%edi
    9cb5:	0f af c6             	imul   %esi,%eax
    9cb8:	f3 45 0f 2a f3       	cvtsi2ss %r11d,%xmm14
    9cbd:	41 01 f9             	add    %edi,%r9d
    9cc0:	01 d0                	add    %edx,%eax
    9cc2:	45 0f af cd          	imul   %r13d,%r9d
    9cc6:	ba ff 00 00 00       	mov    $0xff,%edx
    9ccb:	41 0f af c0          	imul   %r8d,%eax
    9ccf:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    9cd6:	00 
    9cd7:	c1 f8 10             	sar    $0x10,%eax
    9cda:	39 d0                	cmp    %edx,%eax
    9cdc:	0f 4f c2             	cmovg  %edx,%eax
    9cdf:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    9ce6:	02 
    9ce7:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    9ceb:	0f 84 05 18 00 00    	je     b4f6 <sg_raster_triangle_depth_capture+0x8046>
    9cf1:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 9cf9 <sg_raster_triangle_depth_capture+0x6849>
    9cf8:	00 
    9cf9:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 9d01 <sg_raster_triangle_depth_capture+0x6851>
    9d00:	00 
    9d01:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 9d09 <sg_raster_triangle_depth_capture+0x6859>
    9d08:	00 
    9d09:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9d0d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 9d15 <sg_raster_triangle_depth_capture+0x6865>
    9d14:	00 
    9d15:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    9d1a:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9d1e:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    9d23:	0f 28 e0             	movaps %xmm0,%xmm4
    9d26:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    9d2a:	f3 0f 11 8c 24 f0 02 	movss  %xmm1,0x2f0(%rsp)
    9d31:	00 00 
    9d33:	f3 0f 11 94 24 f4 02 	movss  %xmm2,0x2f4(%rsp)
    9d3a:	00 00 
    9d3c:	f3 0f 11 9c 24 f8 02 	movss  %xmm3,0x2f8(%rsp)
    9d43:	00 00 
    9d45:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    9d4c:	00 00 
    9d4e:	e9 47 ab ff ff       	jmp    489a <sg_raster_triangle_depth_capture+0x13ea>
    9d53:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    9d5a:	99                   	cltd
    9d5b:	41 f7 fb             	idiv   %r11d
    9d5e:	45 85 d2             	test   %r10d,%r10d
    9d61:	0f 88 75 0e 00 00    	js     abdc <sg_raster_triangle_depth_capture+0x772c>
    9d67:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    9d6b:	85 d2                	test   %edx,%edx
    9d6d:	0f 48 d0             	cmovs  %eax,%edx
    9d70:	41 89 d2             	mov    %edx,%r10d
    9d73:	89 f8                	mov    %edi,%eax
    9d75:	99                   	cltd
    9d76:	41 f7 f9             	idiv   %r9d
    9d79:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9d80:	85 d2                	test   %edx,%edx
    9d82:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    9d86:	0f 49 fa             	cmovns %edx,%edi
    9d89:	99                   	cltd
    9d8a:	41 f7 f9             	idiv   %r9d
    9d8d:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    9d91:	85 d2                	test   %edx,%edx
    9d93:	0f 49 c2             	cmovns %edx,%eax
    9d96:	e9 b6 fd ff ff       	jmp    9b51 <sg_raster_triangle_depth_capture+0x66a1>
    9d9b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9d9f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    9da4:	e9 6d d7 ff ff       	jmp    7516 <sg_raster_triangle_depth_capture+0x4066>
    9da9:	83 e5 0c             	and    $0xc,%ebp
    9dac:	66 0f d6 07          	movq   %xmm0,(%rdi)
    9db0:	0f 84 9d a8 ff ff    	je     4653 <sg_raster_triangle_depth_capture+0x11a3>
    9db6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9dbb:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9dbf:	e9 c7 d3 ff ff       	jmp    718b <sg_raster_triangle_depth_capture+0x3cdb>
    9dc4:	0f 1f 40 00          	nopl   0x0(%rax)
    9dc8:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    9dcf:	89 c8                	mov    %ecx,%eax
    9dd1:	41 01 d2             	add    %edx,%r10d
    9dd4:	89 d1                	mov    %edx,%ecx
    9dd6:	99                   	cltd
    9dd7:	f7 f9                	idiv   %ecx
    9dd9:	85 d2                	test   %edx,%edx
    9ddb:	0f 84 a5 c5 ff ff    	je     6386 <sg_raster_triangle_depth_capture+0x2ed6>
    9de1:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
    9de8:	01 c2                	add    %eax,%edx
    9dea:	45 85 ed             	test   %r13d,%r13d
    9ded:	0f 85 57 c3 ff ff    	jne    614a <sg_raster_triangle_depth_capture+0x2c9a>
    9df3:	e9 8e c5 ff ff       	jmp    6386 <sg_raster_triangle_depth_capture+0x2ed6>
    9df8:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    9dff:	00 00 
    9e01:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9e06:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    9e0d:	00 00 
    9e0f:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    9e16:	00 
    9e17:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    9e1e:	00 00 
    9e20:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    9e27:	00 00 
    9e29:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    9e30:	00 00 
    9e32:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 9e39 <sg_raster_triangle_depth_capture+0x6989>
    9e39:	e8 00 00 00 00       	call   9e3e <sg_raster_triangle_depth_capture+0x698e>
    9e3e:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 9e46 <sg_raster_triangle_depth_capture+0x6996>
    9e45:	00 
    9e46:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    9e4d:	00 00 
    9e4f:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 9e57 <sg_raster_triangle_depth_capture+0x69a7>
    9e56:	00 
    9e57:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    9e5e:	00 00 
    9e60:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    9e67:	00 00 
    9e69:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    9e70:	00 00 
    9e72:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    9e76:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    9e7a:	f3 0f 10 a4 24 20 02 	movss  0x220(%rsp),%xmm4
    9e81:	00 00 
    9e83:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9e87:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    9e8b:	e9 a0 bd ff ff       	jmp    5c30 <sg_raster_triangle_depth_capture+0x2780>
    9e90:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    9e97:	00 00 
    9e99:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9e9e:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    9ea5:	00 00 
    9ea7:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
    9eae:	00 00 
    9eb0:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    9eb7:	00 00 
    9eb9:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    9ec0:	00 00 
    9ec2:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    9ec9:	00 00 
    9ecb:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
    9ed0:	41 0f 28 c2          	movaps %xmm10,%xmm0
    9ed4:	e9 59 ff ff ff       	jmp    9e32 <sg_raster_triangle_depth_capture+0x6982>
    9ed9:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    9ee0:	89 c8                	mov    %ecx,%eax
    9ee2:	41 01 d2             	add    %edx,%r10d
    9ee5:	89 d1                	mov    %edx,%ecx
    9ee7:	99                   	cltd
    9ee8:	f7 f9                	idiv   %ecx
    9eea:	85 d2                	test   %edx,%edx
    9eec:	0f 84 58 c2 ff ff    	je     614a <sg_raster_triangle_depth_capture+0x2c9a>
    9ef2:	e9 ea fe ff ff       	jmp    9de1 <sg_raster_triangle_depth_capture+0x6931>
    9ef7:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    9efe:	00 00 
    9f00:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9f05:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    9f0c:	00 00 
    9f0e:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    9f15:	00 
    9f16:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    9f1d:	00 00 
    9f1f:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    9f26:	00 00 
    9f28:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    9f2f:	00 00 
    9f31:	e9 57 a6 ff ff       	jmp    458d <sg_raster_triangle_depth_capture+0x10dd>
    9f36:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    9f3d:	00 00 
    9f3f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9f44:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    9f4b:	00 00 
    9f4d:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    9f54:	00 
    9f55:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    9f5c:	00 00 
    9f5e:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    9f65:	00 00 
    9f67:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    9f6e:	00 00 
    9f70:	e9 7d a3 ff ff       	jmp    42f2 <sg_raster_triangle_depth_capture+0xe42>
    9f75:	f3 0f 11 a4 24 20 02 	movss  %xmm4,0x220(%rsp)
    9f7c:	00 00 
    9f7e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9f83:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    9f8a:	00 00 
    9f8c:	f3 0f 59 b8 10 01 00 	mulss  0x110(%rax),%xmm7
    9f93:	00 
    9f94:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    9f9b:	00 00 
    9f9d:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    9fa4:	00 00 
    9fa6:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    9fad:	00 00 
    9faf:	f3 0f 59 ff          	mulss  %xmm7,%xmm7
    9fb3:	0f 57 3d 00 00 00 00 	xorps  0x0(%rip),%xmm7        # 9fba <sg_raster_triangle_depth_capture+0x6b0a>
    9fba:	0f 28 c7             	movaps %xmm7,%xmm0
    9fbd:	e9 96 a0 ff ff       	jmp    4058 <sg_raster_triangle_depth_capture+0xba8>
    9fc2:	8b 80 08 01 00 00    	mov    0x108(%rax),%eax
    9fc8:	85 c0                	test   %eax,%eax
    9fca:	0f 94 c0             	sete   %al
    9fcd:	0f b6 c0             	movzbl %al,%eax
    9fd0:	89 84 24 50 01 00 00 	mov    %eax,0x150(%rsp)
    9fd7:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    9fde:	01 00 00 00 
    9fe2:	b9 01 00 00 00       	mov    $0x1,%ecx
    9fe7:	e9 9c 9b ff ff       	jmp    3b88 <sg_raster_triangle_depth_capture+0x6d8>
    9fec:	44 8b 94 24 50 01 00 	mov    0x150(%rsp),%r10d
    9ff3:	00 
    9ff4:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    9ffb:	01 00 00 00 
    9fff:	45 85 d2             	test   %r10d,%r10d
    a002:	0f 84 64 9b ff ff    	je     3b6c <sg_raster_triangle_depth_capture+0x6bc>
    a008:	8b b8 c0 3d 00 00    	mov    0x3dc0(%rax),%edi
    a00e:	c7 84 24 50 01 00 00 	movl   $0x0,0x150(%rsp)
    a015:	00 00 00 00 
    a019:	85 ff                	test   %edi,%edi
    a01b:	0f 85 4b 9b ff ff    	jne    3b6c <sg_raster_triangle_depth_capture+0x6bc>
    a021:	e9 15 9b ff ff       	jmp    3b3b <sg_raster_triangle_depth_capture+0x68b>
    a026:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a02e <sg_raster_triangle_depth_capture+0x6b7e>
    a02d:	00 
    a02e:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
    a035:	00 00 
    a037:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
    a03e:	00 00 
    a040:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
    a047:	00 00 
    a049:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a04d:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a051:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a055:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a059:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
    a060:	00 00 
    a062:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a066:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a06a:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    a071:	00 00 
    a073:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a077:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a07b:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
    a082:	00 00 
    a084:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a088:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a08c:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a090:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a098 <sg_raster_triangle_depth_capture+0x6be8>
    a097:	00 
    a098:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a09c:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a0a4 <sg_raster_triangle_depth_capture+0x6bf4>
    a0a3:	00 
    a0a4:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a0a8:	83 f8 01             	cmp    $0x1,%eax
    a0ab:	0f 84 e6 15 00 00    	je     b697 <sg_raster_triangle_depth_capture+0x81e7>
    a0b1:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a0b5:	66 0f ef db          	pxor   %xmm3,%xmm3
    a0b9:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a0bd:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a0c5 <sg_raster_triangle_depth_capture+0x6c15>
    a0c4:	00 
    a0c5:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a0c9:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a0cd:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a0d1:	0f 28 e0             	movaps %xmm0,%xmm4
    a0d4:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a0d8:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a0dc:	0f 55 c8             	andnps %xmm0,%xmm1
    a0df:	0f 28 c5             	movaps %xmm5,%xmm0
    a0e2:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a0e6:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a0eb:	83 f8 03             	cmp    $0x3,%eax
    a0ee:	0f 85 4e 0b 00 00    	jne    ac42 <sg_raster_triangle_depth_capture+0x7792>
    a0f4:	0f 59 c9             	mulps  %xmm1,%xmm1
    a0f7:	0f 28 c1             	movaps %xmm1,%xmm0
    a0fa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a0ff:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a107 <sg_raster_triangle_depth_capture+0x6c57>
    a106:	00 
    a107:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a10b:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a112:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a119:	00 
    a11a:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a11e:	0f 28 c5             	movaps %xmm5,%xmm0
    a121:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a128:	00 
    a129:	0f 55 d1             	andnps %xmm1,%xmm2
    a12c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a130:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a134:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a138:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a13d:	0f 28 c2             	movaps %xmm2,%xmm0
    a140:	0f 59 c3             	mulps  %xmm3,%xmm0
    a143:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a147:	0f 28 c8             	movaps %xmm0,%xmm1
    a14a:	66 0f ef db          	pxor   %xmm3,%xmm3
    a14e:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a152:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a156:	0f 55 d8             	andnps %xmm0,%xmm3
    a159:	0f 28 c5             	movaps %xmm5,%xmm0
    a15c:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a160:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a165:	0f 28 eb             	movaps %xmm3,%xmm5
    a168:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
    a16f:	00 
    a170:	0f 28 cb             	movaps %xmm3,%xmm1
    a173:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    a17a:	00 00 
    a17c:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a180:	0f 15 db             	unpckhps %xmm3,%xmm3
    a183:	0f 28 d5             	movaps %xmm5,%xmm2
    a186:	e9 41 a9 ff ff       	jmp    4acc <sg_raster_triangle_depth_capture+0x161c>
    a18b:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a193 <sg_raster_triangle_depth_capture+0x6ce3>
    a192:	00 
    a193:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
    a19a:	00 00 
    a19c:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
    a1a3:	00 00 
    a1a5:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
    a1ac:	00 00 
    a1ae:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a1b2:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a1b6:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a1ba:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a1be:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
    a1c5:	00 00 
    a1c7:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a1cb:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a1cf:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    a1d6:	00 00 
    a1d8:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a1dc:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a1e0:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
    a1e7:	00 00 
    a1e9:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a1ed:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a1f1:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a1f5:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a1fd <sg_raster_triangle_depth_capture+0x6d4d>
    a1fc:	00 
    a1fd:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a201:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a209 <sg_raster_triangle_depth_capture+0x6d59>
    a208:	00 
    a209:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a20d:	83 f8 01             	cmp    $0x1,%eax
    a210:	0f 84 d9 15 00 00    	je     b7ef <sg_raster_triangle_depth_capture+0x833f>
    a216:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a21a:	66 0f ef db          	pxor   %xmm3,%xmm3
    a21e:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a222:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a22a <sg_raster_triangle_depth_capture+0x6d7a>
    a229:	00 
    a22a:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a22e:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a232:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a236:	0f 28 e0             	movaps %xmm0,%xmm4
    a239:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a23d:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a241:	0f 55 c8             	andnps %xmm0,%xmm1
    a244:	0f 28 c5             	movaps %xmm5,%xmm0
    a247:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a24b:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a250:	83 f8 03             	cmp    $0x3,%eax
    a253:	0f 85 dc 09 00 00    	jne    ac35 <sg_raster_triangle_depth_capture+0x7785>
    a259:	0f 59 c9             	mulps  %xmm1,%xmm1
    a25c:	0f 28 c1             	movaps %xmm1,%xmm0
    a25f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a264:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a26c <sg_raster_triangle_depth_capture+0x6dbc>
    a26b:	00 
    a26c:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a270:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a277:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a27e:	00 
    a27f:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a283:	0f 28 c5             	movaps %xmm5,%xmm0
    a286:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a28d:	00 
    a28e:	0f 55 d1             	andnps %xmm1,%xmm2
    a291:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a295:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a299:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a29d:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a2a2:	0f 28 c2             	movaps %xmm2,%xmm0
    a2a5:	0f 59 c3             	mulps  %xmm3,%xmm0
    a2a8:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a2ac:	0f 28 c8             	movaps %xmm0,%xmm1
    a2af:	66 0f ef db          	pxor   %xmm3,%xmm3
    a2b3:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a2b7:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a2bb:	0f 55 d8             	andnps %xmm0,%xmm3
    a2be:	0f 28 c5             	movaps %xmm5,%xmm0
    a2c1:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a2c5:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a2ca:	0f 28 eb             	movaps %xmm3,%xmm5
    a2cd:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
    a2d4:	00 
    a2d5:	0f 28 cb             	movaps %xmm3,%xmm1
    a2d8:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    a2df:	00 00 
    a2e1:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a2e5:	0f 15 db             	unpckhps %xmm3,%xmm3
    a2e8:	0f 28 d5             	movaps %xmm5,%xmm2
    a2eb:	e9 aa a5 ff ff       	jmp    489a <sg_raster_triangle_depth_capture+0x13ea>
    a2f0:	48 89 c7             	mov    %rax,%rdi
    a2f3:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    a2fa:	00 
    a2fb:	48 63 c2             	movslq %edx,%rax
    a2fe:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    a302:	f3 0f 11 24 81       	movss  %xmm4,(%rcx,%rax,4)
    a307:	45 85 ed             	test   %r13d,%r13d
    a30a:	74 1d                	je     a329 <sg_raster_triangle_depth_capture+0x6e79>
    a30c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    a311:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    a318:	00 
    a319:	8d 42 01             	lea    0x1(%rdx),%eax
    a31c:	48 98                	cltq
    a31e:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    a322:	66 0f 3a 17 24 81 01 	extractps $0x1,%xmm4,(%rcx,%rax,4)
    a329:	45 85 c9             	test   %r9d,%r9d
    a32c:	0f 85 17 cf ff ff    	jne    7249 <sg_raster_triangle_depth_capture+0x3d99>
    a332:	e9 32 cf ff ff       	jmp    7269 <sg_raster_triangle_depth_capture+0x3db9>
    a337:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a33f <sg_raster_triangle_depth_capture+0x6e8f>
    a33e:	00 
    a33f:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
    a346:	00 00 
    a348:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
    a34f:	00 00 
    a351:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
    a358:	00 00 
    a35a:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a35e:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a362:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a366:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a36a:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
    a371:	00 00 
    a373:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a377:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a37b:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    a382:	00 00 
    a384:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a388:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a38c:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
    a393:	00 00 
    a395:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a399:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a39d:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a3a1:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a3a9 <sg_raster_triangle_depth_capture+0x6ef9>
    a3a8:	00 
    a3a9:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a3ad:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a3b5 <sg_raster_triangle_depth_capture+0x6f05>
    a3b4:	00 
    a3b5:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a3b9:	83 f8 01             	cmp    $0x1,%eax
    a3bc:	0f 84 29 12 00 00    	je     b5eb <sg_raster_triangle_depth_capture+0x813b>
    a3c2:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a3c6:	66 0f ef db          	pxor   %xmm3,%xmm3
    a3ca:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a3ce:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a3d6 <sg_raster_triangle_depth_capture+0x6f26>
    a3d5:	00 
    a3d6:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a3da:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a3de:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a3e2:	0f 28 e0             	movaps %xmm0,%xmm4
    a3e5:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a3e9:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a3ed:	0f 55 c8             	andnps %xmm0,%xmm1
    a3f0:	0f 28 c5             	movaps %xmm5,%xmm0
    a3f3:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a3f7:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a3fc:	83 f8 03             	cmp    $0x3,%eax
    a3ff:	0f 85 16 08 00 00    	jne    ac1b <sg_raster_triangle_depth_capture+0x776b>
    a405:	0f 59 c9             	mulps  %xmm1,%xmm1
    a408:	0f 28 c1             	movaps %xmm1,%xmm0
    a40b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a410:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a418 <sg_raster_triangle_depth_capture+0x6f68>
    a417:	00 
    a418:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a41c:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a423:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a42a:	00 
    a42b:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a42f:	0f 28 c5             	movaps %xmm5,%xmm0
    a432:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a439:	00 
    a43a:	0f 55 d1             	andnps %xmm1,%xmm2
    a43d:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a441:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a445:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a449:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a44e:	0f 28 c2             	movaps %xmm2,%xmm0
    a451:	0f 59 c3             	mulps  %xmm3,%xmm0
    a454:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a458:	0f 28 c8             	movaps %xmm0,%xmm1
    a45b:	66 0f ef db          	pxor   %xmm3,%xmm3
    a45f:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a463:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a467:	0f 55 d8             	andnps %xmm0,%xmm3
    a46a:	0f 28 c5             	movaps %xmm5,%xmm0
    a46d:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a471:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a476:	0f 28 eb             	movaps %xmm3,%xmm5
    a479:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
    a480:	00 
    a481:	0f 28 cb             	movaps %xmm3,%xmm1
    a484:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    a48b:	00 00 
    a48d:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a491:	0f 15 db             	unpckhps %xmm3,%xmm3
    a494:	0f 28 d5             	movaps %xmm5,%xmm2
    a497:	e9 e0 b6 ff ff       	jmp    5b7c <sg_raster_triangle_depth_capture+0x26cc>
    a49c:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a4a4 <sg_raster_triangle_depth_capture+0x6ff4>
    a4a3:	00 
    a4a4:	f3 0f 10 84 24 a0 03 	movss  0x3a0(%rsp),%xmm0
    a4ab:	00 00 
    a4ad:	f3 0f 10 94 24 00 03 	movss  0x300(%rsp),%xmm2
    a4b4:	00 00 
    a4b6:	f3 0f 10 9c 24 04 03 	movss  0x304(%rsp),%xmm3
    a4bd:	00 00 
    a4bf:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a4c3:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a4c7:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a4cb:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a4cf:	f3 0f 10 94 24 a4 03 	movss  0x3a4(%rsp),%xmm2
    a4d6:	00 00 
    a4d8:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a4dc:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a4e0:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    a4e7:	00 00 
    a4e9:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a4ed:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a4f1:	f3 0f 10 94 24 a8 03 	movss  0x3a8(%rsp),%xmm2
    a4f8:	00 00 
    a4fa:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a4fe:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a502:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a506:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a50e <sg_raster_triangle_depth_capture+0x705e>
    a50d:	00 
    a50e:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a512:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a51a <sg_raster_triangle_depth_capture+0x706a>
    a519:	00 
    a51a:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a51e:	83 f8 01             	cmp    $0x1,%eax
    a521:	0f 84 1c 12 00 00    	je     b743 <sg_raster_triangle_depth_capture+0x8293>
    a527:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a52b:	66 0f ef db          	pxor   %xmm3,%xmm3
    a52f:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a533:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a53b <sg_raster_triangle_depth_capture+0x708b>
    a53a:	00 
    a53b:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a53f:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a543:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a547:	0f 28 e0             	movaps %xmm0,%xmm4
    a54a:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a54e:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a552:	0f 55 c8             	andnps %xmm0,%xmm1
    a555:	0f 28 c5             	movaps %xmm5,%xmm0
    a558:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a55c:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a561:	83 f8 03             	cmp    $0x3,%eax
    a564:	0f 85 be 06 00 00    	jne    ac28 <sg_raster_triangle_depth_capture+0x7778>
    a56a:	0f 59 c9             	mulps  %xmm1,%xmm1
    a56d:	0f 28 c1             	movaps %xmm1,%xmm0
    a570:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a575:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a57d <sg_raster_triangle_depth_capture+0x70cd>
    a57c:	00 
    a57d:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a581:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a588:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a58f:	00 
    a590:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a594:	0f 28 c5             	movaps %xmm5,%xmm0
    a597:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a59e:	00 
    a59f:	0f 55 d1             	andnps %xmm1,%xmm2
    a5a2:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a5a6:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a5aa:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a5ae:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a5b3:	0f 28 c2             	movaps %xmm2,%xmm0
    a5b6:	0f 59 c3             	mulps  %xmm3,%xmm0
    a5b9:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a5bd:	0f 28 c8             	movaps %xmm0,%xmm1
    a5c0:	66 0f ef db          	pxor   %xmm3,%xmm3
    a5c4:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a5c8:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a5cc:	0f 55 d8             	andnps %xmm0,%xmm3
    a5cf:	0f 28 c5             	movaps %xmm5,%xmm0
    a5d2:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a5d6:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a5db:	0f 28 eb             	movaps %xmm3,%xmm5
    a5de:	0f 29 9c 24 f0 02 00 	movaps %xmm3,0x2f0(%rsp)
    a5e5:	00 
    a5e6:	0f 28 cb             	movaps %xmm3,%xmm1
    a5e9:	f3 0f 11 a4 24 fc 02 	movss  %xmm4,0x2fc(%rsp)
    a5f0:	00 00 
    a5f2:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a5f6:	0f 15 db             	unpckhps %xmm3,%xmm3
    a5f9:	0f 28 d5             	movaps %xmm5,%xmm2
    a5fc:	e9 f9 a6 ff ff       	jmp    4cfa <sg_raster_triangle_depth_capture+0x184a>
    a601:	f3 0f 10 8c ac 00 03 	movss  0x300(%rsp,%rbp,4),%xmm1
    a608:	00 00 
    a60a:	48 83 ec 08          	sub    $0x8,%rsp
    a60e:	41 51                	push   %r9
    a610:	45 8b 45 1c          	mov    0x1c(%r13),%r8d
    a614:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    a61a:	e8 00 00 00 00       	call   a61f <sg_raster_triangle_depth_capture+0x716f>
    a61f:	58                   	pop    %rax
    a620:	5a                   	pop    %rdx
    a621:	e9 11 c4 ff ff       	jmp    6a37 <sg_raster_triangle_depth_capture+0x3587>
    a626:	66 45 0f ef db       	pxor   %xmm11,%xmm11
    a62b:	85 ed                	test   %ebp,%ebp
    a62d:	0f 84 2b a0 ff ff    	je     465e <sg_raster_triangle_depth_capture+0x11ae>
    a633:	66 0f ef e4          	pxor   %xmm4,%xmm4
    a637:	66 0f ef db          	pxor   %xmm3,%xmm3
    a63b:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    a640:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    a645:	e9 8c d8 ff ff       	jmp    7ed6 <sg_raster_triangle_depth_capture+0x4a26>
    a64a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    a650:	bf 00 00 00 80       	mov    $0x80000000,%edi
    a655:	e9 b1 a7 ff ff       	jmp    4e0b <sg_raster_triangle_depth_capture+0x195b>
    a65a:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
    a660:	e9 bd a7 ff ff       	jmp    4e22 <sg_raster_triangle_depth_capture+0x1972>
    a665:	41 b9 00 00 00 80    	mov    $0x80000000,%r9d
    a66b:	e9 7c a7 ff ff       	jmp    4dec <sg_raster_triangle_depth_capture+0x193c>
    a670:	be 00 00 00 80       	mov    $0x80000000,%esi
    a675:	e9 bd a7 ff ff       	jmp    4e37 <sg_raster_triangle_depth_capture+0x1987>
    a67a:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
    a680:	e9 f7 a7 ff ff       	jmp    4e7c <sg_raster_triangle_depth_capture+0x19cc>
    a685:	be 00 00 00 80       	mov    $0x80000000,%esi
    a68a:	e9 0b a8 ff ff       	jmp    4e9a <sg_raster_triangle_depth_capture+0x19ea>
    a68f:	bf 00 00 00 80       	mov    $0x80000000,%edi
    a694:	e9 16 a8 ff ff       	jmp    4eaf <sg_raster_triangle_depth_capture+0x19ff>
    a699:	b8 00 00 00 80       	mov    $0x80000000,%eax
    a69e:	e9 21 a8 ff ff       	jmp    4ec4 <sg_raster_triangle_depth_capture+0x1a14>
    a6a3:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
    a6a9:	e9 5c a8 ff ff       	jmp    4f0a <sg_raster_triangle_depth_capture+0x1a5a>
    a6ae:	be 00 00 00 80       	mov    $0x80000000,%esi
    a6b3:	e9 72 a8 ff ff       	jmp    4f2a <sg_raster_triangle_depth_capture+0x1a7a>
    a6b8:	bf 00 00 00 80       	mov    $0x80000000,%edi
    a6bd:	e9 7d a8 ff ff       	jmp    4f3f <sg_raster_triangle_depth_capture+0x1a8f>
    a6c2:	44 8b 5f 44          	mov    0x44(%rdi),%r11d
    a6c6:	45 85 db             	test   %r11d,%r11d
    a6c9:	0f 85 cc 11 00 00    	jne    b89b <sg_raster_triangle_depth_capture+0x83eb>
    a6cf:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    a6d6:	00 
    a6d7:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    a6de:	00 
    a6df:	45 0f 28 f7          	movaps %xmm15,%xmm14
    a6e3:	44 0f 28 bc 24 a0 01 	movaps 0x1a0(%rsp),%xmm15
    a6ea:	00 00 
    a6ec:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    a6f3:	00 
    a6f4:	f3 0f 10 48 50       	movss  0x50(%rax),%xmm1
    a6f9:	f3 0f 10 57 50       	movss  0x50(%rdi),%xmm2
    a6fe:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    a702:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a706:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    a70a:	41 0f 59 d7          	mulps  %xmm15,%xmm2
    a70e:	0f 58 ca             	addps  %xmm2,%xmm1
    a711:	f3 0f 10 52 50       	movss  0x50(%rdx),%xmm2
    a716:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a71a:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    a71e:	0f 58 ca             	addps  %xmm2,%xmm1
    a721:	f3 0f 10 57 54       	movss  0x54(%rdi),%xmm2
    a726:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a72a:	41 0f 59 d7          	mulps  %xmm15,%xmm2
    a72e:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    a732:	44 0f 28 c9          	movaps %xmm1,%xmm9
    a736:	f3 0f 10 48 54       	movss  0x54(%rax),%xmm1
    a73b:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    a742:	00 
    a743:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    a747:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    a74b:	8b 00                	mov    (%rax),%eax
    a74d:	0f 58 ca             	addps  %xmm2,%xmm1
    a750:	f3 0f 10 52 54       	movss  0x54(%rdx),%xmm2
    a755:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a759:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    a75d:	0f 58 ca             	addps  %xmm2,%xmm1
    a760:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    a764:	83 f8 01             	cmp    $0x1,%eax
    a767:	0f 84 cf 0b 00 00    	je     b33c <sg_raster_triangle_depth_capture+0x7e8c>
    a76d:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
    a774:	00 
    a775:	f3 0f 10 47 58       	movss  0x58(%rdi),%xmm0
    a77a:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    a781:	00 
    a782:	f3 0f 10 57 58       	movss  0x58(%rdi),%xmm2
    a787:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a78b:	41 0f 59 c5          	mulps  %xmm13,%xmm0
    a78f:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    a796:	00 
    a797:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a79b:	0f 59 94 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm2
    a7a2:	00 
    a7a3:	0f 58 c2             	addps  %xmm2,%xmm0
    a7a6:	f3 0f 10 57 58       	movss  0x58(%rdi),%xmm2
    a7ab:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a7af:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    a7b3:	0f 58 c2             	addps  %xmm2,%xmm0
    a7b6:	0f 28 94 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm2
    a7bd:	00 
    a7be:	0f 59 d0             	mulps  %xmm0,%xmm2
    a7c1:	83 f8 03             	cmp    $0x3,%eax
    a7c4:	0f 84 ee 18 00 00    	je     c0b8 <sg_raster_triangle_depth_capture+0x8c08>
    a7ca:	44 89 8c 24 10 02 00 	mov    %r9d,0x210(%rsp)
    a7d1:	00 
    a7d2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a7d6:	31 ed                	xor    %ebp,%ebp
    a7d8:	4c 8b bc 24 e0 04 00 	mov    0x4e0(%rsp),%r15
    a7df:	00 
    a7e0:	44 8b ac 24 b0 01 00 	mov    0x1b0(%rsp),%r13d
    a7e7:	00 
    a7e8:	0f 29 84 24 a0 03 00 	movaps %xmm0,0x3a0(%rsp)
    a7ef:	00 
    a7f0:	48 8d 9c 24 a0 03 00 	lea    0x3a0(%rsp),%rbx
    a7f7:	00 
    a7f8:	0f 29 84 24 b0 03 00 	movaps %xmm0,0x3b0(%rsp)
    a7ff:	00 
    a800:	0f 29 84 24 c0 03 00 	movaps %xmm0,0x3c0(%rsp)
    a807:	00 
    a808:	0f 29 84 24 d0 03 00 	movaps %xmm0,0x3d0(%rsp)
    a80f:	00 
    a810:	44 0f 29 8c 24 00 03 	movaps %xmm9,0x300(%rsp)
    a817:	00 00 
    a819:	0f 29 8c 24 10 03 00 	movaps %xmm1,0x310(%rsp)
    a820:	00 
    a821:	0f 29 94 24 60 03 00 	movaps %xmm2,0x360(%rsp)
    a828:	00 
    a829:	0f 29 9c 24 a0 01 00 	movaps %xmm3,0x1a0(%rsp)
    a830:	00 
    a831:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    a838:	01 00 00 
    a83b:	f3 44 0f 11 94 24 d0 	movss  %xmm10,0x1d0(%rsp)
    a842:	01 00 00 
    a845:	44 0f 29 a4 24 b0 01 	movaps %xmm12,0x1b0(%rsp)
    a84c:	00 00 
    a84e:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
    a855:	00 
    a856:	0f 29 bc 24 f0 01 00 	movaps %xmm7,0x1f0(%rsp)
    a85d:	00 
    a85e:	f3 0f 11 b4 24 00 02 	movss  %xmm6,0x200(%rsp)
    a865:	00 00 
    a867:	41 0f a3 ed          	bt     %ebp,%r13d
    a86b:	73 45                	jae    a8b2 <sg_raster_triangle_depth_capture+0x7402>
    a86d:	49 89 e9             	mov    %rbp,%r9
    a870:	41 8b 17             	mov    (%r15),%edx
    a873:	41 8b 4f 18          	mov    0x18(%r15),%ecx
    a877:	49 c1 e1 04          	shl    $0x4,%r9
    a87b:	45 8b 57 14          	mov    0x14(%r15),%r10d
    a87f:	41 8b 77 10          	mov    0x10(%r15),%esi
    a883:	f3 0f 10 84 ac 00 03 	movss  0x300(%rsp,%rbp,4),%xmm0
    a88a:	00 00 
    a88c:	49 8b 7f 08          	mov    0x8(%r15),%rdi
    a890:	49 01 d9             	add    %rbx,%r9
    a893:	83 fa 02             	cmp    $0x2,%edx
    a896:	0f 84 3a 10 00 00    	je     b8d6 <sg_raster_triangle_depth_capture+0x8426>
    a89c:	85 d2                	test   %edx,%edx
    a89e:	0f 85 7a 0c 00 00    	jne    b51e <sg_raster_triangle_depth_capture+0x806e>
    a8a4:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    a8aa:	44 89 d2             	mov    %r10d,%edx
    a8ad:	e8 00 00 00 00       	call   a8b2 <sg_raster_triangle_depth_capture+0x7402>
    a8b2:	48 83 c5 01          	add    $0x1,%rbp
    a8b6:	48 83 fd 04          	cmp    $0x4,%rbp
    a8ba:	75 ab                	jne    a867 <sg_raster_triangle_depth_capture+0x73b7>
    a8bc:	0f 28 94 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm2
    a8c3:	00 
    a8c4:	0f 28 8c 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm1
    a8cb:	00 
    a8cc:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    a8d3:	00 
    a8d4:	0f 28 9c 24 a0 01 00 	movaps 0x1a0(%rsp),%xmm3
    a8db:	00 
    a8dc:	44 0f 28 84 24 a0 03 	movaps 0x3a0(%rsp),%xmm8
    a8e3:	00 00 
    a8e5:	0f 28 c2             	movaps %xmm2,%xmm0
    a8e8:	0f 15 d1             	unpckhps %xmm1,%xmm2
    a8eb:	44 0f 28 8c 24 b0 03 	movaps 0x3b0(%rsp),%xmm9
    a8f2:	00 00 
    a8f4:	0f 14 c1             	unpcklps %xmm1,%xmm0
    a8f7:	8b b0 64 01 00 00    	mov    0x164(%rax),%esi
    a8fd:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    a904:	01 00 00 
    a907:	41 0f 28 e8          	movaps %xmm8,%xmm5
    a90b:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
    a90f:	f3 44 0f 10 94 24 d0 	movss  0x1d0(%rsp),%xmm10
    a916:	01 00 00 
    a919:	44 0f 28 a4 24 b0 01 	movaps 0x1b0(%rsp),%xmm12
    a920:	00 00 
    a922:	41 0f 14 e9          	unpcklps %xmm9,%xmm5
    a926:	0f 28 a4 24 e0 01 00 	movaps 0x1e0(%rsp),%xmm4
    a92d:	00 
    a92e:	0f 28 bc 24 f0 01 00 	movaps 0x1f0(%rsp),%xmm7
    a935:	00 
    a936:	0f 28 cd             	movaps %xmm5,%xmm1
    a939:	44 8b 8c 24 10 02 00 	mov    0x210(%rsp),%r9d
    a940:	00 
    a941:	f3 0f 10 b4 24 00 02 	movss  0x200(%rsp),%xmm6
    a948:	00 00 
    a94a:	0f 16 c8             	movlhps %xmm0,%xmm1
    a94d:	0f 12 c5             	movhlps %xmm5,%xmm0
    a950:	41 0f 28 e8          	movaps %xmm8,%xmm5
    a954:	0f 16 ea             	movlhps %xmm2,%xmm5
    a957:	41 0f 12 d0          	movhlps %xmm8,%xmm2
    a95b:	83 fe 02             	cmp    $0x2,%esi
    a95e:	0f 84 60 0f 00 00    	je     b8c4 <sg_raster_triangle_depth_capture+0x8414>
    a964:	0f 59 d9             	mulps  %xmm1,%xmm3
    a967:	44 0f 59 e0          	mulps  %xmm0,%xmm12
    a96b:	0f 59 e5             	mulps  %xmm5,%xmm4
    a96e:	0f 59 fa             	mulps  %xmm2,%xmm7
    a971:	e9 c2 c3 ff ff       	jmp    6d38 <sg_raster_triangle_depth_capture+0x3888>
    a976:	ba 00 00 00 80       	mov    $0x80000000,%edx
    a97b:	e9 d4 a5 ff ff       	jmp    4f54 <sg_raster_triangle_depth_capture+0x1aa4>
    a980:	31 c9                	xor    %ecx,%ecx
    a982:	39 74 24 30          	cmp    %esi,0x30(%rsp)
    a986:	be ff ff ff ff       	mov    $0xffffffff,%esi
    a98b:	0f 9c c1             	setl   %cl
    a98e:	66 0f 6e ce          	movd   %esi,%xmm1
    a992:	f7 d9                	neg    %ecx
    a994:	e9 24 ac ff ff       	jmp    55bd <sg_raster_triangle_depth_capture+0x210d>
    a999:	be ff ff ff ff       	mov    $0xffffffff,%esi
    a99e:	31 d2                	xor    %edx,%edx
    a9a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a9a4:	66 0f 6e ce          	movd   %esi,%xmm1
    a9a8:	e9 75 cb ff ff       	jmp    7522 <sg_raster_triangle_depth_capture+0x4072>
    a9ad:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    a9b4:	89 c8                	mov    %ecx,%eax
    a9b6:	41 01 d2             	add    %edx,%r10d
    a9b9:	89 d1                	mov    %edx,%ecx
    a9bb:	99                   	cltd
    a9bc:	f7 f9                	idiv   %ecx
    a9be:	85 d2                	test   %edx,%edx
    a9c0:	0f 84 d3 cb ff ff    	je     7599 <sg_raster_triangle_depth_capture+0x40e9>
    a9c6:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
    a9cd:	01 c2                	add    %eax,%edx
    a9cf:	45 85 ed             	test   %r13d,%r13d
    a9d2:	0f 85 c1 cb ff ff    	jne    7599 <sg_raster_triangle_depth_capture+0x40e9>
    a9d8:	e9 92 cd ff ff       	jmp    776f <sg_raster_triangle_depth_capture+0x42bf>
    a9dd:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    a9e4:	89 c8                	mov    %ecx,%eax
    a9e6:	41 01 d2             	add    %edx,%r10d
    a9e9:	89 d1                	mov    %edx,%ecx
    a9eb:	99                   	cltd
    a9ec:	f7 f9                	idiv   %ecx
    a9ee:	85 d2                	test   %edx,%edx
    a9f0:	0f 84 79 cd ff ff    	je     776f <sg_raster_triangle_depth_capture+0x42bf>
    a9f6:	eb ce                	jmp    a9c6 <sg_raster_triangle_depth_capture+0x7516>
    a9f8:	41 0f 29 6d 00       	movaps %xmm5,0x0(%r13)
    a9fd:	41 0f 29 6d 10       	movaps %xmm5,0x10(%r13)
    aa02:	41 0f 29 6d 20       	movaps %xmm5,0x20(%r13)
    aa07:	41 0f 29 6d 30       	movaps %xmm5,0x30(%r13)
    aa0c:	e9 cc c0 ff ff       	jmp    6add <sg_raster_triangle_depth_capture+0x362d>
    aa11:	f3 0f 10 43 48       	movss  0x48(%rbx),%xmm0
    aa16:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    aa1a:	41 0f 29 45 00       	movaps %xmm0,0x0(%r13)
    aa1f:	f3 0f 10 43 4c       	movss  0x4c(%rbx),%xmm0
    aa24:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    aa28:	41 0f 29 45 10       	movaps %xmm0,0x10(%r13)
    aa2d:	f3 0f 10 43 50       	movss  0x50(%rbx),%xmm0
    aa32:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    aa36:	41 0f 29 45 20       	movaps %xmm0,0x20(%r13)
    aa3b:	f3 0f 10 43 54       	movss  0x54(%rbx),%xmm0
    aa40:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    aa44:	41 0f 29 45 30       	movaps %xmm0,0x30(%r13)
    aa49:	e9 8f c0 ff ff       	jmp    6add <sg_raster_triangle_depth_capture+0x362d>
    aa4e:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
    aa54:	31 c9                	xor    %ecx,%ecx
    aa56:	89 44 24 50          	mov    %eax,0x50(%rsp)
    aa5a:	83 e0 fd             	and    $0xfffffffd,%eax
    aa5d:	3d 01 02 00 00       	cmp    $0x201,%eax
    aa62:	0f 95 c1             	setne  %cl
    aa65:	e9 1e 91 ff ff       	jmp    3b88 <sg_raster_triangle_depth_capture+0x6d8>
    aa6a:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
    aa71:	00 00 
    aa73:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
    aa7a:	00 00 
    aa7c:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
    aa83:	00 00 
    aa85:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
    aa8c:	00 00 
    aa8e:	e9 07 9e ff ff       	jmp    489a <sg_raster_triangle_depth_capture+0x13ea>
    aa93:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
    aa9a:	00 00 
    aa9c:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
    aaa3:	00 00 
    aaa5:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
    aaac:	00 00 
    aaae:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
    aab5:	00 00 
    aab7:	e9 c0 b0 ff ff       	jmp    5b7c <sg_raster_triangle_depth_capture+0x26cc>
    aabc:	f3 0f 10 94 ac 10 03 	movss  0x310(%rsp,%rbp,4),%xmm2
    aac3:	00 00 
    aac5:	f3 0f 10 8c ac 00 03 	movss  0x300(%rsp,%rbp,4),%xmm1
    aacc:	00 00 
    aace:	41 51                	push   %r9
    aad0:	6a 01                	push   $0x1
    aad2:	45 8b 4d 20          	mov    0x20(%r13),%r9d
    aad6:	45 8b 45 1c          	mov    0x1c(%r13),%r8d
    aada:	e8 00 00 00 00       	call   aadf <sg_raster_triangle_depth_capture+0x762f>
    aadf:	59                   	pop    %rcx
    aae0:	5e                   	pop    %rsi
    aae1:	e9 51 bf ff ff       	jmp    6a37 <sg_raster_triangle_depth_capture+0x3587>
    aae6:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
    aaeb:	45 85 c0             	test   %r8d,%r8d
    aaee:	0f 84 5f 8e ff ff    	je     3953 <sg_raster_triangle_depth_capture+0x4a3>
    aaf4:	e9 3f 8e ff ff       	jmp    3938 <sg_raster_triangle_depth_capture+0x488>
    aaf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    ab00:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
    ab07:	00 00 
    ab09:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
    ab10:	00 00 
    ab12:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
    ab19:	00 00 
    ab1b:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
    ab22:	00 00 
    ab24:	e9 d1 a1 ff ff       	jmp    4cfa <sg_raster_triangle_depth_capture+0x184a>
    ab29:	f3 0f 10 8c 24 f0 02 	movss  0x2f0(%rsp),%xmm1
    ab30:	00 00 
    ab32:	f3 0f 10 a4 24 fc 02 	movss  0x2fc(%rsp),%xmm4
    ab39:	00 00 
    ab3b:	f3 0f 10 94 24 f4 02 	movss  0x2f4(%rsp),%xmm2
    ab42:	00 00 
    ab44:	f3 0f 10 9c 24 f8 02 	movss  0x2f8(%rsp),%xmm3
    ab4b:	00 00 
    ab4d:	e9 7a 9f ff ff       	jmp    4acc <sg_raster_triangle_depth_capture+0x161c>
    ab52:	3d 04 03 00 00       	cmp    $0x304,%eax
    ab57:	0f 84 b2 07 00 00    	je     b30f <sg_raster_triangle_depth_capture+0x7e5f>
    ab5d:	44 0f 28 e5          	movaps %xmm5,%xmm12
    ab61:	44 0f 5c e0          	subps  %xmm0,%xmm12
    ab65:	41 0f 59 f4          	mulps  %xmm12,%xmm6
    ab69:	41 0f 59 fc          	mulps  %xmm12,%xmm7
    ab6d:	45 0f 59 c4          	mulps  %xmm12,%xmm8
    ab71:	45 0f 59 e2          	mulps  %xmm10,%xmm12
    ab75:	e9 a5 ab ff ff       	jmp    571f <sg_raster_triangle_depth_capture+0x226f>
    ab7a:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    ab81:	00 
    ab82:	0f c2 e0 02          	cmpleps %xmm0,%xmm4
    ab86:	0f 28 cc             	movaps %xmm4,%xmm1
    ab89:	e9 6f c6 ff ff       	jmp    71fd <sg_raster_triangle_depth_capture+0x3d4d>
    ab8e:	0f 28 e0             	movaps %xmm0,%xmm4
    ab91:	0f c2 a4 24 20 01 00 	cmpeqps 0x120(%rsp),%xmm4
    ab98:	00 00 
    ab9a:	0f 28 cc             	movaps %xmm4,%xmm1
    ab9d:	e9 5b c6 ff ff       	jmp    71fd <sg_raster_triangle_depth_capture+0x3d4d>
    aba2:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    aba9:	00 
    abaa:	0f c2 e0 01          	cmpltps %xmm0,%xmm4
    abae:	0f 28 cc             	movaps %xmm4,%xmm1
    abb1:	e9 47 c6 ff ff       	jmp    71fd <sg_raster_triangle_depth_capture+0x3d4d>
    abb6:	0f c2 84 24 20 01 00 	cmpleps 0x120(%rsp),%xmm0
    abbd:	00 02 
    abbf:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    abc3:	e9 35 c6 ff ff       	jmp    71fd <sg_raster_triangle_depth_capture+0x3d4d>
    abc8:	0f 28 e0             	movaps %xmm0,%xmm4
    abcb:	0f c2 a4 24 20 01 00 	cmpneqps 0x120(%rsp),%xmm4
    abd2:	00 04 
    abd4:	0f 28 cc             	movaps %xmm4,%xmm1
    abd7:	e9 21 c6 ff ff       	jmp    71fd <sg_raster_triangle_depth_capture+0x3d4d>
    abdc:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    abe0:	85 d2                	test   %edx,%edx
    abe2:	47 8d 2c 1a          	lea    (%r10,%r11,1),%r13d
    abe6:	0f 45 d0             	cmovne %eax,%edx
    abe9:	41 89 d2             	mov    %edx,%r10d
    abec:	e9 82 f1 ff ff       	jmp    9d73 <sg_raster_triangle_depth_capture+0x68c3>
    abf1:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    abf8:	00 
    abf9:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    abff:	89 44 24 50          	mov    %eax,0x50(%rsp)
    ac03:	83 e8 01             	sub    $0x1,%eax
    ac06:	83 f8 01             	cmp    $0x1,%eax
    ac09:	0f 97 c0             	seta   %al
    ac0c:	0f b6 c0             	movzbl %al,%eax
    ac0f:	89 84 24 f4 00 00 00 	mov    %eax,0xf4(%rsp)
    ac16:	e9 15 8f ff ff       	jmp    3b30 <sg_raster_triangle_depth_capture+0x680>
    ac1b:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
    ac22:	00 
    ac23:	e9 e0 f7 ff ff       	jmp    a408 <sg_raster_triangle_depth_capture+0x6f58>
    ac28:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
    ac2f:	00 
    ac30:	e9 38 f9 ff ff       	jmp    a56d <sg_raster_triangle_depth_capture+0x70bd>
    ac35:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
    ac3c:	00 
    ac3d:	e9 1a f6 ff ff       	jmp    a25c <sg_raster_triangle_depth_capture+0x6dac>
    ac42:	0f 59 8c 24 c0 03 00 	mulps  0x3c0(%rsp),%xmm1
    ac49:	00 
    ac4a:	e9 a8 f4 ff ff       	jmp    a0f7 <sg_raster_triangle_depth_capture+0x6c47>
    ac4f:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    ac53:	85 d2                	test   %edx,%edx
    ac55:	47 8d 2c 1a          	lea    (%r10,%r11,1),%r13d
    ac59:	0f 45 d0             	cmovne %eax,%edx
    ac5c:	41 89 d2             	mov    %edx,%r10d
    ac5f:	e9 55 e9 ff ff       	jmp    95b9 <sg_raster_triangle_depth_capture+0x6109>
    ac64:	42 8d 04 1a          	lea    (%rdx,%r11,1),%eax
    ac68:	85 d2                	test   %edx,%edx
    ac6a:	47 8d 2c 1a          	lea    (%r10,%r11,1),%r13d
    ac6e:	0f 45 d0             	cmovne %eax,%edx
    ac71:	41 89 d2             	mov    %edx,%r10d
    ac74:	e9 de eb ff ff       	jmp    9857 <sg_raster_triangle_depth_capture+0x63a7>
    ac79:	44 8d 1c 2a          	lea    (%rdx,%rbp,1),%r11d
    ac7d:	85 d2                	test   %edx,%edx
    ac7f:	45 8d 2c 2a          	lea    (%r10,%rbp,1),%r13d
    ac83:	44 0f 44 da          	cmove  %edx,%r11d
    ac87:	e9 49 ee ff ff       	jmp    9ad5 <sg_raster_triangle_depth_capture+0x6625>
    ac8c:	66 0f ef db          	pxor   %xmm3,%xmm3
    ac90:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # ac98 <sg_raster_triangle_depth_capture+0x77e8>
    ac97:	00 
    ac98:	0f 28 d3             	movaps %xmm3,%xmm2
    ac9b:	0f 28 cb             	movaps %xmm3,%xmm1
    ac9e:	e9 8d af ff ff       	jmp    5c30 <sg_raster_triangle_depth_capture+0x2780>
    aca3:	66 0f ef db          	pxor   %xmm3,%xmm3
    aca7:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # acaf <sg_raster_triangle_depth_capture+0x77ff>
    acae:	00 
    acaf:	0f 28 d3             	movaps %xmm3,%xmm2
    acb2:	0f 28 cb             	movaps %xmm3,%xmm1
    acb5:	e9 91 96 ff ff       	jmp    434b <sg_raster_triangle_depth_capture+0xe9b>
    acba:	66 0f ef db          	pxor   %xmm3,%xmm3
    acbe:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # acc6 <sg_raster_triangle_depth_capture+0x7816>
    acc5:	00 
    acc6:	0f 28 d3             	movaps %xmm3,%xmm2
    acc9:	0f 28 cb             	movaps %xmm3,%xmm1
    accc:	e9 15 99 ff ff       	jmp    45e6 <sg_raster_triangle_depth_capture+0x1136>
    acd1:	66 0f ef db          	pxor   %xmm3,%xmm3
    acd5:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # acdd <sg_raster_triangle_depth_capture+0x782d>
    acdc:	00 
    acdd:	0f 28 d3             	movaps %xmm3,%xmm2
    ace0:	0f 28 cb             	movaps %xmm3,%xmm1
    ace3:	e9 c2 93 ff ff       	jmp    40aa <sg_raster_triangle_depth_capture+0xbfa>
    ace8:	31 c0                	xor    %eax,%eax
    acea:	0f 2f f0             	comiss %xmm0,%xmm6
    aced:	0f 93 c0             	setae  %al
    acf0:	85 c0                	test   %eax,%eax
    acf2:	0f 84 52 99 ff ff    	je     464a <sg_raster_triangle_depth_capture+0x119a>
    acf8:	e9 73 9c ff ff       	jmp    4970 <sg_raster_triangle_depth_capture+0x14c0>
    acfd:	31 c0                	xor    %eax,%eax
    acff:	0f 2f c6             	comiss %xmm6,%xmm0
    ad02:	0f 93 c0             	setae  %al
    ad05:	e9 2c 9a ff ff       	jmp    4736 <sg_raster_triangle_depth_capture+0x1286>
    ad0a:	31 c0                	xor    %eax,%eax
    ad0c:	0f 2f f0             	comiss %xmm0,%xmm6
    ad0f:	0f 94 c0             	sete   %al
    ad12:	e9 1f 9a ff ff       	jmp    4736 <sg_raster_triangle_depth_capture+0x1286>
    ad17:	31 c0                	xor    %eax,%eax
    ad19:	0f 2f f0             	comiss %xmm0,%xmm6
    ad1c:	0f 93 c0             	setae  %al
    ad1f:	e9 6a 9e ff ff       	jmp    4b8e <sg_raster_triangle_depth_capture+0x16de>
    ad24:	31 c0                	xor    %eax,%eax
    ad26:	0f 2f f0             	comiss %xmm0,%xmm6
    ad29:	0f 95 c0             	setne  %al
    ad2c:	e9 5d 9e ff ff       	jmp    4b8e <sg_raster_triangle_depth_capture+0x16de>
    ad31:	31 c0                	xor    %eax,%eax
    ad33:	0f 2f f0             	comiss %xmm0,%xmm6
    ad36:	0f 97 c0             	seta   %al
    ad39:	e9 50 9e ff ff       	jmp    4b8e <sg_raster_triangle_depth_capture+0x16de>
    ad3e:	31 c0                	xor    %eax,%eax
    ad40:	0f 2f c6             	comiss %xmm6,%xmm0
    ad43:	0f 93 c0             	setae  %al
    ad46:	e9 43 9e ff ff       	jmp    4b8e <sg_raster_triangle_depth_capture+0x16de>
    ad4b:	31 c0                	xor    %eax,%eax
    ad4d:	0f 2f f0             	comiss %xmm0,%xmm6
    ad50:	0f 94 c0             	sete   %al
    ad53:	e9 36 9e ff ff       	jmp    4b8e <sg_raster_triangle_depth_capture+0x16de>
    ad58:	31 c0                	xor    %eax,%eax
    ad5a:	0f 2f f0             	comiss %xmm0,%xmm6
    ad5d:	0f 93 c0             	setae  %al
    ad60:	e9 d1 99 ff ff       	jmp    4736 <sg_raster_triangle_depth_capture+0x1286>
    ad65:	31 c0                	xor    %eax,%eax
    ad67:	0f 2f f0             	comiss %xmm0,%xmm6
    ad6a:	0f 95 c0             	setne  %al
    ad6d:	e9 c4 99 ff ff       	jmp    4736 <sg_raster_triangle_depth_capture+0x1286>
    ad72:	31 c0                	xor    %eax,%eax
    ad74:	0f 2f f0             	comiss %xmm0,%xmm6
    ad77:	0f 97 c0             	seta   %al
    ad7a:	e9 b7 99 ff ff       	jmp    4736 <sg_raster_triangle_depth_capture+0x1286>
    ad7f:	31 c0                	xor    %eax,%eax
    ad81:	0f 2f f0             	comiss %xmm0,%xmm6
    ad84:	0f 93 c0             	setae  %al
    ad87:	e9 89 ac ff ff       	jmp    5a15 <sg_raster_triangle_depth_capture+0x2565>
    ad8c:	31 c0                	xor    %eax,%eax
    ad8e:	0f 2f f0             	comiss %xmm0,%xmm6
    ad91:	0f 95 c0             	setne  %al
    ad94:	e9 7c ac ff ff       	jmp    5a15 <sg_raster_triangle_depth_capture+0x2565>
    ad99:	31 c0                	xor    %eax,%eax
    ad9b:	0f 2f f0             	comiss %xmm0,%xmm6
    ad9e:	0f 97 c0             	seta   %al
    ada1:	e9 6f ac ff ff       	jmp    5a15 <sg_raster_triangle_depth_capture+0x2565>
    ada6:	31 c0                	xor    %eax,%eax
    ada8:	0f 2f f0             	comiss %xmm0,%xmm6
    adab:	0f 95 c0             	setne  %al
    adae:	e9 3d ff ff ff       	jmp    acf0 <sg_raster_triangle_depth_capture+0x7840>
    adb3:	31 c0                	xor    %eax,%eax
    adb5:	0f 2f f0             	comiss %xmm0,%xmm6
    adb8:	0f 97 c0             	seta   %al
    adbb:	e9 30 ff ff ff       	jmp    acf0 <sg_raster_triangle_depth_capture+0x7840>
    adc0:	31 c0                	xor    %eax,%eax
    adc2:	0f 2f c6             	comiss %xmm6,%xmm0
    adc5:	0f 93 c0             	setae  %al
    adc8:	e9 23 ff ff ff       	jmp    acf0 <sg_raster_triangle_depth_capture+0x7840>
    adcd:	31 c0                	xor    %eax,%eax
    adcf:	0f 2f f0             	comiss %xmm0,%xmm6
    add2:	0f 94 c0             	sete   %al
    add5:	e9 83 9b ff ff       	jmp    495d <sg_raster_triangle_depth_capture+0x14ad>
    adda:	31 c0                	xor    %eax,%eax
    addc:	0f 2f c6             	comiss %xmm6,%xmm0
    addf:	0f 93 c0             	setae  %al
    ade2:	e9 2e ac ff ff       	jmp    5a15 <sg_raster_triangle_depth_capture+0x2565>
    ade7:	31 c0                	xor    %eax,%eax
    ade9:	0f 2f f0             	comiss %xmm0,%xmm6
    adec:	0f 94 c0             	sete   %al
    adef:	e9 21 ac ff ff       	jmp    5a15 <sg_raster_triangle_depth_capture+0x2565>
    adf4:	45 85 d2             	test   %r10d,%r10d
    adf7:	0f 84 c6 13 00 00    	je     c1c3 <sg_raster_triangle_depth_capture+0x8d13>
    adfd:	44 21 d0             	and    %r10d,%eax
    ae00:	41 89 c5             	mov    %eax,%r13d
    ae03:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    ae0a:	41 21 c2             	and    %eax,%r10d
    ae0d:	e9 a7 e7 ff ff       	jmp    95b9 <sg_raster_triangle_depth_capture+0x6109>
    ae12:	45 85 d2             	test   %r10d,%r10d
    ae15:	0f 84 16 14 00 00    	je     c231 <sg_raster_triangle_depth_capture+0x8d81>
    ae1b:	44 21 d0             	and    %r10d,%eax
    ae1e:	41 89 c5             	mov    %eax,%r13d
    ae21:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    ae28:	41 21 c2             	and    %eax,%r10d
    ae2b:	e9 43 ef ff ff       	jmp    9d73 <sg_raster_triangle_depth_capture+0x68c3>
    ae30:	45 85 db             	test   %r11d,%r11d
    ae33:	0f 84 08 14 00 00    	je     c241 <sg_raster_triangle_depth_capture+0x8d91>
    ae39:	44 21 d8             	and    %r11d,%eax
    ae3c:	41 89 c5             	mov    %eax,%r13d
    ae3f:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    ae46:	41 21 c3             	and    %eax,%r11d
    ae49:	e9 87 ec ff ff       	jmp    9ad5 <sg_raster_triangle_depth_capture+0x6625>
    ae4e:	45 85 d2             	test   %r10d,%r10d
    ae51:	0f 84 64 13 00 00    	je     c1bb <sg_raster_triangle_depth_capture+0x8d0b>
    ae57:	44 21 d0             	and    %r10d,%eax
    ae5a:	41 89 c5             	mov    %eax,%r13d
    ae5d:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    ae64:	41 21 c2             	and    %eax,%r10d
    ae67:	e9 eb e9 ff ff       	jmp    9857 <sg_raster_triangle_depth_capture+0x63a7>
    ae6c:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    ae73:	01 00 00 00 
    ae77:	e9 e4 af ff ff       	jmp    5e60 <sg_raster_triangle_depth_capture+0x29b0>
    ae7c:	0f 2f f0             	comiss %xmm0,%xmm6
    ae7f:	0f 94 c1             	sete   %cl
    ae82:	41 0f 94 c0          	sete   %r8b
    ae86:	0f b6 c9             	movzbl %cl,%ecx
    ae89:	44 8b 94 24 20 01 00 	mov    0x120(%rsp),%r10d
    ae90:	00 
    ae91:	45 85 d2             	test   %r10d,%r10d
    ae94:	0f 85 05 d0 ff ff    	jne    7e9f <sg_raster_triangle_depth_capture+0x49ef>
    ae9a:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    aea1:	00 
    aea2:	0f 83 f7 cf ff ff    	jae    7e9f <sg_raster_triangle_depth_capture+0x49ef>
    aea8:	45 84 c0             	test   %r8b,%r8b
    aeab:	0f 85 ee cf ff ff    	jne    7e9f <sg_raster_triangle_depth_capture+0x49ef>
    aeb1:	83 e5 fd             	and    $0xfffffffd,%ebp
    aeb4:	e9 eb c3 ff ff       	jmp    72a4 <sg_raster_triangle_depth_capture+0x3df4>
    aeb9:	8b 9c 24 20 01 00 00 	mov    0x120(%rsp),%ebx
    aec0:	85 db                	test   %ebx,%ebx
    aec2:	75 ed                	jne    aeb1 <sg_raster_triangle_depth_capture+0x7a01>
    aec4:	31 c9                	xor    %ecx,%ecx
    aec6:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    aecd:	00 
    aece:	0f 93 c1             	setae  %cl
    aed1:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    aed8:	eb d7                	jmp    aeb1 <sg_raster_triangle_depth_capture+0x7a01>
    aeda:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    aee1:	00 00 
    aee3:	0f 2f f8             	comiss %xmm0,%xmm7
    aee6:	0f 95 c1             	setne  %cl
    aee9:	41 0f 95 c0          	setne  %r8b
    aeed:	0f b6 c9             	movzbl %cl,%ecx
    aef0:	e9 3c af ff ff       	jmp    5e31 <sg_raster_triangle_depth_capture+0x2981>
    aef5:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    aefa:	66 0f ef d2          	pxor   %xmm2,%xmm2
    aefe:	66 0f ef e4          	pxor   %xmm4,%xmm4
    af02:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    af09:	01 00 00 00 
    af0d:	66 0f ef db          	pxor   %xmm3,%xmm3
    af11:	f3 4c 0f 2a cf       	cvtsi2ss %rdi,%xmm9
    af16:	f3 48 0f 2a d6       	cvtsi2ss %rsi,%xmm2
    af1b:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    af20:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    af25:	e9 8b b6 ff ff       	jmp    65b5 <sg_raster_triangle_depth_capture+0x3105>
    af2a:	0f 2f c8             	comiss %xmm0,%xmm1
    af2d:	0f 93 c1             	setae  %cl
    af30:	41 0f 93 c0          	setae  %r8b
    af34:	0f b6 c9             	movzbl %cl,%ecx
    af37:	8b 9c 24 20 01 00 00 	mov    0x120(%rsp),%ebx
    af3e:	85 db                	test   %ebx,%ebx
    af40:	0f 85 d5 04 00 00    	jne    b41b <sg_raster_triangle_depth_capture+0x7f6b>
    af46:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    af4d:	00 
    af4e:	0f 83 c7 04 00 00    	jae    b41b <sg_raster_triangle_depth_capture+0x7f6b>
    af54:	45 84 c0             	test   %r8b,%r8b
    af57:	0f 85 be 04 00 00    	jne    b41b <sg_raster_triangle_depth_capture+0x7f6b>
    af5d:	83 e5 f7             	and    $0xfffffff7,%ebp
    af60:	e9 c6 f6 ff ff       	jmp    a62b <sg_raster_triangle_depth_capture+0x717b>
    af65:	0f 2f c8             	comiss %xmm0,%xmm1
    af68:	0f 95 c1             	setne  %cl
    af6b:	41 0f 95 c0          	setne  %r8b
    af6f:	0f b6 c9             	movzbl %cl,%ecx
    af72:	eb c3                	jmp    af37 <sg_raster_triangle_depth_capture+0x7a87>
    af74:	0f 2f c8             	comiss %xmm0,%xmm1
    af77:	0f 97 c1             	seta   %cl
    af7a:	41 0f 97 c0          	seta   %r8b
    af7e:	0f b6 c9             	movzbl %cl,%ecx
    af81:	eb b4                	jmp    af37 <sg_raster_triangle_depth_capture+0x7a87>
    af83:	0f 2f c1             	comiss %xmm1,%xmm0
    af86:	0f 93 c1             	setae  %cl
    af89:	41 0f 93 c0          	setae  %r8b
    af8d:	0f b6 c9             	movzbl %cl,%ecx
    af90:	eb a5                	jmp    af37 <sg_raster_triangle_depth_capture+0x7a87>
    af92:	0f 2f c8             	comiss %xmm0,%xmm1
    af95:	0f 94 c1             	sete   %cl
    af98:	41 0f 94 c0          	sete   %r8b
    af9c:	0f b6 c9             	movzbl %cl,%ecx
    af9f:	eb 96                	jmp    af37 <sg_raster_triangle_depth_capture+0x7a87>
    afa1:	44 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13d
    afa8:	00 
    afa9:	45 85 ed             	test   %r13d,%r13d
    afac:	75 af                	jne    af5d <sg_raster_triangle_depth_capture+0x7aad>
    afae:	31 c9                	xor    %ecx,%ecx
    afb0:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    afb7:	00 
    afb8:	0f 93 c1             	setae  %cl
    afbb:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    afc2:	eb 99                	jmp    af5d <sg_raster_triangle_depth_capture+0x7aad>
    afc4:	0f 2f c8             	comiss %xmm0,%xmm1
    afc7:	41 0f 93 c0          	setae  %r8b
    afcb:	41 0f 93 c2          	setae  %r10b
    afcf:	45 0f b6 c0          	movzbl %r8b,%r8d
    afd3:	8b 9c 24 20 01 00 00 	mov    0x120(%rsp),%ebx
    afda:	85 db                	test   %ebx,%ebx
    afdc:	0f 85 bc b4 ff ff    	jne    649e <sg_raster_triangle_depth_capture+0x2fee>
    afe2:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    afe9:	00 
    afea:	0f 83 ae b4 ff ff    	jae    649e <sg_raster_triangle_depth_capture+0x2fee>
    aff0:	45 84 d2             	test   %r10b,%r10b
    aff3:	0f 85 a5 b4 ff ff    	jne    649e <sg_raster_triangle_depth_capture+0x2fee>
    aff9:	83 e5 fb             	and    $0xfffffffb,%ebp
    affc:	e9 b2 c2 ff ff       	jmp    72b3 <sg_raster_triangle_depth_capture+0x3e03>
    b001:	0f 2f c8             	comiss %xmm0,%xmm1
    b004:	41 0f 95 c0          	setne  %r8b
    b008:	41 0f 95 c2          	setne  %r10b
    b00c:	45 0f b6 c0          	movzbl %r8b,%r8d
    b010:	eb c1                	jmp    afd3 <sg_raster_triangle_depth_capture+0x7b23>
    b012:	0f 2f c8             	comiss %xmm0,%xmm1
    b015:	41 0f 97 c0          	seta   %r8b
    b019:	41 0f 97 c2          	seta   %r10b
    b01d:	45 0f b6 c0          	movzbl %r8b,%r8d
    b021:	eb b0                	jmp    afd3 <sg_raster_triangle_depth_capture+0x7b23>
    b023:	0f 2f c1             	comiss %xmm1,%xmm0
    b026:	41 0f 93 c0          	setae  %r8b
    b02a:	41 0f 93 c2          	setae  %r10b
    b02e:	45 0f b6 c0          	movzbl %r8b,%r8d
    b032:	eb 9f                	jmp    afd3 <sg_raster_triangle_depth_capture+0x7b23>
    b034:	0f 2f f0             	comiss %xmm0,%xmm6
    b037:	0f 93 c1             	setae  %cl
    b03a:	41 0f 93 c0          	setae  %r8b
    b03e:	0f b6 c9             	movzbl %cl,%ecx
    b041:	e9 43 fe ff ff       	jmp    ae89 <sg_raster_triangle_depth_capture+0x79d9>
    b046:	0f 2f f0             	comiss %xmm0,%xmm6
    b049:	0f 95 c1             	setne  %cl
    b04c:	41 0f 95 c0          	setne  %r8b
    b050:	0f b6 c9             	movzbl %cl,%ecx
    b053:	e9 31 fe ff ff       	jmp    ae89 <sg_raster_triangle_depth_capture+0x79d9>
    b058:	0f 2f f0             	comiss %xmm0,%xmm6
    b05b:	0f 97 c1             	seta   %cl
    b05e:	41 0f 97 c0          	seta   %r8b
    b062:	0f b6 c9             	movzbl %cl,%ecx
    b065:	e9 1f fe ff ff       	jmp    ae89 <sg_raster_triangle_depth_capture+0x79d9>
    b06a:	0f 2f c6             	comiss %xmm6,%xmm0
    b06d:	0f 93 c1             	setae  %cl
    b070:	41 0f 93 c0          	setae  %r8b
    b074:	0f b6 c9             	movzbl %cl,%ecx
    b077:	e9 0d fe ff ff       	jmp    ae89 <sg_raster_triangle_depth_capture+0x79d9>
    b07c:	0f 2f c8             	comiss %xmm0,%xmm1
    b07f:	41 0f 94 c0          	sete   %r8b
    b083:	41 0f 94 c2          	sete   %r10b
    b087:	45 0f b6 c0          	movzbl %r8b,%r8d
    b08b:	e9 43 ff ff ff       	jmp    afd3 <sg_raster_triangle_depth_capture+0x7b23>
    b090:	44 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13d
    b097:	00 
    b098:	45 85 ed             	test   %r13d,%r13d
    b09b:	0f 85 58 ff ff ff    	jne    aff9 <sg_raster_triangle_depth_capture+0x7b49>
    b0a1:	31 c9                	xor    %ecx,%ecx
    b0a3:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    b0aa:	00 
    b0ab:	0f 93 c1             	setae  %cl
    b0ae:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    b0b5:	e9 3f ff ff ff       	jmp    aff9 <sg_raster_triangle_depth_capture+0x7b49>
    b0ba:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    b0c1:	00 00 
    b0c3:	0f 2f f8             	comiss %xmm0,%xmm7
    b0c6:	0f 94 c1             	sete   %cl
    b0c9:	41 0f 94 c0          	sete   %r8b
    b0cd:	0f b6 c9             	movzbl %cl,%ecx
    b0d0:	e9 5c ad ff ff       	jmp    5e31 <sg_raster_triangle_depth_capture+0x2981>
    b0d5:	8b 9c 24 20 01 00 00 	mov    0x120(%rsp),%ebx
    b0dc:	85 db                	test   %ebx,%ebx
    b0de:	0f 85 75 ad ff ff    	jne    5e59 <sg_raster_triangle_depth_capture+0x29a9>
    b0e4:	31 c9                	xor    %ecx,%ecx
    b0e6:	0f 2f 84 24 24 02 00 	comiss 0x224(%rsp),%xmm0
    b0ed:	00 
    b0ee:	0f 93 c1             	setae  %cl
    b0f1:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    b0f8:	e9 5c ad ff ff       	jmp    5e59 <sg_raster_triangle_depth_capture+0x29a9>
    b0fd:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    b104:	00 00 
    b106:	0f 2f f8             	comiss %xmm0,%xmm7
    b109:	0f 97 c1             	seta   %cl
    b10c:	41 0f 97 c0          	seta   %r8b
    b110:	0f b6 c9             	movzbl %cl,%ecx
    b113:	e9 19 ad ff ff       	jmp    5e31 <sg_raster_triangle_depth_capture+0x2981>
    b118:	0f 2f 84 24 60 01 00 	comiss 0x160(%rsp),%xmm0
    b11f:	00 
    b120:	0f 93 c1             	setae  %cl
    b123:	41 0f 93 c0          	setae  %r8b
    b127:	0f b6 c9             	movzbl %cl,%ecx
    b12a:	e9 02 ad ff ff       	jmp    5e31 <sg_raster_triangle_depth_capture+0x2981>
    b12f:	0f 28 c7             	movaps %xmm7,%xmm0
    b132:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b137:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    b13c:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b140:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    b144:	66 44 0f 66 c0       	pcmpgtd %xmm0,%xmm8
    b149:	f3 0f 10 80 50 36 00 	movss  0x3650(%rax),%xmm0
    b150:	00 
    b151:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b155:	0f 58 c4             	addps  %xmm4,%xmm0
    b158:	44 0f 55 c7          	andnps %xmm7,%xmm8
    b15c:	0f 28 f8             	movaps %xmm0,%xmm7
    b15f:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b163:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b167:	0f 55 d8             	andnps %xmm0,%xmm3
    b16a:	0f 28 c5             	movaps %xmm5,%xmm0
    b16d:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b171:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b176:	0f 28 84 24 20 04 00 	movaps 0x420(%rsp),%xmm0
    b17d:	00 
    b17e:	0f 59 c3             	mulps  %xmm3,%xmm0
    b181:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b185:	0f 28 f8             	movaps %xmm0,%xmm7
    b188:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b18c:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b190:	0f 55 d8             	andnps %xmm0,%xmm3
    b193:	0f 28 c5             	movaps %xmm5,%xmm0
    b196:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b19a:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b19f:	0f 28 84 24 60 04 00 	movaps 0x460(%rsp),%xmm0
    b1a6:	00 
    b1a7:	0f 58 c3             	addps  %xmm3,%xmm0
    b1aa:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b1ae:	0f 28 f8             	movaps %xmm0,%xmm7
    b1b1:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b1b5:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b1b9:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    b1bd:	0f 55 d8             	andnps %xmm0,%xmm3
    b1c0:	0f 28 c5             	movaps %xmm5,%xmm0
    b1c3:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b1c7:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b1cc:	f3 0f 10 80 54 36 00 	movss  0x3654(%rax),%xmm0
    b1d3:	00 
    b1d4:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b1d8:	0f 58 c4             	addps  %xmm4,%xmm0
    b1db:	44 0f 28 c8          	movaps %xmm0,%xmm9
    b1df:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
    b1e4:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
    b1e9:	0f 55 f8             	andnps %xmm0,%xmm7
    b1ec:	0f 28 c5             	movaps %xmm5,%xmm0
    b1ef:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    b1f3:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b1f8:	0f 28 84 24 30 04 00 	movaps 0x430(%rsp),%xmm0
    b1ff:	00 
    b200:	0f 59 c7             	mulps  %xmm7,%xmm0
    b203:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    b207:	44 0f 28 c8          	movaps %xmm0,%xmm9
    b20b:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
    b210:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
    b215:	0f 55 f8             	andnps %xmm0,%xmm7
    b218:	0f 28 c5             	movaps %xmm5,%xmm0
    b21b:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    b21f:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b224:	0f 28 84 24 70 04 00 	movaps 0x470(%rsp),%xmm0
    b22b:	00 
    b22c:	0f 58 c7             	addps  %xmm7,%xmm0
    b22f:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    b233:	44 0f 28 c8          	movaps %xmm0,%xmm9
    b237:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
    b23c:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
    b241:	0f 55 f8             	andnps %xmm0,%xmm7
    b244:	0f 28 c5             	movaps %xmm5,%xmm0
    b247:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    b24b:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b250:	f3 0f 10 80 58 36 00 	movss  0x3658(%rax),%xmm0
    b257:	00 
    b258:	44 0f 28 e7          	movaps %xmm7,%xmm12
    b25c:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b260:	0f 58 c4             	addps  %xmm4,%xmm0
    b263:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    b267:	0f 28 f8             	movaps %xmm0,%xmm7
    b26a:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b26e:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
    b272:	0f 55 e0             	andnps %xmm0,%xmm4
    b275:	0f 28 c5             	movaps %xmm5,%xmm0
    b278:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    b27c:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b281:	0f 28 84 24 40 04 00 	movaps 0x440(%rsp),%xmm0
    b288:	00 
    b289:	0f 59 c4             	mulps  %xmm4,%xmm0
    b28c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    b290:	0f 28 f8             	movaps %xmm0,%xmm7
    b293:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b297:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
    b29b:	0f 55 e0             	andnps %xmm0,%xmm4
    b29e:	0f 28 c5             	movaps %xmm5,%xmm0
    b2a1:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    b2a5:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b2aa:	0f 28 84 24 80 04 00 	movaps 0x480(%rsp),%xmm0
    b2b1:	00 
    b2b2:	0f 58 c4             	addps  %xmm4,%xmm0
    b2b5:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    b2b9:	0f 28 f8             	movaps %xmm0,%xmm7
    b2bc:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b2c0:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
    b2c4:	0f 55 e0             	andnps %xmm0,%xmm4
    b2c7:	0f 28 c5             	movaps %xmm5,%xmm0
    b2ca:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    b2ce:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b2d3:	0f 28 c5             	movaps %xmm5,%xmm0
    b2d6:	41 0f c2 c0 01       	cmpltps %xmm8,%xmm0
    b2db:	66 44 0f 38 14 c5    	blendvps %xmm0,%xmm5,%xmm8
    b2e1:	0f 28 84 24 50 04 00 	movaps 0x450(%rsp),%xmm0
    b2e8:	00 
    b2e9:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    b2ed:	0f 28 f8             	movaps %xmm0,%xmm7
    b2f0:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b2f4:	66 0f 66 cf          	pcmpgtd %xmm7,%xmm1
    b2f8:	0f 55 c8             	andnps %xmm0,%xmm1
    b2fb:	0f 28 c5             	movaps %xmm5,%xmm0
    b2fe:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b302:	0f 28 f9             	movaps %xmm1,%xmm7
    b305:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b30a:	e9 29 ba ff ff       	jmp    6d38 <sg_raster_triangle_depth_capture+0x3888>
    b30f:	0f 59 f0             	mulps  %xmm0,%xmm6
    b312:	45 0f 28 e2          	movaps %xmm10,%xmm12
    b316:	0f 59 f8             	mulps  %xmm0,%xmm7
    b319:	44 0f 59 c0          	mulps  %xmm0,%xmm8
    b31d:	44 0f 59 e0          	mulps  %xmm0,%xmm12
    b321:	e9 f9 a3 ff ff       	jmp    571f <sg_raster_triangle_depth_capture+0x226f>
    b326:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    b32b:	45 0f 28 c4          	movaps %xmm12,%xmm8
    b32f:	41 0f 28 fc          	movaps %xmm12,%xmm7
    b333:	41 0f 28 f4          	movaps %xmm12,%xmm6
    b337:	e9 e3 a3 ff ff       	jmp    571f <sg_raster_triangle_depth_capture+0x226f>
    b33c:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    b343:	00 
    b344:	48 8b 40 30          	mov    0x30(%rax),%rax
    b348:	48 85 c0             	test   %rax,%rax
    b34b:	74 24                	je     b371 <sg_raster_triangle_depth_capture+0x7ec1>
    b34d:	48 8b bc 24 e0 04 00 	mov    0x4e0(%rsp),%rdi
    b354:	00 
    b355:	8b 7f 24             	mov    0x24(%rdi),%edi
    b358:	85 ff                	test   %edi,%edi
    b35a:	7e 15                	jle    b371 <sg_raster_triangle_depth_capture+0x7ec1>
    b35c:	48 8b 94 24 e0 04 00 	mov    0x4e0(%rsp),%rdx
    b363:	00 
    b364:	44 8b 42 28          	mov    0x28(%rdx),%r8d
    b368:	45 85 c0             	test   %r8d,%r8d
    b36b:	0f 8f d8 0e 00 00    	jg     c249 <sg_raster_triangle_depth_capture+0x8d99>
    b371:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    b378:	00 
    b379:	f3 0f 10 40 58       	movss  0x58(%rax),%xmm0
    b37e:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    b385:	00 
    b386:	f3 0f 10 50 58       	movss  0x58(%rax),%xmm2
    b38b:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b38f:	41 0f 59 c5          	mulps  %xmm13,%xmm0
    b393:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    b39a:	00 
    b39b:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b39f:	0f 59 94 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm2
    b3a6:	00 
    b3a7:	0f 58 c2             	addps  %xmm2,%xmm0
    b3aa:	f3 0f 10 50 58       	movss  0x58(%rax),%xmm2
    b3af:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b3b3:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    b3b7:	0f 58 c2             	addps  %xmm2,%xmm0
    b3ba:	0f 28 94 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm2
    b3c1:	00 
    b3c2:	0f 59 d0             	mulps  %xmm0,%xmm2
    b3c5:	e9 00 f4 ff ff       	jmp    a7ca <sg_raster_triangle_depth_capture+0x731a>
    b3ca:	0f 2f c6             	comiss %xmm6,%xmm0
    b3cd:	0f 97 c1             	seta   %cl
    b3d0:	41 0f 97 c0          	seta   %r8b
    b3d4:	0f b6 c9             	movzbl %cl,%ecx
    b3d7:	e9 ad fa ff ff       	jmp    ae89 <sg_raster_triangle_depth_capture+0x79d9>
    b3dc:	41 0f 2f c3          	comiss %xmm11,%xmm0
    b3e0:	0f 97 c1             	seta   %cl
    b3e3:	41 0f 97 c0          	seta   %r8b
    b3e7:	0f b6 c9             	movzbl %cl,%ecx
    b3ea:	e9 48 fb ff ff       	jmp    af37 <sg_raster_triangle_depth_capture+0x7a87>
    b3ef:	41 0f 2f c2          	comiss %xmm10,%xmm0
    b3f3:	41 0f 97 c0          	seta   %r8b
    b3f7:	41 0f 97 c2          	seta   %r10b
    b3fb:	45 0f b6 c0          	movzbl %r8b,%r8d
    b3ff:	e9 cf fb ff ff       	jmp    afd3 <sg_raster_triangle_depth_capture+0x7b23>
    b404:	0f 2f 84 24 60 01 00 	comiss 0x160(%rsp),%xmm0
    b40b:	00 
    b40c:	0f 97 c1             	seta   %cl
    b40f:	41 0f 97 c0          	seta   %r8b
    b413:	0f b6 c9             	movzbl %cl,%ecx
    b416:	e9 16 aa ff ff       	jmp    5e31 <sg_raster_triangle_depth_capture+0x2981>
    b41b:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    b422:	01 00 00 00 
    b426:	85 c9                	test   %ecx,%ecx
    b428:	0f 84 2f fb ff ff    	je     af5d <sg_raster_triangle_depth_capture+0x7aad>
    b42e:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    b433:	66 0f ef d2          	pxor   %xmm2,%xmm2
    b437:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b43b:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    b442:	66 0f ef db          	pxor   %xmm3,%xmm3
    b446:	f3 4c 0f 2a cf       	cvtsi2ss %rdi,%xmm9
    b44b:	f3 48 0f 2a d6       	cvtsi2ss %rsi,%xmm2
    b450:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    b455:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    b45a:	e9 56 b1 ff ff       	jmp    65b5 <sg_raster_triangle_depth_capture+0x3105>
    b45f:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    b466:	01 00 00 00 
    b46a:	85 c9                	test   %ecx,%ecx
    b46c:	0f 84 e7 a9 ff ff    	je     5e59 <sg_raster_triangle_depth_capture+0x29a9>
    b472:	89 8c 24 20 01 00 00 	mov    %ecx,0x120(%rsp)
    b479:	e9 e2 a9 ff ff       	jmp    5e60 <sg_raster_triangle_depth_capture+0x29b0>
    b47e:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b486 <sg_raster_triangle_depth_capture+0x7fd6>
    b485:	00 
    b486:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b48a:	0f 28 d0             	movaps %xmm0,%xmm2
    b48d:	41 0f 28 de          	movaps %xmm14,%xmm3
    b491:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b495:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b499:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b49d:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b4a1:	e9 ca e0 ff ff       	jmp    9570 <sg_raster_triangle_depth_capture+0x60c0>
    b4a6:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b4ae <sg_raster_triangle_depth_capture+0x7ffe>
    b4ad:	00 
    b4ae:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b4b2:	0f 28 d0             	movaps %xmm0,%xmm2
    b4b5:	41 0f 28 de          	movaps %xmm14,%xmm3
    b4b9:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b4bd:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b4c1:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b4c5:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b4c9:	e9 40 e3 ff ff       	jmp    980e <sg_raster_triangle_depth_capture+0x635e>
    b4ce:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b4d6 <sg_raster_triangle_depth_capture+0x8026>
    b4d5:	00 
    b4d6:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b4da:	0f 28 d0             	movaps %xmm0,%xmm2
    b4dd:	41 0f 28 de          	movaps %xmm14,%xmm3
    b4e1:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b4e5:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b4e9:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b4ed:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b4f1:	e9 99 e5 ff ff       	jmp    9a8f <sg_raster_triangle_depth_capture+0x65df>
    b4f6:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b4fe <sg_raster_triangle_depth_capture+0x804e>
    b4fd:	00 
    b4fe:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b502:	0f 28 d0             	movaps %xmm0,%xmm2
    b505:	41 0f 28 de          	movaps %xmm14,%xmm3
    b509:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b50d:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b511:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b515:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b519:	e9 0c e8 ff ff       	jmp    9d2a <sg_raster_triangle_depth_capture+0x687a>
    b51e:	f3 0f 10 8c ac 10 03 	movss  0x310(%rsp,%rbp,4),%xmm1
    b525:	00 00 
    b527:	48 83 ec 08          	sub    $0x8,%rsp
    b52b:	44 89 d2             	mov    %r10d,%edx
    b52e:	41 51                	push   %r9
    b530:	45 8b 47 1c          	mov    0x1c(%r15),%r8d
    b534:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    b53a:	e8 00 00 00 00       	call   b53f <sg_raster_triangle_depth_capture+0x808f>
    b53f:	59                   	pop    %rcx
    b540:	5e                   	pop    %rsi
    b541:	e9 6c f3 ff ff       	jmp    a8b2 <sg_raster_triangle_depth_capture+0x7402>
    b546:	41 81 fa 04 03 00 00 	cmp    $0x304,%r10d
    b54d:	0f 84 e4 03 00 00    	je     b937 <sg_raster_triangle_depth_capture+0x8487>
    b553:	44 0f 28 cd          	movaps %xmm5,%xmm9
    b557:	41 0f 28 cb          	movaps %xmm11,%xmm1
    b55b:	44 0f 5c c8          	subps  %xmm0,%xmm9
    b55f:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    b563:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    b567:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    b56b:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    b56f:	41 0f 58 c4          	addps  %xmm12,%xmm0
    b573:	0f 58 f4             	addps  %xmm4,%xmm6
    b576:	0f 58 fb             	addps  %xmm3,%xmm7
    b579:	44 0f 58 c1          	addps  %xmm1,%xmm8
    b57d:	44 0f 28 d0          	movaps %xmm0,%xmm10
    b581:	e9 98 ba ff ff       	jmp    701e <sg_raster_triangle_depth_capture+0x3b6e>
    b586:	48 8b 53 30          	mov    0x30(%rbx),%rdx
    b58a:	48 85 d2             	test   %rdx,%rdx
    b58d:	74 19                	je     b5a8 <sg_raster_triangle_depth_capture+0x80f8>
    b58f:	8b 6b 24             	mov    0x24(%rbx),%ebp
    b592:	85 ed                	test   %ebp,%ebp
    b594:	7e 12                	jle    b5a8 <sg_raster_triangle_depth_capture+0x80f8>
    b596:	8b 7b 28             	mov    0x28(%rbx),%edi
    b599:	89 bc 24 f0 01 00 00 	mov    %edi,0x1f0(%rsp)
    b5a0:	85 ff                	test   %edi,%edi
    b5a2:	0f 8f 07 05 00 00    	jg     baaf <sg_raster_triangle_depth_capture+0x85ff>
    b5a8:	f3 0f 10 50 08       	movss  0x8(%rax),%xmm2
    b5ad:	f3 41 0f 10 5a 08    	movss  0x8(%r10),%xmm3
    b5b3:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b5b7:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    b5bb:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    b5bf:	0f 59 9c 24 e0 01 00 	mulps  0x1e0(%rsp),%xmm3
    b5c6:	00 
    b5c7:	0f 58 d3             	addps  %xmm3,%xmm2
    b5ca:	f3 0f 10 59 08       	movss  0x8(%rcx),%xmm3
    b5cf:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    b5d3:	0f 59 9c 24 a0 01 00 	mulps  0x1a0(%rsp),%xmm3
    b5da:	00 
    b5db:	0f 58 d3             	addps  %xmm3,%xmm2
    b5de:	0f 59 94 24 c0 01 00 	mulps  0x1c0(%rsp),%xmm2
    b5e5:	00 
    b5e6:	e9 70 b3 ff ff       	jmp    695b <sg_raster_triangle_depth_capture+0x34ab>
    b5eb:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b5f0:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b5f4:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b5f8:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b5fc:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b603:	0f 58 c4             	addps  %xmm4,%xmm0
    b606:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b60d:	00 
    b60e:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b612:	0f 28 e8             	movaps %xmm0,%xmm5
    b615:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b619:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b61d:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b625 <sg_raster_triangle_depth_capture+0x8175>
    b624:	00 
    b625:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b629:	0f 55 d8             	andnps %xmm0,%xmm3
    b62c:	0f 28 c5             	movaps %xmm5,%xmm0
    b62f:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b633:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b638:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
    b63f:	00 
    b640:	0f 59 c3             	mulps  %xmm3,%xmm0
    b643:	0f 28 d8             	movaps %xmm0,%xmm3
    b646:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b64a:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b652 <sg_raster_triangle_depth_capture+0x81a2>
    b651:	00 
    b652:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
    b659:	00 00 
    b65b:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b65f:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b663:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
    b66a:	00 00 
    b66c:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b674 <sg_raster_triangle_depth_capture+0x81c4>
    b673:	00 
    b674:	0f 55 c8             	andnps %xmm0,%xmm1
    b677:	0f 28 c5             	movaps %xmm5,%xmm0
    b67a:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b67e:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b682:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b687:	0f 28 c1             	movaps %xmm1,%xmm0
    b68a:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
    b691:	00 
    b692:	e9 bd ed ff ff       	jmp    a454 <sg_raster_triangle_depth_capture+0x6fa4>
    b697:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b69c:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b6a0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b6a4:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b6a8:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b6af:	0f 58 c4             	addps  %xmm4,%xmm0
    b6b2:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b6b9:	00 
    b6ba:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b6be:	0f 28 e8             	movaps %xmm0,%xmm5
    b6c1:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b6c5:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b6c9:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b6d1 <sg_raster_triangle_depth_capture+0x8221>
    b6d0:	00 
    b6d1:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b6d5:	0f 55 d8             	andnps %xmm0,%xmm3
    b6d8:	0f 28 c5             	movaps %xmm5,%xmm0
    b6db:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b6df:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b6e4:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
    b6eb:	00 
    b6ec:	0f 59 c3             	mulps  %xmm3,%xmm0
    b6ef:	0f 28 d8             	movaps %xmm0,%xmm3
    b6f2:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b6f6:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b6fe <sg_raster_triangle_depth_capture+0x824e>
    b6fd:	00 
    b6fe:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
    b705:	00 00 
    b707:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b70b:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b70f:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
    b716:	00 00 
    b718:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b720 <sg_raster_triangle_depth_capture+0x8270>
    b71f:	00 
    b720:	0f 55 c8             	andnps %xmm0,%xmm1
    b723:	0f 28 c5             	movaps %xmm5,%xmm0
    b726:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b72a:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b72e:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b733:	0f 28 c1             	movaps %xmm1,%xmm0
    b736:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
    b73d:	00 
    b73e:	e9 00 ea ff ff       	jmp    a143 <sg_raster_triangle_depth_capture+0x6c93>
    b743:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b748:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b74c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b750:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b754:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b75b:	0f 58 c4             	addps  %xmm4,%xmm0
    b75e:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b765:	00 
    b766:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b76a:	0f 28 e8             	movaps %xmm0,%xmm5
    b76d:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b771:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b775:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b77d <sg_raster_triangle_depth_capture+0x82cd>
    b77c:	00 
    b77d:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b781:	0f 55 d8             	andnps %xmm0,%xmm3
    b784:	0f 28 c5             	movaps %xmm5,%xmm0
    b787:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b78b:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b790:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
    b797:	00 
    b798:	0f 59 c3             	mulps  %xmm3,%xmm0
    b79b:	0f 28 d8             	movaps %xmm0,%xmm3
    b79e:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b7a2:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b7aa <sg_raster_triangle_depth_capture+0x82fa>
    b7a9:	00 
    b7aa:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
    b7b1:	00 00 
    b7b3:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b7b7:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b7bb:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
    b7c2:	00 00 
    b7c4:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b7cc <sg_raster_triangle_depth_capture+0x831c>
    b7cb:	00 
    b7cc:	0f 55 c8             	andnps %xmm0,%xmm1
    b7cf:	0f 28 c5             	movaps %xmm5,%xmm0
    b7d2:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b7d6:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b7da:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b7df:	0f 28 c1             	movaps %xmm1,%xmm0
    b7e2:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
    b7e9:	00 
    b7ea:	e9 ca ed ff ff       	jmp    a5b9 <sg_raster_triangle_depth_capture+0x7109>
    b7ef:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b7f4:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b7f8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b7fc:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b800:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b807:	0f 58 c4             	addps  %xmm4,%xmm0
    b80a:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b811:	00 
    b812:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b816:	0f 28 e8             	movaps %xmm0,%xmm5
    b819:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b81d:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b821:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b829 <sg_raster_triangle_depth_capture+0x8379>
    b828:	00 
    b829:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b82d:	0f 55 d8             	andnps %xmm0,%xmm3
    b830:	0f 28 c5             	movaps %xmm5,%xmm0
    b833:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b837:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b83c:	0f 28 84 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm0
    b843:	00 
    b844:	0f 59 c3             	mulps  %xmm3,%xmm0
    b847:	0f 28 d8             	movaps %xmm0,%xmm3
    b84a:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b84e:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b856 <sg_raster_triangle_depth_capture+0x83a6>
    b855:	00 
    b856:	f3 0f 5d a4 24 0c 03 	minss  0x30c(%rsp),%xmm4
    b85d:	00 00 
    b85f:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b863:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b867:	f3 0f 59 a4 24 cc 03 	mulss  0x3cc(%rsp),%xmm4
    b86e:	00 00 
    b870:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b878 <sg_raster_triangle_depth_capture+0x83c8>
    b877:	00 
    b878:	0f 55 c8             	andnps %xmm0,%xmm1
    b87b:	0f 28 c5             	movaps %xmm5,%xmm0
    b87e:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b882:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b886:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b88b:	0f 28 c1             	movaps %xmm1,%xmm0
    b88e:	0f 58 84 24 d0 03 00 	addps  0x3d0(%rsp),%xmm0
    b895:	00 
    b896:	e9 0d ea ff ff       	jmp    a2a8 <sg_raster_triangle_depth_capture+0x6df8>
    b89b:	f3 0f 10 4f 48       	movss  0x48(%rdi),%xmm1
    b8a0:	f3 0f 10 47 4c       	movss  0x4c(%rdi),%xmm0
    b8a5:	f3 0f 10 6f 50       	movss  0x50(%rdi),%xmm5
    b8aa:	f3 0f 10 57 54       	movss  0x54(%rdi),%xmm2
    b8af:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    b8b3:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b8b7:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b8bb:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b8bf:	e9 97 f0 ff ff       	jmp    a95b <sg_raster_triangle_depth_capture+0x74ab>
    b8c4:	0f 28 e5             	movaps %xmm5,%xmm4
    b8c7:	44 0f 28 e0          	movaps %xmm0,%xmm12
    b8cb:	0f 28 d9             	movaps %xmm1,%xmm3
    b8ce:	0f 28 fa             	movaps %xmm2,%xmm7
    b8d1:	e9 62 b4 ff ff       	jmp    6d38 <sg_raster_triangle_depth_capture+0x3888>
    b8d6:	f3 0f 10 94 ac 60 03 	movss  0x360(%rsp,%rbp,4),%xmm2
    b8dd:	00 00 
    b8df:	44 89 d2             	mov    %r10d,%edx
    b8e2:	f3 0f 10 8c ac 10 03 	movss  0x310(%rsp,%rbp,4),%xmm1
    b8e9:	00 00 
    b8eb:	41 51                	push   %r9
    b8ed:	6a 01                	push   $0x1
    b8ef:	45 8b 47 1c          	mov    0x1c(%r15),%r8d
    b8f3:	45 8b 4f 20          	mov    0x20(%r15),%r9d
    b8f7:	e8 00 00 00 00       	call   b8fc <sg_raster_triangle_depth_capture+0x844c>
    b8fc:	5f                   	pop    %rdi
    b8fd:	41 58                	pop    %r8
    b8ff:	e9 ae ef ff ff       	jmp    a8b2 <sg_raster_triangle_depth_capture+0x7402>
    b904:	44 0f 28 cd          	movaps %xmm5,%xmm9
    b908:	41 0f 28 cb          	movaps %xmm11,%xmm1
    b90c:	45 0f 5c ca          	subps  %xmm10,%xmm9
    b910:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    b914:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    b918:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    b91c:	44 0f 59 c8          	mulps  %xmm0,%xmm9
    b920:	0f 58 f4             	addps  %xmm4,%xmm6
    b923:	0f 58 fb             	addps  %xmm3,%xmm7
    b926:	44 0f 58 c1          	addps  %xmm1,%xmm8
    b92a:	45 0f 28 d1          	movaps %xmm9,%xmm10
    b92e:	45 0f 58 d4          	addps  %xmm12,%xmm10
    b932:	e9 e7 b6 ff ff       	jmp    701e <sg_raster_triangle_depth_capture+0x3b6e>
    b937:	0f 59 e0             	mulps  %xmm0,%xmm4
    b93a:	41 0f 28 cb          	movaps %xmm11,%xmm1
    b93e:	0f 59 d8             	mulps  %xmm0,%xmm3
    b941:	0f 59 c8             	mulps  %xmm0,%xmm1
    b944:	0f 59 c0             	mulps  %xmm0,%xmm0
    b947:	0f 58 f4             	addps  %xmm4,%xmm6
    b94a:	0f 58 fb             	addps  %xmm3,%xmm7
    b94d:	44 0f 58 c1          	addps  %xmm1,%xmm8
    b951:	41 0f 58 c4          	addps  %xmm12,%xmm0
    b955:	44 0f 28 d0          	movaps %xmm0,%xmm10
    b959:	e9 c0 b6 ff ff       	jmp    701e <sg_raster_triangle_depth_capture+0x3b6e>
    b95e:	0f 59 e4             	mulps  %xmm4,%xmm4
    b961:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b965:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b96a:	0f 28 c4             	movaps %xmm4,%xmm0
    b96d:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    b971:	66 0f 66 d8          	pcmpgtd %xmm0,%xmm3
    b975:	0f 28 c5             	movaps %xmm5,%xmm0
    b978:	0f 55 dc             	andnps %xmm4,%xmm3
    b97b:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b97f:	0f 28 e3             	movaps %xmm3,%xmm4
    b982:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b986:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b98b:	f3 0f 10 80 38 37 00 	movss  0x3738(%rax),%xmm0
    b992:	00 
    b993:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b997:	0f 59 c4             	mulps  %xmm4,%xmm0
    b99a:	0f 28 f8             	movaps %xmm0,%xmm7
    b99d:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b9a1:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b9a5:	0f 55 d8             	andnps %xmm0,%xmm3
    b9a8:	0f 28 c5             	movaps %xmm5,%xmm0
    b9ab:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b9af:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b9b4:	f3 0f 10 80 3c 37 00 	movss  0x373c(%rax),%xmm0
    b9bb:	00 
    b9bc:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b9c0:	0f 59 c4             	mulps  %xmm4,%xmm0
    b9c3:	0f 28 f8             	movaps %xmm0,%xmm7
    b9c6:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b9ca:	66 0f 66 cf          	pcmpgtd %xmm7,%xmm1
    b9ce:	0f 55 c8             	andnps %xmm0,%xmm1
    b9d1:	0f 28 c5             	movaps %xmm5,%xmm0
    b9d4:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b9d8:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b9dd:	44 0f 28 e1          	movaps %xmm1,%xmm12
    b9e1:	0f 28 cc             	movaps %xmm4,%xmm1
    b9e4:	e9 fc b2 ff ff       	jmp    6ce5 <sg_raster_triangle_depth_capture+0x3835>
    b9e9:	41 0f 58 c4          	addps  %xmm12,%xmm0
    b9ed:	0f 58 f4             	addps  %xmm4,%xmm6
    b9f0:	0f 58 fb             	addps  %xmm3,%xmm7
    b9f3:	45 0f 58 c3          	addps  %xmm11,%xmm8
    b9f7:	44 0f 28 d0          	movaps %xmm0,%xmm10
    b9fb:	e9 1e b6 ff ff       	jmp    701e <sg_raster_triangle_depth_capture+0x3b6e>
    ba00:	45 0f 28 d4          	movaps %xmm12,%xmm10
    ba04:	e9 15 b6 ff ff       	jmp    701e <sg_raster_triangle_depth_capture+0x3b6e>
    ba09:	44 0f 28 e5          	movaps %xmm5,%xmm12
    ba0d:	45 0f 5c e2          	subps  %xmm10,%xmm12
    ba11:	41 0f 59 f4          	mulps  %xmm12,%xmm6
    ba15:	41 0f 59 fc          	mulps  %xmm12,%xmm7
    ba19:	45 0f 59 c4          	mulps  %xmm12,%xmm8
    ba1d:	45 0f 59 e2          	mulps  %xmm10,%xmm12
    ba21:	e9 f9 9c ff ff       	jmp    571f <sg_raster_triangle_depth_capture+0x226f>
    ba26:	8b b4 24 b0 01 00 00 	mov    0x1b0(%rsp),%esi
    ba2d:	4c 89 ea             	mov    %r13,%rdx
    ba30:	48 89 df             	mov    %rbx,%rdi
    ba33:	44 89 84 24 b0 02 00 	mov    %r8d,0x2b0(%rsp)
    ba3a:	00 
    ba3b:	44 89 9c 24 30 02 00 	mov    %r11d,0x230(%rsp)
    ba42:	00 
    ba43:	48 89 8c 24 28 02 00 	mov    %rcx,0x228(%rsp)
    ba4a:	00 
    ba4b:	48 89 84 24 10 02 00 	mov    %rax,0x210(%rsp)
    ba52:	00 
    ba53:	4c 89 94 24 00 02 00 	mov    %r10,0x200(%rsp)
    ba5a:	00 
    ba5b:	0f 29 ac 24 40 02 00 	movaps %xmm5,0x240(%rsp)
    ba62:	00 
    ba63:	44 0f 29 ac 24 f0 01 	movaps %xmm13,0x1f0(%rsp)
    ba6a:	00 00 
    ba6c:	e8 00 00 00 00       	call   ba71 <sg_raster_triangle_depth_capture+0x85c1>
    ba71:	4c 8b 94 24 00 02 00 	mov    0x200(%rsp),%r10
    ba78:	00 
    ba79:	44 0f 28 ac 24 f0 01 	movaps 0x1f0(%rsp),%xmm13
    ba80:	00 00 
    ba82:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
    ba89:	00 
    ba8a:	48 8b 8c 24 28 02 00 	mov    0x228(%rsp),%rcx
    ba91:	00 
    ba92:	44 8b 9c 24 30 02 00 	mov    0x230(%rsp),%r11d
    ba99:	00 
    ba9a:	44 8b 84 24 b0 02 00 	mov    0x2b0(%rsp),%r8d
    baa1:	00 
    baa2:	0f 28 ac 24 40 02 00 	movaps 0x240(%rsp),%xmm5
    baa9:	00 
    baaa:	e9 2e b0 ff ff       	jmp    6add <sg_raster_triangle_depth_capture+0x362d>
    baaf:	8b 73 18             	mov    0x18(%rbx),%esi
    bab2:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    bab7:	f3 44 0f 2a f5       	cvtsi2ss %ebp,%xmm14
    babc:	81 fe 00 29 00 00    	cmp    $0x2900,%esi
    bac2:	40 0f 94 c7          	sete   %dil
    bac6:	81 fe 2f 81 00 00    	cmp    $0x812f,%esi
    bacc:	40 0f 94 c6          	sete   %sil
    bad0:	40 08 f7             	or     %sil,%dil
    bad3:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    bad8:	40 88 bc 24 00 02 00 	mov    %dil,0x200(%rsp)
    badf:	00 
    bae0:	0f 85 ed 06 00 00    	jne    c1d3 <sg_raster_triangle_depth_capture+0x8d23>
    bae6:	0f 28 d0             	movaps %xmm0,%xmm2
    bae9:	66 0f 3a 08 d8 01    	roundps $0x1,%xmm0,%xmm3
    baef:	0f 5c d3             	subps  %xmm3,%xmm2
    baf2:	8b 73 1c             	mov    0x1c(%rbx),%esi
    baf5:	44 0f 59 f2          	mulps  %xmm2,%xmm14
    baf9:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    bafe:	f3 44 0f 2a a4 24 f0 	cvtsi2ssl 0x1f0(%rsp),%xmm12
    bb05:	01 00 00 
    bb08:	81 fe 00 29 00 00    	cmp    $0x2900,%esi
    bb0e:	40 0f 94 c7          	sete   %dil
    bb12:	81 fe 2f 81 00 00    	cmp    $0x812f,%esi
    bb18:	40 0f 94 c6          	sete   %sil
    bb1c:	40 08 fe             	or     %dil,%sil
    bb1f:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
    bb24:	40 88 b4 24 10 02 00 	mov    %sil,0x210(%rsp)
    bb2b:	00 
    bb2c:	0f 85 c8 06 00 00    	jne    c1fa <sg_raster_triangle_depth_capture+0x8d4a>
    bb32:	0f 28 d1             	movaps %xmm1,%xmm2
    bb35:	66 0f 3a 08 c1 01    	roundps $0x1,%xmm1,%xmm0
    bb3b:	0f 5c d0             	subps  %xmm0,%xmm2
    bb3e:	8b 7b 14             	mov    0x14(%rbx),%edi
    bb41:	44 0f 59 e2          	mulps  %xmm2,%xmm12
    bb45:	89 bc 24 28 02 00 00 	mov    %edi,0x228(%rsp)
    bb4c:	81 ff 00 26 00 00    	cmp    $0x2600,%edi
    bb52:	74 10                	je     bb64 <sg_raster_triangle_depth_capture+0x86b4>
    bb54:	0f 28 bc 24 60 02 00 	movaps 0x260(%rsp),%xmm7
    bb5b:	00 
    bb5c:	44 0f 58 f7          	addps  %xmm7,%xmm14
    bb60:	44 0f 58 e7          	addps  %xmm7,%xmm12
    bb64:	8d 75 ff             	lea    -0x1(%rbp),%esi
    bb67:	66 0f 6e f5          	movd   %ebp,%xmm6
    bb6b:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    bb72:	00 
    bb73:	66 41 0f 3a 08 fe 01 	roundps $0x1,%xmm14,%xmm7
    bb7a:	66 44 0f 6e ce       	movd   %esi,%xmm9
    bb7f:	66 45 0f 3a 08 c4 01 	roundps $0x1,%xmm12,%xmm8
    bb86:	8b 7b 38             	mov    0x38(%rbx),%edi
    bb89:	f3 0f 5b e7          	cvttps2dq %xmm7,%xmm4
    bb8d:	f3 41 0f 5b d8       	cvttps2dq %xmm8,%xmm3
    bb92:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    bb98:	66 0f 70 ce 00       	pshufd $0x0,%xmm6,%xmm1
    bb9d:	0f 85 9c 13 00 00    	jne    cf3f <sg_raster_triangle_depth_capture+0x9a8f>
    bba3:	85 ff                	test   %edi,%edi
    bba5:	0f 85 99 15 00 00    	jne    d144 <sg_raster_triangle_depth_capture+0x9c94>
    bbab:	66 0f 6f f4          	movdqa %xmm4,%xmm6
    bbaf:	66 0f ef d2          	pxor   %xmm2,%xmm2
    bbb3:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    bbb7:	66 41 0f 66 f1       	pcmpgtd %xmm9,%xmm6
    bbbc:	66 0f 66 d4          	pcmpgtd %xmm4,%xmm2
    bbc0:	66 0f fa c1          	psubd  %xmm1,%xmm0
    bbc4:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
    bbc9:	66 0f db c6          	pand   %xmm6,%xmm0
    bbcd:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    bbd1:	66 44 0f df d4       	pandn  %xmm4,%xmm10
    bbd6:	66 41 0f eb c2       	por    %xmm10,%xmm0
    bbdb:	66 0f df f0          	pandn  %xmm0,%xmm6
    bbdf:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    bbe3:	66 0f fe c1          	paddd  %xmm1,%xmm0
    bbe7:	66 0f db d0          	pand   %xmm0,%xmm2
    bbeb:	66 0f eb d6          	por    %xmm6,%xmm2
    bbef:	8b b4 24 f0 01 00 00 	mov    0x1f0(%rsp),%esi
    bbf6:	8b 6b 3c             	mov    0x3c(%rbx),%ebp
    bbf9:	83 ee 01             	sub    $0x1,%esi
    bbfc:	80 bc 24 10 02 00 00 	cmpb   $0x0,0x210(%rsp)
    bc03:	00 
    bc04:	66 0f 6e f6          	movd   %esi,%xmm6
    bc08:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    bc0d:	0f 85 19 13 00 00    	jne    cf2c <sg_raster_triangle_depth_capture+0x9a7c>
    bc13:	85 ed                	test   %ebp,%ebp
    bc15:	0f 85 3b 15 00 00    	jne    d156 <sg_raster_triangle_depth_capture+0x9ca6>
    bc1b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    bc1f:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    bc24:	66 44 0f 6e 94 24 f0 	movd   0x1f0(%rsp),%xmm10
    bc2b:	01 00 00 
    bc2e:	66 44 0f 66 de       	pcmpgtd %xmm6,%xmm11
    bc33:	66 0f 66 c3          	pcmpgtd %xmm3,%xmm0
    bc37:	66 44 0f 6f f8       	movdqa %xmm0,%xmm15
    bc3c:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
    bc41:	66 0f df c3          	pandn  %xmm3,%xmm0
    bc45:	0f 29 84 24 30 02 00 	movaps %xmm0,0x230(%rsp)
    bc4c:	00 
    bc4d:	66 41 0f 70 c2 00    	pshufd $0x0,%xmm10,%xmm0
    bc53:	66 44 0f 6f d3       	movdqa %xmm3,%xmm10
    bc58:	66 44 0f fa d0       	psubd  %xmm0,%xmm10
    bc5d:	66 0f fe c3          	paddd  %xmm3,%xmm0
    bc61:	66 45 0f db d3       	pand   %xmm11,%xmm10
    bc66:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
    bc6b:	66 41 0f db c7       	pand   %xmm15,%xmm0
    bc70:	66 44 0f eb 94 24 30 	por    0x230(%rsp),%xmm10
    bc77:	02 00 00 
    bc7a:	66 45 0f df da       	pandn  %xmm10,%xmm11
    bc7f:	66 41 0f eb c3       	por    %xmm11,%xmm0
    bc84:	66 0f 38 40 c1       	pmulld %xmm1,%xmm0
    bc89:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
    bc8e:	81 bc 24 28 02 00 00 	cmpl   $0x2600,0x228(%rsp)
    bc95:	00 26 00 00 
    bc99:	66 0f fe d0          	paddd  %xmm0,%xmm2
    bc9d:	0f 29 94 24 60 03 00 	movaps %xmm2,0x360(%rsp)
    bca4:	00 
    bca5:	0f 84 18 13 00 00    	je     cfc3 <sg_raster_triangle_depth_capture+0x9b13>
    bcab:	be 01 00 00 00       	mov    $0x1,%esi
    bcb0:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    bcb7:	00 
    bcb8:	66 44 0f 6e d6       	movd   %esi,%xmm10
    bcbd:	66 45 0f 70 d2 00    	pshufd $0x0,%xmm10,%xmm10
    bcc3:	66 41 0f fe e2       	paddd  %xmm10,%xmm4
    bcc8:	0f 85 2f 10 00 00    	jne    ccfd <sg_raster_triangle_depth_capture+0x984d>
    bcce:	85 ff                	test   %edi,%edi
    bcd0:	0f 85 14 15 00 00    	jne    d1ea <sg_raster_triangle_depth_capture+0x9d3a>
    bcd6:	66 44 0f 6f dc       	movdqa %xmm4,%xmm11
    bcdb:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    bce0:	66 45 0f 66 d9       	pcmpgtd %xmm9,%xmm11
    bce5:	66 44 0f 66 d4       	pcmpgtd %xmm4,%xmm10
    bcea:	66 45 0f 6f cb       	movdqa %xmm11,%xmm9
    bcef:	66 44 0f df cc       	pandn  %xmm4,%xmm9
    bcf4:	44 0f 29 8c 24 00 02 	movaps %xmm9,0x200(%rsp)
    bcfb:	00 00 
    bcfd:	66 44 0f 6f cc       	movdqa %xmm4,%xmm9
    bd02:	66 0f fe e1          	paddd  %xmm1,%xmm4
    bd06:	66 44 0f fa c9       	psubd  %xmm1,%xmm9
    bd0b:	66 41 0f db e2       	pand   %xmm10,%xmm4
    bd10:	66 45 0f db cb       	pand   %xmm11,%xmm9
    bd15:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
    bd1a:	66 44 0f eb 8c 24 00 	por    0x200(%rsp),%xmm9
    bd21:	02 00 00 
    bd24:	66 45 0f df d9       	pandn  %xmm9,%xmm11
    bd29:	66 41 0f eb e3       	por    %xmm11,%xmm4
    bd2e:	bf 01 00 00 00       	mov    $0x1,%edi
    bd33:	80 bc 24 10 02 00 00 	cmpb   $0x0,0x210(%rsp)
    bd3a:	00 
    bd3b:	66 44 0f 6e cf       	movd   %edi,%xmm9
    bd40:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    bd46:	66 41 0f fe d9       	paddd  %xmm9,%xmm3
    bd4b:	0f 85 97 0f 00 00    	jne    cce8 <sg_raster_triangle_depth_capture+0x9838>
    bd51:	85 ed                	test   %ebp,%ebp
    bd53:	0f 85 3a 13 00 00    	jne    d093 <sg_raster_triangle_depth_capture+0x9be3>
    bd59:	66 44 0f 6f d3       	movdqa %xmm3,%xmm10
    bd5e:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    bd63:	66 44 0f 66 d6       	pcmpgtd %xmm6,%xmm10
    bd68:	66 44 0f 66 cb       	pcmpgtd %xmm3,%xmm9
    bd6d:	66 0f 6e b4 24 f0 01 	movd   0x1f0(%rsp),%xmm6
    bd74:	00 00 
    bd76:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    bd7b:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
    bd80:	66 44 0f df db       	pandn  %xmm3,%xmm11
    bd85:	44 0f 29 9c 24 f0 01 	movaps %xmm11,0x1f0(%rsp)
    bd8c:	00 00 
    bd8e:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    bd93:	66 0f fe de          	paddd  %xmm6,%xmm3
    bd97:	66 44 0f fa de       	psubd  %xmm6,%xmm11
    bd9c:	66 41 0f db d9       	pand   %xmm9,%xmm3
    bda1:	66 45 0f db da       	pand   %xmm10,%xmm11
    bda6:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
    bdab:	66 44 0f eb 9c 24 f0 	por    0x1f0(%rsp),%xmm11
    bdb2:	01 00 00 
    bdb5:	66 45 0f df d3       	pandn  %xmm11,%xmm10
    bdba:	66 41 0f eb da       	por    %xmm10,%xmm3
    bdbf:	66 0f 38 40 cb       	pmulld %xmm3,%xmm1
    bdc4:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
    bdc9:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
    bdd0:	0f 
    bdd1:	66 0f fe c4          	paddd  %xmm4,%xmm0
    bdd5:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    bdd9:	66 44 0f fe c9       	paddd  %xmm1,%xmm9
    bdde:	66 0f fe f4          	paddd  %xmm4,%xmm6
    bde2:	0f 84 92 0f 00 00    	je     cd7a <sg_raster_triangle_depth_capture+0x98ca>
    bde8:	45 85 c0             	test   %r8d,%r8d
    bdeb:	0f 84 22 0f 00 00    	je     cd13 <sg_raster_triangle_depth_capture+0x9863>
    bdf1:	48 63 b4 24 60 03 00 	movslq 0x360(%rsp),%rsi
    bdf8:	00 
    bdf9:	66 0f 6e 1c b2       	movd   (%rdx,%rsi,4),%xmm3
    bdfe:	45 85 db             	test   %r11d,%r11d
    be01:	0f 85 02 0d 00 00    	jne    cb09 <sg_raster_triangle_depth_capture+0x9659>
    be07:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    be0e:	00 
    be0f:	0f 85 29 15 00 00    	jne    d33e <sg_raster_triangle_depth_capture+0x9e8e>
    be15:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    be1c:	00 
    be1d:	0f 85 12 15 00 00    	jne    d335 <sg_raster_triangle_depth_capture+0x9e85>
    be23:	66 0f 3a 21 db 0e    	insertps $0xe,%xmm3,%xmm3
    be29:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    be2e:	66 0f 7e c6          	movd   %xmm0,%esi
    be32:	48 63 f6             	movslq %esi,%rsi
    be35:	66 0f 6e 0c b2       	movd   (%rdx,%rsi,4),%xmm1
    be3a:	45 85 db             	test   %r11d,%r11d
    be3d:	0f 85 0a 0d 00 00    	jne    cb4d <sg_raster_triangle_depth_capture+0x969d>
    be43:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    be4a:	00 
    be4b:	0f 85 df 0d 00 00    	jne    cc30 <sg_raster_triangle_depth_capture+0x9780>
    be51:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    be58:	00 
    be59:	0f 85 29 11 00 00    	jne    cf88 <sg_raster_triangle_depth_capture+0x9ad8>
    be5f:	66 0f 3a 21 c9 0e    	insertps $0xe,%xmm1,%xmm1
    be65:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    be69:	45 85 c0             	test   %r8d,%r8d
    be6c:	0f 85 3a 0c 00 00    	jne    caac <sg_raster_triangle_depth_capture+0x95fc>
    be72:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    be79:	66 0f ef c0          	pxor   %xmm0,%xmm0
    be7d:	31 ed                	xor    %ebp,%ebp
    be7f:	48 63 f6             	movslq %esi,%rsi
    be82:	66 0f 3a 22 04 b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm0
    be89:	31 f6                	xor    %esi,%esi
    be8b:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    be90:	66 0f 3a 16 f7 03    	pextrd $0x3,%xmm6,%edi
    be96:	48 63 ff             	movslq %edi,%rdi
    be99:	48 89 bc 24 f0 01 00 	mov    %rdi,0x1f0(%rsp)
    bea0:	00 
    bea1:	44 89 cf             	mov    %r9d,%edi
    bea4:	4c 8b 8c 24 f0 01 00 	mov    0x1f0(%rsp),%r9
    beab:	00 
    beac:	46 8b 0c 8a          	mov    (%rdx,%r9,4),%r9d
    beb0:	66 0f 6e f7          	movd   %edi,%xmm6
    beb4:	66 0f 6e d6          	movd   %esi,%xmm2
    beb8:	66 41 0f 3a 22 f1 01 	pinsrd $0x1,%r9d,%xmm6
    bebf:	66 0f 3a 22 d5 01    	pinsrd $0x1,%ebp,%xmm2
    bec5:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
    bec9:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    becd:	45 0f 28 ce          	movaps %xmm14,%xmm9
    bed1:	bf ff 00 00 00       	mov    $0xff,%edi
    bed6:	45 0f 28 fc          	movaps %xmm12,%xmm15
    beda:	44 0f 5c cf          	subps  %xmm7,%xmm9
    bede:	0f 58 fd             	addps  %xmm5,%xmm7
    bee1:	66 0f 72 d3 08       	psrld  $0x8,%xmm3
    bee6:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
    beeb:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    bef0:	45 0f 5c f8          	subps  %xmm8,%xmm15
    bef4:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    bef9:	41 0f 5c fe          	subps  %xmm14,%xmm7
    befd:	45 0f 28 f0          	movaps %xmm8,%xmm14
    bf01:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    bf06:	44 0f 58 f5          	addps  %xmm5,%xmm14
    bf0a:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
    bf10:	45 0f 5c f4          	subps  %xmm12,%xmm14
    bf14:	66 44 0f 6e e7       	movd   %edi,%xmm12
    bf19:	66 45 0f 70 e4 00    	pshufd $0x0,%xmm12,%xmm12
    bf1f:	66 41 0f db e4       	pand   %xmm12,%xmm4
    bf24:	66 45 0f db dc       	pand   %xmm12,%xmm11
    bf29:	66 41 0f db f4       	pand   %xmm12,%xmm6
    bf2e:	66 45 0f db d4       	pand   %xmm12,%xmm10
    bf33:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
    bf36:	45 0f 5b db          	cvtdq2ps %xmm11,%xmm11
    bf3a:	0f 5b f6             	cvtdq2ps %xmm6,%xmm6
    bf3d:	44 0f 59 df          	mulps  %xmm7,%xmm11
    bf41:	45 0f 5b d2          	cvtdq2ps %xmm10,%xmm10
    bf45:	66 41 0f db cc       	pand   %xmm12,%xmm1
    bf4a:	44 0f 59 d7          	mulps  %xmm7,%xmm10
    bf4e:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    bf51:	41 0f 59 f1          	mulps  %xmm9,%xmm6
    bf55:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    bf59:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    bf5d:	41 0f 58 f2          	addps  %xmm10,%xmm6
    bf61:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    bf66:	66 41 0f db c4       	pand   %xmm12,%xmm0
    bf6b:	41 0f 58 e3          	addps  %xmm11,%xmm4
    bf6f:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    bf72:	0f 59 c7             	mulps  %xmm7,%xmm0
    bf75:	f3 44 0f 10 1d 00 00 	movss  0x0(%rip),%xmm11        # bf7e <sg_raster_triangle_depth_capture+0x8ace>
    bf7c:	00 00 
    bf7e:	66 41 0f 72 d2 08    	psrld  $0x8,%xmm10
    bf84:	41 0f 59 f7          	mulps  %xmm15,%xmm6
    bf88:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    bf8d:	41 0f 59 e6          	mulps  %xmm14,%xmm4
    bf91:	0f 58 e6             	addps  %xmm6,%xmm4
    bf94:	66 0f 6f f3          	movdqa %xmm3,%xmm6
    bf98:	66 41 0f db dc       	pand   %xmm12,%xmm3
    bf9d:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
    bfa0:	0f 59 df             	mulps  %xmm7,%xmm3
    bfa3:	66 0f 72 d6 08       	psrld  $0x8,%xmm6
    bfa8:	41 0f 59 e3          	mulps  %xmm11,%xmm4
    bfac:	0f 58 cb             	addps  %xmm3,%xmm1
    bfaf:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
    bfb4:	66 45 0f db d4       	pand   %xmm12,%xmm10
    bfb9:	66 0f 72 d3 08       	psrld  $0x8,%xmm3
    bfbe:	45 0f 5b d2          	cvtdq2ps %xmm10,%xmm10
    bfc2:	41 0f 29 65 00       	movaps %xmm4,0x0(%r13)
    bfc7:	44 0f 59 d7          	mulps  %xmm7,%xmm10
    bfcb:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    bfcf:	66 41 0f db d4       	pand   %xmm12,%xmm2
    bfd4:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    bfd7:	41 0f 59 d1          	mulps  %xmm9,%xmm2
    bfdb:	66 0f 72 d4 08       	psrld  $0x8,%xmm4
    bfe0:	0f 29 9c 24 f0 01 00 	movaps %xmm3,0x1f0(%rsp)
    bfe7:	00 
    bfe8:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    bfec:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
    bff1:	66 41 0f db dc       	pand   %xmm12,%xmm3
    bff6:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
    bff9:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    bffd:	0f 58 c2             	addps  %xmm2,%xmm0
    c000:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
    c005:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    c00a:	66 41 0f db d4       	pand   %xmm12,%xmm2
    c00f:	41 0f 59 c7          	mulps  %xmm15,%xmm0
    c013:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    c016:	0f 58 c1             	addps  %xmm1,%xmm0
    c019:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    c01d:	66 41 0f db f4       	pand   %xmm12,%xmm6
    c022:	0f 5b f6             	cvtdq2ps %xmm6,%xmm6
    c025:	0f 59 f7             	mulps  %xmm7,%xmm6
    c028:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
    c02d:	66 41 0f db cc       	pand   %xmm12,%xmm1
    c032:	41 0f 59 c3          	mulps  %xmm11,%xmm0
    c036:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    c039:	0f 58 de             	addps  %xmm6,%xmm3
    c03c:	41 0f 29 45 10       	movaps %xmm0,0x10(%r13)
    c041:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    c045:	66 41 0f db e4       	pand   %xmm12,%xmm4
    c04a:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
    c04d:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    c051:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    c056:	41 0f 59 de          	mulps  %xmm14,%xmm3
    c05a:	66 41 0f db c4       	pand   %xmm12,%xmm0
    c05f:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    c062:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    c066:	44 0f 59 ca          	mulps  %xmm2,%xmm9
    c06a:	41 0f 58 e2          	addps  %xmm10,%xmm4
    c06e:	41 0f 59 e7          	mulps  %xmm15,%xmm4
    c072:	0f 58 dc             	addps  %xmm4,%xmm3
    c075:	41 0f 59 db          	mulps  %xmm11,%xmm3
    c079:	41 0f 29 5d 20       	movaps %xmm3,0x20(%r13)
    c07e:	66 0f 6f 9c 24 f0 01 	movdqa 0x1f0(%rsp),%xmm3
    c085:	00 00 
    c087:	66 41 0f db dc       	pand   %xmm12,%xmm3
    c08c:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
    c08f:	0f 59 df             	mulps  %xmm7,%xmm3
    c092:	0f 59 f9             	mulps  %xmm1,%xmm7
    c095:	41 0f 28 c9          	movaps %xmm9,%xmm1
    c099:	0f 58 c3             	addps  %xmm3,%xmm0
    c09c:	0f 58 cf             	addps  %xmm7,%xmm1
    c09f:	41 0f 59 c7          	mulps  %xmm15,%xmm0
    c0a3:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    c0a7:	0f 58 c1             	addps  %xmm1,%xmm0
    c0aa:	41 0f 59 c3          	mulps  %xmm11,%xmm0
    c0ae:	41 0f 29 45 30       	movaps %xmm0,0x30(%r13)
    c0b3:	e9 25 aa ff ff       	jmp    6add <sg_raster_triangle_depth_capture+0x362d>
    c0b8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c0bc:	8b b4 24 b0 01 00 00 	mov    0x1b0(%rsp),%esi
    c0c3:	48 8b bc 24 e0 04 00 	mov    0x4e0(%rsp),%rdi
    c0ca:	00 
    c0cb:	48 8d 94 24 20 03 00 	lea    0x320(%rsp),%rdx
    c0d2:	00 
    c0d3:	0f 29 84 24 20 03 00 	movaps %xmm0,0x320(%rsp)
    c0da:	00 
    c0db:	0f 29 84 24 30 03 00 	movaps %xmm0,0x330(%rsp)
    c0e2:	00 
    c0e3:	0f 29 84 24 40 03 00 	movaps %xmm0,0x340(%rsp)
    c0ea:	00 
    c0eb:	0f 29 84 24 50 03 00 	movaps %xmm0,0x350(%rsp)
    c0f2:	00 
    c0f3:	41 0f 28 c1          	movaps %xmm9,%xmm0
    c0f7:	44 89 8c 24 28 02 00 	mov    %r9d,0x228(%rsp)
    c0fe:	00 
    c0ff:	f3 0f 11 b4 24 10 02 	movss  %xmm6,0x210(%rsp)
    c106:	00 00 
    c108:	0f 29 bc 24 00 02 00 	movaps %xmm7,0x200(%rsp)
    c10f:	00 
    c110:	0f 29 a4 24 f0 01 00 	movaps %xmm4,0x1f0(%rsp)
    c117:	00 
    c118:	44 0f 29 a4 24 e0 01 	movaps %xmm12,0x1e0(%rsp)
    c11f:	00 00 
    c121:	f3 44 0f 11 94 24 d0 	movss  %xmm10,0x1d0(%rsp)
    c128:	01 00 00 
    c12b:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    c132:	01 00 00 
    c135:	0f 29 9c 24 a0 01 00 	movaps %xmm3,0x1a0(%rsp)
    c13c:	00 
    c13d:	e8 00 00 00 00       	call   c142 <sg_raster_triangle_depth_capture+0x8c92>
    c142:	48 8b 84 24 e0 04 00 	mov    0x4e0(%rsp),%rax
    c149:	00 
    c14a:	0f 28 8c 24 20 03 00 	movaps 0x320(%rsp),%xmm1
    c151:	00 
    c152:	0f 28 84 24 30 03 00 	movaps 0x330(%rsp),%xmm0
    c159:	00 
    c15a:	0f 28 ac 24 40 03 00 	movaps 0x340(%rsp),%xmm5
    c161:	00 
    c162:	0f 28 94 24 50 03 00 	movaps 0x350(%rsp),%xmm2
    c169:	00 
    c16a:	8b b0 64 01 00 00    	mov    0x164(%rax),%esi
    c170:	0f 28 9c 24 a0 01 00 	movaps 0x1a0(%rsp),%xmm3
    c177:	00 
    c178:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    c17f:	01 00 00 
    c182:	0f 28 a4 24 f0 01 00 	movaps 0x1f0(%rsp),%xmm4
    c189:	00 
    c18a:	0f 28 bc 24 00 02 00 	movaps 0x200(%rsp),%xmm7
    c191:	00 
    c192:	f3 44 0f 10 94 24 d0 	movss  0x1d0(%rsp),%xmm10
    c199:	01 00 00 
    c19c:	44 8b 8c 24 28 02 00 	mov    0x228(%rsp),%r9d
    c1a3:	00 
    c1a4:	44 0f 28 a4 24 e0 01 	movaps 0x1e0(%rsp),%xmm12
    c1ab:	00 00 
    c1ad:	f3 0f 10 b4 24 10 02 	movss  0x210(%rsp),%xmm6
    c1b4:	00 00 
    c1b6:	e9 a0 e7 ff ff       	jmp    a95b <sg_raster_triangle_depth_capture+0x74ab>
    c1bb:	45 31 ed             	xor    %r13d,%r13d
    c1be:	e9 94 d6 ff ff       	jmp    9857 <sg_raster_triangle_depth_capture+0x63a7>
    c1c3:	45 31 ed             	xor    %r13d,%r13d
    c1c6:	e9 ee d3 ff ff       	jmp    95b9 <sg_raster_triangle_depth_capture+0x6109>
    c1cb:	45 31 ed             	xor    %r13d,%r13d
    c1ce:	e9 4f d4 ff ff       	jmp    9622 <sg_raster_triangle_depth_capture+0x6172>
    c1d3:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c1d7:	0f 28 d8             	movaps %xmm0,%xmm3
    c1da:	0f c2 da 01          	cmpltps %xmm2,%xmm3
    c1de:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c1e2:	66 0f 66 d3          	pcmpgtd %xmm3,%xmm2
    c1e6:	0f 55 d0             	andnps %xmm0,%xmm2
    c1e9:	0f 28 c5             	movaps %xmm5,%xmm0
    c1ec:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    c1f0:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    c1f5:	e9 f8 f8 ff ff       	jmp    baf2 <sg_raster_triangle_depth_capture+0x8642>
    c1fa:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c1fe:	0f 28 c1             	movaps %xmm1,%xmm0
    c201:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    c205:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c209:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    c20d:	0f 28 c5             	movaps %xmm5,%xmm0
    c210:	0f 55 d1             	andnps %xmm1,%xmm2
    c213:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    c217:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    c21c:	e9 1d f9 ff ff       	jmp    bb3e <sg_raster_triangle_depth_capture+0x868e>
    c221:	45 31 ed             	xor    %r13d,%r13d
    c224:	e9 92 d6 ff ff       	jmp    98bb <sg_raster_triangle_depth_capture+0x640b>
    c229:	45 31 ed             	xor    %r13d,%r13d
    c22c:	e9 53 d1 ff ff       	jmp    9384 <sg_raster_triangle_depth_capture+0x5ed4>
    c231:	45 31 ed             	xor    %r13d,%r13d
    c234:	e9 3a db ff ff       	jmp    9d73 <sg_raster_triangle_depth_capture+0x68c3>
    c239:	45 31 ed             	xor    %r13d,%r13d
    c23c:	e9 fd d8 ff ff       	jmp    9b3e <sg_raster_triangle_depth_capture+0x668e>
    c241:	45 31 ed             	xor    %r13d,%r13d
    c244:	e9 8c d8 ff ff       	jmp    9ad5 <sg_raster_triangle_depth_capture+0x6625>
    c249:	8b 52 18             	mov    0x18(%rdx),%edx
    c24c:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c250:	f3 0f 2a d7          	cvtsi2ss %edi,%xmm2
    c254:	81 fa 00 29 00 00    	cmp    $0x2900,%edx
    c25a:	0f 94 c1             	sete   %cl
    c25d:	81 fa 2f 81 00 00    	cmp    $0x812f,%edx
    c263:	0f 94 c2             	sete   %dl
    c266:	44 0f 28 c2          	movaps %xmm2,%xmm8
    c26a:	08 d1                	or     %dl,%cl
    c26c:	89 cb                	mov    %ecx,%ebx
    c26e:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    c273:	0f 85 67 10 00 00    	jne    d2e0 <sg_raster_triangle_depth_capture+0x9e30>
    c279:	41 0f 28 d1          	movaps %xmm9,%xmm2
    c27d:	66 41 0f 3a 08 c1 01 	roundps $0x1,%xmm9,%xmm0
    c284:	0f 5c d0             	subps  %xmm0,%xmm2
    c287:	48 8b 94 24 e0 04 00 	mov    0x4e0(%rsp),%rdx
    c28e:	00 
    c28f:	45 0f 28 e8          	movaps %xmm8,%xmm13
    c293:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    c298:	f3 45 0f 2a c0       	cvtsi2ss %r8d,%xmm8
    c29d:	44 0f 59 ea          	mulps  %xmm2,%xmm13
    c2a1:	8b 52 1c             	mov    0x1c(%rdx),%edx
    c2a4:	81 fa 00 29 00 00    	cmp    $0x2900,%edx
    c2aa:	0f 94 c1             	sete   %cl
    c2ad:	81 fa 2f 81 00 00    	cmp    $0x812f,%edx
    c2b3:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    c2b8:	0f 94 c2             	sete   %dl
    c2bb:	08 d1                	or     %dl,%cl
    c2bd:	41 89 cb             	mov    %ecx,%r11d
    c2c0:	0f 85 41 10 00 00    	jne    d307 <sg_raster_triangle_depth_capture+0x9e57>
    c2c6:	0f 28 d1             	movaps %xmm1,%xmm2
    c2c9:	66 0f 3a 08 c1 01    	roundps $0x1,%xmm1,%xmm0
    c2cf:	0f 5c d0             	subps  %xmm0,%xmm2
    c2d2:	41 0f 28 e8          	movaps %xmm8,%xmm5
    c2d6:	48 8b 94 24 e0 04 00 	mov    0x4e0(%rsp),%rdx
    c2dd:	00 
    c2de:	0f 59 ea             	mulps  %xmm2,%xmm5
    c2e1:	44 8b 52 14          	mov    0x14(%rdx),%r10d
    c2e5:	0f 29 ac 24 c0 01 00 	movaps %xmm5,0x1c0(%rsp)
    c2ec:	00 
    c2ed:	41 81 fa 00 26 00 00 	cmp    $0x2600,%r10d
    c2f4:	74 1f                	je     c315 <sg_raster_triangle_depth_capture+0x8e65>
    c2f6:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # c2ff <sg_raster_triangle_depth_capture+0x8e4f>
    c2fd:	00 00 
    c2ff:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    c304:	45 0f 58 ee          	addps  %xmm14,%xmm13
    c308:	44 0f 58 f5          	addps  %xmm5,%xmm14
    c30c:	44 0f 29 b4 24 c0 01 	movaps %xmm14,0x1c0(%rsp)
    c313:	00 00 
    c315:	48 8b 94 24 e0 04 00 	mov    0x4e0(%rsp),%rdx
    c31c:	00 
    c31d:	66 41 0f 3a 08 ed 01 	roundps $0x1,%xmm13,%xmm5
    c324:	f3 0f 5b d5          	cvttps2dq %xmm5,%xmm2
    c328:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
    c32f:	00 
    c330:	66 0f 3a 08 8c 24 c0 	roundps $0x1,0x1c0(%rsp),%xmm1
    c337:	01 00 00 01 
    c33b:	0f 29 8c 24 f0 01 00 	movaps %xmm1,0x1f0(%rsp)
    c342:	00 
    c343:	f3 0f 5b c9          	cvttps2dq %xmm1,%xmm1
    c347:	8b 4a 38             	mov    0x38(%rdx),%ecx
    c34a:	8d 57 ff             	lea    -0x1(%rdi),%edx
    c34d:	66 0f 6e ea          	movd   %edx,%xmm5
    c351:	66 44 0f 70 f5 00    	pshufd $0x0,%xmm5,%xmm14
    c357:	66 0f 6e ef          	movd   %edi,%xmm5
    c35b:	66 44 0f 70 c5 00    	pshufd $0x0,%xmm5,%xmm8
    c361:	84 db                	test   %bl,%bl
    c363:	0f 85 13 15 00 00    	jne    d87c <sg_raster_triangle_depth_capture+0xa3cc>
    c369:	85 c9                	test   %ecx,%ecx
    c36b:	0f 85 f9 14 00 00    	jne    d86a <sg_raster_triangle_depth_capture+0xa3ba>
    c371:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c375:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    c379:	66 0f 66 c2          	pcmpgtd %xmm2,%xmm0
    c37d:	66 41 0f 66 ee       	pcmpgtd %xmm14,%xmm5
    c382:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
    c387:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    c38b:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
    c390:	66 41 0f fa c0       	psubd  %xmm8,%xmm0
    c395:	66 44 0f df fa       	pandn  %xmm2,%xmm15
    c39a:	66 0f db c5          	pand   %xmm5,%xmm0
    c39e:	66 41 0f 6f e9       	movdqa %xmm9,%xmm5
    c3a3:	66 41 0f eb c7       	por    %xmm15,%xmm0
    c3a8:	66 0f df e8          	pandn  %xmm0,%xmm5
    c3ac:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    c3b0:	66 41 0f fe c0       	paddd  %xmm8,%xmm0
    c3b5:	66 41 0f db c1       	pand   %xmm9,%xmm0
    c3ba:	66 0f eb c5          	por    %xmm5,%xmm0
    c3be:	48 8b bc 24 e0 04 00 	mov    0x4e0(%rsp),%rdi
    c3c5:	00 
    c3c6:	8b 57 3c             	mov    0x3c(%rdi),%edx
    c3c9:	41 8d 78 ff          	lea    -0x1(%r8),%edi
    c3cd:	66 0f 6e ef          	movd   %edi,%xmm5
    c3d1:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
    c3d6:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    c3dd:	00 
    c3de:	45 84 db             	test   %r11b,%r11b
    c3e1:	0f 85 6b 14 00 00    	jne    d852 <sg_raster_triangle_depth_capture+0xa3a2>
    c3e7:	85 d2                	test   %edx,%edx
    c3e9:	0f 85 51 14 00 00    	jne    d840 <sg_raster_triangle_depth_capture+0xa390>
    c3ef:	66 0f ef ed          	pxor   %xmm5,%xmm5
    c3f3:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
    c3f8:	66 45 0f 6e f8       	movd   %r8d,%xmm15
    c3fd:	66 44 0f 66 8c 24 a0 	pcmpgtd 0x1a0(%rsp),%xmm9
    c404:	01 00 00 
    c407:	66 0f 66 e9          	pcmpgtd %xmm1,%xmm5
    c40b:	0f 29 ac 24 00 02 00 	movaps %xmm5,0x200(%rsp)
    c412:	00 
    c413:	66 41 0f 6f e9       	movdqa %xmm9,%xmm5
    c418:	66 0f df e9          	pandn  %xmm1,%xmm5
    c41c:	0f 29 ac 24 10 02 00 	movaps %xmm5,0x210(%rsp)
    c423:	00 
    c424:	66 41 0f 70 ef 00    	pshufd $0x0,%xmm15,%xmm5
    c42a:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
    c42f:	66 44 0f fa fd       	psubd  %xmm5,%xmm15
    c434:	0f 29 ac 24 d0 01 00 	movaps %xmm5,0x1d0(%rsp)
    c43b:	00 
    c43c:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
    c441:	66 44 0f 6f bc 24 00 	movdqa 0x200(%rsp),%xmm15
    c448:	02 00 00 
    c44b:	66 41 0f db e9       	pand   %xmm9,%xmm5
    c450:	66 0f eb ac 24 10 02 	por    0x210(%rsp),%xmm5
    c457:	00 00 
    c459:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
    c45e:	66 44 0f df cd       	pandn  %xmm5,%xmm9
    c463:	66 0f 6f ac 24 d0 01 	movdqa 0x1d0(%rsp),%xmm5
    c46a:	00 00 
    c46c:	66 0f fe e9          	paddd  %xmm1,%xmm5
    c470:	66 41 0f db ef       	pand   %xmm15,%xmm5
    c475:	66 41 0f eb e9       	por    %xmm9,%xmm5
    c47a:	66 41 0f 38 40 e8    	pmulld %xmm8,%xmm5
    c480:	0f 29 84 24 d0 01 00 	movaps %xmm0,0x1d0(%rsp)
    c487:	00 
    c488:	66 0f fe c5          	paddd  %xmm5,%xmm0
    c48c:	0f 29 ac 24 00 02 00 	movaps %xmm5,0x200(%rsp)
    c493:	00 
    c494:	0f 29 84 24 a0 03 00 	movaps %xmm0,0x3a0(%rsp)
    c49b:	00 
    c49c:	41 81 fa 00 26 00 00 	cmp    $0x2600,%r10d
    c4a3:	0f 84 5a 12 00 00    	je     d703 <sg_raster_triangle_depth_capture+0xa253>
    c4a9:	bf 01 00 00 00       	mov    $0x1,%edi
    c4ae:	66 0f 6e ef          	movd   %edi,%xmm5
    c4b2:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
    c4b7:	66 0f fe ea          	paddd  %xmm2,%xmm5
    c4bb:	84 db                	test   %bl,%bl
    c4bd:	0f 85 28 12 00 00    	jne    d6eb <sg_raster_triangle_depth_capture+0xa23b>
    c4c3:	85 c9                	test   %ecx,%ecx
    c4c5:	0f 85 0e 12 00 00    	jne    d6d9 <sg_raster_triangle_depth_capture+0xa229>
    c4cb:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c4cf:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
    c4d4:	66 0f 66 d5          	pcmpgtd %xmm5,%xmm2
    c4d8:	66 45 0f 66 ce       	pcmpgtd %xmm14,%xmm9
    c4dd:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
    c4e2:	66 0f 6f d5          	movdqa %xmm5,%xmm2
    c4e6:	66 45 0f 6f f1       	movdqa %xmm9,%xmm14
    c4eb:	66 41 0f fa d0       	psubd  %xmm8,%xmm2
    c4f0:	66 44 0f df f5       	pandn  %xmm5,%xmm14
    c4f5:	66 41 0f fe e8       	paddd  %xmm8,%xmm5
    c4fa:	66 41 0f db d1       	pand   %xmm9,%xmm2
    c4ff:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
    c504:	66 41 0f db ef       	pand   %xmm15,%xmm5
    c509:	66 41 0f eb d6       	por    %xmm14,%xmm2
    c50e:	66 44 0f df ca       	pandn  %xmm2,%xmm9
    c513:	66 41 0f eb e9       	por    %xmm9,%xmm5
    c518:	bf 01 00 00 00       	mov    $0x1,%edi
    c51d:	66 0f 6e d7          	movd   %edi,%xmm2
    c521:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    c526:	66 0f fe ca          	paddd  %xmm2,%xmm1
    c52a:	45 84 db             	test   %r11b,%r11b
    c52d:	0f 85 8e 11 00 00    	jne    d6c1 <sg_raster_triangle_depth_capture+0xa211>
    c533:	85 d2                	test   %edx,%edx
    c535:	0f 85 9a 15 00 00    	jne    dad5 <sg_raster_triangle_depth_capture+0xa625>
    c53b:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c53f:	66 45 0f 6e f8       	movd   %r8d,%xmm15
    c544:	66 0f 66 d1          	pcmpgtd %xmm1,%xmm2
    c548:	66 45 0f 70 ff 00    	pshufd $0x0,%xmm15,%xmm15
    c54e:	66 44 0f 6f f2       	movdqa %xmm2,%xmm14
    c553:	66 0f 6f d1          	movdqa %xmm1,%xmm2
    c557:	66 0f 66 94 24 a0 01 	pcmpgtd 0x1a0(%rsp),%xmm2
    c55e:	00 00 
    c560:	66 44 0f 6f ca       	movdqa %xmm2,%xmm9
    c565:	66 44 0f df c9       	pandn  %xmm1,%xmm9
    c56a:	44 0f 29 8c 24 a0 01 	movaps %xmm9,0x1a0(%rsp)
    c571:	00 00 
    c573:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
    c578:	66 41 0f fe cf       	paddd  %xmm15,%xmm1
    c57d:	66 45 0f fa cf       	psubd  %xmm15,%xmm9
    c582:	66 41 0f db ce       	pand   %xmm14,%xmm1
    c587:	66 41 0f db d1       	pand   %xmm9,%xmm2
    c58c:	66 45 0f 6f ce       	movdqa %xmm14,%xmm9
    c591:	66 0f eb 94 24 a0 01 	por    0x1a0(%rsp),%xmm2
    c598:	00 00 
    c59a:	66 44 0f df ca       	pandn  %xmm2,%xmm9
    c59f:	66 41 0f eb c9       	por    %xmm9,%xmm1
    c5a4:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    c5a9:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
    c5b0:	0f 
    c5b1:	66 0f 6f 94 24 00 02 	movdqa 0x200(%rsp),%xmm2
    c5b8:	00 00 
    c5ba:	66 44 0f 38 40 c9    	pmulld %xmm1,%xmm9
    c5c0:	66 0f 6f 8c 24 d0 01 	movdqa 0x1d0(%rsp),%xmm1
    c5c7:	00 00 
    c5c9:	66 0f fe d5          	paddd  %xmm5,%xmm2
    c5cd:	66 41 0f fe c9       	paddd  %xmm9,%xmm1
    c5d2:	66 44 0f fe cd       	paddd  %xmm5,%xmm9
    c5d7:	0f 84 88 13 00 00    	je     d965 <sg_raster_triangle_depth_capture+0xa4b5>
    c5dd:	45 85 c9             	test   %r9d,%r9d
    c5e0:	0f 84 18 10 00 00    	je     d5fe <sg_raster_triangle_depth_capture+0xa14e>
    c5e6:	48 63 94 24 a0 03 00 	movslq 0x3a0(%rsp),%rdx
    c5ed:	00 
    c5ee:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    c5f5:	00 
    c5f6:	66 0f 6e 04 90       	movd   (%rax,%rdx,4),%xmm0
    c5fb:	0f 85 93 12 00 00    	jne    d894 <sg_raster_triangle_depth_capture+0xa3e4>
    c601:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    c608:	00 
    c609:	0f 85 83 15 00 00    	jne    db92 <sg_raster_triangle_depth_capture+0xa6e2>
    c60f:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c616:	00 
    c617:	0f 85 47 15 00 00    	jne    db64 <sg_raster_triangle_depth_capture+0xa6b4>
    c61d:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
    c623:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    c628:	66 0f 7e d2          	movd   %xmm2,%edx
    c62c:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    c633:	00 
    c634:	48 63 d2             	movslq %edx,%rdx
    c637:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
    c63c:	0f 85 37 0d 00 00    	jne    d379 <sg_raster_triangle_depth_capture+0x9ec9>
    c642:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    c649:	00 
    c64a:	0f 85 1d 10 00 00    	jne    d66d <sg_raster_triangle_depth_capture+0xa1bd>
    c650:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c657:	00 
    c658:	0f 85 c3 0d 00 00    	jne    d421 <sg_raster_triangle_depth_capture+0x9f71>
    c65e:	66 0f 3a 21 ed 0e    	insertps $0xe,%xmm5,%xmm5
    c664:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    c66b:	00 
    c66c:	45 85 c9             	test   %r9d,%r9d
    c66f:	0f 85 47 0d 00 00    	jne    d3bc <sg_raster_triangle_depth_capture+0x9f0c>
    c675:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    c67b:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c67f:	45 31 c0             	xor    %r8d,%r8d
    c682:	31 ff                	xor    %edi,%edi
    c684:	48 63 d2             	movslq %edx,%rdx
    c687:	31 c9                	xor    %ecx,%ecx
    c689:	66 0f 3a 22 14 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm2
    c690:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    c694:	66 44 0f 3a 16 ca 03 	pextrd $0x3,%xmm9,%edx
    c69b:	48 63 d2             	movslq %edx,%rdx
    c69e:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    c6a1:	66 45 0f 6e c8       	movd   %r8d,%xmm9
    c6a6:	66 44 0f 6e f1       	movd   %ecx,%xmm14
    c6ab:	66 44 0f 3a 22 ca 01 	pinsrd $0x1,%edx,%xmm9
    c6b2:	66 44 0f 3a 22 f7 01 	pinsrd $0x1,%edi,%xmm14
    c6b9:	66 45 0f 6c f1       	punpcklqdq %xmm9,%xmm14
    c6be:	44 0f 29 b4 24 d0 01 	movaps %xmm14,0x1d0(%rsp)
    c6c5:	00 00 
    c6c7:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    c6cc:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    c6d1:	b8 00 01 00 00       	mov    $0x100,%eax
    c6d6:	f3 44 0f 10 3d 00 00 	movss  0x0(%rip),%xmm15        # c6df <sg_raster_triangle_depth_capture+0x922f>
    c6dd:	00 00 
    c6df:	44 0f 5c ac 24 e0 01 	subps  0x1e0(%rsp),%xmm13
    c6e6:	00 00 
    c6e8:	66 41 0f 72 d6 08    	psrld  $0x8,%xmm14
    c6ee:	45 0f c6 ff 00       	shufps $0x0,%xmm15,%xmm15
    c6f3:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    c6f8:	45 0f 28 cd          	movaps %xmm13,%xmm9
    c6fc:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # c705 <sg_raster_triangle_depth_capture+0x9255>
    c703:	00 00 
    c705:	45 0f 59 cf          	mulps  %xmm15,%xmm9
    c709:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
    c70e:	45 0f 58 cd          	addps  %xmm13,%xmm9
    c712:	f3 45 0f 5b c9       	cvttps2dq %xmm9,%xmm9
    c717:	44 0f 29 8c 24 e0 01 	movaps %xmm9,0x1e0(%rsp)
    c71e:	00 00 
    c720:	44 0f 28 8c 24 c0 01 	movaps 0x1c0(%rsp),%xmm9
    c727:	00 00 
    c729:	44 0f 5c 8c 24 f0 01 	subps  0x1f0(%rsp),%xmm9
    c730:	00 00 
    c732:	44 0f 29 b4 24 f0 01 	movaps %xmm14,0x1f0(%rsp)
    c739:	00 00 
    c73b:	45 0f 59 cf          	mulps  %xmm15,%xmm9
    c73f:	45 0f 58 cd          	addps  %xmm13,%xmm9
    c743:	f3 45 0f 5b f9       	cvttps2dq %xmm9,%xmm15
    c748:	66 44 0f 6e c8       	movd   %eax,%xmm9
    c74d:	b8 ff 00 00 00       	mov    $0xff,%eax
    c752:	44 0f 29 bc 24 b0 01 	movaps %xmm15,0x1b0(%rsp)
    c759:	00 00 
    c75b:	66 44 0f 6f bc 24 e0 	movdqa 0x1e0(%rsp),%xmm15
    c762:	01 00 00 
    c765:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    c76b:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
    c770:	0f 29 94 24 e0 01 00 	movaps %xmm2,0x1e0(%rsp)
    c777:	00 
    c778:	66 0f 6e d0          	movd   %eax,%xmm2
    c77c:	b8 00 80 00 00       	mov    $0x8000,%eax
    c781:	66 45 0f fa ef       	psubd  %xmm15,%xmm13
    c786:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    c78b:	66 44 0f db c2       	pand   %xmm2,%xmm8
    c790:	66 0f db ca          	pand   %xmm2,%xmm1
    c794:	66 45 0f 6b ef       	packssdw %xmm15,%xmm13
    c799:	66 45 0f 6f fd       	movdqa %xmm13,%xmm15
    c79e:	66 41 0f 73 df 08    	psrldq $0x8,%xmm15
    c7a4:	66 45 0f 61 ef       	punpcklwd %xmm15,%xmm13
    c7a9:	66 44 0f 6f bc 24 b0 	movdqa 0x1b0(%rsp),%xmm15
    c7b0:	01 00 00 
    c7b3:	66 45 0f fa cf       	psubd  %xmm15,%xmm9
    c7b8:	44 0f 29 8c 24 c0 01 	movaps %xmm9,0x1c0(%rsp)
    c7bf:	00 00 
    c7c1:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
    c7c6:	66 0f 6f 84 24 a0 01 	movdqa 0x1a0(%rsp),%xmm0
    c7cd:	00 00 
    c7cf:	66 0f db c2          	pand   %xmm2,%xmm0
    c7d3:	66 44 0f 6b c0       	packssdw %xmm0,%xmm8
    c7d8:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
    c7dd:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
    c7e2:	66 44 0f 61 c0       	punpcklwd %xmm0,%xmm8
    c7e7:	66 0f 6f 84 24 d0 01 	movdqa 0x1d0(%rsp),%xmm0
    c7ee:	00 00 
    c7f0:	66 45 0f f5 c5       	pmaddwd %xmm13,%xmm8
    c7f5:	66 44 0f 38 40 84 24 	pmulld 0x1c0(%rsp),%xmm8
    c7fc:	c0 01 00 00 
    c800:	66 0f db c2          	pand   %xmm2,%xmm0
    c804:	66 0f 6b c8          	packssdw %xmm0,%xmm1
    c808:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    c80c:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
    c811:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    c815:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    c819:	66 0f 6e c8          	movd   %eax,%xmm1
    c81d:	66 41 0f f5 c5       	pmaddwd %xmm13,%xmm0
    c822:	66 44 0f 70 f1 00    	pshufd $0x0,%xmm1,%xmm14
    c828:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
    c82d:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
    c832:	66 41 0f 38 40 c7    	pmulld %xmm15,%xmm0
    c838:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
    c83e:	66 44 0f db ca       	pand   %xmm2,%xmm9
    c843:	66 45 0f 6f f8       	movdqa %xmm8,%xmm15
    c848:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    c84d:	66 0f db ea          	pand   %xmm2,%xmm5
    c851:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
    c857:	66 41 0f fe c6       	paddd  %xmm14,%xmm0
    c85c:	66 0f fe c8          	paddd  %xmm0,%xmm1
    c860:	66 0f 6f 84 24 e0 01 	movdqa 0x1e0(%rsp),%xmm0
    c867:	00 00 
    c869:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
    c86e:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    c873:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    c876:	0f 29 84 24 a0 01 00 	movaps %xmm0,0x1a0(%rsp)
    c87d:	00 
    c87e:	0f 59 0d 00 00 00 00 	mulps  0x0(%rip),%xmm1        # c885 <sg_raster_triangle_depth_capture+0x93d5>
    c885:	66 0f 6f 84 24 f0 01 	movdqa 0x1f0(%rsp),%xmm0
    c88c:	00 00 
    c88e:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    c893:	0f 29 84 24 d0 01 00 	movaps %xmm0,0x1d0(%rsp)
    c89a:	00 
    c89b:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    c8a0:	66 0f 6b c5          	packssdw %xmm5,%xmm0
    c8a4:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    c8a8:	66 0f 73 dd 08       	psrldq $0x8,%xmm5
    c8ad:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
    c8b1:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    c8b5:	66 41 0f f5 ed       	pmaddwd %xmm13,%xmm5
    c8ba:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
    c8bf:	66 0f 6f ac 24 e0 01 	movdqa 0x1e0(%rsp),%xmm5
    c8c6:	00 00 
    c8c8:	66 0f db ea          	pand   %xmm2,%xmm5
    c8cc:	66 0f 6f c5          	movdqa %xmm5,%xmm0
    c8d0:	66 0f 6f ac 24 f0 01 	movdqa 0x1f0(%rsp),%xmm5
    c8d7:	00 00 
    c8d9:	66 0f db ea          	pand   %xmm2,%xmm5
    c8dd:	66 0f 6b c5          	packssdw %xmm5,%xmm0
    c8e1:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    c8e5:	66 0f 73 dd 08       	psrldq $0x8,%xmm5
    c8ea:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
    c8ee:	66 0f 6f ac 24 c0 01 	movdqa 0x1c0(%rsp),%xmm5
    c8f5:	00 00 
    c8f7:	66 41 0f f5 c5       	pmaddwd %xmm13,%xmm0
    c8fc:	66 0f 38 40 84 24 b0 	pmulld 0x1b0(%rsp),%xmm0
    c903:	01 00 00 
    c906:	66 41 0f fe c6       	paddd  %xmm14,%xmm0
    c90b:	66 41 0f 38 40 e9    	pmulld %xmm9,%xmm5
    c911:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    c916:	66 44 0f db c2       	pand   %xmm2,%xmm8
    c91b:	66 41 0f 72 d1 08    	psrld  $0x8,%xmm9
    c921:	66 44 0f db ca       	pand   %xmm2,%xmm9
    c926:	66 0f fe c5          	paddd  %xmm5,%xmm0
    c92a:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
    c92f:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    c934:	66 0f 72 d0 10       	psrld  $0x10,%xmm0
    c939:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
    c940:	00 
    c941:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    c944:	66 0f 6f ac 24 a0 01 	movdqa 0x1a0(%rsp),%xmm5
    c94b:	00 00 
    c94d:	0f 59 05 00 00 00 00 	mulps  0x0(%rip),%xmm0        # c954 <sg_raster_triangle_depth_capture+0x94a4>
    c954:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    c959:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
    c960:	00 
    c961:	66 0f 6f ac 24 d0 01 	movdqa 0x1d0(%rsp),%xmm5
    c968:	00 00 
    c96a:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    c96f:	0f 29 ac 24 00 02 00 	movaps %xmm5,0x200(%rsp)
    c976:	00 
    c977:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
    c97c:	66 0f db ea          	pand   %xmm2,%xmm5
    c980:	66 41 0f 6b e8       	packssdw %xmm8,%xmm5
    c985:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    c98a:	66 41 0f 73 d8 08    	psrldq $0x8,%xmm8
    c990:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
    c995:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    c99a:	66 45 0f f5 c5       	pmaddwd %xmm13,%xmm8
    c99f:	66 45 0f 6f f8       	movdqa %xmm8,%xmm15
    c9a4:	66 44 0f 6f 84 24 a0 	movdqa 0x1a0(%rsp),%xmm8
    c9ab:	01 00 00 
    c9ae:	66 44 0f db c2       	pand   %xmm2,%xmm8
    c9b3:	66 41 0f 6f e8       	movdqa %xmm8,%xmm5
    c9b8:	66 44 0f 6f 84 24 d0 	movdqa 0x1d0(%rsp),%xmm8
    c9bf:	01 00 00 
    c9c2:	66 44 0f db c2       	pand   %xmm2,%xmm8
    c9c7:	66 41 0f 6b e8       	packssdw %xmm8,%xmm5
    c9cc:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    c9d1:	66 41 0f 73 d8 08    	psrldq $0x8,%xmm8
    c9d7:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
    c9dc:	66 41 0f f5 ed       	pmaddwd %xmm13,%xmm5
    c9e1:	66 0f 38 40 ac 24 b0 	pmulld 0x1b0(%rsp),%xmm5
    c9e8:	01 00 00 
    c9eb:	66 41 0f fe ee       	paddd  %xmm14,%xmm5
    c9f0:	66 44 0f 6f 84 24 e0 	movdqa 0x1e0(%rsp),%xmm8
    c9f7:	01 00 00 
    c9fa:	66 44 0f 38 40 bc 24 	pmulld 0x1c0(%rsp),%xmm15
    ca01:	c0 01 00 00 
    ca05:	66 41 0f fe ef       	paddd  %xmm15,%xmm5
    ca0a:	66 44 0f 6f bc 24 b0 	movdqa 0x1b0(%rsp),%xmm15
    ca11:	01 00 00 
    ca14:	66 44 0f db c2       	pand   %xmm2,%xmm8
    ca19:	66 0f 72 d5 10       	psrld  $0x10,%xmm5
    ca1e:	66 45 0f 6b c1       	packssdw %xmm9,%xmm8
    ca23:	0f 5b ed             	cvtdq2ps %xmm5,%xmm5
    ca26:	0f 59 2d 00 00 00 00 	mulps  0x0(%rip),%xmm5        # ca2d <sg_raster_triangle_depth_capture+0x957d>
    ca2d:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    ca32:	66 41 0f 73 d9 08    	psrldq $0x8,%xmm9
    ca38:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
    ca3d:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    ca42:	66 44 0f 6f 84 24 f0 	movdqa 0x1f0(%rsp),%xmm8
    ca49:	01 00 00 
    ca4c:	66 45 0f f5 cd       	pmaddwd %xmm13,%xmm9
    ca51:	66 44 0f 38 40 8c 24 	pmulld 0x1c0(%rsp),%xmm9
    ca58:	c0 01 00 00 
    ca5c:	66 44 0f db c2       	pand   %xmm2,%xmm8
    ca61:	66 0f db 94 24 00 02 	pand   0x200(%rsp),%xmm2
    ca68:	00 00 
    ca6a:	66 44 0f 6b c2       	packssdw %xmm2,%xmm8
    ca6f:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
    ca74:	66 0f 73 da 08       	psrldq $0x8,%xmm2
    ca79:	66 44 0f 61 c2       	punpcklwd %xmm2,%xmm8
    ca7e:	66 45 0f f5 c5       	pmaddwd %xmm13,%xmm8
    ca83:	66 45 0f 38 40 f8    	pmulld %xmm8,%xmm15
    ca89:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
    ca8e:	66 41 0f fe d6       	paddd  %xmm14,%xmm2
    ca93:	66 41 0f fe d1       	paddd  %xmm9,%xmm2
    ca98:	66 0f 72 d2 10       	psrld  $0x10,%xmm2
    ca9d:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    caa0:	0f 59 15 00 00 00 00 	mulps  0x0(%rip),%xmm2        # caa7 <sg_raster_triangle_depth_capture+0x95f7>
    caa7:	e9 af de ff ff       	jmp    a95b <sg_raster_triangle_depth_capture+0x74ab>
    caac:	66 44 0f 7e ce       	movd   %xmm9,%esi
    cab1:	48 63 f6             	movslq %esi,%rsi
    cab4:	66 0f 6e 04 b2       	movd   (%rdx,%rsi,4),%xmm0
    cab9:	45 85 db             	test   %r11d,%r11d
    cabc:	0f 85 cf 00 00 00    	jne    cb91 <sg_raster_triangle_depth_capture+0x96e1>
    cac2:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    cac9:	00 
    caca:	0f 85 5e 08 00 00    	jne    d32e <sg_raster_triangle_depth_capture+0x9e7e>
    cad0:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    cad7:	00 
    cad8:	0f 85 96 07 00 00    	jne    d274 <sg_raster_triangle_depth_capture+0x9dc4>
    cade:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
    cae4:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    cae9:	66 0f 7e f6          	movd   %xmm6,%esi
    caed:	48 63 f6             	movslq %esi,%rsi
    caf0:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    caf3:	45 85 db             	test   %r11d,%r11d
    caf6:	0f 85 57 07 00 00    	jne    d253 <sg_raster_triangle_depth_capture+0x9da3>
    cafc:	31 ff                	xor    %edi,%edi
    cafe:	31 ed                	xor    %ebp,%ebp
    cb00:	e9 ab f3 ff ff       	jmp    beb0 <sg_raster_triangle_depth_capture+0x8a00>
    cb05:	66 0f ef db          	pxor   %xmm3,%xmm3
    cb09:	48 63 b4 24 64 03 00 	movslq 0x364(%rsp),%rsi
    cb10:	00 
    cb11:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    cb14:	8b b4 24 70 01 00 00 	mov    0x170(%rsp),%esi
    cb1b:	85 f6                	test   %esi,%esi
    cb1d:	0f 85 0d 02 00 00    	jne    cd30 <sg_raster_triangle_depth_capture+0x9880>
    cb23:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    cb2a:	00 
    cb2b:	0f 85 b7 00 00 00    	jne    cbe8 <sg_raster_triangle_depth_capture+0x9738>
    cb31:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
    cb37:	f3 0f 7e db          	movq   %xmm3,%xmm3
    cb3b:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    cb40:	45 85 c0             	test   %r8d,%r8d
    cb43:	0f 85 e5 f2 ff ff    	jne    be2e <sg_raster_triangle_depth_capture+0x897e>
    cb49:	66 0f ef c9          	pxor   %xmm1,%xmm1
    cb4d:	66 0f 3a 16 c6 01    	pextrd $0x1,%xmm0,%esi
    cb53:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    cb5a:	48 63 f6             	movslq %esi,%rsi
    cb5d:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    cb60:	85 ed                	test   %ebp,%ebp
    cb62:	0f 85 ca 00 00 00    	jne    cc32 <sg_raster_triangle_depth_capture+0x9782>
    cb68:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    cb6f:	00 
    cb70:	0f 85 14 04 00 00    	jne    cf8a <sg_raster_triangle_depth_capture+0x9ada>
    cb76:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
    cb7c:	f3 0f 7e c9          	movq   %xmm1,%xmm1
    cb80:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    cb84:	45 85 c0             	test   %r8d,%r8d
    cb87:	0f 85 1f ff ff ff    	jne    caac <sg_raster_triangle_depth_capture+0x95fc>
    cb8d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    cb91:	66 44 0f 3a 16 ce 01 	pextrd $0x1,%xmm9,%esi
    cb98:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    cb9f:	48 63 f6             	movslq %esi,%rsi
    cba2:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    cba5:	85 ed                	test   %ebp,%ebp
    cba7:	0f 85 ca 00 00 00    	jne    cc77 <sg_raster_triangle_depth_capture+0x97c7>
    cbad:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    cbb4:	00 
    cbb5:	0f 85 bb 06 00 00    	jne    d276 <sg_raster_triangle_depth_capture+0x9dc6>
    cbbb:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    cbc1:	f3 0f 7e c0          	movq   %xmm0,%xmm0
    cbc5:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    cbca:	45 85 c0             	test   %r8d,%r8d
    cbcd:	0f 85 16 ff ff ff    	jne    cae9 <sg_raster_triangle_depth_capture+0x9639>
    cbd3:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
    cbd9:	31 ff                	xor    %edi,%edi
    cbdb:	48 63 f6             	movslq %esi,%rsi
    cbde:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    cbe1:	31 f6                	xor    %esi,%esi
    cbe3:	e9 c8 f2 ff ff       	jmp    beb0 <sg_raster_triangle_depth_capture+0x8a00>
    cbe8:	31 f6                	xor    %esi,%esi
    cbea:	48 63 bc 24 6c 03 00 	movslq 0x36c(%rsp),%rdi
    cbf1:	00 
    cbf2:	66 0f 6e ce          	movd   %esi,%xmm1
    cbf6:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
    cbfc:	66 0f 3a 22 0c ba 01 	pinsrd $0x1,(%rdx,%rdi,4),%xmm1
    cc03:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
    cc07:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    cc0c:	45 85 c0             	test   %r8d,%r8d
    cc0f:	0f 85 19 f2 ff ff    	jne    be2e <sg_raster_triangle_depth_capture+0x897e>
    cc15:	66 0f ef c9          	pxor   %xmm1,%xmm1
    cc19:	45 85 db             	test   %r11d,%r11d
    cc1c:	0f 85 2b ff ff ff    	jne    cb4d <sg_raster_triangle_depth_capture+0x969d>
    cc22:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    cc29:	00 
    cc2a:	0f 84 3b 03 00 00    	je     cf6b <sg_raster_triangle_depth_capture+0x9abb>
    cc30:	31 ff                	xor    %edi,%edi
    cc32:	66 0f 3a 16 c6 02    	pextrd $0x2,%xmm0,%esi
    cc38:	48 63 f6             	movslq %esi,%rsi
    cc3b:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    cc3e:	8b b4 24 80 01 00 00 	mov    0x180(%rsp),%esi
    cc45:	85 f6                	test   %esi,%esi
    cc47:	0f 85 60 06 00 00    	jne    d2ad <sg_raster_triangle_depth_capture+0x9dfd>
    cc4d:	66 0f 6e c5          	movd   %ebp,%xmm0
    cc51:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
    cc57:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    cc5b:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    cc5f:	45 85 c0             	test   %r8d,%r8d
    cc62:	0f 85 44 fe ff ff    	jne    caac <sg_raster_triangle_depth_capture+0x95fc>
    cc68:	45 85 db             	test   %r11d,%r11d
    cc6b:	0f 85 1c ff ff ff    	jne    cb8d <sg_raster_triangle_depth_capture+0x96dd>
    cc71:	31 ff                	xor    %edi,%edi
    cc73:	66 0f ef c0          	pxor   %xmm0,%xmm0
    cc77:	66 44 0f 3a 16 ce 02 	pextrd $0x2,%xmm9,%esi
    cc7e:	48 63 f6             	movslq %esi,%rsi
    cc81:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    cc84:	8b b4 24 80 01 00 00 	mov    0x180(%rsp),%esi
    cc8b:	85 f6                	test   %esi,%esi
    cc8d:	0f 85 6c 05 00 00    	jne    d1ff <sg_raster_triangle_depth_capture+0x9d4f>
    cc93:	66 0f 6e d5          	movd   %ebp,%xmm2
    cc97:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    cc9d:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    cca1:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    cca6:	45 85 c0             	test   %r8d,%r8d
    cca9:	0f 85 8f 05 00 00    	jne    d23e <sg_raster_triangle_depth_capture+0x9d8e>
    ccaf:	45 85 db             	test   %r11d,%r11d
    ccb2:	0f 84 7d 05 00 00    	je     d235 <sg_raster_triangle_depth_capture+0x9d85>
    ccb8:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
    ccbe:	48 63 f6             	movslq %esi,%rsi
    ccc1:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    ccc4:	31 f6                	xor    %esi,%esi
    ccc6:	66 0f 3a 16 f7 02    	pextrd $0x2,%xmm6,%edi
    cccc:	48 63 ff             	movslq %edi,%rdi
    cccf:	8b 3c ba             	mov    (%rdx,%rdi,4),%edi
    ccd2:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    ccd9:	00 
    ccda:	0f 84 d0 f1 ff ff    	je     beb0 <sg_raster_triangle_depth_capture+0x8a00>
    cce0:	41 89 f9             	mov    %edi,%r9d
    cce3:	e9 a8 f1 ff ff       	jmp    be90 <sg_raster_triangle_depth_capture+0x89e0>
    cce8:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    cced:	66 41 0f 38 3d d9    	pmaxsd %xmm9,%xmm3
    ccf3:	66 0f 38 39 de       	pminsd %xmm6,%xmm3
    ccf8:	e9 c2 f0 ff ff       	jmp    bdbf <sg_raster_triangle_depth_capture+0x890f>
    ccfd:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    cd02:	66 41 0f 38 3d e2    	pmaxsd %xmm10,%xmm4
    cd08:	66 41 0f 38 39 e1    	pminsd %xmm9,%xmm4
    cd0e:	e9 1b f0 ff ff       	jmp    bd2e <sg_raster_triangle_depth_capture+0x887e>
    cd13:	45 85 db             	test   %r11d,%r11d
    cd16:	0f 85 e9 fd ff ff    	jne    cb05 <sg_raster_triangle_depth_capture+0x9655>
    cd1c:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    cd23:	00 
    cd24:	0f 84 29 02 00 00    	je     cf53 <sg_raster_triangle_depth_capture+0x9aa3>
    cd2a:	31 ed                	xor    %ebp,%ebp
    cd2c:	66 0f ef db          	pxor   %xmm3,%xmm3
    cd30:	48 63 b4 24 68 03 00 	movslq 0x368(%rsp),%rsi
    cd37:	00 
    cd38:	8b bc 24 80 01 00 00 	mov    0x180(%rsp),%edi
    cd3f:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    cd42:	85 ff                	test   %edi,%edi
    cd44:	0f 85 a0 fe ff ff    	jne    cbea <sg_raster_triangle_depth_capture+0x973a>
    cd4a:	66 0f 6e ce          	movd   %esi,%xmm1
    cd4e:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
    cd54:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
    cd58:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    cd5d:	45 85 c0             	test   %r8d,%r8d
    cd60:	0f 85 c8 f0 ff ff    	jne    be2e <sg_raster_triangle_depth_capture+0x897e>
    cd66:	45 85 db             	test   %r11d,%r11d
    cd69:	0f 85 da fd ff ff    	jne    cb49 <sg_raster_triangle_depth_capture+0x9699>
    cd6f:	31 ff                	xor    %edi,%edi
    cd71:	66 0f ef c9          	pxor   %xmm1,%xmm1
    cd75:	e9 b8 fe ff ff       	jmp    cc32 <sg_raster_triangle_depth_capture+0x9782>
    cd7a:	bf 01 00 00 00       	mov    $0x1,%edi
    cd7f:	66 0f 7e d6          	movd   %xmm2,%esi
    cd83:	66 0f 6e cf          	movd   %edi,%xmm1
    cd87:	48 63 f6             	movslq %esi,%rsi
    cd8a:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
    cd8f:	66 41 0f fe cf       	paddd  %xmm15,%xmm1
    cd94:	66 0f 76 cc          	pcmpeqd %xmm4,%xmm1
    cd98:	0f 50 f9             	movmskps %xmm1,%edi
    cd9b:	89 bc 24 b0 02 00 00 	mov    %edi,0x2b0(%rsp)
    cda2:	48 8d 3c b2          	lea    (%rdx,%rsi,4),%rdi
    cda6:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
    cdac:	48 63 f6             	movslq %esi,%rsi
    cdaf:	4c 8d 0c b2          	lea    (%rdx,%rsi,4),%r9
    cdb3:	66 0f 3a 16 d6 02    	pextrd $0x2,%xmm2,%esi
    cdb9:	48 63 f6             	movslq %esi,%rsi
    cdbc:	48 8d 2c b2          	lea    (%rdx,%rsi,4),%rbp
    cdc0:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
    cdc6:	48 63 f6             	movslq %esi,%rsi
    cdc9:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    cdcd:	48 89 b4 24 f0 01 00 	mov    %rsi,0x1f0(%rsp)
    cdd4:	00 
    cdd5:	66 44 0f 7e ce       	movd   %xmm9,%esi
    cdda:	48 63 f6             	movslq %esi,%rsi
    cddd:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    cde1:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
    cde8:	00 
    cde9:	66 44 0f 3a 16 ce 01 	pextrd $0x1,%xmm9,%esi
    cdf0:	48 63 f6             	movslq %esi,%rsi
    cdf3:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    cdf7:	48 89 b4 24 10 02 00 	mov    %rsi,0x210(%rsp)
    cdfe:	00 
    cdff:	66 44 0f 3a 16 ce 02 	pextrd $0x2,%xmm9,%esi
    ce06:	48 63 f6             	movslq %esi,%rsi
    ce09:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    ce0d:	48 89 b4 24 28 02 00 	mov    %rsi,0x228(%rsp)
    ce14:	00 
    ce15:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    ce1c:	48 63 f6             	movslq %esi,%rsi
    ce1f:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    ce23:	48 89 b4 24 30 02 00 	mov    %rsi,0x230(%rsp)
    ce2a:	00 
    ce2b:	8b b4 24 b0 02 00 00 	mov    0x2b0(%rsp),%esi
    ce32:	f7 d6                	not    %esi
    ce34:	83 e6 0f             	and    $0xf,%esi
    ce37:	0f 84 2b 03 00 00    	je     d168 <sg_raster_triangle_depth_capture+0x9cb8>
    ce3d:	48 8b b4 24 f0 01 00 	mov    0x1f0(%rsp),%rsi
    ce44:	00 
    ce45:	66 0f 6e 4d 00       	movd   0x0(%rbp),%xmm1
    ce4a:	66 0f 6e 1f          	movd   (%rdi),%xmm3
    ce4e:	66 41 0f 3a 22 19 01 	pinsrd $0x1,(%r9),%xmm3
    ce55:	66 0f 3a 16 c7 02    	pextrd $0x2,%xmm0,%edi
    ce5b:	66 0f 3a 22 0e 01    	pinsrd $0x1,(%rsi),%xmm1
    ce61:	66 0f 7e c6          	movd   %xmm0,%esi
    ce65:	48 63 ff             	movslq %edi,%rdi
    ce68:	4c 63 ce             	movslq %esi,%r9
    ce6b:	66 0f 3a 16 c6 01    	pextrd $0x1,%xmm0,%esi
    ce71:	48 63 ee             	movslq %esi,%rbp
    ce74:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    ce7a:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
    ce7e:	66 0f 6e 04 ba       	movd   (%rdx,%rdi,4),%xmm0
    ce83:	48 63 f6             	movslq %esi,%rsi
    ce86:	66 42 0f 6e 0c 8a    	movd   (%rdx,%r9,4),%xmm1
    ce8c:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    ce91:	66 0f 3a 22 0c aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm1
    ce98:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
    ce9f:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
    cea6:	00 
    cea7:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
    ceae:	00 
    ceaf:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    ceb3:	66 0f 6e 06          	movd   (%rsi),%xmm0
    ceb7:	48 8b b4 24 10 02 00 	mov    0x210(%rsp),%rsi
    cebe:	00 
    cebf:	66 0f 6e 17          	movd   (%rdi),%xmm2
    cec3:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
    ceca:	00 
    cecb:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    cecf:	66 0f 3a 22 06 01    	pinsrd $0x1,(%rsi),%xmm0
    ced5:	66 0f 7e f6          	movd   %xmm6,%esi
    ced9:	4c 63 ce             	movslq %esi,%r9
    cedc:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
    cee2:	66 0f 3a 22 17 01    	pinsrd $0x1,(%rdi),%xmm2
    cee8:	48 63 ee             	movslq %esi,%rbp
    ceeb:	66 0f 3a 16 f7 02    	pextrd $0x2,%xmm6,%edi
    cef1:	66 0f 3a 16 f6 03    	pextrd $0x3,%xmm6,%esi
    cef7:	48 63 ff             	movslq %edi,%rdi
    cefa:	48 63 f6             	movslq %esi,%rsi
    cefd:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    cf01:	66 42 0f 6e 14 8a    	movd   (%rdx,%r9,4),%xmm2
    cf07:	66 0f 6e 34 ba       	movd   (%rdx,%rdi,4),%xmm6
    cf0c:	66 0f 3a 22 14 aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm2
    cf13:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    cf18:	66 0f 3a 22 34 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm6
    cf1f:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
    cf23:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    cf27:	e9 a1 ef ff ff       	jmp    becd <sg_raster_triangle_depth_capture+0x8a1d>
    cf2c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    cf30:	66 0f 38 3d c3       	pmaxsd %xmm3,%xmm0
    cf35:	66 0f 38 39 c6       	pminsd %xmm6,%xmm0
    cf3a:	e9 45 ed ff ff       	jmp    bc84 <sg_raster_triangle_depth_capture+0x87d4>
    cf3f:	66 0f ef d2          	pxor   %xmm2,%xmm2
    cf43:	66 0f 38 3d d4       	pmaxsd %xmm4,%xmm2
    cf48:	66 41 0f 38 39 d1    	pminsd %xmm9,%xmm2
    cf4e:	e9 9c ec ff ff       	jmp    bbef <sg_raster_triangle_depth_capture+0x873f>
    cf53:	48 63 b4 24 6c 03 00 	movslq 0x36c(%rsp),%rsi
    cf5a:	00 
    cf5b:	66 0f ef db          	pxor   %xmm3,%xmm3
    cf5f:	66 0f 3a 22 1c b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm3
    cf66:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    cf6b:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    cf71:	66 0f ef c9          	pxor   %xmm1,%xmm1
    cf75:	48 63 f6             	movslq %esi,%rsi
    cf78:	66 0f 3a 22 0c b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm1
    cf7f:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    cf83:	e9 ea ee ff ff       	jmp    be72 <sg_raster_triangle_depth_capture+0x89c2>
    cf88:	31 ff                	xor    %edi,%edi
    cf8a:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    cf90:	66 0f ef c0          	pxor   %xmm0,%xmm0
    cf94:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
    cf9a:	48 63 f6             	movslq %esi,%rsi
    cf9d:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
    cfa4:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    cfa8:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    cfac:	45 85 c0             	test   %r8d,%r8d
    cfaf:	0f 85 f7 fa ff ff    	jne    caac <sg_raster_triangle_depth_capture+0x95fc>
    cfb5:	45 85 db             	test   %r11d,%r11d
    cfb8:	0f 85 cf fb ff ff    	jne    cb8d <sg_raster_triangle_depth_capture+0x96dd>
    cfbe:	e9 af ee ff ff       	jmp    be72 <sg_raster_triangle_depth_capture+0x89c2>
    cfc3:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
    cfca:	0f 
    cfcb:	0f 84 2b 01 00 00    	je     d0fc <sg_raster_triangle_depth_capture+0x9c4c>
    cfd1:	45 85 c0             	test   %r8d,%r8d
    cfd4:	0f 85 0e 01 00 00    	jne    d0e8 <sg_raster_triangle_depth_capture+0x9c38>
    cfda:	45 85 db             	test   %r11d,%r11d
    cfdd:	0f 85 e8 00 00 00    	jne    d0cb <sg_raster_triangle_depth_capture+0x9c1b>
    cfe3:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    cfea:	00 
    cfeb:	0f 85 b4 00 00 00    	jne    d0a5 <sg_raster_triangle_depth_capture+0x9bf5>
    cff1:	31 ed                	xor    %ebp,%ebp
    cff3:	31 ff                	xor    %edi,%edi
    cff5:	45 31 c9             	xor    %r9d,%r9d
    cff8:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
    cffe:	48 63 f6             	movslq %esi,%rsi
    d001:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    d004:	66 0f 6e cd          	movd   %ebp,%xmm1
    d008:	66 41 0f 6e c1       	movd   %r9d,%xmm0
    d00d:	66 0f 3a 22 ce 01    	pinsrd $0x1,%esi,%xmm1
    d013:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    d019:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d01d:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d021:	bf ff 00 00 00       	mov    $0xff,%edi
    d026:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # d02e <sg_raster_triangle_depth_capture+0x9b7e>
    d02d:	00 
    d02e:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    d033:	66 0f 6e d7          	movd   %edi,%xmm2
    d037:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    d03c:	66 0f db ca          	pand   %xmm2,%xmm1
    d040:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    d044:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d047:	0f 59 cb             	mulps  %xmm3,%xmm1
    d04a:	41 0f 29 4d 00       	movaps %xmm1,0x0(%r13)
    d04f:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d053:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    d058:	66 0f db ca          	pand   %xmm2,%xmm1
    d05c:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d05f:	0f 59 cb             	mulps  %xmm3,%xmm1
    d062:	41 0f 29 4d 10       	movaps %xmm1,0x10(%r13)
    d067:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d06b:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    d070:	66 0f db ca          	pand   %xmm2,%xmm1
    d074:	66 0f db c2          	pand   %xmm2,%xmm0
    d078:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d07b:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    d07e:	0f 59 cb             	mulps  %xmm3,%xmm1
    d081:	0f 59 c3             	mulps  %xmm3,%xmm0
    d084:	41 0f 29 4d 20       	movaps %xmm1,0x20(%r13)
    d089:	41 0f 29 45 30       	movaps %xmm0,0x30(%r13)
    d08e:	e9 4a 9a ff ff       	jmp    6add <sg_raster_triangle_depth_capture+0x362d>
    d093:	66 0f 6e f5          	movd   %ebp,%xmm6
    d097:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    d09c:	66 0f db de          	pand   %xmm6,%xmm3
    d0a0:	e9 1a ed ff ff       	jmp    bdbf <sg_raster_triangle_depth_capture+0x890f>
    d0a5:	31 ff                	xor    %edi,%edi
    d0a7:	45 31 c9             	xor    %r9d,%r9d
    d0aa:	66 0f 3a 16 d6 02    	pextrd $0x2,%xmm2,%esi
    d0b0:	48 63 f6             	movslq %esi,%rsi
    d0b3:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    d0b6:	31 f6                	xor    %esi,%esi
    d0b8:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d0bf:	00 
    d0c0:	0f 84 3e ff ff ff    	je     d004 <sg_raster_triangle_depth_capture+0x9b54>
    d0c6:	e9 2d ff ff ff       	jmp    cff8 <sg_raster_triangle_depth_capture+0x9b48>
    d0cb:	45 31 c9             	xor    %r9d,%r9d
    d0ce:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
    d0d4:	48 63 f6             	movslq %esi,%rsi
    d0d7:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    d0da:	31 ed                	xor    %ebp,%ebp
    d0dc:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d0e3:	00 
    d0e4:	74 d0                	je     d0b6 <sg_raster_triangle_depth_capture+0x9c06>
    d0e6:	eb c2                	jmp    d0aa <sg_raster_triangle_depth_capture+0x9bfa>
    d0e8:	66 0f 7e d6          	movd   %xmm2,%esi
    d0ec:	31 ff                	xor    %edi,%edi
    d0ee:	48 63 f6             	movslq %esi,%rsi
    d0f1:	44 8b 0c b2          	mov    (%rdx,%rsi,4),%r9d
    d0f5:	45 85 db             	test   %r11d,%r11d
    d0f8:	74 e0                	je     d0da <sg_raster_triangle_depth_capture+0x9c2a>
    d0fa:	eb d2                	jmp    d0ce <sg_raster_triangle_depth_capture+0x9c1e>
    d0fc:	66 0f 7e d6          	movd   %xmm2,%esi
    d100:	66 0f 3a 16 d7 02    	pextrd $0x2,%xmm2,%edi
    d106:	4c 63 ce             	movslq %esi,%r9
    d109:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
    d10f:	48 63 ff             	movslq %edi,%rdi
    d112:	48 63 ee             	movslq %esi,%rbp
    d115:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
    d11b:	66 0f 6e 0c ba       	movd   (%rdx,%rdi,4),%xmm1
    d120:	66 42 0f 6e 04 8a    	movd   (%rdx,%r9,4),%xmm0
    d126:	48 63 f6             	movslq %esi,%rsi
    d129:	66 0f 3a 22 04 aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm0
    d130:	66 0f 3a 22 0c b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm1
    d137:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d13b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d13f:	e9 dd fe ff ff       	jmp    d021 <sg_raster_triangle_depth_capture+0x9b71>
    d144:	66 0f 6e f7          	movd   %edi,%xmm6
    d148:	66 0f 70 d6 00       	pshufd $0x0,%xmm6,%xmm2
    d14d:	66 0f db d4          	pand   %xmm4,%xmm2
    d151:	e9 99 ea ff ff       	jmp    bbef <sg_raster_triangle_depth_capture+0x873f>
    d156:	66 0f 6e c5          	movd   %ebp,%xmm0
    d15a:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
    d15f:	66 0f db c3          	pand   %xmm3,%xmm0
    d163:	e9 1c eb ff ff       	jmp    bc84 <sg_raster_triangle_depth_capture+0x87d4>
    d168:	f3 0f 7e 0f          	movq   (%rdi),%xmm1
    d16c:	48 8b bc 24 f0 01 00 	mov    0x1f0(%rsp),%rdi
    d173:	00 
    d174:	f3 0f 7e 45 00       	movq   0x0(%rbp),%xmm0
    d179:	66 49 0f 3a 22 09 01 	pinsrq $0x1,(%r9),%xmm1
    d180:	66 48 0f 3a 22 07 01 	pinsrq $0x1,(%rdi),%xmm0
    d187:	48 8b bc 24 00 02 00 	mov    0x200(%rsp),%rdi
    d18e:	00 
    d18f:	0f 28 d9             	movaps %xmm1,%xmm3
    d192:	f3 0f 7e 17          	movq   (%rdi),%xmm2
    d196:	0f c6 d8 88          	shufps $0x88,%xmm0,%xmm3
    d19a:	0f c6 c8 dd          	shufps $0xdd,%xmm0,%xmm1
    d19e:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
    d1a5:	00 
    d1a6:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    d1ab:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    d1af:	66 48 0f 3a 22 17 01 	pinsrq $0x1,(%rdi),%xmm2
    d1b6:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
    d1bd:	00 
    d1be:	f3 0f 7e 37          	movq   (%rdi),%xmm6
    d1c2:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
    d1c9:	00 
    d1ca:	0f 28 c2             	movaps %xmm2,%xmm0
    d1cd:	66 48 0f 3a 22 37 01 	pinsrq $0x1,(%rdi),%xmm6
    d1d4:	0f c6 c6 88          	shufps $0x88,%xmm6,%xmm0
    d1d8:	0f c6 d6 dd          	shufps $0xdd,%xmm6,%xmm2
    d1dc:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    d1e1:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    d1e5:	e9 e3 ec ff ff       	jmp    becd <sg_raster_triangle_depth_capture+0x8a1d>
    d1ea:	66 44 0f 6e df       	movd   %edi,%xmm11
    d1ef:	66 45 0f 70 cb 00    	pshufd $0x0,%xmm11,%xmm9
    d1f5:	66 41 0f db e1       	pand   %xmm9,%xmm4
    d1fa:	e9 2f eb ff ff       	jmp    bd2e <sg_raster_triangle_depth_capture+0x887e>
    d1ff:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    d206:	66 0f 6e d5          	movd   %ebp,%xmm2
    d20a:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    d210:	48 63 f6             	movslq %esi,%rsi
    d213:	66 0f 3a 22 14 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm2
    d21a:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    d21e:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    d223:	45 85 c0             	test   %r8d,%r8d
    d226:	0f 85 9e 00 00 00    	jne    d2ca <sg_raster_triangle_depth_capture+0x9e1a>
    d22c:	45 85 db             	test   %r11d,%r11d
    d22f:	0f 85 91 00 00 00    	jne    d2c6 <sg_raster_triangle_depth_capture+0x9e16>
    d235:	31 ed                	xor    %ebp,%ebp
    d237:	31 f6                	xor    %esi,%esi
    d239:	e9 88 fa ff ff       	jmp    ccc6 <sg_raster_triangle_depth_capture+0x9816>
    d23e:	66 0f 7e f6          	movd   %xmm6,%esi
    d242:	31 ed                	xor    %ebp,%ebp
    d244:	48 63 f6             	movslq %esi,%rsi
    d247:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    d24a:	45 85 db             	test   %r11d,%r11d
    d24d:	0f 84 73 fa ff ff    	je     ccc6 <sg_raster_triangle_depth_capture+0x9816>
    d253:	66 0f 3a 16 f7 01    	pextrd $0x1,%xmm6,%edi
    d259:	48 63 ff             	movslq %edi,%rdi
    d25c:	8b 2c ba             	mov    (%rdx,%rdi,4),%ebp
    d25f:	31 ff                	xor    %edi,%edi
    d261:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d268:	00 
    d269:	0f 84 63 fa ff ff    	je     ccd2 <sg_raster_triangle_depth_capture+0x9822>
    d26f:	e9 52 fa ff ff       	jmp    ccc6 <sg_raster_triangle_depth_capture+0x9816>
    d274:	31 ff                	xor    %edi,%edi
    d276:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    d27d:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d281:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    d287:	48 63 f6             	movslq %esi,%rsi
    d28a:	66 0f 3a 22 14 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm2
    d291:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    d295:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    d29a:	45 85 c0             	test   %r8d,%r8d
    d29d:	75 2b                	jne    d2ca <sg_raster_triangle_depth_capture+0x9e1a>
    d29f:	45 85 db             	test   %r11d,%r11d
    d2a2:	75 22                	jne    d2c6 <sg_raster_triangle_depth_capture+0x9e16>
    d2a4:	31 ed                	xor    %ebp,%ebp
    d2a6:	31 f6                	xor    %esi,%esi
    d2a8:	e9 e3 eb ff ff       	jmp    be90 <sg_raster_triangle_depth_capture+0x89e0>
    d2ad:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    d2b3:	66 0f 6e c5          	movd   %ebp,%xmm0
    d2b7:	48 63 f6             	movslq %esi,%rsi
    d2ba:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
    d2c1:	e9 8b f9 ff ff       	jmp    cc51 <sg_raster_triangle_depth_capture+0x97a1>
    d2c6:	31 f6                	xor    %esi,%esi
    d2c8:	eb 89                	jmp    d253 <sg_raster_triangle_depth_capture+0x9da3>
    d2ca:	66 0f 7e f6          	movd   %xmm6,%esi
    d2ce:	31 ed                	xor    %ebp,%ebp
    d2d0:	48 63 f6             	movslq %esi,%rsi
    d2d3:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    d2d6:	45 85 db             	test   %r11d,%r11d
    d2d9:	74 84                	je     d25f <sg_raster_triangle_depth_capture+0x9daf>
    d2db:	e9 73 ff ff ff       	jmp    d253 <sg_raster_triangle_depth_capture+0x9da3>
    d2e0:	45 0f 28 e9          	movaps %xmm9,%xmm13
    d2e4:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d2e8:	44 0f c2 e8 01       	cmpltps %xmm0,%xmm13
    d2ed:	0f 28 c5             	movaps %xmm5,%xmm0
    d2f0:	66 41 0f 66 d5       	pcmpgtd %xmm13,%xmm2
    d2f5:	41 0f 55 d1          	andnps %xmm9,%xmm2
    d2f9:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    d2fd:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    d302:	e9 80 ef ff ff       	jmp    c287 <sg_raster_triangle_depth_capture+0x8dd7>
    d307:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d30b:	0f 28 c1             	movaps %xmm1,%xmm0
    d30e:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    d312:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d316:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    d31a:	0f 28 c5             	movaps %xmm5,%xmm0
    d31d:	0f 55 d1             	andnps %xmm1,%xmm2
    d320:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    d324:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    d329:	e9 a4 ef ff ff       	jmp    c2d2 <sg_raster_triangle_depth_capture+0x8e22>
    d32e:	31 ff                	xor    %edi,%edi
    d330:	e9 42 f9 ff ff       	jmp    cc77 <sg_raster_triangle_depth_capture+0x97c7>
    d335:	31 f6                	xor    %esi,%esi
    d337:	31 ed                	xor    %ebp,%ebp
    d339:	e9 ac f8 ff ff       	jmp    cbea <sg_raster_triangle_depth_capture+0x973a>
    d33e:	31 ed                	xor    %ebp,%ebp
    d340:	e9 eb f9 ff ff       	jmp    cd30 <sg_raster_triangle_depth_capture+0x9880>
    d345:	48 63 94 24 ac 03 00 	movslq 0x3ac(%rsp),%rdx
    d34c:	00 
    d34d:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d353:	66 0f 6e ac 24 70 01 	movd   0x170(%rsp),%xmm5
    d35a:	00 00 
    d35c:	66 0f 3a 22 2c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm5
    d363:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    d367:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d36c:	45 85 c9             	test   %r9d,%r9d
    d36f:	0f 85 b3 f2 ff ff    	jne    c628 <sg_raster_triangle_depth_capture+0x9178>
    d375:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d379:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
    d37f:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d386:	00 
    d387:	48 63 d2             	movslq %edx,%rdx
    d38a:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d38d:	0f 85 dc 02 00 00    	jne    d66f <sg_raster_triangle_depth_capture+0xa1bf>
    d393:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d39a:	00 
    d39b:	0f 85 82 00 00 00    	jne    d423 <sg_raster_triangle_depth_capture+0x9f73>
    d3a1:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
    d3a7:	f3 0f 7e ed          	movq   %xmm5,%xmm5
    d3ab:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    d3b2:	00 
    d3b3:	45 85 c9             	test   %r9d,%r9d
    d3b6:	0f 84 a4 00 00 00    	je     d460 <sg_raster_triangle_depth_capture+0x9fb0>
    d3bc:	66 0f 7e ca          	movd   %xmm1,%edx
    d3c0:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d3c7:	00 
    d3c8:	48 63 d2             	movslq %edx,%rdx
    d3cb:	66 0f 6e 14 90       	movd   (%rax,%rdx,4),%xmm2
    d3d0:	0f 85 8e 00 00 00    	jne    d464 <sg_raster_triangle_depth_capture+0x9fb4>
    d3d6:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d3dd:	00 
    d3de:	0f 85 21 01 00 00    	jne    d505 <sg_raster_triangle_depth_capture+0xa055>
    d3e4:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d3eb:	00 
    d3ec:	0f 85 c2 01 00 00    	jne    d5b4 <sg_raster_triangle_depth_capture+0xa104>
    d3f2:	66 0f 3a 21 d2 0e    	insertps $0xe,%xmm2,%xmm2
    d3f8:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d3fc:	66 44 0f 7e ca       	movd   %xmm9,%edx
    d401:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d408:	00 
    d409:	48 63 d2             	movslq %edx,%rdx
    d40c:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d40f:	0f 85 be 00 00 00    	jne    d4d3 <sg_raster_triangle_depth_capture+0xa023>
    d415:	31 d2                	xor    %edx,%edx
    d417:	45 31 c0             	xor    %r8d,%r8d
    d41a:	31 ff                	xor    %edi,%edi
    d41c:	e9 80 f2 ff ff       	jmp    c6a1 <sg_raster_triangle_depth_capture+0x91f1>
    d421:	31 c9                	xor    %ecx,%ecx
    d423:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    d429:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d42d:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
    d433:	48 63 d2             	movslq %edx,%rdx
    d436:	66 0f 3a 22 14 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm2
    d43d:	66 0f 6c ea          	punpcklqdq %xmm2,%xmm5
    d441:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    d448:	00 
    d449:	45 85 c9             	test   %r9d,%r9d
    d44c:	0f 85 6a ff ff ff    	jne    d3bc <sg_raster_triangle_depth_capture+0x9f0c>
    d452:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d459:	00 
    d45a:	0f 84 15 f2 ff ff    	je     c675 <sg_raster_triangle_depth_capture+0x91c5>
    d460:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d464:	66 0f 3a 16 ca 01    	pextrd $0x1,%xmm1,%edx
    d46a:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d471:	00 
    d472:	48 63 d2             	movslq %edx,%rdx
    d475:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d478:	0f 85 89 00 00 00    	jne    d507 <sg_raster_triangle_depth_capture+0xa057>
    d47e:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d485:	00 
    d486:	0f 85 2a 01 00 00    	jne    d5b6 <sg_raster_triangle_depth_capture+0xa106>
    d48c:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d492:	f3 0f 7e d2          	movq   %xmm2,%xmm2
    d496:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d49a:	45 85 c9             	test   %r9d,%r9d
    d49d:	0f 85 59 ff ff ff    	jne    d3fc <sg_raster_triangle_depth_capture+0x9f4c>
    d4a3:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    d4aa:	45 31 c0             	xor    %r8d,%r8d
    d4ad:	31 c9                	xor    %ecx,%ecx
    d4af:	48 63 d2             	movslq %edx,%rdx
    d4b2:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d4b5:	31 d2                	xor    %edx,%edx
    d4b7:	e9 e5 f1 ff ff       	jmp    c6a1 <sg_raster_triangle_depth_capture+0x91f1>
    d4bc:	66 44 0f 7e ca       	movd   %xmm9,%edx
    d4c1:	31 ff                	xor    %edi,%edi
    d4c3:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d4ca:	00 
    d4cb:	48 63 d2             	movslq %edx,%rdx
    d4ce:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d4d1:	74 0d                	je     d4e0 <sg_raster_triangle_depth_capture+0xa030>
    d4d3:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    d4da:	48 63 d2             	movslq %edx,%rdx
    d4dd:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d4e0:	45 31 c0             	xor    %r8d,%r8d
    d4e3:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d4ea:	00 
    d4eb:	75 60                	jne    d54d <sg_raster_triangle_depth_capture+0xa09d>
    d4ed:	44 8b 94 24 80 01 00 	mov    0x180(%rsp),%r10d
    d4f4:	00 
    d4f5:	31 d2                	xor    %edx,%edx
    d4f7:	45 85 d2             	test   %r10d,%r10d
    d4fa:	0f 84 a1 f1 ff ff    	je     c6a1 <sg_raster_triangle_depth_capture+0x91f1>
    d500:	e9 8f f1 ff ff       	jmp    c694 <sg_raster_triangle_depth_capture+0x91e4>
    d505:	31 c9                	xor    %ecx,%ecx
    d507:	66 0f 3a 16 ca 02    	pextrd $0x2,%xmm1,%edx
    d50d:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d514:	00 
    d515:	48 63 d2             	movslq %edx,%rdx
    d518:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d51b:	75 40                	jne    d55d <sg_raster_triangle_depth_capture+0xa0ad>
    d51d:	66 0f 6e cf          	movd   %edi,%xmm1
    d521:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d527:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    d52b:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d52f:	45 85 c9             	test   %r9d,%r9d
    d532:	75 64                	jne    d598 <sg_raster_triangle_depth_capture+0xa0e8>
    d534:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d53b:	00 
    d53c:	74 54                	je     d592 <sg_raster_triangle_depth_capture+0xa0e2>
    d53e:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    d545:	31 c9                	xor    %ecx,%ecx
    d547:	48 63 d2             	movslq %edx,%rdx
    d54a:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d54d:	66 44 0f 3a 16 ca 02 	pextrd $0x2,%xmm9,%edx
    d554:	48 63 d2             	movslq %edx,%rdx
    d557:	44 8b 04 90          	mov    (%rax,%rdx,4),%r8d
    d55b:	eb 90                	jmp    d4ed <sg_raster_triangle_depth_capture+0xa03d>
    d55d:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    d563:	66 0f 6e cf          	movd   %edi,%xmm1
    d567:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d56d:	48 63 d2             	movslq %edx,%rdx
    d570:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    d577:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    d57b:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d57f:	45 85 c9             	test   %r9d,%r9d
    d582:	0f 85 34 ff ff ff    	jne    d4bc <sg_raster_triangle_depth_capture+0xa00c>
    d588:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d58f:	00 
    d590:	75 65                	jne    d5f7 <sg_raster_triangle_depth_capture+0xa147>
    d592:	31 ff                	xor    %edi,%edi
    d594:	31 c9                	xor    %ecx,%ecx
    d596:	eb b5                	jmp    d54d <sg_raster_triangle_depth_capture+0xa09d>
    d598:	66 44 0f 7e ca       	movd   %xmm9,%edx
    d59d:	31 ff                	xor    %edi,%edi
    d59f:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d5a6:	00 
    d5a7:	48 63 d2             	movslq %edx,%rdx
    d5aa:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d5ad:	74 9e                	je     d54d <sg_raster_triangle_depth_capture+0xa09d>
    d5af:	e9 1f ff ff ff       	jmp    d4d3 <sg_raster_triangle_depth_capture+0xa023>
    d5b4:	31 c9                	xor    %ecx,%ecx
    d5b6:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    d5bc:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d5c0:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d5c6:	48 63 d2             	movslq %edx,%rdx
    d5c9:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    d5d0:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    d5d4:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d5d8:	45 85 c9             	test   %r9d,%r9d
    d5db:	0f 85 db fe ff ff    	jne    d4bc <sg_raster_triangle_depth_capture+0xa00c>
    d5e1:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d5e8:	00 
    d5e9:	75 0c                	jne    d5f7 <sg_raster_triangle_depth_capture+0xa147>
    d5eb:	45 31 c0             	xor    %r8d,%r8d
    d5ee:	31 ff                	xor    %edi,%edi
    d5f0:	31 c9                	xor    %ecx,%ecx
    d5f2:	e9 9d f0 ff ff       	jmp    c694 <sg_raster_triangle_depth_capture+0x91e4>
    d5f7:	31 c9                	xor    %ecx,%ecx
    d5f9:	e9 d5 fe ff ff       	jmp    d4d3 <sg_raster_triangle_depth_capture+0xa023>
    d5fe:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d605:	00 
    d606:	0f 85 84 02 00 00    	jne    d890 <sg_raster_triangle_depth_capture+0xa3e0>
    d60c:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d613:	00 
    d614:	0f 84 ca 02 00 00    	je     d8e4 <sg_raster_triangle_depth_capture+0xa434>
    d61a:	31 c9                	xor    %ecx,%ecx
    d61c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d620:	48 63 94 24 a8 03 00 	movslq 0x3a8(%rsp),%rdx
    d627:	00 
    d628:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d62f:	00 
    d630:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
    d635:	0f 85 e2 02 00 00    	jne    d91d <sg_raster_triangle_depth_capture+0xa46d>
    d63b:	66 0f 7e ef          	movd   %xmm5,%edi
    d63f:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d645:	66 0f 6e ef          	movd   %edi,%xmm5
    d649:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    d64d:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d652:	45 85 c9             	test   %r9d,%r9d
    d655:	0f 85 cd ef ff ff    	jne    c628 <sg_raster_triangle_depth_capture+0x9178>
    d65b:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d662:	00 
    d663:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d667:	0f 85 0c fd ff ff    	jne    d379 <sg_raster_triangle_depth_capture+0x9ec9>
    d66d:	31 c9                	xor    %ecx,%ecx
    d66f:	66 0f 3a 16 d2 02    	pextrd $0x2,%xmm2,%edx
    d675:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d67c:	00 
    d67d:	48 63 d2             	movslq %edx,%rdx
    d680:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d683:	0f 85 10 05 00 00    	jne    db99 <sg_raster_triangle_depth_capture+0xa6e9>
    d689:	66 0f 6e d7          	movd   %edi,%xmm2
    d68d:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
    d693:	66 0f 6c ea          	punpcklqdq %xmm2,%xmm5
    d697:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    d69e:	00 
    d69f:	45 85 c9             	test   %r9d,%r9d
    d6a2:	0f 85 14 fd ff ff    	jne    d3bc <sg_raster_triangle_depth_capture+0x9f0c>
    d6a8:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d6af:	00 
    d6b0:	0f 85 aa fd ff ff    	jne    d460 <sg_raster_triangle_depth_capture+0x9fb0>
    d6b6:	31 c9                	xor    %ecx,%ecx
    d6b8:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d6bc:	e9 46 fe ff ff       	jmp    d507 <sg_raster_triangle_depth_capture+0xa057>
    d6c1:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d6c5:	66 0f 38 3d ca       	pmaxsd %xmm2,%xmm1
    d6ca:	66 0f 38 39 8c 24 a0 	pminsd 0x1a0(%rsp),%xmm1
    d6d1:	01 00 00 
    d6d4:	e9 cb ee ff ff       	jmp    c5a4 <sg_raster_triangle_depth_capture+0x90f4>
    d6d9:	66 0f 6e d1          	movd   %ecx,%xmm2
    d6dd:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    d6e2:	66 0f db ea          	pand   %xmm2,%xmm5
    d6e6:	e9 2d ee ff ff       	jmp    c518 <sg_raster_triangle_depth_capture+0x9068>
    d6eb:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d6ef:	66 0f 38 3d d5       	pmaxsd %xmm5,%xmm2
    d6f4:	66 41 0f 38 39 d6    	pminsd %xmm14,%xmm2
    d6fa:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    d6fe:	e9 15 ee ff ff       	jmp    c518 <sg_raster_triangle_depth_capture+0x9068>
    d703:	83 bc 24 b0 01 00 00 	cmpl   $0xf,0x1b0(%rsp)
    d70a:	0f 
    d70b:	0f 84 e7 00 00 00    	je     d7f8 <sg_raster_triangle_depth_capture+0xa348>
    d711:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d715:	45 85 c9             	test   %r9d,%r9d
    d718:	74 0c                	je     d726 <sg_raster_triangle_depth_capture+0xa276>
    d71a:	66 0f 7e c2          	movd   %xmm0,%edx
    d71e:	48 63 d2             	movslq %edx,%rdx
    d721:	66 0f 6e 14 90       	movd   (%rax,%rdx,4),%xmm2
    d726:	31 c9                	xor    %ecx,%ecx
    d728:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d72f:	00 
    d730:	74 0c                	je     d73e <sg_raster_triangle_depth_capture+0xa28e>
    d732:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
    d738:	48 63 d2             	movslq %edx,%rdx
    d73b:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d73e:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d745:	00 
    d746:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d74a:	74 0e                	je     d75a <sg_raster_triangle_depth_capture+0xa2aa>
    d74c:	66 0f 3a 16 c2 02    	pextrd $0x2,%xmm0,%edx
    d752:	48 63 d2             	movslq %edx,%rdx
    d755:	66 0f 6e 0c 90       	movd   (%rax,%rdx,4),%xmm1
    d75a:	31 d2                	xor    %edx,%edx
    d75c:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d763:	00 
    d764:	74 0c                	je     d772 <sg_raster_triangle_depth_capture+0xa2c2>
    d766:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
    d76c:	48 63 d2             	movslq %edx,%rdx
    d76f:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    d772:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    d776:	66 0f 3a 22 ca 01    	pinsrd $0x1,%edx,%xmm1
    d77c:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d782:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d786:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d78a:	66 0f 6f d0          	movdqa %xmm0,%xmm2
    d78e:	b8 ff 00 00 00       	mov    $0xff,%eax
    d793:	f3 44 0f 10 05 00 00 	movss  0x0(%rip),%xmm8        # d79c <sg_raster_triangle_depth_capture+0xa2ec>
    d79a:	00 00 
    d79c:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    d7a1:	66 44 0f 6e c8       	movd   %eax,%xmm9
    d7a6:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    d7aa:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    d7af:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    d7b5:	66 41 0f db c9       	pand   %xmm9,%xmm1
    d7ba:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    d7be:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    d7c3:	66 41 0f db c1       	pand   %xmm9,%xmm0
    d7c8:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    d7cd:	66 41 0f db e9       	pand   %xmm9,%xmm5
    d7d2:	66 41 0f db d1       	pand   %xmm9,%xmm2
    d7d7:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d7da:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    d7dd:	0f 5b ed             	cvtdq2ps %xmm5,%xmm5
    d7e0:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    d7e3:	41 0f 59 c8          	mulps  %xmm8,%xmm1
    d7e7:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    d7eb:	41 0f 59 e8          	mulps  %xmm8,%xmm5
    d7ef:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    d7f3:	e9 63 d1 ff ff       	jmp    a95b <sg_raster_triangle_depth_capture+0x74ab>
    d7f8:	66 0f 7e c2          	movd   %xmm0,%edx
    d7fc:	66 0f 3a 16 c1 02    	pextrd $0x2,%xmm0,%ecx
    d802:	48 63 fa             	movslq %edx,%rdi
    d805:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
    d80b:	48 63 c9             	movslq %ecx,%rcx
    d80e:	4c 63 c2             	movslq %edx,%r8
    d811:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
    d817:	66 0f 6e 0c 88       	movd   (%rax,%rcx,4),%xmm1
    d81c:	66 0f 6e 04 b8       	movd   (%rax,%rdi,4),%xmm0
    d821:	48 63 d2             	movslq %edx,%rdx
    d824:	66 42 0f 3a 22 04 80 	pinsrd $0x1,(%rax,%r8,4),%xmm0
    d82b:	01 
    d82c:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    d833:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d837:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d83b:	e9 4a ff ff ff       	jmp    d78a <sg_raster_triangle_depth_capture+0xa2da>
    d840:	66 0f 6e ea          	movd   %edx,%xmm5
    d844:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
    d849:	66 0f db e9          	pand   %xmm1,%xmm5
    d84d:	e9 28 ec ff ff       	jmp    c47a <sg_raster_triangle_depth_capture+0x8fca>
    d852:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d856:	66 0f 38 3d e9       	pmaxsd %xmm1,%xmm5
    d85b:	66 0f 38 39 ac 24 a0 	pminsd 0x1a0(%rsp),%xmm5
    d862:	01 00 00 
    d865:	e9 10 ec ff ff       	jmp    c47a <sg_raster_triangle_depth_capture+0x8fca>
    d86a:	66 0f 6e e9          	movd   %ecx,%xmm5
    d86e:	66 0f 70 c5 00       	pshufd $0x0,%xmm5,%xmm0
    d873:	66 0f db c2          	pand   %xmm2,%xmm0
    d877:	e9 42 eb ff ff       	jmp    c3be <sg_raster_triangle_depth_capture+0x8f0e>
    d87c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d880:	66 0f 38 3d c2       	pmaxsd %xmm2,%xmm0
    d885:	66 41 0f 38 39 c6    	pminsd %xmm14,%xmm0
    d88b:	e9 2e eb ff ff       	jmp    c3be <sg_raster_triangle_depth_capture+0x8f0e>
    d890:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d894:	48 63 94 24 a4 03 00 	movslq 0x3a4(%rsp),%rdx
    d89b:	00 
    d89c:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d8a3:	00 
    d8a4:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d8a7:	0f 85 73 fd ff ff    	jne    d620 <sg_raster_triangle_depth_capture+0xa170>
    d8ad:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d8b4:	00 
    d8b5:	0f 85 8a fa ff ff    	jne    d345 <sg_raster_triangle_depth_capture+0x9e95>
    d8bb:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d8c1:	f3 0f 7e c0          	movq   %xmm0,%xmm0
    d8c5:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d8ca:	45 85 c9             	test   %r9d,%r9d
    d8cd:	0f 84 a2 fa ff ff    	je     d375 <sg_raster_triangle_depth_capture+0x9ec5>
    d8d3:	66 0f 7e d2          	movd   %xmm2,%edx
    d8d7:	48 63 d2             	movslq %edx,%rdx
    d8da:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
    d8df:	e9 95 fa ff ff       	jmp    d379 <sg_raster_triangle_depth_capture+0x9ec9>
    d8e4:	48 63 94 24 ac 03 00 	movslq 0x3ac(%rsp),%rdx
    d8eb:	00 
    d8ec:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d8f0:	66 0f 3a 22 04 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm0
    d8f7:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d8fc:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    d902:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d906:	48 63 d2             	movslq %edx,%rdx
    d909:	66 0f 3a 22 2c 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm5
    d910:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    d917:	00 
    d918:	e9 58 ed ff ff       	jmp    c675 <sg_raster_triangle_depth_capture+0x91c5>
    d91d:	48 63 94 24 ac 03 00 	movslq 0x3ac(%rsp),%rdx
    d924:	00 
    d925:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d92b:	66 0f 3a 22 2c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm5
    d932:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    d936:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d93b:	45 85 c9             	test   %r9d,%r9d
    d93e:	0f 85 e4 ec ff ff    	jne    c628 <sg_raster_triangle_depth_capture+0x9178>
    d944:	83 bc 24 20 02 00 00 	cmpl   $0x0,0x220(%rsp)
    d94b:	00 
    d94c:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d950:	0f 85 23 fa ff ff    	jne    d379 <sg_raster_triangle_depth_capture+0x9ec9>
    d956:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d95d:	00 
    d95e:	74 9c                	je     d8fc <sg_raster_triangle_depth_capture+0xa44c>
    d960:	e9 08 fd ff ff       	jmp    d66d <sg_raster_triangle_depth_capture+0xa1bd>
    d965:	66 0f 7e c2          	movd   %xmm0,%edx
    d969:	bf 01 00 00 00       	mov    $0x1,%edi
    d96e:	48 63 d2             	movslq %edx,%rdx
    d971:	66 44 0f 6e c7       	movd   %edi,%xmm8
    d976:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
    d97a:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
    d980:	66 45 0f 70 c0 00    	pshufd $0x0,%xmm8,%xmm8
    d986:	66 44 0f fe 84 24 d0 	paddd  0x1d0(%rsp),%xmm8
    d98d:	01 00 00 
    d990:	48 63 d2             	movslq %edx,%rdx
    d993:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
    d997:	66 44 0f 76 c5       	pcmpeqd %xmm5,%xmm8
    d99c:	66 0f 3a 16 c2 02    	pextrd $0x2,%xmm0,%edx
    d9a2:	48 63 d2             	movslq %edx,%rdx
    d9a5:	4c 8d 04 90          	lea    (%rax,%rdx,4),%r8
    d9a9:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
    d9af:	48 63 d2             	movslq %edx,%rdx
    d9b2:	45 0f 50 f8          	movmskps %xmm8,%r15d
    d9b6:	4c 8d 2c 90          	lea    (%rax,%rdx,4),%r13
    d9ba:	66 0f 7e ca          	movd   %xmm1,%edx
    d9be:	48 63 d2             	movslq %edx,%rdx
    d9c1:	48 8d 1c 90          	lea    (%rax,%rdx,4),%rbx
    d9c5:	66 0f 3a 16 ca 01    	pextrd $0x1,%xmm1,%edx
    d9cb:	48 63 d2             	movslq %edx,%rdx
    d9ce:	48 8d 2c 90          	lea    (%rax,%rdx,4),%rbp
    d9d2:	66 0f 3a 16 ca 02    	pextrd $0x2,%xmm1,%edx
    d9d8:	48 63 d2             	movslq %edx,%rdx
    d9db:	4c 8d 1c 90          	lea    (%rax,%rdx,4),%r11
    d9df:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    d9e5:	48 63 d2             	movslq %edx,%rdx
    d9e8:	4c 8d 14 90          	lea    (%rax,%rdx,4),%r10
    d9ec:	44 89 fa             	mov    %r15d,%edx
    d9ef:	f7 d2                	not    %edx
    d9f1:	80 e2 0f             	and    $0xf,%dl
    d9f4:	0f 84 ed 00 00 00    	je     dae7 <sg_raster_triangle_depth_capture+0xa637>
    d9fa:	66 0f 7e d2          	movd   %xmm2,%edx
    d9fe:	66 0f 6e 01          	movd   (%rcx),%xmm0
    da02:	66 0f 3a 22 07 01    	pinsrd $0x1,(%rdi),%xmm0
    da08:	66 0f 3a 16 d1 02    	pextrd $0x2,%xmm2,%ecx
    da0e:	48 63 fa             	movslq %edx,%rdi
    da11:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
    da17:	66 41 0f 6e 08       	movd   (%r8),%xmm1
    da1c:	48 63 c9             	movslq %ecx,%rcx
    da1f:	4c 63 c2             	movslq %edx,%r8
    da22:	66 41 0f 3a 22 4d 00 	pinsrd $0x1,0x0(%r13),%xmm1
    da29:	01 
    da2a:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    da30:	66 0f 6e 2c b8       	movd   (%rax,%rdi,4),%xmm5
    da35:	48 63 d2             	movslq %edx,%rdx
    da38:	66 42 0f 3a 22 2c 80 	pinsrd $0x1,(%rax,%r8,4),%xmm5
    da3f:	01 
    da40:	66 0f 6e 13          	movd   (%rbx),%xmm2
    da44:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    da48:	66 0f 6e 0c 88       	movd   (%rax,%rcx,4),%xmm1
    da4d:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    da54:	66 44 0f 7e ca       	movd   %xmm9,%edx
    da59:	48 63 fa             	movslq %edx,%rdi
    da5c:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    da63:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    da68:	4c 63 c2             	movslq %edx,%r8
    da6b:	66 44 0f 3a 16 c9 02 	pextrd $0x2,%xmm9,%ecx
    da72:	66 44 0f 3a 16 ca 03 	pextrd $0x3,%xmm9,%edx
    da79:	66 44 0f 6e 34 b8    	movd   (%rax,%rdi,4),%xmm14
    da7f:	48 63 c9             	movslq %ecx,%rcx
    da82:	48 63 d2             	movslq %edx,%rdx
    da85:	66 0f 6c e9          	punpcklqdq %xmm1,%xmm5
    da89:	66 41 0f 6e 0b       	movd   (%r11),%xmm1
    da8e:	66 0f 3a 22 55 00 01 	pinsrd $0x1,0x0(%rbp),%xmm2
    da95:	66 41 0f 3a 22 0a 01 	pinsrd $0x1,(%r10),%xmm1
    da9c:	0f 29 ac 24 a0 01 00 	movaps %xmm5,0x1a0(%rsp)
    daa3:	00 
    daa4:	66 44 0f 6e 0c 88    	movd   (%rax,%rcx,4),%xmm9
    daaa:	66 46 0f 3a 22 34 80 	pinsrd $0x1,(%rax,%r8,4),%xmm14
    dab1:	01 
    dab2:	66 44 0f 3a 22 0c 90 	pinsrd $0x1,(%rax,%rdx,4),%xmm9
    dab9:	01 
    daba:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    dabe:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    dac2:	66 45 0f 6c f1       	punpcklqdq %xmm9,%xmm14
    dac7:	44 0f 29 b4 24 d0 01 	movaps %xmm14,0x1d0(%rsp)
    dace:	00 00 
    dad0:	e9 f2 eb ff ff       	jmp    c6c7 <sg_raster_triangle_depth_capture+0x9217>
    dad5:	66 0f 6e d2          	movd   %edx,%xmm2
    dad9:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    dade:	66 0f db ca          	pand   %xmm2,%xmm1
    dae2:	e9 bd ea ff ff       	jmp    c5a4 <sg_raster_triangle_depth_capture+0x90f4>
    dae7:	f3 0f 7e 11          	movq   (%rcx),%xmm2
    daeb:	66 48 0f 3a 22 17 01 	pinsrq $0x1,(%rdi),%xmm2
    daf2:	f3 0f 7e 2b          	movq   (%rbx),%xmm5
    daf6:	66 48 0f 3a 22 6d 00 	pinsrq $0x1,0x0(%rbp),%xmm5
    dafd:	01 
    dafe:	0f 28 c2             	movaps %xmm2,%xmm0
    db01:	44 0f 28 ca          	movaps %xmm2,%xmm9
    db05:	f3 41 0f 7e 08       	movq   (%r8),%xmm1
    db0a:	f3 41 0f 7e 13       	movq   (%r11),%xmm2
    db0f:	66 49 0f 3a 22 4d 00 	pinsrq $0x1,0x0(%r13),%xmm1
    db16:	01 
    db17:	66 49 0f 3a 22 12 01 	pinsrq $0x1,(%r10),%xmm2
    db1e:	44 0f 28 fd          	movaps %xmm5,%xmm15
    db22:	44 0f 28 f5          	movaps %xmm5,%xmm14
    db26:	44 0f c6 c9 dd       	shufps $0xdd,%xmm1,%xmm9
    db2b:	0f c6 c1 88          	shufps $0x88,%xmm1,%xmm0
    db2f:	44 0f c6 fa 88       	shufps $0x88,%xmm2,%xmm15
    db34:	44 0f c6 f2 dd       	shufps $0xdd,%xmm2,%xmm14
    db39:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    db3e:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    db43:	66 41 0f 6f e9       	movdqa %xmm9,%xmm5
    db48:	44 0f 29 8c 24 a0 01 	movaps %xmm9,0x1a0(%rsp)
    db4f:	00 00 
    db51:	44 0f 29 b4 24 d0 01 	movaps %xmm14,0x1d0(%rsp)
    db58:	00 00 
    db5a:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
    db5f:	e9 63 eb ff ff       	jmp    c6c7 <sg_raster_triangle_depth_capture+0x9217>
    db64:	48 63 94 24 ac 03 00 	movslq 0x3ac(%rsp),%rdx
    db6b:	00 
    db6c:	66 0f 7e c7          	movd   %xmm0,%edi
    db70:	66 0f 6e ac 24 70 01 	movd   0x170(%rsp),%xmm5
    db77:	00 00 
    db79:	66 0f 6e c7          	movd   %edi,%xmm0
    db7d:	66 0f 3a 22 2c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm5
    db84:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    db88:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    db8d:	e9 96 ea ff ff       	jmp    c628 <sg_raster_triangle_depth_capture+0x9178>
    db92:	31 c9                	xor    %ecx,%ecx
    db94:	e9 87 fa ff ff       	jmp    d620 <sg_raster_triangle_depth_capture+0xa170>
    db99:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    db9f:	66 0f 6e d7          	movd   %edi,%xmm2
    dba3:	48 63 d2             	movslq %edx,%rdx
    dba6:	66 0f 3a 22 14 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm2
    dbad:	e9 db fa ff ff       	jmp    d68d <sg_raster_triangle_depth_capture+0xa1dd>

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
