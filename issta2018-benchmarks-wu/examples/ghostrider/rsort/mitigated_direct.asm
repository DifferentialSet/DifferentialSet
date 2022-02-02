
mitigated:     file format elf64-x86-64


Disassembly of section .interp:

00000000004002a8 <.interp>:
  4002a8:	2f                   	(bad)  
  4002a9:	6c                   	insb   (%dx),%es:(%rdi)
  4002aa:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  4002b1:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  4002b6:	78 2d                	js     4002e5 <_init-0xd1b>
  4002b8:	78 38                	js     4002f2 <_init-0xd0e>
  4002ba:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  4002c0:	6f                   	outsl  %ds:(%rsi),(%dx)
  4002c1:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.gnu.build-id:

00000000004002c4 <.note.gnu.build-id>:
  4002c4:	04 00                	add    $0x0,%al
  4002c6:	00 00                	add    %al,(%rax)
  4002c8:	14 00                	adc    $0x0,%al
  4002ca:	00 00                	add    %al,(%rax)
  4002cc:	03 00                	add    (%rax),%eax
  4002ce:	00 00                	add    %al,(%rax)
  4002d0:	47                   	rex.RXB
  4002d1:	4e 55                	rex.WRX push %rbp
  4002d3:	00 b7 b0 cd 27 4c    	add    %dh,0x4c27cdb0(%rdi)
  4002d9:	66 6d                	insw   (%dx),%es:(%rdi)
  4002db:	22 20                	and    (%rax),%ah
  4002dd:	bb 95 df 4e bb       	mov    $0xbb4edf95,%ebx
  4002e2:	1c cd                	sbb    $0xcd,%al
  4002e4:	8a                   	.byte 0x8a
  4002e5:	8d                   	(bad)  
  4002e6:	dc                   	.byte 0xdc
  4002e7:	80                   	.byte 0x80

Disassembly of section .note.ABI-tag:

00000000004002e8 <.note.ABI-tag>:
  4002e8:	04 00                	add    $0x0,%al
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	10 00                	adc    %al,(%rax)
  4002ee:	00 00                	add    %al,(%rax)
  4002f0:	01 00                	add    %eax,(%rax)
  4002f2:	00 00                	add    %al,(%rax)
  4002f4:	47                   	rex.RXB
  4002f5:	4e 55                	rex.WRX push %rbp
  4002f7:	00 00                	add    %al,(%rax)
  4002f9:	00 00                	add    %al,(%rax)
  4002fb:	00 03                	add    %al,(%rbx)
  4002fd:	00 00                	add    %al,(%rax)
  4002ff:	00 02                	add    %al,(%rdx)
  400301:	00 00                	add    %al,(%rax)
  400303:	00 00                	add    %al,(%rax)
  400305:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

0000000000400308 <.gnu.hash>:
  400308:	01 00                	add    %eax,(%rax)
  40030a:	00 00                	add    %al,(%rax)
  40030c:	01 00                	add    %eax,(%rax)
  40030e:	00 00                	add    %al,(%rax)
  400310:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

0000000000400328 <.dynsym>:
	...
  400340:	22 00                	and    (%rax),%al
  400342:	00 00                	add    %al,(%rax)
  400344:	12 00                	adc    (%rax),%al
	...
  400356:	00 00                	add    %al,(%rax)
  400358:	0b 00                	or     (%rax),%eax
  40035a:	00 00                	add    %al,(%rax)
  40035c:	12 00                	adc    (%rax),%al
	...
  40036e:	00 00                	add    %al,(%rax)
  400370:	10 00                	adc    %al,(%rax)
  400372:	00 00                	add    %al,(%rax)
  400374:	12 00                	adc    (%rax),%al
	...
  400386:	00 00                	add    %al,(%rax)
  400388:	34 00                	xor    $0x0,%al
  40038a:	00 00                	add    %al,(%rax)
  40038c:	20 00                	and    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000004003a0 <.dynstr>:
  4003a0:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4003a4:	63 2e                	movslq (%rsi),%ebp
  4003a6:	73 6f                	jae    400417 <_init-0xbe9>
  4003a8:	2e 36 00 72 65       	cs add %dh,%ss:0x65(%rdx)
  4003ad:	61                   	(bad)  
  4003ae:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
  4003b2:	6c                   	insb   (%dx),%es:(%rdi)
  4003b3:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  4003ba:	72 74                	jb     400430 <_init-0xbd0>
  4003bc:	5f                   	pop    %rdi
  4003bd:	6d                   	insl   (%dx),%es:(%rdi)
  4003be:	61                   	(bad)  
  4003bf:	69 6e 00 77 72 69 74 	imul   $0x74697277,0x0(%rsi),%ebp
  4003c6:	65 00 47 4c          	add    %al,%gs:0x4c(%rdi)
  4003ca:	49                   	rex.WB
  4003cb:	42                   	rex.X
  4003cc:	43 5f                	rex.XB pop %r15
  4003ce:	32 2e                	xor    (%rsi),%ch
  4003d0:	32 2e                	xor    (%rsi),%ch
  4003d2:	35 00 5f 5f 67       	xor    $0x675f5f00,%eax
  4003d7:	6d                   	insl   (%dx),%es:(%rdi)
  4003d8:	6f                   	outsl  %ds:(%rsi),(%dx)
  4003d9:	6e                   	outsb  %ds:(%rsi),(%dx)
  4003da:	5f                   	pop    %rdi
  4003db:	73 74                	jae    400451 <_init-0xbaf>
  4003dd:	61                   	(bad)  
  4003de:	72 74                	jb     400454 <_init-0xbac>
  4003e0:	5f                   	pop    %rdi
  4003e1:	5f                   	pop    %rdi
	...

Disassembly of section .gnu.version:

00000000004003e4 <.gnu.version>:
  4003e4:	00 00                	add    %al,(%rax)
  4003e6:	02 00                	add    (%rax),%al
  4003e8:	02 00                	add    (%rax),%al
  4003ea:	02 00                	add    (%rax),%al
	...

Disassembly of section .gnu.version_r:

00000000004003f0 <.gnu.version_r>:
  4003f0:	01 00                	add    %eax,(%rax)
  4003f2:	01 00                	add    %eax,(%rax)
  4003f4:	01 00                	add    %eax,(%rax)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	10 00                	adc    %al,(%rax)
  4003fa:	00 00                	add    %al,(%rax)
  4003fc:	00 00                	add    %al,(%rax)
  4003fe:	00 00                	add    %al,(%rax)
  400400:	75 1a                	jne    40041c <_init-0xbe4>
  400402:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400408:	28 00                	sub    %al,(%rax)
  40040a:	00 00                	add    %al,(%rax)
  40040c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400410 <.rela.dyn>:
  400410:	f0 4f                	lock rex.WRXB
  400412:	40 00 00             	add    %al,(%rax)
  400415:	00 00                	add    %al,(%rax)
  400417:	00 06                	add    %al,(%rsi)
  400419:	00 00                	add    %al,(%rax)
  40041b:	00 03                	add    %al,(%rbx)
	...
  400425:	00 00                	add    %al,(%rax)
  400427:	00 f8                	add    %bh,%al
  400429:	4f                   	rex.WRXB
  40042a:	40 00 00             	add    %al,(%rax)
  40042d:	00 00                	add    %al,(%rax)
  40042f:	00 06                	add    %al,(%rsi)
  400431:	00 00                	add    %al,(%rax)
  400433:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .rela.plt:

