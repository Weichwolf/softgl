
build/diagnostics/fragment-mask-replay/asan-full/tests/fragment_mask_replay_contract:     file format elf64-x86-64


Disassembly of section .text:

000000000062f790 <sg_raster_triangle_msaa2_replay.isra.0+0x1e90>:
  62f790:	85 28                	test   DWORD PTR [rax],ebp
  62f792:	f1                   	int1
  62f793:	ff                   	(bad)
  62f794:	ff 48 89             	dec    DWORD PTR [rax-0x77]
  62f797:	98                   	cwde
  62f798:	d0 f1                	shl    cl,1
  62f79a:	ff                   	(bad)
  62f79b:	ff 41 8d             	inc    DWORD PTR [rcx-0x73]
  62f79e:	5e                   	pop    rsi
  62f79f:	01 64 48 8b          	add    DWORD PTR [rax+rcx*2-0x75],esp
  62f7a3:	04 25                	add    al,0x25
  62f7a5:	00 00                	add    BYTE PTR [rax],al
  62f7a7:	00 00                	add    BYTE PTR [rax],al
  62f7a9:	48 8d 80 a0 ff ff ff 	lea    rax,[rax-0x60]
  62f7b0:	0f 84 1a 78 02 00    	je     656fd0 <sg_raster_triangle_msaa2_replay.isra.0+0x296d0>
  62f7b6:	89 d8                	mov    eax,ebx
