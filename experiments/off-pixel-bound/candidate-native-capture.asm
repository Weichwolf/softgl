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

00000000000034b0 <sg_raster_triangle_depth_capture>:
    34b0:	41 57                	push   %r15
    34b2:	48 89 f0             	mov    %rsi,%rax
    34b5:	49 89 ff             	mov    %rdi,%r15
    34b8:	41 56                	push   %r14
    34ba:	41 55                	push   %r13
    34bc:	41 54                	push   %r12
    34be:	55                   	push   %rbp
    34bf:	53                   	push   %rbx
    34c0:	48 81 ec b8 04 00 00 	sub    $0x4b8,%rsp
    34c7:	f3 0f 10 6e 10       	movss  0x10(%rsi),%xmm5
    34cc:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 34d4 <sg_raster_triangle_depth_capture+0x24>
    34d3:	00 
    34d4:	f3 0f 10 5a 10       	movss  0x10(%rdx),%xmm3
    34d9:	f3 0f 10 72 14       	movss  0x14(%rdx),%xmm6
    34de:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    34e3:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    34e7:	48 89 b4 24 98 00 00 	mov    %rsi,0x98(%rsp)
    34ee:	00 
    34ef:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 34f7 <sg_raster_triangle_depth_capture+0x47>
    34f6:	00 
    34f7:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 34ff <sg_raster_triangle_depth_capture+0x4f>
    34fe:	00 
    34ff:	44 89 8c 24 30 01 00 	mov    %r9d,0x130(%rsp)
    3506:	00 
    3507:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 350f <sg_raster_triangle_depth_capture+0x5f>
    350e:	00 
    350f:	48 89 94 24 a0 00 00 	mov    %rdx,0xa0(%rsp)
    3516:	00 
    3517:	48 89 8c 24 a8 00 00 	mov    %rcx,0xa8(%rsp)
    351e:	00 
    351f:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    3523:	f3 0f 10 40 14       	movss  0x14(%rax),%xmm0
    3528:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    352c:	f3 0f 2c f9          	cvttss2si %xmm1,%edi
    3530:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 3538 <sg_raster_triangle_depth_capture+0x88>
    3537:	00 
    3538:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
    353c:	f3 44 0f 2c f1       	cvttss2si %xmm1,%r14d
    3541:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 3549 <sg_raster_triangle_depth_capture+0x99>
    3548:	00 
    3549:	f3 0f 59 ce          	mulss  %xmm6,%xmm1
    354d:	44 89 f0             	mov    %r14d,%eax
    3550:	29 f0                	sub    %esi,%eax
    3552:	48 63 d0             	movslq %eax,%rdx
    3555:	89 44 24 20          	mov    %eax,0x20(%rsp)
    3559:	f3 0f 2c d9          	cvttss2si %xmm1,%ebx
    355d:	f3 0f 10 49 10       	movss  0x10(%rcx),%xmm1
    3562:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    3566:	89 d8                	mov    %ebx,%eax
    3568:	29 f8                	sub    %edi,%eax
    356a:	f3 44 0f 2c ca       	cvttss2si %xmm2,%r9d
    356f:	f3 0f 10 51 14       	movss  0x14(%rcx),%xmm2
    3574:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    3579:	48 63 c8             	movslq %eax,%rcx
    357c:	89 44 24 30          	mov    %eax,0x30(%rsp)
    3580:	f3 0f 59 e2          	mulss  %xmm2,%xmm4
    3584:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    3589:	f3 44 0f 2c d4       	cvttss2si %xmm4,%r10d
    358e:	44 89 d0             	mov    %r10d,%eax
    3591:	29 f8                	sub    %edi,%eax
    3593:	48 98                	cltq
    3595:	48 0f af c2          	imul   %rdx,%rax
    3599:	44 89 ca             	mov    %r9d,%edx
    359c:	29 f2                	sub    %esi,%edx
    359e:	48 63 d2             	movslq %edx,%rdx
    35a1:	48 0f af d1          	imul   %rcx,%rdx
    35a5:	41 8b 4f 74          	mov    0x74(%r15),%ecx
    35a9:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
    35ad:	48 29 d0             	sub    %rdx,%rax
    35b0:	48 85 c0             	test   %rax,%rax
    35b3:	0f 8e 94 05 00 00    	jle    3b4d <sg_raster_triangle_depth_capture+0x69d>
    35b9:	45 39 f1             	cmp    %r14d,%r9d
    35bc:	44 89 f5             	mov    %r14d,%ebp
    35bf:	41 89 dd             	mov    %ebx,%r13d
    35c2:	44 89 f2             	mov    %r14d,%edx
    35c5:	41 0f 4e e9          	cmovle %r9d,%ebp
    35c9:	44 8b bc 24 30 01 00 	mov    0x130(%rsp),%r15d
    35d0:	00 
    35d1:	39 f5                	cmp    %esi,%ebp
    35d3:	0f 4f ee             	cmovg  %esi,%ebp
    35d6:	41 39 da             	cmp    %ebx,%r10d
    35d9:	45 0f 4e ea          	cmovle %r10d,%r13d
    35dd:	41 89 eb             	mov    %ebp,%r11d
    35e0:	44 8d a5 01 ff ff ff 	lea    -0xff(%rbp),%r12d
    35e7:	41 39 fd             	cmp    %edi,%r13d
    35ea:	44 0f 4f ef          	cmovg  %edi,%r13d
    35ee:	45 39 f1             	cmp    %r14d,%r9d
    35f1:	41 0f 4d d1          	cmovge %r9d,%edx
    35f5:	39 f2                	cmp    %esi,%edx
    35f7:	0f 4c d6             	cmovl  %esi,%edx
    35fa:	c1 fa 08             	sar    $0x8,%edx
    35fd:	41 39 da             	cmp    %ebx,%r10d
    3600:	8d 4a 01             	lea    0x1(%rdx),%ecx
    3603:	89 da                	mov    %ebx,%edx
    3605:	41 0f 4d d2          	cmovge %r10d,%edx
    3609:	39 fa                	cmp    %edi,%edx
    360b:	0f 4c d7             	cmovl  %edi,%edx
    360e:	41 c1 fb 08          	sar    $0x8,%r11d
    3612:	41 c1 fc 08          	sar    $0x8,%r12d
    3616:	c1 fa 08             	sar    $0x8,%edx
    3619:	83 c2 01             	add    $0x1,%edx
    361c:	85 ed                	test   %ebp,%ebp
    361e:	41 8d ad 01 ff ff ff 	lea    -0xff(%r13),%ebp
    3625:	45 0f 49 e3          	cmovns %r11d,%r12d
    3629:	45 89 eb             	mov    %r13d,%r11d
    362c:	c1 fd 08             	sar    $0x8,%ebp
    362f:	41 c1 fb 08          	sar    $0x8,%r11d
    3633:	45 85 ed             	test   %r13d,%r13d
    3636:	41 0f 49 eb          	cmovns %r11d,%ebp
    363a:	45 39 c4             	cmp    %r8d,%r12d
    363d:	45 89 c3             	mov    %r8d,%r11d
    3640:	45 0f 4d dc          	cmovge %r12d,%r11d
    3644:	45 31 c0             	xor    %r8d,%r8d
    3647:	85 ed                	test   %ebp,%ebp
    3649:	44 0f 49 c5          	cmovns %ebp,%r8d
    364d:	44 39 f9             	cmp    %r15d,%ecx
    3650:	44 89 9c 24 34 01 00 	mov    %r11d,0x134(%rsp)
    3657:	00 
    3658:	41 0f 4f cf          	cmovg  %r15d,%ecx
    365c:	44 89 84 24 8c 00 00 	mov    %r8d,0x8c(%rsp)
    3663:	00 
    3664:	44 89 c5             	mov    %r8d,%ebp
    3667:	89 8c 24 3c 01 00 00 	mov    %ecx,0x13c(%rsp)
    366e:	41 89 c8             	mov    %ecx,%r8d
    3671:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    3676:	8b 49 04             	mov    0x4(%rcx),%ecx
    3679:	39 ca                	cmp    %ecx,%edx
    367b:	0f 4e ca             	cmovle %edx,%ecx
    367e:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    3682:	41 89 cf             	mov    %ecx,%r15d
    3685:	85 d2                	test   %edx,%edx
    3687:	0f 85 4b 04 00 00    	jne    3ad8 <sg_raster_triangle_depth_capture+0x628>
    368d:	45 39 c3             	cmp    %r8d,%r11d
    3690:	0f 8d bb 04 00 00    	jge    3b51 <sg_raster_triangle_depth_capture+0x6a1>
    3696:	39 cd                	cmp    %ecx,%ebp
    3698:	0f 8d b3 04 00 00    	jge    3b51 <sg_raster_triangle_depth_capture+0x6a1>
    369e:	89 f9                	mov    %edi,%ecx
    36a0:	45 89 c8             	mov    %r9d,%r8d
    36a3:	8b 94 24 34 01 00 00 	mov    0x134(%rsp),%edx
    36aa:	45 89 d3             	mov    %r10d,%r11d
    36ad:	44 29 d1             	sub    %r10d,%ecx
    36b0:	45 29 f0             	sub    %r14d,%r8d
    36b3:	66 0f ef e4          	pxor   %xmm4,%xmm4
    36b7:	41 29 db             	sub    %ebx,%r11d
    36ba:	89 4c 24 34          	mov    %ecx,0x34(%rsp)
    36be:	49 63 e8             	movslq %r8d,%rbp
    36c1:	c1 e2 08             	shl    $0x8,%edx
    36c4:	f3 48 0f 2a e0       	cvtsi2ss %rax,%xmm4
    36c9:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    36d0:	83 ea 80             	sub    $0xffffff80,%edx
    36d3:	4d 63 e3             	movslq %r11d,%r12
    36d6:	41 89 f5             	mov    %esi,%r13d
    36d9:	44 89 44 24 48       	mov    %r8d,0x48(%rsp)
    36de:	f3 0f 10 3d 00 00 00 	movss  0x0(%rip),%xmm7        # 36e6 <sg_raster_triangle_depth_capture+0x236>
    36e5:	00 
    36e6:	45 29 cd             	sub    %r9d,%r13d
    36e9:	c1 e1 08             	shl    $0x8,%ecx
    36ec:	44 89 ac 24 88 00 00 	mov    %r13d,0x88(%rsp)
    36f3:	00 
    36f4:	f3 0f 5e fc          	divss  %xmm4,%xmm7
    36f8:	83 e9 80             	sub    $0xffffff80,%ecx
    36fb:	41 89 c8             	mov    %ecx,%r8d
    36fe:	41 29 d8             	sub    %ebx,%r8d
    3701:	49 63 d8             	movslq %r8d,%rbx
    3704:	41 89 d0             	mov    %edx,%r8d
    3707:	45 29 f0             	sub    %r14d,%r8d
    370a:	48 0f af dd          	imul   %rbp,%rbx
    370e:	4d 63 c0             	movslq %r8d,%r8
    3711:	4d 0f af c4          	imul   %r12,%r8
    3715:	4c 29 c3             	sub    %r8,%rbx
    3718:	41 89 c8             	mov    %ecx,%r8d
    371b:	29 f9                	sub    %edi,%ecx
    371d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    3722:	45 29 d0             	sub    %r10d,%r8d
    3725:	48 63 c9             	movslq %ecx,%rcx
    3728:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    372d:	49 63 dd             	movslq %r13d,%rbx
    3730:	4d 63 d0             	movslq %r8d,%r10
    3733:	48 0f af cf          	imul   %rdi,%rcx
    3737:	41 89 d0             	mov    %edx,%r8d
    373a:	29 f2                	sub    %esi,%edx
    373c:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    3741:	48 63 d2             	movslq %edx,%rdx
    3744:	4c 63 6c 24 34       	movslq 0x34(%rsp),%r13
    3749:	45 29 c8             	sub    %r9d,%r8d
    374c:	4d 63 c0             	movslq %r8d,%r8
    374f:	48 c1 e7 08          	shl    $0x8,%rdi
    3753:	4c 0f af d3          	imul   %rbx,%r10
    3757:	48 0f af d6          	imul   %rsi,%rdx
    375b:	48 89 bc 24 80 00 00 	mov    %rdi,0x80(%rsp)
    3762:	00 
    3763:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    3768:	48 f7 de             	neg    %rsi
    376b:	4d 0f af c5          	imul   %r13,%r8
    376f:	8b 87 fc 00 00 00    	mov    0xfc(%rdi),%eax
    3775:	48 29 d1             	sub    %rdx,%rcx
    3778:	4c 89 e2             	mov    %r12,%rdx
    377b:	f3 0f 11 bc 24 ec 00 	movss  %xmm7,0xec(%rsp)
    3782:	00 00 
    3784:	48 f7 da             	neg    %rdx
    3787:	4d 29 c2             	sub    %r8,%r10
    378a:	49 89 c8             	mov    %rcx,%r8
    378d:	48 c1 e2 08          	shl    $0x8,%rdx
    3791:	48 89 d9             	mov    %rbx,%rcx
    3794:	66 0f ef ff          	pxor   %xmm7,%xmm7
    3798:	4d 89 d1             	mov    %r10,%r9
    379b:	48 89 94 24 b8 00 00 	mov    %rdx,0xb8(%rsp)
    37a2:	00 
    37a3:	48 89 ea             	mov    %rbp,%rdx
    37a6:	48 c1 e1 08          	shl    $0x8,%rcx
    37aa:	48 c1 e2 08          	shl    $0x8,%rdx
    37ae:	48 89 4c 24 68       	mov    %rcx,0x68(%rsp)
    37b3:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
    37b8:	4c 89 ea             	mov    %r13,%rdx
    37bb:	f3 0f 11 bc 24 f0 00 	movss  %xmm7,0xf0(%rsp)
    37c2:	00 00 
    37c4:	48 f7 da             	neg    %rdx
    37c7:	48 c1 e2 08          	shl    $0x8,%rdx
    37cb:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
    37d2:	00 
    37d3:	48 89 f2             	mov    %rsi,%rdx
    37d6:	48 c1 e2 08          	shl    $0x8,%rdx
    37da:	48 89 94 24 e0 00 00 	mov    %rdx,0xe0(%rsp)
    37e1:	00 
    37e2:	85 c0                	test   %eax,%eax
    37e4:	0f 84 e6 00 00 00    	je     38d0 <sg_raster_triangle_depth_capture+0x420>
    37ea:	f3 0f 10 a7 f4 00 00 	movss  0xf4(%rdi),%xmm4
    37f1:	00 
    37f2:	0f 2f e7             	comiss %xmm7,%xmm4
    37f5:	0f 84 5d 03 00 00    	je     3b58 <sg_raster_triangle_depth_capture+0x6a8>
    37fb:	f3 0f 5c dd          	subss  %xmm5,%xmm3
    37ff:	f3 0f 5c e9          	subss  %xmm1,%xmm5
    3803:	0f 28 ce             	movaps %xmm6,%xmm1
    3806:	f3 0f 5c d0          	subss  %xmm0,%xmm2
    380a:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    380e:	0f 28 fb             	movaps %xmm3,%xmm7
    3811:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    3815:	f3 0f 59 fa          	mulss  %xmm2,%xmm7
    3819:	f3 0f 58 cf          	addss  %xmm7,%xmm1
    381d:	f3 0f 11 8c 24 f0 00 	movss  %xmm1,0xf0(%rsp)
    3824:	00 00 
    3826:	44 0f 28 f9          	movaps %xmm1,%xmm15
    382a:	66 0f ef c9          	pxor   %xmm1,%xmm1
    382e:	44 0f 2f f9          	comiss %xmm1,%xmm15
    3832:	0f 84 98 00 00 00    	je     38d0 <sg_raster_triangle_depth_capture+0x420>
    3838:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    383f:	00 
    3840:	f3 0f 5c c6          	subss  %xmm6,%xmm0
    3844:	f3 44 0f 10 46 18    	movss  0x18(%rsi),%xmm8
    384a:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    3851:	00 
    3852:	f3 0f 10 4e 18       	movss  0x18(%rsi),%xmm1
    3857:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
    385e:	00 
    385f:	f3 0f 10 7e 18       	movss  0x18(%rsi),%xmm7
    3864:	f3 41 0f 5c c8       	subss  %xmm8,%xmm1
    3869:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    386e:	f3 41 0f 5c f8       	subss  %xmm8,%xmm7
    3873:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    3877:	f3 0f 59 e9          	mulss  %xmm1,%xmm5
    387b:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 3883 <sg_raster_triangle_depth_capture+0x3d3>
    3882:	00 
    3883:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    3887:	f3 0f 59 df          	mulss  %xmm7,%xmm3
    388b:	f3 0f 59 8e f8 00 00 	mulss  0xf8(%rsi),%xmm1
    3892:	00 
    3893:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    3897:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 389f <sg_raster_triangle_depth_capture+0x3ef>
    389e:	00 
    389f:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    38a3:	f3 41 0f 5e c7       	divss  %xmm15,%xmm0
    38a8:	f3 41 0f 5e df       	divss  %xmm15,%xmm3
    38ad:	0f 54 c2             	andps  %xmm2,%xmm0
    38b0:	0f 54 da             	andps  %xmm2,%xmm3
    38b3:	f3 0f 5f c3          	maxss  %xmm3,%xmm0
    38b7:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    38bb:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    38bf:	f3 0f 11 84 24 f0 00 	movss  %xmm0,0xf0(%rsp)
    38c6:	00 00 
    38c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    38cf:	00 
    38d0:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    38d7:	00 
    38d8:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
    38df:	00 
    38e0:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
    38e7:	00 00 00 00 00 
    38ec:	f3 0f 10 66 1c       	movss  0x1c(%rsi),%xmm4
    38f1:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    38f8:	00 
    38f9:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
    38fe:	f3 0f 11 a4 24 f8 00 	movss  %xmm4,0xf8(%rsp)
    3905:	00 00 
    3907:	f3 0f 10 66 1c       	movss  0x1c(%rsi),%xmm4
    390c:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
    3913:	00 
    3914:	f3 0f 11 a4 24 fc 00 	movss  %xmm4,0xfc(%rsp)
    391b:	00 00 
    391d:	f3 0f 10 66 1c       	movss  0x1c(%rsi),%xmm4
    3922:	f3 0f 11 a4 24 08 01 	movss  %xmm4,0x108(%rsp)
    3929:	00 00 
    392b:	48 85 ff             	test   %rdi,%rdi
    392e:	79 11                	jns    3941 <sg_raster_triangle_depth_capture+0x491>
    3930:	48 89 bc 24 c8 00 00 	mov    %rdi,0xc8(%rsp)
    3937:	00 
    3938:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    393f:	00 00 
    3941:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
    3946:	48 85 c9             	test   %rcx,%rcx
    3949:	0f 88 cf 58 00 00    	js     921e <sg_raster_triangle_depth_capture+0x5d6e>
    394f:	48 01 4c 24 40       	add    %rcx,0x40(%rsp)
    3954:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
    395b:	00 
    395c:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
    3963:	00 00 00 00 00 
    3968:	48 89 7c 24 78       	mov    %rdi,0x78(%rsp)
    396d:	48 85 ff             	test   %rdi,%rdi
    3970:	79 11                	jns    3983 <sg_raster_triangle_depth_capture+0x4d3>
    3972:	48 89 bc 24 d0 00 00 	mov    %rdi,0xd0(%rsp)
    3979:	00 
    397a:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    3981:	00 00 
    3983:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    3988:	48 85 d2             	test   %rdx,%rdx
    398b:	0f 88 80 58 00 00    	js     9211 <sg_raster_triangle_depth_capture+0x5d61>
    3991:	48 01 54 24 78       	add    %rdx,0x78(%rsp)
    3996:	48 8b b4 24 e0 00 00 	mov    0xe0(%rsp),%rsi
    399d:	00 
    399e:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
    39a5:	00 00 00 00 00 
    39aa:	48 89 b4 24 b0 00 00 	mov    %rsi,0xb0(%rsp)
    39b1:	00 
    39b2:	48 85 f6             	test   %rsi,%rsi
    39b5:	79 14                	jns    39cb <sg_raster_triangle_depth_capture+0x51b>
    39b7:	48 89 b4 24 d8 00 00 	mov    %rsi,0xd8(%rsp)
    39be:	00 
    39bf:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
    39c6:	00 00 00 00 00 
    39cb:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
    39d2:	00 
    39d3:	48 85 ff             	test   %rdi,%rdi
    39d6:	0f 88 28 58 00 00    	js     9204 <sg_raster_triangle_depth_capture+0x5d54>
    39dc:	48 01 bc 24 b0 00 00 	add    %rdi,0xb0(%rsp)
    39e3:	00 
    39e4:	48 8b 94 24 f0 04 00 	mov    0x4f0(%rsp),%rdx
    39eb:	00 
    39ec:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    39f1:	8b ba 68 01 00 00    	mov    0x168(%rdx),%edi
    39f7:	44 8b b6 c0 00 00 00 	mov    0xc0(%rsi),%r14d
    39fe:	89 bc 24 38 01 00 00 	mov    %edi,0x138(%rsp)
    3a05:	45 85 f6             	test   %r14d,%r14d
    3a08:	0f 85 b9 59 00 00    	jne    93c7 <sg_raster_triangle_depth_capture+0x5f17>
    3a0e:	44 8b 96 50 05 00 00 	mov    0x550(%rsi),%r10d
    3a15:	45 85 d2             	test   %r10d,%r10d
    3a18:	0f 85 03 67 00 00    	jne    a121 <sg_raster_triangle_depth_capture+0x6c71>
    3a1e:	8b 8e c0 3d 00 00    	mov    0x3dc0(%rsi),%ecx
    3a24:	85 c9                	test   %ecx,%ecx
    3a26:	0f 85 54 01 00 00    	jne    3b80 <sg_raster_triangle_depth_capture+0x6d0>
    3a2c:	44 8b b6 a8 37 00 00 	mov    0x37a8(%rsi),%r14d
    3a33:	45 85 f6             	test   %r14d,%r14d
    3a36:	0f 85 38 6d 00 00    	jne    a774 <sg_raster_triangle_depth_capture+0x72c4>
    3a3c:	44 8b 96 ac 37 00 00 	mov    0x37ac(%rsi),%r10d
    3a43:	45 85 d2             	test   %r10d,%r10d
    3a46:	0f 85 28 6d 00 00    	jne    a774 <sg_raster_triangle_depth_capture+0x72c4>
    3a4c:	48 89 d1             	mov    %rdx,%rcx
    3a4f:	8b 96 84 00 00 00    	mov    0x84(%rsi),%edx
    3a55:	8b 89 60 01 00 00    	mov    0x160(%rcx),%ecx
    3a5b:	89 8c 24 f4 00 00 00 	mov    %ecx,0xf4(%rsp)
    3a62:	85 c9                	test   %ecx,%ecx
    3a64:	0f 84 f9 72 00 00    	je     ad63 <sg_raster_triangle_depth_capture+0x78b3>
    3a6a:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    3a71:	00 
    3a72:	8b 89 64 01 00 00    	mov    0x164(%rcx),%ecx
    3a78:	83 f9 01             	cmp    $0x1,%ecx
    3a7b:	0f 84 be 80 00 00    	je     bb3f <sg_raster_triangle_depth_capture+0x868f>
    3a81:	83 f9 02             	cmp    $0x2,%ecx
    3a84:	0f 85 ea 6c 00 00    	jne    a774 <sg_raster_triangle_depth_capture+0x72c4>
    3a8a:	c7 84 24 f4 00 00 00 	movl   $0x0,0xf4(%rsp)
    3a91:	00 00 00 00 
    3a95:	85 ff                	test   %edi,%edi
    3a97:	0f 85 b7 66 00 00    	jne    a154 <sg_raster_triangle_depth_capture+0x6ca4>
    3a9d:	85 d2                	test   %edx,%edx
    3a9f:	0f 84 4f 59 00 00    	je     93f4 <sg_raster_triangle_depth_capture+0x5f44>
    3aa5:	b9 01 00 00 00       	mov    $0x1,%ecx
    3aaa:	85 c0                	test   %eax,%eax
    3aac:	0f 85 fe 00 00 00    	jne    3bb0 <sg_raster_triangle_depth_capture+0x700>
    3ab2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3ab7:	31 c9                	xor    %ecx,%ecx
    3ab9:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
    3abf:	89 44 24 50          	mov    %eax,0x50(%rsp)
    3ac3:	83 e0 fd             	and    $0xfffffffd,%eax
    3ac6:	3d 01 02 00 00       	cmp    $0x201,%eax
    3acb:	0f 95 c1             	setne  %cl
    3ace:	e9 dd 00 00 00       	jmp    3bb0 <sg_raster_triangle_depth_capture+0x700>
    3ad3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3ad8:	45 89 d8             	mov    %r11d,%r8d
    3adb:	4c 8b 5c 24 28       	mov    0x28(%rsp),%r11
    3ae0:	44 8b ac 24 3c 01 00 	mov    0x13c(%rsp),%r13d
    3ae7:	00 
    3ae8:	41 8b 4b 64          	mov    0x64(%r11),%ecx
    3aec:	41 8b 53 68          	mov    0x68(%r11),%edx
    3af0:	41 39 c8             	cmp    %ecx,%r8d
    3af3:	44 0f 4c c1          	cmovl  %ecx,%r8d
    3af7:	39 d5                	cmp    %edx,%ebp
    3af9:	0f 4c ea             	cmovl  %edx,%ebp
    3afc:	41 03 4b 6c          	add    0x6c(%r11),%ecx
    3b00:	41 39 cd             	cmp    %ecx,%r13d
    3b03:	44 89 84 24 34 01 00 	mov    %r8d,0x134(%rsp)
    3b0a:	00 
    3b0b:	41 0f 4e cd          	cmovle %r13d,%ecx
    3b0f:	41 03 53 70          	add    0x70(%r11),%edx
    3b13:	89 ac 24 8c 00 00 00 	mov    %ebp,0x8c(%rsp)
    3b1a:	41 39 d7             	cmp    %edx,%r15d
    3b1d:	89 8c 24 3c 01 00 00 	mov    %ecx,0x13c(%rsp)
    3b24:	44 0f 4f fa          	cmovg  %edx,%r15d
    3b28:	41 39 c8             	cmp    %ecx,%r8d
    3b2b:	7d 09                	jge    3b36 <sg_raster_triangle_depth_capture+0x686>
    3b2d:	44 39 fd             	cmp    %r15d,%ebp
    3b30:	0f 8c 68 fb ff ff    	jl     369e <sg_raster_triangle_depth_capture+0x1ee>
    3b36:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3b3b:	48 81 c4 b8 04 00 00 	add    $0x4b8,%rsp
    3b42:	5b                   	pop    %rbx
    3b43:	5d                   	pop    %rbp
    3b44:	41 5c                	pop    %r12
    3b46:	41 5d                	pop    %r13
    3b48:	41 5e                	pop    %r14
    3b4a:	41 5f                	pop    %r15
    3b4c:	c3                   	ret
    3b4d:	85 c9                	test   %ecx,%ecx
    3b4f:	75 e5                	jne    3b36 <sg_raster_triangle_depth_capture+0x686>
    3b51:	b8 01 00 00 00       	mov    $0x1,%eax
    3b56:	eb e3                	jmp    3b3b <sg_raster_triangle_depth_capture+0x68b>
    3b58:	f3 0f 10 bf f8 00 00 	movss  0xf8(%rdi),%xmm7
    3b5f:	00 
    3b60:	f3 0f 11 bc 24 f0 00 	movss  %xmm7,0xf0(%rsp)
    3b67:	00 00 
    3b69:	44 0f 28 e7          	movaps %xmm7,%xmm12
    3b6d:	66 0f ef ff          	pxor   %xmm7,%xmm7
    3b71:	44 0f 2f e7          	comiss %xmm7,%xmm12
    3b75:	0f 84 55 fd ff ff    	je     38d0 <sg_raster_triangle_depth_capture+0x420>
    3b7b:	e9 7b fc ff ff       	jmp    37fb <sg_raster_triangle_depth_capture+0x34b>
    3b80:	c7 84 24 38 01 00 00 	movl   $0x0,0x138(%rsp)
    3b87:	00 00 00 00 
    3b8b:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    3b92:	01 00 00 00 
    3b96:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    3b9b:	b9 01 00 00 00       	mov    $0x1,%ecx
    3ba0:	44 8b b6 84 00 00 00 	mov    0x84(%rsi),%r14d
    3ba7:	45 85 f6             	test   %r14d,%r14d
    3baa:	0f 85 f5 fe ff ff    	jne    3aa5 <sg_raster_triangle_depth_capture+0x5f5>
    3bb0:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    3bb7:	00 
    3bb8:	ba 01 00 00 00       	mov    $0x1,%edx
    3bbd:	8b 40 18             	mov    0x18(%rax),%eax
    3bc0:	89 c6                	mov    %eax,%esi
    3bc2:	f7 d6                	not    %esi
    3bc4:	81 e6 00 00 80 7f    	and    $0x7f800000,%esi
    3bca:	74 1f                	je     3beb <sg_raster_triangle_depth_capture+0x73b>
    3bcc:	66 0f 6e c0          	movd   %eax,%xmm0
    3bd0:	0f 2f 05 00 00 00 00 	comiss 0x0(%rip),%xmm0        # 3bd7 <sg_raster_triangle_depth_capture+0x727>
    3bd7:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3bdb:	0f 97 c0             	seta   %al
    3bde:	0f 2f c8             	comiss %xmm0,%xmm1
    3be1:	0f 97 c2             	seta   %dl
    3be4:	09 d0                	or     %edx,%eax
    3be6:	0f b6 d0             	movzbl %al,%edx
    3be9:	09 ca                	or     %ecx,%edx
    3beb:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    3bf2:	00 
    3bf3:	8b 48 18             	mov    0x18(%rax),%ecx
    3bf6:	b8 01 00 00 00       	mov    $0x1,%eax
    3bfb:	89 ce                	mov    %ecx,%esi
    3bfd:	f7 d6                	not    %esi
    3bff:	81 e6 00 00 80 7f    	and    $0x7f800000,%esi
    3c05:	74 1f                	je     3c26 <sg_raster_triangle_depth_capture+0x776>
    3c07:	66 0f 6e c1          	movd   %ecx,%xmm0
    3c0b:	0f 2f 05 00 00 00 00 	comiss 0x0(%rip),%xmm0        # 3c12 <sg_raster_triangle_depth_capture+0x762>
    3c12:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3c16:	0f 97 c0             	seta   %al
    3c19:	0f 2f c8             	comiss %xmm0,%xmm1
    3c1c:	0f 97 c1             	seta   %cl
    3c1f:	09 c8                	or     %ecx,%eax
    3c21:	0f b6 c0             	movzbl %al,%eax
    3c24:	09 d0                	or     %edx,%eax
    3c26:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    3c2d:	00 
    3c2e:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    3c35:	01 00 00 00 
    3c39:	8b 51 18             	mov    0x18(%rcx),%edx
    3c3c:	89 d1                	mov    %edx,%ecx
    3c3e:	f7 d1                	not    %ecx
    3c40:	81 e1 00 00 80 7f    	and    $0x7f800000,%ecx
    3c46:	74 26                	je     3c6e <sg_raster_triangle_depth_capture+0x7be>
    3c48:	66 0f 6e c2          	movd   %edx,%xmm0
    3c4c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3c50:	0f 2f c8             	comiss %xmm0,%xmm1
    3c53:	0f 97 c2             	seta   %dl
    3c56:	0f 2f 05 00 00 00 00 	comiss 0x0(%rip),%xmm0        # 3c5d <sg_raster_triangle_depth_capture+0x7ad>
    3c5d:	0f 97 c1             	seta   %cl
    3c60:	09 ca                	or     %ecx,%edx
    3c62:	0f b6 d2             	movzbl %dl,%edx
    3c65:	09 c2                	or     %eax,%edx
    3c67:	89 94 24 20 01 00 00 	mov    %edx,0x120(%rsp)
    3c6e:	8b b4 24 8c 00 00 00 	mov    0x8c(%rsp),%esi
    3c75:	44 39 fe             	cmp    %r15d,%esi
    3c78:	0f 8d f2 6f 00 00    	jge    ac70 <sg_raster_triangle_depth_capture+0x77c0>
    3c7e:	8b 44 24 48          	mov    0x48(%rsp),%eax
    3c82:	44 89 da             	mov    %r11d,%edx
    3c85:	8b 7c 24 34          	mov    0x34(%rsp),%edi
    3c89:	c1 e8 1f             	shr    $0x1f,%eax
    3c8c:	45 85 db             	test   %r11d,%r11d
    3c8f:	0f 94 c1             	sete   %cl
    3c92:	c1 ea 1f             	shr    $0x1f,%edx
    3c95:	21 c8                	and    %ecx,%eax
    3c97:	09 d0                	or     %edx,%eax
    3c99:	83 e8 01             	sub    $0x1,%eax
    3c9c:	89 84 24 48 02 00 00 	mov    %eax,0x248(%rsp)
    3ca3:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
    3caa:	c1 e8 1f             	shr    $0x1f,%eax
    3cad:	85 ff                	test   %edi,%edi
    3caf:	0f 94 c1             	sete   %cl
    3cb2:	c1 ef 1f             	shr    $0x1f,%edi
    3cb5:	21 c8                	and    %ecx,%eax
    3cb7:	09 f8                	or     %edi,%eax
    3cb9:	8b 7c 24 30          	mov    0x30(%rsp),%edi
    3cbd:	83 e8 01             	sub    $0x1,%eax
    3cc0:	89 84 24 5c 01 00 00 	mov    %eax,0x15c(%rsp)
    3cc7:	8b 44 24 20          	mov    0x20(%rsp),%eax
    3ccb:	c1 e8 1f             	shr    $0x1f,%eax
    3cce:	85 ff                	test   %edi,%edi
    3cd0:	0f 94 c1             	sete   %cl
    3cd3:	c1 ef 1f             	shr    $0x1f,%edi
    3cd6:	45 31 d2             	xor    %r10d,%r10d
    3cd9:	48 c1 e3 09          	shl    $0x9,%rbx
    3cdd:	21 c8                	and    %ecx,%eax
    3cdf:	48 c1 e5 09          	shl    $0x9,%rbp
    3ce3:	4c 89 c9             	mov    %r9,%rcx
    3ce6:	09 f8                	or     %edi,%eax
    3ce8:	48 89 9c 24 48 01 00 	mov    %rbx,0x148(%rsp)
    3cef:	00 
    3cf0:	83 e8 01             	sub    $0x1,%eax
    3cf3:	48 89 ac 24 40 01 00 	mov    %rbp,0x140(%rsp)
    3cfa:	00 
    3cfb:	48 8b 6c 24 38       	mov    0x38(%rsp),%rbp
    3d00:	89 84 24 58 01 00 00 	mov    %eax,0x158(%rsp)
    3d07:	4c 89 e0             	mov    %r12,%rax
    3d0a:	48 f7 d8             	neg    %rax
    3d0d:	48 c1 e0 09          	shl    $0x9,%rax
    3d11:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    3d16:	4c 89 e8             	mov    %r13,%rax
    3d19:	48 f7 d8             	neg    %rax
    3d1c:	48 c1 e0 09          	shl    $0x9,%rax
    3d20:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    3d25:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3d2a:	48 f7 d8             	neg    %rax
    3d2d:	48 c1 e0 09          	shl    $0x9,%rax
    3d31:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    3d36:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3d3b:	48 c1 e0 09          	shl    $0x9,%rax
    3d3f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
    3d46:	00 
    3d47:	8d 46 01             	lea    0x1(%rsi),%eax
    3d4a:	4c 89 c6             	mov    %r8,%rsi
    3d4d:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
    3d54:	b8 00 80 00 00       	mov    $0x8000,%eax
    3d59:	66 0f 6e e0          	movd   %eax,%xmm4
    3d5d:	66 0f 70 ec 00       	pshufd $0x0,%xmm4,%xmm5
    3d62:	0f 29 ac 24 90 01 00 	movaps %xmm5,0x190(%rsp)
    3d69:	00 
    3d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3d70:	ba 0f 00 00 00       	mov    $0xf,%edx
    3d75:	44 39 bc 24 e8 00 00 	cmp    %r15d,0xe8(%rsp)
    3d7c:	00 
    3d7d:	b8 03 00 00 00       	mov    $0x3,%eax
    3d82:	8b 9c 24 34 01 00 00 	mov    0x134(%rsp),%ebx
    3d89:	0f 4c c2             	cmovl  %edx,%eax
    3d8c:	8b 94 24 3c 01 00 00 	mov    0x13c(%rsp),%edx
    3d93:	89 44 24 34          	mov    %eax,0x34(%rsp)
    3d97:	39 d3                	cmp    %edx,%ebx
    3d99:	0f 8d 71 09 00 00    	jge    4710 <sg_raster_triangle_depth_capture+0x1260>
    3d9f:	48 63 bc 24 48 02 00 	movslq 0x248(%rsp),%rdi
    3da6:	00 
    3da7:	83 e0 05             	and    $0x5,%eax
    3daa:	89 5c 24 0c          	mov    %ebx,0xc(%rsp)
    3dae:	41 be 00 00 00 80    	mov    $0x80000000,%r14d
    3db4:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    3db9:	49 bd ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r13
    3dc0:	ff ff ff 
    3dc3:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
    3dc8:	48 63 bc 24 5c 01 00 	movslq 0x15c(%rsp),%rdi
    3dcf:	00 
    3dd0:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    3dd5:	48 89 7c 24 70       	mov    %rdi,0x70(%rsp)
    3dda:	48 63 bc 24 58 01 00 	movslq 0x158(%rsp),%rdi
    3de1:	00 
    3de2:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
    3de7:	48 89 bc 24 90 00 00 	mov    %rdi,0x90(%rsp)
    3dee:	00 
    3def:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
    3df6:	48 89 8c 24 00 01 00 	mov    %rcx,0x100(%rsp)
    3dfd:	00 
    3dfe:	48 89 ac 24 10 01 00 	mov    %rbp,0x110(%rsp)
    3e05:	00 
    3e06:	48 89 b4 24 18 01 00 	mov    %rsi,0x118(%rsp)
    3e0d:	00 
    3e0e:	44 89 bc 24 0c 01 00 	mov    %r15d,0x10c(%rsp)
    3e15:	00 
    3e16:	41 89 d7             	mov    %edx,%r15d
    3e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3e20:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    3e24:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    3e29:	44 8b 64 24 34       	mov    0x34(%rsp),%r12d
    3e2e:	8d 58 01             	lea    0x1(%rax),%ebx
    3e31:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3e36:	44 39 fb             	cmp    %r15d,%ebx
    3e39:	89 5c 24 30          	mov    %ebx,0x30(%rsp)
    3e3d:	44 0f 4d a4 24 88 00 	cmovge 0x88(%rsp),%r12d
    3e44:	00 00 
    3e46:	48 01 c8             	add    %rcx,%rax
    3e49:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
    3e4e:	48 01 c1             	add    %rax,%rcx
    3e51:	0f 88 69 08 00 00    	js     46c0 <sg_raster_triangle_depth_capture+0x1210>
    3e57:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    3e5c:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
    3e61:	48 8d 14 3e          	lea    (%rsi,%rdi,1),%rdx
    3e65:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
    3e6a:	48 01 d6             	add    %rdx,%rsi
    3e6d:	0f 88 4d 08 00 00    	js     46c0 <sg_raster_triangle_depth_capture+0x1210>
    3e73:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    3e78:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
    3e7f:	00 
    3e80:	48 01 f9             	add    %rdi,%rcx
    3e83:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
    3e8a:	00 
    3e8b:	48 01 cf             	add    %rcx,%rdi
    3e8e:	0f 88 2c 08 00 00    	js     46c0 <sg_raster_triangle_depth_capture+0x1210>
    3e94:	48 8b b4 24 d8 00 00 	mov    0xd8(%rsp),%rsi
    3e9b:	00 
    3e9c:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
    3ea3:	00 
    3ea4:	48 01 ce             	add    %rcx,%rsi
    3ea7:	48 01 d7             	add    %rdx,%rdi
    3eaa:	48 09 fe             	or     %rdi,%rsi
    3ead:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
    3eb4:	00 
    3eb5:	48 01 c7             	add    %rax,%rdi
    3eb8:	48 09 fe             	or     %rdi,%rsi
    3ebb:	0f 88 4f 0f 00 00    	js     4e10 <sg_raster_triangle_depth_capture+0x1960>
    3ec1:	83 bc 24 f4 00 00 00 	cmpl   $0x1,0xf4(%rsp)
    3ec8:	01 
    3ec9:	0f 84 81 33 00 00    	je     7250 <sg_raster_triangle_depth_capture+0x3da0>
    3ecf:	8b 84 24 30 01 00 00 	mov    0x130(%rsp),%eax
    3ed6:	39 c3                	cmp    %eax,%ebx
    3ed8:	0f 8c 19 11 00 00    	jl     4ff7 <sg_raster_triangle_depth_capture+0x1b47>
    3ede:	44 8b 9c 24 38 01 00 	mov    0x138(%rsp),%r11d
    3ee5:	00 
    3ee6:	45 85 db             	test   %r11d,%r11d
    3ee9:	0f 85 47 1e 00 00    	jne    5d36 <sg_raster_triangle_depth_capture+0x2886>
    3eef:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    3ef4:	44 8b 93 c0 3d 00 00 	mov    0x3dc0(%rbx),%r10d
    3efb:	45 85 d2             	test   %r10d,%r10d
    3efe:	74 37                	je     3f37 <sg_raster_triangle_depth_capture+0xa87>
    3f00:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    3f04:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    3f0b:	89 f0                	mov    %esi,%eax
    3f0d:	83 e2 1f             	and    $0x1f,%edx
    3f10:	83 e6 07             	and    $0x7,%esi
    3f13:	c1 f8 03             	sar    $0x3,%eax
    3f16:	89 f1                	mov    %esi,%ecx
    3f18:	83 e0 03             	and    $0x3,%eax
    3f1b:	8d 04 90             	lea    (%rax,%rdx,4),%eax
    3f1e:	48 98                	cltq
    3f20:	0f b6 94 03 c4 3d 00 	movzbl 0x3dc4(%rbx,%rax,1),%edx
    3f27:	00 
    3f28:	b8 80 00 00 00       	mov    $0x80,%eax
    3f2d:	d3 e8                	shr    %cl,%eax
    3f2f:	85 c2                	test   %eax,%edx
    3f31:	0f 84 2e 02 00 00    	je     4165 <sg_raster_triangle_depth_capture+0xcb5>
    3f37:	66 0f ef f6          	pxor   %xmm6,%xmm6
    3f3b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3f3f:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    3f46:	00 00 
    3f48:	f3 0f 10 bc 24 f8 00 	movss  0xf8(%rsp),%xmm7
    3f4f:	00 00 
    3f51:	f3 48 0f 2a 74 24 10 	cvtsi2ssq 0x10(%rsp),%xmm6
    3f58:	66 0f ef db          	pxor   %xmm3,%xmm3
    3f5c:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 3f64 <sg_raster_triangle_depth_capture+0xab4>
    3f63:	00 
    3f64:	f3 44 0f 10 84 24 fc 	movss  0xfc(%rsp),%xmm8
    3f6b:	00 00 00 
    3f6e:	f3 48 0f 2a 44 24 18 	cvtsi2ssq 0x18(%rsp),%xmm0
    3f75:	f3 44 0f 10 8c 24 08 	movss  0x108(%rsp),%xmm9
    3f7c:	01 00 00 
    3f7f:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    3f83:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    3f87:	f3 0f 59 fe          	mulss  %xmm6,%xmm7
    3f8b:	0f 28 d6             	movaps %xmm6,%xmm2
    3f8e:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    3f92:	f3 44 0f 59 c0       	mulss  %xmm0,%xmm8
    3f97:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    3f9b:	0f 28 d7             	movaps %xmm7,%xmm2
    3f9e:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    3fa3:	f3 44 0f 59 c9       	mulss  %xmm1,%xmm9
    3fa8:	f3 41 0f 58 d1       	addss  %xmm9,%xmm2
    3fad:	0f 2f da             	comiss %xmm2,%xmm3
    3fb0:	0f 83 af 01 00 00    	jae    4165 <sg_raster_triangle_depth_capture+0xcb5>
    3fb6:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    3fbd:	00 
    3fbe:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    3fc3:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 3fcc <sg_raster_triangle_depth_capture+0xb1c>
    3fca:	00 00 
    3fcc:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    3fd1:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    3fd8:	00 
    3fd9:	44 8b 8f 84 00 00 00 	mov    0x84(%rdi),%r9d
    3fe0:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    3fe5:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    3fea:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    3ff1:	00 
    3ff2:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    3ff7:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    3ffe:	00 00 
    4000:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    4004:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    4008:	45 85 c9             	test   %r9d,%r9d
    400b:	0f 84 7f 07 00 00    	je     4790 <sg_raster_triangle_depth_capture+0x12e0>
    4011:	44 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%r8d
    4018:	45 85 c0             	test   %r8d,%r8d
    401b:	0f 85 6f 07 00 00    	jne    4790 <sg_raster_triangle_depth_capture+0x12e0>
    4021:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    4028:	0f af 07             	imul   (%rdi),%eax
    402b:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
    402f:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    4033:	01 d8                	add    %ebx,%eax
    4035:	48 98                	cltq
    4037:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    403c:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
    4042:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    4049:	2d 00 02 00 00       	sub    $0x200,%eax
    404e:	83 f8 07             	cmp    $0x7,%eax
    4051:	0f 87 24 07 00 00    	ja     477b <sg_raster_triangle_depth_capture+0x12cb>
    4057:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 405e <sg_raster_triangle_depth_capture+0xbae>
    405e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    4062:	48 01 d0             	add    %rdx,%rax
    4065:	ff e0                	jmp    *%rax
    4067:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    406e:	00 00 
    4070:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4075:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    407c:	00 00 
    407e:	f3 0f 59 b8 10 01 00 	mulss  0x110(%rax),%xmm7
    4085:	00 
    4086:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    408d:	00 00 
    408f:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    4096:	00 00 
    4098:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    409f:	00 00 
    40a1:	f3 0f 59 ff          	mulss  %xmm7,%xmm7
    40a5:	0f 57 3d 00 00 00 00 	xorps  0x0(%rip),%xmm7        # 40ac <sg_raster_triangle_depth_capture+0xbfc>
    40ac:	0f 28 c7             	movaps %xmm7,%xmm0
    40af:	e8 00 00 00 00       	call   40b4 <sg_raster_triangle_depth_capture+0xc04>
    40b4:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 40bc <sg_raster_triangle_depth_capture+0xc0c>
    40bb:	00 
    40bc:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    40c3:	00 00 
    40c5:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    40cc:	00 00 
    40ce:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    40d5:	00 00 
    40d7:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 40df <sg_raster_triangle_depth_capture+0xc2f>
    40de:	00 
    40df:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    40e6:	00 00 
    40e8:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
    40ef:	00 00 
    40f1:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    40f5:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    40f9:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    40fd:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4101:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4106:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    410d:	00 
    410e:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4112:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4116:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    411d:	00 
    411e:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4122:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    4129:	00 
    412a:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    4131:	00 00 
    4133:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4137:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    413b:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4142:	00 00 
    4144:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    414b:	00 00 
    414d:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    4154:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    4158:	0f 28 c6             	movaps %xmm6,%xmm0
    415b:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    4160:	e8 00 00 00 00       	call   4165 <sg_raster_triangle_depth_capture+0xcb5>
    4165:	41 f6 c4 02          	test   $0x2,%r12b
    4169:	0f 84 97 02 00 00    	je     4406 <sg_raster_triangle_depth_capture+0xf56>
    416f:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    4176:	00 
    4177:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    417c:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    4181:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    4186:	48 01 c2             	add    %rax,%rdx
    4189:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    4190:	00 
    4191:	44 8b 8b c0 3d 00 00 	mov    0x3dc0(%rbx),%r9d
    4198:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
    419c:	45 85 c9             	test   %r9d,%r9d
    419f:	74 3a                	je     41db <sg_raster_triangle_depth_capture+0xd2b>
    41a1:	44 8b 4c 24 30       	mov    0x30(%rsp),%r9d
    41a6:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    41ad:	44 89 c8             	mov    %r9d,%eax
    41b0:	83 e1 1f             	and    $0x1f,%ecx
    41b3:	c1 f8 03             	sar    $0x3,%eax
    41b6:	83 e0 03             	and    $0x3,%eax
    41b9:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    41bc:	44 89 c9             	mov    %r9d,%ecx
    41bf:	48 98                	cltq
    41c1:	83 e1 07             	and    $0x7,%ecx
    41c4:	0f b6 bc 03 c4 3d 00 	movzbl 0x3dc4(%rbx,%rax,1),%edi
    41cb:	00 
    41cc:	b8 80 00 00 00       	mov    $0x80,%eax
    41d1:	d3 e8                	shr    %cl,%eax
    41d3:	85 c7                	test   %eax,%edi
    41d5:	0f 84 2b 02 00 00    	je     4406 <sg_raster_triangle_depth_capture+0xf56>
    41db:	66 0f ef f6          	pxor   %xmm6,%xmm6
    41df:	66 0f ef c0          	pxor   %xmm0,%xmm0
    41e3:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    41ea:	00 00 
    41ec:	f3 44 0f 10 8c 24 f8 	movss  0xf8(%rsp),%xmm9
    41f3:	00 00 00 
    41f6:	f3 48 0f 2a f6       	cvtsi2ss %rsi,%xmm6
    41fb:	66 0f ef db          	pxor   %xmm3,%xmm3
    41ff:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 4207 <sg_raster_triangle_depth_capture+0xd57>
    4206:	00 
    4207:	f3 0f 10 bc 24 fc 00 	movss  0xfc(%rsp),%xmm7
    420e:	00 00 
    4210:	f3 44 0f 10 84 24 08 	movss  0x108(%rsp),%xmm8
    4217:	01 00 00 
    421a:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    421f:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    4223:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4227:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
    422c:	0f 28 d6             	movaps %xmm6,%xmm2
    422f:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4233:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
    4237:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    423b:	41 0f 28 d1          	movaps %xmm9,%xmm2
    423f:	f3 0f 58 d7          	addss  %xmm7,%xmm2
    4243:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    4248:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    424d:	0f 2f da             	comiss %xmm2,%xmm3
    4250:	0f 83 b0 01 00 00    	jae    4406 <sg_raster_triangle_depth_capture+0xf56>
    4256:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    425d:	00 
    425e:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    4263:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 426c <sg_raster_triangle_depth_capture+0xdbc>
    426a:	00 00 
    426c:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    4271:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    4278:	00 
    4279:	44 8b 81 84 00 00 00 	mov    0x84(%rcx),%r8d
    4280:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    4285:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    428a:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    4291:	00 
    4292:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    4297:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    429e:	00 00 
    42a0:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    42a4:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    42a8:	45 85 c0             	test   %r8d,%r8d
    42ab:	0f 84 3f 09 00 00    	je     4bf0 <sg_raster_triangle_depth_capture+0x1740>
    42b1:	8b b9 c0 00 00 00    	mov    0xc0(%rcx),%edi
    42b7:	85 ff                	test   %edi,%edi
    42b9:	0f 85 31 09 00 00    	jne    4bf0 <sg_raster_triangle_depth_capture+0x1740>
    42bf:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    42c6:	0f af 01             	imul   (%rcx),%eax
    42c9:	8b 74 24 30          	mov    0x30(%rsp),%esi
    42cd:	48 8b 51 10          	mov    0x10(%rcx),%rdx
    42d1:	01 f0                	add    %esi,%eax
    42d3:	48 98                	cltq
    42d5:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    42da:	8b 81 88 00 00 00    	mov    0x88(%rcx),%eax
    42e0:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    42e7:	2d 00 02 00 00       	sub    $0x200,%eax
    42ec:	83 f8 07             	cmp    $0x7,%eax
    42ef:	0f 87 e1 08 00 00    	ja     4bd6 <sg_raster_triangle_depth_capture+0x1726>
    42f5:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 42fc <sg_raster_triangle_depth_capture+0xe4c>
    42fc:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    4300:	48 01 d0             	add    %rdx,%rax
    4303:	ff e0                	jmp    *%rax
    4305:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    430c:	00 00 
    430e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4313:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    431a:	00 00 
    431c:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
    4323:	00 00 
    4325:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    432c:	00 00 
    432e:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    4335:	00 00 
    4337:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    433e:	00 00 
    4340:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
    4345:	41 0f 28 c2          	movaps %xmm10,%xmm0
    4349:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 4350 <sg_raster_triangle_depth_capture+0xea0>
    4350:	e8 00 00 00 00       	call   4355 <sg_raster_triangle_depth_capture+0xea5>
    4355:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 435d <sg_raster_triangle_depth_capture+0xead>
    435c:	00 
    435d:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    4364:	00 00 
    4366:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    436d:	00 00 
    436f:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    4376:	00 00 
    4378:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4380 <sg_raster_triangle_depth_capture+0xed0>
    437f:	00 
    4380:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    4387:	00 00 
    4389:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
    4390:	00 00 
    4392:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4396:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    439a:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    439e:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    43a2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    43a7:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    43ae:	00 
    43af:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    43b3:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    43b7:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    43be:	00 
    43bf:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    43c3:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    43ca:	00 
    43cb:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    43d2:	00 00 
    43d4:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    43d8:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    43dc:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    43e3:	00 00 
    43e5:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    43ec:	00 00 
    43ee:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    43f5:	8b 74 24 30          	mov    0x30(%rsp),%esi
    43f9:	0f 28 c6             	movaps %xmm6,%xmm0
    43fc:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    4401:	e8 00 00 00 00       	call   4406 <sg_raster_triangle_depth_capture+0xf56>
    4406:	41 f6 c4 04          	test   $0x4,%r12b
    440a:	0f 84 8b 02 00 00    	je     469b <sg_raster_triangle_depth_capture+0x11eb>
    4410:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    4415:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    441a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    441f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    4424:	48 01 c2             	add    %rax,%rdx
    4427:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    442c:	44 8b 87 c0 3d 00 00 	mov    0x3dc0(%rdi),%r8d
    4433:	48 01 c6             	add    %rax,%rsi
    4436:	45 85 c0             	test   %r8d,%r8d
    4439:	74 37                	je     4472 <sg_raster_triangle_depth_capture+0xfc2>
    443b:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
    443f:	8b 8c 24 e8 00 00 00 	mov    0xe8(%rsp),%ecx
    4446:	89 d8                	mov    %ebx,%eax
    4448:	83 e1 1f             	and    $0x1f,%ecx
    444b:	83 e3 07             	and    $0x7,%ebx
    444e:	c1 f8 03             	sar    $0x3,%eax
    4451:	83 e0 03             	and    $0x3,%eax
    4454:	8d 04 88             	lea    (%rax,%rcx,4),%eax
    4457:	89 d9                	mov    %ebx,%ecx
    4459:	48 98                	cltq
    445b:	0f b6 bc 07 c4 3d 00 	movzbl 0x3dc4(%rdi,%rax,1),%edi
    4462:	00 
    4463:	b8 80 00 00 00       	mov    $0x80,%eax
    4468:	d3 e8                	shr    %cl,%eax
    446a:	85 c7                	test   %eax,%edi
    446c:	0f 84 29 02 00 00    	je     469b <sg_raster_triangle_depth_capture+0x11eb>
    4472:	66 0f ef f6          	pxor   %xmm6,%xmm6
    4476:	66 0f ef c0          	pxor   %xmm0,%xmm0
    447a:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    4481:	00 00 
    4483:	f3 44 0f 10 8c 24 f8 	movss  0xf8(%rsp),%xmm9
    448a:	00 00 00 
    448d:	f3 48 0f 2a f6       	cvtsi2ss %rsi,%xmm6
    4492:	66 0f ef db          	pxor   %xmm3,%xmm3
    4496:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 449e <sg_raster_triangle_depth_capture+0xfee>
    449d:	00 
    449e:	f3 0f 10 bc 24 fc 00 	movss  0xfc(%rsp),%xmm7
    44a5:	00 00 
    44a7:	f3 44 0f 10 84 24 08 	movss  0x108(%rsp),%xmm8
    44ae:	01 00 00 
    44b1:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    44b6:	f3 0f 59 f5          	mulss  %xmm5,%xmm6
    44ba:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    44be:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
    44c3:	0f 28 d6             	movaps %xmm6,%xmm2
    44c6:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    44ca:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
    44ce:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    44d2:	41 0f 28 d1          	movaps %xmm9,%xmm2
    44d6:	f3 0f 58 d7          	addss  %xmm7,%xmm2
    44da:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    44df:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    44e4:	0f 2f da             	comiss %xmm2,%xmm3
    44e7:	0f 83 ae 01 00 00    	jae    469b <sg_raster_triangle_depth_capture+0x11eb>
    44ed:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    44f4:	00 
    44f5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    44fa:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 4503 <sg_raster_triangle_depth_capture+0x1053>
    4501:	00 00 
    4503:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    4508:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    450f:	00 
    4510:	8b b7 84 00 00 00    	mov    0x84(%rdi),%esi
    4516:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    451b:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    4520:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    4527:	00 
    4528:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    452d:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    4534:	00 00 
    4536:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    453a:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    453e:	85 f6                	test   %esi,%esi
    4540:	0f 84 7a 04 00 00    	je     49c0 <sg_raster_triangle_depth_capture+0x1510>
    4546:	8b 8f c0 00 00 00    	mov    0xc0(%rdi),%ecx
    454c:	85 c9                	test   %ecx,%ecx
    454e:	0f 85 6c 04 00 00    	jne    49c0 <sg_raster_triangle_depth_capture+0x1510>
    4554:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
    455b:	0f af 07             	imul   (%rdi),%eax
    455e:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    4562:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    4566:	01 f0                	add    %esi,%eax
    4568:	48 98                	cltq
    456a:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    456f:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
    4575:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    457c:	2d 00 02 00 00       	sub    $0x200,%eax
    4581:	83 f8 07             	cmp    $0x7,%eax
    4584:	0f 87 1b 04 00 00    	ja     49a5 <sg_raster_triangle_depth_capture+0x14f5>
    458a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 4591 <sg_raster_triangle_depth_capture+0x10e1>
    4591:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    4595:	48 01 d0             	add    %rdx,%rax
    4598:	ff e0                	jmp    *%rax
    459a:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    45a1:	00 00 
    45a3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    45a8:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    45af:	00 00 
    45b1:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
    45b8:	00 00 
    45ba:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    45c1:	00 00 
    45c3:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    45ca:	00 00 
    45cc:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    45d3:	00 00 
    45d5:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
    45da:	41 0f 28 c2          	movaps %xmm10,%xmm0
    45de:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 45e5 <sg_raster_triangle_depth_capture+0x1135>
    45e5:	e8 00 00 00 00       	call   45ea <sg_raster_triangle_depth_capture+0x113a>
    45ea:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 45f2 <sg_raster_triangle_depth_capture+0x1142>
    45f1:	00 
    45f2:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    45f9:	00 00 
    45fb:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    4602:	00 00 
    4604:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    460b:	00 00 
    460d:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4615 <sg_raster_triangle_depth_capture+0x1165>
    4614:	00 
    4615:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    461c:	00 00 
    461e:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
    4625:	00 00 
    4627:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    462b:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    462f:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4633:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4637:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    463c:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    4643:	00 
    4644:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4648:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    464c:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    4653:	00 
    4654:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    4658:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    465f:	00 
    4660:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    4667:	00 00 
    4669:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    466d:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    4671:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4678:	00 00 
    467a:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    4681:	00 00 
    4683:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    468a:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    468e:	0f 28 c6             	movaps %xmm6,%xmm0
    4691:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    4696:	e8 00 00 00 00       	call   469b <sg_raster_triangle_depth_capture+0x11eb>
    469b:	41 83 e4 08          	and    $0x8,%r12d
    469f:	0f 85 26 12 00 00    	jne    58cb <sg_raster_triangle_depth_capture+0x241b>
    46a5:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    46ac:	01 00 00 00 
    46b0:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    46b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    46bd:	00 00 00 
    46c0:	83 44 24 0c 02       	addl   $0x2,0xc(%rsp)
    46c5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    46c9:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    46ce:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
    46d3:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    46d8:	48 01 7c 24 10       	add    %rdi,0x10(%rsp)
    46dd:	48 01 5c 24 18       	add    %rbx,0x18(%rsp)
    46e2:	48 01 4c 24 20       	add    %rcx,0x20(%rsp)
    46e7:	44 39 f8             	cmp    %r15d,%eax
    46ea:	0f 8c 30 f7 ff ff    	jl     3e20 <sg_raster_triangle_depth_capture+0x970>
    46f0:	48 8b 8c 24 00 01 00 	mov    0x100(%rsp),%rcx
    46f7:	00 
    46f8:	44 8b bc 24 0c 01 00 	mov    0x10c(%rsp),%r15d
    46ff:	00 
    4700:	48 8b ac 24 10 01 00 	mov    0x110(%rsp),%rbp
    4707:	00 
    4708:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
    470f:	00 
    4710:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
    4717:	00 
    4718:	83 84 24 8c 00 00 00 	addl   $0x2,0x8c(%rsp)
    471f:	02 
    4720:	83 84 24 e8 00 00 00 	addl   $0x2,0xe8(%rsp)
    4727:	02 
    4728:	48 01 c5             	add    %rax,%rbp
    472b:	48 8b 84 24 48 01 00 	mov    0x148(%rsp),%rax
    4732:	00 
    4733:	48 01 c1             	add    %rax,%rcx
    4736:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
    473d:	00 
    473e:	48 01 c6             	add    %rax,%rsi
    4741:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    4748:	44 39 f8             	cmp    %r15d,%eax
    474b:	0f 8c 1f f6 ff ff    	jl     3d70 <sg_raster_triangle_depth_capture+0x8c0>
    4751:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4756:	8b 78 74             	mov    0x74(%rax),%edi
    4759:	85 ff                	test   %edi,%edi
    475b:	0f 85 d5 f3 ff ff    	jne    3b36 <sg_raster_triangle_depth_capture+0x686>
    4761:	45 85 d2             	test   %r10d,%r10d
    4764:	0f 84 e7 f3 ff ff    	je     3b51 <sg_raster_triangle_depth_capture+0x6a1>
    476a:	8b 84 24 20 01 00 00 	mov    0x120(%rsp),%eax
    4771:	01 c0                	add    %eax,%eax
    4773:	83 f0 02             	xor    $0x2,%eax
    4776:	e9 c0 f3 ff ff       	jmp    3b3b <sg_raster_triangle_depth_capture+0x68b>
    477b:	31 c0                	xor    %eax,%eax
    477d:	0f 2f c6             	comiss %xmm6,%xmm0
    4780:	0f 97 c0             	seta   %al
    4783:	85 c0                	test   %eax,%eax
    4785:	0f 84 da f9 ff ff    	je     4165 <sg_raster_triangle_depth_capture+0xcb5>
    478b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4790:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    4797:	00 
    4798:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    479f:	00 
    47a0:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    47a7:	00 
    47a8:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    47ad:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
    47b2:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    47b7:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    47bc:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    47c1:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    47c6:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    47cd:	00 00 
    47cf:	f3 0f 59 cf          	mulss  %xmm7,%xmm1
    47d3:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    47da:	00 
    47db:	f3 44 0f 10 9a 98 00 	movss  0x98(%rdx),%xmm11
    47e2:	00 00 
    47e4:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
    47eb:	00 00 
    47ed:	f3 0f 59 d7          	mulss  %xmm7,%xmm2
    47f1:	f3 0f 59 df          	mulss  %xmm7,%xmm3
    47f5:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    47fb:	f3 0f 59 e7          	mulss  %xmm7,%xmm4
    47ff:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    4806:	83 e8 01             	sub    $0x1,%eax
    4809:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    480d:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
    4812:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    4817:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    481b:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
    4820:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4825:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    482a:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    482e:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
    4833:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    483a:	00 00 
    483c:	f3 0f 11 8c 24 10 03 	movss  %xmm1,0x310(%rsp)
    4843:	00 00 
    4845:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    484a:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    484e:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
    4853:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4858:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    485d:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4861:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
    4866:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    486d:	00 00 
    486f:	f3 0f 11 94 24 14 03 	movss  %xmm2,0x314(%rsp)
    4876:	00 00 
    4878:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    487d:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4881:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
    4886:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    488b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    4890:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4894:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
    4899:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    48a0:	00 00 
    48a2:	f3 0f 11 9c 24 18 03 	movss  %xmm3,0x318(%rsp)
    48a9:	00 00 
    48ab:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    48b0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    48b4:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    48b9:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    48c0:	00 00 
    48c2:	f3 0f 11 a4 24 1c 03 	movss  %xmm4,0x31c(%rsp)
    48c9:	00 00 
    48cb:	83 f8 01             	cmp    $0x1,%eax
    48ce:	0f 86 c9 31 00 00    	jbe    7a9d <sg_raster_triangle_depth_capture+0x45ed>
    48d4:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    48db:	00 
    48dc:	8b b0 60 01 00 00    	mov    0x160(%rax),%esi
    48e2:	85 f6                	test   %esi,%esi
    48e4:	0f 85 8a 3b 00 00    	jne    8474 <sg_raster_triangle_depth_capture+0x4fc4>
    48ea:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    48ef:	44 8b 90 08 01 00 00 	mov    0x108(%rax),%r10d
    48f6:	45 85 d2             	test   %r10d,%r10d
    48f9:	0f 84 4e f8 ff ff    	je     414d <sg_raster_triangle_depth_capture+0xc9d>
    48ff:	f3 41 0f 59 fa       	mulss  %xmm10,%xmm7
    4904:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    490a:	f3 45 0f 59 c3       	mulss  %xmm11,%xmm8
    490f:	f3 45 0f 59 cc       	mulss  %xmm12,%xmm9
    4914:	f3 41 0f 58 f8       	addss  %xmm8,%xmm7
    4919:	f3 41 0f 58 f9       	addss  %xmm9,%xmm7
    491e:	f3 41 0f 59 fd       	mulss  %xmm13,%xmm7
    4923:	0f 28 c7             	movaps %xmm7,%xmm0
    4926:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 492d <sg_raster_triangle_depth_capture+0x147d>
    492d:	3d 00 08 00 00       	cmp    $0x800,%eax
    4932:	0f 84 3b 57 00 00    	je     a073 <sg_raster_triangle_depth_capture+0x6bc3>
    4938:	3d 01 08 00 00       	cmp    $0x801,%eax
    493d:	0f 84 24 f7 ff ff    	je     4067 <sg_raster_triangle_depth_capture+0xbb7>
    4943:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4948:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    494d:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    4954:	00 
    4955:	0f 28 ef             	movaps %xmm7,%xmm5
    4958:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    495f:	00 
    4960:	41 0f 2f e8          	comiss %xmm8,%xmm5
    4964:	0f 84 97 f7 ff ff    	je     4101 <sg_raster_triangle_depth_capture+0xc51>
    496a:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    496e:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    4972:	44 0f 2f c7          	comiss %xmm7,%xmm8
    4976:	0f 87 95 64 00 00    	ja     ae11 <sg_raster_triangle_depth_capture+0x7961>
    497c:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 4984 <sg_raster_triangle_depth_capture+0x14d4>
    4983:	00 
    4984:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 498c <sg_raster_triangle_depth_capture+0x14dc>
    498b:	00 
    498c:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    4990:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4994:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4998:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    499c:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    49a0:	e9 5c f7 ff ff       	jmp    4101 <sg_raster_triangle_depth_capture+0xc51>
    49a5:	31 c0                	xor    %eax,%eax
    49a7:	0f 2f c6             	comiss %xmm6,%xmm0
    49aa:	0f 97 c0             	seta   %al
    49ad:	85 c0                	test   %eax,%eax
    49af:	0f 84 e6 fc ff ff    	je     469b <sg_raster_triangle_depth_capture+0x11eb>
    49b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    49bc:	00 00 00 00 
    49c0:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    49c7:	00 
    49c8:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    49cf:	00 
    49d0:	48 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%rbx
    49d7:	00 
    49d8:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    49dd:	f3 0f 10 46 20       	movss  0x20(%rsi),%xmm0
    49e2:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    49e7:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    49ec:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    49f0:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    49f5:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    49fc:	00 00 
    49fe:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    4a03:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    4a0a:	00 
    4a0b:	f3 44 0f 10 9e 98 00 	movss  0x98(%rsi),%xmm11
    4a12:	00 00 
    4a14:	f3 44 0f 10 a3 98 00 	movss  0x98(%rbx),%xmm12
    4a1b:	00 00 
    4a1d:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
    4a22:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
    4a27:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    4a2d:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
    4a32:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    4a39:	83 e8 01             	sub    $0x1,%eax
    4a3c:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4a40:	f3 0f 10 43 20       	movss  0x20(%rbx),%xmm0
    4a45:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4a4a:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4a4e:	f3 0f 10 46 24       	movss  0x24(%rsi),%xmm0
    4a53:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4a57:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    4a5c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4a60:	f3 0f 10 43 24       	movss  0x24(%rbx),%xmm0
    4a65:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    4a6c:	00 00 
    4a6e:	f3 0f 11 8c 24 10 03 	movss  %xmm1,0x310(%rsp)
    4a75:	00 00 
    4a77:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4a7c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4a80:	f3 0f 10 46 28       	movss  0x28(%rsi),%xmm0
    4a85:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4a89:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    4a8e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4a92:	f3 0f 10 43 28       	movss  0x28(%rbx),%xmm0
    4a97:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4a9e:	00 00 
    4aa0:	f3 0f 11 94 24 14 03 	movss  %xmm2,0x314(%rsp)
    4aa7:	00 00 
    4aa9:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4aae:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4ab2:	f3 0f 10 46 2c       	movss  0x2c(%rsi),%xmm0
    4ab7:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4abb:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    4ac0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4ac4:	f3 0f 10 43 2c       	movss  0x2c(%rbx),%xmm0
    4ac9:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    4ad0:	00 00 
    4ad2:	f3 0f 11 9c 24 18 03 	movss  %xmm3,0x318(%rsp)
    4ad9:	00 00 
    4adb:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4ae0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4ae4:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    4ae9:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    4af0:	00 00 
    4af2:	f3 0f 11 a4 24 1c 03 	movss  %xmm4,0x31c(%rsp)
    4af9:	00 00 
    4afb:	83 f8 01             	cmp    $0x1,%eax
    4afe:	0f 86 54 31 00 00    	jbe    7c58 <sg_raster_triangle_depth_capture+0x47a8>
    4b04:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    4b0b:	00 
    4b0c:	8b 90 60 01 00 00    	mov    0x160(%rax),%edx
    4b12:	85 d2                	test   %edx,%edx
    4b14:	0f 85 dc 3d 00 00    	jne    88f6 <sg_raster_triangle_depth_capture+0x5446>
    4b1a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4b1f:	44 8b 88 08 01 00 00 	mov    0x108(%rax),%r9d
    4b26:	45 85 c9             	test   %r9d,%r9d
    4b29:	0f 84 54 fb ff ff    	je     4683 <sg_raster_triangle_depth_capture+0x11d3>
    4b2f:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
    4b34:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    4b3a:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
    4b3f:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
    4b44:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
    4b49:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
    4b4e:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
    4b53:	41 0f 28 c2          	movaps %xmm10,%xmm0
    4b57:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 4b5e <sg_raster_triangle_depth_capture+0x16ae>
    4b5e:	3d 00 08 00 00       	cmp    $0x800,%eax
    4b63:	0f 84 cb 54 00 00    	je     a034 <sg_raster_triangle_depth_capture+0x6b84>
    4b69:	3d 01 08 00 00       	cmp    $0x801,%eax
    4b6e:	0f 84 26 fa ff ff    	je     459a <sg_raster_triangle_depth_capture+0x10ea>
    4b74:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4b79:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    4b7e:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    4b85:	00 
    4b86:	0f 28 ef             	movaps %xmm7,%xmm5
    4b89:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    4b90:	00 
    4b91:	41 0f 2f e8          	comiss %xmm8,%xmm5
    4b95:	0f 84 9c fa ff ff    	je     4637 <sg_raster_triangle_depth_capture+0x1187>
    4b9b:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    4b9f:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    4ba3:	44 0f 2f c7          	comiss %xmm7,%xmm8
    4ba7:	0f 87 4d 62 00 00    	ja     adfa <sg_raster_triangle_depth_capture+0x794a>
    4bad:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 4bb5 <sg_raster_triangle_depth_capture+0x1705>
    4bb4:	00 
    4bb5:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4bbd <sg_raster_triangle_depth_capture+0x170d>
    4bbc:	00 
    4bbd:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    4bc1:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4bc5:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4bc9:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    4bcd:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4bd1:	e9 61 fa ff ff       	jmp    4637 <sg_raster_triangle_depth_capture+0x1187>
    4bd6:	31 c0                	xor    %eax,%eax
    4bd8:	0f 2f c6             	comiss %xmm6,%xmm0
    4bdb:	0f 97 c0             	seta   %al
    4bde:	85 c0                	test   %eax,%eax
    4be0:	0f 84 20 f8 ff ff    	je     4406 <sg_raster_triangle_depth_capture+0xf56>
    4be6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4bed:	00 00 00 
    4bf0:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    4bf7:	00 
    4bf8:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    4bff:	00 
    4c00:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    4c07:	00 
    4c08:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    4c0d:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
    4c12:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    4c17:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    4c1c:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4c20:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    4c25:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    4c2c:	00 00 
    4c2e:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    4c33:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    4c3a:	00 
    4c3b:	f3 44 0f 10 9a 98 00 	movss  0x98(%rdx),%xmm11
    4c42:	00 00 
    4c44:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
    4c4b:	00 00 
    4c4d:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
    4c52:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
    4c57:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    4c5d:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
    4c62:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    4c69:	83 e8 01             	sub    $0x1,%eax
    4c6c:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4c70:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
    4c75:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4c7a:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    4c7e:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
    4c83:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4c87:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    4c8c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4c90:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
    4c95:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    4c9c:	00 00 
    4c9e:	f3 0f 11 8c 24 10 03 	movss  %xmm1,0x310(%rsp)
    4ca5:	00 00 
    4ca7:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4cac:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    4cb0:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
    4cb5:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4cb9:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    4cbe:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4cc2:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
    4cc7:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    4cce:	00 00 
    4cd0:	f3 0f 11 94 24 14 03 	movss  %xmm2,0x314(%rsp)
    4cd7:	00 00 
    4cd9:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4cde:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    4ce2:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
    4ce7:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    4ceb:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    4cf0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4cf4:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
    4cf9:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    4d00:	00 00 
    4d02:	f3 0f 11 9c 24 18 03 	movss  %xmm3,0x318(%rsp)
    4d09:	00 00 
    4d0b:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    4d10:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    4d14:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    4d19:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    4d20:	00 00 
    4d22:	f3 0f 11 a4 24 1c 03 	movss  %xmm4,0x31c(%rsp)
    4d29:	00 00 
    4d2b:	83 f8 01             	cmp    $0x1,%eax
    4d2e:	0f 86 eb 30 00 00    	jbe    7e1f <sg_raster_triangle_depth_capture+0x496f>
    4d34:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    4d3b:	00 
    4d3c:	8b b0 60 01 00 00    	mov    0x160(%rax),%esi
    4d42:	85 f6                	test   %esi,%esi
    4d44:	0f 85 36 40 00 00    	jne    8d80 <sg_raster_triangle_depth_capture+0x58d0>
    4d4a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4d4f:	44 8b 88 08 01 00 00 	mov    0x108(%rax),%r9d
    4d56:	45 85 c9             	test   %r9d,%r9d
    4d59:	0f 84 8f f6 ff ff    	je     43ee <sg_raster_triangle_depth_capture+0xf3e>
    4d5f:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
    4d64:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    4d6a:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
    4d6f:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
    4d74:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
    4d79:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
    4d7e:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
    4d83:	41 0f 28 c2          	movaps %xmm10,%xmm0
    4d87:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 4d8e <sg_raster_triangle_depth_capture+0x18de>
    4d8e:	3d 00 08 00 00       	cmp    $0x800,%eax
    4d93:	0f 84 20 53 00 00    	je     a0b9 <sg_raster_triangle_depth_capture+0x6c09>
    4d99:	3d 01 08 00 00       	cmp    $0x801,%eax
    4d9e:	0f 84 61 f5 ff ff    	je     4305 <sg_raster_triangle_depth_capture+0xe55>
    4da4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    4da9:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    4dae:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    4db5:	00 
    4db6:	0f 28 ef             	movaps %xmm7,%xmm5
    4db9:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    4dc0:	00 
    4dc1:	41 0f 2f e8          	comiss %xmm8,%xmm5
    4dc5:	0f 84 d7 f5 ff ff    	je     43a2 <sg_raster_triangle_depth_capture+0xef2>
    4dcb:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    4dcf:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    4dd3:	44 0f 2f c7          	comiss %xmm7,%xmm8
    4dd7:	0f 87 06 60 00 00    	ja     ade3 <sg_raster_triangle_depth_capture+0x7933>
    4ddd:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 4de5 <sg_raster_triangle_depth_capture+0x1935>
    4de4:	00 
    4de5:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 4ded <sg_raster_triangle_depth_capture+0x193d>
    4dec:	00 
    4ded:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    4df1:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    4df5:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    4df9:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    4dfd:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    4e01:	e9 9c f5 ff ff       	jmp    43a2 <sg_raster_triangle_depth_capture+0xef2>
    4e06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4e0d:	00 00 00 
    4e10:	48 8b 9c 24 b8 00 00 	mov    0xb8(%rsp),%rbx
    4e17:	00 
    4e18:	41 b9 ff ff ff 7f    	mov    $0x7fffffff,%r9d
    4e1e:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
    4e22:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    4e27:	48 8d 3c 1e          	lea    (%rsi,%rbx,1),%rdi
    4e2b:	4c 39 f7             	cmp    %r14,%rdi
    4e2e:	7d 0c                	jge    4e3c <sg_raster_triangle_depth_capture+0x198c>
    4e30:	4c 39 ef             	cmp    %r13,%rdi
    4e33:	0f 8e 5a 59 00 00    	jle    a793 <sg_raster_triangle_depth_capture+0x72e3>
    4e39:	41 89 f9             	mov    %edi,%r9d
    4e3c:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    4e41:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    4e46:	4c 8d 04 03          	lea    (%rbx,%rax,1),%r8
    4e4a:	4d 39 f0             	cmp    %r14,%r8
    4e4d:	7d 0c                	jge    4e5b <sg_raster_triangle_depth_capture+0x19ab>
    4e4f:	4d 39 e8             	cmp    %r13,%r8
    4e52:	0f 8e 46 59 00 00    	jle    a79e <sg_raster_triangle_depth_capture+0x72ee>
    4e58:	44 89 c7             	mov    %r8d,%edi
    4e5b:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
    4e61:	4c 39 f6             	cmp    %r14,%rsi
    4e64:	7d 0c                	jge    4e72 <sg_raster_triangle_depth_capture+0x19c2>
    4e66:	4c 39 ee             	cmp    %r13,%rsi
    4e69:	0f 8e 39 59 00 00    	jle    a7a8 <sg_raster_triangle_depth_capture+0x72f8>
    4e6f:	41 89 f0             	mov    %esi,%r8d
    4e72:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
    4e77:	4c 39 f0             	cmp    %r14,%rax
    4e7a:	7d 0b                	jge    4e87 <sg_raster_triangle_depth_capture+0x19d7>
    4e7c:	4c 39 e8             	cmp    %r13,%rax
    4e7f:	0f 8e 2e 59 00 00    	jle    a7b3 <sg_raster_triangle_depth_capture+0x7303>
    4e85:	89 c6                	mov    %eax,%esi
    4e87:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    4e8e:	00 
    4e8f:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    4e94:	66 0f 6e ce          	movd   %esi,%xmm1
    4e98:	66 0f 6e c7          	movd   %edi,%xmm0
    4e9c:	66 41 0f 3a 22 c8 01 	pinsrd $0x1,%r8d,%xmm1
    4ea3:	66 41 0f 3a 22 c1 01 	pinsrd $0x1,%r9d,%xmm0
    4eaa:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
    4eb0:	48 01 d0             	add    %rdx,%rax
    4eb3:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    4eb7:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
    4ebb:	4c 39 f6             	cmp    %r14,%rsi
    4ebe:	7d 0c                	jge    4ecc <sg_raster_triangle_depth_capture+0x1a1c>
    4ec0:	4c 39 ee             	cmp    %r13,%rsi
    4ec3:	0f 8e f4 58 00 00    	jle    a7bd <sg_raster_triangle_depth_capture+0x730d>
    4ec9:	41 89 f0             	mov    %esi,%r8d
    4ecc:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
    4ed1:	48 8d 3c 16          	lea    (%rsi,%rdx,1),%rdi
    4ed5:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
    4eda:	4c 39 f7             	cmp    %r14,%rdi
    4edd:	7d 0b                	jge    4eea <sg_raster_triangle_depth_capture+0x1a3a>
    4edf:	4c 39 ef             	cmp    %r13,%rdi
    4ee2:	0f 8e e0 58 00 00    	jle    a7c8 <sg_raster_triangle_depth_capture+0x7318>
    4ee8:	89 fe                	mov    %edi,%esi
    4eea:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    4eef:	4c 39 f0             	cmp    %r14,%rax
    4ef2:	7d 0b                	jge    4eff <sg_raster_triangle_depth_capture+0x1a4f>
    4ef4:	4c 39 e8             	cmp    %r13,%rax
    4ef7:	0f 8e d5 58 00 00    	jle    a7d2 <sg_raster_triangle_depth_capture+0x7322>
    4efd:	89 c7                	mov    %eax,%edi
    4eff:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
    4f04:	4c 39 f2             	cmp    %r14,%rdx
    4f07:	7d 0b                	jge    4f14 <sg_raster_triangle_depth_capture+0x1a64>
    4f09:	4c 39 ea             	cmp    %r13,%rdx
    4f0c:	0f 8e ca 58 00 00    	jle    a7dc <sg_raster_triangle_depth_capture+0x732c>
    4f12:	89 d0                	mov    %edx,%eax
    4f14:	66 0f 6e c0          	movd   %eax,%xmm0
    4f18:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
    4f1f:	00 
    4f20:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    4f27:	00 
    4f28:	66 0f 6e d6          	movd   %esi,%xmm2
    4f2c:	66 41 0f 3a 22 d0 01 	pinsrd $0x1,%r8d,%xmm2
    4f33:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    4f39:	41 b8 ff ff ff 7f    	mov    $0x7fffffff,%r8d
    4f3f:	48 01 c8             	add    %rcx,%rax
    4f42:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    4f46:	48 01 c2             	add    %rax,%rdx
    4f49:	4c 39 f2             	cmp    %r14,%rdx
    4f4c:	7d 0c                	jge    4f5a <sg_raster_triangle_depth_capture+0x1aaa>
    4f4e:	4c 39 ea             	cmp    %r13,%rdx
    4f51:	0f 8e 8f 58 00 00    	jle    a7e6 <sg_raster_triangle_depth_capture+0x7336>
    4f57:	41 89 d0             	mov    %edx,%r8d
    4f5a:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    4f61:	00 
    4f62:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
    4f67:	48 01 ca             	add    %rcx,%rdx
    4f6a:	4c 39 f2             	cmp    %r14,%rdx
    4f6d:	7d 0b                	jge    4f7a <sg_raster_triangle_depth_capture+0x1aca>
    4f6f:	4c 39 ea             	cmp    %r13,%rdx
    4f72:	0f 8e 79 58 00 00    	jle    a7f1 <sg_raster_triangle_depth_capture+0x7341>
    4f78:	89 d6                	mov    %edx,%esi
    4f7a:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    4f7f:	4c 39 f0             	cmp    %r14,%rax
    4f82:	7d 0b                	jge    4f8f <sg_raster_triangle_depth_capture+0x1adf>
    4f84:	4c 39 e8             	cmp    %r13,%rax
    4f87:	0f 8e 2a 5b 00 00    	jle    aab7 <sg_raster_triangle_depth_capture+0x7607>
    4f8d:	89 c7                	mov    %eax,%edi
    4f8f:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
    4f94:	4c 39 f1             	cmp    %r14,%rcx
    4f97:	7d 0b                	jge    4fa4 <sg_raster_triangle_depth_capture+0x1af4>
    4f99:	4c 39 e9             	cmp    %r13,%rcx
    4f9c:	0f 8e 1f 5b 00 00    	jle    aac1 <sg_raster_triangle_depth_capture+0x7611>
    4fa2:	89 ca                	mov    %ecx,%edx
    4fa4:	0f 50 c9             	movmskps %xmm1,%ecx
    4fa7:	0f 50 c0             	movmskps %xmm0,%eax
    4faa:	66 0f 6e ce          	movd   %esi,%xmm1
    4fae:	66 0f 6e c2          	movd   %edx,%xmm0
    4fb2:	66 41 0f 3a 22 c8 01 	pinsrd $0x1,%r8d,%xmm1
    4fb9:	09 c8                	or     %ecx,%eax
    4fbb:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    4fc1:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    4fc5:	0f 50 d0             	movmskps %xmm0,%edx
    4fc8:	09 d0                	or     %edx,%eax
    4fca:	f7 d0                	not    %eax
    4fcc:	83 e0 0f             	and    $0xf,%eax
    4fcf:	41 21 c4             	and    %eax,%r12d
    4fd2:	0f 84 e8 f6 ff ff    	je     46c0 <sg_raster_triangle_depth_capture+0x1210>
    4fd8:	83 bc 24 f4 00 00 00 	cmpl   $0x1,0xf4(%rsp)
    4fdf:	01 
    4fe0:	0f 84 b2 08 00 00    	je     5898 <sg_raster_triangle_depth_capture+0x23e8>
    4fe6:	8b b4 24 30 01 00 00 	mov    0x130(%rsp),%esi
    4fed:	39 74 24 30          	cmp    %esi,0x30(%rsp)
    4ff1:	0f 8d a1 08 00 00    	jge    5898 <sg_raster_triangle_depth_capture+0x23e8>
    4ff7:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    4ffc:	66 0f ef d2          	pxor   %xmm2,%xmm2
    5000:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5004:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5008:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    500f:	00 
    5010:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    5015:	66 0f ef db          	pxor   %xmm3,%xmm3
    5019:	66 0f ef e4          	pxor   %xmm4,%xmm4
    501d:	f3 48 0f 2a c3       	cvtsi2ss %rbx,%xmm0
    5022:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    5027:	66 0f ef ed          	pxor   %xmm5,%xmm5
    502b:	f3 44 0f 10 8c 24 08 	movss  0x108(%rsp),%xmm9
    5032:	01 00 00 
    5035:	48 8d 14 18          	lea    (%rax,%rbx,1),%rdx
    5039:	48 8d 0c 1f          	lea    (%rdi,%rbx,1),%rcx
    503d:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    5042:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    5049:	00 
    504a:	f3 48 0f 2a d2       	cvtsi2ss %rdx,%xmm2
    504f:	48 01 fa             	add    %rdi,%rdx
    5052:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
    5057:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    505c:	f3 48 0f 2a da       	cvtsi2ss %rdx,%xmm3
    5061:	48 01 f0             	add    %rsi,%rax
    5064:	48 8d 14 33          	lea    (%rbx,%rsi,1),%rdx
    5068:	f3 48 0f 2a c9       	cvtsi2ss %rcx,%xmm1
    506d:	f3 48 0f 2a e0       	cvtsi2ss %rax,%xmm4
    5072:	48 01 d8             	add    %rbx,%rax
    5075:	0f 14 c2             	unpcklps %xmm2,%xmm0
    5078:	f3 48 0f 2a e8       	cvtsi2ss %rax,%xmm5
    507d:	44 89 e0             	mov    %r12d,%eax
    5080:	f3 0f 10 94 24 ec 00 	movss  0xec(%rsp),%xmm2
    5087:	00 00 
    5089:	83 e0 04             	and    $0x4,%eax
    508c:	0f 14 cb             	unpcklps %xmm3,%xmm1
    508f:	66 0f ef db          	pxor   %xmm3,%xmm3
    5093:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    5097:	0f 16 c1             	movlhps %xmm1,%xmm0
    509a:	f3 48 0f 2a da       	cvtsi2ss %rdx,%xmm3
    509f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    50a3:	44 89 e2             	mov    %r12d,%edx
    50a6:	f3 48 0f 2a ce       	cvtsi2ss %rsi,%xmm1
    50ab:	0f 59 c2             	mulps  %xmm2,%xmm0
    50ae:	83 e2 02             	and    $0x2,%edx
    50b1:	0f 14 dd             	unpcklps %xmm5,%xmm3
    50b4:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 50bc <sg_raster_triangle_depth_capture+0x1c0c>
    50bb:	00 
    50bc:	0f 14 cc             	unpcklps %xmm4,%xmm1
    50bf:	f3 0f 10 a4 24 fc 00 	movss  0xfc(%rsp),%xmm4
    50c6:	00 00 
    50c8:	0f 16 cb             	movlhps %xmm3,%xmm1
    50cb:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    50cf:	44 0f 28 c5          	movaps %xmm5,%xmm8
    50d3:	f3 0f 10 9c 24 f8 00 	movss  0xf8(%rsp),%xmm3
    50da:	00 00 
    50dc:	0f 59 ca             	mulps  %xmm2,%xmm1
    50df:	0f 28 d0             	movaps %xmm0,%xmm2
    50e2:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    50e6:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    50ea:	0f 59 d8             	mulps  %xmm0,%xmm3
    50ed:	0f 58 d1             	addps  %xmm1,%xmm2
    50f0:	0f 59 e1             	mulps  %xmm1,%xmm4
    50f3:	0f 28 fb             	movaps %xmm3,%xmm7
    50f6:	44 0f 5c c2          	subps  %xmm2,%xmm8
    50fa:	0f 58 fc             	addps  %xmm4,%xmm7
    50fd:	45 0f 59 c8          	mulps  %xmm8,%xmm9
    5101:	41 0f 58 f9          	addps  %xmm9,%xmm7
    5105:	44 0f c2 d7 01       	cmpltps %xmm7,%xmm10
    510a:	41 f6 c4 01          	test   $0x1,%r12b
    510e:	0f 85 fc 0b 00 00    	jne    5d10 <sg_raster_triangle_depth_capture+0x2860>
    5114:	85 d2                	test   %edx,%edx
    5116:	0f 85 7c 1f 00 00    	jne    7098 <sg_raster_triangle_depth_capture+0x3be8>
    511c:	85 c0                	test   %eax,%eax
    511e:	0f 85 27 27 00 00    	jne    784b <sg_raster_triangle_depth_capture+0x439b>
    5124:	66 0f ef f6          	pxor   %xmm6,%xmm6
    5128:	66 0f ef d2          	pxor   %xmm2,%xmm2
    512c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    5131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    5138:	00 00 00 00 
    513c:	0f 1f 40 00          	nopl   0x0(%rax)
    5140:	66 0f 3a 22 f0 01    	pinsrd $0x1,%eax,%xmm6
    5146:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    514b:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    5152:	00 
    5153:	66 0f 3a 22 d2 01    	pinsrd $0x1,%edx,%xmm2
    5159:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
    515d:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    5164:	8b b4 24 e8 00 00 00 	mov    0xe8(%rsp),%esi
    516b:	f3 0f 10 70 18       	movss  0x18(%rax),%xmm6
    5170:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
    5174:	66 41 0f db d2       	pand   %xmm10,%xmm2
    5179:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    5180:	00 
    5181:	8b 79 04             	mov    0x4(%rcx),%edi
    5184:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    5188:	0f 59 ce             	mulps  %xmm6,%xmm1
    518b:	f3 0f 10 70 18       	movss  0x18(%rax),%xmm6
    5190:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    5197:	00 
    5198:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    519c:	0f 59 c6             	mulps  %xmm6,%xmm0
    519f:	f3 0f 10 b4 24 f0 00 	movss  0xf0(%rsp),%xmm6
    51a6:	00 00 
    51a8:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    51ac:	0f 58 c8             	addps  %xmm0,%xmm1
    51af:	f3 0f 10 40 18       	movss  0x18(%rax),%xmm0
    51b4:	8b 01                	mov    (%rcx),%eax
    51b6:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    51ba:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    51be:	0f af d0             	imul   %eax,%edx
    51c1:	0f af c6             	imul   %esi,%eax
    51c4:	44 8d 04 1a          	lea    (%rdx,%rbx,1),%r8d
    51c8:	8d 2c 18             	lea    (%rax,%rbx,1),%ebp
    51cb:	8b 99 84 00 00 00    	mov    0x84(%rcx),%ebx
    51d1:	0f 58 c6             	addps  %xmm6,%xmm0
    51d4:	0f 58 c8             	addps  %xmm0,%xmm1
    51d7:	0f 29 8c 24 20 01 00 	movaps %xmm1,0x120(%rsp)
    51de:	00 
    51df:	85 db                	test   %ebx,%ebx
    51e1:	0f 84 19 0b 00 00    	je     5d00 <sg_raster_triangle_depth_capture+0x2850>
    51e7:	44 8b 89 9c 00 00 00 	mov    0x9c(%rcx),%r9d
    51ee:	45 85 c9             	test   %r9d,%r9d
    51f1:	0f 85 09 0b 00 00    	jne    5d00 <sg_raster_triangle_depth_capture+0x2850>
    51f7:	48 8b 41 10          	mov    0x10(%rcx),%rax
    51fb:	49 63 d0             	movslq %r8d,%rdx
    51fe:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5202:	f3 0f 7e 04 90       	movq   (%rax,%rdx,4),%xmm0
    5207:	39 fe                	cmp    %edi,%esi
    5209:	7d 08                	jge    5213 <sg_raster_triangle_depth_capture+0x1d63>
    520b:	48 63 d5             	movslq %ebp,%rdx
    520e:	f3 0f 7e 0c 90       	movq   (%rax,%rdx,4),%xmm1
    5213:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5218:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    521c:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
    5222:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
    5229:	2d 00 02 00 00       	sub    $0x200,%eax
    522e:	83 f8 06             	cmp    $0x6,%eax
    5231:	77 1d                	ja     5250 <sg_raster_triangle_depth_capture+0x1da0>
    5233:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 523a <sg_raster_triangle_depth_capture+0x1d8a>
    523a:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    523e:	48 01 d0             	add    %rdx,%rax
    5241:	ff e0                	jmp    *%rax
    5243:	0f c2 84 24 20 01 00 	cmpneqps 0x120(%rsp),%xmm0
    524a:	00 04 
    524c:	66 0f db d0          	pand   %xmm0,%xmm2
    5250:	c7 84 24 70 01 00 00 	movl   $0x1,0x170(%rsp)
    5257:	01 00 00 00 
    525b:	0f 50 c2             	movmskps %xmm2,%eax
    525e:	a8 0f                	test   $0xf,%al
    5260:	0f 84 3f f4 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    5266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    526d:	00 00 00 
    5270:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 5278 <sg_raster_triangle_depth_capture+0x1dc8>
    5277:	00 
    5278:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    527f:	00 
    5280:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    5287:	00 
    5288:	4c 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%r11
    528f:	00 
    5290:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5294:	0f 5f c7             	maxps  %xmm7,%xmm0
    5297:	f3 0f 10 71 20       	movss  0x20(%rcx),%xmm6
    529c:	f3 0f 10 79 24       	movss  0x24(%rcx),%xmm7
    52a1:	f3 44 0f 10 41 28    	movss  0x28(%rcx),%xmm8
    52a7:	f3 44 0f 10 51 2c    	movss  0x2c(%rcx),%xmm10
    52ad:	0f c6 f6 00          	shufps $0x0,%xmm6,%xmm6
    52b1:	0f 59 f4             	mulps  %xmm4,%xmm6
    52b4:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
    52b8:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    52bf:	00 
    52c0:	0f 59 fc             	mulps  %xmm4,%xmm7
    52c3:	0f 53 c8             	rcpps  %xmm0,%xmm1
    52c6:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    52cb:	45 0f c6 d2 00       	shufps $0x0,%xmm10,%xmm10
    52d0:	44 0f 59 c4          	mulps  %xmm4,%xmm8
    52d4:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    52da:	44 0f 59 d4          	mulps  %xmm4,%xmm10
    52de:	8d 50 ff             	lea    -0x1(%rax),%edx
    52e1:	0f 59 c1             	mulps  %xmm1,%xmm0
    52e4:	0f 59 c1             	mulps  %xmm1,%xmm0
    52e7:	0f 58 c9             	addps  %xmm1,%xmm1
    52ea:	0f 5c c8             	subps  %xmm0,%xmm1
    52ed:	f3 0f 10 46 20       	movss  0x20(%rsi),%xmm0
    52f2:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    52f6:	0f 59 c3             	mulps  %xmm3,%xmm0
    52f9:	0f 58 f0             	addps  %xmm0,%xmm6
    52fc:	f3 41 0f 10 43 20    	movss  0x20(%r11),%xmm0
    5302:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5306:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    530a:	0f 58 f0             	addps  %xmm0,%xmm6
    530d:	f3 0f 10 46 24       	movss  0x24(%rsi),%xmm0
    5312:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5316:	0f 59 c3             	mulps  %xmm3,%xmm0
    5319:	0f 59 f1             	mulps  %xmm1,%xmm6
    531c:	0f 58 f8             	addps  %xmm0,%xmm7
    531f:	f3 41 0f 10 43 24    	movss  0x24(%r11),%xmm0
    5325:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5329:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    532d:	0f 58 f8             	addps  %xmm0,%xmm7
    5330:	f3 0f 10 46 28       	movss  0x28(%rsi),%xmm0
    5335:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5339:	0f 59 c3             	mulps  %xmm3,%xmm0
    533c:	0f 59 f9             	mulps  %xmm1,%xmm7
    533f:	44 0f 58 c0          	addps  %xmm0,%xmm8
    5343:	f3 41 0f 10 43 28    	movss  0x28(%r11),%xmm0
    5349:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    534d:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    5351:	44 0f 58 c0          	addps  %xmm0,%xmm8
    5355:	f3 0f 10 46 2c       	movss  0x2c(%rsi),%xmm0
    535a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    535e:	0f 59 c3             	mulps  %xmm3,%xmm0
    5361:	44 0f 59 c1          	mulps  %xmm1,%xmm8
    5365:	44 0f 58 d0          	addps  %xmm0,%xmm10
    5369:	f3 41 0f 10 43 2c    	movss  0x2c(%r11),%xmm0
    536f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5373:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    5377:	44 0f 58 d0          	addps  %xmm0,%xmm10
    537b:	44 0f 59 d1          	mulps  %xmm1,%xmm10
    537f:	83 fa 01             	cmp    $0x1,%edx
    5382:	0f 86 18 0c 00 00    	jbe    5fa0 <sg_raster_triangle_depth_capture+0x2af0>
    5388:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    538d:	8b b0 08 01 00 00    	mov    0x108(%rax),%esi
    5393:	85 f6                	test   %esi,%esi
    5395:	0f 84 81 01 00 00    	je     551c <sg_raster_triangle_depth_capture+0x206c>
    539b:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    53a2:	00 
    53a3:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    53a9:	f3 0f 10 86 98 00 00 	movss  0x98(%rsi),%xmm0
    53b0:	00 
    53b1:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    53b8:	00 
    53b9:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    53bd:	0f 59 c4             	mulps  %xmm4,%xmm0
    53c0:	f3 0f 10 a6 98 00 00 	movss  0x98(%rsi),%xmm4
    53c7:	00 
    53c8:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
    53cf:	00 
    53d0:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    53d4:	0f 59 dc             	mulps  %xmm4,%xmm3
    53d7:	0f 58 c3             	addps  %xmm3,%xmm0
    53da:	f3 0f 10 9e 98 00 00 	movss  0x98(%rsi),%xmm3
    53e1:	00 
    53e2:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    53e6:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    53ea:	0f 58 c3             	addps  %xmm3,%xmm0
    53ed:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 53f5 <sg_raster_triangle_depth_capture+0x1f45>
    53f4:	00 
    53f5:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    53f9:	0f 59 c1             	mulps  %xmm1,%xmm0
    53fc:	0f 28 c8             	movaps %xmm0,%xmm1
    53ff:	0f 57 cb             	xorps  %xmm3,%xmm1
    5402:	0f 5f c1             	maxps  %xmm1,%xmm0
    5405:	3d 01 26 00 00       	cmp    $0x2601,%eax
    540a:	0f 84 e4 20 00 00    	je     74f4 <sg_raster_triangle_depth_capture+0x4044>
    5410:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    5415:	44 89 84 24 a0 01 00 	mov    %r8d,0x1a0(%rsp)
    541c:	00 
    541d:	89 bc 24 80 01 00 00 	mov    %edi,0x180(%rsp)
    5424:	f3 0f 10 8e 10 01 00 	movss  0x110(%rsi),%xmm1
    542b:	00 
    542c:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
    5433:	00 
    5434:	44 0f 29 94 24 e0 01 	movaps %xmm10,0x1e0(%rsp)
    543b:	00 00 
    543d:	44 0f 29 84 24 d0 01 	movaps %xmm8,0x1d0(%rsp)
    5444:	00 00 
    5446:	0f 29 bc 24 c0 01 00 	movaps %xmm7,0x1c0(%rsp)
    544d:	00 
    544e:	0f 29 b4 24 b0 01 00 	movaps %xmm6,0x1b0(%rsp)
    5455:	00 
    5456:	0f 29 94 24 60 01 00 	movaps %xmm2,0x160(%rsp)
    545d:	00 
    545e:	3d 00 08 00 00       	cmp    $0x800,%eax
    5463:	0f 84 72 2b 00 00    	je     7fdb <sg_raster_triangle_depth_capture+0x4b2b>
    5469:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    546d:	0f 59 c8             	mulps  %xmm0,%xmm1
    5470:	0f 59 c9             	mulps  %xmm1,%xmm1
    5473:	0f 57 cb             	xorps  %xmm3,%xmm1
    5476:	0f 28 c1             	movaps %xmm1,%xmm0
    5479:	e8 00 00 00 00       	call   547e <sg_raster_triangle_depth_capture+0x1fce>
    547e:	8b bc 24 80 01 00 00 	mov    0x180(%rsp),%edi
    5485:	66 0f 6f 94 24 60 01 	movdqa 0x160(%rsp),%xmm2
    548c:	00 00 
    548e:	44 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%r8d
    5495:	00 
    5496:	0f 28 c8             	movaps %xmm0,%xmm1
    5499:	0f 28 b4 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm6
    54a0:	00 
    54a1:	0f 28 bc 24 c0 01 00 	movaps 0x1c0(%rsp),%xmm7
    54a8:	00 
    54a9:	0f 28 ac 24 f0 01 00 	movaps 0x1f0(%rsp),%xmm5
    54b0:	00 
    54b1:	44 0f 28 84 24 d0 01 	movaps 0x1d0(%rsp),%xmm8
    54b8:	00 00 
    54ba:	44 0f 28 94 24 e0 01 	movaps 0x1e0(%rsp),%xmm10
    54c1:	00 00 
    54c3:	0f 5d cd             	minps  %xmm5,%xmm1
    54c6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    54ca:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    54cf:	0f 28 dd             	movaps %xmm5,%xmm3
    54d2:	0f 5f c1             	maxps  %xmm1,%xmm0
    54d5:	f3 0f 10 88 1c 01 00 	movss  0x11c(%rax),%xmm1
    54dc:	00 
    54dd:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    54e1:	0f 5c d8             	subps  %xmm0,%xmm3
    54e4:	0f 59 f0             	mulps  %xmm0,%xmm6
    54e7:	0f 59 f8             	mulps  %xmm0,%xmm7
    54ea:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    54ee:	0f 59 cb             	mulps  %xmm3,%xmm1
    54f1:	0f 58 f1             	addps  %xmm1,%xmm6
    54f4:	f3 0f 10 88 20 01 00 	movss  0x120(%rax),%xmm1
    54fb:	00 
    54fc:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    5500:	0f 59 cb             	mulps  %xmm3,%xmm1
    5503:	0f 58 f9             	addps  %xmm1,%xmm7
    5506:	f3 0f 10 88 24 01 00 	movss  0x124(%rax),%xmm1
    550d:	00 
    550e:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    5512:	0f 59 cb             	mulps  %xmm3,%xmm1
    5515:	0f 58 c8             	addps  %xmm0,%xmm1
    5518:	44 0f 28 c1          	movaps %xmm1,%xmm8
    551c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5521:	8b 88 9c 00 00 00    	mov    0x9c(%rax),%ecx
    5527:	85 c9                	test   %ecx,%ecx
    5529:	0f 84 b1 02 00 00    	je     57e0 <sg_raster_triangle_depth_capture+0x2330>
    552f:	f3 0f 10 80 a4 00 00 	movss  0xa4(%rax),%xmm0
    5536:	00 
    5537:	8b 80 a0 00 00 00    	mov    0xa0(%rax),%eax
    553d:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
    5544:	2d 00 02 00 00       	sub    $0x200,%eax
    5549:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    554d:	83 f8 06             	cmp    $0x6,%eax
    5550:	0f 87 8a 02 00 00    	ja     57e0 <sg_raster_triangle_depth_capture+0x2330>
    5556:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 555d <sg_raster_triangle_depth_capture+0x20ad>
    555d:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    5561:	48 01 d0             	add    %rdx,%rax
    5564:	ff e0                	jmp    *%rax
    5566:	66 0f ef c0          	pxor   %xmm0,%xmm0
    556a:	66 0f ef d2          	pxor   %xmm2,%xmm2
    556e:	66 90                	xchg   %ax,%ax
    5570:	44 0f 50 e0          	movmskps %xmm0,%r12d
    5574:	41 83 e4 0f          	and    $0xf,%r12d
    5578:	0f 84 27 f1 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    557e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5583:	8b 50 74             	mov    0x74(%rax),%edx
    5586:	85 d2                	test   %edx,%edx
    5588:	0f 84 9a 00 00 00    	je     5628 <sg_raster_triangle_depth_capture+0x2178>
    558e:	48 89 c6             	mov    %rax,%rsi
    5591:	8b 40 64             	mov    0x64(%rax),%eax
    5594:	8b 56 68             	mov    0x68(%rsi),%edx
    5597:	44 8b 4e 70          	mov    0x70(%rsi),%r9d
    559b:	8b 4e 6c             	mov    0x6c(%rsi),%ecx
    559e:	41 01 d1             	add    %edx,%r9d
    55a1:	44 89 ce             	mov    %r9d,%esi
    55a4:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
    55a9:	01 c1                	add    %eax,%ecx
    55ab:	44 39 c8             	cmp    %r9d,%eax
    55ae:	0f 8f 87 1f 00 00    	jg     753b <sg_raster_triangle_depth_capture+0x408b>
    55b4:	44 39 c9             	cmp    %r9d,%ecx
    55b7:	0f 8e 7e 1f 00 00    	jle    753b <sg_raster_triangle_depth_capture+0x408b>
    55bd:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    55c4:	39 c6                	cmp    %eax,%esi
    55c6:	0f 8e 45 3e 00 00    	jle    9411 <sg_raster_triangle_depth_capture+0x5f61>
    55cc:	39 c2                	cmp    %eax,%edx
    55ce:	0f 8f 3d 3e 00 00    	jg     9411 <sg_raster_triangle_depth_capture+0x5f61>
    55d4:	31 c0                	xor    %eax,%eax
    55d6:	39 4c 24 30          	cmp    %ecx,0x30(%rsp)
    55da:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
    55e0:	0f 9c c0             	setl   %al
    55e3:	66 41 0f 6e c1       	movd   %r9d,%xmm0
    55e8:	f7 d8                	neg    %eax
    55ea:	44 8b 8c 24 e8 00 00 	mov    0xe8(%rsp),%r9d
    55f1:	00 
    55f2:	41 39 d1             	cmp    %edx,%r9d
    55f5:	7c 09                	jl     5600 <sg_raster_triangle_depth_capture+0x2150>
    55f7:	41 39 f1             	cmp    %esi,%r9d
    55fa:	0f 8c cb 54 00 00    	jl     aacb <sg_raster_triangle_depth_capture+0x761b>
    5600:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5604:	31 d2                	xor    %edx,%edx
    5606:	66 0f 3a 22 ca 01    	pinsrd $0x1,%edx,%xmm1
    560c:	66 0f 3a 22 c0 01    	pinsrd $0x1,%eax,%xmm0
    5612:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    5616:	66 0f db d0          	pand   %xmm0,%xmm2
    561a:	44 0f 50 e2          	movmskps %xmm2,%r12d
    561e:	41 83 e4 0f          	and    $0xf,%r12d
    5622:	0f 84 7d f0 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    5628:	85 db                	test   %ebx,%ebx
    562a:	0f 85 f8 19 00 00    	jne    7028 <sg_raster_triangle_depth_capture+0x3b78>
    5630:	44 89 e1             	mov    %r12d,%ecx
    5633:	44 89 e3             	mov    %r12d,%ebx
    5636:	45 89 e2             	mov    %r12d,%r10d
    5639:	83 e1 01             	and    $0x1,%ecx
    563c:	83 e3 02             	and    $0x2,%ebx
    563f:	41 83 e2 04          	and    $0x4,%r10d
    5643:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5648:	44 8b 88 90 00 00 00 	mov    0x90(%rax),%r9d
    564f:	45 85 c9             	test   %r9d,%r9d
    5652:	0f 84 58 1a 00 00    	je     70b0 <sg_raster_triangle_depth_capture+0x3c00>
    5658:	8b 80 94 00 00 00    	mov    0x94(%rax),%eax
    565e:	83 f8 01             	cmp    $0x1,%eax
    5661:	76 0f                	jbe    5672 <sg_raster_triangle_depth_capture+0x21c2>
    5663:	8d 90 fe fc ff ff    	lea    -0x302(%rax),%edx
    5669:	83 fa 03             	cmp    $0x3,%edx
    566c:	0f 87 2a 1d 00 00    	ja     739c <sg_raster_triangle_depth_capture+0x3eec>
    5672:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    5677:	44 8b 9e 98 00 00 00 	mov    0x98(%rsi),%r11d
    567e:	41 83 fb 01          	cmp    $0x1,%r11d
    5682:	76 10                	jbe    5694 <sg_raster_triangle_depth_capture+0x21e4>
    5684:	41 8d 93 fe fc ff ff 	lea    -0x302(%r11),%edx
    568b:	83 fa 03             	cmp    $0x3,%edx
    568e:	0f 87 08 1d 00 00    	ja     739c <sg_raster_triangle_depth_capture+0x3eec>
    5694:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    5699:	66 0f ef c9          	pxor   %xmm1,%xmm1
    569d:	48 8b 56 08          	mov    0x8(%rsi),%rdx
    56a1:	42 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%esi
    56a8:	00 
    56a9:	48 63 f6             	movslq %esi,%rsi
    56ac:	f3 0f 7e 14 32       	movq   (%rdx,%rsi,1),%xmm2
    56b1:	4c 8d 04 32          	lea    (%rdx,%rsi,1),%r8
    56b5:	39 bc 24 e8 00 00 00 	cmp    %edi,0xe8(%rsp)
    56bc:	7d 0f                	jge    56cd <sg_raster_triangle_depth_capture+0x221d>
    56be:	8d 34 ad 00 00 00 00 	lea    0x0(,%rbp,4),%esi
    56c5:	48 63 f6             	movslq %esi,%rsi
    56c8:	f3 0f 7e 0c 32       	movq   (%rdx,%rsi,1),%xmm1
    56cd:	f3 44 0f 10 0d 00 00 	movss  0x0(%rip),%xmm9        # 56d6 <sg_raster_triangle_depth_capture+0x2226>
    56d4:	00 00 
    56d6:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    56da:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    56de:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    56e2:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
    56e7:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 56f0 <sg_raster_triangle_depth_capture+0x2240>
    56ee:	00 00 
    56f0:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    56f3:	0f 28 e1             	movaps %xmm1,%xmm4
    56f6:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    56fa:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 5703 <sg_raster_triangle_depth_capture+0x2253>
    5701:	00 00 
    5703:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    5706:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    570a:	0f 28 d9             	movaps %xmm1,%xmm3
    570d:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    5711:	66 0f 38 00 0d 00 00 	pshufb 0x0(%rip),%xmm1        # 571a <sg_raster_triangle_depth_capture+0x226a>
    5718:	00 00 
    571a:	66 0f 38 00 05 00 00 	pshufb 0x0(%rip),%xmm0        # 5723 <sg_raster_triangle_depth_capture+0x2273>
    5721:	00 00 
    5723:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    5726:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    572a:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    572d:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    5731:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    5735:	44 0f 28 d9          	movaps %xmm1,%xmm11
    5739:	3d 03 03 00 00       	cmp    $0x303,%eax
    573e:	0f 84 50 62 00 00    	je     b994 <sg_raster_triangle_depth_capture+0x84e4>
    5744:	0f 87 6a 55 00 00    	ja     acb4 <sg_raster_triangle_depth_capture+0x7804>
    574a:	85 c0                	test   %eax,%eax
    574c:	0f 84 a6 5c 00 00    	je     b3f8 <sg_raster_triangle_depth_capture+0x7f48>
    5752:	45 0f 28 e2          	movaps %xmm10,%xmm12
    5756:	3d 02 03 00 00       	cmp    $0x302,%eax
    575b:	75 10                	jne    576d <sg_raster_triangle_depth_capture+0x22bd>
    575d:	41 0f 59 f2          	mulps  %xmm10,%xmm6
    5761:	41 0f 59 fa          	mulps  %xmm10,%xmm7
    5765:	45 0f 59 c2          	mulps  %xmm10,%xmm8
    5769:	45 0f 59 e2          	mulps  %xmm10,%xmm12
    576d:	41 81 fb 03 03 00 00 	cmp    $0x303,%r11d
    5774:	0f 84 37 62 00 00    	je     b9b1 <sg_raster_triangle_depth_capture+0x8501>
    577a:	0f 87 57 5e 00 00    	ja     b5d7 <sg_raster_triangle_depth_capture+0x8127>
    5780:	45 85 db             	test   %r11d,%r11d
    5783:	0f 84 72 62 00 00    	je     b9fb <sg_raster_triangle_depth_capture+0x854b>
    5789:	41 81 fb 02 03 00 00 	cmp    $0x302,%r11d
    5790:	0f 85 4e 62 00 00    	jne    b9e4 <sg_raster_triangle_depth_capture+0x8534>
    5796:	41 0f 59 c2          	mulps  %xmm10,%xmm0
    579a:	41 0f 28 cb          	movaps %xmm11,%xmm1
    579e:	41 0f 59 e2          	mulps  %xmm10,%xmm4
    57a2:	41 0f 59 da          	mulps  %xmm10,%xmm3
    57a6:	41 0f 59 ca          	mulps  %xmm10,%xmm1
    57aa:	41 0f 58 c4          	addps  %xmm12,%xmm0
    57ae:	0f 58 f4             	addps  %xmm4,%xmm6
    57b1:	0f 58 fb             	addps  %xmm3,%xmm7
    57b4:	44 0f 58 c1          	addps  %xmm1,%xmm8
    57b8:	44 0f 28 d0          	movaps %xmm0,%xmm10
    57bc:	e9 06 19 00 00       	jmp    70c7 <sg_raster_triangle_depth_capture+0x3c17>
    57c1:	41 0f c2 c2 02       	cmpleps %xmm10,%xmm0
    57c6:	66 0f db d0          	pand   %xmm0,%xmm2
    57ca:	0f 28 c2             	movaps %xmm2,%xmm0
    57cd:	e9 9e fd ff ff       	jmp    5570 <sg_raster_triangle_depth_capture+0x20c0>
    57d2:	41 0f c2 c2 04       	cmpneqps %xmm10,%xmm0
    57d7:	66 0f db d0          	pand   %xmm0,%xmm2
    57db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    57e0:	0f 28 c2             	movaps %xmm2,%xmm0
    57e3:	e9 88 fd ff ff       	jmp    5570 <sg_raster_triangle_depth_capture+0x20c0>
    57e8:	41 0f c2 c2 01       	cmpltps %xmm10,%xmm0
    57ed:	66 0f db d0          	pand   %xmm0,%xmm2
    57f1:	0f 28 c2             	movaps %xmm2,%xmm0
    57f4:	e9 77 fd ff ff       	jmp    5570 <sg_raster_triangle_depth_capture+0x20c0>
    57f9:	41 0f 28 ca          	movaps %xmm10,%xmm1
    57fd:	0f c2 c8 02          	cmpleps %xmm0,%xmm1
    5801:	66 0f db d1          	pand   %xmm1,%xmm2
    5805:	0f 28 c2             	movaps %xmm2,%xmm0
    5808:	e9 63 fd ff ff       	jmp    5570 <sg_raster_triangle_depth_capture+0x20c0>
    580d:	41 0f c2 c2 00       	cmpeqps %xmm10,%xmm0
    5812:	66 0f db d0          	pand   %xmm0,%xmm2
    5816:	0f 28 c2             	movaps %xmm2,%xmm0
    5819:	e9 52 fd ff ff       	jmp    5570 <sg_raster_triangle_depth_capture+0x20c0>
    581e:	41 0f 28 ca          	movaps %xmm10,%xmm1
    5822:	0f c2 c8 01          	cmpltps %xmm0,%xmm1
    5826:	66 0f db d1          	pand   %xmm1,%xmm2
    582a:	0f 28 c2             	movaps %xmm2,%xmm0
    582d:	e9 3e fd ff ff       	jmp    5570 <sg_raster_triangle_depth_capture+0x20c0>
    5832:	0f c2 84 24 20 01 00 	cmpltps 0x120(%rsp),%xmm0
    5839:	00 01 
    583b:	66 0f db d0          	pand   %xmm0,%xmm2
    583f:	e9 0c fa ff ff       	jmp    5250 <sg_raster_triangle_depth_capture+0x1da0>
    5844:	0f 28 8c 24 20 01 00 	movaps 0x120(%rsp),%xmm1
    584b:	00 
    584c:	0f c2 c8 02          	cmpleps %xmm0,%xmm1
    5850:	66 0f db d1          	pand   %xmm1,%xmm2
    5854:	e9 f7 f9 ff ff       	jmp    5250 <sg_raster_triangle_depth_capture+0x1da0>
    5859:	0f c2 84 24 20 01 00 	cmpeqps 0x120(%rsp),%xmm0
    5860:	00 00 
    5862:	66 0f db d0          	pand   %xmm0,%xmm2
    5866:	e9 e5 f9 ff ff       	jmp    5250 <sg_raster_triangle_depth_capture+0x1da0>
    586b:	0f 28 8c 24 20 01 00 	movaps 0x120(%rsp),%xmm1
    5872:	00 
    5873:	0f c2 c8 01          	cmpltps %xmm0,%xmm1
    5877:	66 0f db d1          	pand   %xmm1,%xmm2
    587b:	e9 d0 f9 ff ff       	jmp    5250 <sg_raster_triangle_depth_capture+0x1da0>
    5880:	0f c2 84 24 20 01 00 	cmpleps 0x120(%rsp),%xmm0
    5887:	00 02 
    5889:	66 0f db d0          	pand   %xmm0,%xmm2
    588d:	e9 be f9 ff ff       	jmp    5250 <sg_raster_triangle_depth_capture+0x1da0>
    5892:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5898:	44 8b 84 24 38 01 00 	mov    0x138(%rsp),%r8d
    589f:	00 
    58a0:	44 89 e7             	mov    %r12d,%edi
    58a3:	83 e7 01             	and    $0x1,%edi
    58a6:	45 85 c0             	test   %r8d,%r8d
    58a9:	0f 85 8c 04 00 00    	jne    5d3b <sg_raster_triangle_depth_capture+0x288b>
    58af:	85 ff                	test   %edi,%edi
    58b1:	0f 85 38 e6 ff ff    	jne    3eef <sg_raster_triangle_depth_capture+0xa3f>
    58b7:	41 f6 c4 02          	test   $0x2,%r12b
    58bb:	0f 85 ae e8 ff ff    	jne    416f <sg_raster_triangle_depth_capture+0xcbf>
    58c1:	41 f6 c4 04          	test   $0x4,%r12b
    58c5:	0f 85 45 eb ff ff    	jne    4410 <sg_raster_triangle_depth_capture+0xf60>
    58cb:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    58d0:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    58d7:	00 
    58d8:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
    58dd:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    58e2:	48 01 d0             	add    %rdx,%rax
    58e5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    58ea:	48 8d 14 30          	lea    (%rax,%rsi,1),%rdx
    58ee:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    58f3:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    58fa:	00 
    58fb:	44 8b 9f c0 3d 00 00 	mov    0x3dc0(%rdi),%r11d
    5902:	48 01 f0             	add    %rsi,%rax
    5905:	48 01 d8             	add    %rbx,%rax
    5908:	45 85 db             	test   %r11d,%r11d
    590b:	74 3d                	je     594a <sg_raster_triangle_depth_capture+0x249a>
    590d:	8b 5c 24 30          	mov    0x30(%rsp),%ebx
    5911:	8b b4 24 e8 00 00 00 	mov    0xe8(%rsp),%esi
    5918:	89 d9                	mov    %ebx,%ecx
    591a:	83 e6 1f             	and    $0x1f,%esi
    591d:	c1 f9 03             	sar    $0x3,%ecx
    5920:	83 e1 03             	and    $0x3,%ecx
    5923:	8d 0c b1             	lea    (%rcx,%rsi,4),%ecx
    5926:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    592b:	48 63 c9             	movslq %ecx,%rcx
    592e:	0f b6 bc 0e c4 3d 00 	movzbl 0x3dc4(%rsi,%rcx,1),%edi
    5935:	00 
    5936:	89 d9                	mov    %ebx,%ecx
    5938:	be 80 00 00 00       	mov    $0x80,%esi
    593d:	83 e1 07             	and    $0x7,%ecx
    5940:	d3 ee                	shr    %cl,%esi
    5942:	85 f7                	test   %esi,%edi
    5944:	0f 84 5b ed ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    594a:	66 0f ef f6          	pxor   %xmm6,%xmm6
    594e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5952:	f3 0f 10 a4 24 ec 00 	movss  0xec(%rsp),%xmm4
    5959:	00 00 
    595b:	f3 44 0f 10 8c 24 f8 	movss  0xf8(%rsp),%xmm9
    5962:	00 00 00 
    5965:	f3 48 0f 2a f0       	cvtsi2ss %rax,%xmm6
    596a:	66 0f ef db          	pxor   %xmm3,%xmm3
    596e:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 5976 <sg_raster_triangle_depth_capture+0x24c6>
    5975:	00 
    5976:	f3 0f 10 bc 24 fc 00 	movss  0xfc(%rsp),%xmm7
    597d:	00 00 
    597f:	f3 44 0f 10 84 24 08 	movss  0x108(%rsp),%xmm8
    5986:	01 00 00 
    5989:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    598e:	f3 0f 59 f4          	mulss  %xmm4,%xmm6
    5992:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    5996:	f3 44 0f 59 ce       	mulss  %xmm6,%xmm9
    599b:	0f 28 d6             	movaps %xmm6,%xmm2
    599e:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    59a2:	f3 0f 59 f8          	mulss  %xmm0,%xmm7
    59a6:	f3 0f 5c ca          	subss  %xmm2,%xmm1
    59aa:	41 0f 28 d1          	movaps %xmm9,%xmm2
    59ae:	f3 0f 58 d7          	addss  %xmm7,%xmm2
    59b2:	f3 44 0f 59 c1       	mulss  %xmm1,%xmm8
    59b7:	f3 41 0f 58 d0       	addss  %xmm8,%xmm2
    59bc:	0f 2f da             	comiss %xmm2,%xmm3
    59bf:	0f 83 e0 ec ff ff    	jae    46a5 <sg_raster_triangle_depth_capture+0x11f5>
    59c5:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    59cc:	00 
    59cd:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    59d2:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # 59db <sg_raster_triangle_depth_capture+0x252b>
    59d9:	00 00 
    59db:	f3 0f 59 70 18       	mulss  0x18(%rax),%xmm6
    59e0:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    59e7:	00 
    59e8:	44 8b 82 84 00 00 00 	mov    0x84(%rdx),%r8d
    59ef:	f3 44 0f 5e ea       	divss  %xmm2,%xmm13
    59f4:	f3 0f 59 40 18       	mulss  0x18(%rax),%xmm0
    59f9:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    5a00:	00 
    5a01:	f3 0f 59 48 18       	mulss  0x18(%rax),%xmm1
    5a06:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    5a0d:	00 00 
    5a0f:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    5a13:	f3 0f 58 f1          	addss  %xmm1,%xmm6
    5a17:	45 85 c0             	test   %r8d,%r8d
    5a1a:	74 64                	je     5a80 <sg_raster_triangle_depth_capture+0x25d0>
    5a1c:	8b ba c0 00 00 00    	mov    0xc0(%rdx),%edi
    5a22:	85 ff                	test   %edi,%edi
    5a24:	75 5a                	jne    5a80 <sg_raster_triangle_depth_capture+0x25d0>
    5a26:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
    5a2d:	0f af 02             	imul   (%rdx),%eax
    5a30:	8b 74 24 30          	mov    0x30(%rsp),%esi
    5a34:	01 f0                	add    %esi,%eax
    5a36:	48 89 d6             	mov    %rdx,%rsi
    5a39:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    5a3d:	48 98                	cltq
    5a3f:	f3 0f 10 04 82       	movss  (%rdx,%rax,4),%xmm0
    5a44:	8b 86 88 00 00 00    	mov    0x88(%rsi),%eax
    5a4a:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    5a51:	2d 00 02 00 00       	sub    $0x200,%eax
    5a56:	83 f8 07             	cmp    $0x7,%eax
    5a59:	77 10                	ja     5a6b <sg_raster_triangle_depth_capture+0x25bb>
    5a5b:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5a62 <sg_raster_triangle_depth_capture+0x25b2>
    5a62:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    5a66:	48 01 d0             	add    %rdx,%rax
    5a69:	ff e0                	jmp    *%rax
    5a6b:	31 c0                	xor    %eax,%eax
    5a6d:	0f 2f c6             	comiss %xmm6,%xmm0
    5a70:	0f 97 c0             	seta   %al
    5a73:	85 c0                	test   %eax,%eax
    5a75:	0f 84 2a ec ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    5a7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5a80:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    5a87:	00 
    5a88:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    5a8f:	00 
    5a90:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    5a97:	00 
    5a98:	f3 0f 10 48 20       	movss  0x20(%rax),%xmm1
    5a9d:	f3 0f 10 42 20       	movss  0x20(%rdx),%xmm0
    5aa2:	f3 0f 10 50 24       	movss  0x24(%rax),%xmm2
    5aa7:	f3 0f 10 58 28       	movss  0x28(%rax),%xmm3
    5aac:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5ab0:	f3 0f 10 60 2c       	movss  0x2c(%rax),%xmm4
    5ab5:	f3 44 0f 10 90 98 00 	movss  0x98(%rax),%xmm10
    5abc:	00 00 
    5abe:	f3 41 0f 59 c9       	mulss  %xmm9,%xmm1
    5ac3:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    5aca:	00 
    5acb:	f3 44 0f 10 9a 98 00 	movss  0x98(%rdx),%xmm11
    5ad2:	00 00 
    5ad4:	f3 44 0f 10 a1 98 00 	movss  0x98(%rcx),%xmm12
    5adb:	00 00 
    5add:	f3 41 0f 59 d1       	mulss  %xmm9,%xmm2
    5ae2:	f3 41 0f 59 d9       	mulss  %xmm9,%xmm3
    5ae7:	8b 80 64 01 00 00    	mov    0x164(%rax),%eax
    5aed:	f3 41 0f 59 e1       	mulss  %xmm9,%xmm4
    5af2:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
    5af9:	83 e8 01             	sub    $0x1,%eax
    5afc:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5b00:	f3 0f 10 41 20       	movss  0x20(%rcx),%xmm0
    5b05:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5b0a:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5b0e:	f3 0f 10 42 24       	movss  0x24(%rdx),%xmm0
    5b13:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5b17:	f3 41 0f 59 cd       	mulss  %xmm13,%xmm1
    5b1c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5b20:	f3 0f 10 41 24       	movss  0x24(%rcx),%xmm0
    5b25:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    5b2c:	00 00 
    5b2e:	f3 0f 11 8c 24 10 03 	movss  %xmm1,0x310(%rsp)
    5b35:	00 00 
    5b37:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5b3c:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5b40:	f3 0f 10 42 28       	movss  0x28(%rdx),%xmm0
    5b45:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5b49:	f3 41 0f 59 d5       	mulss  %xmm13,%xmm2
    5b4e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    5b52:	f3 0f 10 41 28       	movss  0x28(%rcx),%xmm0
    5b57:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    5b5e:	00 00 
    5b60:	f3 0f 11 94 24 14 03 	movss  %xmm2,0x314(%rsp)
    5b67:	00 00 
    5b69:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5b6e:	f3 0f 58 d8          	addss  %xmm0,%xmm3
    5b72:	f3 0f 10 42 2c       	movss  0x2c(%rdx),%xmm0
    5b77:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    5b7b:	f3 41 0f 59 dd       	mulss  %xmm13,%xmm3
    5b80:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    5b84:	f3 0f 10 41 2c       	movss  0x2c(%rcx),%xmm0
    5b89:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    5b90:	00 00 
    5b92:	f3 0f 11 9c 24 18 03 	movss  %xmm3,0x318(%rsp)
    5b99:	00 00 
    5b9b:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    5ba0:	f3 0f 58 e0          	addss  %xmm0,%xmm4
    5ba4:	f3 41 0f 59 e5       	mulss  %xmm13,%xmm4
    5ba9:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    5bb0:	00 00 
    5bb2:	f3 0f 11 a4 24 1c 03 	movss  %xmm4,0x31c(%rsp)
    5bb9:	00 00 
    5bbb:	83 f8 01             	cmp    $0x1,%eax
    5bbe:	0f 86 23 1d 00 00    	jbe    78e7 <sg_raster_triangle_depth_capture+0x4437>
    5bc4:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    5bcb:	00 
    5bcc:	8b b0 60 01 00 00    	mov    0x160(%rax),%esi
    5bd2:	85 f6                	test   %esi,%esi
    5bd4:	0f 85 14 24 00 00    	jne    7fee <sg_raster_triangle_depth_capture+0x4b3e>
    5bda:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5bdf:	44 8b 88 08 01 00 00 	mov    0x108(%rax),%r9d
    5be6:	45 85 c9             	test   %r9d,%r9d
    5be9:	0f 84 ed 00 00 00    	je     5cdc <sg_raster_triangle_depth_capture+0x282c>
    5bef:	f3 45 0f 59 d1       	mulss  %xmm9,%xmm10
    5bf4:	8b 80 0c 01 00 00    	mov    0x10c(%rax),%eax
    5bfa:	f3 41 0f 59 fb       	mulss  %xmm11,%xmm7
    5bff:	f3 45 0f 59 c4       	mulss  %xmm12,%xmm8
    5c04:	f3 44 0f 58 d7       	addss  %xmm7,%xmm10
    5c09:	f3 45 0f 58 d0       	addss  %xmm8,%xmm10
    5c0e:	f3 45 0f 59 d5       	mulss  %xmm13,%xmm10
    5c13:	41 0f 28 c2          	movaps %xmm10,%xmm0
    5c17:	0f 54 05 00 00 00 00 	andps  0x0(%rip),%xmm0        # 5c1e <sg_raster_triangle_depth_capture+0x276e>
    5c1e:	3d 00 08 00 00       	cmp    $0x800,%eax
    5c23:	0f 84 cc 43 00 00    	je     9ff5 <sg_raster_triangle_depth_capture+0x6b45>
    5c29:	3d 01 08 00 00       	cmp    $0x801,%eax
    5c2e:	0f 84 01 43 00 00    	je     9f35 <sg_raster_triangle_depth_capture+0x6a85>
    5c34:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5c39:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    5c3e:	f3 0f 10 b8 18 01 00 	movss  0x118(%rax),%xmm7
    5c45:	00 
    5c46:	0f 28 ef             	movaps %xmm7,%xmm5
    5c49:	f3 0f 5c a8 14 01 00 	subss  0x114(%rax),%xmm5
    5c50:	00 
    5c51:	41 0f 2f e8          	comiss %xmm8,%xmm5
    5c55:	74 39                	je     5c90 <sg_raster_triangle_depth_capture+0x27e0>
    5c57:	f3 0f 5c f8          	subss  %xmm0,%xmm7
    5c5b:	f3 0f 5e fd          	divss  %xmm5,%xmm7
    5c5f:	44 0f 2f c7          	comiss %xmm7,%xmm8
    5c63:	0f 87 bf 51 00 00    	ja     ae28 <sg_raster_triangle_depth_capture+0x7978>
    5c69:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 5c71 <sg_raster_triangle_depth_capture+0x27c1>
    5c70:	00 
    5c71:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 5c79 <sg_raster_triangle_depth_capture+0x27c9>
    5c78:	00 
    5c79:	f3 0f 5d c7          	minss  %xmm7,%xmm0
    5c7d:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    5c81:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    5c85:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    5c89:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    5c8d:	0f 1f 00             	nopl   (%rax)
    5c90:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5c95:	f3 0f 10 80 1c 01 00 	movss  0x11c(%rax),%xmm0
    5c9c:	00 
    5c9d:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    5ca1:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5ca5:	f3 0f 10 80 20 01 00 	movss  0x120(%rax),%xmm0
    5cac:	00 
    5cad:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    5cb1:	f3 0f 59 a8 24 01 00 	mulss  0x124(%rax),%xmm5
    5cb8:	00 
    5cb9:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    5cc0:	00 00 
    5cc2:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5cc6:	f3 0f 58 dd          	addss  %xmm5,%xmm3
    5cca:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    5cd1:	00 00 
    5cd3:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    5cda:	00 00 
    5cdc:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    5ce3:	8b 74 24 30          	mov    0x30(%rsp),%esi
    5ce7:	0f 28 c6             	movaps %xmm6,%xmm0
    5cea:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    5cef:	e8 00 00 00 00       	call   5cf4 <sg_raster_triangle_depth_capture+0x2844>
    5cf4:	e9 ac e9 ff ff       	jmp    46a5 <sg_raster_triangle_depth_capture+0x11f5>
    5cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5d00:	c7 84 24 70 01 00 00 	movl   $0x0,0x170(%rsp)
    5d07:	00 00 00 00 
    5d0b:	e9 60 f5 ff ff       	jmp    5270 <sg_raster_triangle_depth_capture+0x1dc0>
    5d10:	d1 ea                	shr    $1,%edx
    5d12:	be ff ff ff ff       	mov    $0xffffffff,%esi
    5d17:	f7 da                	neg    %edx
    5d19:	66 0f 6e d6          	movd   %esi,%xmm2
    5d1d:	c1 e8 02             	shr    $0x2,%eax
    5d20:	f7 d8                	neg    %eax
    5d22:	66 0f 6e f0          	movd   %eax,%xmm6
    5d26:	44 89 e0             	mov    %r12d,%eax
    5d29:	c1 e8 03             	shr    $0x3,%eax
    5d2c:	83 e0 01             	and    $0x1,%eax
    5d2f:	f7 d8                	neg    %eax
    5d31:	e9 0a f4 ff ff       	jmp    5140 <sg_raster_triangle_depth_capture+0x1c90>
    5d36:	bf 01 00 00 00       	mov    $0x1,%edi
    5d3b:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    5d40:	48 8b b4 24 b8 00 00 	mov    0xb8(%rsp),%rsi
    5d47:	00 
    5d48:	c7 84 24 60 01 00 00 	movl   $0x0,0x160(%rsp)
    5d4f:	00 00 00 00 
    5d53:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    5d58:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
    5d5d:	48 8d 14 06          	lea    (%rsi,%rax,1),%rdx
    5d61:	4c 8d 14 1a          	lea    (%rdx,%rbx,1),%r10
    5d65:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
    5d69:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    5d6e:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    5d75:	00 
    5d76:	48 01 d8             	add    %rbx,%rax
    5d79:	49 8d 0c 19          	lea    (%r9,%rbx,1),%rcx
    5d7d:	49 01 c1             	add    %rax,%r9
    5d80:	85 ff                	test   %edi,%edi
    5d82:	0f 84 28 01 00 00    	je     5eb0 <sg_raster_triangle_depth_capture+0x2a00>
    5d88:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5d8c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    5d90:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    5d97:	00 00 
    5d99:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    5da0:	00 
    5da1:	f3 48 0f 2a 44 24 10 	cvtsi2ssq 0x10(%rsp),%xmm0
    5da8:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    5dad:	f3 48 0f 2a 4c 24 18 	cvtsi2ssq 0x18(%rsp),%xmm1
    5db4:	f3 0f 10 57 18       	movss  0x18(%rdi),%xmm2
    5db9:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
    5dc0:	00 
    5dc1:	f3 0f 10 5f 18       	movss  0x18(%rdi),%xmm3
    5dc6:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5dcd:	00 
    5dce:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    5dd2:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    5dd6:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    5dda:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    5dde:	f3 0f 59 d9          	mulss  %xmm1,%xmm3
    5de2:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 5dea <sg_raster_triangle_depth_capture+0x293a>
    5de9:	00 
    5dea:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    5dee:	f3 0f 59 4f 18       	mulss  0x18(%rdi),%xmm1
    5df3:	8b bb 84 00 00 00    	mov    0x84(%rbx),%edi
    5df9:	f3 0f 10 84 24 f0 00 	movss  0xf0(%rsp),%xmm0
    5e00:	00 00 
    5e02:	f3 0f 58 d3          	addss  %xmm3,%xmm2
    5e06:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    5e0a:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5e0e:	f3 0f 11 94 24 60 01 	movss  %xmm2,0x160(%rsp)
    5e15:	00 00 
    5e17:	85 ff                	test   %edi,%edi
    5e19:	0f 84 91 00 00 00    	je     5eb0 <sg_raster_triangle_depth_capture+0x2a00>
    5e1f:	8b ab c0 00 00 00    	mov    0xc0(%rbx),%ebp
    5e25:	85 ed                	test   %ebp,%ebp
    5e27:	0f 85 83 00 00 00    	jne    5eb0 <sg_raster_triangle_depth_capture+0x2a00>
    5e2d:	8b bc 24 8c 00 00 00 	mov    0x8c(%rsp),%edi
    5e34:	0f af 3b             	imul   (%rbx),%edi
    5e37:	44 8b 5c 24 0c       	mov    0xc(%rsp),%r11d
    5e3c:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    5e40:	44 01 df             	add    %r11d,%edi
    5e43:	48 63 ff             	movslq %edi,%rdi
    5e46:	f3 41 0f 10 04 b8    	movss  (%r8,%rdi,4),%xmm0
    5e4c:	8b bb 88 00 00 00    	mov    0x88(%rbx),%edi
    5e52:	89 bc 24 70 01 00 00 	mov    %edi,0x170(%rsp)
    5e59:	81 ef 00 02 00 00    	sub    $0x200,%edi
    5e5f:	83 ff 07             	cmp    $0x7,%edi
    5e62:	0f 87 4a 56 00 00    	ja     b4b2 <sg_raster_triangle_depth_capture+0x8002>
    5e68:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 5e6f <sg_raster_triangle_depth_capture+0x29bf>
    5e6f:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    5e73:	4c 01 c7             	add    %r8,%rdi
    5e76:	ff e7                	jmp    *%rdi
    5e78:	44 8b 9c 24 20 01 00 	mov    0x120(%rsp),%r11d
    5e7f:	00 
    5e80:	45 85 db             	test   %r11d,%r11d
    5e83:	75 20                	jne    5ea5 <sg_raster_triangle_depth_capture+0x29f5>
    5e85:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    5e8c:	00 00 
    5e8e:	31 db                	xor    %ebx,%ebx
    5e90:	f3 0f 5c 0d 00 00 00 	subss  0x0(%rip),%xmm1        # 5e98 <sg_raster_triangle_depth_capture+0x29e8>
    5e97:	00 
    5e98:	0f 2f c1             	comiss %xmm1,%xmm0
    5e9b:	0f 93 c3             	setae  %bl
    5e9e:	89 9c 24 20 01 00 00 	mov    %ebx,0x120(%rsp)
    5ea5:	41 83 e4 fe          	and    $0xfffffffe,%r12d
    5ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5eb0:	41 f6 c4 02          	test   $0x2,%r12b
    5eb4:	0f 84 8e 14 00 00    	je     7348 <sg_raster_triangle_depth_capture+0x3e98>
    5eba:	66 0f ef e4          	pxor   %xmm4,%xmm4
    5ebe:	66 0f ef db          	pxor   %xmm3,%xmm3
    5ec2:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    5ec9:	00 00 
    5ecb:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    5ed2:	00 
    5ed3:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    5ed8:	48 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%rbx
    5edf:	00 
    5ee0:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    5ee5:	0f 28 c5             	movaps %xmm5,%xmm0
    5ee8:	f3 0f 10 57 18       	movss  0x18(%rdi),%xmm2
    5eed:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
    5ef4:	00 
    5ef5:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    5ef9:	f3 0f 59 eb          	mulss  %xmm3,%xmm5
    5efd:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    5f01:	0f 28 cd             	movaps %xmm5,%xmm1
    5f04:	f3 0f 59 6f 18       	mulss  0x18(%rdi),%xmm5
    5f09:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    5f0d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 5f15 <sg_raster_triangle_depth_capture+0x2a65>
    5f14:	00 
    5f15:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    5f19:	f3 0f 59 43 18       	mulss  0x18(%rbx),%xmm0
    5f1e:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    5f23:	f3 0f 58 84 24 f0 00 	addss  0xf0(%rsp),%xmm0
    5f2a:	00 00 
    5f2c:	f3 0f 58 d5          	addss  %xmm5,%xmm2
    5f30:	8b bb 84 00 00 00    	mov    0x84(%rbx),%edi
    5f36:	f3 0f 58 d0          	addss  %xmm0,%xmm2
    5f3a:	44 0f 28 d2          	movaps %xmm2,%xmm10
    5f3e:	85 ff                	test   %edi,%edi
    5f40:	0f 84 fa 04 00 00    	je     6440 <sg_raster_triangle_depth_capture+0x2f90>
    5f46:	8b ab c0 00 00 00    	mov    0xc0(%rbx),%ebp
    5f4c:	85 ed                	test   %ebp,%ebp
    5f4e:	0f 85 ec 04 00 00    	jne    6440 <sg_raster_triangle_depth_capture+0x2f90>
    5f54:	8b bc 24 8c 00 00 00 	mov    0x8c(%rsp),%edi
    5f5b:	0f af 3b             	imul   (%rbx),%edi
    5f5e:	44 8b 5c 24 30       	mov    0x30(%rsp),%r11d
    5f63:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    5f67:	44 01 df             	add    %r11d,%edi
    5f6a:	48 63 ff             	movslq %edi,%rdi
    5f6d:	f3 41 0f 10 04 b8    	movss  (%r8,%rdi,4),%xmm0
    5f73:	8b bb 88 00 00 00    	mov    0x88(%rbx),%edi
    5f79:	89 bc 24 70 01 00 00 	mov    %edi,0x170(%rsp)
    5f80:	8d bf 00 fe ff ff    	lea    -0x200(%rdi),%edi
    5f86:	83 ff 07             	cmp    $0x7,%edi
    5f89:	0f 87 14 55 00 00    	ja     b4a3 <sg_raster_triangle_depth_capture+0x7ff3>
    5f8f:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 5f96 <sg_raster_triangle_depth_capture+0x2ae6>
    5f96:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    5f9a:	4c 01 c7             	add    %r8,%rdi
    5f9d:	ff e7                	jmp    *%rdi
    5f9f:	90                   	nop
    5fa0:	f3 0f 10 41 50       	movss  0x50(%rcx),%xmm0
    5fa5:	f3 44 0f 10 5e 50    	movss  0x50(%rsi),%xmm11
    5fab:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    5fb0:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    5fb5:	f3 44 0f 10 6e 54    	movss  0x54(%rsi),%xmm13
    5fbb:	48 8b 94 24 f0 04 00 	mov    0x4f0(%rsp),%rdx
    5fc2:	00 
    5fc3:	0f 29 bc 24 20 03 00 	movaps %xmm7,0x320(%rsp)
    5fca:	00 
    5fcb:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    5fcf:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    5fd4:	0f 59 c4             	mulps  %xmm4,%xmm0
    5fd7:	48 8b b4 24 f0 04 00 	mov    0x4f0(%rsp),%rsi
    5fde:	00 
    5fdf:	44 0f 59 db          	mulps  %xmm3,%xmm11
    5fe3:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
    5fe8:	44 8b 4a 24          	mov    0x24(%rdx),%r9d
    5fec:	4c 8b 52 30          	mov    0x30(%rdx),%r10
    5ff0:	44 0f 59 eb          	mulps  %xmm3,%xmm13
    5ff4:	8b 52 28             	mov    0x28(%rdx),%edx
    5ff7:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 5fff <sg_raster_triangle_depth_capture+0x2b4f>
    5ffe:	00 
    5fff:	0f 29 b4 24 10 03 00 	movaps %xmm6,0x310(%rsp)
    6006:	00 
    6007:	44 0f 29 84 24 70 03 	movaps %xmm8,0x370(%rsp)
    600e:	00 00 
    6010:	f3 45 0f 2a f1       	cvtsi2ss %r9d,%xmm14
    6015:	f3 44 0f 2a e2       	cvtsi2ss %edx,%xmm12
    601a:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    6021:	8b 56 3c             	mov    0x3c(%rsi),%edx
    6024:	44 0f 29 94 24 b0 03 	movaps %xmm10,0x3b0(%rsp)
    602b:	00 00 
    602d:	8b 76 40             	mov    0x40(%rsi),%esi
    6030:	41 0f 58 c3          	addps  %xmm11,%xmm0
    6034:	f3 45 0f 10 5b 50    	movss  0x50(%r11),%xmm11
    603a:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    603f:	89 b4 24 80 01 00 00 	mov    %esi,0x180(%rsp)
    6046:	31 f6                	xor    %esi,%esi
    6048:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    604d:	45 0f 59 d9          	mulps  %xmm9,%xmm11
    6051:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
    6056:	41 0f 58 c3          	addps  %xmm11,%xmm0
    605a:	f3 44 0f 10 59 54    	movss  0x54(%rcx),%xmm11
    6060:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    6067:	00 
    6068:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    606d:	44 0f 59 dc          	mulps  %xmm4,%xmm11
    6071:	8b 49 38             	mov    0x38(%rcx),%ecx
    6074:	0f 59 c1             	mulps  %xmm1,%xmm0
    6077:	45 0f 58 dd          	addps  %xmm13,%xmm11
    607b:	f3 45 0f 10 6b 54    	movss  0x54(%r11),%xmm13
    6081:	66 44 0f 3a 08 f8 01 	roundps $0x1,%xmm0,%xmm15
    6088:	41 0f 5c c7          	subps  %xmm15,%xmm0
    608c:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
    6091:	45 0f 59 e9          	mulps  %xmm9,%xmm13
    6095:	41 0f 59 c6          	mulps  %xmm14,%xmm0
    6099:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 60a2 <sg_raster_triangle_depth_capture+0x2bf2>
    60a0:	00 00 
    60a2:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    60a7:	45 0f 58 dd          	addps  %xmm13,%xmm11
    60ab:	41 0f 58 c6          	addps  %xmm14,%xmm0
    60af:	44 0f 59 d9          	mulps  %xmm1,%xmm11
    60b3:	66 45 0f 3a 08 eb 01 	roundps $0x1,%xmm11,%xmm13
    60ba:	45 0f 5c dd          	subps  %xmm13,%xmm11
    60be:	45 0f 59 dc          	mulps  %xmm12,%xmm11
    60c2:	66 44 0f 3a 08 e0 01 	roundps $0x1,%xmm0,%xmm12
    60c9:	41 0f 5c c4          	subps  %xmm12,%xmm0
    60cd:	f3 45 0f 5b fc       	cvttps2dq %xmm12,%xmm15
    60d2:	f3 44 0f 10 25 00 00 	movss  0x0(%rip),%xmm12        # 60db <sg_raster_triangle_depth_capture+0x2c2b>
    60d9:	00 00 
    60db:	44 0f 29 bc 24 d0 02 	movaps %xmm15,0x2d0(%rsp)
    60e2:	00 00 
    60e4:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
    60e9:	45 0f 58 de          	addps  %xmm14,%xmm11
    60ed:	66 45 0f 3a 08 eb 01 	roundps $0x1,%xmm11,%xmm13
    60f4:	f3 45 0f 5b f5       	cvttps2dq %xmm13,%xmm14
    60f9:	44 0f 29 b4 24 e0 02 	movaps %xmm14,0x2e0(%rsp)
    6100:	00 00 
    6102:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 610b <sg_raster_triangle_depth_capture+0x2c5b>
    6109:	00 00 
    610b:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    6110:	41 0f 59 c6          	mulps  %xmm14,%xmm0
    6114:	41 0f 58 c4          	addps  %xmm12,%xmm0
    6118:	f3 0f 5b c0          	cvttps2dq %xmm0,%xmm0
    611c:	0f 29 84 24 f0 02 00 	movaps %xmm0,0x2f0(%rsp)
    6123:	00 
    6124:	41 0f 28 c3          	movaps %xmm11,%xmm0
    6128:	41 0f 5c c5          	subps  %xmm13,%xmm0
    612c:	41 0f 59 c6          	mulps  %xmm14,%xmm0
    6130:	41 0f 58 c4          	addps  %xmm12,%xmm0
    6134:	f3 0f 5b c0          	cvttps2dq %xmm0,%xmm0
    6138:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    613f:	00 
    6140:	83 f8 02             	cmp    $0x2,%eax
    6143:	0f 84 a8 14 00 00    	je     75f1 <sg_raster_triangle_depth_capture+0x4141>
    6149:	44 89 bc 24 a0 01 00 	mov    %r15d,0x1a0(%rsp)
    6150:	00 
    6151:	89 bc 24 b0 01 00 00 	mov    %edi,0x1b0(%rsp)
    6158:	44 89 84 24 c0 01 00 	mov    %r8d,0x1c0(%rsp)
    615f:	00 
    6160:	41 89 c8             	mov    %ecx,%r8d
    6163:	89 9c 24 d0 01 00 00 	mov    %ebx,0x1d0(%rsp)
    616a:	89 d3                	mov    %edx,%ebx
    616c:	41 0f a3 f4          	bt     %esi,%r12d
    6170:	0f 83 fd 01 00 00    	jae    6373 <sg_raster_triangle_depth_capture+0x2ec3>
    6176:	8b 84 b4 d0 02 00 00 	mov    0x2d0(%rsp,%rsi,4),%eax
    617d:	44 8b 9c b4 e0 02 00 	mov    0x2e0(%rsp,%rsi,4),%r11d
    6184:	00 
    6185:	44 8d 78 01          	lea    0x1(%rax),%r15d
    6189:	41 8d 4b 01          	lea    0x1(%r11),%ecx
    618d:	45 85 c0             	test   %r8d,%r8d
    6190:	0f 84 3a 02 00 00    	je     63d0 <sg_raster_triangle_depth_capture+0x2f20>
    6196:	44 21 c0             	and    %r8d,%eax
    6199:	45 21 c7             	and    %r8d,%r15d
    619c:	89 c7                	mov    %eax,%edi
    619e:	85 db                	test   %ebx,%ebx
    61a0:	0f 84 20 13 00 00    	je     74c6 <sg_raster_triangle_depth_capture+0x4016>
    61a6:	21 d9                	and    %ebx,%ecx
    61a8:	41 21 db             	and    %ebx,%r11d
    61ab:	89 ca                	mov    %ecx,%edx
    61ad:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    61b4:	89 c1                	mov    %eax,%ecx
    61b6:	d3 e2                	shl    %cl,%edx
    61b8:	41 d3 e3             	shl    %cl,%r11d
    61bb:	89 d1                	mov    %edx,%ecx
    61bd:	42 8d 04 1f          	lea    (%rdi,%r11,1),%eax
    61c1:	45 01 fb             	add    %r15d,%r11d
    61c4:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 61cc <sg_raster_triangle_depth_capture+0x2d1c>
    61cb:	00 
    61cc:	66 44 0f 6e a4 b4 f0 	movd   0x2f0(%rsp,%rsi,4),%xmm12
    61d3:	02 00 00 
    61d6:	c1 e0 02             	shl    $0x2,%eax
    61d9:	66 0f 6e b4 b4 00 03 	movd   0x300(%rsp,%rsi,4),%xmm6
    61e0:	00 00 
    61e2:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
    61e7:	48 98                	cltq
    61e9:	66 44 0f 38 39 e0    	pminsd %xmm0,%xmm12
    61ef:	66 0f ef c0          	pxor   %xmm0,%xmm0
    61f3:	66 45 0f 6e 04 02    	movd   (%r10,%rax,1),%xmm8
    61f9:	42 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%eax
    6200:	00 
    6201:	66 44 0f 38 3d e0    	pmaxsd %xmm0,%xmm12
    6207:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 620f <sg_raster_triangle_depth_capture+0x2d5f>
    620e:	00 
    620f:	48 98                	cltq
    6211:	66 45 0f 38 30 c0    	pmovzxbw %xmm8,%xmm8
    6217:	66 45 0f fa fc       	psubd  %xmm12,%xmm15
    621c:	66 45 0f 6e 2c 02    	movd   (%r10,%rax,1),%xmm13
    6222:	8d 04 39             	lea    (%rcx,%rdi,1),%eax
    6225:	66 0f 38 39 f0       	pminsd %xmm0,%xmm6
    622a:	c1 e0 02             	shl    $0x2,%eax
    622d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6231:	66 45 0f 38 30 ed    	pmovzxbw %xmm13,%xmm13
    6237:	48 98                	cltq
    6239:	66 0f 38 3d f0       	pmaxsd %xmm0,%xmm6
    623e:	66 0f 6f c7          	movdqa %xmm7,%xmm0
    6242:	66 45 0f 6e 1c 02    	movd   (%r10,%rax,1),%xmm11
    6248:	42 8d 04 39          	lea    (%rcx,%r15,1),%eax
    624c:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
    6251:	c1 e0 02             	shl    $0x2,%eax
    6254:	66 0f fa c6          	psubd  %xmm6,%xmm0
    6258:	66 45 0f 61 c5       	punpcklwd %xmm13,%xmm8
    625d:	66 45 0f 70 d2 00    	pshufd $0x0,%xmm10,%xmm10
    6263:	48 98                	cltq
    6265:	66 45 0f 38 30 db    	pmovzxbw %xmm11,%xmm11
    626b:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
    6270:	66 41 0f 6e 34 02    	movd   (%r10,%rax,1),%xmm6
    6276:	66 0f 38 30 f6       	pmovzxbw %xmm6,%xmm6
    627b:	66 44 0f 61 de       	punpcklwd %xmm6,%xmm11
    6280:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    6285:	66 0f 72 f6 10       	pslld  $0x10,%xmm6
    628a:	66 41 0f eb f7       	por    %xmm15,%xmm6
    628f:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    6294:	66 44 0f f5 c6       	pmaddwd %xmm6,%xmm8
    6299:	66 44 0f f5 de       	pmaddwd %xmm6,%xmm11
    629e:	66 0f ef f6          	pxor   %xmm6,%xmm6
    62a2:	66 41 0f 38 40 c0    	pmulld %xmm8,%xmm0
    62a8:	66 45 0f 38 40 d3    	pmulld %xmm11,%xmm10
    62ae:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
    62b3:	66 0f fe 84 24 90 01 	paddd  0x190(%rsp),%xmm0
    62ba:	00 00 
    62bc:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
    62c1:	66 0f 38 2b c0       	packusdw %xmm0,%xmm0
    62c6:	66 0f 67 c0          	packuswb %xmm0,%xmm0
    62ca:	66 0f 7e c0          	movd   %xmm0,%eax
    62ce:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 62d6 <sg_raster_triangle_depth_capture+0x2e26>
    62d5:	00 
    62d6:	f3 0f 59 84 b4 10 03 	mulss  0x310(%rsp,%rsi,4),%xmm0
    62dd:	00 00 
    62df:	0f b6 d0             	movzbl %al,%edx
    62e2:	f3 0f 2a f2          	cvtsi2ss %edx,%xmm6
    62e6:	0f b6 d4             	movzbl %ah,%edx
    62e9:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    62ed:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 62f5 <sg_raster_triangle_depth_capture+0x2e45>
    62f4:	00 
    62f5:	f3 0f 59 b4 b4 20 03 	mulss  0x320(%rsp,%rsi,4),%xmm6
    62fc:	00 00 
    62fe:	f3 0f 11 84 b4 10 03 	movss  %xmm0,0x310(%rsp,%rsi,4)
    6305:	00 00 
    6307:	66 0f ef c0          	pxor   %xmm0,%xmm0
    630b:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    630f:	89 c2                	mov    %eax,%edx
    6311:	c1 e8 18             	shr    $0x18,%eax
    6314:	c1 ea 10             	shr    $0x10,%edx
    6317:	0f b6 d2             	movzbl %dl,%edx
    631a:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    631e:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 6326 <sg_raster_triangle_depth_capture+0x2e76>
    6325:	00 
    6326:	f3 0f 59 b4 b4 70 03 	mulss  0x370(%rsp,%rsi,4),%xmm6
    632d:	00 00 
    632f:	f3 0f 11 84 b4 20 03 	movss  %xmm0,0x320(%rsp,%rsi,4)
    6336:	00 00 
    6338:	66 0f ef c0          	pxor   %xmm0,%xmm0
    633c:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    6340:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    6344:	66 0f ef f6          	pxor   %xmm6,%xmm6
    6348:	f3 0f 2a f0          	cvtsi2ss %eax,%xmm6
    634c:	f3 0f 11 84 b4 70 03 	movss  %xmm0,0x370(%rsp,%rsi,4)
    6353:	00 00 
    6355:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 635d <sg_raster_triangle_depth_capture+0x2ead>
    635c:	00 
    635d:	f3 0f 59 84 b4 b0 03 	mulss  0x3b0(%rsp,%rsi,4),%xmm0
    6364:	00 00 
    6366:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    636a:	f3 0f 11 84 b4 b0 03 	movss  %xmm0,0x3b0(%rsp,%rsi,4)
    6371:	00 00 
    6373:	48 83 c6 01          	add    $0x1,%rsi
    6377:	48 83 fe 04          	cmp    $0x4,%rsi
    637b:	0f 85 eb fd ff ff    	jne    616c <sg_raster_triangle_depth_capture+0x2cbc>
    6381:	44 8b bc 24 a0 01 00 	mov    0x1a0(%rsp),%r15d
    6388:	00 
    6389:	8b bc 24 b0 01 00 00 	mov    0x1b0(%rsp),%edi
    6390:	44 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%r8d
    6397:	00 
    6398:	8b 9c 24 d0 01 00 00 	mov    0x1d0(%rsp),%ebx
    639f:	0f 28 b4 24 10 03 00 	movaps 0x310(%rsp),%xmm6
    63a6:	00 
    63a7:	0f 28 bc 24 20 03 00 	movaps 0x320(%rsp),%xmm7
    63ae:	00 
    63af:	44 0f 28 84 24 70 03 	movaps 0x370(%rsp),%xmm8
    63b6:	00 00 
    63b8:	44 0f 28 94 24 b0 03 	movaps 0x3b0(%rsp),%xmm10
    63bf:	00 00 
    63c1:	e9 c2 ef ff ff       	jmp    5388 <sg_raster_triangle_depth_capture+0x1ed8>
    63c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    63cd:	00 00 00 
    63d0:	99                   	cltd
    63d1:	41 f7 f9             	idiv   %r9d
    63d4:	44 89 f8             	mov    %r15d,%eax
    63d7:	85 d2                	test   %edx,%edx
    63d9:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    63dd:	0f 49 fa             	cmovns %edx,%edi
    63e0:	99                   	cltd
    63e1:	41 f7 f9             	idiv   %r9d
    63e4:	41 89 d7             	mov    %edx,%r15d
    63e7:	85 d2                	test   %edx,%edx
    63e9:	0f 88 eb 11 00 00    	js     75da <sg_raster_triangle_depth_capture+0x412a>
    63ef:	85 db                	test   %ebx,%ebx
    63f1:	0f 84 a1 10 00 00    	je     7498 <sg_raster_triangle_depth_capture+0x3fe8>
    63f7:	89 ca                	mov    %ecx,%edx
    63f9:	41 21 db             	and    %ebx,%r11d
    63fc:	21 da                	and    %ebx,%edx
    63fe:	89 d1                	mov    %edx,%ecx
    6400:	45 0f af d9          	imul   %r9d,%r11d
    6404:	41 0f af c9          	imul   %r9d,%ecx
    6408:	e9 b0 fd ff ff       	jmp    61bd <sg_raster_triangle_depth_capture+0x2d0d>
    640d:	31 ff                	xor    %edi,%edi
    640f:	0f 2f d0             	comiss %xmm0,%xmm2
    6412:	40 0f 94 c7          	sete   %dil
    6416:	44 8b 84 24 20 01 00 	mov    0x120(%rsp),%r8d
    641d:	00 
    641e:	45 85 c0             	test   %r8d,%r8d
    6421:	0f 84 c9 50 00 00    	je     b4f0 <sg_raster_triangle_depth_capture+0x8040>
    6427:	85 ff                	test   %edi,%edi
    6429:	0f 84 bf 4b 00 00    	je     afee <sg_raster_triangle_depth_capture+0x7b3e>
    642f:	89 bc 24 20 01 00 00 	mov    %edi,0x120(%rsp)
    6436:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    643d:	00 00 00 
    6440:	41 f6 c4 04          	test   $0x4,%r12b
    6444:	0f 84 2a 14 00 00    	je     7874 <sg_raster_triangle_depth_capture+0x43c4>
    644a:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    644f:	66 0f ef d2          	pxor   %xmm2,%xmm2
    6453:	f3 0f 10 ac 24 ec 00 	movss  0xec(%rsp),%xmm5
    645a:	00 00 
    645c:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    6463:	00 
    6464:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
    6469:	48 8b 9c 24 a0 00 00 	mov    0xa0(%rsp),%rbx
    6470:	00 
    6471:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 6479 <sg_raster_triangle_depth_capture+0x2fc9>
    6478:	00 
    6479:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
    647e:	0f 28 c5             	movaps %xmm5,%xmm0
    6481:	f3 0f 10 67 18       	movss  0x18(%rdi),%xmm4
    6486:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    648d:	00 
    648e:	f3 0f 10 5b 18       	movss  0x18(%rbx),%xmm3
    6493:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    6498:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    649d:	f3 0f 59 ea          	mulss  %xmm2,%xmm5
    64a1:	0f 28 f8             	movaps %xmm0,%xmm7
    64a4:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    64a8:	0f 28 f5             	movaps %xmm5,%xmm6
    64ab:	f3 0f 10 6f 18       	movss  0x18(%rdi),%xmm5
    64b0:	8b bb 84 00 00 00    	mov    0x84(%rbx),%edi
    64b6:	f3 0f 58 fe          	addss  %xmm6,%xmm7
    64ba:	f3 0f 59 f3          	mulss  %xmm3,%xmm6
    64be:	f3 0f 5c cf          	subss  %xmm7,%xmm1
    64c2:	f3 0f 58 c6          	addss  %xmm6,%xmm0
    64c6:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    64ca:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    64d1:	00 00 
    64d3:	0f 28 f1             	movaps %xmm1,%xmm6
    64d6:	f3 0f 58 f0          	addss  %xmm0,%xmm6
    64da:	85 ff                	test   %edi,%edi
    64dc:	74 72                	je     6550 <sg_raster_triangle_depth_capture+0x30a0>
    64de:	8b ab c0 00 00 00    	mov    0xc0(%rbx),%ebp
    64e4:	85 ed                	test   %ebp,%ebp
    64e6:	75 68                	jne    6550 <sg_raster_triangle_depth_capture+0x30a0>
    64e8:	44 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%r8d
    64ef:	00 
    64f0:	44 0f af 03          	imul   (%rbx),%r8d
    64f4:	44 8b 5c 24 0c       	mov    0xc(%rsp),%r11d
    64f9:	45 01 d8             	add    %r11d,%r8d
    64fc:	4c 8b 5b 10          	mov    0x10(%rbx),%r11
    6500:	8b 9b 88 00 00 00    	mov    0x88(%rbx),%ebx
    6506:	4d 63 c0             	movslq %r8d,%r8
    6509:	f3 43 0f 10 04 83    	movss  (%r11,%r8,4),%xmm0
    650f:	44 8d 83 00 fe ff ff 	lea    -0x200(%rbx),%r8d
    6516:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%rsp)
    651d:	41 83 f8 07          	cmp    $0x7,%r8d
    6521:	0f 87 ad 4f 00 00    	ja     b4d4 <sg_raster_triangle_depth_capture+0x8024>
    6527:	4c 8d 1d 00 00 00 00 	lea    0x0(%rip),%r11        # 652e <sg_raster_triangle_depth_capture+0x307e>
    652e:	4f 63 04 83          	movslq (%r11,%r8,4),%r8
    6532:	4d 01 d8             	add    %r11,%r8
    6535:	41 ff e0             	jmp    *%r8
    6538:	45 85 c0             	test   %r8d,%r8d
    653b:	0f 84 bb 4c 00 00    	je     b1fc <sg_raster_triangle_depth_capture+0x7d4c>
    6541:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    6548:	01 00 00 00 
    654c:	0f 1f 40 00          	nopl   0x0(%rax)
    6550:	41 f6 c4 08          	test   $0x8,%r12b
    6554:	0f 84 5e 13 00 00    	je     78b8 <sg_raster_triangle_depth_capture+0x4408>
    655a:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    655f:	66 0f ef ff          	pxor   %xmm7,%xmm7
    6563:	f3 0f 10 94 24 ec 00 	movss  0xec(%rsp),%xmm2
    656a:	00 00 
    656c:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 6574 <sg_raster_triangle_depth_capture+0x30c4>
    6573:	00 
    6574:	f3 4d 0f 2a c2       	cvtsi2ss %r10,%xmm8
    6579:	f3 49 0f 2a f9       	cvtsi2ss %r9,%xmm7
    657e:	0f 28 c2             	movaps %xmm2,%xmm0
    6581:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    6586:	f3 0f 59 d7          	mulss  %xmm7,%xmm2
    658a:	44 0f 28 c8          	movaps %xmm0,%xmm9
    658e:	f3 44 0f 58 ca       	addss  %xmm2,%xmm9
    6593:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    6597:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    659b:	f3 41 0f 5c c9       	subss  %xmm9,%xmm1
    65a0:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    65a4:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    65a8:	f3 0f 58 8c 24 f0 00 	addss  0xf0(%rsp),%xmm1
    65af:	00 00 
    65b1:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    65b5:	44 0f 28 d9          	movaps %xmm1,%xmm11
    65b9:	85 ff                	test   %edi,%edi
    65bb:	74 63                	je     6620 <sg_raster_triangle_depth_capture+0x3170>
    65bd:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    65c2:	8b bb c0 00 00 00    	mov    0xc0(%rbx),%edi
    65c8:	85 ff                	test   %edi,%edi
    65ca:	75 54                	jne    6620 <sg_raster_triangle_depth_capture+0x3170>
    65cc:	8b bc 24 e8 00 00 00 	mov    0xe8(%rsp),%edi
    65d3:	0f af 3b             	imul   (%rbx),%edi
    65d6:	44 8b 5c 24 30       	mov    0x30(%rsp),%r11d
    65db:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    65df:	44 01 df             	add    %r11d,%edi
    65e2:	48 63 ff             	movslq %edi,%rdi
    65e5:	f3 41 0f 10 04 b8    	movss  (%r8,%rdi,4),%xmm0
    65eb:	8b bb 88 00 00 00    	mov    0x88(%rbx),%edi
    65f1:	89 bc 24 70 01 00 00 	mov    %edi,0x170(%rsp)
    65f8:	81 ef 00 02 00 00    	sub    $0x200,%edi
    65fe:	83 ff 07             	cmp    $0x7,%edi
    6601:	0f 87 be 4e 00 00    	ja     b4c5 <sg_raster_triangle_depth_capture+0x8015>
    6607:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 660e <sg_raster_triangle_depth_capture+0x315e>
    660e:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    6612:	4c 01 c7             	add    %r8,%rdi
    6615:	ff e7                	jmp    *%rdi
    6617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    661e:	00 00 
    6620:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    6625:	66 0f ef d2          	pxor   %xmm2,%xmm2
    6629:	66 0f ef e4          	pxor   %xmm4,%xmm4
    662d:	66 0f ef db          	pxor   %xmm3,%xmm3
    6631:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
    6636:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
    663b:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    6640:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    6645:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6649:	45 0f 14 c8          	unpcklps %xmm8,%xmm9
    664d:	0f 14 d7             	unpcklps %xmm7,%xmm2
    6650:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    6657:	00 
    6658:	f3 48 0f 2a 44 24 10 	cvtsi2ssq 0x10(%rsp),%xmm0
    665f:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    6666:	00 
    6667:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 666f <sg_raster_triangle_depth_capture+0x31bf>
    666e:	00 
    666f:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    6676:	00 
    6677:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    667b:	0f 14 c4             	unpcklps %xmm4,%xmm0
    667e:	f3 0f 10 a4 24 ec 00 	movss  0xec(%rsp),%xmm4
    6685:	00 00 
    6687:	41 0f 16 c1          	movlhps %xmm9,%xmm0
    668b:	0f 28 c8             	movaps %xmm0,%xmm1
    668e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6692:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    6696:	f3 48 0f 2a 44 24 18 	cvtsi2ssq 0x18(%rsp),%xmm0
    669d:	0f 59 cc             	mulps  %xmm4,%xmm1
    66a0:	0f 14 c3             	unpcklps %xmm3,%xmm0
    66a3:	0f 16 c2             	movlhps %xmm2,%xmm0
    66a6:	f3 0f 10 57 1c       	movss  0x1c(%rdi),%xmm2
    66ab:	0f 59 c4             	mulps  %xmm4,%xmm0
    66ae:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    66b2:	0f 59 d1             	mulps  %xmm1,%xmm2
    66b5:	44 0f 28 ea          	movaps %xmm2,%xmm13
    66b9:	f3 0f 10 51 1c       	movss  0x1c(%rcx),%xmm2
    66be:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    66c2:	0f 28 fa             	movaps %xmm2,%xmm7
    66c5:	0f 59 f8             	mulps  %xmm0,%xmm7
    66c8:	0f 58 c1             	addps  %xmm1,%xmm0
    66cb:	0f 28 cd             	movaps %xmm5,%xmm1
    66ce:	0f 5c c8             	subps  %xmm0,%xmm1
    66d1:	f3 0f 10 42 1c       	movss  0x1c(%rdx),%xmm0
    66d6:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    66da:	0f 29 bc 24 b0 01 00 	movaps %xmm7,0x1b0(%rsp)
    66e1:	00 
    66e2:	0f 59 c8             	mulps  %xmm0,%xmm1
    66e5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    66e9:	44 0f 28 c1          	movaps %xmm1,%xmm8
    66ed:	0f 28 cf             	movaps %xmm7,%xmm1
    66f0:	41 0f 58 cd          	addps  %xmm13,%xmm1
    66f4:	41 0f 58 c8          	addps  %xmm8,%xmm1
    66f8:	0f 28 d1             	movaps %xmm1,%xmm2
    66fb:	0f c2 d0 02          	cmpleps %xmm0,%xmm2
    66ff:	0f 50 c2             	movmskps %xmm2,%eax
    6702:	83 e0 0f             	and    $0xf,%eax
    6705:	f7 d0                	not    %eax
    6707:	44 21 e0             	and    %r12d,%eax
    670a:	89 84 24 c0 01 00 00 	mov    %eax,0x1c0(%rsp)
    6711:	0f 84 99 df ff ff    	je     46b0 <sg_raster_triangle_depth_capture+0x1200>
    6717:	0f 53 d1             	rcpps  %xmm1,%xmm2
    671a:	41 89 c1             	mov    %eax,%r9d
    671d:	41 83 e1 01          	and    $0x1,%r9d
    6721:	0f 59 ca             	mulps  %xmm2,%xmm1
    6724:	0f 59 ca             	mulps  %xmm2,%xmm1
    6727:	0f 58 d2             	addps  %xmm2,%xmm2
    672a:	44 0f 28 fa          	movaps %xmm2,%xmm15
    672e:	f3 0f 10 57 20       	movss  0x20(%rdi),%xmm2
    6733:	44 0f 5c f9          	subps  %xmm1,%xmm15
    6737:	f3 0f 10 49 20       	movss  0x20(%rcx),%xmm1
    673c:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6740:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    6744:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6748:	0f 59 cf             	mulps  %xmm7,%xmm1
    674b:	44 0f 29 bc 24 d0 01 	movaps %xmm15,0x1d0(%rsp)
    6752:	00 00 
    6754:	0f 58 ca             	addps  %xmm2,%xmm1
    6757:	f3 0f 10 52 20       	movss  0x20(%rdx),%xmm2
    675c:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6760:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    6764:	0f 58 ca             	addps  %xmm2,%xmm1
    6767:	f3 0f 10 57 24       	movss  0x24(%rdi),%xmm2
    676c:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6770:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    6774:	0f 28 d9             	movaps %xmm1,%xmm3
    6777:	f3 0f 10 49 24       	movss  0x24(%rcx),%xmm1
    677c:	41 0f 59 df          	mulps  %xmm15,%xmm3
    6780:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6784:	0f 59 cf             	mulps  %xmm7,%xmm1
    6787:	0f 58 ca             	addps  %xmm2,%xmm1
    678a:	f3 0f 10 52 24       	movss  0x24(%rdx),%xmm2
    678f:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    6793:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    6797:	0f 58 ca             	addps  %xmm2,%xmm1
    679a:	f3 0f 10 57 28       	movss  0x28(%rdi),%xmm2
    679f:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    67a3:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    67a7:	41 0f 59 cf          	mulps  %xmm15,%xmm1
    67ab:	44 0f 28 e1          	movaps %xmm1,%xmm12
    67af:	f3 0f 10 49 28       	movss  0x28(%rcx),%xmm1
    67b4:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    67b8:	0f 59 cf             	mulps  %xmm7,%xmm1
    67bb:	0f 58 ca             	addps  %xmm2,%xmm1
    67be:	f3 0f 10 52 28       	movss  0x28(%rdx),%xmm2
    67c3:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    67c7:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    67cb:	0f 58 ca             	addps  %xmm2,%xmm1
    67ce:	f3 0f 10 57 2c       	movss  0x2c(%rdi),%xmm2
    67d3:	89 c7                	mov    %eax,%edi
    67d5:	83 e7 02             	and    $0x2,%edi
    67d8:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    67dc:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    67e0:	89 bc 24 a0 01 00 00 	mov    %edi,0x1a0(%rsp)
    67e7:	89 c7                	mov    %eax,%edi
    67e9:	0f 28 e1             	movaps %xmm1,%xmm4
    67ec:	f3 0f 10 49 2c       	movss  0x2c(%rcx),%xmm1
    67f1:	83 e0 08             	and    $0x8,%eax
    67f4:	83 e7 04             	and    $0x4,%edi
    67f7:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    67fe:	00 
    67ff:	89 84 24 80 01 00 00 	mov    %eax,0x180(%rsp)
    6806:	41 0f 59 e7          	mulps  %xmm15,%xmm4
    680a:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    680e:	0f 59 cf             	mulps  %xmm7,%xmm1
    6811:	89 bc 24 70 01 00 00 	mov    %edi,0x170(%rsp)
    6818:	8b b1 64 01 00 00    	mov    0x164(%rcx),%esi
    681e:	8d 46 ff             	lea    -0x1(%rsi),%eax
    6821:	0f 58 ca             	addps  %xmm2,%xmm1
    6824:	f3 0f 10 52 2c       	movss  0x2c(%rdx),%xmm2
    6829:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    682d:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    6831:	0f 58 ca             	addps  %xmm2,%xmm1
    6834:	0f 28 f9             	movaps %xmm1,%xmm7
    6837:	41 0f 59 ff          	mulps  %xmm15,%xmm7
    683b:	83 f8 01             	cmp    $0x1,%eax
    683e:	0f 86 b7 3f 00 00    	jbe    a7fb <sg_raster_triangle_depth_capture+0x734b>
    6844:	8b 91 68 01 00 00    	mov    0x168(%rcx),%edx
    684a:	85 d2                	test   %edx,%edx
    684c:	0f 84 94 05 00 00    	je     6de6 <sg_raster_triangle_depth_capture+0x3936>
    6852:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    6859:	00 
    685a:	49 89 ca             	mov    %rcx,%r10
    685d:	31 db                	xor    %ebx,%ebx
    685f:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    6866:	00 
    6867:	4c 8d 84 24 b0 03 00 	lea    0x3b0(%rsp),%r8
    686e:	00 
    686f:	44 8b 9c 24 a0 01 00 	mov    0x1a0(%rsp),%r11d
    6876:	00 
    6877:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 6880 <sg_raster_triangle_depth_capture+0x33d0>
    687e:	00 00 
    6880:	44 89 bc 24 c8 02 00 	mov    %r15d,0x2c8(%rsp)
    6887:	00 
    6888:	48 8d 4f 50          	lea    0x50(%rdi),%rcx
    688c:	48 8d 70 50          	lea    0x50(%rax),%rsi
    6890:	41 89 df             	mov    %ebx,%r15d
    6893:	4d 89 c4             	mov    %r8,%r12
    6896:	48 8d bc 24 70 03 00 	lea    0x370(%rsp),%rdi
    689d:	00 
    689e:	4c 89 d3             	mov    %r10,%rbx
    68a1:	45 89 c8             	mov    %r9d,%r8d
    68a4:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    68ab:	00 
    68ac:	48 89 bc 24 e0 01 00 	mov    %rdi,0x1e0(%rsp)
    68b3:	00 
    68b4:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    68b9:	49 89 f2             	mov    %rsi,%r10
    68bc:	48 83 c0 50          	add    $0x50,%rax
    68c0:	0f 29 9c 24 80 02 00 	movaps %xmm3,0x280(%rsp)
    68c7:	00 
    68c8:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x2c0(%rsp)
    68cf:	02 00 00 
    68d2:	f3 0f 11 b4 24 c4 02 	movss  %xmm6,0x2c4(%rsp)
    68d9:	00 00 
    68db:	44 0f 29 84 24 f0 01 	movaps %xmm8,0x1f0(%rsp)
    68e2:	00 00 
    68e4:	44 0f 29 a4 24 90 02 	movaps %xmm12,0x290(%rsp)
    68eb:	00 00 
    68ed:	0f 29 a4 24 a0 02 00 	movaps %xmm4,0x2a0(%rsp)
    68f4:	00 
    68f5:	0f 29 bc 24 b0 02 00 	movaps %xmm7,0x2b0(%rsp)
    68fc:	00 
    68fd:	f3 44 0f 11 94 24 cc 	movss  %xmm10,0x2cc(%rsp)
    6904:	02 00 00 
    6907:	44 0f 29 b4 24 70 02 	movaps %xmm14,0x270(%rsp)
    690e:	00 00 
    6910:	48 8b b4 24 f0 04 00 	mov    0x4f0(%rsp),%rsi
    6917:	00 
    6918:	8b 96 6c 01 00 00    	mov    0x16c(%rsi),%edx
    691e:	44 0f a3 fa          	bt     %r15d,%edx
    6922:	0f 83 48 42 00 00    	jae    ab70 <sg_raster_triangle_depth_capture+0x76c0>
    6928:	44 8b 4b 44          	mov    0x44(%rbx),%r9d
    692c:	45 85 c9             	test   %r9d,%r9d
    692f:	0f 85 57 42 00 00    	jne    ab8c <sg_raster_triangle_depth_capture+0x76dc>
    6935:	0f 28 bc 24 f0 01 00 	movaps 0x1f0(%rsp),%xmm7
    693c:	00 
    693d:	0f 28 a4 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm4
    6944:	00 
    6945:	f3 41 0f 10 02       	movss  (%r10),%xmm0
    694a:	f3 0f 10 08          	movss  (%rax),%xmm1
    694e:	f3 0f 10 50 04       	movss  0x4(%rax),%xmm2
    6953:	0f 28 9c 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm3
    695a:	00 
    695b:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    695f:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6963:	0f 59 c7             	mulps  %xmm7,%xmm0
    6966:	8b 13                	mov    (%rbx),%edx
    6968:	0f 59 cc             	mulps  %xmm4,%xmm1
    696b:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    696f:	0f 59 d4             	mulps  %xmm4,%xmm2
    6972:	0f 58 c1             	addps  %xmm1,%xmm0
    6975:	f3 0f 10 09          	movss  (%rcx),%xmm1
    6979:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    697d:	41 0f 59 cd          	mulps  %xmm13,%xmm1
    6981:	0f 58 c1             	addps  %xmm1,%xmm0
    6984:	f3 41 0f 10 4a 04    	movss  0x4(%r10),%xmm1
    698a:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    698e:	0f 59 cf             	mulps  %xmm7,%xmm1
    6991:	0f 59 c3             	mulps  %xmm3,%xmm0
    6994:	0f 58 ca             	addps  %xmm2,%xmm1
    6997:	f3 0f 10 51 04       	movss  0x4(%rcx),%xmm2
    699c:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    69a0:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    69a4:	0f 58 ca             	addps  %xmm2,%xmm1
    69a7:	0f 59 cb             	mulps  %xmm3,%xmm1
    69aa:	83 fa 01             	cmp    $0x1,%edx
    69ad:	0f 84 64 4c 00 00    	je     b617 <sg_raster_triangle_depth_capture+0x8167>
    69b3:	f3 41 0f 10 52 08    	movss  0x8(%r10),%xmm2
    69b9:	f3 0f 10 58 08       	movss  0x8(%rax),%xmm3
    69be:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    69c2:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    69c6:	0f 59 94 24 f0 01 00 	mulps  0x1f0(%rsp),%xmm2
    69cd:	00 
    69ce:	0f 59 9c 24 b0 01 00 	mulps  0x1b0(%rsp),%xmm3
    69d5:	00 
    69d6:	0f 58 d3             	addps  %xmm3,%xmm2
    69d9:	f3 0f 10 59 08       	movss  0x8(%rcx),%xmm3
    69de:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    69e2:	41 0f 59 dd          	mulps  %xmm13,%xmm3
    69e6:	0f 58 d3             	addps  %xmm3,%xmm2
    69e9:	0f 59 94 24 d0 01 00 	mulps  0x1d0(%rsp),%xmm2
    69f0:	00 
    69f1:	83 fa 03             	cmp    $0x3,%edx
    69f4:	0f 84 bc 50 00 00    	je     bab6 <sg_raster_triangle_depth_capture+0x8606>
    69fa:	4c 89 94 24 20 02 00 	mov    %r10,0x220(%rsp)
    6a01:	00 
    6a02:	66 0f ef ff          	pxor   %xmm7,%xmm7
    6a06:	31 ed                	xor    %ebp,%ebp
    6a08:	48 89 84 24 40 02 00 	mov    %rax,0x240(%rsp)
    6a0f:	00 
    6a10:	48 89 8c 24 30 02 00 	mov    %rcx,0x230(%rsp)
    6a17:	00 
    6a18:	44 89 9c 24 4c 02 00 	mov    %r11d,0x24c(%rsp)
    6a1f:	00 
    6a20:	44 89 84 24 50 02 00 	mov    %r8d,0x250(%rsp)
    6a27:	00 
    6a28:	4c 89 a4 24 10 02 00 	mov    %r12,0x210(%rsp)
    6a2f:	00 
    6a30:	49 89 dc             	mov    %rbx,%r12
    6a33:	8b 9c 24 c0 01 00 00 	mov    0x1c0(%rsp),%ebx
    6a3a:	0f 29 bc 24 70 03 00 	movaps %xmm7,0x370(%rsp)
    6a41:	00 
    6a42:	0f 29 bc 24 80 03 00 	movaps %xmm7,0x380(%rsp)
    6a49:	00 
    6a4a:	0f 29 bc 24 90 03 00 	movaps %xmm7,0x390(%rsp)
    6a51:	00 
    6a52:	0f 29 bc 24 a0 03 00 	movaps %xmm7,0x3a0(%rsp)
    6a59:	00 
    6a5a:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    6a61:	00 
    6a62:	0f 29 8c 24 10 03 00 	movaps %xmm1,0x310(%rsp)
    6a69:	00 
    6a6a:	0f 29 94 24 20 03 00 	movaps %xmm2,0x320(%rsp)
    6a71:	00 
    6a72:	44 0f 29 ac 24 00 02 	movaps %xmm13,0x200(%rsp)
    6a79:	00 00 
    6a7b:	0f 29 ac 24 60 02 00 	movaps %xmm5,0x260(%rsp)
    6a82:	00 
    6a83:	0f a3 eb             	bt     %ebp,%ebx
    6a86:	73 52                	jae    6ada <sg_raster_triangle_depth_capture+0x362a>
    6a88:	48 8b 84 24 e0 01 00 	mov    0x1e0(%rsp),%rax
    6a8f:	00 
    6a90:	48 89 ea             	mov    %rbp,%rdx
    6a93:	45 8b 04 24          	mov    (%r12),%r8d
    6a97:	48 c1 e2 04          	shl    $0x4,%rdx
    6a9b:	41 8b 4c 24 18       	mov    0x18(%r12),%ecx
    6aa0:	41 8b 74 24 10       	mov    0x10(%r12),%esi
    6aa5:	4c 8d 0c 02          	lea    (%rdx,%rax,1),%r9
    6aa9:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    6aae:	41 8b 54 24 14       	mov    0x14(%r12),%edx
    6ab3:	f3 0f 10 84 ac 00 03 	movss  0x300(%rsp,%rbp,4),%xmm0
    6aba:	00 00 
    6abc:	41 83 f8 02          	cmp    $0x2,%r8d
    6ac0:	0f 84 c2 41 00 00    	je     ac88 <sg_raster_triangle_depth_capture+0x77d8>
    6ac6:	45 85 c0             	test   %r8d,%r8d
    6ac9:	0f 85 7f 3c 00 00    	jne    a74e <sg_raster_triangle_depth_capture+0x729e>
    6acf:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    6ad5:	e8 00 00 00 00       	call   6ada <sg_raster_triangle_depth_capture+0x362a>
    6ada:	48 83 c5 01          	add    $0x1,%rbp
    6ade:	48 83 fd 04          	cmp    $0x4,%rbp
    6ae2:	75 9f                	jne    6a83 <sg_raster_triangle_depth_capture+0x35d3>
    6ae4:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    6aeb:	00 
    6aec:	0f 28 b4 24 80 03 00 	movaps 0x380(%rsp),%xmm6
    6af3:	00 
    6af4:	4c 89 e3             	mov    %r12,%rbx
    6af7:	0f 28 8c 24 90 03 00 	movaps 0x390(%rsp),%xmm1
    6afe:	00 
    6aff:	0f 28 a4 24 a0 03 00 	movaps 0x3a0(%rsp),%xmm4
    6b06:	00 
    6b07:	0f 28 d0             	movaps %xmm0,%xmm2
    6b0a:	0f 15 c6             	unpckhps %xmm6,%xmm0
    6b0d:	4c 8b a4 24 10 02 00 	mov    0x210(%rsp),%r12
    6b14:	00 
    6b15:	44 0f 28 ac 24 00 02 	movaps 0x200(%rsp),%xmm13
    6b1c:	00 00 
    6b1e:	0f 14 d6             	unpcklps %xmm6,%xmm2
    6b21:	0f 28 d9             	movaps %xmm1,%xmm3
    6b24:	0f 15 cc             	unpckhps %xmm4,%xmm1
    6b27:	4c 8b 94 24 20 02 00 	mov    0x220(%rsp),%r10
    6b2e:	00 
    6b2f:	0f 14 dc             	unpcklps %xmm4,%xmm3
    6b32:	0f 28 f2             	movaps %xmm2,%xmm6
    6b35:	0f 28 e0             	movaps %xmm0,%xmm4
    6b38:	48 8b 84 24 40 02 00 	mov    0x240(%rsp),%rax
    6b3f:	00 
    6b40:	0f 16 f3             	movlhps %xmm3,%xmm6
    6b43:	0f 16 e1             	movlhps %xmm1,%xmm4
    6b46:	0f 12 da             	movhlps %xmm2,%xmm3
    6b49:	48 8b 8c 24 30 02 00 	mov    0x230(%rsp),%rcx
    6b50:	00 
    6b51:	0f 12 c8             	movhlps %xmm0,%xmm1
    6b54:	44 8b 9c 24 4c 02 00 	mov    0x24c(%rsp),%r11d
    6b5b:	00 
    6b5c:	44 8b 84 24 50 02 00 	mov    0x250(%rsp),%r8d
    6b63:	00 
    6b64:	41 0f 29 34 24       	movaps %xmm6,(%r12)
    6b69:	0f 28 ac 24 60 02 00 	movaps 0x260(%rsp),%xmm5
    6b70:	00 
    6b71:	41 0f 29 5c 24 10    	movaps %xmm3,0x10(%r12)
    6b77:	41 0f 29 64 24 20    	movaps %xmm4,0x20(%r12)
    6b7d:	41 0f 29 4c 24 30    	movaps %xmm1,0x30(%r12)
    6b83:	41 83 c7 01          	add    $0x1,%r15d
    6b87:	49 83 c4 40          	add    $0x40,%r12
    6b8b:	48 83 c3 58          	add    $0x58,%rbx
    6b8f:	49 83 c2 10          	add    $0x10,%r10
    6b93:	48 83 c0 10          	add    $0x10,%rax
    6b97:	48 83 c1 10          	add    $0x10,%rcx
    6b9b:	41 83 ff 04          	cmp    $0x4,%r15d
    6b9f:	0f 85 6b fd ff ff    	jne    6910 <sg_raster_triangle_depth_capture+0x3460>
    6ba5:	44 0f 28 a4 24 90 02 	movaps 0x290(%rsp),%xmm12
    6bac:	00 00 
    6bae:	0f 28 9c 24 80 02 00 	movaps 0x280(%rsp),%xmm3
    6bb5:	00 
    6bb6:	45 89 c1             	mov    %r8d,%r9d
    6bb9:	0f 28 84 24 b0 03 00 	movaps 0x3b0(%rsp),%xmm0
    6bc0:	00 
    6bc1:	0f 28 8c 24 c0 03 00 	movaps 0x3c0(%rsp),%xmm1
    6bc8:	00 
    6bc9:	44 0f 28 b4 24 70 02 	movaps 0x270(%rsp),%xmm14
    6bd0:	00 00 
    6bd2:	41 0f 28 d4          	movaps %xmm12,%xmm2
    6bd6:	0f 28 a4 24 a0 02 00 	movaps 0x2a0(%rsp),%xmm4
    6bdd:	00 
    6bde:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    6be5:	00 
    6be6:	44 8b bc 24 c8 02 00 	mov    0x2c8(%rsp),%r15d
    6bed:	00 
    6bee:	41 0f 58 de          	addps  %xmm14,%xmm3
    6bf2:	41 0f 58 d6          	addps  %xmm14,%xmm2
    6bf6:	0f 28 bc 24 b0 02 00 	movaps 0x2b0(%rsp),%xmm7
    6bfd:	00 
    6bfe:	f3 44 0f 10 9c 24 c0 	movss  0x2c0(%rsp),%xmm11
    6c05:	02 00 00 
    6c08:	41 0f 58 c6          	addps  %xmm14,%xmm0
    6c0c:	41 0f 58 ce          	addps  %xmm14,%xmm1
    6c10:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    6c16:	f3 0f 10 b4 24 c4 02 	movss  0x2c4(%rsp),%xmm6
    6c1d:	00 00 
    6c1f:	f3 44 0f 10 94 24 cc 	movss  0x2cc(%rsp),%xmm10
    6c26:	02 00 00 
    6c29:	41 0f 58 e6          	addps  %xmm14,%xmm4
    6c2d:	0f 59 c3             	mulps  %xmm3,%xmm0
    6c30:	0f 59 ca             	mulps  %xmm2,%xmm1
    6c33:	0f 28 94 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm2
    6c3a:	00 
    6c3b:	41 0f 58 d6          	addps  %xmm14,%xmm2
    6c3f:	0f 58 c8             	addps  %xmm0,%xmm1
    6c42:	0f 28 c4             	movaps %xmm4,%xmm0
    6c45:	0f 59 c2             	mulps  %xmm2,%xmm0
    6c48:	66 0f ef d2          	pxor   %xmm2,%xmm2
    6c4c:	0f 58 c1             	addps  %xmm1,%xmm0
    6c4f:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 6c57 <sg_raster_triangle_depth_capture+0x37a7>
    6c56:	00 
    6c57:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    6c5b:	0f 59 c1             	mulps  %xmm1,%xmm0
    6c5e:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6c62:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    6c66:	0f 28 d8             	movaps %xmm0,%xmm3
    6c69:	0f c2 da 01          	cmpltps %xmm2,%xmm3
    6c6d:	66 0f 66 e3          	pcmpgtd %xmm3,%xmm4
    6c71:	0f 55 e0             	andnps %xmm0,%xmm4
    6c74:	0f 28 c5             	movaps %xmm5,%xmm0
    6c77:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    6c7b:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    6c80:	83 f8 01             	cmp    $0x1,%eax
    6c83:	0f 84 8f 45 00 00    	je     b218 <sg_raster_triangle_depth_capture+0x7d68>
    6c89:	0f 59 e4             	mulps  %xmm4,%xmm4
    6c8c:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    6c90:	0f 28 c4             	movaps %xmm4,%xmm0
    6c93:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    6c97:	66 0f 66 d8          	pcmpgtd %xmm0,%xmm3
    6c9b:	0f 28 c5             	movaps %xmm5,%xmm0
    6c9e:	0f 55 dc             	andnps %xmm4,%xmm3
    6ca1:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    6ca5:	0f 28 e3             	movaps %xmm3,%xmm4
    6ca8:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    6cad:	83 f8 03             	cmp    $0x3,%eax
    6cb0:	0f 84 4e 4d 00 00    	je     ba04 <sg_raster_triangle_depth_capture+0x8554>
    6cb6:	0f 28 84 24 30 04 00 	movaps 0x430(%rsp),%xmm0
    6cbd:	00 
    6cbe:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    6cc2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    6cc7:	0f 59 c4             	mulps  %xmm4,%xmm0
    6cca:	0f 28 f8             	movaps %xmm0,%xmm7
    6ccd:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    6cd1:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    6cd5:	0f 55 d8             	andnps %xmm0,%xmm3
    6cd8:	0f 28 c5             	movaps %xmm5,%xmm0
    6cdb:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    6cdf:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    6ce4:	f3 0f 10 80 38 37 00 	movss  0x3738(%rax),%xmm0
    6ceb:	00 
    6cec:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    6cf0:	0f 59 c3             	mulps  %xmm3,%xmm0
    6cf3:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    6cf7:	0f 28 f8             	movaps %xmm0,%xmm7
    6cfa:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    6cfe:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    6d02:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    6d06:	0f 55 d8             	andnps %xmm0,%xmm3
    6d09:	0f 28 c5             	movaps %xmm5,%xmm0
    6d0c:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    6d10:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    6d15:	0f 28 84 24 40 04 00 	movaps 0x440(%rsp),%xmm0
    6d1c:	00 
    6d1d:	0f 59 c4             	mulps  %xmm4,%xmm0
    6d20:	0f 59 a4 24 50 04 00 	mulps  0x450(%rsp),%xmm4
    6d27:	00 
    6d28:	44 0f 28 c0          	movaps %xmm0,%xmm8
    6d2c:	44 0f c2 c2 01       	cmpltps %xmm2,%xmm8
    6d31:	66 41 0f 66 f8       	pcmpgtd %xmm8,%xmm7
    6d36:	0f 55 f8             	andnps %xmm0,%xmm7
    6d39:	0f 28 c5             	movaps %xmm5,%xmm0
    6d3c:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    6d40:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    6d45:	f3 0f 10 80 3c 37 00 	movss  0x373c(%rax),%xmm0
    6d4c:	00 
    6d4d:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    6d51:	0f 59 c7             	mulps  %xmm7,%xmm0
    6d54:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    6d58:	44 0f 28 c0          	movaps %xmm0,%xmm8
    6d5c:	44 0f c2 c2 01       	cmpltps %xmm2,%xmm8
    6d61:	66 41 0f 66 f8       	pcmpgtd %xmm8,%xmm7
    6d66:	0f 55 f8             	andnps %xmm0,%xmm7
    6d69:	0f 28 c5             	movaps %xmm5,%xmm0
    6d6c:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    6d70:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    6d75:	0f 28 c4             	movaps %xmm4,%xmm0
    6d78:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    6d7c:	44 0f 28 e7          	movaps %xmm7,%xmm12
    6d80:	66 0f 66 c8          	pcmpgtd %xmm0,%xmm1
    6d84:	0f 28 c5             	movaps %xmm5,%xmm0
    6d87:	0f 55 cc             	andnps %xmm4,%xmm1
    6d8a:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    6d8e:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    6d93:	f3 0f 10 80 40 37 00 	movss  0x3740(%rax),%xmm0
    6d9a:	00 
    6d9b:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    6d9f:	0f 59 c1             	mulps  %xmm1,%xmm0
    6da2:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6da6:	0f 28 d0             	movaps %xmm0,%xmm2
    6da9:	0f c2 d1 01          	cmpltps %xmm1,%xmm2
    6dad:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6db1:	66 0f 66 ca          	pcmpgtd %xmm2,%xmm1
    6db5:	0f 55 c8             	andnps %xmm0,%xmm1
    6db8:	0f 28 c5             	movaps %xmm5,%xmm0
    6dbb:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    6dbf:	0f 28 e1             	movaps %xmm1,%xmm4
    6dc2:	66 0f ef c9          	pxor   %xmm1,%xmm1
    6dc6:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    6dcb:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 6dd3 <sg_raster_triangle_depth_capture+0x3923>
    6dd2:	00 
    6dd3:	f3 0f 5d 80 44 37 00 	minss  0x3744(%rax),%xmm0
    6dda:	00 
    6ddb:	f3 0f 5f c1          	maxss  %xmm1,%xmm0
    6ddf:	0f 28 f8             	movaps %xmm0,%xmm7
    6de2:	0f c6 ff 00          	shufps $0x0,%xmm7,%xmm7
    6de6:	44 0f 28 cc          	movaps %xmm4,%xmm9
    6dea:	44 0f 28 c3          	movaps %xmm3,%xmm8
    6dee:	0f 28 eb             	movaps %xmm3,%xmm5
    6df1:	0f 15 e7             	unpckhps %xmm7,%xmm4
    6df4:	45 0f 14 c4          	unpcklps %xmm12,%xmm8
    6df8:	41 0f 15 ec          	unpckhps %xmm12,%xmm5
    6dfc:	44 0f 14 cf          	unpcklps %xmm7,%xmm9
    6e00:	44 0f 28 e4          	movaps %xmm4,%xmm12
    6e04:	45 85 c9             	test   %r9d,%r9d
    6e07:	0f 84 bd 00 00 00    	je     6eca <sg_raster_triangle_depth_capture+0x3a1a>
    6e0d:	41 0f 28 f9          	movaps %xmm9,%xmm7
    6e11:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    6e15:	41 0f 28 d9          	movaps %xmm9,%xmm3
    6e19:	41 0f 28 c8          	movaps %xmm8,%xmm1
    6e1d:	41 0f c6 f9 55       	shufps $0x55,%xmm9,%xmm7
    6e22:	0f 29 a4 24 00 02 00 	movaps %xmm4,0x200(%rsp)
    6e29:	00 
    6e2a:	f3 0f 10 84 24 60 01 	movss  0x160(%rsp),%xmm0
    6e31:	00 00 
    6e33:	0f 28 e7             	movaps %xmm7,%xmm4
    6e36:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    6e3d:	41 0f 28 f8          	movaps %xmm8,%xmm7
    6e41:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6e46:	f3 44 0f 11 94 24 10 	movss  %xmm10,0x210(%rsp)
    6e4d:	02 00 00 
    6e50:	41 0f c6 f8 55       	shufps $0x55,%xmm8,%xmm7
    6e55:	0f 28 d7             	movaps %xmm7,%xmm2
    6e58:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
    6e5f:	00 
    6e60:	f3 0f 11 b4 24 e0 01 	movss  %xmm6,0x1e0(%rsp)
    6e67:	00 00 
    6e69:	f3 44 0f 11 9c 24 d0 	movss  %xmm11,0x1d0(%rsp)
    6e70:	01 00 00 
    6e73:	44 0f 29 8c 24 c0 01 	movaps %xmm9,0x1c0(%rsp)
    6e7a:	00 00 
    6e7c:	44 0f 29 84 24 b0 01 	movaps %xmm8,0x1b0(%rsp)
    6e83:	00 00 
    6e85:	e8 00 00 00 00       	call   6e8a <sg_raster_triangle_depth_capture+0x39da>
    6e8a:	0f 28 ac 24 f0 01 00 	movaps 0x1f0(%rsp),%xmm5
    6e91:	00 
    6e92:	f3 44 0f 10 94 24 10 	movss  0x210(%rsp),%xmm10
    6e99:	02 00 00 
    6e9c:	44 0f 28 a4 24 00 02 	movaps 0x200(%rsp),%xmm12
    6ea3:	00 00 
    6ea5:	f3 0f 10 b4 24 e0 01 	movss  0x1e0(%rsp),%xmm6
    6eac:	00 00 
    6eae:	f3 44 0f 10 9c 24 d0 	movss  0x1d0(%rsp),%xmm11
    6eb5:	01 00 00 
    6eb8:	44 0f 28 8c 24 c0 01 	movaps 0x1c0(%rsp),%xmm9
    6ebf:	00 00 
    6ec1:	44 0f 28 84 24 b0 01 	movaps 0x1b0(%rsp),%xmm8
    6ec8:	00 00 
    6eca:	44 8b a4 24 a0 01 00 	mov    0x1a0(%rsp),%r12d
    6ed1:	00 
    6ed2:	45 85 e4             	test   %r12d,%r12d
    6ed5:	0f 84 86 00 00 00    	je     6f61 <sg_raster_triangle_depth_capture+0x3ab1>
    6edb:	41 0f 28 e1          	movaps %xmm9,%xmm4
    6edf:	41 0f 28 f8          	movaps %xmm8,%xmm7
    6ee3:	8b 74 24 30          	mov    0x30(%rsp),%esi
    6ee7:	41 0f 28 c2          	movaps %xmm10,%xmm0
    6eeb:	41 0f c6 f8 ff       	shufps $0xff,%xmm8,%xmm7
    6ef0:	41 0f c6 e1 ff       	shufps $0xff,%xmm9,%xmm4
    6ef5:	45 0f 15 c0          	unpckhps %xmm8,%xmm8
    6ef9:	0f 28 d7             	movaps %xmm7,%xmm2
    6efc:	45 0f 15 c9          	unpckhps %xmm9,%xmm9
    6f00:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    6f07:	41 0f 28 c8          	movaps %xmm8,%xmm1
    6f0b:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6f10:	41 0f 28 d9          	movaps %xmm9,%xmm3
    6f14:	44 0f 29 a4 24 c0 01 	movaps %xmm12,0x1c0(%rsp)
    6f1b:	00 00 
    6f1d:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    6f24:	00 
    6f25:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    6f2c:	00 00 
    6f2e:	f3 44 0f 11 9c 24 60 	movss  %xmm11,0x160(%rsp)
    6f35:	01 00 00 
    6f38:	e8 00 00 00 00       	call   6f3d <sg_raster_triangle_depth_capture+0x3a8d>
    6f3d:	0f 28 ac 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm5
    6f44:	00 
    6f45:	44 0f 28 a4 24 c0 01 	movaps 0x1c0(%rsp),%xmm12
    6f4c:	00 00 
    6f4e:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    6f55:	00 00 
    6f57:	f3 44 0f 10 9c 24 60 	movss  0x160(%rsp),%xmm11
    6f5e:	01 00 00 
    6f61:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    6f68:	85 ed                	test   %ebp,%ebp
    6f6a:	74 68                	je     6fd4 <sg_raster_triangle_depth_capture+0x3b24>
    6f6c:	0f 28 fd             	movaps %xmm5,%xmm7
    6f6f:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    6f73:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6f78:	41 0f 28 e4          	movaps %xmm12,%xmm4
    6f7c:	0f c6 fd 55          	shufps $0x55,%xmm5,%xmm7
    6f80:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    6f87:	41 0f 28 dc          	movaps %xmm12,%xmm3
    6f8b:	0f 28 cd             	movaps %xmm5,%xmm1
    6f8e:	0f 28 d7             	movaps %xmm7,%xmm2
    6f91:	0f 28 c6             	movaps %xmm6,%xmm0
    6f94:	f3 44 0f 11 9c 24 a0 	movss  %xmm11,0x1a0(%rsp)
    6f9b:	01 00 00 
    6f9e:	41 0f c6 e4 55       	shufps $0x55,%xmm12,%xmm4
    6fa3:	44 0f 29 a4 24 70 01 	movaps %xmm12,0x170(%rsp)
    6faa:	00 00 
    6fac:	0f 29 ac 24 60 01 00 	movaps %xmm5,0x160(%rsp)
    6fb3:	00 
    6fb4:	e8 00 00 00 00       	call   6fb9 <sg_raster_triangle_depth_capture+0x3b09>
    6fb9:	0f 28 ac 24 60 01 00 	movaps 0x160(%rsp),%xmm5
    6fc0:	00 
    6fc1:	f3 44 0f 10 9c 24 a0 	movss  0x1a0(%rsp),%xmm11
    6fc8:	01 00 00 
    6fcb:	44 0f 28 a4 24 70 01 	movaps 0x170(%rsp),%xmm12
    6fd2:	00 00 
    6fd4:	8b 9c 24 80 01 00 00 	mov    0x180(%rsp),%ebx
    6fdb:	85 db                	test   %ebx,%ebx
    6fdd:	0f 84 cd d6 ff ff    	je     46b0 <sg_raster_triangle_depth_capture+0x1200>
    6fe3:	41 0f 28 e4          	movaps %xmm12,%xmm4
    6fe7:	0f 28 fd             	movaps %xmm5,%xmm7
    6fea:	8b 74 24 30          	mov    0x30(%rsp),%esi
    6fee:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6ff3:	0f c6 fd ff          	shufps $0xff,%xmm5,%xmm7
    6ff7:	41 0f c6 e4 ff       	shufps $0xff,%xmm12,%xmm4
    6ffc:	0f 15 ed             	unpckhps %xmm5,%xmm5
    6fff:	45 0f 15 e4          	unpckhps %xmm12,%xmm12
    7003:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    700a:	41 0f 28 dc          	movaps %xmm12,%xmm3
    700e:	0f 28 d7             	movaps %xmm7,%xmm2
    7011:	0f 28 cd             	movaps %xmm5,%xmm1
    7014:	41 0f 28 c3          	movaps %xmm11,%xmm0
    7018:	e8 00 00 00 00       	call   701d <sg_raster_triangle_depth_capture+0x3b6d>
    701d:	e9 8e d6 ff ff       	jmp    46b0 <sg_raster_triangle_depth_capture+0x1200>
    7022:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7028:	8b 9c 24 70 01 00 00 	mov    0x170(%rsp),%ebx
    702f:	85 db                	test   %ebx,%ebx
    7031:	0f 85 8a 02 00 00    	jne    72c1 <sg_raster_triangle_depth_capture+0x3e11>
    7037:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    703c:	49 63 d0             	movslq %r8d,%rdx
    703f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7043:	48 8b 40 10          	mov    0x10(%rax),%rax
    7047:	f3 0f 7e 04 90       	movq   (%rax,%rdx,4),%xmm0
    704c:	39 bc 24 e8 00 00 00 	cmp    %edi,0xe8(%rsp)
    7053:	7d 08                	jge    705d <sg_raster_triangle_depth_capture+0x3bad>
    7055:	48 63 d5             	movslq %ebp,%rdx
    7058:	f3 0f 7e 0c 90       	movq   (%rax,%rdx,4),%xmm1
    705d:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    7062:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    7066:	8b 80 88 00 00 00    	mov    0x88(%rax),%eax
    706c:	89 84 24 60 01 00 00 	mov    %eax,0x160(%rsp)
    7073:	2d 00 02 00 00       	sub    $0x200,%eax
    7078:	83 f8 06             	cmp    $0x6,%eax
    707b:	0f 87 00 00 00 00    	ja     7081 <sg_raster_triangle_depth_capture+0x3bd1>
    7081:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 7088 <sg_raster_triangle_depth_capture+0x3bd8>
    7088:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    708c:	48 01 d0             	add    %rdx,%rax
    708f:	ff e0                	jmp    *%rax
    7091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7098:	66 0f ef d2          	pxor   %xmm2,%xmm2
    709c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    70a1:	e9 77 ec ff ff       	jmp    5d1d <sg_raster_triangle_depth_capture+0x286d>
    70a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    70ad:	00 00 00 
    70b0:	48 8b 50 08          	mov    0x8(%rax),%rdx
    70b4:	42 8d 04 85 00 00 00 	lea    0x0(,%r8,4),%eax
    70bb:	00 
    70bc:	48 98                	cltq
    70be:	f3 0f 7e 14 02       	movq   (%rdx,%rax,1),%xmm2
    70c3:	4c 8d 04 02          	lea    (%rdx,%rax,1),%r8
    70c7:	0f 5d f5             	minps  %xmm5,%xmm6
    70ca:	66 0f ef c0          	pxor   %xmm0,%xmm0
    70ce:	0f 5d fd             	minps  %xmm5,%xmm7
    70d1:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    70d6:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 70de <sg_raster_triangle_depth_capture+0x3c2e>
    70dd:	00 
    70de:	44 0f 5d d5          	minps  %xmm5,%xmm10
    70e2:	0f 28 ce             	movaps %xmm6,%xmm1
    70e5:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    70e9:	0f 5f c8             	maxps  %xmm0,%xmm1
    70ec:	0f 59 cb             	mulps  %xmm3,%xmm1
    70ef:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
    70f3:	66 0f 6b c9          	packssdw %xmm1,%xmm1
    70f7:	66 0f 67 c9          	packuswb %xmm1,%xmm1
    70fb:	66 0f 7e c8          	movd   %xmm1,%eax
    70ff:	0f 28 cf             	movaps %xmm7,%xmm1
    7102:	0f 5f c8             	maxps  %xmm0,%xmm1
    7105:	0f 59 cb             	mulps  %xmm3,%xmm1
    7108:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
    710c:	66 0f 6b c9          	packssdw %xmm1,%xmm1
    7110:	66 0f 67 c9          	packuswb %xmm1,%xmm1
    7114:	66 0f 7e ce          	movd   %xmm1,%esi
    7118:	41 0f 28 c8          	movaps %xmm8,%xmm1
    711c:	0f 5d cd             	minps  %xmm5,%xmm1
    711f:	66 0f 6e e6          	movd   %esi,%xmm4
    7123:	0f 5f c8             	maxps  %xmm0,%xmm1
    7126:	41 0f 5f c2          	maxps  %xmm10,%xmm0
    712a:	0f 59 cb             	mulps  %xmm3,%xmm1
    712d:	0f 59 c3             	mulps  %xmm3,%xmm0
    7130:	66 0f 6e d8          	movd   %eax,%xmm3
    7134:	41 8b 81 44 05 00 00 	mov    0x544(%r9),%eax
    713b:	66 0f 60 dc          	punpcklbw %xmm4,%xmm3
    713f:	f7 d8                	neg    %eax
    7141:	41 8b 81 48 05 00 00 	mov    0x548(%r9),%eax
    7148:	40 18 f6             	sbb    %sil,%sil
    714b:	40 0f b6 f6          	movzbl %sil,%esi
    714f:	66 0f 5b c9          	cvtps2dq %xmm1,%xmm1
    7153:	66 0f 6b c9          	packssdw %xmm1,%xmm1
    7157:	c1 e6 08             	shl    $0x8,%esi
    715a:	f7 d8                	neg    %eax
    715c:	66 0f 5b c0          	cvtps2dq %xmm0,%xmm0
    7160:	66 0f 6b c0          	packssdw %xmm0,%xmm0
    7164:	18 c0                	sbb    %al,%al
    7166:	66 0f 67 c9          	packuswb %xmm1,%xmm1
    716a:	66 0f 67 c0          	packuswb %xmm0,%xmm0
    716e:	0f b6 c0             	movzbl %al,%eax
    7171:	66 0f 3a 21 c9 0e    	insertps $0xe,%xmm1,%xmm1
    7177:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
    717d:	c1 e0 10             	shl    $0x10,%eax
    7180:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
    7184:	09 f0                	or     %esi,%eax
    7186:	41 8b b1 40 05 00 00 	mov    0x540(%r9),%esi
    718d:	66 0f 61 d9          	punpcklwd %xmm1,%xmm3
    7191:	f7 de                	neg    %esi
    7193:	40 18 f6             	sbb    %sil,%sil
    7196:	40 0f b6 f6          	movzbl %sil,%esi
    719a:	09 f0                	or     %esi,%eax
    719c:	41 8b b1 4c 05 00 00 	mov    0x54c(%r9),%esi
    71a3:	f7 de                	neg    %esi
    71a5:	40 18 f6             	sbb    %sil,%sil
    71a8:	c1 e6 18             	shl    $0x18,%esi
    71ab:	09 f0                	or     %esi,%eax
    71ad:	85 c9                	test   %ecx,%ecx
    71af:	0f 85 fb 03 00 00    	jne    75b0 <sg_raster_triangle_depth_capture+0x4100>
    71b5:	85 db                	test   %ebx,%ebx
    71b7:	0f 85 23 2d 00 00    	jne    9ee0 <sg_raster_triangle_depth_capture+0x6a30>
    71bd:	45 85 d2             	test   %r10d,%r10d
    71c0:	0f 85 4e 39 00 00    	jne    ab14 <sg_raster_triangle_depth_capture+0x7664>
    71c6:	66 0f ef c9          	pxor   %xmm1,%xmm1
    71ca:	66 0f ef c0          	pxor   %xmm0,%xmm0
    71ce:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
    71d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    71db:	00 00 00 00 
    71df:	90                   	nop
    71e0:	66 41 0f 3a 22 ca 01 	pinsrd $0x1,%r10d,%xmm1
    71e7:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    71ed:	66 0f 6e e0          	movd   %eax,%xmm4
    71f1:	44 89 e0             	mov    %r12d,%eax
    71f4:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    71f8:	66 0f 70 cc 00       	pshufd $0x0,%xmm4,%xmm1
    71fd:	83 e0 03             	and    $0x3,%eax
    7200:	66 0f db c1          	pand   %xmm1,%xmm0
    7204:	66 0f db d8          	pand   %xmm0,%xmm3
    7208:	39 bc 24 e8 00 00 00 	cmp    %edi,0xe8(%rsp)
    720f:	0f 8d 7d 03 00 00    	jge    7592 <sg_raster_triangle_depth_capture+0x40e2>
    7215:	8d 0c ad 00 00 00 00 	lea    0x0(,%rbp,4),%ecx
    721c:	48 63 f1             	movslq %ecx,%rsi
    721f:	f3 0f 7e 0c 32       	movq   (%rdx,%rsi,1),%xmm1
    7224:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    7228:	66 0f df c2          	pandn  %xmm2,%xmm0
    722c:	66 0f eb c3          	por    %xmm3,%xmm0
    7230:	85 c0                	test   %eax,%eax
    7232:	0f 85 82 2c 00 00    	jne    9eba <sg_raster_triangle_depth_capture+0x6a0a>
    7238:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
    723d:	48 63 c9             	movslq %ecx,%rcx
    7240:	66 0f d6 04 0a       	movq   %xmm0,(%rdx,%rcx,1)
    7245:	e9 5b d4 ff ff       	jmp    46a5 <sg_raster_triangle_depth_capture+0x11f5>
    724a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7250:	44 8b 94 24 38 01 00 	mov    0x138(%rsp),%r10d
    7257:	00 
    7258:	45 85 d2             	test   %r10d,%r10d
    725b:	0f 84 8e cc ff ff    	je     3eef <sg_raster_triangle_depth_capture+0xa3f>
    7261:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    7266:	48 8b b4 24 b8 00 00 	mov    0xb8(%rsp),%rsi
    726d:	00 
    726e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
    7273:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
    7278:	48 8d 14 06          	lea    (%rsi,%rax,1),%rdx
    727c:	4c 8d 14 11          	lea    (%rcx,%rdx,1),%r10
    7280:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
    7284:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    7289:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
    7290:	00 
    7291:	48 01 c8             	add    %rcx,%rax
    7294:	48 01 f9             	add    %rdi,%rcx
    7297:	4c 8d 0c 07          	lea    (%rdi,%rax,1),%r9
    729b:	e9 e8 ea ff ff       	jmp    5d88 <sg_raster_triangle_depth_capture+0x28d8>
    72a0:	0f 28 e0             	movaps %xmm0,%xmm4
    72a3:	0f c2 a4 24 20 01 00 	cmpeqps 0x120(%rsp),%xmm4
    72aa:	00 00 
    72ac:	0f 28 cc             	movaps %xmm4,%xmm1
    72af:	66 0f db ca          	pand   %xmm2,%xmm1
    72b3:	44 0f 50 e1          	movmskps %xmm1,%r12d
    72b7:	41 83 e4 0f          	and    $0xf,%r12d
    72bb:	0f 84 e4 d3 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    72c1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    72c6:	44 89 e1             	mov    %r12d,%ecx
    72c9:	44 89 e3             	mov    %r12d,%ebx
    72cc:	45 89 e2             	mov    %r12d,%r10d
    72cf:	83 e1 01             	and    $0x1,%ecx
    72d2:	83 e3 02             	and    $0x2,%ebx
    72d5:	41 83 e2 04          	and    $0x4,%r10d
    72d9:	44 8b 98 8c 00 00 00 	mov    0x8c(%rax),%r11d
    72e0:	45 85 db             	test   %r11d,%r11d
    72e3:	0f 84 5a e3 ff ff    	je     5643 <sg_raster_triangle_depth_capture+0x2193>
    72e9:	85 c9                	test   %ecx,%ecx
    72eb:	0f 85 4c 31 00 00    	jne    a43d <sg_raster_triangle_depth_capture+0x6f8d>
    72f1:	85 db                	test   %ebx,%ebx
    72f3:	0f 85 5f 31 00 00    	jne    a458 <sg_raster_triangle_depth_capture+0x6fa8>
    72f9:	45 85 d2             	test   %r10d,%r10d
    72fc:	74 25                	je     7323 <sg_raster_triangle_depth_capture+0x3e73>
    72fe:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    7303:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    730a:	00 
    730b:	48 63 c5             	movslq %ebp,%rax
    730e:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    7312:	66 0f 3a 17 24 82 02 	extractps $0x2,%xmm4,(%rdx,%rax,4)
    7319:	41 f6 c4 08          	test   $0x8,%r12b
    731d:	0f 84 20 e3 ff ff    	je     5643 <sg_raster_triangle_depth_capture+0x2193>
    7323:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    7328:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    732f:	00 
    7330:	8d 45 01             	lea    0x1(%rbp),%eax
    7333:	48 98                	cltq
    7335:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    7339:	66 0f 3a 17 24 82 03 	extractps $0x3,%xmm4,(%rdx,%rax,4)
    7340:	e9 fe e2 ff ff       	jmp    5643 <sg_raster_triangle_depth_capture+0x2193>
    7345:	0f 1f 00             	nopl   (%rax)
    7348:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    734d:	41 f6 c4 04          	test   $0x4,%r12b
    7351:	0f 85 f3 f0 ff ff    	jne    644a <sg_raster_triangle_depth_capture+0x2f9a>
    7357:	66 0f ef f6          	pxor   %xmm6,%xmm6
    735b:	41 f6 c4 08          	test   $0x8,%r12b
    735f:	0f 84 de 37 00 00    	je     ab43 <sg_raster_triangle_depth_capture+0x7693>
    7365:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
    736c:	00 
    736d:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
    7374:	00 
    7375:	f3 0f 10 63 18       	movss  0x18(%rbx),%xmm4
    737a:	f3 0f 10 5f 18       	movss  0x18(%rdi),%xmm3
    737f:	48 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%rbx
    7386:	00 
    7387:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    738c:	f3 0f 10 6b 18       	movss  0x18(%rbx),%xmm5
    7391:	8b bf 84 00 00 00    	mov    0x84(%rdi),%edi
    7397:	e9 be f1 ff ff       	jmp    655a <sg_raster_triangle_depth_capture+0x30aa>
    739c:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
    73a3:	00 
    73a4:	48 8b ac 24 28 01 00 	mov    0x128(%rsp),%rbp
    73ab:	00 
    73ac:	85 c9                	test   %ecx,%ecx
    73ae:	0f 85 d5 1e 00 00    	jne    9289 <sg_raster_triangle_depth_capture+0x5dd9>
    73b4:	85 db                	test   %ebx,%ebx
    73b6:	0f 85 60 1f 00 00    	jne    931c <sg_raster_triangle_depth_capture+0x5e6c>
    73bc:	45 85 d2             	test   %r10d,%r10d
    73bf:	0f 84 8c 00 00 00    	je     7451 <sg_raster_triangle_depth_capture+0x3fa1>
    73c5:	41 0f 28 e8          	movaps %xmm8,%xmm5
    73c9:	41 0f 28 e2          	movaps %xmm10,%xmm4
    73cd:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    73d1:	66 0f 6e c5          	movd   %ebp,%xmm0
    73d5:	41 0f 15 e8          	unpckhps %xmm8,%xmm5
    73d9:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    73e0:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    73e5:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
    73ec:	00 
    73ed:	0f 28 dd             	movaps %xmm5,%xmm3
    73f0:	0f 28 ef             	movaps %xmm7,%xmm5
    73f3:	41 0f 15 e2          	unpckhps %xmm10,%xmm4
    73f7:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
    73fe:	00 00 
    7400:	0f 15 ef             	unpckhps %xmm7,%xmm5
    7403:	0f 28 fe             	movaps %xmm6,%xmm7
    7406:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
    740d:	00 00 
    740f:	0f 15 fe             	unpckhps %xmm6,%xmm7
    7412:	0f 28 d5             	movaps %xmm5,%xmm2
    7415:	0f 29 b4 24 20 01 00 	movaps %xmm6,0x120(%rsp)
    741c:	00 
    741d:	0f 28 cf             	movaps %xmm7,%xmm1
    7420:	e8 00 00 00 00       	call   7425 <sg_raster_triangle_depth_capture+0x3f75>
    7425:	0f 28 b4 24 20 01 00 	movaps 0x120(%rsp),%xmm6
    742c:	00 
    742d:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
    7434:	00 
    7435:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
    743c:	00 00 
    743e:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
    7445:	00 00 
    7447:	41 83 e4 08          	and    $0x8,%r12d
    744b:	0f 84 54 d2 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    7451:	66 48 0f 6e e5       	movq   %rbp,%xmm4
    7456:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
    745d:	8b 74 24 30          	mov    0x30(%rsp),%esi
    7461:	45 0f c6 d2 ff       	shufps $0xff,%xmm10,%xmm10
    7466:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    746b:	0f c6 e4 55          	shufps $0x55,%xmm4,%xmm4
    746f:	0f c6 ff ff          	shufps $0xff,%xmm7,%xmm7
    7473:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    7477:	45 0f c6 c0 ff       	shufps $0xff,%xmm8,%xmm8
    747c:	0f c6 f6 ff          	shufps $0xff,%xmm6,%xmm6
    7480:	41 0f 28 e2          	movaps %xmm10,%xmm4
    7484:	41 0f 28 d8          	movaps %xmm8,%xmm3
    7488:	0f 28 d7             	movaps %xmm7,%xmm2
    748b:	0f 28 ce             	movaps %xmm6,%xmm1
    748e:	e8 00 00 00 00       	call   7493 <sg_raster_triangle_depth_capture+0x3fe3>
    7493:	e9 0d d2 ff ff       	jmp    46a5 <sg_raster_triangle_depth_capture+0x11f5>
    7498:	44 89 d8             	mov    %r11d,%eax
    749b:	99                   	cltd
    749c:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    74a3:	41 89 d3             	mov    %edx,%r11d
    74a6:	85 d2                	test   %edx,%edx
    74a8:	0f 88 29 2b 00 00    	js     9fd7 <sg_raster_triangle_depth_capture+0x6b27>
    74ae:	89 c8                	mov    %ecx,%eax
    74b0:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    74b7:	99                   	cltd
    74b8:	f7 f9                	idiv   %ecx
    74ba:	01 d1                	add    %edx,%ecx
    74bc:	85 d2                	test   %edx,%edx
    74be:	0f 48 d1             	cmovs  %ecx,%edx
    74c1:	e9 38 ef ff ff       	jmp    63fe <sg_raster_triangle_depth_capture+0x2f4e>
    74c6:	44 89 d8             	mov    %r11d,%eax
    74c9:	99                   	cltd
    74ca:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    74d1:	41 89 d3             	mov    %edx,%r11d
    74d4:	85 d2                	test   %edx,%edx
    74d6:	0f 88 29 2a 00 00    	js     9f05 <sg_raster_triangle_depth_capture+0x6a55>
    74dc:	89 c8                	mov    %ecx,%eax
    74de:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    74e5:	99                   	cltd
    74e6:	f7 f9                	idiv   %ecx
    74e8:	01 d1                	add    %edx,%ecx
    74ea:	85 d2                	test   %edx,%edx
    74ec:	0f 48 d1             	cmovs  %ecx,%edx
    74ef:	e9 b9 ec ff ff       	jmp    61ad <sg_raster_triangle_depth_capture+0x2cfd>
    74f4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    74f9:	66 0f ef e4          	pxor   %xmm4,%xmm4
    74fd:	f3 0f 10 88 18 01 00 	movss  0x118(%rax),%xmm1
    7504:	00 
    7505:	0f 28 d9             	movaps %xmm1,%xmm3
    7508:	f3 0f 5c 98 14 01 00 	subss  0x114(%rax),%xmm3
    750f:	00 
    7510:	0f 2f dc             	comiss %xmm4,%xmm3
    7513:	0f 84 f0 1e 00 00    	je     9409 <sg_raster_triangle_depth_capture+0x5f59>
    7519:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # 7521 <sg_raster_triangle_depth_capture+0x4071>
    7520:	00 
    7521:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    7525:	0f 5c c8             	subps  %xmm0,%xmm1
    7528:	f3 0f 5e e3          	divss  %xmm3,%xmm4
    752c:	0f 28 c4             	movaps %xmm4,%xmm0
    752f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    7533:	0f 59 c8             	mulps  %xmm0,%xmm1
    7536:	e9 88 df ff ff       	jmp    54c3 <sg_raster_triangle_depth_capture+0x2013>
    753b:	44 8b 4c 24 30       	mov    0x30(%rsp),%r9d
    7540:	41 39 c1             	cmp    %eax,%r9d
    7543:	0f 8c 5c d1 ff ff    	jl     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    7549:	41 39 c9             	cmp    %ecx,%r9d
    754c:	0f 8d 53 d1 ff ff    	jge    46a5 <sg_raster_triangle_depth_capture+0x11f5>
    7552:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
    7559:	44 8b 8c 24 e8 00 00 	mov    0xe8(%rsp),%r9d
    7560:	00 
    7561:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7565:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7569:	39 c6                	cmp    %eax,%esi
    756b:	0f 9f c1             	setg   %cl
    756e:	39 c2                	cmp    %eax,%edx
    7570:	0f 9e c0             	setle  %al
    7573:	0f b6 c0             	movzbl %al,%eax
    7576:	21 c8                	and    %ecx,%eax
    7578:	f7 d8                	neg    %eax
    757a:	41 39 f1             	cmp    %esi,%r9d
    757d:	0f 9c c1             	setl   %cl
    7580:	41 39 d1             	cmp    %edx,%r9d
    7583:	0f 9d c2             	setge  %dl
    7586:	0f b6 d2             	movzbl %dl,%edx
    7589:	21 ca                	and    %ecx,%edx
    758b:	f7 da                	neg    %edx
    758d:	e9 74 e0 ff ff       	jmp    5606 <sg_raster_triangle_depth_capture+0x2156>
    7592:	85 c0                	test   %eax,%eax
    7594:	0f 84 0b d1 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    759a:	f3 0f 7e d2          	movq   %xmm2,%xmm2
    759e:	66 0f df c2          	pandn  %xmm2,%xmm0
    75a2:	66 0f eb c3          	por    %xmm3,%xmm0
    75a6:	66 41 0f d6 00       	movq   %xmm0,(%r8)
    75ab:	e9 f5 d0 ff ff       	jmp    46a5 <sg_raster_triangle_depth_capture+0x11f5>
    75b0:	d1 eb                	shr    $1,%ebx
    75b2:	89 d9                	mov    %ebx,%ecx
    75b4:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    75b9:	f7 d9                	neg    %ecx
    75bb:	66 0f 6e c3          	movd   %ebx,%xmm0
    75bf:	44 89 d6             	mov    %r10d,%esi
    75c2:	c1 ee 02             	shr    $0x2,%esi
    75c5:	f7 de                	neg    %esi
    75c7:	66 0f 6e ce          	movd   %esi,%xmm1
    75cb:	45 89 e2             	mov    %r12d,%r10d
    75ce:	41 c1 ea 03          	shr    $0x3,%r10d
    75d2:	41 f7 da             	neg    %r10d
    75d5:	e9 06 fc ff ff       	jmp    71e0 <sg_raster_triangle_depth_capture+0x3d30>
    75da:	45 01 cf             	add    %r9d,%r15d
    75dd:	85 db                	test   %ebx,%ebx
    75df:	0f 84 b3 fe ff ff    	je     7498 <sg_raster_triangle_depth_capture+0x3fe8>
    75e5:	21 d9                	and    %ebx,%ecx
    75e7:	41 21 db             	and    %ebx,%r11d
    75ea:	89 ca                	mov    %ecx,%edx
    75ec:	e9 0d ee ff ff       	jmp    63fe <sg_raster_triangle_depth_capture+0x2f4e>
    75f1:	44 89 bc 24 a0 01 00 	mov    %r15d,0x1a0(%rsp)
    75f8:	00 
    75f9:	b8 00 80 00 00       	mov    $0x8000,%eax
    75fe:	f3 0f 10 35 00 00 00 	movss  0x0(%rip),%xmm6        # 7606 <sg_raster_triangle_depth_capture+0x4156>
    7605:	00 
    7606:	89 bc 24 b0 01 00 00 	mov    %edi,0x1b0(%rsp)
    760d:	66 44 0f 6e c0       	movd   %eax,%xmm8
    7612:	44 89 84 24 c0 01 00 	mov    %r8d,0x1c0(%rsp)
    7619:	00 
    761a:	41 89 c8             	mov    %ecx,%r8d
    761d:	66 45 0f 70 c0 00    	pshufd $0x0,%xmm8,%xmm8
    7623:	89 9c 24 d0 01 00 00 	mov    %ebx,0x1d0(%rsp)
    762a:	89 d3                	mov    %edx,%ebx
    762c:	41 0f a3 f4          	bt     %esi,%r12d
    7630:	0f 83 c4 01 00 00    	jae    77fa <sg_raster_triangle_depth_capture+0x434a>
    7636:	8b 84 b4 d0 02 00 00 	mov    0x2d0(%rsp,%rsi,4),%eax
    763d:	44 8b 9c b4 e0 02 00 	mov    0x2e0(%rsp,%rsi,4),%r11d
    7644:	00 
    7645:	44 8d 78 01          	lea    0x1(%rax),%r15d
    7649:	41 8d 4b 01          	lea    0x1(%r11),%ecx
    764d:	45 85 c0             	test   %r8d,%r8d
    7650:	0f 84 ba 01 00 00    	je     7810 <sg_raster_triangle_depth_capture+0x4360>
    7656:	44 21 c0             	and    %r8d,%eax
    7659:	45 21 c7             	and    %r8d,%r15d
    765c:	89 c7                	mov    %eax,%edi
    765e:	85 db                	test   %ebx,%ebx
    7660:	0f 84 c5 1b 00 00    	je     922b <sg_raster_triangle_depth_capture+0x5d7b>
    7666:	89 ca                	mov    %ecx,%edx
    7668:	41 21 db             	and    %ebx,%r11d
    766b:	21 da                	and    %ebx,%edx
    766d:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    7674:	89 c1                	mov    %eax,%ecx
    7676:	41 d3 e3             	shl    %cl,%r11d
    7679:	d3 e2                	shl    %cl,%edx
    767b:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 7683 <sg_raster_triangle_depth_capture+0x41d3>
    7682:	00 
    7683:	41 8d 04 3b          	lea    (%r11,%rdi,1),%eax
    7687:	45 01 fb             	add    %r15d,%r11d
    768a:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
    768f:	66 44 0f 6e b4 b4 f0 	movd   0x2f0(%rsp,%rsi,4),%xmm14
    7696:	02 00 00 
    7699:	c1 e0 02             	shl    $0x2,%eax
    769c:	66 44 0f 6f 15 00 00 	movdqa 0x0(%rip),%xmm10        # 76a5 <sg_raster_triangle_depth_capture+0x41f5>
    76a3:	00 00 
    76a5:	66 44 0f 38 39 f0    	pminsd %xmm0,%xmm14
    76ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
    76af:	48 98                	cltq
    76b1:	66 44 0f 38 3d f0    	pmaxsd %xmm0,%xmm14
    76b7:	66 0f 6e 84 b4 00 03 	movd   0x300(%rsp,%rsi,4),%xmm0
    76be:	00 00 
    76c0:	66 41 0f 38 39 c2    	pminsd %xmm10,%xmm0
    76c6:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    76cb:	66 41 0f 38 3d c2    	pmaxsd %xmm10,%xmm0
    76d1:	66 45 0f 6e 14 02    	movd   (%r10,%rax,1),%xmm10
    76d7:	42 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%eax
    76de:	00 
    76df:	66 44 0f fa f8       	psubd  %xmm0,%xmm15
    76e4:	48 98                	cltq
    76e6:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
    76eb:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
    76f0:	66 45 0f 6e 3c 02    	movd   (%r10,%rax,1),%xmm15
    76f6:	8d 04 3a             	lea    (%rdx,%rdi,1),%eax
    76f9:	44 01 fa             	add    %r15d,%edx
    76fc:	c1 e0 02             	shl    $0x2,%eax
    76ff:	66 45 0f 38 30 ff    	pmovzxbw %xmm15,%xmm15
    7705:	66 45 0f 38 30 d2    	pmovzxbw %xmm10,%xmm10
    770b:	66 45 0f 70 ed 00    	pshufd $0x0,%xmm13,%xmm13
    7711:	48 98                	cltq
    7713:	66 45 0f 61 d7       	punpcklwd %xmm15,%xmm10
    7718:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
    771d:	66 45 0f 70 e4 00    	pshufd $0x0,%xmm12,%xmm12
    7723:	66 41 0f 6e 04 02    	movd   (%r10,%rax,1),%xmm0
    7729:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
    7730:	66 45 0f fa fe       	psubd  %xmm14,%xmm15
    7735:	48 98                	cltq
    7737:	66 41 0f 72 f6 10    	pslld  $0x10,%xmm14
    773d:	66 0f 38 30 c0       	pmovzxbw %xmm0,%xmm0
    7742:	66 45 0f 6e 1c 02    	movd   (%r10,%rax,1),%xmm11
    7748:	66 45 0f 38 30 db    	pmovzxbw %xmm11,%xmm11
    774e:	66 41 0f 61 c3       	punpcklwd %xmm11,%xmm0
    7753:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
    7758:	66 45 0f eb de       	por    %xmm14,%xmm11
    775d:	66 45 0f 70 db 00    	pshufd $0x0,%xmm11,%xmm11
    7763:	66 45 0f f5 d3       	pmaddwd %xmm11,%xmm10
    7768:	66 41 0f f5 c3       	pmaddwd %xmm11,%xmm0
    776d:	66 41 0f 38 40 c5    	pmulld %xmm13,%xmm0
    7773:	66 45 0f 38 40 d4    	pmulld %xmm12,%xmm10
    7779:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
    777e:	66 41 0f fe c0       	paddd  %xmm8,%xmm0
    7783:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
    7788:	66 0f 38 2b c0       	packusdw %xmm0,%xmm0
    778d:	66 0f 67 c0          	packuswb %xmm0,%xmm0
    7791:	66 0f 7e c0          	movd   %xmm0,%eax
    7795:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7799:	0f b6 d0             	movzbl %al,%edx
    779c:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    77a0:	0f b6 d4             	movzbl %ah,%edx
    77a3:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    77a7:	f3 0f 11 84 b4 10 03 	movss  %xmm0,0x310(%rsp,%rsi,4)
    77ae:	00 00 
    77b0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    77b4:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    77b8:	89 c2                	mov    %eax,%edx
    77ba:	c1 e8 18             	shr    $0x18,%eax
    77bd:	c1 ea 10             	shr    $0x10,%edx
    77c0:	0f b6 d2             	movzbl %dl,%edx
    77c3:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    77c7:	f3 0f 11 84 b4 20 03 	movss  %xmm0,0x320(%rsp,%rsi,4)
    77ce:	00 00 
    77d0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    77d4:	f3 0f 2a c2          	cvtsi2ss %edx,%xmm0
    77d8:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    77dc:	f3 0f 11 84 b4 70 03 	movss  %xmm0,0x370(%rsp,%rsi,4)
    77e3:	00 00 
    77e5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    77e9:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    77ed:	f3 0f 59 c6          	mulss  %xmm6,%xmm0
    77f1:	f3 0f 11 84 b4 b0 03 	movss  %xmm0,0x3b0(%rsp,%rsi,4)
    77f8:	00 00 
    77fa:	48 83 c6 01          	add    $0x1,%rsi
    77fe:	48 83 fe 04          	cmp    $0x4,%rsi
    7802:	0f 85 24 fe ff ff    	jne    762c <sg_raster_triangle_depth_capture+0x417c>
    7808:	e9 74 eb ff ff       	jmp    6381 <sg_raster_triangle_depth_capture+0x2ed1>
    780d:	0f 1f 00             	nopl   (%rax)
    7810:	99                   	cltd
    7811:	41 f7 f9             	idiv   %r9d
    7814:	44 89 f8             	mov    %r15d,%eax
    7817:	85 d2                	test   %edx,%edx
    7819:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    781d:	0f 49 fa             	cmovns %edx,%edi
    7820:	99                   	cltd
    7821:	41 f7 f9             	idiv   %r9d
    7824:	41 89 d7             	mov    %edx,%r15d
    7827:	85 d2                	test   %edx,%edx
    7829:	0f 88 bf 26 00 00    	js     9eee <sg_raster_triangle_depth_capture+0x6a3e>
    782f:	85 db                	test   %ebx,%ebx
    7831:	0f 84 23 1a 00 00    	je     925a <sg_raster_triangle_depth_capture+0x5daa>
    7837:	21 d9                	and    %ebx,%ecx
    7839:	41 21 db             	and    %ebx,%r11d
    783c:	89 ca                	mov    %ecx,%edx
    783e:	45 0f af d9          	imul   %r9d,%r11d
    7842:	41 0f af d1          	imul   %r9d,%edx
    7846:	e9 30 fe ff ff       	jmp    767b <sg_raster_triangle_depth_capture+0x41cb>
    784b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7850:	31 d2                	xor    %edx,%edx
    7852:	66 0f ef d2          	pxor   %xmm2,%xmm2
    7856:	66 0f 6e f0          	movd   %eax,%xmm6
    785a:	e9 c7 e4 ff ff       	jmp    5d26 <sg_raster_triangle_depth_capture+0x2876>
    785f:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    7866:	01 00 00 00 
    786a:	41 f6 c4 04          	test   $0x4,%r12b
    786e:	0f 85 d6 eb ff ff    	jne    644a <sg_raster_triangle_depth_capture+0x2f9a>
    7874:	66 0f ef f6          	pxor   %xmm6,%xmm6
    7878:	41 f6 c4 08          	test   $0x8,%r12b
    787c:	0f 85 e3 fa ff ff    	jne    7365 <sg_raster_triangle_depth_capture+0x3eb5>
    7882:	44 0f 28 de          	movaps %xmm6,%xmm11
    7886:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    788b:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    7890:	66 0f ef d2          	pxor   %xmm2,%xmm2
    7894:	66 0f ef ff          	pxor   %xmm7,%xmm7
    7898:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
    789d:	f3 4d 0f 2a c2       	cvtsi2ss %r10,%xmm8
    78a2:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
    78a7:	f3 49 0f 2a f9       	cvtsi2ss %r9,%xmm7
    78ac:	e9 94 ed ff ff       	jmp    6645 <sg_raster_triangle_depth_capture+0x3195>
    78b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    78b8:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    78bd:	66 0f ef ff          	pxor   %xmm7,%xmm7
    78c1:	66 0f ef e4          	pxor   %xmm4,%xmm4
    78c5:	66 0f ef db          	pxor   %xmm3,%xmm3
    78c9:	f3 4d 0f 2a c2       	cvtsi2ss %r10,%xmm8
    78ce:	66 45 0f ef db       	pxor   %xmm11,%xmm11
    78d3:	f3 49 0f 2a f9       	cvtsi2ss %r9,%xmm7
    78d8:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    78dd:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    78e2:	e9 5e ed ff ff       	jmp    6645 <sg_raster_triangle_depth_capture+0x3195>
    78e7:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    78ee:	00 
    78ef:	f3 0f 10 42 50       	movss  0x50(%rdx),%xmm0
    78f4:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
    78fa:	31 d2                	xor    %edx,%edx
    78fc:	f3 0f 10 68 50       	movss  0x50(%rax),%xmm5
    7901:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    7905:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
    790a:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    790f:	f3 0f 58 e8          	addss  %xmm0,%xmm5
    7913:	f3 0f 10 41 50       	movss  0x50(%rcx),%xmm0
    7918:	f3 41 0f 59 c0       	mulss  %xmm8,%xmm0
    791d:	f3 0f 58 e8          	addss  %xmm0,%xmm5
    7921:	f3 0f 10 40 54       	movss  0x54(%rax),%xmm0
    7926:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    792d:	00 
    792e:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    7933:	44 8b 60 24          	mov    0x24(%rax),%r12d
    7937:	44 8b 48 28          	mov    0x28(%rax),%r9d
    793b:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7940:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7945:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
    794b:	48 8b 48 30          	mov    0x30(%rax),%rcx
    794f:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    7954:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7959:	44 0f 28 f5          	movaps %xmm5,%xmm14
    795d:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    7964:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7969:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    796e:	f3 45 0f 2a f4       	cvtsi2ss %r12d,%xmm14
    7973:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    7978:	f3 41 0f 59 ee       	mulss  %xmm14,%xmm5
    797d:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 7986 <sg_raster_triangle_depth_capture+0x44d6>
    7984:	00 00 
    7986:	44 0f 28 f8          	movaps %xmm0,%xmm15
    798a:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7991:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7996:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    799b:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    79a0:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    79a5:	f3 41 0f 59 c7       	mulss  %xmm15,%xmm0
    79aa:	44 0f 28 fd          	movaps %xmm5,%xmm15
    79ae:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    79b5:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    79ba:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    79bf:	8d 58 01             	lea    0x1(%rax),%ebx
    79c2:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%rsp)
    79c9:	44 0f 28 f8          	movaps %xmm0,%xmm15
    79cd:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    79d4:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    79d9:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    79de:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    79e3:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    79e8:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 79f0 <sg_raster_triangle_depth_capture+0x4540>
    79ef:	00 
    79f0:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    79f5:	f3 0f 2c f5          	cvttss2si %xmm5,%esi
    79f9:	66 0f ef ed          	pxor   %xmm5,%xmm5
    79fd:	f3 0f 2a ef          	cvtsi2ss %edi,%xmm5
    7a01:	85 f6                	test   %esi,%esi
    7a03:	f3 0f 5c c5          	subss  %xmm5,%xmm0
    7a07:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7a0f <sg_raster_triangle_depth_capture+0x455f>
    7a0e:	00 
    7a0f:	0f 48 f2             	cmovs  %edx,%esi
    7a12:	ba 00 01 00 00       	mov    $0x100,%edx
    7a17:	39 d6                	cmp    %edx,%esi
    7a19:	0f 4f f2             	cmovg  %edx,%esi
    7a1c:	31 d2                	xor    %edx,%edx
    7a1e:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7a23:	f3 44 0f 2c c0       	cvttss2si %xmm0,%r8d
    7a28:	45 85 c0             	test   %r8d,%r8d
    7a2b:	44 0f 48 c2          	cmovs  %edx,%r8d
    7a2f:	ba 00 01 00 00       	mov    $0x100,%edx
    7a34:	89 d5                	mov    %edx,%ebp
    7a36:	41 39 d0             	cmp    %edx,%r8d
    7a39:	44 0f 4f c2          	cmovg  %edx,%r8d
    7a3d:	29 f5                	sub    %esi,%ebp
    7a3f:	44 29 c2             	sub    %r8d,%edx
    7a42:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7a49:	8d 57 01             	lea    0x1(%rdi),%edx
    7a4c:	89 94 24 80 01 00 00 	mov    %edx,0x180(%rsp)
    7a53:	45 85 e4             	test   %r12d,%r12d
    7a56:	0f 8e c0 19 00 00    	jle    941c <sg_raster_triangle_depth_capture+0x5f6c>
    7a5c:	45 8d 54 24 ff       	lea    -0x1(%r12),%r10d
    7a61:	45 85 d4             	test   %r10d,%r12d
    7a64:	0f 85 b2 19 00 00    	jne    941c <sg_raster_triangle_depth_capture+0x5f6c>
    7a6a:	45 85 c9             	test   %r9d,%r9d
    7a6d:	0f 8e ec 34 00 00    	jle    af5f <sg_raster_triangle_depth_capture+0x7aaf>
    7a73:	45 8d 59 ff          	lea    -0x1(%r9),%r11d
    7a77:	45 85 d9             	test   %r11d,%r9d
    7a7a:	0f 85 df 34 00 00    	jne    af5f <sg_raster_triangle_depth_capture+0x7aaf>
    7a80:	45 85 d2             	test   %r10d,%r10d
    7a83:	0f 84 d3 54 00 00    	je     cf5c <sg_raster_triangle_depth_capture+0x9aac>
    7a89:	44 21 d0             	and    %r10d,%eax
    7a8c:	89 c3                	mov    %eax,%ebx
    7a8e:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    7a95:	41 21 c2             	and    %eax,%r10d
    7a98:	e9 bc 19 00 00       	jmp    9459 <sg_raster_triangle_depth_capture+0x5fa9>
    7a9d:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7aa4:	00 
    7aa5:	f3 0f 10 6a 50       	movss  0x50(%rdx),%xmm5
    7aaa:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
    7ab0:	31 d2                	xor    %edx,%edx
    7ab2:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
    7ab7:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    7abc:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    7ac1:	f3 0f 59 c7          	mulss  %xmm7,%xmm0
    7ac5:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7ac9:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
    7ace:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    7ad3:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7ad7:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
    7adc:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    7ae3:	00 
    7ae4:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
    7ae8:	44 8b 50 24          	mov    0x24(%rax),%r10d
    7aec:	44 8b 48 28          	mov    0x28(%rax),%r9d
    7af0:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    7af5:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7afa:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
    7b00:	48 8b 48 30          	mov    0x30(%rax),%rcx
    7b04:	f3 45 0f 59 f1       	mulss  %xmm9,%xmm14
    7b09:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7b0e:	44 0f 28 f0          	movaps %xmm0,%xmm14
    7b12:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    7b19:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7b1e:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    7b23:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    7b28:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7b2d:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
    7b32:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 7b3b <sg_raster_triangle_depth_capture+0x468b>
    7b39:	00 00 
    7b3b:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7b3f:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7b46:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    7b4b:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7b50:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7b55:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7b5a:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
    7b5f:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7b63:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7b6a:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7b6f:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7b74:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7b78:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7b7f:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7b84:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7b89:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7b8e:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7b93:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7b9b <sg_raster_triangle_depth_capture+0x46eb>
    7b9a:	00 
    7b9b:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7ba0:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    7ba4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7ba8:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    7bac:	85 f6                	test   %esi,%esi
    7bae:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    7bb2:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 7bba <sg_raster_triangle_depth_capture+0x470a>
    7bb9:	00 
    7bba:	0f 48 f2             	cmovs  %edx,%esi
    7bbd:	ba 00 01 00 00       	mov    $0x100,%edx
    7bc2:	39 d6                	cmp    %edx,%esi
    7bc4:	0f 4f f2             	cmovg  %edx,%esi
    7bc7:	31 d2                	xor    %edx,%edx
    7bc9:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7bce:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
    7bd3:	45 85 c0             	test   %r8d,%r8d
    7bd6:	44 0f 48 c2          	cmovs  %edx,%r8d
    7bda:	ba 00 01 00 00       	mov    $0x100,%edx
    7bdf:	89 d3                	mov    %edx,%ebx
    7be1:	41 39 d0             	cmp    %edx,%r8d
    7be4:	44 0f 4f c2          	cmovg  %edx,%r8d
    7be8:	29 f3                	sub    %esi,%ebx
    7bea:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%rsp)
    7bf1:	8d 58 01             	lea    0x1(%rax),%ebx
    7bf4:	89 9c 24 80 01 00 00 	mov    %ebx,0x180(%rsp)
    7bfb:	44 29 c2             	sub    %r8d,%edx
    7bfe:	8d 5f 01             	lea    0x1(%rdi),%ebx
    7c01:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7c08:	89 9c 24 a0 01 00 00 	mov    %ebx,0x1a0(%rsp)
    7c0f:	45 85 d2             	test   %r10d,%r10d
    7c12:	0f 8e 4a 1d 00 00    	jle    9962 <sg_raster_triangle_depth_capture+0x64b2>
    7c18:	45 8d 5a ff          	lea    -0x1(%r10),%r11d
    7c1c:	45 85 da             	test   %r11d,%r10d
    7c1f:	0f 85 3d 1d 00 00    	jne    9962 <sg_raster_triangle_depth_capture+0x64b2>
    7c25:	45 85 c9             	test   %r9d,%r9d
    7c28:	0f 8e 14 33 00 00    	jle    af42 <sg_raster_triangle_depth_capture+0x7a92>
    7c2e:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7c32:	41 85 d9             	test   %ebx,%r9d
    7c35:	0f 85 07 33 00 00    	jne    af42 <sg_raster_triangle_depth_capture+0x7a92>
    7c3b:	45 85 db             	test   %r11d,%r11d
    7c3e:	0f 84 6c 53 00 00    	je     cfb0 <sg_raster_triangle_depth_capture+0x9b00>
    7c44:	44 21 d8             	and    %r11d,%eax
    7c47:	89 c5                	mov    %eax,%ebp
    7c49:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    7c50:	41 21 c3             	and    %eax,%r11d
    7c53:	e9 49 1d 00 00       	jmp    99a1 <sg_raster_triangle_depth_capture+0x64f1>
    7c58:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7c5f:	00 
    7c60:	f3 0f 10 6e 50       	movss  0x50(%rsi),%xmm5
    7c65:	48 89 f3             	mov    %rsi,%rbx
    7c68:	31 d2                	xor    %edx,%edx
    7c6a:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
    7c71:	00 
    7c72:	f3 44 0f 10 73 54    	movss  0x54(%rbx),%xmm14
    7c78:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
    7c7d:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
    7c81:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
    7c86:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    7c8b:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7c8f:	f3 0f 10 6e 50       	movss  0x50(%rsi),%xmm5
    7c94:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    7c99:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7c9d:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
    7ca2:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    7ca9:	00 
    7caa:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    7caf:	44 8b 50 24          	mov    0x24(%rax),%r10d
    7cb3:	44 8b 48 28          	mov    0x28(%rax),%r9d
    7cb7:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    7cbc:	48 8b 48 30          	mov    0x30(%rax),%rcx
    7cc0:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7cc5:	f3 44 0f 10 76 54    	movss  0x54(%rsi),%xmm14
    7ccb:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    7cd0:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7cd5:	44 0f 28 f0          	movaps %xmm0,%xmm14
    7cd9:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    7ce0:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7ce5:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    7cea:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    7cef:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7cf4:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
    7cf9:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 7d02 <sg_raster_triangle_depth_capture+0x4852>
    7d00:	00 00 
    7d02:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7d06:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7d0d:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    7d12:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7d17:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7d1c:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7d21:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
    7d26:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7d2a:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7d31:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7d36:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7d3b:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7d3f:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7d46:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7d4b:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7d50:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7d55:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7d5a:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7d62 <sg_raster_triangle_depth_capture+0x48b2>
    7d61:	00 
    7d62:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7d67:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    7d6b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7d6f:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    7d73:	85 f6                	test   %esi,%esi
    7d75:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    7d79:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 7d81 <sg_raster_triangle_depth_capture+0x48d1>
    7d80:	00 
    7d81:	0f 48 f2             	cmovs  %edx,%esi
    7d84:	ba 00 01 00 00       	mov    $0x100,%edx
    7d89:	39 d6                	cmp    %edx,%esi
    7d8b:	0f 4f f2             	cmovg  %edx,%esi
    7d8e:	31 d2                	xor    %edx,%edx
    7d90:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7d95:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
    7d9a:	45 85 c0             	test   %r8d,%r8d
    7d9d:	44 0f 48 c2          	cmovs  %edx,%r8d
    7da1:	ba 00 01 00 00       	mov    $0x100,%edx
    7da6:	89 d3                	mov    %edx,%ebx
    7da8:	41 39 d0             	cmp    %edx,%r8d
    7dab:	44 0f 4f c2          	cmovg  %edx,%r8d
    7daf:	29 f3                	sub    %esi,%ebx
    7db1:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%rsp)
    7db8:	8d 58 01             	lea    0x1(%rax),%ebx
    7dbb:	44 29 c2             	sub    %r8d,%edx
    7dbe:	89 9c 24 80 01 00 00 	mov    %ebx,0x180(%rsp)
    7dc5:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7dcc:	8d 57 01             	lea    0x1(%rdi),%edx
    7dcf:	89 94 24 a0 01 00 00 	mov    %edx,0x1a0(%rsp)
    7dd6:	45 85 d2             	test   %r10d,%r10d
    7dd9:	0f 8e d5 18 00 00    	jle    96b4 <sg_raster_triangle_depth_capture+0x6204>
    7ddf:	45 8d 5a ff          	lea    -0x1(%r10),%r11d
    7de3:	45 85 da             	test   %r11d,%r10d
    7de6:	0f 85 c8 18 00 00    	jne    96b4 <sg_raster_triangle_depth_capture+0x6204>
    7dec:	45 85 c9             	test   %r9d,%r9d
    7def:	0f 8e 87 31 00 00    	jle    af7c <sg_raster_triangle_depth_capture+0x7acc>
    7df5:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7df9:	41 85 d9             	test   %ebx,%r9d
    7dfc:	0f 85 7a 31 00 00    	jne    af7c <sg_raster_triangle_depth_capture+0x7acc>
    7e02:	45 85 db             	test   %r11d,%r11d
    7e05:	0f 84 7c 51 00 00    	je     cf87 <sg_raster_triangle_depth_capture+0x9ad7>
    7e0b:	44 21 d8             	and    %r11d,%eax
    7e0e:	89 c5                	mov    %eax,%ebp
    7e10:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    7e17:	41 21 c3             	and    %eax,%r11d
    7e1a:	e9 d4 18 00 00       	jmp    96f3 <sg_raster_triangle_depth_capture+0x6243>
    7e1f:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    7e26:	00 
    7e27:	f3 0f 10 6a 50       	movss  0x50(%rdx),%xmm5
    7e2c:	f3 44 0f 10 72 54    	movss  0x54(%rdx),%xmm14
    7e32:	31 d2                	xor    %edx,%edx
    7e34:	f3 0f 10 40 50       	movss  0x50(%rax),%xmm0
    7e39:	f3 0f 59 ef          	mulss  %xmm7,%xmm5
    7e3d:	f3 44 0f 59 f7       	mulss  %xmm7,%xmm14
    7e42:	f3 41 0f 59 c1       	mulss  %xmm9,%xmm0
    7e47:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7e4b:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
    7e50:	f3 41 0f 59 e8       	mulss  %xmm8,%xmm5
    7e55:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    7e59:	f3 0f 10 68 54       	movss  0x54(%rax),%xmm5
    7e5e:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    7e65:	00 
    7e66:	f3 41 0f 59 e9       	mulss  %xmm9,%xmm5
    7e6b:	44 8b 50 24          	mov    0x24(%rax),%r10d
    7e6f:	44 8b 48 28          	mov    0x28(%rax),%r9d
    7e73:	f3 41 0f 59 c5       	mulss  %xmm13,%xmm0
    7e78:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7e7d:	f3 44 0f 10 71 54    	movss  0x54(%rcx),%xmm14
    7e83:	48 8b 48 30          	mov    0x30(%rax),%rcx
    7e87:	f3 45 0f 59 f0       	mulss  %xmm8,%xmm14
    7e8c:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7e91:	44 0f 28 f0          	movaps %xmm0,%xmm14
    7e95:	66 45 0f 3a 0a f6 09 	roundss $0x9,%xmm14,%xmm14
    7e9c:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7ea1:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    7ea6:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    7eab:	f3 41 0f 59 ed       	mulss  %xmm13,%xmm5
    7eb0:	f3 41 0f 59 c6       	mulss  %xmm14,%xmm0
    7eb5:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # 7ebe <sg_raster_triangle_depth_capture+0x4a0e>
    7ebc:	00 00 
    7ebe:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7ec2:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7ec9:	f3 41 0f 5c ef       	subss  %xmm15,%xmm5
    7ece:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7ed3:	f3 45 0f 2a f9       	cvtsi2ss %r9d,%xmm15
    7ed8:	f3 41 0f 5c c6       	subss  %xmm14,%xmm0
    7edd:	f3 41 0f 59 ef       	mulss  %xmm15,%xmm5
    7ee2:	44 0f 28 f8          	movaps %xmm0,%xmm15
    7ee6:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7eed:	f3 41 0f 2c c7       	cvttss2si %xmm15,%eax
    7ef2:	f3 41 0f 5c ee       	subss  %xmm14,%xmm5
    7ef7:	44 0f 28 fd          	movaps %xmm5,%xmm15
    7efb:	66 45 0f 3a 0a ff 09 	roundss $0x9,%xmm15,%xmm15
    7f02:	f3 41 0f 2c ff       	cvttss2si %xmm15,%edi
    7f07:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    7f0c:	f3 44 0f 2a f8       	cvtsi2ss %eax,%xmm15
    7f11:	f3 41 0f 5c c7       	subss  %xmm15,%xmm0
    7f16:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # 7f1e <sg_raster_triangle_depth_capture+0x4a6e>
    7f1d:	00 
    7f1e:	f3 41 0f 58 c6       	addss  %xmm14,%xmm0
    7f23:	f3 0f 2c f0          	cvttss2si %xmm0,%esi
    7f27:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7f2b:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
    7f2f:	85 f6                	test   %esi,%esi
    7f31:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    7f35:	f3 0f 59 2d 00 00 00 	mulss  0x0(%rip),%xmm5        # 7f3d <sg_raster_triangle_depth_capture+0x4a8d>
    7f3c:	00 
    7f3d:	0f 48 f2             	cmovs  %edx,%esi
    7f40:	ba 00 01 00 00       	mov    $0x100,%edx
    7f45:	39 d6                	cmp    %edx,%esi
    7f47:	0f 4f f2             	cmovg  %edx,%esi
    7f4a:	31 d2                	xor    %edx,%edx
    7f4c:	f3 41 0f 58 ee       	addss  %xmm14,%xmm5
    7f51:	f3 44 0f 2c c5       	cvttss2si %xmm5,%r8d
    7f56:	45 85 c0             	test   %r8d,%r8d
    7f59:	44 0f 48 c2          	cmovs  %edx,%r8d
    7f5d:	ba 00 01 00 00       	mov    $0x100,%edx
    7f62:	89 d3                	mov    %edx,%ebx
    7f64:	41 39 d0             	cmp    %edx,%r8d
    7f67:	44 0f 4f c2          	cmovg  %edx,%r8d
    7f6b:	29 f3                	sub    %esi,%ebx
    7f6d:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%rsp)
    7f74:	8d 58 01             	lea    0x1(%rax),%ebx
    7f77:	44 29 c2             	sub    %r8d,%edx
    7f7a:	89 9c 24 80 01 00 00 	mov    %ebx,0x180(%rsp)
    7f81:	89 94 24 60 01 00 00 	mov    %edx,0x160(%rsp)
    7f88:	8d 57 01             	lea    0x1(%rdi),%edx
    7f8b:	89 94 24 a0 01 00 00 	mov    %edx,0x1a0(%rsp)
    7f92:	45 85 d2             	test   %r10d,%r10d
    7f95:	0f 8e 73 1c 00 00    	jle    9c0e <sg_raster_triangle_depth_capture+0x675e>
    7f9b:	45 8d 5a ff          	lea    -0x1(%r10),%r11d
    7f9f:	45 85 da             	test   %r11d,%r10d
    7fa2:	0f 85 66 1c 00 00    	jne    9c0e <sg_raster_triangle_depth_capture+0x675e>
    7fa8:	45 85 c9             	test   %r9d,%r9d
    7fab:	0f 8e e8 2f 00 00    	jle    af99 <sg_raster_triangle_depth_capture+0x7ae9>
    7fb1:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    7fb5:	41 85 d9             	test   %ebx,%r9d
    7fb8:	0f 85 db 2f 00 00    	jne    af99 <sg_raster_triangle_depth_capture+0x7ae9>
    7fbe:	45 85 db             	test   %r11d,%r11d
    7fc1:	0f 84 2b 47 00 00    	je     c6f2 <sg_raster_triangle_depth_capture+0x9242>
    7fc7:	44 21 d8             	and    %r11d,%eax
    7fca:	89 c5                	mov    %eax,%ebp
    7fcc:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    7fd3:	41 21 c3             	and    %eax,%r11d
    7fd6:	e9 72 1c 00 00       	jmp    9c4d <sg_raster_triangle_depth_capture+0x679d>
    7fdb:	0f 57 0d 00 00 00 00 	xorps  0x0(%rip),%xmm1        # 7fe2 <sg_raster_triangle_depth_capture+0x4b32>
    7fe2:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    7fe6:	0f 59 c1             	mulps  %xmm1,%xmm0
    7fe9:	e9 8b d4 ff ff       	jmp    5479 <sg_raster_triangle_depth_capture+0x1fc9>
    7fee:	41 0f 28 dd          	movaps %xmm13,%xmm3
    7ff2:	41 0f 28 d0          	movaps %xmm8,%xmm2
    7ff6:	0f 28 cf             	movaps %xmm7,%xmm1
    7ff9:	48 89 c7             	mov    %rax,%rdi
    7ffc:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    8003:	00 
    8004:	48 8d 9c 24 b0 03 00 	lea    0x3b0(%rsp),%rbx
    800b:	00 
    800c:	41 0f 28 c1          	movaps %xmm9,%xmm0
    8010:	4c 8d 8c 24 20 03 00 	lea    0x320(%rsp),%r9
    8017:	00 
    8018:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    801f:	01 00 00 
    8022:	49 89 d8             	mov    %rbx,%r8
    8025:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    802c:	01 00 00 
    802f:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8036:	01 00 00 
    8039:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8040:	00 00 
    8042:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8049:	01 00 00 
    804c:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8053:	01 00 00 
    8056:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    805d:	00 00 
    805f:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8066:	01 00 00 
    8069:	e8 00 00 00 00       	call   806e <sg_raster_triangle_depth_capture+0x4bbe>
    806e:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    8075:	00 
    8076:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    807d:	01 00 00 
    8080:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8087:	00 00 
    8089:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8090:	01 00 00 
    8093:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    809a:	01 00 00 
    809d:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    80a3:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    80aa:	00 00 
    80ac:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    80b3:	01 00 00 
    80b6:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    80bd:	01 00 00 
    80c0:	85 c0                	test   %eax,%eax
    80c2:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    80c9:	01 00 00 
    80cc:	0f 85 17 25 00 00    	jne    a5e9 <sg_raster_triangle_depth_capture+0x7139>
    80d2:	44 8b a4 24 20 03 00 	mov    0x320(%rsp),%r12d
    80d9:	00 
    80da:	45 85 e4             	test   %r12d,%r12d
    80dd:	0f 84 8c 00 00 00    	je     816f <sg_raster_triangle_depth_capture+0x4cbf>
    80e3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    80e8:	49 89 d8             	mov    %rbx,%r8
    80eb:	31 f6                	xor    %esi,%esi
    80ed:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    80f4:	00 
    80f5:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    80fc:	00 
    80fd:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8104:	00 
    8105:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    810c:	e8 00 00 00 00       	call   8111 <sg_raster_triangle_depth_capture+0x4c61>
    8111:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8118:	00 
    8119:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8120:	01 00 00 
    8123:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    812a:	01 00 00 
    812d:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8134:	01 00 00 
    8137:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    813e:	00 00 
    8140:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8147:	01 00 00 
    814a:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    8151:	00 
    8152:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8159:	01 00 00 
    815c:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8163:	00 00 
    8165:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    816c:	01 00 00 
    816f:	8b ac 24 24 03 00 00 	mov    0x324(%rsp),%ebp
    8176:	85 ed                	test   %ebp,%ebp
    8178:	0f 84 dd 00 00 00    	je     825b <sg_raster_triangle_depth_capture+0x4dab>
    817e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8183:	49 89 d8             	mov    %rbx,%r8
    8186:	be 01 00 00 00       	mov    $0x1,%esi
    818b:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8192:	00 
    8193:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    819a:	00 
    819b:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    81a2:	00 
    81a3:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    81aa:	01 00 00 
    81ad:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    81b4:	00 00 
    81b6:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    81bd:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    81c4:	01 00 00 
    81c7:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    81ce:	01 00 00 
    81d1:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    81d8:	01 00 00 
    81db:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    81e2:	01 00 00 
    81e5:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    81ec:	00 00 
    81ee:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    81f5:	01 00 00 
    81f8:	e8 00 00 00 00       	call   81fd <sg_raster_triangle_depth_capture+0x4d4d>
    81fd:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8204:	00 
    8205:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    820c:	01 00 00 
    820f:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8216:	01 00 00 
    8219:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8220:	01 00 00 
    8223:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    822a:	00 00 
    822c:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8233:	01 00 00 
    8236:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    823d:	00 
    823e:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8245:	01 00 00 
    8248:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    824f:	00 00 
    8251:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8258:	01 00 00 
    825b:	44 8b 9c 24 28 03 00 	mov    0x328(%rsp),%r11d
    8262:	00 
    8263:	45 85 db             	test   %r11d,%r11d
    8266:	0f 84 dd 00 00 00    	je     8349 <sg_raster_triangle_depth_capture+0x4e99>
    826c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8271:	49 89 d8             	mov    %rbx,%r8
    8274:	be 02 00 00 00       	mov    $0x2,%esi
    8279:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8280:	00 
    8281:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8288:	00 
    8289:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8290:	00 
    8291:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8298:	01 00 00 
    829b:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    82a2:	00 00 
    82a4:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    82ab:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    82b2:	01 00 00 
    82b5:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    82bc:	01 00 00 
    82bf:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    82c6:	01 00 00 
    82c9:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    82d0:	01 00 00 
    82d3:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    82da:	00 00 
    82dc:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    82e3:	01 00 00 
    82e6:	e8 00 00 00 00       	call   82eb <sg_raster_triangle_depth_capture+0x4e3b>
    82eb:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    82f2:	00 
    82f3:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    82fa:	01 00 00 
    82fd:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8304:	01 00 00 
    8307:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    830e:	01 00 00 
    8311:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8318:	00 00 
    831a:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8321:	01 00 00 
    8324:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    832b:	00 
    832c:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8333:	01 00 00 
    8336:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    833d:	00 00 
    833f:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8346:	01 00 00 
    8349:	44 8b 94 24 2c 03 00 	mov    0x32c(%rsp),%r10d
    8350:	00 
    8351:	45 85 d2             	test   %r10d,%r10d
    8354:	0f 84 c4 28 00 00    	je     ac1e <sg_raster_triangle_depth_capture+0x776e>
    835a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    835f:	49 89 d8             	mov    %rbx,%r8
    8362:	be 03 00 00 00       	mov    $0x3,%esi
    8367:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    836e:	00 
    836f:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8376:	00 
    8377:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    837e:	00 
    837f:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8386:	01 00 00 
    8389:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8390:	00 00 
    8392:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    8399:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    83a0:	01 00 00 
    83a3:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    83aa:	01 00 00 
    83ad:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    83b4:	01 00 00 
    83b7:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    83be:	01 00 00 
    83c1:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    83c8:	00 00 
    83ca:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    83d1:	01 00 00 
    83d4:	e8 00 00 00 00       	call   83d9 <sg_raster_triangle_depth_capture+0x4f29>
    83d9:	f3 0f 10 8c 24 70 03 	movss  0x370(%rsp),%xmm1
    83e0:	00 00 
    83e2:	f3 0f 10 94 24 74 03 	movss  0x374(%rsp),%xmm2
    83e9:	00 00 
    83eb:	f3 0f 10 9c 24 78 03 	movss  0x378(%rsp),%xmm3
    83f2:	00 00 
    83f4:	f3 0f 10 a4 24 7c 03 	movss  0x37c(%rsp),%xmm4
    83fb:	00 00 
    83fd:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8404:	01 00 00 
    8407:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    840e:	00 00 
    8410:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    8417:	00 00 
    8419:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8420:	01 00 00 
    8423:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    842a:	01 00 00 
    842d:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    8434:	00 00 
    8436:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    843d:	00 00 
    843f:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8446:	01 00 00 
    8449:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    8450:	00 00 
    8452:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8459:	01 00 00 
    845c:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8463:	01 00 00 
    8466:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    846d:	00 00 
    846f:	e9 66 d7 ff ff       	jmp    5bda <sg_raster_triangle_depth_capture+0x272a>
    8474:	41 0f 28 dd          	movaps %xmm13,%xmm3
    8478:	41 0f 28 d1          	movaps %xmm9,%xmm2
    847c:	41 0f 28 c8          	movaps %xmm8,%xmm1
    8480:	48 89 c7             	mov    %rax,%rdi
    8483:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    848a:	00 
    848b:	48 8d 9c 24 b0 03 00 	lea    0x3b0(%rsp),%rbx
    8492:	00 
    8493:	0f 28 c7             	movaps %xmm7,%xmm0
    8496:	4c 8d 8c 24 20 03 00 	lea    0x320(%rsp),%r9
    849d:	00 
    849e:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    84a5:	01 00 00 
    84a8:	49 89 d8             	mov    %rbx,%r8
    84ab:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    84b2:	01 00 00 
    84b5:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    84bc:	01 00 00 
    84bf:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    84c6:	00 00 
    84c8:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    84cf:	01 00 00 
    84d2:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    84d9:	01 00 00 
    84dc:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    84e3:	01 00 00 
    84e6:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    84ed:	00 00 
    84ef:	e8 00 00 00 00       	call   84f4 <sg_raster_triangle_depth_capture+0x5044>
    84f4:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    84fb:	00 
    84fc:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    8503:	00 00 
    8505:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    850c:	01 00 00 
    850f:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    8516:	01 00 00 
    8519:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8520:	01 00 00 
    8523:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    8529:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8530:	00 00 
    8532:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8539:	01 00 00 
    853c:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8543:	01 00 00 
    8546:	85 c0                	test   %eax,%eax
    8548:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    854f:	01 00 00 
    8552:	0f 85 2c 1f 00 00    	jne    a484 <sg_raster_triangle_depth_capture+0x6fd4>
    8558:	8b 84 24 20 03 00 00 	mov    0x320(%rsp),%eax
    855f:	85 c0                	test   %eax,%eax
    8561:	0f 84 8c 00 00 00    	je     85f3 <sg_raster_triangle_depth_capture+0x5143>
    8567:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    856c:	49 89 d8             	mov    %rbx,%r8
    856f:	31 f6                	xor    %esi,%esi
    8571:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8578:	00 
    8579:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8580:	00 
    8581:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8588:	00 
    8589:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    8590:	e8 00 00 00 00       	call   8595 <sg_raster_triangle_depth_capture+0x50e5>
    8595:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    859c:	00 
    859d:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    85a4:	01 00 00 
    85a7:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    85ae:	01 00 00 
    85b1:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    85b8:	01 00 00 
    85bb:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    85c2:	00 00 
    85c4:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    85cb:	01 00 00 
    85ce:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    85d5:	00 
    85d6:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    85dd:	01 00 00 
    85e0:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    85e7:	01 00 00 
    85ea:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    85f1:	00 00 
    85f3:	8b 84 24 24 03 00 00 	mov    0x324(%rsp),%eax
    85fa:	85 c0                	test   %eax,%eax
    85fc:	0f 84 dd 00 00 00    	je     86df <sg_raster_triangle_depth_capture+0x522f>
    8602:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8607:	49 89 d8             	mov    %rbx,%r8
    860a:	be 01 00 00 00       	mov    $0x1,%esi
    860f:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8616:	00 
    8617:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    861e:	00 
    861f:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8626:	00 
    8627:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    862e:	01 00 00 
    8631:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8638:	00 00 
    863a:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    8641:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8648:	01 00 00 
    864b:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8652:	01 00 00 
    8655:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    865c:	01 00 00 
    865f:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    8666:	01 00 00 
    8669:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    8670:	01 00 00 
    8673:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    867a:	00 00 
    867c:	e8 00 00 00 00       	call   8681 <sg_raster_triangle_depth_capture+0x51d1>
    8681:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8688:	00 
    8689:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8690:	01 00 00 
    8693:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    869a:	01 00 00 
    869d:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    86a4:	01 00 00 
    86a7:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    86ae:	00 00 
    86b0:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    86b7:	01 00 00 
    86ba:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    86c1:	00 
    86c2:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    86c9:	01 00 00 
    86cc:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    86d3:	01 00 00 
    86d6:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    86dd:	00 00 
    86df:	8b ac 24 28 03 00 00 	mov    0x328(%rsp),%ebp
    86e6:	85 ed                	test   %ebp,%ebp
    86e8:	0f 84 dd 00 00 00    	je     87cb <sg_raster_triangle_depth_capture+0x531b>
    86ee:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    86f3:	49 89 d8             	mov    %rbx,%r8
    86f6:	be 02 00 00 00       	mov    $0x2,%esi
    86fb:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8702:	00 
    8703:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    870a:	00 
    870b:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8712:	00 
    8713:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    871a:	01 00 00 
    871d:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8724:	00 00 
    8726:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    872d:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8734:	01 00 00 
    8737:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    873e:	01 00 00 
    8741:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8748:	01 00 00 
    874b:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    8752:	01 00 00 
    8755:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    875c:	01 00 00 
    875f:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    8766:	00 00 
    8768:	e8 00 00 00 00       	call   876d <sg_raster_triangle_depth_capture+0x52bd>
    876d:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8774:	00 
    8775:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    877c:	01 00 00 
    877f:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8786:	01 00 00 
    8789:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8790:	01 00 00 
    8793:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    879a:	00 00 
    879c:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    87a3:	01 00 00 
    87a6:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    87ad:	00 
    87ae:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    87b5:	01 00 00 
    87b8:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    87bf:	01 00 00 
    87c2:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    87c9:	00 00 
    87cb:	44 8b 9c 24 2c 03 00 	mov    0x32c(%rsp),%r11d
    87d2:	00 
    87d3:	45 85 db             	test   %r11d,%r11d
    87d6:	0f 84 19 24 00 00    	je     abf5 <sg_raster_triangle_depth_capture+0x7745>
    87dc:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    87e1:	49 89 d8             	mov    %rbx,%r8
    87e4:	be 03 00 00 00       	mov    $0x3,%esi
    87e9:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    87f0:	00 
    87f1:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    87f8:	00 
    87f9:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8800:	00 
    8801:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8808:	01 00 00 
    880b:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8812:	00 00 
    8814:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    881b:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8822:	01 00 00 
    8825:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    882c:	01 00 00 
    882f:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8836:	01 00 00 
    8839:	f3 44 0f 11 8c 24 70 	movss  %xmm9,0x170(%rsp)
    8840:	01 00 00 
    8843:	f3 44 0f 11 84 24 60 	movss  %xmm8,0x160(%rsp)
    884a:	01 00 00 
    884d:	f3 0f 11 bc 24 20 01 	movss  %xmm7,0x120(%rsp)
    8854:	00 00 
    8856:	e8 00 00 00 00       	call   885b <sg_raster_triangle_depth_capture+0x53ab>
    885b:	f3 0f 10 8c 24 70 03 	movss  0x370(%rsp),%xmm1
    8862:	00 00 
    8864:	f3 0f 10 94 24 74 03 	movss  0x374(%rsp),%xmm2
    886b:	00 00 
    886d:	f3 0f 10 9c 24 78 03 	movss  0x378(%rsp),%xmm3
    8874:	00 00 
    8876:	f3 0f 10 a4 24 7c 03 	movss  0x37c(%rsp),%xmm4
    887d:	00 00 
    887f:	f3 0f 10 bc 24 20 01 	movss  0x120(%rsp),%xmm7
    8886:	00 00 
    8888:	f3 44 0f 10 84 24 60 	movss  0x160(%rsp),%xmm8
    888f:	01 00 00 
    8892:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    8899:	00 00 
    889b:	f3 44 0f 10 8c 24 70 	movss  0x170(%rsp),%xmm9
    88a2:	01 00 00 
    88a5:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    88ac:	01 00 00 
    88af:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    88b6:	00 00 
    88b8:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    88bf:	00 00 
    88c1:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    88c8:	01 00 00 
    88cb:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    88d2:	00 00 
    88d4:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    88db:	01 00 00 
    88de:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    88e5:	01 00 00 
    88e8:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    88ef:	00 00 
    88f1:	e9 f4 bf ff ff       	jmp    48ea <sg_raster_triangle_depth_capture+0x143a>
    88f6:	48 89 d9             	mov    %rbx,%rcx
    88f9:	48 89 f2             	mov    %rsi,%rdx
    88fc:	41 0f 28 dd          	movaps %xmm13,%xmm3
    8900:	48 89 c7             	mov    %rax,%rdi
    8903:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    890a:	00 
    890b:	41 0f 28 d0          	movaps %xmm8,%xmm2
    890f:	0f 28 cf             	movaps %xmm7,%xmm1
    8912:	41 0f 28 c1          	movaps %xmm9,%xmm0
    8916:	48 8d 9c 24 b0 03 00 	lea    0x3b0(%rsp),%rbx
    891d:	00 
    891e:	4c 8d 8c 24 20 03 00 	lea    0x320(%rsp),%r9
    8925:	00 
    8926:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    892d:	01 00 00 
    8930:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8937:	01 00 00 
    893a:	49 89 d8             	mov    %rbx,%r8
    893d:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8944:	01 00 00 
    8947:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    894e:	00 00 
    8950:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8957:	01 00 00 
    895a:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8961:	01 00 00 
    8964:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    896b:	00 00 
    896d:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8974:	01 00 00 
    8977:	e8 00 00 00 00       	call   897c <sg_raster_triangle_depth_capture+0x54cc>
    897c:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    8983:	00 
    8984:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    898b:	01 00 00 
    898e:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8995:	00 00 
    8997:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    899e:	01 00 00 
    89a1:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    89a8:	01 00 00 
    89ab:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    89b1:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    89b8:	00 00 
    89ba:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    89c1:	01 00 00 
    89c4:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    89cb:	01 00 00 
    89ce:	85 c0                	test   %eax,%eax
    89d0:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    89d7:	01 00 00 
    89da:	0f 85 f8 18 00 00    	jne    a2d8 <sg_raster_triangle_depth_capture+0x6e28>
    89e0:	8b 84 24 20 03 00 00 	mov    0x320(%rsp),%eax
    89e7:	85 c0                	test   %eax,%eax
    89e9:	0f 84 8c 00 00 00    	je     8a7b <sg_raster_triangle_depth_capture+0x55cb>
    89ef:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    89f4:	49 89 d8             	mov    %rbx,%r8
    89f7:	31 f6                	xor    %esi,%esi
    89f9:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8a00:	00 
    8a01:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8a08:	00 
    8a09:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8a10:	00 
    8a11:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    8a18:	e8 00 00 00 00       	call   8a1d <sg_raster_triangle_depth_capture+0x556d>
    8a1d:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8a24:	00 
    8a25:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8a2c:	01 00 00 
    8a2f:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8a36:	01 00 00 
    8a39:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8a40:	01 00 00 
    8a43:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8a4a:	00 00 
    8a4c:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8a53:	01 00 00 
    8a56:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    8a5d:	00 
    8a5e:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8a65:	01 00 00 
    8a68:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8a6f:	00 00 
    8a71:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8a78:	01 00 00 
    8a7b:	8b ac 24 24 03 00 00 	mov    0x324(%rsp),%ebp
    8a82:	85 ed                	test   %ebp,%ebp
    8a84:	0f 84 dd 00 00 00    	je     8b67 <sg_raster_triangle_depth_capture+0x56b7>
    8a8a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8a8f:	49 89 d8             	mov    %rbx,%r8
    8a92:	be 01 00 00 00       	mov    $0x1,%esi
    8a97:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8a9e:	00 
    8a9f:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8aa6:	00 
    8aa7:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8aae:	00 
    8aaf:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8ab6:	01 00 00 
    8ab9:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8ac0:	00 00 
    8ac2:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    8ac9:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8ad0:	01 00 00 
    8ad3:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8ada:	01 00 00 
    8add:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8ae4:	01 00 00 
    8ae7:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8aee:	01 00 00 
    8af1:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8af8:	00 00 
    8afa:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8b01:	01 00 00 
    8b04:	e8 00 00 00 00       	call   8b09 <sg_raster_triangle_depth_capture+0x5659>
    8b09:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8b10:	00 
    8b11:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8b18:	01 00 00 
    8b1b:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8b22:	01 00 00 
    8b25:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8b2c:	01 00 00 
    8b2f:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8b36:	00 00 
    8b38:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8b3f:	01 00 00 
    8b42:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    8b49:	00 
    8b4a:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8b51:	01 00 00 
    8b54:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8b5b:	00 00 
    8b5d:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8b64:	01 00 00 
    8b67:	44 8b 9c 24 28 03 00 	mov    0x328(%rsp),%r11d
    8b6e:	00 
    8b6f:	45 85 db             	test   %r11d,%r11d
    8b72:	0f 84 dd 00 00 00    	je     8c55 <sg_raster_triangle_depth_capture+0x57a5>
    8b78:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8b7d:	49 89 d8             	mov    %rbx,%r8
    8b80:	be 02 00 00 00       	mov    $0x2,%esi
    8b85:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8b8c:	00 
    8b8d:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8b94:	00 
    8b95:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8b9c:	00 
    8b9d:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8ba4:	01 00 00 
    8ba7:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8bae:	00 00 
    8bb0:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    8bb7:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8bbe:	01 00 00 
    8bc1:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8bc8:	01 00 00 
    8bcb:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8bd2:	01 00 00 
    8bd5:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8bdc:	01 00 00 
    8bdf:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8be6:	00 00 
    8be8:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8bef:	01 00 00 
    8bf2:	e8 00 00 00 00       	call   8bf7 <sg_raster_triangle_depth_capture+0x5747>
    8bf7:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8bfe:	00 
    8bff:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8c06:	01 00 00 
    8c09:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8c10:	01 00 00 
    8c13:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8c1a:	01 00 00 
    8c1d:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8c24:	00 00 
    8c26:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8c2d:	01 00 00 
    8c30:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    8c37:	00 
    8c38:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8c3f:	01 00 00 
    8c42:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8c49:	00 00 
    8c4b:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8c52:	01 00 00 
    8c55:	44 8b 94 24 2c 03 00 	mov    0x32c(%rsp),%r10d
    8c5c:	00 
    8c5d:	45 85 d2             	test   %r10d,%r10d
    8c60:	0f 84 66 1f 00 00    	je     abcc <sg_raster_triangle_depth_capture+0x771c>
    8c66:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8c6b:	49 89 d8             	mov    %rbx,%r8
    8c6e:	be 03 00 00 00       	mov    $0x3,%esi
    8c73:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8c7a:	00 
    8c7b:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8c82:	00 
    8c83:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8c8a:	00 
    8c8b:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8c92:	01 00 00 
    8c95:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8c9c:	00 00 
    8c9e:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    8ca5:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8cac:	01 00 00 
    8caf:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8cb6:	01 00 00 
    8cb9:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8cc0:	01 00 00 
    8cc3:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8cca:	01 00 00 
    8ccd:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8cd4:	00 00 
    8cd6:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8cdd:	01 00 00 
    8ce0:	e8 00 00 00 00       	call   8ce5 <sg_raster_triangle_depth_capture+0x5835>
    8ce5:	f3 0f 10 8c 24 70 03 	movss  0x370(%rsp),%xmm1
    8cec:	00 00 
    8cee:	f3 0f 10 94 24 74 03 	movss  0x374(%rsp),%xmm2
    8cf5:	00 00 
    8cf7:	f3 0f 10 9c 24 78 03 	movss  0x378(%rsp),%xmm3
    8cfe:	00 00 
    8d00:	f3 0f 10 a4 24 7c 03 	movss  0x37c(%rsp),%xmm4
    8d07:	00 00 
    8d09:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8d10:	01 00 00 
    8d13:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8d1a:	00 00 
    8d1c:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    8d23:	00 00 
    8d25:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8d2c:	01 00 00 
    8d2f:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8d36:	01 00 00 
    8d39:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    8d40:	00 00 
    8d42:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8d49:	00 00 
    8d4b:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8d52:	01 00 00 
    8d55:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    8d5c:	00 00 
    8d5e:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8d65:	01 00 00 
    8d68:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8d6f:	01 00 00 
    8d72:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    8d79:	00 00 
    8d7b:	e9 9a bd ff ff       	jmp    4b1a <sg_raster_triangle_depth_capture+0x166a>
    8d80:	41 0f 28 dd          	movaps %xmm13,%xmm3
    8d84:	41 0f 28 d0          	movaps %xmm8,%xmm2
    8d88:	0f 28 cf             	movaps %xmm7,%xmm1
    8d8b:	48 89 c7             	mov    %rax,%rdi
    8d8e:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    8d95:	00 
    8d96:	48 8d 9c 24 b0 03 00 	lea    0x3b0(%rsp),%rbx
    8d9d:	00 
    8d9e:	41 0f 28 c1          	movaps %xmm9,%xmm0
    8da2:	4c 8d 8c 24 20 03 00 	lea    0x320(%rsp),%r9
    8da9:	00 
    8daa:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8db1:	01 00 00 
    8db4:	49 89 d8             	mov    %rbx,%r8
    8db7:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8dbe:	01 00 00 
    8dc1:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8dc8:	01 00 00 
    8dcb:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8dd2:	00 00 
    8dd4:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8ddb:	01 00 00 
    8dde:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8de5:	01 00 00 
    8de8:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8def:	00 00 
    8df1:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8df8:	01 00 00 
    8dfb:	e8 00 00 00 00       	call   8e00 <sg_raster_triangle_depth_capture+0x5950>
    8e00:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    8e07:	00 
    8e08:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8e0f:	01 00 00 
    8e12:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8e19:	00 00 
    8e1b:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8e22:	01 00 00 
    8e25:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8e2c:	01 00 00 
    8e2f:	8b 80 68 01 00 00    	mov    0x168(%rax),%eax
    8e35:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8e3c:	00 00 
    8e3e:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8e45:	01 00 00 
    8e48:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8e4f:	01 00 00 
    8e52:	85 c0                	test   %eax,%eax
    8e54:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8e5b:	01 00 00 
    8e5e:	0f 85 0f 13 00 00    	jne    a173 <sg_raster_triangle_depth_capture+0x6cc3>
    8e64:	8b 84 24 20 03 00 00 	mov    0x320(%rsp),%eax
    8e6b:	85 c0                	test   %eax,%eax
    8e6d:	0f 84 8c 00 00 00    	je     8eff <sg_raster_triangle_depth_capture+0x5a4f>
    8e73:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8e78:	49 89 d8             	mov    %rbx,%r8
    8e7b:	31 f6                	xor    %esi,%esi
    8e7d:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8e84:	00 
    8e85:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8e8c:	00 
    8e8d:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8e94:	00 
    8e95:	48 8d b8 a0 35 00 00 	lea    0x35a0(%rax),%rdi
    8e9c:	e8 00 00 00 00       	call   8ea1 <sg_raster_triangle_depth_capture+0x59f1>
    8ea1:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8ea8:	00 
    8ea9:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8eb0:	01 00 00 
    8eb3:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8eba:	01 00 00 
    8ebd:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8ec4:	01 00 00 
    8ec7:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8ece:	00 00 
    8ed0:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8ed7:	01 00 00 
    8eda:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    8ee1:	00 
    8ee2:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8ee9:	01 00 00 
    8eec:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8ef3:	00 00 
    8ef5:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8efc:	01 00 00 
    8eff:	8b ac 24 24 03 00 00 	mov    0x324(%rsp),%ebp
    8f06:	85 ed                	test   %ebp,%ebp
    8f08:	0f 84 dd 00 00 00    	je     8feb <sg_raster_triangle_depth_capture+0x5b3b>
    8f0e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    8f13:	49 89 d8             	mov    %rbx,%r8
    8f16:	be 01 00 00 00       	mov    $0x1,%esi
    8f1b:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    8f22:	00 
    8f23:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    8f2a:	00 
    8f2b:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    8f32:	00 
    8f33:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    8f3a:	01 00 00 
    8f3d:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    8f44:	00 00 
    8f46:	48 8d b8 14 36 00 00 	lea    0x3614(%rax),%rdi
    8f4d:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    8f54:	01 00 00 
    8f57:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    8f5e:	01 00 00 
    8f61:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    8f68:	01 00 00 
    8f6b:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    8f72:	01 00 00 
    8f75:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    8f7c:	00 00 
    8f7e:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    8f85:	01 00 00 
    8f88:	e8 00 00 00 00       	call   8f8d <sg_raster_triangle_depth_capture+0x5add>
    8f8d:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    8f94:	00 
    8f95:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    8f9c:	01 00 00 
    8f9f:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    8fa6:	01 00 00 
    8fa9:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    8fb0:	01 00 00 
    8fb3:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    8fba:	00 00 
    8fbc:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    8fc3:	01 00 00 
    8fc6:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    8fcd:	00 
    8fce:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    8fd5:	01 00 00 
    8fd8:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    8fdf:	00 00 
    8fe1:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    8fe8:	01 00 00 
    8feb:	44 8b 9c 24 28 03 00 	mov    0x328(%rsp),%r11d
    8ff2:	00 
    8ff3:	45 85 db             	test   %r11d,%r11d
    8ff6:	0f 84 dd 00 00 00    	je     90d9 <sg_raster_triangle_depth_capture+0x5c29>
    8ffc:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9001:	49 89 d8             	mov    %rbx,%r8
    9004:	be 02 00 00 00       	mov    $0x2,%esi
    9009:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    9010:	00 
    9011:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    9018:	00 
    9019:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    9020:	00 
    9021:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    9028:	01 00 00 
    902b:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    9032:	00 00 
    9034:	48 8d b8 88 36 00 00 	lea    0x3688(%rax),%rdi
    903b:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    9042:	01 00 00 
    9045:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    904c:	01 00 00 
    904f:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    9056:	01 00 00 
    9059:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    9060:	01 00 00 
    9063:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    906a:	00 00 
    906c:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    9073:	01 00 00 
    9076:	e8 00 00 00 00       	call   907b <sg_raster_triangle_depth_capture+0x5bcb>
    907b:	0f 28 84 24 70 03 00 	movaps 0x370(%rsp),%xmm0
    9082:	00 
    9083:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    908a:	01 00 00 
    908d:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    9094:	01 00 00 
    9097:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    909e:	01 00 00 
    90a1:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    90a8:	00 00 
    90aa:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    90b1:	01 00 00 
    90b4:	0f 29 84 24 00 03 00 	movaps %xmm0,0x300(%rsp)
    90bb:	00 
    90bc:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    90c3:	01 00 00 
    90c6:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    90cd:	00 00 
    90cf:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    90d6:	01 00 00 
    90d9:	44 8b 94 24 2c 03 00 	mov    0x32c(%rsp),%r10d
    90e0:	00 
    90e1:	45 85 d2             	test   %r10d,%r10d
    90e4:	0f 84 5d 1b 00 00    	je     ac47 <sg_raster_triangle_depth_capture+0x7797>
    90ea:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    90ef:	49 89 d8             	mov    %rbx,%r8
    90f2:	be 03 00 00 00       	mov    $0x3,%esi
    90f7:	48 8d 8c 24 00 03 00 	lea    0x300(%rsp),%rcx
    90fe:	00 
    90ff:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
    9106:	00 
    9107:	4c 8d 8c 24 70 03 00 	lea    0x370(%rsp),%r9
    910e:	00 
    910f:	f3 44 0f 11 a4 24 d0 	movss  %xmm12,0x1d0(%rsp)
    9116:	01 00 00 
    9119:	f3 0f 11 b4 24 a0 01 	movss  %xmm6,0x1a0(%rsp)
    9120:	00 00 
    9122:	48 8d b8 fc 36 00 00 	lea    0x36fc(%rax),%rdi
    9129:	f3 44 0f 11 9c 24 c0 	movss  %xmm11,0x1c0(%rsp)
    9130:	01 00 00 
    9133:	f3 44 0f 11 94 24 b0 	movss  %xmm10,0x1b0(%rsp)
    913a:	01 00 00 
    913d:	f3 44 0f 11 ac 24 80 	movss  %xmm13,0x180(%rsp)
    9144:	01 00 00 
    9147:	f3 44 0f 11 84 24 70 	movss  %xmm8,0x170(%rsp)
    914e:	01 00 00 
    9151:	f3 0f 11 bc 24 60 01 	movss  %xmm7,0x160(%rsp)
    9158:	00 00 
    915a:	f3 44 0f 11 8c 24 20 	movss  %xmm9,0x120(%rsp)
    9161:	01 00 00 
    9164:	e8 00 00 00 00       	call   9169 <sg_raster_triangle_depth_capture+0x5cb9>
    9169:	f3 0f 10 8c 24 70 03 	movss  0x370(%rsp),%xmm1
    9170:	00 00 
    9172:	f3 0f 10 94 24 74 03 	movss  0x374(%rsp),%xmm2
    9179:	00 00 
    917b:	f3 0f 10 9c 24 78 03 	movss  0x378(%rsp),%xmm3
    9182:	00 00 
    9184:	f3 0f 10 a4 24 7c 03 	movss  0x37c(%rsp),%xmm4
    918b:	00 00 
    918d:	f3 44 0f 10 8c 24 20 	movss  0x120(%rsp),%xmm9
    9194:	01 00 00 
    9197:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    919e:	00 00 
    91a0:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    91a7:	00 00 
    91a9:	f3 44 0f 10 84 24 70 	movss  0x170(%rsp),%xmm8
    91b0:	01 00 00 
    91b3:	f3 44 0f 10 ac 24 80 	movss  0x180(%rsp),%xmm13
    91ba:	01 00 00 
    91bd:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    91c4:	00 00 
    91c6:	f3 0f 10 b4 24 a0 01 	movss  0x1a0(%rsp),%xmm6
    91cd:	00 00 
    91cf:	f3 44 0f 10 94 24 b0 	movss  0x1b0(%rsp),%xmm10
    91d6:	01 00 00 
    91d9:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    91e0:	00 00 
    91e2:	f3 44 0f 10 9c 24 c0 	movss  0x1c0(%rsp),%xmm11
    91e9:	01 00 00 
    91ec:	f3 44 0f 10 a4 24 d0 	movss  0x1d0(%rsp),%xmm12
    91f3:	01 00 00 
    91f6:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    91fd:	00 00 
    91ff:	e9 46 bb ff ff       	jmp    4d4a <sg_raster_triangle_depth_capture+0x189a>
    9204:	48 01 bc 24 d8 00 00 	add    %rdi,0xd8(%rsp)
    920b:	00 
    920c:	e9 d3 a7 ff ff       	jmp    39e4 <sg_raster_triangle_depth_capture+0x534>
    9211:	48 01 94 24 d0 00 00 	add    %rdx,0xd0(%rsp)
    9218:	00 
    9219:	e9 78 a7 ff ff       	jmp    3996 <sg_raster_triangle_depth_capture+0x4e6>
    921e:	48 01 8c 24 c8 00 00 	add    %rcx,0xc8(%rsp)
    9225:	00 
    9226:	e9 29 a7 ff ff       	jmp    3954 <sg_raster_triangle_depth_capture+0x4a4>
    922b:	44 89 d8             	mov    %r11d,%eax
    922e:	99                   	cltd
    922f:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    9236:	41 89 d3             	mov    %edx,%r11d
    9239:	85 d2                	test   %edx,%edx
    923b:	0f 88 e7 18 00 00    	js     ab28 <sg_raster_triangle_depth_capture+0x7678>
    9241:	89 c8                	mov    %ecx,%eax
    9243:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    924a:	99                   	cltd
    924b:	f7 f9                	idiv   %ecx
    924d:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    9250:	85 d2                	test   %edx,%edx
    9252:	0f 48 d0             	cmovs  %eax,%edx
    9255:	e9 13 e4 ff ff       	jmp    766d <sg_raster_triangle_depth_capture+0x41bd>
    925a:	44 89 d8             	mov    %r11d,%eax
    925d:	99                   	cltd
    925e:	f7 bc 24 60 01 00 00 	idivl  0x160(%rsp)
    9265:	41 89 d3             	mov    %edx,%r11d
    9268:	85 d2                	test   %edx,%edx
    926a:	0f 88 74 18 00 00    	js     aae4 <sg_raster_triangle_depth_capture+0x7634>
    9270:	89 c8                	mov    %ecx,%eax
    9272:	8b 8c 24 60 01 00 00 	mov    0x160(%rsp),%ecx
    9279:	99                   	cltd
    927a:	f7 f9                	idiv   %ecx
    927c:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
    927f:	85 d2                	test   %edx,%edx
    9281:	0f 48 d0             	cmovs  %eax,%edx
    9284:	e9 b5 e5 ff ff       	jmp    783e <sg_raster_triangle_depth_capture+0x438e>
    9289:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    928d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    9292:	41 0f 28 e2          	movaps %xmm10,%xmm4
    9296:	0f 28 d7             	movaps %xmm7,%xmm2
    9299:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    92a0:	41 0f 28 d8          	movaps %xmm8,%xmm3
    92a4:	0f 28 ce             	movaps %xmm6,%xmm1
    92a7:	66 0f 6e c0          	movd   %eax,%xmm0
    92ab:	44 89 94 24 b0 01 00 	mov    %r10d,0x1b0(%rsp)
    92b2:	00 
    92b3:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
    92ba:	00 
    92bb:	44 0f 29 94 24 a0 01 	movaps %xmm10,0x1a0(%rsp)
    92c2:	00 00 
    92c4:	44 0f 29 84 24 80 01 	movaps %xmm8,0x180(%rsp)
    92cb:	00 00 
    92cd:	0f 29 bc 24 70 01 00 	movaps %xmm7,0x170(%rsp)
    92d4:	00 
    92d5:	0f 29 b4 24 60 01 00 	movaps %xmm6,0x160(%rsp)
    92dc:	00 
    92dd:	e8 00 00 00 00       	call   92e2 <sg_raster_triangle_depth_capture+0x5e32>
    92e2:	85 db                	test   %ebx,%ebx
    92e4:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
    92eb:	00 
    92ec:	0f 28 b4 24 60 01 00 	movaps 0x160(%rsp),%xmm6
    92f3:	00 
    92f4:	0f 28 bc 24 70 01 00 	movaps 0x170(%rsp),%xmm7
    92fb:	00 
    92fc:	44 8b 94 24 b0 01 00 	mov    0x1b0(%rsp),%r10d
    9303:	00 
    9304:	44 0f 28 84 24 80 01 	movaps 0x180(%rsp),%xmm8
    930b:	00 00 
    930d:	44 0f 28 94 24 a0 01 	movaps 0x1a0(%rsp),%xmm10
    9314:	00 00 
    9316:	0f 84 9d 00 00 00    	je     93b9 <sg_raster_triangle_depth_capture+0x5f09>
    931c:	41 0f 28 ea          	movaps %xmm10,%xmm5
    9320:	48 c1 e8 20          	shr    $0x20,%rax
    9324:	8b 74 24 30          	mov    0x30(%rsp),%esi
    9328:	0f 29 bc 24 60 01 00 	movaps %xmm7,0x160(%rsp)
    932f:	00 
    9330:	41 0f c6 ea 55       	shufps $0x55,%xmm10,%xmm5
    9335:	0f 28 e5             	movaps %xmm5,%xmm4
    9338:	41 0f 28 e8          	movaps %xmm8,%xmm5
    933c:	66 0f 6e c0          	movd   %eax,%xmm0
    9340:	41 0f c6 e8 55       	shufps $0x55,%xmm8,%xmm5
    9345:	0f 28 dd             	movaps %xmm5,%xmm3
    9348:	0f 28 ef             	movaps %xmm7,%xmm5
    934b:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
    9352:	0f c6 ef 55          	shufps $0x55,%xmm7,%xmm5
    9356:	0f 28 fe             	movaps %xmm6,%xmm7
    9359:	0f 28 d5             	movaps %xmm5,%xmm2
    935c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    9361:	0f c6 fe 55          	shufps $0x55,%xmm6,%xmm7
    9365:	0f 28 cf             	movaps %xmm7,%xmm1
    9368:	44 89 94 24 a0 01 00 	mov    %r10d,0x1a0(%rsp)
    936f:	00 
    9370:	44 0f 29 94 24 80 01 	movaps %xmm10,0x180(%rsp)
    9377:	00 00 
    9379:	44 0f 29 84 24 70 01 	movaps %xmm8,0x170(%rsp)
    9380:	00 00 
    9382:	0f 29 b4 24 20 01 00 	movaps %xmm6,0x120(%rsp)
    9389:	00 
    938a:	e8 00 00 00 00       	call   938f <sg_raster_triangle_depth_capture+0x5edf>
    938f:	0f 28 b4 24 20 01 00 	movaps 0x120(%rsp),%xmm6
    9396:	00 
    9397:	0f 28 bc 24 60 01 00 	movaps 0x160(%rsp),%xmm7
    939e:	00 
    939f:	44 0f 28 84 24 70 01 	movaps 0x170(%rsp),%xmm8
    93a6:	00 00 
    93a8:	44 8b 94 24 a0 01 00 	mov    0x1a0(%rsp),%r10d
    93af:	00 
    93b0:	44 0f 28 94 24 80 01 	movaps 0x180(%rsp),%xmm10
    93b7:	00 00 
    93b9:	45 85 d2             	test   %r10d,%r10d
    93bc:	0f 85 03 e0 ff ff    	jne    73c5 <sg_raster_triangle_depth_capture+0x3f15>
    93c2:	e9 80 e0 ff ff       	jmp    7447 <sg_raster_triangle_depth_capture+0x3f97>
    93c7:	44 8b 94 24 38 01 00 	mov    0x138(%rsp),%r10d
    93ce:	00 
    93cf:	45 85 d2             	test   %r10d,%r10d
    93d2:	0f 84 34 0d 00 00    	je     a10c <sg_raster_triangle_depth_capture+0x6c5c>
    93d8:	48 89 f0             	mov    %rsi,%rax
    93db:	8b b6 c0 3d 00 00    	mov    0x3dc0(%rsi),%esi
    93e1:	85 f6                	test   %esi,%esi
    93e3:	0f 84 0f 0d 00 00    	je     a0f8 <sg_raster_triangle_depth_capture+0x6c48>
    93e9:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    93f0:	01 00 00 00 
    93f4:	c7 84 24 38 01 00 00 	movl   $0x0,0x138(%rsp)
    93fb:	00 00 00 00 
    93ff:	b9 01 00 00 00       	mov    $0x1,%ecx
    9404:	e9 a7 a7 ff ff       	jmp    3bb0 <sg_raster_triangle_depth_capture+0x700>
    9409:	0f 28 cd             	movaps %xmm5,%xmm1
    940c:	e9 b2 c0 ff ff       	jmp    54c3 <sg_raster_triangle_depth_capture+0x2013>
    9411:	31 c0                	xor    %eax,%eax
    9413:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9417:	e9 ce c1 ff ff       	jmp    55ea <sg_raster_triangle_depth_capture+0x213a>
    941c:	99                   	cltd
    941d:	41 f7 fc             	idiv   %r12d
    9420:	41 89 d2             	mov    %edx,%r10d
    9423:	89 d3                	mov    %edx,%ebx
    9425:	45 85 c9             	test   %r9d,%r9d
    9428:	0f 8e 40 02 00 00    	jle    966e <sg_raster_triangle_depth_capture+0x61be>
    942e:	45 8d 59 ff          	lea    -0x1(%r9),%r11d
    9432:	45 85 d9             	test   %r11d,%r9d
    9435:	0f 85 33 02 00 00    	jne    966e <sg_raster_triangle_depth_capture+0x61be>
    943b:	85 d2                	test   %edx,%edx
    943d:	42 8d 04 22          	lea    (%rdx,%r12,1),%eax
    9441:	0f 48 d8             	cmovs  %eax,%ebx
    9444:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    944b:	99                   	cltd
    944c:	41 f7 fc             	idiv   %r12d
    944f:	46 8d 14 22          	lea    (%rdx,%r12,1),%r10d
    9453:	85 d2                	test   %edx,%edx
    9455:	44 0f 49 d2          	cmovns %edx,%r10d
    9459:	45 85 db             	test   %r11d,%r11d
    945c:	0f 84 2a 02 00 00    	je     968c <sg_raster_triangle_depth_capture+0x61dc>
    9462:	8b 94 24 80 01 00 00 	mov    0x180(%rsp),%edx
    9469:	44 21 df             	and    %r11d,%edi
    946c:	44 21 da             	and    %r11d,%edx
    946f:	41 0f af fc          	imul   %r12d,%edi
    9473:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    9478:	66 0f ef c0          	pxor   %xmm0,%xmm0
    947c:	41 0f af d4          	imul   %r12d,%edx
    9480:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    9485:	66 0f ef ed          	pxor   %xmm5,%xmm5
    9489:	44 8d 0c 1f          	lea    (%rdi,%rbx,1),%r9d
    948d:	44 01 d7             	add    %r10d,%edi
    9490:	41 c1 e1 02          	shl    $0x2,%r9d
    9494:	c1 e7 02             	shl    $0x2,%edi
    9497:	8d 04 1a             	lea    (%rdx,%rbx,1),%eax
    949a:	44 01 d2             	add    %r10d,%edx
    949d:	4d 63 c9             	movslq %r9d,%r9
    94a0:	48 63 ff             	movslq %edi,%rdi
    94a3:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    94aa:	c1 e0 02             	shl    $0x2,%eax
    94ad:	46 0f b6 14 09       	movzbl (%rcx,%r9,1),%r10d
    94b2:	44 0f b6 1c 39       	movzbl (%rcx,%rdi,1),%r11d
    94b7:	c1 e2 02             	shl    $0x2,%edx
    94ba:	48 98                	cltq
    94bc:	48 63 d2             	movslq %edx,%rdx
    94bf:	44 0f af de          	imul   %esi,%r11d
    94c3:	44 0f b6 24 11       	movzbl (%rcx,%rdx,1),%r12d
    94c8:	44 0f af d5          	imul   %ebp,%r10d
    94cc:	44 0f af e6          	imul   %esi,%r12d
    94d0:	45 01 da             	add    %r11d,%r10d
    94d3:	41 89 db             	mov    %ebx,%r11d
    94d6:	45 0f af da          	imul   %r10d,%r11d
    94da:	44 0f b6 14 01       	movzbl (%rcx,%rax,1),%r10d
    94df:	44 0f af d5          	imul   %ebp,%r10d
    94e3:	45 01 e2             	add    %r12d,%r10d
    94e6:	44 0f b6 64 11 01    	movzbl 0x1(%rcx,%rdx,1),%r12d
    94ec:	45 0f af d0          	imul   %r8d,%r10d
    94f0:	47 8d 94 13 00 80 00 	lea    0x8000(%r11,%r10,1),%r10d
    94f7:	00 
    94f8:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    94fe:	41 c1 fa 10          	sar    $0x10,%r10d
    9502:	45 39 da             	cmp    %r11d,%r10d
    9505:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9509:	44 0f b6 5c 39 01    	movzbl 0x1(%rcx,%rdi,1),%r11d
    950f:	44 0f af e6          	imul   %esi,%r12d
    9513:	f3 45 0f 2a fa       	cvtsi2ss %r10d,%xmm15
    9518:	46 0f b6 54 09 01    	movzbl 0x1(%rcx,%r9,1),%r10d
    951e:	44 0f af de          	imul   %esi,%r11d
    9522:	44 0f af d5          	imul   %ebp,%r10d
    9526:	45 01 da             	add    %r11d,%r10d
    9529:	41 89 db             	mov    %ebx,%r11d
    952c:	45 0f af da          	imul   %r10d,%r11d
    9530:	44 0f b6 54 01 01    	movzbl 0x1(%rcx,%rax,1),%r10d
    9536:	44 0f af d5          	imul   %ebp,%r10d
    953a:	45 01 e2             	add    %r12d,%r10d
    953d:	44 0f b6 64 11 02    	movzbl 0x2(%rcx,%rdx,1),%r12d
    9543:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    9548:	45 0f af d0          	imul   %r8d,%r10d
    954c:	47 8d 94 13 00 80 00 	lea    0x8000(%r11,%r10,1),%r10d
    9553:	00 
    9554:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    955a:	41 c1 fa 10          	sar    $0x10,%r10d
    955e:	45 39 da             	cmp    %r11d,%r10d
    9561:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9565:	44 0f b6 5c 39 02    	movzbl 0x2(%rcx,%rdi,1),%r11d
    956b:	44 0f af e6          	imul   %esi,%r12d
    956f:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    9574:	f3 41 0f 2a c2       	cvtsi2ss %r10d,%xmm0
    9579:	46 0f b6 54 09 02    	movzbl 0x2(%rcx,%r9,1),%r10d
    957f:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    9585:	44 0f af de          	imul   %esi,%r11d
    9589:	44 0f af d5          	imul   %ebp,%r10d
    958d:	45 01 da             	add    %r11d,%r10d
    9590:	41 89 db             	mov    %ebx,%r11d
    9593:	45 0f af da          	imul   %r10d,%r11d
    9597:	44 0f b6 54 01 02    	movzbl 0x2(%rcx,%rax,1),%r10d
    959d:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    95a2:	44 0f af d5          	imul   %ebp,%r10d
    95a6:	45 01 e2             	add    %r12d,%r10d
    95a9:	45 0f af d0          	imul   %r8d,%r10d
    95ad:	47 8d 94 13 00 80 00 	lea    0x8000(%r11,%r10,1),%r10d
    95b4:	00 
    95b5:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    95bb:	41 c1 fa 10          	sar    $0x10,%r10d
    95bf:	45 39 da             	cmp    %r11d,%r10d
    95c2:	45 0f 4f d3          	cmovg  %r11d,%r10d
    95c6:	0f af d6             	imul   %esi,%edx
    95c9:	44 0f af cd          	imul   %ebp,%r9d
    95cd:	0f af fe             	imul   %esi,%edi
    95d0:	0f af c5             	imul   %ebp,%eax
    95d3:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    95d8:	41 01 f9             	add    %edi,%r9d
    95db:	01 d0                	add    %edx,%eax
    95dd:	44 0f af cb          	imul   %ebx,%r9d
    95e1:	ba ff 00 00 00       	mov    $0xff,%edx
    95e6:	41 0f af c0          	imul   %r8d,%eax
    95ea:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    95f1:	00 
    95f2:	c1 f8 10             	sar    $0x10,%eax
    95f5:	39 d0                	cmp    %edx,%eax
    95f7:	0f 4f c2             	cmovg  %edx,%eax
    95fa:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    9601:	02 
    9602:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    9606:	0f 84 7d 1f 00 00    	je     b589 <sg_raster_triangle_depth_capture+0x80d9>
    960c:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 9614 <sg_raster_triangle_depth_capture+0x6164>
    9613:	00 
    9614:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 961c <sg_raster_triangle_depth_capture+0x616c>
    961b:	00 
    961c:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 9624 <sg_raster_triangle_depth_capture+0x6174>
    9623:	00 
    9624:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9628:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 9630 <sg_raster_triangle_depth_capture+0x6180>
    962f:	00 
    9630:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    9635:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9639:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    963e:	0f 28 e0             	movaps %xmm0,%xmm4
    9641:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    9645:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    964c:	00 00 
    964e:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    9655:	00 00 
    9657:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    965e:	00 00 
    9660:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    9667:	00 00 
    9669:	e9 6c c5 ff ff       	jmp    5bda <sg_raster_triangle_depth_capture+0x272a>
    966e:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    9675:	99                   	cltd
    9676:	41 f7 fc             	idiv   %r12d
    9679:	45 85 d2             	test   %r10d,%r10d
    967c:	0f 88 4e 17 00 00    	js     add0 <sg_raster_triangle_depth_capture+0x7920>
    9682:	46 8d 14 22          	lea    (%rdx,%r12,1),%r10d
    9686:	85 d2                	test   %edx,%edx
    9688:	44 0f 49 d2          	cmovns %edx,%r10d
    968c:	89 f8                	mov    %edi,%eax
    968e:	99                   	cltd
    968f:	41 f7 f9             	idiv   %r9d
    9692:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9699:	85 d2                	test   %edx,%edx
    969b:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    969f:	0f 49 fa             	cmovns %edx,%edi
    96a2:	99                   	cltd
    96a3:	41 f7 f9             	idiv   %r9d
    96a6:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    96aa:	85 d2                	test   %edx,%edx
    96ac:	0f 48 d0             	cmovs  %eax,%edx
    96af:	e9 bb fd ff ff       	jmp    946f <sg_raster_triangle_depth_capture+0x5fbf>
    96b4:	99                   	cltd
    96b5:	41 f7 fa             	idiv   %r10d
    96b8:	41 89 d3             	mov    %edx,%r11d
    96bb:	89 d5                	mov    %edx,%ebp
    96bd:	45 85 c9             	test   %r9d,%r9d
    96c0:	0f 8e 54 02 00 00    	jle    991a <sg_raster_triangle_depth_capture+0x646a>
    96c6:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    96ca:	41 85 d9             	test   %ebx,%r9d
    96cd:	0f 85 47 02 00 00    	jne    991a <sg_raster_triangle_depth_capture+0x646a>
    96d3:	85 d2                	test   %edx,%edx
    96d5:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    96d9:	0f 48 e8             	cmovs  %eax,%ebp
    96dc:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    96e3:	99                   	cltd
    96e4:	41 f7 fa             	idiv   %r10d
    96e7:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    96eb:	85 d2                	test   %edx,%edx
    96ed:	0f 48 d0             	cmovs  %eax,%edx
    96f0:	41 89 d3             	mov    %edx,%r11d
    96f3:	85 db                	test   %ebx,%ebx
    96f5:	0f 84 3f 02 00 00    	je     993a <sg_raster_triangle_depth_capture+0x648a>
    96fb:	8b 84 24 a0 01 00 00 	mov    0x1a0(%rsp),%eax
    9702:	21 df                	and    %ebx,%edi
    9704:	21 d8                	and    %ebx,%eax
    9706:	41 0f af fa          	imul   %r10d,%edi
    970a:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9711:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    9716:	66 0f ef c0          	pxor   %xmm0,%xmm0
    971a:	41 0f af c2          	imul   %r10d,%eax
    971e:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    9723:	66 0f ef ed          	pxor   %xmm5,%xmm5
    9727:	44 8d 4c 3d 00       	lea    0x0(%rbp,%rdi,1),%r9d
    972c:	44 01 df             	add    %r11d,%edi
    972f:	41 c1 e1 02          	shl    $0x2,%r9d
    9733:	c1 e7 02             	shl    $0x2,%edi
    9736:	8d 54 05 00          	lea    0x0(%rbp,%rax,1),%edx
    973a:	44 01 d8             	add    %r11d,%eax
    973d:	4d 63 c9             	movslq %r9d,%r9
    9740:	48 63 ff             	movslq %edi,%rdi
    9743:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    974a:	c1 e2 02             	shl    $0x2,%edx
    974d:	46 0f b6 14 09       	movzbl (%rcx,%r9,1),%r10d
    9752:	44 0f b6 1c 39       	movzbl (%rcx,%rdi,1),%r11d
    9757:	c1 e0 02             	shl    $0x2,%eax
    975a:	48 63 d2             	movslq %edx,%rdx
    975d:	48 98                	cltq
    975f:	44 0f af de          	imul   %esi,%r11d
    9763:	44 0f af d5          	imul   %ebp,%r10d
    9767:	45 01 da             	add    %r11d,%r10d
    976a:	44 0f b6 1c 01       	movzbl (%rcx,%rax,1),%r11d
    976f:	41 0f af da          	imul   %r10d,%ebx
    9773:	44 0f b6 14 11       	movzbl (%rcx,%rdx,1),%r10d
    9778:	44 0f af de          	imul   %esi,%r11d
    977c:	44 0f af d5          	imul   %ebp,%r10d
    9780:	45 01 da             	add    %r11d,%r10d
    9783:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9789:	45 0f af d0          	imul   %r8d,%r10d
    978d:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9794:	00 
    9795:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    979c:	41 c1 fa 10          	sar    $0x10,%r10d
    97a0:	45 39 da             	cmp    %r11d,%r10d
    97a3:	45 0f 4f d3          	cmovg  %r11d,%r10d
    97a7:	44 0f b6 5c 39 01    	movzbl 0x1(%rcx,%rdi,1),%r11d
    97ad:	f3 45 0f 2a fa       	cvtsi2ss %r10d,%xmm15
    97b2:	46 0f b6 54 09 01    	movzbl 0x1(%rcx,%r9,1),%r10d
    97b8:	44 0f af de          	imul   %esi,%r11d
    97bc:	44 0f af d5          	imul   %ebp,%r10d
    97c0:	45 01 da             	add    %r11d,%r10d
    97c3:	44 0f b6 5c 01 01    	movzbl 0x1(%rcx,%rax,1),%r11d
    97c9:	41 0f af da          	imul   %r10d,%ebx
    97cd:	44 0f b6 54 11 01    	movzbl 0x1(%rcx,%rdx,1),%r10d
    97d3:	44 0f af de          	imul   %esi,%r11d
    97d7:	44 0f af d5          	imul   %ebp,%r10d
    97db:	45 01 da             	add    %r11d,%r10d
    97de:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    97e4:	45 0f af d0          	imul   %r8d,%r10d
    97e8:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    97ef:	00 
    97f0:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    97f7:	41 c1 fa 10          	sar    $0x10,%r10d
    97fb:	45 39 da             	cmp    %r11d,%r10d
    97fe:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9802:	44 0f b6 5c 39 02    	movzbl 0x2(%rcx,%rdi,1),%r11d
    9808:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    980d:	f3 41 0f 2a c2       	cvtsi2ss %r10d,%xmm0
    9812:	46 0f b6 54 09 02    	movzbl 0x2(%rcx,%r9,1),%r10d
    9818:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    981e:	44 0f af de          	imul   %esi,%r11d
    9822:	44 0f af d5          	imul   %ebp,%r10d
    9826:	45 01 da             	add    %r11d,%r10d
    9829:	44 0f b6 5c 01 02    	movzbl 0x2(%rcx,%rax,1),%r11d
    982f:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    9834:	41 0f af da          	imul   %r10d,%ebx
    9838:	44 0f b6 54 11 02    	movzbl 0x2(%rcx,%rdx,1),%r10d
    983e:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    9843:	44 0f af de          	imul   %esi,%r11d
    9847:	44 0f af d5          	imul   %ebp,%r10d
    984b:	45 01 da             	add    %r11d,%r10d
    984e:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9854:	45 0f af d0          	imul   %r8d,%r10d
    9858:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    985f:	00 
    9860:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9867:	41 c1 fa 10          	sar    $0x10,%r10d
    986b:	45 39 da             	cmp    %r11d,%r10d
    986e:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9872:	0f af d5             	imul   %ebp,%edx
    9875:	44 0f af cd          	imul   %ebp,%r9d
    9879:	0f af fe             	imul   %esi,%edi
    987c:	0f af c6             	imul   %esi,%eax
    987f:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    9884:	41 01 f9             	add    %edi,%r9d
    9887:	01 d0                	add    %edx,%eax
    9889:	44 0f af cb          	imul   %ebx,%r9d
    988d:	ba ff 00 00 00       	mov    $0xff,%edx
    9892:	41 0f af c0          	imul   %r8d,%eax
    9896:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    989d:	00 
    989e:	c1 f8 10             	sar    $0x10,%eax
    98a1:	39 d0                	cmp    %edx,%eax
    98a3:	0f 4f c2             	cmovg  %edx,%eax
    98a6:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    98ad:	02 
    98ae:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    98b2:	0f 84 59 1c 00 00    	je     b511 <sg_raster_triangle_depth_capture+0x8061>
    98b8:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 98c0 <sg_raster_triangle_depth_capture+0x6410>
    98bf:	00 
    98c0:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 98c8 <sg_raster_triangle_depth_capture+0x6418>
    98c7:	00 
    98c8:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 98d0 <sg_raster_triangle_depth_capture+0x6420>
    98cf:	00 
    98d0:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    98d4:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 98dc <sg_raster_triangle_depth_capture+0x642c>
    98db:	00 
    98dc:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    98e1:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    98e5:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    98ea:	0f 28 e0             	movaps %xmm0,%xmm4
    98ed:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    98f1:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    98f8:	00 00 
    98fa:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    9901:	00 00 
    9903:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    990a:	00 00 
    990c:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    9913:	00 00 
    9915:	e9 00 b2 ff ff       	jmp    4b1a <sg_raster_triangle_depth_capture+0x166a>
    991a:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9921:	99                   	cltd
    9922:	41 f7 fa             	idiv   %r10d
    9925:	45 85 db             	test   %r11d,%r11d
    9928:	0f 88 63 14 00 00    	js     ad91 <sg_raster_triangle_depth_capture+0x78e1>
    992e:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9932:	85 d2                	test   %edx,%edx
    9934:	0f 48 d0             	cmovs  %eax,%edx
    9937:	41 89 d3             	mov    %edx,%r11d
    993a:	89 f8                	mov    %edi,%eax
    993c:	99                   	cltd
    993d:	41 f7 f9             	idiv   %r9d
    9940:	8b 84 24 a0 01 00 00 	mov    0x1a0(%rsp),%eax
    9947:	85 d2                	test   %edx,%edx
    9949:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    994d:	0f 49 fa             	cmovns %edx,%edi
    9950:	99                   	cltd
    9951:	41 f7 f9             	idiv   %r9d
    9954:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    9958:	85 d2                	test   %edx,%edx
    995a:	0f 49 c2             	cmovns %edx,%eax
    995d:	e9 a4 fd ff ff       	jmp    9706 <sg_raster_triangle_depth_capture+0x6256>
    9962:	99                   	cltd
    9963:	41 f7 fa             	idiv   %r10d
    9966:	41 89 d3             	mov    %edx,%r11d
    9969:	89 d5                	mov    %edx,%ebp
    996b:	45 85 c9             	test   %r9d,%r9d
    996e:	0f 8e 52 02 00 00    	jle    9bc6 <sg_raster_triangle_depth_capture+0x6716>
    9974:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    9978:	41 85 d9             	test   %ebx,%r9d
    997b:	0f 85 45 02 00 00    	jne    9bc6 <sg_raster_triangle_depth_capture+0x6716>
    9981:	85 d2                	test   %edx,%edx
    9983:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9987:	0f 48 e8             	cmovs  %eax,%ebp
    998a:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9991:	99                   	cltd
    9992:	41 f7 fa             	idiv   %r10d
    9995:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9999:	85 d2                	test   %edx,%edx
    999b:	0f 48 d0             	cmovs  %eax,%edx
    999e:	41 89 d3             	mov    %edx,%r11d
    99a1:	85 db                	test   %ebx,%ebx
    99a3:	0f 84 3d 02 00 00    	je     9be6 <sg_raster_triangle_depth_capture+0x6736>
    99a9:	8b 84 24 a0 01 00 00 	mov    0x1a0(%rsp),%eax
    99b0:	21 df                	and    %ebx,%edi
    99b2:	21 d8                	and    %ebx,%eax
    99b4:	41 0f af fa          	imul   %r10d,%edi
    99b8:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    99bf:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    99c4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    99c8:	41 0f af c2          	imul   %r10d,%eax
    99cc:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    99d1:	66 0f ef ed          	pxor   %xmm5,%xmm5
    99d5:	44 8d 0c 2f          	lea    (%rdi,%rbp,1),%r9d
    99d9:	44 01 df             	add    %r11d,%edi
    99dc:	41 c1 e1 02          	shl    $0x2,%r9d
    99e0:	c1 e7 02             	shl    $0x2,%edi
    99e3:	8d 14 28             	lea    (%rax,%rbp,1),%edx
    99e6:	44 01 d8             	add    %r11d,%eax
    99e9:	4d 63 c9             	movslq %r9d,%r9
    99ec:	48 63 ff             	movslq %edi,%rdi
    99ef:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    99f6:	c1 e2 02             	shl    $0x2,%edx
    99f9:	46 0f b6 14 09       	movzbl (%rcx,%r9,1),%r10d
    99fe:	44 0f b6 1c 39       	movzbl (%rcx,%rdi,1),%r11d
    9a03:	c1 e0 02             	shl    $0x2,%eax
    9a06:	48 63 d2             	movslq %edx,%rdx
    9a09:	48 98                	cltq
    9a0b:	44 0f af de          	imul   %esi,%r11d
    9a0f:	44 0f af d5          	imul   %ebp,%r10d
    9a13:	45 01 da             	add    %r11d,%r10d
    9a16:	44 0f b6 1c 01       	movzbl (%rcx,%rax,1),%r11d
    9a1b:	41 0f af da          	imul   %r10d,%ebx
    9a1f:	44 0f b6 14 11       	movzbl (%rcx,%rdx,1),%r10d
    9a24:	44 0f af de          	imul   %esi,%r11d
    9a28:	44 0f af d5          	imul   %ebp,%r10d
    9a2c:	45 01 da             	add    %r11d,%r10d
    9a2f:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9a35:	45 0f af d0          	imul   %r8d,%r10d
    9a39:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9a40:	00 
    9a41:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9a48:	41 c1 fa 10          	sar    $0x10,%r10d
    9a4c:	45 39 da             	cmp    %r11d,%r10d
    9a4f:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9a53:	44 0f b6 5c 39 01    	movzbl 0x1(%rcx,%rdi,1),%r11d
    9a59:	f3 45 0f 2a fa       	cvtsi2ss %r10d,%xmm15
    9a5e:	46 0f b6 54 09 01    	movzbl 0x1(%rcx,%r9,1),%r10d
    9a64:	44 0f af de          	imul   %esi,%r11d
    9a68:	44 0f af d5          	imul   %ebp,%r10d
    9a6c:	45 01 da             	add    %r11d,%r10d
    9a6f:	44 0f b6 5c 01 01    	movzbl 0x1(%rcx,%rax,1),%r11d
    9a75:	41 0f af da          	imul   %r10d,%ebx
    9a79:	44 0f b6 54 11 01    	movzbl 0x1(%rcx,%rdx,1),%r10d
    9a7f:	44 0f af de          	imul   %esi,%r11d
    9a83:	44 0f af d5          	imul   %ebp,%r10d
    9a87:	45 01 da             	add    %r11d,%r10d
    9a8a:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9a90:	45 0f af d0          	imul   %r8d,%r10d
    9a94:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9a9b:	00 
    9a9c:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9aa3:	41 c1 fa 10          	sar    $0x10,%r10d
    9aa7:	45 39 da             	cmp    %r11d,%r10d
    9aaa:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9aae:	44 0f b6 5c 39 02    	movzbl 0x2(%rcx,%rdi,1),%r11d
    9ab4:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    9ab9:	f3 41 0f 2a c2       	cvtsi2ss %r10d,%xmm0
    9abe:	46 0f b6 54 09 02    	movzbl 0x2(%rcx,%r9,1),%r10d
    9ac4:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    9aca:	44 0f af de          	imul   %esi,%r11d
    9ace:	44 0f af d5          	imul   %ebp,%r10d
    9ad2:	45 01 da             	add    %r11d,%r10d
    9ad5:	44 0f b6 5c 01 02    	movzbl 0x2(%rcx,%rax,1),%r11d
    9adb:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    9ae0:	41 0f af da          	imul   %r10d,%ebx
    9ae4:	44 0f b6 54 11 02    	movzbl 0x2(%rcx,%rdx,1),%r10d
    9aea:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    9aef:	44 0f af de          	imul   %esi,%r11d
    9af3:	44 0f af d5          	imul   %ebp,%r10d
    9af7:	45 01 da             	add    %r11d,%r10d
    9afa:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9b00:	45 0f af d0          	imul   %r8d,%r10d
    9b04:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9b0b:	00 
    9b0c:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9b13:	41 c1 fa 10          	sar    $0x10,%r10d
    9b17:	45 39 da             	cmp    %r11d,%r10d
    9b1a:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9b1e:	0f af d5             	imul   %ebp,%edx
    9b21:	44 0f af cd          	imul   %ebp,%r9d
    9b25:	0f af fe             	imul   %esi,%edi
    9b28:	0f af c6             	imul   %esi,%eax
    9b2b:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    9b30:	41 01 f9             	add    %edi,%r9d
    9b33:	01 d0                	add    %edx,%eax
    9b35:	44 0f af cb          	imul   %ebx,%r9d
    9b39:	ba ff 00 00 00       	mov    $0xff,%edx
    9b3e:	41 0f af c0          	imul   %r8d,%eax
    9b42:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    9b49:	00 
    9b4a:	c1 f8 10             	sar    $0x10,%eax
    9b4d:	39 d0                	cmp    %edx,%eax
    9b4f:	0f 4f c2             	cmovg  %edx,%eax
    9b52:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    9b59:	02 
    9b5a:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    9b5e:	0f 84 fd 19 00 00    	je     b561 <sg_raster_triangle_depth_capture+0x80b1>
    9b64:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 9b6c <sg_raster_triangle_depth_capture+0x66bc>
    9b6b:	00 
    9b6c:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 9b74 <sg_raster_triangle_depth_capture+0x66c4>
    9b73:	00 
    9b74:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 9b7c <sg_raster_triangle_depth_capture+0x66cc>
    9b7b:	00 
    9b7c:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9b80:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 9b88 <sg_raster_triangle_depth_capture+0x66d8>
    9b87:	00 
    9b88:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    9b8d:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9b91:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    9b96:	0f 28 e0             	movaps %xmm0,%xmm4
    9b99:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    9b9d:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    9ba4:	00 00 
    9ba6:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    9bad:	00 00 
    9baf:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    9bb6:	00 00 
    9bb8:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    9bbf:	00 00 
    9bc1:	e9 24 ad ff ff       	jmp    48ea <sg_raster_triangle_depth_capture+0x143a>
    9bc6:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9bcd:	99                   	cltd
    9bce:	41 f7 fa             	idiv   %r10d
    9bd1:	45 85 db             	test   %r11d,%r11d
    9bd4:	0f 88 e1 11 00 00    	js     adbb <sg_raster_triangle_depth_capture+0x790b>
    9bda:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9bde:	85 d2                	test   %edx,%edx
    9be0:	0f 48 d0             	cmovs  %eax,%edx
    9be3:	41 89 d3             	mov    %edx,%r11d
    9be6:	89 f8                	mov    %edi,%eax
    9be8:	99                   	cltd
    9be9:	41 f7 f9             	idiv   %r9d
    9bec:	8b 84 24 a0 01 00 00 	mov    0x1a0(%rsp),%eax
    9bf3:	85 d2                	test   %edx,%edx
    9bf5:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    9bf9:	0f 49 fa             	cmovns %edx,%edi
    9bfc:	99                   	cltd
    9bfd:	41 f7 f9             	idiv   %r9d
    9c00:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    9c04:	85 d2                	test   %edx,%edx
    9c06:	0f 49 c2             	cmovns %edx,%eax
    9c09:	e9 a6 fd ff ff       	jmp    99b4 <sg_raster_triangle_depth_capture+0x6504>
    9c0e:	99                   	cltd
    9c0f:	41 f7 fa             	idiv   %r10d
    9c12:	41 89 d3             	mov    %edx,%r11d
    9c15:	89 d5                	mov    %edx,%ebp
    9c17:	45 85 c9             	test   %r9d,%r9d
    9c1a:	0f 8e 52 02 00 00    	jle    9e72 <sg_raster_triangle_depth_capture+0x69c2>
    9c20:	41 8d 59 ff          	lea    -0x1(%r9),%ebx
    9c24:	41 85 d9             	test   %ebx,%r9d
    9c27:	0f 85 45 02 00 00    	jne    9e72 <sg_raster_triangle_depth_capture+0x69c2>
    9c2d:	85 d2                	test   %edx,%edx
    9c2f:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9c33:	0f 48 e8             	cmovs  %eax,%ebp
    9c36:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9c3d:	99                   	cltd
    9c3e:	41 f7 fa             	idiv   %r10d
    9c41:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9c45:	85 d2                	test   %edx,%edx
    9c47:	0f 48 d0             	cmovs  %eax,%edx
    9c4a:	41 89 d3             	mov    %edx,%r11d
    9c4d:	85 db                	test   %ebx,%ebx
    9c4f:	0f 84 3d 02 00 00    	je     9e92 <sg_raster_triangle_depth_capture+0x69e2>
    9c55:	8b 94 24 a0 01 00 00 	mov    0x1a0(%rsp),%edx
    9c5c:	21 df                	and    %ebx,%edi
    9c5e:	21 da                	and    %ebx,%edx
    9c60:	41 0f af fa          	imul   %r10d,%edi
    9c64:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9c6b:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    9c70:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9c74:	41 0f af d2          	imul   %r10d,%edx
    9c78:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    9c7d:	66 0f ef ed          	pxor   %xmm5,%xmm5
    9c81:	44 8d 0c 2f          	lea    (%rdi,%rbp,1),%r9d
    9c85:	44 01 df             	add    %r11d,%edi
    9c88:	41 c1 e1 02          	shl    $0x2,%r9d
    9c8c:	c1 e7 02             	shl    $0x2,%edi
    9c8f:	8d 04 2a             	lea    (%rdx,%rbp,1),%eax
    9c92:	44 01 da             	add    %r11d,%edx
    9c95:	4d 63 c9             	movslq %r9d,%r9
    9c98:	48 63 ff             	movslq %edi,%rdi
    9c9b:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    9ca2:	c1 e0 02             	shl    $0x2,%eax
    9ca5:	46 0f b6 14 09       	movzbl (%rcx,%r9,1),%r10d
    9caa:	44 0f b6 1c 39       	movzbl (%rcx,%rdi,1),%r11d
    9caf:	c1 e2 02             	shl    $0x2,%edx
    9cb2:	48 98                	cltq
    9cb4:	48 63 d2             	movslq %edx,%rdx
    9cb7:	44 0f af de          	imul   %esi,%r11d
    9cbb:	44 0f af d5          	imul   %ebp,%r10d
    9cbf:	45 01 da             	add    %r11d,%r10d
    9cc2:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
    9cc7:	41 0f af da          	imul   %r10d,%ebx
    9ccb:	44 0f b6 14 01       	movzbl (%rcx,%rax,1),%r10d
    9cd0:	44 0f af de          	imul   %esi,%r11d
    9cd4:	44 0f af d5          	imul   %ebp,%r10d
    9cd8:	45 01 da             	add    %r11d,%r10d
    9cdb:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9ce1:	45 0f af d0          	imul   %r8d,%r10d
    9ce5:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9cec:	00 
    9ced:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9cf4:	41 c1 fa 10          	sar    $0x10,%r10d
    9cf8:	45 39 da             	cmp    %r11d,%r10d
    9cfb:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9cff:	44 0f b6 5c 39 01    	movzbl 0x1(%rcx,%rdi,1),%r11d
    9d05:	f3 45 0f 2a fa       	cvtsi2ss %r10d,%xmm15
    9d0a:	46 0f b6 54 09 01    	movzbl 0x1(%rcx,%r9,1),%r10d
    9d10:	44 0f af de          	imul   %esi,%r11d
    9d14:	44 0f af d5          	imul   %ebp,%r10d
    9d18:	45 01 da             	add    %r11d,%r10d
    9d1b:	44 0f b6 5c 11 01    	movzbl 0x1(%rcx,%rdx,1),%r11d
    9d21:	41 0f af da          	imul   %r10d,%ebx
    9d25:	44 0f b6 54 01 01    	movzbl 0x1(%rcx,%rax,1),%r10d
    9d2b:	44 0f af de          	imul   %esi,%r11d
    9d2f:	44 0f af d5          	imul   %ebp,%r10d
    9d33:	45 01 da             	add    %r11d,%r10d
    9d36:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9d3c:	45 0f af d0          	imul   %r8d,%r10d
    9d40:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9d47:	00 
    9d48:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9d4f:	41 c1 fa 10          	sar    $0x10,%r10d
    9d53:	45 39 da             	cmp    %r11d,%r10d
    9d56:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9d5a:	44 0f b6 5c 39 02    	movzbl 0x2(%rcx,%rdi,1),%r11d
    9d60:	0f b6 7c 39 03       	movzbl 0x3(%rcx,%rdi,1),%edi
    9d65:	f3 41 0f 2a c2       	cvtsi2ss %r10d,%xmm0
    9d6a:	46 0f b6 54 09 02    	movzbl 0x2(%rcx,%r9,1),%r10d
    9d70:	46 0f b6 4c 09 03    	movzbl 0x3(%rcx,%r9,1),%r9d
    9d76:	44 0f af de          	imul   %esi,%r11d
    9d7a:	44 0f af d5          	imul   %ebp,%r10d
    9d7e:	45 01 da             	add    %r11d,%r10d
    9d81:	44 0f b6 5c 11 02    	movzbl 0x2(%rcx,%rdx,1),%r11d
    9d87:	0f b6 54 11 03       	movzbl 0x3(%rcx,%rdx,1),%edx
    9d8c:	41 0f af da          	imul   %r10d,%ebx
    9d90:	44 0f b6 54 01 02    	movzbl 0x2(%rcx,%rax,1),%r10d
    9d96:	0f b6 44 01 03       	movzbl 0x3(%rcx,%rax,1),%eax
    9d9b:	44 0f af de          	imul   %esi,%r11d
    9d9f:	44 0f af d5          	imul   %ebp,%r10d
    9da3:	45 01 da             	add    %r11d,%r10d
    9da6:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    9dac:	45 0f af d0          	imul   %r8d,%r10d
    9db0:	46 8d 94 13 00 80 00 	lea    0x8000(%rbx,%r10,1),%r10d
    9db7:	00 
    9db8:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
    9dbf:	41 c1 fa 10          	sar    $0x10,%r10d
    9dc3:	45 39 da             	cmp    %r11d,%r10d
    9dc6:	45 0f 4f d3          	cmovg  %r11d,%r10d
    9dca:	0f af d6             	imul   %esi,%edx
    9dcd:	44 0f af cd          	imul   %ebp,%r9d
    9dd1:	0f af fe             	imul   %esi,%edi
    9dd4:	0f af c5             	imul   %ebp,%eax
    9dd7:	f3 45 0f 2a f2       	cvtsi2ss %r10d,%xmm14
    9ddc:	41 01 f9             	add    %edi,%r9d
    9ddf:	01 d0                	add    %edx,%eax
    9de1:	44 0f af cb          	imul   %ebx,%r9d
    9de5:	ba ff 00 00 00       	mov    $0xff,%edx
    9dea:	41 0f af c0          	imul   %r8d,%eax
    9dee:	41 8d 84 01 00 80 00 	lea    0x8000(%r9,%rax,1),%eax
    9df5:	00 
    9df6:	c1 f8 10             	sar    $0x10,%eax
    9df9:	39 d0                	cmp    %edx,%eax
    9dfb:	0f 4f c2             	cmovg  %edx,%eax
    9dfe:	83 bc 24 20 01 00 00 	cmpl   $0x2,0x120(%rsp)
    9e05:	02 
    9e06:	f3 0f 2a e8          	cvtsi2ss %eax,%xmm5
    9e0a:	0f 84 29 17 00 00    	je     b539 <sg_raster_triangle_depth_capture+0x8089>
    9e10:	f3 0f 59 15 00 00 00 	mulss  0x0(%rip),%xmm2        # 9e18 <sg_raster_triangle_depth_capture+0x6968>
    9e17:	00 
    9e18:	f3 0f 59 0d 00 00 00 	mulss  0x0(%rip),%xmm1        # 9e20 <sg_raster_triangle_depth_capture+0x6970>
    9e1f:	00 
    9e20:	f3 0f 59 1d 00 00 00 	mulss  0x0(%rip),%xmm3        # 9e28 <sg_raster_triangle_depth_capture+0x6978>
    9e27:	00 
    9e28:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9e2c:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 9e34 <sg_raster_triangle_depth_capture+0x6984>
    9e33:	00 
    9e34:	f3 41 0f 59 cf       	mulss  %xmm15,%xmm1
    9e39:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    9e3d:	f3 41 0f 59 de       	mulss  %xmm14,%xmm3
    9e42:	0f 28 e0             	movaps %xmm0,%xmm4
    9e45:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    9e49:	f3 0f 11 8c 24 00 03 	movss  %xmm1,0x300(%rsp)
    9e50:	00 00 
    9e52:	f3 0f 11 94 24 04 03 	movss  %xmm2,0x304(%rsp)
    9e59:	00 00 
    9e5b:	f3 0f 11 9c 24 08 03 	movss  %xmm3,0x308(%rsp)
    9e62:	00 00 
    9e64:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    9e6b:	00 00 
    9e6d:	e9 d8 ae ff ff       	jmp    4d4a <sg_raster_triangle_depth_capture+0x189a>
    9e72:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    9e79:	99                   	cltd
    9e7a:	41 f7 fa             	idiv   %r10d
    9e7d:	45 85 db             	test   %r11d,%r11d
    9e80:	0f 88 20 0f 00 00    	js     ada6 <sg_raster_triangle_depth_capture+0x78f6>
    9e86:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    9e8a:	85 d2                	test   %edx,%edx
    9e8c:	0f 48 d0             	cmovs  %eax,%edx
    9e8f:	41 89 d3             	mov    %edx,%r11d
    9e92:	89 f8                	mov    %edi,%eax
    9e94:	99                   	cltd
    9e95:	41 f7 f9             	idiv   %r9d
    9e98:	8b 84 24 a0 01 00 00 	mov    0x1a0(%rsp),%eax
    9e9f:	85 d2                	test   %edx,%edx
    9ea1:	42 8d 3c 0a          	lea    (%rdx,%r9,1),%edi
    9ea5:	0f 49 fa             	cmovns %edx,%edi
    9ea8:	99                   	cltd
    9ea9:	41 f7 f9             	idiv   %r9d
    9eac:	42 8d 04 0a          	lea    (%rdx,%r9,1),%eax
    9eb0:	85 d2                	test   %edx,%edx
    9eb2:	0f 48 d0             	cmovs  %eax,%edx
    9eb5:	e9 a6 fd ff ff       	jmp    9c60 <sg_raster_triangle_depth_capture+0x67b0>
    9eba:	41 83 e4 0c          	and    $0xc,%r12d
    9ebe:	66 41 0f d6 00       	movq   %xmm0,(%r8)
    9ec3:	0f 84 dc a7 ff ff    	je     46a5 <sg_raster_triangle_depth_capture+0x11f5>
    9ec9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9ece:	48 8b 50 08          	mov    0x8(%rax),%rdx
    9ed2:	e9 61 d3 ff ff       	jmp    7238 <sg_raster_triangle_depth_capture+0x3d88>
    9ed7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    9ede:	00 00 
    9ee0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9ee4:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    9ee9:	e9 d1 d6 ff ff       	jmp    75bf <sg_raster_triangle_depth_capture+0x410f>
    9eee:	45 01 cf             	add    %r9d,%r15d
    9ef1:	85 db                	test   %ebx,%ebx
    9ef3:	0f 84 61 f3 ff ff    	je     925a <sg_raster_triangle_depth_capture+0x5daa>
    9ef9:	89 ca                	mov    %ecx,%edx
    9efb:	41 21 db             	and    %ebx,%r11d
    9efe:	21 da                	and    %ebx,%edx
    9f00:	e9 39 d9 ff ff       	jmp    783e <sg_raster_triangle_depth_capture+0x438e>
    9f05:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    9f0c:	89 c8                	mov    %ecx,%eax
    9f0e:	41 01 d3             	add    %edx,%r11d
    9f11:	89 d1                	mov    %edx,%ecx
    9f13:	99                   	cltd
    9f14:	f7 f9                	idiv   %ecx
    9f16:	85 d2                	test   %edx,%edx
    9f18:	0f 84 8f c2 ff ff    	je     61ad <sg_raster_triangle_depth_capture+0x2cfd>
    9f1e:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
    9f25:	01 c2                	add    %eax,%edx
    9f27:	45 85 c0             	test   %r8d,%r8d
    9f2a:	0f 85 7d c2 ff ff    	jne    61ad <sg_raster_triangle_depth_capture+0x2cfd>
    9f30:	e9 c9 c4 ff ff       	jmp    63fe <sg_raster_triangle_depth_capture+0x2f4e>
    9f35:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    9f3c:	00 00 
    9f3e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    9f43:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    9f4a:	00 00 
    9f4c:	f3 44 0f 59 90 10 01 	mulss  0x110(%rax),%xmm10
    9f53:	00 00 
    9f55:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    9f5c:	00 00 
    9f5e:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    9f65:	00 00 
    9f67:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    9f6e:	00 00 
    9f70:	f3 45 0f 59 d2       	mulss  %xmm10,%xmm10
    9f75:	41 0f 28 c2          	movaps %xmm10,%xmm0
    9f79:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # 9f80 <sg_raster_triangle_depth_capture+0x6ad0>
    9f80:	e8 00 00 00 00       	call   9f85 <sg_raster_triangle_depth_capture+0x6ad5>
    9f85:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # 9f8d <sg_raster_triangle_depth_capture+0x6add>
    9f8c:	00 
    9f8d:	f3 0f 10 8c 24 60 01 	movss  0x160(%rsp),%xmm1
    9f94:	00 00 
    9f96:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # 9f9e <sg_raster_triangle_depth_capture+0x6aee>
    9f9d:	00 
    9f9e:	f3 0f 10 94 24 70 01 	movss  0x170(%rsp),%xmm2
    9fa5:	00 00 
    9fa7:	f3 0f 10 9c 24 80 01 	movss  0x180(%rsp),%xmm3
    9fae:	00 00 
    9fb0:	f3 0f 10 b4 24 20 01 	movss  0x120(%rsp),%xmm6
    9fb7:	00 00 
    9fb9:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    9fbd:	f3 0f 5c e8          	subss  %xmm0,%xmm5
    9fc1:	f3 0f 10 a4 24 a0 01 	movss  0x1a0(%rsp),%xmm4
    9fc8:	00 00 
    9fca:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    9fce:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
    9fd2:	e9 b9 bc ff ff       	jmp    5c90 <sg_raster_triangle_depth_capture+0x27e0>
    9fd7:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    9fde:	89 c8                	mov    %ecx,%eax
    9fe0:	41 01 d3             	add    %edx,%r11d
    9fe3:	89 d1                	mov    %edx,%ecx
    9fe5:	99                   	cltd
    9fe6:	f7 f9                	idiv   %ecx
    9fe8:	85 d2                	test   %edx,%edx
    9fea:	0f 84 0e c4 ff ff    	je     63fe <sg_raster_triangle_depth_capture+0x2f4e>
    9ff0:	e9 29 ff ff ff       	jmp    9f1e <sg_raster_triangle_depth_capture+0x6a6e>
    9ff5:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    9ffc:	00 00 
    9ffe:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a003:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    a00a:	00 00 
    a00c:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    a013:	00 
    a014:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    a01b:	00 00 
    a01d:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    a024:	00 00 
    a026:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    a02d:	00 00 
    a02f:	e9 45 ff ff ff       	jmp    9f79 <sg_raster_triangle_depth_capture+0x6ac9>
    a034:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    a03b:	00 00 
    a03d:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a042:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    a049:	00 00 
    a04b:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    a052:	00 
    a053:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    a05a:	00 00 
    a05c:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    a063:	00 00 
    a065:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    a06c:	00 00 
    a06e:	e9 6b a5 ff ff       	jmp    45de <sg_raster_triangle_depth_capture+0x112e>
    a073:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    a07a:	00 00 
    a07c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a081:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    a088:	00 00 
    a08a:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    a091:	00 
    a092:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    a099:	00 00 
    a09b:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    a0a2:	00 00 
    a0a4:	0f 57 05 00 00 00 00 	xorps  0x0(%rip),%xmm0        # a0ab <sg_raster_triangle_depth_capture+0x6bfb>
    a0ab:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    a0b2:	00 00 
    a0b4:	e9 f6 9f ff ff       	jmp    40af <sg_raster_triangle_depth_capture+0xbff>
    a0b9:	f3 0f 11 a4 24 a0 01 	movss  %xmm4,0x1a0(%rsp)
    a0c0:	00 00 
    a0c2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a0c7:	f3 0f 11 9c 24 80 01 	movss  %xmm3,0x180(%rsp)
    a0ce:	00 00 
    a0d0:	f3 0f 59 80 10 01 00 	mulss  0x110(%rax),%xmm0
    a0d7:	00 
    a0d8:	f3 0f 11 94 24 70 01 	movss  %xmm2,0x170(%rsp)
    a0df:	00 00 
    a0e1:	f3 0f 11 8c 24 60 01 	movss  %xmm1,0x160(%rsp)
    a0e8:	00 00 
    a0ea:	f3 0f 11 b4 24 20 01 	movss  %xmm6,0x120(%rsp)
    a0f1:	00 00 
    a0f3:	e9 51 a2 ff ff       	jmp    4349 <sg_raster_triangle_depth_capture+0xe99>
    a0f8:	8b 88 08 01 00 00    	mov    0x108(%rax),%ecx
    a0fe:	31 c0                	xor    %eax,%eax
    a100:	85 c9                	test   %ecx,%ecx
    a102:	0f 94 c0             	sete   %al
    a105:	89 84 24 38 01 00 00 	mov    %eax,0x138(%rsp)
    a10c:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    a113:	01 00 00 00 
    a117:	b9 01 00 00 00       	mov    $0x1,%ecx
    a11c:	e9 8f 9a ff ff       	jmp    3bb0 <sg_raster_triangle_depth_capture+0x700>
    a121:	8b bc 24 38 01 00 00 	mov    0x138(%rsp),%edi
    a128:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    a12f:	01 00 00 00 
    a133:	85 ff                	test   %edi,%edi
    a135:	0f 84 5b 9a ff ff    	je     3b96 <sg_raster_triangle_depth_capture+0x6e6>
    a13b:	8b 8e c0 3d 00 00    	mov    0x3dc0(%rsi),%ecx
    a141:	c7 84 24 38 01 00 00 	movl   $0x0,0x138(%rsp)
    a148:	00 00 00 00 
    a14c:	85 c9                	test   %ecx,%ecx
    a14e:	0f 85 42 9a ff ff    	jne    3b96 <sg_raster_triangle_depth_capture+0x6e6>
    a154:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    a159:	8b 96 08 01 00 00    	mov    0x108(%rsi),%edx
    a15f:	31 f6                	xor    %esi,%esi
    a161:	85 d2                	test   %edx,%edx
    a163:	40 0f 94 c6          	sete   %sil
    a167:	89 b4 24 38 01 00 00 	mov    %esi,0x138(%rsp)
    a16e:	e9 23 9a ff ff       	jmp    3b96 <sg_raster_triangle_depth_capture+0x6e6>
    a173:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a17b <sg_raster_triangle_depth_capture+0x6ccb>
    a17a:	00 
    a17b:	f3 0f 10 84 24 b0 03 	movss  0x3b0(%rsp),%xmm0
    a182:	00 00 
    a184:	f3 0f 10 94 24 10 03 	movss  0x310(%rsp),%xmm2
    a18b:	00 00 
    a18d:	f3 0f 10 9c 24 14 03 	movss  0x314(%rsp),%xmm3
    a194:	00 00 
    a196:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a19a:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a19e:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a1a2:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a1a6:	f3 0f 10 94 24 b4 03 	movss  0x3b4(%rsp),%xmm2
    a1ad:	00 00 
    a1af:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a1b3:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a1b7:	f3 0f 10 9c 24 18 03 	movss  0x318(%rsp),%xmm3
    a1be:	00 00 
    a1c0:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a1c4:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a1c8:	f3 0f 10 94 24 b8 03 	movss  0x3b8(%rsp),%xmm2
    a1cf:	00 00 
    a1d1:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a1d5:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a1d9:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a1dd:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a1e5 <sg_raster_triangle_depth_capture+0x6d35>
    a1e4:	00 
    a1e5:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a1e9:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a1f1 <sg_raster_triangle_depth_capture+0x6d41>
    a1f0:	00 
    a1f1:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a1f5:	83 f8 01             	cmp    $0x1,%eax
    a1f8:	0f 84 2a 15 00 00    	je     b728 <sg_raster_triangle_depth_capture+0x8278>
    a1fe:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a202:	66 0f ef db          	pxor   %xmm3,%xmm3
    a206:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a20a:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a212 <sg_raster_triangle_depth_capture+0x6d62>
    a211:	00 
    a212:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a216:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a21a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a21e:	0f 28 e0             	movaps %xmm0,%xmm4
    a221:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a225:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a229:	0f 55 c8             	andnps %xmm0,%xmm1
    a22c:	0f 28 c5             	movaps %xmm5,%xmm0
    a22f:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a233:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a238:	83 f8 03             	cmp    $0x3,%eax
    a23b:	0f 85 43 0b 00 00    	jne    ad84 <sg_raster_triangle_depth_capture+0x78d4>
    a241:	0f 59 c9             	mulps  %xmm1,%xmm1
    a244:	0f 28 c1             	movaps %xmm1,%xmm0
    a247:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a24c:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a254 <sg_raster_triangle_depth_capture+0x6da4>
    a253:	00 
    a254:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a258:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a25f:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a266:	00 
    a267:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a26b:	0f 28 c5             	movaps %xmm5,%xmm0
    a26e:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a275:	00 
    a276:	0f 55 d1             	andnps %xmm1,%xmm2
    a279:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a27d:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a281:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a285:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a28a:	0f 28 c2             	movaps %xmm2,%xmm0
    a28d:	0f 59 c3             	mulps  %xmm3,%xmm0
    a290:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a294:	0f 28 c8             	movaps %xmm0,%xmm1
    a297:	66 0f ef db          	pxor   %xmm3,%xmm3
    a29b:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a29f:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a2a3:	0f 55 d8             	andnps %xmm0,%xmm3
    a2a6:	0f 28 c5             	movaps %xmm5,%xmm0
    a2a9:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a2ad:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a2b2:	0f 28 eb             	movaps %xmm3,%xmm5
    a2b5:	0f 29 9c 24 00 03 00 	movaps %xmm3,0x300(%rsp)
    a2bc:	00 
    a2bd:	0f 28 cb             	movaps %xmm3,%xmm1
    a2c0:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    a2c7:	00 00 
    a2c9:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a2cd:	0f 15 db             	unpckhps %xmm3,%xmm3
    a2d0:	0f 28 d5             	movaps %xmm5,%xmm2
    a2d3:	e9 72 aa ff ff       	jmp    4d4a <sg_raster_triangle_depth_capture+0x189a>
    a2d8:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a2e0 <sg_raster_triangle_depth_capture+0x6e30>
    a2df:	00 
    a2e0:	f3 0f 10 84 24 b0 03 	movss  0x3b0(%rsp),%xmm0
    a2e7:	00 00 
    a2e9:	f3 0f 10 94 24 10 03 	movss  0x310(%rsp),%xmm2
    a2f0:	00 00 
    a2f2:	f3 0f 10 9c 24 14 03 	movss  0x314(%rsp),%xmm3
    a2f9:	00 00 
    a2fb:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a2ff:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a303:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a307:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a30b:	f3 0f 10 94 24 b4 03 	movss  0x3b4(%rsp),%xmm2
    a312:	00 00 
    a314:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a318:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a31c:	f3 0f 10 9c 24 18 03 	movss  0x318(%rsp),%xmm3
    a323:	00 00 
    a325:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a329:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a32d:	f3 0f 10 94 24 b8 03 	movss  0x3b8(%rsp),%xmm2
    a334:	00 00 
    a336:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a33a:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a33e:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a342:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a34a <sg_raster_triangle_depth_capture+0x6e9a>
    a349:	00 
    a34a:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a34e:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a356 <sg_raster_triangle_depth_capture+0x6ea6>
    a355:	00 
    a356:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a35a:	83 f8 01             	cmp    $0x1,%eax
    a35d:	0f 84 71 14 00 00    	je     b7d4 <sg_raster_triangle_depth_capture+0x8324>
    a363:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a367:	66 0f ef db          	pxor   %xmm3,%xmm3
    a36b:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a36f:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a377 <sg_raster_triangle_depth_capture+0x6ec7>
    a376:	00 
    a377:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a37b:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a37f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a383:	0f 28 e0             	movaps %xmm0,%xmm4
    a386:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a38a:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a38e:	0f 55 c8             	andnps %xmm0,%xmm1
    a391:	0f 28 c5             	movaps %xmm5,%xmm0
    a394:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a398:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a39d:	83 f8 03             	cmp    $0x3,%eax
    a3a0:	0f 85 96 09 00 00    	jne    ad3c <sg_raster_triangle_depth_capture+0x788c>
    a3a6:	0f 59 c9             	mulps  %xmm1,%xmm1
    a3a9:	0f 28 c1             	movaps %xmm1,%xmm0
    a3ac:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a3b1:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a3b9 <sg_raster_triangle_depth_capture+0x6f09>
    a3b8:	00 
    a3b9:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a3bd:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a3c4:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a3cb:	00 
    a3cc:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a3d0:	0f 28 c5             	movaps %xmm5,%xmm0
    a3d3:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a3da:	00 
    a3db:	0f 55 d1             	andnps %xmm1,%xmm2
    a3de:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a3e2:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a3e6:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a3ea:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a3ef:	0f 28 c2             	movaps %xmm2,%xmm0
    a3f2:	0f 59 c3             	mulps  %xmm3,%xmm0
    a3f5:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a3f9:	0f 28 c8             	movaps %xmm0,%xmm1
    a3fc:	66 0f ef db          	pxor   %xmm3,%xmm3
    a400:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a404:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a408:	0f 55 d8             	andnps %xmm0,%xmm3
    a40b:	0f 28 c5             	movaps %xmm5,%xmm0
    a40e:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a412:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a417:	0f 28 eb             	movaps %xmm3,%xmm5
    a41a:	0f 29 9c 24 00 03 00 	movaps %xmm3,0x300(%rsp)
    a421:	00 
    a422:	0f 28 cb             	movaps %xmm3,%xmm1
    a425:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    a42c:	00 00 
    a42e:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a432:	0f 15 db             	unpckhps %xmm3,%xmm3
    a435:	0f 28 d5             	movaps %xmm5,%xmm2
    a438:	e9 dd a6 ff ff       	jmp    4b1a <sg_raster_triangle_depth_capture+0x166a>
    a43d:	48 89 c6             	mov    %rax,%rsi
    a440:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    a447:	00 
    a448:	49 63 c0             	movslq %r8d,%rax
    a44b:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    a44f:	f3 0f 11 24 82       	movss  %xmm4,(%rdx,%rax,4)
    a454:	85 db                	test   %ebx,%ebx
    a456:	74 1e                	je     a476 <sg_raster_triangle_depth_capture+0x6fc6>
    a458:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    a45d:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    a464:	00 
    a465:	41 8d 40 01          	lea    0x1(%r8),%eax
    a469:	48 98                	cltq
    a46b:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    a46f:	66 0f 3a 17 24 82 01 	extractps $0x1,%xmm4,(%rdx,%rax,4)
    a476:	45 85 d2             	test   %r10d,%r10d
    a479:	0f 85 7f ce ff ff    	jne    72fe <sg_raster_triangle_depth_capture+0x3e4e>
    a47f:	e9 95 ce ff ff       	jmp    7319 <sg_raster_triangle_depth_capture+0x3e69>
    a484:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a48c <sg_raster_triangle_depth_capture+0x6fdc>
    a48b:	00 
    a48c:	f3 0f 10 84 24 b0 03 	movss  0x3b0(%rsp),%xmm0
    a493:	00 00 
    a495:	f3 0f 10 94 24 10 03 	movss  0x310(%rsp),%xmm2
    a49c:	00 00 
    a49e:	f3 0f 10 9c 24 14 03 	movss  0x314(%rsp),%xmm3
    a4a5:	00 00 
    a4a7:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a4ab:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a4af:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a4b3:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a4b7:	f3 0f 10 94 24 b4 03 	movss  0x3b4(%rsp),%xmm2
    a4be:	00 00 
    a4c0:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a4c4:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a4c8:	f3 0f 10 9c 24 18 03 	movss  0x318(%rsp),%xmm3
    a4cf:	00 00 
    a4d1:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a4d5:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a4d9:	f3 0f 10 94 24 b8 03 	movss  0x3b8(%rsp),%xmm2
    a4e0:	00 00 
    a4e2:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a4e6:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a4ea:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a4ee:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a4f6 <sg_raster_triangle_depth_capture+0x7046>
    a4f5:	00 
    a4f6:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a4fa:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a502 <sg_raster_triangle_depth_capture+0x7052>
    a501:	00 
    a502:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a506:	83 f8 01             	cmp    $0x1,%eax
    a509:	0f 84 71 13 00 00    	je     b880 <sg_raster_triangle_depth_capture+0x83d0>
    a50f:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a513:	66 0f ef db          	pxor   %xmm3,%xmm3
    a517:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a51b:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a523 <sg_raster_triangle_depth_capture+0x7073>
    a522:	00 
    a523:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a527:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a52b:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a52f:	0f 28 e0             	movaps %xmm0,%xmm4
    a532:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a536:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a53a:	0f 55 c8             	andnps %xmm0,%xmm1
    a53d:	0f 28 c5             	movaps %xmm5,%xmm0
    a540:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a544:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a549:	83 f8 03             	cmp    $0x3,%eax
    a54c:	0f 85 04 08 00 00    	jne    ad56 <sg_raster_triangle_depth_capture+0x78a6>
    a552:	0f 59 c9             	mulps  %xmm1,%xmm1
    a555:	0f 28 c1             	movaps %xmm1,%xmm0
    a558:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a55d:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a565 <sg_raster_triangle_depth_capture+0x70b5>
    a564:	00 
    a565:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a569:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a570:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a577:	00 
    a578:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a57c:	0f 28 c5             	movaps %xmm5,%xmm0
    a57f:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a586:	00 
    a587:	0f 55 d1             	andnps %xmm1,%xmm2
    a58a:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a58e:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a592:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a596:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a59b:	0f 28 c2             	movaps %xmm2,%xmm0
    a59e:	0f 59 c3             	mulps  %xmm3,%xmm0
    a5a1:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a5a5:	0f 28 c8             	movaps %xmm0,%xmm1
    a5a8:	66 0f ef db          	pxor   %xmm3,%xmm3
    a5ac:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a5b0:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a5b4:	0f 55 d8             	andnps %xmm0,%xmm3
    a5b7:	0f 28 c5             	movaps %xmm5,%xmm0
    a5ba:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a5be:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a5c3:	0f 28 eb             	movaps %xmm3,%xmm5
    a5c6:	0f 29 9c 24 00 03 00 	movaps %xmm3,0x300(%rsp)
    a5cd:	00 
    a5ce:	0f 28 cb             	movaps %xmm3,%xmm1
    a5d1:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    a5d8:	00 00 
    a5da:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a5de:	0f 15 db             	unpckhps %xmm3,%xmm3
    a5e1:	0f 28 d5             	movaps %xmm5,%xmm2
    a5e4:	e9 01 a3 ff ff       	jmp    48ea <sg_raster_triangle_depth_capture+0x143a>
    a5e9:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # a5f1 <sg_raster_triangle_depth_capture+0x7141>
    a5f0:	00 
    a5f1:	f3 0f 10 84 24 b0 03 	movss  0x3b0(%rsp),%xmm0
    a5f8:	00 00 
    a5fa:	f3 0f 10 94 24 10 03 	movss  0x310(%rsp),%xmm2
    a601:	00 00 
    a603:	f3 0f 10 9c 24 14 03 	movss  0x314(%rsp),%xmm3
    a60a:	00 00 
    a60c:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    a610:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a614:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a618:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    a61c:	f3 0f 10 94 24 b4 03 	movss  0x3b4(%rsp),%xmm2
    a623:	00 00 
    a625:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a629:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a62d:	f3 0f 10 9c 24 18 03 	movss  0x318(%rsp),%xmm3
    a634:	00 00 
    a636:	f3 0f 5c d9          	subss  %xmm1,%xmm3
    a63a:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a63e:	f3 0f 10 94 24 b8 03 	movss  0x3b8(%rsp),%xmm2
    a645:	00 00 
    a647:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    a64b:	f3 0f 59 d3          	mulss  %xmm3,%xmm2
    a64f:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    a653:	f3 0f 59 05 00 00 00 	mulss  0x0(%rip),%xmm0        # a65b <sg_raster_triangle_depth_capture+0x71ab>
    a65a:	00 
    a65b:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a65f:	f3 0f 5d 05 00 00 00 	minss  0x0(%rip),%xmm0        # a667 <sg_raster_triangle_depth_capture+0x71b7>
    a666:	00 
    a667:	f3 0f 5f c2          	maxss  %xmm2,%xmm0
    a66b:	83 f8 01             	cmp    $0x1,%eax
    a66e:	0f 84 08 10 00 00    	je     b67c <sg_raster_triangle_depth_capture+0x81cc>
    a674:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    a678:	66 0f ef db          	pxor   %xmm3,%xmm3
    a67c:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a680:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # a688 <sg_raster_triangle_depth_capture+0x71d8>
    a687:	00 
    a688:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    a68c:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    a690:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a694:	0f 28 e0             	movaps %xmm0,%xmm4
    a697:	0f c2 e3 01          	cmpltps %xmm3,%xmm4
    a69b:	66 0f 66 cc          	pcmpgtd %xmm4,%xmm1
    a69f:	0f 55 c8             	andnps %xmm0,%xmm1
    a6a2:	0f 28 c5             	movaps %xmm5,%xmm0
    a6a5:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    a6a9:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    a6ae:	83 f8 03             	cmp    $0x3,%eax
    a6b1:	0f 85 92 06 00 00    	jne    ad49 <sg_raster_triangle_depth_capture+0x7899>
    a6b7:	0f 59 c9             	mulps  %xmm1,%xmm1
    a6ba:	0f 28 c1             	movaps %xmm1,%xmm0
    a6bd:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a6c2:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # a6ca <sg_raster_triangle_depth_capture+0x721a>
    a6c9:	00 
    a6ca:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a6ce:	0f 10 98 38 37 00 00 	movups 0x3738(%rax),%xmm3
    a6d5:	f3 0f 5d a0 44 37 00 	minss  0x3744(%rax),%xmm4
    a6dc:	00 
    a6dd:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    a6e1:	0f 28 c5             	movaps %xmm5,%xmm0
    a6e4:	0f 29 9c 24 20 01 00 	movaps %xmm3,0x120(%rsp)
    a6eb:	00 
    a6ec:	0f 55 d1             	andnps %xmm1,%xmm2
    a6ef:	66 0f ef c9          	pxor   %xmm1,%xmm1
    a6f3:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    a6f7:	f3 0f 5f e1          	maxss  %xmm1,%xmm4
    a6fb:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    a700:	0f 28 c2             	movaps %xmm2,%xmm0
    a703:	0f 59 c3             	mulps  %xmm3,%xmm0
    a706:	66 0f ef d2          	pxor   %xmm2,%xmm2
    a70a:	0f 28 c8             	movaps %xmm0,%xmm1
    a70d:	66 0f ef db          	pxor   %xmm3,%xmm3
    a711:	0f c2 ca 01          	cmpltps %xmm2,%xmm1
    a715:	66 0f 66 d9          	pcmpgtd %xmm1,%xmm3
    a719:	0f 55 d8             	andnps %xmm0,%xmm3
    a71c:	0f 28 c5             	movaps %xmm5,%xmm0
    a71f:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    a723:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    a728:	0f 28 eb             	movaps %xmm3,%xmm5
    a72b:	0f 29 9c 24 00 03 00 	movaps %xmm3,0x300(%rsp)
    a732:	00 
    a733:	0f 28 cb             	movaps %xmm3,%xmm1
    a736:	f3 0f 11 a4 24 0c 03 	movss  %xmm4,0x30c(%rsp)
    a73d:	00 00 
    a73f:	0f c6 eb 55          	shufps $0x55,%xmm3,%xmm5
    a743:	0f 15 db             	unpckhps %xmm3,%xmm3
    a746:	0f 28 d5             	movaps %xmm5,%xmm2
    a749:	e9 8c b4 ff ff       	jmp    5bda <sg_raster_triangle_depth_capture+0x272a>
    a74e:	f3 0f 10 8c ac 10 03 	movss  0x310(%rsp,%rbp,4),%xmm1
    a755:	00 00 
    a757:	48 83 ec 08          	sub    $0x8,%rsp
    a75b:	41 51                	push   %r9
    a75d:	45 8b 44 24 1c       	mov    0x1c(%r12),%r8d
    a762:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    a768:	e8 00 00 00 00       	call   a76d <sg_raster_triangle_depth_capture+0x72bd>
    a76d:	58                   	pop    %rax
    a76e:	5a                   	pop    %rdx
    a76f:	e9 66 c3 ff ff       	jmp    6ada <sg_raster_triangle_depth_capture+0x362a>
    a774:	8b 94 24 38 01 00 00 	mov    0x138(%rsp),%edx
    a77b:	85 d2                	test   %edx,%edx
    a77d:	0f 84 08 94 ff ff    	je     3b8b <sg_raster_triangle_depth_capture+0x6db>
    a783:	c7 84 24 f4 00 00 00 	movl   $0x1,0xf4(%rsp)
    a78a:	01 00 00 00 
    a78e:	e9 c1 f9 ff ff       	jmp    a154 <sg_raster_triangle_depth_capture+0x6ca4>
    a793:	41 b9 00 00 00 80    	mov    $0x80000000,%r9d
    a799:	e9 9e a6 ff ff       	jmp    4e3c <sg_raster_triangle_depth_capture+0x198c>
    a79e:	bf 00 00 00 80       	mov    $0x80000000,%edi
    a7a3:	e9 b3 a6 ff ff       	jmp    4e5b <sg_raster_triangle_depth_capture+0x19ab>
    a7a8:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
    a7ae:	e9 bf a6 ff ff       	jmp    4e72 <sg_raster_triangle_depth_capture+0x19c2>
    a7b3:	be 00 00 00 80       	mov    $0x80000000,%esi
    a7b8:	e9 ca a6 ff ff       	jmp    4e87 <sg_raster_triangle_depth_capture+0x19d7>
    a7bd:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
    a7c3:	e9 04 a7 ff ff       	jmp    4ecc <sg_raster_triangle_depth_capture+0x1a1c>
    a7c8:	be 00 00 00 80       	mov    $0x80000000,%esi
    a7cd:	e9 18 a7 ff ff       	jmp    4eea <sg_raster_triangle_depth_capture+0x1a3a>
    a7d2:	bf 00 00 00 80       	mov    $0x80000000,%edi
    a7d7:	e9 23 a7 ff ff       	jmp    4eff <sg_raster_triangle_depth_capture+0x1a4f>
    a7dc:	b8 00 00 00 80       	mov    $0x80000000,%eax
    a7e1:	e9 2e a7 ff ff       	jmp    4f14 <sg_raster_triangle_depth_capture+0x1a64>
    a7e6:	41 b8 00 00 00 80    	mov    $0x80000000,%r8d
    a7ec:	e9 69 a7 ff ff       	jmp    4f5a <sg_raster_triangle_depth_capture+0x1aaa>
    a7f1:	be 00 00 00 80       	mov    $0x80000000,%esi
    a7f6:	e9 7f a7 ff ff       	jmp    4f7a <sg_raster_triangle_depth_capture+0x1aca>
    a7fb:	44 8b 59 44          	mov    0x44(%rcx),%r11d
    a7ff:	45 85 db             	test   %r11d,%r11d
    a802:	0f 85 36 11 00 00    	jne    b93e <sg_raster_triangle_depth_capture+0x848e>
    a808:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    a80f:	00 
    a810:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    a817:	00 
    a818:	45 0f 28 f7          	movaps %xmm15,%xmm14
    a81c:	44 0f 28 bc 24 b0 01 	movaps 0x1b0(%rsp),%xmm15
    a823:	00 00 
    a825:	f3 0f 10 48 50       	movss  0x50(%rax),%xmm1
    a82a:	f3 0f 10 57 50       	movss  0x50(%rdi),%xmm2
    a82f:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    a833:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a837:	41 0f 59 cf          	mulps  %xmm15,%xmm1
    a83b:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    a83f:	0f 58 ca             	addps  %xmm2,%xmm1
    a842:	f3 0f 10 52 50       	movss  0x50(%rdx),%xmm2
    a847:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a84b:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    a84f:	0f 58 ca             	addps  %xmm2,%xmm1
    a852:	f3 0f 10 57 54       	movss  0x54(%rdi),%xmm2
    a857:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a85b:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    a85f:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    a863:	44 0f 28 c9          	movaps %xmm1,%xmm9
    a867:	f3 0f 10 48 54       	movss  0x54(%rax),%xmm1
    a86c:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    a873:	00 
    a874:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    a878:	41 0f 59 cf          	mulps  %xmm15,%xmm1
    a87c:	8b 00                	mov    (%rax),%eax
    a87e:	0f 58 ca             	addps  %xmm2,%xmm1
    a881:	f3 0f 10 52 54       	movss  0x54(%rdx),%xmm2
    a886:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a88a:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    a88e:	0f 58 ca             	addps  %xmm2,%xmm1
    a891:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    a895:	83 f8 01             	cmp    $0x1,%eax
    a898:	0f 84 87 0b 00 00    	je     b425 <sg_raster_triangle_depth_capture+0x7f75>
    a89e:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    a8a5:	00 
    a8a6:	f3 0f 10 46 58       	movss  0x58(%rsi),%xmm0
    a8ab:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    a8b2:	00 
    a8b3:	f3 0f 10 56 58       	movss  0x58(%rsi),%xmm2
    a8b8:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    a8bc:	0f 59 84 24 b0 01 00 	mulps  0x1b0(%rsp),%xmm0
    a8c3:	00 
    a8c4:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
    a8cb:	00 
    a8cc:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a8d0:	41 0f 59 d5          	mulps  %xmm13,%xmm2
    a8d4:	0f 58 c2             	addps  %xmm2,%xmm0
    a8d7:	f3 0f 10 56 58       	movss  0x58(%rsi),%xmm2
    a8dc:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    a8e0:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    a8e4:	0f 58 c2             	addps  %xmm2,%xmm0
    a8e7:	0f 28 94 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm2
    a8ee:	00 
    a8ef:	0f 59 d0             	mulps  %xmm0,%xmm2
    a8f2:	83 f8 03             	cmp    $0x3,%eax
    a8f5:	0f 84 6d 12 00 00    	je     bb68 <sg_raster_triangle_depth_capture+0x86b8>
    a8fb:	44 89 8c 24 40 02 00 	mov    %r9d,0x240(%rsp)
    a902:	00 
    a903:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a907:	8b ac 24 c0 01 00 00 	mov    0x1c0(%rsp),%ebp
    a90e:	45 31 e4             	xor    %r12d,%r12d
    a911:	44 89 bc 24 f0 01 00 	mov    %r15d,0x1f0(%rsp)
    a918:	00 
    a919:	4c 8b bc 24 f0 04 00 	mov    0x4f0(%rsp),%r15
    a920:	00 
    a921:	48 8d 9c 24 b0 03 00 	lea    0x3b0(%rsp),%rbx
    a928:	00 
    a929:	0f 29 84 24 b0 03 00 	movaps %xmm0,0x3b0(%rsp)
    a930:	00 
    a931:	0f 29 84 24 c0 03 00 	movaps %xmm0,0x3c0(%rsp)
    a938:	00 
    a939:	0f 29 84 24 d0 03 00 	movaps %xmm0,0x3d0(%rsp)
    a940:	00 
    a941:	0f 29 84 24 e0 03 00 	movaps %xmm0,0x3e0(%rsp)
    a948:	00 
    a949:	44 0f 29 8c 24 10 03 	movaps %xmm9,0x310(%rsp)
    a950:	00 00 
    a952:	0f 29 8c 24 20 03 00 	movaps %xmm1,0x320(%rsp)
    a959:	00 
    a95a:	0f 29 94 24 70 03 00 	movaps %xmm2,0x370(%rsp)
    a961:	00 
    a962:	0f 29 9c 24 b0 01 00 	movaps %xmm3,0x1b0(%rsp)
    a969:	00 
    a96a:	f3 44 0f 11 9c 24 d0 	movss  %xmm11,0x1d0(%rsp)
    a971:	01 00 00 
    a974:	f3 0f 11 b4 24 e0 01 	movss  %xmm6,0x1e0(%rsp)
    a97b:	00 00 
    a97d:	44 0f 29 a4 24 c0 01 	movaps %xmm12,0x1c0(%rsp)
    a984:	00 00 
    a986:	0f 29 a4 24 00 02 00 	movaps %xmm4,0x200(%rsp)
    a98d:	00 
    a98e:	0f 29 bc 24 10 02 00 	movaps %xmm7,0x210(%rsp)
    a995:	00 
    a996:	f3 44 0f 11 94 24 20 	movss  %xmm10,0x220(%rsp)
    a99d:	02 00 00 
    a9a0:	44 0f a3 e5          	bt     %r12d,%ebp
    a9a4:	73 45                	jae    a9eb <sg_raster_triangle_depth_capture+0x753b>
    a9a6:	4d 89 e1             	mov    %r12,%r9
    a9a9:	45 8b 07             	mov    (%r15),%r8d
    a9ac:	41 8b 4f 18          	mov    0x18(%r15),%ecx
    a9b0:	49 c1 e1 04          	shl    $0x4,%r9
    a9b4:	41 8b 57 14          	mov    0x14(%r15),%edx
    a9b8:	41 8b 77 10          	mov    0x10(%r15),%esi
    a9bc:	f3 42 0f 10 84 a4 10 	movss  0x310(%rsp,%r12,4),%xmm0
    a9c3:	03 00 00 
    a9c6:	49 8b 7f 08          	mov    0x8(%r15),%rdi
    a9ca:	49 01 d9             	add    %rbx,%r9
    a9cd:	41 83 f8 02          	cmp    $0x2,%r8d
    a9d1:	0f 84 90 0f 00 00    	je     b967 <sg_raster_triangle_depth_capture+0x84b7>
    a9d7:	45 85 c0             	test   %r8d,%r8d
    a9da:	0f 85 d1 0b 00 00    	jne    b5b1 <sg_raster_triangle_depth_capture+0x8101>
    a9e0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    a9e6:	e8 00 00 00 00       	call   a9eb <sg_raster_triangle_depth_capture+0x753b>
    a9eb:	49 83 c4 01          	add    $0x1,%r12
    a9ef:	49 83 fc 04          	cmp    $0x4,%r12
    a9f3:	75 ab                	jne    a9a0 <sg_raster_triangle_depth_capture+0x74f0>
    a9f5:	0f 28 94 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm2
    a9fc:	00 
    a9fd:	0f 28 8c 24 e0 03 00 	movaps 0x3e0(%rsp),%xmm1
    aa04:	00 
    aa05:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    aa0c:	00 
    aa0d:	0f 28 9c 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm3
    aa14:	00 
    aa15:	44 0f 28 84 24 b0 03 	movaps 0x3b0(%rsp),%xmm8
    aa1c:	00 00 
    aa1e:	0f 28 c2             	movaps %xmm2,%xmm0
    aa21:	0f 15 d1             	unpckhps %xmm1,%xmm2
    aa24:	44 0f 28 8c 24 c0 03 	movaps 0x3c0(%rsp),%xmm9
    aa2b:	00 00 
    aa2d:	0f 14 c1             	unpcklps %xmm1,%xmm0
    aa30:	44 8b bc 24 f0 01 00 	mov    0x1f0(%rsp),%r15d
    aa37:	00 
    aa38:	f3 44 0f 10 9c 24 d0 	movss  0x1d0(%rsp),%xmm11
    aa3f:	01 00 00 
    aa42:	41 0f 28 e8          	movaps %xmm8,%xmm5
    aa46:	45 0f 15 c1          	unpckhps %xmm9,%xmm8
    aa4a:	f3 0f 10 b4 24 e0 01 	movss  0x1e0(%rsp),%xmm6
    aa51:	00 00 
    aa53:	44 0f 28 a4 24 c0 01 	movaps 0x1c0(%rsp),%xmm12
    aa5a:	00 00 
    aa5c:	41 0f 14 e9          	unpcklps %xmm9,%xmm5
    aa60:	8b b0 64 01 00 00    	mov    0x164(%rax),%esi
    aa66:	0f 28 a4 24 00 02 00 	movaps 0x200(%rsp),%xmm4
    aa6d:	00 
    aa6e:	0f 28 cd             	movaps %xmm5,%xmm1
    aa71:	0f 28 bc 24 10 02 00 	movaps 0x210(%rsp),%xmm7
    aa78:	00 
    aa79:	f3 44 0f 10 94 24 20 	movss  0x220(%rsp),%xmm10
    aa80:	02 00 00 
    aa83:	0f 16 c8             	movlhps %xmm0,%xmm1
    aa86:	44 8b 8c 24 40 02 00 	mov    0x240(%rsp),%r9d
    aa8d:	00 
    aa8e:	0f 12 c5             	movhlps %xmm5,%xmm0
    aa91:	41 0f 28 e8          	movaps %xmm8,%xmm5
    aa95:	0f 16 ea             	movlhps %xmm2,%xmm5
    aa98:	41 0f 12 d0          	movhlps %xmm8,%xmm2
    aa9c:	83 fe 02             	cmp    $0x2,%esi
    aa9f:	0f 84 87 0e 00 00    	je     b92c <sg_raster_triangle_depth_capture+0x847c>
    aaa5:	0f 59 d9             	mulps  %xmm1,%xmm3
    aaa8:	44 0f 59 e0          	mulps  %xmm0,%xmm12
    aaac:	0f 59 e5             	mulps  %xmm5,%xmm4
    aaaf:	0f 59 fa             	mulps  %xmm2,%xmm7
    aab2:	e9 2f c3 ff ff       	jmp    6de6 <sg_raster_triangle_depth_capture+0x3936>
    aab7:	bf 00 00 00 80       	mov    $0x80000000,%edi
    aabc:	e9 ce a4 ff ff       	jmp    4f8f <sg_raster_triangle_depth_capture+0x1adf>
    aac1:	ba 00 00 00 80       	mov    $0x80000000,%edx
    aac6:	e9 d9 a4 ff ff       	jmp    4fa4 <sg_raster_triangle_depth_capture+0x1af4>
    aacb:	31 d2                	xor    %edx,%edx
    aacd:	39 4c 24 30          	cmp    %ecx,0x30(%rsp)
    aad1:	be ff ff ff ff       	mov    $0xffffffff,%esi
    aad6:	0f 9c c2             	setl   %dl
    aad9:	66 0f 6e ce          	movd   %esi,%xmm1
    aadd:	f7 da                	neg    %edx
    aadf:	e9 22 ab ff ff       	jmp    5606 <sg_raster_triangle_depth_capture+0x2156>
    aae4:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    aaeb:	89 c8                	mov    %ecx,%eax
    aaed:	41 01 d3             	add    %edx,%r11d
    aaf0:	89 d1                	mov    %edx,%ecx
    aaf2:	99                   	cltd
    aaf3:	f7 f9                	idiv   %ecx
    aaf5:	85 d2                	test   %edx,%edx
    aaf7:	0f 84 41 cd ff ff    	je     783e <sg_raster_triangle_depth_capture+0x438e>
    aafd:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
    ab04:	01 c2                	add    %eax,%edx
    ab06:	45 85 c0             	test   %r8d,%r8d
    ab09:	0f 85 5e cb ff ff    	jne    766d <sg_raster_triangle_depth_capture+0x41bd>
    ab0f:	e9 2a cd ff ff       	jmp    783e <sg_raster_triangle_depth_capture+0x438e>
    ab14:	be ff ff ff ff       	mov    $0xffffffff,%esi
    ab19:	31 c9                	xor    %ecx,%ecx
    ab1b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    ab1f:	66 0f 6e ce          	movd   %esi,%xmm1
    ab23:	e9 a3 ca ff ff       	jmp    75cb <sg_raster_triangle_depth_capture+0x411b>
    ab28:	8b 94 24 60 01 00 00 	mov    0x160(%rsp),%edx
    ab2f:	89 c8                	mov    %ecx,%eax
    ab31:	41 01 d3             	add    %edx,%r11d
    ab34:	89 d1                	mov    %edx,%ecx
    ab36:	99                   	cltd
    ab37:	f7 f9                	idiv   %ecx
    ab39:	85 d2                	test   %edx,%edx
    ab3b:	0f 84 2c cb ff ff    	je     766d <sg_raster_triangle_depth_capture+0x41bd>
    ab41:	eb ba                	jmp    aafd <sg_raster_triangle_depth_capture+0x764d>
    ab43:	66 45 0f ef db       	pxor   %xmm11,%xmm11
    ab48:	45 85 e4             	test   %r12d,%r12d
    ab4b:	0f 84 5f 9b ff ff    	je     46b0 <sg_raster_triangle_depth_capture+0x1200>
    ab51:	66 0f ef e4          	pxor   %xmm4,%xmm4
    ab55:	66 0f ef db          	pxor   %xmm3,%xmm3
    ab59:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    ab5e:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    ab63:	e9 1e cd ff ff       	jmp    7886 <sg_raster_triangle_depth_capture+0x43d6>
    ab68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ab6f:	00 
    ab70:	41 0f 29 2c 24       	movaps %xmm5,(%r12)
    ab75:	41 0f 29 6c 24 10    	movaps %xmm5,0x10(%r12)
    ab7b:	41 0f 29 6c 24 20    	movaps %xmm5,0x20(%r12)
    ab81:	41 0f 29 6c 24 30    	movaps %xmm5,0x30(%r12)
    ab87:	e9 f7 bf ff ff       	jmp    6b83 <sg_raster_triangle_depth_capture+0x36d3>
    ab8c:	f3 0f 10 43 48       	movss  0x48(%rbx),%xmm0
    ab91:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    ab95:	41 0f 29 04 24       	movaps %xmm0,(%r12)
    ab9a:	f3 0f 10 43 4c       	movss  0x4c(%rbx),%xmm0
    ab9f:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    aba3:	41 0f 29 44 24 10    	movaps %xmm0,0x10(%r12)
    aba9:	f3 0f 10 43 50       	movss  0x50(%rbx),%xmm0
    abae:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    abb2:	41 0f 29 44 24 20    	movaps %xmm0,0x20(%r12)
    abb8:	f3 0f 10 43 54       	movss  0x54(%rbx),%xmm0
    abbd:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    abc1:	41 0f 29 44 24 30    	movaps %xmm0,0x30(%r12)
    abc7:	e9 b7 bf ff ff       	jmp    6b83 <sg_raster_triangle_depth_capture+0x36d3>
    abcc:	f3 0f 10 8c 24 00 03 	movss  0x300(%rsp),%xmm1
    abd3:	00 00 
    abd5:	f3 0f 10 a4 24 0c 03 	movss  0x30c(%rsp),%xmm4
    abdc:	00 00 
    abde:	f3 0f 10 94 24 04 03 	movss  0x304(%rsp),%xmm2
    abe5:	00 00 
    abe7:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    abee:	00 00 
    abf0:	e9 25 9f ff ff       	jmp    4b1a <sg_raster_triangle_depth_capture+0x166a>
    abf5:	f3 0f 10 8c 24 00 03 	movss  0x300(%rsp),%xmm1
    abfc:	00 00 
    abfe:	f3 0f 10 a4 24 0c 03 	movss  0x30c(%rsp),%xmm4
    ac05:	00 00 
    ac07:	f3 0f 10 94 24 04 03 	movss  0x304(%rsp),%xmm2
    ac0e:	00 00 
    ac10:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    ac17:	00 00 
    ac19:	e9 cc 9c ff ff       	jmp    48ea <sg_raster_triangle_depth_capture+0x143a>
    ac1e:	f3 0f 10 8c 24 00 03 	movss  0x300(%rsp),%xmm1
    ac25:	00 00 
    ac27:	f3 0f 10 a4 24 0c 03 	movss  0x30c(%rsp),%xmm4
    ac2e:	00 00 
    ac30:	f3 0f 10 94 24 04 03 	movss  0x304(%rsp),%xmm2
    ac37:	00 00 
    ac39:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    ac40:	00 00 
    ac42:	e9 93 af ff ff       	jmp    5bda <sg_raster_triangle_depth_capture+0x272a>
    ac47:	f3 0f 10 8c 24 00 03 	movss  0x300(%rsp),%xmm1
    ac4e:	00 00 
    ac50:	f3 0f 10 a4 24 0c 03 	movss  0x30c(%rsp),%xmm4
    ac57:	00 00 
    ac59:	f3 0f 10 94 24 04 03 	movss  0x304(%rsp),%xmm2
    ac60:	00 00 
    ac62:	f3 0f 10 9c 24 08 03 	movss  0x308(%rsp),%xmm3
    ac69:	00 00 
    ac6b:	e9 da a0 ff ff       	jmp    4d4a <sg_raster_triangle_depth_capture+0x189a>
    ac70:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
    ac75:	45 85 c0             	test   %r8d,%r8d
    ac78:	0f 84 d3 8e ff ff    	je     3b51 <sg_raster_triangle_depth_capture+0x6a1>
    ac7e:	e9 b3 8e ff ff       	jmp    3b36 <sg_raster_triangle_depth_capture+0x686>
    ac83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    ac88:	f3 0f 10 94 ac 20 03 	movss  0x320(%rsp,%rbp,4),%xmm2
    ac8f:	00 00 
    ac91:	f3 0f 10 8c ac 10 03 	movss  0x310(%rsp,%rbp,4),%xmm1
    ac98:	00 00 
    ac9a:	41 51                	push   %r9
    ac9c:	6a 01                	push   $0x1
    ac9e:	45 8b 4c 24 20       	mov    0x20(%r12),%r9d
    aca3:	45 8b 44 24 1c       	mov    0x1c(%r12),%r8d
    aca8:	e8 00 00 00 00       	call   acad <sg_raster_triangle_depth_capture+0x77fd>
    acad:	59                   	pop    %rcx
    acae:	5e                   	pop    %rsi
    acaf:	e9 26 be ff ff       	jmp    6ada <sg_raster_triangle_depth_capture+0x362a>
    acb4:	3d 04 03 00 00       	cmp    $0x304,%eax
    acb9:	0f 84 4f 07 00 00    	je     b40e <sg_raster_triangle_depth_capture+0x7f5e>
    acbf:	44 0f 28 e5          	movaps %xmm5,%xmm12
    acc3:	44 0f 5c e0          	subps  %xmm0,%xmm12
    acc7:	41 0f 59 f4          	mulps  %xmm12,%xmm6
    accb:	41 0f 59 fc          	mulps  %xmm12,%xmm7
    accf:	45 0f 59 c4          	mulps  %xmm12,%xmm8
    acd3:	45 0f 59 e2          	mulps  %xmm10,%xmm12
    acd7:	e9 91 aa ff ff       	jmp    576d <sg_raster_triangle_depth_capture+0x22bd>
    acdc:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    ace3:	00 
    ace4:	0f c2 e0 01          	cmpltps %xmm0,%xmm4
    ace8:	0f 28 cc             	movaps %xmm4,%xmm1
    aceb:	e9 bf c5 ff ff       	jmp    72af <sg_raster_triangle_depth_capture+0x3dff>
    acf0:	0f c2 84 24 20 01 00 	cmpleps 0x120(%rsp),%xmm0
    acf7:	00 02 
    acf9:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    acfd:	e9 ad c5 ff ff       	jmp    72af <sg_raster_triangle_depth_capture+0x3dff>
    ad02:	0f c2 84 24 20 01 00 	cmpltps 0x120(%rsp),%xmm0
    ad09:	00 01 
    ad0b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    ad0f:	e9 9b c5 ff ff       	jmp    72af <sg_raster_triangle_depth_capture+0x3dff>
    ad14:	0f 28 a4 24 20 01 00 	movaps 0x120(%rsp),%xmm4
    ad1b:	00 
    ad1c:	0f c2 e0 02          	cmpleps %xmm0,%xmm4
    ad20:	0f 28 cc             	movaps %xmm4,%xmm1
    ad23:	e9 87 c5 ff ff       	jmp    72af <sg_raster_triangle_depth_capture+0x3dff>
    ad28:	0f 28 e0             	movaps %xmm0,%xmm4
    ad2b:	0f c2 a4 24 20 01 00 	cmpneqps 0x120(%rsp),%xmm4
    ad32:	00 04 
    ad34:	0f 28 cc             	movaps %xmm4,%xmm1
    ad37:	e9 73 c5 ff ff       	jmp    72af <sg_raster_triangle_depth_capture+0x3dff>
    ad3c:	0f 59 8c 24 d0 03 00 	mulps  0x3d0(%rsp),%xmm1
    ad43:	00 
    ad44:	e9 60 f6 ff ff       	jmp    a3a9 <sg_raster_triangle_depth_capture+0x6ef9>
    ad49:	0f 59 8c 24 d0 03 00 	mulps  0x3d0(%rsp),%xmm1
    ad50:	00 
    ad51:	e9 64 f9 ff ff       	jmp    a6ba <sg_raster_triangle_depth_capture+0x720a>
    ad56:	0f 59 8c 24 d0 03 00 	mulps  0x3d0(%rsp),%xmm1
    ad5d:	00 
    ad5e:	e9 f2 f7 ff ff       	jmp    a555 <sg_raster_triangle_depth_capture+0x70a5>
    ad63:	8b 8c 24 38 01 00 00 	mov    0x138(%rsp),%ecx
    ad6a:	85 c9                	test   %ecx,%ecx
    ad6c:	0f 85 e2 f3 ff ff    	jne    a154 <sg_raster_triangle_depth_capture+0x6ca4>
    ad72:	b9 01 00 00 00       	mov    $0x1,%ecx
    ad77:	85 d2                	test   %edx,%edx
    ad79:	0f 84 31 8e ff ff    	je     3bb0 <sg_raster_triangle_depth_capture+0x700>
    ad7f:	e9 21 8d ff ff       	jmp    3aa5 <sg_raster_triangle_depth_capture+0x5f5>
    ad84:	0f 59 8c 24 d0 03 00 	mulps  0x3d0(%rsp),%xmm1
    ad8b:	00 
    ad8c:	e9 b3 f4 ff ff       	jmp    a244 <sg_raster_triangle_depth_capture+0x6d94>
    ad91:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    ad95:	85 d2                	test   %edx,%edx
    ad97:	43 8d 2c 13          	lea    (%r11,%r10,1),%ebp
    ad9b:	0f 45 d0             	cmovne %eax,%edx
    ad9e:	41 89 d3             	mov    %edx,%r11d
    ada1:	e9 94 eb ff ff       	jmp    993a <sg_raster_triangle_depth_capture+0x648a>
    ada6:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    adaa:	85 d2                	test   %edx,%edx
    adac:	43 8d 2c 13          	lea    (%r11,%r10,1),%ebp
    adb0:	0f 45 d0             	cmovne %eax,%edx
    adb3:	41 89 d3             	mov    %edx,%r11d
    adb6:	e9 d7 f0 ff ff       	jmp    9e92 <sg_raster_triangle_depth_capture+0x69e2>
    adbb:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    adbf:	85 d2                	test   %edx,%edx
    adc1:	43 8d 2c 13          	lea    (%r11,%r10,1),%ebp
    adc5:	0f 45 d0             	cmovne %eax,%edx
    adc8:	41 89 d3             	mov    %edx,%r11d
    adcb:	e9 16 ee ff ff       	jmp    9be6 <sg_raster_triangle_depth_capture+0x6736>
    add0:	43 8d 1c 22          	lea    (%r10,%r12,1),%ebx
    add4:	85 d2                	test   %edx,%edx
    add6:	46 8d 14 22          	lea    (%rdx,%r12,1),%r10d
    adda:	44 0f 44 d2          	cmove  %edx,%r10d
    adde:	e9 a9 e8 ff ff       	jmp    968c <sg_raster_triangle_depth_capture+0x61dc>
    ade3:	66 0f ef db          	pxor   %xmm3,%xmm3
    ade7:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # adef <sg_raster_triangle_depth_capture+0x793f>
    adee:	00 
    adef:	0f 28 d3             	movaps %xmm3,%xmm2
    adf2:	0f 28 cb             	movaps %xmm3,%xmm1
    adf5:	e9 a8 95 ff ff       	jmp    43a2 <sg_raster_triangle_depth_capture+0xef2>
    adfa:	66 0f ef db          	pxor   %xmm3,%xmm3
    adfe:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # ae06 <sg_raster_triangle_depth_capture+0x7956>
    ae05:	00 
    ae06:	0f 28 d3             	movaps %xmm3,%xmm2
    ae09:	0f 28 cb             	movaps %xmm3,%xmm1
    ae0c:	e9 26 98 ff ff       	jmp    4637 <sg_raster_triangle_depth_capture+0x1187>
    ae11:	66 0f ef db          	pxor   %xmm3,%xmm3
    ae15:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # ae1d <sg_raster_triangle_depth_capture+0x796d>
    ae1c:	00 
    ae1d:	0f 28 d3             	movaps %xmm3,%xmm2
    ae20:	0f 28 cb             	movaps %xmm3,%xmm1
    ae23:	e9 d9 92 ff ff       	jmp    4101 <sg_raster_triangle_depth_capture+0xc51>
    ae28:	66 0f ef db          	pxor   %xmm3,%xmm3
    ae2c:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # ae34 <sg_raster_triangle_depth_capture+0x7984>
    ae33:	00 
    ae34:	0f 28 d3             	movaps %xmm3,%xmm2
    ae37:	0f 28 cb             	movaps %xmm3,%xmm1
    ae3a:	e9 51 ae ff ff       	jmp    5c90 <sg_raster_triangle_depth_capture+0x27e0>
    ae3f:	31 c0                	xor    %eax,%eax
    ae41:	0f 2f c6             	comiss %xmm6,%xmm0
    ae44:	0f 93 c0             	setae  %al
    ae47:	e9 27 ac ff ff       	jmp    5a73 <sg_raster_triangle_depth_capture+0x25c3>
    ae4c:	31 c0                	xor    %eax,%eax
    ae4e:	0f 2f f0             	comiss %xmm0,%xmm6
    ae51:	0f 94 c0             	sete   %al
    ae54:	e9 1a ac ff ff       	jmp    5a73 <sg_raster_triangle_depth_capture+0x25c3>
    ae59:	31 c0                	xor    %eax,%eax
    ae5b:	0f 2f c6             	comiss %xmm6,%xmm0
    ae5e:	0f 93 c0             	setae  %al
    ae61:	e9 1d 99 ff ff       	jmp    4783 <sg_raster_triangle_depth_capture+0x12d3>
    ae66:	31 c0                	xor    %eax,%eax
    ae68:	0f 2f f0             	comiss %xmm0,%xmm6
    ae6b:	0f 94 c0             	sete   %al
    ae6e:	e9 10 99 ff ff       	jmp    4783 <sg_raster_triangle_depth_capture+0x12d3>
    ae73:	31 c0                	xor    %eax,%eax
    ae75:	0f 2f f0             	comiss %xmm0,%xmm6
    ae78:	0f 94 c0             	sete   %al
    ae7b:	e9 5e 9d ff ff       	jmp    4bde <sg_raster_triangle_depth_capture+0x172e>
    ae80:	31 c0                	xor    %eax,%eax
    ae82:	0f 2f f0             	comiss %xmm0,%xmm6
    ae85:	0f 93 c0             	setae  %al
    ae88:	e9 f6 98 ff ff       	jmp    4783 <sg_raster_triangle_depth_capture+0x12d3>
    ae8d:	31 c0                	xor    %eax,%eax
    ae8f:	0f 2f f0             	comiss %xmm0,%xmm6
    ae92:	0f 95 c0             	setne  %al
    ae95:	e9 e9 98 ff ff       	jmp    4783 <sg_raster_triangle_depth_capture+0x12d3>
    ae9a:	31 c0                	xor    %eax,%eax
    ae9c:	0f 2f f0             	comiss %xmm0,%xmm6
    ae9f:	0f 97 c0             	seta   %al
    aea2:	e9 dc 98 ff ff       	jmp    4783 <sg_raster_triangle_depth_capture+0x12d3>
    aea7:	31 c0                	xor    %eax,%eax
    aea9:	0f 2f f0             	comiss %xmm0,%xmm6
    aeac:	0f 95 c0             	setne  %al
    aeaf:	85 c0                	test   %eax,%eax
    aeb1:	0f 84 e4 97 ff ff    	je     469b <sg_raster_triangle_depth_capture+0x11eb>
    aeb7:	e9 04 9b ff ff       	jmp    49c0 <sg_raster_triangle_depth_capture+0x1510>
    aebc:	31 c0                	xor    %eax,%eax
    aebe:	0f 2f f0             	comiss %xmm0,%xmm6
    aec1:	0f 97 c0             	seta   %al
    aec4:	eb e9                	jmp    aeaf <sg_raster_triangle_depth_capture+0x79ff>
    aec6:	31 c0                	xor    %eax,%eax
    aec8:	0f 2f c6             	comiss %xmm6,%xmm0
    aecb:	0f 93 c0             	setae  %al
    aece:	eb df                	jmp    aeaf <sg_raster_triangle_depth_capture+0x79ff>
    aed0:	31 c0                	xor    %eax,%eax
    aed2:	0f 2f f0             	comiss %xmm0,%xmm6
    aed5:	0f 94 c0             	sete   %al
    aed8:	e9 d0 9a ff ff       	jmp    49ad <sg_raster_triangle_depth_capture+0x14fd>
    aedd:	31 c0                	xor    %eax,%eax
    aedf:	0f 2f f0             	comiss %xmm0,%xmm6
    aee2:	0f 93 c0             	setae  %al
    aee5:	e9 f4 9c ff ff       	jmp    4bde <sg_raster_triangle_depth_capture+0x172e>
    aeea:	31 c0                	xor    %eax,%eax
    aeec:	0f 2f f0             	comiss %xmm0,%xmm6
    aeef:	0f 95 c0             	setne  %al
    aef2:	e9 e7 9c ff ff       	jmp    4bde <sg_raster_triangle_depth_capture+0x172e>
    aef7:	31 c0                	xor    %eax,%eax
    aef9:	0f 2f f0             	comiss %xmm0,%xmm6
    aefc:	0f 97 c0             	seta   %al
    aeff:	e9 da 9c ff ff       	jmp    4bde <sg_raster_triangle_depth_capture+0x172e>
    af04:	31 c0                	xor    %eax,%eax
    af06:	0f 2f c6             	comiss %xmm6,%xmm0
    af09:	0f 93 c0             	setae  %al
    af0c:	e9 cd 9c ff ff       	jmp    4bde <sg_raster_triangle_depth_capture+0x172e>
    af11:	31 c0                	xor    %eax,%eax
    af13:	0f 2f f0             	comiss %xmm0,%xmm6
    af16:	0f 93 c0             	setae  %al
    af19:	eb 94                	jmp    aeaf <sg_raster_triangle_depth_capture+0x79ff>
    af1b:	31 c0                	xor    %eax,%eax
    af1d:	0f 2f f0             	comiss %xmm0,%xmm6
    af20:	0f 93 c0             	setae  %al
    af23:	e9 4b ab ff ff       	jmp    5a73 <sg_raster_triangle_depth_capture+0x25c3>
    af28:	31 c0                	xor    %eax,%eax
    af2a:	0f 2f f0             	comiss %xmm0,%xmm6
    af2d:	0f 95 c0             	setne  %al
    af30:	e9 3e ab ff ff       	jmp    5a73 <sg_raster_triangle_depth_capture+0x25c3>
    af35:	31 c0                	xor    %eax,%eax
    af37:	0f 2f f0             	comiss %xmm0,%xmm6
    af3a:	0f 97 c0             	seta   %al
    af3d:	e9 31 ab ff ff       	jmp    5a73 <sg_raster_triangle_depth_capture+0x25c3>
    af42:	45 85 db             	test   %r11d,%r11d
    af45:	0f 84 18 20 00 00    	je     cf63 <sg_raster_triangle_depth_capture+0x9ab3>
    af4b:	44 21 d8             	and    %r11d,%eax
    af4e:	89 c5                	mov    %eax,%ebp
    af50:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    af57:	41 21 c3             	and    %eax,%r11d
    af5a:	e9 87 ec ff ff       	jmp    9be6 <sg_raster_triangle_depth_capture+0x6736>
    af5f:	45 85 d2             	test   %r10d,%r10d
    af62:	0f 84 3a 20 00 00    	je     cfa2 <sg_raster_triangle_depth_capture+0x9af2>
    af68:	44 21 d0             	and    %r10d,%eax
    af6b:	89 c3                	mov    %eax,%ebx
    af6d:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
    af74:	41 21 c2             	and    %eax,%r10d
    af77:	e9 10 e7 ff ff       	jmp    968c <sg_raster_triangle_depth_capture+0x61dc>
    af7c:	45 85 db             	test   %r11d,%r11d
    af7f:	0f 84 24 20 00 00    	je     cfa9 <sg_raster_triangle_depth_capture+0x9af9>
    af85:	44 21 d8             	and    %r11d,%eax
    af88:	89 c5                	mov    %eax,%ebp
    af8a:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    af91:	41 21 c3             	and    %eax,%r11d
    af94:	e9 a1 e9 ff ff       	jmp    993a <sg_raster_triangle_depth_capture+0x648a>
    af99:	45 85 db             	test   %r11d,%r11d
    af9c:	0f 84 de 1f 00 00    	je     cf80 <sg_raster_triangle_depth_capture+0x9ad0>
    afa2:	44 21 d8             	and    %r11d,%eax
    afa5:	89 c5                	mov    %eax,%ebp
    afa7:	8b 84 24 80 01 00 00 	mov    0x180(%rsp),%eax
    afae:	41 21 c3             	and    %eax,%r11d
    afb1:	e9 dc ee ff ff       	jmp    9e92 <sg_raster_triangle_depth_capture+0x69e2>
    afb6:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    afbd:	01 00 00 00 
    afc1:	e9 ea ae ff ff       	jmp    5eb0 <sg_raster_triangle_depth_capture+0x2a00>
    afc6:	44 8b 9c 24 20 01 00 	mov    0x120(%rsp),%r11d
    afcd:	00 
    afce:	45 85 db             	test   %r11d,%r11d
    afd1:	75 1b                	jne    afee <sg_raster_triangle_depth_capture+0x7b3e>
    afd3:	41 0f 28 ca          	movaps %xmm10,%xmm1
    afd7:	f3 0f 5c 0d 00 00 00 	subss  0x0(%rip),%xmm1        # afdf <sg_raster_triangle_depth_capture+0x7b2f>
    afde:	00 
    afdf:	31 db                	xor    %ebx,%ebx
    afe1:	0f 2f c1             	comiss %xmm1,%xmm0
    afe4:	0f 93 c3             	setae  %bl
    afe7:	89 9c 24 20 01 00 00 	mov    %ebx,0x120(%rsp)
    afee:	41 83 e4 fd          	and    $0xfffffffd,%r12d
    aff2:	e9 56 c3 ff ff       	jmp    734d <sg_raster_triangle_depth_capture+0x3e9d>
    aff7:	31 ff                	xor    %edi,%edi
    aff9:	0f 2f d0             	comiss %xmm0,%xmm2
    affc:	40 0f 93 c7          	setae  %dil
    b000:	e9 11 b4 ff ff       	jmp    6416 <sg_raster_triangle_depth_capture+0x2f66>
    b005:	31 ff                	xor    %edi,%edi
    b007:	0f 2f d0             	comiss %xmm0,%xmm2
    b00a:	40 0f 95 c7          	setne  %dil
    b00e:	e9 03 b4 ff ff       	jmp    6416 <sg_raster_triangle_depth_capture+0x2f66>
    b013:	31 ff                	xor    %edi,%edi
    b015:	0f 2f d0             	comiss %xmm0,%xmm2
    b018:	40 0f 97 c7          	seta   %dil
    b01c:	e9 f5 b3 ff ff       	jmp    6416 <sg_raster_triangle_depth_capture+0x2f66>
    b021:	31 ff                	xor    %edi,%edi
    b023:	0f 2f c2             	comiss %xmm2,%xmm0
    b026:	40 0f 93 c7          	setae  %dil
    b02a:	e9 e7 b3 ff ff       	jmp    6416 <sg_raster_triangle_depth_capture+0x2f66>
    b02f:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    b036:	00 00 
    b038:	31 ff                	xor    %edi,%edi
    b03a:	0f 2f f8             	comiss %xmm0,%xmm7
    b03d:	40 0f 93 c7          	setae  %dil
    b041:	44 8b 84 24 20 01 00 	mov    0x120(%rsp),%r8d
    b048:	00 
    b049:	45 85 c0             	test   %r8d,%r8d
    b04c:	0f 84 ab 04 00 00    	je     b4fd <sg_raster_triangle_depth_capture+0x804d>
    b052:	85 ff                	test   %edi,%edi
    b054:	0f 84 4b ae ff ff    	je     5ea5 <sg_raster_triangle_depth_capture+0x29f5>
    b05a:	89 bc 24 20 01 00 00 	mov    %edi,0x120(%rsp)
    b061:	e9 4a ae ff ff       	jmp    5eb0 <sg_raster_triangle_depth_capture+0x2a00>
    b066:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    b06d:	00 00 
    b06f:	31 ff                	xor    %edi,%edi
    b071:	0f 2f f8             	comiss %xmm0,%xmm7
    b074:	40 0f 95 c7          	setne  %dil
    b078:	eb c7                	jmp    b041 <sg_raster_triangle_depth_capture+0x7b91>
    b07a:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    b081:	00 00 
    b083:	31 ff                	xor    %edi,%edi
    b085:	0f 2f f8             	comiss %xmm0,%xmm7
    b088:	40 0f 94 c7          	sete   %dil
    b08c:	eb b3                	jmp    b041 <sg_raster_triangle_depth_capture+0x7b91>
    b08e:	f3 0f 10 bc 24 60 01 	movss  0x160(%rsp),%xmm7
    b095:	00 00 
    b097:	31 ff                	xor    %edi,%edi
    b099:	0f 2f f8             	comiss %xmm0,%xmm7
    b09c:	40 0f 97 c7          	seta   %dil
    b0a0:	eb 9f                	jmp    b041 <sg_raster_triangle_depth_capture+0x7b91>
    b0a2:	31 ff                	xor    %edi,%edi
    b0a4:	0f 2f 84 24 60 01 00 	comiss 0x160(%rsp),%xmm0
    b0ab:	00 
    b0ac:	40 0f 93 c7          	setae  %dil
    b0b0:	eb 8f                	jmp    b041 <sg_raster_triangle_depth_capture+0x7b91>
    b0b2:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    b0b7:	66 0f ef d2          	pxor   %xmm2,%xmm2
    b0bb:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b0bf:	c7 84 24 20 01 00 00 	movl   $0x1,0x120(%rsp)
    b0c6:	01 00 00 00 
    b0ca:	66 0f ef db          	pxor   %xmm3,%xmm3
    b0ce:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
    b0d3:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
    b0d8:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    b0dd:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    b0e2:	e9 5e b5 ff ff       	jmp    6645 <sg_raster_triangle_depth_capture+0x3195>
    b0e7:	31 ff                	xor    %edi,%edi
    b0e9:	0f 2f c8             	comiss %xmm0,%xmm1
    b0ec:	40 0f 93 c7          	setae  %dil
    b0f0:	8b 9c 24 20 01 00 00 	mov    0x120(%rsp),%ebx
    b0f7:	85 db                	test   %ebx,%ebx
    b0f9:	0f 84 e4 03 00 00    	je     b4e3 <sg_raster_triangle_depth_capture+0x8033>
    b0ff:	85 ff                	test   %edi,%edi
    b101:	0f 84 84 00 00 00    	je     b18b <sg_raster_triangle_depth_capture+0x7cdb>
    b107:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    b10c:	66 0f ef d2          	pxor   %xmm2,%xmm2
    b110:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b114:	89 bc 24 20 01 00 00 	mov    %edi,0x120(%rsp)
    b11b:	66 0f ef db          	pxor   %xmm3,%xmm3
    b11f:	f3 4c 0f 2a ce       	cvtsi2ss %rsi,%xmm9
    b124:	f3 48 0f 2a d1       	cvtsi2ss %rcx,%xmm2
    b129:	f3 48 0f 2a e2       	cvtsi2ss %rdx,%xmm4
    b12e:	f3 48 0f 2a d8       	cvtsi2ss %rax,%xmm3
    b133:	e9 0d b5 ff ff       	jmp    6645 <sg_raster_triangle_depth_capture+0x3195>
    b138:	31 ff                	xor    %edi,%edi
    b13a:	0f 2f c8             	comiss %xmm0,%xmm1
    b13d:	40 0f 95 c7          	setne  %dil
    b141:	eb ad                	jmp    b0f0 <sg_raster_triangle_depth_capture+0x7c40>
    b143:	31 ff                	xor    %edi,%edi
    b145:	0f 2f c8             	comiss %xmm0,%xmm1
    b148:	40 0f 97 c7          	seta   %dil
    b14c:	eb a2                	jmp    b0f0 <sg_raster_triangle_depth_capture+0x7c40>
    b14e:	31 ff                	xor    %edi,%edi
    b150:	0f 2f c1             	comiss %xmm1,%xmm0
    b153:	40 0f 93 c7          	setae  %dil
    b157:	eb 97                	jmp    b0f0 <sg_raster_triangle_depth_capture+0x7c40>
    b159:	31 ff                	xor    %edi,%edi
    b15b:	0f 2f c8             	comiss %xmm0,%xmm1
    b15e:	40 0f 94 c7          	sete   %dil
    b162:	eb 8c                	jmp    b0f0 <sg_raster_triangle_depth_capture+0x7c40>
    b164:	8b ac 24 20 01 00 00 	mov    0x120(%rsp),%ebp
    b16b:	85 ed                	test   %ebp,%ebp
    b16d:	75 1c                	jne    b18b <sg_raster_triangle_depth_capture+0x7cdb>
    b16f:	41 0f 28 cb          	movaps %xmm11,%xmm1
    b173:	f3 0f 5c 0d 00 00 00 	subss  0x0(%rip),%xmm1        # b17b <sg_raster_triangle_depth_capture+0x7ccb>
    b17a:	00 
    b17b:	31 ff                	xor    %edi,%edi
    b17d:	0f 2f c1             	comiss %xmm1,%xmm0
    b180:	40 0f 93 c7          	setae  %dil
    b184:	89 bc 24 20 01 00 00 	mov    %edi,0x120(%rsp)
    b18b:	41 83 e4 f7          	and    $0xfffffff7,%r12d
    b18f:	e9 b4 f9 ff ff       	jmp    ab48 <sg_raster_triangle_depth_capture+0x7698>
    b194:	45 31 c0             	xor    %r8d,%r8d
    b197:	0f 2f f0             	comiss %xmm0,%xmm6
    b19a:	41 0f 93 c0          	setae  %r8b
    b19e:	44 8b 9c 24 20 01 00 	mov    0x120(%rsp),%r11d
    b1a5:	00 
    b1a6:	45 85 db             	test   %r11d,%r11d
    b1a9:	0f 84 89 b3 ff ff    	je     6538 <sg_raster_triangle_depth_capture+0x3088>
    b1af:	45 85 c0             	test   %r8d,%r8d
    b1b2:	0f 85 89 b3 ff ff    	jne    6541 <sg_raster_triangle_depth_capture+0x3091>
    b1b8:	41 83 e4 fb          	and    $0xfffffffb,%r12d
    b1bc:	e9 9a c1 ff ff       	jmp    735b <sg_raster_triangle_depth_capture+0x3eab>
    b1c1:	45 31 c0             	xor    %r8d,%r8d
    b1c4:	0f 2f f0             	comiss %xmm0,%xmm6
    b1c7:	41 0f 95 c0          	setne  %r8b
    b1cb:	eb d1                	jmp    b19e <sg_raster_triangle_depth_capture+0x7cee>
    b1cd:	45 31 c0             	xor    %r8d,%r8d
    b1d0:	0f 2f f0             	comiss %xmm0,%xmm6
    b1d3:	41 0f 97 c0          	seta   %r8b
    b1d7:	eb c5                	jmp    b19e <sg_raster_triangle_depth_capture+0x7cee>
    b1d9:	45 31 c0             	xor    %r8d,%r8d
    b1dc:	0f 2f c6             	comiss %xmm6,%xmm0
    b1df:	41 0f 93 c0          	setae  %r8b
    b1e3:	eb b9                	jmp    b19e <sg_raster_triangle_depth_capture+0x7cee>
    b1e5:	45 31 c0             	xor    %r8d,%r8d
    b1e8:	0f 2f f0             	comiss %xmm0,%xmm6
    b1eb:	41 0f 94 c0          	sete   %r8b
    b1ef:	eb ad                	jmp    b19e <sg_raster_triangle_depth_capture+0x7cee>
    b1f1:	8b 9c 24 20 01 00 00 	mov    0x120(%rsp),%ebx
    b1f8:	85 db                	test   %ebx,%ebx
    b1fa:	75 bc                	jne    b1b8 <sg_raster_triangle_depth_capture+0x7d08>
    b1fc:	0f 28 ce             	movaps %xmm6,%xmm1
    b1ff:	f3 0f 5c 0d 00 00 00 	subss  0x0(%rip),%xmm1        # b207 <sg_raster_triangle_depth_capture+0x7d57>
    b206:	00 
    b207:	31 db                	xor    %ebx,%ebx
    b209:	0f 2f c1             	comiss %xmm1,%xmm0
    b20c:	0f 93 c3             	setae  %bl
    b20f:	89 9c 24 20 01 00 00 	mov    %ebx,0x120(%rsp)
    b216:	eb a0                	jmp    b1b8 <sg_raster_triangle_depth_capture+0x7d08>
    b218:	0f 28 c7             	movaps %xmm7,%xmm0
    b21b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b220:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    b225:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b229:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    b22d:	66 44 0f 66 c0       	pcmpgtd %xmm0,%xmm8
    b232:	f3 0f 10 80 50 36 00 	movss  0x3650(%rax),%xmm0
    b239:	00 
    b23a:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b23e:	0f 58 c4             	addps  %xmm4,%xmm0
    b241:	44 0f 55 c7          	andnps %xmm7,%xmm8
    b245:	0f 28 f8             	movaps %xmm0,%xmm7
    b248:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b24c:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b250:	0f 55 d8             	andnps %xmm0,%xmm3
    b253:	0f 28 c5             	movaps %xmm5,%xmm0
    b256:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b25a:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b25f:	0f 28 84 24 30 04 00 	movaps 0x430(%rsp),%xmm0
    b266:	00 
    b267:	0f 59 c3             	mulps  %xmm3,%xmm0
    b26a:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b26e:	0f 28 f8             	movaps %xmm0,%xmm7
    b271:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b275:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b279:	0f 55 d8             	andnps %xmm0,%xmm3
    b27c:	0f 28 c5             	movaps %xmm5,%xmm0
    b27f:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b283:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b288:	0f 28 84 24 70 04 00 	movaps 0x470(%rsp),%xmm0
    b28f:	00 
    b290:	0f 58 c3             	addps  %xmm3,%xmm0
    b293:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b297:	0f 28 f8             	movaps %xmm0,%xmm7
    b29a:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b29e:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    b2a2:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    b2a6:	0f 55 d8             	andnps %xmm0,%xmm3
    b2a9:	0f 28 c5             	movaps %xmm5,%xmm0
    b2ac:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b2b0:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b2b5:	f3 0f 10 80 54 36 00 	movss  0x3654(%rax),%xmm0
    b2bc:	00 
    b2bd:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b2c1:	0f 58 c4             	addps  %xmm4,%xmm0
    b2c4:	44 0f 28 c8          	movaps %xmm0,%xmm9
    b2c8:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
    b2cd:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
    b2d2:	0f 55 f8             	andnps %xmm0,%xmm7
    b2d5:	0f 28 c5             	movaps %xmm5,%xmm0
    b2d8:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    b2dc:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b2e1:	0f 28 84 24 40 04 00 	movaps 0x440(%rsp),%xmm0
    b2e8:	00 
    b2e9:	0f 59 c7             	mulps  %xmm7,%xmm0
    b2ec:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    b2f0:	44 0f 28 c8          	movaps %xmm0,%xmm9
    b2f4:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
    b2f9:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
    b2fe:	0f 55 f8             	andnps %xmm0,%xmm7
    b301:	0f 28 c5             	movaps %xmm5,%xmm0
    b304:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    b308:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b30d:	0f 28 84 24 80 04 00 	movaps 0x480(%rsp),%xmm0
    b314:	00 
    b315:	0f 58 c7             	addps  %xmm7,%xmm0
    b318:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    b31c:	44 0f 28 c8          	movaps %xmm0,%xmm9
    b320:	44 0f c2 ca 01       	cmpltps %xmm2,%xmm9
    b325:	66 41 0f 66 f9       	pcmpgtd %xmm9,%xmm7
    b32a:	0f 55 f8             	andnps %xmm0,%xmm7
    b32d:	0f 28 c5             	movaps %xmm5,%xmm0
    b330:	0f c2 c7 01          	cmpltps %xmm7,%xmm0
    b334:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b339:	f3 0f 10 80 58 36 00 	movss  0x3658(%rax),%xmm0
    b340:	00 
    b341:	44 0f 28 e7          	movaps %xmm7,%xmm12
    b345:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b349:	0f 58 c4             	addps  %xmm4,%xmm0
    b34c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    b350:	0f 28 f8             	movaps %xmm0,%xmm7
    b353:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b357:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
    b35b:	0f 55 e0             	andnps %xmm0,%xmm4
    b35e:	0f 28 c5             	movaps %xmm5,%xmm0
    b361:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    b365:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b36a:	0f 28 84 24 50 04 00 	movaps 0x450(%rsp),%xmm0
    b371:	00 
    b372:	0f 59 c4             	mulps  %xmm4,%xmm0
    b375:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    b379:	0f 28 f8             	movaps %xmm0,%xmm7
    b37c:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b380:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
    b384:	0f 55 e0             	andnps %xmm0,%xmm4
    b387:	0f 28 c5             	movaps %xmm5,%xmm0
    b38a:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    b38e:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b393:	0f 28 84 24 90 04 00 	movaps 0x490(%rsp),%xmm0
    b39a:	00 
    b39b:	0f 58 c4             	addps  %xmm4,%xmm0
    b39e:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    b3a2:	0f 28 f8             	movaps %xmm0,%xmm7
    b3a5:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b3a9:	66 0f 66 e7          	pcmpgtd %xmm7,%xmm4
    b3ad:	0f 55 e0             	andnps %xmm0,%xmm4
    b3b0:	0f 28 c5             	movaps %xmm5,%xmm0
    b3b3:	0f c2 c4 01          	cmpltps %xmm4,%xmm0
    b3b7:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    b3bc:	0f 28 c5             	movaps %xmm5,%xmm0
    b3bf:	41 0f c2 c0 01       	cmpltps %xmm8,%xmm0
    b3c4:	66 44 0f 38 14 c5    	blendvps %xmm0,%xmm5,%xmm8
    b3ca:	0f 28 84 24 60 04 00 	movaps 0x460(%rsp),%xmm0
    b3d1:	00 
    b3d2:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    b3d6:	0f 28 f8             	movaps %xmm0,%xmm7
    b3d9:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    b3dd:	66 0f 66 cf          	pcmpgtd %xmm7,%xmm1
    b3e1:	0f 55 c8             	andnps %xmm0,%xmm1
    b3e4:	0f 28 c5             	movaps %xmm5,%xmm0
    b3e7:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b3eb:	0f 28 f9             	movaps %xmm1,%xmm7
    b3ee:	66 0f 38 14 fd       	blendvps %xmm0,%xmm5,%xmm7
    b3f3:	e9 ee b9 ff ff       	jmp    6de6 <sg_raster_triangle_depth_capture+0x3936>
    b3f8:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    b3fd:	45 0f 28 c4          	movaps %xmm12,%xmm8
    b401:	41 0f 28 fc          	movaps %xmm12,%xmm7
    b405:	41 0f 28 f4          	movaps %xmm12,%xmm6
    b409:	e9 5f a3 ff ff       	jmp    576d <sg_raster_triangle_depth_capture+0x22bd>
    b40e:	0f 59 f0             	mulps  %xmm0,%xmm6
    b411:	45 0f 28 e2          	movaps %xmm10,%xmm12
    b415:	0f 59 f8             	mulps  %xmm0,%xmm7
    b418:	44 0f 59 c0          	mulps  %xmm0,%xmm8
    b41c:	44 0f 59 e0          	mulps  %xmm0,%xmm12
    b420:	e9 48 a3 ff ff       	jmp    576d <sg_raster_triangle_depth_capture+0x22bd>
    b425:	48 8b 41 30          	mov    0x30(%rcx),%rax
    b429:	48 85 c0             	test   %rax,%rax
    b42c:	74 1c                	je     b44a <sg_raster_triangle_depth_capture+0x7f9a>
    b42e:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    b435:	00 
    b436:	8b 79 24             	mov    0x24(%rcx),%edi
    b439:	85 ff                	test   %edi,%edi
    b43b:	7e 0d                	jle    b44a <sg_raster_triangle_depth_capture+0x7f9a>
    b43d:	44 8b 41 28          	mov    0x28(%rcx),%r8d
    b441:	45 85 c0             	test   %r8d,%r8d
    b444:	0f 8f af 12 00 00    	jg     c6f9 <sg_raster_triangle_depth_capture+0x9249>
    b44a:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    b451:	00 
    b452:	f3 0f 10 40 58       	movss  0x58(%rax),%xmm0
    b457:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
    b45e:	00 
    b45f:	f3 0f 10 50 58       	movss  0x58(%rax),%xmm2
    b464:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b468:	41 0f 59 c5          	mulps  %xmm13,%xmm0
    b46c:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    b473:	00 
    b474:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b478:	0f 59 94 24 b0 01 00 	mulps  0x1b0(%rsp),%xmm2
    b47f:	00 
    b480:	0f 58 c2             	addps  %xmm2,%xmm0
    b483:	f3 0f 10 50 58       	movss  0x58(%rax),%xmm2
    b488:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b48c:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    b490:	0f 58 c2             	addps  %xmm2,%xmm0
    b493:	0f 28 94 24 d0 01 00 	movaps 0x1d0(%rsp),%xmm2
    b49a:	00 
    b49b:	0f 59 d0             	mulps  %xmm0,%xmm2
    b49e:	e9 58 f4 ff ff       	jmp    a8fb <sg_raster_triangle_depth_capture+0x744b>
    b4a3:	31 ff                	xor    %edi,%edi
    b4a5:	41 0f 2f c2          	comiss %xmm10,%xmm0
    b4a9:	40 0f 97 c7          	seta   %dil
    b4ad:	e9 64 af ff ff       	jmp    6416 <sg_raster_triangle_depth_capture+0x2f66>
    b4b2:	31 ff                	xor    %edi,%edi
    b4b4:	0f 2f 84 24 60 01 00 	comiss 0x160(%rsp),%xmm0
    b4bb:	00 
    b4bc:	40 0f 97 c7          	seta   %dil
    b4c0:	e9 7c fb ff ff       	jmp    b041 <sg_raster_triangle_depth_capture+0x7b91>
    b4c5:	31 ff                	xor    %edi,%edi
    b4c7:	41 0f 2f c3          	comiss %xmm11,%xmm0
    b4cb:	40 0f 97 c7          	seta   %dil
    b4cf:	e9 1c fc ff ff       	jmp    b0f0 <sg_raster_triangle_depth_capture+0x7c40>
    b4d4:	45 31 c0             	xor    %r8d,%r8d
    b4d7:	0f 2f c6             	comiss %xmm6,%xmm0
    b4da:	41 0f 97 c0          	seta   %r8b
    b4de:	e9 bb fc ff ff       	jmp    b19e <sg_raster_triangle_depth_capture+0x7cee>
    b4e3:	85 ff                	test   %edi,%edi
    b4e5:	0f 85 1c fc ff ff    	jne    b107 <sg_raster_triangle_depth_capture+0x7c57>
    b4eb:	e9 7f fc ff ff       	jmp    b16f <sg_raster_triangle_depth_capture+0x7cbf>
    b4f0:	85 ff                	test   %edi,%edi
    b4f2:	0f 85 37 af ff ff    	jne    642f <sg_raster_triangle_depth_capture+0x2f7f>
    b4f8:	e9 d6 fa ff ff       	jmp    afd3 <sg_raster_triangle_depth_capture+0x7b23>
    b4fd:	89 bc 24 20 01 00 00 	mov    %edi,0x120(%rsp)
    b504:	85 ff                	test   %edi,%edi
    b506:	0f 85 a4 a9 ff ff    	jne    5eb0 <sg_raster_triangle_depth_capture+0x2a00>
    b50c:	e9 74 a9 ff ff       	jmp    5e85 <sg_raster_triangle_depth_capture+0x29d5>
    b511:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b519 <sg_raster_triangle_depth_capture+0x8069>
    b518:	00 
    b519:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b51d:	0f 28 d0             	movaps %xmm0,%xmm2
    b520:	41 0f 28 de          	movaps %xmm14,%xmm3
    b524:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b528:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b52c:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b530:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b534:	e9 b8 e3 ff ff       	jmp    98f1 <sg_raster_triangle_depth_capture+0x6441>
    b539:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b541 <sg_raster_triangle_depth_capture+0x8091>
    b540:	00 
    b541:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b545:	0f 28 d0             	movaps %xmm0,%xmm2
    b548:	41 0f 28 de          	movaps %xmm14,%xmm3
    b54c:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b550:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b554:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b558:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b55c:	e9 e8 e8 ff ff       	jmp    9e49 <sg_raster_triangle_depth_capture+0x6999>
    b561:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b569 <sg_raster_triangle_depth_capture+0x80b9>
    b568:	00 
    b569:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b56d:	0f 28 d0             	movaps %xmm0,%xmm2
    b570:	41 0f 28 de          	movaps %xmm14,%xmm3
    b574:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b578:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b57c:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b580:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b584:	e9 14 e6 ff ff       	jmp    9b9d <sg_raster_triangle_depth_capture+0x66ed>
    b589:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b591 <sg_raster_triangle_depth_capture+0x80e1>
    b590:	00 
    b591:	41 0f 28 cf          	movaps %xmm15,%xmm1
    b595:	0f 28 d0             	movaps %xmm0,%xmm2
    b598:	41 0f 28 de          	movaps %xmm14,%xmm3
    b59c:	f3 0f 59 cc          	mulss  %xmm4,%xmm1
    b5a0:	f3 0f 59 d4          	mulss  %xmm4,%xmm2
    b5a4:	f3 0f 59 dc          	mulss  %xmm4,%xmm3
    b5a8:	f3 0f 59 e5          	mulss  %xmm5,%xmm4
    b5ac:	e9 94 e0 ff ff       	jmp    9645 <sg_raster_triangle_depth_capture+0x6195>
    b5b1:	f3 42 0f 10 8c a4 20 	movss  0x320(%rsp,%r12,4),%xmm1
    b5b8:	03 00 00 
    b5bb:	48 83 ec 08          	sub    $0x8,%rsp
    b5bf:	41 51                	push   %r9
    b5c1:	45 8b 47 1c          	mov    0x1c(%r15),%r8d
    b5c5:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    b5cb:	e8 00 00 00 00       	call   b5d0 <sg_raster_triangle_depth_capture+0x8120>
    b5d0:	59                   	pop    %rcx
    b5d1:	5e                   	pop    %rsi
    b5d2:	e9 14 f4 ff ff       	jmp    a9eb <sg_raster_triangle_depth_capture+0x753b>
    b5d7:	41 81 fb 04 03 00 00 	cmp    $0x304,%r11d
    b5de:	0f 84 ab 04 00 00    	je     ba8f <sg_raster_triangle_depth_capture+0x85df>
    b5e4:	44 0f 28 cd          	movaps %xmm5,%xmm9
    b5e8:	41 0f 28 cb          	movaps %xmm11,%xmm1
    b5ec:	44 0f 5c c8          	subps  %xmm0,%xmm9
    b5f0:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    b5f4:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    b5f8:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    b5fc:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    b600:	41 0f 58 c4          	addps  %xmm12,%xmm0
    b604:	0f 58 f4             	addps  %xmm4,%xmm6
    b607:	0f 58 fb             	addps  %xmm3,%xmm7
    b60a:	44 0f 58 c1          	addps  %xmm1,%xmm8
    b60e:	44 0f 28 d0          	movaps %xmm0,%xmm10
    b612:	e9 b0 ba ff ff       	jmp    70c7 <sg_raster_triangle_depth_capture+0x3c17>
    b617:	48 8b 53 30          	mov    0x30(%rbx),%rdx
    b61b:	48 85 d2             	test   %rdx,%rdx
    b61e:	74 19                	je     b639 <sg_raster_triangle_depth_capture+0x8189>
    b620:	8b 6b 24             	mov    0x24(%rbx),%ebp
    b623:	85 ed                	test   %ebp,%ebp
    b625:	7e 12                	jle    b639 <sg_raster_triangle_depth_capture+0x8189>
    b627:	8b 73 28             	mov    0x28(%rbx),%esi
    b62a:	89 b4 24 00 02 00 00 	mov    %esi,0x200(%rsp)
    b631:	85 f6                	test   %esi,%esi
    b633:	0f 8f 2d 06 00 00    	jg     bc66 <sg_raster_triangle_depth_capture+0x87b6>
    b639:	f3 0f 10 50 08       	movss  0x8(%rax),%xmm2
    b63e:	f3 41 0f 10 5a 08    	movss  0x8(%r10),%xmm3
    b644:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b648:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    b64c:	0f 59 94 24 b0 01 00 	mulps  0x1b0(%rsp),%xmm2
    b653:	00 
    b654:	0f 59 9c 24 f0 01 00 	mulps  0x1f0(%rsp),%xmm3
    b65b:	00 
    b65c:	0f 58 d3             	addps  %xmm3,%xmm2
    b65f:	f3 0f 10 59 08       	movss  0x8(%rcx),%xmm3
    b664:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    b668:	41 0f 59 dd          	mulps  %xmm13,%xmm3
    b66c:	0f 58 d3             	addps  %xmm3,%xmm2
    b66f:	0f 59 94 24 d0 01 00 	mulps  0x1d0(%rsp),%xmm2
    b676:	00 
    b677:	e9 7e b3 ff ff       	jmp    69fa <sg_raster_triangle_depth_capture+0x354a>
    b67c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b681:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b685:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b689:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b68d:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b694:	0f 58 c4             	addps  %xmm4,%xmm0
    b697:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b69e:	00 
    b69f:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b6a3:	0f 28 e8             	movaps %xmm0,%xmm5
    b6a6:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b6aa:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b6ae:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b6b6 <sg_raster_triangle_depth_capture+0x8206>
    b6b5:	00 
    b6b6:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b6ba:	0f 55 d8             	andnps %xmm0,%xmm3
    b6bd:	0f 28 c5             	movaps %xmm5,%xmm0
    b6c0:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b6c4:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b6c9:	0f 28 84 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm0
    b6d0:	00 
    b6d1:	0f 59 c3             	mulps  %xmm3,%xmm0
    b6d4:	0f 28 d8             	movaps %xmm0,%xmm3
    b6d7:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b6db:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b6e3 <sg_raster_triangle_depth_capture+0x8233>
    b6e2:	00 
    b6e3:	f3 0f 5d a4 24 1c 03 	minss  0x31c(%rsp),%xmm4
    b6ea:	00 00 
    b6ec:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b6f0:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b6f4:	f3 0f 59 a4 24 dc 03 	mulss  0x3dc(%rsp),%xmm4
    b6fb:	00 00 
    b6fd:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b705 <sg_raster_triangle_depth_capture+0x8255>
    b704:	00 
    b705:	0f 55 c8             	andnps %xmm0,%xmm1
    b708:	0f 28 c5             	movaps %xmm5,%xmm0
    b70b:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b70f:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b713:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b718:	0f 28 c1             	movaps %xmm1,%xmm0
    b71b:	0f 58 84 24 e0 03 00 	addps  0x3e0(%rsp),%xmm0
    b722:	00 
    b723:	e9 de ef ff ff       	jmp    a706 <sg_raster_triangle_depth_capture+0x7256>
    b728:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b72d:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b731:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b735:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b739:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b740:	0f 58 c4             	addps  %xmm4,%xmm0
    b743:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b74a:	00 
    b74b:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b74f:	0f 28 e8             	movaps %xmm0,%xmm5
    b752:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b756:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b75a:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b762 <sg_raster_triangle_depth_capture+0x82b2>
    b761:	00 
    b762:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b766:	0f 55 d8             	andnps %xmm0,%xmm3
    b769:	0f 28 c5             	movaps %xmm5,%xmm0
    b76c:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b770:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b775:	0f 28 84 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm0
    b77c:	00 
    b77d:	0f 59 c3             	mulps  %xmm3,%xmm0
    b780:	0f 28 d8             	movaps %xmm0,%xmm3
    b783:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b787:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b78f <sg_raster_triangle_depth_capture+0x82df>
    b78e:	00 
    b78f:	f3 0f 5d a4 24 1c 03 	minss  0x31c(%rsp),%xmm4
    b796:	00 00 
    b798:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b79c:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b7a0:	f3 0f 59 a4 24 dc 03 	mulss  0x3dc(%rsp),%xmm4
    b7a7:	00 00 
    b7a9:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b7b1 <sg_raster_triangle_depth_capture+0x8301>
    b7b0:	00 
    b7b1:	0f 55 c8             	andnps %xmm0,%xmm1
    b7b4:	0f 28 c5             	movaps %xmm5,%xmm0
    b7b7:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b7bb:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b7bf:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b7c4:	0f 28 c1             	movaps %xmm1,%xmm0
    b7c7:	0f 58 84 24 e0 03 00 	addps  0x3e0(%rsp),%xmm0
    b7ce:	00 
    b7cf:	e9 bc ea ff ff       	jmp    a290 <sg_raster_triangle_depth_capture+0x6de0>
    b7d4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b7d9:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b7dd:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b7e1:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b7e5:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b7ec:	0f 58 c4             	addps  %xmm4,%xmm0
    b7ef:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b7f6:	00 
    b7f7:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b7fb:	0f 28 e8             	movaps %xmm0,%xmm5
    b7fe:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b802:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b806:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b80e <sg_raster_triangle_depth_capture+0x835e>
    b80d:	00 
    b80e:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b812:	0f 55 d8             	andnps %xmm0,%xmm3
    b815:	0f 28 c5             	movaps %xmm5,%xmm0
    b818:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b81c:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b821:	0f 28 84 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm0
    b828:	00 
    b829:	0f 59 c3             	mulps  %xmm3,%xmm0
    b82c:	0f 28 d8             	movaps %xmm0,%xmm3
    b82f:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b833:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b83b <sg_raster_triangle_depth_capture+0x838b>
    b83a:	00 
    b83b:	f3 0f 5d a4 24 1c 03 	minss  0x31c(%rsp),%xmm4
    b842:	00 00 
    b844:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b848:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b84c:	f3 0f 59 a4 24 dc 03 	mulss  0x3dc(%rsp),%xmm4
    b853:	00 00 
    b855:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b85d <sg_raster_triangle_depth_capture+0x83ad>
    b85c:	00 
    b85d:	0f 55 c8             	andnps %xmm0,%xmm1
    b860:	0f 28 c5             	movaps %xmm5,%xmm0
    b863:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b867:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b86b:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b870:	0f 28 c1             	movaps %xmm1,%xmm0
    b873:	0f 58 84 24 e0 03 00 	addps  0x3e0(%rsp),%xmm0
    b87a:	00 
    b87b:	e9 75 eb ff ff       	jmp    a3f5 <sg_raster_triangle_depth_capture+0x6f45>
    b880:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b885:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b889:	66 0f ef c9          	pxor   %xmm1,%xmm1
    b88d:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    b891:	0f 10 a0 50 36 00 00 	movups 0x3650(%rax),%xmm4
    b898:	0f 58 c4             	addps  %xmm4,%xmm0
    b89b:	0f 29 a4 24 20 01 00 	movaps %xmm4,0x120(%rsp)
    b8a2:	00 
    b8a3:	66 0f ef e4          	pxor   %xmm4,%xmm4
    b8a7:	0f 28 e8             	movaps %xmm0,%xmm5
    b8aa:	0f c2 ec 01          	cmpltps %xmm4,%xmm5
    b8ae:	66 0f 66 dd          	pcmpgtd %xmm5,%xmm3
    b8b2:	f3 0f 10 2d 00 00 00 	movss  0x0(%rip),%xmm5        # b8ba <sg_raster_triangle_depth_capture+0x840a>
    b8b9:	00 
    b8ba:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b8be:	0f 55 d8             	andnps %xmm0,%xmm3
    b8c1:	0f 28 c5             	movaps %xmm5,%xmm0
    b8c4:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    b8c8:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    b8cd:	0f 28 84 24 d0 03 00 	movaps 0x3d0(%rsp),%xmm0
    b8d4:	00 
    b8d5:	0f 59 c3             	mulps  %xmm3,%xmm0
    b8d8:	0f 28 d8             	movaps %xmm0,%xmm3
    b8db:	0f c2 dc 01          	cmpltps %xmm4,%xmm3
    b8df:	f3 0f 10 25 00 00 00 	movss  0x0(%rip),%xmm4        # b8e7 <sg_raster_triangle_depth_capture+0x8437>
    b8e6:	00 
    b8e7:	f3 0f 5d a4 24 1c 03 	minss  0x31c(%rsp),%xmm4
    b8ee:	00 00 
    b8f0:	66 0f 66 cb          	pcmpgtd %xmm3,%xmm1
    b8f4:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b8f8:	f3 0f 59 a4 24 dc 03 	mulss  0x3dc(%rsp),%xmm4
    b8ff:	00 00 
    b901:	f3 0f 5d 25 00 00 00 	minss  0x0(%rip),%xmm4        # b909 <sg_raster_triangle_depth_capture+0x8459>
    b908:	00 
    b909:	0f 55 c8             	andnps %xmm0,%xmm1
    b90c:	0f 28 c5             	movaps %xmm5,%xmm0
    b90f:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    b913:	f3 0f 5f e2          	maxss  %xmm2,%xmm4
    b917:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    b91c:	0f 28 c1             	movaps %xmm1,%xmm0
    b91f:	0f 58 84 24 e0 03 00 	addps  0x3e0(%rsp),%xmm0
    b926:	00 
    b927:	e9 75 ec ff ff       	jmp    a5a1 <sg_raster_triangle_depth_capture+0x70f1>
    b92c:	0f 28 e5             	movaps %xmm5,%xmm4
    b92f:	44 0f 28 e0          	movaps %xmm0,%xmm12
    b933:	0f 28 d9             	movaps %xmm1,%xmm3
    b936:	0f 28 fa             	movaps %xmm2,%xmm7
    b939:	e9 a8 b4 ff ff       	jmp    6de6 <sg_raster_triangle_depth_capture+0x3936>
    b93e:	f3 0f 10 49 48       	movss  0x48(%rcx),%xmm1
    b943:	f3 0f 10 41 4c       	movss  0x4c(%rcx),%xmm0
    b948:	f3 0f 10 69 50       	movss  0x50(%rcx),%xmm5
    b94d:	f3 0f 10 51 54       	movss  0x54(%rcx),%xmm2
    b952:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    b956:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    b95a:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    b95e:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    b962:	e9 35 f1 ff ff       	jmp    aa9c <sg_raster_triangle_depth_capture+0x75ec>
    b967:	f3 42 0f 10 94 a4 70 	movss  0x370(%rsp,%r12,4),%xmm2
    b96e:	03 00 00 
    b971:	f3 42 0f 10 8c a4 20 	movss  0x320(%rsp,%r12,4),%xmm1
    b978:	03 00 00 
    b97b:	41 51                	push   %r9
    b97d:	6a 01                	push   $0x1
    b97f:	45 8b 47 1c          	mov    0x1c(%r15),%r8d
    b983:	45 8b 4f 20          	mov    0x20(%r15),%r9d
    b987:	e8 00 00 00 00       	call   b98c <sg_raster_triangle_depth_capture+0x84dc>
    b98c:	5f                   	pop    %rdi
    b98d:	41 58                	pop    %r8
    b98f:	e9 57 f0 ff ff       	jmp    a9eb <sg_raster_triangle_depth_capture+0x753b>
    b994:	44 0f 28 e5          	movaps %xmm5,%xmm12
    b998:	45 0f 5c e2          	subps  %xmm10,%xmm12
    b99c:	41 0f 59 f4          	mulps  %xmm12,%xmm6
    b9a0:	41 0f 59 fc          	mulps  %xmm12,%xmm7
    b9a4:	45 0f 59 c4          	mulps  %xmm12,%xmm8
    b9a8:	45 0f 59 e2          	mulps  %xmm10,%xmm12
    b9ac:	e9 bc 9d ff ff       	jmp    576d <sg_raster_triangle_depth_capture+0x22bd>
    b9b1:	44 0f 28 cd          	movaps %xmm5,%xmm9
    b9b5:	41 0f 28 cb          	movaps %xmm11,%xmm1
    b9b9:	45 0f 5c ca          	subps  %xmm10,%xmm9
    b9bd:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    b9c1:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    b9c5:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    b9c9:	44 0f 59 c8          	mulps  %xmm0,%xmm9
    b9cd:	0f 58 f4             	addps  %xmm4,%xmm6
    b9d0:	0f 58 fb             	addps  %xmm3,%xmm7
    b9d3:	44 0f 58 c1          	addps  %xmm1,%xmm8
    b9d7:	45 0f 28 d1          	movaps %xmm9,%xmm10
    b9db:	45 0f 58 d4          	addps  %xmm12,%xmm10
    b9df:	e9 e3 b6 ff ff       	jmp    70c7 <sg_raster_triangle_depth_capture+0x3c17>
    b9e4:	41 0f 58 c4          	addps  %xmm12,%xmm0
    b9e8:	0f 58 f4             	addps  %xmm4,%xmm6
    b9eb:	0f 58 fb             	addps  %xmm3,%xmm7
    b9ee:	45 0f 58 c3          	addps  %xmm11,%xmm8
    b9f2:	44 0f 28 d0          	movaps %xmm0,%xmm10
    b9f6:	e9 cc b6 ff ff       	jmp    70c7 <sg_raster_triangle_depth_capture+0x3c17>
    b9fb:	45 0f 28 d4          	movaps %xmm12,%xmm10
    b9ff:	e9 c3 b6 ff ff       	jmp    70c7 <sg_raster_triangle_depth_capture+0x3c17>
    ba04:	0f 59 e4             	mulps  %xmm4,%xmm4
    ba07:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    ba0b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    ba10:	0f 28 c4             	movaps %xmm4,%xmm0
    ba13:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    ba17:	66 0f 66 d8          	pcmpgtd %xmm0,%xmm3
    ba1b:	0f 28 c5             	movaps %xmm5,%xmm0
    ba1e:	0f 55 dc             	andnps %xmm4,%xmm3
    ba21:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    ba25:	0f 28 e3             	movaps %xmm3,%xmm4
    ba28:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    ba2c:	66 0f 38 14 e5       	blendvps %xmm0,%xmm5,%xmm4
    ba31:	f3 0f 10 80 38 37 00 	movss  0x3738(%rax),%xmm0
    ba38:	00 
    ba39:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    ba3d:	0f 59 c4             	mulps  %xmm4,%xmm0
    ba40:	0f 28 f8             	movaps %xmm0,%xmm7
    ba43:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    ba47:	66 0f 66 df          	pcmpgtd %xmm7,%xmm3
    ba4b:	0f 55 d8             	andnps %xmm0,%xmm3
    ba4e:	0f 28 c5             	movaps %xmm5,%xmm0
    ba51:	0f c2 c3 01          	cmpltps %xmm3,%xmm0
    ba55:	66 0f 38 14 dd       	blendvps %xmm0,%xmm5,%xmm3
    ba5a:	f3 0f 10 80 3c 37 00 	movss  0x373c(%rax),%xmm0
    ba61:	00 
    ba62:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    ba66:	0f 59 c4             	mulps  %xmm4,%xmm0
    ba69:	0f 28 f8             	movaps %xmm0,%xmm7
    ba6c:	0f c2 fa 01          	cmpltps %xmm2,%xmm7
    ba70:	66 0f 66 cf          	pcmpgtd %xmm7,%xmm1
    ba74:	0f 55 c8             	andnps %xmm0,%xmm1
    ba77:	0f 28 c5             	movaps %xmm5,%xmm0
    ba7a:	0f c2 c1 01          	cmpltps %xmm1,%xmm0
    ba7e:	66 0f 38 14 cd       	blendvps %xmm0,%xmm5,%xmm1
    ba83:	44 0f 28 e1          	movaps %xmm1,%xmm12
    ba87:	0f 28 cc             	movaps %xmm4,%xmm1
    ba8a:	e9 04 b3 ff ff       	jmp    6d93 <sg_raster_triangle_depth_capture+0x38e3>
    ba8f:	0f 59 e0             	mulps  %xmm0,%xmm4
    ba92:	41 0f 28 cb          	movaps %xmm11,%xmm1
    ba96:	0f 59 d8             	mulps  %xmm0,%xmm3
    ba99:	0f 59 c8             	mulps  %xmm0,%xmm1
    ba9c:	0f 59 c0             	mulps  %xmm0,%xmm0
    ba9f:	0f 58 f4             	addps  %xmm4,%xmm6
    baa2:	0f 58 fb             	addps  %xmm3,%xmm7
    baa5:	44 0f 58 c1          	addps  %xmm1,%xmm8
    baa9:	41 0f 58 c4          	addps  %xmm12,%xmm0
    baad:	44 0f 28 d0          	movaps %xmm0,%xmm10
    bab1:	e9 11 b6 ff ff       	jmp    70c7 <sg_raster_triangle_depth_capture+0x3c17>
    bab6:	8b b4 24 c0 01 00 00 	mov    0x1c0(%rsp),%esi
    babd:	4c 89 e2             	mov    %r12,%rdx
    bac0:	48 89 df             	mov    %rbx,%rdi
    bac3:	44 89 84 24 4c 02 00 	mov    %r8d,0x24c(%rsp)
    baca:	00 
    bacb:	44 89 9c 24 30 02 00 	mov    %r11d,0x230(%rsp)
    bad2:	00 
    bad3:	48 89 8c 24 40 02 00 	mov    %rcx,0x240(%rsp)
    bada:	00 
    badb:	48 89 84 24 20 02 00 	mov    %rax,0x220(%rsp)
    bae2:	00 
    bae3:	4c 89 94 24 10 02 00 	mov    %r10,0x210(%rsp)
    baea:	00 
    baeb:	0f 29 ac 24 50 02 00 	movaps %xmm5,0x250(%rsp)
    baf2:	00 
    baf3:	44 0f 29 ac 24 00 02 	movaps %xmm13,0x200(%rsp)
    bafa:	00 00 
    bafc:	e8 00 00 00 00       	call   bb01 <sg_raster_triangle_depth_capture+0x8651>
    bb01:	4c 8b 94 24 10 02 00 	mov    0x210(%rsp),%r10
    bb08:	00 
    bb09:	44 0f 28 ac 24 00 02 	movaps 0x200(%rsp),%xmm13
    bb10:	00 00 
    bb12:	48 8b 84 24 20 02 00 	mov    0x220(%rsp),%rax
    bb19:	00 
    bb1a:	48 8b 8c 24 40 02 00 	mov    0x240(%rsp),%rcx
    bb21:	00 
    bb22:	44 8b 9c 24 30 02 00 	mov    0x230(%rsp),%r11d
    bb29:	00 
    bb2a:	44 8b 84 24 4c 02 00 	mov    0x24c(%rsp),%r8d
    bb31:	00 
    bb32:	0f 28 ac 24 50 02 00 	movaps 0x250(%rsp),%xmm5
    bb39:	00 
    bb3a:	e9 44 b0 ff ff       	jmp    6b83 <sg_raster_triangle_depth_capture+0x36d3>
    bb3f:	44 8b b4 24 38 01 00 	mov    0x138(%rsp),%r14d
    bb46:	00 
    bb47:	c7 84 24 f4 00 00 00 	movl   $0x0,0xf4(%rsp)
    bb4e:	00 00 00 00 
    bb52:	45 85 f6             	test   %r14d,%r14d
    bb55:	0f 85 f9 e5 ff ff    	jne    a154 <sg_raster_triangle_depth_capture+0x6ca4>
    bb5b:	85 d2                	test   %edx,%edx
    bb5d:	0f 84 4d 80 ff ff    	je     3bb0 <sg_raster_triangle_depth_capture+0x700>
    bb63:	e9 3d 7f ff ff       	jmp    3aa5 <sg_raster_triangle_depth_capture+0x5f5>
    bb68:	66 0f ef c0          	pxor   %xmm0,%xmm0
    bb6c:	8b b4 24 c0 01 00 00 	mov    0x1c0(%rsp),%esi
    bb73:	48 89 cf             	mov    %rcx,%rdi
    bb76:	48 8d 94 24 30 03 00 	lea    0x330(%rsp),%rdx
    bb7d:	00 
    bb7e:	0f 29 84 24 30 03 00 	movaps %xmm0,0x330(%rsp)
    bb85:	00 
    bb86:	0f 29 84 24 40 03 00 	movaps %xmm0,0x340(%rsp)
    bb8d:	00 
    bb8e:	0f 29 84 24 50 03 00 	movaps %xmm0,0x350(%rsp)
    bb95:	00 
    bb96:	0f 29 84 24 60 03 00 	movaps %xmm0,0x360(%rsp)
    bb9d:	00 
    bb9e:	41 0f 28 c1          	movaps %xmm9,%xmm0
    bba2:	44 89 8c 24 40 02 00 	mov    %r9d,0x240(%rsp)
    bba9:	00 
    bbaa:	f3 44 0f 11 94 24 20 	movss  %xmm10,0x220(%rsp)
    bbb1:	02 00 00 
    bbb4:	0f 29 bc 24 10 02 00 	movaps %xmm7,0x210(%rsp)
    bbbb:	00 
    bbbc:	0f 29 a4 24 00 02 00 	movaps %xmm4,0x200(%rsp)
    bbc3:	00 
    bbc4:	44 0f 29 a4 24 f0 01 	movaps %xmm12,0x1f0(%rsp)
    bbcb:	00 00 
    bbcd:	f3 0f 11 b4 24 e0 01 	movss  %xmm6,0x1e0(%rsp)
    bbd4:	00 00 
    bbd6:	f3 44 0f 11 9c 24 d0 	movss  %xmm11,0x1d0(%rsp)
    bbdd:	01 00 00 
    bbe0:	0f 29 9c 24 b0 01 00 	movaps %xmm3,0x1b0(%rsp)
    bbe7:	00 
    bbe8:	e8 00 00 00 00       	call   bbed <sg_raster_triangle_depth_capture+0x873d>
    bbed:	48 8b 84 24 f0 04 00 	mov    0x4f0(%rsp),%rax
    bbf4:	00 
    bbf5:	0f 28 8c 24 30 03 00 	movaps 0x330(%rsp),%xmm1
    bbfc:	00 
    bbfd:	0f 28 84 24 40 03 00 	movaps 0x340(%rsp),%xmm0
    bc04:	00 
    bc05:	0f 28 ac 24 50 03 00 	movaps 0x350(%rsp),%xmm5
    bc0c:	00 
    bc0d:	0f 28 94 24 60 03 00 	movaps 0x360(%rsp),%xmm2
    bc14:	00 
    bc15:	8b b0 64 01 00 00    	mov    0x164(%rax),%esi
    bc1b:	0f 28 9c 24 b0 01 00 	movaps 0x1b0(%rsp),%xmm3
    bc22:	00 
    bc23:	f3 44 0f 10 9c 24 d0 	movss  0x1d0(%rsp),%xmm11
    bc2a:	01 00 00 
    bc2d:	0f 28 a4 24 00 02 00 	movaps 0x200(%rsp),%xmm4
    bc34:	00 
    bc35:	0f 28 bc 24 10 02 00 	movaps 0x210(%rsp),%xmm7
    bc3c:	00 
    bc3d:	f3 0f 10 b4 24 e0 01 	movss  0x1e0(%rsp),%xmm6
    bc44:	00 00 
    bc46:	44 8b 8c 24 40 02 00 	mov    0x240(%rsp),%r9d
    bc4d:	00 
    bc4e:	44 0f 28 a4 24 f0 01 	movaps 0x1f0(%rsp),%xmm12
    bc55:	00 00 
    bc57:	f3 44 0f 10 94 24 20 	movss  0x220(%rsp),%xmm10
    bc5e:	02 00 00 
    bc61:	e9 36 ee ff ff       	jmp    aa9c <sg_raster_triangle_depth_capture+0x75ec>
    bc66:	8b 73 18             	mov    0x18(%rbx),%esi
    bc69:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
    bc6e:	f3 44 0f 2a f5       	cvtsi2ss %ebp,%xmm14
    bc73:	81 fe 00 29 00 00    	cmp    $0x2900,%esi
    bc79:	40 0f 94 c7          	sete   %dil
    bc7d:	81 fe 2f 81 00 00    	cmp    $0x812f,%esi
    bc83:	40 0f 94 c6          	sete   %sil
    bc87:	40 08 f7             	or     %sil,%dil
    bc8a:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    bc8f:	40 88 bc 24 10 02 00 	mov    %dil,0x210(%rsp)
    bc96:	00 
    bc97:	0f 85 fc 05 00 00    	jne    c299 <sg_raster_triangle_depth_capture+0x8de9>
    bc9d:	0f 28 d0             	movaps %xmm0,%xmm2
    bca0:	66 0f 3a 08 d8 01    	roundps $0x1,%xmm0,%xmm3
    bca6:	0f 5c d3             	subps  %xmm3,%xmm2
    bca9:	8b 73 1c             	mov    0x1c(%rbx),%esi
    bcac:	44 0f 59 f2          	mulps  %xmm2,%xmm14
    bcb0:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
    bcb5:	f3 44 0f 2a a4 24 00 	cvtsi2ssl 0x200(%rsp),%xmm12
    bcbc:	02 00 00 
    bcbf:	81 fe 00 29 00 00    	cmp    $0x2900,%esi
    bcc5:	40 0f 94 c7          	sete   %dil
    bcc9:	81 fe 2f 81 00 00    	cmp    $0x812f,%esi
    bccf:	40 0f 94 c6          	sete   %sil
    bcd3:	40 08 fe             	or     %dil,%sil
    bcd6:	45 0f c6 e4 00       	shufps $0x0,%xmm12,%xmm12
    bcdb:	40 88 b4 24 20 02 00 	mov    %sil,0x220(%rsp)
    bce2:	00 
    bce3:	0f 85 89 05 00 00    	jne    c272 <sg_raster_triangle_depth_capture+0x8dc2>
    bce9:	0f 28 d1             	movaps %xmm1,%xmm2
    bcec:	66 0f 3a 08 c1 01    	roundps $0x1,%xmm1,%xmm0
    bcf2:	0f 5c d0             	subps  %xmm0,%xmm2
    bcf5:	8b 7b 14             	mov    0x14(%rbx),%edi
    bcf8:	44 0f 59 e2          	mulps  %xmm2,%xmm12
    bcfc:	89 bc 24 40 02 00 00 	mov    %edi,0x240(%rsp)
    bd03:	81 ff 00 26 00 00    	cmp    $0x2600,%edi
    bd09:	74 10                	je     bd1b <sg_raster_triangle_depth_capture+0x886b>
    bd0b:	0f 28 bc 24 70 02 00 	movaps 0x270(%rsp),%xmm7
    bd12:	00 
    bd13:	44 0f 58 f7          	addps  %xmm7,%xmm14
    bd17:	44 0f 58 e7          	addps  %xmm7,%xmm12
    bd1b:	8d 75 ff             	lea    -0x1(%rbp),%esi
    bd1e:	66 0f 6e f5          	movd   %ebp,%xmm6
    bd22:	80 bc 24 10 02 00 00 	cmpb   $0x0,0x210(%rsp)
    bd29:	00 
    bd2a:	66 41 0f 3a 08 fe 01 	roundps $0x1,%xmm14,%xmm7
    bd31:	66 44 0f 6e ce       	movd   %esi,%xmm9
    bd36:	66 45 0f 3a 08 c4 01 	roundps $0x1,%xmm12,%xmm8
    bd3d:	8b 7b 38             	mov    0x38(%rbx),%edi
    bd40:	f3 0f 5b e7          	cvttps2dq %xmm7,%xmm4
    bd44:	f3 41 0f 5b d8       	cvttps2dq %xmm8,%xmm3
    bd49:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    bd4f:	66 0f 70 ce 00       	pshufd $0x0,%xmm6,%xmm1
    bd54:	0f 85 34 12 00 00    	jne    cf8e <sg_raster_triangle_depth_capture+0x9ade>
    bd5a:	85 ff                	test   %edi,%edi
    bd5c:	0f 85 5e 13 00 00    	jne    d0c0 <sg_raster_triangle_depth_capture+0x9c10>
    bd62:	66 0f 6f f4          	movdqa %xmm4,%xmm6
    bd66:	66 0f ef d2          	pxor   %xmm2,%xmm2
    bd6a:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    bd6e:	66 41 0f 66 f1       	pcmpgtd %xmm9,%xmm6
    bd73:	66 0f 66 d4          	pcmpgtd %xmm4,%xmm2
    bd77:	66 0f fa c1          	psubd  %xmm1,%xmm0
    bd7b:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
    bd80:	66 0f db c6          	pand   %xmm6,%xmm0
    bd84:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    bd88:	66 44 0f df d4       	pandn  %xmm4,%xmm10
    bd8d:	66 41 0f eb c2       	por    %xmm10,%xmm0
    bd92:	66 0f df f0          	pandn  %xmm0,%xmm6
    bd96:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    bd9a:	66 0f fe c1          	paddd  %xmm1,%xmm0
    bd9e:	66 0f db d0          	pand   %xmm0,%xmm2
    bda2:	66 0f eb d6          	por    %xmm6,%xmm2
    bda6:	8b b4 24 00 02 00 00 	mov    0x200(%rsp),%esi
    bdad:	8b 6b 3c             	mov    0x3c(%rbx),%ebp
    bdb0:	83 ee 01             	sub    $0x1,%esi
    bdb3:	80 bc 24 20 02 00 00 	cmpb   $0x0,0x220(%rsp)
    bdba:	00 
    bdbb:	66 0f 6e f6          	movd   %esi,%xmm6
    bdbf:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    bdc4:	0f 85 36 06 00 00    	jne    c400 <sg_raster_triangle_depth_capture+0x8f50>
    bdca:	85 ed                	test   %ebp,%ebp
    bdcc:	0f 85 07 13 00 00    	jne    d0d9 <sg_raster_triangle_depth_capture+0x9c29>
    bdd2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    bdd6:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    bddb:	66 44 0f 6e 94 24 00 	movd   0x200(%rsp),%xmm10
    bde2:	02 00 00 
    bde5:	66 44 0f 66 de       	pcmpgtd %xmm6,%xmm11
    bdea:	66 0f 66 c3          	pcmpgtd %xmm3,%xmm0
    bdee:	66 44 0f 6f f8       	movdqa %xmm0,%xmm15
    bdf3:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
    bdf8:	66 0f df c3          	pandn  %xmm3,%xmm0
    bdfc:	0f 29 84 24 30 02 00 	movaps %xmm0,0x230(%rsp)
    be03:	00 
    be04:	66 41 0f 70 c2 00    	pshufd $0x0,%xmm10,%xmm0
    be0a:	66 44 0f 6f d3       	movdqa %xmm3,%xmm10
    be0f:	66 44 0f fa d0       	psubd  %xmm0,%xmm10
    be14:	66 0f fe c3          	paddd  %xmm3,%xmm0
    be18:	66 45 0f db d3       	pand   %xmm11,%xmm10
    be1d:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
    be22:	66 41 0f db c7       	pand   %xmm15,%xmm0
    be27:	66 44 0f eb 94 24 30 	por    0x230(%rsp),%xmm10
    be2e:	02 00 00 
    be31:	66 45 0f df da       	pandn  %xmm10,%xmm11
    be36:	66 41 0f eb c3       	por    %xmm11,%xmm0
    be3b:	66 0f 38 40 c1       	pmulld %xmm1,%xmm0
    be40:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
    be45:	81 bc 24 40 02 00 00 	cmpl   $0x2600,0x240(%rsp)
    be4c:	00 26 00 00 
    be50:	66 0f fe d0          	paddd  %xmm0,%xmm2
    be54:	0f 29 94 24 70 03 00 	movaps %xmm2,0x370(%rsp)
    be5b:	00 
    be5c:	0f 84 9d 16 00 00    	je     d4ff <sg_raster_triangle_depth_capture+0xa04f>
    be62:	be 01 00 00 00       	mov    $0x1,%esi
    be67:	80 bc 24 10 02 00 00 	cmpb   $0x0,0x210(%rsp)
    be6e:	00 
    be6f:	66 44 0f 6e d6       	movd   %esi,%xmm10
    be74:	66 45 0f 70 d2 00    	pshufd $0x0,%xmm10,%xmm10
    be7a:	66 41 0f fe e2       	paddd  %xmm10,%xmm4
    be7f:	0f 85 e5 10 00 00    	jne    cf6a <sg_raster_triangle_depth_capture+0x9aba>
    be85:	85 ff                	test   %edi,%edi
    be87:	0f 85 45 17 00 00    	jne    d5d2 <sg_raster_triangle_depth_capture+0xa122>
    be8d:	66 44 0f 6f dc       	movdqa %xmm4,%xmm11
    be92:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    be97:	66 45 0f 66 d9       	pcmpgtd %xmm9,%xmm11
    be9c:	66 44 0f 66 d4       	pcmpgtd %xmm4,%xmm10
    bea1:	66 45 0f 6f cb       	movdqa %xmm11,%xmm9
    bea6:	66 44 0f df cc       	pandn  %xmm4,%xmm9
    beab:	44 0f 29 8c 24 10 02 	movaps %xmm9,0x210(%rsp)
    beb2:	00 00 
    beb4:	66 44 0f 6f cc       	movdqa %xmm4,%xmm9
    beb9:	66 0f fe e1          	paddd  %xmm1,%xmm4
    bebd:	66 44 0f fa c9       	psubd  %xmm1,%xmm9
    bec2:	66 41 0f db e2       	pand   %xmm10,%xmm4
    bec7:	66 45 0f db cb       	pand   %xmm11,%xmm9
    becc:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
    bed1:	66 44 0f eb 8c 24 10 	por    0x210(%rsp),%xmm9
    bed8:	02 00 00 
    bedb:	66 45 0f df d9       	pandn  %xmm9,%xmm11
    bee0:	66 41 0f eb e3       	por    %xmm11,%xmm4
    bee5:	be 01 00 00 00       	mov    $0x1,%esi
    beea:	80 bc 24 20 02 00 00 	cmpb   $0x0,0x220(%rsp)
    bef1:	00 
    bef2:	66 44 0f 6e ce       	movd   %esi,%xmm9
    bef7:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    befd:	66 41 0f fe d9       	paddd  %xmm9,%xmm3
    bf02:	0f 85 d5 07 00 00    	jne    c6dd <sg_raster_triangle_depth_capture+0x922d>
    bf08:	85 ed                	test   %ebp,%ebp
    bf0a:	0f 85 33 18 00 00    	jne    d743 <sg_raster_triangle_depth_capture+0xa293>
    bf10:	66 44 0f 6f d3       	movdqa %xmm3,%xmm10
    bf15:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    bf1a:	66 44 0f 66 d6       	pcmpgtd %xmm6,%xmm10
    bf1f:	66 44 0f 66 cb       	pcmpgtd %xmm3,%xmm9
    bf24:	66 0f 6e b4 24 00 02 	movd   0x200(%rsp),%xmm6
    bf2b:	00 00 
    bf2d:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    bf32:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
    bf37:	66 44 0f df db       	pandn  %xmm3,%xmm11
    bf3c:	44 0f 29 9c 24 00 02 	movaps %xmm11,0x200(%rsp)
    bf43:	00 00 
    bf45:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    bf4a:	66 0f fe de          	paddd  %xmm6,%xmm3
    bf4e:	66 44 0f fa de       	psubd  %xmm6,%xmm11
    bf53:	66 41 0f db d9       	pand   %xmm9,%xmm3
    bf58:	66 45 0f db da       	pand   %xmm10,%xmm11
    bf5d:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
    bf62:	66 44 0f eb 9c 24 00 	por    0x200(%rsp),%xmm11
    bf69:	02 00 00 
    bf6c:	66 45 0f df d3       	pandn  %xmm11,%xmm10
    bf71:	66 41 0f eb da       	por    %xmm10,%xmm3
    bf76:	66 0f 38 40 cb       	pmulld %xmm3,%xmm1
    bf7b:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
    bf80:	83 bc 24 c0 01 00 00 	cmpl   $0xf,0x1c0(%rsp)
    bf87:	0f 
    bf88:	66 0f fe c4          	paddd  %xmm4,%xmm0
    bf8c:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    bf90:	66 44 0f fe c9       	paddd  %xmm1,%xmm9
    bf95:	66 0f fe f4          	paddd  %xmm4,%xmm6
    bf99:	0f 84 8c 05 00 00    	je     c52b <sg_raster_triangle_depth_capture+0x907b>
    bf9f:	45 85 c0             	test   %r8d,%r8d
    bfa2:	0f 84 6b 04 00 00    	je     c413 <sg_raster_triangle_depth_capture+0x8f63>
    bfa8:	48 63 b4 24 70 03 00 	movslq 0x370(%rsp),%rsi
    bfaf:	00 
    bfb0:	66 0f 6e 1c b2       	movd   (%rdx,%rsi,4),%xmm3
    bfb5:	45 85 db             	test   %r11d,%r11d
    bfb8:	0f 85 5f 03 00 00    	jne    c31d <sg_raster_triangle_depth_capture+0x8e6d>
    bfbe:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    bfc5:	00 
    bfc6:	0f 85 b5 17 00 00    	jne    d781 <sg_raster_triangle_depth_capture+0xa2d1>
    bfcc:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    bfd3:	00 
    bfd4:	0f 85 9e 17 00 00    	jne    d778 <sg_raster_triangle_depth_capture+0xa2c8>
    bfda:	66 0f 3a 21 db 0e    	insertps $0xe,%xmm3,%xmm3
    bfe0:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    bfe5:	66 0f 7e c6          	movd   %xmm0,%esi
    bfe9:	48 63 f6             	movslq %esi,%rsi
    bfec:	66 0f 6e 0c b2       	movd   (%rdx,%rsi,4),%xmm1
    bff1:	45 85 db             	test   %r11d,%r11d
    bff4:	0f 85 67 03 00 00    	jne    c361 <sg_raster_triangle_depth_capture+0x8eb1>
    bffa:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    c001:	00 
    c002:	0f 85 68 10 00 00    	jne    d070 <sg_raster_triangle_depth_capture+0x9bc0>
    c008:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c00f:	00 
    c010:	0f 85 f2 16 00 00    	jne    d708 <sg_raster_triangle_depth_capture+0xa258>
    c016:	66 0f 3a 21 c9 0e    	insertps $0xe,%xmm1,%xmm1
    c01c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    c020:	45 85 c0             	test   %r8d,%r8d
    c023:	0f 85 97 02 00 00    	jne    c2c0 <sg_raster_triangle_depth_capture+0x8e10>
    c029:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    c030:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c034:	31 ed                	xor    %ebp,%ebp
    c036:	48 63 f6             	movslq %esi,%rsi
    c039:	66 0f 3a 22 04 b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm0
    c040:	31 f6                	xor    %esi,%esi
    c042:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    c047:	66 0f 3a 16 f7 03    	pextrd $0x3,%xmm6,%edi
    c04d:	48 63 ff             	movslq %edi,%rdi
    c050:	48 89 bc 24 00 02 00 	mov    %rdi,0x200(%rsp)
    c057:	00 
    c058:	44 89 cf             	mov    %r9d,%edi
    c05b:	4c 8b 8c 24 00 02 00 	mov    0x200(%rsp),%r9
    c062:	00 
    c063:	46 8b 0c 8a          	mov    (%rdx,%r9,4),%r9d
    c067:	66 0f 6e f7          	movd   %edi,%xmm6
    c06b:	66 0f 6e d6          	movd   %esi,%xmm2
    c06f:	66 41 0f 3a 22 f1 01 	pinsrd $0x1,%r9d,%xmm6
    c076:	66 0f 3a 22 d5 01    	pinsrd $0x1,%ebp,%xmm2
    c07c:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
    c080:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    c084:	45 0f 28 ce          	movaps %xmm14,%xmm9
    c088:	ba ff 00 00 00       	mov    $0xff,%edx
    c08d:	45 0f 28 fc          	movaps %xmm12,%xmm15
    c091:	44 0f 5c cf          	subps  %xmm7,%xmm9
    c095:	0f 58 fd             	addps  %xmm5,%xmm7
    c098:	66 0f 72 d3 08       	psrld  $0x8,%xmm3
    c09d:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
    c0a2:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    c0a7:	45 0f 5c f8          	subps  %xmm8,%xmm15
    c0ab:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    c0b0:	41 0f 5c fe          	subps  %xmm14,%xmm7
    c0b4:	45 0f 28 f0          	movaps %xmm8,%xmm14
    c0b8:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    c0bd:	44 0f 58 f5          	addps  %xmm5,%xmm14
    c0c1:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
    c0c7:	45 0f 5c f4          	subps  %xmm12,%xmm14
    c0cb:	66 44 0f 6e e2       	movd   %edx,%xmm12
    c0d0:	66 45 0f 70 e4 00    	pshufd $0x0,%xmm12,%xmm12
    c0d6:	66 41 0f db e4       	pand   %xmm12,%xmm4
    c0db:	66 45 0f db dc       	pand   %xmm12,%xmm11
    c0e0:	66 41 0f db f4       	pand   %xmm12,%xmm6
    c0e5:	66 45 0f db d4       	pand   %xmm12,%xmm10
    c0ea:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
    c0ed:	45 0f 5b db          	cvtdq2ps %xmm11,%xmm11
    c0f1:	0f 5b f6             	cvtdq2ps %xmm6,%xmm6
    c0f4:	44 0f 59 df          	mulps  %xmm7,%xmm11
    c0f8:	45 0f 5b d2          	cvtdq2ps %xmm10,%xmm10
    c0fc:	66 41 0f db cc       	pand   %xmm12,%xmm1
    c101:	44 0f 59 d7          	mulps  %xmm7,%xmm10
    c105:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    c108:	41 0f 59 f1          	mulps  %xmm9,%xmm6
    c10c:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    c110:	41 0f 59 c9          	mulps  %xmm9,%xmm1
    c114:	41 0f 58 f2          	addps  %xmm10,%xmm6
    c118:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    c11d:	66 41 0f db c4       	pand   %xmm12,%xmm0
    c122:	41 0f 58 e3          	addps  %xmm11,%xmm4
    c126:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    c129:	0f 59 c7             	mulps  %xmm7,%xmm0
    c12c:	f3 44 0f 10 1d 00 00 	movss  0x0(%rip),%xmm11        # c135 <sg_raster_triangle_depth_capture+0x8c85>
    c133:	00 00 
    c135:	66 41 0f 72 d2 08    	psrld  $0x8,%xmm10
    c13b:	41 0f 59 f7          	mulps  %xmm15,%xmm6
    c13f:	45 0f c6 db 00       	shufps $0x0,%xmm11,%xmm11
    c144:	41 0f 59 e6          	mulps  %xmm14,%xmm4
    c148:	0f 58 e6             	addps  %xmm6,%xmm4
    c14b:	66 0f 6f f3          	movdqa %xmm3,%xmm6
    c14f:	66 41 0f db dc       	pand   %xmm12,%xmm3
    c154:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
    c157:	0f 59 df             	mulps  %xmm7,%xmm3
    c15a:	66 0f 72 d6 08       	psrld  $0x8,%xmm6
    c15f:	41 0f 59 e3          	mulps  %xmm11,%xmm4
    c163:	0f 58 cb             	addps  %xmm3,%xmm1
    c166:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
    c16b:	66 45 0f db d4       	pand   %xmm12,%xmm10
    c170:	66 0f 72 d3 08       	psrld  $0x8,%xmm3
    c175:	45 0f 5b d2          	cvtdq2ps %xmm10,%xmm10
    c179:	41 0f 29 24 24       	movaps %xmm4,(%r12)
    c17e:	44 0f 59 d7          	mulps  %xmm7,%xmm10
    c182:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    c186:	66 41 0f db d4       	pand   %xmm12,%xmm2
    c18b:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    c18e:	41 0f 59 d1          	mulps  %xmm9,%xmm2
    c192:	66 0f 72 d4 08       	psrld  $0x8,%xmm4
    c197:	0f 29 9c 24 00 02 00 	movaps %xmm3,0x200(%rsp)
    c19e:	00 
    c19f:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    c1a3:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
    c1a8:	66 41 0f db dc       	pand   %xmm12,%xmm3
    c1ad:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
    c1b0:	41 0f 59 d9          	mulps  %xmm9,%xmm3
    c1b4:	0f 58 c2             	addps  %xmm2,%xmm0
    c1b7:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
    c1bc:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    c1c1:	66 41 0f db d4       	pand   %xmm12,%xmm2
    c1c6:	41 0f 59 c7          	mulps  %xmm15,%xmm0
    c1ca:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    c1cd:	0f 58 c1             	addps  %xmm1,%xmm0
    c1d0:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    c1d4:	66 41 0f db f4       	pand   %xmm12,%xmm6
    c1d9:	0f 5b f6             	cvtdq2ps %xmm6,%xmm6
    c1dc:	0f 59 f7             	mulps  %xmm7,%xmm6
    c1df:	66 0f 72 d1 08       	psrld  $0x8,%xmm1
    c1e4:	66 41 0f db cc       	pand   %xmm12,%xmm1
    c1e9:	41 0f 59 c3          	mulps  %xmm11,%xmm0
    c1ed:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    c1f0:	0f 58 de             	addps  %xmm6,%xmm3
    c1f3:	41 0f 29 44 24 10    	movaps %xmm0,0x10(%r12)
    c1f9:	66 0f 6f c4          	movdqa %xmm4,%xmm0
    c1fd:	66 41 0f db e4       	pand   %xmm12,%xmm4
    c202:	0f 5b e4             	cvtdq2ps %xmm4,%xmm4
    c205:	41 0f 59 e1          	mulps  %xmm9,%xmm4
    c209:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    c20e:	41 0f 59 de          	mulps  %xmm14,%xmm3
    c212:	66 41 0f db c4       	pand   %xmm12,%xmm0
    c217:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    c21a:	41 0f 59 c1          	mulps  %xmm9,%xmm0
    c21e:	44 0f 59 ca          	mulps  %xmm2,%xmm9
    c222:	41 0f 58 e2          	addps  %xmm10,%xmm4
    c226:	41 0f 59 e7          	mulps  %xmm15,%xmm4
    c22a:	0f 58 dc             	addps  %xmm4,%xmm3
    c22d:	41 0f 59 db          	mulps  %xmm11,%xmm3
    c231:	41 0f 29 5c 24 20    	movaps %xmm3,0x20(%r12)
    c237:	66 0f 6f 9c 24 00 02 	movdqa 0x200(%rsp),%xmm3
    c23e:	00 00 
    c240:	66 41 0f db dc       	pand   %xmm12,%xmm3
    c245:	0f 5b db             	cvtdq2ps %xmm3,%xmm3
    c248:	0f 59 df             	mulps  %xmm7,%xmm3
    c24b:	0f 59 f9             	mulps  %xmm1,%xmm7
    c24e:	41 0f 28 c9          	movaps %xmm9,%xmm1
    c252:	0f 58 c3             	addps  %xmm3,%xmm0
    c255:	0f 58 cf             	addps  %xmm7,%xmm1
    c258:	41 0f 59 c7          	mulps  %xmm15,%xmm0
    c25c:	41 0f 59 ce          	mulps  %xmm14,%xmm1
    c260:	0f 58 c1             	addps  %xmm1,%xmm0
    c263:	41 0f 59 c3          	mulps  %xmm11,%xmm0
    c267:	41 0f 29 44 24 30    	movaps %xmm0,0x30(%r12)
    c26d:	e9 11 a9 ff ff       	jmp    6b83 <sg_raster_triangle_depth_capture+0x36d3>
    c272:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c276:	0f 28 c1             	movaps %xmm1,%xmm0
    c279:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    c27d:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c281:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    c285:	0f 28 c5             	movaps %xmm5,%xmm0
    c288:	0f 55 d1             	andnps %xmm1,%xmm2
    c28b:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    c28f:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    c294:	e9 5c fa ff ff       	jmp    bcf5 <sg_raster_triangle_depth_capture+0x8845>
    c299:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c29d:	0f 28 d8             	movaps %xmm0,%xmm3
    c2a0:	0f c2 da 01          	cmpltps %xmm2,%xmm3
    c2a4:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c2a8:	66 0f 66 d3          	pcmpgtd %xmm3,%xmm2
    c2ac:	0f 55 d0             	andnps %xmm0,%xmm2
    c2af:	0f 28 c5             	movaps %xmm5,%xmm0
    c2b2:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    c2b6:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    c2bb:	e9 e9 f9 ff ff       	jmp    bca9 <sg_raster_triangle_depth_capture+0x87f9>
    c2c0:	66 44 0f 7e ce       	movd   %xmm9,%esi
    c2c5:	48 63 f6             	movslq %esi,%rsi
    c2c8:	66 0f 6e 04 b2       	movd   (%rdx,%rsi,4),%xmm0
    c2cd:	45 85 db             	test   %r11d,%r11d
    c2d0:	0f 85 cf 00 00 00    	jne    c3a5 <sg_raster_triangle_depth_capture+0x8ef5>
    c2d6:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    c2dd:	00 
    c2de:	0f 85 ee 0d 00 00    	jne    d0d2 <sg_raster_triangle_depth_capture+0x9c22>
    c2e4:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c2eb:	00 
    c2ec:	0f 85 85 0d 00 00    	jne    d077 <sg_raster_triangle_depth_capture+0x9bc7>
    c2f2:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
    c2f8:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    c2fd:	66 0f 7e f6          	movd   %xmm6,%esi
    c301:	48 63 f6             	movslq %esi,%rsi
    c304:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    c307:	45 85 db             	test   %r11d,%r11d
    c30a:	0f 85 86 0f 00 00    	jne    d296 <sg_raster_triangle_depth_capture+0x9de6>
    c310:	31 ff                	xor    %edi,%edi
    c312:	31 ed                	xor    %ebp,%ebp
    c314:	e9 4e fd ff ff       	jmp    c067 <sg_raster_triangle_depth_capture+0x8bb7>
    c319:	66 0f ef db          	pxor   %xmm3,%xmm3
    c31d:	48 63 b4 24 74 03 00 	movslq 0x374(%rsp),%rsi
    c324:	00 
    c325:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    c328:	8b b4 24 70 01 00 00 	mov    0x170(%rsp),%esi
    c32f:	85 f6                	test   %esi,%esi
    c331:	0f 85 f9 00 00 00    	jne    c430 <sg_raster_triangle_depth_capture+0x8f80>
    c337:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c33e:	00 
    c33f:	0f 85 e7 0c 00 00    	jne    d02c <sg_raster_triangle_depth_capture+0x9b7c>
    c345:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
    c34b:	f3 0f 7e db          	movq   %xmm3,%xmm3
    c34f:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    c354:	45 85 c0             	test   %r8d,%r8d
    c357:	0f 85 88 fc ff ff    	jne    bfe5 <sg_raster_triangle_depth_capture+0x8b35>
    c35d:	66 0f ef c9          	pxor   %xmm1,%xmm1
    c361:	66 0f 3a 16 c6 01    	pextrd $0x1,%xmm0,%esi
    c367:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    c36e:	48 63 f6             	movslq %esi,%rsi
    c371:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    c374:	85 ed                	test   %ebp,%ebp
    c376:	0f 85 f9 00 00 00    	jne    c475 <sg_raster_triangle_depth_capture+0x8fc5>
    c37c:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c383:	00 
    c384:	0f 85 80 13 00 00    	jne    d70a <sg_raster_triangle_depth_capture+0xa25a>
    c38a:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
    c390:	f3 0f 7e c9          	movq   %xmm1,%xmm1
    c394:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    c398:	45 85 c0             	test   %r8d,%r8d
    c39b:	0f 85 1f ff ff ff    	jne    c2c0 <sg_raster_triangle_depth_capture+0x8e10>
    c3a1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c3a5:	66 44 0f 3a 16 ce 01 	pextrd $0x1,%xmm9,%esi
    c3ac:	8b ac 24 70 01 00 00 	mov    0x170(%rsp),%ebp
    c3b3:	48 63 f6             	movslq %esi,%rsi
    c3b6:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    c3b9:	85 ed                	test   %ebp,%ebp
    c3bb:	0f 85 f9 00 00 00    	jne    c4ba <sg_raster_triangle_depth_capture+0x900a>
    c3c1:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c3c8:	00 
    c3c9:	0f 85 aa 0c 00 00    	jne    d079 <sg_raster_triangle_depth_capture+0x9bc9>
    c3cf:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    c3d5:	f3 0f 7e c0          	movq   %xmm0,%xmm0
    c3d9:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    c3de:	45 85 c0             	test   %r8d,%r8d
    c3e1:	0f 85 16 ff ff ff    	jne    c2fd <sg_raster_triangle_depth_capture+0x8e4d>
    c3e7:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
    c3ed:	31 ff                	xor    %edi,%edi
    c3ef:	48 63 f6             	movslq %esi,%rsi
    c3f2:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    c3f5:	31 f6                	xor    %esi,%esi
    c3f7:	e9 6b fc ff ff       	jmp    c067 <sg_raster_triangle_depth_capture+0x8bb7>
    c3fc:	0f 1f 40 00          	nopl   0x0(%rax)
    c400:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c404:	66 0f 38 3d c3       	pmaxsd %xmm3,%xmm0
    c409:	66 0f 38 39 c6       	pminsd %xmm6,%xmm0
    c40e:	e9 28 fa ff ff       	jmp    be3b <sg_raster_triangle_depth_capture+0x898b>
    c413:	45 85 db             	test   %r11d,%r11d
    c416:	0f 85 fd fe ff ff    	jne    c319 <sg_raster_triangle_depth_capture+0x8e69>
    c41c:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    c423:	00 
    c424:	0f 84 cd 0b 00 00    	je     cff7 <sg_raster_triangle_depth_capture+0x9b47>
    c42a:	31 ed                	xor    %ebp,%ebp
    c42c:	66 0f ef db          	pxor   %xmm3,%xmm3
    c430:	48 63 b4 24 78 03 00 	movslq 0x378(%rsp),%rsi
    c437:	00 
    c438:	8b bc 24 80 01 00 00 	mov    0x180(%rsp),%edi
    c43f:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    c442:	85 ff                	test   %edi,%edi
    c444:	0f 85 e4 0b 00 00    	jne    d02e <sg_raster_triangle_depth_capture+0x9b7e>
    c44a:	66 0f 6e ce          	movd   %esi,%xmm1
    c44e:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
    c454:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
    c458:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    c45d:	45 85 c0             	test   %r8d,%r8d
    c460:	0f 85 7f fb ff ff    	jne    bfe5 <sg_raster_triangle_depth_capture+0x8b35>
    c466:	45 85 db             	test   %r11d,%r11d
    c469:	0f 85 ee fe ff ff    	jne    c35d <sg_raster_triangle_depth_capture+0x8ead>
    c46f:	31 ff                	xor    %edi,%edi
    c471:	66 0f ef c9          	pxor   %xmm1,%xmm1
    c475:	66 0f 3a 16 c6 02    	pextrd $0x2,%xmm0,%esi
    c47b:	48 63 f6             	movslq %esi,%rsi
    c47e:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    c481:	8b b4 24 80 01 00 00 	mov    0x180(%rsp),%esi
    c488:	85 f6                	test   %esi,%esi
    c48a:	0f 85 4e 0b 00 00    	jne    cfde <sg_raster_triangle_depth_capture+0x9b2e>
    c490:	66 0f 6e c5          	movd   %ebp,%xmm0
    c494:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
    c49a:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    c49e:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    c4a2:	45 85 c0             	test   %r8d,%r8d
    c4a5:	0f 85 15 fe ff ff    	jne    c2c0 <sg_raster_triangle_depth_capture+0x8e10>
    c4ab:	45 85 db             	test   %r11d,%r11d
    c4ae:	0f 85 ed fe ff ff    	jne    c3a1 <sg_raster_triangle_depth_capture+0x8ef1>
    c4b4:	31 ff                	xor    %edi,%edi
    c4b6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c4ba:	66 44 0f 3a 16 ce 02 	pextrd $0x2,%xmm9,%esi
    c4c1:	48 63 f6             	movslq %esi,%rsi
    c4c4:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    c4c7:	8b b4 24 80 01 00 00 	mov    0x180(%rsp),%esi
    c4ce:	85 f6                	test   %esi,%esi
    c4d0:	0f 85 8c 0d 00 00    	jne    d262 <sg_raster_triangle_depth_capture+0x9db2>
    c4d6:	66 0f 6e d5          	movd   %ebp,%xmm2
    c4da:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    c4e0:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    c4e4:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    c4e9:	45 85 c0             	test   %r8d,%r8d
    c4ec:	0f 85 6c 12 00 00    	jne    d75e <sg_raster_triangle_depth_capture+0xa2ae>
    c4f2:	45 85 db             	test   %r11d,%r11d
    c4f5:	0f 84 5a 12 00 00    	je     d755 <sg_raster_triangle_depth_capture+0xa2a5>
    c4fb:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
    c501:	48 63 f6             	movslq %esi,%rsi
    c504:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    c507:	31 f6                	xor    %esi,%esi
    c509:	66 0f 3a 16 f7 02    	pextrd $0x2,%xmm6,%edi
    c50f:	48 63 ff             	movslq %edi,%rdi
    c512:	8b 3c ba             	mov    (%rdx,%rdi,4),%edi
    c515:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    c51c:	00 
    c51d:	0f 84 44 fb ff ff    	je     c067 <sg_raster_triangle_depth_capture+0x8bb7>
    c523:	41 89 f9             	mov    %edi,%r9d
    c526:	e9 1c fb ff ff       	jmp    c047 <sg_raster_triangle_depth_capture+0x8b97>
    c52b:	bf 01 00 00 00       	mov    $0x1,%edi
    c530:	66 0f 6e cf          	movd   %edi,%xmm1
    c534:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
    c539:	66 41 0f fe cf       	paddd  %xmm15,%xmm1
    c53e:	66 0f 76 cc          	pcmpeqd %xmm4,%xmm1
    c542:	0f 50 f1             	movmskps %xmm1,%esi
    c545:	89 b4 24 4c 02 00 00 	mov    %esi,0x24c(%rsp)
    c54c:	66 0f 7e d6          	movd   %xmm2,%esi
    c550:	48 63 f6             	movslq %esi,%rsi
    c553:	48 8d 3c b2          	lea    (%rdx,%rsi,4),%rdi
    c557:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
    c55d:	48 63 f6             	movslq %esi,%rsi
    c560:	4c 8d 0c b2          	lea    (%rdx,%rsi,4),%r9
    c564:	66 0f 3a 16 d6 02    	pextrd $0x2,%xmm2,%esi
    c56a:	48 63 f6             	movslq %esi,%rsi
    c56d:	48 8d 2c b2          	lea    (%rdx,%rsi,4),%rbp
    c571:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
    c577:	48 63 f6             	movslq %esi,%rsi
    c57a:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    c57e:	48 89 b4 24 00 02 00 	mov    %rsi,0x200(%rsp)
    c585:	00 
    c586:	66 44 0f 7e ce       	movd   %xmm9,%esi
    c58b:	48 63 f6             	movslq %esi,%rsi
    c58e:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    c592:	48 89 b4 24 10 02 00 	mov    %rsi,0x210(%rsp)
    c599:	00 
    c59a:	66 44 0f 3a 16 ce 01 	pextrd $0x1,%xmm9,%esi
    c5a1:	48 63 f6             	movslq %esi,%rsi
    c5a4:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    c5a8:	48 89 b4 24 20 02 00 	mov    %rsi,0x220(%rsp)
    c5af:	00 
    c5b0:	66 44 0f 3a 16 ce 02 	pextrd $0x2,%xmm9,%esi
    c5b7:	48 63 f6             	movslq %esi,%rsi
    c5ba:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    c5be:	48 89 b4 24 40 02 00 	mov    %rsi,0x240(%rsp)
    c5c5:	00 
    c5c6:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    c5cd:	48 63 f6             	movslq %esi,%rsi
    c5d0:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    c5d4:	48 89 b4 24 30 02 00 	mov    %rsi,0x230(%rsp)
    c5db:	00 
    c5dc:	8b b4 24 4c 02 00 00 	mov    0x24c(%rsp),%esi
    c5e3:	f7 d6                	not    %esi
    c5e5:	83 e6 0f             	and    $0xf,%esi
    c5e8:	0f 84 f9 0f 00 00    	je     d5e7 <sg_raster_triangle_depth_capture+0xa137>
    c5ee:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
    c5f5:	00 
    c5f6:	66 0f 6e 4d 00       	movd   0x0(%rbp),%xmm1
    c5fb:	66 0f 6e 1f          	movd   (%rdi),%xmm3
    c5ff:	66 41 0f 3a 22 19 01 	pinsrd $0x1,(%r9),%xmm3
    c606:	66 0f 3a 16 c7 02    	pextrd $0x2,%xmm0,%edi
    c60c:	66 0f 3a 22 0e 01    	pinsrd $0x1,(%rsi),%xmm1
    c612:	66 0f 7e c6          	movd   %xmm0,%esi
    c616:	48 63 ff             	movslq %edi,%rdi
    c619:	4c 63 ce             	movslq %esi,%r9
    c61c:	66 0f 3a 16 c6 01    	pextrd $0x1,%xmm0,%esi
    c622:	48 63 ee             	movslq %esi,%rbp
    c625:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    c62b:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
    c62f:	66 0f 6e 04 ba       	movd   (%rdx,%rdi,4),%xmm0
    c634:	48 63 f6             	movslq %esi,%rsi
    c637:	66 42 0f 6e 0c 8a    	movd   (%rdx,%r9,4),%xmm1
    c63d:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    c642:	66 0f 3a 22 0c aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm1
    c649:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
    c650:	48 8b b4 24 10 02 00 	mov    0x210(%rsp),%rsi
    c657:	00 
    c658:	48 8b bc 24 40 02 00 	mov    0x240(%rsp),%rdi
    c65f:	00 
    c660:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    c664:	66 0f 6e 06          	movd   (%rsi),%xmm0
    c668:	48 8b b4 24 20 02 00 	mov    0x220(%rsp),%rsi
    c66f:	00 
    c670:	66 0f 6e 17          	movd   (%rdi),%xmm2
    c674:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
    c67b:	00 
    c67c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    c680:	66 0f 3a 22 06 01    	pinsrd $0x1,(%rsi),%xmm0
    c686:	66 0f 7e f6          	movd   %xmm6,%esi
    c68a:	4c 63 ce             	movslq %esi,%r9
    c68d:	66 0f 3a 16 f6 01    	pextrd $0x1,%xmm6,%esi
    c693:	66 0f 3a 22 17 01    	pinsrd $0x1,(%rdi),%xmm2
    c699:	48 63 ee             	movslq %esi,%rbp
    c69c:	66 0f 3a 16 f7 02    	pextrd $0x2,%xmm6,%edi
    c6a2:	66 0f 3a 16 f6 03    	pextrd $0x3,%xmm6,%esi
    c6a8:	48 63 ff             	movslq %edi,%rdi
    c6ab:	48 63 f6             	movslq %esi,%rsi
    c6ae:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    c6b2:	66 42 0f 6e 14 8a    	movd   (%rdx,%r9,4),%xmm2
    c6b8:	66 0f 6e 34 ba       	movd   (%rdx,%rdi,4),%xmm6
    c6bd:	66 0f 3a 22 14 aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm2
    c6c4:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    c6c9:	66 0f 3a 22 34 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm6
    c6d0:	66 0f 6c d6          	punpcklqdq %xmm6,%xmm2
    c6d4:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    c6d8:	e9 a7 f9 ff ff       	jmp    c084 <sg_raster_triangle_depth_capture+0x8bd4>
    c6dd:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    c6e2:	66 41 0f 38 3d d9    	pmaxsd %xmm9,%xmm3
    c6e8:	66 0f 38 39 de       	pminsd %xmm6,%xmm3
    c6ed:	e9 84 f8 ff ff       	jmp    bf76 <sg_raster_triangle_depth_capture+0x8ac6>
    c6f2:	31 ed                	xor    %ebp,%ebp
    c6f4:	e9 54 d5 ff ff       	jmp    9c4d <sg_raster_triangle_depth_capture+0x679d>
    c6f9:	8b 51 18             	mov    0x18(%rcx),%edx
    c6fc:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c700:	f3 0f 2a d7          	cvtsi2ss %edi,%xmm2
    c704:	81 fa 00 29 00 00    	cmp    $0x2900,%edx
    c70a:	0f 94 c1             	sete   %cl
    c70d:	81 fa 2f 81 00 00    	cmp    $0x812f,%edx
    c713:	0f 94 c2             	sete   %dl
    c716:	44 0f 28 c2          	movaps %xmm2,%xmm8
    c71a:	08 d1                	or     %dl,%cl
    c71c:	89 cb                	mov    %ecx,%ebx
    c71e:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    c723:	0f 85 8e 08 00 00    	jne    cfb7 <sg_raster_triangle_depth_capture+0x9b07>
    c729:	41 0f 28 d1          	movaps %xmm9,%xmm2
    c72d:	66 41 0f 3a 08 c1 01 	roundps $0x1,%xmm9,%xmm0
    c734:	0f 5c d0             	subps  %xmm0,%xmm2
    c737:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    c73e:	00 
    c73f:	45 0f 28 e8          	movaps %xmm8,%xmm13
    c743:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    c748:	f3 45 0f 2a c0       	cvtsi2ss %r8d,%xmm8
    c74d:	44 0f 59 ea          	mulps  %xmm2,%xmm13
    c751:	8b 51 1c             	mov    0x1c(%rcx),%edx
    c754:	81 fa 00 29 00 00    	cmp    $0x2900,%edx
    c75a:	0f 94 c1             	sete   %cl
    c75d:	81 fa 2f 81 00 00    	cmp    $0x812f,%edx
    c763:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    c768:	0f 94 c2             	sete   %dl
    c76b:	08 d1                	or     %dl,%cl
    c76d:	41 89 ca             	mov    %ecx,%r10d
    c770:	0f 85 62 0d 00 00    	jne    d4d8 <sg_raster_triangle_depth_capture+0xa028>
    c776:	0f 28 d1             	movaps %xmm1,%xmm2
    c779:	66 0f 3a 08 c1 01    	roundps $0x1,%xmm1,%xmm0
    c77f:	0f 5c d0             	subps  %xmm0,%xmm2
    c782:	41 0f 28 e8          	movaps %xmm8,%xmm5
    c786:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    c78d:	00 
    c78e:	0f 59 ea             	mulps  %xmm2,%xmm5
    c791:	44 8b 59 14          	mov    0x14(%rcx),%r11d
    c795:	0f 29 ac 24 d0 01 00 	movaps %xmm5,0x1d0(%rsp)
    c79c:	00 
    c79d:	41 81 fb 00 26 00 00 	cmp    $0x2600,%r11d
    c7a4:	74 1f                	je     c7c5 <sg_raster_triangle_depth_capture+0x9315>
    c7a6:	f3 44 0f 10 35 00 00 	movss  0x0(%rip),%xmm14        # c7af <sg_raster_triangle_depth_capture+0x92ff>
    c7ad:	00 00 
    c7af:	45 0f c6 f6 00       	shufps $0x0,%xmm14,%xmm14
    c7b4:	45 0f 58 ee          	addps  %xmm14,%xmm13
    c7b8:	44 0f 58 f5          	addps  %xmm5,%xmm14
    c7bc:	44 0f 29 b4 24 d0 01 	movaps %xmm14,0x1d0(%rsp)
    c7c3:	00 00 
    c7c5:	8d 57 ff             	lea    -0x1(%rdi),%edx
    c7c8:	66 41 0f 3a 08 ed 01 	roundps $0x1,%xmm13,%xmm5
    c7cf:	f3 0f 5b d5          	cvttps2dq %xmm5,%xmm2
    c7d3:	48 8b 8c 24 f0 04 00 	mov    0x4f0(%rsp),%rcx
    c7da:	00 
    c7db:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
    c7e2:	00 
    c7e3:	66 0f 6e ea          	movd   %edx,%xmm5
    c7e7:	66 0f 3a 08 8c 24 d0 	roundps $0x1,0x1d0(%rsp),%xmm1
    c7ee:	01 00 00 01 
    c7f2:	66 44 0f 70 f5 00    	pshufd $0x0,%xmm5,%xmm14
    c7f8:	66 0f 6e ef          	movd   %edi,%xmm5
    c7fc:	8b 49 38             	mov    0x38(%rcx),%ecx
    c7ff:	0f 29 8c 24 00 02 00 	movaps %xmm1,0x200(%rsp)
    c806:	00 
    c807:	66 44 0f 70 c5 00    	pshufd $0x0,%xmm5,%xmm8
    c80d:	f3 0f 5b c9          	cvttps2dq %xmm1,%xmm1
    c811:	84 db                	test   %bl,%bl
    c813:	0f 85 2a 11 00 00    	jne    d943 <sg_raster_triangle_depth_capture+0xa493>
    c819:	85 c9                	test   %ecx,%ecx
    c81b:	0f 85 10 11 00 00    	jne    d931 <sg_raster_triangle_depth_capture+0xa481>
    c821:	66 0f ef c0          	pxor   %xmm0,%xmm0
    c825:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    c829:	66 0f 66 c2          	pcmpgtd %xmm2,%xmm0
    c82d:	66 41 0f 66 ee       	pcmpgtd %xmm14,%xmm5
    c832:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
    c837:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    c83b:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
    c840:	66 41 0f fa c0       	psubd  %xmm8,%xmm0
    c845:	66 44 0f df fa       	pandn  %xmm2,%xmm15
    c84a:	66 0f db c5          	pand   %xmm5,%xmm0
    c84e:	66 41 0f 6f e9       	movdqa %xmm9,%xmm5
    c853:	66 41 0f eb c7       	por    %xmm15,%xmm0
    c858:	66 0f df e8          	pandn  %xmm0,%xmm5
    c85c:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    c860:	66 41 0f fe c0       	paddd  %xmm8,%xmm0
    c865:	66 41 0f db c1       	pand   %xmm9,%xmm0
    c86a:	66 0f eb c5          	por    %xmm5,%xmm0
    c86e:	48 8b bc 24 f0 04 00 	mov    0x4f0(%rsp),%rdi
    c875:	00 
    c876:	8b 57 3c             	mov    0x3c(%rdi),%edx
    c879:	41 8d 78 ff          	lea    -0x1(%r8),%edi
    c87d:	66 0f 6e ef          	movd   %edi,%xmm5
    c881:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
    c886:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    c88d:	00 
    c88e:	45 84 d2             	test   %r10b,%r10b
    c891:	0f 85 82 10 00 00    	jne    d919 <sg_raster_triangle_depth_capture+0xa469>
    c897:	85 d2                	test   %edx,%edx
    c899:	0f 85 68 10 00 00    	jne    d907 <sg_raster_triangle_depth_capture+0xa457>
    c89f:	66 0f ef ed          	pxor   %xmm5,%xmm5
    c8a3:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
    c8a8:	66 45 0f 6e f8       	movd   %r8d,%xmm15
    c8ad:	66 44 0f 66 8c 24 b0 	pcmpgtd 0x1b0(%rsp),%xmm9
    c8b4:	01 00 00 
    c8b7:	66 0f 66 e9          	pcmpgtd %xmm1,%xmm5
    c8bb:	0f 29 ac 24 10 02 00 	movaps %xmm5,0x210(%rsp)
    c8c2:	00 
    c8c3:	66 41 0f 6f e9       	movdqa %xmm9,%xmm5
    c8c8:	66 0f df e9          	pandn  %xmm1,%xmm5
    c8cc:	0f 29 ac 24 20 02 00 	movaps %xmm5,0x220(%rsp)
    c8d3:	00 
    c8d4:	66 41 0f 70 ef 00    	pshufd $0x0,%xmm15,%xmm5
    c8da:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
    c8df:	66 44 0f fa fd       	psubd  %xmm5,%xmm15
    c8e4:	0f 29 ac 24 e0 01 00 	movaps %xmm5,0x1e0(%rsp)
    c8eb:	00 
    c8ec:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
    c8f1:	66 44 0f 6f bc 24 10 	movdqa 0x210(%rsp),%xmm15
    c8f8:	02 00 00 
    c8fb:	66 41 0f db e9       	pand   %xmm9,%xmm5
    c900:	66 0f eb ac 24 20 02 	por    0x220(%rsp),%xmm5
    c907:	00 00 
    c909:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
    c90e:	66 44 0f df cd       	pandn  %xmm5,%xmm9
    c913:	66 0f 6f ac 24 e0 01 	movdqa 0x1e0(%rsp),%xmm5
    c91a:	00 00 
    c91c:	66 0f fe e9          	paddd  %xmm1,%xmm5
    c920:	66 41 0f db ef       	pand   %xmm15,%xmm5
    c925:	66 41 0f eb e9       	por    %xmm9,%xmm5
    c92a:	66 41 0f 38 40 e8    	pmulld %xmm8,%xmm5
    c930:	0f 29 84 24 e0 01 00 	movaps %xmm0,0x1e0(%rsp)
    c937:	00 
    c938:	66 0f fe c5          	paddd  %xmm5,%xmm0
    c93c:	0f 29 ac 24 10 02 00 	movaps %xmm5,0x210(%rsp)
    c943:	00 
    c944:	0f 29 84 24 b0 03 00 	movaps %xmm0,0x3b0(%rsp)
    c94b:	00 
    c94c:	41 81 fb 00 26 00 00 	cmp    $0x2600,%r11d
    c953:	0f 84 71 0e 00 00    	je     d7ca <sg_raster_triangle_depth_capture+0xa31a>
    c959:	bf 01 00 00 00       	mov    $0x1,%edi
    c95e:	66 0f 6e ef          	movd   %edi,%xmm5
    c962:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
    c967:	66 0f fe ea          	paddd  %xmm2,%xmm5
    c96b:	84 db                	test   %bl,%bl
    c96d:	0f 85 3f 0e 00 00    	jne    d7b2 <sg_raster_triangle_depth_capture+0xa302>
    c973:	85 c9                	test   %ecx,%ecx
    c975:	0f 85 25 0e 00 00    	jne    d7a0 <sg_raster_triangle_depth_capture+0xa2f0>
    c97b:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c97f:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
    c984:	66 0f 66 d5          	pcmpgtd %xmm5,%xmm2
    c988:	66 45 0f 66 ce       	pcmpgtd %xmm14,%xmm9
    c98d:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
    c992:	66 0f 6f d5          	movdqa %xmm5,%xmm2
    c996:	66 45 0f 6f f1       	movdqa %xmm9,%xmm14
    c99b:	66 41 0f fa d0       	psubd  %xmm8,%xmm2
    c9a0:	66 44 0f df f5       	pandn  %xmm5,%xmm14
    c9a5:	66 41 0f fe e8       	paddd  %xmm8,%xmm5
    c9aa:	66 41 0f db d1       	pand   %xmm9,%xmm2
    c9af:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
    c9b4:	66 41 0f db ef       	pand   %xmm15,%xmm5
    c9b9:	66 41 0f eb d6       	por    %xmm14,%xmm2
    c9be:	66 44 0f df ca       	pandn  %xmm2,%xmm9
    c9c3:	66 41 0f eb e9       	por    %xmm9,%xmm5
    c9c8:	bb 01 00 00 00       	mov    $0x1,%ebx
    c9cd:	66 0f 6e d3          	movd   %ebx,%xmm2
    c9d1:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    c9d6:	66 0f fe ca          	paddd  %xmm2,%xmm1
    c9da:	45 84 d2             	test   %r10b,%r10b
    c9dd:	0f 85 a5 0d 00 00    	jne    d788 <sg_raster_triangle_depth_capture+0xa2d8>
    c9e3:	85 d2                	test   %edx,%edx
    c9e5:	0f 85 bc 11 00 00    	jne    dba7 <sg_raster_triangle_depth_capture+0xa6f7>
    c9eb:	66 0f ef d2          	pxor   %xmm2,%xmm2
    c9ef:	66 45 0f 6e f8       	movd   %r8d,%xmm15
    c9f4:	66 0f 66 d1          	pcmpgtd %xmm1,%xmm2
    c9f8:	66 45 0f 70 ff 00    	pshufd $0x0,%xmm15,%xmm15
    c9fe:	66 44 0f 6f f2       	movdqa %xmm2,%xmm14
    ca03:	66 0f 6f d1          	movdqa %xmm1,%xmm2
    ca07:	66 0f 66 94 24 b0 01 	pcmpgtd 0x1b0(%rsp),%xmm2
    ca0e:	00 00 
    ca10:	66 44 0f 6f ca       	movdqa %xmm2,%xmm9
    ca15:	66 44 0f df c9       	pandn  %xmm1,%xmm9
    ca1a:	44 0f 29 8c 24 b0 01 	movaps %xmm9,0x1b0(%rsp)
    ca21:	00 00 
    ca23:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
    ca28:	66 41 0f fe cf       	paddd  %xmm15,%xmm1
    ca2d:	66 45 0f fa cf       	psubd  %xmm15,%xmm9
    ca32:	66 41 0f db ce       	pand   %xmm14,%xmm1
    ca37:	66 41 0f db d1       	pand   %xmm9,%xmm2
    ca3c:	66 45 0f 6f ce       	movdqa %xmm14,%xmm9
    ca41:	66 0f eb 94 24 b0 01 	por    0x1b0(%rsp),%xmm2
    ca48:	00 00 
    ca4a:	66 44 0f df ca       	pandn  %xmm2,%xmm9
    ca4f:	66 41 0f eb c9       	por    %xmm9,%xmm1
    ca54:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    ca59:	83 bc 24 c0 01 00 00 	cmpl   $0xf,0x1c0(%rsp)
    ca60:	0f 
    ca61:	66 0f 6f 94 24 10 02 	movdqa 0x210(%rsp),%xmm2
    ca68:	00 00 
    ca6a:	66 44 0f 38 40 c9    	pmulld %xmm1,%xmm9
    ca70:	66 0f 6f 8c 24 e0 01 	movdqa 0x1e0(%rsp),%xmm1
    ca77:	00 00 
    ca79:	66 0f fe d5          	paddd  %xmm5,%xmm2
    ca7d:	66 41 0f fe c9       	paddd  %xmm9,%xmm1
    ca82:	66 44 0f fe cd       	paddd  %xmm5,%xmm9
    ca87:	0f 84 9f 0f 00 00    	je     da2c <sg_raster_triangle_depth_capture+0xa57c>
    ca8d:	45 85 c9             	test   %r9d,%r9d
    ca90:	0f 84 7b 08 00 00    	je     d311 <sg_raster_triangle_depth_capture+0x9e61>
    ca96:	48 63 94 24 b0 03 00 	movslq 0x3b0(%rsp),%rdx
    ca9d:	00 
    ca9e:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    caa5:	00 
    caa6:	66 0f 6e 04 90       	movd   (%rax,%rdx,4),%xmm0
    caab:	0f 85 aa 0e 00 00    	jne    d95b <sg_raster_triangle_depth_capture+0xa4ab>
    cab1:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    cab8:	00 
    cab9:	0f 85 a5 11 00 00    	jne    dc64 <sg_raster_triangle_depth_capture+0xa7b4>
    cabf:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    cac6:	00 
    cac7:	0f 85 69 11 00 00    	jne    dc36 <sg_raster_triangle_depth_capture+0xa786>
    cacd:	66 0f 3a 21 c0 0e    	insertps $0xe,%xmm0,%xmm0
    cad3:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    cad8:	66 0f 7e d2          	movd   %xmm2,%edx
    cadc:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    cae3:	00 
    cae4:	48 63 d2             	movslq %edx,%rdx
    cae7:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
    caec:	0f 85 2d 06 00 00    	jne    d11f <sg_raster_triangle_depth_capture+0x9c6f>
    caf2:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    caf9:	00 
    cafa:	0f 85 80 08 00 00    	jne    d380 <sg_raster_triangle_depth_capture+0x9ed0>
    cb00:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    cb07:	00 
    cb08:	0f 85 b9 06 00 00    	jne    d1c7 <sg_raster_triangle_depth_capture+0x9d17>
    cb0e:	66 0f 3a 21 ed 0e    	insertps $0xe,%xmm5,%xmm5
    cb14:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    cb1b:	00 
    cb1c:	45 85 c9             	test   %r9d,%r9d
    cb1f:	0f 85 3d 06 00 00    	jne    d162 <sg_raster_triangle_depth_capture+0x9cb2>
    cb25:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    cb2b:	66 0f ef d2          	pxor   %xmm2,%xmm2
    cb2f:	45 31 c0             	xor    %r8d,%r8d
    cb32:	31 ff                	xor    %edi,%edi
    cb34:	48 63 d2             	movslq %edx,%rdx
    cb37:	31 c9                	xor    %ecx,%ecx
    cb39:	66 0f 3a 22 14 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm2
    cb40:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    cb44:	66 44 0f 3a 16 ca 03 	pextrd $0x3,%xmm9,%edx
    cb4b:	48 63 d2             	movslq %edx,%rdx
    cb4e:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    cb51:	66 45 0f 6e c8       	movd   %r8d,%xmm9
    cb56:	66 44 0f 6e f1       	movd   %ecx,%xmm14
    cb5b:	66 44 0f 3a 22 ca 01 	pinsrd $0x1,%edx,%xmm9
    cb62:	66 44 0f 3a 22 f7 01 	pinsrd $0x1,%edi,%xmm14
    cb69:	66 45 0f 6c f1       	punpcklqdq %xmm9,%xmm14
    cb6e:	44 0f 29 b4 24 e0 01 	movaps %xmm14,0x1e0(%rsp)
    cb75:	00 00 
    cb77:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    cb7c:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    cb81:	b8 00 01 00 00       	mov    $0x100,%eax
    cb86:	f3 44 0f 10 3d 00 00 	movss  0x0(%rip),%xmm15        # cb8f <sg_raster_triangle_depth_capture+0x96df>
    cb8d:	00 00 
    cb8f:	44 0f 5c ac 24 f0 01 	subps  0x1f0(%rsp),%xmm13
    cb96:	00 00 
    cb98:	66 41 0f 72 d6 08    	psrld  $0x8,%xmm14
    cb9e:	45 0f c6 ff 00       	shufps $0x0,%xmm15,%xmm15
    cba3:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    cba8:	45 0f 28 cd          	movaps %xmm13,%xmm9
    cbac:	f3 44 0f 10 2d 00 00 	movss  0x0(%rip),%xmm13        # cbb5 <sg_raster_triangle_depth_capture+0x9705>
    cbb3:	00 00 
    cbb5:	45 0f 59 cf          	mulps  %xmm15,%xmm9
    cbb9:	45 0f c6 ed 00       	shufps $0x0,%xmm13,%xmm13
    cbbe:	45 0f 58 cd          	addps  %xmm13,%xmm9
    cbc2:	f3 45 0f 5b c9       	cvttps2dq %xmm9,%xmm9
    cbc7:	44 0f 29 8c 24 f0 01 	movaps %xmm9,0x1f0(%rsp)
    cbce:	00 00 
    cbd0:	44 0f 28 8c 24 d0 01 	movaps 0x1d0(%rsp),%xmm9
    cbd7:	00 00 
    cbd9:	44 0f 5c 8c 24 00 02 	subps  0x200(%rsp),%xmm9
    cbe0:	00 00 
    cbe2:	44 0f 29 b4 24 00 02 	movaps %xmm14,0x200(%rsp)
    cbe9:	00 00 
    cbeb:	45 0f 59 cf          	mulps  %xmm15,%xmm9
    cbef:	45 0f 58 cd          	addps  %xmm13,%xmm9
    cbf3:	f3 45 0f 5b f9       	cvttps2dq %xmm9,%xmm15
    cbf8:	66 44 0f 6e c8       	movd   %eax,%xmm9
    cbfd:	b8 ff 00 00 00       	mov    $0xff,%eax
    cc02:	44 0f 29 bc 24 c0 01 	movaps %xmm15,0x1c0(%rsp)
    cc09:	00 00 
    cc0b:	66 44 0f 6f bc 24 f0 	movdqa 0x1f0(%rsp),%xmm15
    cc12:	01 00 00 
    cc15:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    cc1b:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
    cc20:	0f 29 94 24 f0 01 00 	movaps %xmm2,0x1f0(%rsp)
    cc27:	00 
    cc28:	66 0f 6e d0          	movd   %eax,%xmm2
    cc2c:	b8 00 80 00 00       	mov    $0x8000,%eax
    cc31:	66 45 0f fa ef       	psubd  %xmm15,%xmm13
    cc36:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    cc3b:	66 44 0f db c2       	pand   %xmm2,%xmm8
    cc40:	66 0f db ca          	pand   %xmm2,%xmm1
    cc44:	66 45 0f 6b ef       	packssdw %xmm15,%xmm13
    cc49:	66 45 0f 6f fd       	movdqa %xmm13,%xmm15
    cc4e:	66 41 0f 73 df 08    	psrldq $0x8,%xmm15
    cc54:	66 45 0f 61 ef       	punpcklwd %xmm15,%xmm13
    cc59:	66 44 0f 6f bc 24 c0 	movdqa 0x1c0(%rsp),%xmm15
    cc60:	01 00 00 
    cc63:	66 45 0f fa cf       	psubd  %xmm15,%xmm9
    cc68:	44 0f 29 8c 24 d0 01 	movaps %xmm9,0x1d0(%rsp)
    cc6f:	00 00 
    cc71:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
    cc76:	66 0f 6f 84 24 b0 01 	movdqa 0x1b0(%rsp),%xmm0
    cc7d:	00 00 
    cc7f:	66 0f db c2          	pand   %xmm2,%xmm0
    cc83:	66 44 0f 6b c0       	packssdw %xmm0,%xmm8
    cc88:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
    cc8d:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
    cc92:	66 44 0f 61 c0       	punpcklwd %xmm0,%xmm8
    cc97:	66 0f 6f 84 24 e0 01 	movdqa 0x1e0(%rsp),%xmm0
    cc9e:	00 00 
    cca0:	66 45 0f f5 c5       	pmaddwd %xmm13,%xmm8
    cca5:	66 44 0f 38 40 84 24 	pmulld 0x1d0(%rsp),%xmm8
    ccac:	d0 01 00 00 
    ccb0:	66 0f db c2          	pand   %xmm2,%xmm0
    ccb4:	66 0f 6b c8          	packssdw %xmm0,%xmm1
    ccb8:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    ccbc:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
    ccc1:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    ccc5:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    ccc9:	66 0f 6e c8          	movd   %eax,%xmm1
    cccd:	66 41 0f f5 c5       	pmaddwd %xmm13,%xmm0
    ccd2:	66 44 0f 70 f1 00    	pshufd $0x0,%xmm1,%xmm14
    ccd8:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
    ccdd:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
    cce2:	66 41 0f 38 40 c7    	pmulld %xmm15,%xmm0
    cce8:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
    ccee:	66 44 0f db ca       	pand   %xmm2,%xmm9
    ccf3:	66 45 0f 6f f8       	movdqa %xmm8,%xmm15
    ccf8:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    ccfd:	66 0f db ea          	pand   %xmm2,%xmm5
    cd01:	66 41 0f 72 d0 08    	psrld  $0x8,%xmm8
    cd07:	66 41 0f fe c6       	paddd  %xmm14,%xmm0
    cd0c:	66 0f fe c8          	paddd  %xmm0,%xmm1
    cd10:	66 0f 6f 84 24 f0 01 	movdqa 0x1f0(%rsp),%xmm0
    cd17:	00 00 
    cd19:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
    cd1e:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    cd23:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    cd26:	0f 29 84 24 b0 01 00 	movaps %xmm0,0x1b0(%rsp)
    cd2d:	00 
    cd2e:	0f 59 0d 00 00 00 00 	mulps  0x0(%rip),%xmm1        # cd35 <sg_raster_triangle_depth_capture+0x9885>
    cd35:	66 0f 6f 84 24 00 02 	movdqa 0x200(%rsp),%xmm0
    cd3c:	00 00 
    cd3e:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    cd43:	0f 29 84 24 e0 01 00 	movaps %xmm0,0x1e0(%rsp)
    cd4a:	00 
    cd4b:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    cd50:	66 0f 6b c5          	packssdw %xmm5,%xmm0
    cd54:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    cd58:	66 0f 73 dd 08       	psrldq $0x8,%xmm5
    cd5d:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
    cd61:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    cd65:	66 41 0f f5 ed       	pmaddwd %xmm13,%xmm5
    cd6a:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
    cd6f:	66 0f 6f ac 24 f0 01 	movdqa 0x1f0(%rsp),%xmm5
    cd76:	00 00 
    cd78:	66 0f db ea          	pand   %xmm2,%xmm5
    cd7c:	66 0f 6f c5          	movdqa %xmm5,%xmm0
    cd80:	66 0f 6f ac 24 00 02 	movdqa 0x200(%rsp),%xmm5
    cd87:	00 00 
    cd89:	66 0f db ea          	pand   %xmm2,%xmm5
    cd8d:	66 0f 6b c5          	packssdw %xmm5,%xmm0
    cd91:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    cd95:	66 0f 73 dd 08       	psrldq $0x8,%xmm5
    cd9a:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
    cd9e:	66 0f 6f ac 24 d0 01 	movdqa 0x1d0(%rsp),%xmm5
    cda5:	00 00 
    cda7:	66 41 0f f5 c5       	pmaddwd %xmm13,%xmm0
    cdac:	66 0f 38 40 84 24 c0 	pmulld 0x1c0(%rsp),%xmm0
    cdb3:	01 00 00 
    cdb6:	66 41 0f fe c6       	paddd  %xmm14,%xmm0
    cdbb:	66 41 0f 38 40 e9    	pmulld %xmm9,%xmm5
    cdc1:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    cdc6:	66 44 0f db c2       	pand   %xmm2,%xmm8
    cdcb:	66 41 0f 72 d1 08    	psrld  $0x8,%xmm9
    cdd1:	66 44 0f db ca       	pand   %xmm2,%xmm9
    cdd6:	66 0f fe c5          	paddd  %xmm5,%xmm0
    cdda:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
    cddf:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    cde4:	66 0f 72 d0 10       	psrld  $0x10,%xmm0
    cde9:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
    cdf0:	00 
    cdf1:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    cdf4:	66 0f 6f ac 24 b0 01 	movdqa 0x1b0(%rsp),%xmm5
    cdfb:	00 00 
    cdfd:	0f 59 05 00 00 00 00 	mulps  0x0(%rip),%xmm0        # ce04 <sg_raster_triangle_depth_capture+0x9954>
    ce04:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    ce09:	0f 29 ac 24 00 02 00 	movaps %xmm5,0x200(%rsp)
    ce10:	00 
    ce11:	66 0f 6f ac 24 e0 01 	movdqa 0x1e0(%rsp),%xmm5
    ce18:	00 00 
    ce1a:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
    ce1f:	0f 29 ac 24 10 02 00 	movaps %xmm5,0x210(%rsp)
    ce26:	00 
    ce27:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
    ce2c:	66 0f db ea          	pand   %xmm2,%xmm5
    ce30:	66 41 0f 6b e8       	packssdw %xmm8,%xmm5
    ce35:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    ce3a:	66 41 0f 73 d8 08    	psrldq $0x8,%xmm8
    ce40:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
    ce45:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    ce4a:	66 45 0f f5 c5       	pmaddwd %xmm13,%xmm8
    ce4f:	66 45 0f 6f f8       	movdqa %xmm8,%xmm15
    ce54:	66 44 0f 6f 84 24 b0 	movdqa 0x1b0(%rsp),%xmm8
    ce5b:	01 00 00 
    ce5e:	66 44 0f db c2       	pand   %xmm2,%xmm8
    ce63:	66 41 0f 6f e8       	movdqa %xmm8,%xmm5
    ce68:	66 44 0f 6f 84 24 e0 	movdqa 0x1e0(%rsp),%xmm8
    ce6f:	01 00 00 
    ce72:	66 44 0f db c2       	pand   %xmm2,%xmm8
    ce77:	66 41 0f 6b e8       	packssdw %xmm8,%xmm5
    ce7c:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    ce81:	66 41 0f 73 d8 08    	psrldq $0x8,%xmm8
    ce87:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
    ce8c:	66 41 0f f5 ed       	pmaddwd %xmm13,%xmm5
    ce91:	66 0f 38 40 ac 24 c0 	pmulld 0x1c0(%rsp),%xmm5
    ce98:	01 00 00 
    ce9b:	66 41 0f fe ee       	paddd  %xmm14,%xmm5
    cea0:	66 44 0f 6f 84 24 f0 	movdqa 0x1f0(%rsp),%xmm8
    cea7:	01 00 00 
    ceaa:	66 44 0f 38 40 bc 24 	pmulld 0x1d0(%rsp),%xmm15
    ceb1:	d0 01 00 00 
    ceb5:	66 41 0f fe ef       	paddd  %xmm15,%xmm5
    ceba:	66 44 0f 6f bc 24 c0 	movdqa 0x1c0(%rsp),%xmm15
    cec1:	01 00 00 
    cec4:	66 44 0f db c2       	pand   %xmm2,%xmm8
    cec9:	66 0f 72 d5 10       	psrld  $0x10,%xmm5
    cece:	66 45 0f 6b c1       	packssdw %xmm9,%xmm8
    ced3:	0f 5b ed             	cvtdq2ps %xmm5,%xmm5
    ced6:	0f 59 2d 00 00 00 00 	mulps  0x0(%rip),%xmm5        # cedd <sg_raster_triangle_depth_capture+0x9a2d>
    cedd:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    cee2:	66 41 0f 73 d9 08    	psrldq $0x8,%xmm9
    cee8:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
    ceed:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
    cef2:	66 44 0f 6f 84 24 00 	movdqa 0x200(%rsp),%xmm8
    cef9:	02 00 00 
    cefc:	66 45 0f f5 cd       	pmaddwd %xmm13,%xmm9
    cf01:	66 44 0f 38 40 8c 24 	pmulld 0x1d0(%rsp),%xmm9
    cf08:	d0 01 00 00 
    cf0c:	66 44 0f db c2       	pand   %xmm2,%xmm8
    cf11:	66 0f db 94 24 10 02 	pand   0x210(%rsp),%xmm2
    cf18:	00 00 
    cf1a:	66 44 0f 6b c2       	packssdw %xmm2,%xmm8
    cf1f:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
    cf24:	66 0f 73 da 08       	psrldq $0x8,%xmm2
    cf29:	66 44 0f 61 c2       	punpcklwd %xmm2,%xmm8
    cf2e:	66 45 0f f5 c5       	pmaddwd %xmm13,%xmm8
    cf33:	66 45 0f 38 40 f8    	pmulld %xmm8,%xmm15
    cf39:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
    cf3e:	66 41 0f fe d6       	paddd  %xmm14,%xmm2
    cf43:	66 41 0f fe d1       	paddd  %xmm9,%xmm2
    cf48:	66 0f 72 d2 10       	psrld  $0x10,%xmm2
    cf4d:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    cf50:	0f 59 15 00 00 00 00 	mulps  0x0(%rip),%xmm2        # cf57 <sg_raster_triangle_depth_capture+0x9aa7>
    cf57:	e9 40 db ff ff       	jmp    aa9c <sg_raster_triangle_depth_capture+0x75ec>
    cf5c:	31 db                	xor    %ebx,%ebx
    cf5e:	e9 f6 c4 ff ff       	jmp    9459 <sg_raster_triangle_depth_capture+0x5fa9>
    cf63:	31 ed                	xor    %ebp,%ebp
    cf65:	e9 7c cc ff ff       	jmp    9be6 <sg_raster_triangle_depth_capture+0x6736>
    cf6a:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    cf6f:	66 41 0f 38 3d e2    	pmaxsd %xmm10,%xmm4
    cf75:	66 41 0f 38 39 e1    	pminsd %xmm9,%xmm4
    cf7b:	e9 65 ef ff ff       	jmp    bee5 <sg_raster_triangle_depth_capture+0x8a35>
    cf80:	31 ed                	xor    %ebp,%ebp
    cf82:	e9 0b cf ff ff       	jmp    9e92 <sg_raster_triangle_depth_capture+0x69e2>
    cf87:	31 ed                	xor    %ebp,%ebp
    cf89:	e9 65 c7 ff ff       	jmp    96f3 <sg_raster_triangle_depth_capture+0x6243>
    cf8e:	66 0f ef d2          	pxor   %xmm2,%xmm2
    cf92:	66 0f 38 3d d4       	pmaxsd %xmm4,%xmm2
    cf97:	66 41 0f 38 39 d1    	pminsd %xmm9,%xmm2
    cf9d:	e9 04 ee ff ff       	jmp    bda6 <sg_raster_triangle_depth_capture+0x88f6>
    cfa2:	31 db                	xor    %ebx,%ebx
    cfa4:	e9 e3 c6 ff ff       	jmp    968c <sg_raster_triangle_depth_capture+0x61dc>
    cfa9:	31 ed                	xor    %ebp,%ebp
    cfab:	e9 8a c9 ff ff       	jmp    993a <sg_raster_triangle_depth_capture+0x648a>
    cfb0:	31 ed                	xor    %ebp,%ebp
    cfb2:	e9 ea c9 ff ff       	jmp    99a1 <sg_raster_triangle_depth_capture+0x64f1>
    cfb7:	45 0f 28 e9          	movaps %xmm9,%xmm13
    cfbb:	66 0f ef d2          	pxor   %xmm2,%xmm2
    cfbf:	44 0f c2 e8 01       	cmpltps %xmm0,%xmm13
    cfc4:	0f 28 c5             	movaps %xmm5,%xmm0
    cfc7:	66 41 0f 66 d5       	pcmpgtd %xmm13,%xmm2
    cfcc:	41 0f 55 d1          	andnps %xmm9,%xmm2
    cfd0:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    cfd4:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    cfd9:	e9 59 f7 ff ff       	jmp    c737 <sg_raster_triangle_depth_capture+0x9287>
    cfde:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    cfe4:	66 0f 6e c5          	movd   %ebp,%xmm0
    cfe8:	48 63 f6             	movslq %esi,%rsi
    cfeb:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
    cff2:	e9 9d f4 ff ff       	jmp    c494 <sg_raster_triangle_depth_capture+0x8fe4>
    cff7:	48 63 b4 24 7c 03 00 	movslq 0x37c(%rsp),%rsi
    cffe:	00 
    cfff:	66 0f ef db          	pxor   %xmm3,%xmm3
    d003:	66 0f 3a 22 1c b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm3
    d00a:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    d00f:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    d015:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d019:	48 63 f6             	movslq %esi,%rsi
    d01c:	66 0f 3a 22 0c b2 03 	pinsrd $0x3,(%rdx,%rsi,4),%xmm1
    d023:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    d027:	e9 fd ef ff ff       	jmp    c029 <sg_raster_triangle_depth_capture+0x8b79>
    d02c:	31 f6                	xor    %esi,%esi
    d02e:	48 63 bc 24 7c 03 00 	movslq 0x37c(%rsp),%rdi
    d035:	00 
    d036:	66 0f 6e ce          	movd   %esi,%xmm1
    d03a:	66 0f 3a 22 dd 01    	pinsrd $0x1,%ebp,%xmm3
    d040:	66 0f 3a 22 0c ba 01 	pinsrd $0x1,(%rdx,%rdi,4),%xmm1
    d047:	66 0f 6c d9          	punpcklqdq %xmm1,%xmm3
    d04b:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    d050:	45 85 c0             	test   %r8d,%r8d
    d053:	0f 85 8c ef ff ff    	jne    bfe5 <sg_raster_triangle_depth_capture+0x8b35>
    d059:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d05d:	45 85 db             	test   %r11d,%r11d
    d060:	0f 85 fb f2 ff ff    	jne    c361 <sg_raster_triangle_depth_capture+0x8eb1>
    d066:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d06d:	00 
    d06e:	74 9f                	je     d00f <sg_raster_triangle_depth_capture+0x9b5f>
    d070:	31 ff                	xor    %edi,%edi
    d072:	e9 fe f3 ff ff       	jmp    c475 <sg_raster_triangle_depth_capture+0x8fc5>
    d077:	31 ff                	xor    %edi,%edi
    d079:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    d080:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d084:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    d08a:	48 63 f6             	movslq %esi,%rsi
    d08d:	66 0f 3a 22 14 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm2
    d094:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    d098:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    d09d:	45 85 c0             	test   %r8d,%r8d
    d0a0:	0f 85 11 02 00 00    	jne    d2b7 <sg_raster_triangle_depth_capture+0x9e07>
    d0a6:	45 85 db             	test   %r11d,%r11d
    d0a9:	0f 85 e5 01 00 00    	jne    d294 <sg_raster_triangle_depth_capture+0x9de4>
    d0af:	31 ed                	xor    %ebp,%ebp
    d0b1:	31 f6                	xor    %esi,%esi
    d0b3:	e9 8f ef ff ff       	jmp    c047 <sg_raster_triangle_depth_capture+0x8b97>
    d0b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    d0bf:	00 
    d0c0:	66 0f 6e f7          	movd   %edi,%xmm6
    d0c4:	66 0f 70 d6 00       	pshufd $0x0,%xmm6,%xmm2
    d0c9:	66 0f db d4          	pand   %xmm4,%xmm2
    d0cd:	e9 d4 ec ff ff       	jmp    bda6 <sg_raster_triangle_depth_capture+0x88f6>
    d0d2:	31 ff                	xor    %edi,%edi
    d0d4:	e9 e1 f3 ff ff       	jmp    c4ba <sg_raster_triangle_depth_capture+0x900a>
    d0d9:	66 0f 6e c5          	movd   %ebp,%xmm0
    d0dd:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
    d0e2:	66 0f db c3          	pand   %xmm3,%xmm0
    d0e6:	e9 50 ed ff ff       	jmp    be3b <sg_raster_triangle_depth_capture+0x898b>
    d0eb:	48 63 94 24 bc 03 00 	movslq 0x3bc(%rsp),%rdx
    d0f2:	00 
    d0f3:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d0f9:	66 0f 6e ac 24 70 01 	movd   0x170(%rsp),%xmm5
    d100:	00 00 
    d102:	66 0f 3a 22 2c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm5
    d109:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    d10d:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d112:	45 85 c9             	test   %r9d,%r9d
    d115:	0f 85 bd f9 ff ff    	jne    cad8 <sg_raster_triangle_depth_capture+0x9628>
    d11b:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d11f:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
    d125:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d12c:	00 
    d12d:	48 63 d2             	movslq %edx,%rdx
    d130:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d133:	0f 85 49 02 00 00    	jne    d382 <sg_raster_triangle_depth_capture+0x9ed2>
    d139:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d140:	00 
    d141:	0f 85 82 00 00 00    	jne    d1c9 <sg_raster_triangle_depth_capture+0x9d19>
    d147:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
    d14d:	f3 0f 7e ed          	movq   %xmm5,%xmm5
    d151:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    d158:	00 
    d159:	45 85 c9             	test   %r9d,%r9d
    d15c:	0f 84 a4 00 00 00    	je     d206 <sg_raster_triangle_depth_capture+0x9d56>
    d162:	66 0f 7e ca          	movd   %xmm1,%edx
    d166:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d16d:	00 
    d16e:	48 63 d2             	movslq %edx,%rdx
    d171:	66 0f 6e 14 90       	movd   (%rax,%rdx,4),%xmm2
    d176:	0f 85 8e 00 00 00    	jne    d20a <sg_raster_triangle_depth_capture+0x9d5a>
    d17c:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d183:	00 
    d184:	0f 85 08 03 00 00    	jne    d492 <sg_raster_triangle_depth_capture+0x9fe2>
    d18a:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d191:	00 
    d192:	0f 85 32 01 00 00    	jne    d2ca <sg_raster_triangle_depth_capture+0x9e1a>
    d198:	66 0f 3a 21 d2 0e    	insertps $0xe,%xmm2,%xmm2
    d19e:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d1a2:	66 44 0f 7e ca       	movd   %xmm9,%edx
    d1a7:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d1ae:	00 
    d1af:	48 63 d2             	movslq %edx,%rdx
    d1b2:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d1b5:	0f 85 bb 02 00 00    	jne    d476 <sg_raster_triangle_depth_capture+0x9fc6>
    d1bb:	31 d2                	xor    %edx,%edx
    d1bd:	45 31 c0             	xor    %r8d,%r8d
    d1c0:	31 ff                	xor    %edi,%edi
    d1c2:	e9 8a f9 ff ff       	jmp    cb51 <sg_raster_triangle_depth_capture+0x96a1>
    d1c7:	31 c9                	xor    %ecx,%ecx
    d1c9:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    d1cf:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d1d3:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
    d1d9:	48 63 d2             	movslq %edx,%rdx
    d1dc:	66 0f 3a 22 14 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm2
    d1e3:	66 0f 6c ea          	punpcklqdq %xmm2,%xmm5
    d1e7:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    d1ee:	00 
    d1ef:	45 85 c9             	test   %r9d,%r9d
    d1f2:	0f 85 6a ff ff ff    	jne    d162 <sg_raster_triangle_depth_capture+0x9cb2>
    d1f8:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d1ff:	00 
    d200:	0f 84 1f f9 ff ff    	je     cb25 <sg_raster_triangle_depth_capture+0x9675>
    d206:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d20a:	66 0f 3a 16 ca 01    	pextrd $0x1,%xmm1,%edx
    d210:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d217:	00 
    d218:	48 63 d2             	movslq %edx,%rdx
    d21b:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d21e:	0f 85 ab 01 00 00    	jne    d3cf <sg_raster_triangle_depth_capture+0x9f1f>
    d224:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d22b:	00 
    d22c:	0f 85 9a 00 00 00    	jne    d2cc <sg_raster_triangle_depth_capture+0x9e1c>
    d232:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d238:	f3 0f 7e d2          	movq   %xmm2,%xmm2
    d23c:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d240:	45 85 c9             	test   %r9d,%r9d
    d243:	0f 85 59 ff ff ff    	jne    d1a2 <sg_raster_triangle_depth_capture+0x9cf2>
    d249:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    d250:	45 31 c0             	xor    %r8d,%r8d
    d253:	31 c9                	xor    %ecx,%ecx
    d255:	48 63 d2             	movslq %edx,%rdx
    d258:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d25b:	31 d2                	xor    %edx,%edx
    d25d:	e9 ef f8 ff ff       	jmp    cb51 <sg_raster_triangle_depth_capture+0x96a1>
    d262:	66 44 0f 3a 16 ce 03 	pextrd $0x3,%xmm9,%esi
    d269:	66 0f 6e d5          	movd   %ebp,%xmm2
    d26d:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    d273:	48 63 f6             	movslq %esi,%rsi
    d276:	66 0f 3a 22 14 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm2
    d27d:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    d281:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    d286:	45 85 c0             	test   %r8d,%r8d
    d289:	75 2c                	jne    d2b7 <sg_raster_triangle_depth_capture+0x9e07>
    d28b:	45 85 db             	test   %r11d,%r11d
    d28e:	0f 84 c1 04 00 00    	je     d755 <sg_raster_triangle_depth_capture+0xa2a5>
    d294:	31 f6                	xor    %esi,%esi
    d296:	66 0f 3a 16 f7 01    	pextrd $0x1,%xmm6,%edi
    d29c:	48 63 ff             	movslq %edi,%rdi
    d29f:	8b 2c ba             	mov    (%rdx,%rdi,4),%ebp
    d2a2:	31 ff                	xor    %edi,%edi
    d2a4:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d2ab:	00 
    d2ac:	0f 84 63 f2 ff ff    	je     c515 <sg_raster_triangle_depth_capture+0x9065>
    d2b2:	e9 52 f2 ff ff       	jmp    c509 <sg_raster_triangle_depth_capture+0x9059>
    d2b7:	66 0f 7e f6          	movd   %xmm6,%esi
    d2bb:	31 ed                	xor    %ebp,%ebp
    d2bd:	48 63 f6             	movslq %esi,%rsi
    d2c0:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    d2c3:	45 85 db             	test   %r11d,%r11d
    d2c6:	74 da                	je     d2a2 <sg_raster_triangle_depth_capture+0x9df2>
    d2c8:	eb cc                	jmp    d296 <sg_raster_triangle_depth_capture+0x9de6>
    d2ca:	31 c9                	xor    %ecx,%ecx
    d2cc:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    d2d2:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d2d6:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d2dc:	48 63 d2             	movslq %edx,%rdx
    d2df:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    d2e6:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    d2ea:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d2ee:	45 85 c9             	test   %r9d,%r9d
    d2f1:	0f 85 a2 01 00 00    	jne    d499 <sg_raster_triangle_depth_capture+0x9fe9>
    d2f7:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d2fe:	00 
    d2ff:	0f 85 6f 01 00 00    	jne    d474 <sg_raster_triangle_depth_capture+0x9fc4>
    d305:	45 31 c0             	xor    %r8d,%r8d
    d308:	31 ff                	xor    %edi,%edi
    d30a:	31 c9                	xor    %ecx,%ecx
    d30c:	e9 33 f8 ff ff       	jmp    cb44 <sg_raster_triangle_depth_capture+0x9694>
    d311:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d318:	00 
    d319:	0f 85 38 06 00 00    	jne    d957 <sg_raster_triangle_depth_capture+0xa4a7>
    d31f:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d326:	00 
    d327:	0f 84 7e 06 00 00    	je     d9ab <sg_raster_triangle_depth_capture+0xa4fb>
    d32d:	31 c9                	xor    %ecx,%ecx
    d32f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d333:	48 63 94 24 b8 03 00 	movslq 0x3b8(%rsp),%rdx
    d33a:	00 
    d33b:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d342:	00 
    d343:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
    d348:	0f 85 96 06 00 00    	jne    d9e4 <sg_raster_triangle_depth_capture+0xa534>
    d34e:	66 0f 7e eb          	movd   %xmm5,%ebx
    d352:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d358:	66 0f 6e eb          	movd   %ebx,%xmm5
    d35c:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    d360:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d365:	45 85 c9             	test   %r9d,%r9d
    d368:	0f 85 6a f7 ff ff    	jne    cad8 <sg_raster_triangle_depth_capture+0x9628>
    d36e:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d375:	00 
    d376:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d37a:	0f 85 9f fd ff ff    	jne    d11f <sg_raster_triangle_depth_capture+0x9c6f>
    d380:	31 c9                	xor    %ecx,%ecx
    d382:	66 0f 3a 16 d2 02    	pextrd $0x2,%xmm2,%edx
    d388:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d38f:	00 
    d390:	48 63 d2             	movslq %edx,%rdx
    d393:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d396:	0f 85 cf 08 00 00    	jne    dc6b <sg_raster_triangle_depth_capture+0xa7bb>
    d39c:	66 0f 6e d7          	movd   %edi,%xmm2
    d3a0:	66 0f 3a 22 e9 01    	pinsrd $0x1,%ecx,%xmm5
    d3a6:	66 0f 6c ea          	punpcklqdq %xmm2,%xmm5
    d3aa:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    d3b1:	00 
    d3b2:	45 85 c9             	test   %r9d,%r9d
    d3b5:	0f 85 a7 fd ff ff    	jne    d162 <sg_raster_triangle_depth_capture+0x9cb2>
    d3bb:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d3c2:	00 
    d3c3:	0f 85 3d fe ff ff    	jne    d206 <sg_raster_triangle_depth_capture+0x9d56>
    d3c9:	31 c9                	xor    %ecx,%ecx
    d3cb:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d3cf:	66 0f 3a 16 ca 02    	pextrd $0x2,%xmm1,%edx
    d3d5:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d3dc:	00 
    d3dd:	48 63 d2             	movslq %edx,%rdx
    d3e0:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d3e3:	75 5e                	jne    d443 <sg_raster_triangle_depth_capture+0x9f93>
    d3e5:	66 0f 6e cf          	movd   %edi,%xmm1
    d3e9:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d3ef:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    d3f3:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d3f7:	45 85 c9             	test   %r9d,%r9d
    d3fa:	0f 85 bb 00 00 00    	jne    d4bb <sg_raster_triangle_depth_capture+0xa00b>
    d400:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d407:	00 
    d408:	0f 84 a4 00 00 00    	je     d4b2 <sg_raster_triangle_depth_capture+0xa002>
    d40e:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    d415:	31 c9                	xor    %ecx,%ecx
    d417:	48 63 d2             	movslq %edx,%rdx
    d41a:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d41d:	66 44 0f 3a 16 ca 02 	pextrd $0x2,%xmm9,%edx
    d424:	48 63 d2             	movslq %edx,%rdx
    d427:	44 8b 04 90          	mov    (%rax,%rdx,4),%r8d
    d42b:	44 8b 94 24 80 01 00 	mov    0x180(%rsp),%r10d
    d432:	00 
    d433:	31 d2                	xor    %edx,%edx
    d435:	45 85 d2             	test   %r10d,%r10d
    d438:	0f 84 13 f7 ff ff    	je     cb51 <sg_raster_triangle_depth_capture+0x96a1>
    d43e:	e9 01 f7 ff ff       	jmp    cb44 <sg_raster_triangle_depth_capture+0x9694>
    d443:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    d449:	66 0f 6e cf          	movd   %edi,%xmm1
    d44d:	66 0f 3a 22 d1 01    	pinsrd $0x1,%ecx,%xmm2
    d453:	48 63 d2             	movslq %edx,%rdx
    d456:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    d45d:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    d461:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    d465:	45 85 c9             	test   %r9d,%r9d
    d468:	75 2f                	jne    d499 <sg_raster_triangle_depth_capture+0x9fe9>
    d46a:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d471:	00 
    d472:	74 3e                	je     d4b2 <sg_raster_triangle_depth_capture+0xa002>
    d474:	31 c9                	xor    %ecx,%ecx
    d476:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    d47d:	48 63 d2             	movslq %edx,%rdx
    d480:	8b 3c 90             	mov    (%rax,%rdx,4),%edi
    d483:	45 31 c0             	xor    %r8d,%r8d
    d486:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d48d:	00 
    d48e:	74 9b                	je     d42b <sg_raster_triangle_depth_capture+0x9f7b>
    d490:	eb 8b                	jmp    d41d <sg_raster_triangle_depth_capture+0x9f6d>
    d492:	31 c9                	xor    %ecx,%ecx
    d494:	e9 36 ff ff ff       	jmp    d3cf <sg_raster_triangle_depth_capture+0x9f1f>
    d499:	66 44 0f 7e ca       	movd   %xmm9,%edx
    d49e:	31 ff                	xor    %edi,%edi
    d4a0:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d4a7:	00 
    d4a8:	48 63 d2             	movslq %edx,%rdx
    d4ab:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d4ae:	74 d3                	je     d483 <sg_raster_triangle_depth_capture+0x9fd3>
    d4b0:	eb c4                	jmp    d476 <sg_raster_triangle_depth_capture+0x9fc6>
    d4b2:	31 ff                	xor    %edi,%edi
    d4b4:	31 c9                	xor    %ecx,%ecx
    d4b6:	e9 62 ff ff ff       	jmp    d41d <sg_raster_triangle_depth_capture+0x9f6d>
    d4bb:	66 44 0f 7e ca       	movd   %xmm9,%edx
    d4c0:	31 ff                	xor    %edi,%edi
    d4c2:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d4c9:	00 
    d4ca:	48 63 d2             	movslq %edx,%rdx
    d4cd:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d4d0:	0f 84 47 ff ff ff    	je     d41d <sg_raster_triangle_depth_capture+0x9f6d>
    d4d6:	eb 9e                	jmp    d476 <sg_raster_triangle_depth_capture+0x9fc6>
    d4d8:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d4dc:	0f 28 c1             	movaps %xmm1,%xmm0
    d4df:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    d4e3:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d4e7:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
    d4eb:	0f 28 c5             	movaps %xmm5,%xmm0
    d4ee:	0f 55 d1             	andnps %xmm1,%xmm2
    d4f1:	0f c2 c2 01          	cmpltps %xmm2,%xmm0
    d4f5:	66 0f 38 14 d5       	blendvps %xmm0,%xmm5,%xmm2
    d4fa:	e9 83 f2 ff ff       	jmp    c782 <sg_raster_triangle_depth_capture+0x92d2>
    d4ff:	83 bc 24 c0 01 00 00 	cmpl   $0xf,0x1c0(%rsp)
    d506:	0f 
    d507:	0f 84 b3 01 00 00    	je     d6c0 <sg_raster_triangle_depth_capture+0xa210>
    d50d:	45 85 c0             	test   %r8d,%r8d
    d510:	0f 85 96 01 00 00    	jne    d6ac <sg_raster_triangle_depth_capture+0xa1fc>
    d516:	45 85 db             	test   %r11d,%r11d
    d519:	0f 85 70 01 00 00    	jne    d68f <sg_raster_triangle_depth_capture+0xa1df>
    d51f:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d526:	00 
    d527:	0f 85 3c 01 00 00    	jne    d669 <sg_raster_triangle_depth_capture+0xa1b9>
    d52d:	31 ed                	xor    %ebp,%ebp
    d52f:	31 ff                	xor    %edi,%edi
    d531:	45 31 c9             	xor    %r9d,%r9d
    d534:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
    d53a:	48 63 f6             	movslq %esi,%rsi
    d53d:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    d540:	66 0f 6e cd          	movd   %ebp,%xmm1
    d544:	66 41 0f 6e c1       	movd   %r9d,%xmm0
    d549:	66 0f 3a 22 ce 01    	pinsrd $0x1,%esi,%xmm1
    d54f:	66 0f 3a 22 c7 01    	pinsrd $0x1,%edi,%xmm0
    d555:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d559:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d55d:	ba ff 00 00 00       	mov    $0xff,%edx
    d562:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # d56a <sg_raster_triangle_depth_capture+0xa0ba>
    d569:	00 
    d56a:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    d56f:	66 0f 6e d2          	movd   %edx,%xmm2
    d573:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    d578:	66 0f db ca          	pand   %xmm2,%xmm1
    d57c:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    d580:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d583:	0f 59 cb             	mulps  %xmm3,%xmm1
    d586:	41 0f 29 0c 24       	movaps %xmm1,(%r12)
    d58b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d58f:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    d594:	66 0f db ca          	pand   %xmm2,%xmm1
    d598:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d59b:	0f 59 cb             	mulps  %xmm3,%xmm1
    d59e:	41 0f 29 4c 24 10    	movaps %xmm1,0x10(%r12)
    d5a4:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d5a8:	66 0f 72 d0 08       	psrld  $0x8,%xmm0
    d5ad:	66 0f db ca          	pand   %xmm2,%xmm1
    d5b1:	66 0f db c2          	pand   %xmm2,%xmm0
    d5b5:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d5b8:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    d5bb:	0f 59 cb             	mulps  %xmm3,%xmm1
    d5be:	0f 59 c3             	mulps  %xmm3,%xmm0
    d5c1:	41 0f 29 4c 24 20    	movaps %xmm1,0x20(%r12)
    d5c7:	41 0f 29 44 24 30    	movaps %xmm0,0x30(%r12)
    d5cd:	e9 b1 95 ff ff       	jmp    6b83 <sg_raster_triangle_depth_capture+0x36d3>
    d5d2:	66 44 0f 6e df       	movd   %edi,%xmm11
    d5d7:	66 45 0f 70 cb 00    	pshufd $0x0,%xmm11,%xmm9
    d5dd:	66 41 0f db e1       	pand   %xmm9,%xmm4
    d5e2:	e9 fe e8 ff ff       	jmp    bee5 <sg_raster_triangle_depth_capture+0x8a35>
    d5e7:	48 8b 94 24 00 02 00 	mov    0x200(%rsp),%rdx
    d5ee:	00 
    d5ef:	f3 0f 7e 45 00       	movq   0x0(%rbp),%xmm0
    d5f4:	f3 0f 7e 0f          	movq   (%rdi),%xmm1
    d5f8:	66 49 0f 3a 22 09 01 	pinsrq $0x1,(%r9),%xmm1
    d5ff:	66 48 0f 3a 22 02 01 	pinsrq $0x1,(%rdx),%xmm0
    d606:	48 8b 94 24 10 02 00 	mov    0x210(%rsp),%rdx
    d60d:	00 
    d60e:	0f 28 d9             	movaps %xmm1,%xmm3
    d611:	f3 0f 7e 12          	movq   (%rdx),%xmm2
    d615:	0f c6 d8 88          	shufps $0x88,%xmm0,%xmm3
    d619:	0f c6 c8 dd          	shufps $0xdd,%xmm0,%xmm1
    d61d:	48 8b 94 24 20 02 00 	mov    0x220(%rsp),%rdx
    d624:	00 
    d625:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
    d62a:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    d62e:	66 48 0f 3a 22 12 01 	pinsrq $0x1,(%rdx),%xmm2
    d635:	48 8b 94 24 40 02 00 	mov    0x240(%rsp),%rdx
    d63c:	00 
    d63d:	f3 0f 7e 32          	movq   (%rdx),%xmm6
    d641:	48 8b 94 24 30 02 00 	mov    0x230(%rsp),%rdx
    d648:	00 
    d649:	0f 28 c2             	movaps %xmm2,%xmm0
    d64c:	66 48 0f 3a 22 32 01 	pinsrq $0x1,(%rdx),%xmm6
    d653:	0f c6 c6 88          	shufps $0x88,%xmm6,%xmm0
    d657:	0f c6 d6 dd          	shufps $0xdd,%xmm6,%xmm2
    d65b:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
    d660:	66 0f 6f f2          	movdqa %xmm2,%xmm6
    d664:	e9 1b ea ff ff       	jmp    c084 <sg_raster_triangle_depth_capture+0x8bd4>
    d669:	31 ff                	xor    %edi,%edi
    d66b:	45 31 c9             	xor    %r9d,%r9d
    d66e:	66 0f 3a 16 d6 02    	pextrd $0x2,%xmm2,%esi
    d674:	48 63 f6             	movslq %esi,%rsi
    d677:	8b 2c b2             	mov    (%rdx,%rsi,4),%ebp
    d67a:	31 f6                	xor    %esi,%esi
    d67c:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d683:	00 
    d684:	0f 84 b6 fe ff ff    	je     d540 <sg_raster_triangle_depth_capture+0xa090>
    d68a:	e9 a5 fe ff ff       	jmp    d534 <sg_raster_triangle_depth_capture+0xa084>
    d68f:	45 31 c9             	xor    %r9d,%r9d
    d692:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
    d698:	48 63 f6             	movslq %esi,%rsi
    d69b:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    d69e:	31 ed                	xor    %ebp,%ebp
    d6a0:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d6a7:	00 
    d6a8:	74 d0                	je     d67a <sg_raster_triangle_depth_capture+0xa1ca>
    d6aa:	eb c2                	jmp    d66e <sg_raster_triangle_depth_capture+0xa1be>
    d6ac:	66 0f 7e d6          	movd   %xmm2,%esi
    d6b0:	31 ff                	xor    %edi,%edi
    d6b2:	48 63 f6             	movslq %esi,%rsi
    d6b5:	44 8b 0c b2          	mov    (%rdx,%rsi,4),%r9d
    d6b9:	45 85 db             	test   %r11d,%r11d
    d6bc:	74 e0                	je     d69e <sg_raster_triangle_depth_capture+0xa1ee>
    d6be:	eb d2                	jmp    d692 <sg_raster_triangle_depth_capture+0xa1e2>
    d6c0:	66 0f 7e d6          	movd   %xmm2,%esi
    d6c4:	66 0f 3a 16 d7 02    	pextrd $0x2,%xmm2,%edi
    d6ca:	4c 63 ce             	movslq %esi,%r9
    d6cd:	66 0f 3a 16 d6 01    	pextrd $0x1,%xmm2,%esi
    d6d3:	48 63 ff             	movslq %edi,%rdi
    d6d6:	48 63 ee             	movslq %esi,%rbp
    d6d9:	66 0f 3a 16 d6 03    	pextrd $0x3,%xmm2,%esi
    d6df:	66 0f 6e 0c ba       	movd   (%rdx,%rdi,4),%xmm1
    d6e4:	66 42 0f 6e 04 8a    	movd   (%rdx,%r9,4),%xmm0
    d6ea:	48 63 f6             	movslq %esi,%rsi
    d6ed:	66 0f 3a 22 04 aa 01 	pinsrd $0x1,(%rdx,%rbp,4),%xmm0
    d6f4:	66 0f 3a 22 0c b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm1
    d6fb:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d6ff:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d703:	e9 55 fe ff ff       	jmp    d55d <sg_raster_triangle_depth_capture+0xa0ad>
    d708:	31 ff                	xor    %edi,%edi
    d70a:	66 0f 3a 16 c6 03    	pextrd $0x3,%xmm0,%esi
    d710:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d714:	66 0f 3a 22 cf 01    	pinsrd $0x1,%edi,%xmm1
    d71a:	48 63 f6             	movslq %esi,%rsi
    d71d:	66 0f 3a 22 04 b2 01 	pinsrd $0x1,(%rdx,%rsi,4),%xmm0
    d724:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    d728:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    d72c:	45 85 c0             	test   %r8d,%r8d
    d72f:	0f 85 8b eb ff ff    	jne    c2c0 <sg_raster_triangle_depth_capture+0x8e10>
    d735:	45 85 db             	test   %r11d,%r11d
    d738:	0f 85 63 ec ff ff    	jne    c3a1 <sg_raster_triangle_depth_capture+0x8ef1>
    d73e:	e9 e6 e8 ff ff       	jmp    c029 <sg_raster_triangle_depth_capture+0x8b79>
    d743:	66 0f 6e f5          	movd   %ebp,%xmm6
    d747:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
    d74c:	66 0f db de          	pand   %xmm6,%xmm3
    d750:	e9 21 e8 ff ff       	jmp    bf76 <sg_raster_triangle_depth_capture+0x8ac6>
    d755:	31 ed                	xor    %ebp,%ebp
    d757:	31 f6                	xor    %esi,%esi
    d759:	e9 ab ed ff ff       	jmp    c509 <sg_raster_triangle_depth_capture+0x9059>
    d75e:	66 0f 7e f6          	movd   %xmm6,%esi
    d762:	31 ed                	xor    %ebp,%ebp
    d764:	48 63 f6             	movslq %esi,%rsi
    d767:	8b 34 b2             	mov    (%rdx,%rsi,4),%esi
    d76a:	45 85 db             	test   %r11d,%r11d
    d76d:	0f 84 96 ed ff ff    	je     c509 <sg_raster_triangle_depth_capture+0x9059>
    d773:	e9 1e fb ff ff       	jmp    d296 <sg_raster_triangle_depth_capture+0x9de6>
    d778:	31 f6                	xor    %esi,%esi
    d77a:	31 ed                	xor    %ebp,%ebp
    d77c:	e9 ad f8 ff ff       	jmp    d02e <sg_raster_triangle_depth_capture+0x9b7e>
    d781:	31 ed                	xor    %ebp,%ebp
    d783:	e9 a8 ec ff ff       	jmp    c430 <sg_raster_triangle_depth_capture+0x8f80>
    d788:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d78c:	66 0f 38 3d ca       	pmaxsd %xmm2,%xmm1
    d791:	66 0f 38 39 8c 24 b0 	pminsd 0x1b0(%rsp),%xmm1
    d798:	01 00 00 
    d79b:	e9 b4 f2 ff ff       	jmp    ca54 <sg_raster_triangle_depth_capture+0x95a4>
    d7a0:	66 0f 6e d1          	movd   %ecx,%xmm2
    d7a4:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    d7a9:	66 0f db ea          	pand   %xmm2,%xmm5
    d7ad:	e9 16 f2 ff ff       	jmp    c9c8 <sg_raster_triangle_depth_capture+0x9518>
    d7b2:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d7b6:	66 0f 38 3d d5       	pmaxsd %xmm5,%xmm2
    d7bb:	66 41 0f 38 39 d6    	pminsd %xmm14,%xmm2
    d7c1:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    d7c5:	e9 fe f1 ff ff       	jmp    c9c8 <sg_raster_triangle_depth_capture+0x9518>
    d7ca:	83 bc 24 c0 01 00 00 	cmpl   $0xf,0x1c0(%rsp)
    d7d1:	0f 
    d7d2:	0f 84 e7 00 00 00    	je     d8bf <sg_raster_triangle_depth_capture+0xa40f>
    d7d8:	66 0f ef d2          	pxor   %xmm2,%xmm2
    d7dc:	45 85 c9             	test   %r9d,%r9d
    d7df:	74 0c                	je     d7ed <sg_raster_triangle_depth_capture+0xa33d>
    d7e1:	66 0f 7e c2          	movd   %xmm0,%edx
    d7e5:	48 63 d2             	movslq %edx,%rdx
    d7e8:	66 0f 6e 14 90       	movd   (%rax,%rdx,4),%xmm2
    d7ed:	31 c9                	xor    %ecx,%ecx
    d7ef:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    d7f6:	00 
    d7f7:	74 0c                	je     d805 <sg_raster_triangle_depth_capture+0xa355>
    d7f9:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
    d7ff:	48 63 d2             	movslq %edx,%rdx
    d802:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d805:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d80c:	00 
    d80d:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d811:	74 0e                	je     d821 <sg_raster_triangle_depth_capture+0xa371>
    d813:	66 0f 3a 16 c2 02    	pextrd $0x2,%xmm0,%edx
    d819:	48 63 d2             	movslq %edx,%rdx
    d81c:	66 0f 6e 0c 90       	movd   (%rax,%rdx,4),%xmm1
    d821:	31 d2                	xor    %edx,%edx
    d823:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d82a:	00 
    d82b:	74 0c                	je     d839 <sg_raster_triangle_depth_capture+0xa389>
    d82d:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
    d833:	48 63 d2             	movslq %edx,%rdx
    d836:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    d839:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    d83d:	66 0f 3a 22 ca 01    	pinsrd $0x1,%edx,%xmm1
    d843:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d849:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d84d:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d851:	66 0f 6f d0          	movdqa %xmm0,%xmm2
    d855:	b8 ff 00 00 00       	mov    $0xff,%eax
    d85a:	f3 44 0f 10 05 00 00 	movss  0x0(%rip),%xmm8        # d863 <sg_raster_triangle_depth_capture+0xa3b3>
    d861:	00 00 
    d863:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    d868:	66 44 0f 6e c8       	movd   %eax,%xmm9
    d86d:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    d871:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    d876:	66 45 0f 70 c9 00    	pshufd $0x0,%xmm9,%xmm9
    d87c:	66 41 0f db c9       	pand   %xmm9,%xmm1
    d881:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    d885:	66 0f 72 d2 08       	psrld  $0x8,%xmm2
    d88a:	66 41 0f db c1       	pand   %xmm9,%xmm0
    d88f:	45 0f c6 c0 00       	shufps $0x0,%xmm8,%xmm8
    d894:	66 41 0f db e9       	pand   %xmm9,%xmm5
    d899:	66 41 0f db d1       	pand   %xmm9,%xmm2
    d89e:	0f 5b c9             	cvtdq2ps %xmm1,%xmm1
    d8a1:	0f 5b c0             	cvtdq2ps %xmm0,%xmm0
    d8a4:	0f 5b ed             	cvtdq2ps %xmm5,%xmm5
    d8a7:	0f 5b d2             	cvtdq2ps %xmm2,%xmm2
    d8aa:	41 0f 59 c8          	mulps  %xmm8,%xmm1
    d8ae:	41 0f 59 c0          	mulps  %xmm8,%xmm0
    d8b2:	41 0f 59 e8          	mulps  %xmm8,%xmm5
    d8b6:	41 0f 59 d0          	mulps  %xmm8,%xmm2
    d8ba:	e9 dd d1 ff ff       	jmp    aa9c <sg_raster_triangle_depth_capture+0x75ec>
    d8bf:	66 0f 7e c2          	movd   %xmm0,%edx
    d8c3:	66 0f 3a 16 c1 02    	pextrd $0x2,%xmm0,%ecx
    d8c9:	48 63 fa             	movslq %edx,%rdi
    d8cc:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
    d8d2:	48 63 c9             	movslq %ecx,%rcx
    d8d5:	4c 63 c2             	movslq %edx,%r8
    d8d8:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
    d8de:	66 0f 6e 0c 88       	movd   (%rax,%rcx,4),%xmm1
    d8e3:	66 0f 6e 04 b8       	movd   (%rax,%rdi,4),%xmm0
    d8e8:	48 63 d2             	movslq %edx,%rdx
    d8eb:	66 42 0f 3a 22 04 80 	pinsrd $0x1,(%rax,%r8,4),%xmm0
    d8f2:	01 
    d8f3:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    d8fa:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    d8fe:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    d902:	e9 4a ff ff ff       	jmp    d851 <sg_raster_triangle_depth_capture+0xa3a1>
    d907:	66 0f 6e ea          	movd   %edx,%xmm5
    d90b:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
    d910:	66 0f db e9          	pand   %xmm1,%xmm5
    d914:	e9 11 f0 ff ff       	jmp    c92a <sg_raster_triangle_depth_capture+0x947a>
    d919:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d91d:	66 0f 38 3d e9       	pmaxsd %xmm1,%xmm5
    d922:	66 0f 38 39 ac 24 b0 	pminsd 0x1b0(%rsp),%xmm5
    d929:	01 00 00 
    d92c:	e9 f9 ef ff ff       	jmp    c92a <sg_raster_triangle_depth_capture+0x947a>
    d931:	66 0f 6e e9          	movd   %ecx,%xmm5
    d935:	66 0f 70 c5 00       	pshufd $0x0,%xmm5,%xmm0
    d93a:	66 0f db c2          	pand   %xmm2,%xmm0
    d93e:	e9 2b ef ff ff       	jmp    c86e <sg_raster_triangle_depth_capture+0x93be>
    d943:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d947:	66 0f 38 3d c2       	pmaxsd %xmm2,%xmm0
    d94c:	66 41 0f 38 39 c6    	pminsd %xmm14,%xmm0
    d952:	e9 17 ef ff ff       	jmp    c86e <sg_raster_triangle_depth_capture+0x93be>
    d957:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d95b:	48 63 94 24 b4 03 00 	movslq 0x3b4(%rsp),%rdx
    d962:	00 
    d963:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    d96a:	00 
    d96b:	8b 0c 90             	mov    (%rax,%rdx,4),%ecx
    d96e:	0f 85 bf f9 ff ff    	jne    d333 <sg_raster_triangle_depth_capture+0x9e83>
    d974:	83 bc 24 80 01 00 00 	cmpl   $0x0,0x180(%rsp)
    d97b:	00 
    d97c:	0f 85 69 f7 ff ff    	jne    d0eb <sg_raster_triangle_depth_capture+0x9c3b>
    d982:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d988:	f3 0f 7e c0          	movq   %xmm0,%xmm0
    d98c:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d991:	45 85 c9             	test   %r9d,%r9d
    d994:	0f 84 81 f7 ff ff    	je     d11b <sg_raster_triangle_depth_capture+0x9c6b>
    d99a:	66 0f 7e d2          	movd   %xmm2,%edx
    d99e:	48 63 d2             	movslq %edx,%rdx
    d9a1:	66 0f 6e 2c 90       	movd   (%rax,%rdx,4),%xmm5
    d9a6:	e9 74 f7 ff ff       	jmp    d11f <sg_raster_triangle_depth_capture+0x9c6f>
    d9ab:	48 63 94 24 bc 03 00 	movslq 0x3bc(%rsp),%rdx
    d9b2:	00 
    d9b3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    d9b7:	66 0f 3a 22 04 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm0
    d9be:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    d9c3:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    d9c9:	66 0f ef ed          	pxor   %xmm5,%xmm5
    d9cd:	48 63 d2             	movslq %edx,%rdx
    d9d0:	66 0f 3a 22 2c 90 03 	pinsrd $0x3,(%rax,%rdx,4),%xmm5
    d9d7:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    d9de:	00 
    d9df:	e9 41 f1 ff ff       	jmp    cb25 <sg_raster_triangle_depth_capture+0x9675>
    d9e4:	48 63 94 24 bc 03 00 	movslq 0x3bc(%rsp),%rdx
    d9eb:	00 
    d9ec:	66 0f 3a 22 c1 01    	pinsrd $0x1,%ecx,%xmm0
    d9f2:	66 0f 3a 22 2c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm5
    d9f9:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    d9fd:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    da02:	45 85 c9             	test   %r9d,%r9d
    da05:	0f 85 cd f0 ff ff    	jne    cad8 <sg_raster_triangle_depth_capture+0x9628>
    da0b:	83 bc 24 a0 01 00 00 	cmpl   $0x0,0x1a0(%rsp)
    da12:	00 
    da13:	66 0f ef ed          	pxor   %xmm5,%xmm5
    da17:	0f 85 02 f7 ff ff    	jne    d11f <sg_raster_triangle_depth_capture+0x9c6f>
    da1d:	83 bc 24 70 01 00 00 	cmpl   $0x0,0x170(%rsp)
    da24:	00 
    da25:	74 9c                	je     d9c3 <sg_raster_triangle_depth_capture+0xa513>
    da27:	e9 54 f9 ff ff       	jmp    d380 <sg_raster_triangle_depth_capture+0x9ed0>
    da2c:	b9 01 00 00 00       	mov    $0x1,%ecx
    da31:	66 0f 7e c2          	movd   %xmm0,%edx
    da35:	66 44 0f 6e c1       	movd   %ecx,%xmm8
    da3a:	48 63 d2             	movslq %edx,%rdx
    da3d:	66 45 0f 70 c0 00    	pshufd $0x0,%xmm8,%xmm8
    da43:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
    da47:	66 0f 3a 16 c2 01    	pextrd $0x1,%xmm0,%edx
    da4d:	66 44 0f fe 84 24 e0 	paddd  0x1e0(%rsp),%xmm8
    da54:	01 00 00 
    da57:	48 63 d2             	movslq %edx,%rdx
    da5a:	66 44 0f 76 c5       	pcmpeqd %xmm5,%xmm8
    da5f:	41 0f 50 f8          	movmskps %xmm8,%edi
    da63:	89 bc 24 b0 01 00 00 	mov    %edi,0x1b0(%rsp)
    da6a:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
    da6e:	66 0f 3a 16 c2 02    	pextrd $0x2,%xmm0,%edx
    da74:	48 63 d2             	movslq %edx,%rdx
    da77:	4c 8d 04 90          	lea    (%rax,%rdx,4),%r8
    da7b:	66 0f 3a 16 c2 03    	pextrd $0x3,%xmm0,%edx
    da81:	48 63 d2             	movslq %edx,%rdx
    da84:	48 8d 2c 90          	lea    (%rax,%rdx,4),%rbp
    da88:	66 0f 7e ca          	movd   %xmm1,%edx
    da8c:	48 63 d2             	movslq %edx,%rdx
    da8f:	48 8d 1c 90          	lea    (%rax,%rdx,4),%rbx
    da93:	66 0f 3a 16 ca 01    	pextrd $0x1,%xmm1,%edx
    da99:	48 63 d2             	movslq %edx,%rdx
    da9c:	4c 8d 1c 90          	lea    (%rax,%rdx,4),%r11
    daa0:	66 0f 3a 16 ca 02    	pextrd $0x2,%xmm1,%edx
    daa6:	48 63 d2             	movslq %edx,%rdx
    daa9:	4c 8d 24 90          	lea    (%rax,%rdx,4),%r12
    daad:	66 0f 3a 16 ca 03    	pextrd $0x3,%xmm1,%edx
    dab3:	48 63 d2             	movslq %edx,%rdx
    dab6:	4c 8d 14 90          	lea    (%rax,%rdx,4),%r10
    daba:	8b 94 24 b0 01 00 00 	mov    0x1b0(%rsp),%edx
    dac1:	f7 d2                	not    %edx
    dac3:	80 e2 0f             	and    $0xf,%dl
    dac6:	0f 84 ed 00 00 00    	je     dbb9 <sg_raster_triangle_depth_capture+0xa709>
    dacc:	66 0f 7e d2          	movd   %xmm2,%edx
    dad0:	66 0f 6e 01          	movd   (%rcx),%xmm0
    dad4:	66 0f 3a 22 07 01    	pinsrd $0x1,(%rdi),%xmm0
    dada:	66 0f 3a 16 d1 02    	pextrd $0x2,%xmm2,%ecx
    dae0:	48 63 fa             	movslq %edx,%rdi
    dae3:	66 0f 3a 16 d2 01    	pextrd $0x1,%xmm2,%edx
    dae9:	66 41 0f 6e 08       	movd   (%r8),%xmm1
    daee:	48 63 c9             	movslq %ecx,%rcx
    daf1:	4c 63 c2             	movslq %edx,%r8
    daf4:	66 0f 3a 22 4d 00 01 	pinsrd $0x1,0x0(%rbp),%xmm1
    dafb:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    db01:	66 0f 6e 2c b8       	movd   (%rax,%rdi,4),%xmm5
    db06:	48 63 d2             	movslq %edx,%rdx
    db09:	66 42 0f 3a 22 2c 80 	pinsrd $0x1,(%rax,%r8,4),%xmm5
    db10:	01 
    db11:	66 0f 6e 13          	movd   (%rbx),%xmm2
    db15:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    db19:	66 0f 6e 0c 88       	movd   (%rax,%rcx,4),%xmm1
    db1e:	66 0f 3a 22 0c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm1
    db25:	66 44 0f 7e ca       	movd   %xmm9,%edx
    db2a:	48 63 fa             	movslq %edx,%rdi
    db2d:	66 44 0f 3a 16 ca 01 	pextrd $0x1,%xmm9,%edx
    db34:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    db39:	4c 63 c2             	movslq %edx,%r8
    db3c:	66 44 0f 3a 16 c9 02 	pextrd $0x2,%xmm9,%ecx
    db43:	66 44 0f 3a 16 ca 03 	pextrd $0x3,%xmm9,%edx
    db4a:	66 44 0f 6e 34 b8    	movd   (%rax,%rdi,4),%xmm14
    db50:	48 63 c9             	movslq %ecx,%rcx
    db53:	48 63 d2             	movslq %edx,%rdx
    db56:	66 0f 6c e9          	punpcklqdq %xmm1,%xmm5
    db5a:	66 41 0f 6e 0c 24    	movd   (%r12),%xmm1
    db60:	66 41 0f 3a 22 13 01 	pinsrd $0x1,(%r11),%xmm2
    db67:	66 41 0f 3a 22 0a 01 	pinsrd $0x1,(%r10),%xmm1
    db6e:	0f 29 ac 24 b0 01 00 	movaps %xmm5,0x1b0(%rsp)
    db75:	00 
    db76:	66 44 0f 6e 0c 88    	movd   (%rax,%rcx,4),%xmm9
    db7c:	66 46 0f 3a 22 34 80 	pinsrd $0x1,(%rax,%r8,4),%xmm14
    db83:	01 
    db84:	66 44 0f 3a 22 0c 90 	pinsrd $0x1,(%rax,%rdx,4),%xmm9
    db8b:	01 
    db8c:	66 0f 6c d1          	punpcklqdq %xmm1,%xmm2
    db90:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    db94:	66 45 0f 6c f1       	punpcklqdq %xmm9,%xmm14
    db99:	44 0f 29 b4 24 e0 01 	movaps %xmm14,0x1e0(%rsp)
    dba0:	00 00 
    dba2:	e9 d0 ef ff ff       	jmp    cb77 <sg_raster_triangle_depth_capture+0x96c7>
    dba7:	66 0f 6e d2          	movd   %edx,%xmm2
    dbab:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
    dbb0:	66 0f db ca          	pand   %xmm2,%xmm1
    dbb4:	e9 9b ee ff ff       	jmp    ca54 <sg_raster_triangle_depth_capture+0x95a4>
    dbb9:	f3 0f 7e 11          	movq   (%rcx),%xmm2
    dbbd:	66 48 0f 3a 22 17 01 	pinsrq $0x1,(%rdi),%xmm2
    dbc4:	f3 0f 7e 2b          	movq   (%rbx),%xmm5
    dbc8:	66 49 0f 3a 22 2b 01 	pinsrq $0x1,(%r11),%xmm5
    dbcf:	0f 28 c2             	movaps %xmm2,%xmm0
    dbd2:	44 0f 28 ca          	movaps %xmm2,%xmm9
    dbd6:	f3 41 0f 7e 08       	movq   (%r8),%xmm1
    dbdb:	f3 41 0f 7e 14 24    	movq   (%r12),%xmm2
    dbe1:	66 48 0f 3a 22 4d 00 	pinsrq $0x1,0x0(%rbp),%xmm1
    dbe8:	01 
    dbe9:	66 49 0f 3a 22 12 01 	pinsrq $0x1,(%r10),%xmm2
    dbf0:	44 0f 28 fd          	movaps %xmm5,%xmm15
    dbf4:	44 0f 28 f5          	movaps %xmm5,%xmm14
    dbf8:	44 0f c6 c9 dd       	shufps $0xdd,%xmm1,%xmm9
    dbfd:	0f c6 c1 88          	shufps $0x88,%xmm1,%xmm0
    dc01:	44 0f c6 fa 88       	shufps $0x88,%xmm2,%xmm15
    dc06:	44 0f c6 f2 dd       	shufps $0xdd,%xmm2,%xmm14
    dc0b:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    dc10:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    dc15:	66 41 0f 6f e9       	movdqa %xmm9,%xmm5
    dc1a:	44 0f 29 8c 24 b0 01 	movaps %xmm9,0x1b0(%rsp)
    dc21:	00 00 
    dc23:	44 0f 29 b4 24 e0 01 	movaps %xmm14,0x1e0(%rsp)
    dc2a:	00 00 
    dc2c:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
    dc31:	e9 41 ef ff ff       	jmp    cb77 <sg_raster_triangle_depth_capture+0x96c7>
    dc36:	48 63 94 24 bc 03 00 	movslq 0x3bc(%rsp),%rdx
    dc3d:	00 
    dc3e:	66 0f 7e c1          	movd   %xmm0,%ecx
    dc42:	66 0f 6e ac 24 70 01 	movd   0x170(%rsp),%xmm5
    dc49:	00 00 
    dc4b:	66 0f 6e c1          	movd   %ecx,%xmm0
    dc4f:	66 0f 3a 22 2c 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm5
    dc56:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    dc5a:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    dc5f:	e9 74 ee ff ff       	jmp    cad8 <sg_raster_triangle_depth_capture+0x9628>
    dc64:	31 c9                	xor    %ecx,%ecx
    dc66:	e9 c8 f6 ff ff       	jmp    d333 <sg_raster_triangle_depth_capture+0x9e83>
    dc6b:	66 0f 3a 16 d2 03    	pextrd $0x3,%xmm2,%edx
    dc71:	66 0f 6e d7          	movd   %edi,%xmm2
    dc75:	48 63 d2             	movslq %edx,%rdx
    dc78:	66 0f 3a 22 14 90 01 	pinsrd $0x1,(%rax,%rdx,4),%xmm2
    dc7f:	e9 1c f7 ff ff       	jmp    d3a0 <sg_raster_triangle_depth_capture+0x9ef0>

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
