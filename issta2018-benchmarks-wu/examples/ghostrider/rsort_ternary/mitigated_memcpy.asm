
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
  4002d3:	00 e6                	add    %ah,%dh
  4002d5:	20 4a 09             	and    %cl,0x9(%rdx)
  4002d8:	11 d6                	adc    %edx,%esi
  4002da:	ee                   	out    %al,(%dx)
  4002db:	03 ab 16 86 11 dc    	add    -0x23ee79ea(%rbx),%ebp
  4002e1:	d4                   	(bad)  
  4002e2:	80                   	.byte 0x80
  4002e3:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  4002e4:	d2 45 82             	rolb   %cl,-0x7e(%rbp)
  4002e7:	3e                   	ds

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
  401063:	49 c7 c0 80 2f 40 00 	mov    $0x402f80,%r8
  40106a:	48 c7 c1 10 2f 40 00 	mov    $0x402f10,%rcx
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
  401b2a:	48 81 ec 58 04 00 00 	sub    $0x458,%rsp
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
  401cb1:	4c 8d 7c 24 08       	lea    0x8(%rsp),%r15
  401cb6:	4c 89 bc 24 70 01 00 	mov    %r15,0x170(%rsp)
  401cbd:	00 
  401cbe:	48 c7 84 24 78 01 00 	movq   $0x0,0x178(%rsp)
  401cc5:	00 00 00 00 00 
  401cca:	c7 84 24 80 01 00 00 	movl   $0x2,0x180(%rsp)
  401cd1:	02 00 00 00 
  401cd5:	c6 84 24 84 01 00 00 	movb   $0x1,0x184(%rsp)
  401cdc:	01 
  401cdd:	49 bc 00 00 00 00 04 	movabs $0x400000000,%r12
  401ce4:	00 00 00 
  401ce7:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  401cee:	00 
  401cef:	48 8d 94 24 70 01 00 	lea    0x170(%rsp),%rdx
  401cf6:	00 
  401cf7:	89 df                	mov    %ebx,%edi
  401cf9:	b9 01 00 00 00       	mov    $0x1,%ecx
  401cfe:	e8 bd f9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401d03:	8b 05 73 33 00 00    	mov    0x3373(%rip),%eax        # 40507c <in+0x4>
  401d09:	48 89 c1             	mov    %rax,%rcx
  401d0c:	49 0f af cd          	imul   %r13,%rcx
  401d10:	48 c1 e9 23          	shr    $0x23,%rcx
  401d14:	01 c9                	add    %ecx,%ecx
  401d16:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401d19:	29 c8                	sub    %ecx,%eax
  401d1b:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401d22:	00 
  401d23:	be 60 30 40 00       	mov    $0x403060,%esi
  401d28:	48 89 df             	mov    %rbx,%rdi
  401d2b:	ba 01 00 00 00       	mov    $0x1,%edx
  401d30:	e8 7b f4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401d35:	8d 78 ff             	lea    -0x1(%rax),%edi
  401d38:	c5 fc 10 05 20 13 00 	vmovups 0x1320(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401d3f:	00 
  401d40:	c5 fc 11 84 24 30 04 	vmovups %ymm0,0x430(%rsp)
  401d47:	00 00 
  401d49:	48 8d 94 24 30 04 00 	lea    0x430(%rsp),%rdx
  401d50:	00 
  401d51:	48 89 de             	mov    %rbx,%rsi
  401d54:	b9 01 00 00 00       	mov    $0x1,%ecx
  401d59:	c5 f8 77             	vzeroupper 
  401d5c:	e8 5f f9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401d61:	8b 1d 11 33 00 00    	mov    0x3311(%rip),%ebx        # 405078 <in>
  401d67:	48 89 d8             	mov    %rbx,%rax
  401d6a:	49 0f af c5          	imul   %r13,%rax
  401d6e:	48 c1 e8 23          	shr    $0x23,%rax
  401d72:	01 c0                	add    %eax,%eax
  401d74:	8d 04 80             	lea    (%rax,%rax,4),%eax
  401d77:	89 d9                	mov    %ebx,%ecx
  401d79:	29 c1                	sub    %eax,%ecx
  401d7b:	48 8d 3c 8d 50 50 40 	lea    0x405050(,%rcx,4),%rdi
  401d82:	00 
  401d83:	be 60 30 40 00       	mov    $0x403060,%esi
  401d88:	ba 01 00 00 00       	mov    $0x1,%edx
  401d8d:	e8 1e f4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401d92:	48 c1 e0 20          	shl    $0x20,%rax
  401d96:	4c 01 f0             	add    %r14,%rax
  401d99:	48 c1 f8 1e          	sar    $0x1e,%rax
  401d9d:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  401da1:	48 83 c6 08          	add    $0x8,%rsi
  401da5:	4c 89 bc 24 50 01 00 	mov    %r15,0x150(%rsp)
  401dac:	00 
  401dad:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  401db4:	00 00 00 00 00 
  401db9:	c7 84 24 60 01 00 00 	movl   $0x2,0x160(%rsp)
  401dc0:	02 00 00 00 
  401dc4:	c6 84 24 64 01 00 00 	movb   $0x1,0x164(%rsp)
  401dcb:	01 
  401dcc:	4c 89 a4 24 68 01 00 	mov    %r12,0x168(%rsp)
  401dd3:	00 
  401dd4:	48 8d 94 24 50 01 00 	lea    0x150(%rsp),%rdx
  401ddb:	00 
  401ddc:	89 df                	mov    %ebx,%edi
  401dde:	b9 01 00 00 00       	mov    $0x1,%ecx
  401de3:	e8 d8 f8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401de8:	8b 05 8a 32 00 00    	mov    0x328a(%rip),%eax        # 405078 <in>
  401dee:	48 89 c1             	mov    %rax,%rcx
  401df1:	49 0f af cd          	imul   %r13,%rcx
  401df5:	48 c1 e9 23          	shr    $0x23,%rcx
  401df9:	01 c9                	add    %ecx,%ecx
  401dfb:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401dfe:	29 c8                	sub    %ecx,%eax
  401e00:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401e07:	00 
  401e08:	be 60 30 40 00       	mov    $0x403060,%esi
  401e0d:	48 89 df             	mov    %rbx,%rdi
  401e10:	ba 01 00 00 00       	mov    $0x1,%edx
  401e15:	e8 96 f3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401e1a:	8d 78 ff             	lea    -0x1(%rax),%edi
  401e1d:	c5 fc 10 05 3b 12 00 	vmovups 0x123b(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401e24:	00 
  401e25:	c5 fc 11 84 24 10 04 	vmovups %ymm0,0x410(%rsp)
  401e2c:	00 00 
  401e2e:	48 8d 94 24 10 04 00 	lea    0x410(%rsp),%rdx
  401e35:	00 
  401e36:	48 89 de             	mov    %rbx,%rsi
  401e39:	b9 01 00 00 00       	mov    $0x1,%ecx
  401e3e:	c5 f8 77             	vzeroupper 
  401e41:	e8 7a f8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401e46:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e4a:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  401e4e:	89 05 24 32 00 00    	mov    %eax,0x3224(%rip)        # 405078 <in>
  401e54:	89 0d 22 32 00 00    	mov    %ecx,0x3222(%rip)        # 40507c <in+0x4>
  401e5a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401e5e:	c5 fc 11 05 ea 31 00 	vmovups %ymm0,0x31ea(%rip)        # 405050 <count>
  401e65:	00 
  401e66:	48 c7 05 ff 31 00 00 	movq   $0x0,0x31ff(%rip)        # 405070 <count+0x20>
  401e6d:	00 00 00 00 
  401e71:	49 0f af c5          	imul   %r13,%rax
  401e75:	48 c1 e8 23          	shr    $0x23,%rax
  401e79:	48 89 c1             	mov    %rax,%rcx
  401e7c:	49 0f af cd          	imul   %r13,%rcx
  401e80:	48 c1 e9 23          	shr    $0x23,%rcx
  401e84:	01 c9                	add    %ecx,%ecx
  401e86:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401e89:	29 c8                	sub    %ecx,%eax
  401e8b:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401e92:	00 
  401e93:	be 60 30 40 00       	mov    $0x403060,%esi
  401e98:	48 89 df             	mov    %rbx,%rdi
  401e9b:	ba 01 00 00 00       	mov    $0x1,%edx
  401ea0:	c5 f8 77             	vzeroupper 
  401ea3:	e8 08 f3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401ea8:	8d 78 01             	lea    0x1(%rax),%edi
  401eab:	c5 fc 10 05 ad 11 00 	vmovups 0x11ad(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401eb2:	00 
  401eb3:	c5 fc 11 84 24 f0 03 	vmovups %ymm0,0x3f0(%rsp)
  401eba:	00 00 
  401ebc:	48 8d 94 24 f0 03 00 	lea    0x3f0(%rsp),%rdx
  401ec3:	00 
  401ec4:	48 89 de             	mov    %rbx,%rsi
  401ec7:	b9 01 00 00 00       	mov    $0x1,%ecx
  401ecc:	c5 f8 77             	vzeroupper 
  401ecf:	e8 ec f7 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401ed4:	8b 05 a2 31 00 00    	mov    0x31a2(%rip),%eax        # 40507c <in+0x4>
  401eda:	49 0f af c5          	imul   %r13,%rax
  401ede:	48 c1 e8 23          	shr    $0x23,%rax
  401ee2:	48 89 c1             	mov    %rax,%rcx
  401ee5:	49 0f af cd          	imul   %r13,%rcx
  401ee9:	48 c1 e9 23          	shr    $0x23,%rcx
  401eed:	01 c9                	add    %ecx,%ecx
  401eef:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401ef2:	29 c8                	sub    %ecx,%eax
  401ef4:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  401efb:	00 
  401efc:	be 60 30 40 00       	mov    $0x403060,%esi
  401f01:	48 89 df             	mov    %rbx,%rdi
  401f04:	ba 01 00 00 00       	mov    $0x1,%edx
  401f09:	e8 a2 f2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401f0e:	8d 78 01             	lea    0x1(%rax),%edi
  401f11:	c5 fc 10 05 47 11 00 	vmovups 0x1147(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  401f18:	00 
  401f19:	c5 fc 11 84 24 d0 03 	vmovups %ymm0,0x3d0(%rsp)
  401f20:	00 00 
  401f22:	48 8d 94 24 d0 03 00 	lea    0x3d0(%rsp),%rdx
  401f29:	00 
  401f2a:	48 89 de             	mov    %rbx,%rsi
  401f2d:	b9 01 00 00 00       	mov    $0x1,%ecx
  401f32:	c5 f8 77             	vzeroupper 
  401f35:	e8 86 f7 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  401f3a:	8b 05 10 31 00 00    	mov    0x3110(%rip),%eax        # 405050 <count>
  401f40:	03 05 0e 31 00 00    	add    0x310e(%rip),%eax        # 405054 <count+0x4>
  401f46:	89 05 08 31 00 00    	mov    %eax,0x3108(%rip)        # 405054 <count+0x4>
  401f4c:	03 05 06 31 00 00    	add    0x3106(%rip),%eax        # 405058 <count+0x8>
  401f52:	89 05 00 31 00 00    	mov    %eax,0x3100(%rip)        # 405058 <count+0x8>
  401f58:	03 05 fe 30 00 00    	add    0x30fe(%rip),%eax        # 40505c <count+0xc>
  401f5e:	89 05 f8 30 00 00    	mov    %eax,0x30f8(%rip)        # 40505c <count+0xc>
  401f64:	03 05 f6 30 00 00    	add    0x30f6(%rip),%eax        # 405060 <count+0x10>
  401f6a:	89 05 f0 30 00 00    	mov    %eax,0x30f0(%rip)        # 405060 <count+0x10>
  401f70:	03 05 ee 30 00 00    	add    0x30ee(%rip),%eax        # 405064 <count+0x14>
  401f76:	89 05 e8 30 00 00    	mov    %eax,0x30e8(%rip)        # 405064 <count+0x14>
  401f7c:	03 05 e6 30 00 00    	add    0x30e6(%rip),%eax        # 405068 <count+0x18>
  401f82:	89 05 e0 30 00 00    	mov    %eax,0x30e0(%rip)        # 405068 <count+0x18>
  401f88:	03 05 de 30 00 00    	add    0x30de(%rip),%eax        # 40506c <count+0x1c>
  401f8e:	89 05 d8 30 00 00    	mov    %eax,0x30d8(%rip)        # 40506c <count+0x1c>
  401f94:	03 05 d6 30 00 00    	add    0x30d6(%rip),%eax        # 405070 <count+0x20>
  401f9a:	89 05 d0 30 00 00    	mov    %eax,0x30d0(%rip)        # 405070 <count+0x20>
  401fa0:	01 05 ce 30 00 00    	add    %eax,0x30ce(%rip)        # 405074 <count+0x24>
  401fa6:	8b 1d d0 30 00 00    	mov    0x30d0(%rip),%ebx        # 40507c <in+0x4>
  401fac:	48 89 d8             	mov    %rbx,%rax
  401faf:	49 0f af c5          	imul   %r13,%rax
  401fb3:	48 c1 e8 23          	shr    $0x23,%rax
  401fb7:	48 89 c1             	mov    %rax,%rcx
  401fba:	49 0f af cd          	imul   %r13,%rcx
  401fbe:	48 c1 e9 23          	shr    $0x23,%rcx
  401fc2:	01 c9                	add    %ecx,%ecx
  401fc4:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  401fc7:	29 c8                	sub    %ecx,%eax
  401fc9:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  401fd0:	00 
  401fd1:	be 60 30 40 00       	mov    $0x403060,%esi
  401fd6:	ba 01 00 00 00       	mov    $0x1,%edx
  401fdb:	e8 d0 f1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401fe0:	48 c1 e0 20          	shl    $0x20,%rax
  401fe4:	4c 01 f0             	add    %r14,%rax
  401fe7:	48 c1 f8 1e          	sar    $0x1e,%rax
  401feb:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  401fef:	48 83 c6 08          	add    $0x8,%rsi
  401ff3:	4c 89 bc 24 30 01 00 	mov    %r15,0x130(%rsp)
  401ffa:	00 
  401ffb:	48 c7 84 24 38 01 00 	movq   $0x0,0x138(%rsp)
  402002:	00 00 00 00 00 
  402007:	c7 84 24 40 01 00 00 	movl   $0x2,0x140(%rsp)
  40200e:	02 00 00 00 
  402012:	c6 84 24 44 01 00 00 	movb   $0x1,0x144(%rsp)
  402019:	01 
  40201a:	4c 89 a4 24 48 01 00 	mov    %r12,0x148(%rsp)
  402021:	00 
  402022:	48 8d 94 24 30 01 00 	lea    0x130(%rsp),%rdx
  402029:	00 
  40202a:	89 df                	mov    %ebx,%edi
  40202c:	b9 01 00 00 00       	mov    $0x1,%ecx
  402031:	e8 8a f6 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402036:	8b 05 40 30 00 00    	mov    0x3040(%rip),%eax        # 40507c <in+0x4>
  40203c:	49 0f af c5          	imul   %r13,%rax
  402040:	48 c1 e8 23          	shr    $0x23,%rax
  402044:	48 89 c1             	mov    %rax,%rcx
  402047:	49 0f af cd          	imul   %r13,%rcx
  40204b:	48 c1 e9 23          	shr    $0x23,%rcx
  40204f:	01 c9                	add    %ecx,%ecx
  402051:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402054:	29 c8                	sub    %ecx,%eax
  402056:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  40205d:	00 
  40205e:	be 60 30 40 00       	mov    $0x403060,%esi
  402063:	48 89 df             	mov    %rbx,%rdi
  402066:	ba 01 00 00 00       	mov    $0x1,%edx
  40206b:	e8 40 f1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402070:	8d 78 ff             	lea    -0x1(%rax),%edi
  402073:	c5 fc 10 05 e5 0f 00 	vmovups 0xfe5(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  40207a:	00 
  40207b:	c5 fc 11 84 24 b0 03 	vmovups %ymm0,0x3b0(%rsp)
  402082:	00 00 
  402084:	48 8d 94 24 b0 03 00 	lea    0x3b0(%rsp),%rdx
  40208b:	00 
  40208c:	48 89 de             	mov    %rbx,%rsi
  40208f:	b9 01 00 00 00       	mov    $0x1,%ecx
  402094:	c5 f8 77             	vzeroupper 
  402097:	e8 24 f6 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40209c:	8b 1d d6 2f 00 00    	mov    0x2fd6(%rip),%ebx        # 405078 <in>
  4020a2:	48 89 d8             	mov    %rbx,%rax
  4020a5:	49 0f af c5          	imul   %r13,%rax
  4020a9:	48 c1 e8 23          	shr    $0x23,%rax
  4020ad:	48 89 c1             	mov    %rax,%rcx
  4020b0:	49 0f af cd          	imul   %r13,%rcx
  4020b4:	48 c1 e9 23          	shr    $0x23,%rcx
  4020b8:	01 c9                	add    %ecx,%ecx
  4020ba:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4020bd:	29 c8                	sub    %ecx,%eax
  4020bf:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  4020c6:	00 
  4020c7:	be 60 30 40 00       	mov    $0x403060,%esi
  4020cc:	ba 01 00 00 00       	mov    $0x1,%edx
  4020d1:	e8 da f0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4020d6:	48 c1 e0 20          	shl    $0x20,%rax
  4020da:	4c 01 f0             	add    %r14,%rax
  4020dd:	48 c1 f8 1e          	sar    $0x1e,%rax
  4020e1:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  4020e5:	48 83 c6 08          	add    $0x8,%rsi
  4020e9:	4c 89 bc 24 10 01 00 	mov    %r15,0x110(%rsp)
  4020f0:	00 
  4020f1:	48 c7 84 24 18 01 00 	movq   $0x0,0x118(%rsp)
  4020f8:	00 00 00 00 00 
  4020fd:	c7 84 24 20 01 00 00 	movl   $0x2,0x120(%rsp)
  402104:	02 00 00 00 
  402108:	c6 84 24 24 01 00 00 	movb   $0x1,0x124(%rsp)
  40210f:	01 
  402110:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  402117:	00 
  402118:	48 8d 94 24 10 01 00 	lea    0x110(%rsp),%rdx
  40211f:	00 
  402120:	89 df                	mov    %ebx,%edi
  402122:	b9 01 00 00 00       	mov    $0x1,%ecx
  402127:	e8 94 f5 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40212c:	8b 05 46 2f 00 00    	mov    0x2f46(%rip),%eax        # 405078 <in>
  402132:	49 0f af c5          	imul   %r13,%rax
  402136:	48 c1 e8 23          	shr    $0x23,%rax
  40213a:	48 89 c1             	mov    %rax,%rcx
  40213d:	49 0f af cd          	imul   %r13,%rcx
  402141:	48 c1 e9 23          	shr    $0x23,%rcx
  402145:	01 c9                	add    %ecx,%ecx
  402147:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40214a:	29 c8                	sub    %ecx,%eax
  40214c:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402153:	00 
  402154:	be 60 30 40 00       	mov    $0x403060,%esi
  402159:	48 89 df             	mov    %rbx,%rdi
  40215c:	ba 01 00 00 00       	mov    $0x1,%edx
  402161:	e8 4a f0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402166:	8d 78 ff             	lea    -0x1(%rax),%edi
  402169:	c5 fc 10 05 ef 0e 00 	vmovups 0xeef(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402170:	00 
  402171:	c5 fc 11 84 24 90 03 	vmovups %ymm0,0x390(%rsp)
  402178:	00 00 
  40217a:	48 8d 94 24 90 03 00 	lea    0x390(%rsp),%rdx
  402181:	00 
  402182:	48 89 de             	mov    %rbx,%rsi
  402185:	b9 01 00 00 00       	mov    $0x1,%ecx
  40218a:	c5 f8 77             	vzeroupper 
  40218d:	e8 2e f5 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402192:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402196:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  40219a:	89 05 d8 2e 00 00    	mov    %eax,0x2ed8(%rip)        # 405078 <in>
  4021a0:	89 0d d6 2e 00 00    	mov    %ecx,0x2ed6(%rip)        # 40507c <in+0x4>
  4021a6:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4021aa:	c5 fc 11 05 9e 2e 00 	vmovups %ymm0,0x2e9e(%rip)        # 405050 <count>
  4021b1:	00 
  4021b2:	48 c7 05 b3 2e 00 00 	movq   $0x0,0x2eb3(%rip)        # 405070 <count+0x20>
  4021b9:	00 00 00 00 
  4021bd:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  4021c4:	48 c1 e8 25          	shr    $0x25,%rax
  4021c8:	48 89 c1             	mov    %rax,%rcx
  4021cb:	49 0f af cd          	imul   %r13,%rcx
  4021cf:	48 c1 e9 23          	shr    $0x23,%rcx
  4021d3:	01 c9                	add    %ecx,%ecx
  4021d5:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4021d8:	29 c8                	sub    %ecx,%eax
  4021da:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4021e1:	00 
  4021e2:	be 60 30 40 00       	mov    $0x403060,%esi
  4021e7:	48 89 df             	mov    %rbx,%rdi
  4021ea:	ba 01 00 00 00       	mov    $0x1,%edx
  4021ef:	c5 f8 77             	vzeroupper 
  4021f2:	e8 b9 ef ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4021f7:	8d 78 01             	lea    0x1(%rax),%edi
  4021fa:	c5 fc 10 05 5e 0e 00 	vmovups 0xe5e(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402201:	00 
  402202:	c5 fc 11 84 24 70 03 	vmovups %ymm0,0x370(%rsp)
  402209:	00 00 
  40220b:	48 8d 94 24 70 03 00 	lea    0x370(%rsp),%rdx
  402212:	00 
  402213:	48 89 de             	mov    %rbx,%rsi
  402216:	b9 01 00 00 00       	mov    $0x1,%ecx
  40221b:	c5 f8 77             	vzeroupper 
  40221e:	e8 9d f4 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402223:	8b 05 53 2e 00 00    	mov    0x2e53(%rip),%eax        # 40507c <in+0x4>
  402229:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  402230:	48 c1 e8 25          	shr    $0x25,%rax
  402234:	48 89 c1             	mov    %rax,%rcx
  402237:	49 0f af cd          	imul   %r13,%rcx
  40223b:	48 c1 e9 23          	shr    $0x23,%rcx
  40223f:	01 c9                	add    %ecx,%ecx
  402241:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402244:	29 c8                	sub    %ecx,%eax
  402246:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  40224d:	00 
  40224e:	be 60 30 40 00       	mov    $0x403060,%esi
  402253:	48 89 df             	mov    %rbx,%rdi
  402256:	ba 01 00 00 00       	mov    $0x1,%edx
  40225b:	e8 50 ef ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402260:	8d 78 01             	lea    0x1(%rax),%edi
  402263:	c5 fc 10 05 f5 0d 00 	vmovups 0xdf5(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  40226a:	00 
  40226b:	c5 fc 11 84 24 50 03 	vmovups %ymm0,0x350(%rsp)
  402272:	00 00 
  402274:	48 8d 94 24 50 03 00 	lea    0x350(%rsp),%rdx
  40227b:	00 
  40227c:	48 89 de             	mov    %rbx,%rsi
  40227f:	b9 01 00 00 00       	mov    $0x1,%ecx
  402284:	c5 f8 77             	vzeroupper 
  402287:	e8 34 f4 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40228c:	8b 05 be 2d 00 00    	mov    0x2dbe(%rip),%eax        # 405050 <count>
  402292:	03 05 bc 2d 00 00    	add    0x2dbc(%rip),%eax        # 405054 <count+0x4>
  402298:	89 05 b6 2d 00 00    	mov    %eax,0x2db6(%rip)        # 405054 <count+0x4>
  40229e:	03 05 b4 2d 00 00    	add    0x2db4(%rip),%eax        # 405058 <count+0x8>
  4022a4:	89 05 ae 2d 00 00    	mov    %eax,0x2dae(%rip)        # 405058 <count+0x8>
  4022aa:	03 05 ac 2d 00 00    	add    0x2dac(%rip),%eax        # 40505c <count+0xc>
  4022b0:	89 05 a6 2d 00 00    	mov    %eax,0x2da6(%rip)        # 40505c <count+0xc>
  4022b6:	03 05 a4 2d 00 00    	add    0x2da4(%rip),%eax        # 405060 <count+0x10>
  4022bc:	89 05 9e 2d 00 00    	mov    %eax,0x2d9e(%rip)        # 405060 <count+0x10>
  4022c2:	03 05 9c 2d 00 00    	add    0x2d9c(%rip),%eax        # 405064 <count+0x14>
  4022c8:	89 05 96 2d 00 00    	mov    %eax,0x2d96(%rip)        # 405064 <count+0x14>
  4022ce:	03 05 94 2d 00 00    	add    0x2d94(%rip),%eax        # 405068 <count+0x18>
  4022d4:	89 05 8e 2d 00 00    	mov    %eax,0x2d8e(%rip)        # 405068 <count+0x18>
  4022da:	03 05 8c 2d 00 00    	add    0x2d8c(%rip),%eax        # 40506c <count+0x1c>
  4022e0:	89 05 86 2d 00 00    	mov    %eax,0x2d86(%rip)        # 40506c <count+0x1c>
  4022e6:	03 05 84 2d 00 00    	add    0x2d84(%rip),%eax        # 405070 <count+0x20>
  4022ec:	89 05 7e 2d 00 00    	mov    %eax,0x2d7e(%rip)        # 405070 <count+0x20>
  4022f2:	01 05 7c 2d 00 00    	add    %eax,0x2d7c(%rip)        # 405074 <count+0x24>
  4022f8:	8b 1d 7e 2d 00 00    	mov    0x2d7e(%rip),%ebx        # 40507c <in+0x4>
  4022fe:	48 69 c3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rax
  402305:	48 c1 e8 25          	shr    $0x25,%rax
  402309:	48 89 c1             	mov    %rax,%rcx
  40230c:	49 0f af cd          	imul   %r13,%rcx
  402310:	48 c1 e9 23          	shr    $0x23,%rcx
  402314:	01 c9                	add    %ecx,%ecx
  402316:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402319:	29 c8                	sub    %ecx,%eax
  40231b:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402322:	00 
  402323:	be 60 30 40 00       	mov    $0x403060,%esi
  402328:	ba 01 00 00 00       	mov    $0x1,%edx
  40232d:	e8 7e ee ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402332:	48 c1 e0 20          	shl    $0x20,%rax
  402336:	4c 01 f0             	add    %r14,%rax
  402339:	48 c1 f8 1e          	sar    $0x1e,%rax
  40233d:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402341:	48 83 c6 08          	add    $0x8,%rsi
  402345:	4c 89 bc 24 f0 00 00 	mov    %r15,0xf0(%rsp)
  40234c:	00 
  40234d:	48 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%rsp)
  402354:	00 00 00 00 00 
  402359:	c7 84 24 00 01 00 00 	movl   $0x2,0x100(%rsp)
  402360:	02 00 00 00 
  402364:	c6 84 24 04 01 00 00 	movb   $0x1,0x104(%rsp)
  40236b:	01 
  40236c:	4c 89 a4 24 08 01 00 	mov    %r12,0x108(%rsp)
  402373:	00 
  402374:	48 8d 94 24 f0 00 00 	lea    0xf0(%rsp),%rdx
  40237b:	00 
  40237c:	89 df                	mov    %ebx,%edi
  40237e:	b9 01 00 00 00       	mov    $0x1,%ecx
  402383:	e8 38 f3 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402388:	8b 05 ee 2c 00 00    	mov    0x2cee(%rip),%eax        # 40507c <in+0x4>
  40238e:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  402395:	48 c1 e8 25          	shr    $0x25,%rax
  402399:	48 89 c1             	mov    %rax,%rcx
  40239c:	49 0f af cd          	imul   %r13,%rcx
  4023a0:	48 c1 e9 23          	shr    $0x23,%rcx
  4023a4:	01 c9                	add    %ecx,%ecx
  4023a6:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4023a9:	29 c8                	sub    %ecx,%eax
  4023ab:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4023b2:	00 
  4023b3:	be 60 30 40 00       	mov    $0x403060,%esi
  4023b8:	48 89 df             	mov    %rbx,%rdi
  4023bb:	ba 01 00 00 00       	mov    $0x1,%edx
  4023c0:	e8 eb ed ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4023c5:	8d 78 ff             	lea    -0x1(%rax),%edi
  4023c8:	c5 fc 10 05 90 0c 00 	vmovups 0xc90(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4023cf:	00 
  4023d0:	c5 fc 11 84 24 30 03 	vmovups %ymm0,0x330(%rsp)
  4023d7:	00 00 
  4023d9:	48 8d 94 24 30 03 00 	lea    0x330(%rsp),%rdx
  4023e0:	00 
  4023e1:	48 89 de             	mov    %rbx,%rsi
  4023e4:	b9 01 00 00 00       	mov    $0x1,%ecx
  4023e9:	c5 f8 77             	vzeroupper 
  4023ec:	e8 cf f2 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4023f1:	8b 1d 81 2c 00 00    	mov    0x2c81(%rip),%ebx        # 405078 <in>
  4023f7:	48 69 c3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rax
  4023fe:	48 c1 e8 25          	shr    $0x25,%rax
  402402:	48 89 c1             	mov    %rax,%rcx
  402405:	49 0f af cd          	imul   %r13,%rcx
  402409:	48 c1 e9 23          	shr    $0x23,%rcx
  40240d:	01 c9                	add    %ecx,%ecx
  40240f:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402412:	29 c8                	sub    %ecx,%eax
  402414:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  40241b:	00 
  40241c:	be 60 30 40 00       	mov    $0x403060,%esi
  402421:	ba 01 00 00 00       	mov    $0x1,%edx
  402426:	e8 85 ed ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40242b:	48 c1 e0 20          	shl    $0x20,%rax
  40242f:	4c 01 f0             	add    %r14,%rax
  402432:	48 c1 f8 1e          	sar    $0x1e,%rax
  402436:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  40243a:	48 83 c6 08          	add    $0x8,%rsi
  40243e:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  402445:	00 
  402446:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40244d:	00 00 00 00 00 
  402452:	c7 84 24 e0 00 00 00 	movl   $0x2,0xe0(%rsp)
  402459:	02 00 00 00 
  40245d:	c6 84 24 e4 00 00 00 	movb   $0x1,0xe4(%rsp)
  402464:	01 
  402465:	4c 89 a4 24 e8 00 00 	mov    %r12,0xe8(%rsp)
  40246c:	00 
  40246d:	48 8d 94 24 d0 00 00 	lea    0xd0(%rsp),%rdx
  402474:	00 
  402475:	89 df                	mov    %ebx,%edi
  402477:	b9 01 00 00 00       	mov    $0x1,%ecx
  40247c:	e8 3f f2 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402481:	8b 05 f1 2b 00 00    	mov    0x2bf1(%rip),%eax        # 405078 <in>
  402487:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
  40248e:	48 c1 e8 25          	shr    $0x25,%rax
  402492:	48 89 c1             	mov    %rax,%rcx
  402495:	49 0f af cd          	imul   %r13,%rcx
  402499:	48 c1 e9 23          	shr    $0x23,%rcx
  40249d:	01 c9                	add    %ecx,%ecx
  40249f:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4024a2:	29 c8                	sub    %ecx,%eax
  4024a4:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4024ab:	00 
  4024ac:	be 60 30 40 00       	mov    $0x403060,%esi
  4024b1:	48 89 df             	mov    %rbx,%rdi
  4024b4:	ba 01 00 00 00       	mov    $0x1,%edx
  4024b9:	e8 f2 ec ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4024be:	8d 78 ff             	lea    -0x1(%rax),%edi
  4024c1:	c5 fc 10 05 97 0b 00 	vmovups 0xb97(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4024c8:	00 
  4024c9:	c5 fc 11 84 24 10 03 	vmovups %ymm0,0x310(%rsp)
  4024d0:	00 00 
  4024d2:	48 8d 94 24 10 03 00 	lea    0x310(%rsp),%rdx
  4024d9:	00 
  4024da:	48 89 de             	mov    %rbx,%rsi
  4024dd:	b9 01 00 00 00       	mov    $0x1,%ecx
  4024e2:	c5 f8 77             	vzeroupper 
  4024e5:	e8 d6 f1 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4024ea:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4024ee:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  4024f2:	89 05 80 2b 00 00    	mov    %eax,0x2b80(%rip)        # 405078 <in>
  4024f8:	89 0d 7e 2b 00 00    	mov    %ecx,0x2b7e(%rip)        # 40507c <in+0x4>
  4024fe:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  402502:	c5 fc 11 05 46 2b 00 	vmovups %ymm0,0x2b46(%rip)        # 405050 <count>
  402509:	00 
  40250a:	48 c7 05 5b 2b 00 00 	movq   $0x0,0x2b5b(%rip)        # 405070 <count+0x20>
  402511:	00 00 00 00 
  402515:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  40251c:	48 c1 e8 26          	shr    $0x26,%rax
  402520:	48 89 c1             	mov    %rax,%rcx
  402523:	49 0f af cd          	imul   %r13,%rcx
  402527:	48 c1 e9 23          	shr    $0x23,%rcx
  40252b:	01 c9                	add    %ecx,%ecx
  40252d:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402530:	29 c8                	sub    %ecx,%eax
  402532:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402539:	00 
  40253a:	be 60 30 40 00       	mov    $0x403060,%esi
  40253f:	48 89 df             	mov    %rbx,%rdi
  402542:	ba 01 00 00 00       	mov    $0x1,%edx
  402547:	c5 f8 77             	vzeroupper 
  40254a:	e8 61 ec ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40254f:	8d 78 01             	lea    0x1(%rax),%edi
  402552:	c5 fc 10 05 06 0b 00 	vmovups 0xb06(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402559:	00 
  40255a:	c5 fc 11 84 24 f0 02 	vmovups %ymm0,0x2f0(%rsp)
  402561:	00 00 
  402563:	48 8d 94 24 f0 02 00 	lea    0x2f0(%rsp),%rdx
  40256a:	00 
  40256b:	48 89 de             	mov    %rbx,%rsi
  40256e:	b9 01 00 00 00       	mov    $0x1,%ecx
  402573:	c5 f8 77             	vzeroupper 
  402576:	e8 45 f1 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40257b:	8b 05 fb 2a 00 00    	mov    0x2afb(%rip),%eax        # 40507c <in+0x4>
  402581:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  402588:	48 c1 e8 26          	shr    $0x26,%rax
  40258c:	48 89 c1             	mov    %rax,%rcx
  40258f:	49 0f af cd          	imul   %r13,%rcx
  402593:	48 c1 e9 23          	shr    $0x23,%rcx
  402597:	01 c9                	add    %ecx,%ecx
  402599:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40259c:	29 c8                	sub    %ecx,%eax
  40259e:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4025a5:	00 
  4025a6:	be 60 30 40 00       	mov    $0x403060,%esi
  4025ab:	48 89 df             	mov    %rbx,%rdi
  4025ae:	ba 01 00 00 00       	mov    $0x1,%edx
  4025b3:	e8 f8 eb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4025b8:	8d 78 01             	lea    0x1(%rax),%edi
  4025bb:	c5 fc 10 05 9d 0a 00 	vmovups 0xa9d(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4025c2:	00 
  4025c3:	c5 fc 11 84 24 d0 02 	vmovups %ymm0,0x2d0(%rsp)
  4025ca:	00 00 
  4025cc:	48 8d 94 24 d0 02 00 	lea    0x2d0(%rsp),%rdx
  4025d3:	00 
  4025d4:	48 89 de             	mov    %rbx,%rsi
  4025d7:	b9 01 00 00 00       	mov    $0x1,%ecx
  4025dc:	c5 f8 77             	vzeroupper 
  4025df:	e8 dc f0 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4025e4:	8b 05 66 2a 00 00    	mov    0x2a66(%rip),%eax        # 405050 <count>
  4025ea:	03 05 64 2a 00 00    	add    0x2a64(%rip),%eax        # 405054 <count+0x4>
  4025f0:	89 05 5e 2a 00 00    	mov    %eax,0x2a5e(%rip)        # 405054 <count+0x4>
  4025f6:	03 05 5c 2a 00 00    	add    0x2a5c(%rip),%eax        # 405058 <count+0x8>
  4025fc:	89 05 56 2a 00 00    	mov    %eax,0x2a56(%rip)        # 405058 <count+0x8>
  402602:	03 05 54 2a 00 00    	add    0x2a54(%rip),%eax        # 40505c <count+0xc>
  402608:	89 05 4e 2a 00 00    	mov    %eax,0x2a4e(%rip)        # 40505c <count+0xc>
  40260e:	03 05 4c 2a 00 00    	add    0x2a4c(%rip),%eax        # 405060 <count+0x10>
  402614:	89 05 46 2a 00 00    	mov    %eax,0x2a46(%rip)        # 405060 <count+0x10>
  40261a:	03 05 44 2a 00 00    	add    0x2a44(%rip),%eax        # 405064 <count+0x14>
  402620:	89 05 3e 2a 00 00    	mov    %eax,0x2a3e(%rip)        # 405064 <count+0x14>
  402626:	03 05 3c 2a 00 00    	add    0x2a3c(%rip),%eax        # 405068 <count+0x18>
  40262c:	89 05 36 2a 00 00    	mov    %eax,0x2a36(%rip)        # 405068 <count+0x18>
  402632:	03 05 34 2a 00 00    	add    0x2a34(%rip),%eax        # 40506c <count+0x1c>
  402638:	89 05 2e 2a 00 00    	mov    %eax,0x2a2e(%rip)        # 40506c <count+0x1c>
  40263e:	03 05 2c 2a 00 00    	add    0x2a2c(%rip),%eax        # 405070 <count+0x20>
  402644:	89 05 26 2a 00 00    	mov    %eax,0x2a26(%rip)        # 405070 <count+0x20>
  40264a:	01 05 24 2a 00 00    	add    %eax,0x2a24(%rip)        # 405074 <count+0x24>
  402650:	8b 1d 26 2a 00 00    	mov    0x2a26(%rip),%ebx        # 40507c <in+0x4>
  402656:	48 69 c3 d3 4d 62 10 	imul   $0x10624dd3,%rbx,%rax
  40265d:	48 c1 e8 26          	shr    $0x26,%rax
  402661:	48 89 c1             	mov    %rax,%rcx
  402664:	49 0f af cd          	imul   %r13,%rcx
  402668:	48 c1 e9 23          	shr    $0x23,%rcx
  40266c:	01 c9                	add    %ecx,%ecx
  40266e:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402671:	29 c8                	sub    %ecx,%eax
  402673:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  40267a:	00 
  40267b:	be 60 30 40 00       	mov    $0x403060,%esi
  402680:	ba 01 00 00 00       	mov    $0x1,%edx
  402685:	e8 26 eb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40268a:	48 c1 e0 20          	shl    $0x20,%rax
  40268e:	4c 01 f0             	add    %r14,%rax
  402691:	48 c1 f8 1e          	sar    $0x1e,%rax
  402695:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402699:	48 83 c6 08          	add    $0x8,%rsi
  40269d:	4c 89 bc 24 b0 00 00 	mov    %r15,0xb0(%rsp)
  4026a4:	00 
  4026a5:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
  4026ac:	00 00 00 00 00 
  4026b1:	c7 84 24 c0 00 00 00 	movl   $0x2,0xc0(%rsp)
  4026b8:	02 00 00 00 
  4026bc:	c6 84 24 c4 00 00 00 	movb   $0x1,0xc4(%rsp)
  4026c3:	01 
  4026c4:	4c 89 a4 24 c8 00 00 	mov    %r12,0xc8(%rsp)
  4026cb:	00 
  4026cc:	48 8d 94 24 b0 00 00 	lea    0xb0(%rsp),%rdx
  4026d3:	00 
  4026d4:	89 df                	mov    %ebx,%edi
  4026d6:	b9 01 00 00 00       	mov    $0x1,%ecx
  4026db:	e8 e0 ef ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4026e0:	8b 05 96 29 00 00    	mov    0x2996(%rip),%eax        # 40507c <in+0x4>
  4026e6:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  4026ed:	48 c1 e8 26          	shr    $0x26,%rax
  4026f1:	48 89 c1             	mov    %rax,%rcx
  4026f4:	49 0f af cd          	imul   %r13,%rcx
  4026f8:	48 c1 e9 23          	shr    $0x23,%rcx
  4026fc:	01 c9                	add    %ecx,%ecx
  4026fe:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402701:	29 c8                	sub    %ecx,%eax
  402703:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  40270a:	00 
  40270b:	be 60 30 40 00       	mov    $0x403060,%esi
  402710:	48 89 df             	mov    %rbx,%rdi
  402713:	ba 01 00 00 00       	mov    $0x1,%edx
  402718:	e8 93 ea ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40271d:	8d 78 ff             	lea    -0x1(%rax),%edi
  402720:	c5 fc 10 05 38 09 00 	vmovups 0x938(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402727:	00 
  402728:	c5 fc 11 84 24 b0 02 	vmovups %ymm0,0x2b0(%rsp)
  40272f:	00 00 
  402731:	48 8d 94 24 b0 02 00 	lea    0x2b0(%rsp),%rdx
  402738:	00 
  402739:	48 89 de             	mov    %rbx,%rsi
  40273c:	b9 01 00 00 00       	mov    $0x1,%ecx
  402741:	c5 f8 77             	vzeroupper 
  402744:	e8 77 ef ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402749:	8b 1d 29 29 00 00    	mov    0x2929(%rip),%ebx        # 405078 <in>
  40274f:	48 69 c3 d3 4d 62 10 	imul   $0x10624dd3,%rbx,%rax
  402756:	48 c1 e8 26          	shr    $0x26,%rax
  40275a:	48 89 c1             	mov    %rax,%rcx
  40275d:	49 0f af cd          	imul   %r13,%rcx
  402761:	48 c1 e9 23          	shr    $0x23,%rcx
  402765:	01 c9                	add    %ecx,%ecx
  402767:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40276a:	29 c8                	sub    %ecx,%eax
  40276c:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402773:	00 
  402774:	be 60 30 40 00       	mov    $0x403060,%esi
  402779:	ba 01 00 00 00       	mov    $0x1,%edx
  40277e:	e8 2d ea ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402783:	48 c1 e0 20          	shl    $0x20,%rax
  402787:	4c 01 f0             	add    %r14,%rax
  40278a:	48 c1 f8 1e          	sar    $0x1e,%rax
  40278e:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402792:	48 83 c6 08          	add    $0x8,%rsi
  402796:	4c 89 bc 24 90 00 00 	mov    %r15,0x90(%rsp)
  40279d:	00 
  40279e:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
  4027a5:	00 00 00 00 00 
  4027aa:	c7 84 24 a0 00 00 00 	movl   $0x2,0xa0(%rsp)
  4027b1:	02 00 00 00 
  4027b5:	c6 84 24 a4 00 00 00 	movb   $0x1,0xa4(%rsp)
  4027bc:	01 
  4027bd:	4c 89 a4 24 a8 00 00 	mov    %r12,0xa8(%rsp)
  4027c4:	00 
  4027c5:	48 8d 94 24 90 00 00 	lea    0x90(%rsp),%rdx
  4027cc:	00 
  4027cd:	89 df                	mov    %ebx,%edi
  4027cf:	b9 01 00 00 00       	mov    $0x1,%ecx
  4027d4:	e8 e7 ee ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4027d9:	8b 05 99 28 00 00    	mov    0x2899(%rip),%eax        # 405078 <in>
  4027df:	48 69 c0 d3 4d 62 10 	imul   $0x10624dd3,%rax,%rax
  4027e6:	48 c1 e8 26          	shr    $0x26,%rax
  4027ea:	48 89 c1             	mov    %rax,%rcx
  4027ed:	49 0f af cd          	imul   %r13,%rcx
  4027f1:	48 c1 e9 23          	shr    $0x23,%rcx
  4027f5:	01 c9                	add    %ecx,%ecx
  4027f7:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4027fa:	29 c8                	sub    %ecx,%eax
  4027fc:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402803:	00 
  402804:	be 60 30 40 00       	mov    $0x403060,%esi
  402809:	48 89 df             	mov    %rbx,%rdi
  40280c:	ba 01 00 00 00       	mov    $0x1,%edx
  402811:	e8 9a e9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402816:	8d 78 ff             	lea    -0x1(%rax),%edi
  402819:	c5 fc 10 05 3f 08 00 	vmovups 0x83f(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402820:	00 
  402821:	c5 fc 11 84 24 90 02 	vmovups %ymm0,0x290(%rsp)
  402828:	00 00 
  40282a:	48 8d 94 24 90 02 00 	lea    0x290(%rsp),%rdx
  402831:	00 
  402832:	48 89 de             	mov    %rbx,%rsi
  402835:	b9 01 00 00 00       	mov    $0x1,%ecx
  40283a:	c5 f8 77             	vzeroupper 
  40283d:	e8 7e ee ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402842:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402846:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  40284a:	89 05 28 28 00 00    	mov    %eax,0x2828(%rip)        # 405078 <in>
  402850:	89 0d 26 28 00 00    	mov    %ecx,0x2826(%rip)        # 40507c <in+0x4>
  402856:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40285a:	c5 fc 11 05 ee 27 00 	vmovups %ymm0,0x27ee(%rip)        # 405050 <count>
  402861:	00 
  402862:	48 c7 05 03 28 00 00 	movq   $0x0,0x2803(%rip)        # 405070 <count+0x20>
  402869:	00 00 00 00 
  40286d:	bd 59 17 b7 d1       	mov    $0xd1b71759,%ebp
  402872:	48 0f af c5          	imul   %rbp,%rax
  402876:	48 c1 e8 2d          	shr    $0x2d,%rax
  40287a:	48 89 c1             	mov    %rax,%rcx
  40287d:	49 0f af cd          	imul   %r13,%rcx
  402881:	48 c1 e9 23          	shr    $0x23,%rcx
  402885:	01 c9                	add    %ecx,%ecx
  402887:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40288a:	29 c8                	sub    %ecx,%eax
  40288c:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402893:	00 
  402894:	be 60 30 40 00       	mov    $0x403060,%esi
  402899:	48 89 df             	mov    %rbx,%rdi
  40289c:	ba 01 00 00 00       	mov    $0x1,%edx
  4028a1:	c5 f8 77             	vzeroupper 
  4028a4:	e8 07 e9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4028a9:	8d 78 01             	lea    0x1(%rax),%edi
  4028ac:	c5 fc 10 05 ac 07 00 	vmovups 0x7ac(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  4028b3:	00 
  4028b4:	c5 fc 11 84 24 70 02 	vmovups %ymm0,0x270(%rsp)
  4028bb:	00 00 
  4028bd:	48 8d 94 24 70 02 00 	lea    0x270(%rsp),%rdx
  4028c4:	00 
  4028c5:	48 89 de             	mov    %rbx,%rsi
  4028c8:	b9 01 00 00 00       	mov    $0x1,%ecx
  4028cd:	c5 f8 77             	vzeroupper 
  4028d0:	e8 eb ed ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  4028d5:	8b 05 a1 27 00 00    	mov    0x27a1(%rip),%eax        # 40507c <in+0x4>
  4028db:	48 0f af c5          	imul   %rbp,%rax
  4028df:	48 c1 e8 2d          	shr    $0x2d,%rax
  4028e3:	48 89 c1             	mov    %rax,%rcx
  4028e6:	49 0f af cd          	imul   %r13,%rcx
  4028ea:	48 c1 e9 23          	shr    $0x23,%rcx
  4028ee:	01 c9                	add    %ecx,%ecx
  4028f0:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4028f3:	29 c8                	sub    %ecx,%eax
  4028f5:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  4028fc:	00 
  4028fd:	be 60 30 40 00       	mov    $0x403060,%esi
  402902:	48 89 df             	mov    %rbx,%rdi
  402905:	ba 01 00 00 00       	mov    $0x1,%edx
  40290a:	e8 a1 e8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40290f:	8d 78 01             	lea    0x1(%rax),%edi
  402912:	c5 fc 10 05 46 07 00 	vmovups 0x746(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402919:	00 
  40291a:	c5 fc 11 84 24 50 02 	vmovups %ymm0,0x250(%rsp)
  402921:	00 00 
  402923:	48 8d 94 24 50 02 00 	lea    0x250(%rsp),%rdx
  40292a:	00 
  40292b:	48 89 de             	mov    %rbx,%rsi
  40292e:	b9 01 00 00 00       	mov    $0x1,%ecx
  402933:	c5 f8 77             	vzeroupper 
  402936:	e8 85 ed ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  40293b:	8b 05 0f 27 00 00    	mov    0x270f(%rip),%eax        # 405050 <count>
  402941:	03 05 0d 27 00 00    	add    0x270d(%rip),%eax        # 405054 <count+0x4>
  402947:	89 05 07 27 00 00    	mov    %eax,0x2707(%rip)        # 405054 <count+0x4>
  40294d:	03 05 05 27 00 00    	add    0x2705(%rip),%eax        # 405058 <count+0x8>
  402953:	89 05 ff 26 00 00    	mov    %eax,0x26ff(%rip)        # 405058 <count+0x8>
  402959:	03 05 fd 26 00 00    	add    0x26fd(%rip),%eax        # 40505c <count+0xc>
  40295f:	89 05 f7 26 00 00    	mov    %eax,0x26f7(%rip)        # 40505c <count+0xc>
  402965:	03 05 f5 26 00 00    	add    0x26f5(%rip),%eax        # 405060 <count+0x10>
  40296b:	89 05 ef 26 00 00    	mov    %eax,0x26ef(%rip)        # 405060 <count+0x10>
  402971:	03 05 ed 26 00 00    	add    0x26ed(%rip),%eax        # 405064 <count+0x14>
  402977:	89 05 e7 26 00 00    	mov    %eax,0x26e7(%rip)        # 405064 <count+0x14>
  40297d:	03 05 e5 26 00 00    	add    0x26e5(%rip),%eax        # 405068 <count+0x18>
  402983:	89 05 df 26 00 00    	mov    %eax,0x26df(%rip)        # 405068 <count+0x18>
  402989:	03 05 dd 26 00 00    	add    0x26dd(%rip),%eax        # 40506c <count+0x1c>
  40298f:	89 05 d7 26 00 00    	mov    %eax,0x26d7(%rip)        # 40506c <count+0x1c>
  402995:	03 05 d5 26 00 00    	add    0x26d5(%rip),%eax        # 405070 <count+0x20>
  40299b:	89 05 cf 26 00 00    	mov    %eax,0x26cf(%rip)        # 405070 <count+0x20>
  4029a1:	01 05 cd 26 00 00    	add    %eax,0x26cd(%rip)        # 405074 <count+0x24>
  4029a7:	8b 1d cf 26 00 00    	mov    0x26cf(%rip),%ebx        # 40507c <in+0x4>
  4029ad:	48 89 d8             	mov    %rbx,%rax
  4029b0:	48 0f af c5          	imul   %rbp,%rax
  4029b4:	48 c1 e8 2d          	shr    $0x2d,%rax
  4029b8:	48 89 c1             	mov    %rax,%rcx
  4029bb:	49 0f af cd          	imul   %r13,%rcx
  4029bf:	48 c1 e9 23          	shr    $0x23,%rcx
  4029c3:	01 c9                	add    %ecx,%ecx
  4029c5:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4029c8:	29 c8                	sub    %ecx,%eax
  4029ca:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  4029d1:	00 
  4029d2:	be 60 30 40 00       	mov    $0x403060,%esi
  4029d7:	ba 01 00 00 00       	mov    $0x1,%edx
  4029dc:	e8 cf e7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4029e1:	48 c1 e0 20          	shl    $0x20,%rax
  4029e5:	4c 01 f0             	add    %r14,%rax
  4029e8:	48 c1 f8 1e          	sar    $0x1e,%rax
  4029ec:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  4029f0:	48 83 c6 08          	add    $0x8,%rsi
  4029f4:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  4029f9:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
  402a00:	00 00 
  402a02:	c7 84 24 80 00 00 00 	movl   $0x2,0x80(%rsp)
  402a09:	02 00 00 00 
  402a0d:	c6 84 24 84 00 00 00 	movb   $0x1,0x84(%rsp)
  402a14:	01 
  402a15:	4c 89 a4 24 88 00 00 	mov    %r12,0x88(%rsp)
  402a1c:	00 
  402a1d:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
  402a22:	89 df                	mov    %ebx,%edi
  402a24:	b9 01 00 00 00       	mov    $0x1,%ecx
  402a29:	e8 92 ec ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402a2e:	8b 05 48 26 00 00    	mov    0x2648(%rip),%eax        # 40507c <in+0x4>
  402a34:	48 0f af c5          	imul   %rbp,%rax
  402a38:	48 c1 e8 2d          	shr    $0x2d,%rax
  402a3c:	48 89 c1             	mov    %rax,%rcx
  402a3f:	49 0f af cd          	imul   %r13,%rcx
  402a43:	48 c1 e9 23          	shr    $0x23,%rcx
  402a47:	01 c9                	add    %ecx,%ecx
  402a49:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402a4c:	29 c8                	sub    %ecx,%eax
  402a4e:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402a55:	00 
  402a56:	be 60 30 40 00       	mov    $0x403060,%esi
  402a5b:	48 89 df             	mov    %rbx,%rdi
  402a5e:	ba 01 00 00 00       	mov    $0x1,%edx
  402a63:	e8 48 e7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402a68:	8d 78 ff             	lea    -0x1(%rax),%edi
  402a6b:	c5 fc 10 05 ed 05 00 	vmovups 0x5ed(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402a72:	00 
  402a73:	c5 fc 11 84 24 30 02 	vmovups %ymm0,0x230(%rsp)
  402a7a:	00 00 
  402a7c:	48 8d 94 24 30 02 00 	lea    0x230(%rsp),%rdx
  402a83:	00 
  402a84:	48 89 de             	mov    %rbx,%rsi
  402a87:	b9 01 00 00 00       	mov    $0x1,%ecx
  402a8c:	c5 f8 77             	vzeroupper 
  402a8f:	e8 2c ec ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402a94:	8b 1d de 25 00 00    	mov    0x25de(%rip),%ebx        # 405078 <in>
  402a9a:	48 89 d8             	mov    %rbx,%rax
  402a9d:	48 0f af c5          	imul   %rbp,%rax
  402aa1:	48 c1 e8 2d          	shr    $0x2d,%rax
  402aa5:	48 89 c1             	mov    %rax,%rcx
  402aa8:	49 0f af cd          	imul   %r13,%rcx
  402aac:	48 c1 e9 23          	shr    $0x23,%rcx
  402ab0:	01 c9                	add    %ecx,%ecx
  402ab2:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402ab5:	29 c8                	sub    %ecx,%eax
  402ab7:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402abe:	00 
  402abf:	be 60 30 40 00       	mov    $0x403060,%esi
  402ac4:	ba 01 00 00 00       	mov    $0x1,%edx
  402ac9:	e8 e2 e6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402ace:	48 c1 e0 20          	shl    $0x20,%rax
  402ad2:	4c 01 f0             	add    %r14,%rax
  402ad5:	48 c1 f8 1e          	sar    $0x1e,%rax
  402ad9:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402add:	48 83 c6 08          	add    $0x8,%rsi
  402ae1:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  402ae6:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
  402aed:	00 00 
  402aef:	c7 44 24 60 02 00 00 	movl   $0x2,0x60(%rsp)
  402af6:	00 
  402af7:	c6 44 24 64 01       	movb   $0x1,0x64(%rsp)
  402afc:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  402b01:	48 8d 54 24 50       	lea    0x50(%rsp),%rdx
  402b06:	89 df                	mov    %ebx,%edi
  402b08:	b9 01 00 00 00       	mov    $0x1,%ecx
  402b0d:	e8 ae eb ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402b12:	8b 05 60 25 00 00    	mov    0x2560(%rip),%eax        # 405078 <in>
  402b18:	48 0f af c5          	imul   %rbp,%rax
  402b1c:	48 c1 e8 2d          	shr    $0x2d,%rax
  402b20:	48 89 c1             	mov    %rax,%rcx
  402b23:	49 0f af cd          	imul   %r13,%rcx
  402b27:	48 c1 e9 23          	shr    $0x23,%rcx
  402b2b:	01 c9                	add    %ecx,%ecx
  402b2d:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402b30:	29 c8                	sub    %ecx,%eax
  402b32:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402b39:	00 
  402b3a:	be 60 30 40 00       	mov    $0x403060,%esi
  402b3f:	48 89 df             	mov    %rbx,%rdi
  402b42:	ba 01 00 00 00       	mov    $0x1,%edx
  402b47:	e8 64 e6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402b4c:	8d 78 ff             	lea    -0x1(%rax),%edi
  402b4f:	c5 fc 10 05 09 05 00 	vmovups 0x509(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402b56:	00 
  402b57:	c5 fc 11 84 24 10 02 	vmovups %ymm0,0x210(%rsp)
  402b5e:	00 00 
  402b60:	48 8d 94 24 10 02 00 	lea    0x210(%rsp),%rdx
  402b67:	00 
  402b68:	48 89 de             	mov    %rbx,%rsi
  402b6b:	b9 01 00 00 00       	mov    $0x1,%ecx
  402b70:	c5 f8 77             	vzeroupper 
  402b73:	e8 48 eb ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402b78:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402b7c:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402b80:	89 05 f2 24 00 00    	mov    %eax,0x24f2(%rip)        # 405078 <in>
  402b86:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  402b8a:	c5 fc 11 05 be 24 00 	vmovups %ymm0,0x24be(%rip)        # 405050 <count>
  402b91:	00 
  402b92:	89 0d e4 24 00 00    	mov    %ecx,0x24e4(%rip)        # 40507c <in+0x4>
  402b98:	48 c7 05 cd 24 00 00 	movq   $0x0,0x24cd(%rip)        # 405070 <count+0x20>
  402b9f:	00 00 00 00 
  402ba3:	c1 e8 05             	shr    $0x5,%eax
  402ba6:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402bad:	48 c1 e8 27          	shr    $0x27,%rax
  402bb1:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402bb7:	c1 e9 12             	shr    $0x12,%ecx
  402bba:	83 e1 fe             	and    $0xfffffffe,%ecx
  402bbd:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402bc0:	29 c8                	sub    %ecx,%eax
  402bc2:	0f b7 c0             	movzwl %ax,%eax
  402bc5:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402bcc:	00 
  402bcd:	be 60 30 40 00       	mov    $0x403060,%esi
  402bd2:	48 89 df             	mov    %rbx,%rdi
  402bd5:	ba 01 00 00 00       	mov    $0x1,%edx
  402bda:	c5 f8 77             	vzeroupper 
  402bdd:	e8 ce e5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402be2:	8d 78 01             	lea    0x1(%rax),%edi
  402be5:	c5 fc 10 05 73 04 00 	vmovups 0x473(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402bec:	00 
  402bed:	c5 fc 11 84 24 f0 01 	vmovups %ymm0,0x1f0(%rsp)
  402bf4:	00 00 
  402bf6:	48 8d 94 24 f0 01 00 	lea    0x1f0(%rsp),%rdx
  402bfd:	00 
  402bfe:	48 89 de             	mov    %rbx,%rsi
  402c01:	b9 01 00 00 00       	mov    $0x1,%ecx
  402c06:	c5 f8 77             	vzeroupper 
  402c09:	e8 b2 ea ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402c0e:	8b 05 68 24 00 00    	mov    0x2468(%rip),%eax        # 40507c <in+0x4>
  402c14:	c1 e8 05             	shr    $0x5,%eax
  402c17:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402c1e:	48 c1 e8 27          	shr    $0x27,%rax
  402c22:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402c28:	c1 e9 12             	shr    $0x12,%ecx
  402c2b:	83 e1 fe             	and    $0xfffffffe,%ecx
  402c2e:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402c31:	29 c8                	sub    %ecx,%eax
  402c33:	0f b7 c0             	movzwl %ax,%eax
  402c36:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402c3d:	00 
  402c3e:	be 60 30 40 00       	mov    $0x403060,%esi
  402c43:	48 89 df             	mov    %rbx,%rdi
  402c46:	ba 01 00 00 00       	mov    $0x1,%edx
  402c4b:	e8 60 e5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402c50:	8d 78 01             	lea    0x1(%rax),%edi
  402c53:	c5 fc 10 05 05 04 00 	vmovups 0x405(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402c5a:	00 
  402c5b:	c5 fc 11 84 24 d0 01 	vmovups %ymm0,0x1d0(%rsp)
  402c62:	00 00 
  402c64:	48 8d 94 24 d0 01 00 	lea    0x1d0(%rsp),%rdx
  402c6b:	00 
  402c6c:	48 89 de             	mov    %rbx,%rsi
  402c6f:	b9 01 00 00 00       	mov    $0x1,%ecx
  402c74:	c5 f8 77             	vzeroupper 
  402c77:	e8 44 ea ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402c7c:	8b 05 ce 23 00 00    	mov    0x23ce(%rip),%eax        # 405050 <count>
  402c82:	03 05 cc 23 00 00    	add    0x23cc(%rip),%eax        # 405054 <count+0x4>
  402c88:	89 05 c6 23 00 00    	mov    %eax,0x23c6(%rip)        # 405054 <count+0x4>
  402c8e:	03 05 c4 23 00 00    	add    0x23c4(%rip),%eax        # 405058 <count+0x8>
  402c94:	89 05 be 23 00 00    	mov    %eax,0x23be(%rip)        # 405058 <count+0x8>
  402c9a:	03 05 bc 23 00 00    	add    0x23bc(%rip),%eax        # 40505c <count+0xc>
  402ca0:	89 05 b6 23 00 00    	mov    %eax,0x23b6(%rip)        # 40505c <count+0xc>
  402ca6:	03 05 b4 23 00 00    	add    0x23b4(%rip),%eax        # 405060 <count+0x10>
  402cac:	89 05 ae 23 00 00    	mov    %eax,0x23ae(%rip)        # 405060 <count+0x10>
  402cb2:	03 05 ac 23 00 00    	add    0x23ac(%rip),%eax        # 405064 <count+0x14>
  402cb8:	89 05 a6 23 00 00    	mov    %eax,0x23a6(%rip)        # 405064 <count+0x14>
  402cbe:	03 05 a4 23 00 00    	add    0x23a4(%rip),%eax        # 405068 <count+0x18>
  402cc4:	89 05 9e 23 00 00    	mov    %eax,0x239e(%rip)        # 405068 <count+0x18>
  402cca:	03 05 9c 23 00 00    	add    0x239c(%rip),%eax        # 40506c <count+0x1c>
  402cd0:	89 05 96 23 00 00    	mov    %eax,0x2396(%rip)        # 40506c <count+0x1c>
  402cd6:	03 05 94 23 00 00    	add    0x2394(%rip),%eax        # 405070 <count+0x20>
  402cdc:	89 05 8e 23 00 00    	mov    %eax,0x238e(%rip)        # 405070 <count+0x20>
  402ce2:	01 05 8c 23 00 00    	add    %eax,0x238c(%rip)        # 405074 <count+0x24>
  402ce8:	8b 1d 8e 23 00 00    	mov    0x238e(%rip),%ebx        # 40507c <in+0x4>
  402cee:	89 d8                	mov    %ebx,%eax
  402cf0:	c1 e8 05             	shr    $0x5,%eax
  402cf3:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402cfa:	48 c1 e8 27          	shr    $0x27,%rax
  402cfe:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402d04:	c1 e9 12             	shr    $0x12,%ecx
  402d07:	83 e1 fe             	and    $0xfffffffe,%ecx
  402d0a:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402d0d:	29 c8                	sub    %ecx,%eax
  402d0f:	0f b7 c0             	movzwl %ax,%eax
  402d12:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402d19:	00 
  402d1a:	be 60 30 40 00       	mov    $0x403060,%esi
  402d1f:	ba 01 00 00 00       	mov    $0x1,%edx
  402d24:	e8 87 e4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402d29:	48 c1 e0 20          	shl    $0x20,%rax
  402d2d:	4c 01 f0             	add    %r14,%rax
  402d30:	48 c1 f8 1e          	sar    $0x1e,%rax
  402d34:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402d38:	48 83 c6 08          	add    $0x8,%rsi
  402d3c:	4c 89 7c 24 30       	mov    %r15,0x30(%rsp)
  402d41:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402d48:	00 00 
  402d4a:	c7 44 24 40 02 00 00 	movl   $0x2,0x40(%rsp)
  402d51:	00 
  402d52:	c6 44 24 44 01       	movb   $0x1,0x44(%rsp)
  402d57:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
  402d5c:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  402d61:	89 df                	mov    %ebx,%edi
  402d63:	b9 01 00 00 00       	mov    $0x1,%ecx
  402d68:	e8 53 e9 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402d6d:	8b 05 09 23 00 00    	mov    0x2309(%rip),%eax        # 40507c <in+0x4>
  402d73:	c1 e8 05             	shr    $0x5,%eax
  402d76:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402d7d:	48 c1 e8 27          	shr    $0x27,%rax
  402d81:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402d87:	c1 e9 12             	shr    $0x12,%ecx
  402d8a:	83 e1 fe             	and    $0xfffffffe,%ecx
  402d8d:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402d90:	29 c8                	sub    %ecx,%eax
  402d92:	0f b7 c0             	movzwl %ax,%eax
  402d95:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402d9c:	00 
  402d9d:	be 60 30 40 00       	mov    $0x403060,%esi
  402da2:	48 89 df             	mov    %rbx,%rdi
  402da5:	ba 01 00 00 00       	mov    $0x1,%edx
  402daa:	e8 01 e4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402daf:	8d 78 ff             	lea    -0x1(%rax),%edi
  402db2:	c5 fc 10 05 a6 02 00 	vmovups 0x2a6(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402db9:	00 
  402dba:	c5 fc 11 84 24 b0 01 	vmovups %ymm0,0x1b0(%rsp)
  402dc1:	00 00 
  402dc3:	48 8d 94 24 b0 01 00 	lea    0x1b0(%rsp),%rdx
  402dca:	00 
  402dcb:	48 89 de             	mov    %rbx,%rsi
  402dce:	b9 01 00 00 00       	mov    $0x1,%ecx
  402dd3:	c5 f8 77             	vzeroupper 
  402dd6:	e8 e5 e8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402ddb:	8b 1d 97 22 00 00    	mov    0x2297(%rip),%ebx        # 405078 <in>
  402de1:	89 d8                	mov    %ebx,%eax
  402de3:	c1 e8 05             	shr    $0x5,%eax
  402de6:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402ded:	48 c1 e8 27          	shr    $0x27,%rax
  402df1:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402df7:	c1 e9 12             	shr    $0x12,%ecx
  402dfa:	83 e1 fe             	and    $0xfffffffe,%ecx
  402dfd:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402e00:	29 c8                	sub    %ecx,%eax
  402e02:	0f b7 c0             	movzwl %ax,%eax
  402e05:	48 8d 3c 85 50 50 40 	lea    0x405050(,%rax,4),%rdi
  402e0c:	00 
  402e0d:	be 60 30 40 00       	mov    $0x403060,%esi
  402e12:	ba 01 00 00 00       	mov    $0x1,%edx
  402e17:	e8 94 e3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402e1c:	48 c1 e0 20          	shl    $0x20,%rax
  402e20:	4c 01 f0             	add    %r14,%rax
  402e23:	48 c1 f8 1e          	sar    $0x1e,%rax
  402e27:	48 8d 34 04          	lea    (%rsp,%rax,1),%rsi
  402e2b:	48 83 c6 08          	add    $0x8,%rsi
  402e2f:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  402e34:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  402e3b:	00 00 
  402e3d:	c7 44 24 20 02 00 00 	movl   $0x2,0x20(%rsp)
  402e44:	00 
  402e45:	c6 44 24 24 01       	movb   $0x1,0x24(%rsp)
  402e4a:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
  402e4f:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  402e54:	89 df                	mov    %ebx,%edi
  402e56:	b9 01 00 00 00       	mov    $0x1,%ecx
  402e5b:	e8 60 e8 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402e60:	8b 05 12 22 00 00    	mov    0x2212(%rip),%eax        # 405078 <in>
  402e66:	c1 e8 05             	shr    $0x5,%eax
  402e69:	48 69 c0 c5 5a 7c 0a 	imul   $0xa7c5ac5,%rax,%rax
  402e70:	48 c1 e8 27          	shr    $0x27,%rax
  402e74:	69 c8 cd cc 00 00    	imul   $0xcccd,%eax,%ecx
  402e7a:	c1 e9 12             	shr    $0x12,%ecx
  402e7d:	83 e1 fe             	and    $0xfffffffe,%ecx
  402e80:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402e83:	29 c8                	sub    %ecx,%eax
  402e85:	0f b7 c0             	movzwl %ax,%eax
  402e88:	48 8d 1c 85 50 50 40 	lea    0x405050(,%rax,4),%rbx
  402e8f:	00 
  402e90:	be 60 30 40 00       	mov    $0x403060,%esi
  402e95:	48 89 df             	mov    %rbx,%rdi
  402e98:	ba 01 00 00 00       	mov    $0x1,%edx
  402e9d:	e8 0e e3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402ea2:	8d 78 ff             	lea    -0x1(%rax),%edi
  402ea5:	c5 fc 10 05 b3 01 00 	vmovups 0x1b3(%rip),%ymm0        # 403060 <_IO_stdin_used+0x60>
  402eac:	00 
  402ead:	c5 fc 11 84 24 90 01 	vmovups %ymm0,0x190(%rsp)
  402eb4:	00 00 
  402eb6:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  402ebd:	00 
  402ebe:	48 89 de             	mov    %rbx,%rsi
  402ec1:	b9 01 00 00 00       	mov    $0x1,%ecx
  402ec6:	c5 f8 77             	vzeroupper 
  402ec9:	e8 f2 e7 ff ff       	callq  4016c0 <uint32_t_secure_store_impl>
  402ece:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  402ed3:	48 89 05 9e 21 00 00 	mov    %rax,0x219e(%rip)        # 405078 <in>
  402eda:	be 78 50 40 00       	mov    $0x405078,%esi
  402edf:	ba 08 00 00 00       	mov    $0x8,%edx
  402ee4:	bf 01 00 00 00       	mov    $0x1,%edi
  402ee9:	e8 42 e1 ff ff       	callq  401030 <write@plt>
  402eee:	31 c0                	xor    %eax,%eax
  402ef0:	48 81 c4 58 04 00 00 	add    $0x458,%rsp
  402ef7:	5b                   	pop    %rbx
  402ef8:	41 5c                	pop    %r12
  402efa:	41 5d                	pop    %r13
  402efc:	41 5e                	pop    %r14
  402efe:	41 5f                	pop    %r15
  402f00:	5d                   	pop    %rbp
  402f01:	c3                   	retq   
  402f02:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f09:	00 00 00 
  402f0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402f10 <__libc_csu_init>:
  402f10:	f3 0f 1e fa          	endbr64 
  402f14:	41 57                	push   %r15
  402f16:	4c 8d 3d f3 1e 00 00 	lea    0x1ef3(%rip),%r15        # 404e10 <__frame_dummy_init_array_entry>
  402f1d:	41 56                	push   %r14
  402f1f:	49 89 d6             	mov    %rdx,%r14
  402f22:	41 55                	push   %r13
  402f24:	49 89 f5             	mov    %rsi,%r13
  402f27:	41 54                	push   %r12
  402f29:	41 89 fc             	mov    %edi,%r12d
  402f2c:	55                   	push   %rbp
  402f2d:	48 8d 2d e4 1e 00 00 	lea    0x1ee4(%rip),%rbp        # 404e18 <__do_global_dtors_aux_fini_array_entry>
  402f34:	53                   	push   %rbx
  402f35:	4c 29 fd             	sub    %r15,%rbp
  402f38:	48 83 ec 08          	sub    $0x8,%rsp
  402f3c:	e8 bf e0 ff ff       	callq  401000 <_init>
  402f41:	48 c1 fd 03          	sar    $0x3,%rbp
  402f45:	74 1f                	je     402f66 <__libc_csu_init+0x56>
  402f47:	31 db                	xor    %ebx,%ebx
  402f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402f50:	4c 89 f2             	mov    %r14,%rdx
  402f53:	4c 89 ee             	mov    %r13,%rsi
  402f56:	44 89 e7             	mov    %r12d,%edi
  402f59:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  402f5d:	48 83 c3 01          	add    $0x1,%rbx
  402f61:	48 39 dd             	cmp    %rbx,%rbp
  402f64:	75 ea                	jne    402f50 <__libc_csu_init+0x40>
  402f66:	48 83 c4 08          	add    $0x8,%rsp
  402f6a:	5b                   	pop    %rbx
  402f6b:	5d                   	pop    %rbp
  402f6c:	41 5c                	pop    %r12
  402f6e:	41 5d                	pop    %r13
  402f70:	41 5e                	pop    %r14
  402f72:	41 5f                	pop    %r15
  402f74:	c3                   	retq   
  402f75:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402f7c:	00 00 00 00 

0000000000402f80 <__libc_csu_fini>:
  402f80:	f3 0f 1e fa          	endbr64 
  402f84:	c3                   	retq   

Disassembly of section .fini:

0000000000402f88 <_fini>:
  402f88:	f3 0f 1e fa          	endbr64 
  402f8c:	48 83 ec 08          	sub    $0x8,%rsp
  402f90:	48 83 c4 08          	add    $0x8,%rsp
  402f94:	c3                   	retq   

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
  403170:	bc 03 00 00 90       	mov    $0x90000003,%esp
  403175:	fe                   	(bad)  
  403176:	ff                   	(bad)  
  403177:	ff 08                	decl   (%rax)
  403179:	04 00                	add    $0x0,%al
  40317b:	00 00                	add    %al,(%rax)
  40317d:	ff                   	(bad)  
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
  403447:	ff e2                	jmpq   *%rdx
  403449:	13 00                	adc    (%rax),%eax
  40344b:	00 00                	add    %al,(%rax)
  40344d:	41 0e                	rex.B (bad) 
  40344f:	10 42 0e             	adc    %al,0xe(%rdx)
  403452:	18 42 0e             	sbb    %al,0xe(%rdx)
  403455:	20 42 0e             	and    %al,0xe(%rdx)
  403458:	28 42 0e             	sub    %al,0xe(%rdx)
  40345b:	30 41 0e             	xor    %al,0xe(%rcx)
  40345e:	38 47 0e             	cmp    %al,0xe(%rdi)
  403461:	90                   	nop
  403462:	09 83 07 8c 06 8d    	or     %eax,-0x72f973f9(%rbx)
  403468:	05 8e 04 8f 03       	add    $0x38f048e,%eax
  40346d:	86 02                	xchg   %al,(%rdx)
  40346f:	03 c6                	add    %esi,%eax
  403471:	13 0e                	adc    (%rsi),%ecx
  403473:	38 41 0e             	cmp    %al,0xe(%rcx)
  403476:	30 42 0e             	xor    %al,0xe(%rdx)
  403479:	28 42 0e             	sub    %al,0xe(%rdx)
  40347c:	20 42 0e             	and    %al,0xe(%rdx)
  40347f:	18 42 0e             	sbb    %al,0xe(%rdx)
  403482:	10 41 0e             	adc    %al,0xe(%rcx)
  403485:	08 00                	or     %al,(%rax)
  403487:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  40348b:	00 04 03             	add    %al,(%rbx,%rax,1)
  40348e:	00 00                	add    %al,(%rax)
  403490:	80 fa ff             	cmp    $0xff,%dl
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
  4034d7:	00 a8 fa ff ff 05    	add    %ch,0x5fffffa(%rax)
  4034dd:	00 00                	add    %al,(%rax)
  4034df:	00 00                	add    %al,(%rax)
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
  404e47:	00 88 2f 40 00 00    	add    %cl,0x402f(%rax)
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
