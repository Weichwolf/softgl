
/home/cosmo/Git/softgl/build/diagnostics/cube-cold-fallback/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_target-turbofan.bin:     file format binary


Disassembly of section .data:

000022bdd7cd4740 <.data>:
    22bdd7cd4740:	55                                              	push   rbp
    22bdd7cd4741:	48 8b ec                                        	mov    rbp,rsp
    22bdd7cd4744:	6a 30                                           	push   0x30
    22bdd7cd4746:	56                                              	push   rsi
    22bdd7cd4747:	48 83 ec 60                                     	sub    rsp,0x60
    22bdd7cd474b:	48 89 45 98                                     	mov    QWORD PTR [rbp-0x68],rax
    22bdd7cd474f:	c5 f8 11 4d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm1
    22bdd7cd4754:	c5 f8 11 55 b0                                  	vmovups XMMWORD PTR [rbp-0x50],xmm2
    22bdd7cd4759:	c5 f8 11 5d c0                                  	vmovups XMMWORD PTR [rbp-0x40],xmm3
    22bdd7cd475e:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    22bdd7cd4762:	48 89 4d d0                                     	mov    QWORD PTR [rbp-0x30],rcx
    22bdd7cd4766:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    22bdd7cd476a:	0f 86 44 02 00 00                               	jbe    0x22bdd7cd49b4
    22bdd7cd4770:	48 8b 7e 17                                     	mov    rdi,QWORD PTR [rsi+0x17]
    22bdd7cd4774:	48 89 7d d8                                     	mov    QWORD PTR [rbp-0x28],rdi
    22bdd7cd4778:	e8 fb 1d f3 ff                                  	call   0x22bdd7c06578
    22bdd7cd477d:	85 c0                                           	test   eax,eax
    22bdd7cd477f:	0f 85 2d 02 00 00                               	jne    0x22bdd7cd49b2
    22bdd7cd4785:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd4789:	8b 7e 57                                        	mov    edi,DWORD PTR [rsi+0x57]
    22bdd7cd478c:	49 0b fe                                        	or     rdi,r14
    22bdd7cd478f:	44 8b 47 07                                     	mov    r8d,DWORD PTR [rdi+0x7]
    22bdd7cd4793:	45 8d 48 c0                                     	lea    r9d,[r8-0x40]
    22bdd7cd4797:	44 89 4f 07                                     	mov    DWORD PTR [rdi+0x7],r9d
    22bdd7cd479b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cd479f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd47a3:	c4 81 7a 7f 44 08 30                            	vmovdqu XMMWORD PTR [r8+r9*1+0x30],xmm0
    22bdd7cd47aa:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cd47ae:	c4 81 7a 7f 44 08 20                            	vmovdqu XMMWORD PTR [r8+r9*1+0x20],xmm0
    22bdd7cd47b5:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cd47b9:	c4 81 7a 7f 44 08 10                            	vmovdqu XMMWORD PTR [r8+r9*1+0x10],xmm0
    22bdd7cd47c0:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cd47c4:	c4 81 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm0
    22bdd7cd47ca:	48 89 7d e8                                     	mov    QWORD PTR [rbp-0x18],rdi
    22bdd7cd47ce:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    22bdd7cd47d2:	f6 45 90 01                                     	test   BYTE PTR [rbp-0x70],0x1
    22bdd7cd47d6:	0f 84 4d 00 00 00                               	je     0x22bdd7cd4829
    22bdd7cd47dc:	44 8b 5d 98                                     	mov    r11d,DWORD PTR [rbp-0x68]
    22bdd7cd47e0:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd47e5:	43 8b 44 18 04                                  	mov    eax,DWORD PTR [r8+r11*1+0x4]
    22bdd7cd47ea:	43 8b 54 18 0c                                  	mov    edx,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd47ef:	43 8b 4c 18 10                                  	mov    ecx,DWORD PTR [r8+r11*1+0x10]
    22bdd7cd47f4:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    22bdd7cd47f9:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    22bdd7cd47fe:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    22bdd7cd4802:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    22bdd7cd4807:	c5 f8 28 d4                                     	vmovaps xmm2,xmm4
    22bdd7cd480b:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    22bdd7cd4810:	c5 f8 28 dd                                     	vmovaps xmm3,xmm5
    22bdd7cd4814:	e8 17 1a f3 ff                                  	call   0x22bdd7c06230
    22bdd7cd4819:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    22bdd7cd481d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    22bdd7cd4821:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd4825:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd4829:	f6 45 90 02                                     	test   BYTE PTR [rbp-0x70],0x2
    22bdd7cd482d:	0f 84 54 00 00 00                               	je     0x22bdd7cd4887
    22bdd7cd4833:	44 8b 5d 98                                     	mov    r11d,DWORD PTR [rbp-0x68]
    22bdd7cd4837:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd483c:	43 8b 44 18 04                                  	mov    eax,DWORD PTR [r8+r11*1+0x4]
    22bdd7cd4841:	43 8b 54 18 0c                                  	mov    edx,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd4846:	43 8b 4c 18 10                                  	mov    ecx,DWORD PTR [r8+r11*1+0x10]
    22bdd7cd484b:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    22bdd7cd4850:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    22bdd7cd4855:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    22bdd7cd4859:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    22bdd7cd485e:	c5 fa 16 d4                                     	vmovshdup xmm2,xmm4
    22bdd7cd4862:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    22bdd7cd4867:	c5 fa 16 dd                                     	vmovshdup xmm3,xmm5
    22bdd7cd486b:	45 8b d9                                        	mov    r11d,r9d
    22bdd7cd486e:	45 8d 4b 10                                     	lea    r9d,[r11+0x10]
    22bdd7cd4872:	e8 b9 19 f3 ff                                  	call   0x22bdd7c06230
    22bdd7cd4877:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    22bdd7cd487b:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    22bdd7cd487f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd4883:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd4887:	f6 45 90 04                                     	test   BYTE PTR [rbp-0x70],0x4
    22bdd7cd488b:	0f 84 57 00 00 00                               	je     0x22bdd7cd48e8
    22bdd7cd4891:	44 8b 5d 98                                     	mov    r11d,DWORD PTR [rbp-0x68]
    22bdd7cd4895:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd489a:	43 8b 44 18 04                                  	mov    eax,DWORD PTR [r8+r11*1+0x4]
    22bdd7cd489f:	43 8b 54 18 0c                                  	mov    edx,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd48a4:	43 8b 4c 18 10                                  	mov    ecx,DWORD PTR [r8+r11*1+0x10]
    22bdd7cd48a9:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    22bdd7cd48ae:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    22bdd7cd48b3:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    22bdd7cd48b8:	c5 f8 10 65 b0                                  	vmovups xmm4,XMMWORD PTR [rbp-0x50]
    22bdd7cd48bd:	c5 f9 70 d4 02                                  	vpshufd xmm2,xmm4,0x2
    22bdd7cd48c2:	c5 f8 10 6d c0                                  	vmovups xmm5,XMMWORD PTR [rbp-0x40]
    22bdd7cd48c7:	c5 f9 70 dd 02                                  	vpshufd xmm3,xmm5,0x2
    22bdd7cd48cc:	45 8b d9                                        	mov    r11d,r9d
    22bdd7cd48cf:	45 8d 4b 20                                     	lea    r9d,[r11+0x20]
    22bdd7cd48d3:	e8 58 19 f3 ff                                  	call   0x22bdd7c06230
    22bdd7cd48d8:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    22bdd7cd48dc:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    22bdd7cd48e0:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd48e4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd48e8:	f6 45 90 08                                     	test   BYTE PTR [rbp-0x70],0x8
    22bdd7cd48ec:	0f 84 53 00 00 00                               	je     0x22bdd7cd4945
    22bdd7cd48f2:	44 8b 5d 98                                     	mov    r11d,DWORD PTR [rbp-0x68]
    22bdd7cd48f6:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd48fb:	43 8b 44 18 04                                  	mov    eax,DWORD PTR [r8+r11*1+0x4]
    22bdd7cd4900:	43 8b 54 18 0c                                  	mov    edx,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd4905:	43 8b 4c 18 10                                  	mov    ecx,DWORD PTR [r8+r11*1+0x10]
    22bdd7cd490a:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    22bdd7cd490f:	c5 f8 10 45 a0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x60]
    22bdd7cd4914:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    22bdd7cd4919:	c5 f8 10 45 b0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x50]
    22bdd7cd491e:	c5 f9 70 d0 03                                  	vpshufd xmm2,xmm0,0x3
    22bdd7cd4923:	c5 f8 10 45 c0                                  	vmovups xmm0,XMMWORD PTR [rbp-0x40]
    22bdd7cd4928:	c5 f9 70 d8 03                                  	vpshufd xmm3,xmm0,0x3
    22bdd7cd492d:	45 8b d9                                        	mov    r11d,r9d
    22bdd7cd4930:	45 8d 4b 30                                     	lea    r9d,[r11+0x30]
    22bdd7cd4934:	e8 f7 18 f3 ff                                  	call   0x22bdd7c06230
    22bdd7cd4939:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    22bdd7cd493d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    22bdd7cd4941:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd4945:	4d 8b d8                                        	mov    r11,r8
    22bdd7cd4948:	45 8b c1                                        	mov    r8d,r9d
    22bdd7cd494b:	c4 81 7a 6f 44 03 20                            	vmovdqu xmm0,XMMWORD PTR [r11+r8*1+0x20]
    22bdd7cd4952:	c4 81 7a 6f 64 03 30                            	vmovdqu xmm4,XMMWORD PTR [r11+r8*1+0x30]
    22bdd7cd4959:	c5 f9 6a ec                                     	vpunpckhdq xmm5,xmm0,xmm4
    22bdd7cd495d:	c4 81 7a 6f 34 03                               	vmovdqu xmm6,XMMWORD PTR [r11+r8*1]
    22bdd7cd4963:	c4 81 7a 6f 7c 03 10                            	vmovdqu xmm7,XMMWORD PTR [r11+r8*1+0x10]
    22bdd7cd496a:	c5 49 6a c7                                     	vpunpckhdq xmm8,xmm6,xmm7
    22bdd7cd496e:	c5 39 6d cd                                     	vpunpckhqdq xmm9,xmm8,xmm5
    22bdd7cd4972:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    22bdd7cd4976:	c4 01 7a 7f 4c 23 30                            	vmovdqu XMMWORD PTR [r11+r12*1+0x30],xmm9
    22bdd7cd497d:	c5 b9 6c ed                                     	vpunpcklqdq xmm5,xmm8,xmm5
    22bdd7cd4981:	c4 81 7a 7f 6c 23 20                            	vmovdqu XMMWORD PTR [r11+r12*1+0x20],xmm5
    22bdd7cd4988:	c5 f9 62 c4                                     	vpunpckldq xmm0,xmm0,xmm4
    22bdd7cd498c:	c5 c9 62 e7                                     	vpunpckldq xmm4,xmm6,xmm7
    22bdd7cd4990:	c5 d9 6d e8                                     	vpunpckhqdq xmm5,xmm4,xmm0
    22bdd7cd4994:	c4 81 7a 7f 6c 23 10                            	vmovdqu XMMWORD PTR [r11+r12*1+0x10],xmm5
    22bdd7cd499b:	c5 d9 6c c0                                     	vpunpcklqdq xmm0,xmm4,xmm0
    22bdd7cd499f:	c4 81 7a 7f 04 23                               	vmovdqu XMMWORD PTR [r11+r12*1],xmm0
    22bdd7cd49a5:	41 83 c0 40                                     	add    r8d,0x40
    22bdd7cd49a9:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    22bdd7cd49ad:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd49b0:	5d                                              	pop    rbp
    22bdd7cd49b1:	c3                                              	ret
    22bdd7cd49b2:	eb f9                                           	jmp    0x22bdd7cd49ad
    22bdd7cd49b4:	33 ff                                           	xor    edi,edi
    22bdd7cd49b6:	d1 ff                                           	sar    edi,1
    22bdd7cd49b8:	48 63 ff                                        	movsxd rdi,edi
    22bdd7cd49bb:	48 8b c7                                        	mov    rax,rdi
    22bdd7cd49be:	e8 6d 45 f3 ff                                  	call   0x22bdd7c08f30
    22bdd7cd49c3:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    22bdd7cd49c6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd49ca:	c5 f8 10 5d c0                                  	vmovups xmm3,XMMWORD PTR [rbp-0x40]
    22bdd7cd49cf:	c5 f8 10 55 b0                                  	vmovups xmm2,XMMWORD PTR [rbp-0x50]
    22bdd7cd49d4:	c5 f8 10 4d a0                                  	vmovups xmm1,XMMWORD PTR [rbp-0x60]
    22bdd7cd49d9:	8b 45 98                                        	mov    eax,DWORD PTR [rbp-0x68]
    22bdd7cd49dc:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    22bdd7cd49df:	e9 8c fd ff ff                                  	jmp    0x22bdd7cd4770
    22bdd7cd49e4:	90                                              	nop
    22bdd7cd49e5:	0f 1f 00                                        	nop    DWORD PTR [rax]
    22bdd7cd49e8:	10 00                                           	adc    BYTE PTR [rax],al
    22bdd7cd49ea:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd49ec:	10 00                                           	adc    BYTE PTR [rax],al
    22bdd7cd49ee:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd49f0:	d8 01                                           	fadd   DWORD PTR [rcx]
    22bdd7cd49f2:	13 05 aa 03 13 05                               	adc    eax,DWORD PTR [rip+0x51303aa]        # 0x22bddce04da2
	...