0000000000400440 <.rela.plt>:
  400440:	18 50 40             	sbb    %dl,0x40(%rax)
  400443:	00 00                	add    %al,(%rax)
  400445:	00 00                	add    %al,(%rax)
  400447:	00 07                	add    %al,(%rdi)
  400449:	00 00                	add    %al,(%rax)
  40044b:	00 01                	add    %al,(%rcx)
	...
  400455:	00 00                	add    %al,(%rax)
  400457:	00 20                	add    %ah,(%rax)
  400459:	50                   	push   %rax
  40045a:	40 00 00             	add    %al,(%rax)
  40045d:	00 00                	add    %al,(%rax)
  40045f:	00 07                	add    %al,(%rdi)
  400461:	00 00                	add    %al,(%rax)
  400463:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 3f 00 00 	mov    0x3fe9(%rip),%rax        # 404ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <write@plt>:
  401030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 405018 <write@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <read@plt>:
  401040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 405020 <read@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401050 <_start>:
  401050:	f3 0f 1e fa          	endbr64 
  401054:	31 ed                	xor    %ebp,%ebp
  401056:	49 89 d1             	mov    %rdx,%r9
  401059:	5e                   	pop    %rsi
  40105a:	48 89 e2             	mov    %rsp,%rdx
  40105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401061:	50                   	push   %rax
  401062:	54                   	push   %rsp
  401063:	49 c7 c0 40 2f 40 00 	mov    $0x402f40,%r8
  40106a:	48 c7 c1 d0 2e 40 00 	mov    $0x402ed0,%rcx
  401071:	48 c7 c7 20 1b 40 00 	mov    $0x401b20,%rdi
  401078:	ff 15 72 3f 00 00    	callq  *0x3f72(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  40107e:	f4                   	hlt    
  40107f:	90                   	nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	c3                   	retq   
  401085:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40108c:	00 00 00 
  40108f:	90                   	nop

0000000000401090 <deregister_tm_clones>:
  401090:	b8 38 50 40 00       	mov    $0x405038,%eax
  401095:	48 3d 38 50 40 00    	cmp    $0x405038,%rax
  40109b:	74 13                	je     4010b0 <deregister_tm_clones+0x20>
  40109d:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a2:	48 85 c0             	test   %rax,%rax
  4010a5:	74 09                	je     4010b0 <deregister_tm_clones+0x20>
  4010a7:	bf 38 50 40 00       	mov    $0x405038,%edi
  4010ac:	ff e0                	jmpq   *%rax
  4010ae:	66 90                	xchg   %ax,%ax
  4010b0:	c3                   	retq   
  4010b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010b8:	00 00 00 00 
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010c0 <register_tm_clones>:
  4010c0:	be 38 50 40 00       	mov    $0x405038,%esi
  4010c5:	48 81 ee 38 50 40 00 	sub    $0x405038,%rsi
  4010cc:	48 89 f0             	mov    %rsi,%rax
  4010cf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010d3:	48 c1 f8 03          	sar    $0x3,%rax
  4010d7:	48 01 c6             	add    %rax,%rsi
  4010da:	48 d1 fe             	sar    %rsi
  4010dd:	74 11                	je     4010f0 <register_tm_clones+0x30>
  4010df:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e4:	48 85 c0             	test   %rax,%rax
  4010e7:	74 07                	je     4010f0 <register_tm_clones+0x30>
  4010e9:	bf 38 50 40 00       	mov    $0x405038,%edi
  4010ee:	ff e0                	jmpq   *%rax
  4010f0:	c3                   	retq   
  4010f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <__do_global_dtors_aux>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	80 3d 35 3f 00 00 00 	cmpb   $0x0,0x3f35(%rip)        # 405040 <completed.8060>
  40110b:	75 13                	jne    401120 <__do_global_dtors_aux+0x20>
  40110d:	55                   	push   %rbp
  40110e:	48 89 e5             	mov    %rsp,%rbp
  401111:	e8 7a ff ff ff       	callq  401090 <deregister_tm_clones>
  401116:	c6 05 23 3f 00 00 01 	movb   $0x1,0x3f23(%rip)        # 405040 <completed.8060>
  40111d:	5d                   	pop    %rbp
  40111e:	c3                   	retq   
  40111f:	90                   	nop
  401120:	c3                   	retq   
  401121:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401130 <frame_dummy>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	eb 8a                	jmp    4010c0 <register_tm_clones>
  401136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40113d:	00 00 00 

0000000000401140 <hsum_epi32_avx>:
  401140:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  401145:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  401149:	c5 f9 70 c8 55       	vpshufd $0x55,%xmm0,%xmm1
  40114e:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  401152:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  401156:	c3                   	retq   
  401157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40115e:	00 00 

0000000000401160 <mm256_hadd_to_32>:
  401160:	c4 e3 7d 39 c1 01    	vextracti128 $0x1,%ymm0,%xmm1
  401166:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  40116a:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  40116f:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  401173:	c5 f9 70 c8 55       	vpshufd $0x55,%xmm0,%xmm1
  401178:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  40117c:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  401180:	c5 f8 77             	vzeroupper 
  401183:	c3                   	retq   
  401184:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40118b:	00 00 00 
  40118e:	66 90                	xchg   %ax,%ax

0000000000401190 <mm256_hadd_to_64>:
  401190:	c4 e3 7d 39 c1 01    	vextracti128 $0x1,%ymm0,%xmm1
  401196:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  40119a:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  40119f:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  4011a3:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4011a8:	c5 f8 77             	vzeroupper 
  4011ab:	c3                   	retq   
  4011ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011b0 <uint64_t_secure_load_impl>:
  4011b0:	41 56                	push   %r14
  4011b2:	53                   	push   %rbx
  4011b3:	85 d2                	test   %edx,%edx
  4011b5:	0f 84 c2 02 00 00    	je     40147d <uint64_t_secure_load_impl+0x2cd>
  4011bb:	48 89 f8             	mov    %rdi,%rax
  4011be:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  4011c2:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4011c7:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  4011cc:	41 89 d1             	mov    %edx,%r9d
  4011cf:	b0 01                	mov    $0x1,%al
  4011d1:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  4011d5:	45 31 c0             	xor    %r8d,%r8d
  4011d8:	c5 fe 7f 44 24 b8    	vmovdqu %ymm0,-0x48(%rsp)
  4011de:	eb 14                	jmp    4011f4 <uint64_t_secure_load_impl+0x44>
  4011e0:	31 c0                	xor    %eax,%eax
  4011e2:	c5 fe 6f 44 24 b8    	vmovdqu -0x48(%rsp),%ymm0
  4011e8:	49 ff c0             	inc    %r8
  4011eb:	4d 39 c8             	cmp    %r9,%r8
  4011ee:	0f 84 8f 02 00 00    	je     401483 <uint64_t_secure_load_impl+0x2d3>
  4011f4:	4c 89 c2             	mov    %r8,%rdx
  4011f7:	48 c1 e2 05          	shl    $0x5,%rdx
  4011fb:	80 7c 16 14 00       	cmpb   $0x0,0x14(%rsi,%rdx,1)
  401200:	48 8b 1c 16          	mov    (%rsi,%rdx,1),%rbx
  401204:	74 7a                	je     401280 <uint64_t_secure_load_impl+0xd0>
  401206:	8b 4c 16 18          	mov    0x18(%rsi,%rdx,1),%ecx
  40120a:	01 d9                	add    %ebx,%ecx
  40120c:	83 e1 e0             	and    $0xffffffe0,%ecx
  40120f:	8b 54 16 1c          	mov    0x1c(%rsi,%rdx,1),%edx
  401213:	48 01 da             	add    %rbx,%rdx
  401216:	48 39 ca             	cmp    %rcx,%rdx
  401219:	72 cd                	jb     4011e8 <uint64_t_secure_load_impl+0x38>
  40121b:	c5 fd 28 cb          	vmovapd %ymm3,%ymm1
  40121f:	c5 f9 6e d9          	vmovd  %ecx,%xmm3
  401223:	89 cb                	mov    %ecx,%ebx
  401225:	83 cb 08             	or     $0x8,%ebx
  401228:	c4 e1 f9 6e e1       	vmovq  %rcx,%xmm4
  40122d:	c4 e1 f9 6e eb       	vmovq  %rbx,%xmm5
  401232:	c5 d9 6c e5          	vpunpcklqdq %xmm5,%xmm4,%xmm4
  401236:	c4 e2 79 58 db       	vpbroadcastd %xmm3,%xmm3
  40123b:	c5 e1 eb 1d cd 1d 00 	vpor   0x1dcd(%rip),%xmm3,%xmm3        # 403010 <_IO_stdin_used+0x10>
  401242:	00 
  401243:	c4 e2 79 35 db       	vpmovzxdq %xmm3,%xmm3
  401248:	c4 e3 5d 38 db 01    	vinserti128 $0x1,%xmm3,%ymm4,%ymm3
  40124e:	66 90                	xchg   %ax,%ax
  401250:	c4 e2 65 29 e0       	vpcmpeqq %ymm0,%ymm3,%ymm4
  401255:	c4 e3 75 4b 09 40    	vblendvpd %ymm4,(%rcx),%ymm1,%ymm1
  40125b:	c4 e2 7d 59 25 cc 1d 	vpbroadcastq 0x1dcc(%rip),%ymm4        # 403030 <_IO_stdin_used+0x30>
  401262:	00 00 
  401264:	c5 e5 d4 dc          	vpaddq %ymm4,%ymm3,%ymm3
  401268:	48 83 c1 20          	add    $0x20,%rcx
  40126c:	48 39 d1             	cmp    %rdx,%rcx
  40126f:	76 df                	jbe    401250 <uint64_t_secure_load_impl+0xa0>
  401271:	c5 fd 28 d9          	vmovapd %ymm1,%ymm3
  401275:	e9 6e ff ff ff       	jmpq   4011e8 <uint64_t_secure_load_impl+0x38>
  40127a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401280:	48 89 f8             	mov    %rdi,%rax
  401283:	48 29 d8             	sub    %rbx,%rax
  401286:	c5 fd 28 c3          	vmovapd %ymm3,%ymm0
  40128a:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
  40128f:	c4 e2 7d 59 cb       	vpbroadcastq %xmm3,%ymm1
  401294:	c5 fd 28 d8          	vmovapd %ymm0,%ymm3
  401298:	45 31 d2             	xor    %r10d,%r10d
  40129b:	eb 0f                	jmp    4012ac <uint64_t_secure_load_impl+0xfc>
  40129d:	0f 1f 00             	nopl   (%rax)
  4012a0:	49 ff c2             	inc    %r10
  4012a3:	4d 39 ca             	cmp    %r9,%r10
  4012a6:	0f 84 34 ff ff ff    	je     4011e0 <uint64_t_secure_load_impl+0x30>
  4012ac:	4c 89 d0             	mov    %r10,%rax
  4012af:	48 c1 e0 05          	shl    $0x5,%rax
  4012b3:	8b 5c 06 10          	mov    0x10(%rsi,%rax,1),%ebx
  4012b7:	48 83 fb 04          	cmp    $0x4,%rbx
  4012bb:	72 e3                	jb     4012a0 <uint64_t_secure_load_impl+0xf0>
  4012bd:	48 c1 eb 02          	shr    $0x2,%rbx
  4012c1:	48 8b 0c 06          	mov    (%rsi,%rax,1),%rcx
  4012c5:	4c 8b 74 06 08       	mov    0x8(%rsi,%rax,1),%r14
  4012ca:	48 8d 43 ff          	lea    -0x1(%rbx),%rax
  4012ce:	89 da                	mov    %ebx,%edx
  4012d0:	83 e2 07             	and    $0x7,%edx
  4012d3:	48 83 f8 07          	cmp    $0x7,%rax
  4012d7:	73 17                	jae    4012f0 <uint64_t_secure_load_impl+0x140>
  4012d9:	45 31 db             	xor    %r11d,%r11d
  4012dc:	48 85 d2             	test   %rdx,%rdx
  4012df:	0f 85 53 01 00 00    	jne    401438 <uint64_t_secure_load_impl+0x288>
  4012e5:	eb b9                	jmp    4012a0 <uint64_t_secure_load_impl+0xf0>
  4012e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4012ee:	00 00 
  4012f0:	41 89 db             	mov    %ebx,%r11d
  4012f3:	41 83 e3 f8          	and    $0xfffffff8,%r11d
  4012f7:	49 8d 86 e0 00 00 00 	lea    0xe0(%r14),%rax
  4012fe:	83 e3 f8             	and    $0xfffffff8,%ebx
  401301:	48 f7 db             	neg    %rbx
  401304:	c5 fd 6f f1          	vmovdqa %ymm1,%ymm6
  401308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40130f:	00 
  401310:	c5 fe 6f a8 20 ff ff 	vmovdqu -0xe0(%rax),%ymm5
  401317:	ff 
  401318:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
  40131c:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
  401321:	c4 62 dd 91 0c 29    	vpgatherqq %ymm4,(%rcx,%ymm5,1),%ymm9
  401327:	c5 fe 6f a0 40 ff ff 	vmovdqu -0xc0(%rax),%ymm4
  40132e:	ff 
  40132f:	c5 fe 6f 80 60 ff ff 	vmovdqu -0xa0(%rax),%ymm0
  401336:	ff 
  401337:	c5 fe 7f 44 24 d8    	vmovdqu %ymm0,-0x28(%rsp)
  40133d:	c5 fe 6f 78 80       	vmovdqu -0x80(%rax),%ymm7
  401342:	c4 41 2d 76 d2       	vpcmpeqd %ymm10,%ymm10,%ymm10
  401347:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
  40134c:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
  401351:	c4 41 19 ef e4       	vpxor  %xmm12,%xmm12,%xmm12
  401356:	c4 62 ad 91 04 21    	vpgatherqq %ymm10,(%rcx,%ymm4,1),%ymm8
  40135c:	c4 41 2d 76 d2       	vpcmpeqd %ymm10,%ymm10,%ymm10
  401361:	c4 62 a5 91 24 01    	vpgatherqq %ymm11,(%rcx,%ymm0,1),%ymm12
  401367:	c4 41 21 ef db       	vpxor  %xmm11,%xmm11,%xmm11
  40136c:	c5 7e 6f 68 a0       	vmovdqu -0x60(%rax),%ymm13
  401371:	c4 41 0d 76 f6       	vpcmpeqd %ymm14,%ymm14,%ymm14
  401376:	c4 41 01 ef ff       	vpxor  %xmm15,%xmm15,%xmm15
  40137b:	c5 fe 6f 50 c0       	vmovdqu -0x40(%rax),%ymm2
  401380:	c5 fd 76 c0          	vpcmpeqd %ymm0,%ymm0,%ymm0
  401384:	c5 f1 ef c9          	vpxor  %xmm1,%xmm1,%xmm1
  401388:	c4 62 ad 91 1c 39    	vpgatherqq %ymm10,(%rcx,%ymm7,1),%ymm11
  40138e:	c5 7e 6f 50 e0       	vmovdqu -0x20(%rax),%ymm10
  401393:	c4 22 8d 91 3c 29    	vpgatherqq %ymm14,(%rcx,%ymm13,1),%ymm15
  401399:	c4 41 0d 76 f6       	vpcmpeqd %ymm14,%ymm14,%ymm14
  40139e:	c4 e2 fd 91 0c 11    	vpgatherqq %ymm0,(%rcx,%ymm2,1),%ymm1
  4013a4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4013a8:	c4 a2 8d 91 04 11    	vpgatherqq %ymm14,(%rcx,%ymm10,1),%ymm0
  4013ae:	c4 e2 55 29 ee       	vpcmpeqq %ymm6,%ymm5,%ymm5
  4013b3:	c4 c3 65 4b e9 50    	vblendvpd %ymm5,%ymm9,%ymm3,%ymm5
  4013b9:	c5 7e 6f 08          	vmovdqu (%rax),%ymm9
  4013bd:	c4 41 0d 76 f6       	vpcmpeqd %ymm14,%ymm14,%ymm14
  4013c2:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  4013c6:	c4 a2 8d 91 1c 09    	vpgatherqq %ymm14,(%rcx,%ymm9,1),%ymm3
  4013cc:	c4 e2 5d 29 e6       	vpcmpeqq %ymm6,%ymm4,%ymm4
  4013d1:	c4 c3 55 4b e0 40    	vblendvpd %ymm4,%ymm8,%ymm5,%ymm4
  4013d7:	c4 e2 4d 29 6c 24 d8 	vpcmpeqq -0x28(%rsp),%ymm6,%ymm5
  4013de:	c4 c3 5d 4b e4 50    	vblendvpd %ymm5,%ymm12,%ymm4,%ymm4
  4013e4:	c4 e2 45 29 ee       	vpcmpeqq %ymm6,%ymm7,%ymm5
  4013e9:	c4 c3 5d 4b e3 50    	vblendvpd %ymm5,%ymm11,%ymm4,%ymm4
  4013ef:	c4 e2 15 29 ee       	vpcmpeqq %ymm6,%ymm13,%ymm5
  4013f4:	c4 c3 5d 4b e7 50    	vblendvpd %ymm5,%ymm15,%ymm4,%ymm4
  4013fa:	c4 e2 6d 29 d6       	vpcmpeqq %ymm6,%ymm2,%ymm2
  4013ff:	c4 e3 5d 4b c9 20    	vblendvpd %ymm2,%ymm1,%ymm4,%ymm1
  401405:	c4 e2 2d 29 d6       	vpcmpeqq %ymm6,%ymm10,%ymm2
  40140a:	c4 e3 75 4b c0 20    	vblendvpd %ymm2,%ymm0,%ymm1,%ymm0
  401410:	c4 e2 35 29 ce       	vpcmpeqq %ymm6,%ymm9,%ymm1
  401415:	c4 e3 7d 4b db 10    	vblendvpd %ymm1,%ymm3,%ymm0,%ymm3
  40141b:	48 05 00 01 00 00    	add    $0x100,%rax
  401421:	48 83 c3 08          	add    $0x8,%rbx
  401425:	0f 85 e5 fe ff ff    	jne    401310 <uint64_t_secure_load_impl+0x160>
  40142b:	c5 fd 6f ce          	vmovdqa %ymm6,%ymm1
  40142f:	48 85 d2             	test   %rdx,%rdx
  401432:	0f 84 68 fe ff ff    	je     4012a0 <uint64_t_secure_load_impl+0xf0>
  401438:	49 c1 e3 05          	shl    $0x5,%r11
  40143c:	4d 01 de             	add    %r11,%r14
  40143f:	48 c1 e2 05          	shl    $0x5,%rdx
  401443:	31 c0                	xor    %eax,%eax
  401445:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40144c:	00 00 00 
  40144f:	90                   	nop
  401450:	c4 c1 7e 6f 24 06    	vmovdqu (%r14,%rax,1),%ymm4
  401456:	c5 d5 76 ed          	vpcmpeqd %ymm5,%ymm5,%ymm5
  40145a:	c5 c9 ef f6          	vpxor  %xmm6,%xmm6,%xmm6
  40145e:	c4 e2 d5 91 34 21    	vpgatherqq %ymm5,(%rcx,%ymm4,1),%ymm6
  401464:	c4 e2 5d 29 e1       	vpcmpeqq %ymm1,%ymm4,%ymm4
  401469:	c4 e3 65 4b de 40    	vblendvpd %ymm4,%ymm6,%ymm3,%ymm3
  40146f:	48 83 c0 20          	add    $0x20,%rax
  401473:	48 39 c2             	cmp    %rax,%rdx
  401476:	75 d8                	jne    401450 <uint64_t_secure_load_impl+0x2a0>
  401478:	e9 23 fe ff ff       	jmpq   4012a0 <uint64_t_secure_load_impl+0xf0>
  40147d:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  401481:	b0 01                	mov    $0x1,%al
  401483:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
  401489:	c5 f9 d4 c3          	vpaddq %xmm3,%xmm0,%xmm0
  40148d:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  401492:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  401496:	c4 e1 f9 7e c1       	vmovq  %xmm0,%rcx
  40149b:	24 01                	and    $0x1,%al
  40149d:	f6 d8                	neg    %al
  40149f:	c1 e7 03             	shl    $0x3,%edi
  4014a2:	40 20 c7             	and    %al,%dil
  4014a5:	c4 e2 c3 f7 c1       	shrx   %rdi,%rcx,%rax
  4014aa:	5b                   	pop    %rbx
  4014ab:	41 5e                	pop    %r14
  4014ad:	c5 f8 77             	vzeroupper 
  4014b0:	c3                   	retq   
  4014b1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014b8:	00 00 00 
  4014bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014c0 <uint64_t_secure_load>:
  4014c0:	83 f9 01             	cmp    $0x1,%ecx
  4014c3:	75 04                	jne    4014c9 <uint64_t_secure_load+0x9>
  4014c5:	48 8b 07             	mov    (%rdi),%rax
  4014c8:	c3                   	retq   
  4014c9:	e9 e2 fc ff ff       	jmpq   4011b0 <uint64_t_secure_load_impl>
  4014ce:	66 90                	xchg   %ax,%ax

00000000004014d0 <uint64_t_secure_load_sensitive>:
  4014d0:	83 f9 01             	cmp    $0x1,%ecx
  4014d3:	75 0b                	jne    4014e0 <uint64_t_secure_load_sensitive+0x10>
  4014d5:	48 8b 06             	mov    (%rsi),%rax
  4014d8:	8b 4e 18             	mov    0x18(%rsi),%ecx
  4014db:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  4014df:	c3                   	retq   
  4014e0:	e9 cb fc ff ff       	jmpq   4011b0 <uint64_t_secure_load_impl>
  4014e5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ec:	00 00 00 
  4014ef:	90                   	nop

00000000004014f0 <uint32_t_secure_load>:
  4014f0:	50                   	push   %rax
  4014f1:	83 f9 01             	cmp    $0x1,%ecx
  4014f4:	75 05                	jne    4014fb <uint32_t_secure_load+0xb>
  4014f6:	48 8b 07             	mov    (%rdi),%rax
  4014f9:	59                   	pop    %rcx
  4014fa:	c3                   	retq   
  4014fb:	e8 b0 fc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401500:	59                   	pop    %rcx
  401501:	c3                   	retq   
  401502:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401509:	00 00 00 
  40150c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401510 <uint16_t_secure_load>:
  401510:	50                   	push   %rax
  401511:	83 f9 01             	cmp    $0x1,%ecx
  401514:	75 05                	jne    40151b <uint16_t_secure_load+0xb>
  401516:	48 8b 07             	mov    (%rdi),%rax
  401519:	59                   	pop    %rcx
  40151a:	c3                   	retq   
  40151b:	e8 90 fc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401520:	59                   	pop    %rcx
  401521:	c3                   	retq   
  401522:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401529:	00 00 00 
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401530 <uint8_t_secure_load>:
  401530:	50                   	push   %rax
  401531:	83 f9 01             	cmp    $0x1,%ecx
  401534:	75 05                	jne    40153b <uint8_t_secure_load+0xb>
  401536:	48 8b 07             	mov    (%rdi),%rax
  401539:	59                   	pop    %rcx
  40153a:	c3                   	retq   
  40153b:	e8 70 fc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401540:	59                   	pop    %rcx
  401541:	c3                   	retq   
  401542:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401549:	00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <uint32_t_secure_load_sensitive>:
  401550:	50                   	push   %rax
  401551:	83 f9 01             	cmp    $0x1,%ecx
  401554:	75 0c                	jne    401562 <uint32_t_secure_load_sensitive+0x12>
  401556:	48 8b 06             	mov    (%rsi),%rax
  401559:	8b 4e 18             	mov    0x18(%rsi),%ecx
  40155c:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  401560:	59                   	pop    %rcx
  401561:	c3                   	retq   
  401562:	e8 49 fc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401567:	59                   	pop    %rcx
  401568:	c3                   	retq   
  401569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401570 <uint16_t_secure_load_sensitive>:
  401570:	50                   	push   %rax
  401571:	83 f9 01             	cmp    $0x1,%ecx
  401574:	75 0c                	jne    401582 <uint16_t_secure_load_sensitive+0x12>
  401576:	48 8b 06             	mov    (%rsi),%rax
  401579:	8b 4e 18             	mov    0x18(%rsi),%ecx
  40157c:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  401580:	59                   	pop    %rcx
  401581:	c3                   	retq   
  401582:	e8 29 fc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401587:	59                   	pop    %rcx
  401588:	c3                   	retq   
  401589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401590 <uint8_t_secure_load_sensitive>:
  401590:	50                   	push   %rax
  401591:	83 f9 01             	cmp    $0x1,%ecx
  401594:	75 0c                	jne    4015a2 <uint8_t_secure_load_sensitive+0x12>
  401596:	48 8b 06             	mov    (%rsi),%rax
  401599:	8b 4e 18             	mov    0x18(%rsi),%ecx
  40159c:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  4015a0:	59                   	pop    %rcx
  4015a1:	c3                   	retq   
  4015a2:	e8 09 fc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4015a7:	59                   	pop    %rcx
  4015a8:	c3                   	retq   
  4015a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004015b0 <uint64_t_secure_store_impl>:
  4015b0:	85 c9                	test   %ecx,%ecx
  4015b2:	0f 84 f6 00 00 00    	je     4016ae <uint64_t_secure_store_impl+0xfe>
  4015b8:	8d 04 f5 00 00 00 00 	lea    0x0(,%rsi,8),%eax
  4015bf:	c4 e2 f9 f7 ff       	shlx   %rax,%rdi,%rdi
  4015c4:	c4 e1 f9 6e c7       	vmovq  %rdi,%xmm0
  4015c9:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  4015ce:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  4015d2:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4015d7:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  4015dc:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4015e3:	c4 e2 f9 f7 c6       	shlx   %rax,%rsi,%rax
  4015e8:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  4015ed:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  4015f2:	41 89 c8             	mov    %ecx,%r8d
  4015f5:	45 31 c9             	xor    %r9d,%r9d
  4015f8:	c5 f9 6f 1d 20 1a 00 	vmovdqa 0x1a20(%rip),%xmm3        # 403020 <_IO_stdin_used+0x20>
  4015ff:	00 
  401600:	c4 e2 7d 59 25 27 1a 	vpbroadcastq 0x1a27(%rip),%ymm4        # 403030 <_IO_stdin_used+0x30>
  401607:	00 00 
  401609:	eb 11                	jmp    40161c <uint64_t_secure_store_impl+0x6c>
  40160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401610:	49 ff c1             	inc    %r9
  401613:	4d 39 c1             	cmp    %r8,%r9
  401616:	0f 84 92 00 00 00    	je     4016ae <uint64_t_secure_store_impl+0xfe>
  40161c:	4c 89 c8             	mov    %r9,%rax
  40161f:	48 c1 e0 05          	shl    $0x5,%rax
  401623:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401627:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40162b:	48 01 fe             	add    %rdi,%rsi
  40162e:	48 83 e6 e0          	and    $0xffffffffffffffe0,%rsi
  401632:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401636:	48 01 f9             	add    %rdi,%rcx
  401639:	48 39 f1             	cmp    %rsi,%rcx
  40163c:	72 d2                	jb     401610 <uint64_t_secure_store_impl+0x60>
  40163e:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401642:	48 01 d0             	add    %rdx,%rax
  401645:	48 83 c0 1c          	add    $0x1c,%rax
  401649:	c4 e1 f9 6e ee       	vmovq  %rsi,%xmm5
  40164e:	c4 e2 79 59 f5       	vpbroadcastq %xmm5,%xmm6
  401653:	c5 c9 eb f3          	vpor   %xmm3,%xmm6,%xmm6
  401657:	c4 e3 fd 00 f6 d0    	vpermq $0xd0,%ymm6,%ymm6
  40165d:	c4 e3 49 02 ed 03    	vpblendd $0x3,%xmm5,%xmm6,%xmm5
  401663:	48 89 f1             	mov    %rsi,%rcx
  401666:	48 83 c9 18          	or     $0x18,%rcx
  40166a:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  401670:	c4 e3 c9 22 f1 01    	vpinsrq $0x1,%rcx,%xmm6,%xmm6
  401676:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  40167c:	0f 1f 40 00          	nopl   0x0(%rax)
  401680:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  401685:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  401689:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  40168d:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  401693:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  401697:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  40169b:	48 83 c6 20          	add    $0x20,%rsi
  40169f:	8b 08                	mov    (%rax),%ecx
  4016a1:	48 03 0f             	add    (%rdi),%rcx
  4016a4:	48 39 ce             	cmp    %rcx,%rsi
  4016a7:	76 d7                	jbe    401680 <uint64_t_secure_store_impl+0xd0>
  4016a9:	e9 62 ff ff ff       	jmpq   401610 <uint64_t_secure_store_impl+0x60>
  4016ae:	c5 f8 77             	vzeroupper 
  4016b1:	c3                   	retq   
  4016b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016b9:	00 00 00 
  4016bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004016c0 <uint32_t_secure_store_impl>:
  4016c0:	85 c9                	test   %ecx,%ecx
  4016c2:	0f 84 f6 00 00 00    	je     4017be <uint32_t_secure_store_impl+0xfe>
  4016c8:	89 f8                	mov    %edi,%eax
  4016ca:	8d 3c f5 00 00 00 00 	lea    0x0(,%rsi,8),%edi
  4016d1:	c4 e2 c1 f7 c0       	shlx   %rdi,%rax,%rax
  4016d6:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4016db:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  4016e0:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  4016e4:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4016e9:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  4016ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4016f3:	c4 e2 c1 f7 c0       	shlx   %rdi,%rax,%rax
  4016f8:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  4016fd:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  401702:	41 89 c8             	mov    %ecx,%r8d
  401705:	45 31 c9             	xor    %r9d,%r9d
  401708:	c5 f9 6f 1d 10 19 00 	vmovdqa 0x1910(%rip),%xmm3        # 403020 <_IO_stdin_used+0x20>
  40170f:	00 
  401710:	c4 e2 7d 59 25 17 19 	vpbroadcastq 0x1917(%rip),%ymm4        # 403030 <_IO_stdin_used+0x30>
  401717:	00 00 
  401719:	eb 11                	jmp    40172c <uint32_t_secure_store_impl+0x6c>
  40171b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401720:	49 ff c1             	inc    %r9
  401723:	4d 39 c1             	cmp    %r8,%r9
  401726:	0f 84 92 00 00 00    	je     4017be <uint32_t_secure_store_impl+0xfe>
  40172c:	4c 89 c8             	mov    %r9,%rax
  40172f:	48 c1 e0 05          	shl    $0x5,%rax
  401733:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401737:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40173b:	48 01 fe             	add    %rdi,%rsi
  40173e:	48 83 e6 e0          	and    $0xffffffffffffffe0,%rsi
  401742:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401746:	48 01 f9             	add    %rdi,%rcx
  401749:	48 39 f1             	cmp    %rsi,%rcx
  40174c:	72 d2                	jb     401720 <uint32_t_secure_store_impl+0x60>
  40174e:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401752:	48 01 d0             	add    %rdx,%rax
  401755:	48 83 c0 1c          	add    $0x1c,%rax
  401759:	c4 e1 f9 6e ee       	vmovq  %rsi,%xmm5
  40175e:	c4 e2 79 59 f5       	vpbroadcastq %xmm5,%xmm6
  401763:	c5 c9 eb f3          	vpor   %xmm3,%xmm6,%xmm6
  401767:	c4 e3 fd 00 f6 d0    	vpermq $0xd0,%ymm6,%ymm6
  40176d:	c4 e3 49 02 ed 03    	vpblendd $0x3,%xmm5,%xmm6,%xmm5
  401773:	48 89 f1             	mov    %rsi,%rcx
  401776:	48 83 c9 18          	or     $0x18,%rcx
  40177a:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  401780:	c4 e3 c9 22 f1 01    	vpinsrq $0x1,%rcx,%xmm6,%xmm6
  401786:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  40178c:	0f 1f 40 00          	nopl   0x0(%rax)
  401790:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  401795:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  401799:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  40179d:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4017a3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4017a7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4017ab:	48 83 c6 20          	add    $0x20,%rsi
  4017af:	8b 08                	mov    (%rax),%ecx
  4017b1:	48 03 0f             	add    (%rdi),%rcx
  4017b4:	48 39 ce             	cmp    %rcx,%rsi
  4017b7:	76 d7                	jbe    401790 <uint32_t_secure_store_impl+0xd0>
  4017b9:	e9 62 ff ff ff       	jmpq   401720 <uint32_t_secure_store_impl+0x60>
  4017be:	c5 f8 77             	vzeroupper 
  4017c1:	c3                   	retq   
  4017c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017c9:	00 00 00 
  4017cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004017d0 <uint16_t_secure_store_impl>:
  4017d0:	85 c9                	test   %ecx,%ecx
  4017d2:	0f 84 f6 00 00 00    	je     4018ce <uint16_t_secure_store_impl+0xfe>
  4017d8:	89 f8                	mov    %edi,%eax
  4017da:	8d 3c f5 00 00 00 00 	lea    0x0(,%rsi,8),%edi
  4017e1:	c4 e2 c1 f7 c0       	shlx   %rdi,%rax,%rax
  4017e6:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4017eb:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  4017f0:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  4017f4:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4017f9:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  4017fe:	b8 ff ff 00 00       	mov    $0xffff,%eax
  401803:	c4 e2 c1 f7 c0       	shlx   %rdi,%rax,%rax
  401808:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  40180d:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  401812:	41 89 c8             	mov    %ecx,%r8d
  401815:	45 31 c9             	xor    %r9d,%r9d
  401818:	c5 f9 6f 1d 00 18 00 	vmovdqa 0x1800(%rip),%xmm3        # 403020 <_IO_stdin_used+0x20>
  40181f:	00 
  401820:	c4 e2 7d 59 25 07 18 	vpbroadcastq 0x1807(%rip),%ymm4        # 403030 <_IO_stdin_used+0x30>
  401827:	00 00 
  401829:	eb 11                	jmp    40183c <uint16_t_secure_store_impl+0x6c>
  40182b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401830:	49 ff c1             	inc    %r9
  401833:	4d 39 c1             	cmp    %r8,%r9
  401836:	0f 84 92 00 00 00    	je     4018ce <uint16_t_secure_store_impl+0xfe>
  40183c:	4c 89 c8             	mov    %r9,%rax
  40183f:	48 c1 e0 05          	shl    $0x5,%rax
  401843:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401847:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40184b:	48 01 fe             	add    %rdi,%rsi
  40184e:	48 83 e6 e0          	and    $0xffffffffffffffe0,%rsi
  401852:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401856:	48 01 f9             	add    %rdi,%rcx
  401859:	48 39 f1             	cmp    %rsi,%rcx
  40185c:	72 d2                	jb     401830 <uint16_t_secure_store_impl+0x60>
  40185e:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401862:	48 01 d0             	add    %rdx,%rax
  401865:	48 83 c0 1c          	add    $0x1c,%rax
  401869:	c4 e1 f9 6e ee       	vmovq  %rsi,%xmm5
  40186e:	c4 e2 79 59 f5       	vpbroadcastq %xmm5,%xmm6
  401873:	c5 c9 eb f3          	vpor   %xmm3,%xmm6,%xmm6
  401877:	c4 e3 fd 00 f6 d0    	vpermq $0xd0,%ymm6,%ymm6
  40187d:	c4 e3 49 02 ed 03    	vpblendd $0x3,%xmm5,%xmm6,%xmm5
  401883:	48 89 f1             	mov    %rsi,%rcx
  401886:	48 83 c9 18          	or     $0x18,%rcx
  40188a:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  401890:	c4 e3 c9 22 f1 01    	vpinsrq $0x1,%rcx,%xmm6,%xmm6
  401896:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  40189c:	0f 1f 40 00          	nopl   0x0(%rax)
  4018a0:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  4018a5:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  4018a9:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  4018ad:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4018b3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4018b7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4018bb:	48 83 c6 20          	add    $0x20,%rsi
  4018bf:	8b 08                	mov    (%rax),%ecx
  4018c1:	48 03 0f             	add    (%rdi),%rcx
  4018c4:	48 39 ce             	cmp    %rcx,%rsi
  4018c7:	76 d7                	jbe    4018a0 <uint16_t_secure_store_impl+0xd0>
  4018c9:	e9 62 ff ff ff       	jmpq   401830 <uint16_t_secure_store_impl+0x60>
  4018ce:	c5 f8 77             	vzeroupper 
  4018d1:	c3                   	retq   
  4018d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018d9:	00 00 00 
  4018dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004018e0 <uint8_t_secure_store_impl>:
  4018e0:	85 c9                	test   %ecx,%ecx
  4018e2:	0f 84 f6 00 00 00    	je     4019de <uint8_t_secure_store_impl+0xfe>
  4018e8:	89 f8                	mov    %edi,%eax
  4018ea:	8d 3c f5 00 00 00 00 	lea    0x0(,%rsi,8),%edi
  4018f1:	c4 e2 c1 f7 c0       	shlx   %rdi,%rax,%rax
  4018f6:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4018fb:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  401900:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  401904:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  401909:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  40190e:	b8 ff 00 00 00       	mov    $0xff,%eax
  401913:	c4 e2 c1 f7 c0       	shlx   %rdi,%rax,%rax
  401918:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  40191d:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  401922:	41 89 c8             	mov    %ecx,%r8d
  401925:	45 31 c9             	xor    %r9d,%r9d
  401928:	c5 f9 6f 1d f0 16 00 	vmovdqa 0x16f0(%rip),%xmm3        # 403020 <_IO_stdin_used+0x20>
  40192f:	00 
  401930:	c4 e2 7d 59 25 f7 16 	vpbroadcastq 0x16f7(%rip),%ymm4        # 403030 <_IO_stdin_used+0x30>
  401937:	00 00 
  401939:	eb 11                	jmp    40194c <uint8_t_secure_store_impl+0x6c>
  40193b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401940:	49 ff c1             	inc    %r9
  401943:	4d 39 c1             	cmp    %r8,%r9
  401946:	0f 84 92 00 00 00    	je     4019de <uint8_t_secure_store_impl+0xfe>
  40194c:	4c 89 c8             	mov    %r9,%rax
  40194f:	48 c1 e0 05          	shl    $0x5,%rax
  401953:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401957:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40195b:	48 01 fe             	add    %rdi,%rsi
  40195e:	48 83 e6 e0          	and    $0xffffffffffffffe0,%rsi
  401962:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401966:	48 01 f9             	add    %rdi,%rcx
  401969:	48 39 f1             	cmp    %rsi,%rcx
  40196c:	72 d2                	jb     401940 <uint8_t_secure_store_impl+0x60>
  40196e:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401972:	48 01 d0             	add    %rdx,%rax
  401975:	48 83 c0 1c          	add    $0x1c,%rax
  401979:	c4 e1 f9 6e ee       	vmovq  %rsi,%xmm5
  40197e:	c4 e2 79 59 f5       	vpbroadcastq %xmm5,%xmm6
  401983:	c5 c9 eb f3          	vpor   %xmm3,%xmm6,%xmm6
  401987:	c4 e3 fd 00 f6 d0    	vpermq $0xd0,%ymm6,%ymm6
  40198d:	c4 e3 49 02 ed 03    	vpblendd $0x3,%xmm5,%xmm6,%xmm5
  401993:	48 89 f1             	mov    %rsi,%rcx
  401996:	48 83 c9 18          	or     $0x18,%rcx
  40199a:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  4019a0:	c4 e3 c9 22 f1 01    	vpinsrq $0x1,%rcx,%xmm6,%xmm6
  4019a6:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  4019ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4019b0:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  4019b5:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  4019b9:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  4019bd:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4019c3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4019c7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4019cb:	48 83 c6 20          	add    $0x20,%rsi
  4019cf:	8b 08                	mov    (%rax),%ecx
  4019d1:	48 03 0f             	add    (%rdi),%rcx
  4019d4:	48 39 ce             	cmp    %rcx,%rsi
  4019d7:	76 d7                	jbe    4019b0 <uint8_t_secure_store_impl+0xd0>
  4019d9:	e9 62 ff ff ff       	jmpq   401940 <uint8_t_secure_store_impl+0x60>
  4019de:	c5 f8 77             	vzeroupper 
  4019e1:	c3                   	retq   
  4019e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4019e9:	00 00 00 
  4019ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004019f0 <uint64_t_secure_store>:
  4019f0:	41 83 f8 01          	cmp    $0x1,%r8d
  4019f4:	75 09                	jne    4019ff <uint64_t_secure_store+0xf>
  4019f6:	48 85 f6             	test   %rsi,%rsi
  4019f9:	74 03                	je     4019fe <uint64_t_secure_store+0xe>
  4019fb:	48 89 3e             	mov    %rdi,(%rsi)
  4019fe:	c3                   	retq   
  4019ff:	e9 ac fb ff ff       	jmpq   4015b0 <uint64_t_secure_store_impl>
  401a04:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a0b:	00 00 00 
  401a0e:	66 90                	xchg   %ax,%ax

0000000000401a10 <uint32_t_secure_store>:
  401a10:	41 83 f8 01          	cmp    $0x1,%r8d
  401a14:	75 08                	jne    401a1e <uint32_t_secure_store+0xe>
  401a16:	48 85 f6             	test   %rsi,%rsi
  401a19:	74 02                	je     401a1d <uint32_t_secure_store+0xd>
  401a1b:	89 3e                	mov    %edi,(%rsi)
  401a1d:	c3                   	retq   
  401a1e:	e9 9d fc ff ff       	jmpq   4016c0 <uint32_t_secure_store_impl>
  401a23:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a2a:	00 00 00 
  401a2d:	0f 1f 00             	nopl   (%rax)

0000000000401a30 <uint16_t_secure_store>:
  401a30:	41 83 f8 01          	cmp    $0x1,%r8d
  401a34:	75 09                	jne    401a3f <uint16_t_secure_store+0xf>
  401a36:	48 85 f6             	test   %rsi,%rsi
  401a39:	74 03                	je     401a3e <uint16_t_secure_store+0xe>
  401a3b:	66 89 3e             	mov    %di,(%rsi)
  401a3e:	c3                   	retq   
  401a3f:	0f b7 ff             	movzwl %di,%edi
  401a42:	e9 89 fd ff ff       	jmpq   4017d0 <uint16_t_secure_store_impl>
  401a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401a4e:	00 00 

0000000000401a50 <uint8_t_secure_store>:
  401a50:	41 83 f8 01          	cmp    $0x1,%r8d
  401a54:	75 09                	jne    401a5f <uint8_t_secure_store+0xf>
  401a56:	48 85 f6             	test   %rsi,%rsi
  401a59:	74 03                	je     401a5e <uint8_t_secure_store+0xe>
  401a5b:	40 88 3e             	mov    %dil,(%rsi)
  401a5e:	c3                   	retq   
  401a5f:	40 0f b6 ff          	movzbl %dil,%edi
  401a63:	e9 78 fe ff ff       	jmpq   4018e0 <uint8_t_secure_store_impl>
  401a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a6f:	00 

0000000000401a70 <uint64_t_secure_store_sensitive>:
  401a70:	41 83 f8 01          	cmp    $0x1,%r8d
  401a74:	75 10                	jne    401a86 <uint64_t_secure_store_sensitive+0x16>
  401a76:	48 8b 02             	mov    (%rdx),%rax
  401a79:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401a7c:	48 85 f6             	test   %rsi,%rsi
  401a7f:	74 0a                	je     401a8b <uint64_t_secure_store_sensitive+0x1b>
  401a81:	48 89 3c 08          	mov    %rdi,(%rax,%rcx,1)
  401a85:	c3                   	retq   
  401a86:	e9 25 fb ff ff       	jmpq   4015b0 <uint64_t_secure_store_impl>
  401a8b:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  401a8f:	c3                   	retq   

0000000000401a90 <uint32_t_secure_store_sensitive>:
  401a90:	41 83 f8 01          	cmp    $0x1,%r8d
  401a94:	75 0f                	jne    401aa5 <uint32_t_secure_store_sensitive+0x15>
  401a96:	48 8b 02             	mov    (%rdx),%rax
  401a99:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401a9c:	48 85 f6             	test   %rsi,%rsi
  401a9f:	74 09                	je     401aaa <uint32_t_secure_store_sensitive+0x1a>
  401aa1:	89 3c 08             	mov    %edi,(%rax,%rcx,1)
  401aa4:	c3                   	retq   
  401aa5:	e9 16 fc ff ff       	jmpq   4016c0 <uint32_t_secure_store_impl>
  401aaa:	8b 04 08             	mov    (%rax,%rcx,1),%eax
  401aad:	c3                   	retq   
  401aae:	66 90                	xchg   %ax,%ax

0000000000401ab0 <uint16_t_secure_store_sensitive>:
  401ab0:	41 83 f8 01          	cmp    $0x1,%r8d
  401ab4:	75 10                	jne    401ac6 <uint16_t_secure_store_sensitive+0x16>
  401ab6:	48 8b 02             	mov    (%rdx),%rax
  401ab9:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401abc:	48 85 f6             	test   %rsi,%rsi
  401abf:	74 0d                	je     401ace <uint16_t_secure_store_sensitive+0x1e>
  401ac1:	66 89 3c 08          	mov    %di,(%rax,%rcx,1)
  401ac5:	c3                   	retq   
  401ac6:	0f b7 ff             	movzwl %di,%edi
  401ac9:	e9 02 fd ff ff       	jmpq   4017d0 <uint16_t_secure_store_impl>
  401ace:	0f b7 04 08          	movzwl (%rax,%rcx,1),%eax
  401ad2:	c3                   	retq   
  401ad3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ada:	00 00 00 
  401add:	0f 1f 00             	nopl   (%rax)

0000000000401ae0 <uint8_t_secure_store_sensitive>:
  401ae0:	41 83 f8 01          	cmp    $0x1,%r8d
  401ae4:	75 10                	jne    401af6 <uint8_t_secure_store_sensitive+0x16>
  401ae6:	48 8b 02             	mov    (%rdx),%rax
  401ae9:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401aec:	48 85 f6             	test   %rsi,%rsi
  401aef:	74 0e                	je     401aff <uint8_t_secure_store_sensitive+0x1f>
  401af1:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
  401af5:	c3                   	retq   
  401af6:	40 0f b6 ff          	movzbl %dil,%edi
  401afa:	e9 e1 fd ff ff       	jmpq   4018e0 <uint8_t_secure_store_impl>
  401aff:	8a 04 08             	mov    (%rax,%rcx,1),%al
  401b02:	c3                   	retq   
  401b03:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b0a:	00 00 00 
  401b0d:	0f 1f 00             	nopl   (%rax)

0000000000401b10 <branch_id>:
  401b10:	c3                   	retq   
  401b11:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b18:	00 00 00 
  401b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401b20 <main>:
  401b20:	55                   	push   %rbp
  401b21:	41 57                	push   %r15
  401b23:	41 56                	push   %r14
  401b25:	41 55                	push   %r13
  401b27:	41 54                	push   %r12
  401b29:	53                   	push   %rbx
  401b2a:	48 81 ec 38 04 00 00 	sub    $0x438,%rsp
  401b31:	be 78 50 40 00       	mov    $0x405078,%esi
  401b36:	ba 08 00 00 00       	mov    $0x8,%edx
  401b3b:	31 ff                	xor    %edi,%edi
  401b3d:	e8 fe f4 ff ff       	callq  401040 <read@plt>
  401b42:	8b 05 30 35 00 00    	mov    0x3530(%rip),%eax        # 405078 <in>
  401b48:	48 8b 0d 2d 35 00 00 	mov    0x352d(%rip),%rcx        # 40507c <in+0x4>
  401b4f:	41 bd cd cc cc cc    	mov    $0xcccccccd,%r13d
  401b55:	48 89 c1             	mov    %rax,%rcx
  401b58:	49 0f af cd          	imul   %r13,%rcx
  401b5c:	48 c1 e9 23          	shr    $0x23,%rcx
  401b60:	01 c9                	add    %ecx,%ecx
  401b62:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401b65:	29 c8                	sub    %ecx,%eax
  401b67:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401b6e:	00 
  401b6f:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401b73:	c5 fc 11 05 d5 34 00 	vmovups %ymm0,0x34d5(%rip)        # 405050 <count>
  401b7a:	00 
  401b7b:	48 c7 05 ea 34 00 00 	movq   $0x0,0x34ea(%rip)        # 405070 <count+0x20>
  401b82:	00 00 00 00 
  401b86:	be 60 30 40 00       	mov    $0x403060,%esi
  401b8b:	48 89 df             	mov    %rbx,%rdi
  401b8e:	ba 01 00 00 00       	mov    $0x1,%edx
  401b93:	c5 f8 77             	vzeroupper 
  401b96:	e8 15 f6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401b9b:	8d 78 01             	lea    0x1(%rax),%edi
  401b9e:	ba 60 30 40 00       	mov    $0x403060,%edx
  401ba3:	48 89 de             	mov    %rbx,%rsi
  401ba6:	b9 01 00 00 00       	mov    $0x1,%ecx
  401bab:	e8 10 fb ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401bb0:	8b 05 c6 34 00 00    	mov    0x34c6(%rip),%eax        # 40507c <in+0x4>
  401bb6:	48 89 c1             	mov    %rax,%rcx
  401bb9:	49 0f af cd          	imul   %r13,%rcx
  401bbd:	48 c1 e9 23          	shr    $0x23,%rcx
  401bc1:	01 c9                	add    %ecx,%ecx
  401bc3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401bc6:	29 c8                	sub    %ecx,%eax
  401bc8:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401bcf:	00 
  401bd0:	be 60 30 40 00       	mov    $0x403060,%esi
  401bd5:	48 89 df             	mov    %rbx,%rdi
  401bd8:	ba 01 00 00 00       	mov    $0x1,%edx
  401bdd:	e8 ce f5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401be2:	8d 78 01             	lea    0x1(%rax),%edi
  401be5:	ba 60 30 40 00       	mov    $0x403060,%edx
  401bea:	48 89 de             	mov    %rbx,%rsi
  401bed:	b9 01 00 00 00       	mov    $0x1,%ecx
  401bf2:	e8 c9 fa ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401bf7:	8b 05 53 34 00 00    	mov    0x3453(%rip),%eax        # 405050 <count>
  401bfd:	03 05 51 34 00 00    	add    0x3451(%rip),%eax        # 405054 <count+0x4>
  401c03:	89 05 4b 34 00 00    	mov    %eax,0x344b(%rip)        # 405054 <count+0x4>
  401c09:	03 05 49 34 00 00    	add    0x3449(%rip),%eax        # 405058 <count+0x8>
  401c0f:	89 05 43 34 00 00    	mov    %eax,0x3443(%rip)        # 405058 <count+0x8>
  401c15:	03 05 41 34 00 00    	add    0x3441(%rip),%eax        # 40505c <count+0xc>
  401c1b:	89 05 3b 34 00 00    	mov    %eax,0x343b(%rip)        # 40505c <count+0xc>
  401c21:	03 05 39 34 00 00    	add    0x3439(%rip),%eax        # 405060 <count+0x10>
  401c27:	89 05 33 34 00 00    	mov    %eax,0x3433(%rip)        # 405060 <count+0x10>
  401c2d:	03 05 31 34 00 00    	add    0x3431(%rip),%eax        # 405064 <count+0x14>
  401c33:	89 05 2b 34 00 00    	mov    %eax,0x342b(%rip)        # 405064 <count+0x14>
  401c39:	03 05 29 34 00 00    	add    0x3429(%rip),%eax        # 405068 <count+0x18>
  401c3f:	89 05 23 34 00 00    	mov    %eax,0x3423(%rip)        # 405068 <count+0x18>
  401c45:	03 05 21 34 00 00    	add    0x3421(%rip),%eax        # 40506c <count+0x1c>
  401c4b:	89 05 1b 34 00 00    	mov    %eax,0x341b(%rip)        # 40506c <count+0x1c>
  401c51:	03 05 19 34 00 00    	add    0x3419(%rip),%eax        # 405070 <count+0x20>
  401c57:	89 05 13 34 00 00    	mov    %eax,0x3413(%rip)        # 405070 <count+0x20>
  401c5d:	01 05 11 34 00 00    	add    %eax,0x3411(%rip)        # 405074 <count+0x24>
  401c63:	8b 1d 13 34 00 00    	mov    0x3413(%rip),%ebx        # 40507c <in+0x4>
  401c69:	48 89 d8             	mov    %rbx,%rax
  401c6c:	49 0f af c5          	imul   %r13,%rax
  401c70:	48 c1 e8 23          	shr    $0x23,%rax
  401c74:	01 c0                	add    %eax,%eax
  401c76:	8d 04 80             	lea    (%rax,%rax,4),%eax
  401c79:	89 d9                	mov    %ebx,%ecx
  401c7b:	29 c1                	sub    %eax,%ecx
  401c7d:	48 8d 3c 8d 50 50 40 	lea    0x405050(,%rcx,4),%rdi
  401c84:	00 
  401c85:	be 60 30 40 00       	mov    $0x403060,%esi
  401c8a:	ba 01 00 00 00       	mov    $0x1,%edx
  401c8f:	e8 1c f5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401c94:	48 c1 e0 20          	shl    $0x20,%rax
  401c98:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401c9f:	ff ff ff 
  401ca2:	4c 01 f0             	add    %r14,%rax
  401ca5:	48 c1 f8 1e          	sar    $0x1e,%rax
  401ca9:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  401cad:	48 83 c6 08          	add    $0x8,%rsi
  401cb1:	ba 60 30 40 00       	mov    $0x403060,%edx
  401cb6:	89 df                	mov    %ebx,%edi
  401cb8:	b9 01 00 00 00       	mov    $0x1,%ecx
  401cbd:	e8 fe f9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401cc2:	8b 05 b4 33 00 00    	mov    0x33b4(%rip),%eax        # 40507c <in+0x4>
  401cc8:	48 89 c1             	mov    %rax,%rcx
  401ccb:	49 0f af cd          	imul   %r13,%rcx
  401ccf:	48 c1 e9 23          	shr    $0x23,%rcx
  401cd3:	01 c9                	add    %ecx,%ecx
  401cd5:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401cd8:	29 c8                	sub    %ecx,%eax
  401cda:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401ce1:	00 
  401ce2:	be 60 30 40 00       	mov    $0x403060,%esi
  401ce7:	48 89 df             	mov    %rbx,%rdi
  401cea:	ba 01 00 00 00       	mov    $0x1,%edx
  401cef:	e8 bc f4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401cf4:	8d 78 ff             	lea    -0x1(%rax),%edi
  401cf7:	c5 fc 10 05 61 13 00 	vmovups 0x1361(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401cfe:	00 
  401cff:	c5 fc 11 84 24 10 04 	vmovups %ymm0,0x410(%rsp)
  401d06:	00 00 
  401d08:	48 8d 94 24 10 04 00 	lea    0x410(%rsp),%rdx
  401d0f:	00 
  401d10:	48 89 de             	mov    %rbx,%rsi
  401d13:	b9 01 00 00 00       	mov    $0x1,%ecx
  401d18:	c5 f8 77             	vzeroupper 
  401d1b:	e8 a0 f9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401d20:	8b 1d 52 33 00 00    	mov    0x3352(%rip),%ebx        # 405078 <in>
  401d26:	48 89 d8             	mov    %rbx,%rax
  401d29:	49 0f af c5          	imul   %r13,%rax
  401d2d:	48 c1 e8 23          	shr    $0x23,%rax
  401d31:	01 c0                	add    %eax,%eax
  401d33:	8d 04 80             	lea    (%rax,%rax,4),%eax
  401d36:	89 d9                	mov    %ebx,%ecx
  401d38:	29 c1                	sub    %eax,%ecx
  401d3a:	48 8d 3c 8d 50 50 40 	lea    0x405050(,%rcx,4),%rdi
  401d41:	00 
  401d42:	be 60 30 40 00       	mov    $0x403060,%esi
  401d47:	ba 01 00 00 00       	mov    $0x1,%edx
  401d4c:	e8 5f f4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401d51:	48 c1 e0 20          	shl    $0x20,%rax
  401d55:	4c 01 f0             	add    %r14,%rax
  401d58:	48 c1 f8 1e          	sar    $0x1e,%rax
  401d5c:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  401d60:	48 83 c6 08          	add    $0x8,%rsi
  401d64:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  401d69:	4c 89 bc 24 50 01 00 	mov    %r15,0x150(%rsp)
  401d70:	00 
  401d71:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  401d78:	00 00 00 00 00 
  401d7d:	c7 84 24 60 01 00 00 	movl   $0x2,0x160(%rsp)
  401d84:	02 00 00 00 
  401d88:	c6 84 24 64 01 00 00 	movb   $0x1,0x164(%rsp)
  401d8f:	01 
  401d90:	49 bc 00 00 00 00 04 	movabs $0x400000000,%r12
  401d97:	00 00 00 
  401d9a:	4c 89 a4 24 68 01 00 	mov    %r12,0x168(%rsp)
  401da1:	00 
  401da2:	48 8d 94 24 50 01 00 	lea    0x150(%rsp),%rdx
  401da9:	00 
  401daa:	89 df                	mov    %ebx,%edi
  401dac:	b9 01 00 00 00       	mov    $0x1,%ecx
  401db1:	e8 0a f9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401db6:	8b 05 bc 32 00 00    	mov    0x32bc(%rip),%eax        # 405078 <in>
  401dbc:	48 89 c1             	mov    %rax,%rcx
  401dbf:	49 0f af cd          	imul   %r13,%rcx
  401dc3:	48 c1 e9 23          	shr    $0x23,%rcx
  401dc7:	01 c9                	add    %ecx,%ecx
  401dc9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401dcc:	29 c8                	sub    %ecx,%eax
  401dce:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401dd5:	00 
  401dd6:	be 60 30 40 00       	mov    $0x403060,%esi
  401ddb:	48 89 df             	mov    %rbx,%rdi
  401dde:	ba 01 00 00 00       	mov    $0x1,%edx
  401de3:	e8 c8 f3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401de8:	8d 78 ff             	lea    -0x1(%rax),%edi
  401deb:	c5 fc 10 05 6d 12 00 	vmovups 0x126d(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401df2:	00 
  401df3:	c5 fc 11 84 24 f0 03 	vmovups %ymm0,0x3f0(%rsp)
  401dfa:	00 00 
  401dfc:	48 8d 94 24 f0 03 00 	lea    0x3f0(%rsp),%rdx
  401e03:	00 
  401e04:	48 89 de             	mov    %rbx,%rsi
  401e07:	b9 01 00 00 00       	mov    $0x1,%ecx
  401e0c:	c5 f8 77             	vzeroupper 
  401e0f:	e8 ac f8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401e14:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e18:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  401e1c:	89 05 56 32 00 00    	mov    %eax,0x3256(%rip)        # 405078 <in>
  401e22:	89 0d 54 32 00 00    	mov    %ecx,0x3254(%rip)        # 40507c <in+0x4>
  401e28:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401e2c:	c5 fc 11 05 1c 32 00 	vmovups %ymm0,0x321c(%rip)        # 405050 <count>
  401e33:	00 
  401e34:	48 c7 05 31 32 00 00 	movq   $0x0,0x3231(%rip)        # 405070 <count+0x20>
  401e3b:	00 00 00 00 
  401e3f:	49 0f af c5          	imul   %r13,%rax
  401e43:	48 c1 e8 23          	shr    $0x23,%rax
  401e47:	48 89 c1             	mov    %rax,%rcx
  401e4a:	49 0f af cd          	imul   %r13,%rcx
  401e4e:	48 c1 e9 23          	shr    $0x23,%rcx
  401e52:	01 c9                	add    %ecx,%ecx
  401e54:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401e57:	29 c8                	sub    %ecx,%eax
  401e59:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401e60:	00 
  401e61:	be 60 30 40 00       	mov    $0x403060,%esi
  401e66:	48 89 df             	mov    %rbx,%rdi
  401e69:	ba 01 00 00 00       	mov    $0x1,%edx
  401e6e:	c5 f8 77             	vzeroupper 
  401e71:	e8 3a f3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401e76:	8d 78 01             	lea    0x1(%rax),%edi
  401e79:	c5 fc 10 05 df 11 00 	vmovups 0x11df(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401e80:	00 
  401e81:	c5 fc 11 84 24 d0 03 	vmovups %ymm0,0x3d0(%rsp)
  401e88:	00 00 
  401e8a:	48 8d 94 24 d0 03 00 	lea    0x3d0(%rsp),%rdx
  401e91:	00 
  401e92:	48 89 de             	mov    %rbx,%rsi
  401e95:	b9 01 00 00 00       	mov    $0x1,%ecx
  401e9a:	c5 f8 77             	vzeroupper 
  401e9d:	e8 1e f8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401ea2:	8b 05 d4 31 00 00    	mov    0x31d4(%rip),%eax        # 40507c <in+0x4>
  401ea8:	49 0f af c5          	imul   %r13,%rax
  401eac:	48 c1 e8 23          	shr    $0x23,%rax
  401eb0:	48 89 c1             	mov    %rax,%rcx
  401eb3:	49 0f af cd          	imul   %r13,%rcx
  401eb7:	48 c1 e9 23          	shr    $0x23,%rcx
  401ebb:	01 c9                	add    %ecx,%ecx
  401ebd:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401ec0:	29 c8                	sub    %ecx,%eax
  401ec2:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401ec9:	00 
  401eca:	be 60 30 40 00       	mov    $0x403060,%esi
  401ecf:	48 89 df             	mov    %rbx,%rdi
  401ed2:	ba 01 00 00 00       	mov    $0x1,%edx
  401ed7:	e8 d4 f2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401edc:	8d 78 01             	lea    0x1(%rax),%edi
  401edf:	c5 fc 10 05 79 11 00 	vmovups 0x1179(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401ee6:	00 
  401ee7:	c5 fc 11 84 24 b0 03 	vmovups %ymm0,0x3b0(%rsp)
  401eee:	00 00 
  401ef0:	48 8d 94 24 b0 03 00 	lea    0x3b0(%rsp),%rdx
  401ef7:	00 
  401ef8:	48 89 de             	mov    %rbx,%rsi
  401efb:	b9 01 00 00 00       	mov    $0x1,%ecx
  401f00:	c5 f8 77             	vzeroupper 
  401f03:	e8 b8 f7 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401f08:	8b 05 42 31 00 00    	mov    0x3142(%rip),%eax        # 405050 <count>
  401f0e:	03 05 40 31 00 00    	add    0x3140(%rip),%eax        # 405054 <count+0x4>
  401f14:	89 05 3a 31 00 00    	mov    %eax,0x313a(%rip)        # 405054 <count+0x4>
  401f1a:	03 05 38 31 00 00    	add    0x3138(%rip),%eax        # 405058 <count+0x8>
  401f20:	89 05 32 31 00 00    	mov    %eax,0x3132(%rip)        # 405058 <count+0x8>
  401f26:	03 05 30 31 00 00    	add    0x3130(%rip),%eax        # 40505c <count+0xc>
  401f2c:	89 05 2a 31 00 00    	mov    %eax,0x312a(%rip)        # 40505c <count+0xc>
  401f32:	03 05 28 31 00 00    	add    0x3128(%rip),%eax        # 405060 <count+0x10>
  401f38:	89 05 22 31 00 00    	mov    %eax,0x3122(%rip)        # 405060 <count+0x10>
  401f3e:	03 05 20 31 00 00    	add    0x3120(%rip),%eax        # 405064 <count+0x14>
  401f44:	89 05 1a 31 00 00    	mov    %eax,0x311a(%rip)        # 405064 <count+0x14>
  401f4a:	03 05 18 31 00 00    	add    0x3118(%rip),%eax        # 405068 <count+0x18>
  401f50:	89 05 12 31 00 00    	mov    %eax,0x3112(%rip)        # 405068 <count+0x18>
  401f56:	03 05 10 31 00 00    	add    0x3110(%rip),%eax        # 40506c <count+0x1c>
  401f5c:	89 05 0a 31 00 00    	mov    %eax,0x310a(%rip)        # 40506c <count+0x1c>
  401f62:	03 05 08 31 00 00    	add    0x3108(%rip),%eax        # 405070 <count+0x20>
  401f68:	89 05 02 31 00 00    	mov    %eax,0x3102(%rip)        # 405070 <count+0x20>
  401f6e:	01 05 00 31 00 00    	add    %eax,0x3100(%rip)        # 405074 <count+0x24>
  401f74:	8b 1d 02 31 00 00    	mov    0x3102(%rip),%ebx        # 40507c <in+0x4>
  401f7a:	48 89 d8             	mov    %rbx,%rax
  401f7d:	49 0f af c5          	imul   %r13,%rax
  401f81:	48 c1 e8 23          	shr    $0x23,%rax
  401f85:	48 89 c1             	mov    %rax,%rcx
  401f88:	49 0f af cd          	imul   %r13,%rcx
  401f8c:	48 c1 e9 23          	shr    $0x23,%rcx
  401f90:	01 c9                	add    %ecx,%ecx
  401f92:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401f95:	29 c8                	sub    %ecx,%eax
  401f97:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  401f9e:	00 
  401f9f:	be 60 30 40 00       	mov    $0x403060,%esi
  401fa4:	ba 01 00 00 00       	mov    $0x1,%edx
  401fa9:	e8 02 f2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401fae:	48 c1 e0 20          	shl    $0x20,%rax
  401fb2:	4c 01 f0             	add    %r14,%rax
  401fb5:	48 c1 f8 1e          	sar    $0x1e,%rax
  401fb9:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  401fbd:	48 83 c6 08          	add    $0x8,%rsi
  401fc1:	4c 89 bc 24 30 01 00 	mov    %r15,0x130(%rsp)
  401fc8:	00 
  401fc9:	48 c7 84 24 38 01 00 	movq   $0x0,0x138(%rsp)
  401fd0:	00 00 00 00 00 
  401fd5:	c7 84 24 40 01 00 00 	movl   $0x2,0x140(%rsp)
  401fdc:	02 00 00 00 
  401fe0:	c6 84 24 44 01 00 00 	movb   $0x1,0x144(%rsp)
  401fe7:	01 
  401fe8:	4c 89 a4 24 48 01 00 	mov    %r12,0x148(%rsp)
  401fef:	00 
  401ff0:	48 8d 94 24 30 01 00 	lea    0x130(%rsp),%rdx
  401ff7:	00 
  401ff8:	89 df                	mov    %ebx,%edi
  401ffa:	b9 01 00 00 00       	mov    $0x1,%ecx
  401fff:	e8 bc f6 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402004:	8b 05 72 30 00 00    	mov    0x3072(%rip),%eax        # 40507c <in+0x4>
  40200a:	49 0f af c5          	imul   %r13,%rax
  40200e:	48 c1 e8 23          	shr    $0x23,%rax
  402012:	48 89 c1             	mov    %rax,%rcx
  402015:	49 0f af cd          	imul   %r13,%rcx
  402019:	48 c1 e9 23          	shr    $0x23,%rcx
  40201d:	01 c9                	add    %ecx,%ecx
  40201f:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402022:	29 c8                	sub    %ecx,%eax
  402024:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  40202b:	00 
  40202c:	be 60 30 40 00       	mov    $0x403060,%esi
  402031:	48 89 df             	mov    %rbx,%rdi
  402034:	ba 01 00 00 00       	mov    $0x1,%edx
  402039:	e8 72 f1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40203e:	8d 78 ff             	lea    -0x1(%rax),%edi
  402041:	c5 fc 10 05 17 10 00 	vmovups 0x1017(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402048:	00 
  402049:	c5 fc 11 84 24 90 03 	vmovups %ymm0,0x390(%rsp)
  402050:	00 00 
  402052:	48 8d 94 24 90 03 00 	lea    0x390(%rsp),%rdx
  402059:	00 
  40205a:	48 89 de             	mov    %rbx,%rsi
  40205d:	b9 01 00 00 00       	mov    $0x1,%ecx
  402062:	c5 f8 77             	vzeroupper 
  402065:	e8 56 f6 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40206a:	8b 1d 08 30 00 00    	mov    0x3008(%rip),%ebx        # 405078 <in>
  402070:	48 89 d8             	mov    %rbx,%rax
  402073:	49 0f af c5          	imul   %r13,%rax
  402077:	48 c1 e8 23          	shr    $0x23,%rax
  40207b:	48 89 c1             	mov    %rax,%rcx
  40207e:	49 0f af cd          	imul   %r13,%rcx
  402082:	48 c1 e9 23          	shr    $0x23,%rcx
  402086:	01 c9                	add    %ecx,%ecx
  402088:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40208b:	29 c8                	sub    %ecx,%eax
  40208d:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402094:	00 
  402095:	be 60 30 40 00       	mov    $0x403060,%esi
  40209a:	ba 01 00 00 00       	mov    $0x1,%edx
  40209f:	e8 0c f1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4020a4:	48 c1 e0 20          	shl    $0x20,%rax
  4020a8:	4c 01 f0             	add    %r14,%rax
  4020ab:	48 c1 f8 1e          	sar    $0x1e,%rax
  4020af:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  4020b3:	48 83 c6 08          	add    $0x8,%rsi
  4020b7:	4c 89 bc 24 10 01 00 	mov    %r15,0x110(%rsp)
  4020be:	00 
  4020bf:	48 c7 84 24 18 01 00 	movq   $0x0,0x118(%rsp)
  4020c6:	00 00 00 00 00 
  4020cb:	c7 84 24 20 01 00 00 	movl   $0x2,0x120(%rsp)
  4020d2:	02 00 00 00 
  4020d6:	c6 84 24 24 01 00 00 	movb   $0x1,0x124(%rsp)
  4020dd:	01 
  4020de:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  4020e5:	00 
  4020e6:	48 8d 94 24 10 01 00 	lea    0x110(%rsp),%rdx
  4020ed:	00 
  4020ee:	89 df                	mov    %ebx,%edi
  4020f0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4020f5:	e8 c6 f5 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4020fa:	8b 05 78 2f 00 00    	mov    0x2f78(%rip),%eax        # 405078 <in>
  402100:	49 0f af c5          	imul   %r13,%rax
  402104:	48 c1 e8 23          	shr    $0x23,%rax
  402108:	48 89 c1             	mov    %rax,%rcx
  40210b:	49 0f af cd          	imul   %r13,%rcx
  40210f:	48 c1 e9 23          	shr    $0x23,%rcx
  402113:	01 c9                	add    %ecx,%ecx
  402115:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402118:	29 c8                	sub    %ecx,%eax
  40211a:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402121:	00 
  402122:	be 60 30 40 00       	mov    $0x403060,%esi
  402127:	48 89 df             	mov    %rbx,%rdi
  40212a:	ba 01 00 00 00       	mov    $0x1,%edx
  40212f:	e8 7c f0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402134:	8d 78 ff             	lea    -0x1(%rax),%edi
  402137:	c5 fc 10 05 21 0f 00 	vmovups 0xf21(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  40213e:	00 
  40213f:	c5 fc 11 84 24 70 03 	vmovups %ymm0,0x370(%rsp)
  402146:	00 00 
  402148:	48 8d 94 24 70 03 00 	lea    0x370(%rsp),%rdx
  40214f:	00 
  402150:	48 89 de             	mov    %rbx,%rsi
  402153:	b9 01 00 00 00       	mov    $0x1,%ecx
  402158:	c5 f8 77             	vzeroupper 
  40215b:	e8 60 f5 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402160:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402164:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402168:	89 05 0a 2f 00 00    	mov    %eax,0x2f0a(%rip)        # 405078 <in>
  40216e:	89 0d 08 2f 00 00    	mov    %ecx,0x2f08(%rip)        # 40507c <in+0x4>
  402174:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  402178:	c5 fc 11 05 d0 2e 00 	vmovups %ymm0,0x2ed0(%rip)        # 405050 <count>
  40217f:	00 
  402180:	48 c7 05 e5 2e 00 00 	movq   $0x0,0x2ee5(%rip)        # 405070 <count+0x20>
  402187:	00 00 00 00 
  40218b:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  402192:	48 c1 e8 25          	shr    $0x25,%rax
  402196:	48 89 c1             	mov    %rax,%rcx
  402199:	49 0f af cd          	imul   %r13,%rcx
  40219d:	48 c1 e9 23          	shr    $0x23,%rcx
  4021a1:	01 c9                	add    %ecx,%ecx
  4021a3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4021a6:	29 c8                	sub    %ecx,%eax
  4021a8:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4021af:	00 
  4021b0:	be 60 30 40 00       	mov    $0x403060,%esi
  4021b5:	48 89 df             	mov    %rbx,%rdi
  4021b8:	ba 01 00 00 00       	mov    $0x1,%edx
  4021bd:	c5 f8 77             	vzeroupper 
  4021c0:	e8 eb ef ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4021c5:	8d 78 01             	lea    0x1(%rax),%edi
  4021c8:	c5 fc 10 05 90 0e 00 	vmovups 0xe90(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4021cf:	00 
  4021d0:	c5 fc 11 84 24 50 03 	vmovups %ymm0,0x350(%rsp)
  4021d7:	00 00 
  4021d9:	48 8d 94 24 50 03 00 	lea    0x350(%rsp),%rdx
  4021e0:	00 
  4021e1:	48 89 de             	mov    %rbx,%rsi
  4021e4:	b9 01 00 00 00       	mov    $0x1,%ecx
  4021e9:	c5 f8 77             	vzeroupper 
  4021ec:	e8 cf f4 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4021f1:	8b 05 85 2e 00 00    	mov    0x2e85(%rip),%eax        # 40507c <in+0x4>
  4021f7:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  4021fe:	48 c1 e8 25          	shr    $0x25,%rax
  402202:	48 89 c1             	mov    %rax,%rcx
  402205:	49 0f af cd          	imul   %r13,%rcx
  402209:	48 c1 e9 23          	shr    $0x23,%rcx
  40220d:	01 c9                	add    %ecx,%ecx
  40220f:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402212:	29 c8                	sub    %ecx,%eax
  402214:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  40221b:	00 
  40221c:	be 60 30 40 00       	mov    $0x403060,%esi
  402221:	48 89 df             	mov    %rbx,%rdi
  402224:	ba 01 00 00 00       	mov    $0x1,%edx
  402229:	e8 82 ef ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40222e:	8d 78 01             	lea    0x1(%rax),%edi
  402231:	c5 fc 10 05 27 0e 00 	vmovups 0xe27(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402238:	00 
  402239:	c5 fc 11 84 24 30 03 	vmovups %ymm0,0x330(%rsp)
  402240:	00 00 
  402242:	48 8d 94 24 30 03 00 	lea    0x330(%rsp),%rdx
  402249:	00 
  40224a:	48 89 de             	mov    %rbx,%rsi
  40224d:	b9 01 00 00 00       	mov    $0x1,%ecx
  402252:	c5 f8 77             	vzeroupper 
  402255:	e8 66 f4 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40225a:	8b 05 f0 2d 00 00    	mov    0x2df0(%rip),%eax        # 405050 <count>
  402260:	03 05 ee 2d 00 00    	add    0x2dee(%rip),%eax        # 405054 <count+0x4>
  402266:	89 05 e8 2d 00 00    	mov    %eax,0x2de8(%rip)        # 405054 <count+0x4>
  40226c:	03 05 e6 2d 00 00    	add    0x2de6(%rip),%eax        # 405058 <count+0x8>
  402272:	89 05 e0 2d 00 00    	mov    %eax,0x2de0(%rip)        # 405058 <count+0x8>
  402278:	03 05 de 2d 00 00    	add    0x2dde(%rip),%eax        # 40505c <count+0xc>
  40227e:	89 05 d8 2d 00 00    	mov    %eax,0x2dd8(%rip)        # 40505c <count+0xc>
  402284:	03 05 d6 2d 00 00    	add    0x2dd6(%rip),%eax        # 405060 <count+0x10>
  40228a:	89 05 d0 2d 00 00    	mov    %eax,0x2dd0(%rip)        # 405060 <count+0x10>
  402290:	03 05 ce 2d 00 00    	add    0x2dce(%rip),%eax        # 405064 <count+0x14>
  402296:	89 05 c8 2d 00 00    	mov    %eax,0x2dc8(%rip)        # 405064 <count+0x14>
  40229c:	03 05 c6 2d 00 00    	add    0x2dc6(%rip),%eax        # 405068 <count+0x18>
  4022a2:	89 05 c0 2d 00 00    	mov    %eax,0x2dc0(%rip)        # 405068 <count+0x18>
  4022a8:	03 05 be 2d 00 00    	add    0x2dbe(%rip),%eax        # 40506c <count+0x1c>
  4022ae:	89 05 b8 2d 00 00    	mov    %eax,0x2db8(%rip)        # 40506c <count+0x1c>
  4022b4:	03 05 b6 2d 00 00    	add    0x2db6(%rip),%eax        # 405070 <count+0x20>
  4022ba:	89 05 b0 2d 00 00    	mov    %eax,0x2db0(%rip)        # 405070 <count+0x20>
  4022c0:	01 05 ae 2d 00 00    	add    %eax,0x2dae(%rip)        # 405074 <count+0x24>
  4022c6:	8b 1d b0 2d 00 00    	mov    0x2db0(%rip),%ebx        # 40507c <in+0x4>
  4022cc:	48 69 c3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rax
  4022d3:	48 c1 e8 25          	shr    $0x25,%rax
  4022d7:	48 89 c1             	mov    %rax,%rcx
  4022da:	49 0f af cd          	imul   %r13,%rcx
  4022de:	48 c1 e9 23          	shr    $0x23,%rcx
  4022e2:	01 c9                	add    %ecx,%ecx
  4022e4:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4022e7:	29 c8                	sub    %ecx,%eax
  4022e9:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  4022f0:	00 
  4022f1:	be 60 30 40 00       	mov    $0x403060,%esi
  4022f6:	ba 01 00 00 00       	mov    $0x1,%edx
  4022fb:	e8 b0 ee ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402300:	48 c1 e0 20          	shl    $0x20,%rax
  402304:	4c 01 f0             	add    %r14,%rax
  402307:	48 c1 f8 1e          	sar    $0x1e,%rax
  40230b:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  40230f:	48 83 c6 08          	add    $0x8,%rsi
  402313:	4c 89 bc 24 f0 00 00 	mov    %r15,0xf0(%rsp)
  40231a:	00 
  40231b:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
  402322:	00 00 00 00 00 
  402327:	c7 84 24 00 01 00 00 	movl   $0x2,0x100(%rsp)
  40232e:	02 00 00 00 
  402332:	c6 84 24 04 01 00 00 	movb   $0x1,0x104(%rsp)
  402339:	01 
  40233a:	4c 89 a4 24 08 01 00 	mov    %r12,0x108(%rsp)
  402341:	00 
  402342:	48 8d 94 24 f0 00 00 	lea    0xf0(%rsp),%rdx
  402349:	00 
  40234a:	89 df                	mov    %ebx,%edi
  40234c:	b9 01 00 00 00       	mov    $0x1,%ecx
  402351:	e8 6a f3 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402356:	8b 05 20 2d 00 00    	mov    0x2d20(%rip),%eax        # 40507c <in+0x4>
  40235c:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  402363:	48 c1 e8 25          	shr    $0x25,%rax
  402367:	48 89 c1             	mov    %rax,%rcx
  40236a:	49 0f af cd          	imul   %r13,%rcx
  40236e:	48 c1 e9 23          	shr    $0x23,%rcx
  402372:	01 c9                	add    %ecx,%ecx
  402374:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402377:	29 c8                	sub    %ecx,%eax
  402379:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402380:	00 
  402381:	be 60 30 40 00       	mov    $0x403060,%esi
  402386:	48 89 df             	mov    %rbx,%rdi
  402389:	ba 01 00 00 00       	mov    $0x1,%edx
  40238e:	e8 1d ee ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402393:	8d 78 ff             	lea    -0x1(%rax),%edi
  402396:	c5 fc 10 05 c2 0c 00 	vmovups 0xcc2(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  40239d:	00 
  40239e:	c5 fc 11 84 24 10 03 	vmovups %ymm0,0x310(%rsp)
  4023a5:	00 00 
  4023a7:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
  4023ae:	00 
  4023af:	48 89 de             	mov    %rbx,%rsi
  4023b2:	b9 01 00 00 00       	mov    $0x1,%ecx
  4023b7:	c5 f8 77             	vzeroupper 
  4023ba:	e8 01 f3 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4023bf:	8b 1d b3 2c 00 00    	mov    0x2cb3(%rip),%ebx        # 405078 <in>
  4023c5:	48 69 c3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rax
  4023cc:	48 c1 e8 25          	shr    $0x25,%rax
  4023d0:	48 89 c1             	mov    %rax,%rcx
  4023d3:	49 0f af cd          	imul   %r13,%rcx
  4023d7:	48 c1 e9 23          	shr    $0x23,%rcx
  4023db:	01 c9                	add    %ecx,%ecx
  4023dd:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4023e0:	29 c8                	sub    %ecx,%eax
  4023e2:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  4023e9:	00 
  4023ea:	be 60 30 40 00       	mov    $0x403060,%esi
  4023ef:	ba 01 00 00 00       	mov    $0x1,%edx
  4023f4:	e8 b7 ed ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4023f9:	48 c1 e0 20          	shl    $0x20,%rax
  4023fd:	4c 01 f0             	add    %r14,%rax
  402400:	48 c1 f8 1e          	sar    $0x1e,%rax
  402404:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402408:	48 83 c6 08          	add    $0x8,%rsi
  40240c:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  402413:	00 
  402414:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40241b:	00 00 00 00 00 
  402420:	c7 84 24 e0 00 00 00 	movl   $0x2,0xe0(%rsp)
  402427:	02 00 00 00 
  40242b:	c6 84 24 e4 00 00 00 	movb   $0x1,0xe4(%rsp)
  402432:	01 
  402433:	4c 89 a4 24 e8 00 00 	mov    %r12,0xe8(%rsp)
  40243a:	00 
  40243b:	48 8d 94 24 d0 00 00 	lea    0xd0(%rsp),%rdx
  402442:	00 
  402443:	89 df                	mov    %ebx,%edi
  402445:	b9 01 00 00 00       	mov    $0x1,%ecx
  40244a:	e8 71 f2 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40244f:	8b 05 23 2c 00 00    	mov    0x2c23(%rip),%eax        # 405078 <in>
  402455:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  40245c:	48 c1 e8 25          	shr    $0x25,%rax
  402460:	48 89 c1             	mov    %rax,%rcx
  402463:	49 0f af cd          	imul   %r13,%rcx
  402467:	48 c1 e9 23          	shr    $0x23,%rcx
  40246b:	01 c9                	add    %ecx,%ecx
  40246d:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402470:	29 c8                	sub    %ecx,%eax
  402472:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402479:	00 
  40247a:	be 60 30 40 00       	mov    $0x403060,%esi
  40247f:	48 89 df             	mov    %rbx,%rdi
  402482:	ba 01 00 00 00       	mov    $0x1,%edx
  402487:	e8 24 ed ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40248c:	8d 78 ff             	lea    -0x1(%rax),%edi
  40248f:	c5 fc 10 05 c9 0b 00 	vmovups 0xbc9(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402496:	00 
  402497:	c5 fc 11 84 24 f0 02 	vmovups %ymm0,0x2f0(%rsp)
  40249e:	00 00 
  4024a0:	48 8d 94 24 f0 02 00 	lea    0x2f0(%rsp),%rdx
  4024a7:	00 
  4024a8:	48 89 de             	mov    %rbx,%rsi
  4024ab:	b9 01 00 00 00       	mov    $0x1,%ecx
  4024b0:	c5 f8 77             	vzeroupper 
  4024b3:	e8 08 f2 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4024b8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4024bc:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  4024c0:	89 05 b2 2b 00 00    	mov    %eax,0x2bb2(%rip)        # 405078 <in>
  4024c6:	89 0d b0 2b 00 00    	mov    %ecx,0x2bb0(%rip)        # 40507c <in+0x4>
  4024cc:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4024d0:	c5 fc 11 05 78 2b 00 	vmovups %ymm0,0x2b78(%rip)        # 405050 <count>
  4024d7:	00 
  4024d8:	48 c7 05 8d 2b 00 00 	movq   $0x0,0x2b8d(%rip)        # 405070 <count+0x20>
  4024df:	00 00 00 00 
  4024e3:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  4024ea:	48 c1 e8 26          	shr    $0x26,%rax
  4024ee:	48 89 c1             	mov    %rax,%rcx
  4024f1:	49 0f af cd          	imul   %r13,%rcx
  4024f5:	48 c1 e9 23          	shr    $0x23,%rcx
  4024f9:	01 c9                	add    %ecx,%ecx
  4024fb:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4024fe:	29 c8                	sub    %ecx,%eax
  402500:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402507:	00 
  402508:	be 60 30 40 00       	mov    $0x403060,%esi
  40250d:	48 89 df             	mov    %rbx,%rdi
  402510:	ba 01 00 00 00       	mov    $0x1,%edx
  402515:	c5 f8 77             	vzeroupper 
  402518:	e8 93 ec ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40251d:	8d 78 01             	lea    0x1(%rax),%edi
  402520:	c5 fc 10 05 38 0b 00 	vmovups 0xb38(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402527:	00 
  402528:	c5 fc 11 84 24 d0 02 	vmovups %ymm0,0x2d0(%rsp)
  40252f:	00 00 
  402531:	48 8d 94 24 d0 02 00 	lea    0x2d0(%rsp),%rdx
  402538:	00 
  402539:	48 89 de             	mov    %rbx,%rsi
  40253c:	b9 01 00 00 00       	mov    $0x1,%ecx
  402541:	c5 f8 77             	vzeroupper 
  402544:	e8 77 f1 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402549:	8b 05 2d 2b 00 00    	mov    0x2b2d(%rip),%eax        # 40507c <in+0x4>
  40254f:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  402556:	48 c1 e8 26          	shr    $0x26,%rax
  40255a:	48 89 c1             	mov    %rax,%rcx
  40255d:	49 0f af cd          	imul   %r13,%rcx
  402561:	48 c1 e9 23          	shr    $0x23,%rcx
  402565:	01 c9                	add    %ecx,%ecx
  402567:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40256a:	29 c8                	sub    %ecx,%eax
  40256c:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402573:	00 
  402574:	be 60 30 40 00       	mov    $0x403060,%esi
  402579:	48 89 df             	mov    %rbx,%rdi
  40257c:	ba 01 00 00 00       	mov    $0x1,%edx
  402581:	e8 2a ec ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402586:	8d 78 01             	lea    0x1(%rax),%edi
  402589:	c5 fc 10 05 cf 0a 00 	vmovups 0xacf(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402590:	00 
  402591:	c5 fc 11 84 24 b0 02 	vmovups %ymm0,0x2b0(%rsp)
  402598:	00 00 
  40259a:	48 8d 94 24 b0 02 00 	lea    0x2b0(%rsp),%rdx
  4025a1:	00 
  4025a2:	48 89 de             	mov    %rbx,%rsi
  4025a5:	b9 01 00 00 00       	mov    $0x1,%ecx
  4025aa:	c5 f8 77             	vzeroupper 
  4025ad:	e8 0e f1 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4025b2:	8b 05 98 2a 00 00    	mov    0x2a98(%rip),%eax        # 405050 <count>
  4025b8:	03 05 96 2a 00 00    	add    0x2a96(%rip),%eax        # 405054 <count+0x4>
  4025be:	89 05 90 2a 00 00    	mov    %eax,0x2a90(%rip)        # 405054 <count+0x4>
  4025c4:	03 05 8e 2a 00 00    	add    0x2a8e(%rip),%eax        # 405058 <count+0x8>
  4025ca:	89 05 88 2a 00 00    	mov    %eax,0x2a88(%rip)        # 405058 <count+0x8>
  4025d0:	03 05 86 2a 00 00    	add    0x2a86(%rip),%eax        # 40505c <count+0xc>
  4025d6:	89 05 80 2a 00 00    	mov    %eax,0x2a80(%rip)        # 40505c <count+0xc>
  4025dc:	03 05 7e 2a 00 00    	add    0x2a7e(%rip),%eax        # 405060 <count+0x10>
  4025e2:	89 05 78 2a 00 00    	mov    %eax,0x2a78(%rip)        # 405060 <count+0x10>
  4025e8:	03 05 76 2a 00 00    	add    0x2a76(%rip),%eax        # 405064 <count+0x14>
  4025ee:	89 05 70 2a 00 00    	mov    %eax,0x2a70(%rip)        # 405064 <count+0x14>
  4025f4:	03 05 6e 2a 00 00    	add    0x2a6e(%rip),%eax        # 405068 <count+0x18>
  4025fa:	89 05 68 2a 00 00    	mov    %eax,0x2a68(%rip)        # 405068 <count+0x18>
  402600:	03 05 66 2a 00 00    	add    0x2a66(%rip),%eax        # 40506c <count+0x1c>
  402606:	89 05 60 2a 00 00    	mov    %eax,0x2a60(%rip)        # 40506c <count+0x1c>
  40260c:	03 05 5e 2a 00 00    	add    0x2a5e(%rip),%eax        # 405070 <count+0x20>
  402612:	89 05 58 2a 00 00    	mov    %eax,0x2a58(%rip)        # 405070 <count+0x20>
  402618:	01 05 56 2a 00 00    	add    %eax,0x2a56(%rip)        # 405074 <count+0x24>
  40261e:	8b 1d 58 2a 00 00    	mov    0x2a58(%rip),%ebx        # 40507c <in+0x4>
  402624:	48 69 c3 d3 4d 62 10 	imul   $0x10624dd3,%rbx,%rax
  40262b:	48 c1 e8 26          	shr    $0x26,%rax
  40262f:	48 89 c1             	mov    %rax,%rcx
  402632:	49 0f af cd          	imul   %r13,%rcx
  402636:	48 c1 e9 23          	shr    $0x23,%rcx
  40263a:	01 c9                	add    %ecx,%ecx
  40263c:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40263f:	29 c8                	sub    %ecx,%eax
  402641:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402648:	00 
  402649:	be 60 30 40 00       	mov    $0x403060,%esi
  40264e:	ba 01 00 00 00       	mov    $0x1,%edx
  402653:	e8 58 eb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402658:	48 c1 e0 20          	shl    $0x20,%rax
  40265c:	4c 01 f0             	add    %r14,%rax
  40265f:	48 c1 f8 1e          	sar    $0x1e,%rax
  402663:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402667:	48 83 c6 08          	add    $0x8,%rsi
  40266b:	4c 89 bc 24 b0 00 00 	mov    %r15,0xb0(%rsp)
  402672:	00 
  402673:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
  40267a:	00 00 00 00 00 
  40267f:	c7 84 24 c0 00 00 00 	movl   $0x2,0xc0(%rsp)
  402686:	02 00 00 00 
  40268a:	c6 84 24 c4 00 00 00 	movb   $0x1,0xc4(%rsp)
  402691:	01 
  402692:	4c 89 a4 24 c8 00 00 	mov    %r12,0xc8(%rsp)
  402699:	00 
  40269a:	48 8d 94 24 b0 00 00 	lea    0xb0(%rsp),%rdx
  4026a1:	00 
  4026a2:	89 df                	mov    %ebx,%edi
  4026a4:	b9 01 00 00 00       	mov    $0x1,%ecx
  4026a9:	e8 12 f0 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4026ae:	8b 05 c8 29 00 00    	mov    0x29c8(%rip),%eax        # 40507c <in+0x4>
  4026b4:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  4026bb:	48 c1 e8 26          	shr    $0x26,%rax
  4026bf:	48 89 c1             	mov    %rax,%rcx
  4026c2:	49 0f af cd          	imul   %r13,%rcx
  4026c6:	48 c1 e9 23          	shr    $0x23,%rcx
  4026ca:	01 c9                	add    %ecx,%ecx
  4026cc:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4026cf:	29 c8                	sub    %ecx,%eax
  4026d1:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4026d8:	00 
  4026d9:	be 60 30 40 00       	mov    $0x403060,%esi
  4026de:	48 89 df             	mov    %rbx,%rdi
  4026e1:	ba 01 00 00 00       	mov    $0x1,%edx
  4026e6:	e8 c5 ea ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4026eb:	8d 78 ff             	lea    -0x1(%rax),%edi
  4026ee:	c5 fc 10 05 6a 09 00 	vmovups 0x96a(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4026f5:	00 
  4026f6:	c5 fc 11 84 24 90 02 	vmovups %ymm0,0x290(%rsp)
  4026fd:	00 00 
  4026ff:	48 8d 94 24 90 02 00 	lea    0x290(%rsp),%rdx
  402706:	00 
  402707:	48 89 de             	mov    %rbx,%rsi
  40270a:	b9 01 00 00 00       	mov    $0x1,%ecx
  40270f:	c5 f8 77             	vzeroupper 
  402712:	e8 a9 ef ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402717:	8b 1d 5b 29 00 00    	mov    0x295b(%rip),%ebx        # 405078 <in>
  40271d:	48 69 c3 d3 4d 62 10 	imul   $0x10624dd3,%rbx,%rax
  402724:	48 c1 e8 26          	shr    $0x26,%rax
  402728:	48 89 c1             	mov    %rax,%rcx
  40272b:	49 0f af cd          	imul   %r13,%rcx
  40272f:	48 c1 e9 23          	shr    $0x23,%rcx
  402733:	01 c9                	add    %ecx,%ecx
  402735:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402738:	29 c8                	sub    %ecx,%eax
  40273a:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402741:	00 
  402742:	be 60 30 40 00       	mov    $0x403060,%esi
  402747:	ba 01 00 00 00       	mov    $0x1,%edx
  40274c:	e8 5f ea ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402751:	48 c1 e0 20          	shl    $0x20,%rax
  402755:	4c 01 f0             	add    %r14,%rax
  402758:	48 c1 f8 1e          	sar    $0x1e,%rax
  40275c:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402760:	48 83 c6 08          	add    $0x8,%rsi
  402764:	4c 89 bc 24 90 00 00 	mov    %r15,0x90(%rsp)
  40276b:	00 
  40276c:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
  402773:	00 00 00 00 00 
  402778:	c7 84 24 a0 00 00 00 	movl   $0x2,0xa0(%rsp)
  40277f:	02 00 00 00 
  402783:	c6 84 24 a4 00 00 00 	movb   $0x1,0xa4(%rsp)
  40278a:	01 
  40278b:	4c 89 a4 24 a8 00 00 	mov    %r12,0xa8(%rsp)
  402792:	00 
  402793:	48 8d 94 24 90 00 00 	lea    0x90(%rsp),%rdx
  40279a:	00 
  40279b:	89 df                	mov    %ebx,%edi
  40279d:	b9 01 00 00 00       	mov    $0x1,%ecx
  4027a2:	e8 19 ef ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4027a7:	8b 05 cb 28 00 00    	mov    0x28cb(%rip),%eax        # 405078 <in>
  4027ad:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  4027b4:	48 c1 e8 26          	shr    $0x26,%rax
  4027b8:	48 89 c1             	mov    %rax,%rcx
  4027bb:	49 0f af cd          	imul   %r13,%rcx
  4027bf:	48 c1 e9 23          	shr    $0x23,%rcx
  4027c3:	01 c9                	add    %ecx,%ecx
  4027c5:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4027c8:	29 c8                	sub    %ecx,%eax
  4027ca:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4027d1:	00 
  4027d2:	be 60 30 40 00       	mov    $0x403060,%esi
  4027d7:	48 89 df             	mov    %rbx,%rdi
  4027da:	ba 01 00 00 00       	mov    $0x1,%edx
  4027df:	e8 cc e9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4027e4:	8d 78 ff             	lea    -0x1(%rax),%edi
  4027e7:	c5 fc 10 05 71 08 00 	vmovups 0x871(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4027ee:	00 
  4027ef:	c5 fc 11 84 24 70 02 	vmovups %ymm0,0x270(%rsp)
  4027f6:	00 00 
  4027f8:	48 8d 94 24 70 02 00 	lea    0x270(%rsp),%rdx
  4027ff:	00 
  402800:	48 89 de             	mov    %rbx,%rsi
  402803:	b9 01 00 00 00       	mov    $0x1,%ecx
  402808:	c5 f8 77             	vzeroupper 
  40280b:	e8 b0 ee ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402810:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402814:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402818:	89 05 5a 28 00 00    	mov    %eax,0x285a(%rip)        # 405078 <in>
  40281e:	89 0d 58 28 00 00    	mov    %ecx,0x2858(%rip)        # 40507c <in+0x4>
  402824:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  402828:	c5 fc 11 05 20 28 00 	vmovups %ymm0,0x2820(%rip)        # 405050 <count>
  40282f:	00 
  402830:	48 c7 05 35 28 00 00 	movq   $0x0,0x2835(%rip)        # 405070 <count+0x20>
  402837:	00 00 00 00 
  40283b:	bd 59 17 b7 d1       	mov    $0xd1b71759,%ebp
  402840:	48 0f af c5          	imul   %rbp,%rax
  402844:	48 c1 e8 2d          	shr    $0x2d,%rax
  402848:	48 89 c1             	mov    %rax,%rcx
  40284b:	49 0f af cd          	imul   %r13,%rcx
  40284f:	48 c1 e9 23          	shr    $0x23,%rcx
  402853:	01 c9                	add    %ecx,%ecx
  402855:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402858:	29 c8                	sub    %ecx,%eax
  40285a:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402861:	00 
  402862:	be 60 30 40 00       	mov    $0x403060,%esi
  402867:	48 89 df             	mov    %rbx,%rdi
  40286a:	ba 01 00 00 00       	mov    $0x1,%edx
  40286f:	c5 f8 77             	vzeroupper 
  402872:	e8 39 e9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402877:	8d 78 01             	lea    0x1(%rax),%edi
  40287a:	c5 fc 10 05 de 07 00 	vmovups 0x7de(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402881:	00 
  402882:	c5 fc 11 84 24 50 02 	vmovups %ymm0,0x250(%rsp)
  402889:	00 00 
  40288b:	48 8d 94 24 50 02 00 	lea    0x250(%rsp),%rdx
  402892:	00 
  402893:	48 89 de             	mov    %rbx,%rsi
  402896:	b9 01 00 00 00       	mov    $0x1,%ecx
  40289b:	c5 f8 77             	vzeroupper 
  40289e:	e8 1d ee ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4028a3:	8b 05 d3 27 00 00    	mov    0x27d3(%rip),%eax        # 40507c <in+0x4>
  4028a9:	48 0f af c5          	imul   %rbp,%rax
  4028ad:	48 c1 e8 2d          	shr    $0x2d,%rax
  4028b1:	48 89 c1             	mov    %rax,%rcx
  4028b4:	49 0f af cd          	imul   %r13,%rcx
  4028b8:	48 c1 e9 23          	shr    $0x23,%rcx
  4028bc:	01 c9                	add    %ecx,%ecx
  4028be:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4028c1:	29 c8                	sub    %ecx,%eax
  4028c3:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4028ca:	00 
  4028cb:	be 60 30 40 00       	mov    $0x403060,%esi
  4028d0:	48 89 df             	mov    %rbx,%rdi
  4028d3:	ba 01 00 00 00       	mov    $0x1,%edx
  4028d8:	e8 d3 e8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4028dd:	8d 78 01             	lea    0x1(%rax),%edi
  4028e0:	c5 fc 10 05 78 07 00 	vmovups 0x778(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4028e7:	00 
  4028e8:	c5 fc 11 84 24 30 02 	vmovups %ymm0,0x230(%rsp)
  4028ef:	00 00 
  4028f1:	48 8d 94 24 30 02 00 	lea    0x230(%rsp),%rdx
  4028f8:	00 
  4028f9:	48 89 de             	mov    %rbx,%rsi
  4028fc:	b9 01 00 00 00       	mov    $0x1,%ecx
  402901:	c5 f8 77             	vzeroupper 
  402904:	e8 b7 ed ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402909:	8b 05 41 27 00 00    	mov    0x2741(%rip),%eax        # 405050 <count>
  40290f:	03 05 3f 27 00 00    	add    0x273f(%rip),%eax        # 405054 <count+0x4>
  402915:	89 05 39 27 00 00    	mov    %eax,0x2739(%rip)        # 405054 <count+0x4>
  40291b:	03 05 37 27 00 00    	add    0x2737(%rip),%eax        # 405058 <count+0x8>
  402921:	89 05 31 27 00 00    	mov    %eax,0x2731(%rip)        # 405058 <count+0x8>
  402927:	03 05 2f 27 00 00    	add    0x272f(%rip),%eax        # 40505c <count+0xc>
  40292d:	89 05 29 27 00 00    	mov    %eax,0x2729(%rip)        # 40505c <count+0xc>
  402933:	03 05 27 27 00 00    	add    0x2727(%rip),%eax        # 405060 <count+0x10>
  402939:	89 05 21 27 00 00    	mov    %eax,0x2721(%rip)        # 405060 <count+0x10>
  40293f:	03 05 1f 27 00 00    	add    0x271f(%rip),%eax        # 405064 <count+0x14>
  402945:	89 05 19 27 00 00    	mov    %eax,0x2719(%rip)        # 405064 <count+0x14>
  40294b:	03 05 17 27 00 00    	add    0x2717(%rip),%eax        # 405068 <count+0x18>
  402951:	89 05 11 27 00 00    	mov    %eax,0x2711(%rip)        # 405068 <count+0x18>
  402957:	03 05 0f 27 00 00    	add    0x270f(%rip),%eax        # 40506c <count+0x1c>
  40295d:	89 05 09 27 00 00    	mov    %eax,0x2709(%rip)        # 40506c <count+0x1c>
  402963:	03 05 07 27 00 00    	add    0x2707(%rip),%eax        # 405070 <count+0x20>
  402969:	89 05 01 27 00 00    	mov    %eax,0x2701(%rip)        # 405070 <count+0x20>
  40296f:	01 05 ff 26 00 00    	add    %eax,0x26ff(%rip)        # 405074 <count+0x24>
  402975:	8b 1d 01 27 00 00    	mov    0x2701(%rip),%ebx        # 40507c <in+0x4>
  40297b:	48 89 d8             	mov    %rbx,%rax
  40297e:	48 0f af c5          	imul   %rbp,%rax
  402982:	48 c1 e8 2d          	shr    $0x2d,%rax
  402986:	48 89 c1             	mov    %rax,%rcx
  402989:	49 0f af cd          	imul   %r13,%rcx
  40298d:	48 c1 e9 23          	shr    $0x23,%rcx
  402991:	01 c9                	add    %ecx,%ecx
  402993:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402996:	29 c8                	sub    %ecx,%eax
  402998:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  40299f:	00 
  4029a0:	be 60 30 40 00       	mov    $0x403060,%esi
  4029a5:	ba 01 00 00 00       	mov    $0x1,%edx
  4029aa:	e8 01 e8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4029af:	48 c1 e0 20          	shl    $0x20,%rax
  4029b3:	4c 01 f0             	add    %r14,%rax
  4029b6:	48 c1 f8 1e          	sar    $0x1e,%rax
  4029ba:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  4029be:	48 83 c6 08          	add    $0x8,%rsi
  4029c2:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  4029c7:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
  4029ce:	00 00 
  4029d0:	c7 84 24 80 00 00 00 	movl   $0x2,0x80(%rsp)
  4029d7:	02 00 00 00 
  4029db:	c6 84 24 84 00 00 00 	movb   $0x1,0x84(%rsp)
  4029e2:	01 
  4029e3:	4c 89 a4 24 88 00 00 	mov    %r12,0x88(%rsp)
  4029ea:	00 
  4029eb:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
  4029f0:	89 df                	mov    %ebx,%edi
  4029f2:	b9 01 00 00 00       	mov    $0x1,%ecx
  4029f7:	e8 c4 ec ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4029fc:	8b 05 7a 26 00 00    	mov    0x267a(%rip),%eax        # 40507c <in+0x4>
  402a02:	48 0f af c5          	imul   %rbp,%rax
  402a06:	48 c1 e8 2d          	shr    $0x2d,%rax
  402a0a:	48 89 c1             	mov    %rax,%rcx
  402a0d:	49 0f af cd          	imul   %r13,%rcx
  402a11:	48 c1 e9 23          	shr    $0x23,%rcx
  402a15:	01 c9                	add    %ecx,%ecx
  402a17:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402a1a:	29 c8                	sub    %ecx,%eax
  402a1c:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402a23:	00 
  402a24:	be 60 30 40 00       	mov    $0x403060,%esi
  402a29:	48 89 df             	mov    %rbx,%rdi
  402a2c:	ba 01 00 00 00       	mov    $0x1,%edx
  402a31:	e8 7a e7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402a36:	8d 78 ff             	lea    -0x1(%rax),%edi
  402a39:	c5 fc 10 05 1f 06 00 	vmovups 0x61f(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402a40:	00 
  402a41:	c5 fc 11 84 24 10 02 	vmovups %ymm0,0x210(%rsp)
  402a48:	00 00 
  402a4a:	48 8d 94 24 10 02 00 	lea    0x210(%rsp),%rdx
  402a51:	00 
  402a52:	48 89 de             	mov    %rbx,%rsi
  402a55:	b9 01 00 00 00       	mov    $0x1,%ecx
  402a5a:	c5 f8 77             	vzeroupper 
  402a5d:	e8 5e ec ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402a62:	8b 1d 10 26 00 00    	mov    0x2610(%rip),%ebx        # 405078 <in>
  402a68:	48 89 d8             	mov    %rbx,%rax
  402a6b:	48 0f af c5          	imul   %rbp,%rax
  402a6f:	48 c1 e8 2d          	shr    $0x2d,%rax
  402a73:	48 89 c1             	mov    %rax,%rcx
  402a76:	49 0f af cd          	imul   %r13,%rcx
  402a7a:	48 c1 e9 23          	shr    $0x23,%rcx
  402a7e:	01 c9                	add    %ecx,%ecx
  402a80:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402a83:	29 c8                	sub    %ecx,%eax
  402a85:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402a8c:	00 
  402a8d:	be 60 30 40 00       	mov    $0x403060,%esi
  402a92:	ba 01 00 00 00       	mov    $0x1,%edx
  402a97:	e8 14 e7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402a9c:	48 c1 e0 20          	shl    $0x20,%rax
  402aa0:	4c 01 f0             	add    %r14,%rax
  402aa3:	48 c1 f8 1e          	sar    $0x1e,%rax
  402aa7:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402aab:	48 83 c6 08          	add    $0x8,%rsi
  402aaf:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  402ab4:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
  402abb:	00 00 
  402abd:	c7 44 24 60 02 00 00 	movl   $0x2,0x60(%rsp)
  402ac4:	00 
  402ac5:	c6 44 24 64 01       	movb   $0x1,0x64(%rsp)
  402aca:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  402acf:	48 8d 54 24 50       	lea    0x50(%rsp),%rdx
  402ad4:	89 df                	mov    %ebx,%edi
  402ad6:	b9 01 00 00 00       	mov    $0x1,%ecx
  402adb:	e8 e0 eb ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402ae0:	8b 05 92 25 00 00    	mov    0x2592(%rip),%eax        # 405078 <in>
  402ae6:	48 0f af c5          	imul   %rbp,%rax
  402aea:	48 c1 e8 2d          	shr    $0x2d,%rax
  402aee:	48 89 c1             	mov    %rax,%rcx
  402af1:	49 0f af cd          	imul   %r13,%rcx
  402af5:	48 c1 e9 23          	shr    $0x23,%rcx
  402af9:	01 c9                	add    %ecx,%ecx
  402afb:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402afe:	29 c8                	sub    %ecx,%eax
  402b00:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402b07:	00 
  402b08:	be 60 30 40 00       	mov    $0x403060,%esi
  402b0d:	48 89 df             	mov    %rbx,%rdi
  402b10:	ba 01 00 00 00       	mov    $0x1,%edx
  402b15:	e8 96 e6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402b1a:	8d 78 ff             	lea    -0x1(%rax),%edi
  402b1d:	c5 fc 10 05 3b 05 00 	vmovups 0x53b(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402b24:	00 
  402b25:	c5 fc 11 84 24 f0 01 	vmovups %ymm0,0x1f0(%rsp)
  402b2c:	00 00 
  402b2e:	48 8d 94 24 f0 01 00 	lea    0x1f0(%rsp),%rdx
  402b35:	00 
  402b36:	48 89 de             	mov    %rbx,%rsi
  402b39:	b9 01 00 00 00       	mov    $0x1,%ecx
  402b3e:	c5 f8 77             	vzeroupper 
  402b41:	e8 7a eb ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402b46:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402b4a:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402b4e:	89 05 24 25 00 00    	mov    %eax,0x2524(%rip)        # 405078 <in>
  402b54:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  402b58:	c5 fc 11 05 f0 24 00 	vmovups %ymm0,0x24f0(%rip)        # 405050 <count>
  402b5f:	00 
  402b60:	89 0d 16 25 00 00    	mov    %ecx,0x2516(%rip)        # 40507c <in+0x4>
  402b66:	48 c7 05 ff 24 00 00 	movq   $0x0,0x24ff(%rip)        # 405070 <count+0x20>
  402b6d:	00 00 00 00 
  402b71:	c1 e8 05             	shr    $0x5,%eax
  402b74:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402b7b:	48 c1 e8 27          	shr    $0x27,%rax
  402b7f:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402b85:	c1 e9 12             	shr    $0x12,%ecx
  402b88:	83 e1 fe             	and    $0xfffffffe,%ecx
  402b8b:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402b8e:	29 c8                	sub    %ecx,%eax
  402b90:	0f b7 c0             	movzwl %ax,%eax
  402b93:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402b9a:	00 
  402b9b:	be 60 30 40 00       	mov    $0x403060,%esi
  402ba0:	48 89 df             	mov    %rbx,%rdi
  402ba3:	ba 01 00 00 00       	mov    $0x1,%edx
  402ba8:	c5 f8 77             	vzeroupper 
  402bab:	e8 00 e6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402bb0:	8d 78 01             	lea    0x1(%rax),%edi
  402bb3:	c5 fc 10 05 a5 04 00 	vmovups 0x4a5(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402bba:	00 
  402bbb:	c5 fc 11 84 24 d0 01 	vmovups %ymm0,0x1d0(%rsp)
  402bc2:	00 00 
  402bc4:	48 8d 94 24 d0 01 00 	lea    0x1d0(%rsp),%rdx
  402bcb:	00 
  402bcc:	48 89 de             	mov    %rbx,%rsi
  402bcf:	b9 01 00 00 00       	mov    $0x1,%ecx
  402bd4:	c5 f8 77             	vzeroupper 
  402bd7:	e8 e4 ea ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402bdc:	8b 05 9a 24 00 00    	mov    0x249a(%rip),%eax        # 40507c <in+0x4>
  402be2:	c1 e8 05             	shr    $0x5,%eax
  402be5:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402bec:	48 c1 e8 27          	shr    $0x27,%rax
  402bf0:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402bf6:	c1 e9 12             	shr    $0x12,%ecx
  402bf9:	83 e1 fe             	and    $0xfffffffe,%ecx
  402bfc:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402bff:	29 c8                	sub    %ecx,%eax
  402c01:	0f b7 c0             	movzwl %ax,%eax
  402c04:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402c0b:	00 
  402c0c:	be 60 30 40 00       	mov    $0x403060,%esi
  402c11:	48 89 df             	mov    %rbx,%rdi
  402c14:	ba 01 00 00 00       	mov    $0x1,%edx
  402c19:	e8 92 e5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402c1e:	8d 78 01             	lea    0x1(%rax),%edi
  402c21:	c5 fc 10 05 37 04 00 	vmovups 0x437(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402c28:	00 
  402c29:	c5 fc 11 84 24 b0 01 	vmovups %ymm0,0x1b0(%rsp)
  402c30:	00 00 
  402c32:	48 8d 94 24 b0 01 00 	lea    0x1b0(%rsp),%rdx
  402c39:	00 
  402c3a:	48 89 de             	mov    %rbx,%rsi
  402c3d:	b9 01 00 00 00       	mov    $0x1,%ecx
  402c42:	c5 f8 77             	vzeroupper 
  402c45:	e8 76 ea ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402c4a:	8b 05 00 24 00 00    	mov    0x2400(%rip),%eax        # 405050 <count>
  402c50:	03 05 fe 23 00 00    	add    0x23fe(%rip),%eax        # 405054 <count+0x4>
  402c56:	89 05 f8 23 00 00    	mov    %eax,0x23f8(%rip)        # 405054 <count+0x4>
  402c5c:	03 05 f6 23 00 00    	add    0x23f6(%rip),%eax        # 405058 <count+0x8>
  402c62:	89 05 f0 23 00 00    	mov    %eax,0x23f0(%rip)        # 405058 <count+0x8>
  402c68:	03 05 ee 23 00 00    	add    0x23ee(%rip),%eax        # 40505c <count+0xc>
  402c6e:	89 05 e8 23 00 00    	mov    %eax,0x23e8(%rip)        # 40505c <count+0xc>
  402c74:	03 05 e6 23 00 00    	add    0x23e6(%rip),%eax        # 405060 <count+0x10>
  402c7a:	89 05 e0 23 00 00    	mov    %eax,0x23e0(%rip)        # 405060 <count+0x10>
  402c80:	03 05 de 23 00 00    	add    0x23de(%rip),%eax        # 405064 <count+0x14>
  402c86:	89 05 d8 23 00 00    	mov    %eax,0x23d8(%rip)        # 405064 <count+0x14>
  402c8c:	03 05 d6 23 00 00    	add    0x23d6(%rip),%eax        # 405068 <count+0x18>
  402c92:	89 05 d0 23 00 00    	mov    %eax,0x23d0(%rip)        # 405068 <count+0x18>
  402c98:	03 05 ce 23 00 00    	add    0x23ce(%rip),%eax        # 40506c <count+0x1c>
  402c9e:	89 05 c8 23 00 00    	mov    %eax,0x23c8(%rip)        # 40506c <count+0x1c>
  402ca4:	03 05 c6 23 00 00    	add    0x23c6(%rip),%eax        # 405070 <count+0x20>
  402caa:	89 05 c0 23 00 00    	mov    %eax,0x23c0(%rip)        # 405070 <count+0x20>
  402cb0:	01 05 be 23 00 00    	add    %eax,0x23be(%rip)        # 405074 <count+0x24>
  402cb6:	8b 1d c0 23 00 00    	mov    0x23c0(%rip),%ebx        # 40507c <in+0x4>
  402cbc:	89 d8                	mov    %ebx,%eax
  402cbe:	c1 e8 05             	shr    $0x5,%eax
  402cc1:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402cc8:	48 c1 e8 27          	shr    $0x27,%rax
  402ccc:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402cd2:	c1 e9 12             	shr    $0x12,%ecx
  402cd5:	83 e1 fe             	and    $0xfffffffe,%ecx
  402cd8:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402cdb:	29 c8                	sub    %ecx,%eax
  402cdd:	0f b7 c0             	movzwl %ax,%eax
  402ce0:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402ce7:	00 
  402ce8:	be 60 30 40 00       	mov    $0x403060,%esi
  402ced:	ba 01 00 00 00       	mov    $0x1,%edx
  402cf2:	e8 b9 e4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402cf7:	48 c1 e0 20          	shl    $0x20,%rax
  402cfb:	4c 01 f0             	add    %r14,%rax
  402cfe:	48 c1 f8 1e          	sar    $0x1e,%rax
  402d02:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402d06:	48 83 c6 08          	add    $0x8,%rsi
  402d0a:	4c 89 7c 24 30       	mov    %r15,0x30(%rsp)
  402d0f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402d16:	00 00 
  402d18:	c7 44 24 40 02 00 00 	movl   $0x2,0x40(%rsp)
  402d1f:	00 
  402d20:	c6 44 24 44 01       	movb   $0x1,0x44(%rsp)
  402d25:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
  402d2a:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  402d2f:	89 df                	mov    %ebx,%edi
  402d31:	b9 01 00 00 00       	mov    $0x1,%ecx
  402d36:	e8 85 e9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402d3b:	8b 05 3b 23 00 00    	mov    0x233b(%rip),%eax        # 40507c <in+0x4>
  402d41:	c1 e8 05             	shr    $0x5,%eax
  402d44:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402d4b:	48 c1 e8 27          	shr    $0x27,%rax
  402d4f:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402d55:	c1 e9 12             	shr    $0x12,%ecx
  402d58:	83 e1 fe             	and    $0xfffffffe,%ecx
  402d5b:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402d5e:	29 c8                	sub    %ecx,%eax
  402d60:	0f b7 c0             	movzwl %ax,%eax
  402d63:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402d6a:	00 
  402d6b:	be 60 30 40 00       	mov    $0x403060,%esi
  402d70:	48 89 df             	mov    %rbx,%rdi
  402d73:	ba 01 00 00 00       	mov    $0x1,%edx
  402d78:	e8 33 e4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402d7d:	8d 78 ff             	lea    -0x1(%rax),%edi
  402d80:	c5 fc 10 05 d8 02 00 	vmovups 0x2d8(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402d87:	00 
  402d88:	c5 fc 11 84 24 90 01 	vmovups %ymm0,0x190(%rsp)
  402d8f:	00 00 
  402d91:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  402d98:	00 
  402d99:	48 89 de             	mov    %rbx,%rsi
  402d9c:	b9 01 00 00 00       	mov    $0x1,%ecx
  402da1:	c5 f8 77             	vzeroupper 
  402da4:	e8 17 e9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402da9:	8b 1d c9 22 00 00    	mov    0x22c9(%rip),%ebx        # 405078 <in>
  402daf:	89 d8                	mov    %ebx,%eax
  402db1:	c1 e8 05             	shr    $0x5,%eax
  402db4:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402dbb:	48 c1 e8 27          	shr    $0x27,%rax
  402dbf:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402dc5:	c1 e9 12             	shr    $0x12,%ecx
  402dc8:	83 e1 fe             	and    $0xfffffffe,%ecx
  402dcb:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402dce:	29 c8                	sub    %ecx,%eax
  402dd0:	0f b7 c0             	movzwl %ax,%eax
  402dd3:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402dda:	00 
  402ddb:	be 60 30 40 00       	mov    $0x403060,%esi
  402de0:	ba 01 00 00 00       	mov    $0x1,%edx
  402de5:	e8 c6 e3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402dea:	48 c1 e0 20          	shl    $0x20,%rax
  402dee:	4c 01 f0             	add    %r14,%rax
  402df1:	48 c1 f8 1e          	sar    $0x1e,%rax
  402df5:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402df9:	48 83 c6 08          	add    $0x8,%rsi
  402dfd:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  402e02:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  402e09:	00 00 
  402e0b:	c7 44 24 20 02 00 00 	movl   $0x2,0x20(%rsp)
  402e12:	00 
  402e13:	c6 44 24 24 01       	movb   $0x1,0x24(%rsp)
  402e18:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
  402e1d:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  402e22:	89 df                	mov    %ebx,%edi
  402e24:	b9 01 00 00 00       	mov    $0x1,%ecx
  402e29:	e8 92 e8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402e2e:	8b 05 44 22 00 00    	mov    0x2244(%rip),%eax        # 405078 <in>
  402e34:	c1 e8 05             	shr    $0x5,%eax
  402e37:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402e3e:	48 c1 e8 27          	shr    $0x27,%rax
  402e42:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402e48:	c1 e9 12             	shr    $0x12,%ecx
  402e4b:	83 e1 fe             	and    $0xfffffffe,%ecx
  402e4e:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402e51:	29 c8                	sub    %ecx,%eax
  402e53:	0f b7 c0             	movzwl %ax,%eax
  402e56:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402e5d:	00 
  402e5e:	be 60 30 40 00       	mov    $0x403060,%esi
  402e63:	48 89 df             	mov    %rbx,%rdi
  402e66:	ba 01 00 00 00       	mov    $0x1,%edx
  402e6b:	e8 40 e3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402e70:	8d 78 ff             	lea    -0x1(%rax),%edi
  402e73:	c5 fc 10 05 e5 01 00 	vmovups 0x1e5(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402e7a:	00 
  402e7b:	c5 fc 11 84 24 70 01 	vmovups %ymm0,0x170(%rsp)
  402e82:	00 00 
  402e84:	48 8d 94 24 70 01 00 	lea    0x170(%rsp),%rdx
  402e8b:	00 
  402e8c:	48 89 de             	mov    %rbx,%rsi
  402e8f:	b9 01 00 00 00       	mov    $0x1,%ecx
  402e94:	c5 f8 77             	vzeroupper 
  402e97:	e8 24 e8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402e9c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  402ea1:	48 89 05 d0 21 00 00 	mov    %rax,0x21d0(%rip)        # 405078 <in>
  402ea8:	be 78 50 40 00       	mov    $0x405078,%esi
  402ead:	ba 08 00 00 00       	mov    $0x8,%edx
  402eb2:	bf 01 00 00 00       	mov    $0x1,%edi
  402eb7:	e8 74 e1 ff ff       	callq  401030 <write@plt>
  402ebc:	31 c0                	xor    %eax,%eax
  402ebe:	48 81 c4 38 04 00 00 	add    $0x438,%rsp
  402ec5:	5b                   	pop    %rbx
  402ec6:	41 5c                	pop    %r12
  402ec8:	41 5d                	pop    %r13
  402eca:	41 5e                	pop    %r14
  402ecc:	41 5f                	pop    %r15
  402ece:	5d                   	pop    %rbp
  402ecf:	c3                   	retq   

0000000000402ed0 <__libc_csu_init>:
  402ed0:	f3 0f 1e fa          	endbr64 
  402ed4:	41 57                	push   %r15
  402ed6:	4c 8d 3d 33 1f 00 00 	lea    0x1f33(%rip),%r15        # 404e10 <__frame_dummy_init_array_entry>
  402edd:	41 56                	push   %r14
  402edf:	49 89 d6             	mov    %rdx,%r14
  402ee2:	41 55                	push   %r13
  402ee4:	49 89 f5             	mov    %rsi,%r13
  402ee7:	41 54                	push   %r12
  402ee9:	41 89 fc             	mov    %edi,%r12d
  402eec:	55                   	push   %rbp
  402eed:	48 8d 2d 24 1f 00 00 	lea    0x1f24(%rip),%rbp        # 404e18 <__do_global_dtors_aux_fini_array_entry>
  402ef4:	53                   	push   %rbx
  402ef5:	4c 29 fd             	sub    %r15,%rbp
  402ef8:	48 83 ec 08          	sub    $0x8,%rsp
  402efc:	e8 ff e0 ff ff       	callq  401000 <_init>
  402f01:	48 c1 fd 03          	sar    $0x3,%rbp
  402f05:	74 1f                	je     402f26 <__libc_csu_init+0x56>
  402f07:	31 db                	xor    %ebx,%ebx
  402f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402f10:	4c 89 f2             	mov    %r14,%rdx
  402f13:	4c 89 ee             	mov    %r13,%rsi
  402f16:	44 89 e7             	mov    %r12d,%edi
  402f19:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  402f1d:	48 83 c3 01          	add    $0x1,%rbx
  402f21:	48 39 dd             	cmp    %rbx,%rbp
  402f24:	75 ea                	jne    402f10 <__libc_csu_init+0x40>
  402f26:	48 83 c4 08          	add    $0x8,%rsp
  402f2a:	5b                   	pop    %rbx
  402f2b:	5d                   	pop    %rbp
  402f2c:	41 5c                	pop    %r12
  402f2e:	41 5d                	pop    %r13
  402f30:	41 5e                	pop    %r14
  402f32:	41 5f                	pop    %r15
  402f34:	c3                   	retq   
  402f35:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402f3c:	00 00 00 00 

0000000000402f40 <__libc_csu_fini>:
  402f40:	f3 0f 1e fa          	endbr64 
  402f44:	c3                   	retq   

Disassembly of section .fini:

0000000000402f48 <_fini>:
  402f48:	f3 0f 1e fa          	endbr64 
  402f4c:	48 83 ec 08          	sub    $0x8,%rsp
  402f50:	48 83 c4 08          	add    $0x8,%rsp
  402f54:	c3                   	retq   

Disassembly of section .rodata:

0000000000403000 <_IO_stdin_used>:
  403000:	01 00                	add    %eax,(%rax)
  403002:	02 00                	add    (%rax),%al
	...
  403010:	10 00                	adc    %al,(%rax)
  403012:	00 00                	add    %al,(%rax)
  403014:	18 00                	sbb    %al,(%rax)
	...
  40301e:	00 00                	add    %al,(%rax)
  403020:	08 00                	or     %al,(%rax)
  403022:	00 00                	add    %al,(%rax)
  403024:	00 00                	add    %al,(%rax)
  403026:	00 00                	add    %al,(%rax)
  403028:	10 00                	adc    %al,(%rax)
  40302a:	00 00                	add    %al,(%rax)
  40302c:	00 00                	add    %al,(%rax)
  40302e:	00 00                	add    %al,(%rax)
  403030:	20 00                	and    %al,(%rax)
	...
  40305e:	00 00                	add    %al,(%rax)
  403060:	50                   	push   %rax
  403061:	50                   	push   %rax
  403062:	40 00 00             	add    %al,(%rax)
	...
  40306d:	00 00                	add    %al,(%rax)
  40306f:	00 0a                	add    %cl,(%rdx)
  403071:	00 00                	add    %al,(%rax)
  403073:	00 01                	add    %al,(%rcx)
  403075:	00 00                	add    %al,(%rax)
  403077:	00 00                	add    %al,(%rax)
  403079:	00 00                	add    %al,(%rax)
  40307b:	00 24 00             	add    %ah,(%rax,%rax,1)
	...

Disassembly of section .eh_frame_hdr:

0000000000403080 <__GNU_EH_FRAME_HDR>:
  403080:	01 1b                	add    %ebx,(%rbx)
  403082:	03 3b                	add    (%rbx),%edi
  403084:	04 01                	add    $0x1,%al
  403086:	00 00                	add    %al,(%rax)
  403088:	1f                   	(bad)  
  403089:	00 00                	add    %al,(%rax)
  40308b:	00 a0 df ff ff 48    	add    %ah,0x48ffffdf(%rax)
  403091:	01 00                	add    %eax,(%rax)
  403093:	00 d0                	add    %dl,%al
  403095:	df ff                	(bad)  
  403097:	ff 20                	jmpq   *(%rax)
  403099:	01 00                	add    %eax,(%rax)
  40309b:	00 00                	add    %al,(%rax)
  40309d:	e0 ff                	loopne 40309e <__GNU_EH_FRAME_HDR+0x1e>
  40309f:	ff 34 01             	pushq  (%rcx,%rax,1)
  4030a2:	00 00                	add    %al,(%rax)
  4030a4:	c0 e0 ff             	shl    $0xff,%al
  4030a7:	ff 70 01             	pushq  0x1(%rax)
  4030aa:	00 00                	add    %al,(%rax)
  4030ac:	e0 e0                	loopne 40308e <__GNU_EH_FRAME_HDR+0xe>
  4030ae:	ff                   	(bad)  
  4030af:	ff 84 01 00 00 10 e1 	incl   -0x1ef00000(%rcx,%rax,1)
  4030b6:	ff                   	(bad)  
  4030b7:	ff 98 01 00 00 30    	lcall  *0x30000001(%rax)
  4030bd:	e1 ff                	loope  4030be <__GNU_EH_FRAME_HDR+0x3e>
  4030bf:	ff ac 01 00 00 40 e4 	ljmp   *-0x1bc00000(%rcx,%rax,1)
  4030c6:	ff                   	(bad)  
  4030c7:	ff d0                	callq  *%rax
  4030c9:	01 00                	add    %eax,(%rax)
  4030cb:	00 50 e4             	add    %dl,-0x1c(%rax)
  4030ce:	ff                   	(bad)  
  4030cf:	ff e4                	jmpq   *%rsp
  4030d1:	01 00                	add    %eax,(%rax)
  4030d3:	00 70 e4             	add    %dh,-0x1c(%rax)
  4030d6:	ff                   	(bad)  
  4030d7:	ff                   	(bad)  
  4030d8:	f8                   	clc    
  4030d9:	01 00                	add    %eax,(%rax)
  4030db:	00 90 e4 ff ff 18    	add    %dl,0x18ffffe4(%rax)
  4030e1:	02 00                	add    (%rax),%al
  4030e3:	00 b0 e4 ff ff 38    	add    %dh,0x38ffffe4(%rax)
  4030e9:	02 00                	add    (%rax),%al
  4030eb:	00 d0                	add    %dl,%al
  4030ed:	e4 ff                	in     $0xff,%al
  4030ef:	ff 58 02             	lcall  *0x2(%rax)
  4030f2:	00 00                	add    %al,(%rax)
  4030f4:	f0 e4 ff             	lock in $0xff,%al
  4030f7:	ff                   	(bad)  
  4030f8:	78 02                	js     4030fc <__GNU_EH_FRAME_HDR+0x7c>
  4030fa:	00 00                	add    %al,(%rax)
  4030fc:	10 e5                	adc    %ah,%ch
  4030fe:	ff                   	(bad)  
  4030ff:	ff 98 02 00 00 30    	lcall  *0x30000002(%rax)
  403105:	e5 ff                	in     $0xff,%eax
  403107:	ff                   	(bad)  
  403108:	b8 02 00 00 40       	mov    $0x40000002,%eax
  40310d:	e6 ff                	out    %al,$0xff
  40310f:	ff cc                	dec    %esp
  403111:	02 00                	add    (%rax),%al
  403113:	00 50 e7             	add    %dl,-0x19(%rax)
  403116:	ff                   	(bad)  
  403117:	ff e0                	jmpq   *%rax
  403119:	02 00                	add    (%rax),%al
  40311b:	00 60 e8             	add    %ah,-0x18(%rax)
  40311e:	ff                   	(bad)  
  40311f:	ff f4                	push   %rsp
  403121:	02 00                	add    (%rax),%al
  403123:	00 70 e9             	add    %dh,-0x17(%rax)
  403126:	ff                   	(bad)  
  403127:	ff 08                	decl   (%rax)
  403129:	03 00                	add    (%rax),%eax
  40312b:	00 90 e9 ff ff 1c    	add    %dl,0x1cffffe9(%rax)
  403131:	03 00                	add    (%rax),%eax
  403133:	00 b0 e9 ff ff 30    	add    %dh,0x30ffffe9(%rax)
  403139:	03 00                	add    (%rax),%eax
  40313b:	00 d0                	add    %dl,%al
  40313d:	e9 ff ff 44 03       	jmpq   3853141 <_end+0x344e0c1>
  403142:	00 00                	add    %al,(%rax)
  403144:	f0 e9 ff ff 58 03    	lock jmpq 3993149 <_end+0x358e0c9>
  40314a:	00 00                	add    %al,(%rax)
  40314c:	10 ea                	adc    %ch,%dl
  40314e:	ff                   	(bad)  
  40314f:	ff 6c 03 00          	ljmp   *0x0(%rbx,%rax,1)
  403153:	00 30                	add    %dh,(%rax)
  403155:	ea                   	(bad)  
  403156:	ff                   	(bad)  
  403157:	ff 80 03 00 00 60    	incl   0x60000003(%rax)
  40315d:	ea                   	(bad)  
  40315e:	ff                   	(bad)  
  40315f:	ff 94 03 00 00 90 ea 	callq  *-0x15700000(%rbx,%rax,1)
  403166:	ff                   	(bad)  
  403167:	ff a8 03 00 00 a0    	ljmp   *-0x5ffffffd(%rax)
  40316d:	ea                   	(bad)  
  40316e:	ff                   	(bad)  
  40316f:	ff                   	(bad)  
  403170:	bc 03 00 00 50       	mov    $0x50000003,%esp
  403175:	fe                   	(bad)  
  403176:	ff                   	(bad)  
  403177:	ff 08                	decl   (%rax)
  403179:	04 00                	add    $0x0,%al
  40317b:	00 c0                	add    %al,%al
  40317d:	fe                   	(bad)  
  40317e:	ff                   	(bad)  
  40317f:	ff 50 04             	callq  *0x4(%rax)
	...

Disassembly of section .eh_frame:

0000000000403188 <__FRAME_END__-0x35c>:
  403188:	14 00                	adc    $0x0,%al
  40318a:	00 00                	add    %al,(%rax)
  40318c:	00 00                	add    %al,(%rax)
  40318e:	00 00                	add    %al,(%rax)
  403190:	01 7a 52             	add    %edi,0x52(%rdx)
  403193:	00 01                	add    %al,(%rcx)
  403195:	78 10                	js     4031a7 <__GNU_EH_FRAME_HDR+0x127>
  403197:	01 1b                	add    %ebx,(%rbx)
  403199:	0c 07                	or     $0x7,%al
  40319b:	08 90 01 00 00 10    	or     %dl,0x10000001(%rax)
  4031a1:	00 00                	add    %al,(%rax)
  4031a3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4031a6:	00 00                	add    %al,(%rax)
  4031a8:	a8 de                	test   $0xde,%al
  4031aa:	ff                   	(bad)  
  4031ab:	ff 2f                	ljmp   *(%rdi)
  4031ad:	00 00                	add    %al,(%rax)
  4031af:	00 00                	add    %al,(%rax)
  4031b1:	44 07                	rex.R (bad) 
  4031b3:	10 10                	adc    %dl,(%rax)
  4031b5:	00 00                	add    %al,(%rax)
  4031b7:	00 30                	add    %dh,(%rax)
  4031b9:	00 00                	add    %al,(%rax)
  4031bb:	00 c4                	add    %al,%ah
  4031bd:	de ff                	fdivrp %st,%st(7)
  4031bf:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 4031c5 <__GNU_EH_FRAME_HDR+0x145>
  4031c5:	00 00                	add    %al,(%rax)
  4031c7:	00 24 00             	add    %ah,(%rax,%rax,1)
  4031ca:	00 00                	add    %al,(%rax)
  4031cc:	44 00 00             	add    %r8b,(%rax)
  4031cf:	00 50 de             	add    %dl,-0x22(%rax)
  4031d2:	ff                   	(bad)  
  4031d3:	ff 30                	pushq  (%rax)
  4031d5:	00 00                	add    %al,(%rax)
  4031d7:	00 00                	add    %al,(%rax)
  4031d9:	0e                   	(bad)  
  4031da:	10 46 0e             	adc    %al,0xe(%rsi)
  4031dd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4031e0:	0b 77 08             	or     0x8(%rdi),%esi
  4031e3:	80 00 3f             	addb   $0x3f,(%rax)
  4031e6:	1a 3b                	sbb    (%rbx),%bh
  4031e8:	2a 33                	sub    (%rbx),%dh
  4031ea:	24 22                	and    $0x22,%al
  4031ec:	00 00                	add    %al,(%rax)
  4031ee:	00 00                	add    %al,(%rax)
  4031f0:	10 00                	adc    %al,(%rax)
  4031f2:	00 00                	add    %al,(%rax)
  4031f4:	6c                   	insb   (%dx),%es:(%rdi)
  4031f5:	00 00                	add    %al,(%rax)
  4031f7:	00 48 df             	add    %cl,-0x21(%rax)
  4031fa:	ff                   	(bad)  
  4031fb:	ff 17                	callq  *(%rdi)
  4031fd:	00 00                	add    %al,(%rax)
  4031ff:	00 00                	add    %al,(%rax)
  403201:	00 00                	add    %al,(%rax)
  403203:	00 10                	add    %dl,(%rax)
  403205:	00 00                	add    %al,(%rax)
  403207:	00 80 00 00 00 54    	add    %al,0x54000000(%rax)
  40320d:	df ff                	(bad)  
  40320f:	ff 24 00             	jmpq   *(%rax,%rax,1)
  403212:	00 00                	add    %al,(%rax)
  403214:	00 00                	add    %al,(%rax)
  403216:	00 00                	add    %al,(%rax)
  403218:	10 00                	adc    %al,(%rax)
  40321a:	00 00                	add    %al,(%rax)
  40321c:	94                   	xchg   %eax,%esp
  40321d:	00 00                	add    %al,(%rax)
  40321f:	00 70 df             	add    %dh,-0x21(%rax)
  403222:	ff                   	(bad)  
  403223:	ff 1c 00             	lcall  *(%rax,%rax,1)
  403226:	00 00                	add    %al,(%rax)
  403228:	00 00                	add    %al,(%rax)
  40322a:	00 00                	add    %al,(%rax)
  40322c:	20 00                	and    %al,(%rax)
  40322e:	00 00                	add    %al,(%rax)
  403230:	a8 00                	test   $0x0,%al
  403232:	00 00                	add    %al,(%rax)
  403234:	7c df                	jl     403215 <__GNU_EH_FRAME_HDR+0x195>
  403236:	ff                   	(bad)  
  403237:	ff 01                	incl   (%rcx)
  403239:	03 00                	add    (%rax),%eax
  40323b:	00 00                	add    %al,(%rax)
  40323d:	42 0e                	rex.X (bad) 
  40323f:	10 41 0e             	adc    %al,0xe(%rcx)
  403242:	18 83 03 8e 02 03    	sbb    %al,0x3028e03(%rbx)
  403248:	f8                   	clc    
  403249:	02 0e                	add    (%rsi),%cl
  40324b:	10 42 0e             	adc    %al,0xe(%rdx)
  40324e:	08 00                	or     %al,(%rax)
  403250:	10 00                	adc    %al,(%rax)
  403252:	00 00                	add    %al,(%rax)
  403254:	cc                   	int3   
  403255:	00 00                	add    %al,(%rax)
  403257:	00 68 e2             	add    %ch,-0x1e(%rax)
  40325a:	ff                   	(bad)  
  40325b:	ff 0e                	decl   (%rsi)
  40325d:	00 00                	add    %al,(%rax)
  40325f:	00 00                	add    %al,(%rax)
  403261:	00 00                	add    %al,(%rax)
  403263:	00 10                	add    %dl,(%rax)
  403265:	00 00                	add    %al,(%rax)
  403267:	00 e0                	add    %ah,%al
  403269:	00 00                	add    %al,(%rax)
  40326b:	00 64 e2 ff          	add    %ah,-0x1(%rdx,%riz,8)
  40326f:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 403275 <__GNU_EH_FRAME_HDR+0x1f5>
  403275:	00 00                	add    %al,(%rax)
  403277:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40327a:	00 00                	add    %al,(%rax)
  40327c:	f4                   	hlt    
  40327d:	00 00                	add    %al,(%rax)
  40327f:	00 70 e2             	add    %dh,-0x1e(%rax)
  403282:	ff                   	(bad)  
  403283:	ff 12                	callq  *(%rdx)
  403285:	00 00                	add    %al,(%rax)
  403287:	00 00                	add    %al,(%rax)
  403289:	41 0e                	rex.B (bad) 
  40328b:	10 49 0e             	adc    %cl,0xe(%rcx)
  40328e:	08 41 0e             	or     %al,0xe(%rcx)
  403291:	10 46 0e             	adc    %al,0xe(%rsi)
  403294:	08 00                	or     %al,(%rax)
  403296:	00 00                	add    %al,(%rax)
  403298:	1c 00                	sbb    $0x0,%al
  40329a:	00 00                	add    %al,(%rax)
  40329c:	14 01                	adc    $0x1,%al
  40329e:	00 00                	add    %al,(%rax)
  4032a0:	70 e2                	jo     403284 <__GNU_EH_FRAME_HDR+0x204>
  4032a2:	ff                   	(bad)  
  4032a3:	ff 12                	callq  *(%rdx)
  4032a5:	00 00                	add    %al,(%rax)
  4032a7:	00 00                	add    %al,(%rax)
  4032a9:	41 0e                	rex.B (bad) 
  4032ab:	10 49 0e             	adc    %cl,0xe(%rcx)
  4032ae:	08 41 0e             	or     %al,0xe(%rcx)
  4032b1:	10 46 0e             	adc    %al,0xe(%rsi)
  4032b4:	08 00                	or     %al,(%rax)
  4032b6:	00 00                	add    %al,(%rax)
  4032b8:	1c 00                	sbb    $0x0,%al
  4032ba:	00 00                	add    %al,(%rax)
  4032bc:	34 01                	xor    $0x1,%al
  4032be:	00 00                	add    %al,(%rax)
  4032c0:	70 e2                	jo     4032a4 <__GNU_EH_FRAME_HDR+0x224>
  4032c2:	ff                   	(bad)  
  4032c3:	ff 12                	callq  *(%rdx)
  4032c5:	00 00                	add    %al,(%rax)
  4032c7:	00 00                	add    %al,(%rax)
  4032c9:	41 0e                	rex.B (bad) 
  4032cb:	10 49 0e             	adc    %cl,0xe(%rcx)
  4032ce:	08 41 0e             	or     %al,0xe(%rcx)
  4032d1:	10 46 0e             	adc    %al,0xe(%rsi)
  4032d4:	08 00                	or     %al,(%rax)
  4032d6:	00 00                	add    %al,(%rax)
  4032d8:	1c 00                	sbb    $0x0,%al
  4032da:	00 00                	add    %al,(%rax)
  4032dc:	54                   	push   %rsp
  4032dd:	01 00                	add    %eax,(%rax)
  4032df:	00 70 e2             	add    %dh,-0x1e(%rax)
  4032e2:	ff                   	(bad)  
  4032e3:	ff 19                	lcall  *(%rcx)
  4032e5:	00 00                	add    %al,(%rax)
  4032e7:	00 00                	add    %al,(%rax)
  4032e9:	41 0e                	rex.B (bad) 
  4032eb:	10 50 0e             	adc    %dl,0xe(%rax)
  4032ee:	08 41 0e             	or     %al,0xe(%rcx)
  4032f1:	10 46 0e             	adc    %al,0xe(%rsi)
  4032f4:	08 00                	or     %al,(%rax)
  4032f6:	00 00                	add    %al,(%rax)
  4032f8:	1c 00                	sbb    $0x0,%al
  4032fa:	00 00                	add    %al,(%rax)
  4032fc:	74 01                	je     4032ff <__GNU_EH_FRAME_HDR+0x27f>
  4032fe:	00 00                	add    %al,(%rax)
  403300:	70 e2                	jo     4032e4 <__GNU_EH_FRAME_HDR+0x264>
  403302:	ff                   	(bad)  
  403303:	ff 19                	lcall  *(%rcx)
  403305:	00 00                	add    %al,(%rax)
  403307:	00 00                	add    %al,(%rax)
  403309:	41 0e                	rex.B (bad) 
  40330b:	10 50 0e             	adc    %dl,0xe(%rax)
  40330e:	08 41 0e             	or     %al,0xe(%rcx)
  403311:	10 46 0e             	adc    %al,0xe(%rsi)
  403314:	08 00                	or     %al,(%rax)
  403316:	00 00                	add    %al,(%rax)
  403318:	1c 00                	sbb    $0x0,%al
  40331a:	00 00                	add    %al,(%rax)
  40331c:	94                   	xchg   %eax,%esp
  40331d:	01 00                	add    %eax,(%rax)
  40331f:	00 70 e2             	add    %dh,-0x1e(%rax)
  403322:	ff                   	(bad)  
  403323:	ff 19                	lcall  *(%rcx)
  403325:	00 00                	add    %al,(%rax)
  403327:	00 00                	add    %al,(%rax)
  403329:	41 0e                	rex.B (bad) 
  40332b:	10 50 0e             	adc    %dl,0xe(%rax)
  40332e:	08 41 0e             	or     %al,0xe(%rcx)
  403331:	10 46 0e             	adc    %al,0xe(%rsi)
  403334:	08 00                	or     %al,(%rax)
  403336:	00 00                	add    %al,(%rax)
  403338:	10 00                	adc    %al,(%rax)
  40333a:	00 00                	add    %al,(%rax)
  40333c:	b4 01                	mov    $0x1,%ah
  40333e:	00 00                	add    %al,(%rax)
  403340:	70 e2                	jo     403324 <__GNU_EH_FRAME_HDR+0x2a4>
  403342:	ff                   	(bad)  
  403343:	ff 02                	incl   (%rdx)
  403345:	01 00                	add    %eax,(%rax)
  403347:	00 00                	add    %al,(%rax)
  403349:	00 00                	add    %al,(%rax)
  40334b:	00 10                	add    %dl,(%rax)
  40334d:	00 00                	add    %al,(%rax)
  40334f:	00 c8                	add    %cl,%al
  403351:	01 00                	add    %eax,(%rax)
  403353:	00 6c e3 ff          	add    %ch,-0x1(%rbx,%riz,8)
  403357:	ff 02                	incl   (%rdx)
  403359:	01 00                	add    %eax,(%rax)
  40335b:	00 00                	add    %al,(%rax)
  40335d:	00 00                	add    %al,(%rax)
  40335f:	00 10                	add    %dl,(%rax)
  403361:	00 00                	add    %al,(%rax)
  403363:	00 dc                	add    %bl,%ah
  403365:	01 00                	add    %eax,(%rax)
  403367:	00 68 e4             	add    %ch,-0x1c(%rax)
  40336a:	ff                   	(bad)  
  40336b:	ff 02                	incl   (%rdx)
  40336d:	01 00                	add    %eax,(%rax)
  40336f:	00 00                	add    %al,(%rax)
  403371:	00 00                	add    %al,(%rax)
  403373:	00 10                	add    %dl,(%rax)
  403375:	00 00                	add    %al,(%rax)
  403377:	00 f0                	add    %dh,%al
  403379:	01 00                	add    %eax,(%rax)
  40337b:	00 64 e5 ff          	add    %ah,-0x1(%rbp,%riz,8)
  40337f:	ff 02                	incl   (%rdx)
  403381:	01 00                	add    %eax,(%rax)
  403383:	00 00                	add    %al,(%rax)
  403385:	00 00                	add    %al,(%rax)
  403387:	00 10                	add    %dl,(%rax)
  403389:	00 00                	add    %al,(%rax)
  40338b:	00 04 02             	add    %al,(%rdx,%rax,1)
  40338e:	00 00                	add    %al,(%rax)
  403390:	60                   	(bad)  
  403391:	e6 ff                	out    %al,$0xff
  403393:	ff 14 00             	callq  *(%rax,%rax,1)
  403396:	00 00                	add    %al,(%rax)
  403398:	00 00                	add    %al,(%rax)
  40339a:	00 00                	add    %al,(%rax)
  40339c:	10 00                	adc    %al,(%rax)
  40339e:	00 00                	add    %al,(%rax)
  4033a0:	18 02                	sbb    %al,(%rdx)
  4033a2:	00 00                	add    %al,(%rax)
  4033a4:	6c                   	insb   (%dx),%es:(%rdi)
  4033a5:	e6 ff                	out    %al,$0xff
  4033a7:	ff 13                	callq  *(%rbx)
  4033a9:	00 00                	add    %al,(%rax)
  4033ab:	00 00                	add    %al,(%rax)
  4033ad:	00 00                	add    %al,(%rax)
  4033af:	00 10                	add    %dl,(%rax)
  4033b1:	00 00                	add    %al,(%rax)
  4033b3:	00 2c 02             	add    %ch,(%rdx,%rax,1)
  4033b6:	00 00                	add    %al,(%rax)
  4033b8:	78 e6                	js     4033a0 <__GNU_EH_FRAME_HDR+0x320>
  4033ba:	ff                   	(bad)  
  4033bb:	ff 17                	callq  *(%rdi)
  4033bd:	00 00                	add    %al,(%rax)
  4033bf:	00 00                	add    %al,(%rax)
  4033c1:	00 00                	add    %al,(%rax)
  4033c3:	00 10                	add    %dl,(%rax)
  4033c5:	00 00                	add    %al,(%rax)
  4033c7:	00 40 02             	add    %al,0x2(%rax)
  4033ca:	00 00                	add    %al,(%rax)
  4033cc:	84 e6                	test   %ah,%dh
  4033ce:	ff                   	(bad)  
  4033cf:	ff 18                	lcall  *(%rax)
  4033d1:	00 00                	add    %al,(%rax)
  4033d3:	00 00                	add    %al,(%rax)
  4033d5:	00 00                	add    %al,(%rax)
  4033d7:	00 10                	add    %dl,(%rax)
  4033d9:	00 00                	add    %al,(%rax)
  4033db:	00 54 02 00          	add    %dl,0x0(%rdx,%rax,1)
  4033df:	00 90 e6 ff ff 20    	add    %dl,0x20ffffe6(%rax)
  4033e5:	00 00                	add    %al,(%rax)
  4033e7:	00 00                	add    %al,(%rax)
  4033e9:	00 00                	add    %al,(%rax)
  4033eb:	00 10                	add    %dl,(%rax)
  4033ed:	00 00                	add    %al,(%rax)
  4033ef:	00 68 02             	add    %ch,0x2(%rax)
  4033f2:	00 00                	add    %al,(%rax)
  4033f4:	9c                   	pushfq 
  4033f5:	e6 ff                	out    %al,$0xff
  4033f7:	ff 1e                	lcall  *(%rsi)
  4033f9:	00 00                	add    %al,(%rax)
  4033fb:	00 00                	add    %al,(%rax)
  4033fd:	00 00                	add    %al,(%rax)
  4033ff:	00 10                	add    %dl,(%rax)
  403401:	00 00                	add    %al,(%rax)
  403403:	00 7c 02 00          	add    %bh,0x0(%rdx,%rax,1)
  403407:	00 a8 e6 ff ff 23    	add    %ch,0x23ffffe6(%rax)
  40340d:	00 00                	add    %al,(%rax)
  40340f:	00 00                	add    %al,(%rax)
  403411:	00 00                	add    %al,(%rax)
  403413:	00 10                	add    %dl,(%rax)
  403415:	00 00                	add    %al,(%rax)
  403417:	00 90 02 00 00 c4    	add    %dl,-0x3bfffffe(%rax)
  40341d:	e6 ff                	out    %al,$0xff
  40341f:	ff 23                	jmpq   *(%rbx)
  403421:	00 00                	add    %al,(%rax)
  403423:	00 00                	add    %al,(%rax)
  403425:	00 00                	add    %al,(%rax)
  403427:	00 10                	add    %dl,(%rax)
  403429:	00 00                	add    %al,(%rax)
  40342b:	00 a4 02 00 00 e0 e6 	add    %ah,-0x19200000(%rdx,%rax,1)
  403432:	ff                   	(bad)  
  403433:	ff 01                	incl   (%rcx)
  403435:	00 00                	add    %al,(%rax)
  403437:	00 00                	add    %al,(%rax)
  403439:	00 00                	add    %al,(%rax)
  40343b:	00 48 00             	add    %cl,0x0(%rax)
  40343e:	00 00                	add    %al,(%rax)
  403440:	b8 02 00 00 dc       	mov    $0xdc000002,%eax
  403445:	e6 ff                	out    %al,$0xff
  403447:	ff b0 13 00 00 00    	pushq  0x13(%rax)
  40344d:	41 0e                	rex.B (bad) 
  40344f:	10 42 0e             	adc    %al,0xe(%rdx)
  403452:	18 42 0e             	sbb    %al,0xe(%rdx)
  403455:	20 42 0e             	and    %al,0xe(%rdx)
  403458:	28 42 0e             	sub    %al,0xe(%rdx)
  40345b:	30 41 0e             	xor    %al,0xe(%rcx)
  40345e:	38 47 0e             	cmp    %al,0xe(%rdi)
  403461:	f0 08 83 07 8c 06 8d 	lock or %al,-0x72f973f9(%rbx)
  403468:	05 8e 04 8f 03       	add    $0x38f048e,%eax
  40346d:	86 02                	xchg   %al,(%rdx)
  40346f:	03 94 13 0e 38 41 0e 	add    0xe41380e(%rbx,%rdx,1),%edx
  403476:	30 42 0e             	xor    %al,0xe(%rdx)
  403479:	28 42 0e             	sub    %al,0xe(%rdx)
  40347c:	20 42 0e             	and    %al,0xe(%rdx)
  40347f:	18 42 0e             	sbb    %al,0xe(%rdx)
  403482:	10 41 0e             	adc    %al,0xe(%rcx)
  403485:	08 00                	or     %al,(%rax)
  403487:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  40348b:	00 04 03             	add    %al,(%rbx,%rax,1)
  40348e:	00 00                	add    %al,(%rax)
  403490:	40 fa                	rex cli 
  403492:	ff                   	(bad)  
  403493:	ff 65 00             	jmpq   *0x0(%rbp)
  403496:	00 00                	add    %al,(%rax)
  403498:	00 46 0e             	add    %al,0xe(%rsi)
  40349b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
  4034a1:	8e 03                	mov    (%rbx),%es
  4034a3:	45 0e                	rex.RB (bad) 
  4034a5:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  4034ab:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff867042f5 <_end+0xffffffff862ff275>
  4034b1:	06                   	(bad)  
  4034b2:	48 0e                	rex.W (bad) 
  4034b4:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
  4034ba:	6e                   	outsb  %ds:(%rsi),(%dx)
  4034bb:	0e                   	(bad)  
  4034bc:	38 41 0e             	cmp    %al,0xe(%rcx)
  4034bf:	30 41 0e             	xor    %al,0xe(%rcx)
  4034c2:	28 42 0e             	sub    %al,0xe(%rdx)
  4034c5:	20 42 0e             	and    %al,0xe(%rdx)
  4034c8:	18 42 0e             	sbb    %al,0xe(%rdx)
  4034cb:	10 42 0e             	adc    %al,0xe(%rdx)
  4034ce:	08 00                	or     %al,(%rax)
  4034d0:	10 00                	adc    %al,(%rax)
  4034d2:	00 00                	add    %al,(%rax)
  4034d4:	4c 03 00             	add    (%rax),%r8
  4034d7:	00 68 fa             	add    %ch,-0x6(%rax)
  4034da:	ff                   	(bad)  
  4034db:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 4034e1 <__GNU_EH_FRAME_HDR+0x461>
  4034e1:	00 00                	add    %al,(%rax)
	...

00000000004034e4 <__FRAME_END__>:
  4034e4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000404e10 <__frame_dummy_init_array_entry>:
  404e10:	30 11                	xor    %dl,(%rcx)
  404e12:	40 00 00             	add    %al,(%rax)
  404e15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000404e18 <__do_global_dtors_aux_fini_array_entry>:
  404e18:	00 11                	add    %dl,(%rcx)
  404e1a:	40 00 00             	add    %al,(%rax)
  404e1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000404e20 <_DYNAMIC>:
  404e20:	01 00                	add    %eax,(%rax)
  404e22:	00 00                	add    %al,(%rax)
  404e24:	00 00                	add    %al,(%rax)
  404e26:	00 00                	add    %al,(%rax)
  404e28:	01 00                	add    %eax,(%rax)
  404e2a:	00 00                	add    %al,(%rax)
  404e2c:	00 00                	add    %al,(%rax)
  404e2e:	00 00                	add    %al,(%rax)
  404e30:	0c 00                	or     $0x0,%al
  404e32:	00 00                	add    %al,(%rax)
  404e34:	00 00                	add    %al,(%rax)
  404e36:	00 00                	add    %al,(%rax)
  404e38:	00 10                	add    %dl,(%rax)
  404e3a:	40 00 00             	add    %al,(%rax)
  404e3d:	00 00                	add    %al,(%rax)
  404e3f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 404e45 <_DYNAMIC+0x25>
  404e45:	00 00                	add    %al,(%rax)
  404e47:	00 48 2f             	add    %cl,0x2f(%rax)
  404e4a:	40 00 00             	add    %al,(%rax)
  404e4d:	00 00                	add    %al,(%rax)
  404e4f:	00 19                	add    %bl,(%rcx)
  404e51:	00 00                	add    %al,(%rax)
  404e53:	00 00                	add    %al,(%rax)
  404e55:	00 00                	add    %al,(%rax)
  404e57:	00 10                	add    %dl,(%rax)
  404e59:	4e                   	rex.WRX
  404e5a:	40 00 00             	add    %al,(%rax)
  404e5d:	00 00                	add    %al,(%rax)
  404e5f:	00 1b                	add    %bl,(%rbx)
  404e61:	00 00                	add    %al,(%rax)
  404e63:	00 00                	add    %al,(%rax)
  404e65:	00 00                	add    %al,(%rax)
  404e67:	00 08                	add    %cl,(%rax)
  404e69:	00 00                	add    %al,(%rax)
  404e6b:	00 00                	add    %al,(%rax)
  404e6d:	00 00                	add    %al,(%rax)
  404e6f:	00 1a                	add    %bl,(%rdx)
  404e71:	00 00                	add    %al,(%rax)
  404e73:	00 00                	add    %al,(%rax)
  404e75:	00 00                	add    %al,(%rax)
  404e77:	00 18                	add    %bl,(%rax)
  404e79:	4e                   	rex.WRX
  404e7a:	40 00 00             	add    %al,(%rax)
  404e7d:	00 00                	add    %al,(%rax)
  404e7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  404e82:	00 00                	add    %al,(%rax)
  404e84:	00 00                	add    %al,(%rax)
  404e86:	00 00                	add    %al,(%rax)
  404e88:	08 00                	or     %al,(%rax)
  404e8a:	00 00                	add    %al,(%rax)
  404e8c:	00 00                	add    %al,(%rax)
  404e8e:	00 00                	add    %al,(%rax)
  404e90:	f5                   	cmc    
  404e91:	fe                   	(bad)  
  404e92:	ff 6f 00             	ljmp   *0x0(%rdi)
  404e95:	00 00                	add    %al,(%rax)
  404e97:	00 08                	add    %cl,(%rax)
  404e99:	03 40 00             	add    0x0(%rax),%eax
  404e9c:	00 00                	add    %al,(%rax)
  404e9e:	00 00                	add    %al,(%rax)
  404ea0:	05 00 00 00 00       	add    $0x0,%eax
  404ea5:	00 00                	add    %al,(%rax)
  404ea7:	00 a0 03 40 00 00    	add    %ah,0x4003(%rax)
  404ead:	00 00                	add    %al,(%rax)
  404eaf:	00 06                	add    %al,(%rsi)
  404eb1:	00 00                	add    %al,(%rax)
  404eb3:	00 00                	add    %al,(%rax)
  404eb5:	00 00                	add    %al,(%rax)
  404eb7:	00 28                	add    %ch,(%rax)
  404eb9:	03 40 00             	add    0x0(%rax),%eax
  404ebc:	00 00                	add    %al,(%rax)
  404ebe:	00 00                	add    %al,(%rax)
  404ec0:	0a 00                	or     (%rax),%al
  404ec2:	00 00                	add    %al,(%rax)
  404ec4:	00 00                	add    %al,(%rax)
  404ec6:	00 00                	add    %al,(%rax)
  404ec8:	43 00 00             	rex.XB add %al,(%r8)
  404ecb:	00 00                	add    %al,(%rax)
  404ecd:	00 00                	add    %al,(%rax)
  404ecf:	00 0b                	add    %cl,(%rbx)
  404ed1:	00 00                	add    %al,(%rax)
  404ed3:	00 00                	add    %al,(%rax)
  404ed5:	00 00                	add    %al,(%rax)
  404ed7:	00 18                	add    %bl,(%rax)
  404ed9:	00 00                	add    %al,(%rax)
  404edb:	00 00                	add    %al,(%rax)
  404edd:	00 00                	add    %al,(%rax)
  404edf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 404ee5 <_DYNAMIC+0xc5>
	...
  404eed:	00 00                	add    %al,(%rax)
  404eef:	00 03                	add    %al,(%rbx)
	...
  404ef9:	50                   	push   %rax
  404efa:	40 00 00             	add    %al,(%rax)
  404efd:	00 00                	add    %al,(%rax)
  404eff:	00 02                	add    %al,(%rdx)
  404f01:	00 00                	add    %al,(%rax)
  404f03:	00 00                	add    %al,(%rax)
  404f05:	00 00                	add    %al,(%rax)
  404f07:	00 30                	add    %dh,(%rax)
  404f09:	00 00                	add    %al,(%rax)
  404f0b:	00 00                	add    %al,(%rax)
  404f0d:	00 00                	add    %al,(%rax)
  404f0f:	00 14 00             	add    %dl,(%rax,%rax,1)
  404f12:	00 00                	add    %al,(%rax)
  404f14:	00 00                	add    %al,(%rax)
  404f16:	00 00                	add    %al,(%rax)
  404f18:	07                   	(bad)  
  404f19:	00 00                	add    %al,(%rax)
  404f1b:	00 00                	add    %al,(%rax)
  404f1d:	00 00                	add    %al,(%rax)
  404f1f:	00 17                	add    %dl,(%rdi)
  404f21:	00 00                	add    %al,(%rax)
  404f23:	00 00                	add    %al,(%rax)
  404f25:	00 00                	add    %al,(%rax)
  404f27:	00 40 04             	add    %al,0x4(%rax)
  404f2a:	40 00 00             	add    %al,(%rax)
  404f2d:	00 00                	add    %al,(%rax)
  404f2f:	00 07                	add    %al,(%rdi)
  404f31:	00 00                	add    %al,(%rax)
  404f33:	00 00                	add    %al,(%rax)
  404f35:	00 00                	add    %al,(%rax)
  404f37:	00 10                	add    %dl,(%rax)
  404f39:	04 40                	add    $0x40,%al
  404f3b:	00 00                	add    %al,(%rax)
  404f3d:	00 00                	add    %al,(%rax)
  404f3f:	00 08                	add    %cl,(%rax)
  404f41:	00 00                	add    %al,(%rax)
  404f43:	00 00                	add    %al,(%rax)
  404f45:	00 00                	add    %al,(%rax)
  404f47:	00 30                	add    %dh,(%rax)
  404f49:	00 00                	add    %al,(%rax)
  404f4b:	00 00                	add    %al,(%rax)
  404f4d:	00 00                	add    %al,(%rax)
  404f4f:	00 09                	add    %cl,(%rcx)
  404f51:	00 00                	add    %al,(%rax)
  404f53:	00 00                	add    %al,(%rax)
  404f55:	00 00                	add    %al,(%rax)
  404f57:	00 18                	add    %bl,(%rax)
  404f59:	00 00                	add    %al,(%rax)
  404f5b:	00 00                	add    %al,(%rax)
  404f5d:	00 00                	add    %al,(%rax)
  404f5f:	00 fe                	add    %bh,%dh
  404f61:	ff                   	(bad)  
  404f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  404f65:	00 00                	add    %al,(%rax)
  404f67:	00 f0                	add    %dh,%al
  404f69:	03 40 00             	add    0x0(%rax),%eax
  404f6c:	00 00                	add    %al,(%rax)
  404f6e:	00 00                	add    %al,(%rax)
  404f70:	ff                   	(bad)  
  404f71:	ff                   	(bad)  
  404f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  404f75:	00 00                	add    %al,(%rax)
  404f77:	00 01                	add    %al,(%rcx)
  404f79:	00 00                	add    %al,(%rax)
  404f7b:	00 00                	add    %al,(%rax)
  404f7d:	00 00                	add    %al,(%rax)
  404f7f:	00 f0                	add    %dh,%al
  404f81:	ff                   	(bad)  
  404f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  404f85:	00 00                	add    %al,(%rax)
  404f87:	00 e4                	add    %ah,%ah
  404f89:	03 40 00             	add    0x0(%rax),%eax
	...

Disassembly of section .got:

0000000000404ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000405000 <_GLOBAL_OFFSET_TABLE_>:
  405000:	20 4e 40             	and    %cl,0x40(%rsi)
	...
  405017:	00 36                	add    %dh,(%rsi)
  405019:	10 40 00             	adc    %al,0x0(%rax)
  40501c:	00 00                	add    %al,(%rax)
  40501e:	00 00                	add    %al,(%rax)
  405020:	46 10 40 00          	rex.RX adc %r8b,0x0(%rax)
  405024:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000405028 <__data_start>:
	...

0000000000405030 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000405040 <completed.8060>:
	...

0000000000405050 <count>:
	...

0000000000405078 <in>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400f88>
   a:	74 75                	je     81 <_init-0x400f7f>
   c:	20 39                	and    %bh,(%rcx)
   e:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  11:	30 2d 31 37 75 62    	xor    %ch,0x62753731(%rip)        # 62753748 <_end+0x6234e6c8>
  17:	75 6e                	jne    87 <_init-0x400f79>
  19:	74 75                	je     90 <_init-0x400f70>
  1b:	31 7e 32             	xor    %edi,0x32(%rsi)
  1e:	30 2e                	xor    %ch,(%rsi)
  20:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  23:	20 39                	and    %bh,(%rcx)
  25:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  28:	30 00                	xor    %al,(%rax)
  2a:	55                   	push   %rbp
  2b:	62                   	(bad)  
  2c:	75 6e                	jne    9c <_init-0x400f64>
  2e:	74 75                	je     a5 <_init-0x400f5b>
  30:	20 63 6c             	and    %ah,0x6c(%rbx)
  33:	61                   	(bad)  
  34:	6e                   	outsb  %ds:(%rsi),(%dx)
  35:	67 20 76 65          	and    %dh,0x65(%esi)
  39:	72 73                	jb     ae <_init-0x400f52>
  3b:	69 6f 6e 20 31 33 2e 	imul   $0x2e333120,0x6e(%rdi),%ebp
  42:	30 2e                	xor    %ch,(%rsi)
  44:	31 2d 2b 2b 32 30    	xor    %ebp,0x30322b2b(%rip)        # 30322b75 <_end+0x2ff1daf5>
  4a:	32 31                	xor    (%rcx),%dh
  4c:	31 32                	xor    %esi,(%rdx)
  4e:	32 33                	xor    (%rbx),%dh
  50:	30 31                	xor    %dh,(%rcx)
  52:	32 38                	xor    (%rax),%bh
  54:	35 31 2b 39 34       	xor    $0x34392b31,%eax
  59:	36 38 61 30          	cmp    %ah,%ss:0x30(%rcx)
  5d:	66 39 35 33 38 35 2d 	cmp    %si,0x2d353833(%rip)        # 2d353897 <_end+0x2cf4e817>
  64:	31 7e 65             	xor    %edi,0x65(%rsi)
  67:	78 70                	js     d9 <_init-0x400f27>
  69:	31 7e 32             	xor    %edi,0x32(%rsi)
  6c:	30 32                	xor    %dh,(%rdx)
  6e:	31 31                	xor    %esi,(%rcx)
  70:	32 32                	xor    (%rdx),%dh
  72:	33 30                	xor    (%rax),%esi
  74:	31 32                	xor    %esi,(%rdx)
  76:	39 30                	cmp    %esi,(%rax)
  78:	32 2e                	xor    (%rsi),%ch
  7a:	34 31                	xor    $0x31,%al
	...
