
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
  4002d3:	00 a5 c3 7a 58 a8    	add    %ah,-0x57a7853d(%rbp)
  4002d9:	2e fa                	cs cli 
  4002db:	c1 8b 90 d9 96 0d 88 	rorl   $0x88,0xd96d990(%rbx)
  4002e2:	1c 12                	sbb    $0x12,%al
  4002e4:	ec                   	in     (%dx),%al
  4002e5:	f7                   	.byte 0xf7
  4002e6:	8f                   	(bad)  
  4002e7:	3a                   	.byte 0x3a

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
  400410:	f0 df 40 00          	lock filds 0x0(%rax)
  400414:	00 00                	add    %al,(%rax)
  400416:	00 00                	add    %al,(%rax)
  400418:	06                   	(bad)  
  400419:	00 00                	add    %al,(%rax)
  40041b:	00 03                	add    %al,(%rbx)
	...
  400425:	00 00                	add    %al,(%rax)
  400427:	00 f8                	add    %bh,%al
  400429:	df 40 00             	filds  0x0(%rax)
  40042c:	00 00                	add    %al,(%rax)
  40042e:	00 00                	add    %al,(%rax)
  400430:	06                   	(bad)  
  400431:	00 00                	add    %al,(%rax)
  400433:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .rela.plt:

0000000000400440 <.rela.plt>:
  400440:	18 e0                	sbb    %ah,%al
  400442:	40 00 00             	add    %al,(%rax)
  400445:	00 00                	add    %al,(%rax)
  400447:	00 07                	add    %al,(%rdi)
  400449:	00 00                	add    %al,(%rax)
  40044b:	00 01                	add    %al,(%rcx)
	...
  400455:	00 00                	add    %al,(%rax)
  400457:	00 20                	add    %ah,(%rax)
  400459:	e0 40                	loopne 40049b <_init-0xb65>
  40045b:	00 00                	add    %al,(%rax)
  40045d:	00 00                	add    %al,(%rax)
  40045f:	00 07                	add    %al,(%rdi)
  400461:	00 00                	add    %al,(%rax)
  400463:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 cf 00 00 	mov    0xcfe9(%rip),%rax        # 40dff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 cf 00 00    	pushq  0xcfe2(%rip)        # 40e008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 cf 00 00    	jmpq   *0xcfe4(%rip)        # 40e010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <write@plt>:
  401030:	ff 25 e2 cf 00 00    	jmpq   *0xcfe2(%rip)        # 40e018 <write@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <read@plt>:
  401040:	ff 25 da cf 00 00    	jmpq   *0xcfda(%rip)        # 40e020 <read@GLIBC_2.2.5>
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
  401063:	49 c7 c0 90 b2 40 00 	mov    $0x40b290,%r8
  40106a:	48 c7 c1 20 b2 40 00 	mov    $0x40b220,%rcx
  401071:	48 c7 c7 50 19 40 00 	mov    $0x401950,%rdi
  401078:	ff 15 72 cf 00 00    	callq  *0xcf72(%rip)        # 40dff0 <__libc_start_main@GLIBC_2.2.5>
  40107e:	f4                   	hlt    
  40107f:	90                   	nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	c3                   	retq   
  401085:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40108c:	00 00 00 
  40108f:	90                   	nop

0000000000401090 <deregister_tm_clones>:
  401090:	b8 38 e0 40 00       	mov    $0x40e038,%eax
  401095:	48 3d 38 e0 40 00    	cmp    $0x40e038,%rax
  40109b:	74 13                	je     4010b0 <deregister_tm_clones+0x20>
  40109d:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a2:	48 85 c0             	test   %rax,%rax
  4010a5:	74 09                	je     4010b0 <deregister_tm_clones+0x20>
  4010a7:	bf 38 e0 40 00       	mov    $0x40e038,%edi
  4010ac:	ff e0                	jmpq   *%rax
  4010ae:	66 90                	xchg   %ax,%ax
  4010b0:	c3                   	retq   
  4010b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010b8:	00 00 00 00 
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010c0 <register_tm_clones>:
  4010c0:	be 38 e0 40 00       	mov    $0x40e038,%esi
  4010c5:	48 81 ee 38 e0 40 00 	sub    $0x40e038,%rsi
  4010cc:	48 89 f0             	mov    %rsi,%rax
  4010cf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010d3:	48 c1 f8 03          	sar    $0x3,%rax
  4010d7:	48 01 c6             	add    %rax,%rsi
  4010da:	48 d1 fe             	sar    %rsi
  4010dd:	74 11                	je     4010f0 <register_tm_clones+0x30>
  4010df:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e4:	48 85 c0             	test   %rax,%rax
  4010e7:	74 07                	je     4010f0 <register_tm_clones+0x30>
  4010e9:	bf 38 e0 40 00       	mov    $0x40e038,%edi
  4010ee:	ff e0                	jmpq   *%rax
  4010f0:	c3                   	retq   
  4010f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <__do_global_dtors_aux>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	80 3d 2d cf 00 00 00 	cmpb   $0x0,0xcf2d(%rip)        # 40e038 <__TMC_END__>
  40110b:	75 13                	jne    401120 <__do_global_dtors_aux+0x20>
  40110d:	55                   	push   %rbp
  40110e:	48 89 e5             	mov    %rsp,%rbp
  401111:	e8 7a ff ff ff       	callq  401090 <deregister_tm_clones>
  401116:	c6 05 1b cf 00 00 01 	movb   $0x1,0xcf1b(%rip)        # 40e038 <__TMC_END__>
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
  40116f:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
  401173:	c5 f9 70 c8 55       	vpshufd $0x55,%xmm0,%xmm1
  401178:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  40117c:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  401180:	c5 f8 77             	vzeroupper 
  401183:	c3                   	retq   
  401184:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40118b:	00 00 00 00 00 

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
  4011b0:	48 8b 16             	mov    (%rsi),%rdx
  4011b3:	8b 46 18             	mov    0x18(%rsi),%eax
  4011b6:	48 01 d0             	add    %rdx,%rax
  4011b9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  4011bd:	8b 4e 1c             	mov    0x1c(%rsi),%ecx
  4011c0:	48 01 d1             	add    %rdx,%rcx
  4011c3:	48 29 c1             	sub    %rax,%rcx
  4011c6:	48 c1 e9 05          	shr    $0x5,%rcx
  4011ca:	ff c1                	inc    %ecx
  4011cc:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
  4011d3:	00 
  4011d4:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
  4011d8:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4011dc:	39 ca                	cmp    %ecx,%edx
  4011de:	73 54                	jae    401234 <uint64_t_secure_load_impl+0x84>
  4011e0:	48 89 fa             	mov    %rdi,%rdx
  4011e3:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
  4011e7:	62 f2 fd 28 7c ca    	vpbroadcastq %rdx,%ymm1
  4011ed:	62 f2 fd 28 7c c0    	vpbroadcastq %rax,%ymm0
  4011f3:	c5 fd eb 15 25 ae 00 	vpor   0xae25(%rip),%ymm0,%ymm2        # 40c020 <_IO_stdin_used+0x20>
  4011fa:	00 
  4011fb:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4011ff:	c4 e2 7d 59 1d 38 af 	vpbroadcastq 0xaf38(%rip),%ymm3        # 40c140 <_IO_stdin_used+0x140>
  401206:	00 00 
  401208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40120f:	00 
  401210:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
  401214:	c1 e2 05             	shl    $0x5,%edx
  401217:	62 f2 ed 28 29 c9    	vpcmpeqq %ymm1,%ymm2,%k1
  40121d:	62 f1 fd 29 6f 04 10 	vmovdqa64 (%rax,%rdx,1),%ymm0{%k1}
  401224:	c5 ed d4 d3          	vpaddq %ymm3,%ymm2,%ymm2
  401228:	ff 44 24 fc          	incl   -0x4(%rsp)
  40122c:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
  401230:	39 ca                	cmp    %ecx,%edx
  401232:	72 dc                	jb     401210 <uint64_t_secure_load_impl+0x60>
  401234:	c4 e3 7d 39 c1 01    	vextracti128 $0x1,%ymm0,%xmm1
  40123a:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  40123e:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  401243:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  401247:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  40124c:	c1 e7 03             	shl    $0x3,%edi
  40124f:	c4 e2 c3 f7 c0       	shrx   %rdi,%rax,%rax
  401254:	c5 f8 77             	vzeroupper 
  401257:	c3                   	retq   
  401258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40125f:	00 

0000000000401260 <uint64_t_secure_double_load_impl>:
  401260:	55                   	push   %rbp
  401261:	48 89 e5             	mov    %rsp,%rbp
  401264:	53                   	push   %rbx
  401265:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  401269:	48 83 ec 60          	sub    $0x60,%rsp
  40126d:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  401274:	00 
  401275:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401279:	39 d0                	cmp    %edx,%eax
  40127b:	0f 83 ce 01 00 00    	jae    40144f <uint64_t_secure_double_load_impl+0x1ef>
  401281:	48 89 f8             	mov    %rdi,%rax
  401284:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  401288:	62 f2 fd 28 7c c0    	vpbroadcastq %rax,%ymm0
  40128e:	c1 e7 03             	shl    $0x3,%edi
  401291:	83 e7 38             	and    $0x38,%edi
  401294:	c5 f1 ef c9          	vpxor  %xmm1,%xmm1,%xmm1
  401298:	31 c0                	xor    %eax,%eax
  40129a:	c5 7d 6f 0d 7e ad 00 	vmovdqa 0xad7e(%rip),%ymm9        # 40c020 <_IO_stdin_used+0x20>
  4012a1:	00 
  4012a2:	c4 e2 7d 59 1d 95 ae 	vpbroadcastq 0xae95(%rip),%ymm3        # 40c140 <_IO_stdin_used+0x140>
  4012a9:	00 00 
  4012ab:	c4 e2 7d 59 25 94 ae 	vpbroadcastq 0xae94(%rip),%ymm4        # 40c148 <_IO_stdin_used+0x148>
  4012b2:	00 00 
  4012b4:	c4 e2 7d 59 2d 93 ae 	vpbroadcastq 0xae93(%rip),%ymm5        # 40c150 <_IO_stdin_used+0x150>
  4012bb:	00 00 
  4012bd:	c4 e2 7d 59 35 92 ae 	vpbroadcastq 0xae92(%rip),%ymm6        # 40c158 <_IO_stdin_used+0x158>
  4012c4:	00 00 
  4012c6:	eb 38                	jmp    401300 <uint64_t_secure_double_load_impl+0xa0>
  4012c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4012cf:	00 
  4012d0:	c4 e3 7d 39 cf 01    	vextracti128 $0x1,%ymm1,%xmm7
  4012d6:	c5 c1 d4 f9          	vpaddq %xmm1,%xmm7,%xmm7
  4012da:	c5 f9 70 d7 ee       	vpshufd $0xee,%xmm7,%xmm2
  4012df:	c5 e9 d4 d7          	vpaddq %xmm7,%xmm2,%xmm2
  4012e3:	c4 e1 f9 7e d1       	vmovq  %xmm2,%rcx
  4012e8:	48 09 c1             	or     %rax,%rcx
  4012eb:	c4 e2 c3 f7 c1       	shrx   %rdi,%rcx,%rax
  4012f0:	ff 44 24 1c          	incl   0x1c(%rsp)
  4012f4:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
  4012f8:	39 d1                	cmp    %edx,%ecx
  4012fa:	0f 83 51 01 00 00    	jae    401451 <uint64_t_secure_double_load_impl+0x1f1>
  401300:	44 8b 4c 24 1c       	mov    0x1c(%rsp),%r9d
  401305:	49 c1 e1 05          	shl    $0x5,%r9
  401309:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
  40130d:	48 c1 e1 05          	shl    $0x5,%rcx
  401311:	44 8b 44 0e 18       	mov    0x18(%rsi,%rcx,1),%r8d
  401316:	4e 03 04 0e          	add    (%rsi,%r9,1),%r8
  40131a:	49 83 e0 e0          	and    $0xffffffffffffffe0,%r8
  40131e:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
  401322:	48 c1 e1 05          	shl    $0x5,%rcx
  401326:	4c 8b 0c 0e          	mov    (%rsi,%rcx,1),%r9
  40132a:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
  40132e:	48 c1 e1 05          	shl    $0x5,%rcx
  401332:	8b 4c 0e 1c          	mov    0x1c(%rsi,%rcx,1),%ecx
  401336:	4d 29 c1             	sub    %r8,%r9
  401339:	49 01 c9             	add    %rcx,%r9
  40133c:	49 c1 e9 05          	shr    $0x5,%r9
  401340:	41 ff c1             	inc    %r9d
  401343:	74 8b                	je     4012d0 <uint64_t_secure_double_load_impl+0x70>
  401345:	62 d2 fd 28 7c f8    	vpbroadcastq %r8,%ymm7
  40134b:	c5 b5 eb ff          	vpor   %ymm7,%ymm9,%ymm7
  40134f:	45 89 ca             	mov    %r9d,%r10d
  401352:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  401356:	45 89 d1             	mov    %r10d,%r9d
  401359:	41 83 e1 03          	and    $0x3,%r9d
  40135d:	48 83 f9 03          	cmp    $0x3,%rcx
  401361:	73 0d                	jae    401370 <uint64_t_secure_double_load_impl+0x110>
  401363:	31 db                	xor    %ebx,%ebx
  401365:	e9 a0 00 00 00       	jmpq   40140a <uint64_t_secure_double_load_impl+0x1aa>
  40136a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401370:	41 83 e2 fc          	and    $0xfffffffc,%r10d
  401374:	45 31 db             	xor    %r11d,%r11d
  401377:	31 db                	xor    %ebx,%ebx
  401379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401380:	44 89 d9             	mov    %r11d,%ecx
  401383:	83 e1 80             	and    $0xffffff80,%ecx
  401386:	62 f2 c5 28 29 c8    	vpcmpeqq %ymm0,%ymm7,%k1
  40138c:	c4 c1 7d 6f 14 08    	vmovdqa (%r8,%rcx,1),%ymm2
  401392:	c5 fd 7f 54 24 20    	vmovdqa %ymm2,0x20(%rsp)
  401398:	62 f1 fd 29 6f ca    	vmovdqa64 %ymm2,%ymm1{%k1}
  40139e:	c5 c5 d4 d3          	vpaddq %ymm3,%ymm7,%ymm2
  4013a2:	62 f2 ed 28 29 c8    	vpcmpeqq %ymm0,%ymm2,%k1
  4013a8:	c4 c1 7d 6f 54 08 20 	vmovdqa 0x20(%r8,%rcx,1),%ymm2
  4013af:	c5 fd 7f 54 24 20    	vmovdqa %ymm2,0x20(%rsp)
  4013b5:	62 f1 fd 29 6f ca    	vmovdqa64 %ymm2,%ymm1{%k1}
  4013bb:	c5 c5 d4 d4          	vpaddq %ymm4,%ymm7,%ymm2
  4013bf:	62 f2 ed 28 29 c8    	vpcmpeqq %ymm0,%ymm2,%k1
  4013c5:	c4 c1 7d 6f 54 08 40 	vmovdqa 0x40(%r8,%rcx,1),%ymm2
  4013cc:	c5 fd 7f 54 24 20    	vmovdqa %ymm2,0x20(%rsp)
  4013d2:	62 f1 fd 29 6f ca    	vmovdqa64 %ymm2,%ymm1{%k1}
  4013d8:	c5 c5 d4 d5          	vpaddq %ymm5,%ymm7,%ymm2
  4013dc:	c4 41 7d 6f 44 08 60 	vmovdqa 0x60(%r8,%rcx,1),%ymm8
  4013e3:	c5 7d 7f 44 24 20    	vmovdqa %ymm8,0x20(%rsp)
  4013e9:	62 f2 ed 28 29 c8    	vpcmpeqq %ymm0,%ymm2,%k1
  4013ef:	62 d1 fd 29 6f c8    	vmovdqa64 %ymm8,%ymm1{%k1}
  4013f5:	c5 c5 d4 fe          	vpaddq %ymm6,%ymm7,%ymm7
  4013f9:	48 83 c3 04          	add    $0x4,%rbx
  4013fd:	49 83 eb 80          	sub    $0xffffffffffffff80,%r11
  401401:	49 39 da             	cmp    %rbx,%r10
  401404:	0f 85 76 ff ff ff    	jne    401380 <uint64_t_secure_double_load_impl+0x120>
  40140a:	4d 85 c9             	test   %r9,%r9
  40140d:	0f 84 bd fe ff ff    	je     4012d0 <uint64_t_secure_double_load_impl+0x70>
  401413:	48 c1 e3 05          	shl    $0x5,%rbx
  401417:	49 f7 d9             	neg    %r9
  40141a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401420:	89 d9                	mov    %ebx,%ecx
  401422:	83 e1 e0             	and    $0xffffffe0,%ecx
  401425:	62 f2 c5 28 29 c8    	vpcmpeqq %ymm0,%ymm7,%k1
  40142b:	c4 41 7d 6f 04 08    	vmovdqa (%r8,%rcx,1),%ymm8
  401431:	c5 7d 7f 44 24 20    	vmovdqa %ymm8,0x20(%rsp)
  401437:	62 d1 fd 29 6f c8    	vmovdqa64 %ymm8,%ymm1{%k1}
  40143d:	c5 c5 d4 fb          	vpaddq %ymm3,%ymm7,%ymm7
  401441:	48 83 c3 20          	add    $0x20,%rbx
  401445:	49 ff c1             	inc    %r9
  401448:	75 d6                	jne    401420 <uint64_t_secure_double_load_impl+0x1c0>
  40144a:	e9 81 fe ff ff       	jmpq   4012d0 <uint64_t_secure_double_load_impl+0x70>
  40144f:	31 c0                	xor    %eax,%eax
  401451:	48 8d 65 f8          	lea    -0x8(%rbp),%rsp
  401455:	5b                   	pop    %rbx
  401456:	5d                   	pop    %rbp
  401457:	c5 f8 77             	vzeroupper 
  40145a:	c3                   	retq   
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <uint64_t_secure_load>:
  401460:	e9 4b fd ff ff       	jmpq   4011b0 <uint64_t_secure_load_impl>
  401465:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40146c:	00 00 00 00 

0000000000401470 <uint32_t_secure_load>:
  401470:	e9 3b fd ff ff       	jmpq   4011b0 <uint64_t_secure_load_impl>
  401475:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40147c:	00 00 00 00 

0000000000401480 <uint16_t_secure_load>:
  401480:	50                   	push   %rax
  401481:	e8 2a fd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401486:	59                   	pop    %rcx
  401487:	c3                   	retq   
  401488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40148f:	00 

0000000000401490 <uint8_t_secure_load>:
  401490:	50                   	push   %rax
  401491:	e8 1a fd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401496:	59                   	pop    %rcx
  401497:	c3                   	retq   
  401498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40149f:	00 

00000000004014a0 <uint64_t_secure_load_sensitive>:
  4014a0:	e9 bb fd ff ff       	jmpq   401260 <uint64_t_secure_double_load_impl>
  4014a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014ac:	00 00 00 00 

00000000004014b0 <uint32_t_secure_load_sensitive>:
  4014b0:	e9 ab fd ff ff       	jmpq   401260 <uint64_t_secure_double_load_impl>
  4014b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014bc:	00 00 00 00 

00000000004014c0 <uint16_t_secure_load_sensitive>:
  4014c0:	50                   	push   %rax
  4014c1:	e8 9a fd ff ff       	callq  401260 <uint64_t_secure_double_load_impl>
  4014c6:	59                   	pop    %rcx
  4014c7:	c3                   	retq   
  4014c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4014cf:	00 

00000000004014d0 <uint8_t_secure_load_sensitive>:
  4014d0:	50                   	push   %rax
  4014d1:	e8 8a fd ff ff       	callq  401260 <uint64_t_secure_double_load_impl>
  4014d6:	59                   	pop    %rcx
  4014d7:	c3                   	retq   
  4014d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4014df:	00 

00000000004014e0 <uint64_t_secure_load_single>:
  4014e0:	48 8b 07             	mov    (%rdi),%rax
  4014e3:	c3                   	retq   
  4014e4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4014eb:	00 00 00 00 00 

00000000004014f0 <uint32_t_secure_load_single>:
  4014f0:	8b 07                	mov    (%rdi),%eax
  4014f2:	c3                   	retq   
  4014f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4014fa:	84 00 00 00 00 00 

0000000000401500 <uint16_t_secure_load_single>:
  401500:	0f b7 07             	movzwl (%rdi),%eax
  401503:	c3                   	retq   
  401504:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40150b:	00 00 00 00 00 

0000000000401510 <uint8_t_secure_load_single>:
  401510:	8a 07                	mov    (%rdi),%al
  401512:	c3                   	retq   
  401513:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40151a:	84 00 00 00 00 00 

0000000000401520 <uint64_t_secure_load_single_sensitive>:
  401520:	48 8b 06             	mov    (%rsi),%rax
  401523:	8b 4e 18             	mov    0x18(%rsi),%ecx
  401526:	48 8b 14 08          	mov    (%rax,%rcx,1),%rdx
  40152a:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  40152e:	c3                   	retq   
  40152f:	90                   	nop

0000000000401530 <uint32_t_secure_load_single_sensitive>:
  401530:	48 8b 06             	mov    (%rsi),%rax
  401533:	8b 4e 18             	mov    0x18(%rsi),%ecx
  401536:	8b 14 08             	mov    (%rax,%rcx,1),%edx
  401539:	8b 04 08             	mov    (%rax,%rcx,1),%eax
  40153c:	c3                   	retq   
  40153d:	0f 1f 00             	nopl   (%rax)

0000000000401540 <uint16_t_secure_load_single_sensitive>:
  401540:	48 8b 06             	mov    (%rsi),%rax
  401543:	8b 4e 18             	mov    0x18(%rsi),%ecx
  401546:	0f b7 14 08          	movzwl (%rax,%rcx,1),%edx
  40154a:	0f b7 04 08          	movzwl (%rax,%rcx,1),%eax
  40154e:	c3                   	retq   
  40154f:	90                   	nop

0000000000401550 <uint8_t_secure_load_single_sensitive>:
  401550:	48 8b 06             	mov    (%rsi),%rax
  401553:	8b 4e 18             	mov    0x18(%rsi),%ecx
  401556:	8a 14 08             	mov    (%rax,%rcx,1),%dl
  401559:	8a 04 08             	mov    (%rax,%rcx,1),%al
  40155c:	c3                   	retq   
  40155d:	0f 1f 00             	nopl   (%rax)

0000000000401560 <uint64_t_secure_store_impl>:
  401560:	4c 8b 02             	mov    (%rdx),%r8
  401563:	8b 42 18             	mov    0x18(%rdx),%eax
  401566:	4c 01 c0             	add    %r8,%rax
  401569:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  40156d:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  401570:	4c 01 c1             	add    %r8,%rcx
  401573:	48 39 c1             	cmp    %rax,%rcx
  401576:	72 75                	jb     4015ed <uint64_t_secure_store_impl+0x8d>
  401578:	8d 0c f5 00 00 00 00 	lea    0x0(,%rsi,8),%ecx
  40157f:	83 e1 38             	and    $0x38,%ecx
  401582:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  401586:	62 f2 fd 28 7c c6    	vpbroadcastq %rsi,%ymm0
  40158c:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401593:	c4 e2 f1 f7 f6       	shlx   %rcx,%rsi,%rsi
  401598:	62 f2 fd 28 7c ce    	vpbroadcastq %rsi,%ymm1
  40159e:	62 f2 fd 28 7c d0    	vpbroadcastq %rax,%ymm2
  4015a4:	c5 ed eb 15 74 aa 00 	vpor   0xaa74(%rip),%ymm2,%ymm2        # 40c020 <_IO_stdin_used+0x20>
  4015ab:	00 
  4015ac:	c4 e2 f1 f7 cf       	shlx   %rcx,%rdi,%rcx
  4015b1:	62 f2 fd 28 7c d9    	vpbroadcastq %rcx,%ymm3
  4015b7:	c4 e2 7d 59 25 80 ab 	vpbroadcastq 0xab80(%rip),%ymm4        # 40c140 <_IO_stdin_used+0x140>
  4015be:	00 00 
  4015c0:	62 f2 ed 28 29 c8    	vpcmpeqq %ymm0,%ymm2,%k1
  4015c6:	62 f1 fd a9 6f e9    	vmovdqa64 %ymm1,%ymm5{%k1}{z}
  4015cc:	c5 fe 6f 30          	vmovdqu (%rax),%ymm6
  4015d0:	c4 e3 4d 4c eb 50    	vpblendvb %ymm5,%ymm3,%ymm6,%ymm5
  4015d6:	c5 fe 7f 28          	vmovdqu %ymm5,(%rax)
  4015da:	c5 ed d4 d4          	vpaddq %ymm4,%ymm2,%ymm2
  4015de:	48 83 c0 20          	add    $0x20,%rax
  4015e2:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  4015e5:	48 03 0a             	add    (%rdx),%rcx
  4015e8:	48 39 c8             	cmp    %rcx,%rax
  4015eb:	76 d3                	jbe    4015c0 <uint64_t_secure_store_impl+0x60>
  4015ed:	c5 f8 77             	vzeroupper 
  4015f0:	c3                   	retq   
  4015f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4015f8:	0f 1f 84 00 00 00 00 
  4015ff:	00 

0000000000401600 <uint32_t_secure_store_impl>:
  401600:	4c 8b 02             	mov    (%rdx),%r8
  401603:	8b 42 18             	mov    0x18(%rdx),%eax
  401606:	4c 01 c0             	add    %r8,%rax
  401609:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  40160d:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  401610:	4c 01 c1             	add    %r8,%rcx
  401613:	48 39 c1             	cmp    %rax,%rcx
  401616:	72 75                	jb     40168d <uint32_t_secure_store_impl+0x8d>
  401618:	8d 0c f5 00 00 00 00 	lea    0x0(,%rsi,8),%ecx
  40161f:	83 e1 38             	and    $0x38,%ecx
  401622:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  401626:	62 f2 fd 28 7c c6    	vpbroadcastq %rsi,%ymm0
  40162c:	be ff ff ff ff       	mov    $0xffffffff,%esi
  401631:	c4 e2 f1 f7 f6       	shlx   %rcx,%rsi,%rsi
  401636:	62 f2 fd 28 7c c8    	vpbroadcastq %rax,%ymm1
  40163c:	c5 f5 eb 0d dc a9 00 	vpor   0xa9dc(%rip),%ymm1,%ymm1        # 40c020 <_IO_stdin_used+0x20>
  401643:	00 
  401644:	62 f2 fd 28 7c d6    	vpbroadcastq %rsi,%ymm2
  40164a:	89 fe                	mov    %edi,%esi
  40164c:	c4 e2 f1 f7 ce       	shlx   %rcx,%rsi,%rcx
  401651:	62 f2 fd 28 7c d9    	vpbroadcastq %rcx,%ymm3
  401657:	c4 e2 7d 59 25 e0 aa 	vpbroadcastq 0xaae0(%rip),%ymm4        # 40c140 <_IO_stdin_used+0x140>
  40165e:	00 00 
  401660:	62 f2 f5 28 29 c8    	vpcmpeqq %ymm0,%ymm1,%k1
  401666:	62 f1 fd a9 6f ea    	vmovdqa64 %ymm2,%ymm5{%k1}{z}
  40166c:	c5 fe 6f 30          	vmovdqu (%rax),%ymm6
  401670:	c4 e3 4d 4c eb 50    	vpblendvb %ymm5,%ymm3,%ymm6,%ymm5
  401676:	c5 fe 7f 28          	vmovdqu %ymm5,(%rax)
  40167a:	c5 f5 d4 cc          	vpaddq %ymm4,%ymm1,%ymm1
  40167e:	48 83 c0 20          	add    $0x20,%rax
  401682:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  401685:	48 03 0a             	add    (%rdx),%rcx
  401688:	48 39 c8             	cmp    %rcx,%rax
  40168b:	76 d3                	jbe    401660 <uint32_t_secure_store_impl+0x60>
  40168d:	c5 f8 77             	vzeroupper 
  401690:	c3                   	retq   
  401691:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401698:	0f 1f 84 00 00 00 00 
  40169f:	00 

00000000004016a0 <uint16_t_secure_store_impl>:
  4016a0:	4c 8b 02             	mov    (%rdx),%r8
  4016a3:	8b 42 18             	mov    0x18(%rdx),%eax
  4016a6:	4c 01 c0             	add    %r8,%rax
  4016a9:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  4016ad:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  4016b0:	4c 01 c1             	add    %r8,%rcx
  4016b3:	48 39 c1             	cmp    %rax,%rcx
  4016b6:	0f 82 81 00 00 00    	jb     40173d <uint16_t_secure_store_impl+0x9d>
  4016bc:	8d 0c f5 00 00 00 00 	lea    0x0(,%rsi,8),%ecx
  4016c3:	83 e1 38             	and    $0x38,%ecx
  4016c6:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  4016ca:	62 f2 fd 28 7c c6    	vpbroadcastq %rsi,%ymm0
  4016d0:	be ff ff 00 00       	mov    $0xffff,%esi
  4016d5:	c4 e2 f1 f7 f6       	shlx   %rcx,%rsi,%rsi
  4016da:	62 f2 fd 28 7c c8    	vpbroadcastq %rax,%ymm1
  4016e0:	c5 f5 eb 0d 38 a9 00 	vpor   0xa938(%rip),%ymm1,%ymm1        # 40c020 <_IO_stdin_used+0x20>
  4016e7:	00 
  4016e8:	62 f2 fd 28 7c d6    	vpbroadcastq %rsi,%ymm2
  4016ee:	0f b7 f7             	movzwl %di,%esi
  4016f1:	c4 e2 f1 f7 ce       	shlx   %rcx,%rsi,%rcx
  4016f6:	62 f2 fd 28 7c d9    	vpbroadcastq %rcx,%ymm3
  4016fc:	c4 e2 7d 59 25 3b aa 	vpbroadcastq 0xaa3b(%rip),%ymm4        # 40c140 <_IO_stdin_used+0x140>
  401703:	00 00 
  401705:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40170c:	00 00 00 00 
  401710:	62 f2 f5 28 29 c8    	vpcmpeqq %ymm0,%ymm1,%k1
  401716:	62 f1 fd a9 6f ea    	vmovdqa64 %ymm2,%ymm5{%k1}{z}
  40171c:	c5 fe 6f 30          	vmovdqu (%rax),%ymm6
  401720:	c4 e3 4d 4c eb 50    	vpblendvb %ymm5,%ymm3,%ymm6,%ymm5
  401726:	c5 fe 7f 28          	vmovdqu %ymm5,(%rax)
  40172a:	c5 f5 d4 cc          	vpaddq %ymm4,%ymm1,%ymm1
  40172e:	48 83 c0 20          	add    $0x20,%rax
  401732:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  401735:	48 03 0a             	add    (%rdx),%rcx
  401738:	48 39 c8             	cmp    %rcx,%rax
  40173b:	76 d3                	jbe    401710 <uint16_t_secure_store_impl+0x70>
  40173d:	c5 f8 77             	vzeroupper 
  401740:	c3                   	retq   
  401741:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401748:	0f 1f 84 00 00 00 00 
  40174f:	00 

0000000000401750 <uint8_t_secure_store_impl>:
  401750:	4c 8b 02             	mov    (%rdx),%r8
  401753:	8b 42 18             	mov    0x18(%rdx),%eax
  401756:	4c 01 c0             	add    %r8,%rax
  401759:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
  40175d:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  401760:	4c 01 c1             	add    %r8,%rcx
  401763:	48 39 c1             	cmp    %rax,%rcx
  401766:	0f 82 81 00 00 00    	jb     4017ed <uint8_t_secure_store_impl+0x9d>
  40176c:	8d 0c f5 00 00 00 00 	lea    0x0(,%rsi,8),%ecx
  401773:	83 e1 38             	and    $0x38,%ecx
  401776:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  40177a:	62 f2 fd 28 7c c6    	vpbroadcastq %rsi,%ymm0
  401780:	be ff 00 00 00       	mov    $0xff,%esi
  401785:	c4 e2 f1 f7 f6       	shlx   %rcx,%rsi,%rsi
  40178a:	62 f2 fd 28 7c c8    	vpbroadcastq %rax,%ymm1
  401790:	c5 f5 eb 0d 88 a8 00 	vpor   0xa888(%rip),%ymm1,%ymm1        # 40c020 <_IO_stdin_used+0x20>
  401797:	00 
  401798:	62 f2 fd 28 7c d6    	vpbroadcastq %rsi,%ymm2
  40179e:	40 0f b6 f7          	movzbl %dil,%esi
  4017a2:	c4 e2 f1 f7 ce       	shlx   %rcx,%rsi,%rcx
  4017a7:	62 f2 fd 28 7c d9    	vpbroadcastq %rcx,%ymm3
  4017ad:	c4 e2 7d 59 25 8a a9 	vpbroadcastq 0xa98a(%rip),%ymm4        # 40c140 <_IO_stdin_used+0x140>
  4017b4:	00 00 
  4017b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017bd:	00 00 00 
  4017c0:	62 f2 f5 28 29 c8    	vpcmpeqq %ymm0,%ymm1,%k1
  4017c6:	62 f1 fd a9 6f ea    	vmovdqa64 %ymm2,%ymm5{%k1}{z}
  4017cc:	c5 fe 6f 30          	vmovdqu (%rax),%ymm6
  4017d0:	c4 e3 4d 4c eb 50    	vpblendvb %ymm5,%ymm3,%ymm6,%ymm5
  4017d6:	c5 fe 7f 28          	vmovdqu %ymm5,(%rax)
  4017da:	c5 f5 d4 cc          	vpaddq %ymm4,%ymm1,%ymm1
  4017de:	48 83 c0 20          	add    $0x20,%rax
  4017e2:	8b 4a 1c             	mov    0x1c(%rdx),%ecx
  4017e5:	48 03 0a             	add    (%rdx),%rcx
  4017e8:	48 39 c8             	cmp    %rcx,%rax
  4017eb:	76 d3                	jbe    4017c0 <uint8_t_secure_store_impl+0x70>
  4017ed:	c5 f8 77             	vzeroupper 
  4017f0:	c3                   	retq   
  4017f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4017f8:	0f 1f 84 00 00 00 00 
  4017ff:	00 

0000000000401800 <uint64_t_secure_store>:
  401800:	e9 5b fd ff ff       	jmpq   401560 <uint64_t_secure_store_impl>
  401805:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40180c:	00 00 00 00 

0000000000401810 <uint32_t_secure_store>:
  401810:	e9 eb fd ff ff       	jmpq   401600 <uint32_t_secure_store_impl>
  401815:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40181c:	00 00 00 00 

0000000000401820 <uint16_t_secure_store>:
  401820:	e9 7b fe ff ff       	jmpq   4016a0 <uint16_t_secure_store_impl>
  401825:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40182c:	00 00 00 00 

0000000000401830 <uint8_t_secure_store>:
  401830:	e9 1b ff ff ff       	jmpq   401750 <uint8_t_secure_store_impl>
  401835:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40183c:	00 00 00 00 

0000000000401840 <uint64_t_secure_store_sensitive>:
  401840:	e9 1b fd ff ff       	jmpq   401560 <uint64_t_secure_store_impl>
  401845:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40184c:	00 00 00 00 

0000000000401850 <uint32_t_secure_store_sensitive>:
  401850:	e9 ab fd ff ff       	jmpq   401600 <uint32_t_secure_store_impl>
  401855:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40185c:	00 00 00 00 

0000000000401860 <uint16_t_secure_store_sensitive>:
  401860:	e9 3b fe ff ff       	jmpq   4016a0 <uint16_t_secure_store_impl>
  401865:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40186c:	00 00 00 00 

0000000000401870 <uint8_t_secure_store_sensitive>:
  401870:	e9 db fe ff ff       	jmpq   401750 <uint8_t_secure_store_impl>
  401875:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40187c:	00 00 00 00 

0000000000401880 <uint64_t_secure_store_single>:
  401880:	48 89 3e             	mov    %rdi,(%rsi)
  401883:	c3                   	retq   
  401884:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40188b:	00 00 00 00 00 

0000000000401890 <uint32_t_secure_store_single>:
  401890:	89 3e                	mov    %edi,(%rsi)
  401892:	c3                   	retq   
  401893:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40189a:	84 00 00 00 00 00 

00000000004018a0 <uint16_t_secure_store_single>:
  4018a0:	66 89 3e             	mov    %di,(%rsi)
  4018a3:	c3                   	retq   
  4018a4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4018ab:	00 00 00 00 00 

00000000004018b0 <uint8_t_secure_store_single>:
  4018b0:	40 88 3e             	mov    %dil,(%rsi)
  4018b3:	c3                   	retq   
  4018b4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4018bb:	00 00 00 00 00 

00000000004018c0 <uint64_t_secure_store_single_sensitive>:
  4018c0:	48 8b 02             	mov    (%rdx),%rax
  4018c3:	8b 4a 18             	mov    0x18(%rdx),%ecx
  4018c6:	48 85 f6             	test   %rsi,%rsi
  4018c9:	75 04                	jne    4018cf <uint64_t_secure_store_single_sensitive+0xf>
  4018cb:	48 8b 3c 08          	mov    (%rax,%rcx,1),%rdi
  4018cf:	48 89 3c 08          	mov    %rdi,(%rax,%rcx,1)
  4018d3:	c3                   	retq   
  4018d4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4018db:	00 00 00 00 00 

00000000004018e0 <uint32_t_secure_store_single_sensitive>:
  4018e0:	48 8b 02             	mov    (%rdx),%rax
  4018e3:	8b 4a 18             	mov    0x18(%rdx),%ecx
  4018e6:	48 85 f6             	test   %rsi,%rsi
  4018e9:	75 03                	jne    4018ee <uint32_t_secure_store_single_sensitive+0xe>
  4018eb:	8b 3c 08             	mov    (%rax,%rcx,1),%edi
  4018ee:	89 3c 08             	mov    %edi,(%rax,%rcx,1)
  4018f1:	c3                   	retq   
  4018f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4018f9:	1f 84 00 00 00 00 00 

0000000000401900 <uint16_t_secure_store_single_sensitive>:
  401900:	48 8b 02             	mov    (%rdx),%rax
  401903:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401906:	48 85 f6             	test   %rsi,%rsi
  401909:	75 04                	jne    40190f <uint16_t_secure_store_single_sensitive+0xf>
  40190b:	0f b7 3c 08          	movzwl (%rax,%rcx,1),%edi
  40190f:	66 89 3c 08          	mov    %di,(%rax,%rcx,1)
  401913:	c3                   	retq   
  401914:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40191b:	00 00 00 00 00 

0000000000401920 <uint8_t_secure_store_single_sensitive>:
  401920:	48 8b 02             	mov    (%rdx),%rax
  401923:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401926:	48 85 f6             	test   %rsi,%rsi
  401929:	0f b6 14 08          	movzbl (%rax,%rcx,1),%edx
  40192d:	0f 45 d7             	cmovne %edi,%edx
  401930:	88 14 08             	mov    %dl,(%rax,%rcx,1)
  401933:	c3                   	retq   
  401934:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40193b:	00 00 00 00 00 

0000000000401940 <branch_id>:
  401940:	c3                   	retq   
  401941:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401948:	0f 1f 84 00 00 00 00 
  40194f:	00 

0000000000401950 <main>:
  401950:	55                   	push   %rbp
  401951:	48 89 e5             	mov    %rsp,%rbp
  401954:	41 57                	push   %r15
  401956:	41 56                	push   %r14
  401958:	41 54                	push   %r12
  40195a:	53                   	push   %rbx
  40195b:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40195f:	48 81 ec 40 41 00 00 	sub    $0x4140,%rsp
  401966:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40196a:	c5 fc 29 84 24 00 01 	vmovaps %ymm0,0x100(%rsp)
  401971:	00 00 
  401973:	c5 fc 29 84 24 e0 00 	vmovaps %ymm0,0xe0(%rsp)
  40197a:	00 00 
  40197c:	c5 fc 29 84 24 c0 00 	vmovaps %ymm0,0xc0(%rsp)
  401983:	00 00 
  401985:	c5 fc 29 84 24 a0 00 	vmovaps %ymm0,0xa0(%rsp)
  40198c:	00 00 
  40198e:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401995:	00 00 
  401997:	c5 fc 29 44 24 60    	vmovaps %ymm0,0x60(%rsp)
  40199d:	c5 fc 29 44 24 40    	vmovaps %ymm0,0x40(%rsp)
  4019a3:	c5 fc 29 44 24 20    	vmovaps %ymm0,0x20(%rsp)
  4019a9:	66 c7 84 24 20 01 00 	movw   $0x0,0x120(%rsp)
  4019b0:	00 00 00 
  4019b3:	c5 fc 29 04 24       	vmovaps %ymm0,(%rsp)
  4019b8:	48 89 e6             	mov    %rsp,%rsi
  4019bb:	ba 20 00 00 00       	mov    $0x20,%edx
  4019c0:	31 ff                	xor    %edi,%edi
  4019c2:	c5 f8 77             	vzeroupper 
  4019c5:	e8 76 f6 ff ff       	callq  401040 <read@plt>
  4019ca:	c5 fc 28 05 6e a6 00 	vmovaps 0xa66e(%rip),%ymm0        # 40c040 <_IO_stdin_used+0x40>
  4019d1:	00 
  4019d2:	c5 fc 29 44 24 20    	vmovaps %ymm0,0x20(%rsp)
  4019d8:	c5 fc 28 05 80 a6 00 	vmovaps 0xa680(%rip),%ymm0        # 40c060 <_IO_stdin_used+0x60>
  4019df:	00 
  4019e0:	c5 fc 29 44 24 40    	vmovaps %ymm0,0x40(%rsp)
  4019e6:	c5 fc 28 05 92 a6 00 	vmovaps 0xa692(%rip),%ymm0        # 40c080 <_IO_stdin_used+0x80>
  4019ed:	00 
  4019ee:	c5 fc 29 44 24 60    	vmovaps %ymm0,0x60(%rsp)
  4019f4:	c5 fc 28 05 a4 a6 00 	vmovaps 0xa6a4(%rip),%ymm0        # 40c0a0 <_IO_stdin_used+0xa0>
  4019fb:	00 
  4019fc:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
  401a03:	00 00 
  401a05:	c5 fc 28 05 b3 a6 00 	vmovaps 0xa6b3(%rip),%ymm0        # 40c0c0 <_IO_stdin_used+0xc0>
  401a0c:	00 
  401a0d:	c5 fc 29 84 24 a0 00 	vmovaps %ymm0,0xa0(%rsp)
  401a14:	00 00 
  401a16:	c5 fc 28 05 c2 a6 00 	vmovaps 0xa6c2(%rip),%ymm0        # 40c0e0 <_IO_stdin_used+0xe0>
  401a1d:	00 
  401a1e:	c5 fc 29 84 24 c0 00 	vmovaps %ymm0,0xc0(%rsp)
  401a25:	00 00 
  401a27:	c5 fc 28 05 d1 a6 00 	vmovaps 0xa6d1(%rip),%ymm0        # 40c100 <_IO_stdin_used+0x100>
  401a2e:	00 
  401a2f:	c5 fc 29 84 24 e0 00 	vmovaps %ymm0,0xe0(%rsp)
  401a36:	00 00 
  401a38:	c5 fc 28 05 e0 a6 00 	vmovaps 0xa6e0(%rip),%ymm0        # 40c120 <_IO_stdin_used+0x120>
  401a3f:	00 
  401a40:	c5 fc 29 84 24 00 01 	vmovaps %ymm0,0x100(%rsp)
  401a47:	00 00 
  401a49:	66 c7 84 24 20 01 00 	movw   $0x0,0x120(%rsp)
  401a50:	00 00 00 
  401a53:	0f b6 1c 24          	movzbl (%rsp),%ebx
  401a57:	44 0f b6 7c 24 20    	movzbl 0x20(%rsp),%r15d
  401a5d:	4c 01 fb             	add    %r15,%rbx
  401a60:	89 d8                	mov    %ebx,%eax
  401a62:	83 e0 1f             	and    $0x1f,%eax
  401a65:	4c 8d 24 04          	lea    (%rsp,%rax,1),%r12
  401a69:	49 83 c4 20          	add    $0x20,%r12
  401a6d:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
  401a72:	4c 89 b4 24 10 41 00 	mov    %r14,0x4110(%rsp)
  401a79:	00 
  401a7a:	48 c7 84 24 18 41 00 	movq   $0x0,0x4118(%rsp)
  401a81:	00 00 00 00 00 
  401a86:	c5 f8 28 05 d2 a6 00 	vmovaps 0xa6d2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401a8d:	00 
  401a8e:	c5 f8 11 84 24 20 41 	vmovups %xmm0,0x4120(%rsp)
  401a95:	00 00 
  401a97:	48 8d b4 24 10 41 00 	lea    0x4110(%rsp),%rsi
  401a9e:	00 
  401a9f:	4c 89 e7             	mov    %r12,%rdi
  401aa2:	c5 f8 77             	vzeroupper 
  401aa5:	e8 06 f7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401aaa:	88 44 24 20          	mov    %al,0x20(%rsp)
  401aae:	4c 89 b4 24 f0 40 00 	mov    %r14,0x40f0(%rsp)
  401ab5:	00 
  401ab6:	48 c7 84 24 f8 40 00 	movq   $0x0,0x40f8(%rsp)
  401abd:	00 00 00 00 00 
  401ac2:	c5 f8 28 05 96 a6 00 	vmovaps 0xa696(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401ac9:	00 
  401aca:	c5 f8 11 84 24 00 41 	vmovups %xmm0,0x4100(%rsp)
  401ad1:	00 00 
  401ad3:	48 8d 94 24 f0 40 00 	lea    0x40f0(%rsp),%rdx
  401ada:	00 
  401adb:	44 89 ff             	mov    %r15d,%edi
  401ade:	4c 89 e6             	mov    %r12,%rsi
  401ae1:	e8 6a fc ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401ae6:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401aeb:	44 0f b6 7c 24 21    	movzbl 0x21(%rsp),%r15d
  401af1:	48 01 d8             	add    %rbx,%rax
  401af4:	4d 8d 24 07          	lea    (%r15,%rax,1),%r12
  401af8:	44 89 e0             	mov    %r12d,%eax
  401afb:	83 e0 1f             	and    $0x1f,%eax
  401afe:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401b02:	48 83 c3 20          	add    $0x20,%rbx
  401b06:	4c 89 b4 24 d0 40 00 	mov    %r14,0x40d0(%rsp)
  401b0d:	00 
  401b0e:	48 c7 84 24 d8 40 00 	movq   $0x0,0x40d8(%rsp)
  401b15:	00 00 00 00 00 
  401b1a:	c5 f8 28 05 3e a6 00 	vmovaps 0xa63e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401b21:	00 
  401b22:	c5 f8 11 84 24 e0 40 	vmovups %xmm0,0x40e0(%rsp)
  401b29:	00 00 
  401b2b:	48 8d b4 24 d0 40 00 	lea    0x40d0(%rsp),%rsi
  401b32:	00 
  401b33:	48 89 df             	mov    %rbx,%rdi
  401b36:	e8 75 f6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401b3b:	88 44 24 21          	mov    %al,0x21(%rsp)
  401b3f:	4c 89 b4 24 b0 40 00 	mov    %r14,0x40b0(%rsp)
  401b46:	00 
  401b47:	48 c7 84 24 b8 40 00 	movq   $0x0,0x40b8(%rsp)
  401b4e:	00 00 00 00 00 
  401b53:	c5 f8 28 05 05 a6 00 	vmovaps 0xa605(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401b5a:	00 
  401b5b:	c5 f8 11 84 24 c0 40 	vmovups %xmm0,0x40c0(%rsp)
  401b62:	00 00 
  401b64:	48 8d 94 24 b0 40 00 	lea    0x40b0(%rsp),%rdx
  401b6b:	00 
  401b6c:	44 89 ff             	mov    %r15d,%edi
  401b6f:	48 89 de             	mov    %rbx,%rsi
  401b72:	e8 d9 fb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401b77:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401b7c:	44 0f b6 7c 24 22    	movzbl 0x22(%rsp),%r15d
  401b82:	4c 01 e0             	add    %r12,%rax
  401b85:	4d 8d 24 07          	lea    (%r15,%rax,1),%r12
  401b89:	44 89 e0             	mov    %r12d,%eax
  401b8c:	83 e0 1f             	and    $0x1f,%eax
  401b8f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401b93:	48 83 c3 20          	add    $0x20,%rbx
  401b97:	4c 89 b4 24 90 40 00 	mov    %r14,0x4090(%rsp)
  401b9e:	00 
  401b9f:	48 c7 84 24 98 40 00 	movq   $0x0,0x4098(%rsp)
  401ba6:	00 00 00 00 00 
  401bab:	c5 f8 28 05 ad a5 00 	vmovaps 0xa5ad(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401bb2:	00 
  401bb3:	c5 f8 11 84 24 a0 40 	vmovups %xmm0,0x40a0(%rsp)
  401bba:	00 00 
  401bbc:	48 8d b4 24 90 40 00 	lea    0x4090(%rsp),%rsi
  401bc3:	00 
  401bc4:	48 89 df             	mov    %rbx,%rdi
  401bc7:	e8 e4 f5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401bcc:	88 44 24 22          	mov    %al,0x22(%rsp)
  401bd0:	4c 89 b4 24 70 40 00 	mov    %r14,0x4070(%rsp)
  401bd7:	00 
  401bd8:	48 c7 84 24 78 40 00 	movq   $0x0,0x4078(%rsp)
  401bdf:	00 00 00 00 00 
  401be4:	c5 f8 28 05 74 a5 00 	vmovaps 0xa574(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401beb:	00 
  401bec:	c5 f8 11 84 24 80 40 	vmovups %xmm0,0x4080(%rsp)
  401bf3:	00 00 
  401bf5:	48 8d 94 24 70 40 00 	lea    0x4070(%rsp),%rdx
  401bfc:	00 
  401bfd:	44 89 ff             	mov    %r15d,%edi
  401c00:	48 89 de             	mov    %rbx,%rsi
  401c03:	e8 48 fb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401c08:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  401c0d:	44 0f b6 7c 24 23    	movzbl 0x23(%rsp),%r15d
  401c13:	44 89 e1             	mov    %r12d,%ecx
  401c16:	48 01 c1             	add    %rax,%rcx
  401c19:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401c1d:	44 89 e0             	mov    %r12d,%eax
  401c20:	83 e0 1f             	and    $0x1f,%eax
  401c23:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401c27:	48 83 c3 20          	add    $0x20,%rbx
  401c2b:	4c 89 b4 24 50 40 00 	mov    %r14,0x4050(%rsp)
  401c32:	00 
  401c33:	48 c7 84 24 58 40 00 	movq   $0x0,0x4058(%rsp)
  401c3a:	00 00 00 00 00 
  401c3f:	c5 f8 28 05 19 a5 00 	vmovaps 0xa519(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401c46:	00 
  401c47:	c5 f8 11 84 24 60 40 	vmovups %xmm0,0x4060(%rsp)
  401c4e:	00 00 
  401c50:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  401c57:	00 
  401c58:	48 89 df             	mov    %rbx,%rdi
  401c5b:	e8 50 f5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401c60:	88 44 24 23          	mov    %al,0x23(%rsp)
  401c64:	4c 89 b4 24 30 40 00 	mov    %r14,0x4030(%rsp)
  401c6b:	00 
  401c6c:	48 c7 84 24 38 40 00 	movq   $0x0,0x4038(%rsp)
  401c73:	00 00 00 00 00 
  401c78:	c5 f8 28 05 e0 a4 00 	vmovaps 0xa4e0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401c7f:	00 
  401c80:	c5 f8 11 84 24 40 40 	vmovups %xmm0,0x4040(%rsp)
  401c87:	00 00 
  401c89:	48 8d 94 24 30 40 00 	lea    0x4030(%rsp),%rdx
  401c90:	00 
  401c91:	44 89 ff             	mov    %r15d,%edi
  401c94:	48 89 de             	mov    %rbx,%rsi
  401c97:	e8 b4 fa ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401c9c:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  401ca1:	44 0f b6 7c 24 24    	movzbl 0x24(%rsp),%r15d
  401ca7:	44 89 e1             	mov    %r12d,%ecx
  401caa:	48 01 c1             	add    %rax,%rcx
  401cad:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401cb1:	44 89 e0             	mov    %r12d,%eax
  401cb4:	83 e0 1f             	and    $0x1f,%eax
  401cb7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401cbb:	48 83 c3 20          	add    $0x20,%rbx
  401cbf:	4c 89 b4 24 10 40 00 	mov    %r14,0x4010(%rsp)
  401cc6:	00 
  401cc7:	48 c7 84 24 18 40 00 	movq   $0x0,0x4018(%rsp)
  401cce:	00 00 00 00 00 
  401cd3:	c5 f8 28 05 85 a4 00 	vmovaps 0xa485(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401cda:	00 
  401cdb:	c5 f8 11 84 24 20 40 	vmovups %xmm0,0x4020(%rsp)
  401ce2:	00 00 
  401ce4:	48 8d b4 24 10 40 00 	lea    0x4010(%rsp),%rsi
  401ceb:	00 
  401cec:	48 89 df             	mov    %rbx,%rdi
  401cef:	e8 bc f4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401cf4:	88 44 24 24          	mov    %al,0x24(%rsp)
  401cf8:	4c 89 b4 24 f0 3f 00 	mov    %r14,0x3ff0(%rsp)
  401cff:	00 
  401d00:	48 c7 84 24 f8 3f 00 	movq   $0x0,0x3ff8(%rsp)
  401d07:	00 00 00 00 00 
  401d0c:	c5 f8 28 05 4c a4 00 	vmovaps 0xa44c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401d13:	00 
  401d14:	c5 f8 11 84 24 00 40 	vmovups %xmm0,0x4000(%rsp)
  401d1b:	00 00 
  401d1d:	48 8d 94 24 f0 3f 00 	lea    0x3ff0(%rsp),%rdx
  401d24:	00 
  401d25:	44 89 ff             	mov    %r15d,%edi
  401d28:	48 89 de             	mov    %rbx,%rsi
  401d2b:	e8 20 fa ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401d30:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  401d35:	44 0f b6 7c 24 25    	movzbl 0x25(%rsp),%r15d
  401d3b:	44 89 e1             	mov    %r12d,%ecx
  401d3e:	48 01 c1             	add    %rax,%rcx
  401d41:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401d45:	44 89 e0             	mov    %r12d,%eax
  401d48:	83 e0 1f             	and    $0x1f,%eax
  401d4b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401d4f:	48 83 c3 20          	add    $0x20,%rbx
  401d53:	4c 89 b4 24 d0 3f 00 	mov    %r14,0x3fd0(%rsp)
  401d5a:	00 
  401d5b:	48 c7 84 24 d8 3f 00 	movq   $0x0,0x3fd8(%rsp)
  401d62:	00 00 00 00 00 
  401d67:	c5 f8 28 05 f1 a3 00 	vmovaps 0xa3f1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401d6e:	00 
  401d6f:	c5 f8 11 84 24 e0 3f 	vmovups %xmm0,0x3fe0(%rsp)
  401d76:	00 00 
  401d78:	48 8d b4 24 d0 3f 00 	lea    0x3fd0(%rsp),%rsi
  401d7f:	00 
  401d80:	48 89 df             	mov    %rbx,%rdi
  401d83:	e8 28 f4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401d88:	88 44 24 25          	mov    %al,0x25(%rsp)
  401d8c:	4c 89 b4 24 b0 3f 00 	mov    %r14,0x3fb0(%rsp)
  401d93:	00 
  401d94:	48 c7 84 24 b8 3f 00 	movq   $0x0,0x3fb8(%rsp)
  401d9b:	00 00 00 00 00 
  401da0:	c5 f8 28 05 b8 a3 00 	vmovaps 0xa3b8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401da7:	00 
  401da8:	c5 f8 11 84 24 c0 3f 	vmovups %xmm0,0x3fc0(%rsp)
  401daf:	00 00 
  401db1:	48 8d 94 24 b0 3f 00 	lea    0x3fb0(%rsp),%rdx
  401db8:	00 
  401db9:	44 89 ff             	mov    %r15d,%edi
  401dbc:	48 89 de             	mov    %rbx,%rsi
  401dbf:	e8 8c f9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401dc4:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  401dc9:	44 0f b6 7c 24 26    	movzbl 0x26(%rsp),%r15d
  401dcf:	44 89 e1             	mov    %r12d,%ecx
  401dd2:	48 01 c1             	add    %rax,%rcx
  401dd5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401dd9:	44 89 e0             	mov    %r12d,%eax
  401ddc:	83 e0 1f             	and    $0x1f,%eax
  401ddf:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401de3:	48 83 c3 20          	add    $0x20,%rbx
  401de7:	4c 89 b4 24 90 3f 00 	mov    %r14,0x3f90(%rsp)
  401dee:	00 
  401def:	48 c7 84 24 98 3f 00 	movq   $0x0,0x3f98(%rsp)
  401df6:	00 00 00 00 00 
  401dfb:	c5 f8 28 05 5d a3 00 	vmovaps 0xa35d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401e02:	00 
  401e03:	c5 f8 11 84 24 a0 3f 	vmovups %xmm0,0x3fa0(%rsp)
  401e0a:	00 00 
  401e0c:	48 8d b4 24 90 3f 00 	lea    0x3f90(%rsp),%rsi
  401e13:	00 
  401e14:	48 89 df             	mov    %rbx,%rdi
  401e17:	e8 94 f3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401e1c:	88 44 24 26          	mov    %al,0x26(%rsp)
  401e20:	4c 89 b4 24 70 3f 00 	mov    %r14,0x3f70(%rsp)
  401e27:	00 
  401e28:	48 c7 84 24 78 3f 00 	movq   $0x0,0x3f78(%rsp)
  401e2f:	00 00 00 00 00 
  401e34:	c5 f8 28 05 24 a3 00 	vmovaps 0xa324(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401e3b:	00 
  401e3c:	c5 f8 11 84 24 80 3f 	vmovups %xmm0,0x3f80(%rsp)
  401e43:	00 00 
  401e45:	48 8d 94 24 70 3f 00 	lea    0x3f70(%rsp),%rdx
  401e4c:	00 
  401e4d:	44 89 ff             	mov    %r15d,%edi
  401e50:	48 89 de             	mov    %rbx,%rsi
  401e53:	e8 f8 f8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401e58:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  401e5d:	44 0f b6 7c 24 27    	movzbl 0x27(%rsp),%r15d
  401e63:	44 89 e1             	mov    %r12d,%ecx
  401e66:	48 01 c1             	add    %rax,%rcx
  401e69:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401e6d:	44 89 e0             	mov    %r12d,%eax
  401e70:	83 e0 1f             	and    $0x1f,%eax
  401e73:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401e77:	48 83 c3 20          	add    $0x20,%rbx
  401e7b:	4c 89 b4 24 50 3f 00 	mov    %r14,0x3f50(%rsp)
  401e82:	00 
  401e83:	48 c7 84 24 58 3f 00 	movq   $0x0,0x3f58(%rsp)
  401e8a:	00 00 00 00 00 
  401e8f:	c5 f8 28 05 c9 a2 00 	vmovaps 0xa2c9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401e96:	00 
  401e97:	c5 f8 11 84 24 60 3f 	vmovups %xmm0,0x3f60(%rsp)
  401e9e:	00 00 
  401ea0:	48 8d b4 24 50 3f 00 	lea    0x3f50(%rsp),%rsi
  401ea7:	00 
  401ea8:	48 89 df             	mov    %rbx,%rdi
  401eab:	e8 00 f3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401eb0:	88 44 24 27          	mov    %al,0x27(%rsp)
  401eb4:	4c 89 b4 24 30 3f 00 	mov    %r14,0x3f30(%rsp)
  401ebb:	00 
  401ebc:	48 c7 84 24 38 3f 00 	movq   $0x0,0x3f38(%rsp)
  401ec3:	00 00 00 00 00 
  401ec8:	c5 f8 28 05 90 a2 00 	vmovaps 0xa290(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401ecf:	00 
  401ed0:	c5 f8 11 84 24 40 3f 	vmovups %xmm0,0x3f40(%rsp)
  401ed7:	00 00 
  401ed9:	48 8d 94 24 30 3f 00 	lea    0x3f30(%rsp),%rdx
  401ee0:	00 
  401ee1:	44 89 ff             	mov    %r15d,%edi
  401ee4:	48 89 de             	mov    %rbx,%rsi
  401ee7:	e8 64 f8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401eec:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  401ef1:	44 0f b6 7c 24 28    	movzbl 0x28(%rsp),%r15d
  401ef7:	44 89 e1             	mov    %r12d,%ecx
  401efa:	48 01 c1             	add    %rax,%rcx
  401efd:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401f01:	44 89 e0             	mov    %r12d,%eax
  401f04:	83 e0 1f             	and    $0x1f,%eax
  401f07:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401f0b:	48 83 c3 20          	add    $0x20,%rbx
  401f0f:	4c 89 b4 24 10 3f 00 	mov    %r14,0x3f10(%rsp)
  401f16:	00 
  401f17:	48 c7 84 24 18 3f 00 	movq   $0x0,0x3f18(%rsp)
  401f1e:	00 00 00 00 00 
  401f23:	c5 f8 28 05 35 a2 00 	vmovaps 0xa235(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401f2a:	00 
  401f2b:	c5 f8 11 84 24 20 3f 	vmovups %xmm0,0x3f20(%rsp)
  401f32:	00 00 
  401f34:	48 8d b4 24 10 3f 00 	lea    0x3f10(%rsp),%rsi
  401f3b:	00 
  401f3c:	48 89 df             	mov    %rbx,%rdi
  401f3f:	e8 6c f2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401f44:	88 44 24 28          	mov    %al,0x28(%rsp)
  401f48:	4c 89 b4 24 f0 3e 00 	mov    %r14,0x3ef0(%rsp)
  401f4f:	00 
  401f50:	48 c7 84 24 f8 3e 00 	movq   $0x0,0x3ef8(%rsp)
  401f57:	00 00 00 00 00 
  401f5c:	c5 f8 28 05 fc a1 00 	vmovaps 0xa1fc(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401f63:	00 
  401f64:	c5 f8 11 84 24 00 3f 	vmovups %xmm0,0x3f00(%rsp)
  401f6b:	00 00 
  401f6d:	48 8d 94 24 f0 3e 00 	lea    0x3ef0(%rsp),%rdx
  401f74:	00 
  401f75:	44 89 ff             	mov    %r15d,%edi
  401f78:	48 89 de             	mov    %rbx,%rsi
  401f7b:	e8 d0 f7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  401f80:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  401f85:	44 0f b6 7c 24 29    	movzbl 0x29(%rsp),%r15d
  401f8b:	44 89 e1             	mov    %r12d,%ecx
  401f8e:	48 01 c1             	add    %rax,%rcx
  401f91:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  401f95:	44 89 e0             	mov    %r12d,%eax
  401f98:	83 e0 1f             	and    $0x1f,%eax
  401f9b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  401f9f:	48 83 c3 20          	add    $0x20,%rbx
  401fa3:	4c 89 b4 24 d0 3e 00 	mov    %r14,0x3ed0(%rsp)
  401faa:	00 
  401fab:	48 c7 84 24 d8 3e 00 	movq   $0x0,0x3ed8(%rsp)
  401fb2:	00 00 00 00 00 
  401fb7:	c5 f8 28 05 a1 a1 00 	vmovaps 0xa1a1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401fbe:	00 
  401fbf:	c5 f8 11 84 24 e0 3e 	vmovups %xmm0,0x3ee0(%rsp)
  401fc6:	00 00 
  401fc8:	48 8d b4 24 d0 3e 00 	lea    0x3ed0(%rsp),%rsi
  401fcf:	00 
  401fd0:	48 89 df             	mov    %rbx,%rdi
  401fd3:	e8 d8 f1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  401fd8:	88 44 24 29          	mov    %al,0x29(%rsp)
  401fdc:	4c 89 b4 24 b0 3e 00 	mov    %r14,0x3eb0(%rsp)
  401fe3:	00 
  401fe4:	48 c7 84 24 b8 3e 00 	movq   $0x0,0x3eb8(%rsp)
  401feb:	00 00 00 00 00 
  401ff0:	c5 f8 28 05 68 a1 00 	vmovaps 0xa168(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  401ff7:	00 
  401ff8:	c5 f8 11 84 24 c0 3e 	vmovups %xmm0,0x3ec0(%rsp)
  401fff:	00 00 
  402001:	48 8d 94 24 b0 3e 00 	lea    0x3eb0(%rsp),%rdx
  402008:	00 
  402009:	44 89 ff             	mov    %r15d,%edi
  40200c:	48 89 de             	mov    %rbx,%rsi
  40200f:	e8 3c f7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402014:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  402019:	44 0f b6 7c 24 2a    	movzbl 0x2a(%rsp),%r15d
  40201f:	44 89 e1             	mov    %r12d,%ecx
  402022:	48 01 c1             	add    %rax,%rcx
  402025:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402029:	44 89 e0             	mov    %r12d,%eax
  40202c:	83 e0 1f             	and    $0x1f,%eax
  40202f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402033:	48 83 c3 20          	add    $0x20,%rbx
  402037:	4c 89 b4 24 90 3e 00 	mov    %r14,0x3e90(%rsp)
  40203e:	00 
  40203f:	48 c7 84 24 98 3e 00 	movq   $0x0,0x3e98(%rsp)
  402046:	00 00 00 00 00 
  40204b:	c5 f8 28 05 0d a1 00 	vmovaps 0xa10d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402052:	00 
  402053:	c5 f8 11 84 24 a0 3e 	vmovups %xmm0,0x3ea0(%rsp)
  40205a:	00 00 
  40205c:	48 8d b4 24 90 3e 00 	lea    0x3e90(%rsp),%rsi
  402063:	00 
  402064:	48 89 df             	mov    %rbx,%rdi
  402067:	e8 44 f1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40206c:	88 44 24 2a          	mov    %al,0x2a(%rsp)
  402070:	4c 89 b4 24 70 3e 00 	mov    %r14,0x3e70(%rsp)
  402077:	00 
  402078:	48 c7 84 24 78 3e 00 	movq   $0x0,0x3e78(%rsp)
  40207f:	00 00 00 00 00 
  402084:	c5 f8 28 05 d4 a0 00 	vmovaps 0xa0d4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40208b:	00 
  40208c:	c5 f8 11 84 24 80 3e 	vmovups %xmm0,0x3e80(%rsp)
  402093:	00 00 
  402095:	48 8d 94 24 70 3e 00 	lea    0x3e70(%rsp),%rdx
  40209c:	00 
  40209d:	44 89 ff             	mov    %r15d,%edi
  4020a0:	48 89 de             	mov    %rbx,%rsi
  4020a3:	e8 a8 f6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4020a8:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  4020ad:	44 0f b6 7c 24 2b    	movzbl 0x2b(%rsp),%r15d
  4020b3:	44 89 e1             	mov    %r12d,%ecx
  4020b6:	48 01 c1             	add    %rax,%rcx
  4020b9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4020bd:	44 89 e0             	mov    %r12d,%eax
  4020c0:	83 e0 1f             	and    $0x1f,%eax
  4020c3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4020c7:	48 83 c3 20          	add    $0x20,%rbx
  4020cb:	4c 89 b4 24 50 3e 00 	mov    %r14,0x3e50(%rsp)
  4020d2:	00 
  4020d3:	48 c7 84 24 58 3e 00 	movq   $0x0,0x3e58(%rsp)
  4020da:	00 00 00 00 00 
  4020df:	c5 f8 28 05 79 a0 00 	vmovaps 0xa079(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4020e6:	00 
  4020e7:	c5 f8 11 84 24 60 3e 	vmovups %xmm0,0x3e60(%rsp)
  4020ee:	00 00 
  4020f0:	48 8d b4 24 50 3e 00 	lea    0x3e50(%rsp),%rsi
  4020f7:	00 
  4020f8:	48 89 df             	mov    %rbx,%rdi
  4020fb:	e8 b0 f0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402100:	88 44 24 2b          	mov    %al,0x2b(%rsp)
  402104:	4c 89 b4 24 30 3e 00 	mov    %r14,0x3e30(%rsp)
  40210b:	00 
  40210c:	48 c7 84 24 38 3e 00 	movq   $0x0,0x3e38(%rsp)
  402113:	00 00 00 00 00 
  402118:	c5 f8 28 05 40 a0 00 	vmovaps 0xa040(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40211f:	00 
  402120:	c5 f8 11 84 24 40 3e 	vmovups %xmm0,0x3e40(%rsp)
  402127:	00 00 
  402129:	48 8d 94 24 30 3e 00 	lea    0x3e30(%rsp),%rdx
  402130:	00 
  402131:	44 89 ff             	mov    %r15d,%edi
  402134:	48 89 de             	mov    %rbx,%rsi
  402137:	e8 14 f6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40213c:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  402141:	44 0f b6 7c 24 2c    	movzbl 0x2c(%rsp),%r15d
  402147:	44 89 e1             	mov    %r12d,%ecx
  40214a:	48 01 c1             	add    %rax,%rcx
  40214d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402151:	44 89 e0             	mov    %r12d,%eax
  402154:	83 e0 1f             	and    $0x1f,%eax
  402157:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40215b:	48 83 c3 20          	add    $0x20,%rbx
  40215f:	4c 89 b4 24 10 3e 00 	mov    %r14,0x3e10(%rsp)
  402166:	00 
  402167:	48 c7 84 24 18 3e 00 	movq   $0x0,0x3e18(%rsp)
  40216e:	00 00 00 00 00 
  402173:	c5 f8 28 05 e5 9f 00 	vmovaps 0x9fe5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40217a:	00 
  40217b:	c5 f8 11 84 24 20 3e 	vmovups %xmm0,0x3e20(%rsp)
  402182:	00 00 
  402184:	48 8d b4 24 10 3e 00 	lea    0x3e10(%rsp),%rsi
  40218b:	00 
  40218c:	48 89 df             	mov    %rbx,%rdi
  40218f:	e8 1c f0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402194:	88 44 24 2c          	mov    %al,0x2c(%rsp)
  402198:	4c 89 b4 24 f0 3d 00 	mov    %r14,0x3df0(%rsp)
  40219f:	00 
  4021a0:	48 c7 84 24 f8 3d 00 	movq   $0x0,0x3df8(%rsp)
  4021a7:	00 00 00 00 00 
  4021ac:	c5 f8 28 05 ac 9f 00 	vmovaps 0x9fac(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4021b3:	00 
  4021b4:	c5 f8 11 84 24 00 3e 	vmovups %xmm0,0x3e00(%rsp)
  4021bb:	00 00 
  4021bd:	48 8d 94 24 f0 3d 00 	lea    0x3df0(%rsp),%rdx
  4021c4:	00 
  4021c5:	44 89 ff             	mov    %r15d,%edi
  4021c8:	48 89 de             	mov    %rbx,%rsi
  4021cb:	e8 80 f5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4021d0:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  4021d5:	44 0f b6 7c 24 2d    	movzbl 0x2d(%rsp),%r15d
  4021db:	44 89 e1             	mov    %r12d,%ecx
  4021de:	48 01 c1             	add    %rax,%rcx
  4021e1:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4021e5:	44 89 e0             	mov    %r12d,%eax
  4021e8:	83 e0 1f             	and    $0x1f,%eax
  4021eb:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4021ef:	48 83 c3 20          	add    $0x20,%rbx
  4021f3:	4c 89 b4 24 d0 3d 00 	mov    %r14,0x3dd0(%rsp)
  4021fa:	00 
  4021fb:	48 c7 84 24 d8 3d 00 	movq   $0x0,0x3dd8(%rsp)
  402202:	00 00 00 00 00 
  402207:	c5 f8 28 05 51 9f 00 	vmovaps 0x9f51(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40220e:	00 
  40220f:	c5 f8 11 84 24 e0 3d 	vmovups %xmm0,0x3de0(%rsp)
  402216:	00 00 
  402218:	48 8d b4 24 d0 3d 00 	lea    0x3dd0(%rsp),%rsi
  40221f:	00 
  402220:	48 89 df             	mov    %rbx,%rdi
  402223:	e8 88 ef ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402228:	88 44 24 2d          	mov    %al,0x2d(%rsp)
  40222c:	4c 89 b4 24 b0 3d 00 	mov    %r14,0x3db0(%rsp)
  402233:	00 
  402234:	48 c7 84 24 b8 3d 00 	movq   $0x0,0x3db8(%rsp)
  40223b:	00 00 00 00 00 
  402240:	c5 f8 28 05 18 9f 00 	vmovaps 0x9f18(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402247:	00 
  402248:	c5 f8 11 84 24 c0 3d 	vmovups %xmm0,0x3dc0(%rsp)
  40224f:	00 00 
  402251:	48 8d 94 24 b0 3d 00 	lea    0x3db0(%rsp),%rdx
  402258:	00 
  402259:	44 89 ff             	mov    %r15d,%edi
  40225c:	48 89 de             	mov    %rbx,%rsi
  40225f:	e8 ec f4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402264:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  402269:	44 0f b6 7c 24 2e    	movzbl 0x2e(%rsp),%r15d
  40226f:	44 89 e1             	mov    %r12d,%ecx
  402272:	48 01 c1             	add    %rax,%rcx
  402275:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402279:	44 89 e0             	mov    %r12d,%eax
  40227c:	83 e0 1f             	and    $0x1f,%eax
  40227f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402283:	48 83 c3 20          	add    $0x20,%rbx
  402287:	4c 89 b4 24 90 3d 00 	mov    %r14,0x3d90(%rsp)
  40228e:	00 
  40228f:	48 c7 84 24 98 3d 00 	movq   $0x0,0x3d98(%rsp)
  402296:	00 00 00 00 00 
  40229b:	c5 f8 28 05 bd 9e 00 	vmovaps 0x9ebd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4022a2:	00 
  4022a3:	c5 f8 11 84 24 a0 3d 	vmovups %xmm0,0x3da0(%rsp)
  4022aa:	00 00 
  4022ac:	48 8d b4 24 90 3d 00 	lea    0x3d90(%rsp),%rsi
  4022b3:	00 
  4022b4:	48 89 df             	mov    %rbx,%rdi
  4022b7:	e8 f4 ee ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4022bc:	88 44 24 2e          	mov    %al,0x2e(%rsp)
  4022c0:	4c 89 b4 24 70 3d 00 	mov    %r14,0x3d70(%rsp)
  4022c7:	00 
  4022c8:	48 c7 84 24 78 3d 00 	movq   $0x0,0x3d78(%rsp)
  4022cf:	00 00 00 00 00 
  4022d4:	c5 f8 28 05 84 9e 00 	vmovaps 0x9e84(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4022db:	00 
  4022dc:	c5 f8 11 84 24 80 3d 	vmovups %xmm0,0x3d80(%rsp)
  4022e3:	00 00 
  4022e5:	48 8d 94 24 70 3d 00 	lea    0x3d70(%rsp),%rdx
  4022ec:	00 
  4022ed:	44 89 ff             	mov    %r15d,%edi
  4022f0:	48 89 de             	mov    %rbx,%rsi
  4022f3:	e8 58 f4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4022f8:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4022fd:	44 0f b6 7c 24 2f    	movzbl 0x2f(%rsp),%r15d
  402303:	44 89 e1             	mov    %r12d,%ecx
  402306:	48 01 c1             	add    %rax,%rcx
  402309:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40230d:	44 89 e0             	mov    %r12d,%eax
  402310:	83 e0 1f             	and    $0x1f,%eax
  402313:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402317:	48 83 c3 20          	add    $0x20,%rbx
  40231b:	4c 89 b4 24 50 3d 00 	mov    %r14,0x3d50(%rsp)
  402322:	00 
  402323:	48 c7 84 24 58 3d 00 	movq   $0x0,0x3d58(%rsp)
  40232a:	00 00 00 00 00 
  40232f:	c5 f8 28 05 29 9e 00 	vmovaps 0x9e29(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402336:	00 
  402337:	c5 f8 11 84 24 60 3d 	vmovups %xmm0,0x3d60(%rsp)
  40233e:	00 00 
  402340:	48 8d b4 24 50 3d 00 	lea    0x3d50(%rsp),%rsi
  402347:	00 
  402348:	48 89 df             	mov    %rbx,%rdi
  40234b:	e8 60 ee ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402350:	88 44 24 2f          	mov    %al,0x2f(%rsp)
  402354:	4c 89 b4 24 30 3d 00 	mov    %r14,0x3d30(%rsp)
  40235b:	00 
  40235c:	48 c7 84 24 38 3d 00 	movq   $0x0,0x3d38(%rsp)
  402363:	00 00 00 00 00 
  402368:	c5 f8 28 05 f0 9d 00 	vmovaps 0x9df0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40236f:	00 
  402370:	c5 f8 11 84 24 40 3d 	vmovups %xmm0,0x3d40(%rsp)
  402377:	00 00 
  402379:	48 8d 94 24 30 3d 00 	lea    0x3d30(%rsp),%rdx
  402380:	00 
  402381:	44 89 ff             	mov    %r15d,%edi
  402384:	48 89 de             	mov    %rbx,%rsi
  402387:	e8 c4 f3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40238c:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  402391:	44 0f b6 7c 24 30    	movzbl 0x30(%rsp),%r15d
  402397:	44 89 e1             	mov    %r12d,%ecx
  40239a:	48 01 c1             	add    %rax,%rcx
  40239d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4023a1:	44 89 e0             	mov    %r12d,%eax
  4023a4:	83 e0 1f             	and    $0x1f,%eax
  4023a7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4023ab:	48 83 c3 20          	add    $0x20,%rbx
  4023af:	4c 89 b4 24 10 3d 00 	mov    %r14,0x3d10(%rsp)
  4023b6:	00 
  4023b7:	48 c7 84 24 18 3d 00 	movq   $0x0,0x3d18(%rsp)
  4023be:	00 00 00 00 00 
  4023c3:	c5 f8 28 05 95 9d 00 	vmovaps 0x9d95(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4023ca:	00 
  4023cb:	c5 f8 11 84 24 20 3d 	vmovups %xmm0,0x3d20(%rsp)
  4023d2:	00 00 
  4023d4:	48 8d b4 24 10 3d 00 	lea    0x3d10(%rsp),%rsi
  4023db:	00 
  4023dc:	48 89 df             	mov    %rbx,%rdi
  4023df:	e8 cc ed ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4023e4:	88 44 24 30          	mov    %al,0x30(%rsp)
  4023e8:	4c 89 b4 24 f0 3c 00 	mov    %r14,0x3cf0(%rsp)
  4023ef:	00 
  4023f0:	48 c7 84 24 f8 3c 00 	movq   $0x0,0x3cf8(%rsp)
  4023f7:	00 00 00 00 00 
  4023fc:	c5 f8 28 05 5c 9d 00 	vmovaps 0x9d5c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402403:	00 
  402404:	c5 f8 11 84 24 00 3d 	vmovups %xmm0,0x3d00(%rsp)
  40240b:	00 00 
  40240d:	48 8d 94 24 f0 3c 00 	lea    0x3cf0(%rsp),%rdx
  402414:	00 
  402415:	44 89 ff             	mov    %r15d,%edi
  402418:	48 89 de             	mov    %rbx,%rsi
  40241b:	e8 30 f3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402420:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  402425:	44 0f b6 7c 24 31    	movzbl 0x31(%rsp),%r15d
  40242b:	44 89 e1             	mov    %r12d,%ecx
  40242e:	48 01 c1             	add    %rax,%rcx
  402431:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402435:	44 89 e0             	mov    %r12d,%eax
  402438:	83 e0 1f             	and    $0x1f,%eax
  40243b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40243f:	48 83 c3 20          	add    $0x20,%rbx
  402443:	4c 89 b4 24 d0 3c 00 	mov    %r14,0x3cd0(%rsp)
  40244a:	00 
  40244b:	48 c7 84 24 d8 3c 00 	movq   $0x0,0x3cd8(%rsp)
  402452:	00 00 00 00 00 
  402457:	c5 f8 28 05 01 9d 00 	vmovaps 0x9d01(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40245e:	00 
  40245f:	c5 f8 11 84 24 e0 3c 	vmovups %xmm0,0x3ce0(%rsp)
  402466:	00 00 
  402468:	48 8d b4 24 d0 3c 00 	lea    0x3cd0(%rsp),%rsi
  40246f:	00 
  402470:	48 89 df             	mov    %rbx,%rdi
  402473:	e8 38 ed ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402478:	88 44 24 31          	mov    %al,0x31(%rsp)
  40247c:	4c 89 b4 24 b0 3c 00 	mov    %r14,0x3cb0(%rsp)
  402483:	00 
  402484:	48 c7 84 24 b8 3c 00 	movq   $0x0,0x3cb8(%rsp)
  40248b:	00 00 00 00 00 
  402490:	c5 f8 28 05 c8 9c 00 	vmovaps 0x9cc8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402497:	00 
  402498:	c5 f8 11 84 24 c0 3c 	vmovups %xmm0,0x3cc0(%rsp)
  40249f:	00 00 
  4024a1:	48 8d 94 24 b0 3c 00 	lea    0x3cb0(%rsp),%rdx
  4024a8:	00 
  4024a9:	44 89 ff             	mov    %r15d,%edi
  4024ac:	48 89 de             	mov    %rbx,%rsi
  4024af:	e8 9c f2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4024b4:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  4024b9:	44 0f b6 7c 24 32    	movzbl 0x32(%rsp),%r15d
  4024bf:	44 89 e1             	mov    %r12d,%ecx
  4024c2:	48 01 c1             	add    %rax,%rcx
  4024c5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4024c9:	44 89 e0             	mov    %r12d,%eax
  4024cc:	83 e0 1f             	and    $0x1f,%eax
  4024cf:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4024d3:	48 83 c3 20          	add    $0x20,%rbx
  4024d7:	4c 89 b4 24 90 3c 00 	mov    %r14,0x3c90(%rsp)
  4024de:	00 
  4024df:	48 c7 84 24 98 3c 00 	movq   $0x0,0x3c98(%rsp)
  4024e6:	00 00 00 00 00 
  4024eb:	c5 f8 28 05 6d 9c 00 	vmovaps 0x9c6d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4024f2:	00 
  4024f3:	c5 f8 11 84 24 a0 3c 	vmovups %xmm0,0x3ca0(%rsp)
  4024fa:	00 00 
  4024fc:	48 8d b4 24 90 3c 00 	lea    0x3c90(%rsp),%rsi
  402503:	00 
  402504:	48 89 df             	mov    %rbx,%rdi
  402507:	e8 a4 ec ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40250c:	88 44 24 32          	mov    %al,0x32(%rsp)
  402510:	4c 89 b4 24 70 3c 00 	mov    %r14,0x3c70(%rsp)
  402517:	00 
  402518:	48 c7 84 24 78 3c 00 	movq   $0x0,0x3c78(%rsp)
  40251f:	00 00 00 00 00 
  402524:	c5 f8 28 05 34 9c 00 	vmovaps 0x9c34(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40252b:	00 
  40252c:	c5 f8 11 84 24 80 3c 	vmovups %xmm0,0x3c80(%rsp)
  402533:	00 00 
  402535:	48 8d 94 24 70 3c 00 	lea    0x3c70(%rsp),%rdx
  40253c:	00 
  40253d:	44 89 ff             	mov    %r15d,%edi
  402540:	48 89 de             	mov    %rbx,%rsi
  402543:	e8 08 f2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402548:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  40254d:	44 0f b6 7c 24 33    	movzbl 0x33(%rsp),%r15d
  402553:	44 89 e1             	mov    %r12d,%ecx
  402556:	48 01 c1             	add    %rax,%rcx
  402559:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40255d:	44 89 e0             	mov    %r12d,%eax
  402560:	83 e0 1f             	and    $0x1f,%eax
  402563:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402567:	48 83 c3 20          	add    $0x20,%rbx
  40256b:	4c 89 b4 24 50 3c 00 	mov    %r14,0x3c50(%rsp)
  402572:	00 
  402573:	48 c7 84 24 58 3c 00 	movq   $0x0,0x3c58(%rsp)
  40257a:	00 00 00 00 00 
  40257f:	c5 f8 28 05 d9 9b 00 	vmovaps 0x9bd9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402586:	00 
  402587:	c5 f8 11 84 24 60 3c 	vmovups %xmm0,0x3c60(%rsp)
  40258e:	00 00 
  402590:	48 8d b4 24 50 3c 00 	lea    0x3c50(%rsp),%rsi
  402597:	00 
  402598:	48 89 df             	mov    %rbx,%rdi
  40259b:	e8 10 ec ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4025a0:	88 44 24 33          	mov    %al,0x33(%rsp)
  4025a4:	4c 89 b4 24 30 3c 00 	mov    %r14,0x3c30(%rsp)
  4025ab:	00 
  4025ac:	48 c7 84 24 38 3c 00 	movq   $0x0,0x3c38(%rsp)
  4025b3:	00 00 00 00 00 
  4025b8:	c5 f8 28 05 a0 9b 00 	vmovaps 0x9ba0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4025bf:	00 
  4025c0:	c5 f8 11 84 24 40 3c 	vmovups %xmm0,0x3c40(%rsp)
  4025c7:	00 00 
  4025c9:	48 8d 94 24 30 3c 00 	lea    0x3c30(%rsp),%rdx
  4025d0:	00 
  4025d1:	44 89 ff             	mov    %r15d,%edi
  4025d4:	48 89 de             	mov    %rbx,%rsi
  4025d7:	e8 74 f1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4025dc:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  4025e1:	44 0f b6 7c 24 34    	movzbl 0x34(%rsp),%r15d
  4025e7:	44 89 e1             	mov    %r12d,%ecx
  4025ea:	48 01 c1             	add    %rax,%rcx
  4025ed:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4025f1:	44 89 e0             	mov    %r12d,%eax
  4025f4:	83 e0 1f             	and    $0x1f,%eax
  4025f7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4025fb:	48 83 c3 20          	add    $0x20,%rbx
  4025ff:	4c 89 b4 24 10 3c 00 	mov    %r14,0x3c10(%rsp)
  402606:	00 
  402607:	48 c7 84 24 18 3c 00 	movq   $0x0,0x3c18(%rsp)
  40260e:	00 00 00 00 00 
  402613:	c5 f8 28 05 45 9b 00 	vmovaps 0x9b45(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40261a:	00 
  40261b:	c5 f8 11 84 24 20 3c 	vmovups %xmm0,0x3c20(%rsp)
  402622:	00 00 
  402624:	48 8d b4 24 10 3c 00 	lea    0x3c10(%rsp),%rsi
  40262b:	00 
  40262c:	48 89 df             	mov    %rbx,%rdi
  40262f:	e8 7c eb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402634:	88 44 24 34          	mov    %al,0x34(%rsp)
  402638:	4c 89 b4 24 f0 3b 00 	mov    %r14,0x3bf0(%rsp)
  40263f:	00 
  402640:	48 c7 84 24 f8 3b 00 	movq   $0x0,0x3bf8(%rsp)
  402647:	00 00 00 00 00 
  40264c:	c5 f8 28 05 0c 9b 00 	vmovaps 0x9b0c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402653:	00 
  402654:	c5 f8 11 84 24 00 3c 	vmovups %xmm0,0x3c00(%rsp)
  40265b:	00 00 
  40265d:	48 8d 94 24 f0 3b 00 	lea    0x3bf0(%rsp),%rdx
  402664:	00 
  402665:	44 89 ff             	mov    %r15d,%edi
  402668:	48 89 de             	mov    %rbx,%rsi
  40266b:	e8 e0 f0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402670:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  402675:	44 0f b6 7c 24 35    	movzbl 0x35(%rsp),%r15d
  40267b:	44 89 e1             	mov    %r12d,%ecx
  40267e:	48 01 c1             	add    %rax,%rcx
  402681:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402685:	44 89 e0             	mov    %r12d,%eax
  402688:	83 e0 1f             	and    $0x1f,%eax
  40268b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40268f:	48 83 c3 20          	add    $0x20,%rbx
  402693:	4c 89 b4 24 d0 3b 00 	mov    %r14,0x3bd0(%rsp)
  40269a:	00 
  40269b:	48 c7 84 24 d8 3b 00 	movq   $0x0,0x3bd8(%rsp)
  4026a2:	00 00 00 00 00 
  4026a7:	c5 f8 28 05 b1 9a 00 	vmovaps 0x9ab1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4026ae:	00 
  4026af:	c5 f8 11 84 24 e0 3b 	vmovups %xmm0,0x3be0(%rsp)
  4026b6:	00 00 
  4026b8:	48 8d b4 24 d0 3b 00 	lea    0x3bd0(%rsp),%rsi
  4026bf:	00 
  4026c0:	48 89 df             	mov    %rbx,%rdi
  4026c3:	e8 e8 ea ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4026c8:	88 44 24 35          	mov    %al,0x35(%rsp)
  4026cc:	4c 89 b4 24 b0 3b 00 	mov    %r14,0x3bb0(%rsp)
  4026d3:	00 
  4026d4:	48 c7 84 24 b8 3b 00 	movq   $0x0,0x3bb8(%rsp)
  4026db:	00 00 00 00 00 
  4026e0:	c5 f8 28 05 78 9a 00 	vmovaps 0x9a78(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4026e7:	00 
  4026e8:	c5 f8 11 84 24 c0 3b 	vmovups %xmm0,0x3bc0(%rsp)
  4026ef:	00 00 
  4026f1:	48 8d 94 24 b0 3b 00 	lea    0x3bb0(%rsp),%rdx
  4026f8:	00 
  4026f9:	44 89 ff             	mov    %r15d,%edi
  4026fc:	48 89 de             	mov    %rbx,%rsi
  4026ff:	e8 4c f0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402704:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  402709:	44 0f b6 7c 24 36    	movzbl 0x36(%rsp),%r15d
  40270f:	44 89 e1             	mov    %r12d,%ecx
  402712:	48 01 c1             	add    %rax,%rcx
  402715:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402719:	44 89 e0             	mov    %r12d,%eax
  40271c:	83 e0 1f             	and    $0x1f,%eax
  40271f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402723:	48 83 c3 20          	add    $0x20,%rbx
  402727:	4c 89 b4 24 90 3b 00 	mov    %r14,0x3b90(%rsp)
  40272e:	00 
  40272f:	48 c7 84 24 98 3b 00 	movq   $0x0,0x3b98(%rsp)
  402736:	00 00 00 00 00 
  40273b:	c5 f8 28 05 1d 9a 00 	vmovaps 0x9a1d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402742:	00 
  402743:	c5 f8 11 84 24 a0 3b 	vmovups %xmm0,0x3ba0(%rsp)
  40274a:	00 00 
  40274c:	48 8d b4 24 90 3b 00 	lea    0x3b90(%rsp),%rsi
  402753:	00 
  402754:	48 89 df             	mov    %rbx,%rdi
  402757:	e8 54 ea ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40275c:	88 44 24 36          	mov    %al,0x36(%rsp)
  402760:	4c 89 b4 24 70 3b 00 	mov    %r14,0x3b70(%rsp)
  402767:	00 
  402768:	48 c7 84 24 78 3b 00 	movq   $0x0,0x3b78(%rsp)
  40276f:	00 00 00 00 00 
  402774:	c5 f8 28 05 e4 99 00 	vmovaps 0x99e4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40277b:	00 
  40277c:	c5 f8 11 84 24 80 3b 	vmovups %xmm0,0x3b80(%rsp)
  402783:	00 00 
  402785:	48 8d 94 24 70 3b 00 	lea    0x3b70(%rsp),%rdx
  40278c:	00 
  40278d:	44 89 ff             	mov    %r15d,%edi
  402790:	48 89 de             	mov    %rbx,%rsi
  402793:	e8 b8 ef ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402798:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  40279d:	44 0f b6 7c 24 37    	movzbl 0x37(%rsp),%r15d
  4027a3:	44 89 e1             	mov    %r12d,%ecx
  4027a6:	48 01 c1             	add    %rax,%rcx
  4027a9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4027ad:	44 89 e0             	mov    %r12d,%eax
  4027b0:	83 e0 1f             	and    $0x1f,%eax
  4027b3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4027b7:	48 83 c3 20          	add    $0x20,%rbx
  4027bb:	4c 89 b4 24 50 3b 00 	mov    %r14,0x3b50(%rsp)
  4027c2:	00 
  4027c3:	48 c7 84 24 58 3b 00 	movq   $0x0,0x3b58(%rsp)
  4027ca:	00 00 00 00 00 
  4027cf:	c5 f8 28 05 89 99 00 	vmovaps 0x9989(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4027d6:	00 
  4027d7:	c5 f8 11 84 24 60 3b 	vmovups %xmm0,0x3b60(%rsp)
  4027de:	00 00 
  4027e0:	48 8d b4 24 50 3b 00 	lea    0x3b50(%rsp),%rsi
  4027e7:	00 
  4027e8:	48 89 df             	mov    %rbx,%rdi
  4027eb:	e8 c0 e9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4027f0:	88 44 24 37          	mov    %al,0x37(%rsp)
  4027f4:	4c 89 b4 24 30 3b 00 	mov    %r14,0x3b30(%rsp)
  4027fb:	00 
  4027fc:	48 c7 84 24 38 3b 00 	movq   $0x0,0x3b38(%rsp)
  402803:	00 00 00 00 00 
  402808:	c5 f8 28 05 50 99 00 	vmovaps 0x9950(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40280f:	00 
  402810:	c5 f8 11 84 24 40 3b 	vmovups %xmm0,0x3b40(%rsp)
  402817:	00 00 
  402819:	48 8d 94 24 30 3b 00 	lea    0x3b30(%rsp),%rdx
  402820:	00 
  402821:	44 89 ff             	mov    %r15d,%edi
  402824:	48 89 de             	mov    %rbx,%rsi
  402827:	e8 24 ef ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40282c:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  402831:	44 0f b6 7c 24 38    	movzbl 0x38(%rsp),%r15d
  402837:	44 89 e1             	mov    %r12d,%ecx
  40283a:	48 01 c1             	add    %rax,%rcx
  40283d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402841:	44 89 e0             	mov    %r12d,%eax
  402844:	83 e0 1f             	and    $0x1f,%eax
  402847:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40284b:	48 83 c3 20          	add    $0x20,%rbx
  40284f:	4c 89 b4 24 10 3b 00 	mov    %r14,0x3b10(%rsp)
  402856:	00 
  402857:	48 c7 84 24 18 3b 00 	movq   $0x0,0x3b18(%rsp)
  40285e:	00 00 00 00 00 
  402863:	c5 f8 28 05 f5 98 00 	vmovaps 0x98f5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40286a:	00 
  40286b:	c5 f8 11 84 24 20 3b 	vmovups %xmm0,0x3b20(%rsp)
  402872:	00 00 
  402874:	48 8d b4 24 10 3b 00 	lea    0x3b10(%rsp),%rsi
  40287b:	00 
  40287c:	48 89 df             	mov    %rbx,%rdi
  40287f:	e8 2c e9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402884:	88 44 24 38          	mov    %al,0x38(%rsp)
  402888:	4c 89 b4 24 f0 3a 00 	mov    %r14,0x3af0(%rsp)
  40288f:	00 
  402890:	48 c7 84 24 f8 3a 00 	movq   $0x0,0x3af8(%rsp)
  402897:	00 00 00 00 00 
  40289c:	c5 f8 28 05 bc 98 00 	vmovaps 0x98bc(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4028a3:	00 
  4028a4:	c5 f8 11 84 24 00 3b 	vmovups %xmm0,0x3b00(%rsp)
  4028ab:	00 00 
  4028ad:	48 8d 94 24 f0 3a 00 	lea    0x3af0(%rsp),%rdx
  4028b4:	00 
  4028b5:	44 89 ff             	mov    %r15d,%edi
  4028b8:	48 89 de             	mov    %rbx,%rsi
  4028bb:	e8 90 ee ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4028c0:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  4028c5:	44 0f b6 7c 24 39    	movzbl 0x39(%rsp),%r15d
  4028cb:	44 89 e1             	mov    %r12d,%ecx
  4028ce:	48 01 c1             	add    %rax,%rcx
  4028d1:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4028d5:	44 89 e0             	mov    %r12d,%eax
  4028d8:	83 e0 1f             	and    $0x1f,%eax
  4028db:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4028df:	48 83 c3 20          	add    $0x20,%rbx
  4028e3:	4c 89 b4 24 d0 3a 00 	mov    %r14,0x3ad0(%rsp)
  4028ea:	00 
  4028eb:	48 c7 84 24 d8 3a 00 	movq   $0x0,0x3ad8(%rsp)
  4028f2:	00 00 00 00 00 
  4028f7:	c5 f8 28 05 61 98 00 	vmovaps 0x9861(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4028fe:	00 
  4028ff:	c5 f8 11 84 24 e0 3a 	vmovups %xmm0,0x3ae0(%rsp)
  402906:	00 00 
  402908:	48 8d b4 24 d0 3a 00 	lea    0x3ad0(%rsp),%rsi
  40290f:	00 
  402910:	48 89 df             	mov    %rbx,%rdi
  402913:	e8 98 e8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402918:	88 44 24 39          	mov    %al,0x39(%rsp)
  40291c:	4c 89 b4 24 b0 3a 00 	mov    %r14,0x3ab0(%rsp)
  402923:	00 
  402924:	48 c7 84 24 b8 3a 00 	movq   $0x0,0x3ab8(%rsp)
  40292b:	00 00 00 00 00 
  402930:	c5 f8 28 05 28 98 00 	vmovaps 0x9828(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402937:	00 
  402938:	c5 f8 11 84 24 c0 3a 	vmovups %xmm0,0x3ac0(%rsp)
  40293f:	00 00 
  402941:	48 8d 94 24 b0 3a 00 	lea    0x3ab0(%rsp),%rdx
  402948:	00 
  402949:	44 89 ff             	mov    %r15d,%edi
  40294c:	48 89 de             	mov    %rbx,%rsi
  40294f:	e8 fc ed ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402954:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  402959:	44 0f b6 7c 24 3a    	movzbl 0x3a(%rsp),%r15d
  40295f:	44 89 e1             	mov    %r12d,%ecx
  402962:	48 01 c1             	add    %rax,%rcx
  402965:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402969:	44 89 e0             	mov    %r12d,%eax
  40296c:	83 e0 1f             	and    $0x1f,%eax
  40296f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402973:	48 83 c3 20          	add    $0x20,%rbx
  402977:	4c 89 b4 24 90 3a 00 	mov    %r14,0x3a90(%rsp)
  40297e:	00 
  40297f:	48 c7 84 24 98 3a 00 	movq   $0x0,0x3a98(%rsp)
  402986:	00 00 00 00 00 
  40298b:	c5 f8 28 05 cd 97 00 	vmovaps 0x97cd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402992:	00 
  402993:	c5 f8 11 84 24 a0 3a 	vmovups %xmm0,0x3aa0(%rsp)
  40299a:	00 00 
  40299c:	48 8d b4 24 90 3a 00 	lea    0x3a90(%rsp),%rsi
  4029a3:	00 
  4029a4:	48 89 df             	mov    %rbx,%rdi
  4029a7:	e8 04 e8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4029ac:	88 44 24 3a          	mov    %al,0x3a(%rsp)
  4029b0:	4c 89 b4 24 70 3a 00 	mov    %r14,0x3a70(%rsp)
  4029b7:	00 
  4029b8:	48 c7 84 24 78 3a 00 	movq   $0x0,0x3a78(%rsp)
  4029bf:	00 00 00 00 00 
  4029c4:	c5 f8 28 05 94 97 00 	vmovaps 0x9794(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4029cb:	00 
  4029cc:	c5 f8 11 84 24 80 3a 	vmovups %xmm0,0x3a80(%rsp)
  4029d3:	00 00 
  4029d5:	48 8d 94 24 70 3a 00 	lea    0x3a70(%rsp),%rdx
  4029dc:	00 
  4029dd:	44 89 ff             	mov    %r15d,%edi
  4029e0:	48 89 de             	mov    %rbx,%rsi
  4029e3:	e8 68 ed ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4029e8:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  4029ed:	44 0f b6 7c 24 3b    	movzbl 0x3b(%rsp),%r15d
  4029f3:	44 89 e1             	mov    %r12d,%ecx
  4029f6:	48 01 c1             	add    %rax,%rcx
  4029f9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4029fd:	44 89 e0             	mov    %r12d,%eax
  402a00:	83 e0 1f             	and    $0x1f,%eax
  402a03:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402a07:	48 83 c3 20          	add    $0x20,%rbx
  402a0b:	4c 89 b4 24 50 3a 00 	mov    %r14,0x3a50(%rsp)
  402a12:	00 
  402a13:	48 c7 84 24 58 3a 00 	movq   $0x0,0x3a58(%rsp)
  402a1a:	00 00 00 00 00 
  402a1f:	c5 f8 28 05 39 97 00 	vmovaps 0x9739(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402a26:	00 
  402a27:	c5 f8 11 84 24 60 3a 	vmovups %xmm0,0x3a60(%rsp)
  402a2e:	00 00 
  402a30:	48 8d b4 24 50 3a 00 	lea    0x3a50(%rsp),%rsi
  402a37:	00 
  402a38:	48 89 df             	mov    %rbx,%rdi
  402a3b:	e8 70 e7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402a40:	88 44 24 3b          	mov    %al,0x3b(%rsp)
  402a44:	4c 89 b4 24 30 3a 00 	mov    %r14,0x3a30(%rsp)
  402a4b:	00 
  402a4c:	48 c7 84 24 38 3a 00 	movq   $0x0,0x3a38(%rsp)
  402a53:	00 00 00 00 00 
  402a58:	c5 f8 28 05 00 97 00 	vmovaps 0x9700(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402a5f:	00 
  402a60:	c5 f8 11 84 24 40 3a 	vmovups %xmm0,0x3a40(%rsp)
  402a67:	00 00 
  402a69:	48 8d 94 24 30 3a 00 	lea    0x3a30(%rsp),%rdx
  402a70:	00 
  402a71:	44 89 ff             	mov    %r15d,%edi
  402a74:	48 89 de             	mov    %rbx,%rsi
  402a77:	e8 d4 ec ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402a7c:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  402a81:	44 0f b6 7c 24 3c    	movzbl 0x3c(%rsp),%r15d
  402a87:	44 89 e1             	mov    %r12d,%ecx
  402a8a:	48 01 c1             	add    %rax,%rcx
  402a8d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402a91:	44 89 e0             	mov    %r12d,%eax
  402a94:	83 e0 1f             	and    $0x1f,%eax
  402a97:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402a9b:	48 83 c3 20          	add    $0x20,%rbx
  402a9f:	4c 89 b4 24 10 3a 00 	mov    %r14,0x3a10(%rsp)
  402aa6:	00 
  402aa7:	48 c7 84 24 18 3a 00 	movq   $0x0,0x3a18(%rsp)
  402aae:	00 00 00 00 00 
  402ab3:	c5 f8 28 05 a5 96 00 	vmovaps 0x96a5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402aba:	00 
  402abb:	c5 f8 11 84 24 20 3a 	vmovups %xmm0,0x3a20(%rsp)
  402ac2:	00 00 
  402ac4:	48 8d b4 24 10 3a 00 	lea    0x3a10(%rsp),%rsi
  402acb:	00 
  402acc:	48 89 df             	mov    %rbx,%rdi
  402acf:	e8 dc e6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402ad4:	88 44 24 3c          	mov    %al,0x3c(%rsp)
  402ad8:	4c 89 b4 24 f0 39 00 	mov    %r14,0x39f0(%rsp)
  402adf:	00 
  402ae0:	48 c7 84 24 f8 39 00 	movq   $0x0,0x39f8(%rsp)
  402ae7:	00 00 00 00 00 
  402aec:	c5 f8 28 05 6c 96 00 	vmovaps 0x966c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402af3:	00 
  402af4:	c5 f8 11 84 24 00 3a 	vmovups %xmm0,0x3a00(%rsp)
  402afb:	00 00 
  402afd:	48 8d 94 24 f0 39 00 	lea    0x39f0(%rsp),%rdx
  402b04:	00 
  402b05:	44 89 ff             	mov    %r15d,%edi
  402b08:	48 89 de             	mov    %rbx,%rsi
  402b0b:	e8 40 ec ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402b10:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  402b15:	44 0f b6 7c 24 3d    	movzbl 0x3d(%rsp),%r15d
  402b1b:	44 89 e1             	mov    %r12d,%ecx
  402b1e:	48 01 c1             	add    %rax,%rcx
  402b21:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402b25:	44 89 e0             	mov    %r12d,%eax
  402b28:	83 e0 1f             	and    $0x1f,%eax
  402b2b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402b2f:	48 83 c3 20          	add    $0x20,%rbx
  402b33:	4c 89 b4 24 d0 39 00 	mov    %r14,0x39d0(%rsp)
  402b3a:	00 
  402b3b:	48 c7 84 24 d8 39 00 	movq   $0x0,0x39d8(%rsp)
  402b42:	00 00 00 00 00 
  402b47:	c5 f8 28 05 11 96 00 	vmovaps 0x9611(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402b4e:	00 
  402b4f:	c5 f8 11 84 24 e0 39 	vmovups %xmm0,0x39e0(%rsp)
  402b56:	00 00 
  402b58:	48 8d b4 24 d0 39 00 	lea    0x39d0(%rsp),%rsi
  402b5f:	00 
  402b60:	48 89 df             	mov    %rbx,%rdi
  402b63:	e8 48 e6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402b68:	88 44 24 3d          	mov    %al,0x3d(%rsp)
  402b6c:	4c 89 b4 24 b0 39 00 	mov    %r14,0x39b0(%rsp)
  402b73:	00 
  402b74:	48 c7 84 24 b8 39 00 	movq   $0x0,0x39b8(%rsp)
  402b7b:	00 00 00 00 00 
  402b80:	c5 f8 28 05 d8 95 00 	vmovaps 0x95d8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402b87:	00 
  402b88:	c5 f8 11 84 24 c0 39 	vmovups %xmm0,0x39c0(%rsp)
  402b8f:	00 00 
  402b91:	48 8d 94 24 b0 39 00 	lea    0x39b0(%rsp),%rdx
  402b98:	00 
  402b99:	44 89 ff             	mov    %r15d,%edi
  402b9c:	48 89 de             	mov    %rbx,%rsi
  402b9f:	e8 ac eb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402ba4:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  402ba9:	44 0f b6 7c 24 3e    	movzbl 0x3e(%rsp),%r15d
  402baf:	44 89 e1             	mov    %r12d,%ecx
  402bb2:	48 01 c1             	add    %rax,%rcx
  402bb5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402bb9:	44 89 e0             	mov    %r12d,%eax
  402bbc:	83 e0 1f             	and    $0x1f,%eax
  402bbf:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402bc3:	48 83 c3 20          	add    $0x20,%rbx
  402bc7:	4c 89 b4 24 90 39 00 	mov    %r14,0x3990(%rsp)
  402bce:	00 
  402bcf:	48 c7 84 24 98 39 00 	movq   $0x0,0x3998(%rsp)
  402bd6:	00 00 00 00 00 
  402bdb:	c5 f8 28 05 7d 95 00 	vmovaps 0x957d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402be2:	00 
  402be3:	c5 f8 11 84 24 a0 39 	vmovups %xmm0,0x39a0(%rsp)
  402bea:	00 00 
  402bec:	48 8d b4 24 90 39 00 	lea    0x3990(%rsp),%rsi
  402bf3:	00 
  402bf4:	48 89 df             	mov    %rbx,%rdi
  402bf7:	e8 b4 e5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402bfc:	88 44 24 3e          	mov    %al,0x3e(%rsp)
  402c00:	4c 89 b4 24 70 39 00 	mov    %r14,0x3970(%rsp)
  402c07:	00 
  402c08:	48 c7 84 24 78 39 00 	movq   $0x0,0x3978(%rsp)
  402c0f:	00 00 00 00 00 
  402c14:	c5 f8 28 05 44 95 00 	vmovaps 0x9544(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402c1b:	00 
  402c1c:	c5 f8 11 84 24 80 39 	vmovups %xmm0,0x3980(%rsp)
  402c23:	00 00 
  402c25:	48 8d 94 24 70 39 00 	lea    0x3970(%rsp),%rdx
  402c2c:	00 
  402c2d:	44 89 ff             	mov    %r15d,%edi
  402c30:	48 89 de             	mov    %rbx,%rsi
  402c33:	e8 18 eb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402c38:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  402c3d:	44 0f b6 7c 24 3f    	movzbl 0x3f(%rsp),%r15d
  402c43:	44 89 e1             	mov    %r12d,%ecx
  402c46:	48 01 c1             	add    %rax,%rcx
  402c49:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402c4d:	44 89 e0             	mov    %r12d,%eax
  402c50:	83 e0 1f             	and    $0x1f,%eax
  402c53:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402c57:	48 83 c3 20          	add    $0x20,%rbx
  402c5b:	4c 89 b4 24 50 39 00 	mov    %r14,0x3950(%rsp)
  402c62:	00 
  402c63:	48 c7 84 24 58 39 00 	movq   $0x0,0x3958(%rsp)
  402c6a:	00 00 00 00 00 
  402c6f:	c5 f8 28 05 e9 94 00 	vmovaps 0x94e9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402c76:	00 
  402c77:	c5 f8 11 84 24 60 39 	vmovups %xmm0,0x3960(%rsp)
  402c7e:	00 00 
  402c80:	48 8d b4 24 50 39 00 	lea    0x3950(%rsp),%rsi
  402c87:	00 
  402c88:	48 89 df             	mov    %rbx,%rdi
  402c8b:	e8 20 e5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402c90:	88 44 24 3f          	mov    %al,0x3f(%rsp)
  402c94:	4c 89 b4 24 30 39 00 	mov    %r14,0x3930(%rsp)
  402c9b:	00 
  402c9c:	48 c7 84 24 38 39 00 	movq   $0x0,0x3938(%rsp)
  402ca3:	00 00 00 00 00 
  402ca8:	c5 f8 28 05 b0 94 00 	vmovaps 0x94b0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402caf:	00 
  402cb0:	c5 f8 11 84 24 40 39 	vmovups %xmm0,0x3940(%rsp)
  402cb7:	00 00 
  402cb9:	48 8d 94 24 30 39 00 	lea    0x3930(%rsp),%rdx
  402cc0:	00 
  402cc1:	44 89 ff             	mov    %r15d,%edi
  402cc4:	48 89 de             	mov    %rbx,%rsi
  402cc7:	e8 84 ea ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402ccc:	0f b6 04 24          	movzbl (%rsp),%eax
  402cd0:	44 0f b6 7c 24 40    	movzbl 0x40(%rsp),%r15d
  402cd6:	44 89 e1             	mov    %r12d,%ecx
  402cd9:	48 01 c1             	add    %rax,%rcx
  402cdc:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402ce0:	44 89 e0             	mov    %r12d,%eax
  402ce3:	83 e0 1f             	and    $0x1f,%eax
  402ce6:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402cea:	48 83 c3 20          	add    $0x20,%rbx
  402cee:	4c 89 b4 24 10 39 00 	mov    %r14,0x3910(%rsp)
  402cf5:	00 
  402cf6:	48 c7 84 24 18 39 00 	movq   $0x0,0x3918(%rsp)
  402cfd:	00 00 00 00 00 
  402d02:	c5 f8 28 05 56 94 00 	vmovaps 0x9456(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402d09:	00 
  402d0a:	c5 f8 11 84 24 20 39 	vmovups %xmm0,0x3920(%rsp)
  402d11:	00 00 
  402d13:	48 8d b4 24 10 39 00 	lea    0x3910(%rsp),%rsi
  402d1a:	00 
  402d1b:	48 89 df             	mov    %rbx,%rdi
  402d1e:	e8 8d e4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402d23:	88 44 24 40          	mov    %al,0x40(%rsp)
  402d27:	4c 89 b4 24 f0 38 00 	mov    %r14,0x38f0(%rsp)
  402d2e:	00 
  402d2f:	48 c7 84 24 f8 38 00 	movq   $0x0,0x38f8(%rsp)
  402d36:	00 00 00 00 00 
  402d3b:	c5 f8 28 05 1d 94 00 	vmovaps 0x941d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402d42:	00 
  402d43:	c5 f8 11 84 24 00 39 	vmovups %xmm0,0x3900(%rsp)
  402d4a:	00 00 
  402d4c:	48 8d 94 24 f0 38 00 	lea    0x38f0(%rsp),%rdx
  402d53:	00 
  402d54:	44 89 ff             	mov    %r15d,%edi
  402d57:	48 89 de             	mov    %rbx,%rsi
  402d5a:	e8 f1 e9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402d5f:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402d64:	44 0f b6 7c 24 41    	movzbl 0x41(%rsp),%r15d
  402d6a:	44 89 e1             	mov    %r12d,%ecx
  402d6d:	48 01 c1             	add    %rax,%rcx
  402d70:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402d74:	44 89 e0             	mov    %r12d,%eax
  402d77:	83 e0 1f             	and    $0x1f,%eax
  402d7a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402d7e:	48 83 c3 20          	add    $0x20,%rbx
  402d82:	4c 89 b4 24 d0 38 00 	mov    %r14,0x38d0(%rsp)
  402d89:	00 
  402d8a:	48 c7 84 24 d8 38 00 	movq   $0x0,0x38d8(%rsp)
  402d91:	00 00 00 00 00 
  402d96:	c5 f8 28 05 c2 93 00 	vmovaps 0x93c2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402d9d:	00 
  402d9e:	c5 f8 11 84 24 e0 38 	vmovups %xmm0,0x38e0(%rsp)
  402da5:	00 00 
  402da7:	48 8d b4 24 d0 38 00 	lea    0x38d0(%rsp),%rsi
  402dae:	00 
  402daf:	48 89 df             	mov    %rbx,%rdi
  402db2:	e8 f9 e3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402db7:	88 44 24 41          	mov    %al,0x41(%rsp)
  402dbb:	4c 89 b4 24 b0 38 00 	mov    %r14,0x38b0(%rsp)
  402dc2:	00 
  402dc3:	48 c7 84 24 b8 38 00 	movq   $0x0,0x38b8(%rsp)
  402dca:	00 00 00 00 00 
  402dcf:	c5 f8 28 05 89 93 00 	vmovaps 0x9389(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402dd6:	00 
  402dd7:	c5 f8 11 84 24 c0 38 	vmovups %xmm0,0x38c0(%rsp)
  402dde:	00 00 
  402de0:	48 8d 94 24 b0 38 00 	lea    0x38b0(%rsp),%rdx
  402de7:	00 
  402de8:	44 89 ff             	mov    %r15d,%edi
  402deb:	48 89 de             	mov    %rbx,%rsi
  402dee:	e8 5d e9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402df3:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402df8:	44 0f b6 7c 24 42    	movzbl 0x42(%rsp),%r15d
  402dfe:	44 89 e1             	mov    %r12d,%ecx
  402e01:	48 01 c1             	add    %rax,%rcx
  402e04:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402e08:	44 89 e0             	mov    %r12d,%eax
  402e0b:	83 e0 1f             	and    $0x1f,%eax
  402e0e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402e12:	48 83 c3 20          	add    $0x20,%rbx
  402e16:	4c 89 b4 24 90 38 00 	mov    %r14,0x3890(%rsp)
  402e1d:	00 
  402e1e:	48 c7 84 24 98 38 00 	movq   $0x0,0x3898(%rsp)
  402e25:	00 00 00 00 00 
  402e2a:	c5 f8 28 05 2e 93 00 	vmovaps 0x932e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402e31:	00 
  402e32:	c5 f8 11 84 24 a0 38 	vmovups %xmm0,0x38a0(%rsp)
  402e39:	00 00 
  402e3b:	48 8d b4 24 90 38 00 	lea    0x3890(%rsp),%rsi
  402e42:	00 
  402e43:	48 89 df             	mov    %rbx,%rdi
  402e46:	e8 65 e3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402e4b:	88 44 24 42          	mov    %al,0x42(%rsp)
  402e4f:	4c 89 b4 24 70 38 00 	mov    %r14,0x3870(%rsp)
  402e56:	00 
  402e57:	48 c7 84 24 78 38 00 	movq   $0x0,0x3878(%rsp)
  402e5e:	00 00 00 00 00 
  402e63:	c5 f8 28 05 f5 92 00 	vmovaps 0x92f5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402e6a:	00 
  402e6b:	c5 f8 11 84 24 80 38 	vmovups %xmm0,0x3880(%rsp)
  402e72:	00 00 
  402e74:	48 8d 94 24 70 38 00 	lea    0x3870(%rsp),%rdx
  402e7b:	00 
  402e7c:	44 89 ff             	mov    %r15d,%edi
  402e7f:	48 89 de             	mov    %rbx,%rsi
  402e82:	e8 c9 e8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402e87:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  402e8c:	44 0f b6 7c 24 43    	movzbl 0x43(%rsp),%r15d
  402e92:	44 89 e1             	mov    %r12d,%ecx
  402e95:	48 01 c1             	add    %rax,%rcx
  402e98:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402e9c:	44 89 e0             	mov    %r12d,%eax
  402e9f:	83 e0 1f             	and    $0x1f,%eax
  402ea2:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402ea6:	48 83 c3 20          	add    $0x20,%rbx
  402eaa:	4c 89 b4 24 50 38 00 	mov    %r14,0x3850(%rsp)
  402eb1:	00 
  402eb2:	48 c7 84 24 58 38 00 	movq   $0x0,0x3858(%rsp)
  402eb9:	00 00 00 00 00 
  402ebe:	c5 f8 28 05 9a 92 00 	vmovaps 0x929a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402ec5:	00 
  402ec6:	c5 f8 11 84 24 60 38 	vmovups %xmm0,0x3860(%rsp)
  402ecd:	00 00 
  402ecf:	48 8d b4 24 50 38 00 	lea    0x3850(%rsp),%rsi
  402ed6:	00 
  402ed7:	48 89 df             	mov    %rbx,%rdi
  402eda:	e8 d1 e2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402edf:	88 44 24 43          	mov    %al,0x43(%rsp)
  402ee3:	4c 89 b4 24 30 38 00 	mov    %r14,0x3830(%rsp)
  402eea:	00 
  402eeb:	48 c7 84 24 38 38 00 	movq   $0x0,0x3838(%rsp)
  402ef2:	00 00 00 00 00 
  402ef7:	c5 f8 28 05 61 92 00 	vmovaps 0x9261(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402efe:	00 
  402eff:	c5 f8 11 84 24 40 38 	vmovups %xmm0,0x3840(%rsp)
  402f06:	00 00 
  402f08:	48 8d 94 24 30 38 00 	lea    0x3830(%rsp),%rdx
  402f0f:	00 
  402f10:	44 89 ff             	mov    %r15d,%edi
  402f13:	48 89 de             	mov    %rbx,%rsi
  402f16:	e8 35 e8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402f1b:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  402f20:	44 0f b6 7c 24 44    	movzbl 0x44(%rsp),%r15d
  402f26:	44 89 e1             	mov    %r12d,%ecx
  402f29:	48 01 c1             	add    %rax,%rcx
  402f2c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402f30:	44 89 e0             	mov    %r12d,%eax
  402f33:	83 e0 1f             	and    $0x1f,%eax
  402f36:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402f3a:	48 83 c3 20          	add    $0x20,%rbx
  402f3e:	4c 89 b4 24 10 38 00 	mov    %r14,0x3810(%rsp)
  402f45:	00 
  402f46:	48 c7 84 24 18 38 00 	movq   $0x0,0x3818(%rsp)
  402f4d:	00 00 00 00 00 
  402f52:	c5 f8 28 05 06 92 00 	vmovaps 0x9206(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402f59:	00 
  402f5a:	c5 f8 11 84 24 20 38 	vmovups %xmm0,0x3820(%rsp)
  402f61:	00 00 
  402f63:	48 8d b4 24 10 38 00 	lea    0x3810(%rsp),%rsi
  402f6a:	00 
  402f6b:	48 89 df             	mov    %rbx,%rdi
  402f6e:	e8 3d e2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  402f73:	88 44 24 44          	mov    %al,0x44(%rsp)
  402f77:	4c 89 b4 24 f0 37 00 	mov    %r14,0x37f0(%rsp)
  402f7e:	00 
  402f7f:	48 c7 84 24 f8 37 00 	movq   $0x0,0x37f8(%rsp)
  402f86:	00 00 00 00 00 
  402f8b:	c5 f8 28 05 cd 91 00 	vmovaps 0x91cd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402f92:	00 
  402f93:	c5 f8 11 84 24 00 38 	vmovups %xmm0,0x3800(%rsp)
  402f9a:	00 00 
  402f9c:	48 8d 94 24 f0 37 00 	lea    0x37f0(%rsp),%rdx
  402fa3:	00 
  402fa4:	44 89 ff             	mov    %r15d,%edi
  402fa7:	48 89 de             	mov    %rbx,%rsi
  402faa:	e8 a1 e7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  402faf:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  402fb4:	44 0f b6 7c 24 45    	movzbl 0x45(%rsp),%r15d
  402fba:	44 89 e1             	mov    %r12d,%ecx
  402fbd:	48 01 c1             	add    %rax,%rcx
  402fc0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  402fc4:	44 89 e0             	mov    %r12d,%eax
  402fc7:	83 e0 1f             	and    $0x1f,%eax
  402fca:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  402fce:	48 83 c3 20          	add    $0x20,%rbx
  402fd2:	4c 89 b4 24 d0 37 00 	mov    %r14,0x37d0(%rsp)
  402fd9:	00 
  402fda:	48 c7 84 24 d8 37 00 	movq   $0x0,0x37d8(%rsp)
  402fe1:	00 00 00 00 00 
  402fe6:	c5 f8 28 05 72 91 00 	vmovaps 0x9172(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  402fed:	00 
  402fee:	c5 f8 11 84 24 e0 37 	vmovups %xmm0,0x37e0(%rsp)
  402ff5:	00 00 
  402ff7:	48 8d b4 24 d0 37 00 	lea    0x37d0(%rsp),%rsi
  402ffe:	00 
  402fff:	48 89 df             	mov    %rbx,%rdi
  403002:	e8 a9 e1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403007:	88 44 24 45          	mov    %al,0x45(%rsp)
  40300b:	4c 89 b4 24 b0 37 00 	mov    %r14,0x37b0(%rsp)
  403012:	00 
  403013:	48 c7 84 24 b8 37 00 	movq   $0x0,0x37b8(%rsp)
  40301a:	00 00 00 00 00 
  40301f:	c5 f8 28 05 39 91 00 	vmovaps 0x9139(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403026:	00 
  403027:	c5 f8 11 84 24 c0 37 	vmovups %xmm0,0x37c0(%rsp)
  40302e:	00 00 
  403030:	48 8d 94 24 b0 37 00 	lea    0x37b0(%rsp),%rdx
  403037:	00 
  403038:	44 89 ff             	mov    %r15d,%edi
  40303b:	48 89 de             	mov    %rbx,%rsi
  40303e:	e8 0d e7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403043:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  403048:	44 0f b6 7c 24 46    	movzbl 0x46(%rsp),%r15d
  40304e:	44 89 e1             	mov    %r12d,%ecx
  403051:	48 01 c1             	add    %rax,%rcx
  403054:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403058:	44 89 e0             	mov    %r12d,%eax
  40305b:	83 e0 1f             	and    $0x1f,%eax
  40305e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403062:	48 83 c3 20          	add    $0x20,%rbx
  403066:	4c 89 b4 24 90 37 00 	mov    %r14,0x3790(%rsp)
  40306d:	00 
  40306e:	48 c7 84 24 98 37 00 	movq   $0x0,0x3798(%rsp)
  403075:	00 00 00 00 00 
  40307a:	c5 f8 28 05 de 90 00 	vmovaps 0x90de(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403081:	00 
  403082:	c5 f8 11 84 24 a0 37 	vmovups %xmm0,0x37a0(%rsp)
  403089:	00 00 
  40308b:	48 8d b4 24 90 37 00 	lea    0x3790(%rsp),%rsi
  403092:	00 
  403093:	48 89 df             	mov    %rbx,%rdi
  403096:	e8 15 e1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40309b:	88 44 24 46          	mov    %al,0x46(%rsp)
  40309f:	4c 89 b4 24 70 37 00 	mov    %r14,0x3770(%rsp)
  4030a6:	00 
  4030a7:	48 c7 84 24 78 37 00 	movq   $0x0,0x3778(%rsp)
  4030ae:	00 00 00 00 00 
  4030b3:	c5 f8 28 05 a5 90 00 	vmovaps 0x90a5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4030ba:	00 
  4030bb:	c5 f8 11 84 24 80 37 	vmovups %xmm0,0x3780(%rsp)
  4030c2:	00 00 
  4030c4:	48 8d 94 24 70 37 00 	lea    0x3770(%rsp),%rdx
  4030cb:	00 
  4030cc:	44 89 ff             	mov    %r15d,%edi
  4030cf:	48 89 de             	mov    %rbx,%rsi
  4030d2:	e8 79 e6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4030d7:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  4030dc:	44 0f b6 7c 24 47    	movzbl 0x47(%rsp),%r15d
  4030e2:	44 89 e1             	mov    %r12d,%ecx
  4030e5:	48 01 c1             	add    %rax,%rcx
  4030e8:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4030ec:	44 89 e0             	mov    %r12d,%eax
  4030ef:	83 e0 1f             	and    $0x1f,%eax
  4030f2:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4030f6:	48 83 c3 20          	add    $0x20,%rbx
  4030fa:	4c 89 b4 24 50 37 00 	mov    %r14,0x3750(%rsp)
  403101:	00 
  403102:	48 c7 84 24 58 37 00 	movq   $0x0,0x3758(%rsp)
  403109:	00 00 00 00 00 
  40310e:	c5 f8 28 05 4a 90 00 	vmovaps 0x904a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403115:	00 
  403116:	c5 f8 11 84 24 60 37 	vmovups %xmm0,0x3760(%rsp)
  40311d:	00 00 
  40311f:	48 8d b4 24 50 37 00 	lea    0x3750(%rsp),%rsi
  403126:	00 
  403127:	48 89 df             	mov    %rbx,%rdi
  40312a:	e8 81 e0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40312f:	88 44 24 47          	mov    %al,0x47(%rsp)
  403133:	4c 89 b4 24 30 37 00 	mov    %r14,0x3730(%rsp)
  40313a:	00 
  40313b:	48 c7 84 24 38 37 00 	movq   $0x0,0x3738(%rsp)
  403142:	00 00 00 00 00 
  403147:	c5 f8 28 05 11 90 00 	vmovaps 0x9011(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40314e:	00 
  40314f:	c5 f8 11 84 24 40 37 	vmovups %xmm0,0x3740(%rsp)
  403156:	00 00 
  403158:	48 8d 94 24 30 37 00 	lea    0x3730(%rsp),%rdx
  40315f:	00 
  403160:	44 89 ff             	mov    %r15d,%edi
  403163:	48 89 de             	mov    %rbx,%rsi
  403166:	e8 e5 e5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40316b:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  403170:	44 0f b6 7c 24 48    	movzbl 0x48(%rsp),%r15d
  403176:	44 89 e1             	mov    %r12d,%ecx
  403179:	48 01 c1             	add    %rax,%rcx
  40317c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403180:	44 89 e0             	mov    %r12d,%eax
  403183:	83 e0 1f             	and    $0x1f,%eax
  403186:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40318a:	48 83 c3 20          	add    $0x20,%rbx
  40318e:	4c 89 b4 24 10 37 00 	mov    %r14,0x3710(%rsp)
  403195:	00 
  403196:	48 c7 84 24 18 37 00 	movq   $0x0,0x3718(%rsp)
  40319d:	00 00 00 00 00 
  4031a2:	c5 f8 28 05 b6 8f 00 	vmovaps 0x8fb6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4031a9:	00 
  4031aa:	c5 f8 11 84 24 20 37 	vmovups %xmm0,0x3720(%rsp)
  4031b1:	00 00 
  4031b3:	48 8d b4 24 10 37 00 	lea    0x3710(%rsp),%rsi
  4031ba:	00 
  4031bb:	48 89 df             	mov    %rbx,%rdi
  4031be:	e8 ed df ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4031c3:	88 44 24 48          	mov    %al,0x48(%rsp)
  4031c7:	4c 89 b4 24 f0 36 00 	mov    %r14,0x36f0(%rsp)
  4031ce:	00 
  4031cf:	48 c7 84 24 f8 36 00 	movq   $0x0,0x36f8(%rsp)
  4031d6:	00 00 00 00 00 
  4031db:	c5 f8 28 05 7d 8f 00 	vmovaps 0x8f7d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4031e2:	00 
  4031e3:	c5 f8 11 84 24 00 37 	vmovups %xmm0,0x3700(%rsp)
  4031ea:	00 00 
  4031ec:	48 8d 94 24 f0 36 00 	lea    0x36f0(%rsp),%rdx
  4031f3:	00 
  4031f4:	44 89 ff             	mov    %r15d,%edi
  4031f7:	48 89 de             	mov    %rbx,%rsi
  4031fa:	e8 51 e5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4031ff:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  403204:	44 0f b6 7c 24 49    	movzbl 0x49(%rsp),%r15d
  40320a:	44 89 e1             	mov    %r12d,%ecx
  40320d:	48 01 c1             	add    %rax,%rcx
  403210:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403214:	44 89 e0             	mov    %r12d,%eax
  403217:	83 e0 1f             	and    $0x1f,%eax
  40321a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40321e:	48 83 c3 20          	add    $0x20,%rbx
  403222:	4c 89 b4 24 d0 36 00 	mov    %r14,0x36d0(%rsp)
  403229:	00 
  40322a:	48 c7 84 24 d8 36 00 	movq   $0x0,0x36d8(%rsp)
  403231:	00 00 00 00 00 
  403236:	c5 f8 28 05 22 8f 00 	vmovaps 0x8f22(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40323d:	00 
  40323e:	c5 f8 11 84 24 e0 36 	vmovups %xmm0,0x36e0(%rsp)
  403245:	00 00 
  403247:	48 8d b4 24 d0 36 00 	lea    0x36d0(%rsp),%rsi
  40324e:	00 
  40324f:	48 89 df             	mov    %rbx,%rdi
  403252:	e8 59 df ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403257:	88 44 24 49          	mov    %al,0x49(%rsp)
  40325b:	4c 89 b4 24 b0 36 00 	mov    %r14,0x36b0(%rsp)
  403262:	00 
  403263:	48 c7 84 24 b8 36 00 	movq   $0x0,0x36b8(%rsp)
  40326a:	00 00 00 00 00 
  40326f:	c5 f8 28 05 e9 8e 00 	vmovaps 0x8ee9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403276:	00 
  403277:	c5 f8 11 84 24 c0 36 	vmovups %xmm0,0x36c0(%rsp)
  40327e:	00 00 
  403280:	48 8d 94 24 b0 36 00 	lea    0x36b0(%rsp),%rdx
  403287:	00 
  403288:	44 89 ff             	mov    %r15d,%edi
  40328b:	48 89 de             	mov    %rbx,%rsi
  40328e:	e8 bd e4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403293:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  403298:	44 0f b6 7c 24 4a    	movzbl 0x4a(%rsp),%r15d
  40329e:	44 89 e1             	mov    %r12d,%ecx
  4032a1:	48 01 c1             	add    %rax,%rcx
  4032a4:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4032a8:	44 89 e0             	mov    %r12d,%eax
  4032ab:	83 e0 1f             	and    $0x1f,%eax
  4032ae:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4032b2:	48 83 c3 20          	add    $0x20,%rbx
  4032b6:	4c 89 b4 24 90 36 00 	mov    %r14,0x3690(%rsp)
  4032bd:	00 
  4032be:	48 c7 84 24 98 36 00 	movq   $0x0,0x3698(%rsp)
  4032c5:	00 00 00 00 00 
  4032ca:	c5 f8 28 05 8e 8e 00 	vmovaps 0x8e8e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4032d1:	00 
  4032d2:	c5 f8 11 84 24 a0 36 	vmovups %xmm0,0x36a0(%rsp)
  4032d9:	00 00 
  4032db:	48 8d b4 24 90 36 00 	lea    0x3690(%rsp),%rsi
  4032e2:	00 
  4032e3:	48 89 df             	mov    %rbx,%rdi
  4032e6:	e8 c5 de ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4032eb:	88 44 24 4a          	mov    %al,0x4a(%rsp)
  4032ef:	4c 89 b4 24 70 36 00 	mov    %r14,0x3670(%rsp)
  4032f6:	00 
  4032f7:	48 c7 84 24 78 36 00 	movq   $0x0,0x3678(%rsp)
  4032fe:	00 00 00 00 00 
  403303:	c5 f8 28 05 55 8e 00 	vmovaps 0x8e55(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40330a:	00 
  40330b:	c5 f8 11 84 24 80 36 	vmovups %xmm0,0x3680(%rsp)
  403312:	00 00 
  403314:	48 8d 94 24 70 36 00 	lea    0x3670(%rsp),%rdx
  40331b:	00 
  40331c:	44 89 ff             	mov    %r15d,%edi
  40331f:	48 89 de             	mov    %rbx,%rsi
  403322:	e8 29 e4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403327:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  40332c:	44 0f b6 7c 24 4b    	movzbl 0x4b(%rsp),%r15d
  403332:	44 89 e1             	mov    %r12d,%ecx
  403335:	48 01 c1             	add    %rax,%rcx
  403338:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40333c:	44 89 e0             	mov    %r12d,%eax
  40333f:	83 e0 1f             	and    $0x1f,%eax
  403342:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403346:	48 83 c3 20          	add    $0x20,%rbx
  40334a:	4c 89 b4 24 50 36 00 	mov    %r14,0x3650(%rsp)
  403351:	00 
  403352:	48 c7 84 24 58 36 00 	movq   $0x0,0x3658(%rsp)
  403359:	00 00 00 00 00 
  40335e:	c5 f8 28 05 fa 8d 00 	vmovaps 0x8dfa(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403365:	00 
  403366:	c5 f8 11 84 24 60 36 	vmovups %xmm0,0x3660(%rsp)
  40336d:	00 00 
  40336f:	48 8d b4 24 50 36 00 	lea    0x3650(%rsp),%rsi
  403376:	00 
  403377:	48 89 df             	mov    %rbx,%rdi
  40337a:	e8 31 de ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40337f:	88 44 24 4b          	mov    %al,0x4b(%rsp)
  403383:	4c 89 b4 24 30 36 00 	mov    %r14,0x3630(%rsp)
  40338a:	00 
  40338b:	48 c7 84 24 38 36 00 	movq   $0x0,0x3638(%rsp)
  403392:	00 00 00 00 00 
  403397:	c5 f8 28 05 c1 8d 00 	vmovaps 0x8dc1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40339e:	00 
  40339f:	c5 f8 11 84 24 40 36 	vmovups %xmm0,0x3640(%rsp)
  4033a6:	00 00 
  4033a8:	48 8d 94 24 30 36 00 	lea    0x3630(%rsp),%rdx
  4033af:	00 
  4033b0:	44 89 ff             	mov    %r15d,%edi
  4033b3:	48 89 de             	mov    %rbx,%rsi
  4033b6:	e8 95 e3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4033bb:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  4033c0:	44 0f b6 7c 24 4c    	movzbl 0x4c(%rsp),%r15d
  4033c6:	44 89 e1             	mov    %r12d,%ecx
  4033c9:	48 01 c1             	add    %rax,%rcx
  4033cc:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4033d0:	44 89 e0             	mov    %r12d,%eax
  4033d3:	83 e0 1f             	and    $0x1f,%eax
  4033d6:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4033da:	48 83 c3 20          	add    $0x20,%rbx
  4033de:	4c 89 b4 24 10 36 00 	mov    %r14,0x3610(%rsp)
  4033e5:	00 
  4033e6:	48 c7 84 24 18 36 00 	movq   $0x0,0x3618(%rsp)
  4033ed:	00 00 00 00 00 
  4033f2:	c5 f8 28 05 66 8d 00 	vmovaps 0x8d66(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4033f9:	00 
  4033fa:	c5 f8 11 84 24 20 36 	vmovups %xmm0,0x3620(%rsp)
  403401:	00 00 
  403403:	48 8d b4 24 10 36 00 	lea    0x3610(%rsp),%rsi
  40340a:	00 
  40340b:	48 89 df             	mov    %rbx,%rdi
  40340e:	e8 9d dd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403413:	88 44 24 4c          	mov    %al,0x4c(%rsp)
  403417:	4c 89 b4 24 f0 35 00 	mov    %r14,0x35f0(%rsp)
  40341e:	00 
  40341f:	48 c7 84 24 f8 35 00 	movq   $0x0,0x35f8(%rsp)
  403426:	00 00 00 00 00 
  40342b:	c5 f8 28 05 2d 8d 00 	vmovaps 0x8d2d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403432:	00 
  403433:	c5 f8 11 84 24 00 36 	vmovups %xmm0,0x3600(%rsp)
  40343a:	00 00 
  40343c:	48 8d 94 24 f0 35 00 	lea    0x35f0(%rsp),%rdx
  403443:	00 
  403444:	44 89 ff             	mov    %r15d,%edi
  403447:	48 89 de             	mov    %rbx,%rsi
  40344a:	e8 01 e3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40344f:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  403454:	44 0f b6 7c 24 4d    	movzbl 0x4d(%rsp),%r15d
  40345a:	44 89 e1             	mov    %r12d,%ecx
  40345d:	48 01 c1             	add    %rax,%rcx
  403460:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403464:	44 89 e0             	mov    %r12d,%eax
  403467:	83 e0 1f             	and    $0x1f,%eax
  40346a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40346e:	48 83 c3 20          	add    $0x20,%rbx
  403472:	4c 89 b4 24 d0 35 00 	mov    %r14,0x35d0(%rsp)
  403479:	00 
  40347a:	48 c7 84 24 d8 35 00 	movq   $0x0,0x35d8(%rsp)
  403481:	00 00 00 00 00 
  403486:	c5 f8 28 05 d2 8c 00 	vmovaps 0x8cd2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40348d:	00 
  40348e:	c5 f8 11 84 24 e0 35 	vmovups %xmm0,0x35e0(%rsp)
  403495:	00 00 
  403497:	48 8d b4 24 d0 35 00 	lea    0x35d0(%rsp),%rsi
  40349e:	00 
  40349f:	48 89 df             	mov    %rbx,%rdi
  4034a2:	e8 09 dd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4034a7:	88 44 24 4d          	mov    %al,0x4d(%rsp)
  4034ab:	4c 89 b4 24 b0 35 00 	mov    %r14,0x35b0(%rsp)
  4034b2:	00 
  4034b3:	48 c7 84 24 b8 35 00 	movq   $0x0,0x35b8(%rsp)
  4034ba:	00 00 00 00 00 
  4034bf:	c5 f8 28 05 99 8c 00 	vmovaps 0x8c99(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4034c6:	00 
  4034c7:	c5 f8 11 84 24 c0 35 	vmovups %xmm0,0x35c0(%rsp)
  4034ce:	00 00 
  4034d0:	48 8d 94 24 b0 35 00 	lea    0x35b0(%rsp),%rdx
  4034d7:	00 
  4034d8:	44 89 ff             	mov    %r15d,%edi
  4034db:	48 89 de             	mov    %rbx,%rsi
  4034de:	e8 6d e2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4034e3:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  4034e8:	44 0f b6 7c 24 4e    	movzbl 0x4e(%rsp),%r15d
  4034ee:	44 89 e1             	mov    %r12d,%ecx
  4034f1:	48 01 c1             	add    %rax,%rcx
  4034f4:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4034f8:	44 89 e0             	mov    %r12d,%eax
  4034fb:	83 e0 1f             	and    $0x1f,%eax
  4034fe:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403502:	48 83 c3 20          	add    $0x20,%rbx
  403506:	4c 89 b4 24 90 35 00 	mov    %r14,0x3590(%rsp)
  40350d:	00 
  40350e:	48 c7 84 24 98 35 00 	movq   $0x0,0x3598(%rsp)
  403515:	00 00 00 00 00 
  40351a:	c5 f8 28 05 3e 8c 00 	vmovaps 0x8c3e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403521:	00 
  403522:	c5 f8 11 84 24 a0 35 	vmovups %xmm0,0x35a0(%rsp)
  403529:	00 00 
  40352b:	48 8d b4 24 90 35 00 	lea    0x3590(%rsp),%rsi
  403532:	00 
  403533:	48 89 df             	mov    %rbx,%rdi
  403536:	e8 75 dc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40353b:	88 44 24 4e          	mov    %al,0x4e(%rsp)
  40353f:	4c 89 b4 24 70 35 00 	mov    %r14,0x3570(%rsp)
  403546:	00 
  403547:	48 c7 84 24 78 35 00 	movq   $0x0,0x3578(%rsp)
  40354e:	00 00 00 00 00 
  403553:	c5 f8 28 05 05 8c 00 	vmovaps 0x8c05(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40355a:	00 
  40355b:	c5 f8 11 84 24 80 35 	vmovups %xmm0,0x3580(%rsp)
  403562:	00 00 
  403564:	48 8d 94 24 70 35 00 	lea    0x3570(%rsp),%rdx
  40356b:	00 
  40356c:	44 89 ff             	mov    %r15d,%edi
  40356f:	48 89 de             	mov    %rbx,%rsi
  403572:	e8 d9 e1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403577:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40357c:	44 0f b6 7c 24 4f    	movzbl 0x4f(%rsp),%r15d
  403582:	44 89 e1             	mov    %r12d,%ecx
  403585:	48 01 c1             	add    %rax,%rcx
  403588:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40358c:	44 89 e0             	mov    %r12d,%eax
  40358f:	83 e0 1f             	and    $0x1f,%eax
  403592:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403596:	48 83 c3 20          	add    $0x20,%rbx
  40359a:	4c 89 b4 24 50 35 00 	mov    %r14,0x3550(%rsp)
  4035a1:	00 
  4035a2:	48 c7 84 24 58 35 00 	movq   $0x0,0x3558(%rsp)
  4035a9:	00 00 00 00 00 
  4035ae:	c5 f8 28 05 aa 8b 00 	vmovaps 0x8baa(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4035b5:	00 
  4035b6:	c5 f8 11 84 24 60 35 	vmovups %xmm0,0x3560(%rsp)
  4035bd:	00 00 
  4035bf:	48 8d b4 24 50 35 00 	lea    0x3550(%rsp),%rsi
  4035c6:	00 
  4035c7:	48 89 df             	mov    %rbx,%rdi
  4035ca:	e8 e1 db ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4035cf:	88 44 24 4f          	mov    %al,0x4f(%rsp)
  4035d3:	4c 89 b4 24 30 35 00 	mov    %r14,0x3530(%rsp)
  4035da:	00 
  4035db:	48 c7 84 24 38 35 00 	movq   $0x0,0x3538(%rsp)
  4035e2:	00 00 00 00 00 
  4035e7:	c5 f8 28 05 71 8b 00 	vmovaps 0x8b71(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4035ee:	00 
  4035ef:	c5 f8 11 84 24 40 35 	vmovups %xmm0,0x3540(%rsp)
  4035f6:	00 00 
  4035f8:	48 8d 94 24 30 35 00 	lea    0x3530(%rsp),%rdx
  4035ff:	00 
  403600:	44 89 ff             	mov    %r15d,%edi
  403603:	48 89 de             	mov    %rbx,%rsi
  403606:	e8 45 e1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40360b:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  403610:	44 0f b6 7c 24 50    	movzbl 0x50(%rsp),%r15d
  403616:	44 89 e1             	mov    %r12d,%ecx
  403619:	48 01 c1             	add    %rax,%rcx
  40361c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403620:	44 89 e0             	mov    %r12d,%eax
  403623:	83 e0 1f             	and    $0x1f,%eax
  403626:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40362a:	48 83 c3 20          	add    $0x20,%rbx
  40362e:	4c 89 b4 24 10 35 00 	mov    %r14,0x3510(%rsp)
  403635:	00 
  403636:	48 c7 84 24 18 35 00 	movq   $0x0,0x3518(%rsp)
  40363d:	00 00 00 00 00 
  403642:	c5 f8 28 05 16 8b 00 	vmovaps 0x8b16(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403649:	00 
  40364a:	c5 f8 11 84 24 20 35 	vmovups %xmm0,0x3520(%rsp)
  403651:	00 00 
  403653:	48 8d b4 24 10 35 00 	lea    0x3510(%rsp),%rsi
  40365a:	00 
  40365b:	48 89 df             	mov    %rbx,%rdi
  40365e:	e8 4d db ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403663:	88 44 24 50          	mov    %al,0x50(%rsp)
  403667:	4c 89 b4 24 f0 34 00 	mov    %r14,0x34f0(%rsp)
  40366e:	00 
  40366f:	48 c7 84 24 f8 34 00 	movq   $0x0,0x34f8(%rsp)
  403676:	00 00 00 00 00 
  40367b:	c5 f8 28 05 dd 8a 00 	vmovaps 0x8add(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403682:	00 
  403683:	c5 f8 11 84 24 00 35 	vmovups %xmm0,0x3500(%rsp)
  40368a:	00 00 
  40368c:	48 8d 94 24 f0 34 00 	lea    0x34f0(%rsp),%rdx
  403693:	00 
  403694:	44 89 ff             	mov    %r15d,%edi
  403697:	48 89 de             	mov    %rbx,%rsi
  40369a:	e8 b1 e0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40369f:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  4036a4:	44 0f b6 7c 24 51    	movzbl 0x51(%rsp),%r15d
  4036aa:	44 89 e1             	mov    %r12d,%ecx
  4036ad:	48 01 c1             	add    %rax,%rcx
  4036b0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4036b4:	44 89 e0             	mov    %r12d,%eax
  4036b7:	83 e0 1f             	and    $0x1f,%eax
  4036ba:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4036be:	48 83 c3 20          	add    $0x20,%rbx
  4036c2:	4c 89 b4 24 d0 34 00 	mov    %r14,0x34d0(%rsp)
  4036c9:	00 
  4036ca:	48 c7 84 24 d8 34 00 	movq   $0x0,0x34d8(%rsp)
  4036d1:	00 00 00 00 00 
  4036d6:	c5 f8 28 05 82 8a 00 	vmovaps 0x8a82(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4036dd:	00 
  4036de:	c5 f8 11 84 24 e0 34 	vmovups %xmm0,0x34e0(%rsp)
  4036e5:	00 00 
  4036e7:	48 8d b4 24 d0 34 00 	lea    0x34d0(%rsp),%rsi
  4036ee:	00 
  4036ef:	48 89 df             	mov    %rbx,%rdi
  4036f2:	e8 b9 da ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4036f7:	88 44 24 51          	mov    %al,0x51(%rsp)
  4036fb:	4c 89 b4 24 b0 34 00 	mov    %r14,0x34b0(%rsp)
  403702:	00 
  403703:	48 c7 84 24 b8 34 00 	movq   $0x0,0x34b8(%rsp)
  40370a:	00 00 00 00 00 
  40370f:	c5 f8 28 05 49 8a 00 	vmovaps 0x8a49(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403716:	00 
  403717:	c5 f8 11 84 24 c0 34 	vmovups %xmm0,0x34c0(%rsp)
  40371e:	00 00 
  403720:	48 8d 94 24 b0 34 00 	lea    0x34b0(%rsp),%rdx
  403727:	00 
  403728:	44 89 ff             	mov    %r15d,%edi
  40372b:	48 89 de             	mov    %rbx,%rsi
  40372e:	e8 1d e0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403733:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  403738:	44 0f b6 7c 24 52    	movzbl 0x52(%rsp),%r15d
  40373e:	44 89 e1             	mov    %r12d,%ecx
  403741:	48 01 c1             	add    %rax,%rcx
  403744:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403748:	44 89 e0             	mov    %r12d,%eax
  40374b:	83 e0 1f             	and    $0x1f,%eax
  40374e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403752:	48 83 c3 20          	add    $0x20,%rbx
  403756:	4c 89 b4 24 90 34 00 	mov    %r14,0x3490(%rsp)
  40375d:	00 
  40375e:	48 c7 84 24 98 34 00 	movq   $0x0,0x3498(%rsp)
  403765:	00 00 00 00 00 
  40376a:	c5 f8 28 05 ee 89 00 	vmovaps 0x89ee(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403771:	00 
  403772:	c5 f8 11 84 24 a0 34 	vmovups %xmm0,0x34a0(%rsp)
  403779:	00 00 
  40377b:	48 8d b4 24 90 34 00 	lea    0x3490(%rsp),%rsi
  403782:	00 
  403783:	48 89 df             	mov    %rbx,%rdi
  403786:	e8 25 da ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40378b:	88 44 24 52          	mov    %al,0x52(%rsp)
  40378f:	4c 89 b4 24 70 34 00 	mov    %r14,0x3470(%rsp)
  403796:	00 
  403797:	48 c7 84 24 78 34 00 	movq   $0x0,0x3478(%rsp)
  40379e:	00 00 00 00 00 
  4037a3:	c5 f8 28 05 b5 89 00 	vmovaps 0x89b5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4037aa:	00 
  4037ab:	c5 f8 11 84 24 80 34 	vmovups %xmm0,0x3480(%rsp)
  4037b2:	00 00 
  4037b4:	48 8d 94 24 70 34 00 	lea    0x3470(%rsp),%rdx
  4037bb:	00 
  4037bc:	44 89 ff             	mov    %r15d,%edi
  4037bf:	48 89 de             	mov    %rbx,%rsi
  4037c2:	e8 89 df ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4037c7:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  4037cc:	44 0f b6 7c 24 53    	movzbl 0x53(%rsp),%r15d
  4037d2:	44 89 e1             	mov    %r12d,%ecx
  4037d5:	48 01 c1             	add    %rax,%rcx
  4037d8:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4037dc:	44 89 e0             	mov    %r12d,%eax
  4037df:	83 e0 1f             	and    $0x1f,%eax
  4037e2:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4037e6:	48 83 c3 20          	add    $0x20,%rbx
  4037ea:	4c 89 b4 24 50 34 00 	mov    %r14,0x3450(%rsp)
  4037f1:	00 
  4037f2:	48 c7 84 24 58 34 00 	movq   $0x0,0x3458(%rsp)
  4037f9:	00 00 00 00 00 
  4037fe:	c5 f8 28 05 5a 89 00 	vmovaps 0x895a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403805:	00 
  403806:	c5 f8 11 84 24 60 34 	vmovups %xmm0,0x3460(%rsp)
  40380d:	00 00 
  40380f:	48 8d b4 24 50 34 00 	lea    0x3450(%rsp),%rsi
  403816:	00 
  403817:	48 89 df             	mov    %rbx,%rdi
  40381a:	e8 91 d9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40381f:	88 44 24 53          	mov    %al,0x53(%rsp)
  403823:	4c 89 b4 24 30 34 00 	mov    %r14,0x3430(%rsp)
  40382a:	00 
  40382b:	48 c7 84 24 38 34 00 	movq   $0x0,0x3438(%rsp)
  403832:	00 00 00 00 00 
  403837:	c5 f8 28 05 21 89 00 	vmovaps 0x8921(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40383e:	00 
  40383f:	c5 f8 11 84 24 40 34 	vmovups %xmm0,0x3440(%rsp)
  403846:	00 00 
  403848:	48 8d 94 24 30 34 00 	lea    0x3430(%rsp),%rdx
  40384f:	00 
  403850:	44 89 ff             	mov    %r15d,%edi
  403853:	48 89 de             	mov    %rbx,%rsi
  403856:	e8 f5 de ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40385b:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  403860:	44 0f b6 7c 24 54    	movzbl 0x54(%rsp),%r15d
  403866:	44 89 e1             	mov    %r12d,%ecx
  403869:	48 01 c1             	add    %rax,%rcx
  40386c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403870:	44 89 e0             	mov    %r12d,%eax
  403873:	83 e0 1f             	and    $0x1f,%eax
  403876:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40387a:	48 83 c3 20          	add    $0x20,%rbx
  40387e:	4c 89 b4 24 10 34 00 	mov    %r14,0x3410(%rsp)
  403885:	00 
  403886:	48 c7 84 24 18 34 00 	movq   $0x0,0x3418(%rsp)
  40388d:	00 00 00 00 00 
  403892:	c5 f8 28 05 c6 88 00 	vmovaps 0x88c6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403899:	00 
  40389a:	c5 f8 11 84 24 20 34 	vmovups %xmm0,0x3420(%rsp)
  4038a1:	00 00 
  4038a3:	48 8d b4 24 10 34 00 	lea    0x3410(%rsp),%rsi
  4038aa:	00 
  4038ab:	48 89 df             	mov    %rbx,%rdi
  4038ae:	e8 fd d8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4038b3:	88 44 24 54          	mov    %al,0x54(%rsp)
  4038b7:	4c 89 b4 24 f0 33 00 	mov    %r14,0x33f0(%rsp)
  4038be:	00 
  4038bf:	48 c7 84 24 f8 33 00 	movq   $0x0,0x33f8(%rsp)
  4038c6:	00 00 00 00 00 
  4038cb:	c5 f8 28 05 8d 88 00 	vmovaps 0x888d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4038d2:	00 
  4038d3:	c5 f8 11 84 24 00 34 	vmovups %xmm0,0x3400(%rsp)
  4038da:	00 00 
  4038dc:	48 8d 94 24 f0 33 00 	lea    0x33f0(%rsp),%rdx
  4038e3:	00 
  4038e4:	44 89 ff             	mov    %r15d,%edi
  4038e7:	48 89 de             	mov    %rbx,%rsi
  4038ea:	e8 61 de ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4038ef:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  4038f4:	44 0f b6 7c 24 55    	movzbl 0x55(%rsp),%r15d
  4038fa:	44 89 e1             	mov    %r12d,%ecx
  4038fd:	48 01 c1             	add    %rax,%rcx
  403900:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403904:	44 89 e0             	mov    %r12d,%eax
  403907:	83 e0 1f             	and    $0x1f,%eax
  40390a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40390e:	48 83 c3 20          	add    $0x20,%rbx
  403912:	4c 89 b4 24 d0 33 00 	mov    %r14,0x33d0(%rsp)
  403919:	00 
  40391a:	48 c7 84 24 d8 33 00 	movq   $0x0,0x33d8(%rsp)
  403921:	00 00 00 00 00 
  403926:	c5 f8 28 05 32 88 00 	vmovaps 0x8832(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40392d:	00 
  40392e:	c5 f8 11 84 24 e0 33 	vmovups %xmm0,0x33e0(%rsp)
  403935:	00 00 
  403937:	48 8d b4 24 d0 33 00 	lea    0x33d0(%rsp),%rsi
  40393e:	00 
  40393f:	48 89 df             	mov    %rbx,%rdi
  403942:	e8 69 d8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403947:	88 44 24 55          	mov    %al,0x55(%rsp)
  40394b:	4c 89 b4 24 b0 33 00 	mov    %r14,0x33b0(%rsp)
  403952:	00 
  403953:	48 c7 84 24 b8 33 00 	movq   $0x0,0x33b8(%rsp)
  40395a:	00 00 00 00 00 
  40395f:	c5 f8 28 05 f9 87 00 	vmovaps 0x87f9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403966:	00 
  403967:	c5 f8 11 84 24 c0 33 	vmovups %xmm0,0x33c0(%rsp)
  40396e:	00 00 
  403970:	48 8d 94 24 b0 33 00 	lea    0x33b0(%rsp),%rdx
  403977:	00 
  403978:	44 89 ff             	mov    %r15d,%edi
  40397b:	48 89 de             	mov    %rbx,%rsi
  40397e:	e8 cd dd ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403983:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  403988:	44 0f b6 7c 24 56    	movzbl 0x56(%rsp),%r15d
  40398e:	44 89 e1             	mov    %r12d,%ecx
  403991:	48 01 c1             	add    %rax,%rcx
  403994:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403998:	44 89 e0             	mov    %r12d,%eax
  40399b:	83 e0 1f             	and    $0x1f,%eax
  40399e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4039a2:	48 83 c3 20          	add    $0x20,%rbx
  4039a6:	4c 89 b4 24 90 33 00 	mov    %r14,0x3390(%rsp)
  4039ad:	00 
  4039ae:	48 c7 84 24 98 33 00 	movq   $0x0,0x3398(%rsp)
  4039b5:	00 00 00 00 00 
  4039ba:	c5 f8 28 05 9e 87 00 	vmovaps 0x879e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4039c1:	00 
  4039c2:	c5 f8 11 84 24 a0 33 	vmovups %xmm0,0x33a0(%rsp)
  4039c9:	00 00 
  4039cb:	48 8d b4 24 90 33 00 	lea    0x3390(%rsp),%rsi
  4039d2:	00 
  4039d3:	48 89 df             	mov    %rbx,%rdi
  4039d6:	e8 d5 d7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4039db:	88 44 24 56          	mov    %al,0x56(%rsp)
  4039df:	4c 89 b4 24 70 33 00 	mov    %r14,0x3370(%rsp)
  4039e6:	00 
  4039e7:	48 c7 84 24 78 33 00 	movq   $0x0,0x3378(%rsp)
  4039ee:	00 00 00 00 00 
  4039f3:	c5 f8 28 05 65 87 00 	vmovaps 0x8765(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4039fa:	00 
  4039fb:	c5 f8 11 84 24 80 33 	vmovups %xmm0,0x3380(%rsp)
  403a02:	00 00 
  403a04:	48 8d 94 24 70 33 00 	lea    0x3370(%rsp),%rdx
  403a0b:	00 
  403a0c:	44 89 ff             	mov    %r15d,%edi
  403a0f:	48 89 de             	mov    %rbx,%rsi
  403a12:	e8 39 dd ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403a17:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  403a1c:	44 0f b6 7c 24 57    	movzbl 0x57(%rsp),%r15d
  403a22:	44 89 e1             	mov    %r12d,%ecx
  403a25:	48 01 c1             	add    %rax,%rcx
  403a28:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403a2c:	44 89 e0             	mov    %r12d,%eax
  403a2f:	83 e0 1f             	and    $0x1f,%eax
  403a32:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403a36:	48 83 c3 20          	add    $0x20,%rbx
  403a3a:	4c 89 b4 24 50 33 00 	mov    %r14,0x3350(%rsp)
  403a41:	00 
  403a42:	48 c7 84 24 58 33 00 	movq   $0x0,0x3358(%rsp)
  403a49:	00 00 00 00 00 
  403a4e:	c5 f8 28 05 0a 87 00 	vmovaps 0x870a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403a55:	00 
  403a56:	c5 f8 11 84 24 60 33 	vmovups %xmm0,0x3360(%rsp)
  403a5d:	00 00 
  403a5f:	48 8d b4 24 50 33 00 	lea    0x3350(%rsp),%rsi
  403a66:	00 
  403a67:	48 89 df             	mov    %rbx,%rdi
  403a6a:	e8 41 d7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403a6f:	88 44 24 57          	mov    %al,0x57(%rsp)
  403a73:	4c 89 b4 24 30 33 00 	mov    %r14,0x3330(%rsp)
  403a7a:	00 
  403a7b:	48 c7 84 24 38 33 00 	movq   $0x0,0x3338(%rsp)
  403a82:	00 00 00 00 00 
  403a87:	c5 f8 28 05 d1 86 00 	vmovaps 0x86d1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403a8e:	00 
  403a8f:	c5 f8 11 84 24 40 33 	vmovups %xmm0,0x3340(%rsp)
  403a96:	00 00 
  403a98:	48 8d 94 24 30 33 00 	lea    0x3330(%rsp),%rdx
  403a9f:	00 
  403aa0:	44 89 ff             	mov    %r15d,%edi
  403aa3:	48 89 de             	mov    %rbx,%rsi
  403aa6:	e8 a5 dc ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403aab:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  403ab0:	44 0f b6 7c 24 58    	movzbl 0x58(%rsp),%r15d
  403ab6:	44 89 e1             	mov    %r12d,%ecx
  403ab9:	48 01 c1             	add    %rax,%rcx
  403abc:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403ac0:	44 89 e0             	mov    %r12d,%eax
  403ac3:	83 e0 1f             	and    $0x1f,%eax
  403ac6:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403aca:	48 83 c3 20          	add    $0x20,%rbx
  403ace:	4c 89 b4 24 10 33 00 	mov    %r14,0x3310(%rsp)
  403ad5:	00 
  403ad6:	48 c7 84 24 18 33 00 	movq   $0x0,0x3318(%rsp)
  403add:	00 00 00 00 00 
  403ae2:	c5 f8 28 05 76 86 00 	vmovaps 0x8676(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403ae9:	00 
  403aea:	c5 f8 11 84 24 20 33 	vmovups %xmm0,0x3320(%rsp)
  403af1:	00 00 
  403af3:	48 8d b4 24 10 33 00 	lea    0x3310(%rsp),%rsi
  403afa:	00 
  403afb:	48 89 df             	mov    %rbx,%rdi
  403afe:	e8 ad d6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403b03:	88 44 24 58          	mov    %al,0x58(%rsp)
  403b07:	4c 89 b4 24 f0 32 00 	mov    %r14,0x32f0(%rsp)
  403b0e:	00 
  403b0f:	48 c7 84 24 f8 32 00 	movq   $0x0,0x32f8(%rsp)
  403b16:	00 00 00 00 00 
  403b1b:	c5 f8 28 05 3d 86 00 	vmovaps 0x863d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403b22:	00 
  403b23:	c5 f8 11 84 24 00 33 	vmovups %xmm0,0x3300(%rsp)
  403b2a:	00 00 
  403b2c:	48 8d 94 24 f0 32 00 	lea    0x32f0(%rsp),%rdx
  403b33:	00 
  403b34:	44 89 ff             	mov    %r15d,%edi
  403b37:	48 89 de             	mov    %rbx,%rsi
  403b3a:	e8 11 dc ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403b3f:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  403b44:	44 0f b6 7c 24 59    	movzbl 0x59(%rsp),%r15d
  403b4a:	44 89 e1             	mov    %r12d,%ecx
  403b4d:	48 01 c1             	add    %rax,%rcx
  403b50:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403b54:	44 89 e0             	mov    %r12d,%eax
  403b57:	83 e0 1f             	and    $0x1f,%eax
  403b5a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403b5e:	48 83 c3 20          	add    $0x20,%rbx
  403b62:	4c 89 b4 24 d0 32 00 	mov    %r14,0x32d0(%rsp)
  403b69:	00 
  403b6a:	48 c7 84 24 d8 32 00 	movq   $0x0,0x32d8(%rsp)
  403b71:	00 00 00 00 00 
  403b76:	c5 f8 28 05 e2 85 00 	vmovaps 0x85e2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403b7d:	00 
  403b7e:	c5 f8 11 84 24 e0 32 	vmovups %xmm0,0x32e0(%rsp)
  403b85:	00 00 
  403b87:	48 8d b4 24 d0 32 00 	lea    0x32d0(%rsp),%rsi
  403b8e:	00 
  403b8f:	48 89 df             	mov    %rbx,%rdi
  403b92:	e8 19 d6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403b97:	88 44 24 59          	mov    %al,0x59(%rsp)
  403b9b:	4c 89 b4 24 b0 32 00 	mov    %r14,0x32b0(%rsp)
  403ba2:	00 
  403ba3:	48 c7 84 24 b8 32 00 	movq   $0x0,0x32b8(%rsp)
  403baa:	00 00 00 00 00 
  403baf:	c5 f8 28 05 a9 85 00 	vmovaps 0x85a9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403bb6:	00 
  403bb7:	c5 f8 11 84 24 c0 32 	vmovups %xmm0,0x32c0(%rsp)
  403bbe:	00 00 
  403bc0:	48 8d 94 24 b0 32 00 	lea    0x32b0(%rsp),%rdx
  403bc7:	00 
  403bc8:	44 89 ff             	mov    %r15d,%edi
  403bcb:	48 89 de             	mov    %rbx,%rsi
  403bce:	e8 7d db ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403bd3:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  403bd8:	44 0f b6 7c 24 5a    	movzbl 0x5a(%rsp),%r15d
  403bde:	44 89 e1             	mov    %r12d,%ecx
  403be1:	48 01 c1             	add    %rax,%rcx
  403be4:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403be8:	44 89 e0             	mov    %r12d,%eax
  403beb:	83 e0 1f             	and    $0x1f,%eax
  403bee:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403bf2:	48 83 c3 20          	add    $0x20,%rbx
  403bf6:	4c 89 b4 24 90 32 00 	mov    %r14,0x3290(%rsp)
  403bfd:	00 
  403bfe:	48 c7 84 24 98 32 00 	movq   $0x0,0x3298(%rsp)
  403c05:	00 00 00 00 00 
  403c0a:	c5 f8 28 05 4e 85 00 	vmovaps 0x854e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403c11:	00 
  403c12:	c5 f8 11 84 24 a0 32 	vmovups %xmm0,0x32a0(%rsp)
  403c19:	00 00 
  403c1b:	48 8d b4 24 90 32 00 	lea    0x3290(%rsp),%rsi
  403c22:	00 
  403c23:	48 89 df             	mov    %rbx,%rdi
  403c26:	e8 85 d5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403c2b:	88 44 24 5a          	mov    %al,0x5a(%rsp)
  403c2f:	4c 89 b4 24 70 32 00 	mov    %r14,0x3270(%rsp)
  403c36:	00 
  403c37:	48 c7 84 24 78 32 00 	movq   $0x0,0x3278(%rsp)
  403c3e:	00 00 00 00 00 
  403c43:	c5 f8 28 05 15 85 00 	vmovaps 0x8515(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403c4a:	00 
  403c4b:	c5 f8 11 84 24 80 32 	vmovups %xmm0,0x3280(%rsp)
  403c52:	00 00 
  403c54:	48 8d 94 24 70 32 00 	lea    0x3270(%rsp),%rdx
  403c5b:	00 
  403c5c:	44 89 ff             	mov    %r15d,%edi
  403c5f:	48 89 de             	mov    %rbx,%rsi
  403c62:	e8 e9 da ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403c67:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  403c6c:	44 0f b6 7c 24 5b    	movzbl 0x5b(%rsp),%r15d
  403c72:	44 89 e1             	mov    %r12d,%ecx
  403c75:	48 01 c1             	add    %rax,%rcx
  403c78:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403c7c:	44 89 e0             	mov    %r12d,%eax
  403c7f:	83 e0 1f             	and    $0x1f,%eax
  403c82:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403c86:	48 83 c3 20          	add    $0x20,%rbx
  403c8a:	4c 89 b4 24 50 32 00 	mov    %r14,0x3250(%rsp)
  403c91:	00 
  403c92:	48 c7 84 24 58 32 00 	movq   $0x0,0x3258(%rsp)
  403c99:	00 00 00 00 00 
  403c9e:	c5 f8 28 05 ba 84 00 	vmovaps 0x84ba(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403ca5:	00 
  403ca6:	c5 f8 11 84 24 60 32 	vmovups %xmm0,0x3260(%rsp)
  403cad:	00 00 
  403caf:	48 8d b4 24 50 32 00 	lea    0x3250(%rsp),%rsi
  403cb6:	00 
  403cb7:	48 89 df             	mov    %rbx,%rdi
  403cba:	e8 f1 d4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403cbf:	88 44 24 5b          	mov    %al,0x5b(%rsp)
  403cc3:	4c 89 b4 24 30 32 00 	mov    %r14,0x3230(%rsp)
  403cca:	00 
  403ccb:	48 c7 84 24 38 32 00 	movq   $0x0,0x3238(%rsp)
  403cd2:	00 00 00 00 00 
  403cd7:	c5 f8 28 05 81 84 00 	vmovaps 0x8481(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403cde:	00 
  403cdf:	c5 f8 11 84 24 40 32 	vmovups %xmm0,0x3240(%rsp)
  403ce6:	00 00 
  403ce8:	48 8d 94 24 30 32 00 	lea    0x3230(%rsp),%rdx
  403cef:	00 
  403cf0:	44 89 ff             	mov    %r15d,%edi
  403cf3:	48 89 de             	mov    %rbx,%rsi
  403cf6:	e8 55 da ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403cfb:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  403d00:	44 0f b6 7c 24 5c    	movzbl 0x5c(%rsp),%r15d
  403d06:	44 89 e1             	mov    %r12d,%ecx
  403d09:	48 01 c1             	add    %rax,%rcx
  403d0c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403d10:	44 89 e0             	mov    %r12d,%eax
  403d13:	83 e0 1f             	and    $0x1f,%eax
  403d16:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403d1a:	48 83 c3 20          	add    $0x20,%rbx
  403d1e:	4c 89 b4 24 10 32 00 	mov    %r14,0x3210(%rsp)
  403d25:	00 
  403d26:	48 c7 84 24 18 32 00 	movq   $0x0,0x3218(%rsp)
  403d2d:	00 00 00 00 00 
  403d32:	c5 f8 28 05 26 84 00 	vmovaps 0x8426(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403d39:	00 
  403d3a:	c5 f8 11 84 24 20 32 	vmovups %xmm0,0x3220(%rsp)
  403d41:	00 00 
  403d43:	48 8d b4 24 10 32 00 	lea    0x3210(%rsp),%rsi
  403d4a:	00 
  403d4b:	48 89 df             	mov    %rbx,%rdi
  403d4e:	e8 5d d4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403d53:	88 44 24 5c          	mov    %al,0x5c(%rsp)
  403d57:	4c 89 b4 24 f0 31 00 	mov    %r14,0x31f0(%rsp)
  403d5e:	00 
  403d5f:	48 c7 84 24 f8 31 00 	movq   $0x0,0x31f8(%rsp)
  403d66:	00 00 00 00 00 
  403d6b:	c5 f8 28 05 ed 83 00 	vmovaps 0x83ed(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403d72:	00 
  403d73:	c5 f8 11 84 24 00 32 	vmovups %xmm0,0x3200(%rsp)
  403d7a:	00 00 
  403d7c:	48 8d 94 24 f0 31 00 	lea    0x31f0(%rsp),%rdx
  403d83:	00 
  403d84:	44 89 ff             	mov    %r15d,%edi
  403d87:	48 89 de             	mov    %rbx,%rsi
  403d8a:	e8 c1 d9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403d8f:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  403d94:	44 0f b6 7c 24 5d    	movzbl 0x5d(%rsp),%r15d
  403d9a:	44 89 e1             	mov    %r12d,%ecx
  403d9d:	48 01 c1             	add    %rax,%rcx
  403da0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403da4:	44 89 e0             	mov    %r12d,%eax
  403da7:	83 e0 1f             	and    $0x1f,%eax
  403daa:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403dae:	48 83 c3 20          	add    $0x20,%rbx
  403db2:	4c 89 b4 24 d0 31 00 	mov    %r14,0x31d0(%rsp)
  403db9:	00 
  403dba:	48 c7 84 24 d8 31 00 	movq   $0x0,0x31d8(%rsp)
  403dc1:	00 00 00 00 00 
  403dc6:	c5 f8 28 05 92 83 00 	vmovaps 0x8392(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403dcd:	00 
  403dce:	c5 f8 11 84 24 e0 31 	vmovups %xmm0,0x31e0(%rsp)
  403dd5:	00 00 
  403dd7:	48 8d b4 24 d0 31 00 	lea    0x31d0(%rsp),%rsi
  403dde:	00 
  403ddf:	48 89 df             	mov    %rbx,%rdi
  403de2:	e8 c9 d3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403de7:	88 44 24 5d          	mov    %al,0x5d(%rsp)
  403deb:	4c 89 b4 24 b0 31 00 	mov    %r14,0x31b0(%rsp)
  403df2:	00 
  403df3:	48 c7 84 24 b8 31 00 	movq   $0x0,0x31b8(%rsp)
  403dfa:	00 00 00 00 00 
  403dff:	c5 f8 28 05 59 83 00 	vmovaps 0x8359(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403e06:	00 
  403e07:	c5 f8 11 84 24 c0 31 	vmovups %xmm0,0x31c0(%rsp)
  403e0e:	00 00 
  403e10:	48 8d 94 24 b0 31 00 	lea    0x31b0(%rsp),%rdx
  403e17:	00 
  403e18:	44 89 ff             	mov    %r15d,%edi
  403e1b:	48 89 de             	mov    %rbx,%rsi
  403e1e:	e8 2d d9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403e23:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  403e28:	44 0f b6 7c 24 5e    	movzbl 0x5e(%rsp),%r15d
  403e2e:	44 89 e1             	mov    %r12d,%ecx
  403e31:	48 01 c1             	add    %rax,%rcx
  403e34:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403e38:	44 89 e0             	mov    %r12d,%eax
  403e3b:	83 e0 1f             	and    $0x1f,%eax
  403e3e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403e42:	48 83 c3 20          	add    $0x20,%rbx
  403e46:	4c 89 b4 24 90 31 00 	mov    %r14,0x3190(%rsp)
  403e4d:	00 
  403e4e:	48 c7 84 24 98 31 00 	movq   $0x0,0x3198(%rsp)
  403e55:	00 00 00 00 00 
  403e5a:	c5 f8 28 05 fe 82 00 	vmovaps 0x82fe(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403e61:	00 
  403e62:	c5 f8 11 84 24 a0 31 	vmovups %xmm0,0x31a0(%rsp)
  403e69:	00 00 
  403e6b:	48 8d b4 24 90 31 00 	lea    0x3190(%rsp),%rsi
  403e72:	00 
  403e73:	48 89 df             	mov    %rbx,%rdi
  403e76:	e8 35 d3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403e7b:	88 44 24 5e          	mov    %al,0x5e(%rsp)
  403e7f:	4c 89 b4 24 70 31 00 	mov    %r14,0x3170(%rsp)
  403e86:	00 
  403e87:	48 c7 84 24 78 31 00 	movq   $0x0,0x3178(%rsp)
  403e8e:	00 00 00 00 00 
  403e93:	c5 f8 28 05 c5 82 00 	vmovaps 0x82c5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403e9a:	00 
  403e9b:	c5 f8 11 84 24 80 31 	vmovups %xmm0,0x3180(%rsp)
  403ea2:	00 00 
  403ea4:	48 8d 94 24 70 31 00 	lea    0x3170(%rsp),%rdx
  403eab:	00 
  403eac:	44 89 ff             	mov    %r15d,%edi
  403eaf:	48 89 de             	mov    %rbx,%rsi
  403eb2:	e8 99 d8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403eb7:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  403ebc:	44 0f b6 7c 24 5f    	movzbl 0x5f(%rsp),%r15d
  403ec2:	44 89 e1             	mov    %r12d,%ecx
  403ec5:	48 01 c1             	add    %rax,%rcx
  403ec8:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403ecc:	44 89 e0             	mov    %r12d,%eax
  403ecf:	83 e0 1f             	and    $0x1f,%eax
  403ed2:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403ed6:	48 83 c3 20          	add    $0x20,%rbx
  403eda:	4c 89 b4 24 50 31 00 	mov    %r14,0x3150(%rsp)
  403ee1:	00 
  403ee2:	48 c7 84 24 58 31 00 	movq   $0x0,0x3158(%rsp)
  403ee9:	00 00 00 00 00 
  403eee:	c5 f8 28 05 6a 82 00 	vmovaps 0x826a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403ef5:	00 
  403ef6:	c5 f8 11 84 24 60 31 	vmovups %xmm0,0x3160(%rsp)
  403efd:	00 00 
  403eff:	48 8d b4 24 50 31 00 	lea    0x3150(%rsp),%rsi
  403f06:	00 
  403f07:	48 89 df             	mov    %rbx,%rdi
  403f0a:	e8 a1 d2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403f0f:	88 44 24 5f          	mov    %al,0x5f(%rsp)
  403f13:	4c 89 b4 24 30 31 00 	mov    %r14,0x3130(%rsp)
  403f1a:	00 
  403f1b:	48 c7 84 24 38 31 00 	movq   $0x0,0x3138(%rsp)
  403f22:	00 00 00 00 00 
  403f27:	c5 f8 28 05 31 82 00 	vmovaps 0x8231(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403f2e:	00 
  403f2f:	c5 f8 11 84 24 40 31 	vmovups %xmm0,0x3140(%rsp)
  403f36:	00 00 
  403f38:	48 8d 94 24 30 31 00 	lea    0x3130(%rsp),%rdx
  403f3f:	00 
  403f40:	44 89 ff             	mov    %r15d,%edi
  403f43:	48 89 de             	mov    %rbx,%rsi
  403f46:	e8 05 d8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403f4b:	0f b6 04 24          	movzbl (%rsp),%eax
  403f4f:	44 0f b6 7c 24 60    	movzbl 0x60(%rsp),%r15d
  403f55:	44 89 e1             	mov    %r12d,%ecx
  403f58:	48 01 c1             	add    %rax,%rcx
  403f5b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403f5f:	44 89 e0             	mov    %r12d,%eax
  403f62:	83 e0 1f             	and    $0x1f,%eax
  403f65:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403f69:	48 83 c3 20          	add    $0x20,%rbx
  403f6d:	4c 89 b4 24 10 31 00 	mov    %r14,0x3110(%rsp)
  403f74:	00 
  403f75:	48 c7 84 24 18 31 00 	movq   $0x0,0x3118(%rsp)
  403f7c:	00 00 00 00 00 
  403f81:	c5 f8 28 05 d7 81 00 	vmovaps 0x81d7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403f88:	00 
  403f89:	c5 f8 11 84 24 20 31 	vmovups %xmm0,0x3120(%rsp)
  403f90:	00 00 
  403f92:	48 8d b4 24 10 31 00 	lea    0x3110(%rsp),%rsi
  403f99:	00 
  403f9a:	48 89 df             	mov    %rbx,%rdi
  403f9d:	e8 0e d2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  403fa2:	88 44 24 60          	mov    %al,0x60(%rsp)
  403fa6:	4c 89 b4 24 f0 30 00 	mov    %r14,0x30f0(%rsp)
  403fad:	00 
  403fae:	48 c7 84 24 f8 30 00 	movq   $0x0,0x30f8(%rsp)
  403fb5:	00 00 00 00 00 
  403fba:	c5 f8 28 05 9e 81 00 	vmovaps 0x819e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  403fc1:	00 
  403fc2:	c5 f8 11 84 24 00 31 	vmovups %xmm0,0x3100(%rsp)
  403fc9:	00 00 
  403fcb:	48 8d 94 24 f0 30 00 	lea    0x30f0(%rsp),%rdx
  403fd2:	00 
  403fd3:	44 89 ff             	mov    %r15d,%edi
  403fd6:	48 89 de             	mov    %rbx,%rsi
  403fd9:	e8 72 d7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  403fde:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  403fe3:	44 0f b6 7c 24 61    	movzbl 0x61(%rsp),%r15d
  403fe9:	44 89 e1             	mov    %r12d,%ecx
  403fec:	48 01 c1             	add    %rax,%rcx
  403fef:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  403ff3:	44 89 e0             	mov    %r12d,%eax
  403ff6:	83 e0 1f             	and    $0x1f,%eax
  403ff9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  403ffd:	48 83 c3 20          	add    $0x20,%rbx
  404001:	4c 89 b4 24 d0 30 00 	mov    %r14,0x30d0(%rsp)
  404008:	00 
  404009:	48 c7 84 24 d8 30 00 	movq   $0x0,0x30d8(%rsp)
  404010:	00 00 00 00 00 
  404015:	c5 f8 28 05 43 81 00 	vmovaps 0x8143(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40401c:	00 
  40401d:	c5 f8 11 84 24 e0 30 	vmovups %xmm0,0x30e0(%rsp)
  404024:	00 00 
  404026:	48 8d b4 24 d0 30 00 	lea    0x30d0(%rsp),%rsi
  40402d:	00 
  40402e:	48 89 df             	mov    %rbx,%rdi
  404031:	e8 7a d1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404036:	88 44 24 61          	mov    %al,0x61(%rsp)
  40403a:	4c 89 b4 24 b0 30 00 	mov    %r14,0x30b0(%rsp)
  404041:	00 
  404042:	48 c7 84 24 b8 30 00 	movq   $0x0,0x30b8(%rsp)
  404049:	00 00 00 00 00 
  40404e:	c5 f8 28 05 0a 81 00 	vmovaps 0x810a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404055:	00 
  404056:	c5 f8 11 84 24 c0 30 	vmovups %xmm0,0x30c0(%rsp)
  40405d:	00 00 
  40405f:	48 8d 94 24 b0 30 00 	lea    0x30b0(%rsp),%rdx
  404066:	00 
  404067:	44 89 ff             	mov    %r15d,%edi
  40406a:	48 89 de             	mov    %rbx,%rsi
  40406d:	e8 de d6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404072:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  404077:	44 0f b6 7c 24 62    	movzbl 0x62(%rsp),%r15d
  40407d:	44 89 e1             	mov    %r12d,%ecx
  404080:	48 01 c1             	add    %rax,%rcx
  404083:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404087:	44 89 e0             	mov    %r12d,%eax
  40408a:	83 e0 1f             	and    $0x1f,%eax
  40408d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404091:	48 83 c3 20          	add    $0x20,%rbx
  404095:	4c 89 b4 24 90 30 00 	mov    %r14,0x3090(%rsp)
  40409c:	00 
  40409d:	48 c7 84 24 98 30 00 	movq   $0x0,0x3098(%rsp)
  4040a4:	00 00 00 00 00 
  4040a9:	c5 f8 28 05 af 80 00 	vmovaps 0x80af(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4040b0:	00 
  4040b1:	c5 f8 11 84 24 a0 30 	vmovups %xmm0,0x30a0(%rsp)
  4040b8:	00 00 
  4040ba:	48 8d b4 24 90 30 00 	lea    0x3090(%rsp),%rsi
  4040c1:	00 
  4040c2:	48 89 df             	mov    %rbx,%rdi
  4040c5:	e8 e6 d0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4040ca:	88 44 24 62          	mov    %al,0x62(%rsp)
  4040ce:	4c 89 b4 24 70 30 00 	mov    %r14,0x3070(%rsp)
  4040d5:	00 
  4040d6:	48 c7 84 24 78 30 00 	movq   $0x0,0x3078(%rsp)
  4040dd:	00 00 00 00 00 
  4040e2:	c5 f8 28 05 76 80 00 	vmovaps 0x8076(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4040e9:	00 
  4040ea:	c5 f8 11 84 24 80 30 	vmovups %xmm0,0x3080(%rsp)
  4040f1:	00 00 
  4040f3:	48 8d 94 24 70 30 00 	lea    0x3070(%rsp),%rdx
  4040fa:	00 
  4040fb:	44 89 ff             	mov    %r15d,%edi
  4040fe:	48 89 de             	mov    %rbx,%rsi
  404101:	e8 4a d6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404106:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  40410b:	44 0f b6 7c 24 63    	movzbl 0x63(%rsp),%r15d
  404111:	44 89 e1             	mov    %r12d,%ecx
  404114:	48 01 c1             	add    %rax,%rcx
  404117:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40411b:	44 89 e0             	mov    %r12d,%eax
  40411e:	83 e0 1f             	and    $0x1f,%eax
  404121:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404125:	48 83 c3 20          	add    $0x20,%rbx
  404129:	4c 89 b4 24 50 30 00 	mov    %r14,0x3050(%rsp)
  404130:	00 
  404131:	48 c7 84 24 58 30 00 	movq   $0x0,0x3058(%rsp)
  404138:	00 00 00 00 00 
  40413d:	c5 f8 28 05 1b 80 00 	vmovaps 0x801b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404144:	00 
  404145:	c5 f8 11 84 24 60 30 	vmovups %xmm0,0x3060(%rsp)
  40414c:	00 00 
  40414e:	48 8d b4 24 50 30 00 	lea    0x3050(%rsp),%rsi
  404155:	00 
  404156:	48 89 df             	mov    %rbx,%rdi
  404159:	e8 52 d0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40415e:	88 44 24 63          	mov    %al,0x63(%rsp)
  404162:	4c 89 b4 24 30 30 00 	mov    %r14,0x3030(%rsp)
  404169:	00 
  40416a:	48 c7 84 24 38 30 00 	movq   $0x0,0x3038(%rsp)
  404171:	00 00 00 00 00 
  404176:	c5 f8 28 05 e2 7f 00 	vmovaps 0x7fe2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40417d:	00 
  40417e:	c5 f8 11 84 24 40 30 	vmovups %xmm0,0x3040(%rsp)
  404185:	00 00 
  404187:	48 8d 94 24 30 30 00 	lea    0x3030(%rsp),%rdx
  40418e:	00 
  40418f:	44 89 ff             	mov    %r15d,%edi
  404192:	48 89 de             	mov    %rbx,%rsi
  404195:	e8 b6 d5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40419a:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  40419f:	44 0f b6 7c 24 64    	movzbl 0x64(%rsp),%r15d
  4041a5:	44 89 e1             	mov    %r12d,%ecx
  4041a8:	48 01 c1             	add    %rax,%rcx
  4041ab:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4041af:	44 89 e0             	mov    %r12d,%eax
  4041b2:	83 e0 1f             	and    $0x1f,%eax
  4041b5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4041b9:	48 83 c3 20          	add    $0x20,%rbx
  4041bd:	4c 89 b4 24 10 30 00 	mov    %r14,0x3010(%rsp)
  4041c4:	00 
  4041c5:	48 c7 84 24 18 30 00 	movq   $0x0,0x3018(%rsp)
  4041cc:	00 00 00 00 00 
  4041d1:	c5 f8 28 05 87 7f 00 	vmovaps 0x7f87(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4041d8:	00 
  4041d9:	c5 f8 11 84 24 20 30 	vmovups %xmm0,0x3020(%rsp)
  4041e0:	00 00 
  4041e2:	48 8d b4 24 10 30 00 	lea    0x3010(%rsp),%rsi
  4041e9:	00 
  4041ea:	48 89 df             	mov    %rbx,%rdi
  4041ed:	e8 be cf ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4041f2:	88 44 24 64          	mov    %al,0x64(%rsp)
  4041f6:	4c 89 b4 24 f0 2f 00 	mov    %r14,0x2ff0(%rsp)
  4041fd:	00 
  4041fe:	48 c7 84 24 f8 2f 00 	movq   $0x0,0x2ff8(%rsp)
  404205:	00 00 00 00 00 
  40420a:	c5 f8 28 05 4e 7f 00 	vmovaps 0x7f4e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404211:	00 
  404212:	c5 f8 11 84 24 00 30 	vmovups %xmm0,0x3000(%rsp)
  404219:	00 00 
  40421b:	48 8d 94 24 f0 2f 00 	lea    0x2ff0(%rsp),%rdx
  404222:	00 
  404223:	44 89 ff             	mov    %r15d,%edi
  404226:	48 89 de             	mov    %rbx,%rsi
  404229:	e8 22 d5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40422e:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  404233:	44 0f b6 7c 24 65    	movzbl 0x65(%rsp),%r15d
  404239:	44 89 e1             	mov    %r12d,%ecx
  40423c:	48 01 c1             	add    %rax,%rcx
  40423f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404243:	44 89 e0             	mov    %r12d,%eax
  404246:	83 e0 1f             	and    $0x1f,%eax
  404249:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40424d:	48 83 c3 20          	add    $0x20,%rbx
  404251:	4c 89 b4 24 d0 2f 00 	mov    %r14,0x2fd0(%rsp)
  404258:	00 
  404259:	48 c7 84 24 d8 2f 00 	movq   $0x0,0x2fd8(%rsp)
  404260:	00 00 00 00 00 
  404265:	c5 f8 28 05 f3 7e 00 	vmovaps 0x7ef3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40426c:	00 
  40426d:	c5 f8 11 84 24 e0 2f 	vmovups %xmm0,0x2fe0(%rsp)
  404274:	00 00 
  404276:	48 8d b4 24 d0 2f 00 	lea    0x2fd0(%rsp),%rsi
  40427d:	00 
  40427e:	48 89 df             	mov    %rbx,%rdi
  404281:	e8 2a cf ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404286:	88 44 24 65          	mov    %al,0x65(%rsp)
  40428a:	4c 89 b4 24 b0 2f 00 	mov    %r14,0x2fb0(%rsp)
  404291:	00 
  404292:	48 c7 84 24 b8 2f 00 	movq   $0x0,0x2fb8(%rsp)
  404299:	00 00 00 00 00 
  40429e:	c5 f8 28 05 ba 7e 00 	vmovaps 0x7eba(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4042a5:	00 
  4042a6:	c5 f8 11 84 24 c0 2f 	vmovups %xmm0,0x2fc0(%rsp)
  4042ad:	00 00 
  4042af:	48 8d 94 24 b0 2f 00 	lea    0x2fb0(%rsp),%rdx
  4042b6:	00 
  4042b7:	44 89 ff             	mov    %r15d,%edi
  4042ba:	48 89 de             	mov    %rbx,%rsi
  4042bd:	e8 8e d4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4042c2:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  4042c7:	44 0f b6 7c 24 66    	movzbl 0x66(%rsp),%r15d
  4042cd:	44 89 e1             	mov    %r12d,%ecx
  4042d0:	48 01 c1             	add    %rax,%rcx
  4042d3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4042d7:	44 89 e0             	mov    %r12d,%eax
  4042da:	83 e0 1f             	and    $0x1f,%eax
  4042dd:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4042e1:	48 83 c3 20          	add    $0x20,%rbx
  4042e5:	4c 89 b4 24 90 2f 00 	mov    %r14,0x2f90(%rsp)
  4042ec:	00 
  4042ed:	48 c7 84 24 98 2f 00 	movq   $0x0,0x2f98(%rsp)
  4042f4:	00 00 00 00 00 
  4042f9:	c5 f8 28 05 5f 7e 00 	vmovaps 0x7e5f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404300:	00 
  404301:	c5 f8 11 84 24 a0 2f 	vmovups %xmm0,0x2fa0(%rsp)
  404308:	00 00 
  40430a:	48 8d b4 24 90 2f 00 	lea    0x2f90(%rsp),%rsi
  404311:	00 
  404312:	48 89 df             	mov    %rbx,%rdi
  404315:	e8 96 ce ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40431a:	88 44 24 66          	mov    %al,0x66(%rsp)
  40431e:	4c 89 b4 24 70 2f 00 	mov    %r14,0x2f70(%rsp)
  404325:	00 
  404326:	48 c7 84 24 78 2f 00 	movq   $0x0,0x2f78(%rsp)
  40432d:	00 00 00 00 00 
  404332:	c5 f8 28 05 26 7e 00 	vmovaps 0x7e26(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404339:	00 
  40433a:	c5 f8 11 84 24 80 2f 	vmovups %xmm0,0x2f80(%rsp)
  404341:	00 00 
  404343:	48 8d 94 24 70 2f 00 	lea    0x2f70(%rsp),%rdx
  40434a:	00 
  40434b:	44 89 ff             	mov    %r15d,%edi
  40434e:	48 89 de             	mov    %rbx,%rsi
  404351:	e8 fa d3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404356:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  40435b:	44 0f b6 7c 24 67    	movzbl 0x67(%rsp),%r15d
  404361:	44 89 e1             	mov    %r12d,%ecx
  404364:	48 01 c1             	add    %rax,%rcx
  404367:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40436b:	44 89 e0             	mov    %r12d,%eax
  40436e:	83 e0 1f             	and    $0x1f,%eax
  404371:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404375:	48 83 c3 20          	add    $0x20,%rbx
  404379:	4c 89 b4 24 50 2f 00 	mov    %r14,0x2f50(%rsp)
  404380:	00 
  404381:	48 c7 84 24 58 2f 00 	movq   $0x0,0x2f58(%rsp)
  404388:	00 00 00 00 00 
  40438d:	c5 f8 28 05 cb 7d 00 	vmovaps 0x7dcb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404394:	00 
  404395:	c5 f8 11 84 24 60 2f 	vmovups %xmm0,0x2f60(%rsp)
  40439c:	00 00 
  40439e:	48 8d b4 24 50 2f 00 	lea    0x2f50(%rsp),%rsi
  4043a5:	00 
  4043a6:	48 89 df             	mov    %rbx,%rdi
  4043a9:	e8 02 ce ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4043ae:	88 44 24 67          	mov    %al,0x67(%rsp)
  4043b2:	4c 89 b4 24 30 2f 00 	mov    %r14,0x2f30(%rsp)
  4043b9:	00 
  4043ba:	48 c7 84 24 38 2f 00 	movq   $0x0,0x2f38(%rsp)
  4043c1:	00 00 00 00 00 
  4043c6:	c5 f8 28 05 92 7d 00 	vmovaps 0x7d92(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4043cd:	00 
  4043ce:	c5 f8 11 84 24 40 2f 	vmovups %xmm0,0x2f40(%rsp)
  4043d5:	00 00 
  4043d7:	48 8d 94 24 30 2f 00 	lea    0x2f30(%rsp),%rdx
  4043de:	00 
  4043df:	44 89 ff             	mov    %r15d,%edi
  4043e2:	48 89 de             	mov    %rbx,%rsi
  4043e5:	e8 66 d3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4043ea:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  4043ef:	44 0f b6 7c 24 68    	movzbl 0x68(%rsp),%r15d
  4043f5:	44 89 e1             	mov    %r12d,%ecx
  4043f8:	48 01 c1             	add    %rax,%rcx
  4043fb:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4043ff:	44 89 e0             	mov    %r12d,%eax
  404402:	83 e0 1f             	and    $0x1f,%eax
  404405:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404409:	48 83 c3 20          	add    $0x20,%rbx
  40440d:	4c 89 b4 24 10 2f 00 	mov    %r14,0x2f10(%rsp)
  404414:	00 
  404415:	48 c7 84 24 18 2f 00 	movq   $0x0,0x2f18(%rsp)
  40441c:	00 00 00 00 00 
  404421:	c5 f8 28 05 37 7d 00 	vmovaps 0x7d37(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404428:	00 
  404429:	c5 f8 11 84 24 20 2f 	vmovups %xmm0,0x2f20(%rsp)
  404430:	00 00 
  404432:	48 8d b4 24 10 2f 00 	lea    0x2f10(%rsp),%rsi
  404439:	00 
  40443a:	48 89 df             	mov    %rbx,%rdi
  40443d:	e8 6e cd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404442:	88 44 24 68          	mov    %al,0x68(%rsp)
  404446:	4c 89 b4 24 f0 2e 00 	mov    %r14,0x2ef0(%rsp)
  40444d:	00 
  40444e:	48 c7 84 24 f8 2e 00 	movq   $0x0,0x2ef8(%rsp)
  404455:	00 00 00 00 00 
  40445a:	c5 f8 28 05 fe 7c 00 	vmovaps 0x7cfe(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404461:	00 
  404462:	c5 f8 11 84 24 00 2f 	vmovups %xmm0,0x2f00(%rsp)
  404469:	00 00 
  40446b:	48 8d 94 24 f0 2e 00 	lea    0x2ef0(%rsp),%rdx
  404472:	00 
  404473:	44 89 ff             	mov    %r15d,%edi
  404476:	48 89 de             	mov    %rbx,%rsi
  404479:	e8 d2 d2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40447e:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  404483:	44 0f b6 7c 24 69    	movzbl 0x69(%rsp),%r15d
  404489:	44 89 e1             	mov    %r12d,%ecx
  40448c:	48 01 c1             	add    %rax,%rcx
  40448f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404493:	44 89 e0             	mov    %r12d,%eax
  404496:	83 e0 1f             	and    $0x1f,%eax
  404499:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40449d:	48 83 c3 20          	add    $0x20,%rbx
  4044a1:	4c 89 b4 24 d0 2e 00 	mov    %r14,0x2ed0(%rsp)
  4044a8:	00 
  4044a9:	48 c7 84 24 d8 2e 00 	movq   $0x0,0x2ed8(%rsp)
  4044b0:	00 00 00 00 00 
  4044b5:	c5 f8 28 05 a3 7c 00 	vmovaps 0x7ca3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4044bc:	00 
  4044bd:	c5 f8 11 84 24 e0 2e 	vmovups %xmm0,0x2ee0(%rsp)
  4044c4:	00 00 
  4044c6:	48 8d b4 24 d0 2e 00 	lea    0x2ed0(%rsp),%rsi
  4044cd:	00 
  4044ce:	48 89 df             	mov    %rbx,%rdi
  4044d1:	e8 da cc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4044d6:	88 44 24 69          	mov    %al,0x69(%rsp)
  4044da:	4c 89 b4 24 b0 2e 00 	mov    %r14,0x2eb0(%rsp)
  4044e1:	00 
  4044e2:	48 c7 84 24 b8 2e 00 	movq   $0x0,0x2eb8(%rsp)
  4044e9:	00 00 00 00 00 
  4044ee:	c5 f8 28 05 6a 7c 00 	vmovaps 0x7c6a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4044f5:	00 
  4044f6:	c5 f8 11 84 24 c0 2e 	vmovups %xmm0,0x2ec0(%rsp)
  4044fd:	00 00 
  4044ff:	48 8d 94 24 b0 2e 00 	lea    0x2eb0(%rsp),%rdx
  404506:	00 
  404507:	44 89 ff             	mov    %r15d,%edi
  40450a:	48 89 de             	mov    %rbx,%rsi
  40450d:	e8 3e d2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404512:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  404517:	44 0f b6 7c 24 6a    	movzbl 0x6a(%rsp),%r15d
  40451d:	44 89 e1             	mov    %r12d,%ecx
  404520:	48 01 c1             	add    %rax,%rcx
  404523:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404527:	44 89 e0             	mov    %r12d,%eax
  40452a:	83 e0 1f             	and    $0x1f,%eax
  40452d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404531:	48 83 c3 20          	add    $0x20,%rbx
  404535:	4c 89 b4 24 90 2e 00 	mov    %r14,0x2e90(%rsp)
  40453c:	00 
  40453d:	48 c7 84 24 98 2e 00 	movq   $0x0,0x2e98(%rsp)
  404544:	00 00 00 00 00 
  404549:	c5 f8 28 05 0f 7c 00 	vmovaps 0x7c0f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404550:	00 
  404551:	c5 f8 11 84 24 a0 2e 	vmovups %xmm0,0x2ea0(%rsp)
  404558:	00 00 
  40455a:	48 8d b4 24 90 2e 00 	lea    0x2e90(%rsp),%rsi
  404561:	00 
  404562:	48 89 df             	mov    %rbx,%rdi
  404565:	e8 46 cc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40456a:	88 44 24 6a          	mov    %al,0x6a(%rsp)
  40456e:	4c 89 b4 24 70 2e 00 	mov    %r14,0x2e70(%rsp)
  404575:	00 
  404576:	48 c7 84 24 78 2e 00 	movq   $0x0,0x2e78(%rsp)
  40457d:	00 00 00 00 00 
  404582:	c5 f8 28 05 d6 7b 00 	vmovaps 0x7bd6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404589:	00 
  40458a:	c5 f8 11 84 24 80 2e 	vmovups %xmm0,0x2e80(%rsp)
  404591:	00 00 
  404593:	48 8d 94 24 70 2e 00 	lea    0x2e70(%rsp),%rdx
  40459a:	00 
  40459b:	44 89 ff             	mov    %r15d,%edi
  40459e:	48 89 de             	mov    %rbx,%rsi
  4045a1:	e8 aa d1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4045a6:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  4045ab:	44 0f b6 7c 24 6b    	movzbl 0x6b(%rsp),%r15d
  4045b1:	44 89 e1             	mov    %r12d,%ecx
  4045b4:	48 01 c1             	add    %rax,%rcx
  4045b7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4045bb:	44 89 e0             	mov    %r12d,%eax
  4045be:	83 e0 1f             	and    $0x1f,%eax
  4045c1:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4045c5:	48 83 c3 20          	add    $0x20,%rbx
  4045c9:	4c 89 b4 24 50 2e 00 	mov    %r14,0x2e50(%rsp)
  4045d0:	00 
  4045d1:	48 c7 84 24 58 2e 00 	movq   $0x0,0x2e58(%rsp)
  4045d8:	00 00 00 00 00 
  4045dd:	c5 f8 28 05 7b 7b 00 	vmovaps 0x7b7b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4045e4:	00 
  4045e5:	c5 f8 11 84 24 60 2e 	vmovups %xmm0,0x2e60(%rsp)
  4045ec:	00 00 
  4045ee:	48 8d b4 24 50 2e 00 	lea    0x2e50(%rsp),%rsi
  4045f5:	00 
  4045f6:	48 89 df             	mov    %rbx,%rdi
  4045f9:	e8 b2 cb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4045fe:	88 44 24 6b          	mov    %al,0x6b(%rsp)
  404602:	4c 89 b4 24 30 2e 00 	mov    %r14,0x2e30(%rsp)
  404609:	00 
  40460a:	48 c7 84 24 38 2e 00 	movq   $0x0,0x2e38(%rsp)
  404611:	00 00 00 00 00 
  404616:	c5 f8 28 05 42 7b 00 	vmovaps 0x7b42(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40461d:	00 
  40461e:	c5 f8 11 84 24 40 2e 	vmovups %xmm0,0x2e40(%rsp)
  404625:	00 00 
  404627:	48 8d 94 24 30 2e 00 	lea    0x2e30(%rsp),%rdx
  40462e:	00 
  40462f:	44 89 ff             	mov    %r15d,%edi
  404632:	48 89 de             	mov    %rbx,%rsi
  404635:	e8 16 d1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40463a:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  40463f:	44 0f b6 7c 24 6c    	movzbl 0x6c(%rsp),%r15d
  404645:	44 89 e1             	mov    %r12d,%ecx
  404648:	48 01 c1             	add    %rax,%rcx
  40464b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40464f:	44 89 e0             	mov    %r12d,%eax
  404652:	83 e0 1f             	and    $0x1f,%eax
  404655:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404659:	48 83 c3 20          	add    $0x20,%rbx
  40465d:	4c 89 b4 24 10 2e 00 	mov    %r14,0x2e10(%rsp)
  404664:	00 
  404665:	48 c7 84 24 18 2e 00 	movq   $0x0,0x2e18(%rsp)
  40466c:	00 00 00 00 00 
  404671:	c5 f8 28 05 e7 7a 00 	vmovaps 0x7ae7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404678:	00 
  404679:	c5 f8 11 84 24 20 2e 	vmovups %xmm0,0x2e20(%rsp)
  404680:	00 00 
  404682:	48 8d b4 24 10 2e 00 	lea    0x2e10(%rsp),%rsi
  404689:	00 
  40468a:	48 89 df             	mov    %rbx,%rdi
  40468d:	e8 1e cb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404692:	88 44 24 6c          	mov    %al,0x6c(%rsp)
  404696:	4c 89 b4 24 f0 2d 00 	mov    %r14,0x2df0(%rsp)
  40469d:	00 
  40469e:	48 c7 84 24 f8 2d 00 	movq   $0x0,0x2df8(%rsp)
  4046a5:	00 00 00 00 00 
  4046aa:	c5 f8 28 05 ae 7a 00 	vmovaps 0x7aae(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4046b1:	00 
  4046b2:	c5 f8 11 84 24 00 2e 	vmovups %xmm0,0x2e00(%rsp)
  4046b9:	00 00 
  4046bb:	48 8d 94 24 f0 2d 00 	lea    0x2df0(%rsp),%rdx
  4046c2:	00 
  4046c3:	44 89 ff             	mov    %r15d,%edi
  4046c6:	48 89 de             	mov    %rbx,%rsi
  4046c9:	e8 82 d0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4046ce:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  4046d3:	44 0f b6 7c 24 6d    	movzbl 0x6d(%rsp),%r15d
  4046d9:	44 89 e1             	mov    %r12d,%ecx
  4046dc:	48 01 c1             	add    %rax,%rcx
  4046df:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4046e3:	44 89 e0             	mov    %r12d,%eax
  4046e6:	83 e0 1f             	and    $0x1f,%eax
  4046e9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4046ed:	48 83 c3 20          	add    $0x20,%rbx
  4046f1:	4c 89 b4 24 d0 2d 00 	mov    %r14,0x2dd0(%rsp)
  4046f8:	00 
  4046f9:	48 c7 84 24 d8 2d 00 	movq   $0x0,0x2dd8(%rsp)
  404700:	00 00 00 00 00 
  404705:	c5 f8 28 05 53 7a 00 	vmovaps 0x7a53(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40470c:	00 
  40470d:	c5 f8 11 84 24 e0 2d 	vmovups %xmm0,0x2de0(%rsp)
  404714:	00 00 
  404716:	48 8d b4 24 d0 2d 00 	lea    0x2dd0(%rsp),%rsi
  40471d:	00 
  40471e:	48 89 df             	mov    %rbx,%rdi
  404721:	e8 8a ca ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404726:	88 44 24 6d          	mov    %al,0x6d(%rsp)
  40472a:	4c 89 b4 24 b0 2d 00 	mov    %r14,0x2db0(%rsp)
  404731:	00 
  404732:	48 c7 84 24 b8 2d 00 	movq   $0x0,0x2db8(%rsp)
  404739:	00 00 00 00 00 
  40473e:	c5 f8 28 05 1a 7a 00 	vmovaps 0x7a1a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404745:	00 
  404746:	c5 f8 11 84 24 c0 2d 	vmovups %xmm0,0x2dc0(%rsp)
  40474d:	00 00 
  40474f:	48 8d 94 24 b0 2d 00 	lea    0x2db0(%rsp),%rdx
  404756:	00 
  404757:	44 89 ff             	mov    %r15d,%edi
  40475a:	48 89 de             	mov    %rbx,%rsi
  40475d:	e8 ee cf ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404762:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  404767:	44 0f b6 7c 24 6e    	movzbl 0x6e(%rsp),%r15d
  40476d:	44 89 e1             	mov    %r12d,%ecx
  404770:	48 01 c1             	add    %rax,%rcx
  404773:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404777:	44 89 e0             	mov    %r12d,%eax
  40477a:	83 e0 1f             	and    $0x1f,%eax
  40477d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404781:	48 83 c3 20          	add    $0x20,%rbx
  404785:	4c 89 b4 24 90 2d 00 	mov    %r14,0x2d90(%rsp)
  40478c:	00 
  40478d:	48 c7 84 24 98 2d 00 	movq   $0x0,0x2d98(%rsp)
  404794:	00 00 00 00 00 
  404799:	c5 f8 28 05 bf 79 00 	vmovaps 0x79bf(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4047a0:	00 
  4047a1:	c5 f8 11 84 24 a0 2d 	vmovups %xmm0,0x2da0(%rsp)
  4047a8:	00 00 
  4047aa:	48 8d b4 24 90 2d 00 	lea    0x2d90(%rsp),%rsi
  4047b1:	00 
  4047b2:	48 89 df             	mov    %rbx,%rdi
  4047b5:	e8 f6 c9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4047ba:	88 44 24 6e          	mov    %al,0x6e(%rsp)
  4047be:	4c 89 b4 24 70 2d 00 	mov    %r14,0x2d70(%rsp)
  4047c5:	00 
  4047c6:	48 c7 84 24 78 2d 00 	movq   $0x0,0x2d78(%rsp)
  4047cd:	00 00 00 00 00 
  4047d2:	c5 f8 28 05 86 79 00 	vmovaps 0x7986(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4047d9:	00 
  4047da:	c5 f8 11 84 24 80 2d 	vmovups %xmm0,0x2d80(%rsp)
  4047e1:	00 00 
  4047e3:	48 8d 94 24 70 2d 00 	lea    0x2d70(%rsp),%rdx
  4047ea:	00 
  4047eb:	44 89 ff             	mov    %r15d,%edi
  4047ee:	48 89 de             	mov    %rbx,%rsi
  4047f1:	e8 5a cf ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4047f6:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4047fb:	44 0f b6 7c 24 6f    	movzbl 0x6f(%rsp),%r15d
  404801:	44 89 e1             	mov    %r12d,%ecx
  404804:	48 01 c1             	add    %rax,%rcx
  404807:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40480b:	44 89 e0             	mov    %r12d,%eax
  40480e:	83 e0 1f             	and    $0x1f,%eax
  404811:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404815:	48 83 c3 20          	add    $0x20,%rbx
  404819:	4c 89 b4 24 50 2d 00 	mov    %r14,0x2d50(%rsp)
  404820:	00 
  404821:	48 c7 84 24 58 2d 00 	movq   $0x0,0x2d58(%rsp)
  404828:	00 00 00 00 00 
  40482d:	c5 f8 28 05 2b 79 00 	vmovaps 0x792b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404834:	00 
  404835:	c5 f8 11 84 24 60 2d 	vmovups %xmm0,0x2d60(%rsp)
  40483c:	00 00 
  40483e:	48 8d b4 24 50 2d 00 	lea    0x2d50(%rsp),%rsi
  404845:	00 
  404846:	48 89 df             	mov    %rbx,%rdi
  404849:	e8 62 c9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40484e:	88 44 24 6f          	mov    %al,0x6f(%rsp)
  404852:	4c 89 b4 24 30 2d 00 	mov    %r14,0x2d30(%rsp)
  404859:	00 
  40485a:	48 c7 84 24 38 2d 00 	movq   $0x0,0x2d38(%rsp)
  404861:	00 00 00 00 00 
  404866:	c5 f8 28 05 f2 78 00 	vmovaps 0x78f2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40486d:	00 
  40486e:	c5 f8 11 84 24 40 2d 	vmovups %xmm0,0x2d40(%rsp)
  404875:	00 00 
  404877:	48 8d 94 24 30 2d 00 	lea    0x2d30(%rsp),%rdx
  40487e:	00 
  40487f:	44 89 ff             	mov    %r15d,%edi
  404882:	48 89 de             	mov    %rbx,%rsi
  404885:	e8 c6 ce ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40488a:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  40488f:	44 0f b6 7c 24 70    	movzbl 0x70(%rsp),%r15d
  404895:	44 89 e1             	mov    %r12d,%ecx
  404898:	48 01 c1             	add    %rax,%rcx
  40489b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40489f:	44 89 e0             	mov    %r12d,%eax
  4048a2:	83 e0 1f             	and    $0x1f,%eax
  4048a5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4048a9:	48 83 c3 20          	add    $0x20,%rbx
  4048ad:	4c 89 b4 24 10 2d 00 	mov    %r14,0x2d10(%rsp)
  4048b4:	00 
  4048b5:	48 c7 84 24 18 2d 00 	movq   $0x0,0x2d18(%rsp)
  4048bc:	00 00 00 00 00 
  4048c1:	c5 f8 28 05 97 78 00 	vmovaps 0x7897(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4048c8:	00 
  4048c9:	c5 f8 11 84 24 20 2d 	vmovups %xmm0,0x2d20(%rsp)
  4048d0:	00 00 
  4048d2:	48 8d b4 24 10 2d 00 	lea    0x2d10(%rsp),%rsi
  4048d9:	00 
  4048da:	48 89 df             	mov    %rbx,%rdi
  4048dd:	e8 ce c8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4048e2:	88 44 24 70          	mov    %al,0x70(%rsp)
  4048e6:	4c 89 b4 24 f0 2c 00 	mov    %r14,0x2cf0(%rsp)
  4048ed:	00 
  4048ee:	48 c7 84 24 f8 2c 00 	movq   $0x0,0x2cf8(%rsp)
  4048f5:	00 00 00 00 00 
  4048fa:	c5 f8 28 05 5e 78 00 	vmovaps 0x785e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404901:	00 
  404902:	c5 f8 11 84 24 00 2d 	vmovups %xmm0,0x2d00(%rsp)
  404909:	00 00 
  40490b:	48 8d 94 24 f0 2c 00 	lea    0x2cf0(%rsp),%rdx
  404912:	00 
  404913:	44 89 ff             	mov    %r15d,%edi
  404916:	48 89 de             	mov    %rbx,%rsi
  404919:	e8 32 ce ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40491e:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  404923:	44 0f b6 7c 24 71    	movzbl 0x71(%rsp),%r15d
  404929:	44 89 e1             	mov    %r12d,%ecx
  40492c:	48 01 c1             	add    %rax,%rcx
  40492f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404933:	44 89 e0             	mov    %r12d,%eax
  404936:	83 e0 1f             	and    $0x1f,%eax
  404939:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40493d:	48 83 c3 20          	add    $0x20,%rbx
  404941:	4c 89 b4 24 d0 2c 00 	mov    %r14,0x2cd0(%rsp)
  404948:	00 
  404949:	48 c7 84 24 d8 2c 00 	movq   $0x0,0x2cd8(%rsp)
  404950:	00 00 00 00 00 
  404955:	c5 f8 28 05 03 78 00 	vmovaps 0x7803(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40495c:	00 
  40495d:	c5 f8 11 84 24 e0 2c 	vmovups %xmm0,0x2ce0(%rsp)
  404964:	00 00 
  404966:	48 8d b4 24 d0 2c 00 	lea    0x2cd0(%rsp),%rsi
  40496d:	00 
  40496e:	48 89 df             	mov    %rbx,%rdi
  404971:	e8 3a c8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404976:	88 44 24 71          	mov    %al,0x71(%rsp)
  40497a:	4c 89 b4 24 b0 2c 00 	mov    %r14,0x2cb0(%rsp)
  404981:	00 
  404982:	48 c7 84 24 b8 2c 00 	movq   $0x0,0x2cb8(%rsp)
  404989:	00 00 00 00 00 
  40498e:	c5 f8 28 05 ca 77 00 	vmovaps 0x77ca(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404995:	00 
  404996:	c5 f8 11 84 24 c0 2c 	vmovups %xmm0,0x2cc0(%rsp)
  40499d:	00 00 
  40499f:	48 8d 94 24 b0 2c 00 	lea    0x2cb0(%rsp),%rdx
  4049a6:	00 
  4049a7:	44 89 ff             	mov    %r15d,%edi
  4049aa:	48 89 de             	mov    %rbx,%rsi
  4049ad:	e8 9e cd ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4049b2:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  4049b7:	44 0f b6 7c 24 72    	movzbl 0x72(%rsp),%r15d
  4049bd:	44 89 e1             	mov    %r12d,%ecx
  4049c0:	48 01 c1             	add    %rax,%rcx
  4049c3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4049c7:	44 89 e0             	mov    %r12d,%eax
  4049ca:	83 e0 1f             	and    $0x1f,%eax
  4049cd:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4049d1:	48 83 c3 20          	add    $0x20,%rbx
  4049d5:	4c 89 b4 24 90 2c 00 	mov    %r14,0x2c90(%rsp)
  4049dc:	00 
  4049dd:	48 c7 84 24 98 2c 00 	movq   $0x0,0x2c98(%rsp)
  4049e4:	00 00 00 00 00 
  4049e9:	c5 f8 28 05 6f 77 00 	vmovaps 0x776f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4049f0:	00 
  4049f1:	c5 f8 11 84 24 a0 2c 	vmovups %xmm0,0x2ca0(%rsp)
  4049f8:	00 00 
  4049fa:	48 8d b4 24 90 2c 00 	lea    0x2c90(%rsp),%rsi
  404a01:	00 
  404a02:	48 89 df             	mov    %rbx,%rdi
  404a05:	e8 a6 c7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404a0a:	88 44 24 72          	mov    %al,0x72(%rsp)
  404a0e:	4c 89 b4 24 70 2c 00 	mov    %r14,0x2c70(%rsp)
  404a15:	00 
  404a16:	48 c7 84 24 78 2c 00 	movq   $0x0,0x2c78(%rsp)
  404a1d:	00 00 00 00 00 
  404a22:	c5 f8 28 05 36 77 00 	vmovaps 0x7736(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404a29:	00 
  404a2a:	c5 f8 11 84 24 80 2c 	vmovups %xmm0,0x2c80(%rsp)
  404a31:	00 00 
  404a33:	48 8d 94 24 70 2c 00 	lea    0x2c70(%rsp),%rdx
  404a3a:	00 
  404a3b:	44 89 ff             	mov    %r15d,%edi
  404a3e:	48 89 de             	mov    %rbx,%rsi
  404a41:	e8 0a cd ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404a46:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  404a4b:	44 0f b6 7c 24 73    	movzbl 0x73(%rsp),%r15d
  404a51:	44 89 e1             	mov    %r12d,%ecx
  404a54:	48 01 c1             	add    %rax,%rcx
  404a57:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404a5b:	44 89 e0             	mov    %r12d,%eax
  404a5e:	83 e0 1f             	and    $0x1f,%eax
  404a61:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404a65:	48 83 c3 20          	add    $0x20,%rbx
  404a69:	4c 89 b4 24 50 2c 00 	mov    %r14,0x2c50(%rsp)
  404a70:	00 
  404a71:	48 c7 84 24 58 2c 00 	movq   $0x0,0x2c58(%rsp)
  404a78:	00 00 00 00 00 
  404a7d:	c5 f8 28 05 db 76 00 	vmovaps 0x76db(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404a84:	00 
  404a85:	c5 f8 11 84 24 60 2c 	vmovups %xmm0,0x2c60(%rsp)
  404a8c:	00 00 
  404a8e:	48 8d b4 24 50 2c 00 	lea    0x2c50(%rsp),%rsi
  404a95:	00 
  404a96:	48 89 df             	mov    %rbx,%rdi
  404a99:	e8 12 c7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404a9e:	88 44 24 73          	mov    %al,0x73(%rsp)
  404aa2:	4c 89 b4 24 30 2c 00 	mov    %r14,0x2c30(%rsp)
  404aa9:	00 
  404aaa:	48 c7 84 24 38 2c 00 	movq   $0x0,0x2c38(%rsp)
  404ab1:	00 00 00 00 00 
  404ab6:	c5 f8 28 05 a2 76 00 	vmovaps 0x76a2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404abd:	00 
  404abe:	c5 f8 11 84 24 40 2c 	vmovups %xmm0,0x2c40(%rsp)
  404ac5:	00 00 
  404ac7:	48 8d 94 24 30 2c 00 	lea    0x2c30(%rsp),%rdx
  404ace:	00 
  404acf:	44 89 ff             	mov    %r15d,%edi
  404ad2:	48 89 de             	mov    %rbx,%rsi
  404ad5:	e8 76 cc ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404ada:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  404adf:	44 0f b6 7c 24 74    	movzbl 0x74(%rsp),%r15d
  404ae5:	44 89 e1             	mov    %r12d,%ecx
  404ae8:	48 01 c1             	add    %rax,%rcx
  404aeb:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404aef:	44 89 e0             	mov    %r12d,%eax
  404af2:	83 e0 1f             	and    $0x1f,%eax
  404af5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404af9:	48 83 c3 20          	add    $0x20,%rbx
  404afd:	4c 89 b4 24 10 2c 00 	mov    %r14,0x2c10(%rsp)
  404b04:	00 
  404b05:	48 c7 84 24 18 2c 00 	movq   $0x0,0x2c18(%rsp)
  404b0c:	00 00 00 00 00 
  404b11:	c5 f8 28 05 47 76 00 	vmovaps 0x7647(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404b18:	00 
  404b19:	c5 f8 11 84 24 20 2c 	vmovups %xmm0,0x2c20(%rsp)
  404b20:	00 00 
  404b22:	48 8d b4 24 10 2c 00 	lea    0x2c10(%rsp),%rsi
  404b29:	00 
  404b2a:	48 89 df             	mov    %rbx,%rdi
  404b2d:	e8 7e c6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404b32:	88 44 24 74          	mov    %al,0x74(%rsp)
  404b36:	4c 89 b4 24 f0 2b 00 	mov    %r14,0x2bf0(%rsp)
  404b3d:	00 
  404b3e:	48 c7 84 24 f8 2b 00 	movq   $0x0,0x2bf8(%rsp)
  404b45:	00 00 00 00 00 
  404b4a:	c5 f8 28 05 0e 76 00 	vmovaps 0x760e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404b51:	00 
  404b52:	c5 f8 11 84 24 00 2c 	vmovups %xmm0,0x2c00(%rsp)
  404b59:	00 00 
  404b5b:	48 8d 94 24 f0 2b 00 	lea    0x2bf0(%rsp),%rdx
  404b62:	00 
  404b63:	44 89 ff             	mov    %r15d,%edi
  404b66:	48 89 de             	mov    %rbx,%rsi
  404b69:	e8 e2 cb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404b6e:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  404b73:	44 0f b6 7c 24 75    	movzbl 0x75(%rsp),%r15d
  404b79:	44 89 e1             	mov    %r12d,%ecx
  404b7c:	48 01 c1             	add    %rax,%rcx
  404b7f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404b83:	44 89 e0             	mov    %r12d,%eax
  404b86:	83 e0 1f             	and    $0x1f,%eax
  404b89:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404b8d:	48 83 c3 20          	add    $0x20,%rbx
  404b91:	4c 89 b4 24 d0 2b 00 	mov    %r14,0x2bd0(%rsp)
  404b98:	00 
  404b99:	48 c7 84 24 d8 2b 00 	movq   $0x0,0x2bd8(%rsp)
  404ba0:	00 00 00 00 00 
  404ba5:	c5 f8 28 05 b3 75 00 	vmovaps 0x75b3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404bac:	00 
  404bad:	c5 f8 11 84 24 e0 2b 	vmovups %xmm0,0x2be0(%rsp)
  404bb4:	00 00 
  404bb6:	48 8d b4 24 d0 2b 00 	lea    0x2bd0(%rsp),%rsi
  404bbd:	00 
  404bbe:	48 89 df             	mov    %rbx,%rdi
  404bc1:	e8 ea c5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404bc6:	88 44 24 75          	mov    %al,0x75(%rsp)
  404bca:	4c 89 b4 24 b0 2b 00 	mov    %r14,0x2bb0(%rsp)
  404bd1:	00 
  404bd2:	48 c7 84 24 b8 2b 00 	movq   $0x0,0x2bb8(%rsp)
  404bd9:	00 00 00 00 00 
  404bde:	c5 f8 28 05 7a 75 00 	vmovaps 0x757a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404be5:	00 
  404be6:	c5 f8 11 84 24 c0 2b 	vmovups %xmm0,0x2bc0(%rsp)
  404bed:	00 00 
  404bef:	48 8d 94 24 b0 2b 00 	lea    0x2bb0(%rsp),%rdx
  404bf6:	00 
  404bf7:	44 89 ff             	mov    %r15d,%edi
  404bfa:	48 89 de             	mov    %rbx,%rsi
  404bfd:	e8 4e cb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404c02:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  404c07:	44 0f b6 7c 24 76    	movzbl 0x76(%rsp),%r15d
  404c0d:	44 89 e1             	mov    %r12d,%ecx
  404c10:	48 01 c1             	add    %rax,%rcx
  404c13:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404c17:	44 89 e0             	mov    %r12d,%eax
  404c1a:	83 e0 1f             	and    $0x1f,%eax
  404c1d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404c21:	48 83 c3 20          	add    $0x20,%rbx
  404c25:	4c 89 b4 24 90 2b 00 	mov    %r14,0x2b90(%rsp)
  404c2c:	00 
  404c2d:	48 c7 84 24 98 2b 00 	movq   $0x0,0x2b98(%rsp)
  404c34:	00 00 00 00 00 
  404c39:	c5 f8 28 05 1f 75 00 	vmovaps 0x751f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404c40:	00 
  404c41:	c5 f8 11 84 24 a0 2b 	vmovups %xmm0,0x2ba0(%rsp)
  404c48:	00 00 
  404c4a:	48 8d b4 24 90 2b 00 	lea    0x2b90(%rsp),%rsi
  404c51:	00 
  404c52:	48 89 df             	mov    %rbx,%rdi
  404c55:	e8 56 c5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404c5a:	88 44 24 76          	mov    %al,0x76(%rsp)
  404c5e:	4c 89 b4 24 70 2b 00 	mov    %r14,0x2b70(%rsp)
  404c65:	00 
  404c66:	48 c7 84 24 78 2b 00 	movq   $0x0,0x2b78(%rsp)
  404c6d:	00 00 00 00 00 
  404c72:	c5 f8 28 05 e6 74 00 	vmovaps 0x74e6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404c79:	00 
  404c7a:	c5 f8 11 84 24 80 2b 	vmovups %xmm0,0x2b80(%rsp)
  404c81:	00 00 
  404c83:	48 8d 94 24 70 2b 00 	lea    0x2b70(%rsp),%rdx
  404c8a:	00 
  404c8b:	44 89 ff             	mov    %r15d,%edi
  404c8e:	48 89 de             	mov    %rbx,%rsi
  404c91:	e8 ba ca ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404c96:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  404c9b:	44 0f b6 7c 24 77    	movzbl 0x77(%rsp),%r15d
  404ca1:	44 89 e1             	mov    %r12d,%ecx
  404ca4:	48 01 c1             	add    %rax,%rcx
  404ca7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404cab:	44 89 e0             	mov    %r12d,%eax
  404cae:	83 e0 1f             	and    $0x1f,%eax
  404cb1:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404cb5:	48 83 c3 20          	add    $0x20,%rbx
  404cb9:	4c 89 b4 24 50 2b 00 	mov    %r14,0x2b50(%rsp)
  404cc0:	00 
  404cc1:	48 c7 84 24 58 2b 00 	movq   $0x0,0x2b58(%rsp)
  404cc8:	00 00 00 00 00 
  404ccd:	c5 f8 28 05 8b 74 00 	vmovaps 0x748b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404cd4:	00 
  404cd5:	c5 f8 11 84 24 60 2b 	vmovups %xmm0,0x2b60(%rsp)
  404cdc:	00 00 
  404cde:	48 8d b4 24 50 2b 00 	lea    0x2b50(%rsp),%rsi
  404ce5:	00 
  404ce6:	48 89 df             	mov    %rbx,%rdi
  404ce9:	e8 c2 c4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404cee:	88 44 24 77          	mov    %al,0x77(%rsp)
  404cf2:	4c 89 b4 24 30 2b 00 	mov    %r14,0x2b30(%rsp)
  404cf9:	00 
  404cfa:	48 c7 84 24 38 2b 00 	movq   $0x0,0x2b38(%rsp)
  404d01:	00 00 00 00 00 
  404d06:	c5 f8 28 05 52 74 00 	vmovaps 0x7452(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404d0d:	00 
  404d0e:	c5 f8 11 84 24 40 2b 	vmovups %xmm0,0x2b40(%rsp)
  404d15:	00 00 
  404d17:	48 8d 94 24 30 2b 00 	lea    0x2b30(%rsp),%rdx
  404d1e:	00 
  404d1f:	44 89 ff             	mov    %r15d,%edi
  404d22:	48 89 de             	mov    %rbx,%rsi
  404d25:	e8 26 ca ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404d2a:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  404d2f:	44 0f b6 7c 24 78    	movzbl 0x78(%rsp),%r15d
  404d35:	44 89 e1             	mov    %r12d,%ecx
  404d38:	48 01 c1             	add    %rax,%rcx
  404d3b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404d3f:	44 89 e0             	mov    %r12d,%eax
  404d42:	83 e0 1f             	and    $0x1f,%eax
  404d45:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404d49:	48 83 c3 20          	add    $0x20,%rbx
  404d4d:	4c 89 b4 24 10 2b 00 	mov    %r14,0x2b10(%rsp)
  404d54:	00 
  404d55:	48 c7 84 24 18 2b 00 	movq   $0x0,0x2b18(%rsp)
  404d5c:	00 00 00 00 00 
  404d61:	c5 f8 28 05 f7 73 00 	vmovaps 0x73f7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404d68:	00 
  404d69:	c5 f8 11 84 24 20 2b 	vmovups %xmm0,0x2b20(%rsp)
  404d70:	00 00 
  404d72:	48 8d b4 24 10 2b 00 	lea    0x2b10(%rsp),%rsi
  404d79:	00 
  404d7a:	48 89 df             	mov    %rbx,%rdi
  404d7d:	e8 2e c4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404d82:	88 44 24 78          	mov    %al,0x78(%rsp)
  404d86:	4c 89 b4 24 f0 2a 00 	mov    %r14,0x2af0(%rsp)
  404d8d:	00 
  404d8e:	48 c7 84 24 f8 2a 00 	movq   $0x0,0x2af8(%rsp)
  404d95:	00 00 00 00 00 
  404d9a:	c5 f8 28 05 be 73 00 	vmovaps 0x73be(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404da1:	00 
  404da2:	c5 f8 11 84 24 00 2b 	vmovups %xmm0,0x2b00(%rsp)
  404da9:	00 00 
  404dab:	48 8d 94 24 f0 2a 00 	lea    0x2af0(%rsp),%rdx
  404db2:	00 
  404db3:	44 89 ff             	mov    %r15d,%edi
  404db6:	48 89 de             	mov    %rbx,%rsi
  404db9:	e8 92 c9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404dbe:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  404dc3:	44 0f b6 7c 24 79    	movzbl 0x79(%rsp),%r15d
  404dc9:	44 89 e1             	mov    %r12d,%ecx
  404dcc:	48 01 c1             	add    %rax,%rcx
  404dcf:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404dd3:	44 89 e0             	mov    %r12d,%eax
  404dd6:	83 e0 1f             	and    $0x1f,%eax
  404dd9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404ddd:	48 83 c3 20          	add    $0x20,%rbx
  404de1:	4c 89 b4 24 d0 2a 00 	mov    %r14,0x2ad0(%rsp)
  404de8:	00 
  404de9:	48 c7 84 24 d8 2a 00 	movq   $0x0,0x2ad8(%rsp)
  404df0:	00 00 00 00 00 
  404df5:	c5 f8 28 05 63 73 00 	vmovaps 0x7363(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404dfc:	00 
  404dfd:	c5 f8 11 84 24 e0 2a 	vmovups %xmm0,0x2ae0(%rsp)
  404e04:	00 00 
  404e06:	48 8d b4 24 d0 2a 00 	lea    0x2ad0(%rsp),%rsi
  404e0d:	00 
  404e0e:	48 89 df             	mov    %rbx,%rdi
  404e11:	e8 9a c3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404e16:	88 44 24 79          	mov    %al,0x79(%rsp)
  404e1a:	4c 89 b4 24 b0 2a 00 	mov    %r14,0x2ab0(%rsp)
  404e21:	00 
  404e22:	48 c7 84 24 b8 2a 00 	movq   $0x0,0x2ab8(%rsp)
  404e29:	00 00 00 00 00 
  404e2e:	c5 f8 28 05 2a 73 00 	vmovaps 0x732a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404e35:	00 
  404e36:	c5 f8 11 84 24 c0 2a 	vmovups %xmm0,0x2ac0(%rsp)
  404e3d:	00 00 
  404e3f:	48 8d 94 24 b0 2a 00 	lea    0x2ab0(%rsp),%rdx
  404e46:	00 
  404e47:	44 89 ff             	mov    %r15d,%edi
  404e4a:	48 89 de             	mov    %rbx,%rsi
  404e4d:	e8 fe c8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404e52:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  404e57:	44 0f b6 7c 24 7a    	movzbl 0x7a(%rsp),%r15d
  404e5d:	44 89 e1             	mov    %r12d,%ecx
  404e60:	48 01 c1             	add    %rax,%rcx
  404e63:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404e67:	44 89 e0             	mov    %r12d,%eax
  404e6a:	83 e0 1f             	and    $0x1f,%eax
  404e6d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404e71:	48 83 c3 20          	add    $0x20,%rbx
  404e75:	4c 89 b4 24 90 2a 00 	mov    %r14,0x2a90(%rsp)
  404e7c:	00 
  404e7d:	48 c7 84 24 98 2a 00 	movq   $0x0,0x2a98(%rsp)
  404e84:	00 00 00 00 00 
  404e89:	c5 f8 28 05 cf 72 00 	vmovaps 0x72cf(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404e90:	00 
  404e91:	c5 f8 11 84 24 a0 2a 	vmovups %xmm0,0x2aa0(%rsp)
  404e98:	00 00 
  404e9a:	48 8d b4 24 90 2a 00 	lea    0x2a90(%rsp),%rsi
  404ea1:	00 
  404ea2:	48 89 df             	mov    %rbx,%rdi
  404ea5:	e8 06 c3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404eaa:	88 44 24 7a          	mov    %al,0x7a(%rsp)
  404eae:	4c 89 b4 24 70 2a 00 	mov    %r14,0x2a70(%rsp)
  404eb5:	00 
  404eb6:	48 c7 84 24 78 2a 00 	movq   $0x0,0x2a78(%rsp)
  404ebd:	00 00 00 00 00 
  404ec2:	c5 f8 28 05 96 72 00 	vmovaps 0x7296(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404ec9:	00 
  404eca:	c5 f8 11 84 24 80 2a 	vmovups %xmm0,0x2a80(%rsp)
  404ed1:	00 00 
  404ed3:	48 8d 94 24 70 2a 00 	lea    0x2a70(%rsp),%rdx
  404eda:	00 
  404edb:	44 89 ff             	mov    %r15d,%edi
  404ede:	48 89 de             	mov    %rbx,%rsi
  404ee1:	e8 6a c8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404ee6:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  404eeb:	44 0f b6 7c 24 7b    	movzbl 0x7b(%rsp),%r15d
  404ef1:	44 89 e1             	mov    %r12d,%ecx
  404ef4:	48 01 c1             	add    %rax,%rcx
  404ef7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404efb:	44 89 e0             	mov    %r12d,%eax
  404efe:	83 e0 1f             	and    $0x1f,%eax
  404f01:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404f05:	48 83 c3 20          	add    $0x20,%rbx
  404f09:	4c 89 b4 24 50 2a 00 	mov    %r14,0x2a50(%rsp)
  404f10:	00 
  404f11:	48 c7 84 24 58 2a 00 	movq   $0x0,0x2a58(%rsp)
  404f18:	00 00 00 00 00 
  404f1d:	c5 f8 28 05 3b 72 00 	vmovaps 0x723b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404f24:	00 
  404f25:	c5 f8 11 84 24 60 2a 	vmovups %xmm0,0x2a60(%rsp)
  404f2c:	00 00 
  404f2e:	48 8d b4 24 50 2a 00 	lea    0x2a50(%rsp),%rsi
  404f35:	00 
  404f36:	48 89 df             	mov    %rbx,%rdi
  404f39:	e8 72 c2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404f3e:	88 44 24 7b          	mov    %al,0x7b(%rsp)
  404f42:	4c 89 b4 24 30 2a 00 	mov    %r14,0x2a30(%rsp)
  404f49:	00 
  404f4a:	48 c7 84 24 38 2a 00 	movq   $0x0,0x2a38(%rsp)
  404f51:	00 00 00 00 00 
  404f56:	c5 f8 28 05 02 72 00 	vmovaps 0x7202(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404f5d:	00 
  404f5e:	c5 f8 11 84 24 40 2a 	vmovups %xmm0,0x2a40(%rsp)
  404f65:	00 00 
  404f67:	48 8d 94 24 30 2a 00 	lea    0x2a30(%rsp),%rdx
  404f6e:	00 
  404f6f:	44 89 ff             	mov    %r15d,%edi
  404f72:	48 89 de             	mov    %rbx,%rsi
  404f75:	e8 d6 c7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  404f7a:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  404f7f:	44 0f b6 7c 24 7c    	movzbl 0x7c(%rsp),%r15d
  404f85:	44 89 e1             	mov    %r12d,%ecx
  404f88:	48 01 c1             	add    %rax,%rcx
  404f8b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  404f8f:	44 89 e0             	mov    %r12d,%eax
  404f92:	83 e0 1f             	and    $0x1f,%eax
  404f95:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  404f99:	48 83 c3 20          	add    $0x20,%rbx
  404f9d:	4c 89 b4 24 10 2a 00 	mov    %r14,0x2a10(%rsp)
  404fa4:	00 
  404fa5:	48 c7 84 24 18 2a 00 	movq   $0x0,0x2a18(%rsp)
  404fac:	00 00 00 00 00 
  404fb1:	c5 f8 28 05 a7 71 00 	vmovaps 0x71a7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404fb8:	00 
  404fb9:	c5 f8 11 84 24 20 2a 	vmovups %xmm0,0x2a20(%rsp)
  404fc0:	00 00 
  404fc2:	48 8d b4 24 10 2a 00 	lea    0x2a10(%rsp),%rsi
  404fc9:	00 
  404fca:	48 89 df             	mov    %rbx,%rdi
  404fcd:	e8 de c1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  404fd2:	88 44 24 7c          	mov    %al,0x7c(%rsp)
  404fd6:	4c 89 b4 24 f0 29 00 	mov    %r14,0x29f0(%rsp)
  404fdd:	00 
  404fde:	48 c7 84 24 f8 29 00 	movq   $0x0,0x29f8(%rsp)
  404fe5:	00 00 00 00 00 
  404fea:	c5 f8 28 05 6e 71 00 	vmovaps 0x716e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  404ff1:	00 
  404ff2:	c5 f8 11 84 24 00 2a 	vmovups %xmm0,0x2a00(%rsp)
  404ff9:	00 00 
  404ffb:	48 8d 94 24 f0 29 00 	lea    0x29f0(%rsp),%rdx
  405002:	00 
  405003:	44 89 ff             	mov    %r15d,%edi
  405006:	48 89 de             	mov    %rbx,%rsi
  405009:	e8 42 c7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40500e:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  405013:	44 0f b6 7c 24 7d    	movzbl 0x7d(%rsp),%r15d
  405019:	44 89 e1             	mov    %r12d,%ecx
  40501c:	48 01 c1             	add    %rax,%rcx
  40501f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405023:	44 89 e0             	mov    %r12d,%eax
  405026:	83 e0 1f             	and    $0x1f,%eax
  405029:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40502d:	48 83 c3 20          	add    $0x20,%rbx
  405031:	4c 89 b4 24 d0 29 00 	mov    %r14,0x29d0(%rsp)
  405038:	00 
  405039:	48 c7 84 24 d8 29 00 	movq   $0x0,0x29d8(%rsp)
  405040:	00 00 00 00 00 
  405045:	c5 f8 28 05 13 71 00 	vmovaps 0x7113(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40504c:	00 
  40504d:	c5 f8 11 84 24 e0 29 	vmovups %xmm0,0x29e0(%rsp)
  405054:	00 00 
  405056:	48 8d b4 24 d0 29 00 	lea    0x29d0(%rsp),%rsi
  40505d:	00 
  40505e:	48 89 df             	mov    %rbx,%rdi
  405061:	e8 4a c1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405066:	88 44 24 7d          	mov    %al,0x7d(%rsp)
  40506a:	4c 89 b4 24 b0 29 00 	mov    %r14,0x29b0(%rsp)
  405071:	00 
  405072:	48 c7 84 24 b8 29 00 	movq   $0x0,0x29b8(%rsp)
  405079:	00 00 00 00 00 
  40507e:	c5 f8 28 05 da 70 00 	vmovaps 0x70da(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405085:	00 
  405086:	c5 f8 11 84 24 c0 29 	vmovups %xmm0,0x29c0(%rsp)
  40508d:	00 00 
  40508f:	48 8d 94 24 b0 29 00 	lea    0x29b0(%rsp),%rdx
  405096:	00 
  405097:	44 89 ff             	mov    %r15d,%edi
  40509a:	48 89 de             	mov    %rbx,%rsi
  40509d:	e8 ae c6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4050a2:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  4050a7:	44 0f b6 7c 24 7e    	movzbl 0x7e(%rsp),%r15d
  4050ad:	44 89 e1             	mov    %r12d,%ecx
  4050b0:	48 01 c1             	add    %rax,%rcx
  4050b3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4050b7:	44 89 e0             	mov    %r12d,%eax
  4050ba:	83 e0 1f             	and    $0x1f,%eax
  4050bd:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4050c1:	48 83 c3 20          	add    $0x20,%rbx
  4050c5:	4c 89 b4 24 90 29 00 	mov    %r14,0x2990(%rsp)
  4050cc:	00 
  4050cd:	48 c7 84 24 98 29 00 	movq   $0x0,0x2998(%rsp)
  4050d4:	00 00 00 00 00 
  4050d9:	c5 f8 28 05 7f 70 00 	vmovaps 0x707f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4050e0:	00 
  4050e1:	c5 f8 11 84 24 a0 29 	vmovups %xmm0,0x29a0(%rsp)
  4050e8:	00 00 
  4050ea:	48 8d b4 24 90 29 00 	lea    0x2990(%rsp),%rsi
  4050f1:	00 
  4050f2:	48 89 df             	mov    %rbx,%rdi
  4050f5:	e8 b6 c0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4050fa:	88 44 24 7e          	mov    %al,0x7e(%rsp)
  4050fe:	4c 89 b4 24 70 29 00 	mov    %r14,0x2970(%rsp)
  405105:	00 
  405106:	48 c7 84 24 78 29 00 	movq   $0x0,0x2978(%rsp)
  40510d:	00 00 00 00 00 
  405112:	c5 f8 28 05 46 70 00 	vmovaps 0x7046(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405119:	00 
  40511a:	c5 f8 11 84 24 80 29 	vmovups %xmm0,0x2980(%rsp)
  405121:	00 00 
  405123:	48 8d 94 24 70 29 00 	lea    0x2970(%rsp),%rdx
  40512a:	00 
  40512b:	44 89 ff             	mov    %r15d,%edi
  40512e:	48 89 de             	mov    %rbx,%rsi
  405131:	e8 1a c6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405136:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  40513b:	44 0f b6 7c 24 7f    	movzbl 0x7f(%rsp),%r15d
  405141:	44 89 e1             	mov    %r12d,%ecx
  405144:	48 01 c1             	add    %rax,%rcx
  405147:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40514b:	44 89 e0             	mov    %r12d,%eax
  40514e:	83 e0 1f             	and    $0x1f,%eax
  405151:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405155:	48 83 c3 20          	add    $0x20,%rbx
  405159:	4c 89 b4 24 50 29 00 	mov    %r14,0x2950(%rsp)
  405160:	00 
  405161:	48 c7 84 24 58 29 00 	movq   $0x0,0x2958(%rsp)
  405168:	00 00 00 00 00 
  40516d:	c5 f8 28 05 eb 6f 00 	vmovaps 0x6feb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405174:	00 
  405175:	c5 f8 11 84 24 60 29 	vmovups %xmm0,0x2960(%rsp)
  40517c:	00 00 
  40517e:	48 8d b4 24 50 29 00 	lea    0x2950(%rsp),%rsi
  405185:	00 
  405186:	48 89 df             	mov    %rbx,%rdi
  405189:	e8 22 c0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40518e:	88 44 24 7f          	mov    %al,0x7f(%rsp)
  405192:	4c 89 b4 24 30 29 00 	mov    %r14,0x2930(%rsp)
  405199:	00 
  40519a:	48 c7 84 24 38 29 00 	movq   $0x0,0x2938(%rsp)
  4051a1:	00 00 00 00 00 
  4051a6:	c5 f8 28 05 b2 6f 00 	vmovaps 0x6fb2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4051ad:	00 
  4051ae:	c5 f8 11 84 24 40 29 	vmovups %xmm0,0x2940(%rsp)
  4051b5:	00 00 
  4051b7:	48 8d 94 24 30 29 00 	lea    0x2930(%rsp),%rdx
  4051be:	00 
  4051bf:	44 89 ff             	mov    %r15d,%edi
  4051c2:	48 89 de             	mov    %rbx,%rsi
  4051c5:	e8 86 c5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4051ca:	0f b6 04 24          	movzbl (%rsp),%eax
  4051ce:	44 0f b6 bc 24 80 00 	movzbl 0x80(%rsp),%r15d
  4051d5:	00 00 
  4051d7:	44 89 e1             	mov    %r12d,%ecx
  4051da:	48 01 c1             	add    %rax,%rcx
  4051dd:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4051e1:	44 89 e0             	mov    %r12d,%eax
  4051e4:	83 e0 1f             	and    $0x1f,%eax
  4051e7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4051eb:	48 83 c3 20          	add    $0x20,%rbx
  4051ef:	4c 89 b4 24 10 29 00 	mov    %r14,0x2910(%rsp)
  4051f6:	00 
  4051f7:	48 c7 84 24 18 29 00 	movq   $0x0,0x2918(%rsp)
  4051fe:	00 00 00 00 00 
  405203:	c5 f8 28 05 55 6f 00 	vmovaps 0x6f55(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40520a:	00 
  40520b:	c5 f8 11 84 24 20 29 	vmovups %xmm0,0x2920(%rsp)
  405212:	00 00 
  405214:	48 8d b4 24 10 29 00 	lea    0x2910(%rsp),%rsi
  40521b:	00 
  40521c:	48 89 df             	mov    %rbx,%rdi
  40521f:	e8 8c bf ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405224:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
  40522b:	4c 89 b4 24 f0 28 00 	mov    %r14,0x28f0(%rsp)
  405232:	00 
  405233:	48 c7 84 24 f8 28 00 	movq   $0x0,0x28f8(%rsp)
  40523a:	00 00 00 00 00 
  40523f:	c5 f8 28 05 19 6f 00 	vmovaps 0x6f19(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405246:	00 
  405247:	c5 f8 11 84 24 00 29 	vmovups %xmm0,0x2900(%rsp)
  40524e:	00 00 
  405250:	48 8d 94 24 f0 28 00 	lea    0x28f0(%rsp),%rdx
  405257:	00 
  405258:	44 89 ff             	mov    %r15d,%edi
  40525b:	48 89 de             	mov    %rbx,%rsi
  40525e:	e8 ed c4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405263:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  405268:	44 0f b6 bc 24 81 00 	movzbl 0x81(%rsp),%r15d
  40526f:	00 00 
  405271:	44 89 e1             	mov    %r12d,%ecx
  405274:	48 01 c1             	add    %rax,%rcx
  405277:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40527b:	44 89 e0             	mov    %r12d,%eax
  40527e:	83 e0 1f             	and    $0x1f,%eax
  405281:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405285:	48 83 c3 20          	add    $0x20,%rbx
  405289:	4c 89 b4 24 d0 28 00 	mov    %r14,0x28d0(%rsp)
  405290:	00 
  405291:	48 c7 84 24 d8 28 00 	movq   $0x0,0x28d8(%rsp)
  405298:	00 00 00 00 00 
  40529d:	c5 f8 28 05 bb 6e 00 	vmovaps 0x6ebb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4052a4:	00 
  4052a5:	c5 f8 11 84 24 e0 28 	vmovups %xmm0,0x28e0(%rsp)
  4052ac:	00 00 
  4052ae:	48 8d b4 24 d0 28 00 	lea    0x28d0(%rsp),%rsi
  4052b5:	00 
  4052b6:	48 89 df             	mov    %rbx,%rdi
  4052b9:	e8 f2 be ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4052be:	88 84 24 81 00 00 00 	mov    %al,0x81(%rsp)
  4052c5:	4c 89 b4 24 b0 28 00 	mov    %r14,0x28b0(%rsp)
  4052cc:	00 
  4052cd:	48 c7 84 24 b8 28 00 	movq   $0x0,0x28b8(%rsp)
  4052d4:	00 00 00 00 00 
  4052d9:	c5 f8 28 05 7f 6e 00 	vmovaps 0x6e7f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4052e0:	00 
  4052e1:	c5 f8 11 84 24 c0 28 	vmovups %xmm0,0x28c0(%rsp)
  4052e8:	00 00 
  4052ea:	48 8d 94 24 b0 28 00 	lea    0x28b0(%rsp),%rdx
  4052f1:	00 
  4052f2:	44 89 ff             	mov    %r15d,%edi
  4052f5:	48 89 de             	mov    %rbx,%rsi
  4052f8:	e8 53 c4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4052fd:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  405302:	44 0f b6 bc 24 82 00 	movzbl 0x82(%rsp),%r15d
  405309:	00 00 
  40530b:	44 89 e1             	mov    %r12d,%ecx
  40530e:	48 01 c1             	add    %rax,%rcx
  405311:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405315:	44 89 e0             	mov    %r12d,%eax
  405318:	83 e0 1f             	and    $0x1f,%eax
  40531b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40531f:	48 83 c3 20          	add    $0x20,%rbx
  405323:	4c 89 b4 24 90 28 00 	mov    %r14,0x2890(%rsp)
  40532a:	00 
  40532b:	48 c7 84 24 98 28 00 	movq   $0x0,0x2898(%rsp)
  405332:	00 00 00 00 00 
  405337:	c5 f8 28 05 21 6e 00 	vmovaps 0x6e21(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40533e:	00 
  40533f:	c5 f8 11 84 24 a0 28 	vmovups %xmm0,0x28a0(%rsp)
  405346:	00 00 
  405348:	48 8d b4 24 90 28 00 	lea    0x2890(%rsp),%rsi
  40534f:	00 
  405350:	48 89 df             	mov    %rbx,%rdi
  405353:	e8 58 be ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405358:	88 84 24 82 00 00 00 	mov    %al,0x82(%rsp)
  40535f:	4c 89 b4 24 70 28 00 	mov    %r14,0x2870(%rsp)
  405366:	00 
  405367:	48 c7 84 24 78 28 00 	movq   $0x0,0x2878(%rsp)
  40536e:	00 00 00 00 00 
  405373:	c5 f8 28 05 e5 6d 00 	vmovaps 0x6de5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40537a:	00 
  40537b:	c5 f8 11 84 24 80 28 	vmovups %xmm0,0x2880(%rsp)
  405382:	00 00 
  405384:	48 8d 94 24 70 28 00 	lea    0x2870(%rsp),%rdx
  40538b:	00 
  40538c:	44 89 ff             	mov    %r15d,%edi
  40538f:	48 89 de             	mov    %rbx,%rsi
  405392:	e8 b9 c3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405397:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  40539c:	44 0f b6 bc 24 83 00 	movzbl 0x83(%rsp),%r15d
  4053a3:	00 00 
  4053a5:	44 89 e1             	mov    %r12d,%ecx
  4053a8:	48 01 c1             	add    %rax,%rcx
  4053ab:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4053af:	44 89 e0             	mov    %r12d,%eax
  4053b2:	83 e0 1f             	and    $0x1f,%eax
  4053b5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4053b9:	48 83 c3 20          	add    $0x20,%rbx
  4053bd:	4c 89 b4 24 50 28 00 	mov    %r14,0x2850(%rsp)
  4053c4:	00 
  4053c5:	48 c7 84 24 58 28 00 	movq   $0x0,0x2858(%rsp)
  4053cc:	00 00 00 00 00 
  4053d1:	c5 f8 28 05 87 6d 00 	vmovaps 0x6d87(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4053d8:	00 
  4053d9:	c5 f8 11 84 24 60 28 	vmovups %xmm0,0x2860(%rsp)
  4053e0:	00 00 
  4053e2:	48 8d b4 24 50 28 00 	lea    0x2850(%rsp),%rsi
  4053e9:	00 
  4053ea:	48 89 df             	mov    %rbx,%rdi
  4053ed:	e8 be bd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4053f2:	88 84 24 83 00 00 00 	mov    %al,0x83(%rsp)
  4053f9:	4c 89 b4 24 30 28 00 	mov    %r14,0x2830(%rsp)
  405400:	00 
  405401:	48 c7 84 24 38 28 00 	movq   $0x0,0x2838(%rsp)
  405408:	00 00 00 00 00 
  40540d:	c5 f8 28 05 4b 6d 00 	vmovaps 0x6d4b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405414:	00 
  405415:	c5 f8 11 84 24 40 28 	vmovups %xmm0,0x2840(%rsp)
  40541c:	00 00 
  40541e:	48 8d 94 24 30 28 00 	lea    0x2830(%rsp),%rdx
  405425:	00 
  405426:	44 89 ff             	mov    %r15d,%edi
  405429:	48 89 de             	mov    %rbx,%rsi
  40542c:	e8 1f c3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405431:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  405436:	44 0f b6 bc 24 84 00 	movzbl 0x84(%rsp),%r15d
  40543d:	00 00 
  40543f:	44 89 e1             	mov    %r12d,%ecx
  405442:	48 01 c1             	add    %rax,%rcx
  405445:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405449:	44 89 e0             	mov    %r12d,%eax
  40544c:	83 e0 1f             	and    $0x1f,%eax
  40544f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405453:	48 83 c3 20          	add    $0x20,%rbx
  405457:	4c 89 b4 24 10 28 00 	mov    %r14,0x2810(%rsp)
  40545e:	00 
  40545f:	48 c7 84 24 18 28 00 	movq   $0x0,0x2818(%rsp)
  405466:	00 00 00 00 00 
  40546b:	c5 f8 28 05 ed 6c 00 	vmovaps 0x6ced(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405472:	00 
  405473:	c5 f8 11 84 24 20 28 	vmovups %xmm0,0x2820(%rsp)
  40547a:	00 00 
  40547c:	48 8d b4 24 10 28 00 	lea    0x2810(%rsp),%rsi
  405483:	00 
  405484:	48 89 df             	mov    %rbx,%rdi
  405487:	e8 24 bd ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40548c:	88 84 24 84 00 00 00 	mov    %al,0x84(%rsp)
  405493:	4c 89 b4 24 f0 27 00 	mov    %r14,0x27f0(%rsp)
  40549a:	00 
  40549b:	48 c7 84 24 f8 27 00 	movq   $0x0,0x27f8(%rsp)
  4054a2:	00 00 00 00 00 
  4054a7:	c5 f8 28 05 b1 6c 00 	vmovaps 0x6cb1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4054ae:	00 
  4054af:	c5 f8 11 84 24 00 28 	vmovups %xmm0,0x2800(%rsp)
  4054b6:	00 00 
  4054b8:	48 8d 94 24 f0 27 00 	lea    0x27f0(%rsp),%rdx
  4054bf:	00 
  4054c0:	44 89 ff             	mov    %r15d,%edi
  4054c3:	48 89 de             	mov    %rbx,%rsi
  4054c6:	e8 85 c2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4054cb:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  4054d0:	44 0f b6 bc 24 85 00 	movzbl 0x85(%rsp),%r15d
  4054d7:	00 00 
  4054d9:	44 89 e1             	mov    %r12d,%ecx
  4054dc:	48 01 c1             	add    %rax,%rcx
  4054df:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4054e3:	44 89 e0             	mov    %r12d,%eax
  4054e6:	83 e0 1f             	and    $0x1f,%eax
  4054e9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4054ed:	48 83 c3 20          	add    $0x20,%rbx
  4054f1:	4c 89 b4 24 d0 27 00 	mov    %r14,0x27d0(%rsp)
  4054f8:	00 
  4054f9:	48 c7 84 24 d8 27 00 	movq   $0x0,0x27d8(%rsp)
  405500:	00 00 00 00 00 
  405505:	c5 f8 28 05 53 6c 00 	vmovaps 0x6c53(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40550c:	00 
  40550d:	c5 f8 11 84 24 e0 27 	vmovups %xmm0,0x27e0(%rsp)
  405514:	00 00 
  405516:	48 8d b4 24 d0 27 00 	lea    0x27d0(%rsp),%rsi
  40551d:	00 
  40551e:	48 89 df             	mov    %rbx,%rdi
  405521:	e8 8a bc ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405526:	88 84 24 85 00 00 00 	mov    %al,0x85(%rsp)
  40552d:	4c 89 b4 24 b0 27 00 	mov    %r14,0x27b0(%rsp)
  405534:	00 
  405535:	48 c7 84 24 b8 27 00 	movq   $0x0,0x27b8(%rsp)
  40553c:	00 00 00 00 00 
  405541:	c5 f8 28 05 17 6c 00 	vmovaps 0x6c17(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405548:	00 
  405549:	c5 f8 11 84 24 c0 27 	vmovups %xmm0,0x27c0(%rsp)
  405550:	00 00 
  405552:	48 8d 94 24 b0 27 00 	lea    0x27b0(%rsp),%rdx
  405559:	00 
  40555a:	44 89 ff             	mov    %r15d,%edi
  40555d:	48 89 de             	mov    %rbx,%rsi
  405560:	e8 eb c1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405565:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  40556a:	44 0f b6 bc 24 86 00 	movzbl 0x86(%rsp),%r15d
  405571:	00 00 
  405573:	44 89 e1             	mov    %r12d,%ecx
  405576:	48 01 c1             	add    %rax,%rcx
  405579:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40557d:	44 89 e0             	mov    %r12d,%eax
  405580:	83 e0 1f             	and    $0x1f,%eax
  405583:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405587:	48 83 c3 20          	add    $0x20,%rbx
  40558b:	4c 89 b4 24 90 27 00 	mov    %r14,0x2790(%rsp)
  405592:	00 
  405593:	48 c7 84 24 98 27 00 	movq   $0x0,0x2798(%rsp)
  40559a:	00 00 00 00 00 
  40559f:	c5 f8 28 05 b9 6b 00 	vmovaps 0x6bb9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4055a6:	00 
  4055a7:	c5 f8 11 84 24 a0 27 	vmovups %xmm0,0x27a0(%rsp)
  4055ae:	00 00 
  4055b0:	48 8d b4 24 90 27 00 	lea    0x2790(%rsp),%rsi
  4055b7:	00 
  4055b8:	48 89 df             	mov    %rbx,%rdi
  4055bb:	e8 f0 bb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4055c0:	88 84 24 86 00 00 00 	mov    %al,0x86(%rsp)
  4055c7:	4c 89 b4 24 70 27 00 	mov    %r14,0x2770(%rsp)
  4055ce:	00 
  4055cf:	48 c7 84 24 78 27 00 	movq   $0x0,0x2778(%rsp)
  4055d6:	00 00 00 00 00 
  4055db:	c5 f8 28 05 7d 6b 00 	vmovaps 0x6b7d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4055e2:	00 
  4055e3:	c5 f8 11 84 24 80 27 	vmovups %xmm0,0x2780(%rsp)
  4055ea:	00 00 
  4055ec:	48 8d 94 24 70 27 00 	lea    0x2770(%rsp),%rdx
  4055f3:	00 
  4055f4:	44 89 ff             	mov    %r15d,%edi
  4055f7:	48 89 de             	mov    %rbx,%rsi
  4055fa:	e8 51 c1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4055ff:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  405604:	44 0f b6 bc 24 87 00 	movzbl 0x87(%rsp),%r15d
  40560b:	00 00 
  40560d:	44 89 e1             	mov    %r12d,%ecx
  405610:	48 01 c1             	add    %rax,%rcx
  405613:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405617:	44 89 e0             	mov    %r12d,%eax
  40561a:	83 e0 1f             	and    $0x1f,%eax
  40561d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405621:	48 83 c3 20          	add    $0x20,%rbx
  405625:	4c 89 b4 24 50 27 00 	mov    %r14,0x2750(%rsp)
  40562c:	00 
  40562d:	48 c7 84 24 58 27 00 	movq   $0x0,0x2758(%rsp)
  405634:	00 00 00 00 00 
  405639:	c5 f8 28 05 1f 6b 00 	vmovaps 0x6b1f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405640:	00 
  405641:	c5 f8 11 84 24 60 27 	vmovups %xmm0,0x2760(%rsp)
  405648:	00 00 
  40564a:	48 8d b4 24 50 27 00 	lea    0x2750(%rsp),%rsi
  405651:	00 
  405652:	48 89 df             	mov    %rbx,%rdi
  405655:	e8 56 bb ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40565a:	88 84 24 87 00 00 00 	mov    %al,0x87(%rsp)
  405661:	4c 89 b4 24 30 27 00 	mov    %r14,0x2730(%rsp)
  405668:	00 
  405669:	48 c7 84 24 38 27 00 	movq   $0x0,0x2738(%rsp)
  405670:	00 00 00 00 00 
  405675:	c5 f8 28 05 e3 6a 00 	vmovaps 0x6ae3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40567c:	00 
  40567d:	c5 f8 11 84 24 40 27 	vmovups %xmm0,0x2740(%rsp)
  405684:	00 00 
  405686:	48 8d 94 24 30 27 00 	lea    0x2730(%rsp),%rdx
  40568d:	00 
  40568e:	44 89 ff             	mov    %r15d,%edi
  405691:	48 89 de             	mov    %rbx,%rsi
  405694:	e8 b7 c0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405699:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  40569e:	44 0f b6 bc 24 88 00 	movzbl 0x88(%rsp),%r15d
  4056a5:	00 00 
  4056a7:	44 89 e1             	mov    %r12d,%ecx
  4056aa:	48 01 c1             	add    %rax,%rcx
  4056ad:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4056b1:	44 89 e0             	mov    %r12d,%eax
  4056b4:	83 e0 1f             	and    $0x1f,%eax
  4056b7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4056bb:	48 83 c3 20          	add    $0x20,%rbx
  4056bf:	4c 89 b4 24 10 27 00 	mov    %r14,0x2710(%rsp)
  4056c6:	00 
  4056c7:	48 c7 84 24 18 27 00 	movq   $0x0,0x2718(%rsp)
  4056ce:	00 00 00 00 00 
  4056d3:	c5 f8 28 05 85 6a 00 	vmovaps 0x6a85(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4056da:	00 
  4056db:	c5 f8 11 84 24 20 27 	vmovups %xmm0,0x2720(%rsp)
  4056e2:	00 00 
  4056e4:	48 8d b4 24 10 27 00 	lea    0x2710(%rsp),%rsi
  4056eb:	00 
  4056ec:	48 89 df             	mov    %rbx,%rdi
  4056ef:	e8 bc ba ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4056f4:	88 84 24 88 00 00 00 	mov    %al,0x88(%rsp)
  4056fb:	4c 89 b4 24 f0 26 00 	mov    %r14,0x26f0(%rsp)
  405702:	00 
  405703:	48 c7 84 24 f8 26 00 	movq   $0x0,0x26f8(%rsp)
  40570a:	00 00 00 00 00 
  40570f:	c5 f8 28 05 49 6a 00 	vmovaps 0x6a49(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405716:	00 
  405717:	c5 f8 11 84 24 00 27 	vmovups %xmm0,0x2700(%rsp)
  40571e:	00 00 
  405720:	48 8d 94 24 f0 26 00 	lea    0x26f0(%rsp),%rdx
  405727:	00 
  405728:	44 89 ff             	mov    %r15d,%edi
  40572b:	48 89 de             	mov    %rbx,%rsi
  40572e:	e8 1d c0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405733:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  405738:	44 0f b6 bc 24 89 00 	movzbl 0x89(%rsp),%r15d
  40573f:	00 00 
  405741:	44 89 e1             	mov    %r12d,%ecx
  405744:	48 01 c1             	add    %rax,%rcx
  405747:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40574b:	44 89 e0             	mov    %r12d,%eax
  40574e:	83 e0 1f             	and    $0x1f,%eax
  405751:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405755:	48 83 c3 20          	add    $0x20,%rbx
  405759:	4c 89 b4 24 d0 26 00 	mov    %r14,0x26d0(%rsp)
  405760:	00 
  405761:	48 c7 84 24 d8 26 00 	movq   $0x0,0x26d8(%rsp)
  405768:	00 00 00 00 00 
  40576d:	c5 f8 28 05 eb 69 00 	vmovaps 0x69eb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405774:	00 
  405775:	c5 f8 11 84 24 e0 26 	vmovups %xmm0,0x26e0(%rsp)
  40577c:	00 00 
  40577e:	48 8d b4 24 d0 26 00 	lea    0x26d0(%rsp),%rsi
  405785:	00 
  405786:	48 89 df             	mov    %rbx,%rdi
  405789:	e8 22 ba ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40578e:	88 84 24 89 00 00 00 	mov    %al,0x89(%rsp)
  405795:	4c 89 b4 24 b0 26 00 	mov    %r14,0x26b0(%rsp)
  40579c:	00 
  40579d:	48 c7 84 24 b8 26 00 	movq   $0x0,0x26b8(%rsp)
  4057a4:	00 00 00 00 00 
  4057a9:	c5 f8 28 05 af 69 00 	vmovaps 0x69af(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4057b0:	00 
  4057b1:	c5 f8 11 84 24 c0 26 	vmovups %xmm0,0x26c0(%rsp)
  4057b8:	00 00 
  4057ba:	48 8d 94 24 b0 26 00 	lea    0x26b0(%rsp),%rdx
  4057c1:	00 
  4057c2:	44 89 ff             	mov    %r15d,%edi
  4057c5:	48 89 de             	mov    %rbx,%rsi
  4057c8:	e8 83 bf ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4057cd:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  4057d2:	44 0f b6 bc 24 8a 00 	movzbl 0x8a(%rsp),%r15d
  4057d9:	00 00 
  4057db:	44 89 e1             	mov    %r12d,%ecx
  4057de:	48 01 c1             	add    %rax,%rcx
  4057e1:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4057e5:	44 89 e0             	mov    %r12d,%eax
  4057e8:	83 e0 1f             	and    $0x1f,%eax
  4057eb:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4057ef:	48 83 c3 20          	add    $0x20,%rbx
  4057f3:	4c 89 b4 24 90 26 00 	mov    %r14,0x2690(%rsp)
  4057fa:	00 
  4057fb:	48 c7 84 24 98 26 00 	movq   $0x0,0x2698(%rsp)
  405802:	00 00 00 00 00 
  405807:	c5 f8 28 05 51 69 00 	vmovaps 0x6951(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40580e:	00 
  40580f:	c5 f8 11 84 24 a0 26 	vmovups %xmm0,0x26a0(%rsp)
  405816:	00 00 
  405818:	48 8d b4 24 90 26 00 	lea    0x2690(%rsp),%rsi
  40581f:	00 
  405820:	48 89 df             	mov    %rbx,%rdi
  405823:	e8 88 b9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405828:	88 84 24 8a 00 00 00 	mov    %al,0x8a(%rsp)
  40582f:	4c 89 b4 24 70 26 00 	mov    %r14,0x2670(%rsp)
  405836:	00 
  405837:	48 c7 84 24 78 26 00 	movq   $0x0,0x2678(%rsp)
  40583e:	00 00 00 00 00 
  405843:	c5 f8 28 05 15 69 00 	vmovaps 0x6915(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40584a:	00 
  40584b:	c5 f8 11 84 24 80 26 	vmovups %xmm0,0x2680(%rsp)
  405852:	00 00 
  405854:	48 8d 94 24 70 26 00 	lea    0x2670(%rsp),%rdx
  40585b:	00 
  40585c:	44 89 ff             	mov    %r15d,%edi
  40585f:	48 89 de             	mov    %rbx,%rsi
  405862:	e8 e9 be ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405867:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  40586c:	44 0f b6 bc 24 8b 00 	movzbl 0x8b(%rsp),%r15d
  405873:	00 00 
  405875:	44 89 e1             	mov    %r12d,%ecx
  405878:	48 01 c1             	add    %rax,%rcx
  40587b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40587f:	44 89 e0             	mov    %r12d,%eax
  405882:	83 e0 1f             	and    $0x1f,%eax
  405885:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405889:	48 83 c3 20          	add    $0x20,%rbx
  40588d:	4c 89 b4 24 50 26 00 	mov    %r14,0x2650(%rsp)
  405894:	00 
  405895:	48 c7 84 24 58 26 00 	movq   $0x0,0x2658(%rsp)
  40589c:	00 00 00 00 00 
  4058a1:	c5 f8 28 05 b7 68 00 	vmovaps 0x68b7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4058a8:	00 
  4058a9:	c5 f8 11 84 24 60 26 	vmovups %xmm0,0x2660(%rsp)
  4058b0:	00 00 
  4058b2:	48 8d b4 24 50 26 00 	lea    0x2650(%rsp),%rsi
  4058b9:	00 
  4058ba:	48 89 df             	mov    %rbx,%rdi
  4058bd:	e8 ee b8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4058c2:	88 84 24 8b 00 00 00 	mov    %al,0x8b(%rsp)
  4058c9:	4c 89 b4 24 30 26 00 	mov    %r14,0x2630(%rsp)
  4058d0:	00 
  4058d1:	48 c7 84 24 38 26 00 	movq   $0x0,0x2638(%rsp)
  4058d8:	00 00 00 00 00 
  4058dd:	c5 f8 28 05 7b 68 00 	vmovaps 0x687b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4058e4:	00 
  4058e5:	c5 f8 11 84 24 40 26 	vmovups %xmm0,0x2640(%rsp)
  4058ec:	00 00 
  4058ee:	48 8d 94 24 30 26 00 	lea    0x2630(%rsp),%rdx
  4058f5:	00 
  4058f6:	44 89 ff             	mov    %r15d,%edi
  4058f9:	48 89 de             	mov    %rbx,%rsi
  4058fc:	e8 4f be ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405901:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  405906:	44 0f b6 bc 24 8c 00 	movzbl 0x8c(%rsp),%r15d
  40590d:	00 00 
  40590f:	44 89 e1             	mov    %r12d,%ecx
  405912:	48 01 c1             	add    %rax,%rcx
  405915:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405919:	44 89 e0             	mov    %r12d,%eax
  40591c:	83 e0 1f             	and    $0x1f,%eax
  40591f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405923:	48 83 c3 20          	add    $0x20,%rbx
  405927:	4c 89 b4 24 10 26 00 	mov    %r14,0x2610(%rsp)
  40592e:	00 
  40592f:	48 c7 84 24 18 26 00 	movq   $0x0,0x2618(%rsp)
  405936:	00 00 00 00 00 
  40593b:	c5 f8 28 05 1d 68 00 	vmovaps 0x681d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405942:	00 
  405943:	c5 f8 11 84 24 20 26 	vmovups %xmm0,0x2620(%rsp)
  40594a:	00 00 
  40594c:	48 8d b4 24 10 26 00 	lea    0x2610(%rsp),%rsi
  405953:	00 
  405954:	48 89 df             	mov    %rbx,%rdi
  405957:	e8 54 b8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40595c:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
  405963:	4c 89 b4 24 f0 25 00 	mov    %r14,0x25f0(%rsp)
  40596a:	00 
  40596b:	48 c7 84 24 f8 25 00 	movq   $0x0,0x25f8(%rsp)
  405972:	00 00 00 00 00 
  405977:	c5 f8 28 05 e1 67 00 	vmovaps 0x67e1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40597e:	00 
  40597f:	c5 f8 11 84 24 00 26 	vmovups %xmm0,0x2600(%rsp)
  405986:	00 00 
  405988:	48 8d 94 24 f0 25 00 	lea    0x25f0(%rsp),%rdx
  40598f:	00 
  405990:	44 89 ff             	mov    %r15d,%edi
  405993:	48 89 de             	mov    %rbx,%rsi
  405996:	e8 b5 bd ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40599b:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  4059a0:	44 0f b6 bc 24 8d 00 	movzbl 0x8d(%rsp),%r15d
  4059a7:	00 00 
  4059a9:	44 89 e1             	mov    %r12d,%ecx
  4059ac:	48 01 c1             	add    %rax,%rcx
  4059af:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4059b3:	44 89 e0             	mov    %r12d,%eax
  4059b6:	83 e0 1f             	and    $0x1f,%eax
  4059b9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4059bd:	48 83 c3 20          	add    $0x20,%rbx
  4059c1:	4c 89 b4 24 d0 25 00 	mov    %r14,0x25d0(%rsp)
  4059c8:	00 
  4059c9:	48 c7 84 24 d8 25 00 	movq   $0x0,0x25d8(%rsp)
  4059d0:	00 00 00 00 00 
  4059d5:	c5 f8 28 05 83 67 00 	vmovaps 0x6783(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4059dc:	00 
  4059dd:	c5 f8 11 84 24 e0 25 	vmovups %xmm0,0x25e0(%rsp)
  4059e4:	00 00 
  4059e6:	48 8d b4 24 d0 25 00 	lea    0x25d0(%rsp),%rsi
  4059ed:	00 
  4059ee:	48 89 df             	mov    %rbx,%rdi
  4059f1:	e8 ba b7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4059f6:	88 84 24 8d 00 00 00 	mov    %al,0x8d(%rsp)
  4059fd:	4c 89 b4 24 b0 25 00 	mov    %r14,0x25b0(%rsp)
  405a04:	00 
  405a05:	48 c7 84 24 b8 25 00 	movq   $0x0,0x25b8(%rsp)
  405a0c:	00 00 00 00 00 
  405a11:	c5 f8 28 05 47 67 00 	vmovaps 0x6747(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405a18:	00 
  405a19:	c5 f8 11 84 24 c0 25 	vmovups %xmm0,0x25c0(%rsp)
  405a20:	00 00 
  405a22:	48 8d 94 24 b0 25 00 	lea    0x25b0(%rsp),%rdx
  405a29:	00 
  405a2a:	44 89 ff             	mov    %r15d,%edi
  405a2d:	48 89 de             	mov    %rbx,%rsi
  405a30:	e8 1b bd ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405a35:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  405a3a:	44 0f b6 bc 24 8e 00 	movzbl 0x8e(%rsp),%r15d
  405a41:	00 00 
  405a43:	44 89 e1             	mov    %r12d,%ecx
  405a46:	48 01 c1             	add    %rax,%rcx
  405a49:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405a4d:	44 89 e0             	mov    %r12d,%eax
  405a50:	83 e0 1f             	and    $0x1f,%eax
  405a53:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405a57:	48 83 c3 20          	add    $0x20,%rbx
  405a5b:	4c 89 b4 24 90 25 00 	mov    %r14,0x2590(%rsp)
  405a62:	00 
  405a63:	48 c7 84 24 98 25 00 	movq   $0x0,0x2598(%rsp)
  405a6a:	00 00 00 00 00 
  405a6f:	c5 f8 28 05 e9 66 00 	vmovaps 0x66e9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405a76:	00 
  405a77:	c5 f8 11 84 24 a0 25 	vmovups %xmm0,0x25a0(%rsp)
  405a7e:	00 00 
  405a80:	48 8d b4 24 90 25 00 	lea    0x2590(%rsp),%rsi
  405a87:	00 
  405a88:	48 89 df             	mov    %rbx,%rdi
  405a8b:	e8 20 b7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405a90:	88 84 24 8e 00 00 00 	mov    %al,0x8e(%rsp)
  405a97:	4c 89 b4 24 70 25 00 	mov    %r14,0x2570(%rsp)
  405a9e:	00 
  405a9f:	48 c7 84 24 78 25 00 	movq   $0x0,0x2578(%rsp)
  405aa6:	00 00 00 00 00 
  405aab:	c5 f8 28 05 ad 66 00 	vmovaps 0x66ad(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405ab2:	00 
  405ab3:	c5 f8 11 84 24 80 25 	vmovups %xmm0,0x2580(%rsp)
  405aba:	00 00 
  405abc:	48 8d 94 24 70 25 00 	lea    0x2570(%rsp),%rdx
  405ac3:	00 
  405ac4:	44 89 ff             	mov    %r15d,%edi
  405ac7:	48 89 de             	mov    %rbx,%rsi
  405aca:	e8 81 bc ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405acf:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  405ad4:	44 0f b6 bc 24 8f 00 	movzbl 0x8f(%rsp),%r15d
  405adb:	00 00 
  405add:	44 89 e1             	mov    %r12d,%ecx
  405ae0:	48 01 c1             	add    %rax,%rcx
  405ae3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405ae7:	44 89 e0             	mov    %r12d,%eax
  405aea:	83 e0 1f             	and    $0x1f,%eax
  405aed:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405af1:	48 83 c3 20          	add    $0x20,%rbx
  405af5:	4c 89 b4 24 50 25 00 	mov    %r14,0x2550(%rsp)
  405afc:	00 
  405afd:	48 c7 84 24 58 25 00 	movq   $0x0,0x2558(%rsp)
  405b04:	00 00 00 00 00 
  405b09:	c5 f8 28 05 4f 66 00 	vmovaps 0x664f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405b10:	00 
  405b11:	c5 f8 11 84 24 60 25 	vmovups %xmm0,0x2560(%rsp)
  405b18:	00 00 
  405b1a:	48 8d b4 24 50 25 00 	lea    0x2550(%rsp),%rsi
  405b21:	00 
  405b22:	48 89 df             	mov    %rbx,%rdi
  405b25:	e8 86 b6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405b2a:	88 84 24 8f 00 00 00 	mov    %al,0x8f(%rsp)
  405b31:	4c 89 b4 24 30 25 00 	mov    %r14,0x2530(%rsp)
  405b38:	00 
  405b39:	48 c7 84 24 38 25 00 	movq   $0x0,0x2538(%rsp)
  405b40:	00 00 00 00 00 
  405b45:	c5 f8 28 05 13 66 00 	vmovaps 0x6613(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405b4c:	00 
  405b4d:	c5 f8 11 84 24 40 25 	vmovups %xmm0,0x2540(%rsp)
  405b54:	00 00 
  405b56:	48 8d 94 24 30 25 00 	lea    0x2530(%rsp),%rdx
  405b5d:	00 
  405b5e:	44 89 ff             	mov    %r15d,%edi
  405b61:	48 89 de             	mov    %rbx,%rsi
  405b64:	e8 e7 bb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405b69:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  405b6e:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
  405b75:	00 00 
  405b77:	44 89 e1             	mov    %r12d,%ecx
  405b7a:	48 01 c1             	add    %rax,%rcx
  405b7d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405b81:	44 89 e0             	mov    %r12d,%eax
  405b84:	83 e0 1f             	and    $0x1f,%eax
  405b87:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405b8b:	48 83 c3 20          	add    $0x20,%rbx
  405b8f:	4c 89 b4 24 10 25 00 	mov    %r14,0x2510(%rsp)
  405b96:	00 
  405b97:	48 c7 84 24 18 25 00 	movq   $0x0,0x2518(%rsp)
  405b9e:	00 00 00 00 00 
  405ba3:	c5 f8 28 05 b5 65 00 	vmovaps 0x65b5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405baa:	00 
  405bab:	c5 f8 11 84 24 20 25 	vmovups %xmm0,0x2520(%rsp)
  405bb2:	00 00 
  405bb4:	48 8d b4 24 10 25 00 	lea    0x2510(%rsp),%rsi
  405bbb:	00 
  405bbc:	48 89 df             	mov    %rbx,%rdi
  405bbf:	e8 ec b5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405bc4:	88 84 24 90 00 00 00 	mov    %al,0x90(%rsp)
  405bcb:	4c 89 b4 24 f0 24 00 	mov    %r14,0x24f0(%rsp)
  405bd2:	00 
  405bd3:	48 c7 84 24 f8 24 00 	movq   $0x0,0x24f8(%rsp)
  405bda:	00 00 00 00 00 
  405bdf:	c5 f8 28 05 79 65 00 	vmovaps 0x6579(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405be6:	00 
  405be7:	c5 f8 11 84 24 00 25 	vmovups %xmm0,0x2500(%rsp)
  405bee:	00 00 
  405bf0:	48 8d 94 24 f0 24 00 	lea    0x24f0(%rsp),%rdx
  405bf7:	00 
  405bf8:	44 89 ff             	mov    %r15d,%edi
  405bfb:	48 89 de             	mov    %rbx,%rsi
  405bfe:	e8 4d bb ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405c03:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  405c08:	44 0f b6 bc 24 91 00 	movzbl 0x91(%rsp),%r15d
  405c0f:	00 00 
  405c11:	44 89 e1             	mov    %r12d,%ecx
  405c14:	48 01 c1             	add    %rax,%rcx
  405c17:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405c1b:	44 89 e0             	mov    %r12d,%eax
  405c1e:	83 e0 1f             	and    $0x1f,%eax
  405c21:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405c25:	48 83 c3 20          	add    $0x20,%rbx
  405c29:	4c 89 b4 24 d0 24 00 	mov    %r14,0x24d0(%rsp)
  405c30:	00 
  405c31:	48 c7 84 24 d8 24 00 	movq   $0x0,0x24d8(%rsp)
  405c38:	00 00 00 00 00 
  405c3d:	c5 f8 28 05 1b 65 00 	vmovaps 0x651b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405c44:	00 
  405c45:	c5 f8 11 84 24 e0 24 	vmovups %xmm0,0x24e0(%rsp)
  405c4c:	00 00 
  405c4e:	48 8d b4 24 d0 24 00 	lea    0x24d0(%rsp),%rsi
  405c55:	00 
  405c56:	48 89 df             	mov    %rbx,%rdi
  405c59:	e8 52 b5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405c5e:	88 84 24 91 00 00 00 	mov    %al,0x91(%rsp)
  405c65:	4c 89 b4 24 b0 24 00 	mov    %r14,0x24b0(%rsp)
  405c6c:	00 
  405c6d:	48 c7 84 24 b8 24 00 	movq   $0x0,0x24b8(%rsp)
  405c74:	00 00 00 00 00 
  405c79:	c5 f8 28 05 df 64 00 	vmovaps 0x64df(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405c80:	00 
  405c81:	c5 f8 11 84 24 c0 24 	vmovups %xmm0,0x24c0(%rsp)
  405c88:	00 00 
  405c8a:	48 8d 94 24 b0 24 00 	lea    0x24b0(%rsp),%rdx
  405c91:	00 
  405c92:	44 89 ff             	mov    %r15d,%edi
  405c95:	48 89 de             	mov    %rbx,%rsi
  405c98:	e8 b3 ba ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405c9d:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  405ca2:	44 0f b6 bc 24 92 00 	movzbl 0x92(%rsp),%r15d
  405ca9:	00 00 
  405cab:	44 89 e1             	mov    %r12d,%ecx
  405cae:	48 01 c1             	add    %rax,%rcx
  405cb1:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405cb5:	44 89 e0             	mov    %r12d,%eax
  405cb8:	83 e0 1f             	and    $0x1f,%eax
  405cbb:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405cbf:	48 83 c3 20          	add    $0x20,%rbx
  405cc3:	4c 89 b4 24 90 24 00 	mov    %r14,0x2490(%rsp)
  405cca:	00 
  405ccb:	48 c7 84 24 98 24 00 	movq   $0x0,0x2498(%rsp)
  405cd2:	00 00 00 00 00 
  405cd7:	c5 f8 28 05 81 64 00 	vmovaps 0x6481(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405cde:	00 
  405cdf:	c5 f8 11 84 24 a0 24 	vmovups %xmm0,0x24a0(%rsp)
  405ce6:	00 00 
  405ce8:	48 8d b4 24 90 24 00 	lea    0x2490(%rsp),%rsi
  405cef:	00 
  405cf0:	48 89 df             	mov    %rbx,%rdi
  405cf3:	e8 b8 b4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405cf8:	88 84 24 92 00 00 00 	mov    %al,0x92(%rsp)
  405cff:	4c 89 b4 24 70 24 00 	mov    %r14,0x2470(%rsp)
  405d06:	00 
  405d07:	48 c7 84 24 78 24 00 	movq   $0x0,0x2478(%rsp)
  405d0e:	00 00 00 00 00 
  405d13:	c5 f8 28 05 45 64 00 	vmovaps 0x6445(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405d1a:	00 
  405d1b:	c5 f8 11 84 24 80 24 	vmovups %xmm0,0x2480(%rsp)
  405d22:	00 00 
  405d24:	48 8d 94 24 70 24 00 	lea    0x2470(%rsp),%rdx
  405d2b:	00 
  405d2c:	44 89 ff             	mov    %r15d,%edi
  405d2f:	48 89 de             	mov    %rbx,%rsi
  405d32:	e8 19 ba ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405d37:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  405d3c:	44 0f b6 bc 24 93 00 	movzbl 0x93(%rsp),%r15d
  405d43:	00 00 
  405d45:	44 89 e1             	mov    %r12d,%ecx
  405d48:	48 01 c1             	add    %rax,%rcx
  405d4b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405d4f:	44 89 e0             	mov    %r12d,%eax
  405d52:	83 e0 1f             	and    $0x1f,%eax
  405d55:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405d59:	48 83 c3 20          	add    $0x20,%rbx
  405d5d:	4c 89 b4 24 50 24 00 	mov    %r14,0x2450(%rsp)
  405d64:	00 
  405d65:	48 c7 84 24 58 24 00 	movq   $0x0,0x2458(%rsp)
  405d6c:	00 00 00 00 00 
  405d71:	c5 f8 28 05 e7 63 00 	vmovaps 0x63e7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405d78:	00 
  405d79:	c5 f8 11 84 24 60 24 	vmovups %xmm0,0x2460(%rsp)
  405d80:	00 00 
  405d82:	48 8d b4 24 50 24 00 	lea    0x2450(%rsp),%rsi
  405d89:	00 
  405d8a:	48 89 df             	mov    %rbx,%rdi
  405d8d:	e8 1e b4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405d92:	88 84 24 93 00 00 00 	mov    %al,0x93(%rsp)
  405d99:	4c 89 b4 24 30 24 00 	mov    %r14,0x2430(%rsp)
  405da0:	00 
  405da1:	48 c7 84 24 38 24 00 	movq   $0x0,0x2438(%rsp)
  405da8:	00 00 00 00 00 
  405dad:	c5 f8 28 05 ab 63 00 	vmovaps 0x63ab(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405db4:	00 
  405db5:	c5 f8 11 84 24 40 24 	vmovups %xmm0,0x2440(%rsp)
  405dbc:	00 00 
  405dbe:	48 8d 94 24 30 24 00 	lea    0x2430(%rsp),%rdx
  405dc5:	00 
  405dc6:	44 89 ff             	mov    %r15d,%edi
  405dc9:	48 89 de             	mov    %rbx,%rsi
  405dcc:	e8 7f b9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405dd1:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  405dd6:	44 0f b6 bc 24 94 00 	movzbl 0x94(%rsp),%r15d
  405ddd:	00 00 
  405ddf:	44 89 e1             	mov    %r12d,%ecx
  405de2:	48 01 c1             	add    %rax,%rcx
  405de5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405de9:	44 89 e0             	mov    %r12d,%eax
  405dec:	83 e0 1f             	and    $0x1f,%eax
  405def:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405df3:	48 83 c3 20          	add    $0x20,%rbx
  405df7:	4c 89 b4 24 10 24 00 	mov    %r14,0x2410(%rsp)
  405dfe:	00 
  405dff:	48 c7 84 24 18 24 00 	movq   $0x0,0x2418(%rsp)
  405e06:	00 00 00 00 00 
  405e0b:	c5 f8 28 05 4d 63 00 	vmovaps 0x634d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405e12:	00 
  405e13:	c5 f8 11 84 24 20 24 	vmovups %xmm0,0x2420(%rsp)
  405e1a:	00 00 
  405e1c:	48 8d b4 24 10 24 00 	lea    0x2410(%rsp),%rsi
  405e23:	00 
  405e24:	48 89 df             	mov    %rbx,%rdi
  405e27:	e8 84 b3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405e2c:	88 84 24 94 00 00 00 	mov    %al,0x94(%rsp)
  405e33:	4c 89 b4 24 f0 23 00 	mov    %r14,0x23f0(%rsp)
  405e3a:	00 
  405e3b:	48 c7 84 24 f8 23 00 	movq   $0x0,0x23f8(%rsp)
  405e42:	00 00 00 00 00 
  405e47:	c5 f8 28 05 11 63 00 	vmovaps 0x6311(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405e4e:	00 
  405e4f:	c5 f8 11 84 24 00 24 	vmovups %xmm0,0x2400(%rsp)
  405e56:	00 00 
  405e58:	48 8d 94 24 f0 23 00 	lea    0x23f0(%rsp),%rdx
  405e5f:	00 
  405e60:	44 89 ff             	mov    %r15d,%edi
  405e63:	48 89 de             	mov    %rbx,%rsi
  405e66:	e8 e5 b8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405e6b:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  405e70:	44 0f b6 bc 24 95 00 	movzbl 0x95(%rsp),%r15d
  405e77:	00 00 
  405e79:	44 89 e1             	mov    %r12d,%ecx
  405e7c:	48 01 c1             	add    %rax,%rcx
  405e7f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405e83:	44 89 e0             	mov    %r12d,%eax
  405e86:	83 e0 1f             	and    $0x1f,%eax
  405e89:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405e8d:	48 83 c3 20          	add    $0x20,%rbx
  405e91:	4c 89 b4 24 d0 23 00 	mov    %r14,0x23d0(%rsp)
  405e98:	00 
  405e99:	48 c7 84 24 d8 23 00 	movq   $0x0,0x23d8(%rsp)
  405ea0:	00 00 00 00 00 
  405ea5:	c5 f8 28 05 b3 62 00 	vmovaps 0x62b3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405eac:	00 
  405ead:	c5 f8 11 84 24 e0 23 	vmovups %xmm0,0x23e0(%rsp)
  405eb4:	00 00 
  405eb6:	48 8d b4 24 d0 23 00 	lea    0x23d0(%rsp),%rsi
  405ebd:	00 
  405ebe:	48 89 df             	mov    %rbx,%rdi
  405ec1:	e8 ea b2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405ec6:	88 84 24 95 00 00 00 	mov    %al,0x95(%rsp)
  405ecd:	4c 89 b4 24 b0 23 00 	mov    %r14,0x23b0(%rsp)
  405ed4:	00 
  405ed5:	48 c7 84 24 b8 23 00 	movq   $0x0,0x23b8(%rsp)
  405edc:	00 00 00 00 00 
  405ee1:	c5 f8 28 05 77 62 00 	vmovaps 0x6277(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405ee8:	00 
  405ee9:	c5 f8 11 84 24 c0 23 	vmovups %xmm0,0x23c0(%rsp)
  405ef0:	00 00 
  405ef2:	48 8d 94 24 b0 23 00 	lea    0x23b0(%rsp),%rdx
  405ef9:	00 
  405efa:	44 89 ff             	mov    %r15d,%edi
  405efd:	48 89 de             	mov    %rbx,%rsi
  405f00:	e8 4b b8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405f05:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  405f0a:	44 0f b6 bc 24 96 00 	movzbl 0x96(%rsp),%r15d
  405f11:	00 00 
  405f13:	44 89 e1             	mov    %r12d,%ecx
  405f16:	48 01 c1             	add    %rax,%rcx
  405f19:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405f1d:	44 89 e0             	mov    %r12d,%eax
  405f20:	83 e0 1f             	and    $0x1f,%eax
  405f23:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405f27:	48 83 c3 20          	add    $0x20,%rbx
  405f2b:	4c 89 b4 24 90 23 00 	mov    %r14,0x2390(%rsp)
  405f32:	00 
  405f33:	48 c7 84 24 98 23 00 	movq   $0x0,0x2398(%rsp)
  405f3a:	00 00 00 00 00 
  405f3f:	c5 f8 28 05 19 62 00 	vmovaps 0x6219(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405f46:	00 
  405f47:	c5 f8 11 84 24 a0 23 	vmovups %xmm0,0x23a0(%rsp)
  405f4e:	00 00 
  405f50:	48 8d b4 24 90 23 00 	lea    0x2390(%rsp),%rsi
  405f57:	00 
  405f58:	48 89 df             	mov    %rbx,%rdi
  405f5b:	e8 50 b2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405f60:	88 84 24 96 00 00 00 	mov    %al,0x96(%rsp)
  405f67:	4c 89 b4 24 70 23 00 	mov    %r14,0x2370(%rsp)
  405f6e:	00 
  405f6f:	48 c7 84 24 78 23 00 	movq   $0x0,0x2378(%rsp)
  405f76:	00 00 00 00 00 
  405f7b:	c5 f8 28 05 dd 61 00 	vmovaps 0x61dd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405f82:	00 
  405f83:	c5 f8 11 84 24 80 23 	vmovups %xmm0,0x2380(%rsp)
  405f8a:	00 00 
  405f8c:	48 8d 94 24 70 23 00 	lea    0x2370(%rsp),%rdx
  405f93:	00 
  405f94:	44 89 ff             	mov    %r15d,%edi
  405f97:	48 89 de             	mov    %rbx,%rsi
  405f9a:	e8 b1 b7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  405f9f:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  405fa4:	44 0f b6 bc 24 97 00 	movzbl 0x97(%rsp),%r15d
  405fab:	00 00 
  405fad:	44 89 e1             	mov    %r12d,%ecx
  405fb0:	48 01 c1             	add    %rax,%rcx
  405fb3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  405fb7:	44 89 e0             	mov    %r12d,%eax
  405fba:	83 e0 1f             	and    $0x1f,%eax
  405fbd:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  405fc1:	48 83 c3 20          	add    $0x20,%rbx
  405fc5:	4c 89 b4 24 50 23 00 	mov    %r14,0x2350(%rsp)
  405fcc:	00 
  405fcd:	48 c7 84 24 58 23 00 	movq   $0x0,0x2358(%rsp)
  405fd4:	00 00 00 00 00 
  405fd9:	c5 f8 28 05 7f 61 00 	vmovaps 0x617f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  405fe0:	00 
  405fe1:	c5 f8 11 84 24 60 23 	vmovups %xmm0,0x2360(%rsp)
  405fe8:	00 00 
  405fea:	48 8d b4 24 50 23 00 	lea    0x2350(%rsp),%rsi
  405ff1:	00 
  405ff2:	48 89 df             	mov    %rbx,%rdi
  405ff5:	e8 b6 b1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  405ffa:	88 84 24 97 00 00 00 	mov    %al,0x97(%rsp)
  406001:	4c 89 b4 24 30 23 00 	mov    %r14,0x2330(%rsp)
  406008:	00 
  406009:	48 c7 84 24 38 23 00 	movq   $0x0,0x2338(%rsp)
  406010:	00 00 00 00 00 
  406015:	c5 f8 28 05 43 61 00 	vmovaps 0x6143(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40601c:	00 
  40601d:	c5 f8 11 84 24 40 23 	vmovups %xmm0,0x2340(%rsp)
  406024:	00 00 
  406026:	48 8d 94 24 30 23 00 	lea    0x2330(%rsp),%rdx
  40602d:	00 
  40602e:	44 89 ff             	mov    %r15d,%edi
  406031:	48 89 de             	mov    %rbx,%rsi
  406034:	e8 17 b7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406039:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  40603e:	44 0f b6 bc 24 98 00 	movzbl 0x98(%rsp),%r15d
  406045:	00 00 
  406047:	44 89 e1             	mov    %r12d,%ecx
  40604a:	48 01 c1             	add    %rax,%rcx
  40604d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406051:	44 89 e0             	mov    %r12d,%eax
  406054:	83 e0 1f             	and    $0x1f,%eax
  406057:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40605b:	48 83 c3 20          	add    $0x20,%rbx
  40605f:	4c 89 b4 24 10 23 00 	mov    %r14,0x2310(%rsp)
  406066:	00 
  406067:	48 c7 84 24 18 23 00 	movq   $0x0,0x2318(%rsp)
  40606e:	00 00 00 00 00 
  406073:	c5 f8 28 05 e5 60 00 	vmovaps 0x60e5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40607a:	00 
  40607b:	c5 f8 11 84 24 20 23 	vmovups %xmm0,0x2320(%rsp)
  406082:	00 00 
  406084:	48 8d b4 24 10 23 00 	lea    0x2310(%rsp),%rsi
  40608b:	00 
  40608c:	48 89 df             	mov    %rbx,%rdi
  40608f:	e8 1c b1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406094:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
  40609b:	4c 89 b4 24 f0 22 00 	mov    %r14,0x22f0(%rsp)
  4060a2:	00 
  4060a3:	48 c7 84 24 f8 22 00 	movq   $0x0,0x22f8(%rsp)
  4060aa:	00 00 00 00 00 
  4060af:	c5 f8 28 05 a9 60 00 	vmovaps 0x60a9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4060b6:	00 
  4060b7:	c5 f8 11 84 24 00 23 	vmovups %xmm0,0x2300(%rsp)
  4060be:	00 00 
  4060c0:	48 8d 94 24 f0 22 00 	lea    0x22f0(%rsp),%rdx
  4060c7:	00 
  4060c8:	44 89 ff             	mov    %r15d,%edi
  4060cb:	48 89 de             	mov    %rbx,%rsi
  4060ce:	e8 7d b6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4060d3:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  4060d8:	44 0f b6 bc 24 99 00 	movzbl 0x99(%rsp),%r15d
  4060df:	00 00 
  4060e1:	44 89 e1             	mov    %r12d,%ecx
  4060e4:	48 01 c1             	add    %rax,%rcx
  4060e7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4060eb:	44 89 e0             	mov    %r12d,%eax
  4060ee:	83 e0 1f             	and    $0x1f,%eax
  4060f1:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4060f5:	48 83 c3 20          	add    $0x20,%rbx
  4060f9:	4c 89 b4 24 d0 22 00 	mov    %r14,0x22d0(%rsp)
  406100:	00 
  406101:	48 c7 84 24 d8 22 00 	movq   $0x0,0x22d8(%rsp)
  406108:	00 00 00 00 00 
  40610d:	c5 f8 28 05 4b 60 00 	vmovaps 0x604b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406114:	00 
  406115:	c5 f8 11 84 24 e0 22 	vmovups %xmm0,0x22e0(%rsp)
  40611c:	00 00 
  40611e:	48 8d b4 24 d0 22 00 	lea    0x22d0(%rsp),%rsi
  406125:	00 
  406126:	48 89 df             	mov    %rbx,%rdi
  406129:	e8 82 b0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40612e:	88 84 24 99 00 00 00 	mov    %al,0x99(%rsp)
  406135:	4c 89 b4 24 b0 22 00 	mov    %r14,0x22b0(%rsp)
  40613c:	00 
  40613d:	48 c7 84 24 b8 22 00 	movq   $0x0,0x22b8(%rsp)
  406144:	00 00 00 00 00 
  406149:	c5 f8 28 05 0f 60 00 	vmovaps 0x600f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406150:	00 
  406151:	c5 f8 11 84 24 c0 22 	vmovups %xmm0,0x22c0(%rsp)
  406158:	00 00 
  40615a:	48 8d 94 24 b0 22 00 	lea    0x22b0(%rsp),%rdx
  406161:	00 
  406162:	44 89 ff             	mov    %r15d,%edi
  406165:	48 89 de             	mov    %rbx,%rsi
  406168:	e8 e3 b5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40616d:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  406172:	44 0f b6 bc 24 9a 00 	movzbl 0x9a(%rsp),%r15d
  406179:	00 00 
  40617b:	44 89 e1             	mov    %r12d,%ecx
  40617e:	48 01 c1             	add    %rax,%rcx
  406181:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406185:	44 89 e0             	mov    %r12d,%eax
  406188:	83 e0 1f             	and    $0x1f,%eax
  40618b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40618f:	48 83 c3 20          	add    $0x20,%rbx
  406193:	4c 89 b4 24 90 22 00 	mov    %r14,0x2290(%rsp)
  40619a:	00 
  40619b:	48 c7 84 24 98 22 00 	movq   $0x0,0x2298(%rsp)
  4061a2:	00 00 00 00 00 
  4061a7:	c5 f8 28 05 b1 5f 00 	vmovaps 0x5fb1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4061ae:	00 
  4061af:	c5 f8 11 84 24 a0 22 	vmovups %xmm0,0x22a0(%rsp)
  4061b6:	00 00 
  4061b8:	48 8d b4 24 90 22 00 	lea    0x2290(%rsp),%rsi
  4061bf:	00 
  4061c0:	48 89 df             	mov    %rbx,%rdi
  4061c3:	e8 e8 af ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4061c8:	88 84 24 9a 00 00 00 	mov    %al,0x9a(%rsp)
  4061cf:	4c 89 b4 24 70 22 00 	mov    %r14,0x2270(%rsp)
  4061d6:	00 
  4061d7:	48 c7 84 24 78 22 00 	movq   $0x0,0x2278(%rsp)
  4061de:	00 00 00 00 00 
  4061e3:	c5 f8 28 05 75 5f 00 	vmovaps 0x5f75(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4061ea:	00 
  4061eb:	c5 f8 11 84 24 80 22 	vmovups %xmm0,0x2280(%rsp)
  4061f2:	00 00 
  4061f4:	48 8d 94 24 70 22 00 	lea    0x2270(%rsp),%rdx
  4061fb:	00 
  4061fc:	44 89 ff             	mov    %r15d,%edi
  4061ff:	48 89 de             	mov    %rbx,%rsi
  406202:	e8 49 b5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406207:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  40620c:	44 0f b6 bc 24 9b 00 	movzbl 0x9b(%rsp),%r15d
  406213:	00 00 
  406215:	44 89 e1             	mov    %r12d,%ecx
  406218:	48 01 c1             	add    %rax,%rcx
  40621b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40621f:	44 89 e0             	mov    %r12d,%eax
  406222:	83 e0 1f             	and    $0x1f,%eax
  406225:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406229:	48 83 c3 20          	add    $0x20,%rbx
  40622d:	4c 89 b4 24 50 22 00 	mov    %r14,0x2250(%rsp)
  406234:	00 
  406235:	48 c7 84 24 58 22 00 	movq   $0x0,0x2258(%rsp)
  40623c:	00 00 00 00 00 
  406241:	c5 f8 28 05 17 5f 00 	vmovaps 0x5f17(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406248:	00 
  406249:	c5 f8 11 84 24 60 22 	vmovups %xmm0,0x2260(%rsp)
  406250:	00 00 
  406252:	48 8d b4 24 50 22 00 	lea    0x2250(%rsp),%rsi
  406259:	00 
  40625a:	48 89 df             	mov    %rbx,%rdi
  40625d:	e8 4e af ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406262:	88 84 24 9b 00 00 00 	mov    %al,0x9b(%rsp)
  406269:	4c 89 b4 24 30 22 00 	mov    %r14,0x2230(%rsp)
  406270:	00 
  406271:	48 c7 84 24 38 22 00 	movq   $0x0,0x2238(%rsp)
  406278:	00 00 00 00 00 
  40627d:	c5 f8 28 05 db 5e 00 	vmovaps 0x5edb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406284:	00 
  406285:	c5 f8 11 84 24 40 22 	vmovups %xmm0,0x2240(%rsp)
  40628c:	00 00 
  40628e:	48 8d 94 24 30 22 00 	lea    0x2230(%rsp),%rdx
  406295:	00 
  406296:	44 89 ff             	mov    %r15d,%edi
  406299:	48 89 de             	mov    %rbx,%rsi
  40629c:	e8 af b4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4062a1:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  4062a6:	44 0f b6 bc 24 9c 00 	movzbl 0x9c(%rsp),%r15d
  4062ad:	00 00 
  4062af:	44 89 e1             	mov    %r12d,%ecx
  4062b2:	48 01 c1             	add    %rax,%rcx
  4062b5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4062b9:	44 89 e0             	mov    %r12d,%eax
  4062bc:	83 e0 1f             	and    $0x1f,%eax
  4062bf:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4062c3:	48 83 c3 20          	add    $0x20,%rbx
  4062c7:	4c 89 b4 24 10 22 00 	mov    %r14,0x2210(%rsp)
  4062ce:	00 
  4062cf:	48 c7 84 24 18 22 00 	movq   $0x0,0x2218(%rsp)
  4062d6:	00 00 00 00 00 
  4062db:	c5 f8 28 05 7d 5e 00 	vmovaps 0x5e7d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4062e2:	00 
  4062e3:	c5 f8 11 84 24 20 22 	vmovups %xmm0,0x2220(%rsp)
  4062ea:	00 00 
  4062ec:	48 8d b4 24 10 22 00 	lea    0x2210(%rsp),%rsi
  4062f3:	00 
  4062f4:	48 89 df             	mov    %rbx,%rdi
  4062f7:	e8 b4 ae ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4062fc:	88 84 24 9c 00 00 00 	mov    %al,0x9c(%rsp)
  406303:	4c 89 b4 24 f0 21 00 	mov    %r14,0x21f0(%rsp)
  40630a:	00 
  40630b:	48 c7 84 24 f8 21 00 	movq   $0x0,0x21f8(%rsp)
  406312:	00 00 00 00 00 
  406317:	c5 f8 28 05 41 5e 00 	vmovaps 0x5e41(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40631e:	00 
  40631f:	c5 f8 11 84 24 00 22 	vmovups %xmm0,0x2200(%rsp)
  406326:	00 00 
  406328:	48 8d 94 24 f0 21 00 	lea    0x21f0(%rsp),%rdx
  40632f:	00 
  406330:	44 89 ff             	mov    %r15d,%edi
  406333:	48 89 de             	mov    %rbx,%rsi
  406336:	e8 15 b4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40633b:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  406340:	44 0f b6 bc 24 9d 00 	movzbl 0x9d(%rsp),%r15d
  406347:	00 00 
  406349:	44 89 e1             	mov    %r12d,%ecx
  40634c:	48 01 c1             	add    %rax,%rcx
  40634f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406353:	44 89 e0             	mov    %r12d,%eax
  406356:	83 e0 1f             	and    $0x1f,%eax
  406359:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40635d:	48 83 c3 20          	add    $0x20,%rbx
  406361:	4c 89 b4 24 d0 21 00 	mov    %r14,0x21d0(%rsp)
  406368:	00 
  406369:	48 c7 84 24 d8 21 00 	movq   $0x0,0x21d8(%rsp)
  406370:	00 00 00 00 00 
  406375:	c5 f8 28 05 e3 5d 00 	vmovaps 0x5de3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40637c:	00 
  40637d:	c5 f8 11 84 24 e0 21 	vmovups %xmm0,0x21e0(%rsp)
  406384:	00 00 
  406386:	48 8d b4 24 d0 21 00 	lea    0x21d0(%rsp),%rsi
  40638d:	00 
  40638e:	48 89 df             	mov    %rbx,%rdi
  406391:	e8 1a ae ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406396:	88 84 24 9d 00 00 00 	mov    %al,0x9d(%rsp)
  40639d:	4c 89 b4 24 b0 21 00 	mov    %r14,0x21b0(%rsp)
  4063a4:	00 
  4063a5:	48 c7 84 24 b8 21 00 	movq   $0x0,0x21b8(%rsp)
  4063ac:	00 00 00 00 00 
  4063b1:	c5 f8 28 05 a7 5d 00 	vmovaps 0x5da7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4063b8:	00 
  4063b9:	c5 f8 11 84 24 c0 21 	vmovups %xmm0,0x21c0(%rsp)
  4063c0:	00 00 
  4063c2:	48 8d 94 24 b0 21 00 	lea    0x21b0(%rsp),%rdx
  4063c9:	00 
  4063ca:	44 89 ff             	mov    %r15d,%edi
  4063cd:	48 89 de             	mov    %rbx,%rsi
  4063d0:	e8 7b b3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4063d5:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  4063da:	44 0f b6 bc 24 9e 00 	movzbl 0x9e(%rsp),%r15d
  4063e1:	00 00 
  4063e3:	44 89 e1             	mov    %r12d,%ecx
  4063e6:	48 01 c1             	add    %rax,%rcx
  4063e9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4063ed:	44 89 e0             	mov    %r12d,%eax
  4063f0:	83 e0 1f             	and    $0x1f,%eax
  4063f3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4063f7:	48 83 c3 20          	add    $0x20,%rbx
  4063fb:	4c 89 b4 24 90 21 00 	mov    %r14,0x2190(%rsp)
  406402:	00 
  406403:	48 c7 84 24 98 21 00 	movq   $0x0,0x2198(%rsp)
  40640a:	00 00 00 00 00 
  40640f:	c5 f8 28 05 49 5d 00 	vmovaps 0x5d49(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406416:	00 
  406417:	c5 f8 11 84 24 a0 21 	vmovups %xmm0,0x21a0(%rsp)
  40641e:	00 00 
  406420:	48 8d b4 24 90 21 00 	lea    0x2190(%rsp),%rsi
  406427:	00 
  406428:	48 89 df             	mov    %rbx,%rdi
  40642b:	e8 80 ad ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406430:	88 84 24 9e 00 00 00 	mov    %al,0x9e(%rsp)
  406437:	4c 89 b4 24 70 21 00 	mov    %r14,0x2170(%rsp)
  40643e:	00 
  40643f:	48 c7 84 24 78 21 00 	movq   $0x0,0x2178(%rsp)
  406446:	00 00 00 00 00 
  40644b:	c5 f8 28 05 0d 5d 00 	vmovaps 0x5d0d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406452:	00 
  406453:	c5 f8 11 84 24 80 21 	vmovups %xmm0,0x2180(%rsp)
  40645a:	00 00 
  40645c:	48 8d 94 24 70 21 00 	lea    0x2170(%rsp),%rdx
  406463:	00 
  406464:	44 89 ff             	mov    %r15d,%edi
  406467:	48 89 de             	mov    %rbx,%rsi
  40646a:	e8 e1 b2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40646f:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  406474:	44 0f b6 bc 24 9f 00 	movzbl 0x9f(%rsp),%r15d
  40647b:	00 00 
  40647d:	44 89 e1             	mov    %r12d,%ecx
  406480:	48 01 c1             	add    %rax,%rcx
  406483:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406487:	44 89 e0             	mov    %r12d,%eax
  40648a:	83 e0 1f             	and    $0x1f,%eax
  40648d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406491:	48 83 c3 20          	add    $0x20,%rbx
  406495:	4c 89 b4 24 50 21 00 	mov    %r14,0x2150(%rsp)
  40649c:	00 
  40649d:	48 c7 84 24 58 21 00 	movq   $0x0,0x2158(%rsp)
  4064a4:	00 00 00 00 00 
  4064a9:	c5 f8 28 05 af 5c 00 	vmovaps 0x5caf(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4064b0:	00 
  4064b1:	c5 f8 11 84 24 60 21 	vmovups %xmm0,0x2160(%rsp)
  4064b8:	00 00 
  4064ba:	48 8d b4 24 50 21 00 	lea    0x2150(%rsp),%rsi
  4064c1:	00 
  4064c2:	48 89 df             	mov    %rbx,%rdi
  4064c5:	e8 e6 ac ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4064ca:	88 84 24 9f 00 00 00 	mov    %al,0x9f(%rsp)
  4064d1:	4c 89 b4 24 30 21 00 	mov    %r14,0x2130(%rsp)
  4064d8:	00 
  4064d9:	48 c7 84 24 38 21 00 	movq   $0x0,0x2138(%rsp)
  4064e0:	00 00 00 00 00 
  4064e5:	c5 f8 28 05 73 5c 00 	vmovaps 0x5c73(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4064ec:	00 
  4064ed:	c5 f8 11 84 24 40 21 	vmovups %xmm0,0x2140(%rsp)
  4064f4:	00 00 
  4064f6:	48 8d 94 24 30 21 00 	lea    0x2130(%rsp),%rdx
  4064fd:	00 
  4064fe:	44 89 ff             	mov    %r15d,%edi
  406501:	48 89 de             	mov    %rbx,%rsi
  406504:	e8 47 b2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406509:	0f b6 04 24          	movzbl (%rsp),%eax
  40650d:	44 0f b6 bc 24 a0 00 	movzbl 0xa0(%rsp),%r15d
  406514:	00 00 
  406516:	44 89 e1             	mov    %r12d,%ecx
  406519:	48 01 c1             	add    %rax,%rcx
  40651c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406520:	44 89 e0             	mov    %r12d,%eax
  406523:	83 e0 1f             	and    $0x1f,%eax
  406526:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40652a:	48 83 c3 20          	add    $0x20,%rbx
  40652e:	4c 89 b4 24 10 21 00 	mov    %r14,0x2110(%rsp)
  406535:	00 
  406536:	48 c7 84 24 18 21 00 	movq   $0x0,0x2118(%rsp)
  40653d:	00 00 00 00 00 
  406542:	c5 f8 28 05 16 5c 00 	vmovaps 0x5c16(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406549:	00 
  40654a:	c5 f8 11 84 24 20 21 	vmovups %xmm0,0x2120(%rsp)
  406551:	00 00 
  406553:	48 8d b4 24 10 21 00 	lea    0x2110(%rsp),%rsi
  40655a:	00 
  40655b:	48 89 df             	mov    %rbx,%rdi
  40655e:	e8 4d ac ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406563:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40656a:	4c 89 b4 24 f0 20 00 	mov    %r14,0x20f0(%rsp)
  406571:	00 
  406572:	48 c7 84 24 f8 20 00 	movq   $0x0,0x20f8(%rsp)
  406579:	00 00 00 00 00 
  40657e:	c5 f8 28 05 da 5b 00 	vmovaps 0x5bda(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406585:	00 
  406586:	c5 f8 11 84 24 00 21 	vmovups %xmm0,0x2100(%rsp)
  40658d:	00 00 
  40658f:	48 8d 94 24 f0 20 00 	lea    0x20f0(%rsp),%rdx
  406596:	00 
  406597:	44 89 ff             	mov    %r15d,%edi
  40659a:	48 89 de             	mov    %rbx,%rsi
  40659d:	e8 ae b1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4065a2:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4065a7:	44 0f b6 bc 24 a1 00 	movzbl 0xa1(%rsp),%r15d
  4065ae:	00 00 
  4065b0:	44 89 e1             	mov    %r12d,%ecx
  4065b3:	48 01 c1             	add    %rax,%rcx
  4065b6:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4065ba:	44 89 e0             	mov    %r12d,%eax
  4065bd:	83 e0 1f             	and    $0x1f,%eax
  4065c0:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4065c4:	48 83 c3 20          	add    $0x20,%rbx
  4065c8:	4c 89 b4 24 d0 20 00 	mov    %r14,0x20d0(%rsp)
  4065cf:	00 
  4065d0:	48 c7 84 24 d8 20 00 	movq   $0x0,0x20d8(%rsp)
  4065d7:	00 00 00 00 00 
  4065dc:	c5 f8 28 05 7c 5b 00 	vmovaps 0x5b7c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4065e3:	00 
  4065e4:	c5 f8 11 84 24 e0 20 	vmovups %xmm0,0x20e0(%rsp)
  4065eb:	00 00 
  4065ed:	48 8d b4 24 d0 20 00 	lea    0x20d0(%rsp),%rsi
  4065f4:	00 
  4065f5:	48 89 df             	mov    %rbx,%rdi
  4065f8:	e8 b3 ab ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4065fd:	88 84 24 a1 00 00 00 	mov    %al,0xa1(%rsp)
  406604:	4c 89 b4 24 b0 20 00 	mov    %r14,0x20b0(%rsp)
  40660b:	00 
  40660c:	48 c7 84 24 b8 20 00 	movq   $0x0,0x20b8(%rsp)
  406613:	00 00 00 00 00 
  406618:	c5 f8 28 05 40 5b 00 	vmovaps 0x5b40(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40661f:	00 
  406620:	c5 f8 11 84 24 c0 20 	vmovups %xmm0,0x20c0(%rsp)
  406627:	00 00 
  406629:	48 8d 94 24 b0 20 00 	lea    0x20b0(%rsp),%rdx
  406630:	00 
  406631:	44 89 ff             	mov    %r15d,%edi
  406634:	48 89 de             	mov    %rbx,%rsi
  406637:	e8 14 b1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40663c:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  406641:	44 0f b6 bc 24 a2 00 	movzbl 0xa2(%rsp),%r15d
  406648:	00 00 
  40664a:	44 89 e1             	mov    %r12d,%ecx
  40664d:	48 01 c1             	add    %rax,%rcx
  406650:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406654:	44 89 e0             	mov    %r12d,%eax
  406657:	83 e0 1f             	and    $0x1f,%eax
  40665a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40665e:	48 83 c3 20          	add    $0x20,%rbx
  406662:	4c 89 b4 24 90 20 00 	mov    %r14,0x2090(%rsp)
  406669:	00 
  40666a:	48 c7 84 24 98 20 00 	movq   $0x0,0x2098(%rsp)
  406671:	00 00 00 00 00 
  406676:	c5 f8 28 05 e2 5a 00 	vmovaps 0x5ae2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40667d:	00 
  40667e:	c5 f8 11 84 24 a0 20 	vmovups %xmm0,0x20a0(%rsp)
  406685:	00 00 
  406687:	48 8d b4 24 90 20 00 	lea    0x2090(%rsp),%rsi
  40668e:	00 
  40668f:	48 89 df             	mov    %rbx,%rdi
  406692:	e8 19 ab ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406697:	88 84 24 a2 00 00 00 	mov    %al,0xa2(%rsp)
  40669e:	4c 89 b4 24 70 20 00 	mov    %r14,0x2070(%rsp)
  4066a5:	00 
  4066a6:	48 c7 84 24 78 20 00 	movq   $0x0,0x2078(%rsp)
  4066ad:	00 00 00 00 00 
  4066b2:	c5 f8 28 05 a6 5a 00 	vmovaps 0x5aa6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4066b9:	00 
  4066ba:	c5 f8 11 84 24 80 20 	vmovups %xmm0,0x2080(%rsp)
  4066c1:	00 00 
  4066c3:	48 8d 94 24 70 20 00 	lea    0x2070(%rsp),%rdx
  4066ca:	00 
  4066cb:	44 89 ff             	mov    %r15d,%edi
  4066ce:	48 89 de             	mov    %rbx,%rsi
  4066d1:	e8 7a b0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4066d6:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  4066db:	44 0f b6 bc 24 a3 00 	movzbl 0xa3(%rsp),%r15d
  4066e2:	00 00 
  4066e4:	44 89 e1             	mov    %r12d,%ecx
  4066e7:	48 01 c1             	add    %rax,%rcx
  4066ea:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4066ee:	44 89 e0             	mov    %r12d,%eax
  4066f1:	83 e0 1f             	and    $0x1f,%eax
  4066f4:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4066f8:	48 83 c3 20          	add    $0x20,%rbx
  4066fc:	4c 89 b4 24 50 20 00 	mov    %r14,0x2050(%rsp)
  406703:	00 
  406704:	48 c7 84 24 58 20 00 	movq   $0x0,0x2058(%rsp)
  40670b:	00 00 00 00 00 
  406710:	c5 f8 28 05 48 5a 00 	vmovaps 0x5a48(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406717:	00 
  406718:	c5 f8 11 84 24 60 20 	vmovups %xmm0,0x2060(%rsp)
  40671f:	00 00 
  406721:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  406728:	00 
  406729:	48 89 df             	mov    %rbx,%rdi
  40672c:	e8 7f aa ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406731:	88 84 24 a3 00 00 00 	mov    %al,0xa3(%rsp)
  406738:	4c 89 b4 24 30 20 00 	mov    %r14,0x2030(%rsp)
  40673f:	00 
  406740:	48 c7 84 24 38 20 00 	movq   $0x0,0x2038(%rsp)
  406747:	00 00 00 00 00 
  40674c:	c5 f8 28 05 0c 5a 00 	vmovaps 0x5a0c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406753:	00 
  406754:	c5 f8 11 84 24 40 20 	vmovups %xmm0,0x2040(%rsp)
  40675b:	00 00 
  40675d:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  406764:	00 
  406765:	44 89 ff             	mov    %r15d,%edi
  406768:	48 89 de             	mov    %rbx,%rsi
  40676b:	e8 e0 af ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406770:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  406775:	44 0f b6 bc 24 a4 00 	movzbl 0xa4(%rsp),%r15d
  40677c:	00 00 
  40677e:	44 89 e1             	mov    %r12d,%ecx
  406781:	48 01 c1             	add    %rax,%rcx
  406784:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406788:	44 89 e0             	mov    %r12d,%eax
  40678b:	83 e0 1f             	and    $0x1f,%eax
  40678e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406792:	48 83 c3 20          	add    $0x20,%rbx
  406796:	4c 89 b4 24 10 20 00 	mov    %r14,0x2010(%rsp)
  40679d:	00 
  40679e:	48 c7 84 24 18 20 00 	movq   $0x0,0x2018(%rsp)
  4067a5:	00 00 00 00 00 
  4067aa:	c5 f8 28 05 ae 59 00 	vmovaps 0x59ae(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4067b1:	00 
  4067b2:	c5 f8 11 84 24 20 20 	vmovups %xmm0,0x2020(%rsp)
  4067b9:	00 00 
  4067bb:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  4067c2:	00 
  4067c3:	48 89 df             	mov    %rbx,%rdi
  4067c6:	e8 e5 a9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4067cb:	88 84 24 a4 00 00 00 	mov    %al,0xa4(%rsp)
  4067d2:	4c 89 b4 24 f0 1f 00 	mov    %r14,0x1ff0(%rsp)
  4067d9:	00 
  4067da:	48 c7 84 24 f8 1f 00 	movq   $0x0,0x1ff8(%rsp)
  4067e1:	00 00 00 00 00 
  4067e6:	c5 f8 28 05 72 59 00 	vmovaps 0x5972(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4067ed:	00 
  4067ee:	c5 f8 11 84 24 00 20 	vmovups %xmm0,0x2000(%rsp)
  4067f5:	00 00 
  4067f7:	48 8d 94 24 f0 1f 00 	lea    0x1ff0(%rsp),%rdx
  4067fe:	00 
  4067ff:	44 89 ff             	mov    %r15d,%edi
  406802:	48 89 de             	mov    %rbx,%rsi
  406805:	e8 46 af ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40680a:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  40680f:	44 0f b6 bc 24 a5 00 	movzbl 0xa5(%rsp),%r15d
  406816:	00 00 
  406818:	44 89 e1             	mov    %r12d,%ecx
  40681b:	48 01 c1             	add    %rax,%rcx
  40681e:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406822:	44 89 e0             	mov    %r12d,%eax
  406825:	83 e0 1f             	and    $0x1f,%eax
  406828:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40682c:	48 83 c3 20          	add    $0x20,%rbx
  406830:	4c 89 b4 24 d0 1f 00 	mov    %r14,0x1fd0(%rsp)
  406837:	00 
  406838:	48 c7 84 24 d8 1f 00 	movq   $0x0,0x1fd8(%rsp)
  40683f:	00 00 00 00 00 
  406844:	c5 f8 28 05 14 59 00 	vmovaps 0x5914(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40684b:	00 
  40684c:	c5 f8 11 84 24 e0 1f 	vmovups %xmm0,0x1fe0(%rsp)
  406853:	00 00 
  406855:	48 8d b4 24 d0 1f 00 	lea    0x1fd0(%rsp),%rsi
  40685c:	00 
  40685d:	48 89 df             	mov    %rbx,%rdi
  406860:	e8 4b a9 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406865:	88 84 24 a5 00 00 00 	mov    %al,0xa5(%rsp)
  40686c:	4c 89 b4 24 b0 1f 00 	mov    %r14,0x1fb0(%rsp)
  406873:	00 
  406874:	48 c7 84 24 b8 1f 00 	movq   $0x0,0x1fb8(%rsp)
  40687b:	00 00 00 00 00 
  406880:	c5 f8 28 05 d8 58 00 	vmovaps 0x58d8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406887:	00 
  406888:	c5 f8 11 84 24 c0 1f 	vmovups %xmm0,0x1fc0(%rsp)
  40688f:	00 00 
  406891:	48 8d 94 24 b0 1f 00 	lea    0x1fb0(%rsp),%rdx
  406898:	00 
  406899:	44 89 ff             	mov    %r15d,%edi
  40689c:	48 89 de             	mov    %rbx,%rsi
  40689f:	e8 ac ae ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4068a4:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  4068a9:	44 0f b6 bc 24 a6 00 	movzbl 0xa6(%rsp),%r15d
  4068b0:	00 00 
  4068b2:	44 89 e1             	mov    %r12d,%ecx
  4068b5:	48 01 c1             	add    %rax,%rcx
  4068b8:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4068bc:	44 89 e0             	mov    %r12d,%eax
  4068bf:	83 e0 1f             	and    $0x1f,%eax
  4068c2:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4068c6:	48 83 c3 20          	add    $0x20,%rbx
  4068ca:	4c 89 b4 24 90 1f 00 	mov    %r14,0x1f90(%rsp)
  4068d1:	00 
  4068d2:	48 c7 84 24 98 1f 00 	movq   $0x0,0x1f98(%rsp)
  4068d9:	00 00 00 00 00 
  4068de:	c5 f8 28 05 7a 58 00 	vmovaps 0x587a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4068e5:	00 
  4068e6:	c5 f8 11 84 24 a0 1f 	vmovups %xmm0,0x1fa0(%rsp)
  4068ed:	00 00 
  4068ef:	48 8d b4 24 90 1f 00 	lea    0x1f90(%rsp),%rsi
  4068f6:	00 
  4068f7:	48 89 df             	mov    %rbx,%rdi
  4068fa:	e8 b1 a8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4068ff:	88 84 24 a6 00 00 00 	mov    %al,0xa6(%rsp)
  406906:	4c 89 b4 24 70 1f 00 	mov    %r14,0x1f70(%rsp)
  40690d:	00 
  40690e:	48 c7 84 24 78 1f 00 	movq   $0x0,0x1f78(%rsp)
  406915:	00 00 00 00 00 
  40691a:	c5 f8 28 05 3e 58 00 	vmovaps 0x583e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406921:	00 
  406922:	c5 f8 11 84 24 80 1f 	vmovups %xmm0,0x1f80(%rsp)
  406929:	00 00 
  40692b:	48 8d 94 24 70 1f 00 	lea    0x1f70(%rsp),%rdx
  406932:	00 
  406933:	44 89 ff             	mov    %r15d,%edi
  406936:	48 89 de             	mov    %rbx,%rsi
  406939:	e8 12 ae ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40693e:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  406943:	44 0f b6 bc 24 a7 00 	movzbl 0xa7(%rsp),%r15d
  40694a:	00 00 
  40694c:	44 89 e1             	mov    %r12d,%ecx
  40694f:	48 01 c1             	add    %rax,%rcx
  406952:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406956:	44 89 e0             	mov    %r12d,%eax
  406959:	83 e0 1f             	and    $0x1f,%eax
  40695c:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406960:	48 83 c3 20          	add    $0x20,%rbx
  406964:	4c 89 b4 24 50 1f 00 	mov    %r14,0x1f50(%rsp)
  40696b:	00 
  40696c:	48 c7 84 24 58 1f 00 	movq   $0x0,0x1f58(%rsp)
  406973:	00 00 00 00 00 
  406978:	c5 f8 28 05 e0 57 00 	vmovaps 0x57e0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40697f:	00 
  406980:	c5 f8 11 84 24 60 1f 	vmovups %xmm0,0x1f60(%rsp)
  406987:	00 00 
  406989:	48 8d b4 24 50 1f 00 	lea    0x1f50(%rsp),%rsi
  406990:	00 
  406991:	48 89 df             	mov    %rbx,%rdi
  406994:	e8 17 a8 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406999:	88 84 24 a7 00 00 00 	mov    %al,0xa7(%rsp)
  4069a0:	4c 89 b4 24 30 1f 00 	mov    %r14,0x1f30(%rsp)
  4069a7:	00 
  4069a8:	48 c7 84 24 38 1f 00 	movq   $0x0,0x1f38(%rsp)
  4069af:	00 00 00 00 00 
  4069b4:	c5 f8 28 05 a4 57 00 	vmovaps 0x57a4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4069bb:	00 
  4069bc:	c5 f8 11 84 24 40 1f 	vmovups %xmm0,0x1f40(%rsp)
  4069c3:	00 00 
  4069c5:	48 8d 94 24 30 1f 00 	lea    0x1f30(%rsp),%rdx
  4069cc:	00 
  4069cd:	44 89 ff             	mov    %r15d,%edi
  4069d0:	48 89 de             	mov    %rbx,%rsi
  4069d3:	e8 78 ad ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4069d8:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  4069dd:	44 0f b6 bc 24 a8 00 	movzbl 0xa8(%rsp),%r15d
  4069e4:	00 00 
  4069e6:	44 89 e1             	mov    %r12d,%ecx
  4069e9:	48 01 c1             	add    %rax,%rcx
  4069ec:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4069f0:	44 89 e0             	mov    %r12d,%eax
  4069f3:	83 e0 1f             	and    $0x1f,%eax
  4069f6:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4069fa:	48 83 c3 20          	add    $0x20,%rbx
  4069fe:	4c 89 b4 24 10 1f 00 	mov    %r14,0x1f10(%rsp)
  406a05:	00 
  406a06:	48 c7 84 24 18 1f 00 	movq   $0x0,0x1f18(%rsp)
  406a0d:	00 00 00 00 00 
  406a12:	c5 f8 28 05 46 57 00 	vmovaps 0x5746(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406a19:	00 
  406a1a:	c5 f8 11 84 24 20 1f 	vmovups %xmm0,0x1f20(%rsp)
  406a21:	00 00 
  406a23:	48 8d b4 24 10 1f 00 	lea    0x1f10(%rsp),%rsi
  406a2a:	00 
  406a2b:	48 89 df             	mov    %rbx,%rdi
  406a2e:	e8 7d a7 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406a33:	88 84 24 a8 00 00 00 	mov    %al,0xa8(%rsp)
  406a3a:	4c 89 b4 24 f0 1e 00 	mov    %r14,0x1ef0(%rsp)
  406a41:	00 
  406a42:	48 c7 84 24 f8 1e 00 	movq   $0x0,0x1ef8(%rsp)
  406a49:	00 00 00 00 00 
  406a4e:	c5 f8 28 05 0a 57 00 	vmovaps 0x570a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406a55:	00 
  406a56:	c5 f8 11 84 24 00 1f 	vmovups %xmm0,0x1f00(%rsp)
  406a5d:	00 00 
  406a5f:	48 8d 94 24 f0 1e 00 	lea    0x1ef0(%rsp),%rdx
  406a66:	00 
  406a67:	44 89 ff             	mov    %r15d,%edi
  406a6a:	48 89 de             	mov    %rbx,%rsi
  406a6d:	e8 de ac ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406a72:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  406a77:	44 0f b6 bc 24 a9 00 	movzbl 0xa9(%rsp),%r15d
  406a7e:	00 00 
  406a80:	44 89 e1             	mov    %r12d,%ecx
  406a83:	48 01 c1             	add    %rax,%rcx
  406a86:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406a8a:	44 89 e0             	mov    %r12d,%eax
  406a8d:	83 e0 1f             	and    $0x1f,%eax
  406a90:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406a94:	48 83 c3 20          	add    $0x20,%rbx
  406a98:	4c 89 b4 24 d0 1e 00 	mov    %r14,0x1ed0(%rsp)
  406a9f:	00 
  406aa0:	48 c7 84 24 d8 1e 00 	movq   $0x0,0x1ed8(%rsp)
  406aa7:	00 00 00 00 00 
  406aac:	c5 f8 28 05 ac 56 00 	vmovaps 0x56ac(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406ab3:	00 
  406ab4:	c5 f8 11 84 24 e0 1e 	vmovups %xmm0,0x1ee0(%rsp)
  406abb:	00 00 
  406abd:	48 8d b4 24 d0 1e 00 	lea    0x1ed0(%rsp),%rsi
  406ac4:	00 
  406ac5:	48 89 df             	mov    %rbx,%rdi
  406ac8:	e8 e3 a6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406acd:	88 84 24 a9 00 00 00 	mov    %al,0xa9(%rsp)
  406ad4:	4c 89 b4 24 b0 1e 00 	mov    %r14,0x1eb0(%rsp)
  406adb:	00 
  406adc:	48 c7 84 24 b8 1e 00 	movq   $0x0,0x1eb8(%rsp)
  406ae3:	00 00 00 00 00 
  406ae8:	c5 f8 28 05 70 56 00 	vmovaps 0x5670(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406aef:	00 
  406af0:	c5 f8 11 84 24 c0 1e 	vmovups %xmm0,0x1ec0(%rsp)
  406af7:	00 00 
  406af9:	48 8d 94 24 b0 1e 00 	lea    0x1eb0(%rsp),%rdx
  406b00:	00 
  406b01:	44 89 ff             	mov    %r15d,%edi
  406b04:	48 89 de             	mov    %rbx,%rsi
  406b07:	e8 44 ac ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406b0c:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  406b11:	44 0f b6 bc 24 aa 00 	movzbl 0xaa(%rsp),%r15d
  406b18:	00 00 
  406b1a:	44 89 e1             	mov    %r12d,%ecx
  406b1d:	48 01 c1             	add    %rax,%rcx
  406b20:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406b24:	44 89 e0             	mov    %r12d,%eax
  406b27:	83 e0 1f             	and    $0x1f,%eax
  406b2a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406b2e:	48 83 c3 20          	add    $0x20,%rbx
  406b32:	4c 89 b4 24 90 1e 00 	mov    %r14,0x1e90(%rsp)
  406b39:	00 
  406b3a:	48 c7 84 24 98 1e 00 	movq   $0x0,0x1e98(%rsp)
  406b41:	00 00 00 00 00 
  406b46:	c5 f8 28 05 12 56 00 	vmovaps 0x5612(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406b4d:	00 
  406b4e:	c5 f8 11 84 24 a0 1e 	vmovups %xmm0,0x1ea0(%rsp)
  406b55:	00 00 
  406b57:	48 8d b4 24 90 1e 00 	lea    0x1e90(%rsp),%rsi
  406b5e:	00 
  406b5f:	48 89 df             	mov    %rbx,%rdi
  406b62:	e8 49 a6 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406b67:	88 84 24 aa 00 00 00 	mov    %al,0xaa(%rsp)
  406b6e:	4c 89 b4 24 70 1e 00 	mov    %r14,0x1e70(%rsp)
  406b75:	00 
  406b76:	48 c7 84 24 78 1e 00 	movq   $0x0,0x1e78(%rsp)
  406b7d:	00 00 00 00 00 
  406b82:	c5 f8 28 05 d6 55 00 	vmovaps 0x55d6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406b89:	00 
  406b8a:	c5 f8 11 84 24 80 1e 	vmovups %xmm0,0x1e80(%rsp)
  406b91:	00 00 
  406b93:	48 8d 94 24 70 1e 00 	lea    0x1e70(%rsp),%rdx
  406b9a:	00 
  406b9b:	44 89 ff             	mov    %r15d,%edi
  406b9e:	48 89 de             	mov    %rbx,%rsi
  406ba1:	e8 aa ab ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406ba6:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  406bab:	44 0f b6 bc 24 ab 00 	movzbl 0xab(%rsp),%r15d
  406bb2:	00 00 
  406bb4:	44 89 e1             	mov    %r12d,%ecx
  406bb7:	48 01 c1             	add    %rax,%rcx
  406bba:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406bbe:	44 89 e0             	mov    %r12d,%eax
  406bc1:	83 e0 1f             	and    $0x1f,%eax
  406bc4:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406bc8:	48 83 c3 20          	add    $0x20,%rbx
  406bcc:	4c 89 b4 24 50 1e 00 	mov    %r14,0x1e50(%rsp)
  406bd3:	00 
  406bd4:	48 c7 84 24 58 1e 00 	movq   $0x0,0x1e58(%rsp)
  406bdb:	00 00 00 00 00 
  406be0:	c5 f8 28 05 78 55 00 	vmovaps 0x5578(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406be7:	00 
  406be8:	c5 f8 11 84 24 60 1e 	vmovups %xmm0,0x1e60(%rsp)
  406bef:	00 00 
  406bf1:	48 8d b4 24 50 1e 00 	lea    0x1e50(%rsp),%rsi
  406bf8:	00 
  406bf9:	48 89 df             	mov    %rbx,%rdi
  406bfc:	e8 af a5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406c01:	88 84 24 ab 00 00 00 	mov    %al,0xab(%rsp)
  406c08:	4c 89 b4 24 30 1e 00 	mov    %r14,0x1e30(%rsp)
  406c0f:	00 
  406c10:	48 c7 84 24 38 1e 00 	movq   $0x0,0x1e38(%rsp)
  406c17:	00 00 00 00 00 
  406c1c:	c5 f8 28 05 3c 55 00 	vmovaps 0x553c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406c23:	00 
  406c24:	c5 f8 11 84 24 40 1e 	vmovups %xmm0,0x1e40(%rsp)
  406c2b:	00 00 
  406c2d:	48 8d 94 24 30 1e 00 	lea    0x1e30(%rsp),%rdx
  406c34:	00 
  406c35:	44 89 ff             	mov    %r15d,%edi
  406c38:	48 89 de             	mov    %rbx,%rsi
  406c3b:	e8 10 ab ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406c40:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  406c45:	44 0f b6 bc 24 ac 00 	movzbl 0xac(%rsp),%r15d
  406c4c:	00 00 
  406c4e:	44 89 e1             	mov    %r12d,%ecx
  406c51:	48 01 c1             	add    %rax,%rcx
  406c54:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406c58:	44 89 e0             	mov    %r12d,%eax
  406c5b:	83 e0 1f             	and    $0x1f,%eax
  406c5e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406c62:	48 83 c3 20          	add    $0x20,%rbx
  406c66:	4c 89 b4 24 10 1e 00 	mov    %r14,0x1e10(%rsp)
  406c6d:	00 
  406c6e:	48 c7 84 24 18 1e 00 	movq   $0x0,0x1e18(%rsp)
  406c75:	00 00 00 00 00 
  406c7a:	c5 f8 28 05 de 54 00 	vmovaps 0x54de(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406c81:	00 
  406c82:	c5 f8 11 84 24 20 1e 	vmovups %xmm0,0x1e20(%rsp)
  406c89:	00 00 
  406c8b:	48 8d b4 24 10 1e 00 	lea    0x1e10(%rsp),%rsi
  406c92:	00 
  406c93:	48 89 df             	mov    %rbx,%rdi
  406c96:	e8 15 a5 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406c9b:	88 84 24 ac 00 00 00 	mov    %al,0xac(%rsp)
  406ca2:	4c 89 b4 24 f0 1d 00 	mov    %r14,0x1df0(%rsp)
  406ca9:	00 
  406caa:	48 c7 84 24 f8 1d 00 	movq   $0x0,0x1df8(%rsp)
  406cb1:	00 00 00 00 00 
  406cb6:	c5 f8 28 05 a2 54 00 	vmovaps 0x54a2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406cbd:	00 
  406cbe:	c5 f8 11 84 24 00 1e 	vmovups %xmm0,0x1e00(%rsp)
  406cc5:	00 00 
  406cc7:	48 8d 94 24 f0 1d 00 	lea    0x1df0(%rsp),%rdx
  406cce:	00 
  406ccf:	44 89 ff             	mov    %r15d,%edi
  406cd2:	48 89 de             	mov    %rbx,%rsi
  406cd5:	e8 76 aa ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406cda:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  406cdf:	44 0f b6 bc 24 ad 00 	movzbl 0xad(%rsp),%r15d
  406ce6:	00 00 
  406ce8:	44 89 e1             	mov    %r12d,%ecx
  406ceb:	48 01 c1             	add    %rax,%rcx
  406cee:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406cf2:	44 89 e0             	mov    %r12d,%eax
  406cf5:	83 e0 1f             	and    $0x1f,%eax
  406cf8:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406cfc:	48 83 c3 20          	add    $0x20,%rbx
  406d00:	4c 89 b4 24 d0 1d 00 	mov    %r14,0x1dd0(%rsp)
  406d07:	00 
  406d08:	48 c7 84 24 d8 1d 00 	movq   $0x0,0x1dd8(%rsp)
  406d0f:	00 00 00 00 00 
  406d14:	c5 f8 28 05 44 54 00 	vmovaps 0x5444(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406d1b:	00 
  406d1c:	c5 f8 11 84 24 e0 1d 	vmovups %xmm0,0x1de0(%rsp)
  406d23:	00 00 
  406d25:	48 8d b4 24 d0 1d 00 	lea    0x1dd0(%rsp),%rsi
  406d2c:	00 
  406d2d:	48 89 df             	mov    %rbx,%rdi
  406d30:	e8 7b a4 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406d35:	88 84 24 ad 00 00 00 	mov    %al,0xad(%rsp)
  406d3c:	4c 89 b4 24 b0 1d 00 	mov    %r14,0x1db0(%rsp)
  406d43:	00 
  406d44:	48 c7 84 24 b8 1d 00 	movq   $0x0,0x1db8(%rsp)
  406d4b:	00 00 00 00 00 
  406d50:	c5 f8 28 05 08 54 00 	vmovaps 0x5408(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406d57:	00 
  406d58:	c5 f8 11 84 24 c0 1d 	vmovups %xmm0,0x1dc0(%rsp)
  406d5f:	00 00 
  406d61:	48 8d 94 24 b0 1d 00 	lea    0x1db0(%rsp),%rdx
  406d68:	00 
  406d69:	44 89 ff             	mov    %r15d,%edi
  406d6c:	48 89 de             	mov    %rbx,%rsi
  406d6f:	e8 dc a9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406d74:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  406d79:	44 0f b6 bc 24 ae 00 	movzbl 0xae(%rsp),%r15d
  406d80:	00 00 
  406d82:	44 89 e1             	mov    %r12d,%ecx
  406d85:	48 01 c1             	add    %rax,%rcx
  406d88:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406d8c:	44 89 e0             	mov    %r12d,%eax
  406d8f:	83 e0 1f             	and    $0x1f,%eax
  406d92:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406d96:	48 83 c3 20          	add    $0x20,%rbx
  406d9a:	4c 89 b4 24 90 1d 00 	mov    %r14,0x1d90(%rsp)
  406da1:	00 
  406da2:	48 c7 84 24 98 1d 00 	movq   $0x0,0x1d98(%rsp)
  406da9:	00 00 00 00 00 
  406dae:	c5 f8 28 05 aa 53 00 	vmovaps 0x53aa(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406db5:	00 
  406db6:	c5 f8 11 84 24 a0 1d 	vmovups %xmm0,0x1da0(%rsp)
  406dbd:	00 00 
  406dbf:	48 8d b4 24 90 1d 00 	lea    0x1d90(%rsp),%rsi
  406dc6:	00 
  406dc7:	48 89 df             	mov    %rbx,%rdi
  406dca:	e8 e1 a3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406dcf:	88 84 24 ae 00 00 00 	mov    %al,0xae(%rsp)
  406dd6:	4c 89 b4 24 70 1d 00 	mov    %r14,0x1d70(%rsp)
  406ddd:	00 
  406dde:	48 c7 84 24 78 1d 00 	movq   $0x0,0x1d78(%rsp)
  406de5:	00 00 00 00 00 
  406dea:	c5 f8 28 05 6e 53 00 	vmovaps 0x536e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406df1:	00 
  406df2:	c5 f8 11 84 24 80 1d 	vmovups %xmm0,0x1d80(%rsp)
  406df9:	00 00 
  406dfb:	48 8d 94 24 70 1d 00 	lea    0x1d70(%rsp),%rdx
  406e02:	00 
  406e03:	44 89 ff             	mov    %r15d,%edi
  406e06:	48 89 de             	mov    %rbx,%rsi
  406e09:	e8 42 a9 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406e0e:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  406e13:	44 0f b6 bc 24 af 00 	movzbl 0xaf(%rsp),%r15d
  406e1a:	00 00 
  406e1c:	44 89 e1             	mov    %r12d,%ecx
  406e1f:	48 01 c1             	add    %rax,%rcx
  406e22:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406e26:	44 89 e0             	mov    %r12d,%eax
  406e29:	83 e0 1f             	and    $0x1f,%eax
  406e2c:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406e30:	48 83 c3 20          	add    $0x20,%rbx
  406e34:	4c 89 b4 24 50 1d 00 	mov    %r14,0x1d50(%rsp)
  406e3b:	00 
  406e3c:	48 c7 84 24 58 1d 00 	movq   $0x0,0x1d58(%rsp)
  406e43:	00 00 00 00 00 
  406e48:	c5 f8 28 05 10 53 00 	vmovaps 0x5310(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406e4f:	00 
  406e50:	c5 f8 11 84 24 60 1d 	vmovups %xmm0,0x1d60(%rsp)
  406e57:	00 00 
  406e59:	48 8d b4 24 50 1d 00 	lea    0x1d50(%rsp),%rsi
  406e60:	00 
  406e61:	48 89 df             	mov    %rbx,%rdi
  406e64:	e8 47 a3 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406e69:	88 84 24 af 00 00 00 	mov    %al,0xaf(%rsp)
  406e70:	4c 89 b4 24 30 1d 00 	mov    %r14,0x1d30(%rsp)
  406e77:	00 
  406e78:	48 c7 84 24 38 1d 00 	movq   $0x0,0x1d38(%rsp)
  406e7f:	00 00 00 00 00 
  406e84:	c5 f8 28 05 d4 52 00 	vmovaps 0x52d4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406e8b:	00 
  406e8c:	c5 f8 11 84 24 40 1d 	vmovups %xmm0,0x1d40(%rsp)
  406e93:	00 00 
  406e95:	48 8d 94 24 30 1d 00 	lea    0x1d30(%rsp),%rdx
  406e9c:	00 
  406e9d:	44 89 ff             	mov    %r15d,%edi
  406ea0:	48 89 de             	mov    %rbx,%rsi
  406ea3:	e8 a8 a8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406ea8:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  406ead:	44 0f b6 bc 24 b0 00 	movzbl 0xb0(%rsp),%r15d
  406eb4:	00 00 
  406eb6:	44 89 e1             	mov    %r12d,%ecx
  406eb9:	48 01 c1             	add    %rax,%rcx
  406ebc:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406ec0:	44 89 e0             	mov    %r12d,%eax
  406ec3:	83 e0 1f             	and    $0x1f,%eax
  406ec6:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406eca:	48 83 c3 20          	add    $0x20,%rbx
  406ece:	4c 89 b4 24 10 1d 00 	mov    %r14,0x1d10(%rsp)
  406ed5:	00 
  406ed6:	48 c7 84 24 18 1d 00 	movq   $0x0,0x1d18(%rsp)
  406edd:	00 00 00 00 00 
  406ee2:	c5 f8 28 05 76 52 00 	vmovaps 0x5276(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406ee9:	00 
  406eea:	c5 f8 11 84 24 20 1d 	vmovups %xmm0,0x1d20(%rsp)
  406ef1:	00 00 
  406ef3:	48 8d b4 24 10 1d 00 	lea    0x1d10(%rsp),%rsi
  406efa:	00 
  406efb:	48 89 df             	mov    %rbx,%rdi
  406efe:	e8 ad a2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406f03:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
  406f0a:	4c 89 b4 24 f0 1c 00 	mov    %r14,0x1cf0(%rsp)
  406f11:	00 
  406f12:	48 c7 84 24 f8 1c 00 	movq   $0x0,0x1cf8(%rsp)
  406f19:	00 00 00 00 00 
  406f1e:	c5 f8 28 05 3a 52 00 	vmovaps 0x523a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406f25:	00 
  406f26:	c5 f8 11 84 24 00 1d 	vmovups %xmm0,0x1d00(%rsp)
  406f2d:	00 00 
  406f2f:	48 8d 94 24 f0 1c 00 	lea    0x1cf0(%rsp),%rdx
  406f36:	00 
  406f37:	44 89 ff             	mov    %r15d,%edi
  406f3a:	48 89 de             	mov    %rbx,%rsi
  406f3d:	e8 0e a8 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406f42:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  406f47:	44 0f b6 bc 24 b1 00 	movzbl 0xb1(%rsp),%r15d
  406f4e:	00 00 
  406f50:	44 89 e1             	mov    %r12d,%ecx
  406f53:	48 01 c1             	add    %rax,%rcx
  406f56:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406f5a:	44 89 e0             	mov    %r12d,%eax
  406f5d:	83 e0 1f             	and    $0x1f,%eax
  406f60:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406f64:	48 83 c3 20          	add    $0x20,%rbx
  406f68:	4c 89 b4 24 d0 1c 00 	mov    %r14,0x1cd0(%rsp)
  406f6f:	00 
  406f70:	48 c7 84 24 d8 1c 00 	movq   $0x0,0x1cd8(%rsp)
  406f77:	00 00 00 00 00 
  406f7c:	c5 f8 28 05 dc 51 00 	vmovaps 0x51dc(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406f83:	00 
  406f84:	c5 f8 11 84 24 e0 1c 	vmovups %xmm0,0x1ce0(%rsp)
  406f8b:	00 00 
  406f8d:	48 8d b4 24 d0 1c 00 	lea    0x1cd0(%rsp),%rsi
  406f94:	00 
  406f95:	48 89 df             	mov    %rbx,%rdi
  406f98:	e8 13 a2 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  406f9d:	88 84 24 b1 00 00 00 	mov    %al,0xb1(%rsp)
  406fa4:	4c 89 b4 24 b0 1c 00 	mov    %r14,0x1cb0(%rsp)
  406fab:	00 
  406fac:	48 c7 84 24 b8 1c 00 	movq   $0x0,0x1cb8(%rsp)
  406fb3:	00 00 00 00 00 
  406fb8:	c5 f8 28 05 a0 51 00 	vmovaps 0x51a0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  406fbf:	00 
  406fc0:	c5 f8 11 84 24 c0 1c 	vmovups %xmm0,0x1cc0(%rsp)
  406fc7:	00 00 
  406fc9:	48 8d 94 24 b0 1c 00 	lea    0x1cb0(%rsp),%rdx
  406fd0:	00 
  406fd1:	44 89 ff             	mov    %r15d,%edi
  406fd4:	48 89 de             	mov    %rbx,%rsi
  406fd7:	e8 74 a7 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  406fdc:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  406fe1:	44 0f b6 bc 24 b2 00 	movzbl 0xb2(%rsp),%r15d
  406fe8:	00 00 
  406fea:	44 89 e1             	mov    %r12d,%ecx
  406fed:	48 01 c1             	add    %rax,%rcx
  406ff0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  406ff4:	44 89 e0             	mov    %r12d,%eax
  406ff7:	83 e0 1f             	and    $0x1f,%eax
  406ffa:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  406ffe:	48 83 c3 20          	add    $0x20,%rbx
  407002:	4c 89 b4 24 90 1c 00 	mov    %r14,0x1c90(%rsp)
  407009:	00 
  40700a:	48 c7 84 24 98 1c 00 	movq   $0x0,0x1c98(%rsp)
  407011:	00 00 00 00 00 
  407016:	c5 f8 28 05 42 51 00 	vmovaps 0x5142(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40701d:	00 
  40701e:	c5 f8 11 84 24 a0 1c 	vmovups %xmm0,0x1ca0(%rsp)
  407025:	00 00 
  407027:	48 8d b4 24 90 1c 00 	lea    0x1c90(%rsp),%rsi
  40702e:	00 
  40702f:	48 89 df             	mov    %rbx,%rdi
  407032:	e8 79 a1 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407037:	88 84 24 b2 00 00 00 	mov    %al,0xb2(%rsp)
  40703e:	4c 89 b4 24 70 1c 00 	mov    %r14,0x1c70(%rsp)
  407045:	00 
  407046:	48 c7 84 24 78 1c 00 	movq   $0x0,0x1c78(%rsp)
  40704d:	00 00 00 00 00 
  407052:	c5 f8 28 05 06 51 00 	vmovaps 0x5106(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407059:	00 
  40705a:	c5 f8 11 84 24 80 1c 	vmovups %xmm0,0x1c80(%rsp)
  407061:	00 00 
  407063:	48 8d 94 24 70 1c 00 	lea    0x1c70(%rsp),%rdx
  40706a:	00 
  40706b:	44 89 ff             	mov    %r15d,%edi
  40706e:	48 89 de             	mov    %rbx,%rsi
  407071:	e8 da a6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407076:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  40707b:	44 0f b6 bc 24 b3 00 	movzbl 0xb3(%rsp),%r15d
  407082:	00 00 
  407084:	44 89 e1             	mov    %r12d,%ecx
  407087:	48 01 c1             	add    %rax,%rcx
  40708a:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40708e:	44 89 e0             	mov    %r12d,%eax
  407091:	83 e0 1f             	and    $0x1f,%eax
  407094:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407098:	48 83 c3 20          	add    $0x20,%rbx
  40709c:	4c 89 b4 24 50 1c 00 	mov    %r14,0x1c50(%rsp)
  4070a3:	00 
  4070a4:	48 c7 84 24 58 1c 00 	movq   $0x0,0x1c58(%rsp)
  4070ab:	00 00 00 00 00 
  4070b0:	c5 f8 28 05 a8 50 00 	vmovaps 0x50a8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4070b7:	00 
  4070b8:	c5 f8 11 84 24 60 1c 	vmovups %xmm0,0x1c60(%rsp)
  4070bf:	00 00 
  4070c1:	48 8d b4 24 50 1c 00 	lea    0x1c50(%rsp),%rsi
  4070c8:	00 
  4070c9:	48 89 df             	mov    %rbx,%rdi
  4070cc:	e8 df a0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4070d1:	88 84 24 b3 00 00 00 	mov    %al,0xb3(%rsp)
  4070d8:	4c 89 b4 24 30 1c 00 	mov    %r14,0x1c30(%rsp)
  4070df:	00 
  4070e0:	48 c7 84 24 38 1c 00 	movq   $0x0,0x1c38(%rsp)
  4070e7:	00 00 00 00 00 
  4070ec:	c5 f8 28 05 6c 50 00 	vmovaps 0x506c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4070f3:	00 
  4070f4:	c5 f8 11 84 24 40 1c 	vmovups %xmm0,0x1c40(%rsp)
  4070fb:	00 00 
  4070fd:	48 8d 94 24 30 1c 00 	lea    0x1c30(%rsp),%rdx
  407104:	00 
  407105:	44 89 ff             	mov    %r15d,%edi
  407108:	48 89 de             	mov    %rbx,%rsi
  40710b:	e8 40 a6 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407110:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  407115:	44 0f b6 bc 24 b4 00 	movzbl 0xb4(%rsp),%r15d
  40711c:	00 00 
  40711e:	44 89 e1             	mov    %r12d,%ecx
  407121:	48 01 c1             	add    %rax,%rcx
  407124:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407128:	44 89 e0             	mov    %r12d,%eax
  40712b:	83 e0 1f             	and    $0x1f,%eax
  40712e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407132:	48 83 c3 20          	add    $0x20,%rbx
  407136:	4c 89 b4 24 10 1c 00 	mov    %r14,0x1c10(%rsp)
  40713d:	00 
  40713e:	48 c7 84 24 18 1c 00 	movq   $0x0,0x1c18(%rsp)
  407145:	00 00 00 00 00 
  40714a:	c5 f8 28 05 0e 50 00 	vmovaps 0x500e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407151:	00 
  407152:	c5 f8 11 84 24 20 1c 	vmovups %xmm0,0x1c20(%rsp)
  407159:	00 00 
  40715b:	48 8d b4 24 10 1c 00 	lea    0x1c10(%rsp),%rsi
  407162:	00 
  407163:	48 89 df             	mov    %rbx,%rdi
  407166:	e8 45 a0 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40716b:	88 84 24 b4 00 00 00 	mov    %al,0xb4(%rsp)
  407172:	4c 89 b4 24 f0 1b 00 	mov    %r14,0x1bf0(%rsp)
  407179:	00 
  40717a:	48 c7 84 24 f8 1b 00 	movq   $0x0,0x1bf8(%rsp)
  407181:	00 00 00 00 00 
  407186:	c5 f8 28 05 d2 4f 00 	vmovaps 0x4fd2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40718d:	00 
  40718e:	c5 f8 11 84 24 00 1c 	vmovups %xmm0,0x1c00(%rsp)
  407195:	00 00 
  407197:	48 8d 94 24 f0 1b 00 	lea    0x1bf0(%rsp),%rdx
  40719e:	00 
  40719f:	44 89 ff             	mov    %r15d,%edi
  4071a2:	48 89 de             	mov    %rbx,%rsi
  4071a5:	e8 a6 a5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4071aa:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  4071af:	44 0f b6 bc 24 b5 00 	movzbl 0xb5(%rsp),%r15d
  4071b6:	00 00 
  4071b8:	44 89 e1             	mov    %r12d,%ecx
  4071bb:	48 01 c1             	add    %rax,%rcx
  4071be:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4071c2:	44 89 e0             	mov    %r12d,%eax
  4071c5:	83 e0 1f             	and    $0x1f,%eax
  4071c8:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4071cc:	48 83 c3 20          	add    $0x20,%rbx
  4071d0:	4c 89 b4 24 d0 1b 00 	mov    %r14,0x1bd0(%rsp)
  4071d7:	00 
  4071d8:	48 c7 84 24 d8 1b 00 	movq   $0x0,0x1bd8(%rsp)
  4071df:	00 00 00 00 00 
  4071e4:	c5 f8 28 05 74 4f 00 	vmovaps 0x4f74(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4071eb:	00 
  4071ec:	c5 f8 11 84 24 e0 1b 	vmovups %xmm0,0x1be0(%rsp)
  4071f3:	00 00 
  4071f5:	48 8d b4 24 d0 1b 00 	lea    0x1bd0(%rsp),%rsi
  4071fc:	00 
  4071fd:	48 89 df             	mov    %rbx,%rdi
  407200:	e8 ab 9f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407205:	88 84 24 b5 00 00 00 	mov    %al,0xb5(%rsp)
  40720c:	4c 89 b4 24 b0 1b 00 	mov    %r14,0x1bb0(%rsp)
  407213:	00 
  407214:	48 c7 84 24 b8 1b 00 	movq   $0x0,0x1bb8(%rsp)
  40721b:	00 00 00 00 00 
  407220:	c5 f8 28 05 38 4f 00 	vmovaps 0x4f38(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407227:	00 
  407228:	c5 f8 11 84 24 c0 1b 	vmovups %xmm0,0x1bc0(%rsp)
  40722f:	00 00 
  407231:	48 8d 94 24 b0 1b 00 	lea    0x1bb0(%rsp),%rdx
  407238:	00 
  407239:	44 89 ff             	mov    %r15d,%edi
  40723c:	48 89 de             	mov    %rbx,%rsi
  40723f:	e8 0c a5 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407244:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  407249:	44 0f b6 bc 24 b6 00 	movzbl 0xb6(%rsp),%r15d
  407250:	00 00 
  407252:	44 89 e1             	mov    %r12d,%ecx
  407255:	48 01 c1             	add    %rax,%rcx
  407258:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40725c:	44 89 e0             	mov    %r12d,%eax
  40725f:	83 e0 1f             	and    $0x1f,%eax
  407262:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407266:	48 83 c3 20          	add    $0x20,%rbx
  40726a:	4c 89 b4 24 90 1b 00 	mov    %r14,0x1b90(%rsp)
  407271:	00 
  407272:	48 c7 84 24 98 1b 00 	movq   $0x0,0x1b98(%rsp)
  407279:	00 00 00 00 00 
  40727e:	c5 f8 28 05 da 4e 00 	vmovaps 0x4eda(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407285:	00 
  407286:	c5 f8 11 84 24 a0 1b 	vmovups %xmm0,0x1ba0(%rsp)
  40728d:	00 00 
  40728f:	48 8d b4 24 90 1b 00 	lea    0x1b90(%rsp),%rsi
  407296:	00 
  407297:	48 89 df             	mov    %rbx,%rdi
  40729a:	e8 11 9f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40729f:	88 84 24 b6 00 00 00 	mov    %al,0xb6(%rsp)
  4072a6:	4c 89 b4 24 70 1b 00 	mov    %r14,0x1b70(%rsp)
  4072ad:	00 
  4072ae:	48 c7 84 24 78 1b 00 	movq   $0x0,0x1b78(%rsp)
  4072b5:	00 00 00 00 00 
  4072ba:	c5 f8 28 05 9e 4e 00 	vmovaps 0x4e9e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4072c1:	00 
  4072c2:	c5 f8 11 84 24 80 1b 	vmovups %xmm0,0x1b80(%rsp)
  4072c9:	00 00 
  4072cb:	48 8d 94 24 70 1b 00 	lea    0x1b70(%rsp),%rdx
  4072d2:	00 
  4072d3:	44 89 ff             	mov    %r15d,%edi
  4072d6:	48 89 de             	mov    %rbx,%rsi
  4072d9:	e8 72 a4 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4072de:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  4072e3:	44 0f b6 bc 24 b7 00 	movzbl 0xb7(%rsp),%r15d
  4072ea:	00 00 
  4072ec:	44 89 e1             	mov    %r12d,%ecx
  4072ef:	48 01 c1             	add    %rax,%rcx
  4072f2:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4072f6:	44 89 e0             	mov    %r12d,%eax
  4072f9:	83 e0 1f             	and    $0x1f,%eax
  4072fc:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407300:	48 83 c3 20          	add    $0x20,%rbx
  407304:	4c 89 b4 24 50 1b 00 	mov    %r14,0x1b50(%rsp)
  40730b:	00 
  40730c:	48 c7 84 24 58 1b 00 	movq   $0x0,0x1b58(%rsp)
  407313:	00 00 00 00 00 
  407318:	c5 f8 28 05 40 4e 00 	vmovaps 0x4e40(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40731f:	00 
  407320:	c5 f8 11 84 24 60 1b 	vmovups %xmm0,0x1b60(%rsp)
  407327:	00 00 
  407329:	48 8d b4 24 50 1b 00 	lea    0x1b50(%rsp),%rsi
  407330:	00 
  407331:	48 89 df             	mov    %rbx,%rdi
  407334:	e8 77 9e ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407339:	88 84 24 b7 00 00 00 	mov    %al,0xb7(%rsp)
  407340:	4c 89 b4 24 30 1b 00 	mov    %r14,0x1b30(%rsp)
  407347:	00 
  407348:	48 c7 84 24 38 1b 00 	movq   $0x0,0x1b38(%rsp)
  40734f:	00 00 00 00 00 
  407354:	c5 f8 28 05 04 4e 00 	vmovaps 0x4e04(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40735b:	00 
  40735c:	c5 f8 11 84 24 40 1b 	vmovups %xmm0,0x1b40(%rsp)
  407363:	00 00 
  407365:	48 8d 94 24 30 1b 00 	lea    0x1b30(%rsp),%rdx
  40736c:	00 
  40736d:	44 89 ff             	mov    %r15d,%edi
  407370:	48 89 de             	mov    %rbx,%rsi
  407373:	e8 d8 a3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407378:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  40737d:	44 0f b6 bc 24 b8 00 	movzbl 0xb8(%rsp),%r15d
  407384:	00 00 
  407386:	44 89 e1             	mov    %r12d,%ecx
  407389:	48 01 c1             	add    %rax,%rcx
  40738c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407390:	44 89 e0             	mov    %r12d,%eax
  407393:	83 e0 1f             	and    $0x1f,%eax
  407396:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40739a:	48 83 c3 20          	add    $0x20,%rbx
  40739e:	4c 89 b4 24 10 1b 00 	mov    %r14,0x1b10(%rsp)
  4073a5:	00 
  4073a6:	48 c7 84 24 18 1b 00 	movq   $0x0,0x1b18(%rsp)
  4073ad:	00 00 00 00 00 
  4073b2:	c5 f8 28 05 a6 4d 00 	vmovaps 0x4da6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4073b9:	00 
  4073ba:	c5 f8 11 84 24 20 1b 	vmovups %xmm0,0x1b20(%rsp)
  4073c1:	00 00 
  4073c3:	48 8d b4 24 10 1b 00 	lea    0x1b10(%rsp),%rsi
  4073ca:	00 
  4073cb:	48 89 df             	mov    %rbx,%rdi
  4073ce:	e8 dd 9d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4073d3:	88 84 24 b8 00 00 00 	mov    %al,0xb8(%rsp)
  4073da:	4c 89 b4 24 f0 1a 00 	mov    %r14,0x1af0(%rsp)
  4073e1:	00 
  4073e2:	48 c7 84 24 f8 1a 00 	movq   $0x0,0x1af8(%rsp)
  4073e9:	00 00 00 00 00 
  4073ee:	c5 f8 28 05 6a 4d 00 	vmovaps 0x4d6a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4073f5:	00 
  4073f6:	c5 f8 11 84 24 00 1b 	vmovups %xmm0,0x1b00(%rsp)
  4073fd:	00 00 
  4073ff:	48 8d 94 24 f0 1a 00 	lea    0x1af0(%rsp),%rdx
  407406:	00 
  407407:	44 89 ff             	mov    %r15d,%edi
  40740a:	48 89 de             	mov    %rbx,%rsi
  40740d:	e8 3e a3 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407412:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  407417:	44 0f b6 bc 24 b9 00 	movzbl 0xb9(%rsp),%r15d
  40741e:	00 00 
  407420:	44 89 e1             	mov    %r12d,%ecx
  407423:	48 01 c1             	add    %rax,%rcx
  407426:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40742a:	44 89 e0             	mov    %r12d,%eax
  40742d:	83 e0 1f             	and    $0x1f,%eax
  407430:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407434:	48 83 c3 20          	add    $0x20,%rbx
  407438:	4c 89 b4 24 d0 1a 00 	mov    %r14,0x1ad0(%rsp)
  40743f:	00 
  407440:	48 c7 84 24 d8 1a 00 	movq   $0x0,0x1ad8(%rsp)
  407447:	00 00 00 00 00 
  40744c:	c5 f8 28 05 0c 4d 00 	vmovaps 0x4d0c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407453:	00 
  407454:	c5 f8 11 84 24 e0 1a 	vmovups %xmm0,0x1ae0(%rsp)
  40745b:	00 00 
  40745d:	48 8d b4 24 d0 1a 00 	lea    0x1ad0(%rsp),%rsi
  407464:	00 
  407465:	48 89 df             	mov    %rbx,%rdi
  407468:	e8 43 9d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40746d:	88 84 24 b9 00 00 00 	mov    %al,0xb9(%rsp)
  407474:	4c 89 b4 24 b0 1a 00 	mov    %r14,0x1ab0(%rsp)
  40747b:	00 
  40747c:	48 c7 84 24 b8 1a 00 	movq   $0x0,0x1ab8(%rsp)
  407483:	00 00 00 00 00 
  407488:	c5 f8 28 05 d0 4c 00 	vmovaps 0x4cd0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40748f:	00 
  407490:	c5 f8 11 84 24 c0 1a 	vmovups %xmm0,0x1ac0(%rsp)
  407497:	00 00 
  407499:	48 8d 94 24 b0 1a 00 	lea    0x1ab0(%rsp),%rdx
  4074a0:	00 
  4074a1:	44 89 ff             	mov    %r15d,%edi
  4074a4:	48 89 de             	mov    %rbx,%rsi
  4074a7:	e8 a4 a2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4074ac:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  4074b1:	44 0f b6 bc 24 ba 00 	movzbl 0xba(%rsp),%r15d
  4074b8:	00 00 
  4074ba:	44 89 e1             	mov    %r12d,%ecx
  4074bd:	48 01 c1             	add    %rax,%rcx
  4074c0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4074c4:	44 89 e0             	mov    %r12d,%eax
  4074c7:	83 e0 1f             	and    $0x1f,%eax
  4074ca:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4074ce:	48 83 c3 20          	add    $0x20,%rbx
  4074d2:	4c 89 b4 24 90 1a 00 	mov    %r14,0x1a90(%rsp)
  4074d9:	00 
  4074da:	48 c7 84 24 98 1a 00 	movq   $0x0,0x1a98(%rsp)
  4074e1:	00 00 00 00 00 
  4074e6:	c5 f8 28 05 72 4c 00 	vmovaps 0x4c72(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4074ed:	00 
  4074ee:	c5 f8 11 84 24 a0 1a 	vmovups %xmm0,0x1aa0(%rsp)
  4074f5:	00 00 
  4074f7:	48 8d b4 24 90 1a 00 	lea    0x1a90(%rsp),%rsi
  4074fe:	00 
  4074ff:	48 89 df             	mov    %rbx,%rdi
  407502:	e8 a9 9c ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407507:	88 84 24 ba 00 00 00 	mov    %al,0xba(%rsp)
  40750e:	4c 89 b4 24 70 1a 00 	mov    %r14,0x1a70(%rsp)
  407515:	00 
  407516:	48 c7 84 24 78 1a 00 	movq   $0x0,0x1a78(%rsp)
  40751d:	00 00 00 00 00 
  407522:	c5 f8 28 05 36 4c 00 	vmovaps 0x4c36(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407529:	00 
  40752a:	c5 f8 11 84 24 80 1a 	vmovups %xmm0,0x1a80(%rsp)
  407531:	00 00 
  407533:	48 8d 94 24 70 1a 00 	lea    0x1a70(%rsp),%rdx
  40753a:	00 
  40753b:	44 89 ff             	mov    %r15d,%edi
  40753e:	48 89 de             	mov    %rbx,%rsi
  407541:	e8 0a a2 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407546:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  40754b:	44 0f b6 bc 24 bb 00 	movzbl 0xbb(%rsp),%r15d
  407552:	00 00 
  407554:	44 89 e1             	mov    %r12d,%ecx
  407557:	48 01 c1             	add    %rax,%rcx
  40755a:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40755e:	44 89 e0             	mov    %r12d,%eax
  407561:	83 e0 1f             	and    $0x1f,%eax
  407564:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407568:	48 83 c3 20          	add    $0x20,%rbx
  40756c:	4c 89 b4 24 50 1a 00 	mov    %r14,0x1a50(%rsp)
  407573:	00 
  407574:	48 c7 84 24 58 1a 00 	movq   $0x0,0x1a58(%rsp)
  40757b:	00 00 00 00 00 
  407580:	c5 f8 28 05 d8 4b 00 	vmovaps 0x4bd8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407587:	00 
  407588:	c5 f8 11 84 24 60 1a 	vmovups %xmm0,0x1a60(%rsp)
  40758f:	00 00 
  407591:	48 8d b4 24 50 1a 00 	lea    0x1a50(%rsp),%rsi
  407598:	00 
  407599:	48 89 df             	mov    %rbx,%rdi
  40759c:	e8 0f 9c ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4075a1:	88 84 24 bb 00 00 00 	mov    %al,0xbb(%rsp)
  4075a8:	4c 89 b4 24 30 1a 00 	mov    %r14,0x1a30(%rsp)
  4075af:	00 
  4075b0:	48 c7 84 24 38 1a 00 	movq   $0x0,0x1a38(%rsp)
  4075b7:	00 00 00 00 00 
  4075bc:	c5 f8 28 05 9c 4b 00 	vmovaps 0x4b9c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4075c3:	00 
  4075c4:	c5 f8 11 84 24 40 1a 	vmovups %xmm0,0x1a40(%rsp)
  4075cb:	00 00 
  4075cd:	48 8d 94 24 30 1a 00 	lea    0x1a30(%rsp),%rdx
  4075d4:	00 
  4075d5:	44 89 ff             	mov    %r15d,%edi
  4075d8:	48 89 de             	mov    %rbx,%rsi
  4075db:	e8 70 a1 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4075e0:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  4075e5:	44 0f b6 bc 24 bc 00 	movzbl 0xbc(%rsp),%r15d
  4075ec:	00 00 
  4075ee:	44 89 e1             	mov    %r12d,%ecx
  4075f1:	48 01 c1             	add    %rax,%rcx
  4075f4:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4075f8:	44 89 e0             	mov    %r12d,%eax
  4075fb:	83 e0 1f             	and    $0x1f,%eax
  4075fe:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407602:	48 83 c3 20          	add    $0x20,%rbx
  407606:	4c 89 b4 24 10 1a 00 	mov    %r14,0x1a10(%rsp)
  40760d:	00 
  40760e:	48 c7 84 24 18 1a 00 	movq   $0x0,0x1a18(%rsp)
  407615:	00 00 00 00 00 
  40761a:	c5 f8 28 05 3e 4b 00 	vmovaps 0x4b3e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407621:	00 
  407622:	c5 f8 11 84 24 20 1a 	vmovups %xmm0,0x1a20(%rsp)
  407629:	00 00 
  40762b:	48 8d b4 24 10 1a 00 	lea    0x1a10(%rsp),%rsi
  407632:	00 
  407633:	48 89 df             	mov    %rbx,%rdi
  407636:	e8 75 9b ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40763b:	88 84 24 bc 00 00 00 	mov    %al,0xbc(%rsp)
  407642:	4c 89 b4 24 f0 19 00 	mov    %r14,0x19f0(%rsp)
  407649:	00 
  40764a:	48 c7 84 24 f8 19 00 	movq   $0x0,0x19f8(%rsp)
  407651:	00 00 00 00 00 
  407656:	c5 f8 28 05 02 4b 00 	vmovaps 0x4b02(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40765d:	00 
  40765e:	c5 f8 11 84 24 00 1a 	vmovups %xmm0,0x1a00(%rsp)
  407665:	00 00 
  407667:	48 8d 94 24 f0 19 00 	lea    0x19f0(%rsp),%rdx
  40766e:	00 
  40766f:	44 89 ff             	mov    %r15d,%edi
  407672:	48 89 de             	mov    %rbx,%rsi
  407675:	e8 d6 a0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40767a:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  40767f:	44 0f b6 bc 24 bd 00 	movzbl 0xbd(%rsp),%r15d
  407686:	00 00 
  407688:	44 89 e1             	mov    %r12d,%ecx
  40768b:	48 01 c1             	add    %rax,%rcx
  40768e:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407692:	44 89 e0             	mov    %r12d,%eax
  407695:	83 e0 1f             	and    $0x1f,%eax
  407698:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40769c:	48 83 c3 20          	add    $0x20,%rbx
  4076a0:	4c 89 b4 24 d0 19 00 	mov    %r14,0x19d0(%rsp)
  4076a7:	00 
  4076a8:	48 c7 84 24 d8 19 00 	movq   $0x0,0x19d8(%rsp)
  4076af:	00 00 00 00 00 
  4076b4:	c5 f8 28 05 a4 4a 00 	vmovaps 0x4aa4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4076bb:	00 
  4076bc:	c5 f8 11 84 24 e0 19 	vmovups %xmm0,0x19e0(%rsp)
  4076c3:	00 00 
  4076c5:	48 8d b4 24 d0 19 00 	lea    0x19d0(%rsp),%rsi
  4076cc:	00 
  4076cd:	48 89 df             	mov    %rbx,%rdi
  4076d0:	e8 db 9a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4076d5:	88 84 24 bd 00 00 00 	mov    %al,0xbd(%rsp)
  4076dc:	4c 89 b4 24 b0 19 00 	mov    %r14,0x19b0(%rsp)
  4076e3:	00 
  4076e4:	48 c7 84 24 b8 19 00 	movq   $0x0,0x19b8(%rsp)
  4076eb:	00 00 00 00 00 
  4076f0:	c5 f8 28 05 68 4a 00 	vmovaps 0x4a68(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4076f7:	00 
  4076f8:	c5 f8 11 84 24 c0 19 	vmovups %xmm0,0x19c0(%rsp)
  4076ff:	00 00 
  407701:	48 8d 94 24 b0 19 00 	lea    0x19b0(%rsp),%rdx
  407708:	00 
  407709:	44 89 ff             	mov    %r15d,%edi
  40770c:	48 89 de             	mov    %rbx,%rsi
  40770f:	e8 3c a0 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407714:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  407719:	44 0f b6 bc 24 be 00 	movzbl 0xbe(%rsp),%r15d
  407720:	00 00 
  407722:	44 89 e1             	mov    %r12d,%ecx
  407725:	48 01 c1             	add    %rax,%rcx
  407728:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40772c:	44 89 e0             	mov    %r12d,%eax
  40772f:	83 e0 1f             	and    $0x1f,%eax
  407732:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407736:	48 83 c3 20          	add    $0x20,%rbx
  40773a:	4c 89 b4 24 90 19 00 	mov    %r14,0x1990(%rsp)
  407741:	00 
  407742:	48 c7 84 24 98 19 00 	movq   $0x0,0x1998(%rsp)
  407749:	00 00 00 00 00 
  40774e:	c5 f8 28 05 0a 4a 00 	vmovaps 0x4a0a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407755:	00 
  407756:	c5 f8 11 84 24 a0 19 	vmovups %xmm0,0x19a0(%rsp)
  40775d:	00 00 
  40775f:	48 8d b4 24 90 19 00 	lea    0x1990(%rsp),%rsi
  407766:	00 
  407767:	48 89 df             	mov    %rbx,%rdi
  40776a:	e8 41 9a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40776f:	88 84 24 be 00 00 00 	mov    %al,0xbe(%rsp)
  407776:	4c 89 b4 24 70 19 00 	mov    %r14,0x1970(%rsp)
  40777d:	00 
  40777e:	48 c7 84 24 78 19 00 	movq   $0x0,0x1978(%rsp)
  407785:	00 00 00 00 00 
  40778a:	c5 f8 28 05 ce 49 00 	vmovaps 0x49ce(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407791:	00 
  407792:	c5 f8 11 84 24 80 19 	vmovups %xmm0,0x1980(%rsp)
  407799:	00 00 
  40779b:	48 8d 94 24 70 19 00 	lea    0x1970(%rsp),%rdx
  4077a2:	00 
  4077a3:	44 89 ff             	mov    %r15d,%edi
  4077a6:	48 89 de             	mov    %rbx,%rsi
  4077a9:	e8 a2 9f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4077ae:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  4077b3:	44 0f b6 bc 24 bf 00 	movzbl 0xbf(%rsp),%r15d
  4077ba:	00 00 
  4077bc:	44 89 e1             	mov    %r12d,%ecx
  4077bf:	48 01 c1             	add    %rax,%rcx
  4077c2:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4077c6:	44 89 e0             	mov    %r12d,%eax
  4077c9:	83 e0 1f             	and    $0x1f,%eax
  4077cc:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4077d0:	48 83 c3 20          	add    $0x20,%rbx
  4077d4:	4c 89 b4 24 50 19 00 	mov    %r14,0x1950(%rsp)
  4077db:	00 
  4077dc:	48 c7 84 24 58 19 00 	movq   $0x0,0x1958(%rsp)
  4077e3:	00 00 00 00 00 
  4077e8:	c5 f8 28 05 70 49 00 	vmovaps 0x4970(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4077ef:	00 
  4077f0:	c5 f8 11 84 24 60 19 	vmovups %xmm0,0x1960(%rsp)
  4077f7:	00 00 
  4077f9:	48 8d b4 24 50 19 00 	lea    0x1950(%rsp),%rsi
  407800:	00 
  407801:	48 89 df             	mov    %rbx,%rdi
  407804:	e8 a7 99 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407809:	88 84 24 bf 00 00 00 	mov    %al,0xbf(%rsp)
  407810:	4c 89 b4 24 30 19 00 	mov    %r14,0x1930(%rsp)
  407817:	00 
  407818:	48 c7 84 24 38 19 00 	movq   $0x0,0x1938(%rsp)
  40781f:	00 00 00 00 00 
  407824:	c5 f8 28 05 34 49 00 	vmovaps 0x4934(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40782b:	00 
  40782c:	c5 f8 11 84 24 40 19 	vmovups %xmm0,0x1940(%rsp)
  407833:	00 00 
  407835:	48 8d 94 24 30 19 00 	lea    0x1930(%rsp),%rdx
  40783c:	00 
  40783d:	44 89 ff             	mov    %r15d,%edi
  407840:	48 89 de             	mov    %rbx,%rsi
  407843:	e8 08 9f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407848:	0f b6 04 24          	movzbl (%rsp),%eax
  40784c:	44 0f b6 bc 24 c0 00 	movzbl 0xc0(%rsp),%r15d
  407853:	00 00 
  407855:	44 89 e1             	mov    %r12d,%ecx
  407858:	48 01 c1             	add    %rax,%rcx
  40785b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40785f:	44 89 e0             	mov    %r12d,%eax
  407862:	83 e0 1f             	and    $0x1f,%eax
  407865:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407869:	48 83 c3 20          	add    $0x20,%rbx
  40786d:	4c 89 b4 24 10 19 00 	mov    %r14,0x1910(%rsp)
  407874:	00 
  407875:	48 c7 84 24 18 19 00 	movq   $0x0,0x1918(%rsp)
  40787c:	00 00 00 00 00 
  407881:	c5 f8 28 05 d7 48 00 	vmovaps 0x48d7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407888:	00 
  407889:	c5 f8 11 84 24 20 19 	vmovups %xmm0,0x1920(%rsp)
  407890:	00 00 
  407892:	48 8d b4 24 10 19 00 	lea    0x1910(%rsp),%rsi
  407899:	00 
  40789a:	48 89 df             	mov    %rbx,%rdi
  40789d:	e8 0e 99 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4078a2:	88 84 24 c0 00 00 00 	mov    %al,0xc0(%rsp)
  4078a9:	4c 89 b4 24 f0 18 00 	mov    %r14,0x18f0(%rsp)
  4078b0:	00 
  4078b1:	48 c7 84 24 f8 18 00 	movq   $0x0,0x18f8(%rsp)
  4078b8:	00 00 00 00 00 
  4078bd:	c5 f8 28 05 9b 48 00 	vmovaps 0x489b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4078c4:	00 
  4078c5:	c5 f8 11 84 24 00 19 	vmovups %xmm0,0x1900(%rsp)
  4078cc:	00 00 
  4078ce:	48 8d 94 24 f0 18 00 	lea    0x18f0(%rsp),%rdx
  4078d5:	00 
  4078d6:	44 89 ff             	mov    %r15d,%edi
  4078d9:	48 89 de             	mov    %rbx,%rsi
  4078dc:	e8 6f 9e ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4078e1:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4078e6:	44 0f b6 bc 24 c1 00 	movzbl 0xc1(%rsp),%r15d
  4078ed:	00 00 
  4078ef:	44 89 e1             	mov    %r12d,%ecx
  4078f2:	48 01 c1             	add    %rax,%rcx
  4078f5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4078f9:	44 89 e0             	mov    %r12d,%eax
  4078fc:	83 e0 1f             	and    $0x1f,%eax
  4078ff:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407903:	48 83 c3 20          	add    $0x20,%rbx
  407907:	4c 89 b4 24 d0 18 00 	mov    %r14,0x18d0(%rsp)
  40790e:	00 
  40790f:	48 c7 84 24 d8 18 00 	movq   $0x0,0x18d8(%rsp)
  407916:	00 00 00 00 00 
  40791b:	c5 f8 28 05 3d 48 00 	vmovaps 0x483d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407922:	00 
  407923:	c5 f8 11 84 24 e0 18 	vmovups %xmm0,0x18e0(%rsp)
  40792a:	00 00 
  40792c:	48 8d b4 24 d0 18 00 	lea    0x18d0(%rsp),%rsi
  407933:	00 
  407934:	48 89 df             	mov    %rbx,%rdi
  407937:	e8 74 98 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40793c:	88 84 24 c1 00 00 00 	mov    %al,0xc1(%rsp)
  407943:	4c 89 b4 24 b0 18 00 	mov    %r14,0x18b0(%rsp)
  40794a:	00 
  40794b:	48 c7 84 24 b8 18 00 	movq   $0x0,0x18b8(%rsp)
  407952:	00 00 00 00 00 
  407957:	c5 f8 28 05 01 48 00 	vmovaps 0x4801(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40795e:	00 
  40795f:	c5 f8 11 84 24 c0 18 	vmovups %xmm0,0x18c0(%rsp)
  407966:	00 00 
  407968:	48 8d 94 24 b0 18 00 	lea    0x18b0(%rsp),%rdx
  40796f:	00 
  407970:	44 89 ff             	mov    %r15d,%edi
  407973:	48 89 de             	mov    %rbx,%rsi
  407976:	e8 d5 9d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40797b:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  407980:	44 0f b6 bc 24 c2 00 	movzbl 0xc2(%rsp),%r15d
  407987:	00 00 
  407989:	44 89 e1             	mov    %r12d,%ecx
  40798c:	48 01 c1             	add    %rax,%rcx
  40798f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407993:	44 89 e0             	mov    %r12d,%eax
  407996:	83 e0 1f             	and    $0x1f,%eax
  407999:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40799d:	48 83 c3 20          	add    $0x20,%rbx
  4079a1:	4c 89 b4 24 90 18 00 	mov    %r14,0x1890(%rsp)
  4079a8:	00 
  4079a9:	48 c7 84 24 98 18 00 	movq   $0x0,0x1898(%rsp)
  4079b0:	00 00 00 00 00 
  4079b5:	c5 f8 28 05 a3 47 00 	vmovaps 0x47a3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4079bc:	00 
  4079bd:	c5 f8 11 84 24 a0 18 	vmovups %xmm0,0x18a0(%rsp)
  4079c4:	00 00 
  4079c6:	48 8d b4 24 90 18 00 	lea    0x1890(%rsp),%rsi
  4079cd:	00 
  4079ce:	48 89 df             	mov    %rbx,%rdi
  4079d1:	e8 da 97 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4079d6:	88 84 24 c2 00 00 00 	mov    %al,0xc2(%rsp)
  4079dd:	4c 89 b4 24 70 18 00 	mov    %r14,0x1870(%rsp)
  4079e4:	00 
  4079e5:	48 c7 84 24 78 18 00 	movq   $0x0,0x1878(%rsp)
  4079ec:	00 00 00 00 00 
  4079f1:	c5 f8 28 05 67 47 00 	vmovaps 0x4767(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4079f8:	00 
  4079f9:	c5 f8 11 84 24 80 18 	vmovups %xmm0,0x1880(%rsp)
  407a00:	00 00 
  407a02:	48 8d 94 24 70 18 00 	lea    0x1870(%rsp),%rdx
  407a09:	00 
  407a0a:	44 89 ff             	mov    %r15d,%edi
  407a0d:	48 89 de             	mov    %rbx,%rsi
  407a10:	e8 3b 9d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407a15:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  407a1a:	44 0f b6 bc 24 c3 00 	movzbl 0xc3(%rsp),%r15d
  407a21:	00 00 
  407a23:	44 89 e1             	mov    %r12d,%ecx
  407a26:	48 01 c1             	add    %rax,%rcx
  407a29:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407a2d:	44 89 e0             	mov    %r12d,%eax
  407a30:	83 e0 1f             	and    $0x1f,%eax
  407a33:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407a37:	48 83 c3 20          	add    $0x20,%rbx
  407a3b:	4c 89 b4 24 50 18 00 	mov    %r14,0x1850(%rsp)
  407a42:	00 
  407a43:	48 c7 84 24 58 18 00 	movq   $0x0,0x1858(%rsp)
  407a4a:	00 00 00 00 00 
  407a4f:	c5 f8 28 05 09 47 00 	vmovaps 0x4709(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407a56:	00 
  407a57:	c5 f8 11 84 24 60 18 	vmovups %xmm0,0x1860(%rsp)
  407a5e:	00 00 
  407a60:	48 8d b4 24 50 18 00 	lea    0x1850(%rsp),%rsi
  407a67:	00 
  407a68:	48 89 df             	mov    %rbx,%rdi
  407a6b:	e8 40 97 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407a70:	88 84 24 c3 00 00 00 	mov    %al,0xc3(%rsp)
  407a77:	4c 89 b4 24 30 18 00 	mov    %r14,0x1830(%rsp)
  407a7e:	00 
  407a7f:	48 c7 84 24 38 18 00 	movq   $0x0,0x1838(%rsp)
  407a86:	00 00 00 00 00 
  407a8b:	c5 f8 28 05 cd 46 00 	vmovaps 0x46cd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407a92:	00 
  407a93:	c5 f8 11 84 24 40 18 	vmovups %xmm0,0x1840(%rsp)
  407a9a:	00 00 
  407a9c:	48 8d 94 24 30 18 00 	lea    0x1830(%rsp),%rdx
  407aa3:	00 
  407aa4:	44 89 ff             	mov    %r15d,%edi
  407aa7:	48 89 de             	mov    %rbx,%rsi
  407aaa:	e8 a1 9c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407aaf:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  407ab4:	44 0f b6 bc 24 c4 00 	movzbl 0xc4(%rsp),%r15d
  407abb:	00 00 
  407abd:	44 89 e1             	mov    %r12d,%ecx
  407ac0:	48 01 c1             	add    %rax,%rcx
  407ac3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407ac7:	44 89 e0             	mov    %r12d,%eax
  407aca:	83 e0 1f             	and    $0x1f,%eax
  407acd:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407ad1:	48 83 c3 20          	add    $0x20,%rbx
  407ad5:	4c 89 b4 24 10 18 00 	mov    %r14,0x1810(%rsp)
  407adc:	00 
  407add:	48 c7 84 24 18 18 00 	movq   $0x0,0x1818(%rsp)
  407ae4:	00 00 00 00 00 
  407ae9:	c5 f8 28 05 6f 46 00 	vmovaps 0x466f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407af0:	00 
  407af1:	c5 f8 11 84 24 20 18 	vmovups %xmm0,0x1820(%rsp)
  407af8:	00 00 
  407afa:	48 8d b4 24 10 18 00 	lea    0x1810(%rsp),%rsi
  407b01:	00 
  407b02:	48 89 df             	mov    %rbx,%rdi
  407b05:	e8 a6 96 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407b0a:	88 84 24 c4 00 00 00 	mov    %al,0xc4(%rsp)
  407b11:	4c 89 b4 24 f0 17 00 	mov    %r14,0x17f0(%rsp)
  407b18:	00 
  407b19:	48 c7 84 24 f8 17 00 	movq   $0x0,0x17f8(%rsp)
  407b20:	00 00 00 00 00 
  407b25:	c5 f8 28 05 33 46 00 	vmovaps 0x4633(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407b2c:	00 
  407b2d:	c5 f8 11 84 24 00 18 	vmovups %xmm0,0x1800(%rsp)
  407b34:	00 00 
  407b36:	48 8d 94 24 f0 17 00 	lea    0x17f0(%rsp),%rdx
  407b3d:	00 
  407b3e:	44 89 ff             	mov    %r15d,%edi
  407b41:	48 89 de             	mov    %rbx,%rsi
  407b44:	e8 07 9c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407b49:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  407b4e:	44 0f b6 bc 24 c5 00 	movzbl 0xc5(%rsp),%r15d
  407b55:	00 00 
  407b57:	44 89 e1             	mov    %r12d,%ecx
  407b5a:	48 01 c1             	add    %rax,%rcx
  407b5d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407b61:	44 89 e0             	mov    %r12d,%eax
  407b64:	83 e0 1f             	and    $0x1f,%eax
  407b67:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407b6b:	48 83 c3 20          	add    $0x20,%rbx
  407b6f:	4c 89 b4 24 d0 17 00 	mov    %r14,0x17d0(%rsp)
  407b76:	00 
  407b77:	48 c7 84 24 d8 17 00 	movq   $0x0,0x17d8(%rsp)
  407b7e:	00 00 00 00 00 
  407b83:	c5 f8 28 05 d5 45 00 	vmovaps 0x45d5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407b8a:	00 
  407b8b:	c5 f8 11 84 24 e0 17 	vmovups %xmm0,0x17e0(%rsp)
  407b92:	00 00 
  407b94:	48 8d b4 24 d0 17 00 	lea    0x17d0(%rsp),%rsi
  407b9b:	00 
  407b9c:	48 89 df             	mov    %rbx,%rdi
  407b9f:	e8 0c 96 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407ba4:	88 84 24 c5 00 00 00 	mov    %al,0xc5(%rsp)
  407bab:	4c 89 b4 24 b0 17 00 	mov    %r14,0x17b0(%rsp)
  407bb2:	00 
  407bb3:	48 c7 84 24 b8 17 00 	movq   $0x0,0x17b8(%rsp)
  407bba:	00 00 00 00 00 
  407bbf:	c5 f8 28 05 99 45 00 	vmovaps 0x4599(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407bc6:	00 
  407bc7:	c5 f8 11 84 24 c0 17 	vmovups %xmm0,0x17c0(%rsp)
  407bce:	00 00 
  407bd0:	48 8d 94 24 b0 17 00 	lea    0x17b0(%rsp),%rdx
  407bd7:	00 
  407bd8:	44 89 ff             	mov    %r15d,%edi
  407bdb:	48 89 de             	mov    %rbx,%rsi
  407bde:	e8 6d 9b ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407be3:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  407be8:	44 0f b6 bc 24 c6 00 	movzbl 0xc6(%rsp),%r15d
  407bef:	00 00 
  407bf1:	44 89 e1             	mov    %r12d,%ecx
  407bf4:	48 01 c1             	add    %rax,%rcx
  407bf7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407bfb:	44 89 e0             	mov    %r12d,%eax
  407bfe:	83 e0 1f             	and    $0x1f,%eax
  407c01:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407c05:	48 83 c3 20          	add    $0x20,%rbx
  407c09:	4c 89 b4 24 90 17 00 	mov    %r14,0x1790(%rsp)
  407c10:	00 
  407c11:	48 c7 84 24 98 17 00 	movq   $0x0,0x1798(%rsp)
  407c18:	00 00 00 00 00 
  407c1d:	c5 f8 28 05 3b 45 00 	vmovaps 0x453b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407c24:	00 
  407c25:	c5 f8 11 84 24 a0 17 	vmovups %xmm0,0x17a0(%rsp)
  407c2c:	00 00 
  407c2e:	48 8d b4 24 90 17 00 	lea    0x1790(%rsp),%rsi
  407c35:	00 
  407c36:	48 89 df             	mov    %rbx,%rdi
  407c39:	e8 72 95 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407c3e:	88 84 24 c6 00 00 00 	mov    %al,0xc6(%rsp)
  407c45:	4c 89 b4 24 70 17 00 	mov    %r14,0x1770(%rsp)
  407c4c:	00 
  407c4d:	48 c7 84 24 78 17 00 	movq   $0x0,0x1778(%rsp)
  407c54:	00 00 00 00 00 
  407c59:	c5 f8 28 05 ff 44 00 	vmovaps 0x44ff(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407c60:	00 
  407c61:	c5 f8 11 84 24 80 17 	vmovups %xmm0,0x1780(%rsp)
  407c68:	00 00 
  407c6a:	48 8d 94 24 70 17 00 	lea    0x1770(%rsp),%rdx
  407c71:	00 
  407c72:	44 89 ff             	mov    %r15d,%edi
  407c75:	48 89 de             	mov    %rbx,%rsi
  407c78:	e8 d3 9a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407c7d:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  407c82:	44 0f b6 bc 24 c7 00 	movzbl 0xc7(%rsp),%r15d
  407c89:	00 00 
  407c8b:	44 89 e1             	mov    %r12d,%ecx
  407c8e:	48 01 c1             	add    %rax,%rcx
  407c91:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407c95:	44 89 e0             	mov    %r12d,%eax
  407c98:	83 e0 1f             	and    $0x1f,%eax
  407c9b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407c9f:	48 83 c3 20          	add    $0x20,%rbx
  407ca3:	4c 89 b4 24 50 17 00 	mov    %r14,0x1750(%rsp)
  407caa:	00 
  407cab:	48 c7 84 24 58 17 00 	movq   $0x0,0x1758(%rsp)
  407cb2:	00 00 00 00 00 
  407cb7:	c5 f8 28 05 a1 44 00 	vmovaps 0x44a1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407cbe:	00 
  407cbf:	c5 f8 11 84 24 60 17 	vmovups %xmm0,0x1760(%rsp)
  407cc6:	00 00 
  407cc8:	48 8d b4 24 50 17 00 	lea    0x1750(%rsp),%rsi
  407ccf:	00 
  407cd0:	48 89 df             	mov    %rbx,%rdi
  407cd3:	e8 d8 94 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407cd8:	88 84 24 c7 00 00 00 	mov    %al,0xc7(%rsp)
  407cdf:	4c 89 b4 24 30 17 00 	mov    %r14,0x1730(%rsp)
  407ce6:	00 
  407ce7:	48 c7 84 24 38 17 00 	movq   $0x0,0x1738(%rsp)
  407cee:	00 00 00 00 00 
  407cf3:	c5 f8 28 05 65 44 00 	vmovaps 0x4465(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407cfa:	00 
  407cfb:	c5 f8 11 84 24 40 17 	vmovups %xmm0,0x1740(%rsp)
  407d02:	00 00 
  407d04:	48 8d 94 24 30 17 00 	lea    0x1730(%rsp),%rdx
  407d0b:	00 
  407d0c:	44 89 ff             	mov    %r15d,%edi
  407d0f:	48 89 de             	mov    %rbx,%rsi
  407d12:	e8 39 9a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407d17:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  407d1c:	44 0f b6 bc 24 c8 00 	movzbl 0xc8(%rsp),%r15d
  407d23:	00 00 
  407d25:	44 89 e1             	mov    %r12d,%ecx
  407d28:	48 01 c1             	add    %rax,%rcx
  407d2b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407d2f:	44 89 e0             	mov    %r12d,%eax
  407d32:	83 e0 1f             	and    $0x1f,%eax
  407d35:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407d39:	48 83 c3 20          	add    $0x20,%rbx
  407d3d:	4c 89 b4 24 10 17 00 	mov    %r14,0x1710(%rsp)
  407d44:	00 
  407d45:	48 c7 84 24 18 17 00 	movq   $0x0,0x1718(%rsp)
  407d4c:	00 00 00 00 00 
  407d51:	c5 f8 28 05 07 44 00 	vmovaps 0x4407(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407d58:	00 
  407d59:	c5 f8 11 84 24 20 17 	vmovups %xmm0,0x1720(%rsp)
  407d60:	00 00 
  407d62:	48 8d b4 24 10 17 00 	lea    0x1710(%rsp),%rsi
  407d69:	00 
  407d6a:	48 89 df             	mov    %rbx,%rdi
  407d6d:	e8 3e 94 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407d72:	88 84 24 c8 00 00 00 	mov    %al,0xc8(%rsp)
  407d79:	4c 89 b4 24 f0 16 00 	mov    %r14,0x16f0(%rsp)
  407d80:	00 
  407d81:	48 c7 84 24 f8 16 00 	movq   $0x0,0x16f8(%rsp)
  407d88:	00 00 00 00 00 
  407d8d:	c5 f8 28 05 cb 43 00 	vmovaps 0x43cb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407d94:	00 
  407d95:	c5 f8 11 84 24 00 17 	vmovups %xmm0,0x1700(%rsp)
  407d9c:	00 00 
  407d9e:	48 8d 94 24 f0 16 00 	lea    0x16f0(%rsp),%rdx
  407da5:	00 
  407da6:	44 89 ff             	mov    %r15d,%edi
  407da9:	48 89 de             	mov    %rbx,%rsi
  407dac:	e8 9f 99 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407db1:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  407db6:	44 0f b6 bc 24 c9 00 	movzbl 0xc9(%rsp),%r15d
  407dbd:	00 00 
  407dbf:	44 89 e1             	mov    %r12d,%ecx
  407dc2:	48 01 c1             	add    %rax,%rcx
  407dc5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407dc9:	44 89 e0             	mov    %r12d,%eax
  407dcc:	83 e0 1f             	and    $0x1f,%eax
  407dcf:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407dd3:	48 83 c3 20          	add    $0x20,%rbx
  407dd7:	4c 89 b4 24 d0 16 00 	mov    %r14,0x16d0(%rsp)
  407dde:	00 
  407ddf:	48 c7 84 24 d8 16 00 	movq   $0x0,0x16d8(%rsp)
  407de6:	00 00 00 00 00 
  407deb:	c5 f8 28 05 6d 43 00 	vmovaps 0x436d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407df2:	00 
  407df3:	c5 f8 11 84 24 e0 16 	vmovups %xmm0,0x16e0(%rsp)
  407dfa:	00 00 
  407dfc:	48 8d b4 24 d0 16 00 	lea    0x16d0(%rsp),%rsi
  407e03:	00 
  407e04:	48 89 df             	mov    %rbx,%rdi
  407e07:	e8 a4 93 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407e0c:	88 84 24 c9 00 00 00 	mov    %al,0xc9(%rsp)
  407e13:	4c 89 b4 24 b0 16 00 	mov    %r14,0x16b0(%rsp)
  407e1a:	00 
  407e1b:	48 c7 84 24 b8 16 00 	movq   $0x0,0x16b8(%rsp)
  407e22:	00 00 00 00 00 
  407e27:	c5 f8 28 05 31 43 00 	vmovaps 0x4331(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407e2e:	00 
  407e2f:	c5 f8 11 84 24 c0 16 	vmovups %xmm0,0x16c0(%rsp)
  407e36:	00 00 
  407e38:	48 8d 94 24 b0 16 00 	lea    0x16b0(%rsp),%rdx
  407e3f:	00 
  407e40:	44 89 ff             	mov    %r15d,%edi
  407e43:	48 89 de             	mov    %rbx,%rsi
  407e46:	e8 05 99 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407e4b:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  407e50:	44 0f b6 bc 24 ca 00 	movzbl 0xca(%rsp),%r15d
  407e57:	00 00 
  407e59:	44 89 e1             	mov    %r12d,%ecx
  407e5c:	48 01 c1             	add    %rax,%rcx
  407e5f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407e63:	44 89 e0             	mov    %r12d,%eax
  407e66:	83 e0 1f             	and    $0x1f,%eax
  407e69:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407e6d:	48 83 c3 20          	add    $0x20,%rbx
  407e71:	4c 89 b4 24 90 16 00 	mov    %r14,0x1690(%rsp)
  407e78:	00 
  407e79:	48 c7 84 24 98 16 00 	movq   $0x0,0x1698(%rsp)
  407e80:	00 00 00 00 00 
  407e85:	c5 f8 28 05 d3 42 00 	vmovaps 0x42d3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407e8c:	00 
  407e8d:	c5 f8 11 84 24 a0 16 	vmovups %xmm0,0x16a0(%rsp)
  407e94:	00 00 
  407e96:	48 8d b4 24 90 16 00 	lea    0x1690(%rsp),%rsi
  407e9d:	00 
  407e9e:	48 89 df             	mov    %rbx,%rdi
  407ea1:	e8 0a 93 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407ea6:	88 84 24 ca 00 00 00 	mov    %al,0xca(%rsp)
  407ead:	4c 89 b4 24 70 16 00 	mov    %r14,0x1670(%rsp)
  407eb4:	00 
  407eb5:	48 c7 84 24 78 16 00 	movq   $0x0,0x1678(%rsp)
  407ebc:	00 00 00 00 00 
  407ec1:	c5 f8 28 05 97 42 00 	vmovaps 0x4297(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407ec8:	00 
  407ec9:	c5 f8 11 84 24 80 16 	vmovups %xmm0,0x1680(%rsp)
  407ed0:	00 00 
  407ed2:	48 8d 94 24 70 16 00 	lea    0x1670(%rsp),%rdx
  407ed9:	00 
  407eda:	44 89 ff             	mov    %r15d,%edi
  407edd:	48 89 de             	mov    %rbx,%rsi
  407ee0:	e8 6b 98 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407ee5:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  407eea:	44 0f b6 bc 24 cb 00 	movzbl 0xcb(%rsp),%r15d
  407ef1:	00 00 
  407ef3:	44 89 e1             	mov    %r12d,%ecx
  407ef6:	48 01 c1             	add    %rax,%rcx
  407ef9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407efd:	44 89 e0             	mov    %r12d,%eax
  407f00:	83 e0 1f             	and    $0x1f,%eax
  407f03:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407f07:	48 83 c3 20          	add    $0x20,%rbx
  407f0b:	4c 89 b4 24 50 16 00 	mov    %r14,0x1650(%rsp)
  407f12:	00 
  407f13:	48 c7 84 24 58 16 00 	movq   $0x0,0x1658(%rsp)
  407f1a:	00 00 00 00 00 
  407f1f:	c5 f8 28 05 39 42 00 	vmovaps 0x4239(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407f26:	00 
  407f27:	c5 f8 11 84 24 60 16 	vmovups %xmm0,0x1660(%rsp)
  407f2e:	00 00 
  407f30:	48 8d b4 24 50 16 00 	lea    0x1650(%rsp),%rsi
  407f37:	00 
  407f38:	48 89 df             	mov    %rbx,%rdi
  407f3b:	e8 70 92 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407f40:	88 84 24 cb 00 00 00 	mov    %al,0xcb(%rsp)
  407f47:	4c 89 b4 24 30 16 00 	mov    %r14,0x1630(%rsp)
  407f4e:	00 
  407f4f:	48 c7 84 24 38 16 00 	movq   $0x0,0x1638(%rsp)
  407f56:	00 00 00 00 00 
  407f5b:	c5 f8 28 05 fd 41 00 	vmovaps 0x41fd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407f62:	00 
  407f63:	c5 f8 11 84 24 40 16 	vmovups %xmm0,0x1640(%rsp)
  407f6a:	00 00 
  407f6c:	48 8d 94 24 30 16 00 	lea    0x1630(%rsp),%rdx
  407f73:	00 
  407f74:	44 89 ff             	mov    %r15d,%edi
  407f77:	48 89 de             	mov    %rbx,%rsi
  407f7a:	e8 d1 97 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  407f7f:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  407f84:	44 0f b6 bc 24 cc 00 	movzbl 0xcc(%rsp),%r15d
  407f8b:	00 00 
  407f8d:	44 89 e1             	mov    %r12d,%ecx
  407f90:	48 01 c1             	add    %rax,%rcx
  407f93:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  407f97:	44 89 e0             	mov    %r12d,%eax
  407f9a:	83 e0 1f             	and    $0x1f,%eax
  407f9d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  407fa1:	48 83 c3 20          	add    $0x20,%rbx
  407fa5:	4c 89 b4 24 10 16 00 	mov    %r14,0x1610(%rsp)
  407fac:	00 
  407fad:	48 c7 84 24 18 16 00 	movq   $0x0,0x1618(%rsp)
  407fb4:	00 00 00 00 00 
  407fb9:	c5 f8 28 05 9f 41 00 	vmovaps 0x419f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407fc0:	00 
  407fc1:	c5 f8 11 84 24 20 16 	vmovups %xmm0,0x1620(%rsp)
  407fc8:	00 00 
  407fca:	48 8d b4 24 10 16 00 	lea    0x1610(%rsp),%rsi
  407fd1:	00 
  407fd2:	48 89 df             	mov    %rbx,%rdi
  407fd5:	e8 d6 91 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  407fda:	88 84 24 cc 00 00 00 	mov    %al,0xcc(%rsp)
  407fe1:	4c 89 b4 24 f0 15 00 	mov    %r14,0x15f0(%rsp)
  407fe8:	00 
  407fe9:	48 c7 84 24 f8 15 00 	movq   $0x0,0x15f8(%rsp)
  407ff0:	00 00 00 00 00 
  407ff5:	c5 f8 28 05 63 41 00 	vmovaps 0x4163(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  407ffc:	00 
  407ffd:	c5 f8 11 84 24 00 16 	vmovups %xmm0,0x1600(%rsp)
  408004:	00 00 
  408006:	48 8d 94 24 f0 15 00 	lea    0x15f0(%rsp),%rdx
  40800d:	00 
  40800e:	44 89 ff             	mov    %r15d,%edi
  408011:	48 89 de             	mov    %rbx,%rsi
  408014:	e8 37 97 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408019:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  40801e:	44 0f b6 bc 24 cd 00 	movzbl 0xcd(%rsp),%r15d
  408025:	00 00 
  408027:	44 89 e1             	mov    %r12d,%ecx
  40802a:	48 01 c1             	add    %rax,%rcx
  40802d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408031:	44 89 e0             	mov    %r12d,%eax
  408034:	83 e0 1f             	and    $0x1f,%eax
  408037:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40803b:	48 83 c3 20          	add    $0x20,%rbx
  40803f:	4c 89 b4 24 d0 15 00 	mov    %r14,0x15d0(%rsp)
  408046:	00 
  408047:	48 c7 84 24 d8 15 00 	movq   $0x0,0x15d8(%rsp)
  40804e:	00 00 00 00 00 
  408053:	c5 f8 28 05 05 41 00 	vmovaps 0x4105(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40805a:	00 
  40805b:	c5 f8 11 84 24 e0 15 	vmovups %xmm0,0x15e0(%rsp)
  408062:	00 00 
  408064:	48 8d b4 24 d0 15 00 	lea    0x15d0(%rsp),%rsi
  40806b:	00 
  40806c:	48 89 df             	mov    %rbx,%rdi
  40806f:	e8 3c 91 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408074:	88 84 24 cd 00 00 00 	mov    %al,0xcd(%rsp)
  40807b:	4c 89 b4 24 b0 15 00 	mov    %r14,0x15b0(%rsp)
  408082:	00 
  408083:	48 c7 84 24 b8 15 00 	movq   $0x0,0x15b8(%rsp)
  40808a:	00 00 00 00 00 
  40808f:	c5 f8 28 05 c9 40 00 	vmovaps 0x40c9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408096:	00 
  408097:	c5 f8 11 84 24 c0 15 	vmovups %xmm0,0x15c0(%rsp)
  40809e:	00 00 
  4080a0:	48 8d 94 24 b0 15 00 	lea    0x15b0(%rsp),%rdx
  4080a7:	00 
  4080a8:	44 89 ff             	mov    %r15d,%edi
  4080ab:	48 89 de             	mov    %rbx,%rsi
  4080ae:	e8 9d 96 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4080b3:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  4080b8:	44 0f b6 bc 24 ce 00 	movzbl 0xce(%rsp),%r15d
  4080bf:	00 00 
  4080c1:	44 89 e1             	mov    %r12d,%ecx
  4080c4:	48 01 c1             	add    %rax,%rcx
  4080c7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4080cb:	44 89 e0             	mov    %r12d,%eax
  4080ce:	83 e0 1f             	and    $0x1f,%eax
  4080d1:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4080d5:	48 83 c3 20          	add    $0x20,%rbx
  4080d9:	4c 89 b4 24 90 15 00 	mov    %r14,0x1590(%rsp)
  4080e0:	00 
  4080e1:	48 c7 84 24 98 15 00 	movq   $0x0,0x1598(%rsp)
  4080e8:	00 00 00 00 00 
  4080ed:	c5 f8 28 05 6b 40 00 	vmovaps 0x406b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4080f4:	00 
  4080f5:	c5 f8 11 84 24 a0 15 	vmovups %xmm0,0x15a0(%rsp)
  4080fc:	00 00 
  4080fe:	48 8d b4 24 90 15 00 	lea    0x1590(%rsp),%rsi
  408105:	00 
  408106:	48 89 df             	mov    %rbx,%rdi
  408109:	e8 a2 90 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40810e:	88 84 24 ce 00 00 00 	mov    %al,0xce(%rsp)
  408115:	4c 89 b4 24 70 15 00 	mov    %r14,0x1570(%rsp)
  40811c:	00 
  40811d:	48 c7 84 24 78 15 00 	movq   $0x0,0x1578(%rsp)
  408124:	00 00 00 00 00 
  408129:	c5 f8 28 05 2f 40 00 	vmovaps 0x402f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408130:	00 
  408131:	c5 f8 11 84 24 80 15 	vmovups %xmm0,0x1580(%rsp)
  408138:	00 00 
  40813a:	48 8d 94 24 70 15 00 	lea    0x1570(%rsp),%rdx
  408141:	00 
  408142:	44 89 ff             	mov    %r15d,%edi
  408145:	48 89 de             	mov    %rbx,%rsi
  408148:	e8 03 96 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40814d:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  408152:	44 0f b6 bc 24 cf 00 	movzbl 0xcf(%rsp),%r15d
  408159:	00 00 
  40815b:	44 89 e1             	mov    %r12d,%ecx
  40815e:	48 01 c1             	add    %rax,%rcx
  408161:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408165:	44 89 e0             	mov    %r12d,%eax
  408168:	83 e0 1f             	and    $0x1f,%eax
  40816b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40816f:	48 83 c3 20          	add    $0x20,%rbx
  408173:	4c 89 b4 24 50 15 00 	mov    %r14,0x1550(%rsp)
  40817a:	00 
  40817b:	48 c7 84 24 58 15 00 	movq   $0x0,0x1558(%rsp)
  408182:	00 00 00 00 00 
  408187:	c5 f8 28 05 d1 3f 00 	vmovaps 0x3fd1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40818e:	00 
  40818f:	c5 f8 11 84 24 60 15 	vmovups %xmm0,0x1560(%rsp)
  408196:	00 00 
  408198:	48 8d b4 24 50 15 00 	lea    0x1550(%rsp),%rsi
  40819f:	00 
  4081a0:	48 89 df             	mov    %rbx,%rdi
  4081a3:	e8 08 90 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4081a8:	88 84 24 cf 00 00 00 	mov    %al,0xcf(%rsp)
  4081af:	4c 89 b4 24 30 15 00 	mov    %r14,0x1530(%rsp)
  4081b6:	00 
  4081b7:	48 c7 84 24 38 15 00 	movq   $0x0,0x1538(%rsp)
  4081be:	00 00 00 00 00 
  4081c3:	c5 f8 28 05 95 3f 00 	vmovaps 0x3f95(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4081ca:	00 
  4081cb:	c5 f8 11 84 24 40 15 	vmovups %xmm0,0x1540(%rsp)
  4081d2:	00 00 
  4081d4:	48 8d 94 24 30 15 00 	lea    0x1530(%rsp),%rdx
  4081db:	00 
  4081dc:	44 89 ff             	mov    %r15d,%edi
  4081df:	48 89 de             	mov    %rbx,%rsi
  4081e2:	e8 69 95 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4081e7:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  4081ec:	44 0f b6 bc 24 d0 00 	movzbl 0xd0(%rsp),%r15d
  4081f3:	00 00 
  4081f5:	44 89 e1             	mov    %r12d,%ecx
  4081f8:	48 01 c1             	add    %rax,%rcx
  4081fb:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4081ff:	44 89 e0             	mov    %r12d,%eax
  408202:	83 e0 1f             	and    $0x1f,%eax
  408205:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408209:	48 83 c3 20          	add    $0x20,%rbx
  40820d:	4c 89 b4 24 10 15 00 	mov    %r14,0x1510(%rsp)
  408214:	00 
  408215:	48 c7 84 24 18 15 00 	movq   $0x0,0x1518(%rsp)
  40821c:	00 00 00 00 00 
  408221:	c5 f8 28 05 37 3f 00 	vmovaps 0x3f37(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408228:	00 
  408229:	c5 f8 11 84 24 20 15 	vmovups %xmm0,0x1520(%rsp)
  408230:	00 00 
  408232:	48 8d b4 24 10 15 00 	lea    0x1510(%rsp),%rsi
  408239:	00 
  40823a:	48 89 df             	mov    %rbx,%rdi
  40823d:	e8 6e 8f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408242:	88 84 24 d0 00 00 00 	mov    %al,0xd0(%rsp)
  408249:	4c 89 b4 24 f0 14 00 	mov    %r14,0x14f0(%rsp)
  408250:	00 
  408251:	48 c7 84 24 f8 14 00 	movq   $0x0,0x14f8(%rsp)
  408258:	00 00 00 00 00 
  40825d:	c5 f8 28 05 fb 3e 00 	vmovaps 0x3efb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408264:	00 
  408265:	c5 f8 11 84 24 00 15 	vmovups %xmm0,0x1500(%rsp)
  40826c:	00 00 
  40826e:	48 8d 94 24 f0 14 00 	lea    0x14f0(%rsp),%rdx
  408275:	00 
  408276:	44 89 ff             	mov    %r15d,%edi
  408279:	48 89 de             	mov    %rbx,%rsi
  40827c:	e8 cf 94 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408281:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  408286:	44 0f b6 bc 24 d1 00 	movzbl 0xd1(%rsp),%r15d
  40828d:	00 00 
  40828f:	44 89 e1             	mov    %r12d,%ecx
  408292:	48 01 c1             	add    %rax,%rcx
  408295:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408299:	44 89 e0             	mov    %r12d,%eax
  40829c:	83 e0 1f             	and    $0x1f,%eax
  40829f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4082a3:	48 83 c3 20          	add    $0x20,%rbx
  4082a7:	4c 89 b4 24 d0 14 00 	mov    %r14,0x14d0(%rsp)
  4082ae:	00 
  4082af:	48 c7 84 24 d8 14 00 	movq   $0x0,0x14d8(%rsp)
  4082b6:	00 00 00 00 00 
  4082bb:	c5 f8 28 05 9d 3e 00 	vmovaps 0x3e9d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4082c2:	00 
  4082c3:	c5 f8 11 84 24 e0 14 	vmovups %xmm0,0x14e0(%rsp)
  4082ca:	00 00 
  4082cc:	48 8d b4 24 d0 14 00 	lea    0x14d0(%rsp),%rsi
  4082d3:	00 
  4082d4:	48 89 df             	mov    %rbx,%rdi
  4082d7:	e8 d4 8e ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4082dc:	88 84 24 d1 00 00 00 	mov    %al,0xd1(%rsp)
  4082e3:	4c 89 b4 24 b0 14 00 	mov    %r14,0x14b0(%rsp)
  4082ea:	00 
  4082eb:	48 c7 84 24 b8 14 00 	movq   $0x0,0x14b8(%rsp)
  4082f2:	00 00 00 00 00 
  4082f7:	c5 f8 28 05 61 3e 00 	vmovaps 0x3e61(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4082fe:	00 
  4082ff:	c5 f8 11 84 24 c0 14 	vmovups %xmm0,0x14c0(%rsp)
  408306:	00 00 
  408308:	48 8d 94 24 b0 14 00 	lea    0x14b0(%rsp),%rdx
  40830f:	00 
  408310:	44 89 ff             	mov    %r15d,%edi
  408313:	48 89 de             	mov    %rbx,%rsi
  408316:	e8 35 94 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40831b:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  408320:	44 0f b6 bc 24 d2 00 	movzbl 0xd2(%rsp),%r15d
  408327:	00 00 
  408329:	44 89 e1             	mov    %r12d,%ecx
  40832c:	48 01 c1             	add    %rax,%rcx
  40832f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408333:	44 89 e0             	mov    %r12d,%eax
  408336:	83 e0 1f             	and    $0x1f,%eax
  408339:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40833d:	48 83 c3 20          	add    $0x20,%rbx
  408341:	4c 89 b4 24 90 14 00 	mov    %r14,0x1490(%rsp)
  408348:	00 
  408349:	48 c7 84 24 98 14 00 	movq   $0x0,0x1498(%rsp)
  408350:	00 00 00 00 00 
  408355:	c5 f8 28 05 03 3e 00 	vmovaps 0x3e03(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40835c:	00 
  40835d:	c5 f8 11 84 24 a0 14 	vmovups %xmm0,0x14a0(%rsp)
  408364:	00 00 
  408366:	48 8d b4 24 90 14 00 	lea    0x1490(%rsp),%rsi
  40836d:	00 
  40836e:	48 89 df             	mov    %rbx,%rdi
  408371:	e8 3a 8e ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408376:	88 84 24 d2 00 00 00 	mov    %al,0xd2(%rsp)
  40837d:	4c 89 b4 24 70 14 00 	mov    %r14,0x1470(%rsp)
  408384:	00 
  408385:	48 c7 84 24 78 14 00 	movq   $0x0,0x1478(%rsp)
  40838c:	00 00 00 00 00 
  408391:	c5 f8 28 05 c7 3d 00 	vmovaps 0x3dc7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408398:	00 
  408399:	c5 f8 11 84 24 80 14 	vmovups %xmm0,0x1480(%rsp)
  4083a0:	00 00 
  4083a2:	48 8d 94 24 70 14 00 	lea    0x1470(%rsp),%rdx
  4083a9:	00 
  4083aa:	44 89 ff             	mov    %r15d,%edi
  4083ad:	48 89 de             	mov    %rbx,%rsi
  4083b0:	e8 9b 93 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4083b5:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  4083ba:	44 0f b6 bc 24 d3 00 	movzbl 0xd3(%rsp),%r15d
  4083c1:	00 00 
  4083c3:	44 89 e1             	mov    %r12d,%ecx
  4083c6:	48 01 c1             	add    %rax,%rcx
  4083c9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4083cd:	44 89 e0             	mov    %r12d,%eax
  4083d0:	83 e0 1f             	and    $0x1f,%eax
  4083d3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4083d7:	48 83 c3 20          	add    $0x20,%rbx
  4083db:	4c 89 b4 24 50 14 00 	mov    %r14,0x1450(%rsp)
  4083e2:	00 
  4083e3:	48 c7 84 24 58 14 00 	movq   $0x0,0x1458(%rsp)
  4083ea:	00 00 00 00 00 
  4083ef:	c5 f8 28 05 69 3d 00 	vmovaps 0x3d69(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4083f6:	00 
  4083f7:	c5 f8 11 84 24 60 14 	vmovups %xmm0,0x1460(%rsp)
  4083fe:	00 00 
  408400:	48 8d b4 24 50 14 00 	lea    0x1450(%rsp),%rsi
  408407:	00 
  408408:	48 89 df             	mov    %rbx,%rdi
  40840b:	e8 a0 8d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408410:	88 84 24 d3 00 00 00 	mov    %al,0xd3(%rsp)
  408417:	4c 89 b4 24 30 14 00 	mov    %r14,0x1430(%rsp)
  40841e:	00 
  40841f:	48 c7 84 24 38 14 00 	movq   $0x0,0x1438(%rsp)
  408426:	00 00 00 00 00 
  40842b:	c5 f8 28 05 2d 3d 00 	vmovaps 0x3d2d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408432:	00 
  408433:	c5 f8 11 84 24 40 14 	vmovups %xmm0,0x1440(%rsp)
  40843a:	00 00 
  40843c:	48 8d 94 24 30 14 00 	lea    0x1430(%rsp),%rdx
  408443:	00 
  408444:	44 89 ff             	mov    %r15d,%edi
  408447:	48 89 de             	mov    %rbx,%rsi
  40844a:	e8 01 93 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40844f:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  408454:	44 0f b6 bc 24 d4 00 	movzbl 0xd4(%rsp),%r15d
  40845b:	00 00 
  40845d:	44 89 e1             	mov    %r12d,%ecx
  408460:	48 01 c1             	add    %rax,%rcx
  408463:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408467:	44 89 e0             	mov    %r12d,%eax
  40846a:	83 e0 1f             	and    $0x1f,%eax
  40846d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408471:	48 83 c3 20          	add    $0x20,%rbx
  408475:	4c 89 b4 24 10 14 00 	mov    %r14,0x1410(%rsp)
  40847c:	00 
  40847d:	48 c7 84 24 18 14 00 	movq   $0x0,0x1418(%rsp)
  408484:	00 00 00 00 00 
  408489:	c5 f8 28 05 cf 3c 00 	vmovaps 0x3ccf(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408490:	00 
  408491:	c5 f8 11 84 24 20 14 	vmovups %xmm0,0x1420(%rsp)
  408498:	00 00 
  40849a:	48 8d b4 24 10 14 00 	lea    0x1410(%rsp),%rsi
  4084a1:	00 
  4084a2:	48 89 df             	mov    %rbx,%rdi
  4084a5:	e8 06 8d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4084aa:	88 84 24 d4 00 00 00 	mov    %al,0xd4(%rsp)
  4084b1:	4c 89 b4 24 f0 13 00 	mov    %r14,0x13f0(%rsp)
  4084b8:	00 
  4084b9:	48 c7 84 24 f8 13 00 	movq   $0x0,0x13f8(%rsp)
  4084c0:	00 00 00 00 00 
  4084c5:	c5 f8 28 05 93 3c 00 	vmovaps 0x3c93(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4084cc:	00 
  4084cd:	c5 f8 11 84 24 00 14 	vmovups %xmm0,0x1400(%rsp)
  4084d4:	00 00 
  4084d6:	48 8d 94 24 f0 13 00 	lea    0x13f0(%rsp),%rdx
  4084dd:	00 
  4084de:	44 89 ff             	mov    %r15d,%edi
  4084e1:	48 89 de             	mov    %rbx,%rsi
  4084e4:	e8 67 92 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4084e9:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  4084ee:	44 0f b6 bc 24 d5 00 	movzbl 0xd5(%rsp),%r15d
  4084f5:	00 00 
  4084f7:	44 89 e1             	mov    %r12d,%ecx
  4084fa:	48 01 c1             	add    %rax,%rcx
  4084fd:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408501:	44 89 e0             	mov    %r12d,%eax
  408504:	83 e0 1f             	and    $0x1f,%eax
  408507:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40850b:	48 83 c3 20          	add    $0x20,%rbx
  40850f:	4c 89 b4 24 d0 13 00 	mov    %r14,0x13d0(%rsp)
  408516:	00 
  408517:	48 c7 84 24 d8 13 00 	movq   $0x0,0x13d8(%rsp)
  40851e:	00 00 00 00 00 
  408523:	c5 f8 28 05 35 3c 00 	vmovaps 0x3c35(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40852a:	00 
  40852b:	c5 f8 11 84 24 e0 13 	vmovups %xmm0,0x13e0(%rsp)
  408532:	00 00 
  408534:	48 8d b4 24 d0 13 00 	lea    0x13d0(%rsp),%rsi
  40853b:	00 
  40853c:	48 89 df             	mov    %rbx,%rdi
  40853f:	e8 6c 8c ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408544:	88 84 24 d5 00 00 00 	mov    %al,0xd5(%rsp)
  40854b:	4c 89 b4 24 b0 13 00 	mov    %r14,0x13b0(%rsp)
  408552:	00 
  408553:	48 c7 84 24 b8 13 00 	movq   $0x0,0x13b8(%rsp)
  40855a:	00 00 00 00 00 
  40855f:	c5 f8 28 05 f9 3b 00 	vmovaps 0x3bf9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408566:	00 
  408567:	c5 f8 11 84 24 c0 13 	vmovups %xmm0,0x13c0(%rsp)
  40856e:	00 00 
  408570:	48 8d 94 24 b0 13 00 	lea    0x13b0(%rsp),%rdx
  408577:	00 
  408578:	44 89 ff             	mov    %r15d,%edi
  40857b:	48 89 de             	mov    %rbx,%rsi
  40857e:	e8 cd 91 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408583:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  408588:	44 0f b6 bc 24 d6 00 	movzbl 0xd6(%rsp),%r15d
  40858f:	00 00 
  408591:	44 89 e1             	mov    %r12d,%ecx
  408594:	48 01 c1             	add    %rax,%rcx
  408597:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40859b:	44 89 e0             	mov    %r12d,%eax
  40859e:	83 e0 1f             	and    $0x1f,%eax
  4085a1:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4085a5:	48 83 c3 20          	add    $0x20,%rbx
  4085a9:	4c 89 b4 24 90 13 00 	mov    %r14,0x1390(%rsp)
  4085b0:	00 
  4085b1:	48 c7 84 24 98 13 00 	movq   $0x0,0x1398(%rsp)
  4085b8:	00 00 00 00 00 
  4085bd:	c5 f8 28 05 9b 3b 00 	vmovaps 0x3b9b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4085c4:	00 
  4085c5:	c5 f8 11 84 24 a0 13 	vmovups %xmm0,0x13a0(%rsp)
  4085cc:	00 00 
  4085ce:	48 8d b4 24 90 13 00 	lea    0x1390(%rsp),%rsi
  4085d5:	00 
  4085d6:	48 89 df             	mov    %rbx,%rdi
  4085d9:	e8 d2 8b ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4085de:	88 84 24 d6 00 00 00 	mov    %al,0xd6(%rsp)
  4085e5:	4c 89 b4 24 70 13 00 	mov    %r14,0x1370(%rsp)
  4085ec:	00 
  4085ed:	48 c7 84 24 78 13 00 	movq   $0x0,0x1378(%rsp)
  4085f4:	00 00 00 00 00 
  4085f9:	c5 f8 28 05 5f 3b 00 	vmovaps 0x3b5f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408600:	00 
  408601:	c5 f8 11 84 24 80 13 	vmovups %xmm0,0x1380(%rsp)
  408608:	00 00 
  40860a:	48 8d 94 24 70 13 00 	lea    0x1370(%rsp),%rdx
  408611:	00 
  408612:	44 89 ff             	mov    %r15d,%edi
  408615:	48 89 de             	mov    %rbx,%rsi
  408618:	e8 33 91 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40861d:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  408622:	44 0f b6 bc 24 d7 00 	movzbl 0xd7(%rsp),%r15d
  408629:	00 00 
  40862b:	44 89 e1             	mov    %r12d,%ecx
  40862e:	48 01 c1             	add    %rax,%rcx
  408631:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408635:	44 89 e0             	mov    %r12d,%eax
  408638:	83 e0 1f             	and    $0x1f,%eax
  40863b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40863f:	48 83 c3 20          	add    $0x20,%rbx
  408643:	4c 89 b4 24 50 13 00 	mov    %r14,0x1350(%rsp)
  40864a:	00 
  40864b:	48 c7 84 24 58 13 00 	movq   $0x0,0x1358(%rsp)
  408652:	00 00 00 00 00 
  408657:	c5 f8 28 05 01 3b 00 	vmovaps 0x3b01(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40865e:	00 
  40865f:	c5 f8 11 84 24 60 13 	vmovups %xmm0,0x1360(%rsp)
  408666:	00 00 
  408668:	48 8d b4 24 50 13 00 	lea    0x1350(%rsp),%rsi
  40866f:	00 
  408670:	48 89 df             	mov    %rbx,%rdi
  408673:	e8 38 8b ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408678:	88 84 24 d7 00 00 00 	mov    %al,0xd7(%rsp)
  40867f:	4c 89 b4 24 30 13 00 	mov    %r14,0x1330(%rsp)
  408686:	00 
  408687:	48 c7 84 24 38 13 00 	movq   $0x0,0x1338(%rsp)
  40868e:	00 00 00 00 00 
  408693:	c5 f8 28 05 c5 3a 00 	vmovaps 0x3ac5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40869a:	00 
  40869b:	c5 f8 11 84 24 40 13 	vmovups %xmm0,0x1340(%rsp)
  4086a2:	00 00 
  4086a4:	48 8d 94 24 30 13 00 	lea    0x1330(%rsp),%rdx
  4086ab:	00 
  4086ac:	44 89 ff             	mov    %r15d,%edi
  4086af:	48 89 de             	mov    %rbx,%rsi
  4086b2:	e8 99 90 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4086b7:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  4086bc:	44 0f b6 bc 24 d8 00 	movzbl 0xd8(%rsp),%r15d
  4086c3:	00 00 
  4086c5:	44 89 e1             	mov    %r12d,%ecx
  4086c8:	48 01 c1             	add    %rax,%rcx
  4086cb:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4086cf:	44 89 e0             	mov    %r12d,%eax
  4086d2:	83 e0 1f             	and    $0x1f,%eax
  4086d5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4086d9:	48 83 c3 20          	add    $0x20,%rbx
  4086dd:	4c 89 b4 24 10 13 00 	mov    %r14,0x1310(%rsp)
  4086e4:	00 
  4086e5:	48 c7 84 24 18 13 00 	movq   $0x0,0x1318(%rsp)
  4086ec:	00 00 00 00 00 
  4086f1:	c5 f8 28 05 67 3a 00 	vmovaps 0x3a67(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4086f8:	00 
  4086f9:	c5 f8 11 84 24 20 13 	vmovups %xmm0,0x1320(%rsp)
  408700:	00 00 
  408702:	48 8d b4 24 10 13 00 	lea    0x1310(%rsp),%rsi
  408709:	00 
  40870a:	48 89 df             	mov    %rbx,%rdi
  40870d:	e8 9e 8a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408712:	88 84 24 d8 00 00 00 	mov    %al,0xd8(%rsp)
  408719:	4c 89 b4 24 f0 12 00 	mov    %r14,0x12f0(%rsp)
  408720:	00 
  408721:	48 c7 84 24 f8 12 00 	movq   $0x0,0x12f8(%rsp)
  408728:	00 00 00 00 00 
  40872d:	c5 f8 28 05 2b 3a 00 	vmovaps 0x3a2b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408734:	00 
  408735:	c5 f8 11 84 24 00 13 	vmovups %xmm0,0x1300(%rsp)
  40873c:	00 00 
  40873e:	48 8d 94 24 f0 12 00 	lea    0x12f0(%rsp),%rdx
  408745:	00 
  408746:	44 89 ff             	mov    %r15d,%edi
  408749:	48 89 de             	mov    %rbx,%rsi
  40874c:	e8 ff 8f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408751:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  408756:	44 0f b6 bc 24 d9 00 	movzbl 0xd9(%rsp),%r15d
  40875d:	00 00 
  40875f:	44 89 e1             	mov    %r12d,%ecx
  408762:	48 01 c1             	add    %rax,%rcx
  408765:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408769:	44 89 e0             	mov    %r12d,%eax
  40876c:	83 e0 1f             	and    $0x1f,%eax
  40876f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408773:	48 83 c3 20          	add    $0x20,%rbx
  408777:	4c 89 b4 24 d0 12 00 	mov    %r14,0x12d0(%rsp)
  40877e:	00 
  40877f:	48 c7 84 24 d8 12 00 	movq   $0x0,0x12d8(%rsp)
  408786:	00 00 00 00 00 
  40878b:	c5 f8 28 05 cd 39 00 	vmovaps 0x39cd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408792:	00 
  408793:	c5 f8 11 84 24 e0 12 	vmovups %xmm0,0x12e0(%rsp)
  40879a:	00 00 
  40879c:	48 8d b4 24 d0 12 00 	lea    0x12d0(%rsp),%rsi
  4087a3:	00 
  4087a4:	48 89 df             	mov    %rbx,%rdi
  4087a7:	e8 04 8a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4087ac:	88 84 24 d9 00 00 00 	mov    %al,0xd9(%rsp)
  4087b3:	4c 89 b4 24 b0 12 00 	mov    %r14,0x12b0(%rsp)
  4087ba:	00 
  4087bb:	48 c7 84 24 b8 12 00 	movq   $0x0,0x12b8(%rsp)
  4087c2:	00 00 00 00 00 
  4087c7:	c5 f8 28 05 91 39 00 	vmovaps 0x3991(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4087ce:	00 
  4087cf:	c5 f8 11 84 24 c0 12 	vmovups %xmm0,0x12c0(%rsp)
  4087d6:	00 00 
  4087d8:	48 8d 94 24 b0 12 00 	lea    0x12b0(%rsp),%rdx
  4087df:	00 
  4087e0:	44 89 ff             	mov    %r15d,%edi
  4087e3:	48 89 de             	mov    %rbx,%rsi
  4087e6:	e8 65 8f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4087eb:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  4087f0:	44 0f b6 bc 24 da 00 	movzbl 0xda(%rsp),%r15d
  4087f7:	00 00 
  4087f9:	44 89 e1             	mov    %r12d,%ecx
  4087fc:	48 01 c1             	add    %rax,%rcx
  4087ff:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408803:	44 89 e0             	mov    %r12d,%eax
  408806:	83 e0 1f             	and    $0x1f,%eax
  408809:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40880d:	48 83 c3 20          	add    $0x20,%rbx
  408811:	4c 89 b4 24 90 12 00 	mov    %r14,0x1290(%rsp)
  408818:	00 
  408819:	48 c7 84 24 98 12 00 	movq   $0x0,0x1298(%rsp)
  408820:	00 00 00 00 00 
  408825:	c5 f8 28 05 33 39 00 	vmovaps 0x3933(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40882c:	00 
  40882d:	c5 f8 11 84 24 a0 12 	vmovups %xmm0,0x12a0(%rsp)
  408834:	00 00 
  408836:	48 8d b4 24 90 12 00 	lea    0x1290(%rsp),%rsi
  40883d:	00 
  40883e:	48 89 df             	mov    %rbx,%rdi
  408841:	e8 6a 89 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408846:	88 84 24 da 00 00 00 	mov    %al,0xda(%rsp)
  40884d:	4c 89 b4 24 70 12 00 	mov    %r14,0x1270(%rsp)
  408854:	00 
  408855:	48 c7 84 24 78 12 00 	movq   $0x0,0x1278(%rsp)
  40885c:	00 00 00 00 00 
  408861:	c5 f8 28 05 f7 38 00 	vmovaps 0x38f7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408868:	00 
  408869:	c5 f8 11 84 24 80 12 	vmovups %xmm0,0x1280(%rsp)
  408870:	00 00 
  408872:	48 8d 94 24 70 12 00 	lea    0x1270(%rsp),%rdx
  408879:	00 
  40887a:	44 89 ff             	mov    %r15d,%edi
  40887d:	48 89 de             	mov    %rbx,%rsi
  408880:	e8 cb 8e ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408885:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  40888a:	44 0f b6 bc 24 db 00 	movzbl 0xdb(%rsp),%r15d
  408891:	00 00 
  408893:	44 89 e1             	mov    %r12d,%ecx
  408896:	48 01 c1             	add    %rax,%rcx
  408899:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40889d:	44 89 e0             	mov    %r12d,%eax
  4088a0:	83 e0 1f             	and    $0x1f,%eax
  4088a3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4088a7:	48 83 c3 20          	add    $0x20,%rbx
  4088ab:	4c 89 b4 24 50 12 00 	mov    %r14,0x1250(%rsp)
  4088b2:	00 
  4088b3:	48 c7 84 24 58 12 00 	movq   $0x0,0x1258(%rsp)
  4088ba:	00 00 00 00 00 
  4088bf:	c5 f8 28 05 99 38 00 	vmovaps 0x3899(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4088c6:	00 
  4088c7:	c5 f8 11 84 24 60 12 	vmovups %xmm0,0x1260(%rsp)
  4088ce:	00 00 
  4088d0:	48 8d b4 24 50 12 00 	lea    0x1250(%rsp),%rsi
  4088d7:	00 
  4088d8:	48 89 df             	mov    %rbx,%rdi
  4088db:	e8 d0 88 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4088e0:	88 84 24 db 00 00 00 	mov    %al,0xdb(%rsp)
  4088e7:	4c 89 b4 24 30 12 00 	mov    %r14,0x1230(%rsp)
  4088ee:	00 
  4088ef:	48 c7 84 24 38 12 00 	movq   $0x0,0x1238(%rsp)
  4088f6:	00 00 00 00 00 
  4088fb:	c5 f8 28 05 5d 38 00 	vmovaps 0x385d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408902:	00 
  408903:	c5 f8 11 84 24 40 12 	vmovups %xmm0,0x1240(%rsp)
  40890a:	00 00 
  40890c:	48 8d 94 24 30 12 00 	lea    0x1230(%rsp),%rdx
  408913:	00 
  408914:	44 89 ff             	mov    %r15d,%edi
  408917:	48 89 de             	mov    %rbx,%rsi
  40891a:	e8 31 8e ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40891f:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  408924:	44 0f b6 bc 24 dc 00 	movzbl 0xdc(%rsp),%r15d
  40892b:	00 00 
  40892d:	44 89 e1             	mov    %r12d,%ecx
  408930:	48 01 c1             	add    %rax,%rcx
  408933:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408937:	44 89 e0             	mov    %r12d,%eax
  40893a:	83 e0 1f             	and    $0x1f,%eax
  40893d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408941:	48 83 c3 20          	add    $0x20,%rbx
  408945:	4c 89 b4 24 10 12 00 	mov    %r14,0x1210(%rsp)
  40894c:	00 
  40894d:	48 c7 84 24 18 12 00 	movq   $0x0,0x1218(%rsp)
  408954:	00 00 00 00 00 
  408959:	c5 f8 28 05 ff 37 00 	vmovaps 0x37ff(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408960:	00 
  408961:	c5 f8 11 84 24 20 12 	vmovups %xmm0,0x1220(%rsp)
  408968:	00 00 
  40896a:	48 8d b4 24 10 12 00 	lea    0x1210(%rsp),%rsi
  408971:	00 
  408972:	48 89 df             	mov    %rbx,%rdi
  408975:	e8 36 88 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40897a:	88 84 24 dc 00 00 00 	mov    %al,0xdc(%rsp)
  408981:	4c 89 b4 24 f0 11 00 	mov    %r14,0x11f0(%rsp)
  408988:	00 
  408989:	48 c7 84 24 f8 11 00 	movq   $0x0,0x11f8(%rsp)
  408990:	00 00 00 00 00 
  408995:	c5 f8 28 05 c3 37 00 	vmovaps 0x37c3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40899c:	00 
  40899d:	c5 f8 11 84 24 00 12 	vmovups %xmm0,0x1200(%rsp)
  4089a4:	00 00 
  4089a6:	48 8d 94 24 f0 11 00 	lea    0x11f0(%rsp),%rdx
  4089ad:	00 
  4089ae:	44 89 ff             	mov    %r15d,%edi
  4089b1:	48 89 de             	mov    %rbx,%rsi
  4089b4:	e8 97 8d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4089b9:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  4089be:	44 0f b6 bc 24 dd 00 	movzbl 0xdd(%rsp),%r15d
  4089c5:	00 00 
  4089c7:	44 89 e1             	mov    %r12d,%ecx
  4089ca:	48 01 c1             	add    %rax,%rcx
  4089cd:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4089d1:	44 89 e0             	mov    %r12d,%eax
  4089d4:	83 e0 1f             	and    $0x1f,%eax
  4089d7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4089db:	48 83 c3 20          	add    $0x20,%rbx
  4089df:	4c 89 b4 24 d0 11 00 	mov    %r14,0x11d0(%rsp)
  4089e6:	00 
  4089e7:	48 c7 84 24 d8 11 00 	movq   $0x0,0x11d8(%rsp)
  4089ee:	00 00 00 00 00 
  4089f3:	c5 f8 28 05 65 37 00 	vmovaps 0x3765(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4089fa:	00 
  4089fb:	c5 f8 11 84 24 e0 11 	vmovups %xmm0,0x11e0(%rsp)
  408a02:	00 00 
  408a04:	48 8d b4 24 d0 11 00 	lea    0x11d0(%rsp),%rsi
  408a0b:	00 
  408a0c:	48 89 df             	mov    %rbx,%rdi
  408a0f:	e8 9c 87 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408a14:	88 84 24 dd 00 00 00 	mov    %al,0xdd(%rsp)
  408a1b:	4c 89 b4 24 b0 11 00 	mov    %r14,0x11b0(%rsp)
  408a22:	00 
  408a23:	48 c7 84 24 b8 11 00 	movq   $0x0,0x11b8(%rsp)
  408a2a:	00 00 00 00 00 
  408a2f:	c5 f8 28 05 29 37 00 	vmovaps 0x3729(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408a36:	00 
  408a37:	c5 f8 11 84 24 c0 11 	vmovups %xmm0,0x11c0(%rsp)
  408a3e:	00 00 
  408a40:	48 8d 94 24 b0 11 00 	lea    0x11b0(%rsp),%rdx
  408a47:	00 
  408a48:	44 89 ff             	mov    %r15d,%edi
  408a4b:	48 89 de             	mov    %rbx,%rsi
  408a4e:	e8 fd 8c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408a53:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  408a58:	44 0f b6 bc 24 de 00 	movzbl 0xde(%rsp),%r15d
  408a5f:	00 00 
  408a61:	44 89 e1             	mov    %r12d,%ecx
  408a64:	48 01 c1             	add    %rax,%rcx
  408a67:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408a6b:	44 89 e0             	mov    %r12d,%eax
  408a6e:	83 e0 1f             	and    $0x1f,%eax
  408a71:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408a75:	48 83 c3 20          	add    $0x20,%rbx
  408a79:	4c 89 b4 24 90 11 00 	mov    %r14,0x1190(%rsp)
  408a80:	00 
  408a81:	48 c7 84 24 98 11 00 	movq   $0x0,0x1198(%rsp)
  408a88:	00 00 00 00 00 
  408a8d:	c5 f8 28 05 cb 36 00 	vmovaps 0x36cb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408a94:	00 
  408a95:	c5 f8 11 84 24 a0 11 	vmovups %xmm0,0x11a0(%rsp)
  408a9c:	00 00 
  408a9e:	48 8d b4 24 90 11 00 	lea    0x1190(%rsp),%rsi
  408aa5:	00 
  408aa6:	48 89 df             	mov    %rbx,%rdi
  408aa9:	e8 02 87 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408aae:	88 84 24 de 00 00 00 	mov    %al,0xde(%rsp)
  408ab5:	4c 89 b4 24 70 11 00 	mov    %r14,0x1170(%rsp)
  408abc:	00 
  408abd:	48 c7 84 24 78 11 00 	movq   $0x0,0x1178(%rsp)
  408ac4:	00 00 00 00 00 
  408ac9:	c5 f8 28 05 8f 36 00 	vmovaps 0x368f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408ad0:	00 
  408ad1:	c5 f8 11 84 24 80 11 	vmovups %xmm0,0x1180(%rsp)
  408ad8:	00 00 
  408ada:	48 8d 94 24 70 11 00 	lea    0x1170(%rsp),%rdx
  408ae1:	00 
  408ae2:	44 89 ff             	mov    %r15d,%edi
  408ae5:	48 89 de             	mov    %rbx,%rsi
  408ae8:	e8 63 8c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408aed:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  408af2:	44 0f b6 bc 24 df 00 	movzbl 0xdf(%rsp),%r15d
  408af9:	00 00 
  408afb:	44 89 e1             	mov    %r12d,%ecx
  408afe:	48 01 c1             	add    %rax,%rcx
  408b01:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408b05:	44 89 e0             	mov    %r12d,%eax
  408b08:	83 e0 1f             	and    $0x1f,%eax
  408b0b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408b0f:	48 83 c3 20          	add    $0x20,%rbx
  408b13:	4c 89 b4 24 50 11 00 	mov    %r14,0x1150(%rsp)
  408b1a:	00 
  408b1b:	48 c7 84 24 58 11 00 	movq   $0x0,0x1158(%rsp)
  408b22:	00 00 00 00 00 
  408b27:	c5 f8 28 05 31 36 00 	vmovaps 0x3631(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408b2e:	00 
  408b2f:	c5 f8 11 84 24 60 11 	vmovups %xmm0,0x1160(%rsp)
  408b36:	00 00 
  408b38:	48 8d b4 24 50 11 00 	lea    0x1150(%rsp),%rsi
  408b3f:	00 
  408b40:	48 89 df             	mov    %rbx,%rdi
  408b43:	e8 68 86 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408b48:	88 84 24 df 00 00 00 	mov    %al,0xdf(%rsp)
  408b4f:	4c 89 b4 24 30 11 00 	mov    %r14,0x1130(%rsp)
  408b56:	00 
  408b57:	48 c7 84 24 38 11 00 	movq   $0x0,0x1138(%rsp)
  408b5e:	00 00 00 00 00 
  408b63:	c5 f8 28 05 f5 35 00 	vmovaps 0x35f5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408b6a:	00 
  408b6b:	c5 f8 11 84 24 40 11 	vmovups %xmm0,0x1140(%rsp)
  408b72:	00 00 
  408b74:	48 8d 94 24 30 11 00 	lea    0x1130(%rsp),%rdx
  408b7b:	00 
  408b7c:	44 89 ff             	mov    %r15d,%edi
  408b7f:	48 89 de             	mov    %rbx,%rsi
  408b82:	e8 c9 8b ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408b87:	0f b6 04 24          	movzbl (%rsp),%eax
  408b8b:	44 0f b6 bc 24 e0 00 	movzbl 0xe0(%rsp),%r15d
  408b92:	00 00 
  408b94:	44 89 e1             	mov    %r12d,%ecx
  408b97:	48 01 c1             	add    %rax,%rcx
  408b9a:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408b9e:	44 89 e0             	mov    %r12d,%eax
  408ba1:	83 e0 1f             	and    $0x1f,%eax
  408ba4:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408ba8:	48 83 c3 20          	add    $0x20,%rbx
  408bac:	4c 89 b4 24 10 11 00 	mov    %r14,0x1110(%rsp)
  408bb3:	00 
  408bb4:	48 c7 84 24 18 11 00 	movq   $0x0,0x1118(%rsp)
  408bbb:	00 00 00 00 00 
  408bc0:	c5 f8 28 05 98 35 00 	vmovaps 0x3598(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408bc7:	00 
  408bc8:	c5 f8 11 84 24 20 11 	vmovups %xmm0,0x1120(%rsp)
  408bcf:	00 00 
  408bd1:	48 8d b4 24 10 11 00 	lea    0x1110(%rsp),%rsi
  408bd8:	00 
  408bd9:	48 89 df             	mov    %rbx,%rdi
  408bdc:	e8 cf 85 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408be1:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  408be8:	4c 89 b4 24 f0 10 00 	mov    %r14,0x10f0(%rsp)
  408bef:	00 
  408bf0:	48 c7 84 24 f8 10 00 	movq   $0x0,0x10f8(%rsp)
  408bf7:	00 00 00 00 00 
  408bfc:	c5 f8 28 05 5c 35 00 	vmovaps 0x355c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408c03:	00 
  408c04:	c5 f8 11 84 24 00 11 	vmovups %xmm0,0x1100(%rsp)
  408c0b:	00 00 
  408c0d:	48 8d 94 24 f0 10 00 	lea    0x10f0(%rsp),%rdx
  408c14:	00 
  408c15:	44 89 ff             	mov    %r15d,%edi
  408c18:	48 89 de             	mov    %rbx,%rsi
  408c1b:	e8 30 8b ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408c20:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  408c25:	44 0f b6 bc 24 e1 00 	movzbl 0xe1(%rsp),%r15d
  408c2c:	00 00 
  408c2e:	44 89 e1             	mov    %r12d,%ecx
  408c31:	48 01 c1             	add    %rax,%rcx
  408c34:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408c38:	44 89 e0             	mov    %r12d,%eax
  408c3b:	83 e0 1f             	and    $0x1f,%eax
  408c3e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408c42:	48 83 c3 20          	add    $0x20,%rbx
  408c46:	4c 89 b4 24 d0 10 00 	mov    %r14,0x10d0(%rsp)
  408c4d:	00 
  408c4e:	48 c7 84 24 d8 10 00 	movq   $0x0,0x10d8(%rsp)
  408c55:	00 00 00 00 00 
  408c5a:	c5 f8 28 05 fe 34 00 	vmovaps 0x34fe(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408c61:	00 
  408c62:	c5 f8 11 84 24 e0 10 	vmovups %xmm0,0x10e0(%rsp)
  408c69:	00 00 
  408c6b:	48 8d b4 24 d0 10 00 	lea    0x10d0(%rsp),%rsi
  408c72:	00 
  408c73:	48 89 df             	mov    %rbx,%rdi
  408c76:	e8 35 85 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408c7b:	88 84 24 e1 00 00 00 	mov    %al,0xe1(%rsp)
  408c82:	4c 89 b4 24 b0 10 00 	mov    %r14,0x10b0(%rsp)
  408c89:	00 
  408c8a:	48 c7 84 24 b8 10 00 	movq   $0x0,0x10b8(%rsp)
  408c91:	00 00 00 00 00 
  408c96:	c5 f8 28 05 c2 34 00 	vmovaps 0x34c2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408c9d:	00 
  408c9e:	c5 f8 11 84 24 c0 10 	vmovups %xmm0,0x10c0(%rsp)
  408ca5:	00 00 
  408ca7:	48 8d 94 24 b0 10 00 	lea    0x10b0(%rsp),%rdx
  408cae:	00 
  408caf:	44 89 ff             	mov    %r15d,%edi
  408cb2:	48 89 de             	mov    %rbx,%rsi
  408cb5:	e8 96 8a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408cba:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  408cbf:	44 0f b6 bc 24 e2 00 	movzbl 0xe2(%rsp),%r15d
  408cc6:	00 00 
  408cc8:	44 89 e1             	mov    %r12d,%ecx
  408ccb:	48 01 c1             	add    %rax,%rcx
  408cce:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408cd2:	44 89 e0             	mov    %r12d,%eax
  408cd5:	83 e0 1f             	and    $0x1f,%eax
  408cd8:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408cdc:	48 83 c3 20          	add    $0x20,%rbx
  408ce0:	4c 89 b4 24 90 10 00 	mov    %r14,0x1090(%rsp)
  408ce7:	00 
  408ce8:	48 c7 84 24 98 10 00 	movq   $0x0,0x1098(%rsp)
  408cef:	00 00 00 00 00 
  408cf4:	c5 f8 28 05 64 34 00 	vmovaps 0x3464(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408cfb:	00 
  408cfc:	c5 f8 11 84 24 a0 10 	vmovups %xmm0,0x10a0(%rsp)
  408d03:	00 00 
  408d05:	48 8d b4 24 90 10 00 	lea    0x1090(%rsp),%rsi
  408d0c:	00 
  408d0d:	48 89 df             	mov    %rbx,%rdi
  408d10:	e8 9b 84 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408d15:	88 84 24 e2 00 00 00 	mov    %al,0xe2(%rsp)
  408d1c:	4c 89 b4 24 70 10 00 	mov    %r14,0x1070(%rsp)
  408d23:	00 
  408d24:	48 c7 84 24 78 10 00 	movq   $0x0,0x1078(%rsp)
  408d2b:	00 00 00 00 00 
  408d30:	c5 f8 28 05 28 34 00 	vmovaps 0x3428(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408d37:	00 
  408d38:	c5 f8 11 84 24 80 10 	vmovups %xmm0,0x1080(%rsp)
  408d3f:	00 00 
  408d41:	48 8d 94 24 70 10 00 	lea    0x1070(%rsp),%rdx
  408d48:	00 
  408d49:	44 89 ff             	mov    %r15d,%edi
  408d4c:	48 89 de             	mov    %rbx,%rsi
  408d4f:	e8 fc 89 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408d54:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  408d59:	44 0f b6 bc 24 e3 00 	movzbl 0xe3(%rsp),%r15d
  408d60:	00 00 
  408d62:	44 89 e1             	mov    %r12d,%ecx
  408d65:	48 01 c1             	add    %rax,%rcx
  408d68:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408d6c:	44 89 e0             	mov    %r12d,%eax
  408d6f:	83 e0 1f             	and    $0x1f,%eax
  408d72:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408d76:	48 83 c3 20          	add    $0x20,%rbx
  408d7a:	4c 89 b4 24 50 10 00 	mov    %r14,0x1050(%rsp)
  408d81:	00 
  408d82:	48 c7 84 24 58 10 00 	movq   $0x0,0x1058(%rsp)
  408d89:	00 00 00 00 00 
  408d8e:	c5 f8 28 05 ca 33 00 	vmovaps 0x33ca(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408d95:	00 
  408d96:	c5 f8 11 84 24 60 10 	vmovups %xmm0,0x1060(%rsp)
  408d9d:	00 00 
  408d9f:	48 8d b4 24 50 10 00 	lea    0x1050(%rsp),%rsi
  408da6:	00 
  408da7:	48 89 df             	mov    %rbx,%rdi
  408daa:	e8 01 84 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408daf:	88 84 24 e3 00 00 00 	mov    %al,0xe3(%rsp)
  408db6:	4c 89 b4 24 30 10 00 	mov    %r14,0x1030(%rsp)
  408dbd:	00 
  408dbe:	48 c7 84 24 38 10 00 	movq   $0x0,0x1038(%rsp)
  408dc5:	00 00 00 00 00 
  408dca:	c5 f8 28 05 8e 33 00 	vmovaps 0x338e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408dd1:	00 
  408dd2:	c5 f8 11 84 24 40 10 	vmovups %xmm0,0x1040(%rsp)
  408dd9:	00 00 
  408ddb:	48 8d 94 24 30 10 00 	lea    0x1030(%rsp),%rdx
  408de2:	00 
  408de3:	44 89 ff             	mov    %r15d,%edi
  408de6:	48 89 de             	mov    %rbx,%rsi
  408de9:	e8 62 89 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408dee:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  408df3:	44 0f b6 bc 24 e4 00 	movzbl 0xe4(%rsp),%r15d
  408dfa:	00 00 
  408dfc:	44 89 e1             	mov    %r12d,%ecx
  408dff:	48 01 c1             	add    %rax,%rcx
  408e02:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408e06:	44 89 e0             	mov    %r12d,%eax
  408e09:	83 e0 1f             	and    $0x1f,%eax
  408e0c:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408e10:	48 83 c3 20          	add    $0x20,%rbx
  408e14:	4c 89 b4 24 10 10 00 	mov    %r14,0x1010(%rsp)
  408e1b:	00 
  408e1c:	48 c7 84 24 18 10 00 	movq   $0x0,0x1018(%rsp)
  408e23:	00 00 00 00 00 
  408e28:	c5 f8 28 05 30 33 00 	vmovaps 0x3330(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408e2f:	00 
  408e30:	c5 f8 11 84 24 20 10 	vmovups %xmm0,0x1020(%rsp)
  408e37:	00 00 
  408e39:	48 8d b4 24 10 10 00 	lea    0x1010(%rsp),%rsi
  408e40:	00 
  408e41:	48 89 df             	mov    %rbx,%rdi
  408e44:	e8 67 83 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408e49:	88 84 24 e4 00 00 00 	mov    %al,0xe4(%rsp)
  408e50:	4c 89 b4 24 f0 0f 00 	mov    %r14,0xff0(%rsp)
  408e57:	00 
  408e58:	48 c7 84 24 f8 0f 00 	movq   $0x0,0xff8(%rsp)
  408e5f:	00 00 00 00 00 
  408e64:	c5 f8 28 05 f4 32 00 	vmovaps 0x32f4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408e6b:	00 
  408e6c:	c5 f8 11 84 24 00 10 	vmovups %xmm0,0x1000(%rsp)
  408e73:	00 00 
  408e75:	48 8d 94 24 f0 0f 00 	lea    0xff0(%rsp),%rdx
  408e7c:	00 
  408e7d:	44 89 ff             	mov    %r15d,%edi
  408e80:	48 89 de             	mov    %rbx,%rsi
  408e83:	e8 c8 88 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408e88:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  408e8d:	44 0f b6 bc 24 e5 00 	movzbl 0xe5(%rsp),%r15d
  408e94:	00 00 
  408e96:	44 89 e1             	mov    %r12d,%ecx
  408e99:	48 01 c1             	add    %rax,%rcx
  408e9c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408ea0:	44 89 e0             	mov    %r12d,%eax
  408ea3:	83 e0 1f             	and    $0x1f,%eax
  408ea6:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408eaa:	48 83 c3 20          	add    $0x20,%rbx
  408eae:	4c 89 b4 24 d0 0f 00 	mov    %r14,0xfd0(%rsp)
  408eb5:	00 
  408eb6:	48 c7 84 24 d8 0f 00 	movq   $0x0,0xfd8(%rsp)
  408ebd:	00 00 00 00 00 
  408ec2:	c5 f8 28 05 96 32 00 	vmovaps 0x3296(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408ec9:	00 
  408eca:	c5 f8 11 84 24 e0 0f 	vmovups %xmm0,0xfe0(%rsp)
  408ed1:	00 00 
  408ed3:	48 8d b4 24 d0 0f 00 	lea    0xfd0(%rsp),%rsi
  408eda:	00 
  408edb:	48 89 df             	mov    %rbx,%rdi
  408ede:	e8 cd 82 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408ee3:	88 84 24 e5 00 00 00 	mov    %al,0xe5(%rsp)
  408eea:	4c 89 b4 24 b0 0f 00 	mov    %r14,0xfb0(%rsp)
  408ef1:	00 
  408ef2:	48 c7 84 24 b8 0f 00 	movq   $0x0,0xfb8(%rsp)
  408ef9:	00 00 00 00 00 
  408efe:	c5 f8 28 05 5a 32 00 	vmovaps 0x325a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408f05:	00 
  408f06:	c5 f8 11 84 24 c0 0f 	vmovups %xmm0,0xfc0(%rsp)
  408f0d:	00 00 
  408f0f:	48 8d 94 24 b0 0f 00 	lea    0xfb0(%rsp),%rdx
  408f16:	00 
  408f17:	44 89 ff             	mov    %r15d,%edi
  408f1a:	48 89 de             	mov    %rbx,%rsi
  408f1d:	e8 2e 88 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408f22:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  408f27:	44 0f b6 bc 24 e6 00 	movzbl 0xe6(%rsp),%r15d
  408f2e:	00 00 
  408f30:	44 89 e1             	mov    %r12d,%ecx
  408f33:	48 01 c1             	add    %rax,%rcx
  408f36:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408f3a:	44 89 e0             	mov    %r12d,%eax
  408f3d:	83 e0 1f             	and    $0x1f,%eax
  408f40:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408f44:	48 83 c3 20          	add    $0x20,%rbx
  408f48:	4c 89 b4 24 90 0f 00 	mov    %r14,0xf90(%rsp)
  408f4f:	00 
  408f50:	48 c7 84 24 98 0f 00 	movq   $0x0,0xf98(%rsp)
  408f57:	00 00 00 00 00 
  408f5c:	c5 f8 28 05 fc 31 00 	vmovaps 0x31fc(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408f63:	00 
  408f64:	c5 f8 11 84 24 a0 0f 	vmovups %xmm0,0xfa0(%rsp)
  408f6b:	00 00 
  408f6d:	48 8d b4 24 90 0f 00 	lea    0xf90(%rsp),%rsi
  408f74:	00 
  408f75:	48 89 df             	mov    %rbx,%rdi
  408f78:	e8 33 82 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  408f7d:	88 84 24 e6 00 00 00 	mov    %al,0xe6(%rsp)
  408f84:	4c 89 b4 24 70 0f 00 	mov    %r14,0xf70(%rsp)
  408f8b:	00 
  408f8c:	48 c7 84 24 78 0f 00 	movq   $0x0,0xf78(%rsp)
  408f93:	00 00 00 00 00 
  408f98:	c5 f8 28 05 c0 31 00 	vmovaps 0x31c0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408f9f:	00 
  408fa0:	c5 f8 11 84 24 80 0f 	vmovups %xmm0,0xf80(%rsp)
  408fa7:	00 00 
  408fa9:	48 8d 94 24 70 0f 00 	lea    0xf70(%rsp),%rdx
  408fb0:	00 
  408fb1:	44 89 ff             	mov    %r15d,%edi
  408fb4:	48 89 de             	mov    %rbx,%rsi
  408fb7:	e8 94 87 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  408fbc:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  408fc1:	44 0f b6 bc 24 e7 00 	movzbl 0xe7(%rsp),%r15d
  408fc8:	00 00 
  408fca:	44 89 e1             	mov    %r12d,%ecx
  408fcd:	48 01 c1             	add    %rax,%rcx
  408fd0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  408fd4:	44 89 e0             	mov    %r12d,%eax
  408fd7:	83 e0 1f             	and    $0x1f,%eax
  408fda:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  408fde:	48 83 c3 20          	add    $0x20,%rbx
  408fe2:	4c 89 b4 24 50 0f 00 	mov    %r14,0xf50(%rsp)
  408fe9:	00 
  408fea:	48 c7 84 24 58 0f 00 	movq   $0x0,0xf58(%rsp)
  408ff1:	00 00 00 00 00 
  408ff6:	c5 f8 28 05 62 31 00 	vmovaps 0x3162(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  408ffd:	00 
  408ffe:	c5 f8 11 84 24 60 0f 	vmovups %xmm0,0xf60(%rsp)
  409005:	00 00 
  409007:	48 8d b4 24 50 0f 00 	lea    0xf50(%rsp),%rsi
  40900e:	00 
  40900f:	48 89 df             	mov    %rbx,%rdi
  409012:	e8 99 81 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409017:	88 84 24 e7 00 00 00 	mov    %al,0xe7(%rsp)
  40901e:	4c 89 b4 24 30 0f 00 	mov    %r14,0xf30(%rsp)
  409025:	00 
  409026:	48 c7 84 24 38 0f 00 	movq   $0x0,0xf38(%rsp)
  40902d:	00 00 00 00 00 
  409032:	c5 f8 28 05 26 31 00 	vmovaps 0x3126(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409039:	00 
  40903a:	c5 f8 11 84 24 40 0f 	vmovups %xmm0,0xf40(%rsp)
  409041:	00 00 
  409043:	48 8d 94 24 30 0f 00 	lea    0xf30(%rsp),%rdx
  40904a:	00 
  40904b:	44 89 ff             	mov    %r15d,%edi
  40904e:	48 89 de             	mov    %rbx,%rsi
  409051:	e8 fa 86 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409056:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  40905b:	44 0f b6 bc 24 e8 00 	movzbl 0xe8(%rsp),%r15d
  409062:	00 00 
  409064:	44 89 e1             	mov    %r12d,%ecx
  409067:	48 01 c1             	add    %rax,%rcx
  40906a:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40906e:	44 89 e0             	mov    %r12d,%eax
  409071:	83 e0 1f             	and    $0x1f,%eax
  409074:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409078:	48 83 c3 20          	add    $0x20,%rbx
  40907c:	4c 89 b4 24 10 0f 00 	mov    %r14,0xf10(%rsp)
  409083:	00 
  409084:	48 c7 84 24 18 0f 00 	movq   $0x0,0xf18(%rsp)
  40908b:	00 00 00 00 00 
  409090:	c5 f8 28 05 c8 30 00 	vmovaps 0x30c8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409097:	00 
  409098:	c5 f8 11 84 24 20 0f 	vmovups %xmm0,0xf20(%rsp)
  40909f:	00 00 
  4090a1:	48 8d b4 24 10 0f 00 	lea    0xf10(%rsp),%rsi
  4090a8:	00 
  4090a9:	48 89 df             	mov    %rbx,%rdi
  4090ac:	e8 ff 80 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4090b1:	88 84 24 e8 00 00 00 	mov    %al,0xe8(%rsp)
  4090b8:	4c 89 b4 24 f0 0e 00 	mov    %r14,0xef0(%rsp)
  4090bf:	00 
  4090c0:	48 c7 84 24 f8 0e 00 	movq   $0x0,0xef8(%rsp)
  4090c7:	00 00 00 00 00 
  4090cc:	c5 f8 28 05 8c 30 00 	vmovaps 0x308c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4090d3:	00 
  4090d4:	c5 f8 11 84 24 00 0f 	vmovups %xmm0,0xf00(%rsp)
  4090db:	00 00 
  4090dd:	48 8d 94 24 f0 0e 00 	lea    0xef0(%rsp),%rdx
  4090e4:	00 
  4090e5:	44 89 ff             	mov    %r15d,%edi
  4090e8:	48 89 de             	mov    %rbx,%rsi
  4090eb:	e8 60 86 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4090f0:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  4090f5:	44 0f b6 bc 24 e9 00 	movzbl 0xe9(%rsp),%r15d
  4090fc:	00 00 
  4090fe:	44 89 e1             	mov    %r12d,%ecx
  409101:	48 01 c1             	add    %rax,%rcx
  409104:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409108:	44 89 e0             	mov    %r12d,%eax
  40910b:	83 e0 1f             	and    $0x1f,%eax
  40910e:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409112:	48 83 c3 20          	add    $0x20,%rbx
  409116:	4c 89 b4 24 d0 0e 00 	mov    %r14,0xed0(%rsp)
  40911d:	00 
  40911e:	48 c7 84 24 d8 0e 00 	movq   $0x0,0xed8(%rsp)
  409125:	00 00 00 00 00 
  40912a:	c5 f8 28 05 2e 30 00 	vmovaps 0x302e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409131:	00 
  409132:	c5 f8 11 84 24 e0 0e 	vmovups %xmm0,0xee0(%rsp)
  409139:	00 00 
  40913b:	48 8d b4 24 d0 0e 00 	lea    0xed0(%rsp),%rsi
  409142:	00 
  409143:	48 89 df             	mov    %rbx,%rdi
  409146:	e8 65 80 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40914b:	88 84 24 e9 00 00 00 	mov    %al,0xe9(%rsp)
  409152:	4c 89 b4 24 b0 0e 00 	mov    %r14,0xeb0(%rsp)
  409159:	00 
  40915a:	48 c7 84 24 b8 0e 00 	movq   $0x0,0xeb8(%rsp)
  409161:	00 00 00 00 00 
  409166:	c5 f8 28 05 f2 2f 00 	vmovaps 0x2ff2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40916d:	00 
  40916e:	c5 f8 11 84 24 c0 0e 	vmovups %xmm0,0xec0(%rsp)
  409175:	00 00 
  409177:	48 8d 94 24 b0 0e 00 	lea    0xeb0(%rsp),%rdx
  40917e:	00 
  40917f:	44 89 ff             	mov    %r15d,%edi
  409182:	48 89 de             	mov    %rbx,%rsi
  409185:	e8 c6 85 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40918a:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  40918f:	44 0f b6 bc 24 ea 00 	movzbl 0xea(%rsp),%r15d
  409196:	00 00 
  409198:	44 89 e1             	mov    %r12d,%ecx
  40919b:	48 01 c1             	add    %rax,%rcx
  40919e:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4091a2:	44 89 e0             	mov    %r12d,%eax
  4091a5:	83 e0 1f             	and    $0x1f,%eax
  4091a8:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4091ac:	48 83 c3 20          	add    $0x20,%rbx
  4091b0:	4c 89 b4 24 90 0e 00 	mov    %r14,0xe90(%rsp)
  4091b7:	00 
  4091b8:	48 c7 84 24 98 0e 00 	movq   $0x0,0xe98(%rsp)
  4091bf:	00 00 00 00 00 
  4091c4:	c5 f8 28 05 94 2f 00 	vmovaps 0x2f94(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4091cb:	00 
  4091cc:	c5 f8 11 84 24 a0 0e 	vmovups %xmm0,0xea0(%rsp)
  4091d3:	00 00 
  4091d5:	48 8d b4 24 90 0e 00 	lea    0xe90(%rsp),%rsi
  4091dc:	00 
  4091dd:	48 89 df             	mov    %rbx,%rdi
  4091e0:	e8 cb 7f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4091e5:	88 84 24 ea 00 00 00 	mov    %al,0xea(%rsp)
  4091ec:	4c 89 b4 24 70 0e 00 	mov    %r14,0xe70(%rsp)
  4091f3:	00 
  4091f4:	48 c7 84 24 78 0e 00 	movq   $0x0,0xe78(%rsp)
  4091fb:	00 00 00 00 00 
  409200:	c5 f8 28 05 58 2f 00 	vmovaps 0x2f58(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409207:	00 
  409208:	c5 f8 11 84 24 80 0e 	vmovups %xmm0,0xe80(%rsp)
  40920f:	00 00 
  409211:	48 8d 94 24 70 0e 00 	lea    0xe70(%rsp),%rdx
  409218:	00 
  409219:	44 89 ff             	mov    %r15d,%edi
  40921c:	48 89 de             	mov    %rbx,%rsi
  40921f:	e8 2c 85 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409224:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  409229:	44 0f b6 bc 24 eb 00 	movzbl 0xeb(%rsp),%r15d
  409230:	00 00 
  409232:	44 89 e1             	mov    %r12d,%ecx
  409235:	48 01 c1             	add    %rax,%rcx
  409238:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40923c:	44 89 e0             	mov    %r12d,%eax
  40923f:	83 e0 1f             	and    $0x1f,%eax
  409242:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409246:	48 83 c3 20          	add    $0x20,%rbx
  40924a:	4c 89 b4 24 50 0e 00 	mov    %r14,0xe50(%rsp)
  409251:	00 
  409252:	48 c7 84 24 58 0e 00 	movq   $0x0,0xe58(%rsp)
  409259:	00 00 00 00 00 
  40925e:	c5 f8 28 05 fa 2e 00 	vmovaps 0x2efa(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409265:	00 
  409266:	c5 f8 11 84 24 60 0e 	vmovups %xmm0,0xe60(%rsp)
  40926d:	00 00 
  40926f:	48 8d b4 24 50 0e 00 	lea    0xe50(%rsp),%rsi
  409276:	00 
  409277:	48 89 df             	mov    %rbx,%rdi
  40927a:	e8 31 7f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40927f:	88 84 24 eb 00 00 00 	mov    %al,0xeb(%rsp)
  409286:	4c 89 b4 24 30 0e 00 	mov    %r14,0xe30(%rsp)
  40928d:	00 
  40928e:	48 c7 84 24 38 0e 00 	movq   $0x0,0xe38(%rsp)
  409295:	00 00 00 00 00 
  40929a:	c5 f8 28 05 be 2e 00 	vmovaps 0x2ebe(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4092a1:	00 
  4092a2:	c5 f8 11 84 24 40 0e 	vmovups %xmm0,0xe40(%rsp)
  4092a9:	00 00 
  4092ab:	48 8d 94 24 30 0e 00 	lea    0xe30(%rsp),%rdx
  4092b2:	00 
  4092b3:	44 89 ff             	mov    %r15d,%edi
  4092b6:	48 89 de             	mov    %rbx,%rsi
  4092b9:	e8 92 84 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4092be:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  4092c3:	44 0f b6 bc 24 ec 00 	movzbl 0xec(%rsp),%r15d
  4092ca:	00 00 
  4092cc:	44 89 e1             	mov    %r12d,%ecx
  4092cf:	48 01 c1             	add    %rax,%rcx
  4092d2:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4092d6:	44 89 e0             	mov    %r12d,%eax
  4092d9:	83 e0 1f             	and    $0x1f,%eax
  4092dc:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4092e0:	48 83 c3 20          	add    $0x20,%rbx
  4092e4:	4c 89 b4 24 10 0e 00 	mov    %r14,0xe10(%rsp)
  4092eb:	00 
  4092ec:	48 c7 84 24 18 0e 00 	movq   $0x0,0xe18(%rsp)
  4092f3:	00 00 00 00 00 
  4092f8:	c5 f8 28 05 60 2e 00 	vmovaps 0x2e60(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4092ff:	00 
  409300:	c5 f8 11 84 24 20 0e 	vmovups %xmm0,0xe20(%rsp)
  409307:	00 00 
  409309:	48 8d b4 24 10 0e 00 	lea    0xe10(%rsp),%rsi
  409310:	00 
  409311:	48 89 df             	mov    %rbx,%rdi
  409314:	e8 97 7e ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409319:	88 84 24 ec 00 00 00 	mov    %al,0xec(%rsp)
  409320:	4c 89 b4 24 f0 0d 00 	mov    %r14,0xdf0(%rsp)
  409327:	00 
  409328:	48 c7 84 24 f8 0d 00 	movq   $0x0,0xdf8(%rsp)
  40932f:	00 00 00 00 00 
  409334:	c5 f8 28 05 24 2e 00 	vmovaps 0x2e24(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40933b:	00 
  40933c:	c5 f8 11 84 24 00 0e 	vmovups %xmm0,0xe00(%rsp)
  409343:	00 00 
  409345:	48 8d 94 24 f0 0d 00 	lea    0xdf0(%rsp),%rdx
  40934c:	00 
  40934d:	44 89 ff             	mov    %r15d,%edi
  409350:	48 89 de             	mov    %rbx,%rsi
  409353:	e8 f8 83 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409358:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  40935d:	44 0f b6 bc 24 ed 00 	movzbl 0xed(%rsp),%r15d
  409364:	00 00 
  409366:	44 89 e1             	mov    %r12d,%ecx
  409369:	48 01 c1             	add    %rax,%rcx
  40936c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409370:	44 89 e0             	mov    %r12d,%eax
  409373:	83 e0 1f             	and    $0x1f,%eax
  409376:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40937a:	48 83 c3 20          	add    $0x20,%rbx
  40937e:	4c 89 b4 24 d0 0d 00 	mov    %r14,0xdd0(%rsp)
  409385:	00 
  409386:	48 c7 84 24 d8 0d 00 	movq   $0x0,0xdd8(%rsp)
  40938d:	00 00 00 00 00 
  409392:	c5 f8 28 05 c6 2d 00 	vmovaps 0x2dc6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409399:	00 
  40939a:	c5 f8 11 84 24 e0 0d 	vmovups %xmm0,0xde0(%rsp)
  4093a1:	00 00 
  4093a3:	48 8d b4 24 d0 0d 00 	lea    0xdd0(%rsp),%rsi
  4093aa:	00 
  4093ab:	48 89 df             	mov    %rbx,%rdi
  4093ae:	e8 fd 7d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4093b3:	88 84 24 ed 00 00 00 	mov    %al,0xed(%rsp)
  4093ba:	4c 89 b4 24 b0 0d 00 	mov    %r14,0xdb0(%rsp)
  4093c1:	00 
  4093c2:	48 c7 84 24 b8 0d 00 	movq   $0x0,0xdb8(%rsp)
  4093c9:	00 00 00 00 00 
  4093ce:	c5 f8 28 05 8a 2d 00 	vmovaps 0x2d8a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4093d5:	00 
  4093d6:	c5 f8 11 84 24 c0 0d 	vmovups %xmm0,0xdc0(%rsp)
  4093dd:	00 00 
  4093df:	48 8d 94 24 b0 0d 00 	lea    0xdb0(%rsp),%rdx
  4093e6:	00 
  4093e7:	44 89 ff             	mov    %r15d,%edi
  4093ea:	48 89 de             	mov    %rbx,%rsi
  4093ed:	e8 5e 83 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4093f2:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  4093f7:	44 0f b6 bc 24 ee 00 	movzbl 0xee(%rsp),%r15d
  4093fe:	00 00 
  409400:	44 89 e1             	mov    %r12d,%ecx
  409403:	48 01 c1             	add    %rax,%rcx
  409406:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40940a:	44 89 e0             	mov    %r12d,%eax
  40940d:	83 e0 1f             	and    $0x1f,%eax
  409410:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409414:	48 83 c3 20          	add    $0x20,%rbx
  409418:	4c 89 b4 24 90 0d 00 	mov    %r14,0xd90(%rsp)
  40941f:	00 
  409420:	48 c7 84 24 98 0d 00 	movq   $0x0,0xd98(%rsp)
  409427:	00 00 00 00 00 
  40942c:	c5 f8 28 05 2c 2d 00 	vmovaps 0x2d2c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409433:	00 
  409434:	c5 f8 11 84 24 a0 0d 	vmovups %xmm0,0xda0(%rsp)
  40943b:	00 00 
  40943d:	48 8d b4 24 90 0d 00 	lea    0xd90(%rsp),%rsi
  409444:	00 
  409445:	48 89 df             	mov    %rbx,%rdi
  409448:	e8 63 7d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40944d:	88 84 24 ee 00 00 00 	mov    %al,0xee(%rsp)
  409454:	4c 89 b4 24 70 0d 00 	mov    %r14,0xd70(%rsp)
  40945b:	00 
  40945c:	48 c7 84 24 78 0d 00 	movq   $0x0,0xd78(%rsp)
  409463:	00 00 00 00 00 
  409468:	c5 f8 28 05 f0 2c 00 	vmovaps 0x2cf0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40946f:	00 
  409470:	c5 f8 11 84 24 80 0d 	vmovups %xmm0,0xd80(%rsp)
  409477:	00 00 
  409479:	48 8d 94 24 70 0d 00 	lea    0xd70(%rsp),%rdx
  409480:	00 
  409481:	44 89 ff             	mov    %r15d,%edi
  409484:	48 89 de             	mov    %rbx,%rsi
  409487:	e8 c4 82 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40948c:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  409491:	44 0f b6 bc 24 ef 00 	movzbl 0xef(%rsp),%r15d
  409498:	00 00 
  40949a:	44 89 e1             	mov    %r12d,%ecx
  40949d:	48 01 c1             	add    %rax,%rcx
  4094a0:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4094a4:	44 89 e0             	mov    %r12d,%eax
  4094a7:	83 e0 1f             	and    $0x1f,%eax
  4094aa:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4094ae:	48 83 c3 20          	add    $0x20,%rbx
  4094b2:	4c 89 b4 24 50 0d 00 	mov    %r14,0xd50(%rsp)
  4094b9:	00 
  4094ba:	48 c7 84 24 58 0d 00 	movq   $0x0,0xd58(%rsp)
  4094c1:	00 00 00 00 00 
  4094c6:	c5 f8 28 05 92 2c 00 	vmovaps 0x2c92(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4094cd:	00 
  4094ce:	c5 f8 11 84 24 60 0d 	vmovups %xmm0,0xd60(%rsp)
  4094d5:	00 00 
  4094d7:	48 8d b4 24 50 0d 00 	lea    0xd50(%rsp),%rsi
  4094de:	00 
  4094df:	48 89 df             	mov    %rbx,%rdi
  4094e2:	e8 c9 7c ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4094e7:	88 84 24 ef 00 00 00 	mov    %al,0xef(%rsp)
  4094ee:	4c 89 b4 24 30 0d 00 	mov    %r14,0xd30(%rsp)
  4094f5:	00 
  4094f6:	48 c7 84 24 38 0d 00 	movq   $0x0,0xd38(%rsp)
  4094fd:	00 00 00 00 00 
  409502:	c5 f8 28 05 56 2c 00 	vmovaps 0x2c56(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409509:	00 
  40950a:	c5 f8 11 84 24 40 0d 	vmovups %xmm0,0xd40(%rsp)
  409511:	00 00 
  409513:	48 8d 94 24 30 0d 00 	lea    0xd30(%rsp),%rdx
  40951a:	00 
  40951b:	44 89 ff             	mov    %r15d,%edi
  40951e:	48 89 de             	mov    %rbx,%rsi
  409521:	e8 2a 82 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409526:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  40952b:	44 0f b6 bc 24 f0 00 	movzbl 0xf0(%rsp),%r15d
  409532:	00 00 
  409534:	44 89 e1             	mov    %r12d,%ecx
  409537:	48 01 c1             	add    %rax,%rcx
  40953a:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40953e:	44 89 e0             	mov    %r12d,%eax
  409541:	83 e0 1f             	and    $0x1f,%eax
  409544:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409548:	48 83 c3 20          	add    $0x20,%rbx
  40954c:	4c 89 b4 24 10 0d 00 	mov    %r14,0xd10(%rsp)
  409553:	00 
  409554:	48 c7 84 24 18 0d 00 	movq   $0x0,0xd18(%rsp)
  40955b:	00 00 00 00 00 
  409560:	c5 f8 28 05 f8 2b 00 	vmovaps 0x2bf8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409567:	00 
  409568:	c5 f8 11 84 24 20 0d 	vmovups %xmm0,0xd20(%rsp)
  40956f:	00 00 
  409571:	48 8d b4 24 10 0d 00 	lea    0xd10(%rsp),%rsi
  409578:	00 
  409579:	48 89 df             	mov    %rbx,%rdi
  40957c:	e8 2f 7c ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409581:	88 84 24 f0 00 00 00 	mov    %al,0xf0(%rsp)
  409588:	4c 89 b4 24 f0 0c 00 	mov    %r14,0xcf0(%rsp)
  40958f:	00 
  409590:	48 c7 84 24 f8 0c 00 	movq   $0x0,0xcf8(%rsp)
  409597:	00 00 00 00 00 
  40959c:	c5 f8 28 05 bc 2b 00 	vmovaps 0x2bbc(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4095a3:	00 
  4095a4:	c5 f8 11 84 24 00 0d 	vmovups %xmm0,0xd00(%rsp)
  4095ab:	00 00 
  4095ad:	48 8d 94 24 f0 0c 00 	lea    0xcf0(%rsp),%rdx
  4095b4:	00 
  4095b5:	44 89 ff             	mov    %r15d,%edi
  4095b8:	48 89 de             	mov    %rbx,%rsi
  4095bb:	e8 90 81 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4095c0:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  4095c5:	44 0f b6 bc 24 f1 00 	movzbl 0xf1(%rsp),%r15d
  4095cc:	00 00 
  4095ce:	44 89 e1             	mov    %r12d,%ecx
  4095d1:	48 01 c1             	add    %rax,%rcx
  4095d4:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4095d8:	44 89 e0             	mov    %r12d,%eax
  4095db:	83 e0 1f             	and    $0x1f,%eax
  4095de:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4095e2:	48 83 c3 20          	add    $0x20,%rbx
  4095e6:	4c 89 b4 24 d0 0c 00 	mov    %r14,0xcd0(%rsp)
  4095ed:	00 
  4095ee:	48 c7 84 24 d8 0c 00 	movq   $0x0,0xcd8(%rsp)
  4095f5:	00 00 00 00 00 
  4095fa:	c5 f8 28 05 5e 2b 00 	vmovaps 0x2b5e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409601:	00 
  409602:	c5 f8 11 84 24 e0 0c 	vmovups %xmm0,0xce0(%rsp)
  409609:	00 00 
  40960b:	48 8d b4 24 d0 0c 00 	lea    0xcd0(%rsp),%rsi
  409612:	00 
  409613:	48 89 df             	mov    %rbx,%rdi
  409616:	e8 95 7b ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40961b:	88 84 24 f1 00 00 00 	mov    %al,0xf1(%rsp)
  409622:	4c 89 b4 24 b0 0c 00 	mov    %r14,0xcb0(%rsp)
  409629:	00 
  40962a:	48 c7 84 24 b8 0c 00 	movq   $0x0,0xcb8(%rsp)
  409631:	00 00 00 00 00 
  409636:	c5 f8 28 05 22 2b 00 	vmovaps 0x2b22(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40963d:	00 
  40963e:	c5 f8 11 84 24 c0 0c 	vmovups %xmm0,0xcc0(%rsp)
  409645:	00 00 
  409647:	48 8d 94 24 b0 0c 00 	lea    0xcb0(%rsp),%rdx
  40964e:	00 
  40964f:	44 89 ff             	mov    %r15d,%edi
  409652:	48 89 de             	mov    %rbx,%rsi
  409655:	e8 f6 80 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40965a:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  40965f:	44 0f b6 bc 24 f2 00 	movzbl 0xf2(%rsp),%r15d
  409666:	00 00 
  409668:	44 89 e1             	mov    %r12d,%ecx
  40966b:	48 01 c1             	add    %rax,%rcx
  40966e:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409672:	44 89 e0             	mov    %r12d,%eax
  409675:	83 e0 1f             	and    $0x1f,%eax
  409678:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40967c:	48 83 c3 20          	add    $0x20,%rbx
  409680:	4c 89 b4 24 90 0c 00 	mov    %r14,0xc90(%rsp)
  409687:	00 
  409688:	48 c7 84 24 98 0c 00 	movq   $0x0,0xc98(%rsp)
  40968f:	00 00 00 00 00 
  409694:	c5 f8 28 05 c4 2a 00 	vmovaps 0x2ac4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40969b:	00 
  40969c:	c5 f8 11 84 24 a0 0c 	vmovups %xmm0,0xca0(%rsp)
  4096a3:	00 00 
  4096a5:	48 8d b4 24 90 0c 00 	lea    0xc90(%rsp),%rsi
  4096ac:	00 
  4096ad:	48 89 df             	mov    %rbx,%rdi
  4096b0:	e8 fb 7a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4096b5:	88 84 24 f2 00 00 00 	mov    %al,0xf2(%rsp)
  4096bc:	4c 89 b4 24 70 0c 00 	mov    %r14,0xc70(%rsp)
  4096c3:	00 
  4096c4:	48 c7 84 24 78 0c 00 	movq   $0x0,0xc78(%rsp)
  4096cb:	00 00 00 00 00 
  4096d0:	c5 f8 28 05 88 2a 00 	vmovaps 0x2a88(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4096d7:	00 
  4096d8:	c5 f8 11 84 24 80 0c 	vmovups %xmm0,0xc80(%rsp)
  4096df:	00 00 
  4096e1:	48 8d 94 24 70 0c 00 	lea    0xc70(%rsp),%rdx
  4096e8:	00 
  4096e9:	44 89 ff             	mov    %r15d,%edi
  4096ec:	48 89 de             	mov    %rbx,%rsi
  4096ef:	e8 5c 80 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4096f4:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  4096f9:	44 0f b6 bc 24 f3 00 	movzbl 0xf3(%rsp),%r15d
  409700:	00 00 
  409702:	44 89 e1             	mov    %r12d,%ecx
  409705:	48 01 c1             	add    %rax,%rcx
  409708:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40970c:	44 89 e0             	mov    %r12d,%eax
  40970f:	83 e0 1f             	and    $0x1f,%eax
  409712:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409716:	48 83 c3 20          	add    $0x20,%rbx
  40971a:	4c 89 b4 24 50 0c 00 	mov    %r14,0xc50(%rsp)
  409721:	00 
  409722:	48 c7 84 24 58 0c 00 	movq   $0x0,0xc58(%rsp)
  409729:	00 00 00 00 00 
  40972e:	c5 f8 28 05 2a 2a 00 	vmovaps 0x2a2a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409735:	00 
  409736:	c5 f8 11 84 24 60 0c 	vmovups %xmm0,0xc60(%rsp)
  40973d:	00 00 
  40973f:	48 8d b4 24 50 0c 00 	lea    0xc50(%rsp),%rsi
  409746:	00 
  409747:	48 89 df             	mov    %rbx,%rdi
  40974a:	e8 61 7a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40974f:	88 84 24 f3 00 00 00 	mov    %al,0xf3(%rsp)
  409756:	4c 89 b4 24 30 0c 00 	mov    %r14,0xc30(%rsp)
  40975d:	00 
  40975e:	48 c7 84 24 38 0c 00 	movq   $0x0,0xc38(%rsp)
  409765:	00 00 00 00 00 
  40976a:	c5 f8 28 05 ee 29 00 	vmovaps 0x29ee(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409771:	00 
  409772:	c5 f8 11 84 24 40 0c 	vmovups %xmm0,0xc40(%rsp)
  409779:	00 00 
  40977b:	48 8d 94 24 30 0c 00 	lea    0xc30(%rsp),%rdx
  409782:	00 
  409783:	44 89 ff             	mov    %r15d,%edi
  409786:	48 89 de             	mov    %rbx,%rsi
  409789:	e8 c2 7f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40978e:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  409793:	44 0f b6 bc 24 f4 00 	movzbl 0xf4(%rsp),%r15d
  40979a:	00 00 
  40979c:	44 89 e1             	mov    %r12d,%ecx
  40979f:	48 01 c1             	add    %rax,%rcx
  4097a2:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4097a6:	44 89 e0             	mov    %r12d,%eax
  4097a9:	83 e0 1f             	and    $0x1f,%eax
  4097ac:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4097b0:	48 83 c3 20          	add    $0x20,%rbx
  4097b4:	4c 89 b4 24 10 0c 00 	mov    %r14,0xc10(%rsp)
  4097bb:	00 
  4097bc:	48 c7 84 24 18 0c 00 	movq   $0x0,0xc18(%rsp)
  4097c3:	00 00 00 00 00 
  4097c8:	c5 f8 28 05 90 29 00 	vmovaps 0x2990(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4097cf:	00 
  4097d0:	c5 f8 11 84 24 20 0c 	vmovups %xmm0,0xc20(%rsp)
  4097d7:	00 00 
  4097d9:	48 8d b4 24 10 0c 00 	lea    0xc10(%rsp),%rsi
  4097e0:	00 
  4097e1:	48 89 df             	mov    %rbx,%rdi
  4097e4:	e8 c7 79 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4097e9:	88 84 24 f4 00 00 00 	mov    %al,0xf4(%rsp)
  4097f0:	4c 89 b4 24 f0 0b 00 	mov    %r14,0xbf0(%rsp)
  4097f7:	00 
  4097f8:	48 c7 84 24 f8 0b 00 	movq   $0x0,0xbf8(%rsp)
  4097ff:	00 00 00 00 00 
  409804:	c5 f8 28 05 54 29 00 	vmovaps 0x2954(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40980b:	00 
  40980c:	c5 f8 11 84 24 00 0c 	vmovups %xmm0,0xc00(%rsp)
  409813:	00 00 
  409815:	48 8d 94 24 f0 0b 00 	lea    0xbf0(%rsp),%rdx
  40981c:	00 
  40981d:	44 89 ff             	mov    %r15d,%edi
  409820:	48 89 de             	mov    %rbx,%rsi
  409823:	e8 28 7f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409828:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  40982d:	44 0f b6 bc 24 f5 00 	movzbl 0xf5(%rsp),%r15d
  409834:	00 00 
  409836:	44 89 e1             	mov    %r12d,%ecx
  409839:	48 01 c1             	add    %rax,%rcx
  40983c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409840:	44 89 e0             	mov    %r12d,%eax
  409843:	83 e0 1f             	and    $0x1f,%eax
  409846:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40984a:	48 83 c3 20          	add    $0x20,%rbx
  40984e:	4c 89 b4 24 d0 0b 00 	mov    %r14,0xbd0(%rsp)
  409855:	00 
  409856:	48 c7 84 24 d8 0b 00 	movq   $0x0,0xbd8(%rsp)
  40985d:	00 00 00 00 00 
  409862:	c5 f8 28 05 f6 28 00 	vmovaps 0x28f6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409869:	00 
  40986a:	c5 f8 11 84 24 e0 0b 	vmovups %xmm0,0xbe0(%rsp)
  409871:	00 00 
  409873:	48 8d b4 24 d0 0b 00 	lea    0xbd0(%rsp),%rsi
  40987a:	00 
  40987b:	48 89 df             	mov    %rbx,%rdi
  40987e:	e8 2d 79 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409883:	88 84 24 f5 00 00 00 	mov    %al,0xf5(%rsp)
  40988a:	4c 89 b4 24 b0 0b 00 	mov    %r14,0xbb0(%rsp)
  409891:	00 
  409892:	48 c7 84 24 b8 0b 00 	movq   $0x0,0xbb8(%rsp)
  409899:	00 00 00 00 00 
  40989e:	c5 f8 28 05 ba 28 00 	vmovaps 0x28ba(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4098a5:	00 
  4098a6:	c5 f8 11 84 24 c0 0b 	vmovups %xmm0,0xbc0(%rsp)
  4098ad:	00 00 
  4098af:	48 8d 94 24 b0 0b 00 	lea    0xbb0(%rsp),%rdx
  4098b6:	00 
  4098b7:	44 89 ff             	mov    %r15d,%edi
  4098ba:	48 89 de             	mov    %rbx,%rsi
  4098bd:	e8 8e 7e ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4098c2:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  4098c7:	44 0f b6 bc 24 f6 00 	movzbl 0xf6(%rsp),%r15d
  4098ce:	00 00 
  4098d0:	44 89 e1             	mov    %r12d,%ecx
  4098d3:	48 01 c1             	add    %rax,%rcx
  4098d6:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  4098da:	44 89 e0             	mov    %r12d,%eax
  4098dd:	83 e0 1f             	and    $0x1f,%eax
  4098e0:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  4098e4:	48 83 c3 20          	add    $0x20,%rbx
  4098e8:	4c 89 b4 24 90 0b 00 	mov    %r14,0xb90(%rsp)
  4098ef:	00 
  4098f0:	48 c7 84 24 98 0b 00 	movq   $0x0,0xb98(%rsp)
  4098f7:	00 00 00 00 00 
  4098fc:	c5 f8 28 05 5c 28 00 	vmovaps 0x285c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409903:	00 
  409904:	c5 f8 11 84 24 a0 0b 	vmovups %xmm0,0xba0(%rsp)
  40990b:	00 00 
  40990d:	48 8d b4 24 90 0b 00 	lea    0xb90(%rsp),%rsi
  409914:	00 
  409915:	48 89 df             	mov    %rbx,%rdi
  409918:	e8 93 78 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40991d:	88 84 24 f6 00 00 00 	mov    %al,0xf6(%rsp)
  409924:	4c 89 b4 24 70 0b 00 	mov    %r14,0xb70(%rsp)
  40992b:	00 
  40992c:	48 c7 84 24 78 0b 00 	movq   $0x0,0xb78(%rsp)
  409933:	00 00 00 00 00 
  409938:	c5 f8 28 05 20 28 00 	vmovaps 0x2820(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40993f:	00 
  409940:	c5 f8 11 84 24 80 0b 	vmovups %xmm0,0xb80(%rsp)
  409947:	00 00 
  409949:	48 8d 94 24 70 0b 00 	lea    0xb70(%rsp),%rdx
  409950:	00 
  409951:	44 89 ff             	mov    %r15d,%edi
  409954:	48 89 de             	mov    %rbx,%rsi
  409957:	e8 f4 7d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40995c:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  409961:	44 0f b6 bc 24 f7 00 	movzbl 0xf7(%rsp),%r15d
  409968:	00 00 
  40996a:	44 89 e1             	mov    %r12d,%ecx
  40996d:	48 01 c1             	add    %rax,%rcx
  409970:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409974:	44 89 e0             	mov    %r12d,%eax
  409977:	83 e0 1f             	and    $0x1f,%eax
  40997a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40997e:	48 83 c3 20          	add    $0x20,%rbx
  409982:	4c 89 b4 24 50 0b 00 	mov    %r14,0xb50(%rsp)
  409989:	00 
  40998a:	48 c7 84 24 58 0b 00 	movq   $0x0,0xb58(%rsp)
  409991:	00 00 00 00 00 
  409996:	c5 f8 28 05 c2 27 00 	vmovaps 0x27c2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40999d:	00 
  40999e:	c5 f8 11 84 24 60 0b 	vmovups %xmm0,0xb60(%rsp)
  4099a5:	00 00 
  4099a7:	48 8d b4 24 50 0b 00 	lea    0xb50(%rsp),%rsi
  4099ae:	00 
  4099af:	48 89 df             	mov    %rbx,%rdi
  4099b2:	e8 f9 77 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  4099b7:	88 84 24 f7 00 00 00 	mov    %al,0xf7(%rsp)
  4099be:	4c 89 b4 24 30 0b 00 	mov    %r14,0xb30(%rsp)
  4099c5:	00 
  4099c6:	48 c7 84 24 38 0b 00 	movq   $0x0,0xb38(%rsp)
  4099cd:	00 00 00 00 00 
  4099d2:	c5 f8 28 05 86 27 00 	vmovaps 0x2786(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  4099d9:	00 
  4099da:	c5 f8 11 84 24 40 0b 	vmovups %xmm0,0xb40(%rsp)
  4099e1:	00 00 
  4099e3:	48 8d 94 24 30 0b 00 	lea    0xb30(%rsp),%rdx
  4099ea:	00 
  4099eb:	44 89 ff             	mov    %r15d,%edi
  4099ee:	48 89 de             	mov    %rbx,%rsi
  4099f1:	e8 5a 7d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  4099f6:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  4099fb:	44 0f b6 bc 24 f8 00 	movzbl 0xf8(%rsp),%r15d
  409a02:	00 00 
  409a04:	44 89 e1             	mov    %r12d,%ecx
  409a07:	48 01 c1             	add    %rax,%rcx
  409a0a:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409a0e:	44 89 e0             	mov    %r12d,%eax
  409a11:	83 e0 1f             	and    $0x1f,%eax
  409a14:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409a18:	48 83 c3 20          	add    $0x20,%rbx
  409a1c:	4c 89 b4 24 10 0b 00 	mov    %r14,0xb10(%rsp)
  409a23:	00 
  409a24:	48 c7 84 24 18 0b 00 	movq   $0x0,0xb18(%rsp)
  409a2b:	00 00 00 00 00 
  409a30:	c5 f8 28 05 28 27 00 	vmovaps 0x2728(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409a37:	00 
  409a38:	c5 f8 11 84 24 20 0b 	vmovups %xmm0,0xb20(%rsp)
  409a3f:	00 00 
  409a41:	48 8d b4 24 10 0b 00 	lea    0xb10(%rsp),%rsi
  409a48:	00 
  409a49:	48 89 df             	mov    %rbx,%rdi
  409a4c:	e8 5f 77 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409a51:	88 84 24 f8 00 00 00 	mov    %al,0xf8(%rsp)
  409a58:	4c 89 b4 24 f0 0a 00 	mov    %r14,0xaf0(%rsp)
  409a5f:	00 
  409a60:	48 c7 84 24 f8 0a 00 	movq   $0x0,0xaf8(%rsp)
  409a67:	00 00 00 00 00 
  409a6c:	c5 f8 28 05 ec 26 00 	vmovaps 0x26ec(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409a73:	00 
  409a74:	c5 f8 11 84 24 00 0b 	vmovups %xmm0,0xb00(%rsp)
  409a7b:	00 00 
  409a7d:	48 8d 94 24 f0 0a 00 	lea    0xaf0(%rsp),%rdx
  409a84:	00 
  409a85:	44 89 ff             	mov    %r15d,%edi
  409a88:	48 89 de             	mov    %rbx,%rsi
  409a8b:	e8 c0 7c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409a90:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  409a95:	44 0f b6 bc 24 f9 00 	movzbl 0xf9(%rsp),%r15d
  409a9c:	00 00 
  409a9e:	44 89 e1             	mov    %r12d,%ecx
  409aa1:	48 01 c1             	add    %rax,%rcx
  409aa4:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409aa8:	44 89 e0             	mov    %r12d,%eax
  409aab:	83 e0 1f             	and    $0x1f,%eax
  409aae:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409ab2:	48 83 c3 20          	add    $0x20,%rbx
  409ab6:	4c 89 b4 24 d0 0a 00 	mov    %r14,0xad0(%rsp)
  409abd:	00 
  409abe:	48 c7 84 24 d8 0a 00 	movq   $0x0,0xad8(%rsp)
  409ac5:	00 00 00 00 00 
  409aca:	c5 f8 28 05 8e 26 00 	vmovaps 0x268e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409ad1:	00 
  409ad2:	c5 f8 11 84 24 e0 0a 	vmovups %xmm0,0xae0(%rsp)
  409ad9:	00 00 
  409adb:	48 8d b4 24 d0 0a 00 	lea    0xad0(%rsp),%rsi
  409ae2:	00 
  409ae3:	48 89 df             	mov    %rbx,%rdi
  409ae6:	e8 c5 76 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409aeb:	88 84 24 f9 00 00 00 	mov    %al,0xf9(%rsp)
  409af2:	4c 89 b4 24 b0 0a 00 	mov    %r14,0xab0(%rsp)
  409af9:	00 
  409afa:	48 c7 84 24 b8 0a 00 	movq   $0x0,0xab8(%rsp)
  409b01:	00 00 00 00 00 
  409b06:	c5 f8 28 05 52 26 00 	vmovaps 0x2652(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409b0d:	00 
  409b0e:	c5 f8 11 84 24 c0 0a 	vmovups %xmm0,0xac0(%rsp)
  409b15:	00 00 
  409b17:	48 8d 94 24 b0 0a 00 	lea    0xab0(%rsp),%rdx
  409b1e:	00 
  409b1f:	44 89 ff             	mov    %r15d,%edi
  409b22:	48 89 de             	mov    %rbx,%rsi
  409b25:	e8 26 7c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409b2a:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  409b2f:	44 0f b6 bc 24 fa 00 	movzbl 0xfa(%rsp),%r15d
  409b36:	00 00 
  409b38:	44 89 e1             	mov    %r12d,%ecx
  409b3b:	48 01 c1             	add    %rax,%rcx
  409b3e:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409b42:	44 89 e0             	mov    %r12d,%eax
  409b45:	83 e0 1f             	and    $0x1f,%eax
  409b48:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409b4c:	48 83 c3 20          	add    $0x20,%rbx
  409b50:	4c 89 b4 24 90 0a 00 	mov    %r14,0xa90(%rsp)
  409b57:	00 
  409b58:	48 c7 84 24 98 0a 00 	movq   $0x0,0xa98(%rsp)
  409b5f:	00 00 00 00 00 
  409b64:	c5 f8 28 05 f4 25 00 	vmovaps 0x25f4(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409b6b:	00 
  409b6c:	c5 f8 11 84 24 a0 0a 	vmovups %xmm0,0xaa0(%rsp)
  409b73:	00 00 
  409b75:	48 8d b4 24 90 0a 00 	lea    0xa90(%rsp),%rsi
  409b7c:	00 
  409b7d:	48 89 df             	mov    %rbx,%rdi
  409b80:	e8 2b 76 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409b85:	88 84 24 fa 00 00 00 	mov    %al,0xfa(%rsp)
  409b8c:	4c 89 b4 24 70 0a 00 	mov    %r14,0xa70(%rsp)
  409b93:	00 
  409b94:	48 c7 84 24 78 0a 00 	movq   $0x0,0xa78(%rsp)
  409b9b:	00 00 00 00 00 
  409ba0:	c5 f8 28 05 b8 25 00 	vmovaps 0x25b8(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409ba7:	00 
  409ba8:	c5 f8 11 84 24 80 0a 	vmovups %xmm0,0xa80(%rsp)
  409baf:	00 00 
  409bb1:	48 8d 94 24 70 0a 00 	lea    0xa70(%rsp),%rdx
  409bb8:	00 
  409bb9:	44 89 ff             	mov    %r15d,%edi
  409bbc:	48 89 de             	mov    %rbx,%rsi
  409bbf:	e8 8c 7b ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409bc4:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  409bc9:	44 0f b6 bc 24 fb 00 	movzbl 0xfb(%rsp),%r15d
  409bd0:	00 00 
  409bd2:	44 89 e1             	mov    %r12d,%ecx
  409bd5:	48 01 c1             	add    %rax,%rcx
  409bd8:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409bdc:	44 89 e0             	mov    %r12d,%eax
  409bdf:	83 e0 1f             	and    $0x1f,%eax
  409be2:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409be6:	48 83 c3 20          	add    $0x20,%rbx
  409bea:	4c 89 b4 24 50 0a 00 	mov    %r14,0xa50(%rsp)
  409bf1:	00 
  409bf2:	48 c7 84 24 58 0a 00 	movq   $0x0,0xa58(%rsp)
  409bf9:	00 00 00 00 00 
  409bfe:	c5 f8 28 05 5a 25 00 	vmovaps 0x255a(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409c05:	00 
  409c06:	c5 f8 11 84 24 60 0a 	vmovups %xmm0,0xa60(%rsp)
  409c0d:	00 00 
  409c0f:	48 8d b4 24 50 0a 00 	lea    0xa50(%rsp),%rsi
  409c16:	00 
  409c17:	48 89 df             	mov    %rbx,%rdi
  409c1a:	e8 91 75 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409c1f:	88 84 24 fb 00 00 00 	mov    %al,0xfb(%rsp)
  409c26:	4c 89 b4 24 30 0a 00 	mov    %r14,0xa30(%rsp)
  409c2d:	00 
  409c2e:	48 c7 84 24 38 0a 00 	movq   $0x0,0xa38(%rsp)
  409c35:	00 00 00 00 00 
  409c3a:	c5 f8 28 05 1e 25 00 	vmovaps 0x251e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409c41:	00 
  409c42:	c5 f8 11 84 24 40 0a 	vmovups %xmm0,0xa40(%rsp)
  409c49:	00 00 
  409c4b:	48 8d 94 24 30 0a 00 	lea    0xa30(%rsp),%rdx
  409c52:	00 
  409c53:	44 89 ff             	mov    %r15d,%edi
  409c56:	48 89 de             	mov    %rbx,%rsi
  409c59:	e8 f2 7a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409c5e:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  409c63:	44 0f b6 bc 24 fc 00 	movzbl 0xfc(%rsp),%r15d
  409c6a:	00 00 
  409c6c:	44 89 e1             	mov    %r12d,%ecx
  409c6f:	48 01 c1             	add    %rax,%rcx
  409c72:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409c76:	44 89 e0             	mov    %r12d,%eax
  409c79:	83 e0 1f             	and    $0x1f,%eax
  409c7c:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409c80:	48 83 c3 20          	add    $0x20,%rbx
  409c84:	4c 89 b4 24 10 0a 00 	mov    %r14,0xa10(%rsp)
  409c8b:	00 
  409c8c:	48 c7 84 24 18 0a 00 	movq   $0x0,0xa18(%rsp)
  409c93:	00 00 00 00 00 
  409c98:	c5 f8 28 05 c0 24 00 	vmovaps 0x24c0(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409c9f:	00 
  409ca0:	c5 f8 11 84 24 20 0a 	vmovups %xmm0,0xa20(%rsp)
  409ca7:	00 00 
  409ca9:	48 8d b4 24 10 0a 00 	lea    0xa10(%rsp),%rsi
  409cb0:	00 
  409cb1:	48 89 df             	mov    %rbx,%rdi
  409cb4:	e8 f7 74 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409cb9:	88 84 24 fc 00 00 00 	mov    %al,0xfc(%rsp)
  409cc0:	4c 89 b4 24 f0 09 00 	mov    %r14,0x9f0(%rsp)
  409cc7:	00 
  409cc8:	48 c7 84 24 f8 09 00 	movq   $0x0,0x9f8(%rsp)
  409ccf:	00 00 00 00 00 
  409cd4:	c5 f8 28 05 84 24 00 	vmovaps 0x2484(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409cdb:	00 
  409cdc:	c5 f8 11 84 24 00 0a 	vmovups %xmm0,0xa00(%rsp)
  409ce3:	00 00 
  409ce5:	48 8d 94 24 f0 09 00 	lea    0x9f0(%rsp),%rdx
  409cec:	00 
  409ced:	44 89 ff             	mov    %r15d,%edi
  409cf0:	48 89 de             	mov    %rbx,%rsi
  409cf3:	e8 58 7a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409cf8:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  409cfd:	44 0f b6 bc 24 fd 00 	movzbl 0xfd(%rsp),%r15d
  409d04:	00 00 
  409d06:	44 89 e1             	mov    %r12d,%ecx
  409d09:	48 01 c1             	add    %rax,%rcx
  409d0c:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409d10:	44 89 e0             	mov    %r12d,%eax
  409d13:	83 e0 1f             	and    $0x1f,%eax
  409d16:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409d1a:	48 83 c3 20          	add    $0x20,%rbx
  409d1e:	4c 89 b4 24 d0 09 00 	mov    %r14,0x9d0(%rsp)
  409d25:	00 
  409d26:	48 c7 84 24 d8 09 00 	movq   $0x0,0x9d8(%rsp)
  409d2d:	00 00 00 00 00 
  409d32:	c5 f8 28 05 26 24 00 	vmovaps 0x2426(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409d39:	00 
  409d3a:	c5 f8 11 84 24 e0 09 	vmovups %xmm0,0x9e0(%rsp)
  409d41:	00 00 
  409d43:	48 8d b4 24 d0 09 00 	lea    0x9d0(%rsp),%rsi
  409d4a:	00 
  409d4b:	48 89 df             	mov    %rbx,%rdi
  409d4e:	e8 5d 74 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409d53:	88 84 24 fd 00 00 00 	mov    %al,0xfd(%rsp)
  409d5a:	4c 89 b4 24 b0 09 00 	mov    %r14,0x9b0(%rsp)
  409d61:	00 
  409d62:	48 c7 84 24 b8 09 00 	movq   $0x0,0x9b8(%rsp)
  409d69:	00 00 00 00 00 
  409d6e:	c5 f8 28 05 ea 23 00 	vmovaps 0x23ea(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409d75:	00 
  409d76:	c5 f8 11 84 24 c0 09 	vmovups %xmm0,0x9c0(%rsp)
  409d7d:	00 00 
  409d7f:	48 8d 94 24 b0 09 00 	lea    0x9b0(%rsp),%rdx
  409d86:	00 
  409d87:	44 89 ff             	mov    %r15d,%edi
  409d8a:	48 89 de             	mov    %rbx,%rsi
  409d8d:	e8 be 79 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409d92:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  409d97:	44 0f b6 bc 24 fe 00 	movzbl 0xfe(%rsp),%r15d
  409d9e:	00 00 
  409da0:	44 89 e1             	mov    %r12d,%ecx
  409da3:	48 01 c1             	add    %rax,%rcx
  409da6:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409daa:	44 89 e0             	mov    %r12d,%eax
  409dad:	83 e0 1f             	and    $0x1f,%eax
  409db0:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409db4:	48 83 c3 20          	add    $0x20,%rbx
  409db8:	4c 89 b4 24 90 09 00 	mov    %r14,0x990(%rsp)
  409dbf:	00 
  409dc0:	48 c7 84 24 98 09 00 	movq   $0x0,0x998(%rsp)
  409dc7:	00 00 00 00 00 
  409dcc:	c5 f8 28 05 8c 23 00 	vmovaps 0x238c(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409dd3:	00 
  409dd4:	c5 f8 11 84 24 a0 09 	vmovups %xmm0,0x9a0(%rsp)
  409ddb:	00 00 
  409ddd:	48 8d b4 24 90 09 00 	lea    0x990(%rsp),%rsi
  409de4:	00 
  409de5:	48 89 df             	mov    %rbx,%rdi
  409de8:	e8 c3 73 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409ded:	88 84 24 fe 00 00 00 	mov    %al,0xfe(%rsp)
  409df4:	4c 89 b4 24 70 09 00 	mov    %r14,0x970(%rsp)
  409dfb:	00 
  409dfc:	48 c7 84 24 78 09 00 	movq   $0x0,0x978(%rsp)
  409e03:	00 00 00 00 00 
  409e08:	c5 f8 28 05 50 23 00 	vmovaps 0x2350(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409e0f:	00 
  409e10:	c5 f8 11 84 24 80 09 	vmovups %xmm0,0x980(%rsp)
  409e17:	00 00 
  409e19:	48 8d 94 24 70 09 00 	lea    0x970(%rsp),%rdx
  409e20:	00 
  409e21:	44 89 ff             	mov    %r15d,%edi
  409e24:	48 89 de             	mov    %rbx,%rsi
  409e27:	e8 24 79 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409e2c:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  409e31:	44 0f b6 bc 24 ff 00 	movzbl 0xff(%rsp),%r15d
  409e38:	00 00 
  409e3a:	44 89 e1             	mov    %r12d,%ecx
  409e3d:	48 01 c1             	add    %rax,%rcx
  409e40:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409e44:	44 89 e0             	mov    %r12d,%eax
  409e47:	83 e0 1f             	and    $0x1f,%eax
  409e4a:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409e4e:	48 83 c3 20          	add    $0x20,%rbx
  409e52:	4c 89 b4 24 50 09 00 	mov    %r14,0x950(%rsp)
  409e59:	00 
  409e5a:	48 c7 84 24 58 09 00 	movq   $0x0,0x958(%rsp)
  409e61:	00 00 00 00 00 
  409e66:	c5 f8 28 05 f2 22 00 	vmovaps 0x22f2(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409e6d:	00 
  409e6e:	c5 f8 11 84 24 60 09 	vmovups %xmm0,0x960(%rsp)
  409e75:	00 00 
  409e77:	48 8d b4 24 50 09 00 	lea    0x950(%rsp),%rsi
  409e7e:	00 
  409e7f:	48 89 df             	mov    %rbx,%rdi
  409e82:	e8 29 73 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409e87:	88 84 24 ff 00 00 00 	mov    %al,0xff(%rsp)
  409e8e:	4c 89 b4 24 30 09 00 	mov    %r14,0x930(%rsp)
  409e95:	00 
  409e96:	48 c7 84 24 38 09 00 	movq   $0x0,0x938(%rsp)
  409e9d:	00 00 00 00 00 
  409ea2:	c5 f8 28 05 b6 22 00 	vmovaps 0x22b6(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409ea9:	00 
  409eaa:	c5 f8 11 84 24 40 09 	vmovups %xmm0,0x940(%rsp)
  409eb1:	00 00 
  409eb3:	48 8d 94 24 30 09 00 	lea    0x930(%rsp),%rdx
  409eba:	00 
  409ebb:	44 89 ff             	mov    %r15d,%edi
  409ebe:	48 89 de             	mov    %rbx,%rsi
  409ec1:	e8 8a 78 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409ec6:	0f b6 04 24          	movzbl (%rsp),%eax
  409eca:	44 0f b6 bc 24 00 01 	movzbl 0x100(%rsp),%r15d
  409ed1:	00 00 
  409ed3:	44 89 e1             	mov    %r12d,%ecx
  409ed6:	48 01 c1             	add    %rax,%rcx
  409ed9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409edd:	44 89 e0             	mov    %r12d,%eax
  409ee0:	83 e0 1f             	and    $0x1f,%eax
  409ee3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409ee7:	48 83 c3 20          	add    $0x20,%rbx
  409eeb:	4c 89 b4 24 10 09 00 	mov    %r14,0x910(%rsp)
  409ef2:	00 
  409ef3:	48 c7 84 24 18 09 00 	movq   $0x0,0x918(%rsp)
  409efa:	00 00 00 00 00 
  409eff:	c5 f8 28 05 59 22 00 	vmovaps 0x2259(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409f06:	00 
  409f07:	c5 f8 11 84 24 20 09 	vmovups %xmm0,0x920(%rsp)
  409f0e:	00 00 
  409f10:	48 8d b4 24 10 09 00 	lea    0x910(%rsp),%rsi
  409f17:	00 
  409f18:	48 89 df             	mov    %rbx,%rdi
  409f1b:	e8 90 72 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409f20:	88 84 24 00 01 00 00 	mov    %al,0x100(%rsp)
  409f27:	4c 89 b4 24 f0 08 00 	mov    %r14,0x8f0(%rsp)
  409f2e:	00 
  409f2f:	48 c7 84 24 f8 08 00 	movq   $0x0,0x8f8(%rsp)
  409f36:	00 00 00 00 00 
  409f3b:	c5 f8 28 05 1d 22 00 	vmovaps 0x221d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409f42:	00 
  409f43:	c5 f8 11 84 24 00 09 	vmovups %xmm0,0x900(%rsp)
  409f4a:	00 00 
  409f4c:	48 8d 94 24 f0 08 00 	lea    0x8f0(%rsp),%rdx
  409f53:	00 
  409f54:	44 89 ff             	mov    %r15d,%edi
  409f57:	48 89 de             	mov    %rbx,%rsi
  409f5a:	e8 f1 77 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409f5f:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  409f64:	44 0f b6 bc 24 01 01 	movzbl 0x101(%rsp),%r15d
  409f6b:	00 00 
  409f6d:	44 89 e1             	mov    %r12d,%ecx
  409f70:	48 01 c1             	add    %rax,%rcx
  409f73:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  409f77:	44 89 e0             	mov    %r12d,%eax
  409f7a:	83 e0 1f             	and    $0x1f,%eax
  409f7d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  409f81:	48 83 c3 20          	add    $0x20,%rbx
  409f85:	4c 89 b4 24 d0 08 00 	mov    %r14,0x8d0(%rsp)
  409f8c:	00 
  409f8d:	48 c7 84 24 d8 08 00 	movq   $0x0,0x8d8(%rsp)
  409f94:	00 00 00 00 00 
  409f99:	c5 f8 28 05 bf 21 00 	vmovaps 0x21bf(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409fa0:	00 
  409fa1:	c5 f8 11 84 24 e0 08 	vmovups %xmm0,0x8e0(%rsp)
  409fa8:	00 00 
  409faa:	48 8d b4 24 d0 08 00 	lea    0x8d0(%rsp),%rsi
  409fb1:	00 
  409fb2:	48 89 df             	mov    %rbx,%rdi
  409fb5:	e8 f6 71 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  409fba:	88 84 24 01 01 00 00 	mov    %al,0x101(%rsp)
  409fc1:	4c 89 b4 24 b0 08 00 	mov    %r14,0x8b0(%rsp)
  409fc8:	00 
  409fc9:	48 c7 84 24 b8 08 00 	movq   $0x0,0x8b8(%rsp)
  409fd0:	00 00 00 00 00 
  409fd5:	c5 f8 28 05 83 21 00 	vmovaps 0x2183(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  409fdc:	00 
  409fdd:	c5 f8 11 84 24 c0 08 	vmovups %xmm0,0x8c0(%rsp)
  409fe4:	00 00 
  409fe6:	48 8d 94 24 b0 08 00 	lea    0x8b0(%rsp),%rdx
  409fed:	00 
  409fee:	44 89 ff             	mov    %r15d,%edi
  409ff1:	48 89 de             	mov    %rbx,%rsi
  409ff4:	e8 57 77 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  409ff9:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  409ffe:	44 0f b6 bc 24 02 01 	movzbl 0x102(%rsp),%r15d
  40a005:	00 00 
  40a007:	44 89 e1             	mov    %r12d,%ecx
  40a00a:	48 01 c1             	add    %rax,%rcx
  40a00d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a011:	44 89 e0             	mov    %r12d,%eax
  40a014:	83 e0 1f             	and    $0x1f,%eax
  40a017:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a01b:	48 83 c3 20          	add    $0x20,%rbx
  40a01f:	4c 89 b4 24 90 08 00 	mov    %r14,0x890(%rsp)
  40a026:	00 
  40a027:	48 c7 84 24 98 08 00 	movq   $0x0,0x898(%rsp)
  40a02e:	00 00 00 00 00 
  40a033:	c5 f8 28 05 25 21 00 	vmovaps 0x2125(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a03a:	00 
  40a03b:	c5 f8 11 84 24 a0 08 	vmovups %xmm0,0x8a0(%rsp)
  40a042:	00 00 
  40a044:	48 8d b4 24 90 08 00 	lea    0x890(%rsp),%rsi
  40a04b:	00 
  40a04c:	48 89 df             	mov    %rbx,%rdi
  40a04f:	e8 5c 71 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a054:	88 84 24 02 01 00 00 	mov    %al,0x102(%rsp)
  40a05b:	4c 89 b4 24 70 08 00 	mov    %r14,0x870(%rsp)
  40a062:	00 
  40a063:	48 c7 84 24 78 08 00 	movq   $0x0,0x878(%rsp)
  40a06a:	00 00 00 00 00 
  40a06f:	c5 f8 28 05 e9 20 00 	vmovaps 0x20e9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a076:	00 
  40a077:	c5 f8 11 84 24 80 08 	vmovups %xmm0,0x880(%rsp)
  40a07e:	00 00 
  40a080:	48 8d 94 24 70 08 00 	lea    0x870(%rsp),%rdx
  40a087:	00 
  40a088:	44 89 ff             	mov    %r15d,%edi
  40a08b:	48 89 de             	mov    %rbx,%rsi
  40a08e:	e8 bd 76 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a093:	0f b6 44 24 03       	movzbl 0x3(%rsp),%eax
  40a098:	44 0f b6 bc 24 03 01 	movzbl 0x103(%rsp),%r15d
  40a09f:	00 00 
  40a0a1:	44 89 e1             	mov    %r12d,%ecx
  40a0a4:	48 01 c1             	add    %rax,%rcx
  40a0a7:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a0ab:	44 89 e0             	mov    %r12d,%eax
  40a0ae:	83 e0 1f             	and    $0x1f,%eax
  40a0b1:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a0b5:	48 83 c3 20          	add    $0x20,%rbx
  40a0b9:	4c 89 b4 24 50 08 00 	mov    %r14,0x850(%rsp)
  40a0c0:	00 
  40a0c1:	48 c7 84 24 58 08 00 	movq   $0x0,0x858(%rsp)
  40a0c8:	00 00 00 00 00 
  40a0cd:	c5 f8 28 05 8b 20 00 	vmovaps 0x208b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a0d4:	00 
  40a0d5:	c5 f8 11 84 24 60 08 	vmovups %xmm0,0x860(%rsp)
  40a0dc:	00 00 
  40a0de:	48 8d b4 24 50 08 00 	lea    0x850(%rsp),%rsi
  40a0e5:	00 
  40a0e6:	48 89 df             	mov    %rbx,%rdi
  40a0e9:	e8 c2 70 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a0ee:	88 84 24 03 01 00 00 	mov    %al,0x103(%rsp)
  40a0f5:	4c 89 b4 24 30 08 00 	mov    %r14,0x830(%rsp)
  40a0fc:	00 
  40a0fd:	48 c7 84 24 38 08 00 	movq   $0x0,0x838(%rsp)
  40a104:	00 00 00 00 00 
  40a109:	c5 f8 28 05 4f 20 00 	vmovaps 0x204f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a110:	00 
  40a111:	c5 f8 11 84 24 40 08 	vmovups %xmm0,0x840(%rsp)
  40a118:	00 00 
  40a11a:	48 8d 94 24 30 08 00 	lea    0x830(%rsp),%rdx
  40a121:	00 
  40a122:	44 89 ff             	mov    %r15d,%edi
  40a125:	48 89 de             	mov    %rbx,%rsi
  40a128:	e8 23 76 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a12d:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
  40a132:	44 0f b6 bc 24 04 01 	movzbl 0x104(%rsp),%r15d
  40a139:	00 00 
  40a13b:	44 89 e1             	mov    %r12d,%ecx
  40a13e:	48 01 c1             	add    %rax,%rcx
  40a141:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a145:	44 89 e0             	mov    %r12d,%eax
  40a148:	83 e0 1f             	and    $0x1f,%eax
  40a14b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a14f:	48 83 c3 20          	add    $0x20,%rbx
  40a153:	4c 89 b4 24 10 08 00 	mov    %r14,0x810(%rsp)
  40a15a:	00 
  40a15b:	48 c7 84 24 18 08 00 	movq   $0x0,0x818(%rsp)
  40a162:	00 00 00 00 00 
  40a167:	c5 f8 28 05 f1 1f 00 	vmovaps 0x1ff1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a16e:	00 
  40a16f:	c5 f8 11 84 24 20 08 	vmovups %xmm0,0x820(%rsp)
  40a176:	00 00 
  40a178:	48 8d b4 24 10 08 00 	lea    0x810(%rsp),%rsi
  40a17f:	00 
  40a180:	48 89 df             	mov    %rbx,%rdi
  40a183:	e8 28 70 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a188:	88 84 24 04 01 00 00 	mov    %al,0x104(%rsp)
  40a18f:	4c 89 b4 24 f0 07 00 	mov    %r14,0x7f0(%rsp)
  40a196:	00 
  40a197:	48 c7 84 24 f8 07 00 	movq   $0x0,0x7f8(%rsp)
  40a19e:	00 00 00 00 00 
  40a1a3:	c5 f8 28 05 b5 1f 00 	vmovaps 0x1fb5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a1aa:	00 
  40a1ab:	c5 f8 11 84 24 00 08 	vmovups %xmm0,0x800(%rsp)
  40a1b2:	00 00 
  40a1b4:	48 8d 94 24 f0 07 00 	lea    0x7f0(%rsp),%rdx
  40a1bb:	00 
  40a1bc:	44 89 ff             	mov    %r15d,%edi
  40a1bf:	48 89 de             	mov    %rbx,%rsi
  40a1c2:	e8 89 75 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a1c7:	0f b6 44 24 05       	movzbl 0x5(%rsp),%eax
  40a1cc:	44 0f b6 bc 24 05 01 	movzbl 0x105(%rsp),%r15d
  40a1d3:	00 00 
  40a1d5:	44 89 e1             	mov    %r12d,%ecx
  40a1d8:	48 01 c1             	add    %rax,%rcx
  40a1db:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a1df:	44 89 e0             	mov    %r12d,%eax
  40a1e2:	83 e0 1f             	and    $0x1f,%eax
  40a1e5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a1e9:	48 83 c3 20          	add    $0x20,%rbx
  40a1ed:	4c 89 b4 24 d0 07 00 	mov    %r14,0x7d0(%rsp)
  40a1f4:	00 
  40a1f5:	48 c7 84 24 d8 07 00 	movq   $0x0,0x7d8(%rsp)
  40a1fc:	00 00 00 00 00 
  40a201:	c5 f8 28 05 57 1f 00 	vmovaps 0x1f57(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a208:	00 
  40a209:	c5 f8 11 84 24 e0 07 	vmovups %xmm0,0x7e0(%rsp)
  40a210:	00 00 
  40a212:	48 8d b4 24 d0 07 00 	lea    0x7d0(%rsp),%rsi
  40a219:	00 
  40a21a:	48 89 df             	mov    %rbx,%rdi
  40a21d:	e8 8e 6f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a222:	88 84 24 05 01 00 00 	mov    %al,0x105(%rsp)
  40a229:	4c 89 b4 24 b0 07 00 	mov    %r14,0x7b0(%rsp)
  40a230:	00 
  40a231:	48 c7 84 24 b8 07 00 	movq   $0x0,0x7b8(%rsp)
  40a238:	00 00 00 00 00 
  40a23d:	c5 f8 28 05 1b 1f 00 	vmovaps 0x1f1b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a244:	00 
  40a245:	c5 f8 11 84 24 c0 07 	vmovups %xmm0,0x7c0(%rsp)
  40a24c:	00 00 
  40a24e:	48 8d 94 24 b0 07 00 	lea    0x7b0(%rsp),%rdx
  40a255:	00 
  40a256:	44 89 ff             	mov    %r15d,%edi
  40a259:	48 89 de             	mov    %rbx,%rsi
  40a25c:	e8 ef 74 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a261:	0f b6 44 24 06       	movzbl 0x6(%rsp),%eax
  40a266:	44 0f b6 bc 24 06 01 	movzbl 0x106(%rsp),%r15d
  40a26d:	00 00 
  40a26f:	44 89 e1             	mov    %r12d,%ecx
  40a272:	48 01 c1             	add    %rax,%rcx
  40a275:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a279:	44 89 e0             	mov    %r12d,%eax
  40a27c:	83 e0 1f             	and    $0x1f,%eax
  40a27f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a283:	48 83 c3 20          	add    $0x20,%rbx
  40a287:	4c 89 b4 24 90 07 00 	mov    %r14,0x790(%rsp)
  40a28e:	00 
  40a28f:	48 c7 84 24 98 07 00 	movq   $0x0,0x798(%rsp)
  40a296:	00 00 00 00 00 
  40a29b:	c5 f8 28 05 bd 1e 00 	vmovaps 0x1ebd(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a2a2:	00 
  40a2a3:	c5 f8 11 84 24 a0 07 	vmovups %xmm0,0x7a0(%rsp)
  40a2aa:	00 00 
  40a2ac:	48 8d b4 24 90 07 00 	lea    0x790(%rsp),%rsi
  40a2b3:	00 
  40a2b4:	48 89 df             	mov    %rbx,%rdi
  40a2b7:	e8 f4 6e ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a2bc:	88 84 24 06 01 00 00 	mov    %al,0x106(%rsp)
  40a2c3:	4c 89 b4 24 70 07 00 	mov    %r14,0x770(%rsp)
  40a2ca:	00 
  40a2cb:	48 c7 84 24 78 07 00 	movq   $0x0,0x778(%rsp)
  40a2d2:	00 00 00 00 00 
  40a2d7:	c5 f8 28 05 81 1e 00 	vmovaps 0x1e81(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a2de:	00 
  40a2df:	c5 f8 11 84 24 80 07 	vmovups %xmm0,0x780(%rsp)
  40a2e6:	00 00 
  40a2e8:	48 8d 94 24 70 07 00 	lea    0x770(%rsp),%rdx
  40a2ef:	00 
  40a2f0:	44 89 ff             	mov    %r15d,%edi
  40a2f3:	48 89 de             	mov    %rbx,%rsi
  40a2f6:	e8 55 74 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a2fb:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  40a300:	44 0f b6 bc 24 07 01 	movzbl 0x107(%rsp),%r15d
  40a307:	00 00 
  40a309:	44 89 e1             	mov    %r12d,%ecx
  40a30c:	48 01 c1             	add    %rax,%rcx
  40a30f:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a313:	44 89 e0             	mov    %r12d,%eax
  40a316:	83 e0 1f             	and    $0x1f,%eax
  40a319:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a31d:	48 83 c3 20          	add    $0x20,%rbx
  40a321:	4c 89 b4 24 50 07 00 	mov    %r14,0x750(%rsp)
  40a328:	00 
  40a329:	48 c7 84 24 58 07 00 	movq   $0x0,0x758(%rsp)
  40a330:	00 00 00 00 00 
  40a335:	c5 f8 28 05 23 1e 00 	vmovaps 0x1e23(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a33c:	00 
  40a33d:	c5 f8 11 84 24 60 07 	vmovups %xmm0,0x760(%rsp)
  40a344:	00 00 
  40a346:	48 8d b4 24 50 07 00 	lea    0x750(%rsp),%rsi
  40a34d:	00 
  40a34e:	48 89 df             	mov    %rbx,%rdi
  40a351:	e8 5a 6e ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a356:	88 84 24 07 01 00 00 	mov    %al,0x107(%rsp)
  40a35d:	4c 89 b4 24 30 07 00 	mov    %r14,0x730(%rsp)
  40a364:	00 
  40a365:	48 c7 84 24 38 07 00 	movq   $0x0,0x738(%rsp)
  40a36c:	00 00 00 00 00 
  40a371:	c5 f8 28 05 e7 1d 00 	vmovaps 0x1de7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a378:	00 
  40a379:	c5 f8 11 84 24 40 07 	vmovups %xmm0,0x740(%rsp)
  40a380:	00 00 
  40a382:	48 8d 94 24 30 07 00 	lea    0x730(%rsp),%rdx
  40a389:	00 
  40a38a:	44 89 ff             	mov    %r15d,%edi
  40a38d:	48 89 de             	mov    %rbx,%rsi
  40a390:	e8 bb 73 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a395:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  40a39a:	44 0f b6 bc 24 08 01 	movzbl 0x108(%rsp),%r15d
  40a3a1:	00 00 
  40a3a3:	44 89 e1             	mov    %r12d,%ecx
  40a3a6:	48 01 c1             	add    %rax,%rcx
  40a3a9:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a3ad:	44 89 e0             	mov    %r12d,%eax
  40a3b0:	83 e0 1f             	and    $0x1f,%eax
  40a3b3:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a3b7:	48 83 c3 20          	add    $0x20,%rbx
  40a3bb:	4c 89 b4 24 10 07 00 	mov    %r14,0x710(%rsp)
  40a3c2:	00 
  40a3c3:	48 c7 84 24 18 07 00 	movq   $0x0,0x718(%rsp)
  40a3ca:	00 00 00 00 00 
  40a3cf:	c5 f8 28 05 89 1d 00 	vmovaps 0x1d89(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a3d6:	00 
  40a3d7:	c5 f8 11 84 24 20 07 	vmovups %xmm0,0x720(%rsp)
  40a3de:	00 00 
  40a3e0:	48 8d b4 24 10 07 00 	lea    0x710(%rsp),%rsi
  40a3e7:	00 
  40a3e8:	48 89 df             	mov    %rbx,%rdi
  40a3eb:	e8 c0 6d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a3f0:	88 84 24 08 01 00 00 	mov    %al,0x108(%rsp)
  40a3f7:	4c 89 b4 24 f0 06 00 	mov    %r14,0x6f0(%rsp)
  40a3fe:	00 
  40a3ff:	48 c7 84 24 f8 06 00 	movq   $0x0,0x6f8(%rsp)
  40a406:	00 00 00 00 00 
  40a40b:	c5 f8 28 05 4d 1d 00 	vmovaps 0x1d4d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a412:	00 
  40a413:	c5 f8 11 84 24 00 07 	vmovups %xmm0,0x700(%rsp)
  40a41a:	00 00 
  40a41c:	48 8d 94 24 f0 06 00 	lea    0x6f0(%rsp),%rdx
  40a423:	00 
  40a424:	44 89 ff             	mov    %r15d,%edi
  40a427:	48 89 de             	mov    %rbx,%rsi
  40a42a:	e8 21 73 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a42f:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  40a434:	44 0f b6 bc 24 09 01 	movzbl 0x109(%rsp),%r15d
  40a43b:	00 00 
  40a43d:	44 89 e1             	mov    %r12d,%ecx
  40a440:	48 01 c1             	add    %rax,%rcx
  40a443:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a447:	44 89 e0             	mov    %r12d,%eax
  40a44a:	83 e0 1f             	and    $0x1f,%eax
  40a44d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a451:	48 83 c3 20          	add    $0x20,%rbx
  40a455:	4c 89 b4 24 d0 06 00 	mov    %r14,0x6d0(%rsp)
  40a45c:	00 
  40a45d:	48 c7 84 24 d8 06 00 	movq   $0x0,0x6d8(%rsp)
  40a464:	00 00 00 00 00 
  40a469:	c5 f8 28 05 ef 1c 00 	vmovaps 0x1cef(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a470:	00 
  40a471:	c5 f8 11 84 24 e0 06 	vmovups %xmm0,0x6e0(%rsp)
  40a478:	00 00 
  40a47a:	48 8d b4 24 d0 06 00 	lea    0x6d0(%rsp),%rsi
  40a481:	00 
  40a482:	48 89 df             	mov    %rbx,%rdi
  40a485:	e8 26 6d ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a48a:	88 84 24 09 01 00 00 	mov    %al,0x109(%rsp)
  40a491:	4c 89 b4 24 b0 06 00 	mov    %r14,0x6b0(%rsp)
  40a498:	00 
  40a499:	48 c7 84 24 b8 06 00 	movq   $0x0,0x6b8(%rsp)
  40a4a0:	00 00 00 00 00 
  40a4a5:	c5 f8 28 05 b3 1c 00 	vmovaps 0x1cb3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a4ac:	00 
  40a4ad:	c5 f8 11 84 24 c0 06 	vmovups %xmm0,0x6c0(%rsp)
  40a4b4:	00 00 
  40a4b6:	48 8d 94 24 b0 06 00 	lea    0x6b0(%rsp),%rdx
  40a4bd:	00 
  40a4be:	44 89 ff             	mov    %r15d,%edi
  40a4c1:	48 89 de             	mov    %rbx,%rsi
  40a4c4:	e8 87 72 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a4c9:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  40a4ce:	44 0f b6 bc 24 0a 01 	movzbl 0x10a(%rsp),%r15d
  40a4d5:	00 00 
  40a4d7:	44 89 e1             	mov    %r12d,%ecx
  40a4da:	48 01 c1             	add    %rax,%rcx
  40a4dd:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a4e1:	44 89 e0             	mov    %r12d,%eax
  40a4e4:	83 e0 1f             	and    $0x1f,%eax
  40a4e7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a4eb:	48 83 c3 20          	add    $0x20,%rbx
  40a4ef:	4c 89 b4 24 90 06 00 	mov    %r14,0x690(%rsp)
  40a4f6:	00 
  40a4f7:	48 c7 84 24 98 06 00 	movq   $0x0,0x698(%rsp)
  40a4fe:	00 00 00 00 00 
  40a503:	c5 f8 28 05 55 1c 00 	vmovaps 0x1c55(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a50a:	00 
  40a50b:	c5 f8 11 84 24 a0 06 	vmovups %xmm0,0x6a0(%rsp)
  40a512:	00 00 
  40a514:	48 8d b4 24 90 06 00 	lea    0x690(%rsp),%rsi
  40a51b:	00 
  40a51c:	48 89 df             	mov    %rbx,%rdi
  40a51f:	e8 8c 6c ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a524:	88 84 24 0a 01 00 00 	mov    %al,0x10a(%rsp)
  40a52b:	4c 89 b4 24 70 06 00 	mov    %r14,0x670(%rsp)
  40a532:	00 
  40a533:	48 c7 84 24 78 06 00 	movq   $0x0,0x678(%rsp)
  40a53a:	00 00 00 00 00 
  40a53f:	c5 f8 28 05 19 1c 00 	vmovaps 0x1c19(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a546:	00 
  40a547:	c5 f8 11 84 24 80 06 	vmovups %xmm0,0x680(%rsp)
  40a54e:	00 00 
  40a550:	48 8d 94 24 70 06 00 	lea    0x670(%rsp),%rdx
  40a557:	00 
  40a558:	44 89 ff             	mov    %r15d,%edi
  40a55b:	48 89 de             	mov    %rbx,%rsi
  40a55e:	e8 ed 71 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a563:	0f b6 44 24 0b       	movzbl 0xb(%rsp),%eax
  40a568:	44 0f b6 bc 24 0b 01 	movzbl 0x10b(%rsp),%r15d
  40a56f:	00 00 
  40a571:	44 89 e1             	mov    %r12d,%ecx
  40a574:	48 01 c1             	add    %rax,%rcx
  40a577:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a57b:	44 89 e0             	mov    %r12d,%eax
  40a57e:	83 e0 1f             	and    $0x1f,%eax
  40a581:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a585:	48 83 c3 20          	add    $0x20,%rbx
  40a589:	4c 89 b4 24 50 06 00 	mov    %r14,0x650(%rsp)
  40a590:	00 
  40a591:	48 c7 84 24 58 06 00 	movq   $0x0,0x658(%rsp)
  40a598:	00 00 00 00 00 
  40a59d:	c5 f8 28 05 bb 1b 00 	vmovaps 0x1bbb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a5a4:	00 
  40a5a5:	c5 f8 11 84 24 60 06 	vmovups %xmm0,0x660(%rsp)
  40a5ac:	00 00 
  40a5ae:	48 8d b4 24 50 06 00 	lea    0x650(%rsp),%rsi
  40a5b5:	00 
  40a5b6:	48 89 df             	mov    %rbx,%rdi
  40a5b9:	e8 f2 6b ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a5be:	88 84 24 0b 01 00 00 	mov    %al,0x10b(%rsp)
  40a5c5:	4c 89 b4 24 30 06 00 	mov    %r14,0x630(%rsp)
  40a5cc:	00 
  40a5cd:	48 c7 84 24 38 06 00 	movq   $0x0,0x638(%rsp)
  40a5d4:	00 00 00 00 00 
  40a5d9:	c5 f8 28 05 7f 1b 00 	vmovaps 0x1b7f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a5e0:	00 
  40a5e1:	c5 f8 11 84 24 40 06 	vmovups %xmm0,0x640(%rsp)
  40a5e8:	00 00 
  40a5ea:	48 8d 94 24 30 06 00 	lea    0x630(%rsp),%rdx
  40a5f1:	00 
  40a5f2:	44 89 ff             	mov    %r15d,%edi
  40a5f5:	48 89 de             	mov    %rbx,%rsi
  40a5f8:	e8 53 71 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a5fd:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  40a602:	44 0f b6 bc 24 0c 01 	movzbl 0x10c(%rsp),%r15d
  40a609:	00 00 
  40a60b:	44 89 e1             	mov    %r12d,%ecx
  40a60e:	48 01 c1             	add    %rax,%rcx
  40a611:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a615:	44 89 e0             	mov    %r12d,%eax
  40a618:	83 e0 1f             	and    $0x1f,%eax
  40a61b:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a61f:	48 83 c3 20          	add    $0x20,%rbx
  40a623:	4c 89 b4 24 10 06 00 	mov    %r14,0x610(%rsp)
  40a62a:	00 
  40a62b:	48 c7 84 24 18 06 00 	movq   $0x0,0x618(%rsp)
  40a632:	00 00 00 00 00 
  40a637:	c5 f8 28 05 21 1b 00 	vmovaps 0x1b21(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a63e:	00 
  40a63f:	c5 f8 11 84 24 20 06 	vmovups %xmm0,0x620(%rsp)
  40a646:	00 00 
  40a648:	48 8d b4 24 10 06 00 	lea    0x610(%rsp),%rsi
  40a64f:	00 
  40a650:	48 89 df             	mov    %rbx,%rdi
  40a653:	e8 58 6b ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a658:	88 84 24 0c 01 00 00 	mov    %al,0x10c(%rsp)
  40a65f:	4c 89 b4 24 f0 05 00 	mov    %r14,0x5f0(%rsp)
  40a666:	00 
  40a667:	48 c7 84 24 f8 05 00 	movq   $0x0,0x5f8(%rsp)
  40a66e:	00 00 00 00 00 
  40a673:	c5 f8 28 05 e5 1a 00 	vmovaps 0x1ae5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a67a:	00 
  40a67b:	c5 f8 11 84 24 00 06 	vmovups %xmm0,0x600(%rsp)
  40a682:	00 00 
  40a684:	48 8d 94 24 f0 05 00 	lea    0x5f0(%rsp),%rdx
  40a68b:	00 
  40a68c:	44 89 ff             	mov    %r15d,%edi
  40a68f:	48 89 de             	mov    %rbx,%rsi
  40a692:	e8 b9 70 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a697:	0f b6 44 24 0d       	movzbl 0xd(%rsp),%eax
  40a69c:	44 0f b6 bc 24 0d 01 	movzbl 0x10d(%rsp),%r15d
  40a6a3:	00 00 
  40a6a5:	44 89 e1             	mov    %r12d,%ecx
  40a6a8:	48 01 c1             	add    %rax,%rcx
  40a6ab:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a6af:	44 89 e0             	mov    %r12d,%eax
  40a6b2:	83 e0 1f             	and    $0x1f,%eax
  40a6b5:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a6b9:	48 83 c3 20          	add    $0x20,%rbx
  40a6bd:	4c 89 b4 24 d0 05 00 	mov    %r14,0x5d0(%rsp)
  40a6c4:	00 
  40a6c5:	48 c7 84 24 d8 05 00 	movq   $0x0,0x5d8(%rsp)
  40a6cc:	00 00 00 00 00 
  40a6d1:	c5 f8 28 05 87 1a 00 	vmovaps 0x1a87(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a6d8:	00 
  40a6d9:	c5 f8 11 84 24 e0 05 	vmovups %xmm0,0x5e0(%rsp)
  40a6e0:	00 00 
  40a6e2:	48 8d b4 24 d0 05 00 	lea    0x5d0(%rsp),%rsi
  40a6e9:	00 
  40a6ea:	48 89 df             	mov    %rbx,%rdi
  40a6ed:	e8 be 6a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a6f2:	88 84 24 0d 01 00 00 	mov    %al,0x10d(%rsp)
  40a6f9:	4c 89 b4 24 b0 05 00 	mov    %r14,0x5b0(%rsp)
  40a700:	00 
  40a701:	48 c7 84 24 b8 05 00 	movq   $0x0,0x5b8(%rsp)
  40a708:	00 00 00 00 00 
  40a70d:	c5 f8 28 05 4b 1a 00 	vmovaps 0x1a4b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a714:	00 
  40a715:	c5 f8 11 84 24 c0 05 	vmovups %xmm0,0x5c0(%rsp)
  40a71c:	00 00 
  40a71e:	48 8d 94 24 b0 05 00 	lea    0x5b0(%rsp),%rdx
  40a725:	00 
  40a726:	44 89 ff             	mov    %r15d,%edi
  40a729:	48 89 de             	mov    %rbx,%rsi
  40a72c:	e8 1f 70 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a731:	0f b6 44 24 0e       	movzbl 0xe(%rsp),%eax
  40a736:	44 0f b6 bc 24 0e 01 	movzbl 0x10e(%rsp),%r15d
  40a73d:	00 00 
  40a73f:	44 89 e1             	mov    %r12d,%ecx
  40a742:	48 01 c1             	add    %rax,%rcx
  40a745:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a749:	44 89 e0             	mov    %r12d,%eax
  40a74c:	83 e0 1f             	and    $0x1f,%eax
  40a74f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a753:	48 83 c3 20          	add    $0x20,%rbx
  40a757:	4c 89 b4 24 90 05 00 	mov    %r14,0x590(%rsp)
  40a75e:	00 
  40a75f:	48 c7 84 24 98 05 00 	movq   $0x0,0x598(%rsp)
  40a766:	00 00 00 00 00 
  40a76b:	c5 f8 28 05 ed 19 00 	vmovaps 0x19ed(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a772:	00 
  40a773:	c5 f8 11 84 24 a0 05 	vmovups %xmm0,0x5a0(%rsp)
  40a77a:	00 00 
  40a77c:	48 8d b4 24 90 05 00 	lea    0x590(%rsp),%rsi
  40a783:	00 
  40a784:	48 89 df             	mov    %rbx,%rdi
  40a787:	e8 24 6a ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a78c:	88 84 24 0e 01 00 00 	mov    %al,0x10e(%rsp)
  40a793:	4c 89 b4 24 70 05 00 	mov    %r14,0x570(%rsp)
  40a79a:	00 
  40a79b:	48 c7 84 24 78 05 00 	movq   $0x0,0x578(%rsp)
  40a7a2:	00 00 00 00 00 
  40a7a7:	c5 f8 28 05 b1 19 00 	vmovaps 0x19b1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a7ae:	00 
  40a7af:	c5 f8 11 84 24 80 05 	vmovups %xmm0,0x580(%rsp)
  40a7b6:	00 00 
  40a7b8:	48 8d 94 24 70 05 00 	lea    0x570(%rsp),%rdx
  40a7bf:	00 
  40a7c0:	44 89 ff             	mov    %r15d,%edi
  40a7c3:	48 89 de             	mov    %rbx,%rsi
  40a7c6:	e8 85 6f ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a7cb:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40a7d0:	44 0f b6 bc 24 0f 01 	movzbl 0x10f(%rsp),%r15d
  40a7d7:	00 00 
  40a7d9:	44 89 e1             	mov    %r12d,%ecx
  40a7dc:	48 01 c1             	add    %rax,%rcx
  40a7df:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a7e3:	44 89 e0             	mov    %r12d,%eax
  40a7e6:	83 e0 1f             	and    $0x1f,%eax
  40a7e9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a7ed:	48 83 c3 20          	add    $0x20,%rbx
  40a7f1:	4c 89 b4 24 50 05 00 	mov    %r14,0x550(%rsp)
  40a7f8:	00 
  40a7f9:	48 c7 84 24 58 05 00 	movq   $0x0,0x558(%rsp)
  40a800:	00 00 00 00 00 
  40a805:	c5 f8 28 05 53 19 00 	vmovaps 0x1953(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a80c:	00 
  40a80d:	c5 f8 11 84 24 60 05 	vmovups %xmm0,0x560(%rsp)
  40a814:	00 00 
  40a816:	48 8d b4 24 50 05 00 	lea    0x550(%rsp),%rsi
  40a81d:	00 
  40a81e:	48 89 df             	mov    %rbx,%rdi
  40a821:	e8 8a 69 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a826:	88 84 24 0f 01 00 00 	mov    %al,0x10f(%rsp)
  40a82d:	4c 89 b4 24 30 05 00 	mov    %r14,0x530(%rsp)
  40a834:	00 
  40a835:	48 c7 84 24 38 05 00 	movq   $0x0,0x538(%rsp)
  40a83c:	00 00 00 00 00 
  40a841:	c5 f8 28 05 17 19 00 	vmovaps 0x1917(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a848:	00 
  40a849:	c5 f8 11 84 24 40 05 	vmovups %xmm0,0x540(%rsp)
  40a850:	00 00 
  40a852:	48 8d 94 24 30 05 00 	lea    0x530(%rsp),%rdx
  40a859:	00 
  40a85a:	44 89 ff             	mov    %r15d,%edi
  40a85d:	48 89 de             	mov    %rbx,%rsi
  40a860:	e8 eb 6e ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a865:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
  40a86a:	44 0f b6 bc 24 10 01 	movzbl 0x110(%rsp),%r15d
  40a871:	00 00 
  40a873:	44 89 e1             	mov    %r12d,%ecx
  40a876:	48 01 c1             	add    %rax,%rcx
  40a879:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a87d:	44 89 e0             	mov    %r12d,%eax
  40a880:	83 e0 1f             	and    $0x1f,%eax
  40a883:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a887:	48 83 c3 20          	add    $0x20,%rbx
  40a88b:	4c 89 b4 24 10 05 00 	mov    %r14,0x510(%rsp)
  40a892:	00 
  40a893:	48 c7 84 24 18 05 00 	movq   $0x0,0x518(%rsp)
  40a89a:	00 00 00 00 00 
  40a89f:	c5 f8 28 05 b9 18 00 	vmovaps 0x18b9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a8a6:	00 
  40a8a7:	c5 f8 11 84 24 20 05 	vmovups %xmm0,0x520(%rsp)
  40a8ae:	00 00 
  40a8b0:	48 8d b4 24 10 05 00 	lea    0x510(%rsp),%rsi
  40a8b7:	00 
  40a8b8:	48 89 df             	mov    %rbx,%rdi
  40a8bb:	e8 f0 68 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a8c0:	88 84 24 10 01 00 00 	mov    %al,0x110(%rsp)
  40a8c7:	4c 89 b4 24 f0 04 00 	mov    %r14,0x4f0(%rsp)
  40a8ce:	00 
  40a8cf:	48 c7 84 24 f8 04 00 	movq   $0x0,0x4f8(%rsp)
  40a8d6:	00 00 00 00 00 
  40a8db:	c5 f8 28 05 7d 18 00 	vmovaps 0x187d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a8e2:	00 
  40a8e3:	c5 f8 11 84 24 00 05 	vmovups %xmm0,0x500(%rsp)
  40a8ea:	00 00 
  40a8ec:	48 8d 94 24 f0 04 00 	lea    0x4f0(%rsp),%rdx
  40a8f3:	00 
  40a8f4:	44 89 ff             	mov    %r15d,%edi
  40a8f7:	48 89 de             	mov    %rbx,%rsi
  40a8fa:	e8 51 6e ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a8ff:	0f b6 44 24 11       	movzbl 0x11(%rsp),%eax
  40a904:	44 0f b6 bc 24 11 01 	movzbl 0x111(%rsp),%r15d
  40a90b:	00 00 
  40a90d:	44 89 e1             	mov    %r12d,%ecx
  40a910:	48 01 c1             	add    %rax,%rcx
  40a913:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a917:	44 89 e0             	mov    %r12d,%eax
  40a91a:	83 e0 1f             	and    $0x1f,%eax
  40a91d:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a921:	48 83 c3 20          	add    $0x20,%rbx
  40a925:	4c 89 b4 24 d0 04 00 	mov    %r14,0x4d0(%rsp)
  40a92c:	00 
  40a92d:	48 c7 84 24 d8 04 00 	movq   $0x0,0x4d8(%rsp)
  40a934:	00 00 00 00 00 
  40a939:	c5 f8 28 05 1f 18 00 	vmovaps 0x181f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a940:	00 
  40a941:	c5 f8 11 84 24 e0 04 	vmovups %xmm0,0x4e0(%rsp)
  40a948:	00 00 
  40a94a:	48 8d b4 24 d0 04 00 	lea    0x4d0(%rsp),%rsi
  40a951:	00 
  40a952:	48 89 df             	mov    %rbx,%rdi
  40a955:	e8 56 68 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a95a:	88 84 24 11 01 00 00 	mov    %al,0x111(%rsp)
  40a961:	4c 89 b4 24 b0 04 00 	mov    %r14,0x4b0(%rsp)
  40a968:	00 
  40a969:	48 c7 84 24 b8 04 00 	movq   $0x0,0x4b8(%rsp)
  40a970:	00 00 00 00 00 
  40a975:	c5 f8 28 05 e3 17 00 	vmovaps 0x17e3(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a97c:	00 
  40a97d:	c5 f8 11 84 24 c0 04 	vmovups %xmm0,0x4c0(%rsp)
  40a984:	00 00 
  40a986:	48 8d 94 24 b0 04 00 	lea    0x4b0(%rsp),%rdx
  40a98d:	00 
  40a98e:	44 89 ff             	mov    %r15d,%edi
  40a991:	48 89 de             	mov    %rbx,%rsi
  40a994:	e8 b7 6d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40a999:	0f b6 44 24 12       	movzbl 0x12(%rsp),%eax
  40a99e:	44 0f b6 bc 24 12 01 	movzbl 0x112(%rsp),%r15d
  40a9a5:	00 00 
  40a9a7:	44 89 e1             	mov    %r12d,%ecx
  40a9aa:	48 01 c1             	add    %rax,%rcx
  40a9ad:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40a9b1:	44 89 e0             	mov    %r12d,%eax
  40a9b4:	83 e0 1f             	and    $0x1f,%eax
  40a9b7:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40a9bb:	48 83 c3 20          	add    $0x20,%rbx
  40a9bf:	4c 89 b4 24 90 04 00 	mov    %r14,0x490(%rsp)
  40a9c6:	00 
  40a9c7:	48 c7 84 24 98 04 00 	movq   $0x0,0x498(%rsp)
  40a9ce:	00 00 00 00 00 
  40a9d3:	c5 f8 28 05 85 17 00 	vmovaps 0x1785(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40a9da:	00 
  40a9db:	c5 f8 11 84 24 a0 04 	vmovups %xmm0,0x4a0(%rsp)
  40a9e2:	00 00 
  40a9e4:	48 8d b4 24 90 04 00 	lea    0x490(%rsp),%rsi
  40a9eb:	00 
  40a9ec:	48 89 df             	mov    %rbx,%rdi
  40a9ef:	e8 bc 67 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40a9f4:	88 84 24 12 01 00 00 	mov    %al,0x112(%rsp)
  40a9fb:	4c 89 b4 24 70 04 00 	mov    %r14,0x470(%rsp)
  40aa02:	00 
  40aa03:	48 c7 84 24 78 04 00 	movq   $0x0,0x478(%rsp)
  40aa0a:	00 00 00 00 00 
  40aa0f:	c5 f8 28 05 49 17 00 	vmovaps 0x1749(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40aa16:	00 
  40aa17:	c5 f8 11 84 24 80 04 	vmovups %xmm0,0x480(%rsp)
  40aa1e:	00 00 
  40aa20:	48 8d 94 24 70 04 00 	lea    0x470(%rsp),%rdx
  40aa27:	00 
  40aa28:	44 89 ff             	mov    %r15d,%edi
  40aa2b:	48 89 de             	mov    %rbx,%rsi
  40aa2e:	e8 1d 6d ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40aa33:	0f b6 44 24 13       	movzbl 0x13(%rsp),%eax
  40aa38:	44 0f b6 bc 24 13 01 	movzbl 0x113(%rsp),%r15d
  40aa3f:	00 00 
  40aa41:	44 89 e1             	mov    %r12d,%ecx
  40aa44:	48 01 c1             	add    %rax,%rcx
  40aa47:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40aa4b:	44 89 e0             	mov    %r12d,%eax
  40aa4e:	83 e0 1f             	and    $0x1f,%eax
  40aa51:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40aa55:	48 83 c3 20          	add    $0x20,%rbx
  40aa59:	4c 89 b4 24 50 04 00 	mov    %r14,0x450(%rsp)
  40aa60:	00 
  40aa61:	48 c7 84 24 58 04 00 	movq   $0x0,0x458(%rsp)
  40aa68:	00 00 00 00 00 
  40aa6d:	c5 f8 28 05 eb 16 00 	vmovaps 0x16eb(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40aa74:	00 
  40aa75:	c5 f8 11 84 24 60 04 	vmovups %xmm0,0x460(%rsp)
  40aa7c:	00 00 
  40aa7e:	48 8d b4 24 50 04 00 	lea    0x450(%rsp),%rsi
  40aa85:	00 
  40aa86:	48 89 df             	mov    %rbx,%rdi
  40aa89:	e8 22 67 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40aa8e:	88 84 24 13 01 00 00 	mov    %al,0x113(%rsp)
  40aa95:	4c 89 b4 24 30 04 00 	mov    %r14,0x430(%rsp)
  40aa9c:	00 
  40aa9d:	48 c7 84 24 38 04 00 	movq   $0x0,0x438(%rsp)
  40aaa4:	00 00 00 00 00 
  40aaa9:	c5 f8 28 05 af 16 00 	vmovaps 0x16af(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40aab0:	00 
  40aab1:	c5 f8 11 84 24 40 04 	vmovups %xmm0,0x440(%rsp)
  40aab8:	00 00 
  40aaba:	48 8d 94 24 30 04 00 	lea    0x430(%rsp),%rdx
  40aac1:	00 
  40aac2:	44 89 ff             	mov    %r15d,%edi
  40aac5:	48 89 de             	mov    %rbx,%rsi
  40aac8:	e8 83 6c ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40aacd:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
  40aad2:	44 0f b6 bc 24 14 01 	movzbl 0x114(%rsp),%r15d
  40aad9:	00 00 
  40aadb:	44 89 e1             	mov    %r12d,%ecx
  40aade:	48 01 c1             	add    %rax,%rcx
  40aae1:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40aae5:	44 89 e0             	mov    %r12d,%eax
  40aae8:	83 e0 1f             	and    $0x1f,%eax
  40aaeb:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40aaef:	48 83 c3 20          	add    $0x20,%rbx
  40aaf3:	4c 89 b4 24 10 04 00 	mov    %r14,0x410(%rsp)
  40aafa:	00 
  40aafb:	48 c7 84 24 18 04 00 	movq   $0x0,0x418(%rsp)
  40ab02:	00 00 00 00 00 
  40ab07:	c5 f8 28 05 51 16 00 	vmovaps 0x1651(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ab0e:	00 
  40ab0f:	c5 f8 11 84 24 20 04 	vmovups %xmm0,0x420(%rsp)
  40ab16:	00 00 
  40ab18:	48 8d b4 24 10 04 00 	lea    0x410(%rsp),%rsi
  40ab1f:	00 
  40ab20:	48 89 df             	mov    %rbx,%rdi
  40ab23:	e8 88 66 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40ab28:	88 84 24 14 01 00 00 	mov    %al,0x114(%rsp)
  40ab2f:	4c 89 b4 24 f0 03 00 	mov    %r14,0x3f0(%rsp)
  40ab36:	00 
  40ab37:	48 c7 84 24 f8 03 00 	movq   $0x0,0x3f8(%rsp)
  40ab3e:	00 00 00 00 00 
  40ab43:	c5 f8 28 05 15 16 00 	vmovaps 0x1615(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ab4a:	00 
  40ab4b:	c5 f8 11 84 24 00 04 	vmovups %xmm0,0x400(%rsp)
  40ab52:	00 00 
  40ab54:	48 8d 94 24 f0 03 00 	lea    0x3f0(%rsp),%rdx
  40ab5b:	00 
  40ab5c:	44 89 ff             	mov    %r15d,%edi
  40ab5f:	48 89 de             	mov    %rbx,%rsi
  40ab62:	e8 e9 6b ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40ab67:	0f b6 44 24 15       	movzbl 0x15(%rsp),%eax
  40ab6c:	44 0f b6 bc 24 15 01 	movzbl 0x115(%rsp),%r15d
  40ab73:	00 00 
  40ab75:	44 89 e1             	mov    %r12d,%ecx
  40ab78:	48 01 c1             	add    %rax,%rcx
  40ab7b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40ab7f:	44 89 e0             	mov    %r12d,%eax
  40ab82:	83 e0 1f             	and    $0x1f,%eax
  40ab85:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40ab89:	48 83 c3 20          	add    $0x20,%rbx
  40ab8d:	4c 89 b4 24 d0 03 00 	mov    %r14,0x3d0(%rsp)
  40ab94:	00 
  40ab95:	48 c7 84 24 d8 03 00 	movq   $0x0,0x3d8(%rsp)
  40ab9c:	00 00 00 00 00 
  40aba1:	c5 f8 28 05 b7 15 00 	vmovaps 0x15b7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40aba8:	00 
  40aba9:	c5 f8 11 84 24 e0 03 	vmovups %xmm0,0x3e0(%rsp)
  40abb0:	00 00 
  40abb2:	48 8d b4 24 d0 03 00 	lea    0x3d0(%rsp),%rsi
  40abb9:	00 
  40abba:	48 89 df             	mov    %rbx,%rdi
  40abbd:	e8 ee 65 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40abc2:	88 84 24 15 01 00 00 	mov    %al,0x115(%rsp)
  40abc9:	4c 89 b4 24 b0 03 00 	mov    %r14,0x3b0(%rsp)
  40abd0:	00 
  40abd1:	48 c7 84 24 b8 03 00 	movq   $0x0,0x3b8(%rsp)
  40abd8:	00 00 00 00 00 
  40abdd:	c5 f8 28 05 7b 15 00 	vmovaps 0x157b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40abe4:	00 
  40abe5:	c5 f8 11 84 24 c0 03 	vmovups %xmm0,0x3c0(%rsp)
  40abec:	00 00 
  40abee:	48 8d 94 24 b0 03 00 	lea    0x3b0(%rsp),%rdx
  40abf5:	00 
  40abf6:	44 89 ff             	mov    %r15d,%edi
  40abf9:	48 89 de             	mov    %rbx,%rsi
  40abfc:	e8 4f 6b ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40ac01:	0f b6 44 24 16       	movzbl 0x16(%rsp),%eax
  40ac06:	44 0f b6 bc 24 16 01 	movzbl 0x116(%rsp),%r15d
  40ac0d:	00 00 
  40ac0f:	44 89 e1             	mov    %r12d,%ecx
  40ac12:	48 01 c1             	add    %rax,%rcx
  40ac15:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40ac19:	44 89 e0             	mov    %r12d,%eax
  40ac1c:	83 e0 1f             	and    $0x1f,%eax
  40ac1f:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40ac23:	48 83 c3 20          	add    $0x20,%rbx
  40ac27:	4c 89 b4 24 90 03 00 	mov    %r14,0x390(%rsp)
  40ac2e:	00 
  40ac2f:	48 c7 84 24 98 03 00 	movq   $0x0,0x398(%rsp)
  40ac36:	00 00 00 00 00 
  40ac3b:	c5 f8 28 05 1d 15 00 	vmovaps 0x151d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ac42:	00 
  40ac43:	c5 f8 11 84 24 a0 03 	vmovups %xmm0,0x3a0(%rsp)
  40ac4a:	00 00 
  40ac4c:	48 8d b4 24 90 03 00 	lea    0x390(%rsp),%rsi
  40ac53:	00 
  40ac54:	48 89 df             	mov    %rbx,%rdi
  40ac57:	e8 54 65 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40ac5c:	88 84 24 16 01 00 00 	mov    %al,0x116(%rsp)
  40ac63:	4c 89 b4 24 70 03 00 	mov    %r14,0x370(%rsp)
  40ac6a:	00 
  40ac6b:	48 c7 84 24 78 03 00 	movq   $0x0,0x378(%rsp)
  40ac72:	00 00 00 00 00 
  40ac77:	c5 f8 28 05 e1 14 00 	vmovaps 0x14e1(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ac7e:	00 
  40ac7f:	c5 f8 11 84 24 80 03 	vmovups %xmm0,0x380(%rsp)
  40ac86:	00 00 
  40ac88:	48 8d 94 24 70 03 00 	lea    0x370(%rsp),%rdx
  40ac8f:	00 
  40ac90:	44 89 ff             	mov    %r15d,%edi
  40ac93:	48 89 de             	mov    %rbx,%rsi
  40ac96:	e8 b5 6a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40ac9b:	0f b6 44 24 17       	movzbl 0x17(%rsp),%eax
  40aca0:	44 0f b6 bc 24 17 01 	movzbl 0x117(%rsp),%r15d
  40aca7:	00 00 
  40aca9:	44 89 e1             	mov    %r12d,%ecx
  40acac:	48 01 c1             	add    %rax,%rcx
  40acaf:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40acb3:	44 89 e0             	mov    %r12d,%eax
  40acb6:	83 e0 1f             	and    $0x1f,%eax
  40acb9:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40acbd:	48 83 c3 20          	add    $0x20,%rbx
  40acc1:	4c 89 b4 24 50 03 00 	mov    %r14,0x350(%rsp)
  40acc8:	00 
  40acc9:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  40acd0:	00 00 00 00 00 
  40acd5:	c5 f8 28 05 83 14 00 	vmovaps 0x1483(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40acdc:	00 
  40acdd:	c5 f8 11 84 24 60 03 	vmovups %xmm0,0x360(%rsp)
  40ace4:	00 00 
  40ace6:	48 8d b4 24 50 03 00 	lea    0x350(%rsp),%rsi
  40aced:	00 
  40acee:	48 89 df             	mov    %rbx,%rdi
  40acf1:	e8 ba 64 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40acf6:	88 84 24 17 01 00 00 	mov    %al,0x117(%rsp)
  40acfd:	4c 89 b4 24 30 03 00 	mov    %r14,0x330(%rsp)
  40ad04:	00 
  40ad05:	48 c7 84 24 38 03 00 	movq   $0x0,0x338(%rsp)
  40ad0c:	00 00 00 00 00 
  40ad11:	c5 f8 28 05 47 14 00 	vmovaps 0x1447(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ad18:	00 
  40ad19:	c5 f8 11 84 24 40 03 	vmovups %xmm0,0x340(%rsp)
  40ad20:	00 00 
  40ad22:	48 8d 94 24 30 03 00 	lea    0x330(%rsp),%rdx
  40ad29:	00 
  40ad2a:	44 89 ff             	mov    %r15d,%edi
  40ad2d:	48 89 de             	mov    %rbx,%rsi
  40ad30:	e8 1b 6a ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40ad35:	0f b6 44 24 18       	movzbl 0x18(%rsp),%eax
  40ad3a:	44 0f b6 bc 24 18 01 	movzbl 0x118(%rsp),%r15d
  40ad41:	00 00 
  40ad43:	44 89 e1             	mov    %r12d,%ecx
  40ad46:	48 01 c1             	add    %rax,%rcx
  40ad49:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40ad4d:	44 89 e0             	mov    %r12d,%eax
  40ad50:	83 e0 1f             	and    $0x1f,%eax
  40ad53:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40ad57:	48 83 c3 20          	add    $0x20,%rbx
  40ad5b:	4c 89 b4 24 10 03 00 	mov    %r14,0x310(%rsp)
  40ad62:	00 
  40ad63:	48 c7 84 24 18 03 00 	movq   $0x0,0x318(%rsp)
  40ad6a:	00 00 00 00 00 
  40ad6f:	c5 f8 28 05 e9 13 00 	vmovaps 0x13e9(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ad76:	00 
  40ad77:	c5 f8 11 84 24 20 03 	vmovups %xmm0,0x320(%rsp)
  40ad7e:	00 00 
  40ad80:	48 8d b4 24 10 03 00 	lea    0x310(%rsp),%rsi
  40ad87:	00 
  40ad88:	48 89 df             	mov    %rbx,%rdi
  40ad8b:	e8 20 64 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40ad90:	88 84 24 18 01 00 00 	mov    %al,0x118(%rsp)
  40ad97:	4c 89 b4 24 f0 02 00 	mov    %r14,0x2f0(%rsp)
  40ad9e:	00 
  40ad9f:	48 c7 84 24 f8 02 00 	movq   $0x0,0x2f8(%rsp)
  40ada6:	00 00 00 00 00 
  40adab:	c5 f8 28 05 ad 13 00 	vmovaps 0x13ad(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40adb2:	00 
  40adb3:	c5 f8 11 84 24 00 03 	vmovups %xmm0,0x300(%rsp)
  40adba:	00 00 
  40adbc:	48 8d 94 24 f0 02 00 	lea    0x2f0(%rsp),%rdx
  40adc3:	00 
  40adc4:	44 89 ff             	mov    %r15d,%edi
  40adc7:	48 89 de             	mov    %rbx,%rsi
  40adca:	e8 81 69 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40adcf:	0f b6 44 24 19       	movzbl 0x19(%rsp),%eax
  40add4:	44 0f b6 bc 24 19 01 	movzbl 0x119(%rsp),%r15d
  40addb:	00 00 
  40addd:	44 89 e1             	mov    %r12d,%ecx
  40ade0:	48 01 c1             	add    %rax,%rcx
  40ade3:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40ade7:	44 89 e0             	mov    %r12d,%eax
  40adea:	83 e0 1f             	and    $0x1f,%eax
  40aded:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40adf1:	48 83 c3 20          	add    $0x20,%rbx
  40adf5:	4c 89 b4 24 d0 02 00 	mov    %r14,0x2d0(%rsp)
  40adfc:	00 
  40adfd:	48 c7 84 24 d8 02 00 	movq   $0x0,0x2d8(%rsp)
  40ae04:	00 00 00 00 00 
  40ae09:	c5 f8 28 05 4f 13 00 	vmovaps 0x134f(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ae10:	00 
  40ae11:	c5 f8 11 84 24 e0 02 	vmovups %xmm0,0x2e0(%rsp)
  40ae18:	00 00 
  40ae1a:	48 8d b4 24 d0 02 00 	lea    0x2d0(%rsp),%rsi
  40ae21:	00 
  40ae22:	48 89 df             	mov    %rbx,%rdi
  40ae25:	e8 86 63 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40ae2a:	88 84 24 19 01 00 00 	mov    %al,0x119(%rsp)
  40ae31:	4c 89 b4 24 b0 02 00 	mov    %r14,0x2b0(%rsp)
  40ae38:	00 
  40ae39:	48 c7 84 24 b8 02 00 	movq   $0x0,0x2b8(%rsp)
  40ae40:	00 00 00 00 00 
  40ae45:	c5 f8 28 05 13 13 00 	vmovaps 0x1313(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40ae4c:	00 
  40ae4d:	c5 f8 11 84 24 c0 02 	vmovups %xmm0,0x2c0(%rsp)
  40ae54:	00 00 
  40ae56:	48 8d 94 24 b0 02 00 	lea    0x2b0(%rsp),%rdx
  40ae5d:	00 
  40ae5e:	44 89 ff             	mov    %r15d,%edi
  40ae61:	48 89 de             	mov    %rbx,%rsi
  40ae64:	e8 e7 68 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40ae69:	0f b6 44 24 1a       	movzbl 0x1a(%rsp),%eax
  40ae6e:	44 0f b6 bc 24 1a 01 	movzbl 0x11a(%rsp),%r15d
  40ae75:	00 00 
  40ae77:	44 89 e1             	mov    %r12d,%ecx
  40ae7a:	48 01 c1             	add    %rax,%rcx
  40ae7d:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40ae81:	44 89 e0             	mov    %r12d,%eax
  40ae84:	83 e0 1f             	and    $0x1f,%eax
  40ae87:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40ae8b:	48 83 c3 20          	add    $0x20,%rbx
  40ae8f:	4c 89 b4 24 90 02 00 	mov    %r14,0x290(%rsp)
  40ae96:	00 
  40ae97:	48 c7 84 24 98 02 00 	movq   $0x0,0x298(%rsp)
  40ae9e:	00 00 00 00 00 
  40aea3:	c5 f8 28 05 b5 12 00 	vmovaps 0x12b5(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40aeaa:	00 
  40aeab:	c5 f8 11 84 24 a0 02 	vmovups %xmm0,0x2a0(%rsp)
  40aeb2:	00 00 
  40aeb4:	48 8d b4 24 90 02 00 	lea    0x290(%rsp),%rsi
  40aebb:	00 
  40aebc:	48 89 df             	mov    %rbx,%rdi
  40aebf:	e8 ec 62 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40aec4:	88 84 24 1a 01 00 00 	mov    %al,0x11a(%rsp)
  40aecb:	4c 89 b4 24 70 02 00 	mov    %r14,0x270(%rsp)
  40aed2:	00 
  40aed3:	48 c7 84 24 78 02 00 	movq   $0x0,0x278(%rsp)
  40aeda:	00 00 00 00 00 
  40aedf:	c5 f8 28 05 79 12 00 	vmovaps 0x1279(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40aee6:	00 
  40aee7:	c5 f8 11 84 24 80 02 	vmovups %xmm0,0x280(%rsp)
  40aeee:	00 00 
  40aef0:	48 8d 94 24 70 02 00 	lea    0x270(%rsp),%rdx
  40aef7:	00 
  40aef8:	44 89 ff             	mov    %r15d,%edi
  40aefb:	48 89 de             	mov    %rbx,%rsi
  40aefe:	e8 4d 68 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40af03:	0f b6 44 24 1b       	movzbl 0x1b(%rsp),%eax
  40af08:	44 0f b6 bc 24 1b 01 	movzbl 0x11b(%rsp),%r15d
  40af0f:	00 00 
  40af11:	44 89 e1             	mov    %r12d,%ecx
  40af14:	48 01 c1             	add    %rax,%rcx
  40af17:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40af1b:	44 89 e0             	mov    %r12d,%eax
  40af1e:	83 e0 1f             	and    $0x1f,%eax
  40af21:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40af25:	48 83 c3 20          	add    $0x20,%rbx
  40af29:	4c 89 b4 24 50 02 00 	mov    %r14,0x250(%rsp)
  40af30:	00 
  40af31:	48 c7 84 24 58 02 00 	movq   $0x0,0x258(%rsp)
  40af38:	00 00 00 00 00 
  40af3d:	c5 f8 28 05 1b 12 00 	vmovaps 0x121b(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40af44:	00 
  40af45:	c5 f8 11 84 24 60 02 	vmovups %xmm0,0x260(%rsp)
  40af4c:	00 00 
  40af4e:	48 8d b4 24 50 02 00 	lea    0x250(%rsp),%rsi
  40af55:	00 
  40af56:	48 89 df             	mov    %rbx,%rdi
  40af59:	e8 52 62 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40af5e:	88 84 24 1b 01 00 00 	mov    %al,0x11b(%rsp)
  40af65:	4c 89 b4 24 30 02 00 	mov    %r14,0x230(%rsp)
  40af6c:	00 
  40af6d:	48 c7 84 24 38 02 00 	movq   $0x0,0x238(%rsp)
  40af74:	00 00 00 00 00 
  40af79:	c5 f8 28 05 df 11 00 	vmovaps 0x11df(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40af80:	00 
  40af81:	c5 f8 11 84 24 40 02 	vmovups %xmm0,0x240(%rsp)
  40af88:	00 00 
  40af8a:	48 8d 94 24 30 02 00 	lea    0x230(%rsp),%rdx
  40af91:	00 
  40af92:	44 89 ff             	mov    %r15d,%edi
  40af95:	48 89 de             	mov    %rbx,%rsi
  40af98:	e8 b3 67 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40af9d:	0f b6 44 24 1c       	movzbl 0x1c(%rsp),%eax
  40afa2:	44 0f b6 bc 24 1c 01 	movzbl 0x11c(%rsp),%r15d
  40afa9:	00 00 
  40afab:	44 89 e1             	mov    %r12d,%ecx
  40afae:	48 01 c1             	add    %rax,%rcx
  40afb1:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40afb5:	44 89 e0             	mov    %r12d,%eax
  40afb8:	83 e0 1f             	and    $0x1f,%eax
  40afbb:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40afbf:	48 83 c3 20          	add    $0x20,%rbx
  40afc3:	4c 89 b4 24 10 02 00 	mov    %r14,0x210(%rsp)
  40afca:	00 
  40afcb:	48 c7 84 24 18 02 00 	movq   $0x0,0x218(%rsp)
  40afd2:	00 00 00 00 00 
  40afd7:	c5 f8 28 05 81 11 00 	vmovaps 0x1181(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40afde:	00 
  40afdf:	c5 f8 11 84 24 20 02 	vmovups %xmm0,0x220(%rsp)
  40afe6:	00 00 
  40afe8:	48 8d b4 24 10 02 00 	lea    0x210(%rsp),%rsi
  40afef:	00 
  40aff0:	48 89 df             	mov    %rbx,%rdi
  40aff3:	e8 b8 61 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40aff8:	88 84 24 1c 01 00 00 	mov    %al,0x11c(%rsp)
  40afff:	4c 89 b4 24 f0 01 00 	mov    %r14,0x1f0(%rsp)
  40b006:	00 
  40b007:	48 c7 84 24 f8 01 00 	movq   $0x0,0x1f8(%rsp)
  40b00e:	00 00 00 00 00 
  40b013:	c5 f8 28 05 45 11 00 	vmovaps 0x1145(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b01a:	00 
  40b01b:	c5 f8 11 84 24 00 02 	vmovups %xmm0,0x200(%rsp)
  40b022:	00 00 
  40b024:	48 8d 94 24 f0 01 00 	lea    0x1f0(%rsp),%rdx
  40b02b:	00 
  40b02c:	44 89 ff             	mov    %r15d,%edi
  40b02f:	48 89 de             	mov    %rbx,%rsi
  40b032:	e8 19 67 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40b037:	0f b6 44 24 1d       	movzbl 0x1d(%rsp),%eax
  40b03c:	44 0f b6 bc 24 1d 01 	movzbl 0x11d(%rsp),%r15d
  40b043:	00 00 
  40b045:	44 89 e1             	mov    %r12d,%ecx
  40b048:	48 01 c1             	add    %rax,%rcx
  40b04b:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40b04f:	44 89 e0             	mov    %r12d,%eax
  40b052:	83 e0 1f             	and    $0x1f,%eax
  40b055:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40b059:	48 83 c3 20          	add    $0x20,%rbx
  40b05d:	4c 89 b4 24 d0 01 00 	mov    %r14,0x1d0(%rsp)
  40b064:	00 
  40b065:	48 c7 84 24 d8 01 00 	movq   $0x0,0x1d8(%rsp)
  40b06c:	00 00 00 00 00 
  40b071:	c5 f8 28 05 e7 10 00 	vmovaps 0x10e7(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b078:	00 
  40b079:	c5 f8 11 84 24 e0 01 	vmovups %xmm0,0x1e0(%rsp)
  40b080:	00 00 
  40b082:	48 8d b4 24 d0 01 00 	lea    0x1d0(%rsp),%rsi
  40b089:	00 
  40b08a:	48 89 df             	mov    %rbx,%rdi
  40b08d:	e8 1e 61 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40b092:	88 84 24 1d 01 00 00 	mov    %al,0x11d(%rsp)
  40b099:	4c 89 b4 24 b0 01 00 	mov    %r14,0x1b0(%rsp)
  40b0a0:	00 
  40b0a1:	48 c7 84 24 b8 01 00 	movq   $0x0,0x1b8(%rsp)
  40b0a8:	00 00 00 00 00 
  40b0ad:	c5 f8 28 05 ab 10 00 	vmovaps 0x10ab(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b0b4:	00 
  40b0b5:	c5 f8 11 84 24 c0 01 	vmovups %xmm0,0x1c0(%rsp)
  40b0bc:	00 00 
  40b0be:	48 8d 94 24 b0 01 00 	lea    0x1b0(%rsp),%rdx
  40b0c5:	00 
  40b0c6:	44 89 ff             	mov    %r15d,%edi
  40b0c9:	48 89 de             	mov    %rbx,%rsi
  40b0cc:	e8 7f 66 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40b0d1:	0f b6 44 24 1e       	movzbl 0x1e(%rsp),%eax
  40b0d6:	44 0f b6 bc 24 1e 01 	movzbl 0x11e(%rsp),%r15d
  40b0dd:	00 00 
  40b0df:	44 89 e1             	mov    %r12d,%ecx
  40b0e2:	48 01 c1             	add    %rax,%rcx
  40b0e5:	4d 8d 24 0f          	lea    (%r15,%rcx,1),%r12
  40b0e9:	44 89 e0             	mov    %r12d,%eax
  40b0ec:	83 e0 1f             	and    $0x1f,%eax
  40b0ef:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40b0f3:	48 83 c3 20          	add    $0x20,%rbx
  40b0f7:	4c 89 b4 24 90 01 00 	mov    %r14,0x190(%rsp)
  40b0fe:	00 
  40b0ff:	48 c7 84 24 98 01 00 	movq   $0x0,0x198(%rsp)
  40b106:	00 00 00 00 00 
  40b10b:	c5 f8 28 05 4d 10 00 	vmovaps 0x104d(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b112:	00 
  40b113:	c5 f8 11 84 24 a0 01 	vmovups %xmm0,0x1a0(%rsp)
  40b11a:	00 00 
  40b11c:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40b123:	00 
  40b124:	48 89 df             	mov    %rbx,%rdi
  40b127:	e8 84 60 ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40b12c:	88 84 24 1e 01 00 00 	mov    %al,0x11e(%rsp)
  40b133:	4c 89 b4 24 70 01 00 	mov    %r14,0x170(%rsp)
  40b13a:	00 
  40b13b:	48 c7 84 24 78 01 00 	movq   $0x0,0x178(%rsp)
  40b142:	00 00 00 00 00 
  40b147:	c5 f8 28 05 11 10 00 	vmovaps 0x1011(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b14e:	00 
  40b14f:	c5 f8 11 84 24 80 01 	vmovups %xmm0,0x180(%rsp)
  40b156:	00 00 
  40b158:	48 8d 94 24 70 01 00 	lea    0x170(%rsp),%rdx
  40b15f:	00 
  40b160:	44 89 ff             	mov    %r15d,%edi
  40b163:	48 89 de             	mov    %rbx,%rsi
  40b166:	e8 e5 65 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40b16b:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  40b170:	44 0f b6 bc 24 1f 01 	movzbl 0x11f(%rsp),%r15d
  40b177:	00 00 
  40b179:	44 01 e0             	add    %r12d,%eax
  40b17c:	44 01 f8             	add    %r15d,%eax
  40b17f:	83 e0 1f             	and    $0x1f,%eax
  40b182:	48 8d 1c 04          	lea    (%rsp,%rax,1),%rbx
  40b186:	48 83 c3 20          	add    $0x20,%rbx
  40b18a:	4c 89 b4 24 50 01 00 	mov    %r14,0x150(%rsp)
  40b191:	00 
  40b192:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40b199:	00 00 00 00 00 
  40b19e:	c5 f8 28 05 ba 0f 00 	vmovaps 0xfba(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b1a5:	00 
  40b1a6:	c5 f8 11 84 24 60 01 	vmovups %xmm0,0x160(%rsp)
  40b1ad:	00 00 
  40b1af:	48 8d b4 24 50 01 00 	lea    0x150(%rsp),%rsi
  40b1b6:	00 
  40b1b7:	48 89 df             	mov    %rbx,%rdi
  40b1ba:	e8 f1 5f ff ff       	callq  4011b0 <uint64_t_secure_load_impl>
  40b1bf:	88 84 24 1f 01 00 00 	mov    %al,0x11f(%rsp)
  40b1c6:	4c 89 b4 24 30 01 00 	mov    %r14,0x130(%rsp)
  40b1cd:	00 
  40b1ce:	48 c7 84 24 38 01 00 	movq   $0x0,0x138(%rsp)
  40b1d5:	00 00 00 00 00 
  40b1da:	c5 f8 28 05 7e 0f 00 	vmovaps 0xf7e(%rip),%xmm0        # 40c160 <_IO_stdin_used+0x160>
  40b1e1:	00 
  40b1e2:	c5 f8 11 84 24 40 01 	vmovups %xmm0,0x140(%rsp)
  40b1e9:	00 00 
  40b1eb:	48 8d 94 24 30 01 00 	lea    0x130(%rsp),%rdx
  40b1f2:	00 
  40b1f3:	44 89 ff             	mov    %r15d,%edi
  40b1f6:	48 89 de             	mov    %rbx,%rsi
  40b1f9:	e8 52 65 ff ff       	callq  401750 <uint8_t_secure_store_impl>
  40b1fe:	ba 02 01 00 00       	mov    $0x102,%edx
  40b203:	bf 01 00 00 00       	mov    $0x1,%edi
  40b208:	4c 89 f6             	mov    %r14,%rsi
  40b20b:	e8 20 5e ff ff       	callq  401030 <write@plt>
  40b210:	31 c0                	xor    %eax,%eax
  40b212:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  40b216:	5b                   	pop    %rbx
  40b217:	41 5c                	pop    %r12
  40b219:	41 5e                	pop    %r14
  40b21b:	41 5f                	pop    %r15
  40b21d:	5d                   	pop    %rbp
  40b21e:	c3                   	retq   
  40b21f:	90                   	nop

000000000040b220 <__libc_csu_init>:
  40b220:	f3 0f 1e fa          	endbr64 
  40b224:	41 57                	push   %r15
  40b226:	4c 8d 3d e3 2b 00 00 	lea    0x2be3(%rip),%r15        # 40de10 <__frame_dummy_init_array_entry>
  40b22d:	41 56                	push   %r14
  40b22f:	49 89 d6             	mov    %rdx,%r14
  40b232:	41 55                	push   %r13
  40b234:	49 89 f5             	mov    %rsi,%r13
  40b237:	41 54                	push   %r12
  40b239:	41 89 fc             	mov    %edi,%r12d
  40b23c:	55                   	push   %rbp
  40b23d:	48 8d 2d d4 2b 00 00 	lea    0x2bd4(%rip),%rbp        # 40de18 <__do_global_dtors_aux_fini_array_entry>
  40b244:	53                   	push   %rbx
  40b245:	4c 29 fd             	sub    %r15,%rbp
  40b248:	48 83 ec 08          	sub    $0x8,%rsp
  40b24c:	e8 af 5d ff ff       	callq  401000 <_init>
  40b251:	48 c1 fd 03          	sar    $0x3,%rbp
  40b255:	74 1f                	je     40b276 <__libc_csu_init+0x56>
  40b257:	31 db                	xor    %ebx,%ebx
  40b259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40b260:	4c 89 f2             	mov    %r14,%rdx
  40b263:	4c 89 ee             	mov    %r13,%rsi
  40b266:	44 89 e7             	mov    %r12d,%edi
  40b269:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40b26d:	48 83 c3 01          	add    $0x1,%rbx
  40b271:	48 39 dd             	cmp    %rbx,%rbp
  40b274:	75 ea                	jne    40b260 <__libc_csu_init+0x40>
  40b276:	48 83 c4 08          	add    $0x8,%rsp
  40b27a:	5b                   	pop    %rbx
  40b27b:	5d                   	pop    %rbp
  40b27c:	41 5c                	pop    %r12
  40b27e:	41 5d                	pop    %r13
  40b280:	41 5e                	pop    %r14
  40b282:	41 5f                	pop    %r15
  40b284:	c3                   	retq   
  40b285:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40b28c:	00 00 00 00 

000000000040b290 <__libc_csu_fini>:
  40b290:	f3 0f 1e fa          	endbr64 
  40b294:	c3                   	retq   

Disassembly of section .fini:

000000000040b298 <_fini>:
  40b298:	f3 0f 1e fa          	endbr64 
  40b29c:	48 83 ec 08          	sub    $0x8,%rsp
  40b2a0:	48 83 c4 08          	add    $0x8,%rsp
  40b2a4:	c3                   	retq   

Disassembly of section .rodata:

000000000040c000 <_IO_stdin_used>:
  40c000:	01 00                	add    %eax,(%rax)
  40c002:	02 00                	add    (%rax),%al
	...
  40c028:	08 00                	or     %al,(%rax)
  40c02a:	00 00                	add    %al,(%rax)
  40c02c:	00 00                	add    %al,(%rax)
  40c02e:	00 00                	add    %al,(%rax)
  40c030:	10 00                	adc    %al,(%rax)
  40c032:	00 00                	add    %al,(%rax)
  40c034:	00 00                	add    %al,(%rax)
  40c036:	00 00                	add    %al,(%rax)
  40c038:	18 00                	sbb    %al,(%rax)
  40c03a:	00 00                	add    %al,(%rax)
  40c03c:	00 00                	add    %al,(%rax)
  40c03e:	00 00                	add    %al,(%rax)
  40c040:	00 01                	add    %al,(%rcx)
  40c042:	02 03                	add    (%rbx),%al
  40c044:	04 05                	add    $0x5,%al
  40c046:	06                   	(bad)  
  40c047:	07                   	(bad)  
  40c048:	08 09                	or     %cl,(%rcx)
  40c04a:	0a 0b                	or     (%rbx),%cl
  40c04c:	0c 0d                	or     $0xd,%al
  40c04e:	0e                   	(bad)  
  40c04f:	0f 10 11             	movups (%rcx),%xmm2
  40c052:	12 13                	adc    (%rbx),%dl
  40c054:	14 15                	adc    $0x15,%al
  40c056:	16                   	(bad)  
  40c057:	17                   	(bad)  
  40c058:	18 19                	sbb    %bl,(%rcx)
  40c05a:	1a 1b                	sbb    (%rbx),%bl
  40c05c:	1c 1d                	sbb    $0x1d,%al
  40c05e:	1e                   	(bad)  
  40c05f:	1f                   	(bad)  
  40c060:	20 21                	and    %ah,(%rcx)
  40c062:	22 23                	and    (%rbx),%ah
  40c064:	24 25                	and    $0x25,%al
  40c066:	26 27                	es (bad) 
  40c068:	28 29                	sub    %ch,(%rcx)
  40c06a:	2a 2b                	sub    (%rbx),%ch
  40c06c:	2c 2d                	sub    $0x2d,%al
  40c06e:	2e 2f                	cs (bad) 
  40c070:	30 31                	xor    %dh,(%rcx)
  40c072:	32 33                	xor    (%rbx),%dh
  40c074:	34 35                	xor    $0x35,%al
  40c076:	36 37                	ss (bad) 
  40c078:	38 39                	cmp    %bh,(%rcx)
  40c07a:	3a 3b                	cmp    (%rbx),%bh
  40c07c:	3c 3d                	cmp    $0x3d,%al
  40c07e:	3e 3f                	ds (bad) 
  40c080:	40                   	rex
  40c081:	41                   	rex.B
  40c082:	42                   	rex.X
  40c083:	43                   	rex.XB
  40c084:	44                   	rex.R
  40c085:	45                   	rex.RB
  40c086:	46                   	rex.RX
  40c087:	47                   	rex.RXB
  40c088:	48                   	rex.W
  40c089:	49                   	rex.WB
  40c08a:	4a                   	rex.WX
  40c08b:	4b                   	rex.WXB
  40c08c:	4c                   	rex.WR
  40c08d:	4d                   	rex.WRB
  40c08e:	4e                   	rex.WRX
  40c08f:	4f 50                	rex.WRXB push %r8
  40c091:	51                   	push   %rcx
  40c092:	52                   	push   %rdx
  40c093:	53                   	push   %rbx
  40c094:	54                   	push   %rsp
  40c095:	55                   	push   %rbp
  40c096:	56                   	push   %rsi
  40c097:	57                   	push   %rdi
  40c098:	58                   	pop    %rax
  40c099:	59                   	pop    %rcx
  40c09a:	5a                   	pop    %rdx
  40c09b:	5b                   	pop    %rbx
  40c09c:	5c                   	pop    %rsp
  40c09d:	5d                   	pop    %rbp
  40c09e:	5e                   	pop    %rsi
  40c09f:	5f                   	pop    %rdi
  40c0a0:	60                   	(bad)  
  40c0a1:	61                   	(bad)  
  40c0a2:	62 63 64 65 66       	(bad)
  40c0a7:	67 68 69 6a 6b 6c    	addr32 pushq $0x6c6b6a69
  40c0ad:	6d                   	insl   (%dx),%es:(%rdi)
  40c0ae:	6e                   	outsb  %ds:(%rsi),(%dx)
  40c0af:	6f                   	outsl  %ds:(%rsi),(%dx)
  40c0b0:	70 71                	jo     40c123 <_IO_stdin_used+0x123>
  40c0b2:	72 73                	jb     40c127 <_IO_stdin_used+0x127>
  40c0b4:	74 75                	je     40c12b <_IO_stdin_used+0x12b>
  40c0b6:	76 77                	jbe    40c12f <_IO_stdin_used+0x12f>
  40c0b8:	78 79                	js     40c133 <_IO_stdin_used+0x133>
  40c0ba:	7a 7b                	jp     40c137 <_IO_stdin_used+0x137>
  40c0bc:	7c 7d                	jl     40c13b <_IO_stdin_used+0x13b>
  40c0be:	7e 7f                	jle    40c13f <_IO_stdin_used+0x13f>
  40c0c0:	80 81 82 83 84 85 86 	addb   $0x86,-0x7a7b7c7e(%rcx)
  40c0c7:	87 88 89 8a 8b 8c    	xchg   %ecx,-0x73747577(%rax)
  40c0cd:	8d 8e 8f 90 91 92    	lea    -0x6d6e6f71(%rsi),%ecx
  40c0d3:	93                   	xchg   %eax,%ebx
  40c0d4:	94                   	xchg   %eax,%esp
  40c0d5:	95                   	xchg   %eax,%ebp
  40c0d6:	96                   	xchg   %eax,%esi
  40c0d7:	97                   	xchg   %eax,%edi
  40c0d8:	98                   	cwtl   
  40c0d9:	99                   	cltd   
  40c0da:	9a                   	(bad)  
  40c0db:	9b                   	fwait
  40c0dc:	9c                   	pushfq 
  40c0dd:	9d                   	popfq  
  40c0de:	9e                   	sahf   
  40c0df:	9f                   	lahf   
  40c0e0:	a0 a1 a2 a3 a4 a5 a6 	movabs 0xa8a7a6a5a4a3a2a1,%al
  40c0e7:	a7 a8 
  40c0e9:	a9 aa ab ac ad       	test   $0xadacabaa,%eax
  40c0ee:	ae                   	scas   %es:(%rdi),%al
  40c0ef:	af                   	scas   %es:(%rdi),%eax
  40c0f0:	b0 b1                	mov    $0xb1,%al
  40c0f2:	b2 b3                	mov    $0xb3,%dl
  40c0f4:	b4 b5                	mov    $0xb5,%ah
  40c0f6:	b6 b7                	mov    $0xb7,%dh
  40c0f8:	b8 b9 ba bb bc       	mov    $0xbcbbbab9,%eax
  40c0fd:	bd be bf c0 c1       	mov    $0xc1c0bfbe,%ebp
  40c102:	c2 c3 c4             	retq   $0xc4c3
  40c105:	c5 c6 c7             	(bad)
  40c108:	c8 c9 ca cb          	enterq $0xcac9,$0xcb
  40c10c:	cc                   	int3   
  40c10d:	cd ce                	int    $0xce
  40c10f:	cf                   	iret   
  40c110:	d0 d1                	rcl    %cl
  40c112:	d2 d3                	rcl    %cl,%bl
  40c114:	d4                   	(bad)  
  40c115:	d5                   	(bad)  
  40c116:	d6                   	(bad)  
  40c117:	d7                   	xlat   %ds:(%rbx)
  40c118:	d8 d9                	fcomp  %st(1)
  40c11a:	da db                	fcmovu %st(3),%st
  40c11c:	dc dd                	(bad)  
  40c11e:	de df                	(bad)  
  40c120:	e0 e1                	loopne 40c103 <_IO_stdin_used+0x103>
  40c122:	e2 e3                	loop   40c107 <_IO_stdin_used+0x107>
  40c124:	e4 e5                	in     $0xe5,%al
  40c126:	e6 e7                	out    %al,$0xe7
  40c128:	e8 e9 ea eb ec       	callq  ffffffffed2cac16 <_end+0xffffffffecebcbd6>
  40c12d:	ed                   	in     (%dx),%eax
  40c12e:	ee                   	out    %al,(%dx)
  40c12f:	ef                   	out    %eax,(%dx)
  40c130:	f0 f1                	lock icebp 
  40c132:	f2 f3 f4             	repnz repz hlt 
  40c135:	f5                   	cmc    
  40c136:	f6 f7                	div    %bh
  40c138:	f8                   	clc    
  40c139:	f9                   	stc    
  40c13a:	fa                   	cli    
  40c13b:	fb                   	sti    
  40c13c:	fc                   	cld    
  40c13d:	fd                   	std    
  40c13e:	fe                   	(bad)  
  40c13f:	ff 20                	jmpq   *(%rax)
  40c141:	00 00                	add    %al,(%rax)
  40c143:	00 00                	add    %al,(%rax)
  40c145:	00 00                	add    %al,(%rax)
  40c147:	00 40 00             	add    %al,0x0(%rax)
  40c14a:	00 00                	add    %al,(%rax)
  40c14c:	00 00                	add    %al,(%rax)
  40c14e:	00 00                	add    %al,(%rax)
  40c150:	60                   	(bad)  
  40c151:	00 00                	add    %al,(%rax)
  40c153:	00 00                	add    %al,(%rax)
  40c155:	00 00                	add    %al,(%rax)
  40c157:	00 80 00 00 00 00    	add    %al,0x0(%rax)
  40c15d:	00 00                	add    %al,(%rax)
  40c15f:	00 20                	add    %ah,(%rax)
	...
  40c169:	00 00                	add    %al,(%rax)
  40c16b:	00 1f                	add    %bl,(%rdi)
  40c16d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame_hdr:

000000000040c170 <__GNU_EH_FRAME_HDR>:
  40c170:	01 1b                	add    %ebx,(%rbx)
  40c172:	03 3b                	add    (%rbx),%edi
  40c174:	8c 01                	mov    %es,(%rcx)
  40c176:	00 00                	add    %al,(%rax)
  40c178:	30 00                	xor    %al,(%rax)
  40c17a:	00 00                	add    %al,(%rax)
  40c17c:	b0 4e                	mov    $0x4e,%al
  40c17e:	ff                   	(bad)  
  40c17f:	ff d0                	callq  *%rax
  40c181:	01 00                	add    %eax,(%rax)
  40c183:	00 e0                	add    %ah,%al
  40c185:	4e ff                	rex.WRX (bad) 
  40c187:	ff a8 01 00 00 10    	ljmp   *0x10000001(%rax)
  40c18d:	4f ff                	rex.WRXB (bad) 
  40c18f:	ff                   	(bad)  
  40c190:	bc 01 00 00 d0       	mov    $0xd0000001,%esp
  40c195:	4f ff                	rex.WRXB (bad) 
  40c197:	ff                   	(bad)  
  40c198:	f8                   	clc    
  40c199:	01 00                	add    %eax,(%rax)
  40c19b:	00 f0                	add    %dh,%al
  40c19d:	4f ff                	rex.WRXB (bad) 
  40c19f:	ff 0c 02             	decl   (%rdx,%rax,1)
  40c1a2:	00 00                	add    %al,(%rax)
  40c1a4:	20 50 ff             	and    %dl,-0x1(%rax)
  40c1a7:	ff 20                	jmpq   *(%rax)
  40c1a9:	02 00                	add    (%rax),%al
  40c1ab:	00 40 50             	add    %al,0x50(%rax)
  40c1ae:	ff                   	(bad)  
  40c1af:	ff 34 02             	pushq  (%rdx,%rax,1)
  40c1b2:	00 00                	add    %al,(%rax)
  40c1b4:	f0 50                	lock push %rax
  40c1b6:	ff                   	(bad)  
  40c1b7:	ff 48 02             	decl   0x2(%rax)
  40c1ba:	00 00                	add    %al,(%rax)
  40c1bc:	f0 52                	lock push %rdx
  40c1be:	ff                   	(bad)  
  40c1bf:	ff 6c 02 00          	ljmp   *0x0(%rdx,%rax,1)
  40c1c3:	00 00                	add    %al,(%rax)
  40c1c5:	53                   	push   %rbx
  40c1c6:	ff                   	(bad)  
  40c1c7:	ff 80 02 00 00 10    	incl   0x10000002(%rax)
  40c1cd:	53                   	push   %rbx
  40c1ce:	ff                   	(bad)  
  40c1cf:	ff 94 02 00 00 20 53 	callq  *0x53200000(%rdx,%rax,1)
  40c1d6:	ff                   	(bad)  
  40c1d7:	ff ac 02 00 00 30 53 	ljmp   *0x53300000(%rdx,%rax,1)
  40c1de:	ff                   	(bad)  
  40c1df:	ff c4                	inc    %esp
  40c1e1:	02 00                	add    (%rax),%al
  40c1e3:	00 40 53             	add    %al,0x53(%rax)
  40c1e6:	ff                   	(bad)  
  40c1e7:	ff                   	(bad)  
  40c1e8:	d8 02                	fadds  (%rdx)
  40c1ea:	00 00                	add    %al,(%rax)
  40c1ec:	50                   	push   %rax
  40c1ed:	53                   	push   %rbx
  40c1ee:	ff                   	(bad)  
  40c1ef:	ff                   	(bad)  
  40c1f0:	ec                   	in     (%dx),%al
  40c1f1:	02 00                	add    (%rax),%al
  40c1f3:	00 60 53             	add    %ah,0x53(%rax)
  40c1f6:	ff                   	(bad)  
  40c1f7:	ff 04 03             	incl   (%rbx,%rax,1)
  40c1fa:	00 00                	add    %al,(%rax)
  40c1fc:	70 53                	jo     40c251 <__GNU_EH_FRAME_HDR+0xe1>
  40c1fe:	ff                   	(bad)  
  40c1ff:	ff 1c 03             	lcall  *(%rbx,%rax,1)
  40c202:	00 00                	add    %al,(%rax)
  40c204:	80 53 ff ff          	adcb   $0xff,-0x1(%rbx)
  40c208:	30 03                	xor    %al,(%rbx)
  40c20a:	00 00                	add    %al,(%rax)
  40c20c:	90                   	nop
  40c20d:	53                   	push   %rbx
  40c20e:	ff                   	(bad)  
  40c20f:	ff 44 03 00          	incl   0x0(%rbx,%rax,1)
  40c213:	00 a0 53 ff ff 58    	add    %ah,0x58ffff53(%rax)
  40c219:	03 00                	add    (%rax),%eax
  40c21b:	00 b0 53 ff ff 6c    	add    %dh,0x6cffff53(%rax)
  40c221:	03 00                	add    (%rax),%eax
  40c223:	00 c0                	add    %al,%al
  40c225:	53                   	push   %rbx
  40c226:	ff                   	(bad)  
  40c227:	ff 80 03 00 00 d0    	incl   -0x2ffffffd(%rax)
  40c22d:	53                   	push   %rbx
  40c22e:	ff                   	(bad)  
  40c22f:	ff 94 03 00 00 e0 53 	callq  *0x53e00000(%rbx,%rax,1)
  40c236:	ff                   	(bad)  
  40c237:	ff a8 03 00 00 f0    	ljmp   *-0xffffffd(%rax)
  40c23d:	53                   	push   %rbx
  40c23e:	ff                   	(bad)  
  40c23f:	ff                   	(bad)  
  40c240:	bc 03 00 00 90       	mov    $0x90000003,%esp
  40c245:	54                   	push   %rsp
  40c246:	ff                   	(bad)  
  40c247:	ff d0                	callq  *%rax
  40c249:	03 00                	add    (%rax),%eax
  40c24b:	00 30                	add    %dh,(%rax)
  40c24d:	55                   	push   %rbp
  40c24e:	ff                   	(bad)  
  40c24f:	ff e4                	jmpq   *%rsp
  40c251:	03 00                	add    (%rax),%eax
  40c253:	00 e0                	add    %ah,%al
  40c255:	55                   	push   %rbp
  40c256:	ff                   	(bad)  
  40c257:	ff                   	(bad)  
  40c258:	f8                   	clc    
  40c259:	03 00                	add    (%rax),%eax
  40c25b:	00 90 56 ff ff 0c    	add    %dl,0xcffff56(%rax)
  40c261:	04 00                	add    $0x0,%al
  40c263:	00 a0 56 ff ff 20    	add    %ah,0x20ffff56(%rax)
  40c269:	04 00                	add    $0x0,%al
  40c26b:	00 b0 56 ff ff 34    	add    %dh,0x34ffff56(%rax)
  40c271:	04 00                	add    $0x0,%al
  40c273:	00 c0                	add    %al,%al
  40c275:	56                   	push   %rsi
  40c276:	ff                   	(bad)  
  40c277:	ff 48 04             	decl   0x4(%rax)
  40c27a:	00 00                	add    %al,(%rax)
  40c27c:	d0 56 ff             	rclb   -0x1(%rsi)
  40c27f:	ff 5c 04 00          	lcall  *0x0(%rsp,%rax,1)
  40c283:	00 e0                	add    %ah,%al
  40c285:	56                   	push   %rsi
  40c286:	ff                   	(bad)  
  40c287:	ff 70 04             	pushq  0x4(%rax)
  40c28a:	00 00                	add    %al,(%rax)
  40c28c:	f0 56                	lock push %rsi
  40c28e:	ff                   	(bad)  
  40c28f:	ff 84 04 00 00 00 57 	incl   0x57000000(%rsp,%rax,1)
  40c296:	ff                   	(bad)  
  40c297:	ff 98 04 00 00 10    	lcall  *0x10000004(%rax)
  40c29d:	57                   	push   %rdi
  40c29e:	ff                   	(bad)  
  40c29f:	ff ac 04 00 00 20 57 	ljmp   *0x57200000(%rsp,%rax,1)
  40c2a6:	ff                   	(bad)  
  40c2a7:	ff c0                	inc    %eax
  40c2a9:	04 00                	add    $0x0,%al
  40c2ab:	00 30                	add    %dh,(%rax)
  40c2ad:	57                   	push   %rdi
  40c2ae:	ff                   	(bad)  
  40c2af:	ff d4                	callq  *%rsp
  40c2b1:	04 00                	add    $0x0,%al
  40c2b3:	00 40 57             	add    %al,0x57(%rax)
  40c2b6:	ff                   	(bad)  
  40c2b7:	ff                   	(bad)  
  40c2b8:	e8 04 00 00 50       	callq  5040c2c1 <_end+0x4fffe281>
  40c2bd:	57                   	push   %rdi
  40c2be:	ff                   	(bad)  
  40c2bf:	ff                   	(bad)  
  40c2c0:	fc                   	cld    
  40c2c1:	04 00                	add    $0x0,%al
  40c2c3:	00 70 57             	add    %dh,0x57(%rax)
  40c2c6:	ff                   	(bad)  
  40c2c7:	ff 10                	callq  *(%rax)
  40c2c9:	05 00 00 90 57       	add    $0x57900000,%eax
  40c2ce:	ff                   	(bad)  
  40c2cf:	ff 24 05 00 00 b0 57 	jmpq   *0x57b00000(,%rax,1)
  40c2d6:	ff                   	(bad)  
  40c2d7:	ff                   	(bad)  
  40c2d8:	38 05 00 00 d0 57    	cmp    %al,0x57d00000(%rip)        # 5810c2de <_end+0x57cfe29e>
  40c2de:	ff                   	(bad)  
  40c2df:	ff 4c 05 00          	decl   0x0(%rbp,%rax,1)
  40c2e3:	00 e0                	add    %ah,%al
  40c2e5:	57                   	push   %rdi
  40c2e6:	ff                   	(bad)  
  40c2e7:	ff 60 05             	jmpq   *0x5(%rax)
  40c2ea:	00 00                	add    %al,(%rax)
  40c2ec:	b0 f0                	mov    $0xf0,%al
  40c2ee:	ff                   	(bad)  
  40c2ef:	ff 88 05 00 00 20    	decl   0x20000005(%rax)
  40c2f5:	f1                   	icebp  
  40c2f6:	ff                   	(bad)  
  40c2f7:	ff d0                	callq  *%rax
  40c2f9:	05                   	.byte 0x5
	...

Disassembly of section .eh_frame:

000000000040c300 <__FRAME_END__-0x454>:
  40c300:	14 00                	adc    $0x0,%al
  40c302:	00 00                	add    %al,(%rax)
  40c304:	00 00                	add    %al,(%rax)
  40c306:	00 00                	add    %al,(%rax)
  40c308:	01 7a 52             	add    %edi,0x52(%rdx)
  40c30b:	00 01                	add    %al,(%rcx)
  40c30d:	78 10                	js     40c31f <__GNU_EH_FRAME_HDR+0x1af>
  40c30f:	01 1b                	add    %ebx,(%rbx)
  40c311:	0c 07                	or     $0x7,%al
  40c313:	08 90 01 00 00 10    	or     %dl,0x10000001(%rax)
  40c319:	00 00                	add    %al,(%rax)
  40c31b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40c31e:	00 00                	add    %al,(%rax)
  40c320:	30 4d ff             	xor    %cl,-0x1(%rbp)
  40c323:	ff 2f                	ljmp   *(%rdi)
  40c325:	00 00                	add    %al,(%rax)
  40c327:	00 00                	add    %al,(%rax)
  40c329:	44 07                	rex.R (bad) 
  40c32b:	10 10                	adc    %dl,(%rax)
  40c32d:	00 00                	add    %al,(%rax)
  40c32f:	00 30                	add    %dh,(%rax)
  40c331:	00 00                	add    %al,(%rax)
  40c333:	00 4c 4d ff          	add    %cl,-0x1(%rbp,%rcx,2)
  40c337:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c33d <__GNU_EH_FRAME_HDR+0x1cd>
  40c33d:	00 00                	add    %al,(%rax)
  40c33f:	00 24 00             	add    %ah,(%rax,%rax,1)
  40c342:	00 00                	add    %al,(%rax)
  40c344:	44 00 00             	add    %r8b,(%rax)
  40c347:	00 d8                	add    %bl,%al
  40c349:	4c ff                	rex.WR (bad) 
  40c34b:	ff 30                	pushq  (%rax)
  40c34d:	00 00                	add    %al,(%rax)
  40c34f:	00 00                	add    %al,(%rax)
  40c351:	0e                   	(bad)  
  40c352:	10 46 0e             	adc    %al,0xe(%rsi)
  40c355:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  40c358:	0b 77 08             	or     0x8(%rdi),%esi
  40c35b:	80 00 3f             	addb   $0x3f,(%rax)
  40c35e:	1a 3b                	sbb    (%rbx),%bh
  40c360:	2a 33                	sub    (%rbx),%dh
  40c362:	24 22                	and    $0x22,%al
  40c364:	00 00                	add    %al,(%rax)
  40c366:	00 00                	add    %al,(%rax)
  40c368:	10 00                	adc    %al,(%rax)
  40c36a:	00 00                	add    %al,(%rax)
  40c36c:	6c                   	insb   (%dx),%es:(%rdi)
  40c36d:	00 00                	add    %al,(%rax)
  40c36f:	00 d0                	add    %dl,%al
  40c371:	4d ff                	rex.WRB (bad) 
  40c373:	ff 17                	callq  *(%rdi)
  40c375:	00 00                	add    %al,(%rax)
  40c377:	00 00                	add    %al,(%rax)
  40c379:	00 00                	add    %al,(%rax)
  40c37b:	00 10                	add    %dl,(%rax)
  40c37d:	00 00                	add    %al,(%rax)
  40c37f:	00 80 00 00 00 dc    	add    %al,-0x24000000(%rax)
  40c385:	4d ff                	rex.WRB (bad) 
  40c387:	ff 24 00             	jmpq   *(%rax,%rax,1)
  40c38a:	00 00                	add    %al,(%rax)
  40c38c:	00 00                	add    %al,(%rax)
  40c38e:	00 00                	add    %al,(%rax)
  40c390:	10 00                	adc    %al,(%rax)
  40c392:	00 00                	add    %al,(%rax)
  40c394:	94                   	xchg   %eax,%esp
  40c395:	00 00                	add    %al,(%rax)
  40c397:	00 f8                	add    %bh,%al
  40c399:	4d ff                	rex.WRB (bad) 
  40c39b:	ff 1c 00             	lcall  *(%rax,%rax,1)
  40c39e:	00 00                	add    %al,(%rax)
  40c3a0:	00 00                	add    %al,(%rax)
  40c3a2:	00 00                	add    %al,(%rax)
  40c3a4:	10 00                	adc    %al,(%rax)
  40c3a6:	00 00                	add    %al,(%rax)
  40c3a8:	a8 00                	test   $0x0,%al
  40c3aa:	00 00                	add    %al,(%rax)
  40c3ac:	04 4e                	add    $0x4e,%al
  40c3ae:	ff                   	(bad)  
  40c3af:	ff a8 00 00 00 00    	ljmp   *0x0(%rax)
  40c3b5:	00 00                	add    %al,(%rax)
  40c3b7:	00 20                	add    %ah,(%rax)
  40c3b9:	00 00                	add    %al,(%rax)
  40c3bb:	00 bc 00 00 00 a0 4e 	add    %bh,0x4ea00000(%rax,%rax,1)
  40c3c2:	ff                   	(bad)  
  40c3c3:	ff                   	(bad)  
  40c3c4:	fb                   	sti    
  40c3c5:	01 00                	add    %eax,(%rax)
  40c3c7:	00 00                	add    %al,(%rax)
  40c3c9:	41 0e                	rex.B (bad) 
  40c3cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  40c3d1:	49 83 03 03          	addq   $0x3,(%r11)
  40c3d5:	ea                   	(bad)  
  40c3d6:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
  40c3d9:	08 00                	or     %al,(%rax)
  40c3db:	00 10                	add    %dl,(%rax)
  40c3dd:	00 00                	add    %al,(%rax)
  40c3df:	00 e0                	add    %ah,%al
  40c3e1:	00 00                	add    %al,(%rax)
  40c3e3:	00 7c 50 ff          	add    %bh,-0x1(%rax,%rdx,2)
  40c3e7:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c3ed <__GNU_EH_FRAME_HDR+0x27d>
  40c3ed:	00 00                	add    %al,(%rax)
  40c3ef:	00 10                	add    %dl,(%rax)
  40c3f1:	00 00                	add    %al,(%rax)
  40c3f3:	00 f4                	add    %dh,%ah
  40c3f5:	00 00                	add    %al,(%rax)
  40c3f7:	00 78 50             	add    %bh,0x50(%rax)
  40c3fa:	ff                   	(bad)  
  40c3fb:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c401 <__GNU_EH_FRAME_HDR+0x291>
  40c401:	00 00                	add    %al,(%rax)
  40c403:	00 14 00             	add    %dl,(%rax,%rax,1)
  40c406:	00 00                	add    %al,(%rax)
  40c408:	08 01                	or     %al,(%rcx)
  40c40a:	00 00                	add    %al,(%rax)
  40c40c:	74 50                	je     40c45e <__GNU_EH_FRAME_HDR+0x2ee>
  40c40e:	ff                   	(bad)  
  40c40f:	ff 08                	decl   (%rax)
  40c411:	00 00                	add    %al,(%rax)
  40c413:	00 00                	add    %al,(%rax)
  40c415:	41 0e                	rex.B (bad) 
  40c417:	10 46 0e             	adc    %al,0xe(%rsi)
  40c41a:	08 00                	or     %al,(%rax)
  40c41c:	14 00                	adc    $0x0,%al
  40c41e:	00 00                	add    %al,(%rax)
  40c420:	20 01                	and    %al,(%rcx)
  40c422:	00 00                	add    %al,(%rax)
  40c424:	6c                   	insb   (%dx),%es:(%rdi)
  40c425:	50                   	push   %rax
  40c426:	ff                   	(bad)  
  40c427:	ff 08                	decl   (%rax)
  40c429:	00 00                	add    %al,(%rax)
  40c42b:	00 00                	add    %al,(%rax)
  40c42d:	41 0e                	rex.B (bad) 
  40c42f:	10 46 0e             	adc    %al,0xe(%rsi)
  40c432:	08 00                	or     %al,(%rax)
  40c434:	10 00                	adc    %al,(%rax)
  40c436:	00 00                	add    %al,(%rax)
  40c438:	38 01                	cmp    %al,(%rcx)
  40c43a:	00 00                	add    %al,(%rax)
  40c43c:	64 50                	fs push %rax
  40c43e:	ff                   	(bad)  
  40c43f:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c445 <__GNU_EH_FRAME_HDR+0x2d5>
  40c445:	00 00                	add    %al,(%rax)
  40c447:	00 10                	add    %dl,(%rax)
  40c449:	00 00                	add    %al,(%rax)
  40c44b:	00 4c 01 00          	add    %cl,0x0(%rcx,%rax,1)
  40c44f:	00 60 50             	add    %ah,0x50(%rax)
  40c452:	ff                   	(bad)  
  40c453:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c459 <__GNU_EH_FRAME_HDR+0x2e9>
  40c459:	00 00                	add    %al,(%rax)
  40c45b:	00 14 00             	add    %dl,(%rax,%rax,1)
  40c45e:	00 00                	add    %al,(%rax)
  40c460:	60                   	(bad)  
  40c461:	01 00                	add    %eax,(%rax)
  40c463:	00 5c 50 ff          	add    %bl,-0x1(%rax,%rdx,2)
  40c467:	ff 08                	decl   (%rax)
  40c469:	00 00                	add    %al,(%rax)
  40c46b:	00 00                	add    %al,(%rax)
  40c46d:	41 0e                	rex.B (bad) 
  40c46f:	10 46 0e             	adc    %al,0xe(%rsi)
  40c472:	08 00                	or     %al,(%rax)
  40c474:	14 00                	adc    $0x0,%al
  40c476:	00 00                	add    %al,(%rax)
  40c478:	78 01                	js     40c47b <__GNU_EH_FRAME_HDR+0x30b>
  40c47a:	00 00                	add    %al,(%rax)
  40c47c:	54                   	push   %rsp
  40c47d:	50                   	push   %rax
  40c47e:	ff                   	(bad)  
  40c47f:	ff 08                	decl   (%rax)
  40c481:	00 00                	add    %al,(%rax)
  40c483:	00 00                	add    %al,(%rax)
  40c485:	41 0e                	rex.B (bad) 
  40c487:	10 46 0e             	adc    %al,0xe(%rsi)
  40c48a:	08 00                	or     %al,(%rax)
  40c48c:	10 00                	adc    %al,(%rax)
  40c48e:	00 00                	add    %al,(%rax)
  40c490:	90                   	nop
  40c491:	01 00                	add    %eax,(%rax)
  40c493:	00 4c 50 ff          	add    %cl,-0x1(%rax,%rdx,2)
  40c497:	ff 04 00             	incl   (%rax,%rax,1)
  40c49a:	00 00                	add    %al,(%rax)
  40c49c:	00 00                	add    %al,(%rax)
  40c49e:	00 00                	add    %al,(%rax)
  40c4a0:	10 00                	adc    %al,(%rax)
  40c4a2:	00 00                	add    %al,(%rax)
  40c4a4:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  40c4a5:	01 00                	add    %eax,(%rax)
  40c4a7:	00 48 50             	add    %cl,0x50(%rax)
  40c4aa:	ff                   	(bad)  
  40c4ab:	ff 03                	incl   (%rbx)
  40c4ad:	00 00                	add    %al,(%rax)
  40c4af:	00 00                	add    %al,(%rax)
  40c4b1:	00 00                	add    %al,(%rax)
  40c4b3:	00 10                	add    %dl,(%rax)
  40c4b5:	00 00                	add    %al,(%rax)
  40c4b7:	00 b8 01 00 00 44    	add    %bh,0x44000001(%rax)
  40c4bd:	50                   	push   %rax
  40c4be:	ff                   	(bad)  
  40c4bf:	ff 04 00             	incl   (%rax,%rax,1)
  40c4c2:	00 00                	add    %al,(%rax)
  40c4c4:	00 00                	add    %al,(%rax)
  40c4c6:	00 00                	add    %al,(%rax)
  40c4c8:	10 00                	adc    %al,(%rax)
  40c4ca:	00 00                	add    %al,(%rax)
  40c4cc:	cc                   	int3   
  40c4cd:	01 00                	add    %eax,(%rax)
  40c4cf:	00 40 50             	add    %al,0x50(%rax)
  40c4d2:	ff                   	(bad)  
  40c4d3:	ff 03                	incl   (%rbx)
  40c4d5:	00 00                	add    %al,(%rax)
  40c4d7:	00 00                	add    %al,(%rax)
  40c4d9:	00 00                	add    %al,(%rax)
  40c4db:	00 10                	add    %dl,(%rax)
  40c4dd:	00 00                	add    %al,(%rax)
  40c4df:	00 e0                	add    %ah,%al
  40c4e1:	01 00                	add    %eax,(%rax)
  40c4e3:	00 3c 50             	add    %bh,(%rax,%rdx,2)
  40c4e6:	ff                   	(bad)  
  40c4e7:	ff 0f                	decl   (%rdi)
  40c4e9:	00 00                	add    %al,(%rax)
  40c4eb:	00 00                	add    %al,(%rax)
  40c4ed:	00 00                	add    %al,(%rax)
  40c4ef:	00 10                	add    %dl,(%rax)
  40c4f1:	00 00                	add    %al,(%rax)
  40c4f3:	00 f4                	add    %dh,%ah
  40c4f5:	01 00                	add    %eax,(%rax)
  40c4f7:	00 38                	add    %bh,(%rax)
  40c4f9:	50                   	push   %rax
  40c4fa:	ff                   	(bad)  
  40c4fb:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # 40c501 <__GNU_EH_FRAME_HDR+0x391>
  40c501:	00 00                	add    %al,(%rax)
  40c503:	00 10                	add    %dl,(%rax)
  40c505:	00 00                	add    %al,(%rax)
  40c507:	00 08                	add    %cl,(%rax)
  40c509:	02 00                	add    (%rax),%al
  40c50b:	00 34 50             	add    %dh,(%rax,%rdx,2)
  40c50e:	ff                   	(bad)  
  40c50f:	ff 0f                	decl   (%rdi)
  40c511:	00 00                	add    %al,(%rax)
  40c513:	00 00                	add    %al,(%rax)
  40c515:	00 00                	add    %al,(%rax)
  40c517:	00 10                	add    %dl,(%rax)
  40c519:	00 00                	add    %al,(%rax)
  40c51b:	00 1c 02             	add    %bl,(%rdx,%rax,1)
  40c51e:	00 00                	add    %al,(%rax)
  40c520:	30 50 ff             	xor    %dl,-0x1(%rax)
  40c523:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # 40c529 <__GNU_EH_FRAME_HDR+0x3b9>
  40c529:	00 00                	add    %al,(%rax)
  40c52b:	00 10                	add    %dl,(%rax)
  40c52d:	00 00                	add    %al,(%rax)
  40c52f:	00 30                	add    %dh,(%rax)
  40c531:	02 00                	add    (%rax),%al
  40c533:	00 2c 50             	add    %ch,(%rax,%rdx,2)
  40c536:	ff                   	(bad)  
  40c537:	ff 91 00 00 00 00    	callq  *0x0(%rcx)
  40c53d:	00 00                	add    %al,(%rax)
  40c53f:	00 10                	add    %dl,(%rax)
  40c541:	00 00                	add    %al,(%rax)
  40c543:	00 44 02 00          	add    %al,0x0(%rdx,%rax,1)
  40c547:	00 b8 50 ff ff 91    	add    %bh,-0x6e0000b0(%rax)
  40c54d:	00 00                	add    %al,(%rax)
  40c54f:	00 00                	add    %al,(%rax)
  40c551:	00 00                	add    %al,(%rax)
  40c553:	00 10                	add    %dl,(%rax)
  40c555:	00 00                	add    %al,(%rax)
  40c557:	00 58 02             	add    %bl,0x2(%rax)
  40c55a:	00 00                	add    %al,(%rax)
  40c55c:	44 51                	rex.R push %rcx
  40c55e:	ff                   	(bad)  
  40c55f:	ff a1 00 00 00 00    	jmpq   *0x0(%rcx)
  40c565:	00 00                	add    %al,(%rax)
  40c567:	00 10                	add    %dl,(%rax)
  40c569:	00 00                	add    %al,(%rax)
  40c56b:	00 6c 02 00          	add    %ch,0x0(%rdx,%rax,1)
  40c56f:	00 e0                	add    %ah,%al
  40c571:	51                   	push   %rcx
  40c572:	ff                   	(bad)  
  40c573:	ff a1 00 00 00 00    	jmpq   *0x0(%rcx)
  40c579:	00 00                	add    %al,(%rax)
  40c57b:	00 10                	add    %dl,(%rax)
  40c57d:	00 00                	add    %al,(%rax)
  40c57f:	00 80 02 00 00 7c    	add    %al,0x7c000002(%rax)
  40c585:	52                   	push   %rdx
  40c586:	ff                   	(bad)  
  40c587:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c58d <__GNU_EH_FRAME_HDR+0x41d>
  40c58d:	00 00                	add    %al,(%rax)
  40c58f:	00 10                	add    %dl,(%rax)
  40c591:	00 00                	add    %al,(%rax)
  40c593:	00 94 02 00 00 78 52 	add    %dl,0x52780000(%rdx,%rax,1)
  40c59a:	ff                   	(bad)  
  40c59b:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c5a1 <__GNU_EH_FRAME_HDR+0x431>
  40c5a1:	00 00                	add    %al,(%rax)
  40c5a3:	00 10                	add    %dl,(%rax)
  40c5a5:	00 00                	add    %al,(%rax)
  40c5a7:	00 a8 02 00 00 74    	add    %ch,0x74000002(%rax)
  40c5ad:	52                   	push   %rdx
  40c5ae:	ff                   	(bad)  
  40c5af:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c5b5 <__GNU_EH_FRAME_HDR+0x445>
  40c5b5:	00 00                	add    %al,(%rax)
  40c5b7:	00 10                	add    %dl,(%rax)
  40c5b9:	00 00                	add    %al,(%rax)
  40c5bb:	00 bc 02 00 00 70 52 	add    %bh,0x52700000(%rdx,%rax,1)
  40c5c2:	ff                   	(bad)  
  40c5c3:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c5c9 <__GNU_EH_FRAME_HDR+0x459>
  40c5c9:	00 00                	add    %al,(%rax)
  40c5cb:	00 10                	add    %dl,(%rax)
  40c5cd:	00 00                	add    %al,(%rax)
  40c5cf:	00 d0                	add    %dl,%al
  40c5d1:	02 00                	add    (%rax),%al
  40c5d3:	00 6c 52 ff          	add    %ch,-0x1(%rdx,%rdx,2)
  40c5d7:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c5dd <__GNU_EH_FRAME_HDR+0x46d>
  40c5dd:	00 00                	add    %al,(%rax)
  40c5df:	00 10                	add    %dl,(%rax)
  40c5e1:	00 00                	add    %al,(%rax)
  40c5e3:	00 e4                	add    %ah,%ah
  40c5e5:	02 00                	add    (%rax),%al
  40c5e7:	00 68 52             	add    %ch,0x52(%rax)
  40c5ea:	ff                   	(bad)  
  40c5eb:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c5f1 <__GNU_EH_FRAME_HDR+0x481>
  40c5f1:	00 00                	add    %al,(%rax)
  40c5f3:	00 10                	add    %dl,(%rax)
  40c5f5:	00 00                	add    %al,(%rax)
  40c5f7:	00 f8                	add    %bh,%al
  40c5f9:	02 00                	add    (%rax),%al
  40c5fb:	00 64 52 ff          	add    %ah,-0x1(%rdx,%rdx,2)
  40c5ff:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c605 <__GNU_EH_FRAME_HDR+0x495>
  40c605:	00 00                	add    %al,(%rax)
  40c607:	00 10                	add    %dl,(%rax)
  40c609:	00 00                	add    %al,(%rax)
  40c60b:	00 0c 03             	add    %cl,(%rbx,%rax,1)
  40c60e:	00 00                	add    %al,(%rax)
  40c610:	60                   	(bad)  
  40c611:	52                   	push   %rdx
  40c612:	ff                   	(bad)  
  40c613:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c619 <__GNU_EH_FRAME_HDR+0x4a9>
  40c619:	00 00                	add    %al,(%rax)
  40c61b:	00 10                	add    %dl,(%rax)
  40c61d:	00 00                	add    %al,(%rax)
  40c61f:	00 20                	add    %ah,(%rax)
  40c621:	03 00                	add    (%rax),%eax
  40c623:	00 5c 52 ff          	add    %bl,-0x1(%rdx,%rdx,2)
  40c627:	ff 04 00             	incl   (%rax,%rax,1)
  40c62a:	00 00                	add    %al,(%rax)
  40c62c:	00 00                	add    %al,(%rax)
  40c62e:	00 00                	add    %al,(%rax)
  40c630:	10 00                	adc    %al,(%rax)
  40c632:	00 00                	add    %al,(%rax)
  40c634:	34 03                	xor    $0x3,%al
  40c636:	00 00                	add    %al,(%rax)
  40c638:	58                   	pop    %rax
  40c639:	52                   	push   %rdx
  40c63a:	ff                   	(bad)  
  40c63b:	ff 03                	incl   (%rbx)
  40c63d:	00 00                	add    %al,(%rax)
  40c63f:	00 00                	add    %al,(%rax)
  40c641:	00 00                	add    %al,(%rax)
  40c643:	00 10                	add    %dl,(%rax)
  40c645:	00 00                	add    %al,(%rax)
  40c647:	00 48 03             	add    %cl,0x3(%rax)
  40c64a:	00 00                	add    %al,(%rax)
  40c64c:	54                   	push   %rsp
  40c64d:	52                   	push   %rdx
  40c64e:	ff                   	(bad)  
  40c64f:	ff 04 00             	incl   (%rax,%rax,1)
  40c652:	00 00                	add    %al,(%rax)
  40c654:	00 00                	add    %al,(%rax)
  40c656:	00 00                	add    %al,(%rax)
  40c658:	10 00                	adc    %al,(%rax)
  40c65a:	00 00                	add    %al,(%rax)
  40c65c:	5c                   	pop    %rsp
  40c65d:	03 00                	add    (%rax),%eax
  40c65f:	00 50 52             	add    %dl,0x52(%rax)
  40c662:	ff                   	(bad)  
  40c663:	ff 04 00             	incl   (%rax,%rax,1)
  40c666:	00 00                	add    %al,(%rax)
  40c668:	00 00                	add    %al,(%rax)
  40c66a:	00 00                	add    %al,(%rax)
  40c66c:	10 00                	adc    %al,(%rax)
  40c66e:	00 00                	add    %al,(%rax)
  40c670:	70 03                	jo     40c675 <__GNU_EH_FRAME_HDR+0x505>
  40c672:	00 00                	add    %al,(%rax)
  40c674:	4c 52                	rex.WR push %rdx
  40c676:	ff                   	(bad)  
  40c677:	ff 14 00             	callq  *(%rax,%rax,1)
  40c67a:	00 00                	add    %al,(%rax)
  40c67c:	00 00                	add    %al,(%rax)
  40c67e:	00 00                	add    %al,(%rax)
  40c680:	10 00                	adc    %al,(%rax)
  40c682:	00 00                	add    %al,(%rax)
  40c684:	84 03                	test   %al,(%rbx)
  40c686:	00 00                	add    %al,(%rax)
  40c688:	58                   	pop    %rax
  40c689:	52                   	push   %rdx
  40c68a:	ff                   	(bad)  
  40c68b:	ff 12                	callq  *(%rdx)
  40c68d:	00 00                	add    %al,(%rax)
  40c68f:	00 00                	add    %al,(%rax)
  40c691:	00 00                	add    %al,(%rax)
  40c693:	00 10                	add    %dl,(%rax)
  40c695:	00 00                	add    %al,(%rax)
  40c697:	00 98 03 00 00 64    	add    %bl,0x64000003(%rax)
  40c69d:	52                   	push   %rdx
  40c69e:	ff                   	(bad)  
  40c69f:	ff 14 00             	callq  *(%rax,%rax,1)
  40c6a2:	00 00                	add    %al,(%rax)
  40c6a4:	00 00                	add    %al,(%rax)
  40c6a6:	00 00                	add    %al,(%rax)
  40c6a8:	10 00                	adc    %al,(%rax)
  40c6aa:	00 00                	add    %al,(%rax)
  40c6ac:	ac                   	lods   %ds:(%rsi),%al
  40c6ad:	03 00                	add    (%rax),%eax
  40c6af:	00 70 52             	add    %dh,0x52(%rax)
  40c6b2:	ff                   	(bad)  
  40c6b3:	ff 14 00             	callq  *(%rax,%rax,1)
  40c6b6:	00 00                	add    %al,(%rax)
  40c6b8:	00 00                	add    %al,(%rax)
  40c6ba:	00 00                	add    %al,(%rax)
  40c6bc:	10 00                	adc    %al,(%rax)
  40c6be:	00 00                	add    %al,(%rax)
  40c6c0:	c0 03 00             	rolb   $0x0,(%rbx)
  40c6c3:	00 7c 52 ff          	add    %bh,-0x1(%rdx,%rdx,2)
  40c6c7:	ff 01                	incl   (%rcx)
  40c6c9:	00 00                	add    %al,(%rax)
  40c6cb:	00 00                	add    %al,(%rax)
  40c6cd:	00 00                	add    %al,(%rax)
  40c6cf:	00 24 00             	add    %ah,(%rax,%rax,1)
  40c6d2:	00 00                	add    %al,(%rax)
  40c6d4:	d4                   	(bad)  
  40c6d5:	03 00                	add    (%rax),%eax
  40c6d7:	00 78 52             	add    %bh,0x52(%rax)
  40c6da:	ff                   	(bad)  
  40c6db:	ff cf                	dec    %edi
  40c6dd:	98                   	cwtl   
  40c6de:	00 00                	add    %al,(%rax)
  40c6e0:	00 41 0e             	add    %al,0xe(%rcx)
  40c6e3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  40c6e9:	52                   	push   %rdx
  40c6ea:	83 06 8c             	addl   $0xffffff8c,(%rsi)
  40c6ed:	05 8e 04 8f 03       	add    $0x38f048e,%eax
  40c6f2:	03 b8 98 0c 07 08    	add    0x8070c98(%rax),%edi
  40c6f8:	44 00 00             	add    %r8b,(%rax)
  40c6fb:	00 fc                	add    %bh,%ah
  40c6fd:	03 00                	add    (%rax),%eax
  40c6ff:	00 20                	add    %ah,(%rax)
  40c701:	eb ff                	jmp    40c702 <__GNU_EH_FRAME_HDR+0x592>
  40c703:	ff 65 00             	jmpq   *0x0(%rbp)
  40c706:	00 00                	add    %al,(%rax)
  40c708:	00 46 0e             	add    %al,0xe(%rsi)
  40c70b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
  40c711:	8e 03                	mov    (%rbx),%es
  40c713:	45 0e                	rex.RB (bad) 
  40c715:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  40c71b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8670d565 <_end+0xffffffff862ff525>
  40c721:	06                   	(bad)  
  40c722:	48 0e                	rex.W (bad) 
  40c724:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
  40c72a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40c72b:	0e                   	(bad)  
  40c72c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40c72f:	30 41 0e             	xor    %al,0xe(%rcx)
  40c732:	28 42 0e             	sub    %al,0xe(%rdx)
  40c735:	20 42 0e             	and    %al,0xe(%rdx)
  40c738:	18 42 0e             	sbb    %al,0xe(%rdx)
  40c73b:	10 42 0e             	adc    %al,0xe(%rdx)
  40c73e:	08 00                	or     %al,(%rax)
  40c740:	10 00                	adc    %al,(%rax)
  40c742:	00 00                	add    %al,(%rax)
  40c744:	44 04 00             	rex.R add $0x0,%al
  40c747:	00 48 eb             	add    %cl,-0x15(%rax)
  40c74a:	ff                   	(bad)  
  40c74b:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 40c751 <__GNU_EH_FRAME_HDR+0x5e1>
  40c751:	00 00                	add    %al,(%rax)
	...

000000000040c754 <__FRAME_END__>:
  40c754:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

000000000040de10 <__frame_dummy_init_array_entry>:
  40de10:	30 11                	xor    %dl,(%rcx)
  40de12:	40 00 00             	add    %al,(%rax)
  40de15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

000000000040de18 <__do_global_dtors_aux_fini_array_entry>:
  40de18:	00 11                	add    %dl,(%rcx)
  40de1a:	40 00 00             	add    %al,(%rax)
  40de1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

000000000040de20 <_DYNAMIC>:
  40de20:	01 00                	add    %eax,(%rax)
  40de22:	00 00                	add    %al,(%rax)
  40de24:	00 00                	add    %al,(%rax)
  40de26:	00 00                	add    %al,(%rax)
  40de28:	01 00                	add    %eax,(%rax)
  40de2a:	00 00                	add    %al,(%rax)
  40de2c:	00 00                	add    %al,(%rax)
  40de2e:	00 00                	add    %al,(%rax)
  40de30:	0c 00                	or     $0x0,%al
  40de32:	00 00                	add    %al,(%rax)
  40de34:	00 00                	add    %al,(%rax)
  40de36:	00 00                	add    %al,(%rax)
  40de38:	00 10                	add    %dl,(%rax)
  40de3a:	40 00 00             	add    %al,(%rax)
  40de3d:	00 00                	add    %al,(%rax)
  40de3f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 40de45 <_DYNAMIC+0x25>
  40de45:	00 00                	add    %al,(%rax)
  40de47:	00 98 b2 40 00 00    	add    %bl,0x40b2(%rax)
  40de4d:	00 00                	add    %al,(%rax)
  40de4f:	00 19                	add    %bl,(%rcx)
  40de51:	00 00                	add    %al,(%rax)
  40de53:	00 00                	add    %al,(%rax)
  40de55:	00 00                	add    %al,(%rax)
  40de57:	00 10                	add    %dl,(%rax)
  40de59:	de 40 00             	fiadds 0x0(%rax)
  40de5c:	00 00                	add    %al,(%rax)
  40de5e:	00 00                	add    %al,(%rax)
  40de60:	1b 00                	sbb    (%rax),%eax
  40de62:	00 00                	add    %al,(%rax)
  40de64:	00 00                	add    %al,(%rax)
  40de66:	00 00                	add    %al,(%rax)
  40de68:	08 00                	or     %al,(%rax)
  40de6a:	00 00                	add    %al,(%rax)
  40de6c:	00 00                	add    %al,(%rax)
  40de6e:	00 00                	add    %al,(%rax)
  40de70:	1a 00                	sbb    (%rax),%al
  40de72:	00 00                	add    %al,(%rax)
  40de74:	00 00                	add    %al,(%rax)
  40de76:	00 00                	add    %al,(%rax)
  40de78:	18 de                	sbb    %bl,%dh
  40de7a:	40 00 00             	add    %al,(%rax)
  40de7d:	00 00                	add    %al,(%rax)
  40de7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40de82:	00 00                	add    %al,(%rax)
  40de84:	00 00                	add    %al,(%rax)
  40de86:	00 00                	add    %al,(%rax)
  40de88:	08 00                	or     %al,(%rax)
  40de8a:	00 00                	add    %al,(%rax)
  40de8c:	00 00                	add    %al,(%rax)
  40de8e:	00 00                	add    %al,(%rax)
  40de90:	f5                   	cmc    
  40de91:	fe                   	(bad)  
  40de92:	ff 6f 00             	ljmp   *0x0(%rdi)
  40de95:	00 00                	add    %al,(%rax)
  40de97:	00 08                	add    %cl,(%rax)
  40de99:	03 40 00             	add    0x0(%rax),%eax
  40de9c:	00 00                	add    %al,(%rax)
  40de9e:	00 00                	add    %al,(%rax)
  40dea0:	05 00 00 00 00       	add    $0x0,%eax
  40dea5:	00 00                	add    %al,(%rax)
  40dea7:	00 a0 03 40 00 00    	add    %ah,0x4003(%rax)
  40dead:	00 00                	add    %al,(%rax)
  40deaf:	00 06                	add    %al,(%rsi)
  40deb1:	00 00                	add    %al,(%rax)
  40deb3:	00 00                	add    %al,(%rax)
  40deb5:	00 00                	add    %al,(%rax)
  40deb7:	00 28                	add    %ch,(%rax)
  40deb9:	03 40 00             	add    0x0(%rax),%eax
  40debc:	00 00                	add    %al,(%rax)
  40debe:	00 00                	add    %al,(%rax)
  40dec0:	0a 00                	or     (%rax),%al
  40dec2:	00 00                	add    %al,(%rax)
  40dec4:	00 00                	add    %al,(%rax)
  40dec6:	00 00                	add    %al,(%rax)
  40dec8:	43 00 00             	rex.XB add %al,(%r8)
  40decb:	00 00                	add    %al,(%rax)
  40decd:	00 00                	add    %al,(%rax)
  40decf:	00 0b                	add    %cl,(%rbx)
  40ded1:	00 00                	add    %al,(%rax)
  40ded3:	00 00                	add    %al,(%rax)
  40ded5:	00 00                	add    %al,(%rax)
  40ded7:	00 18                	add    %bl,(%rax)
  40ded9:	00 00                	add    %al,(%rax)
  40dedb:	00 00                	add    %al,(%rax)
  40dedd:	00 00                	add    %al,(%rax)
  40dedf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 40dee5 <_DYNAMIC+0xc5>
	...
  40deed:	00 00                	add    %al,(%rax)
  40deef:	00 03                	add    %al,(%rbx)
	...
  40def9:	e0 40                	loopne 40df3b <_DYNAMIC+0x11b>
  40defb:	00 00                	add    %al,(%rax)
  40defd:	00 00                	add    %al,(%rax)
  40deff:	00 02                	add    %al,(%rdx)
  40df01:	00 00                	add    %al,(%rax)
  40df03:	00 00                	add    %al,(%rax)
  40df05:	00 00                	add    %al,(%rax)
  40df07:	00 30                	add    %dh,(%rax)
  40df09:	00 00                	add    %al,(%rax)
  40df0b:	00 00                	add    %al,(%rax)
  40df0d:	00 00                	add    %al,(%rax)
  40df0f:	00 14 00             	add    %dl,(%rax,%rax,1)
  40df12:	00 00                	add    %al,(%rax)
  40df14:	00 00                	add    %al,(%rax)
  40df16:	00 00                	add    %al,(%rax)
  40df18:	07                   	(bad)  
  40df19:	00 00                	add    %al,(%rax)
  40df1b:	00 00                	add    %al,(%rax)
  40df1d:	00 00                	add    %al,(%rax)
  40df1f:	00 17                	add    %dl,(%rdi)
  40df21:	00 00                	add    %al,(%rax)
  40df23:	00 00                	add    %al,(%rax)
  40df25:	00 00                	add    %al,(%rax)
  40df27:	00 40 04             	add    %al,0x4(%rax)
  40df2a:	40 00 00             	add    %al,(%rax)
  40df2d:	00 00                	add    %al,(%rax)
  40df2f:	00 07                	add    %al,(%rdi)
  40df31:	00 00                	add    %al,(%rax)
  40df33:	00 00                	add    %al,(%rax)
  40df35:	00 00                	add    %al,(%rax)
  40df37:	00 10                	add    %dl,(%rax)
  40df39:	04 40                	add    $0x40,%al
  40df3b:	00 00                	add    %al,(%rax)
  40df3d:	00 00                	add    %al,(%rax)
  40df3f:	00 08                	add    %cl,(%rax)
  40df41:	00 00                	add    %al,(%rax)
  40df43:	00 00                	add    %al,(%rax)
  40df45:	00 00                	add    %al,(%rax)
  40df47:	00 30                	add    %dh,(%rax)
  40df49:	00 00                	add    %al,(%rax)
  40df4b:	00 00                	add    %al,(%rax)
  40df4d:	00 00                	add    %al,(%rax)
  40df4f:	00 09                	add    %cl,(%rcx)
  40df51:	00 00                	add    %al,(%rax)
  40df53:	00 00                	add    %al,(%rax)
  40df55:	00 00                	add    %al,(%rax)
  40df57:	00 18                	add    %bl,(%rax)
  40df59:	00 00                	add    %al,(%rax)
  40df5b:	00 00                	add    %al,(%rax)
  40df5d:	00 00                	add    %al,(%rax)
  40df5f:	00 fe                	add    %bh,%dh
  40df61:	ff                   	(bad)  
  40df62:	ff 6f 00             	ljmp   *0x0(%rdi)
  40df65:	00 00                	add    %al,(%rax)
  40df67:	00 f0                	add    %dh,%al
  40df69:	03 40 00             	add    0x0(%rax),%eax
  40df6c:	00 00                	add    %al,(%rax)
  40df6e:	00 00                	add    %al,(%rax)
  40df70:	ff                   	(bad)  
  40df71:	ff                   	(bad)  
  40df72:	ff 6f 00             	ljmp   *0x0(%rdi)
  40df75:	00 00                	add    %al,(%rax)
  40df77:	00 01                	add    %al,(%rcx)
  40df79:	00 00                	add    %al,(%rax)
  40df7b:	00 00                	add    %al,(%rax)
  40df7d:	00 00                	add    %al,(%rax)
  40df7f:	00 f0                	add    %dh,%al
  40df81:	ff                   	(bad)  
  40df82:	ff 6f 00             	ljmp   *0x0(%rdi)
  40df85:	00 00                	add    %al,(%rax)
  40df87:	00 e4                	add    %ah,%ah
  40df89:	03 40 00             	add    0x0(%rax),%eax
	...

Disassembly of section .got:

000000000040dff0 <.got>:
	...

Disassembly of section .got.plt:

000000000040e000 <_GLOBAL_OFFSET_TABLE_>:
  40e000:	20 de                	and    %bl,%dh
  40e002:	40 00 00             	add    %al,(%rax)
	...
  40e015:	00 00                	add    %al,(%rax)
  40e017:	00 36                	add    %dh,(%rsi)
  40e019:	10 40 00             	adc    %al,0x0(%rax)
  40e01c:	00 00                	add    %al,(%rax)
  40e01e:	00 00                	add    %al,(%rax)
  40e020:	46 10 40 00          	rex.RX adc %r8b,0x0(%rax)
  40e024:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

000000000040e028 <__data_start>:
	...

000000000040e030 <__dso_handle>:
	...

Disassembly of section .bss:

000000000040e038 <completed.8060>:
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
  11:	30 2d 31 37 75 62    	xor    %ch,0x62753731(%rip)        # 62753748 <_end+0x62345708>
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
  3b:	69 6f 6e 20 31 32 2e 	imul   $0x2e323120,0x6e(%rdi),%ebp
  42:	30 2e                	xor    %ch,(%rsi)
  44:	30 2d 33 75 62 75    	xor    %ch,0x75627533(%rip)        # 7562757d <_end+0x7521953d>
  4a:	6e                   	outsb  %ds:(%rsi),(%dx)
  4b:	74 75                	je     c2 <_init-0x400f3e>
  4d:	31 7e 32             	xor    %edi,0x32(%rsi)
  50:	30 2e                	xor    %ch,(%rsi)
  52:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  55:	34 00                	xor    $0x0,%al
